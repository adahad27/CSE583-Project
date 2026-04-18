; ModuleID = '../src/nsichneu/libnsichneu.c'
source_filename = "../src/nsichneu/libnsichneu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@P1_is_marked = dso_local global i32 3, align 4
@P2_is_marked = dso_local global i32 5, align 4
@P3_is_marked = dso_local global i32 0, align 4
@P1_marking_member_0 = dso_local global [3 x i64] zeroinitializer, align 16
@P2_marking_member_0 = dso_local global [5 x i64] zeroinitializer, align 16
@P3_marking_member_0 = dso_local global [6 x i64] zeroinitializer, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @initialise_benchmark() local_unnamed_addr #0 {
  ret void
}

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local void @warm_caches(i32 noundef %0) local_unnamed_addr #1 {
  tail call fastcc void @benchmark_body(i32 noundef 1, i32 noundef %0)
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind memory(readwrite, argmem: none) uwtable
define internal fastcc void @benchmark_body(i32 noundef range(i32 1, 1233) %0, i32 noundef %1) unnamed_addr #2 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4471, label %4

4:                                                ; preds = %2, %4468
  %5 = phi i32 [ %4469, %4468 ], [ 0, %2 ]
  br label %6

6:                                                ; preds = %4, %4465
  %7 = phi i32 [ 0, %4 ], [ %4466, %4465 ]
  store volatile i32 3, ptr @P1_is_marked, align 4, !tbaa !5
  store volatile i32 5, ptr @P2_is_marked, align 4, !tbaa !5
  store volatile i32 0, ptr @P3_is_marked, align 4, !tbaa !5
  %8 = load volatile i32, ptr @P1_is_marked, align 4, !tbaa !5
  %9 = icmp sgt i32 %8, 2
  br i1 %9, label %10, label %38

10:                                               ; preds = %6
  %11 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %12 = icmp slt i32 %11, 4
  br i1 %12, label %13, label %38

13:                                               ; preds = %10
  %14 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P1_marking_member_0, i64 8), align 8, !tbaa !9
  %15 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P1_marking_member_0, i64 16), align 16, !tbaa !9
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %38

17:                                               ; preds = %13
  %18 = load volatile i64, ptr @P1_marking_member_0, align 16, !tbaa !9
  %19 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P1_marking_member_0, i64 8), align 8, !tbaa !9
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %17
  %22 = load volatile i32, ptr @P1_is_marked, align 4, !tbaa !5
  %23 = add nsw i32 %22, -3
  store volatile i32 %23, ptr @P1_is_marked, align 4, !tbaa !5
  %24 = sub nsw i64 %18, %19
  %25 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %26
  store volatile i64 %18, ptr %27, align 8, !tbaa !9
  %28 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %29 = add nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %30
  store volatile i64 %19, ptr %31, align 8, !tbaa !9
  %32 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %33 = add nsw i32 %32, 2
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %34
  store volatile i64 %24, ptr %35, align 8, !tbaa !9
  %36 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %37 = add nsw i32 %36, 3
  store volatile i32 %37, ptr @P3_is_marked, align 4, !tbaa !5
  br label %38

38:                                               ; preds = %21, %17, %13, %10, %6
  %39 = load volatile i32, ptr @P1_is_marked, align 4, !tbaa !5
  %40 = icmp sgt i32 %39, 2
  br i1 %40, label %41, label %69

41:                                               ; preds = %38
  %42 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %43 = icmp slt i32 %42, 4
  br i1 %43, label %44, label %69

44:                                               ; preds = %41
  %45 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P1_marking_member_0, i64 16), align 16, !tbaa !9
  %46 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P1_marking_member_0, i64 8), align 8, !tbaa !9
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %69

48:                                               ; preds = %44
  %49 = load volatile i64, ptr @P1_marking_member_0, align 16, !tbaa !9
  %50 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P1_marking_member_0, i64 16), align 16, !tbaa !9
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %52, label %69

52:                                               ; preds = %48
  %53 = load volatile i32, ptr @P1_is_marked, align 4, !tbaa !5
  %54 = add nsw i32 %53, -3
  store volatile i32 %54, ptr @P1_is_marked, align 4, !tbaa !5
  %55 = sub nsw i64 %49, %50
  %56 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %57
  store volatile i64 %49, ptr %58, align 8, !tbaa !9
  %59 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %60 = add nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %61
  store volatile i64 %50, ptr %62, align 8, !tbaa !9
  %63 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %64 = add nsw i32 %63, 2
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %65
  store volatile i64 %55, ptr %66, align 8, !tbaa !9
  %67 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %68 = add nsw i32 %67, 3
  store volatile i32 %68, ptr @P3_is_marked, align 4, !tbaa !5
  br label %69

69:                                               ; preds = %52, %48, %44, %41, %38
  %70 = load volatile i32, ptr @P1_is_marked, align 4, !tbaa !5
  %71 = icmp sgt i32 %70, 2
  br i1 %71, label %72, label %100

72:                                               ; preds = %69
  %73 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %74 = icmp slt i32 %73, 4
  br i1 %74, label %75, label %100

75:                                               ; preds = %72
  %76 = load volatile i64, ptr @P1_marking_member_0, align 16, !tbaa !9
  %77 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P1_marking_member_0, i64 16), align 16, !tbaa !9
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %100

79:                                               ; preds = %75
  %80 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P1_marking_member_0, i64 8), align 8, !tbaa !9
  %81 = load volatile i64, ptr @P1_marking_member_0, align 16, !tbaa !9
  %82 = icmp slt i64 %80, %81
  br i1 %82, label %83, label %100

83:                                               ; preds = %79
  %84 = load volatile i32, ptr @P1_is_marked, align 4, !tbaa !5
  %85 = add nsw i32 %84, -3
  store volatile i32 %85, ptr @P1_is_marked, align 4, !tbaa !5
  %86 = sub nsw i64 %80, %81
  %87 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %88
  store volatile i64 %80, ptr %89, align 8, !tbaa !9
  %90 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %91 = add nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %92
  store volatile i64 %81, ptr %93, align 8, !tbaa !9
  %94 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %95 = add nsw i32 %94, 2
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %96
  store volatile i64 %86, ptr %97, align 8, !tbaa !9
  %98 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %99 = add nsw i32 %98, 3
  store volatile i32 %99, ptr @P3_is_marked, align 4, !tbaa !5
  br label %100

100:                                              ; preds = %83, %79, %75, %72, %69
  %101 = load volatile i32, ptr @P1_is_marked, align 4, !tbaa !5
  %102 = icmp sgt i32 %101, 2
  br i1 %102, label %103, label %131

103:                                              ; preds = %100
  %104 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %105 = icmp slt i32 %104, 4
  br i1 %105, label %106, label %131

106:                                              ; preds = %103
  %107 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P1_marking_member_0, i64 16), align 16, !tbaa !9
  %108 = load volatile i64, ptr @P1_marking_member_0, align 16, !tbaa !9
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %131

110:                                              ; preds = %106
  %111 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P1_marking_member_0, i64 8), align 8, !tbaa !9
  %112 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P1_marking_member_0, i64 16), align 16, !tbaa !9
  %113 = icmp slt i64 %111, %112
  br i1 %113, label %114, label %131

114:                                              ; preds = %110
  %115 = load volatile i32, ptr @P1_is_marked, align 4, !tbaa !5
  %116 = add nsw i32 %115, -3
  store volatile i32 %116, ptr @P1_is_marked, align 4, !tbaa !5
  %117 = sub nsw i64 %111, %112
  %118 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %119
  store volatile i64 %111, ptr %120, align 8, !tbaa !9
  %121 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %122 = add nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %123
  store volatile i64 %112, ptr %124, align 8, !tbaa !9
  %125 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %126 = add nsw i32 %125, 2
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %127
  store volatile i64 %117, ptr %128, align 8, !tbaa !9
  %129 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %130 = add nsw i32 %129, 3
  store volatile i32 %130, ptr @P3_is_marked, align 4, !tbaa !5
  br label %131

131:                                              ; preds = %114, %110, %106, %103, %100
  %132 = load volatile i32, ptr @P1_is_marked, align 4, !tbaa !5
  %133 = icmp sgt i32 %132, 2
  br i1 %133, label %134, label %162

134:                                              ; preds = %131
  %135 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %136 = icmp slt i32 %135, 4
  br i1 %136, label %137, label %162

137:                                              ; preds = %134
  %138 = load volatile i64, ptr @P1_marking_member_0, align 16, !tbaa !9
  %139 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P1_marking_member_0, i64 8), align 8, !tbaa !9
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %162

141:                                              ; preds = %137
  %142 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P1_marking_member_0, i64 16), align 16, !tbaa !9
  %143 = load volatile i64, ptr @P1_marking_member_0, align 16, !tbaa !9
  %144 = icmp slt i64 %142, %143
  br i1 %144, label %145, label %162

145:                                              ; preds = %141
  %146 = load volatile i32, ptr @P1_is_marked, align 4, !tbaa !5
  %147 = add nsw i32 %146, -3
  store volatile i32 %147, ptr @P1_is_marked, align 4, !tbaa !5
  %148 = sub nsw i64 %142, %143
  %149 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %150
  store volatile i64 %142, ptr %151, align 8, !tbaa !9
  %152 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %153 = add nsw i32 %152, 1
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %154
  store volatile i64 %143, ptr %155, align 8, !tbaa !9
  %156 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %157 = add nsw i32 %156, 2
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %158
  store volatile i64 %148, ptr %159, align 8, !tbaa !9
  %160 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %161 = add nsw i32 %160, 3
  store volatile i32 %161, ptr @P3_is_marked, align 4, !tbaa !5
  br label %162

162:                                              ; preds = %145, %141, %137, %134, %131
  %163 = load volatile i32, ptr @P1_is_marked, align 4, !tbaa !5
  %164 = icmp sgt i32 %163, 2
  br i1 %164, label %165, label %193

165:                                              ; preds = %162
  %166 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %167 = icmp slt i32 %166, 4
  br i1 %167, label %168, label %193

168:                                              ; preds = %165
  %169 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P1_marking_member_0, i64 8), align 8, !tbaa !9
  %170 = load volatile i64, ptr @P1_marking_member_0, align 16, !tbaa !9
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %193

172:                                              ; preds = %168
  %173 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P1_marking_member_0, i64 16), align 16, !tbaa !9
  %174 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P1_marking_member_0, i64 8), align 8, !tbaa !9
  %175 = icmp slt i64 %173, %174
  br i1 %175, label %176, label %193

176:                                              ; preds = %172
  %177 = load volatile i32, ptr @P1_is_marked, align 4, !tbaa !5
  %178 = add nsw i32 %177, -3
  store volatile i32 %178, ptr @P1_is_marked, align 4, !tbaa !5
  %179 = sub nsw i64 %173, %174
  %180 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %181
  store volatile i64 %173, ptr %182, align 8, !tbaa !9
  %183 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %184 = add nsw i32 %183, 1
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %185
  store volatile i64 %174, ptr %186, align 8, !tbaa !9
  %187 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %188 = add nsw i32 %187, 2
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %189
  store volatile i64 %179, ptr %190, align 8, !tbaa !9
  %191 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %192 = add nsw i32 %191, 3
  store volatile i32 %192, ptr @P3_is_marked, align 4, !tbaa !5
  br label %193

193:                                              ; preds = %176, %172, %168, %165, %162
  %194 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %195 = icmp sgt i32 %194, 3
  br i1 %195, label %196, label %228

196:                                              ; preds = %193
  %197 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %198 = icmp slt i32 %197, 4
  br i1 %198, label %199, label %228

199:                                              ; preds = %196
  %200 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %201 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %228

203:                                              ; preds = %199
  %204 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %205 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %228

207:                                              ; preds = %203
  %208 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %209 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %210 = icmp sgt i64 %209, %208
  br i1 %210, label %211, label %228

211:                                              ; preds = %207
  %212 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %213 = add nsw i32 %212, -4
  store volatile i32 %213, ptr @P2_is_marked, align 4, !tbaa !5
  %214 = add nsw i64 %209, %208
  %215 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %216
  store volatile i64 %208, ptr %217, align 8, !tbaa !9
  %218 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %219 = add nsw i32 %218, 1
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %220
  store volatile i64 %209, ptr %221, align 8, !tbaa !9
  %222 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %223 = add nsw i32 %222, 2
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %224
  store volatile i64 %214, ptr %225, align 8, !tbaa !9
  %226 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %227 = add nsw i32 %226, 3
  store volatile i32 %227, ptr @P3_is_marked, align 4, !tbaa !5
  br label %228

228:                                              ; preds = %211, %207, %203, %199, %196, %193
  %229 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %230 = icmp sgt i32 %229, 3
  br i1 %230, label %231, label %263

231:                                              ; preds = %228
  %232 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %233 = icmp slt i32 %232, 4
  br i1 %233, label %234, label %263

234:                                              ; preds = %231
  %235 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %236 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %237 = icmp eq i64 %235, %236
  br i1 %237, label %238, label %263

238:                                              ; preds = %234
  %239 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %240 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %242, label %263

242:                                              ; preds = %238
  %243 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %244 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %245 = icmp sgt i64 %244, %243
  br i1 %245, label %246, label %263

246:                                              ; preds = %242
  %247 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %248 = add nsw i32 %247, -4
  store volatile i32 %248, ptr @P2_is_marked, align 4, !tbaa !5
  %249 = add nsw i64 %244, %243
  %250 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %251
  store volatile i64 %243, ptr %252, align 8, !tbaa !9
  %253 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %254 = add nsw i32 %253, 1
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %255
  store volatile i64 %244, ptr %256, align 8, !tbaa !9
  %257 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %258 = add nsw i32 %257, 2
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %259
  store volatile i64 %249, ptr %260, align 8, !tbaa !9
  %261 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %262 = add nsw i32 %261, 3
  store volatile i32 %262, ptr @P3_is_marked, align 4, !tbaa !5
  br label %263

263:                                              ; preds = %246, %242, %238, %234, %231, %228
  %264 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %265 = icmp sgt i32 %264, 3
  br i1 %265, label %266, label %298

266:                                              ; preds = %263
  %267 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %268 = icmp slt i32 %267, 4
  br i1 %268, label %269, label %298

269:                                              ; preds = %266
  %270 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %271 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %272 = icmp eq i64 %270, %271
  br i1 %272, label %273, label %298

273:                                              ; preds = %269
  %274 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %275 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %276 = icmp eq i64 %274, %275
  br i1 %276, label %277, label %298

277:                                              ; preds = %273
  %278 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %279 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %280 = icmp sgt i64 %279, %278
  br i1 %280, label %281, label %298

281:                                              ; preds = %277
  %282 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %283 = add nsw i32 %282, -4
  store volatile i32 %283, ptr @P2_is_marked, align 4, !tbaa !5
  %284 = add nsw i64 %279, %278
  %285 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %286
  store volatile i64 %278, ptr %287, align 8, !tbaa !9
  %288 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %289 = add nsw i32 %288, 1
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %290
  store volatile i64 %279, ptr %291, align 8, !tbaa !9
  %292 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %293 = add nsw i32 %292, 2
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %294
  store volatile i64 %284, ptr %295, align 8, !tbaa !9
  %296 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %297 = add nsw i32 %296, 3
  store volatile i32 %297, ptr @P3_is_marked, align 4, !tbaa !5
  br label %298

298:                                              ; preds = %281, %277, %273, %269, %266, %263
  %299 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %300 = icmp sgt i32 %299, 3
  br i1 %300, label %301, label %333

301:                                              ; preds = %298
  %302 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %303 = icmp slt i32 %302, 4
  br i1 %303, label %304, label %333

304:                                              ; preds = %301
  %305 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %306 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %307 = icmp eq i64 %305, %306
  br i1 %307, label %308, label %333

308:                                              ; preds = %304
  %309 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %310 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %311 = icmp eq i64 %309, %310
  br i1 %311, label %312, label %333

312:                                              ; preds = %308
  %313 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %314 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %315 = icmp sgt i64 %314, %313
  br i1 %315, label %316, label %333

316:                                              ; preds = %312
  %317 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %318 = add nsw i32 %317, -4
  store volatile i32 %318, ptr @P2_is_marked, align 4, !tbaa !5
  %319 = add nsw i64 %314, %313
  %320 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %321
  store volatile i64 %313, ptr %322, align 8, !tbaa !9
  %323 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %324 = add nsw i32 %323, 1
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %325
  store volatile i64 %314, ptr %326, align 8, !tbaa !9
  %327 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %328 = add nsw i32 %327, 2
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %329
  store volatile i64 %319, ptr %330, align 8, !tbaa !9
  %331 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %332 = add nsw i32 %331, 3
  store volatile i32 %332, ptr @P3_is_marked, align 4, !tbaa !5
  br label %333

333:                                              ; preds = %316, %312, %308, %304, %301, %298
  %334 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %335 = icmp sgt i32 %334, 3
  br i1 %335, label %336, label %368

336:                                              ; preds = %333
  %337 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %338 = icmp slt i32 %337, 4
  br i1 %338, label %339, label %368

339:                                              ; preds = %336
  %340 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %341 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %342 = icmp eq i64 %340, %341
  br i1 %342, label %343, label %368

343:                                              ; preds = %339
  %344 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %345 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %346 = icmp eq i64 %344, %345
  br i1 %346, label %347, label %368

347:                                              ; preds = %343
  %348 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %349 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %350 = icmp sgt i64 %349, %348
  br i1 %350, label %351, label %368

351:                                              ; preds = %347
  %352 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %353 = add nsw i32 %352, -4
  store volatile i32 %353, ptr @P2_is_marked, align 4, !tbaa !5
  %354 = add nsw i64 %349, %348
  %355 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %356
  store volatile i64 %348, ptr %357, align 8, !tbaa !9
  %358 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %359 = add nsw i32 %358, 1
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %360
  store volatile i64 %349, ptr %361, align 8, !tbaa !9
  %362 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %363 = add nsw i32 %362, 2
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %364
  store volatile i64 %354, ptr %365, align 8, !tbaa !9
  %366 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %367 = add nsw i32 %366, 3
  store volatile i32 %367, ptr @P3_is_marked, align 4, !tbaa !5
  br label %368

368:                                              ; preds = %351, %347, %343, %339, %336, %333
  %369 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %370 = icmp sgt i32 %369, 3
  br i1 %370, label %371, label %403

371:                                              ; preds = %368
  %372 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %373 = icmp slt i32 %372, 4
  br i1 %373, label %374, label %403

374:                                              ; preds = %371
  %375 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %376 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %377 = icmp eq i64 %375, %376
  br i1 %377, label %378, label %403

378:                                              ; preds = %374
  %379 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %380 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %381 = icmp eq i64 %379, %380
  br i1 %381, label %382, label %403

382:                                              ; preds = %378
  %383 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %384 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %385 = icmp sgt i64 %384, %383
  br i1 %385, label %386, label %403

386:                                              ; preds = %382
  %387 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %388 = add nsw i32 %387, -4
  store volatile i32 %388, ptr @P2_is_marked, align 4, !tbaa !5
  %389 = add nsw i64 %384, %383
  %390 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %391
  store volatile i64 %383, ptr %392, align 8, !tbaa !9
  %393 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %394 = add nsw i32 %393, 1
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %395
  store volatile i64 %384, ptr %396, align 8, !tbaa !9
  %397 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %398 = add nsw i32 %397, 2
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %399
  store volatile i64 %389, ptr %400, align 8, !tbaa !9
  %401 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %402 = add nsw i32 %401, 3
  store volatile i32 %402, ptr @P3_is_marked, align 4, !tbaa !5
  br label %403

403:                                              ; preds = %386, %382, %378, %374, %371, %368
  %404 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %405 = icmp sgt i32 %404, 3
  br i1 %405, label %406, label %438

406:                                              ; preds = %403
  %407 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %408 = icmp slt i32 %407, 4
  br i1 %408, label %409, label %438

409:                                              ; preds = %406
  %410 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %411 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %412 = icmp eq i64 %410, %411
  br i1 %412, label %413, label %438

413:                                              ; preds = %409
  %414 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %415 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %416 = icmp eq i64 %414, %415
  br i1 %416, label %417, label %438

417:                                              ; preds = %413
  %418 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %419 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %420 = icmp sgt i64 %419, %418
  br i1 %420, label %421, label %438

421:                                              ; preds = %417
  %422 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %423 = add nsw i32 %422, -4
  store volatile i32 %423, ptr @P2_is_marked, align 4, !tbaa !5
  %424 = add nsw i64 %419, %418
  %425 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %426
  store volatile i64 %418, ptr %427, align 8, !tbaa !9
  %428 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %429 = add nsw i32 %428, 1
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %430
  store volatile i64 %419, ptr %431, align 8, !tbaa !9
  %432 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %433 = add nsw i32 %432, 2
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %434
  store volatile i64 %424, ptr %435, align 8, !tbaa !9
  %436 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %437 = add nsw i32 %436, 3
  store volatile i32 %437, ptr @P3_is_marked, align 4, !tbaa !5
  br label %438

438:                                              ; preds = %421, %417, %413, %409, %406, %403
  %439 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %440 = icmp sgt i32 %439, 3
  br i1 %440, label %441, label %473

441:                                              ; preds = %438
  %442 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %443 = icmp slt i32 %442, 4
  br i1 %443, label %444, label %473

444:                                              ; preds = %441
  %445 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %446 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %447 = icmp eq i64 %445, %446
  br i1 %447, label %448, label %473

448:                                              ; preds = %444
  %449 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %450 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %451 = icmp eq i64 %449, %450
  br i1 %451, label %452, label %473

452:                                              ; preds = %448
  %453 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %454 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %455 = icmp sgt i64 %454, %453
  br i1 %455, label %456, label %473

456:                                              ; preds = %452
  %457 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %458 = add nsw i32 %457, -4
  store volatile i32 %458, ptr @P2_is_marked, align 4, !tbaa !5
  %459 = add nsw i64 %454, %453
  %460 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %461
  store volatile i64 %453, ptr %462, align 8, !tbaa !9
  %463 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %464 = add nsw i32 %463, 1
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %465
  store volatile i64 %454, ptr %466, align 8, !tbaa !9
  %467 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %468 = add nsw i32 %467, 2
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %469
  store volatile i64 %459, ptr %470, align 8, !tbaa !9
  %471 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %472 = add nsw i32 %471, 3
  store volatile i32 %472, ptr @P3_is_marked, align 4, !tbaa !5
  br label %473

473:                                              ; preds = %456, %452, %448, %444, %441, %438
  %474 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %475 = icmp sgt i32 %474, 3
  br i1 %475, label %476, label %508

476:                                              ; preds = %473
  %477 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %478 = icmp slt i32 %477, 4
  br i1 %478, label %479, label %508

479:                                              ; preds = %476
  %480 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %481 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %482 = icmp eq i64 %480, %481
  br i1 %482, label %483, label %508

483:                                              ; preds = %479
  %484 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %485 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %486 = icmp eq i64 %484, %485
  br i1 %486, label %487, label %508

487:                                              ; preds = %483
  %488 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %489 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %490 = icmp sgt i64 %489, %488
  br i1 %490, label %491, label %508

491:                                              ; preds = %487
  %492 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %493 = add nsw i32 %492, -4
  store volatile i32 %493, ptr @P2_is_marked, align 4, !tbaa !5
  %494 = add nsw i64 %489, %488
  %495 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %496
  store volatile i64 %488, ptr %497, align 8, !tbaa !9
  %498 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %499 = add nsw i32 %498, 1
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %500
  store volatile i64 %489, ptr %501, align 8, !tbaa !9
  %502 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %503 = add nsw i32 %502, 2
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %504
  store volatile i64 %494, ptr %505, align 8, !tbaa !9
  %506 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %507 = add nsw i32 %506, 3
  store volatile i32 %507, ptr @P3_is_marked, align 4, !tbaa !5
  br label %508

508:                                              ; preds = %491, %487, %483, %479, %476, %473
  %509 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %510 = icmp sgt i32 %509, 3
  br i1 %510, label %511, label %543

511:                                              ; preds = %508
  %512 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %513 = icmp slt i32 %512, 4
  br i1 %513, label %514, label %543

514:                                              ; preds = %511
  %515 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %516 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %517 = icmp eq i64 %515, %516
  br i1 %517, label %518, label %543

518:                                              ; preds = %514
  %519 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %520 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %521 = icmp eq i64 %519, %520
  br i1 %521, label %522, label %543

522:                                              ; preds = %518
  %523 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %524 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %525 = icmp sgt i64 %524, %523
  br i1 %525, label %526, label %543

526:                                              ; preds = %522
  %527 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %528 = add nsw i32 %527, -4
  store volatile i32 %528, ptr @P2_is_marked, align 4, !tbaa !5
  %529 = add nsw i64 %524, %523
  %530 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %531
  store volatile i64 %523, ptr %532, align 8, !tbaa !9
  %533 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %534 = add nsw i32 %533, 1
  %535 = sext i32 %534 to i64
  %536 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %535
  store volatile i64 %524, ptr %536, align 8, !tbaa !9
  %537 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %538 = add nsw i32 %537, 2
  %539 = sext i32 %538 to i64
  %540 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %539
  store volatile i64 %529, ptr %540, align 8, !tbaa !9
  %541 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %542 = add nsw i32 %541, 3
  store volatile i32 %542, ptr @P3_is_marked, align 4, !tbaa !5
  br label %543

543:                                              ; preds = %526, %522, %518, %514, %511, %508
  %544 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %545 = icmp sgt i32 %544, 3
  br i1 %545, label %546, label %578

546:                                              ; preds = %543
  %547 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %548 = icmp slt i32 %547, 4
  br i1 %548, label %549, label %578

549:                                              ; preds = %546
  %550 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %551 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %552 = icmp eq i64 %550, %551
  br i1 %552, label %553, label %578

553:                                              ; preds = %549
  %554 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %555 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %556 = icmp eq i64 %554, %555
  br i1 %556, label %557, label %578

557:                                              ; preds = %553
  %558 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %559 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %560 = icmp sgt i64 %559, %558
  br i1 %560, label %561, label %578

561:                                              ; preds = %557
  %562 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %563 = add nsw i32 %562, -4
  store volatile i32 %563, ptr @P2_is_marked, align 4, !tbaa !5
  %564 = add nsw i64 %559, %558
  %565 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %566
  store volatile i64 %558, ptr %567, align 8, !tbaa !9
  %568 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %569 = add nsw i32 %568, 1
  %570 = sext i32 %569 to i64
  %571 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %570
  store volatile i64 %559, ptr %571, align 8, !tbaa !9
  %572 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %573 = add nsw i32 %572, 2
  %574 = sext i32 %573 to i64
  %575 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %574
  store volatile i64 %564, ptr %575, align 8, !tbaa !9
  %576 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %577 = add nsw i32 %576, 3
  store volatile i32 %577, ptr @P3_is_marked, align 4, !tbaa !5
  br label %578

578:                                              ; preds = %561, %557, %553, %549, %546, %543
  %579 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %580 = icmp sgt i32 %579, 3
  br i1 %580, label %581, label %613

581:                                              ; preds = %578
  %582 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %583 = icmp slt i32 %582, 4
  br i1 %583, label %584, label %613

584:                                              ; preds = %581
  %585 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %586 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %587 = icmp eq i64 %585, %586
  br i1 %587, label %588, label %613

588:                                              ; preds = %584
  %589 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %590 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %591 = icmp eq i64 %589, %590
  br i1 %591, label %592, label %613

592:                                              ; preds = %588
  %593 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %594 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %595 = icmp sgt i64 %594, %593
  br i1 %595, label %596, label %613

596:                                              ; preds = %592
  %597 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %598 = add nsw i32 %597, -4
  store volatile i32 %598, ptr @P2_is_marked, align 4, !tbaa !5
  %599 = add nsw i64 %594, %593
  %600 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %601 = sext i32 %600 to i64
  %602 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %601
  store volatile i64 %593, ptr %602, align 8, !tbaa !9
  %603 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %604 = add nsw i32 %603, 1
  %605 = sext i32 %604 to i64
  %606 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %605
  store volatile i64 %594, ptr %606, align 8, !tbaa !9
  %607 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %608 = add nsw i32 %607, 2
  %609 = sext i32 %608 to i64
  %610 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %609
  store volatile i64 %599, ptr %610, align 8, !tbaa !9
  %611 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %612 = add nsw i32 %611, 3
  store volatile i32 %612, ptr @P3_is_marked, align 4, !tbaa !5
  br label %613

613:                                              ; preds = %596, %592, %588, %584, %581, %578
  %614 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %615 = icmp sgt i32 %614, 3
  br i1 %615, label %616, label %648

616:                                              ; preds = %613
  %617 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %618 = icmp slt i32 %617, 4
  br i1 %618, label %619, label %648

619:                                              ; preds = %616
  %620 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %621 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %622 = icmp eq i64 %620, %621
  br i1 %622, label %623, label %648

623:                                              ; preds = %619
  %624 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %625 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %626 = icmp eq i64 %624, %625
  br i1 %626, label %627, label %648

627:                                              ; preds = %623
  %628 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %629 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %630 = icmp sgt i64 %629, %628
  br i1 %630, label %631, label %648

631:                                              ; preds = %627
  %632 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %633 = add nsw i32 %632, -4
  store volatile i32 %633, ptr @P2_is_marked, align 4, !tbaa !5
  %634 = add nsw i64 %629, %628
  %635 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %636 = sext i32 %635 to i64
  %637 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %636
  store volatile i64 %628, ptr %637, align 8, !tbaa !9
  %638 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %639 = add nsw i32 %638, 1
  %640 = sext i32 %639 to i64
  %641 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %640
  store volatile i64 %629, ptr %641, align 8, !tbaa !9
  %642 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %643 = add nsw i32 %642, 2
  %644 = sext i32 %643 to i64
  %645 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %644
  store volatile i64 %634, ptr %645, align 8, !tbaa !9
  %646 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %647 = add nsw i32 %646, 3
  store volatile i32 %647, ptr @P3_is_marked, align 4, !tbaa !5
  br label %648

648:                                              ; preds = %631, %627, %623, %619, %616, %613
  %649 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %650 = icmp sgt i32 %649, 3
  br i1 %650, label %651, label %683

651:                                              ; preds = %648
  %652 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %653 = icmp slt i32 %652, 4
  br i1 %653, label %654, label %683

654:                                              ; preds = %651
  %655 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %656 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %657 = icmp eq i64 %655, %656
  br i1 %657, label %658, label %683

658:                                              ; preds = %654
  %659 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %660 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %661 = icmp eq i64 %659, %660
  br i1 %661, label %662, label %683

662:                                              ; preds = %658
  %663 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %664 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %665 = icmp sgt i64 %664, %663
  br i1 %665, label %666, label %683

666:                                              ; preds = %662
  %667 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %668 = add nsw i32 %667, -4
  store volatile i32 %668, ptr @P2_is_marked, align 4, !tbaa !5
  %669 = add nsw i64 %664, %663
  %670 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %671 = sext i32 %670 to i64
  %672 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %671
  store volatile i64 %663, ptr %672, align 8, !tbaa !9
  %673 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %674 = add nsw i32 %673, 1
  %675 = sext i32 %674 to i64
  %676 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %675
  store volatile i64 %664, ptr %676, align 8, !tbaa !9
  %677 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %678 = add nsw i32 %677, 2
  %679 = sext i32 %678 to i64
  %680 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %679
  store volatile i64 %669, ptr %680, align 8, !tbaa !9
  %681 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %682 = add nsw i32 %681, 3
  store volatile i32 %682, ptr @P3_is_marked, align 4, !tbaa !5
  br label %683

683:                                              ; preds = %666, %662, %658, %654, %651, %648
  %684 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %685 = icmp sgt i32 %684, 3
  br i1 %685, label %686, label %718

686:                                              ; preds = %683
  %687 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %688 = icmp slt i32 %687, 4
  br i1 %688, label %689, label %718

689:                                              ; preds = %686
  %690 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %691 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %692 = icmp eq i64 %690, %691
  br i1 %692, label %693, label %718

693:                                              ; preds = %689
  %694 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %695 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %696 = icmp eq i64 %694, %695
  br i1 %696, label %697, label %718

697:                                              ; preds = %693
  %698 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %699 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %700 = icmp sgt i64 %699, %698
  br i1 %700, label %701, label %718

701:                                              ; preds = %697
  %702 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %703 = add nsw i32 %702, -4
  store volatile i32 %703, ptr @P2_is_marked, align 4, !tbaa !5
  %704 = add nsw i64 %699, %698
  %705 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %706 = sext i32 %705 to i64
  %707 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %706
  store volatile i64 %698, ptr %707, align 8, !tbaa !9
  %708 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %709 = add nsw i32 %708, 1
  %710 = sext i32 %709 to i64
  %711 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %710
  store volatile i64 %699, ptr %711, align 8, !tbaa !9
  %712 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %713 = add nsw i32 %712, 2
  %714 = sext i32 %713 to i64
  %715 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %714
  store volatile i64 %704, ptr %715, align 8, !tbaa !9
  %716 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %717 = add nsw i32 %716, 3
  store volatile i32 %717, ptr @P3_is_marked, align 4, !tbaa !5
  br label %718

718:                                              ; preds = %701, %697, %693, %689, %686, %683
  %719 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %720 = icmp sgt i32 %719, 3
  br i1 %720, label %721, label %753

721:                                              ; preds = %718
  %722 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %723 = icmp slt i32 %722, 4
  br i1 %723, label %724, label %753

724:                                              ; preds = %721
  %725 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %726 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %727 = icmp eq i64 %725, %726
  br i1 %727, label %728, label %753

728:                                              ; preds = %724
  %729 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %730 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %731 = icmp eq i64 %729, %730
  br i1 %731, label %732, label %753

732:                                              ; preds = %728
  %733 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %734 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %735 = icmp sgt i64 %734, %733
  br i1 %735, label %736, label %753

736:                                              ; preds = %732
  %737 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %738 = add nsw i32 %737, -4
  store volatile i32 %738, ptr @P2_is_marked, align 4, !tbaa !5
  %739 = add nsw i64 %734, %733
  %740 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %741 = sext i32 %740 to i64
  %742 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %741
  store volatile i64 %733, ptr %742, align 8, !tbaa !9
  %743 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %744 = add nsw i32 %743, 1
  %745 = sext i32 %744 to i64
  %746 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %745
  store volatile i64 %734, ptr %746, align 8, !tbaa !9
  %747 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %748 = add nsw i32 %747, 2
  %749 = sext i32 %748 to i64
  %750 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %749
  store volatile i64 %739, ptr %750, align 8, !tbaa !9
  %751 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %752 = add nsw i32 %751, 3
  store volatile i32 %752, ptr @P3_is_marked, align 4, !tbaa !5
  br label %753

753:                                              ; preds = %736, %732, %728, %724, %721, %718
  %754 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %755 = icmp sgt i32 %754, 3
  br i1 %755, label %756, label %788

756:                                              ; preds = %753
  %757 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %758 = icmp slt i32 %757, 4
  br i1 %758, label %759, label %788

759:                                              ; preds = %756
  %760 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %761 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %762 = icmp eq i64 %760, %761
  br i1 %762, label %763, label %788

763:                                              ; preds = %759
  %764 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %765 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %766 = icmp eq i64 %764, %765
  br i1 %766, label %767, label %788

767:                                              ; preds = %763
  %768 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %769 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %770 = icmp sgt i64 %769, %768
  br i1 %770, label %771, label %788

771:                                              ; preds = %767
  %772 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %773 = add nsw i32 %772, -4
  store volatile i32 %773, ptr @P2_is_marked, align 4, !tbaa !5
  %774 = add nsw i64 %769, %768
  %775 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %776 = sext i32 %775 to i64
  %777 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %776
  store volatile i64 %768, ptr %777, align 8, !tbaa !9
  %778 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %779 = add nsw i32 %778, 1
  %780 = sext i32 %779 to i64
  %781 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %780
  store volatile i64 %769, ptr %781, align 8, !tbaa !9
  %782 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %783 = add nsw i32 %782, 2
  %784 = sext i32 %783 to i64
  %785 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %784
  store volatile i64 %774, ptr %785, align 8, !tbaa !9
  %786 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %787 = add nsw i32 %786, 3
  store volatile i32 %787, ptr @P3_is_marked, align 4, !tbaa !5
  br label %788

788:                                              ; preds = %771, %767, %763, %759, %756, %753
  %789 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %790 = icmp sgt i32 %789, 3
  br i1 %790, label %791, label %823

791:                                              ; preds = %788
  %792 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %793 = icmp slt i32 %792, 4
  br i1 %793, label %794, label %823

794:                                              ; preds = %791
  %795 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %796 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %797 = icmp eq i64 %795, %796
  br i1 %797, label %798, label %823

798:                                              ; preds = %794
  %799 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %800 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %801 = icmp eq i64 %799, %800
  br i1 %801, label %802, label %823

802:                                              ; preds = %798
  %803 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %804 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %805 = icmp sgt i64 %804, %803
  br i1 %805, label %806, label %823

806:                                              ; preds = %802
  %807 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %808 = add nsw i32 %807, -4
  store volatile i32 %808, ptr @P2_is_marked, align 4, !tbaa !5
  %809 = add nsw i64 %804, %803
  %810 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %811 = sext i32 %810 to i64
  %812 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %811
  store volatile i64 %803, ptr %812, align 8, !tbaa !9
  %813 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %814 = add nsw i32 %813, 1
  %815 = sext i32 %814 to i64
  %816 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %815
  store volatile i64 %804, ptr %816, align 8, !tbaa !9
  %817 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %818 = add nsw i32 %817, 2
  %819 = sext i32 %818 to i64
  %820 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %819
  store volatile i64 %809, ptr %820, align 8, !tbaa !9
  %821 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %822 = add nsw i32 %821, 3
  store volatile i32 %822, ptr @P3_is_marked, align 4, !tbaa !5
  br label %823

823:                                              ; preds = %806, %802, %798, %794, %791, %788
  %824 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %825 = icmp sgt i32 %824, 3
  br i1 %825, label %826, label %858

826:                                              ; preds = %823
  %827 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %828 = icmp slt i32 %827, 4
  br i1 %828, label %829, label %858

829:                                              ; preds = %826
  %830 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %831 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %832 = icmp eq i64 %830, %831
  br i1 %832, label %833, label %858

833:                                              ; preds = %829
  %834 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %835 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %836 = icmp eq i64 %834, %835
  br i1 %836, label %837, label %858

837:                                              ; preds = %833
  %838 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %839 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %840 = icmp sgt i64 %839, %838
  br i1 %840, label %841, label %858

841:                                              ; preds = %837
  %842 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %843 = add nsw i32 %842, -4
  store volatile i32 %843, ptr @P2_is_marked, align 4, !tbaa !5
  %844 = add nsw i64 %839, %838
  %845 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %846 = sext i32 %845 to i64
  %847 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %846
  store volatile i64 %838, ptr %847, align 8, !tbaa !9
  %848 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %849 = add nsw i32 %848, 1
  %850 = sext i32 %849 to i64
  %851 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %850
  store volatile i64 %839, ptr %851, align 8, !tbaa !9
  %852 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %853 = add nsw i32 %852, 2
  %854 = sext i32 %853 to i64
  %855 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %854
  store volatile i64 %844, ptr %855, align 8, !tbaa !9
  %856 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %857 = add nsw i32 %856, 3
  store volatile i32 %857, ptr @P3_is_marked, align 4, !tbaa !5
  br label %858

858:                                              ; preds = %841, %837, %833, %829, %826, %823
  %859 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %860 = icmp sgt i32 %859, 3
  br i1 %860, label %861, label %893

861:                                              ; preds = %858
  %862 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %863 = icmp slt i32 %862, 4
  br i1 %863, label %864, label %893

864:                                              ; preds = %861
  %865 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %866 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %867 = icmp eq i64 %865, %866
  br i1 %867, label %868, label %893

868:                                              ; preds = %864
  %869 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %870 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %871 = icmp eq i64 %869, %870
  br i1 %871, label %872, label %893

872:                                              ; preds = %868
  %873 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %874 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %875 = icmp sgt i64 %874, %873
  br i1 %875, label %876, label %893

876:                                              ; preds = %872
  %877 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %878 = add nsw i32 %877, -4
  store volatile i32 %878, ptr @P2_is_marked, align 4, !tbaa !5
  %879 = add nsw i64 %874, %873
  %880 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %881 = sext i32 %880 to i64
  %882 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %881
  store volatile i64 %873, ptr %882, align 8, !tbaa !9
  %883 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %884 = add nsw i32 %883, 1
  %885 = sext i32 %884 to i64
  %886 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %885
  store volatile i64 %874, ptr %886, align 8, !tbaa !9
  %887 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %888 = add nsw i32 %887, 2
  %889 = sext i32 %888 to i64
  %890 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %889
  store volatile i64 %879, ptr %890, align 8, !tbaa !9
  %891 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %892 = add nsw i32 %891, 3
  store volatile i32 %892, ptr @P3_is_marked, align 4, !tbaa !5
  br label %893

893:                                              ; preds = %876, %872, %868, %864, %861, %858
  %894 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %895 = icmp sgt i32 %894, 3
  br i1 %895, label %896, label %928

896:                                              ; preds = %893
  %897 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %898 = icmp slt i32 %897, 4
  br i1 %898, label %899, label %928

899:                                              ; preds = %896
  %900 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %901 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %902 = icmp eq i64 %900, %901
  br i1 %902, label %903, label %928

903:                                              ; preds = %899
  %904 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %905 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %906 = icmp eq i64 %904, %905
  br i1 %906, label %907, label %928

907:                                              ; preds = %903
  %908 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %909 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %910 = icmp sgt i64 %909, %908
  br i1 %910, label %911, label %928

911:                                              ; preds = %907
  %912 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %913 = add nsw i32 %912, -4
  store volatile i32 %913, ptr @P2_is_marked, align 4, !tbaa !5
  %914 = add nsw i64 %909, %908
  %915 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %916 = sext i32 %915 to i64
  %917 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %916
  store volatile i64 %908, ptr %917, align 8, !tbaa !9
  %918 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %919 = add nsw i32 %918, 1
  %920 = sext i32 %919 to i64
  %921 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %920
  store volatile i64 %909, ptr %921, align 8, !tbaa !9
  %922 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %923 = add nsw i32 %922, 2
  %924 = sext i32 %923 to i64
  %925 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %924
  store volatile i64 %914, ptr %925, align 8, !tbaa !9
  %926 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %927 = add nsw i32 %926, 3
  store volatile i32 %927, ptr @P3_is_marked, align 4, !tbaa !5
  br label %928

928:                                              ; preds = %911, %907, %903, %899, %896, %893
  %929 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %930 = icmp sgt i32 %929, 3
  br i1 %930, label %931, label %963

931:                                              ; preds = %928
  %932 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %933 = icmp slt i32 %932, 4
  br i1 %933, label %934, label %963

934:                                              ; preds = %931
  %935 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %936 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %937 = icmp eq i64 %935, %936
  br i1 %937, label %938, label %963

938:                                              ; preds = %934
  %939 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %940 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %941 = icmp eq i64 %939, %940
  br i1 %941, label %942, label %963

942:                                              ; preds = %938
  %943 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %944 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %945 = icmp sgt i64 %944, %943
  br i1 %945, label %946, label %963

946:                                              ; preds = %942
  %947 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %948 = add nsw i32 %947, -4
  store volatile i32 %948, ptr @P2_is_marked, align 4, !tbaa !5
  %949 = add nsw i64 %944, %943
  %950 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %951 = sext i32 %950 to i64
  %952 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %951
  store volatile i64 %943, ptr %952, align 8, !tbaa !9
  %953 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %954 = add nsw i32 %953, 1
  %955 = sext i32 %954 to i64
  %956 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %955
  store volatile i64 %944, ptr %956, align 8, !tbaa !9
  %957 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %958 = add nsw i32 %957, 2
  %959 = sext i32 %958 to i64
  %960 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %959
  store volatile i64 %949, ptr %960, align 8, !tbaa !9
  %961 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %962 = add nsw i32 %961, 3
  store volatile i32 %962, ptr @P3_is_marked, align 4, !tbaa !5
  br label %963

963:                                              ; preds = %946, %942, %938, %934, %931, %928
  %964 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %965 = icmp sgt i32 %964, 3
  br i1 %965, label %966, label %998

966:                                              ; preds = %963
  %967 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %968 = icmp slt i32 %967, 4
  br i1 %968, label %969, label %998

969:                                              ; preds = %966
  %970 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %971 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %972 = icmp eq i64 %970, %971
  br i1 %972, label %973, label %998

973:                                              ; preds = %969
  %974 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %975 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %976 = icmp eq i64 %974, %975
  br i1 %976, label %977, label %998

977:                                              ; preds = %973
  %978 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %979 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %980 = icmp sgt i64 %979, %978
  br i1 %980, label %981, label %998

981:                                              ; preds = %977
  %982 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %983 = add nsw i32 %982, -4
  store volatile i32 %983, ptr @P2_is_marked, align 4, !tbaa !5
  %984 = add nsw i64 %979, %978
  %985 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %986 = sext i32 %985 to i64
  %987 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %986
  store volatile i64 %978, ptr %987, align 8, !tbaa !9
  %988 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %989 = add nsw i32 %988, 1
  %990 = sext i32 %989 to i64
  %991 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %990
  store volatile i64 %979, ptr %991, align 8, !tbaa !9
  %992 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %993 = add nsw i32 %992, 2
  %994 = sext i32 %993 to i64
  %995 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %994
  store volatile i64 %984, ptr %995, align 8, !tbaa !9
  %996 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %997 = add nsw i32 %996, 3
  store volatile i32 %997, ptr @P3_is_marked, align 4, !tbaa !5
  br label %998

998:                                              ; preds = %981, %977, %973, %969, %966, %963
  %999 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %1000 = icmp sgt i32 %999, 3
  br i1 %1000, label %1001, label %1033

1001:                                             ; preds = %998
  %1002 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1003 = icmp slt i32 %1002, 4
  br i1 %1003, label %1004, label %1033

1004:                                             ; preds = %1001
  %1005 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %1006 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %1007 = icmp eq i64 %1005, %1006
  br i1 %1007, label %1008, label %1033

1008:                                             ; preds = %1004
  %1009 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %1010 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %1011 = icmp eq i64 %1009, %1010
  br i1 %1011, label %1012, label %1033

1012:                                             ; preds = %1008
  %1013 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %1014 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %1015 = icmp sgt i64 %1014, %1013
  br i1 %1015, label %1016, label %1033

1016:                                             ; preds = %1012
  %1017 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %1018 = add nsw i32 %1017, -4
  store volatile i32 %1018, ptr @P2_is_marked, align 4, !tbaa !5
  %1019 = add nsw i64 %1014, %1013
  %1020 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1021 = sext i32 %1020 to i64
  %1022 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1021
  store volatile i64 %1013, ptr %1022, align 8, !tbaa !9
  %1023 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1024 = add nsw i32 %1023, 1
  %1025 = sext i32 %1024 to i64
  %1026 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1025
  store volatile i64 %1014, ptr %1026, align 8, !tbaa !9
  %1027 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1028 = add nsw i32 %1027, 2
  %1029 = sext i32 %1028 to i64
  %1030 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1029
  store volatile i64 %1019, ptr %1030, align 8, !tbaa !9
  %1031 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1032 = add nsw i32 %1031, 3
  store volatile i32 %1032, ptr @P3_is_marked, align 4, !tbaa !5
  br label %1033

1033:                                             ; preds = %1016, %1012, %1008, %1004, %1001, %998
  %1034 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %1035 = icmp sgt i32 %1034, 4
  br i1 %1035, label %1036, label %1069

1036:                                             ; preds = %1033
  %1037 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1038 = icmp slt i32 %1037, 4
  br i1 %1038, label %1039, label %1069

1039:                                             ; preds = %1036
  %1040 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %1041 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %1042 = icmp eq i64 %1040, %1041
  br i1 %1042, label %1043, label %1069

1043:                                             ; preds = %1039
  %1044 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %1045 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %1046 = icmp eq i64 %1044, %1045
  br i1 %1046, label %1047, label %1069

1047:                                             ; preds = %1043
  %1048 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %1049 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %1050 = icmp sgt i64 %1049, %1048
  br i1 %1050, label %1051, label %1069

1051:                                             ; preds = %1047
  %1052 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  store volatile i64 %1052, ptr @P2_marking_member_0, align 16, !tbaa !9
  %1053 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %1054 = add nsw i32 %1053, -4
  store volatile i32 %1054, ptr @P2_is_marked, align 4, !tbaa !5
  %1055 = add nsw i64 %1049, %1048
  %1056 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1057 = sext i32 %1056 to i64
  %1058 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1057
  store volatile i64 %1048, ptr %1058, align 8, !tbaa !9
  %1059 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1060 = add nsw i32 %1059, 1
  %1061 = sext i32 %1060 to i64
  %1062 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1061
  store volatile i64 %1049, ptr %1062, align 8, !tbaa !9
  %1063 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1064 = add nsw i32 %1063, 2
  %1065 = sext i32 %1064 to i64
  %1066 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1065
  store volatile i64 %1055, ptr %1066, align 8, !tbaa !9
  %1067 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1068 = add nsw i32 %1067, 3
  store volatile i32 %1068, ptr @P3_is_marked, align 4, !tbaa !5
  br label %1069

1069:                                             ; preds = %1051, %1047, %1043, %1039, %1036, %1033
  %1070 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %1071 = icmp sgt i32 %1070, 4
  br i1 %1071, label %1072, label %1105

1072:                                             ; preds = %1069
  %1073 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1074 = icmp slt i32 %1073, 4
  br i1 %1074, label %1075, label %1105

1075:                                             ; preds = %1072
  %1076 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %1077 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %1078 = icmp eq i64 %1076, %1077
  br i1 %1078, label %1079, label %1105

1079:                                             ; preds = %1075
  %1080 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %1081 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %1082 = icmp eq i64 %1080, %1081
  br i1 %1082, label %1083, label %1105

1083:                                             ; preds = %1079
  %1084 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %1085 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %1086 = icmp sgt i64 %1085, %1084
  br i1 %1086, label %1087, label %1105

1087:                                             ; preds = %1083
  %1088 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  store volatile i64 %1088, ptr @P2_marking_member_0, align 16, !tbaa !9
  %1089 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %1090 = add nsw i32 %1089, -4
  store volatile i32 %1090, ptr @P2_is_marked, align 4, !tbaa !5
  %1091 = add nsw i64 %1085, %1084
  %1092 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1093 = sext i32 %1092 to i64
  %1094 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1093
  store volatile i64 %1084, ptr %1094, align 8, !tbaa !9
  %1095 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1096 = add nsw i32 %1095, 1
  %1097 = sext i32 %1096 to i64
  %1098 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1097
  store volatile i64 %1085, ptr %1098, align 8, !tbaa !9
  %1099 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1100 = add nsw i32 %1099, 2
  %1101 = sext i32 %1100 to i64
  %1102 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1101
  store volatile i64 %1091, ptr %1102, align 8, !tbaa !9
  %1103 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1104 = add nsw i32 %1103, 3
  store volatile i32 %1104, ptr @P3_is_marked, align 4, !tbaa !5
  br label %1105

1105:                                             ; preds = %1087, %1083, %1079, %1075, %1072, %1069
  %1106 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %1107 = icmp sgt i32 %1106, 4
  br i1 %1107, label %1108, label %1141

1108:                                             ; preds = %1105
  %1109 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1110 = icmp slt i32 %1109, 4
  br i1 %1110, label %1111, label %1141

1111:                                             ; preds = %1108
  %1112 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %1113 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %1114 = icmp eq i64 %1112, %1113
  br i1 %1114, label %1115, label %1141

1115:                                             ; preds = %1111
  %1116 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %1117 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %1118 = icmp eq i64 %1116, %1117
  br i1 %1118, label %1119, label %1141

1119:                                             ; preds = %1115
  %1120 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %1121 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %1122 = icmp sgt i64 %1121, %1120
  br i1 %1122, label %1123, label %1141

1123:                                             ; preds = %1119
  %1124 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  store volatile i64 %1124, ptr @P2_marking_member_0, align 16, !tbaa !9
  %1125 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %1126 = add nsw i32 %1125, -4
  store volatile i32 %1126, ptr @P2_is_marked, align 4, !tbaa !5
  %1127 = add nsw i64 %1121, %1120
  %1128 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1129 = sext i32 %1128 to i64
  %1130 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1129
  store volatile i64 %1120, ptr %1130, align 8, !tbaa !9
  %1131 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1132 = add nsw i32 %1131, 1
  %1133 = sext i32 %1132 to i64
  %1134 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1133
  store volatile i64 %1121, ptr %1134, align 8, !tbaa !9
  %1135 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1136 = add nsw i32 %1135, 2
  %1137 = sext i32 %1136 to i64
  %1138 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1137
  store volatile i64 %1127, ptr %1138, align 8, !tbaa !9
  %1139 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1140 = add nsw i32 %1139, 3
  store volatile i32 %1140, ptr @P3_is_marked, align 4, !tbaa !5
  br label %1141

1141:                                             ; preds = %1123, %1119, %1115, %1111, %1108, %1105
  %1142 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %1143 = icmp sgt i32 %1142, 4
  br i1 %1143, label %1144, label %1177

1144:                                             ; preds = %1141
  %1145 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1146 = icmp slt i32 %1145, 4
  br i1 %1146, label %1147, label %1177

1147:                                             ; preds = %1144
  %1148 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %1149 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %1150 = icmp eq i64 %1148, %1149
  br i1 %1150, label %1151, label %1177

1151:                                             ; preds = %1147
  %1152 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %1153 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %1154 = icmp eq i64 %1152, %1153
  br i1 %1154, label %1155, label %1177

1155:                                             ; preds = %1151
  %1156 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %1157 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %1158 = icmp sgt i64 %1157, %1156
  br i1 %1158, label %1159, label %1177

1159:                                             ; preds = %1155
  %1160 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  store volatile i64 %1160, ptr @P2_marking_member_0, align 16, !tbaa !9
  %1161 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %1162 = add nsw i32 %1161, -4
  store volatile i32 %1162, ptr @P2_is_marked, align 4, !tbaa !5
  %1163 = add nsw i64 %1157, %1156
  %1164 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1165 = sext i32 %1164 to i64
  %1166 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1165
  store volatile i64 %1156, ptr %1166, align 8, !tbaa !9
  %1167 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1168 = add nsw i32 %1167, 1
  %1169 = sext i32 %1168 to i64
  %1170 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1169
  store volatile i64 %1157, ptr %1170, align 8, !tbaa !9
  %1171 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1172 = add nsw i32 %1171, 2
  %1173 = sext i32 %1172 to i64
  %1174 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1173
  store volatile i64 %1163, ptr %1174, align 8, !tbaa !9
  %1175 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1176 = add nsw i32 %1175, 3
  store volatile i32 %1176, ptr @P3_is_marked, align 4, !tbaa !5
  br label %1177

1177:                                             ; preds = %1159, %1155, %1151, %1147, %1144, %1141
  %1178 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %1179 = icmp sgt i32 %1178, 4
  br i1 %1179, label %1180, label %1213

1180:                                             ; preds = %1177
  %1181 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1182 = icmp slt i32 %1181, 4
  br i1 %1182, label %1183, label %1213

1183:                                             ; preds = %1180
  %1184 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %1185 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %1186 = icmp eq i64 %1184, %1185
  br i1 %1186, label %1187, label %1213

1187:                                             ; preds = %1183
  %1188 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %1189 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %1190 = icmp eq i64 %1188, %1189
  br i1 %1190, label %1191, label %1213

1191:                                             ; preds = %1187
  %1192 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %1193 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %1194 = icmp sgt i64 %1193, %1192
  br i1 %1194, label %1195, label %1213

1195:                                             ; preds = %1191
  %1196 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  store volatile i64 %1196, ptr @P2_marking_member_0, align 16, !tbaa !9
  %1197 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %1198 = add nsw i32 %1197, -4
  store volatile i32 %1198, ptr @P2_is_marked, align 4, !tbaa !5
  %1199 = add nsw i64 %1193, %1192
  %1200 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1201 = sext i32 %1200 to i64
  %1202 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1201
  store volatile i64 %1192, ptr %1202, align 8, !tbaa !9
  %1203 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1204 = add nsw i32 %1203, 1
  %1205 = sext i32 %1204 to i64
  %1206 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1205
  store volatile i64 %1193, ptr %1206, align 8, !tbaa !9
  %1207 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1208 = add nsw i32 %1207, 2
  %1209 = sext i32 %1208 to i64
  %1210 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1209
  store volatile i64 %1199, ptr %1210, align 8, !tbaa !9
  %1211 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1212 = add nsw i32 %1211, 3
  store volatile i32 %1212, ptr @P3_is_marked, align 4, !tbaa !5
  br label %1213

1213:                                             ; preds = %1195, %1191, %1187, %1183, %1180, %1177
  %1214 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %1215 = icmp sgt i32 %1214, 4
  br i1 %1215, label %1216, label %1249

1216:                                             ; preds = %1213
  %1217 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1218 = icmp slt i32 %1217, 4
  br i1 %1218, label %1219, label %1249

1219:                                             ; preds = %1216
  %1220 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %1221 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %1222 = icmp eq i64 %1220, %1221
  br i1 %1222, label %1223, label %1249

1223:                                             ; preds = %1219
  %1224 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %1225 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %1226 = icmp eq i64 %1224, %1225
  br i1 %1226, label %1227, label %1249

1227:                                             ; preds = %1223
  %1228 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %1229 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %1230 = icmp sgt i64 %1229, %1228
  br i1 %1230, label %1231, label %1249

1231:                                             ; preds = %1227
  %1232 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  store volatile i64 %1232, ptr @P2_marking_member_0, align 16, !tbaa !9
  %1233 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %1234 = add nsw i32 %1233, -4
  store volatile i32 %1234, ptr @P2_is_marked, align 4, !tbaa !5
  %1235 = add nsw i64 %1229, %1228
  %1236 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1237 = sext i32 %1236 to i64
  %1238 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1237
  store volatile i64 %1228, ptr %1238, align 8, !tbaa !9
  %1239 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1240 = add nsw i32 %1239, 1
  %1241 = sext i32 %1240 to i64
  %1242 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1241
  store volatile i64 %1229, ptr %1242, align 8, !tbaa !9
  %1243 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1244 = add nsw i32 %1243, 2
  %1245 = sext i32 %1244 to i64
  %1246 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1245
  store volatile i64 %1235, ptr %1246, align 8, !tbaa !9
  %1247 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1248 = add nsw i32 %1247, 3
  store volatile i32 %1248, ptr @P3_is_marked, align 4, !tbaa !5
  br label %1249

1249:                                             ; preds = %1231, %1227, %1223, %1219, %1216, %1213
  %1250 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %1251 = icmp sgt i32 %1250, 4
  br i1 %1251, label %1252, label %1285

1252:                                             ; preds = %1249
  %1253 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1254 = icmp slt i32 %1253, 4
  br i1 %1254, label %1255, label %1285

1255:                                             ; preds = %1252
  %1256 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %1257 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %1258 = icmp eq i64 %1256, %1257
  br i1 %1258, label %1259, label %1285

1259:                                             ; preds = %1255
  %1260 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %1261 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %1262 = icmp eq i64 %1260, %1261
  br i1 %1262, label %1263, label %1285

1263:                                             ; preds = %1259
  %1264 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %1265 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %1266 = icmp sgt i64 %1265, %1264
  br i1 %1266, label %1267, label %1285

1267:                                             ; preds = %1263
  %1268 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  store volatile i64 %1268, ptr @P2_marking_member_0, align 16, !tbaa !9
  %1269 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %1270 = add nsw i32 %1269, -4
  store volatile i32 %1270, ptr @P2_is_marked, align 4, !tbaa !5
  %1271 = add nsw i64 %1265, %1264
  %1272 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1273 = sext i32 %1272 to i64
  %1274 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1273
  store volatile i64 %1264, ptr %1274, align 8, !tbaa !9
  %1275 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1276 = add nsw i32 %1275, 1
  %1277 = sext i32 %1276 to i64
  %1278 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1277
  store volatile i64 %1265, ptr %1278, align 8, !tbaa !9
  %1279 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1280 = add nsw i32 %1279, 2
  %1281 = sext i32 %1280 to i64
  %1282 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1281
  store volatile i64 %1271, ptr %1282, align 8, !tbaa !9
  %1283 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1284 = add nsw i32 %1283, 3
  store volatile i32 %1284, ptr @P3_is_marked, align 4, !tbaa !5
  br label %1285

1285:                                             ; preds = %1267, %1263, %1259, %1255, %1252, %1249
  %1286 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %1287 = icmp sgt i32 %1286, 4
  br i1 %1287, label %1288, label %1321

1288:                                             ; preds = %1285
  %1289 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1290 = icmp slt i32 %1289, 4
  br i1 %1290, label %1291, label %1321

1291:                                             ; preds = %1288
  %1292 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %1293 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %1294 = icmp eq i64 %1292, %1293
  br i1 %1294, label %1295, label %1321

1295:                                             ; preds = %1291
  %1296 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %1297 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %1298 = icmp eq i64 %1296, %1297
  br i1 %1298, label %1299, label %1321

1299:                                             ; preds = %1295
  %1300 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %1301 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %1302 = icmp sgt i64 %1301, %1300
  br i1 %1302, label %1303, label %1321

1303:                                             ; preds = %1299
  %1304 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  store volatile i64 %1304, ptr @P2_marking_member_0, align 16, !tbaa !9
  %1305 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %1306 = add nsw i32 %1305, -4
  store volatile i32 %1306, ptr @P2_is_marked, align 4, !tbaa !5
  %1307 = add nsw i64 %1301, %1300
  %1308 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1309 = sext i32 %1308 to i64
  %1310 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1309
  store volatile i64 %1300, ptr %1310, align 8, !tbaa !9
  %1311 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1312 = add nsw i32 %1311, 1
  %1313 = sext i32 %1312 to i64
  %1314 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1313
  store volatile i64 %1301, ptr %1314, align 8, !tbaa !9
  %1315 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1316 = add nsw i32 %1315, 2
  %1317 = sext i32 %1316 to i64
  %1318 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1317
  store volatile i64 %1307, ptr %1318, align 8, !tbaa !9
  %1319 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1320 = add nsw i32 %1319, 3
  store volatile i32 %1320, ptr @P3_is_marked, align 4, !tbaa !5
  br label %1321

1321:                                             ; preds = %1303, %1299, %1295, %1291, %1288, %1285
  %1322 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %1323 = icmp sgt i32 %1322, 4
  br i1 %1323, label %1324, label %1357

1324:                                             ; preds = %1321
  %1325 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1326 = icmp slt i32 %1325, 4
  br i1 %1326, label %1327, label %1357

1327:                                             ; preds = %1324
  %1328 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %1329 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %1330 = icmp eq i64 %1328, %1329
  br i1 %1330, label %1331, label %1357

1331:                                             ; preds = %1327
  %1332 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %1333 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %1334 = icmp eq i64 %1332, %1333
  br i1 %1334, label %1335, label %1357

1335:                                             ; preds = %1331
  %1336 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %1337 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %1338 = icmp sgt i64 %1337, %1336
  br i1 %1338, label %1339, label %1357

1339:                                             ; preds = %1335
  %1340 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  store volatile i64 %1340, ptr @P2_marking_member_0, align 16, !tbaa !9
  %1341 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %1342 = add nsw i32 %1341, -4
  store volatile i32 %1342, ptr @P2_is_marked, align 4, !tbaa !5
  %1343 = add nsw i64 %1337, %1336
  %1344 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1345 = sext i32 %1344 to i64
  %1346 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1345
  store volatile i64 %1336, ptr %1346, align 8, !tbaa !9
  %1347 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1348 = add nsw i32 %1347, 1
  %1349 = sext i32 %1348 to i64
  %1350 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1349
  store volatile i64 %1337, ptr %1350, align 8, !tbaa !9
  %1351 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1352 = add nsw i32 %1351, 2
  %1353 = sext i32 %1352 to i64
  %1354 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1353
  store volatile i64 %1343, ptr %1354, align 8, !tbaa !9
  %1355 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1356 = add nsw i32 %1355, 3
  store volatile i32 %1356, ptr @P3_is_marked, align 4, !tbaa !5
  br label %1357

1357:                                             ; preds = %1339, %1335, %1331, %1327, %1324, %1321
  %1358 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %1359 = icmp sgt i32 %1358, 4
  br i1 %1359, label %1360, label %1393

1360:                                             ; preds = %1357
  %1361 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1362 = icmp slt i32 %1361, 4
  br i1 %1362, label %1363, label %1393

1363:                                             ; preds = %1360
  %1364 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %1365 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %1366 = icmp eq i64 %1364, %1365
  br i1 %1366, label %1367, label %1393

1367:                                             ; preds = %1363
  %1368 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %1369 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %1370 = icmp eq i64 %1368, %1369
  br i1 %1370, label %1371, label %1393

1371:                                             ; preds = %1367
  %1372 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %1373 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %1374 = icmp sgt i64 %1373, %1372
  br i1 %1374, label %1375, label %1393

1375:                                             ; preds = %1371
  %1376 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  store volatile i64 %1376, ptr @P2_marking_member_0, align 16, !tbaa !9
  %1377 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %1378 = add nsw i32 %1377, -4
  store volatile i32 %1378, ptr @P2_is_marked, align 4, !tbaa !5
  %1379 = add nsw i64 %1373, %1372
  %1380 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1381 = sext i32 %1380 to i64
  %1382 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1381
  store volatile i64 %1372, ptr %1382, align 8, !tbaa !9
  %1383 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1384 = add nsw i32 %1383, 1
  %1385 = sext i32 %1384 to i64
  %1386 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1385
  store volatile i64 %1373, ptr %1386, align 8, !tbaa !9
  %1387 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1388 = add nsw i32 %1387, 2
  %1389 = sext i32 %1388 to i64
  %1390 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1389
  store volatile i64 %1379, ptr %1390, align 8, !tbaa !9
  %1391 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1392 = add nsw i32 %1391, 3
  store volatile i32 %1392, ptr @P3_is_marked, align 4, !tbaa !5
  br label %1393

1393:                                             ; preds = %1375, %1371, %1367, %1363, %1360, %1357
  %1394 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %1395 = icmp sgt i32 %1394, 4
  br i1 %1395, label %1396, label %1429

1396:                                             ; preds = %1393
  %1397 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1398 = icmp slt i32 %1397, 4
  br i1 %1398, label %1399, label %1429

1399:                                             ; preds = %1396
  %1400 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %1401 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %1402 = icmp eq i64 %1400, %1401
  br i1 %1402, label %1403, label %1429

1403:                                             ; preds = %1399
  %1404 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %1405 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %1406 = icmp eq i64 %1404, %1405
  br i1 %1406, label %1407, label %1429

1407:                                             ; preds = %1403
  %1408 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %1409 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %1410 = icmp sgt i64 %1409, %1408
  br i1 %1410, label %1411, label %1429

1411:                                             ; preds = %1407
  %1412 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  store volatile i64 %1412, ptr @P2_marking_member_0, align 16, !tbaa !9
  %1413 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %1414 = add nsw i32 %1413, -4
  store volatile i32 %1414, ptr @P2_is_marked, align 4, !tbaa !5
  %1415 = add nsw i64 %1409, %1408
  %1416 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1417 = sext i32 %1416 to i64
  %1418 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1417
  store volatile i64 %1408, ptr %1418, align 8, !tbaa !9
  %1419 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1420 = add nsw i32 %1419, 1
  %1421 = sext i32 %1420 to i64
  %1422 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1421
  store volatile i64 %1409, ptr %1422, align 8, !tbaa !9
  %1423 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1424 = add nsw i32 %1423, 2
  %1425 = sext i32 %1424 to i64
  %1426 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1425
  store volatile i64 %1415, ptr %1426, align 8, !tbaa !9
  %1427 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1428 = add nsw i32 %1427, 3
  store volatile i32 %1428, ptr @P3_is_marked, align 4, !tbaa !5
  br label %1429

1429:                                             ; preds = %1411, %1407, %1403, %1399, %1396, %1393
  %1430 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %1431 = icmp sgt i32 %1430, 4
  br i1 %1431, label %1432, label %1465

1432:                                             ; preds = %1429
  %1433 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1434 = icmp slt i32 %1433, 4
  br i1 %1434, label %1435, label %1465

1435:                                             ; preds = %1432
  %1436 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %1437 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %1438 = icmp eq i64 %1436, %1437
  br i1 %1438, label %1439, label %1465

1439:                                             ; preds = %1435
  %1440 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %1441 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %1442 = icmp eq i64 %1440, %1441
  br i1 %1442, label %1443, label %1465

1443:                                             ; preds = %1439
  %1444 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %1445 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %1446 = icmp sgt i64 %1445, %1444
  br i1 %1446, label %1447, label %1465

1447:                                             ; preds = %1443
  %1448 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  store volatile i64 %1448, ptr @P2_marking_member_0, align 16, !tbaa !9
  %1449 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %1450 = add nsw i32 %1449, -4
  store volatile i32 %1450, ptr @P2_is_marked, align 4, !tbaa !5
  %1451 = add nsw i64 %1445, %1444
  %1452 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1453 = sext i32 %1452 to i64
  %1454 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1453
  store volatile i64 %1444, ptr %1454, align 8, !tbaa !9
  %1455 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1456 = add nsw i32 %1455, 1
  %1457 = sext i32 %1456 to i64
  %1458 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1457
  store volatile i64 %1445, ptr %1458, align 8, !tbaa !9
  %1459 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1460 = add nsw i32 %1459, 2
  %1461 = sext i32 %1460 to i64
  %1462 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1461
  store volatile i64 %1451, ptr %1462, align 8, !tbaa !9
  %1463 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1464 = add nsw i32 %1463, 3
  store volatile i32 %1464, ptr @P3_is_marked, align 4, !tbaa !5
  br label %1465

1465:                                             ; preds = %1447, %1443, %1439, %1435, %1432, %1429
  %1466 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %1467 = icmp sgt i32 %1466, 4
  br i1 %1467, label %1468, label %1501

1468:                                             ; preds = %1465
  %1469 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1470 = icmp slt i32 %1469, 4
  br i1 %1470, label %1471, label %1501

1471:                                             ; preds = %1468
  %1472 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %1473 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %1474 = icmp eq i64 %1472, %1473
  br i1 %1474, label %1475, label %1501

1475:                                             ; preds = %1471
  %1476 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %1477 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %1478 = icmp eq i64 %1476, %1477
  br i1 %1478, label %1479, label %1501

1479:                                             ; preds = %1475
  %1480 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %1481 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %1482 = icmp sgt i64 %1481, %1480
  br i1 %1482, label %1483, label %1501

1483:                                             ; preds = %1479
  %1484 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  store volatile i64 %1484, ptr @P2_marking_member_0, align 16, !tbaa !9
  %1485 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %1486 = add nsw i32 %1485, -4
  store volatile i32 %1486, ptr @P2_is_marked, align 4, !tbaa !5
  %1487 = add nsw i64 %1481, %1480
  %1488 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1489 = sext i32 %1488 to i64
  %1490 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1489
  store volatile i64 %1480, ptr %1490, align 8, !tbaa !9
  %1491 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1492 = add nsw i32 %1491, 1
  %1493 = sext i32 %1492 to i64
  %1494 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1493
  store volatile i64 %1481, ptr %1494, align 8, !tbaa !9
  %1495 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1496 = add nsw i32 %1495, 2
  %1497 = sext i32 %1496 to i64
  %1498 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1497
  store volatile i64 %1487, ptr %1498, align 8, !tbaa !9
  %1499 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1500 = add nsw i32 %1499, 3
  store volatile i32 %1500, ptr @P3_is_marked, align 4, !tbaa !5
  br label %1501

1501:                                             ; preds = %1483, %1479, %1475, %1471, %1468, %1465
  %1502 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %1503 = icmp sgt i32 %1502, 4
  br i1 %1503, label %1504, label %1537

1504:                                             ; preds = %1501
  %1505 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1506 = icmp slt i32 %1505, 4
  br i1 %1506, label %1507, label %1537

1507:                                             ; preds = %1504
  %1508 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %1509 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %1510 = icmp eq i64 %1508, %1509
  br i1 %1510, label %1511, label %1537

1511:                                             ; preds = %1507
  %1512 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %1513 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %1514 = icmp eq i64 %1512, %1513
  br i1 %1514, label %1515, label %1537

1515:                                             ; preds = %1511
  %1516 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %1517 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %1518 = icmp sgt i64 %1517, %1516
  br i1 %1518, label %1519, label %1537

1519:                                             ; preds = %1515
  %1520 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  store volatile i64 %1520, ptr @P2_marking_member_0, align 16, !tbaa !9
  %1521 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %1522 = add nsw i32 %1521, -4
  store volatile i32 %1522, ptr @P2_is_marked, align 4, !tbaa !5
  %1523 = add nsw i64 %1517, %1516
  %1524 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1525 = sext i32 %1524 to i64
  %1526 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1525
  store volatile i64 %1516, ptr %1526, align 8, !tbaa !9
  %1527 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1528 = add nsw i32 %1527, 1
  %1529 = sext i32 %1528 to i64
  %1530 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1529
  store volatile i64 %1517, ptr %1530, align 8, !tbaa !9
  %1531 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1532 = add nsw i32 %1531, 2
  %1533 = sext i32 %1532 to i64
  %1534 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1533
  store volatile i64 %1523, ptr %1534, align 8, !tbaa !9
  %1535 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1536 = add nsw i32 %1535, 3
  store volatile i32 %1536, ptr @P3_is_marked, align 4, !tbaa !5
  br label %1537

1537:                                             ; preds = %1519, %1515, %1511, %1507, %1504, %1501
  %1538 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %1539 = icmp sgt i32 %1538, 4
  br i1 %1539, label %1540, label %1573

1540:                                             ; preds = %1537
  %1541 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1542 = icmp slt i32 %1541, 4
  br i1 %1542, label %1543, label %1573

1543:                                             ; preds = %1540
  %1544 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %1545 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %1546 = icmp eq i64 %1544, %1545
  br i1 %1546, label %1547, label %1573

1547:                                             ; preds = %1543
  %1548 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %1549 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %1550 = icmp eq i64 %1548, %1549
  br i1 %1550, label %1551, label %1573

1551:                                             ; preds = %1547
  %1552 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %1553 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %1554 = icmp sgt i64 %1553, %1552
  br i1 %1554, label %1555, label %1573

1555:                                             ; preds = %1551
  %1556 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  store volatile i64 %1556, ptr @P2_marking_member_0, align 16, !tbaa !9
  %1557 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %1558 = add nsw i32 %1557, -4
  store volatile i32 %1558, ptr @P2_is_marked, align 4, !tbaa !5
  %1559 = add nsw i64 %1553, %1552
  %1560 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1561 = sext i32 %1560 to i64
  %1562 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1561
  store volatile i64 %1552, ptr %1562, align 8, !tbaa !9
  %1563 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1564 = add nsw i32 %1563, 1
  %1565 = sext i32 %1564 to i64
  %1566 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1565
  store volatile i64 %1553, ptr %1566, align 8, !tbaa !9
  %1567 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1568 = add nsw i32 %1567, 2
  %1569 = sext i32 %1568 to i64
  %1570 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1569
  store volatile i64 %1559, ptr %1570, align 8, !tbaa !9
  %1571 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1572 = add nsw i32 %1571, 3
  store volatile i32 %1572, ptr @P3_is_marked, align 4, !tbaa !5
  br label %1573

1573:                                             ; preds = %1555, %1551, %1547, %1543, %1540, %1537
  %1574 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %1575 = icmp sgt i32 %1574, 4
  br i1 %1575, label %1576, label %1609

1576:                                             ; preds = %1573
  %1577 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1578 = icmp slt i32 %1577, 4
  br i1 %1578, label %1579, label %1609

1579:                                             ; preds = %1576
  %1580 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %1581 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %1582 = icmp eq i64 %1580, %1581
  br i1 %1582, label %1583, label %1609

1583:                                             ; preds = %1579
  %1584 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %1585 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %1586 = icmp eq i64 %1584, %1585
  br i1 %1586, label %1587, label %1609

1587:                                             ; preds = %1583
  %1588 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %1589 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %1590 = icmp sgt i64 %1589, %1588
  br i1 %1590, label %1591, label %1609

1591:                                             ; preds = %1587
  %1592 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  store volatile i64 %1592, ptr @P2_marking_member_0, align 16, !tbaa !9
  %1593 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %1594 = add nsw i32 %1593, -4
  store volatile i32 %1594, ptr @P2_is_marked, align 4, !tbaa !5
  %1595 = add nsw i64 %1589, %1588
  %1596 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1597 = sext i32 %1596 to i64
  %1598 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1597
  store volatile i64 %1588, ptr %1598, align 8, !tbaa !9
  %1599 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1600 = add nsw i32 %1599, 1
  %1601 = sext i32 %1600 to i64
  %1602 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1601
  store volatile i64 %1589, ptr %1602, align 8, !tbaa !9
  %1603 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1604 = add nsw i32 %1603, 2
  %1605 = sext i32 %1604 to i64
  %1606 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1605
  store volatile i64 %1595, ptr %1606, align 8, !tbaa !9
  %1607 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1608 = add nsw i32 %1607, 3
  store volatile i32 %1608, ptr @P3_is_marked, align 4, !tbaa !5
  br label %1609

1609:                                             ; preds = %1591, %1587, %1583, %1579, %1576, %1573
  %1610 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %1611 = icmp sgt i32 %1610, 4
  br i1 %1611, label %1612, label %1645

1612:                                             ; preds = %1609
  %1613 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1614 = icmp slt i32 %1613, 4
  br i1 %1614, label %1615, label %1645

1615:                                             ; preds = %1612
  %1616 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %1617 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %1618 = icmp eq i64 %1616, %1617
  br i1 %1618, label %1619, label %1645

1619:                                             ; preds = %1615
  %1620 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %1621 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %1622 = icmp eq i64 %1620, %1621
  br i1 %1622, label %1623, label %1645

1623:                                             ; preds = %1619
  %1624 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %1625 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %1626 = icmp sgt i64 %1625, %1624
  br i1 %1626, label %1627, label %1645

1627:                                             ; preds = %1623
  %1628 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  store volatile i64 %1628, ptr @P2_marking_member_0, align 16, !tbaa !9
  %1629 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %1630 = add nsw i32 %1629, -4
  store volatile i32 %1630, ptr @P2_is_marked, align 4, !tbaa !5
  %1631 = add nsw i64 %1625, %1624
  %1632 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1633 = sext i32 %1632 to i64
  %1634 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1633
  store volatile i64 %1624, ptr %1634, align 8, !tbaa !9
  %1635 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1636 = add nsw i32 %1635, 1
  %1637 = sext i32 %1636 to i64
  %1638 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1637
  store volatile i64 %1625, ptr %1638, align 8, !tbaa !9
  %1639 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1640 = add nsw i32 %1639, 2
  %1641 = sext i32 %1640 to i64
  %1642 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1641
  store volatile i64 %1631, ptr %1642, align 8, !tbaa !9
  %1643 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1644 = add nsw i32 %1643, 3
  store volatile i32 %1644, ptr @P3_is_marked, align 4, !tbaa !5
  br label %1645

1645:                                             ; preds = %1627, %1623, %1619, %1615, %1612, %1609
  %1646 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %1647 = icmp sgt i32 %1646, 4
  br i1 %1647, label %1648, label %1681

1648:                                             ; preds = %1645
  %1649 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1650 = icmp slt i32 %1649, 4
  br i1 %1650, label %1651, label %1681

1651:                                             ; preds = %1648
  %1652 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %1653 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %1654 = icmp eq i64 %1652, %1653
  br i1 %1654, label %1655, label %1681

1655:                                             ; preds = %1651
  %1656 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %1657 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %1658 = icmp eq i64 %1656, %1657
  br i1 %1658, label %1659, label %1681

1659:                                             ; preds = %1655
  %1660 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %1661 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %1662 = icmp sgt i64 %1661, %1660
  br i1 %1662, label %1663, label %1681

1663:                                             ; preds = %1659
  %1664 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  store volatile i64 %1664, ptr @P2_marking_member_0, align 16, !tbaa !9
  %1665 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %1666 = add nsw i32 %1665, -4
  store volatile i32 %1666, ptr @P2_is_marked, align 4, !tbaa !5
  %1667 = add nsw i64 %1661, %1660
  %1668 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1669 = sext i32 %1668 to i64
  %1670 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1669
  store volatile i64 %1660, ptr %1670, align 8, !tbaa !9
  %1671 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1672 = add nsw i32 %1671, 1
  %1673 = sext i32 %1672 to i64
  %1674 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1673
  store volatile i64 %1661, ptr %1674, align 8, !tbaa !9
  %1675 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1676 = add nsw i32 %1675, 2
  %1677 = sext i32 %1676 to i64
  %1678 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1677
  store volatile i64 %1667, ptr %1678, align 8, !tbaa !9
  %1679 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1680 = add nsw i32 %1679, 3
  store volatile i32 %1680, ptr @P3_is_marked, align 4, !tbaa !5
  br label %1681

1681:                                             ; preds = %1663, %1659, %1655, %1651, %1648, %1645
  %1682 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %1683 = icmp sgt i32 %1682, 4
  br i1 %1683, label %1684, label %1717

1684:                                             ; preds = %1681
  %1685 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1686 = icmp slt i32 %1685, 4
  br i1 %1686, label %1687, label %1717

1687:                                             ; preds = %1684
  %1688 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %1689 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %1690 = icmp eq i64 %1688, %1689
  br i1 %1690, label %1691, label %1717

1691:                                             ; preds = %1687
  %1692 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %1693 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %1694 = icmp eq i64 %1692, %1693
  br i1 %1694, label %1695, label %1717

1695:                                             ; preds = %1691
  %1696 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %1697 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %1698 = icmp sgt i64 %1697, %1696
  br i1 %1698, label %1699, label %1717

1699:                                             ; preds = %1695
  %1700 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  store volatile i64 %1700, ptr @P2_marking_member_0, align 16, !tbaa !9
  %1701 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %1702 = add nsw i32 %1701, -4
  store volatile i32 %1702, ptr @P2_is_marked, align 4, !tbaa !5
  %1703 = add nsw i64 %1697, %1696
  %1704 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1705 = sext i32 %1704 to i64
  %1706 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1705
  store volatile i64 %1696, ptr %1706, align 8, !tbaa !9
  %1707 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1708 = add nsw i32 %1707, 1
  %1709 = sext i32 %1708 to i64
  %1710 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1709
  store volatile i64 %1697, ptr %1710, align 8, !tbaa !9
  %1711 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1712 = add nsw i32 %1711, 2
  %1713 = sext i32 %1712 to i64
  %1714 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1713
  store volatile i64 %1703, ptr %1714, align 8, !tbaa !9
  %1715 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1716 = add nsw i32 %1715, 3
  store volatile i32 %1716, ptr @P3_is_marked, align 4, !tbaa !5
  br label %1717

1717:                                             ; preds = %1699, %1695, %1691, %1687, %1684, %1681
  %1718 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %1719 = icmp sgt i32 %1718, 4
  br i1 %1719, label %1720, label %1753

1720:                                             ; preds = %1717
  %1721 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1722 = icmp slt i32 %1721, 4
  br i1 %1722, label %1723, label %1753

1723:                                             ; preds = %1720
  %1724 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %1725 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %1726 = icmp eq i64 %1724, %1725
  br i1 %1726, label %1727, label %1753

1727:                                             ; preds = %1723
  %1728 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %1729 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %1730 = icmp eq i64 %1728, %1729
  br i1 %1730, label %1731, label %1753

1731:                                             ; preds = %1727
  %1732 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %1733 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %1734 = icmp sgt i64 %1733, %1732
  br i1 %1734, label %1735, label %1753

1735:                                             ; preds = %1731
  %1736 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  store volatile i64 %1736, ptr @P2_marking_member_0, align 16, !tbaa !9
  %1737 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %1738 = add nsw i32 %1737, -4
  store volatile i32 %1738, ptr @P2_is_marked, align 4, !tbaa !5
  %1739 = add nsw i64 %1733, %1732
  %1740 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1741 = sext i32 %1740 to i64
  %1742 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1741
  store volatile i64 %1732, ptr %1742, align 8, !tbaa !9
  %1743 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1744 = add nsw i32 %1743, 1
  %1745 = sext i32 %1744 to i64
  %1746 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1745
  store volatile i64 %1733, ptr %1746, align 8, !tbaa !9
  %1747 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1748 = add nsw i32 %1747, 2
  %1749 = sext i32 %1748 to i64
  %1750 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1749
  store volatile i64 %1739, ptr %1750, align 8, !tbaa !9
  %1751 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1752 = add nsw i32 %1751, 3
  store volatile i32 %1752, ptr @P3_is_marked, align 4, !tbaa !5
  br label %1753

1753:                                             ; preds = %1735, %1731, %1727, %1723, %1720, %1717
  %1754 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %1755 = icmp sgt i32 %1754, 4
  br i1 %1755, label %1756, label %1789

1756:                                             ; preds = %1753
  %1757 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1758 = icmp slt i32 %1757, 4
  br i1 %1758, label %1759, label %1789

1759:                                             ; preds = %1756
  %1760 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %1761 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %1762 = icmp eq i64 %1760, %1761
  br i1 %1762, label %1763, label %1789

1763:                                             ; preds = %1759
  %1764 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %1765 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %1766 = icmp eq i64 %1764, %1765
  br i1 %1766, label %1767, label %1789

1767:                                             ; preds = %1763
  %1768 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %1769 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %1770 = icmp sgt i64 %1769, %1768
  br i1 %1770, label %1771, label %1789

1771:                                             ; preds = %1767
  %1772 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  store volatile i64 %1772, ptr @P2_marking_member_0, align 16, !tbaa !9
  %1773 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %1774 = add nsw i32 %1773, -4
  store volatile i32 %1774, ptr @P2_is_marked, align 4, !tbaa !5
  %1775 = add nsw i64 %1769, %1768
  %1776 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1777 = sext i32 %1776 to i64
  %1778 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1777
  store volatile i64 %1768, ptr %1778, align 8, !tbaa !9
  %1779 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1780 = add nsw i32 %1779, 1
  %1781 = sext i32 %1780 to i64
  %1782 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1781
  store volatile i64 %1769, ptr %1782, align 8, !tbaa !9
  %1783 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1784 = add nsw i32 %1783, 2
  %1785 = sext i32 %1784 to i64
  %1786 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1785
  store volatile i64 %1775, ptr %1786, align 8, !tbaa !9
  %1787 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1788 = add nsw i32 %1787, 3
  store volatile i32 %1788, ptr @P3_is_marked, align 4, !tbaa !5
  br label %1789

1789:                                             ; preds = %1771, %1767, %1763, %1759, %1756, %1753
  %1790 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %1791 = icmp sgt i32 %1790, 4
  br i1 %1791, label %1792, label %1825

1792:                                             ; preds = %1789
  %1793 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1794 = icmp slt i32 %1793, 4
  br i1 %1794, label %1795, label %1825

1795:                                             ; preds = %1792
  %1796 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %1797 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %1798 = icmp eq i64 %1796, %1797
  br i1 %1798, label %1799, label %1825

1799:                                             ; preds = %1795
  %1800 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %1801 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %1802 = icmp eq i64 %1800, %1801
  br i1 %1802, label %1803, label %1825

1803:                                             ; preds = %1799
  %1804 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %1805 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %1806 = icmp sgt i64 %1805, %1804
  br i1 %1806, label %1807, label %1825

1807:                                             ; preds = %1803
  %1808 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  store volatile i64 %1808, ptr @P2_marking_member_0, align 16, !tbaa !9
  %1809 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %1810 = add nsw i32 %1809, -4
  store volatile i32 %1810, ptr @P2_is_marked, align 4, !tbaa !5
  %1811 = add nsw i64 %1805, %1804
  %1812 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1813 = sext i32 %1812 to i64
  %1814 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1813
  store volatile i64 %1804, ptr %1814, align 8, !tbaa !9
  %1815 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1816 = add nsw i32 %1815, 1
  %1817 = sext i32 %1816 to i64
  %1818 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1817
  store volatile i64 %1805, ptr %1818, align 8, !tbaa !9
  %1819 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1820 = add nsw i32 %1819, 2
  %1821 = sext i32 %1820 to i64
  %1822 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1821
  store volatile i64 %1811, ptr %1822, align 8, !tbaa !9
  %1823 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1824 = add nsw i32 %1823, 3
  store volatile i32 %1824, ptr @P3_is_marked, align 4, !tbaa !5
  br label %1825

1825:                                             ; preds = %1807, %1803, %1799, %1795, %1792, %1789
  %1826 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %1827 = icmp sgt i32 %1826, 4
  br i1 %1827, label %1828, label %1861

1828:                                             ; preds = %1825
  %1829 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1830 = icmp slt i32 %1829, 4
  br i1 %1830, label %1831, label %1861

1831:                                             ; preds = %1828
  %1832 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %1833 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %1834 = icmp eq i64 %1832, %1833
  br i1 %1834, label %1835, label %1861

1835:                                             ; preds = %1831
  %1836 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %1837 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %1838 = icmp eq i64 %1836, %1837
  br i1 %1838, label %1839, label %1861

1839:                                             ; preds = %1835
  %1840 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %1841 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %1842 = icmp sgt i64 %1841, %1840
  br i1 %1842, label %1843, label %1861

1843:                                             ; preds = %1839
  %1844 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  store volatile i64 %1844, ptr @P2_marking_member_0, align 16, !tbaa !9
  %1845 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %1846 = add nsw i32 %1845, -4
  store volatile i32 %1846, ptr @P2_is_marked, align 4, !tbaa !5
  %1847 = add nsw i64 %1841, %1840
  %1848 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1849 = sext i32 %1848 to i64
  %1850 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1849
  store volatile i64 %1840, ptr %1850, align 8, !tbaa !9
  %1851 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1852 = add nsw i32 %1851, 1
  %1853 = sext i32 %1852 to i64
  %1854 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1853
  store volatile i64 %1841, ptr %1854, align 8, !tbaa !9
  %1855 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1856 = add nsw i32 %1855, 2
  %1857 = sext i32 %1856 to i64
  %1858 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1857
  store volatile i64 %1847, ptr %1858, align 8, !tbaa !9
  %1859 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1860 = add nsw i32 %1859, 3
  store volatile i32 %1860, ptr @P3_is_marked, align 4, !tbaa !5
  br label %1861

1861:                                             ; preds = %1843, %1839, %1835, %1831, %1828, %1825
  %1862 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %1863 = icmp sgt i32 %1862, 4
  br i1 %1863, label %1864, label %1896

1864:                                             ; preds = %1861
  %1865 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1866 = icmp slt i32 %1865, 4
  br i1 %1866, label %1867, label %1896

1867:                                             ; preds = %1864
  %1868 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %1869 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %1870 = icmp eq i64 %1868, %1869
  br i1 %1870, label %1871, label %1896

1871:                                             ; preds = %1867
  %1872 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %1873 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %1874 = icmp eq i64 %1872, %1873
  br i1 %1874, label %1875, label %1896

1875:                                             ; preds = %1871
  %1876 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %1877 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %1878 = icmp sgt i64 %1877, %1876
  br i1 %1878, label %1879, label %1896

1879:                                             ; preds = %1875
  %1880 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %1881 = add nsw i32 %1880, -4
  store volatile i32 %1881, ptr @P2_is_marked, align 4, !tbaa !5
  %1882 = add nsw i64 %1877, %1876
  %1883 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1884 = sext i32 %1883 to i64
  %1885 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1884
  store volatile i64 %1876, ptr %1885, align 8, !tbaa !9
  %1886 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1887 = add nsw i32 %1886, 1
  %1888 = sext i32 %1887 to i64
  %1889 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1888
  store volatile i64 %1877, ptr %1889, align 8, !tbaa !9
  %1890 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1891 = add nsw i32 %1890, 2
  %1892 = sext i32 %1891 to i64
  %1893 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1892
  store volatile i64 %1882, ptr %1893, align 8, !tbaa !9
  %1894 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1895 = add nsw i32 %1894, 3
  store volatile i32 %1895, ptr @P3_is_marked, align 4, !tbaa !5
  br label %1896

1896:                                             ; preds = %1879, %1875, %1871, %1867, %1864, %1861
  %1897 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %1898 = icmp sgt i32 %1897, 4
  br i1 %1898, label %1899, label %1932

1899:                                             ; preds = %1896
  %1900 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1901 = icmp slt i32 %1900, 4
  br i1 %1901, label %1902, label %1932

1902:                                             ; preds = %1899
  %1903 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %1904 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %1905 = icmp eq i64 %1903, %1904
  br i1 %1905, label %1906, label %1932

1906:                                             ; preds = %1902
  %1907 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %1908 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %1909 = icmp eq i64 %1907, %1908
  br i1 %1909, label %1910, label %1932

1910:                                             ; preds = %1906
  %1911 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %1912 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %1913 = icmp sgt i64 %1912, %1911
  br i1 %1913, label %1914, label %1932

1914:                                             ; preds = %1910
  %1915 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  store volatile i64 %1915, ptr @P2_marking_member_0, align 16, !tbaa !9
  %1916 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %1917 = add nsw i32 %1916, -4
  store volatile i32 %1917, ptr @P2_is_marked, align 4, !tbaa !5
  %1918 = add nsw i64 %1912, %1911
  %1919 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1920 = sext i32 %1919 to i64
  %1921 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1920
  store volatile i64 %1911, ptr %1921, align 8, !tbaa !9
  %1922 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1923 = add nsw i32 %1922, 1
  %1924 = sext i32 %1923 to i64
  %1925 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1924
  store volatile i64 %1912, ptr %1925, align 8, !tbaa !9
  %1926 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1927 = add nsw i32 %1926, 2
  %1928 = sext i32 %1927 to i64
  %1929 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1928
  store volatile i64 %1918, ptr %1929, align 8, !tbaa !9
  %1930 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1931 = add nsw i32 %1930, 3
  store volatile i32 %1931, ptr @P3_is_marked, align 4, !tbaa !5
  br label %1932

1932:                                             ; preds = %1914, %1910, %1906, %1902, %1899, %1896
  %1933 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %1934 = icmp sgt i32 %1933, 4
  br i1 %1934, label %1935, label %1967

1935:                                             ; preds = %1932
  %1936 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1937 = icmp slt i32 %1936, 4
  br i1 %1937, label %1938, label %1967

1938:                                             ; preds = %1935
  %1939 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %1940 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %1941 = icmp eq i64 %1939, %1940
  br i1 %1941, label %1942, label %1967

1942:                                             ; preds = %1938
  %1943 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %1944 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %1945 = icmp eq i64 %1943, %1944
  br i1 %1945, label %1946, label %1967

1946:                                             ; preds = %1942
  %1947 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %1948 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %1949 = icmp sgt i64 %1948, %1947
  br i1 %1949, label %1950, label %1967

1950:                                             ; preds = %1946
  %1951 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %1952 = add nsw i32 %1951, -4
  store volatile i32 %1952, ptr @P2_is_marked, align 4, !tbaa !5
  %1953 = add nsw i64 %1948, %1947
  %1954 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1955 = sext i32 %1954 to i64
  %1956 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1955
  store volatile i64 %1947, ptr %1956, align 8, !tbaa !9
  %1957 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1958 = add nsw i32 %1957, 1
  %1959 = sext i32 %1958 to i64
  %1960 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1959
  store volatile i64 %1948, ptr %1960, align 8, !tbaa !9
  %1961 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1962 = add nsw i32 %1961, 2
  %1963 = sext i32 %1962 to i64
  %1964 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1963
  store volatile i64 %1953, ptr %1964, align 8, !tbaa !9
  %1965 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1966 = add nsw i32 %1965, 3
  store volatile i32 %1966, ptr @P3_is_marked, align 4, !tbaa !5
  br label %1967

1967:                                             ; preds = %1950, %1946, %1942, %1938, %1935, %1932
  %1968 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %1969 = icmp sgt i32 %1968, 4
  br i1 %1969, label %1970, label %2003

1970:                                             ; preds = %1967
  %1971 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1972 = icmp slt i32 %1971, 4
  br i1 %1972, label %1973, label %2003

1973:                                             ; preds = %1970
  %1974 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %1975 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %1976 = icmp eq i64 %1974, %1975
  br i1 %1976, label %1977, label %2003

1977:                                             ; preds = %1973
  %1978 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %1979 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %1980 = icmp eq i64 %1978, %1979
  br i1 %1980, label %1981, label %2003

1981:                                             ; preds = %1977
  %1982 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %1983 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %1984 = icmp sgt i64 %1983, %1982
  br i1 %1984, label %1985, label %2003

1985:                                             ; preds = %1981
  %1986 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  store volatile i64 %1986, ptr @P2_marking_member_0, align 16, !tbaa !9
  %1987 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %1988 = add nsw i32 %1987, -4
  store volatile i32 %1988, ptr @P2_is_marked, align 4, !tbaa !5
  %1989 = add nsw i64 %1983, %1982
  %1990 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1991 = sext i32 %1990 to i64
  %1992 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1991
  store volatile i64 %1982, ptr %1992, align 8, !tbaa !9
  %1993 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1994 = add nsw i32 %1993, 1
  %1995 = sext i32 %1994 to i64
  %1996 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1995
  store volatile i64 %1983, ptr %1996, align 8, !tbaa !9
  %1997 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %1998 = add nsw i32 %1997, 2
  %1999 = sext i32 %1998 to i64
  %2000 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %1999
  store volatile i64 %1989, ptr %2000, align 8, !tbaa !9
  %2001 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2002 = add nsw i32 %2001, 3
  store volatile i32 %2002, ptr @P3_is_marked, align 4, !tbaa !5
  br label %2003

2003:                                             ; preds = %1985, %1981, %1977, %1973, %1970, %1967
  %2004 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %2005 = icmp sgt i32 %2004, 4
  br i1 %2005, label %2006, label %2038

2006:                                             ; preds = %2003
  %2007 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2008 = icmp slt i32 %2007, 4
  br i1 %2008, label %2009, label %2038

2009:                                             ; preds = %2006
  %2010 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %2011 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %2012 = icmp eq i64 %2010, %2011
  br i1 %2012, label %2013, label %2038

2013:                                             ; preds = %2009
  %2014 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %2015 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %2016 = icmp eq i64 %2014, %2015
  br i1 %2016, label %2017, label %2038

2017:                                             ; preds = %2013
  %2018 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %2019 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %2020 = icmp sgt i64 %2019, %2018
  br i1 %2020, label %2021, label %2038

2021:                                             ; preds = %2017
  %2022 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %2023 = add nsw i32 %2022, -4
  store volatile i32 %2023, ptr @P2_is_marked, align 4, !tbaa !5
  %2024 = add nsw i64 %2019, %2018
  %2025 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2026 = sext i32 %2025 to i64
  %2027 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2026
  store volatile i64 %2018, ptr %2027, align 8, !tbaa !9
  %2028 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2029 = add nsw i32 %2028, 1
  %2030 = sext i32 %2029 to i64
  %2031 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2030
  store volatile i64 %2019, ptr %2031, align 8, !tbaa !9
  %2032 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2033 = add nsw i32 %2032, 2
  %2034 = sext i32 %2033 to i64
  %2035 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2034
  store volatile i64 %2024, ptr %2035, align 8, !tbaa !9
  %2036 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2037 = add nsw i32 %2036, 3
  store volatile i32 %2037, ptr @P3_is_marked, align 4, !tbaa !5
  br label %2038

2038:                                             ; preds = %2021, %2017, %2013, %2009, %2006, %2003
  %2039 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %2040 = icmp sgt i32 %2039, 4
  br i1 %2040, label %2041, label %2074

2041:                                             ; preds = %2038
  %2042 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2043 = icmp slt i32 %2042, 4
  br i1 %2043, label %2044, label %2074

2044:                                             ; preds = %2041
  %2045 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %2046 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %2047 = icmp eq i64 %2045, %2046
  br i1 %2047, label %2048, label %2074

2048:                                             ; preds = %2044
  %2049 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %2050 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %2051 = icmp eq i64 %2049, %2050
  br i1 %2051, label %2052, label %2074

2052:                                             ; preds = %2048
  %2053 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %2054 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %2055 = icmp sgt i64 %2054, %2053
  br i1 %2055, label %2056, label %2074

2056:                                             ; preds = %2052
  %2057 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  store volatile i64 %2057, ptr @P2_marking_member_0, align 16, !tbaa !9
  %2058 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %2059 = add nsw i32 %2058, -4
  store volatile i32 %2059, ptr @P2_is_marked, align 4, !tbaa !5
  %2060 = add nsw i64 %2054, %2053
  %2061 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2062 = sext i32 %2061 to i64
  %2063 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2062
  store volatile i64 %2053, ptr %2063, align 8, !tbaa !9
  %2064 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2065 = add nsw i32 %2064, 1
  %2066 = sext i32 %2065 to i64
  %2067 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2066
  store volatile i64 %2054, ptr %2067, align 8, !tbaa !9
  %2068 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2069 = add nsw i32 %2068, 2
  %2070 = sext i32 %2069 to i64
  %2071 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2070
  store volatile i64 %2060, ptr %2071, align 8, !tbaa !9
  %2072 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2073 = add nsw i32 %2072, 3
  store volatile i32 %2073, ptr @P3_is_marked, align 4, !tbaa !5
  br label %2074

2074:                                             ; preds = %2056, %2052, %2048, %2044, %2041, %2038
  %2075 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %2076 = icmp sgt i32 %2075, 4
  br i1 %2076, label %2077, label %2109

2077:                                             ; preds = %2074
  %2078 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2079 = icmp slt i32 %2078, 4
  br i1 %2079, label %2080, label %2109

2080:                                             ; preds = %2077
  %2081 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %2082 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %2083 = icmp eq i64 %2081, %2082
  br i1 %2083, label %2084, label %2109

2084:                                             ; preds = %2080
  %2085 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %2086 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %2087 = icmp eq i64 %2085, %2086
  br i1 %2087, label %2088, label %2109

2088:                                             ; preds = %2084
  %2089 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %2090 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %2091 = icmp sgt i64 %2090, %2089
  br i1 %2091, label %2092, label %2109

2092:                                             ; preds = %2088
  %2093 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %2094 = add nsw i32 %2093, -4
  store volatile i32 %2094, ptr @P2_is_marked, align 4, !tbaa !5
  %2095 = add nsw i64 %2090, %2089
  %2096 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2097 = sext i32 %2096 to i64
  %2098 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2097
  store volatile i64 %2089, ptr %2098, align 8, !tbaa !9
  %2099 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2100 = add nsw i32 %2099, 1
  %2101 = sext i32 %2100 to i64
  %2102 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2101
  store volatile i64 %2090, ptr %2102, align 8, !tbaa !9
  %2103 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2104 = add nsw i32 %2103, 2
  %2105 = sext i32 %2104 to i64
  %2106 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2105
  store volatile i64 %2095, ptr %2106, align 8, !tbaa !9
  %2107 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2108 = add nsw i32 %2107, 3
  store volatile i32 %2108, ptr @P3_is_marked, align 4, !tbaa !5
  br label %2109

2109:                                             ; preds = %2092, %2088, %2084, %2080, %2077, %2074
  %2110 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %2111 = icmp sgt i32 %2110, 4
  br i1 %2111, label %2112, label %2145

2112:                                             ; preds = %2109
  %2113 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2114 = icmp slt i32 %2113, 4
  br i1 %2114, label %2115, label %2145

2115:                                             ; preds = %2112
  %2116 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %2117 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %2118 = icmp eq i64 %2116, %2117
  br i1 %2118, label %2119, label %2145

2119:                                             ; preds = %2115
  %2120 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %2121 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %2122 = icmp eq i64 %2120, %2121
  br i1 %2122, label %2123, label %2145

2123:                                             ; preds = %2119
  %2124 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %2125 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %2126 = icmp sgt i64 %2125, %2124
  br i1 %2126, label %2127, label %2145

2127:                                             ; preds = %2123
  %2128 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  store volatile i64 %2128, ptr @P2_marking_member_0, align 16, !tbaa !9
  %2129 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %2130 = add nsw i32 %2129, -4
  store volatile i32 %2130, ptr @P2_is_marked, align 4, !tbaa !5
  %2131 = add nsw i64 %2125, %2124
  %2132 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2133 = sext i32 %2132 to i64
  %2134 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2133
  store volatile i64 %2124, ptr %2134, align 8, !tbaa !9
  %2135 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2136 = add nsw i32 %2135, 1
  %2137 = sext i32 %2136 to i64
  %2138 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2137
  store volatile i64 %2125, ptr %2138, align 8, !tbaa !9
  %2139 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2140 = add nsw i32 %2139, 2
  %2141 = sext i32 %2140 to i64
  %2142 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2141
  store volatile i64 %2131, ptr %2142, align 8, !tbaa !9
  %2143 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2144 = add nsw i32 %2143, 3
  store volatile i32 %2144, ptr @P3_is_marked, align 4, !tbaa !5
  br label %2145

2145:                                             ; preds = %2127, %2123, %2119, %2115, %2112, %2109
  %2146 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %2147 = icmp sgt i32 %2146, 4
  br i1 %2147, label %2148, label %2181

2148:                                             ; preds = %2145
  %2149 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2150 = icmp slt i32 %2149, 4
  br i1 %2150, label %2151, label %2181

2151:                                             ; preds = %2148
  %2152 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %2153 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %2154 = icmp eq i64 %2152, %2153
  br i1 %2154, label %2155, label %2181

2155:                                             ; preds = %2151
  %2156 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %2157 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %2158 = icmp eq i64 %2156, %2157
  br i1 %2158, label %2159, label %2181

2159:                                             ; preds = %2155
  %2160 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %2161 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %2162 = icmp sgt i64 %2161, %2160
  br i1 %2162, label %2163, label %2181

2163:                                             ; preds = %2159
  %2164 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  store volatile i64 %2164, ptr @P2_marking_member_0, align 16, !tbaa !9
  %2165 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %2166 = add nsw i32 %2165, -4
  store volatile i32 %2166, ptr @P2_is_marked, align 4, !tbaa !5
  %2167 = add nsw i64 %2161, %2160
  %2168 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2169 = sext i32 %2168 to i64
  %2170 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2169
  store volatile i64 %2160, ptr %2170, align 8, !tbaa !9
  %2171 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2172 = add nsw i32 %2171, 1
  %2173 = sext i32 %2172 to i64
  %2174 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2173
  store volatile i64 %2161, ptr %2174, align 8, !tbaa !9
  %2175 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2176 = add nsw i32 %2175, 2
  %2177 = sext i32 %2176 to i64
  %2178 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2177
  store volatile i64 %2167, ptr %2178, align 8, !tbaa !9
  %2179 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2180 = add nsw i32 %2179, 3
  store volatile i32 %2180, ptr @P3_is_marked, align 4, !tbaa !5
  br label %2181

2181:                                             ; preds = %2163, %2159, %2155, %2151, %2148, %2145
  %2182 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %2183 = icmp sgt i32 %2182, 4
  br i1 %2183, label %2184, label %2217

2184:                                             ; preds = %2181
  %2185 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2186 = icmp slt i32 %2185, 4
  br i1 %2186, label %2187, label %2217

2187:                                             ; preds = %2184
  %2188 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %2189 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %2190 = icmp eq i64 %2188, %2189
  br i1 %2190, label %2191, label %2217

2191:                                             ; preds = %2187
  %2192 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %2193 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %2194 = icmp eq i64 %2192, %2193
  br i1 %2194, label %2195, label %2217

2195:                                             ; preds = %2191
  %2196 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %2197 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %2198 = icmp sgt i64 %2197, %2196
  br i1 %2198, label %2199, label %2217

2199:                                             ; preds = %2195
  %2200 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  store volatile i64 %2200, ptr @P2_marking_member_0, align 16, !tbaa !9
  %2201 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %2202 = add nsw i32 %2201, -4
  store volatile i32 %2202, ptr @P2_is_marked, align 4, !tbaa !5
  %2203 = add nsw i64 %2197, %2196
  %2204 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2205 = sext i32 %2204 to i64
  %2206 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2205
  store volatile i64 %2196, ptr %2206, align 8, !tbaa !9
  %2207 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2208 = add nsw i32 %2207, 1
  %2209 = sext i32 %2208 to i64
  %2210 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2209
  store volatile i64 %2197, ptr %2210, align 8, !tbaa !9
  %2211 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2212 = add nsw i32 %2211, 2
  %2213 = sext i32 %2212 to i64
  %2214 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2213
  store volatile i64 %2203, ptr %2214, align 8, !tbaa !9
  %2215 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2216 = add nsw i32 %2215, 3
  store volatile i32 %2216, ptr @P3_is_marked, align 4, !tbaa !5
  br label %2217

2217:                                             ; preds = %2199, %2195, %2191, %2187, %2184, %2181
  %2218 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %2219 = icmp sgt i32 %2218, 4
  br i1 %2219, label %2220, label %2252

2220:                                             ; preds = %2217
  %2221 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2222 = icmp slt i32 %2221, 4
  br i1 %2222, label %2223, label %2252

2223:                                             ; preds = %2220
  %2224 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %2225 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %2226 = icmp eq i64 %2224, %2225
  br i1 %2226, label %2227, label %2252

2227:                                             ; preds = %2223
  %2228 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %2229 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %2230 = icmp eq i64 %2228, %2229
  br i1 %2230, label %2231, label %2252

2231:                                             ; preds = %2227
  %2232 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %2233 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %2234 = icmp sgt i64 %2233, %2232
  br i1 %2234, label %2235, label %2252

2235:                                             ; preds = %2231
  %2236 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %2237 = add nsw i32 %2236, -4
  store volatile i32 %2237, ptr @P2_is_marked, align 4, !tbaa !5
  %2238 = add nsw i64 %2233, %2232
  %2239 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2240 = sext i32 %2239 to i64
  %2241 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2240
  store volatile i64 %2232, ptr %2241, align 8, !tbaa !9
  %2242 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2243 = add nsw i32 %2242, 1
  %2244 = sext i32 %2243 to i64
  %2245 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2244
  store volatile i64 %2233, ptr %2245, align 8, !tbaa !9
  %2246 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2247 = add nsw i32 %2246, 2
  %2248 = sext i32 %2247 to i64
  %2249 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2248
  store volatile i64 %2238, ptr %2249, align 8, !tbaa !9
  %2250 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2251 = add nsw i32 %2250, 3
  store volatile i32 %2251, ptr @P3_is_marked, align 4, !tbaa !5
  br label %2252

2252:                                             ; preds = %2235, %2231, %2227, %2223, %2220, %2217
  %2253 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %2254 = icmp sgt i32 %2253, 4
  br i1 %2254, label %2255, label %2288

2255:                                             ; preds = %2252
  %2256 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2257 = icmp slt i32 %2256, 4
  br i1 %2257, label %2258, label %2288

2258:                                             ; preds = %2255
  %2259 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %2260 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %2261 = icmp eq i64 %2259, %2260
  br i1 %2261, label %2262, label %2288

2262:                                             ; preds = %2258
  %2263 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %2264 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %2265 = icmp eq i64 %2263, %2264
  br i1 %2265, label %2266, label %2288

2266:                                             ; preds = %2262
  %2267 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %2268 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %2269 = icmp sgt i64 %2268, %2267
  br i1 %2269, label %2270, label %2288

2270:                                             ; preds = %2266
  %2271 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  store volatile i64 %2271, ptr @P2_marking_member_0, align 16, !tbaa !9
  %2272 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %2273 = add nsw i32 %2272, -4
  store volatile i32 %2273, ptr @P2_is_marked, align 4, !tbaa !5
  %2274 = add nsw i64 %2268, %2267
  %2275 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2276 = sext i32 %2275 to i64
  %2277 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2276
  store volatile i64 %2267, ptr %2277, align 8, !tbaa !9
  %2278 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2279 = add nsw i32 %2278, 1
  %2280 = sext i32 %2279 to i64
  %2281 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2280
  store volatile i64 %2268, ptr %2281, align 8, !tbaa !9
  %2282 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2283 = add nsw i32 %2282, 2
  %2284 = sext i32 %2283 to i64
  %2285 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2284
  store volatile i64 %2274, ptr %2285, align 8, !tbaa !9
  %2286 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2287 = add nsw i32 %2286, 3
  store volatile i32 %2287, ptr @P3_is_marked, align 4, !tbaa !5
  br label %2288

2288:                                             ; preds = %2270, %2266, %2262, %2258, %2255, %2252
  %2289 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %2290 = icmp sgt i32 %2289, 4
  br i1 %2290, label %2291, label %2323

2291:                                             ; preds = %2288
  %2292 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2293 = icmp slt i32 %2292, 4
  br i1 %2293, label %2294, label %2323

2294:                                             ; preds = %2291
  %2295 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %2296 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %2297 = icmp eq i64 %2295, %2296
  br i1 %2297, label %2298, label %2323

2298:                                             ; preds = %2294
  %2299 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %2300 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %2301 = icmp eq i64 %2299, %2300
  br i1 %2301, label %2302, label %2323

2302:                                             ; preds = %2298
  %2303 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %2304 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %2305 = icmp sgt i64 %2304, %2303
  br i1 %2305, label %2306, label %2323

2306:                                             ; preds = %2302
  %2307 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %2308 = add nsw i32 %2307, -4
  store volatile i32 %2308, ptr @P2_is_marked, align 4, !tbaa !5
  %2309 = add nsw i64 %2304, %2303
  %2310 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2311 = sext i32 %2310 to i64
  %2312 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2311
  store volatile i64 %2303, ptr %2312, align 8, !tbaa !9
  %2313 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2314 = add nsw i32 %2313, 1
  %2315 = sext i32 %2314 to i64
  %2316 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2315
  store volatile i64 %2304, ptr %2316, align 8, !tbaa !9
  %2317 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2318 = add nsw i32 %2317, 2
  %2319 = sext i32 %2318 to i64
  %2320 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2319
  store volatile i64 %2309, ptr %2320, align 8, !tbaa !9
  %2321 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2322 = add nsw i32 %2321, 3
  store volatile i32 %2322, ptr @P3_is_marked, align 4, !tbaa !5
  br label %2323

2323:                                             ; preds = %2306, %2302, %2298, %2294, %2291, %2288
  %2324 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %2325 = icmp sgt i32 %2324, 4
  br i1 %2325, label %2326, label %2359

2326:                                             ; preds = %2323
  %2327 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2328 = icmp slt i32 %2327, 4
  br i1 %2328, label %2329, label %2359

2329:                                             ; preds = %2326
  %2330 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %2331 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %2332 = icmp eq i64 %2330, %2331
  br i1 %2332, label %2333, label %2359

2333:                                             ; preds = %2329
  %2334 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %2335 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %2336 = icmp eq i64 %2334, %2335
  br i1 %2336, label %2337, label %2359

2337:                                             ; preds = %2333
  %2338 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %2339 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %2340 = icmp sgt i64 %2339, %2338
  br i1 %2340, label %2341, label %2359

2341:                                             ; preds = %2337
  %2342 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  store volatile i64 %2342, ptr @P2_marking_member_0, align 16, !tbaa !9
  %2343 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %2344 = add nsw i32 %2343, -4
  store volatile i32 %2344, ptr @P2_is_marked, align 4, !tbaa !5
  %2345 = add nsw i64 %2339, %2338
  %2346 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2347 = sext i32 %2346 to i64
  %2348 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2347
  store volatile i64 %2338, ptr %2348, align 8, !tbaa !9
  %2349 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2350 = add nsw i32 %2349, 1
  %2351 = sext i32 %2350 to i64
  %2352 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2351
  store volatile i64 %2339, ptr %2352, align 8, !tbaa !9
  %2353 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2354 = add nsw i32 %2353, 2
  %2355 = sext i32 %2354 to i64
  %2356 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2355
  store volatile i64 %2345, ptr %2356, align 8, !tbaa !9
  %2357 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2358 = add nsw i32 %2357, 3
  store volatile i32 %2358, ptr @P3_is_marked, align 4, !tbaa !5
  br label %2359

2359:                                             ; preds = %2341, %2337, %2333, %2329, %2326, %2323
  %2360 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %2361 = icmp sgt i32 %2360, 4
  br i1 %2361, label %2362, label %2395

2362:                                             ; preds = %2359
  %2363 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2364 = icmp slt i32 %2363, 4
  br i1 %2364, label %2365, label %2395

2365:                                             ; preds = %2362
  %2366 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %2367 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %2368 = icmp eq i64 %2366, %2367
  br i1 %2368, label %2369, label %2395

2369:                                             ; preds = %2365
  %2370 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %2371 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %2372 = icmp eq i64 %2370, %2371
  br i1 %2372, label %2373, label %2395

2373:                                             ; preds = %2369
  %2374 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %2375 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %2376 = icmp sgt i64 %2375, %2374
  br i1 %2376, label %2377, label %2395

2377:                                             ; preds = %2373
  %2378 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  store volatile i64 %2378, ptr @P2_marking_member_0, align 16, !tbaa !9
  %2379 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %2380 = add nsw i32 %2379, -4
  store volatile i32 %2380, ptr @P2_is_marked, align 4, !tbaa !5
  %2381 = add nsw i64 %2375, %2374
  %2382 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2383 = sext i32 %2382 to i64
  %2384 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2383
  store volatile i64 %2374, ptr %2384, align 8, !tbaa !9
  %2385 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2386 = add nsw i32 %2385, 1
  %2387 = sext i32 %2386 to i64
  %2388 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2387
  store volatile i64 %2375, ptr %2388, align 8, !tbaa !9
  %2389 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2390 = add nsw i32 %2389, 2
  %2391 = sext i32 %2390 to i64
  %2392 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2391
  store volatile i64 %2381, ptr %2392, align 8, !tbaa !9
  %2393 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2394 = add nsw i32 %2393, 3
  store volatile i32 %2394, ptr @P3_is_marked, align 4, !tbaa !5
  br label %2395

2395:                                             ; preds = %2377, %2373, %2369, %2365, %2362, %2359
  %2396 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %2397 = icmp sgt i32 %2396, 4
  br i1 %2397, label %2398, label %2431

2398:                                             ; preds = %2395
  %2399 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2400 = icmp slt i32 %2399, 4
  br i1 %2400, label %2401, label %2431

2401:                                             ; preds = %2398
  %2402 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %2403 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %2404 = icmp eq i64 %2402, %2403
  br i1 %2404, label %2405, label %2431

2405:                                             ; preds = %2401
  %2406 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %2407 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %2408 = icmp eq i64 %2406, %2407
  br i1 %2408, label %2409, label %2431

2409:                                             ; preds = %2405
  %2410 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %2411 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %2412 = icmp sgt i64 %2411, %2410
  br i1 %2412, label %2413, label %2431

2413:                                             ; preds = %2409
  %2414 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  store volatile i64 %2414, ptr @P2_marking_member_0, align 16, !tbaa !9
  %2415 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %2416 = add nsw i32 %2415, -4
  store volatile i32 %2416, ptr @P2_is_marked, align 4, !tbaa !5
  %2417 = add nsw i64 %2411, %2410
  %2418 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2419 = sext i32 %2418 to i64
  %2420 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2419
  store volatile i64 %2410, ptr %2420, align 8, !tbaa !9
  %2421 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2422 = add nsw i32 %2421, 1
  %2423 = sext i32 %2422 to i64
  %2424 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2423
  store volatile i64 %2411, ptr %2424, align 8, !tbaa !9
  %2425 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2426 = add nsw i32 %2425, 2
  %2427 = sext i32 %2426 to i64
  %2428 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2427
  store volatile i64 %2417, ptr %2428, align 8, !tbaa !9
  %2429 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2430 = add nsw i32 %2429, 3
  store volatile i32 %2430, ptr @P3_is_marked, align 4, !tbaa !5
  br label %2431

2431:                                             ; preds = %2413, %2409, %2405, %2401, %2398, %2395
  %2432 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %2433 = icmp sgt i32 %2432, 4
  br i1 %2433, label %2434, label %2467

2434:                                             ; preds = %2431
  %2435 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2436 = icmp slt i32 %2435, 4
  br i1 %2436, label %2437, label %2467

2437:                                             ; preds = %2434
  %2438 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %2439 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %2440 = icmp eq i64 %2438, %2439
  br i1 %2440, label %2441, label %2467

2441:                                             ; preds = %2437
  %2442 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %2443 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %2444 = icmp eq i64 %2442, %2443
  br i1 %2444, label %2445, label %2467

2445:                                             ; preds = %2441
  %2446 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %2447 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %2448 = icmp sgt i64 %2447, %2446
  br i1 %2448, label %2449, label %2467

2449:                                             ; preds = %2445
  %2450 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  store volatile i64 %2450, ptr @P2_marking_member_0, align 16, !tbaa !9
  %2451 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %2452 = add nsw i32 %2451, -4
  store volatile i32 %2452, ptr @P2_is_marked, align 4, !tbaa !5
  %2453 = add nsw i64 %2447, %2446
  %2454 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2455 = sext i32 %2454 to i64
  %2456 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2455
  store volatile i64 %2446, ptr %2456, align 8, !tbaa !9
  %2457 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2458 = add nsw i32 %2457, 1
  %2459 = sext i32 %2458 to i64
  %2460 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2459
  store volatile i64 %2447, ptr %2460, align 8, !tbaa !9
  %2461 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2462 = add nsw i32 %2461, 2
  %2463 = sext i32 %2462 to i64
  %2464 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2463
  store volatile i64 %2453, ptr %2464, align 8, !tbaa !9
  %2465 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2466 = add nsw i32 %2465, 3
  store volatile i32 %2466, ptr @P3_is_marked, align 4, !tbaa !5
  br label %2467

2467:                                             ; preds = %2449, %2445, %2441, %2437, %2434, %2431
  %2468 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %2469 = icmp sgt i32 %2468, 4
  br i1 %2469, label %2470, label %2503

2470:                                             ; preds = %2467
  %2471 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2472 = icmp slt i32 %2471, 4
  br i1 %2472, label %2473, label %2503

2473:                                             ; preds = %2470
  %2474 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %2475 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %2476 = icmp eq i64 %2474, %2475
  br i1 %2476, label %2477, label %2503

2477:                                             ; preds = %2473
  %2478 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %2479 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %2480 = icmp eq i64 %2478, %2479
  br i1 %2480, label %2481, label %2503

2481:                                             ; preds = %2477
  %2482 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %2483 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %2484 = icmp sgt i64 %2483, %2482
  br i1 %2484, label %2485, label %2503

2485:                                             ; preds = %2481
  %2486 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  store volatile i64 %2486, ptr @P2_marking_member_0, align 16, !tbaa !9
  %2487 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %2488 = add nsw i32 %2487, -4
  store volatile i32 %2488, ptr @P2_is_marked, align 4, !tbaa !5
  %2489 = add nsw i64 %2483, %2482
  %2490 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2491 = sext i32 %2490 to i64
  %2492 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2491
  store volatile i64 %2482, ptr %2492, align 8, !tbaa !9
  %2493 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2494 = add nsw i32 %2493, 1
  %2495 = sext i32 %2494 to i64
  %2496 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2495
  store volatile i64 %2483, ptr %2496, align 8, !tbaa !9
  %2497 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2498 = add nsw i32 %2497, 2
  %2499 = sext i32 %2498 to i64
  %2500 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2499
  store volatile i64 %2489, ptr %2500, align 8, !tbaa !9
  %2501 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2502 = add nsw i32 %2501, 3
  store volatile i32 %2502, ptr @P3_is_marked, align 4, !tbaa !5
  br label %2503

2503:                                             ; preds = %2485, %2481, %2477, %2473, %2470, %2467
  %2504 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %2505 = icmp sgt i32 %2504, 4
  br i1 %2505, label %2506, label %2538

2506:                                             ; preds = %2503
  %2507 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2508 = icmp slt i32 %2507, 4
  br i1 %2508, label %2509, label %2538

2509:                                             ; preds = %2506
  %2510 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %2511 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %2512 = icmp eq i64 %2510, %2511
  br i1 %2512, label %2513, label %2538

2513:                                             ; preds = %2509
  %2514 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %2515 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %2516 = icmp eq i64 %2514, %2515
  br i1 %2516, label %2517, label %2538

2517:                                             ; preds = %2513
  %2518 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %2519 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %2520 = icmp sgt i64 %2519, %2518
  br i1 %2520, label %2521, label %2538

2521:                                             ; preds = %2517
  %2522 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %2523 = add nsw i32 %2522, -4
  store volatile i32 %2523, ptr @P2_is_marked, align 4, !tbaa !5
  %2524 = add nsw i64 %2519, %2518
  %2525 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2526 = sext i32 %2525 to i64
  %2527 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2526
  store volatile i64 %2518, ptr %2527, align 8, !tbaa !9
  %2528 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2529 = add nsw i32 %2528, 1
  %2530 = sext i32 %2529 to i64
  %2531 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2530
  store volatile i64 %2519, ptr %2531, align 8, !tbaa !9
  %2532 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2533 = add nsw i32 %2532, 2
  %2534 = sext i32 %2533 to i64
  %2535 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2534
  store volatile i64 %2524, ptr %2535, align 8, !tbaa !9
  %2536 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2537 = add nsw i32 %2536, 3
  store volatile i32 %2537, ptr @P3_is_marked, align 4, !tbaa !5
  br label %2538

2538:                                             ; preds = %2521, %2517, %2513, %2509, %2506, %2503
  %2539 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %2540 = icmp sgt i32 %2539, 4
  br i1 %2540, label %2541, label %2574

2541:                                             ; preds = %2538
  %2542 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2543 = icmp slt i32 %2542, 4
  br i1 %2543, label %2544, label %2574

2544:                                             ; preds = %2541
  %2545 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %2546 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %2547 = icmp eq i64 %2545, %2546
  br i1 %2547, label %2548, label %2574

2548:                                             ; preds = %2544
  %2549 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %2550 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %2551 = icmp eq i64 %2549, %2550
  br i1 %2551, label %2552, label %2574

2552:                                             ; preds = %2548
  %2553 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %2554 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %2555 = icmp sgt i64 %2554, %2553
  br i1 %2555, label %2556, label %2574

2556:                                             ; preds = %2552
  %2557 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  store volatile i64 %2557, ptr @P2_marking_member_0, align 16, !tbaa !9
  %2558 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %2559 = add nsw i32 %2558, -4
  store volatile i32 %2559, ptr @P2_is_marked, align 4, !tbaa !5
  %2560 = add nsw i64 %2554, %2553
  %2561 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2562 = sext i32 %2561 to i64
  %2563 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2562
  store volatile i64 %2553, ptr %2563, align 8, !tbaa !9
  %2564 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2565 = add nsw i32 %2564, 1
  %2566 = sext i32 %2565 to i64
  %2567 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2566
  store volatile i64 %2554, ptr %2567, align 8, !tbaa !9
  %2568 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2569 = add nsw i32 %2568, 2
  %2570 = sext i32 %2569 to i64
  %2571 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2570
  store volatile i64 %2560, ptr %2571, align 8, !tbaa !9
  %2572 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2573 = add nsw i32 %2572, 3
  store volatile i32 %2573, ptr @P3_is_marked, align 4, !tbaa !5
  br label %2574

2574:                                             ; preds = %2556, %2552, %2548, %2544, %2541, %2538
  %2575 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %2576 = icmp sgt i32 %2575, 4
  br i1 %2576, label %2577, label %2609

2577:                                             ; preds = %2574
  %2578 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2579 = icmp slt i32 %2578, 4
  br i1 %2579, label %2580, label %2609

2580:                                             ; preds = %2577
  %2581 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %2582 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %2583 = icmp eq i64 %2581, %2582
  br i1 %2583, label %2584, label %2609

2584:                                             ; preds = %2580
  %2585 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %2586 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %2587 = icmp eq i64 %2585, %2586
  br i1 %2587, label %2588, label %2609

2588:                                             ; preds = %2584
  %2589 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %2590 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %2591 = icmp sgt i64 %2590, %2589
  br i1 %2591, label %2592, label %2609

2592:                                             ; preds = %2588
  %2593 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %2594 = add nsw i32 %2593, -4
  store volatile i32 %2594, ptr @P2_is_marked, align 4, !tbaa !5
  %2595 = add nsw i64 %2590, %2589
  %2596 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2597 = sext i32 %2596 to i64
  %2598 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2597
  store volatile i64 %2589, ptr %2598, align 8, !tbaa !9
  %2599 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2600 = add nsw i32 %2599, 1
  %2601 = sext i32 %2600 to i64
  %2602 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2601
  store volatile i64 %2590, ptr %2602, align 8, !tbaa !9
  %2603 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2604 = add nsw i32 %2603, 2
  %2605 = sext i32 %2604 to i64
  %2606 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2605
  store volatile i64 %2595, ptr %2606, align 8, !tbaa !9
  %2607 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2608 = add nsw i32 %2607, 3
  store volatile i32 %2608, ptr @P3_is_marked, align 4, !tbaa !5
  br label %2609

2609:                                             ; preds = %2592, %2588, %2584, %2580, %2577, %2574
  %2610 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %2611 = icmp sgt i32 %2610, 4
  br i1 %2611, label %2612, label %2645

2612:                                             ; preds = %2609
  %2613 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2614 = icmp slt i32 %2613, 4
  br i1 %2614, label %2615, label %2645

2615:                                             ; preds = %2612
  %2616 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %2617 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %2618 = icmp eq i64 %2616, %2617
  br i1 %2618, label %2619, label %2645

2619:                                             ; preds = %2615
  %2620 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %2621 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %2622 = icmp eq i64 %2620, %2621
  br i1 %2622, label %2623, label %2645

2623:                                             ; preds = %2619
  %2624 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %2625 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %2626 = icmp sgt i64 %2625, %2624
  br i1 %2626, label %2627, label %2645

2627:                                             ; preds = %2623
  %2628 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  store volatile i64 %2628, ptr @P2_marking_member_0, align 16, !tbaa !9
  %2629 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %2630 = add nsw i32 %2629, -4
  store volatile i32 %2630, ptr @P2_is_marked, align 4, !tbaa !5
  %2631 = add nsw i64 %2625, %2624
  %2632 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2633 = sext i32 %2632 to i64
  %2634 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2633
  store volatile i64 %2624, ptr %2634, align 8, !tbaa !9
  %2635 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2636 = add nsw i32 %2635, 1
  %2637 = sext i32 %2636 to i64
  %2638 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2637
  store volatile i64 %2625, ptr %2638, align 8, !tbaa !9
  %2639 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2640 = add nsw i32 %2639, 2
  %2641 = sext i32 %2640 to i64
  %2642 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2641
  store volatile i64 %2631, ptr %2642, align 8, !tbaa !9
  %2643 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2644 = add nsw i32 %2643, 3
  store volatile i32 %2644, ptr @P3_is_marked, align 4, !tbaa !5
  br label %2645

2645:                                             ; preds = %2627, %2623, %2619, %2615, %2612, %2609
  %2646 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %2647 = icmp sgt i32 %2646, 4
  br i1 %2647, label %2648, label %2680

2648:                                             ; preds = %2645
  %2649 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2650 = icmp slt i32 %2649, 4
  br i1 %2650, label %2651, label %2680

2651:                                             ; preds = %2648
  %2652 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %2653 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %2654 = icmp eq i64 %2652, %2653
  br i1 %2654, label %2655, label %2680

2655:                                             ; preds = %2651
  %2656 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %2657 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %2658 = icmp eq i64 %2656, %2657
  br i1 %2658, label %2659, label %2680

2659:                                             ; preds = %2655
  %2660 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %2661 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %2662 = icmp sgt i64 %2661, %2660
  br i1 %2662, label %2663, label %2680

2663:                                             ; preds = %2659
  %2664 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %2665 = add nsw i32 %2664, -4
  store volatile i32 %2665, ptr @P2_is_marked, align 4, !tbaa !5
  %2666 = add nsw i64 %2661, %2660
  %2667 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2668 = sext i32 %2667 to i64
  %2669 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2668
  store volatile i64 %2660, ptr %2669, align 8, !tbaa !9
  %2670 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2671 = add nsw i32 %2670, 1
  %2672 = sext i32 %2671 to i64
  %2673 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2672
  store volatile i64 %2661, ptr %2673, align 8, !tbaa !9
  %2674 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2675 = add nsw i32 %2674, 2
  %2676 = sext i32 %2675 to i64
  %2677 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2676
  store volatile i64 %2666, ptr %2677, align 8, !tbaa !9
  %2678 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2679 = add nsw i32 %2678, 3
  store volatile i32 %2679, ptr @P3_is_marked, align 4, !tbaa !5
  br label %2680

2680:                                             ; preds = %2663, %2659, %2655, %2651, %2648, %2645
  %2681 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %2682 = icmp sgt i32 %2681, 4
  br i1 %2682, label %2683, label %2716

2683:                                             ; preds = %2680
  %2684 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2685 = icmp slt i32 %2684, 4
  br i1 %2685, label %2686, label %2716

2686:                                             ; preds = %2683
  %2687 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %2688 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %2689 = icmp eq i64 %2687, %2688
  br i1 %2689, label %2690, label %2716

2690:                                             ; preds = %2686
  %2691 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %2692 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %2693 = icmp eq i64 %2691, %2692
  br i1 %2693, label %2694, label %2716

2694:                                             ; preds = %2690
  %2695 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %2696 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %2697 = icmp sgt i64 %2696, %2695
  br i1 %2697, label %2698, label %2716

2698:                                             ; preds = %2694
  %2699 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  store volatile i64 %2699, ptr @P2_marking_member_0, align 16, !tbaa !9
  %2700 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %2701 = add nsw i32 %2700, -4
  store volatile i32 %2701, ptr @P2_is_marked, align 4, !tbaa !5
  %2702 = add nsw i64 %2696, %2695
  %2703 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2704 = sext i32 %2703 to i64
  %2705 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2704
  store volatile i64 %2695, ptr %2705, align 8, !tbaa !9
  %2706 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2707 = add nsw i32 %2706, 1
  %2708 = sext i32 %2707 to i64
  %2709 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2708
  store volatile i64 %2696, ptr %2709, align 8, !tbaa !9
  %2710 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2711 = add nsw i32 %2710, 2
  %2712 = sext i32 %2711 to i64
  %2713 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2712
  store volatile i64 %2702, ptr %2713, align 8, !tbaa !9
  %2714 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2715 = add nsw i32 %2714, 3
  store volatile i32 %2715, ptr @P3_is_marked, align 4, !tbaa !5
  br label %2716

2716:                                             ; preds = %2698, %2694, %2690, %2686, %2683, %2680
  %2717 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %2718 = icmp sgt i32 %2717, 4
  br i1 %2718, label %2719, label %2751

2719:                                             ; preds = %2716
  %2720 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2721 = icmp slt i32 %2720, 4
  br i1 %2721, label %2722, label %2751

2722:                                             ; preds = %2719
  %2723 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %2724 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %2725 = icmp eq i64 %2723, %2724
  br i1 %2725, label %2726, label %2751

2726:                                             ; preds = %2722
  %2727 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %2728 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %2729 = icmp eq i64 %2727, %2728
  br i1 %2729, label %2730, label %2751

2730:                                             ; preds = %2726
  %2731 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %2732 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %2733 = icmp sgt i64 %2732, %2731
  br i1 %2733, label %2734, label %2751

2734:                                             ; preds = %2730
  %2735 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %2736 = add nsw i32 %2735, -4
  store volatile i32 %2736, ptr @P2_is_marked, align 4, !tbaa !5
  %2737 = add nsw i64 %2732, %2731
  %2738 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2739 = sext i32 %2738 to i64
  %2740 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2739
  store volatile i64 %2731, ptr %2740, align 8, !tbaa !9
  %2741 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2742 = add nsw i32 %2741, 1
  %2743 = sext i32 %2742 to i64
  %2744 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2743
  store volatile i64 %2732, ptr %2744, align 8, !tbaa !9
  %2745 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2746 = add nsw i32 %2745, 2
  %2747 = sext i32 %2746 to i64
  %2748 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2747
  store volatile i64 %2737, ptr %2748, align 8, !tbaa !9
  %2749 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2750 = add nsw i32 %2749, 3
  store volatile i32 %2750, ptr @P3_is_marked, align 4, !tbaa !5
  br label %2751

2751:                                             ; preds = %2734, %2730, %2726, %2722, %2719, %2716
  %2752 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %2753 = icmp sgt i32 %2752, 4
  br i1 %2753, label %2754, label %2787

2754:                                             ; preds = %2751
  %2755 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2756 = icmp slt i32 %2755, 4
  br i1 %2756, label %2757, label %2787

2757:                                             ; preds = %2754
  %2758 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %2759 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %2760 = icmp eq i64 %2758, %2759
  br i1 %2760, label %2761, label %2787

2761:                                             ; preds = %2757
  %2762 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %2763 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %2764 = icmp eq i64 %2762, %2763
  br i1 %2764, label %2765, label %2787

2765:                                             ; preds = %2761
  %2766 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %2767 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %2768 = icmp sgt i64 %2767, %2766
  br i1 %2768, label %2769, label %2787

2769:                                             ; preds = %2765
  %2770 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  store volatile i64 %2770, ptr @P2_marking_member_0, align 16, !tbaa !9
  %2771 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %2772 = add nsw i32 %2771, -4
  store volatile i32 %2772, ptr @P2_is_marked, align 4, !tbaa !5
  %2773 = add nsw i64 %2767, %2766
  %2774 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2775 = sext i32 %2774 to i64
  %2776 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2775
  store volatile i64 %2766, ptr %2776, align 8, !tbaa !9
  %2777 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2778 = add nsw i32 %2777, 1
  %2779 = sext i32 %2778 to i64
  %2780 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2779
  store volatile i64 %2767, ptr %2780, align 8, !tbaa !9
  %2781 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2782 = add nsw i32 %2781, 2
  %2783 = sext i32 %2782 to i64
  %2784 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2783
  store volatile i64 %2773, ptr %2784, align 8, !tbaa !9
  %2785 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2786 = add nsw i32 %2785, 3
  store volatile i32 %2786, ptr @P3_is_marked, align 4, !tbaa !5
  br label %2787

2787:                                             ; preds = %2769, %2765, %2761, %2757, %2754, %2751
  %2788 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %2789 = icmp sgt i32 %2788, 4
  br i1 %2789, label %2790, label %2823

2790:                                             ; preds = %2787
  %2791 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2792 = icmp slt i32 %2791, 4
  br i1 %2792, label %2793, label %2823

2793:                                             ; preds = %2790
  %2794 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %2795 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %2796 = icmp eq i64 %2794, %2795
  br i1 %2796, label %2797, label %2823

2797:                                             ; preds = %2793
  %2798 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %2799 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %2800 = icmp eq i64 %2798, %2799
  br i1 %2800, label %2801, label %2823

2801:                                             ; preds = %2797
  %2802 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %2803 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %2804 = icmp sgt i64 %2803, %2802
  br i1 %2804, label %2805, label %2823

2805:                                             ; preds = %2801
  %2806 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  store volatile i64 %2806, ptr @P2_marking_member_0, align 16, !tbaa !9
  %2807 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %2808 = add nsw i32 %2807, -4
  store volatile i32 %2808, ptr @P2_is_marked, align 4, !tbaa !5
  %2809 = add nsw i64 %2803, %2802
  %2810 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2811 = sext i32 %2810 to i64
  %2812 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2811
  store volatile i64 %2802, ptr %2812, align 8, !tbaa !9
  %2813 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2814 = add nsw i32 %2813, 1
  %2815 = sext i32 %2814 to i64
  %2816 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2815
  store volatile i64 %2803, ptr %2816, align 8, !tbaa !9
  %2817 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2818 = add nsw i32 %2817, 2
  %2819 = sext i32 %2818 to i64
  %2820 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2819
  store volatile i64 %2809, ptr %2820, align 8, !tbaa !9
  %2821 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2822 = add nsw i32 %2821, 3
  store volatile i32 %2822, ptr @P3_is_marked, align 4, !tbaa !5
  br label %2823

2823:                                             ; preds = %2805, %2801, %2797, %2793, %2790, %2787
  %2824 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %2825 = icmp sgt i32 %2824, 4
  br i1 %2825, label %2826, label %2859

2826:                                             ; preds = %2823
  %2827 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2828 = icmp slt i32 %2827, 4
  br i1 %2828, label %2829, label %2859

2829:                                             ; preds = %2826
  %2830 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %2831 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %2832 = icmp eq i64 %2830, %2831
  br i1 %2832, label %2833, label %2859

2833:                                             ; preds = %2829
  %2834 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %2835 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %2836 = icmp eq i64 %2834, %2835
  br i1 %2836, label %2837, label %2859

2837:                                             ; preds = %2833
  %2838 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %2839 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %2840 = icmp sgt i64 %2839, %2838
  br i1 %2840, label %2841, label %2859

2841:                                             ; preds = %2837
  %2842 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  store volatile i64 %2842, ptr @P2_marking_member_0, align 16, !tbaa !9
  %2843 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %2844 = add nsw i32 %2843, -4
  store volatile i32 %2844, ptr @P2_is_marked, align 4, !tbaa !5
  %2845 = add nsw i64 %2839, %2838
  %2846 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2847 = sext i32 %2846 to i64
  %2848 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2847
  store volatile i64 %2838, ptr %2848, align 8, !tbaa !9
  %2849 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2850 = add nsw i32 %2849, 1
  %2851 = sext i32 %2850 to i64
  %2852 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2851
  store volatile i64 %2839, ptr %2852, align 8, !tbaa !9
  %2853 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2854 = add nsw i32 %2853, 2
  %2855 = sext i32 %2854 to i64
  %2856 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2855
  store volatile i64 %2845, ptr %2856, align 8, !tbaa !9
  %2857 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2858 = add nsw i32 %2857, 3
  store volatile i32 %2858, ptr @P3_is_marked, align 4, !tbaa !5
  br label %2859

2859:                                             ; preds = %2841, %2837, %2833, %2829, %2826, %2823
  %2860 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %2861 = icmp sgt i32 %2860, 4
  br i1 %2861, label %2862, label %2894

2862:                                             ; preds = %2859
  %2863 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2864 = icmp slt i32 %2863, 4
  br i1 %2864, label %2865, label %2894

2865:                                             ; preds = %2862
  %2866 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %2867 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %2868 = icmp eq i64 %2866, %2867
  br i1 %2868, label %2869, label %2894

2869:                                             ; preds = %2865
  %2870 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %2871 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %2872 = icmp eq i64 %2870, %2871
  br i1 %2872, label %2873, label %2894

2873:                                             ; preds = %2869
  %2874 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %2875 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %2876 = icmp sgt i64 %2875, %2874
  br i1 %2876, label %2877, label %2894

2877:                                             ; preds = %2873
  %2878 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %2879 = add nsw i32 %2878, -4
  store volatile i32 %2879, ptr @P2_is_marked, align 4, !tbaa !5
  %2880 = add nsw i64 %2875, %2874
  %2881 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2882 = sext i32 %2881 to i64
  %2883 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2882
  store volatile i64 %2874, ptr %2883, align 8, !tbaa !9
  %2884 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2885 = add nsw i32 %2884, 1
  %2886 = sext i32 %2885 to i64
  %2887 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2886
  store volatile i64 %2875, ptr %2887, align 8, !tbaa !9
  %2888 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2889 = add nsw i32 %2888, 2
  %2890 = sext i32 %2889 to i64
  %2891 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2890
  store volatile i64 %2880, ptr %2891, align 8, !tbaa !9
  %2892 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2893 = add nsw i32 %2892, 3
  store volatile i32 %2893, ptr @P3_is_marked, align 4, !tbaa !5
  br label %2894

2894:                                             ; preds = %2877, %2873, %2869, %2865, %2862, %2859
  %2895 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %2896 = icmp sgt i32 %2895, 4
  br i1 %2896, label %2897, label %2930

2897:                                             ; preds = %2894
  %2898 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2899 = icmp slt i32 %2898, 4
  br i1 %2899, label %2900, label %2930

2900:                                             ; preds = %2897
  %2901 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %2902 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %2903 = icmp eq i64 %2901, %2902
  br i1 %2903, label %2904, label %2930

2904:                                             ; preds = %2900
  %2905 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %2906 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %2907 = icmp eq i64 %2905, %2906
  br i1 %2907, label %2908, label %2930

2908:                                             ; preds = %2904
  %2909 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %2910 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %2911 = icmp sgt i64 %2910, %2909
  br i1 %2911, label %2912, label %2930

2912:                                             ; preds = %2908
  %2913 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  store volatile i64 %2913, ptr @P2_marking_member_0, align 16, !tbaa !9
  %2914 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %2915 = add nsw i32 %2914, -4
  store volatile i32 %2915, ptr @P2_is_marked, align 4, !tbaa !5
  %2916 = add nsw i64 %2910, %2909
  %2917 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2918 = sext i32 %2917 to i64
  %2919 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2918
  store volatile i64 %2909, ptr %2919, align 8, !tbaa !9
  %2920 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2921 = add nsw i32 %2920, 1
  %2922 = sext i32 %2921 to i64
  %2923 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2922
  store volatile i64 %2910, ptr %2923, align 8, !tbaa !9
  %2924 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2925 = add nsw i32 %2924, 2
  %2926 = sext i32 %2925 to i64
  %2927 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2926
  store volatile i64 %2916, ptr %2927, align 8, !tbaa !9
  %2928 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2929 = add nsw i32 %2928, 3
  store volatile i32 %2929, ptr @P3_is_marked, align 4, !tbaa !5
  br label %2930

2930:                                             ; preds = %2912, %2908, %2904, %2900, %2897, %2894
  %2931 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %2932 = icmp sgt i32 %2931, 4
  br i1 %2932, label %2933, label %2965

2933:                                             ; preds = %2930
  %2934 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2935 = icmp slt i32 %2934, 4
  br i1 %2935, label %2936, label %2965

2936:                                             ; preds = %2933
  %2937 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %2938 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %2939 = icmp eq i64 %2937, %2938
  br i1 %2939, label %2940, label %2965

2940:                                             ; preds = %2936
  %2941 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %2942 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %2943 = icmp eq i64 %2941, %2942
  br i1 %2943, label %2944, label %2965

2944:                                             ; preds = %2940
  %2945 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %2946 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %2947 = icmp sgt i64 %2946, %2945
  br i1 %2947, label %2948, label %2965

2948:                                             ; preds = %2944
  %2949 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %2950 = add nsw i32 %2949, -4
  store volatile i32 %2950, ptr @P2_is_marked, align 4, !tbaa !5
  %2951 = add nsw i64 %2946, %2945
  %2952 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2953 = sext i32 %2952 to i64
  %2954 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2953
  store volatile i64 %2945, ptr %2954, align 8, !tbaa !9
  %2955 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2956 = add nsw i32 %2955, 1
  %2957 = sext i32 %2956 to i64
  %2958 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2957
  store volatile i64 %2946, ptr %2958, align 8, !tbaa !9
  %2959 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2960 = add nsw i32 %2959, 2
  %2961 = sext i32 %2960 to i64
  %2962 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2961
  store volatile i64 %2951, ptr %2962, align 8, !tbaa !9
  %2963 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2964 = add nsw i32 %2963, 3
  store volatile i32 %2964, ptr @P3_is_marked, align 4, !tbaa !5
  br label %2965

2965:                                             ; preds = %2948, %2944, %2940, %2936, %2933, %2930
  %2966 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %2967 = icmp sgt i32 %2966, 4
  br i1 %2967, label %2968, label %3001

2968:                                             ; preds = %2965
  %2969 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2970 = icmp slt i32 %2969, 4
  br i1 %2970, label %2971, label %3001

2971:                                             ; preds = %2968
  %2972 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %2973 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %2974 = icmp eq i64 %2972, %2973
  br i1 %2974, label %2975, label %3001

2975:                                             ; preds = %2971
  %2976 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %2977 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %2978 = icmp eq i64 %2976, %2977
  br i1 %2978, label %2979, label %3001

2979:                                             ; preds = %2975
  %2980 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %2981 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %2982 = icmp sgt i64 %2981, %2980
  br i1 %2982, label %2983, label %3001

2983:                                             ; preds = %2979
  %2984 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  store volatile i64 %2984, ptr @P2_marking_member_0, align 16, !tbaa !9
  %2985 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %2986 = add nsw i32 %2985, -4
  store volatile i32 %2986, ptr @P2_is_marked, align 4, !tbaa !5
  %2987 = add nsw i64 %2981, %2980
  %2988 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2989 = sext i32 %2988 to i64
  %2990 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2989
  store volatile i64 %2980, ptr %2990, align 8, !tbaa !9
  %2991 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2992 = add nsw i32 %2991, 1
  %2993 = sext i32 %2992 to i64
  %2994 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2993
  store volatile i64 %2981, ptr %2994, align 8, !tbaa !9
  %2995 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %2996 = add nsw i32 %2995, 2
  %2997 = sext i32 %2996 to i64
  %2998 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %2997
  store volatile i64 %2987, ptr %2998, align 8, !tbaa !9
  %2999 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3000 = add nsw i32 %2999, 3
  store volatile i32 %3000, ptr @P3_is_marked, align 4, !tbaa !5
  br label %3001

3001:                                             ; preds = %2983, %2979, %2975, %2971, %2968, %2965
  %3002 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %3003 = icmp sgt i32 %3002, 4
  br i1 %3003, label %3004, label %3037

3004:                                             ; preds = %3001
  %3005 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3006 = icmp slt i32 %3005, 4
  br i1 %3006, label %3007, label %3037

3007:                                             ; preds = %3004
  %3008 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %3009 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %3010 = icmp eq i64 %3008, %3009
  br i1 %3010, label %3011, label %3037

3011:                                             ; preds = %3007
  %3012 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %3013 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %3014 = icmp eq i64 %3012, %3013
  br i1 %3014, label %3015, label %3037

3015:                                             ; preds = %3011
  %3016 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %3017 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %3018 = icmp sgt i64 %3017, %3016
  br i1 %3018, label %3019, label %3037

3019:                                             ; preds = %3015
  %3020 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  store volatile i64 %3020, ptr @P2_marking_member_0, align 16, !tbaa !9
  %3021 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %3022 = add nsw i32 %3021, -4
  store volatile i32 %3022, ptr @P2_is_marked, align 4, !tbaa !5
  %3023 = add nsw i64 %3017, %3016
  %3024 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3025 = sext i32 %3024 to i64
  %3026 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3025
  store volatile i64 %3016, ptr %3026, align 8, !tbaa !9
  %3027 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3028 = add nsw i32 %3027, 1
  %3029 = sext i32 %3028 to i64
  %3030 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3029
  store volatile i64 %3017, ptr %3030, align 8, !tbaa !9
  %3031 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3032 = add nsw i32 %3031, 2
  %3033 = sext i32 %3032 to i64
  %3034 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3033
  store volatile i64 %3023, ptr %3034, align 8, !tbaa !9
  %3035 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3036 = add nsw i32 %3035, 3
  store volatile i32 %3036, ptr @P3_is_marked, align 4, !tbaa !5
  br label %3037

3037:                                             ; preds = %3019, %3015, %3011, %3007, %3004, %3001
  %3038 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %3039 = icmp sgt i32 %3038, 4
  br i1 %3039, label %3040, label %3073

3040:                                             ; preds = %3037
  %3041 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3042 = icmp slt i32 %3041, 4
  br i1 %3042, label %3043, label %3073

3043:                                             ; preds = %3040
  %3044 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %3045 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %3046 = icmp eq i64 %3044, %3045
  br i1 %3046, label %3047, label %3073

3047:                                             ; preds = %3043
  %3048 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %3049 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %3050 = icmp eq i64 %3048, %3049
  br i1 %3050, label %3051, label %3073

3051:                                             ; preds = %3047
  %3052 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %3053 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %3054 = icmp sgt i64 %3053, %3052
  br i1 %3054, label %3055, label %3073

3055:                                             ; preds = %3051
  %3056 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  store volatile i64 %3056, ptr @P2_marking_member_0, align 16, !tbaa !9
  %3057 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %3058 = add nsw i32 %3057, -4
  store volatile i32 %3058, ptr @P2_is_marked, align 4, !tbaa !5
  %3059 = add nsw i64 %3053, %3052
  %3060 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3061 = sext i32 %3060 to i64
  %3062 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3061
  store volatile i64 %3052, ptr %3062, align 8, !tbaa !9
  %3063 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3064 = add nsw i32 %3063, 1
  %3065 = sext i32 %3064 to i64
  %3066 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3065
  store volatile i64 %3053, ptr %3066, align 8, !tbaa !9
  %3067 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3068 = add nsw i32 %3067, 2
  %3069 = sext i32 %3068 to i64
  %3070 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3069
  store volatile i64 %3059, ptr %3070, align 8, !tbaa !9
  %3071 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3072 = add nsw i32 %3071, 3
  store volatile i32 %3072, ptr @P3_is_marked, align 4, !tbaa !5
  br label %3073

3073:                                             ; preds = %3055, %3051, %3047, %3043, %3040, %3037
  %3074 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %3075 = icmp sgt i32 %3074, 4
  br i1 %3075, label %3076, label %3109

3076:                                             ; preds = %3073
  %3077 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3078 = icmp slt i32 %3077, 4
  br i1 %3078, label %3079, label %3109

3079:                                             ; preds = %3076
  %3080 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %3081 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %3082 = icmp eq i64 %3080, %3081
  br i1 %3082, label %3083, label %3109

3083:                                             ; preds = %3079
  %3084 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %3085 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %3086 = icmp eq i64 %3084, %3085
  br i1 %3086, label %3087, label %3109

3087:                                             ; preds = %3083
  %3088 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %3089 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %3090 = icmp sgt i64 %3089, %3088
  br i1 %3090, label %3091, label %3109

3091:                                             ; preds = %3087
  %3092 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  store volatile i64 %3092, ptr @P2_marking_member_0, align 16, !tbaa !9
  %3093 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %3094 = add nsw i32 %3093, -4
  store volatile i32 %3094, ptr @P2_is_marked, align 4, !tbaa !5
  %3095 = add nsw i64 %3089, %3088
  %3096 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3097 = sext i32 %3096 to i64
  %3098 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3097
  store volatile i64 %3088, ptr %3098, align 8, !tbaa !9
  %3099 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3100 = add nsw i32 %3099, 1
  %3101 = sext i32 %3100 to i64
  %3102 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3101
  store volatile i64 %3089, ptr %3102, align 8, !tbaa !9
  %3103 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3104 = add nsw i32 %3103, 2
  %3105 = sext i32 %3104 to i64
  %3106 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3105
  store volatile i64 %3095, ptr %3106, align 8, !tbaa !9
  %3107 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3108 = add nsw i32 %3107, 3
  store volatile i32 %3108, ptr @P3_is_marked, align 4, !tbaa !5
  br label %3109

3109:                                             ; preds = %3091, %3087, %3083, %3079, %3076, %3073
  %3110 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %3111 = icmp sgt i32 %3110, 4
  br i1 %3111, label %3112, label %3145

3112:                                             ; preds = %3109
  %3113 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3114 = icmp slt i32 %3113, 4
  br i1 %3114, label %3115, label %3145

3115:                                             ; preds = %3112
  %3116 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %3117 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %3118 = icmp eq i64 %3116, %3117
  br i1 %3118, label %3119, label %3145

3119:                                             ; preds = %3115
  %3120 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %3121 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %3122 = icmp eq i64 %3120, %3121
  br i1 %3122, label %3123, label %3145

3123:                                             ; preds = %3119
  %3124 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %3125 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %3126 = icmp sgt i64 %3125, %3124
  br i1 %3126, label %3127, label %3145

3127:                                             ; preds = %3123
  %3128 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  store volatile i64 %3128, ptr @P2_marking_member_0, align 16, !tbaa !9
  %3129 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %3130 = add nsw i32 %3129, -4
  store volatile i32 %3130, ptr @P2_is_marked, align 4, !tbaa !5
  %3131 = add nsw i64 %3125, %3124
  %3132 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3133 = sext i32 %3132 to i64
  %3134 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3133
  store volatile i64 %3124, ptr %3134, align 8, !tbaa !9
  %3135 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3136 = add nsw i32 %3135, 1
  %3137 = sext i32 %3136 to i64
  %3138 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3137
  store volatile i64 %3125, ptr %3138, align 8, !tbaa !9
  %3139 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3140 = add nsw i32 %3139, 2
  %3141 = sext i32 %3140 to i64
  %3142 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3141
  store volatile i64 %3131, ptr %3142, align 8, !tbaa !9
  %3143 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3144 = add nsw i32 %3143, 3
  store volatile i32 %3144, ptr @P3_is_marked, align 4, !tbaa !5
  br label %3145

3145:                                             ; preds = %3127, %3123, %3119, %3115, %3112, %3109
  %3146 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %3147 = icmp sgt i32 %3146, 4
  br i1 %3147, label %3148, label %3180

3148:                                             ; preds = %3145
  %3149 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3150 = icmp slt i32 %3149, 4
  br i1 %3150, label %3151, label %3180

3151:                                             ; preds = %3148
  %3152 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %3153 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %3154 = icmp eq i64 %3152, %3153
  br i1 %3154, label %3155, label %3180

3155:                                             ; preds = %3151
  %3156 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %3157 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %3158 = icmp eq i64 %3156, %3157
  br i1 %3158, label %3159, label %3180

3159:                                             ; preds = %3155
  %3160 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %3161 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %3162 = icmp sgt i64 %3161, %3160
  br i1 %3162, label %3163, label %3180

3163:                                             ; preds = %3159
  %3164 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %3165 = add nsw i32 %3164, -4
  store volatile i32 %3165, ptr @P2_is_marked, align 4, !tbaa !5
  %3166 = add nsw i64 %3161, %3160
  %3167 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3168 = sext i32 %3167 to i64
  %3169 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3168
  store volatile i64 %3160, ptr %3169, align 8, !tbaa !9
  %3170 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3171 = add nsw i32 %3170, 1
  %3172 = sext i32 %3171 to i64
  %3173 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3172
  store volatile i64 %3161, ptr %3173, align 8, !tbaa !9
  %3174 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3175 = add nsw i32 %3174, 2
  %3176 = sext i32 %3175 to i64
  %3177 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3176
  store volatile i64 %3166, ptr %3177, align 8, !tbaa !9
  %3178 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3179 = add nsw i32 %3178, 3
  store volatile i32 %3179, ptr @P3_is_marked, align 4, !tbaa !5
  br label %3180

3180:                                             ; preds = %3163, %3159, %3155, %3151, %3148, %3145
  %3181 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %3182 = icmp sgt i32 %3181, 4
  br i1 %3182, label %3183, label %3216

3183:                                             ; preds = %3180
  %3184 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3185 = icmp slt i32 %3184, 4
  br i1 %3185, label %3186, label %3216

3186:                                             ; preds = %3183
  %3187 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %3188 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %3189 = icmp eq i64 %3187, %3188
  br i1 %3189, label %3190, label %3216

3190:                                             ; preds = %3186
  %3191 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %3192 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %3193 = icmp eq i64 %3191, %3192
  br i1 %3193, label %3194, label %3216

3194:                                             ; preds = %3190
  %3195 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %3196 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %3197 = icmp sgt i64 %3196, %3195
  br i1 %3197, label %3198, label %3216

3198:                                             ; preds = %3194
  %3199 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  store volatile i64 %3199, ptr @P2_marking_member_0, align 16, !tbaa !9
  %3200 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %3201 = add nsw i32 %3200, -4
  store volatile i32 %3201, ptr @P2_is_marked, align 4, !tbaa !5
  %3202 = add nsw i64 %3196, %3195
  %3203 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3204 = sext i32 %3203 to i64
  %3205 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3204
  store volatile i64 %3195, ptr %3205, align 8, !tbaa !9
  %3206 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3207 = add nsw i32 %3206, 1
  %3208 = sext i32 %3207 to i64
  %3209 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3208
  store volatile i64 %3196, ptr %3209, align 8, !tbaa !9
  %3210 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3211 = add nsw i32 %3210, 2
  %3212 = sext i32 %3211 to i64
  %3213 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3212
  store volatile i64 %3202, ptr %3213, align 8, !tbaa !9
  %3214 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3215 = add nsw i32 %3214, 3
  store volatile i32 %3215, ptr @P3_is_marked, align 4, !tbaa !5
  br label %3216

3216:                                             ; preds = %3198, %3194, %3190, %3186, %3183, %3180
  %3217 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %3218 = icmp sgt i32 %3217, 4
  br i1 %3218, label %3219, label %3251

3219:                                             ; preds = %3216
  %3220 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3221 = icmp slt i32 %3220, 4
  br i1 %3221, label %3222, label %3251

3222:                                             ; preds = %3219
  %3223 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %3224 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %3225 = icmp eq i64 %3223, %3224
  br i1 %3225, label %3226, label %3251

3226:                                             ; preds = %3222
  %3227 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %3228 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %3229 = icmp eq i64 %3227, %3228
  br i1 %3229, label %3230, label %3251

3230:                                             ; preds = %3226
  %3231 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %3232 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %3233 = icmp sgt i64 %3232, %3231
  br i1 %3233, label %3234, label %3251

3234:                                             ; preds = %3230
  %3235 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %3236 = add nsw i32 %3235, -4
  store volatile i32 %3236, ptr @P2_is_marked, align 4, !tbaa !5
  %3237 = add nsw i64 %3232, %3231
  %3238 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3239 = sext i32 %3238 to i64
  %3240 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3239
  store volatile i64 %3231, ptr %3240, align 8, !tbaa !9
  %3241 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3242 = add nsw i32 %3241, 1
  %3243 = sext i32 %3242 to i64
  %3244 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3243
  store volatile i64 %3232, ptr %3244, align 8, !tbaa !9
  %3245 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3246 = add nsw i32 %3245, 2
  %3247 = sext i32 %3246 to i64
  %3248 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3247
  store volatile i64 %3237, ptr %3248, align 8, !tbaa !9
  %3249 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3250 = add nsw i32 %3249, 3
  store volatile i32 %3250, ptr @P3_is_marked, align 4, !tbaa !5
  br label %3251

3251:                                             ; preds = %3234, %3230, %3226, %3222, %3219, %3216
  %3252 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %3253 = icmp sgt i32 %3252, 4
  br i1 %3253, label %3254, label %3287

3254:                                             ; preds = %3251
  %3255 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3256 = icmp slt i32 %3255, 4
  br i1 %3256, label %3257, label %3287

3257:                                             ; preds = %3254
  %3258 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %3259 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %3260 = icmp eq i64 %3258, %3259
  br i1 %3260, label %3261, label %3287

3261:                                             ; preds = %3257
  %3262 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %3263 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %3264 = icmp eq i64 %3262, %3263
  br i1 %3264, label %3265, label %3287

3265:                                             ; preds = %3261
  %3266 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %3267 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %3268 = icmp sgt i64 %3267, %3266
  br i1 %3268, label %3269, label %3287

3269:                                             ; preds = %3265
  %3270 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  store volatile i64 %3270, ptr @P2_marking_member_0, align 16, !tbaa !9
  %3271 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %3272 = add nsw i32 %3271, -4
  store volatile i32 %3272, ptr @P2_is_marked, align 4, !tbaa !5
  %3273 = add nsw i64 %3267, %3266
  %3274 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3275 = sext i32 %3274 to i64
  %3276 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3275
  store volatile i64 %3266, ptr %3276, align 8, !tbaa !9
  %3277 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3278 = add nsw i32 %3277, 1
  %3279 = sext i32 %3278 to i64
  %3280 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3279
  store volatile i64 %3267, ptr %3280, align 8, !tbaa !9
  %3281 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3282 = add nsw i32 %3281, 2
  %3283 = sext i32 %3282 to i64
  %3284 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3283
  store volatile i64 %3273, ptr %3284, align 8, !tbaa !9
  %3285 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3286 = add nsw i32 %3285, 3
  store volatile i32 %3286, ptr @P3_is_marked, align 4, !tbaa !5
  br label %3287

3287:                                             ; preds = %3269, %3265, %3261, %3257, %3254, %3251
  %3288 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %3289 = icmp sgt i32 %3288, 4
  br i1 %3289, label %3290, label %3322

3290:                                             ; preds = %3287
  %3291 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3292 = icmp slt i32 %3291, 4
  br i1 %3292, label %3293, label %3322

3293:                                             ; preds = %3290
  %3294 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %3295 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %3296 = icmp eq i64 %3294, %3295
  br i1 %3296, label %3297, label %3322

3297:                                             ; preds = %3293
  %3298 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %3299 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %3300 = icmp eq i64 %3298, %3299
  br i1 %3300, label %3301, label %3322

3301:                                             ; preds = %3297
  %3302 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %3303 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %3304 = icmp sgt i64 %3303, %3302
  br i1 %3304, label %3305, label %3322

3305:                                             ; preds = %3301
  %3306 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %3307 = add nsw i32 %3306, -4
  store volatile i32 %3307, ptr @P2_is_marked, align 4, !tbaa !5
  %3308 = add nsw i64 %3303, %3302
  %3309 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3310 = sext i32 %3309 to i64
  %3311 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3310
  store volatile i64 %3302, ptr %3311, align 8, !tbaa !9
  %3312 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3313 = add nsw i32 %3312, 1
  %3314 = sext i32 %3313 to i64
  %3315 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3314
  store volatile i64 %3303, ptr %3315, align 8, !tbaa !9
  %3316 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3317 = add nsw i32 %3316, 2
  %3318 = sext i32 %3317 to i64
  %3319 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3318
  store volatile i64 %3308, ptr %3319, align 8, !tbaa !9
  %3320 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3321 = add nsw i32 %3320, 3
  store volatile i32 %3321, ptr @P3_is_marked, align 4, !tbaa !5
  br label %3322

3322:                                             ; preds = %3305, %3301, %3297, %3293, %3290, %3287
  %3323 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %3324 = icmp sgt i32 %3323, 4
  br i1 %3324, label %3325, label %3358

3325:                                             ; preds = %3322
  %3326 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3327 = icmp slt i32 %3326, 4
  br i1 %3327, label %3328, label %3358

3328:                                             ; preds = %3325
  %3329 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %3330 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %3331 = icmp eq i64 %3329, %3330
  br i1 %3331, label %3332, label %3358

3332:                                             ; preds = %3328
  %3333 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %3334 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %3335 = icmp eq i64 %3333, %3334
  br i1 %3335, label %3336, label %3358

3336:                                             ; preds = %3332
  %3337 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %3338 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %3339 = icmp sgt i64 %3338, %3337
  br i1 %3339, label %3340, label %3358

3340:                                             ; preds = %3336
  %3341 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  store volatile i64 %3341, ptr @P2_marking_member_0, align 16, !tbaa !9
  %3342 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %3343 = add nsw i32 %3342, -4
  store volatile i32 %3343, ptr @P2_is_marked, align 4, !tbaa !5
  %3344 = add nsw i64 %3338, %3337
  %3345 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3346 = sext i32 %3345 to i64
  %3347 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3346
  store volatile i64 %3337, ptr %3347, align 8, !tbaa !9
  %3348 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3349 = add nsw i32 %3348, 1
  %3350 = sext i32 %3349 to i64
  %3351 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3350
  store volatile i64 %3338, ptr %3351, align 8, !tbaa !9
  %3352 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3353 = add nsw i32 %3352, 2
  %3354 = sext i32 %3353 to i64
  %3355 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3354
  store volatile i64 %3344, ptr %3355, align 8, !tbaa !9
  %3356 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3357 = add nsw i32 %3356, 3
  store volatile i32 %3357, ptr @P3_is_marked, align 4, !tbaa !5
  br label %3358

3358:                                             ; preds = %3340, %3336, %3332, %3328, %3325, %3322
  %3359 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %3360 = icmp sgt i32 %3359, 4
  br i1 %3360, label %3361, label %3393

3361:                                             ; preds = %3358
  %3362 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3363 = icmp slt i32 %3362, 4
  br i1 %3363, label %3364, label %3393

3364:                                             ; preds = %3361
  %3365 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %3366 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %3367 = icmp eq i64 %3365, %3366
  br i1 %3367, label %3368, label %3393

3368:                                             ; preds = %3364
  %3369 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %3370 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %3371 = icmp eq i64 %3369, %3370
  br i1 %3371, label %3372, label %3393

3372:                                             ; preds = %3368
  %3373 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %3374 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %3375 = icmp sgt i64 %3374, %3373
  br i1 %3375, label %3376, label %3393

3376:                                             ; preds = %3372
  %3377 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %3378 = add nsw i32 %3377, -4
  store volatile i32 %3378, ptr @P2_is_marked, align 4, !tbaa !5
  %3379 = add nsw i64 %3374, %3373
  %3380 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3381 = sext i32 %3380 to i64
  %3382 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3381
  store volatile i64 %3373, ptr %3382, align 8, !tbaa !9
  %3383 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3384 = add nsw i32 %3383, 1
  %3385 = sext i32 %3384 to i64
  %3386 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3385
  store volatile i64 %3374, ptr %3386, align 8, !tbaa !9
  %3387 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3388 = add nsw i32 %3387, 2
  %3389 = sext i32 %3388 to i64
  %3390 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3389
  store volatile i64 %3379, ptr %3390, align 8, !tbaa !9
  %3391 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3392 = add nsw i32 %3391, 3
  store volatile i32 %3392, ptr @P3_is_marked, align 4, !tbaa !5
  br label %3393

3393:                                             ; preds = %3376, %3372, %3368, %3364, %3361, %3358
  %3394 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %3395 = icmp sgt i32 %3394, 4
  br i1 %3395, label %3396, label %3429

3396:                                             ; preds = %3393
  %3397 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3398 = icmp slt i32 %3397, 4
  br i1 %3398, label %3399, label %3429

3399:                                             ; preds = %3396
  %3400 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %3401 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %3402 = icmp eq i64 %3400, %3401
  br i1 %3402, label %3403, label %3429

3403:                                             ; preds = %3399
  %3404 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %3405 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %3406 = icmp eq i64 %3404, %3405
  br i1 %3406, label %3407, label %3429

3407:                                             ; preds = %3403
  %3408 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %3409 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %3410 = icmp sgt i64 %3409, %3408
  br i1 %3410, label %3411, label %3429

3411:                                             ; preds = %3407
  %3412 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  store volatile i64 %3412, ptr @P2_marking_member_0, align 16, !tbaa !9
  %3413 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %3414 = add nsw i32 %3413, -4
  store volatile i32 %3414, ptr @P2_is_marked, align 4, !tbaa !5
  %3415 = add nsw i64 %3409, %3408
  %3416 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3417 = sext i32 %3416 to i64
  %3418 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3417
  store volatile i64 %3408, ptr %3418, align 8, !tbaa !9
  %3419 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3420 = add nsw i32 %3419, 1
  %3421 = sext i32 %3420 to i64
  %3422 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3421
  store volatile i64 %3409, ptr %3422, align 8, !tbaa !9
  %3423 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3424 = add nsw i32 %3423, 2
  %3425 = sext i32 %3424 to i64
  %3426 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3425
  store volatile i64 %3415, ptr %3426, align 8, !tbaa !9
  %3427 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3428 = add nsw i32 %3427, 3
  store volatile i32 %3428, ptr @P3_is_marked, align 4, !tbaa !5
  br label %3429

3429:                                             ; preds = %3411, %3407, %3403, %3399, %3396, %3393
  %3430 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %3431 = icmp sgt i32 %3430, 4
  br i1 %3431, label %3432, label %3465

3432:                                             ; preds = %3429
  %3433 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3434 = icmp slt i32 %3433, 4
  br i1 %3434, label %3435, label %3465

3435:                                             ; preds = %3432
  %3436 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %3437 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %3438 = icmp eq i64 %3436, %3437
  br i1 %3438, label %3439, label %3465

3439:                                             ; preds = %3435
  %3440 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %3441 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %3442 = icmp eq i64 %3440, %3441
  br i1 %3442, label %3443, label %3465

3443:                                             ; preds = %3439
  %3444 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %3445 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %3446 = icmp sgt i64 %3445, %3444
  br i1 %3446, label %3447, label %3465

3447:                                             ; preds = %3443
  %3448 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  store volatile i64 %3448, ptr @P2_marking_member_0, align 16, !tbaa !9
  %3449 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %3450 = add nsw i32 %3449, -4
  store volatile i32 %3450, ptr @P2_is_marked, align 4, !tbaa !5
  %3451 = add nsw i64 %3445, %3444
  %3452 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3453 = sext i32 %3452 to i64
  %3454 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3453
  store volatile i64 %3444, ptr %3454, align 8, !tbaa !9
  %3455 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3456 = add nsw i32 %3455, 1
  %3457 = sext i32 %3456 to i64
  %3458 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3457
  store volatile i64 %3445, ptr %3458, align 8, !tbaa !9
  %3459 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3460 = add nsw i32 %3459, 2
  %3461 = sext i32 %3460 to i64
  %3462 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3461
  store volatile i64 %3451, ptr %3462, align 8, !tbaa !9
  %3463 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3464 = add nsw i32 %3463, 3
  store volatile i32 %3464, ptr @P3_is_marked, align 4, !tbaa !5
  br label %3465

3465:                                             ; preds = %3447, %3443, %3439, %3435, %3432, %3429
  %3466 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %3467 = icmp sgt i32 %3466, 4
  br i1 %3467, label %3468, label %3501

3468:                                             ; preds = %3465
  %3469 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3470 = icmp slt i32 %3469, 4
  br i1 %3470, label %3471, label %3501

3471:                                             ; preds = %3468
  %3472 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %3473 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %3474 = icmp eq i64 %3472, %3473
  br i1 %3474, label %3475, label %3501

3475:                                             ; preds = %3471
  %3476 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %3477 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %3478 = icmp eq i64 %3476, %3477
  br i1 %3478, label %3479, label %3501

3479:                                             ; preds = %3475
  %3480 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %3481 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %3482 = icmp sgt i64 %3481, %3480
  br i1 %3482, label %3483, label %3501

3483:                                             ; preds = %3479
  %3484 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  store volatile i64 %3484, ptr @P2_marking_member_0, align 16, !tbaa !9
  %3485 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %3486 = add nsw i32 %3485, -4
  store volatile i32 %3486, ptr @P2_is_marked, align 4, !tbaa !5
  %3487 = add nsw i64 %3481, %3480
  %3488 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3489 = sext i32 %3488 to i64
  %3490 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3489
  store volatile i64 %3480, ptr %3490, align 8, !tbaa !9
  %3491 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3492 = add nsw i32 %3491, 1
  %3493 = sext i32 %3492 to i64
  %3494 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3493
  store volatile i64 %3481, ptr %3494, align 8, !tbaa !9
  %3495 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3496 = add nsw i32 %3495, 2
  %3497 = sext i32 %3496 to i64
  %3498 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3497
  store volatile i64 %3487, ptr %3498, align 8, !tbaa !9
  %3499 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3500 = add nsw i32 %3499, 3
  store volatile i32 %3500, ptr @P3_is_marked, align 4, !tbaa !5
  br label %3501

3501:                                             ; preds = %3483, %3479, %3475, %3471, %3468, %3465
  %3502 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %3503 = icmp sgt i32 %3502, 4
  br i1 %3503, label %3504, label %3536

3504:                                             ; preds = %3501
  %3505 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3506 = icmp slt i32 %3505, 4
  br i1 %3506, label %3507, label %3536

3507:                                             ; preds = %3504
  %3508 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %3509 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %3510 = icmp eq i64 %3508, %3509
  br i1 %3510, label %3511, label %3536

3511:                                             ; preds = %3507
  %3512 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %3513 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %3514 = icmp eq i64 %3512, %3513
  br i1 %3514, label %3515, label %3536

3515:                                             ; preds = %3511
  %3516 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %3517 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %3518 = icmp sgt i64 %3517, %3516
  br i1 %3518, label %3519, label %3536

3519:                                             ; preds = %3515
  %3520 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %3521 = add nsw i32 %3520, -4
  store volatile i32 %3521, ptr @P2_is_marked, align 4, !tbaa !5
  %3522 = add nsw i64 %3517, %3516
  %3523 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3524 = sext i32 %3523 to i64
  %3525 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3524
  store volatile i64 %3516, ptr %3525, align 8, !tbaa !9
  %3526 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3527 = add nsw i32 %3526, 1
  %3528 = sext i32 %3527 to i64
  %3529 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3528
  store volatile i64 %3517, ptr %3529, align 8, !tbaa !9
  %3530 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3531 = add nsw i32 %3530, 2
  %3532 = sext i32 %3531 to i64
  %3533 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3532
  store volatile i64 %3522, ptr %3533, align 8, !tbaa !9
  %3534 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3535 = add nsw i32 %3534, 3
  store volatile i32 %3535, ptr @P3_is_marked, align 4, !tbaa !5
  br label %3536

3536:                                             ; preds = %3519, %3515, %3511, %3507, %3504, %3501
  %3537 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %3538 = icmp sgt i32 %3537, 4
  br i1 %3538, label %3539, label %3572

3539:                                             ; preds = %3536
  %3540 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3541 = icmp slt i32 %3540, 4
  br i1 %3541, label %3542, label %3572

3542:                                             ; preds = %3539
  %3543 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %3544 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %3545 = icmp eq i64 %3543, %3544
  br i1 %3545, label %3546, label %3572

3546:                                             ; preds = %3542
  %3547 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %3548 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %3549 = icmp eq i64 %3547, %3548
  br i1 %3549, label %3550, label %3572

3550:                                             ; preds = %3546
  %3551 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %3552 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %3553 = icmp sgt i64 %3552, %3551
  br i1 %3553, label %3554, label %3572

3554:                                             ; preds = %3550
  %3555 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  store volatile i64 %3555, ptr @P2_marking_member_0, align 16, !tbaa !9
  %3556 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %3557 = add nsw i32 %3556, -4
  store volatile i32 %3557, ptr @P2_is_marked, align 4, !tbaa !5
  %3558 = add nsw i64 %3552, %3551
  %3559 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3560 = sext i32 %3559 to i64
  %3561 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3560
  store volatile i64 %3551, ptr %3561, align 8, !tbaa !9
  %3562 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3563 = add nsw i32 %3562, 1
  %3564 = sext i32 %3563 to i64
  %3565 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3564
  store volatile i64 %3552, ptr %3565, align 8, !tbaa !9
  %3566 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3567 = add nsw i32 %3566, 2
  %3568 = sext i32 %3567 to i64
  %3569 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3568
  store volatile i64 %3558, ptr %3569, align 8, !tbaa !9
  %3570 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3571 = add nsw i32 %3570, 3
  store volatile i32 %3571, ptr @P3_is_marked, align 4, !tbaa !5
  br label %3572

3572:                                             ; preds = %3554, %3550, %3546, %3542, %3539, %3536
  %3573 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %3574 = icmp sgt i32 %3573, 4
  br i1 %3574, label %3575, label %3607

3575:                                             ; preds = %3572
  %3576 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3577 = icmp slt i32 %3576, 4
  br i1 %3577, label %3578, label %3607

3578:                                             ; preds = %3575
  %3579 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %3580 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %3581 = icmp eq i64 %3579, %3580
  br i1 %3581, label %3582, label %3607

3582:                                             ; preds = %3578
  %3583 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %3584 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %3585 = icmp eq i64 %3583, %3584
  br i1 %3585, label %3586, label %3607

3586:                                             ; preds = %3582
  %3587 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %3588 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %3589 = icmp sgt i64 %3588, %3587
  br i1 %3589, label %3590, label %3607

3590:                                             ; preds = %3586
  %3591 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %3592 = add nsw i32 %3591, -4
  store volatile i32 %3592, ptr @P2_is_marked, align 4, !tbaa !5
  %3593 = add nsw i64 %3588, %3587
  %3594 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3595 = sext i32 %3594 to i64
  %3596 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3595
  store volatile i64 %3587, ptr %3596, align 8, !tbaa !9
  %3597 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3598 = add nsw i32 %3597, 1
  %3599 = sext i32 %3598 to i64
  %3600 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3599
  store volatile i64 %3588, ptr %3600, align 8, !tbaa !9
  %3601 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3602 = add nsw i32 %3601, 2
  %3603 = sext i32 %3602 to i64
  %3604 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3603
  store volatile i64 %3593, ptr %3604, align 8, !tbaa !9
  %3605 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3606 = add nsw i32 %3605, 3
  store volatile i32 %3606, ptr @P3_is_marked, align 4, !tbaa !5
  br label %3607

3607:                                             ; preds = %3590, %3586, %3582, %3578, %3575, %3572
  %3608 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %3609 = icmp sgt i32 %3608, 4
  br i1 %3609, label %3610, label %3643

3610:                                             ; preds = %3607
  %3611 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3612 = icmp slt i32 %3611, 4
  br i1 %3612, label %3613, label %3643

3613:                                             ; preds = %3610
  %3614 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %3615 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %3616 = icmp eq i64 %3614, %3615
  br i1 %3616, label %3617, label %3643

3617:                                             ; preds = %3613
  %3618 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %3619 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %3620 = icmp eq i64 %3618, %3619
  br i1 %3620, label %3621, label %3643

3621:                                             ; preds = %3617
  %3622 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %3623 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %3624 = icmp sgt i64 %3623, %3622
  br i1 %3624, label %3625, label %3643

3625:                                             ; preds = %3621
  %3626 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  store volatile i64 %3626, ptr @P2_marking_member_0, align 16, !tbaa !9
  %3627 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %3628 = add nsw i32 %3627, -4
  store volatile i32 %3628, ptr @P2_is_marked, align 4, !tbaa !5
  %3629 = add nsw i64 %3623, %3622
  %3630 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3631 = sext i32 %3630 to i64
  %3632 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3631
  store volatile i64 %3622, ptr %3632, align 8, !tbaa !9
  %3633 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3634 = add nsw i32 %3633, 1
  %3635 = sext i32 %3634 to i64
  %3636 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3635
  store volatile i64 %3623, ptr %3636, align 8, !tbaa !9
  %3637 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3638 = add nsw i32 %3637, 2
  %3639 = sext i32 %3638 to i64
  %3640 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3639
  store volatile i64 %3629, ptr %3640, align 8, !tbaa !9
  %3641 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3642 = add nsw i32 %3641, 3
  store volatile i32 %3642, ptr @P3_is_marked, align 4, !tbaa !5
  br label %3643

3643:                                             ; preds = %3625, %3621, %3617, %3613, %3610, %3607
  %3644 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %3645 = icmp sgt i32 %3644, 4
  br i1 %3645, label %3646, label %3679

3646:                                             ; preds = %3643
  %3647 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3648 = icmp slt i32 %3647, 4
  br i1 %3648, label %3649, label %3679

3649:                                             ; preds = %3646
  %3650 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %3651 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %3652 = icmp eq i64 %3650, %3651
  br i1 %3652, label %3653, label %3679

3653:                                             ; preds = %3649
  %3654 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %3655 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %3656 = icmp eq i64 %3654, %3655
  br i1 %3656, label %3657, label %3679

3657:                                             ; preds = %3653
  %3658 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %3659 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %3660 = icmp sgt i64 %3659, %3658
  br i1 %3660, label %3661, label %3679

3661:                                             ; preds = %3657
  %3662 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  store volatile i64 %3662, ptr @P2_marking_member_0, align 16, !tbaa !9
  %3663 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %3664 = add nsw i32 %3663, -4
  store volatile i32 %3664, ptr @P2_is_marked, align 4, !tbaa !5
  %3665 = add nsw i64 %3659, %3658
  %3666 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3667 = sext i32 %3666 to i64
  %3668 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3667
  store volatile i64 %3658, ptr %3668, align 8, !tbaa !9
  %3669 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3670 = add nsw i32 %3669, 1
  %3671 = sext i32 %3670 to i64
  %3672 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3671
  store volatile i64 %3659, ptr %3672, align 8, !tbaa !9
  %3673 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3674 = add nsw i32 %3673, 2
  %3675 = sext i32 %3674 to i64
  %3676 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3675
  store volatile i64 %3665, ptr %3676, align 8, !tbaa !9
  %3677 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3678 = add nsw i32 %3677, 3
  store volatile i32 %3678, ptr @P3_is_marked, align 4, !tbaa !5
  br label %3679

3679:                                             ; preds = %3661, %3657, %3653, %3649, %3646, %3643
  %3680 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %3681 = icmp sgt i32 %3680, 4
  br i1 %3681, label %3682, label %3715

3682:                                             ; preds = %3679
  %3683 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3684 = icmp slt i32 %3683, 4
  br i1 %3684, label %3685, label %3715

3685:                                             ; preds = %3682
  %3686 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %3687 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %3688 = icmp eq i64 %3686, %3687
  br i1 %3688, label %3689, label %3715

3689:                                             ; preds = %3685
  %3690 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %3691 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %3692 = icmp eq i64 %3690, %3691
  br i1 %3692, label %3693, label %3715

3693:                                             ; preds = %3689
  %3694 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %3695 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %3696 = icmp sgt i64 %3695, %3694
  br i1 %3696, label %3697, label %3715

3697:                                             ; preds = %3693
  %3698 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  store volatile i64 %3698, ptr @P2_marking_member_0, align 16, !tbaa !9
  %3699 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %3700 = add nsw i32 %3699, -4
  store volatile i32 %3700, ptr @P2_is_marked, align 4, !tbaa !5
  %3701 = add nsw i64 %3695, %3694
  %3702 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3703 = sext i32 %3702 to i64
  %3704 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3703
  store volatile i64 %3694, ptr %3704, align 8, !tbaa !9
  %3705 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3706 = add nsw i32 %3705, 1
  %3707 = sext i32 %3706 to i64
  %3708 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3707
  store volatile i64 %3695, ptr %3708, align 8, !tbaa !9
  %3709 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3710 = add nsw i32 %3709, 2
  %3711 = sext i32 %3710 to i64
  %3712 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3711
  store volatile i64 %3701, ptr %3712, align 8, !tbaa !9
  %3713 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3714 = add nsw i32 %3713, 3
  store volatile i32 %3714, ptr @P3_is_marked, align 4, !tbaa !5
  br label %3715

3715:                                             ; preds = %3697, %3693, %3689, %3685, %3682, %3679
  %3716 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %3717 = icmp sgt i32 %3716, 4
  br i1 %3717, label %3718, label %3751

3718:                                             ; preds = %3715
  %3719 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3720 = icmp slt i32 %3719, 4
  br i1 %3720, label %3721, label %3751

3721:                                             ; preds = %3718
  %3722 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %3723 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %3724 = icmp eq i64 %3722, %3723
  br i1 %3724, label %3725, label %3751

3725:                                             ; preds = %3721
  %3726 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %3727 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %3728 = icmp eq i64 %3726, %3727
  br i1 %3728, label %3729, label %3751

3729:                                             ; preds = %3725
  %3730 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %3731 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %3732 = icmp sgt i64 %3731, %3730
  br i1 %3732, label %3733, label %3751

3733:                                             ; preds = %3729
  %3734 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  store volatile i64 %3734, ptr @P2_marking_member_0, align 16, !tbaa !9
  %3735 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %3736 = add nsw i32 %3735, -4
  store volatile i32 %3736, ptr @P2_is_marked, align 4, !tbaa !5
  %3737 = add nsw i64 %3731, %3730
  %3738 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3739 = sext i32 %3738 to i64
  %3740 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3739
  store volatile i64 %3730, ptr %3740, align 8, !tbaa !9
  %3741 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3742 = add nsw i32 %3741, 1
  %3743 = sext i32 %3742 to i64
  %3744 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3743
  store volatile i64 %3731, ptr %3744, align 8, !tbaa !9
  %3745 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3746 = add nsw i32 %3745, 2
  %3747 = sext i32 %3746 to i64
  %3748 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3747
  store volatile i64 %3737, ptr %3748, align 8, !tbaa !9
  %3749 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3750 = add nsw i32 %3749, 3
  store volatile i32 %3750, ptr @P3_is_marked, align 4, !tbaa !5
  br label %3751

3751:                                             ; preds = %3733, %3729, %3725, %3721, %3718, %3715
  %3752 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %3753 = icmp sgt i32 %3752, 4
  br i1 %3753, label %3754, label %3787

3754:                                             ; preds = %3751
  %3755 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3756 = icmp slt i32 %3755, 4
  br i1 %3756, label %3757, label %3787

3757:                                             ; preds = %3754
  %3758 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %3759 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %3760 = icmp eq i64 %3758, %3759
  br i1 %3760, label %3761, label %3787

3761:                                             ; preds = %3757
  %3762 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %3763 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %3764 = icmp eq i64 %3762, %3763
  br i1 %3764, label %3765, label %3787

3765:                                             ; preds = %3761
  %3766 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %3767 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %3768 = icmp sgt i64 %3767, %3766
  br i1 %3768, label %3769, label %3787

3769:                                             ; preds = %3765
  %3770 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  store volatile i64 %3770, ptr @P2_marking_member_0, align 16, !tbaa !9
  %3771 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %3772 = add nsw i32 %3771, -4
  store volatile i32 %3772, ptr @P2_is_marked, align 4, !tbaa !5
  %3773 = add nsw i64 %3767, %3766
  %3774 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3775 = sext i32 %3774 to i64
  %3776 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3775
  store volatile i64 %3766, ptr %3776, align 8, !tbaa !9
  %3777 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3778 = add nsw i32 %3777, 1
  %3779 = sext i32 %3778 to i64
  %3780 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3779
  store volatile i64 %3767, ptr %3780, align 8, !tbaa !9
  %3781 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3782 = add nsw i32 %3781, 2
  %3783 = sext i32 %3782 to i64
  %3784 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3783
  store volatile i64 %3773, ptr %3784, align 8, !tbaa !9
  %3785 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3786 = add nsw i32 %3785, 3
  store volatile i32 %3786, ptr @P3_is_marked, align 4, !tbaa !5
  br label %3787

3787:                                             ; preds = %3769, %3765, %3761, %3757, %3754, %3751
  %3788 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %3789 = icmp sgt i32 %3788, 4
  br i1 %3789, label %3790, label %3823

3790:                                             ; preds = %3787
  %3791 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3792 = icmp slt i32 %3791, 4
  br i1 %3792, label %3793, label %3823

3793:                                             ; preds = %3790
  %3794 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %3795 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %3796 = icmp eq i64 %3794, %3795
  br i1 %3796, label %3797, label %3823

3797:                                             ; preds = %3793
  %3798 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %3799 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %3800 = icmp eq i64 %3798, %3799
  br i1 %3800, label %3801, label %3823

3801:                                             ; preds = %3797
  %3802 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %3803 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %3804 = icmp sgt i64 %3803, %3802
  br i1 %3804, label %3805, label %3823

3805:                                             ; preds = %3801
  %3806 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  store volatile i64 %3806, ptr @P2_marking_member_0, align 16, !tbaa !9
  %3807 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %3808 = add nsw i32 %3807, -4
  store volatile i32 %3808, ptr @P2_is_marked, align 4, !tbaa !5
  %3809 = add nsw i64 %3803, %3802
  %3810 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3811 = sext i32 %3810 to i64
  %3812 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3811
  store volatile i64 %3802, ptr %3812, align 8, !tbaa !9
  %3813 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3814 = add nsw i32 %3813, 1
  %3815 = sext i32 %3814 to i64
  %3816 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3815
  store volatile i64 %3803, ptr %3816, align 8, !tbaa !9
  %3817 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3818 = add nsw i32 %3817, 2
  %3819 = sext i32 %3818 to i64
  %3820 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3819
  store volatile i64 %3809, ptr %3820, align 8, !tbaa !9
  %3821 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3822 = add nsw i32 %3821, 3
  store volatile i32 %3822, ptr @P3_is_marked, align 4, !tbaa !5
  br label %3823

3823:                                             ; preds = %3805, %3801, %3797, %3793, %3790, %3787
  %3824 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %3825 = icmp sgt i32 %3824, 4
  br i1 %3825, label %3826, label %3859

3826:                                             ; preds = %3823
  %3827 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3828 = icmp slt i32 %3827, 4
  br i1 %3828, label %3829, label %3859

3829:                                             ; preds = %3826
  %3830 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %3831 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %3832 = icmp eq i64 %3830, %3831
  br i1 %3832, label %3833, label %3859

3833:                                             ; preds = %3829
  %3834 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %3835 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %3836 = icmp eq i64 %3834, %3835
  br i1 %3836, label %3837, label %3859

3837:                                             ; preds = %3833
  %3838 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %3839 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %3840 = icmp sgt i64 %3839, %3838
  br i1 %3840, label %3841, label %3859

3841:                                             ; preds = %3837
  %3842 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  store volatile i64 %3842, ptr @P2_marking_member_0, align 16, !tbaa !9
  %3843 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %3844 = add nsw i32 %3843, -4
  store volatile i32 %3844, ptr @P2_is_marked, align 4, !tbaa !5
  %3845 = add nsw i64 %3839, %3838
  %3846 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3847 = sext i32 %3846 to i64
  %3848 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3847
  store volatile i64 %3838, ptr %3848, align 8, !tbaa !9
  %3849 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3850 = add nsw i32 %3849, 1
  %3851 = sext i32 %3850 to i64
  %3852 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3851
  store volatile i64 %3839, ptr %3852, align 8, !tbaa !9
  %3853 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3854 = add nsw i32 %3853, 2
  %3855 = sext i32 %3854 to i64
  %3856 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3855
  store volatile i64 %3845, ptr %3856, align 8, !tbaa !9
  %3857 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3858 = add nsw i32 %3857, 3
  store volatile i32 %3858, ptr @P3_is_marked, align 4, !tbaa !5
  br label %3859

3859:                                             ; preds = %3841, %3837, %3833, %3829, %3826, %3823
  %3860 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %3861 = icmp sgt i32 %3860, 4
  br i1 %3861, label %3862, label %3895

3862:                                             ; preds = %3859
  %3863 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3864 = icmp slt i32 %3863, 4
  br i1 %3864, label %3865, label %3895

3865:                                             ; preds = %3862
  %3866 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %3867 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %3868 = icmp eq i64 %3866, %3867
  br i1 %3868, label %3869, label %3895

3869:                                             ; preds = %3865
  %3870 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %3871 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %3872 = icmp eq i64 %3870, %3871
  br i1 %3872, label %3873, label %3895

3873:                                             ; preds = %3869
  %3874 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %3875 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %3876 = icmp sgt i64 %3875, %3874
  br i1 %3876, label %3877, label %3895

3877:                                             ; preds = %3873
  %3878 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  store volatile i64 %3878, ptr @P2_marking_member_0, align 16, !tbaa !9
  %3879 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %3880 = add nsw i32 %3879, -4
  store volatile i32 %3880, ptr @P2_is_marked, align 4, !tbaa !5
  %3881 = add nsw i64 %3875, %3874
  %3882 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3883 = sext i32 %3882 to i64
  %3884 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3883
  store volatile i64 %3874, ptr %3884, align 8, !tbaa !9
  %3885 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3886 = add nsw i32 %3885, 1
  %3887 = sext i32 %3886 to i64
  %3888 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3887
  store volatile i64 %3875, ptr %3888, align 8, !tbaa !9
  %3889 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3890 = add nsw i32 %3889, 2
  %3891 = sext i32 %3890 to i64
  %3892 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3891
  store volatile i64 %3881, ptr %3892, align 8, !tbaa !9
  %3893 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3894 = add nsw i32 %3893, 3
  store volatile i32 %3894, ptr @P3_is_marked, align 4, !tbaa !5
  br label %3895

3895:                                             ; preds = %3877, %3873, %3869, %3865, %3862, %3859
  %3896 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %3897 = icmp sgt i32 %3896, 4
  br i1 %3897, label %3898, label %3931

3898:                                             ; preds = %3895
  %3899 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3900 = icmp slt i32 %3899, 4
  br i1 %3900, label %3901, label %3931

3901:                                             ; preds = %3898
  %3902 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %3903 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %3904 = icmp eq i64 %3902, %3903
  br i1 %3904, label %3905, label %3931

3905:                                             ; preds = %3901
  %3906 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %3907 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %3908 = icmp eq i64 %3906, %3907
  br i1 %3908, label %3909, label %3931

3909:                                             ; preds = %3905
  %3910 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %3911 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %3912 = icmp sgt i64 %3911, %3910
  br i1 %3912, label %3913, label %3931

3913:                                             ; preds = %3909
  %3914 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  store volatile i64 %3914, ptr @P2_marking_member_0, align 16, !tbaa !9
  %3915 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %3916 = add nsw i32 %3915, -4
  store volatile i32 %3916, ptr @P2_is_marked, align 4, !tbaa !5
  %3917 = add nsw i64 %3911, %3910
  %3918 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3919 = sext i32 %3918 to i64
  %3920 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3919
  store volatile i64 %3910, ptr %3920, align 8, !tbaa !9
  %3921 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3922 = add nsw i32 %3921, 1
  %3923 = sext i32 %3922 to i64
  %3924 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3923
  store volatile i64 %3911, ptr %3924, align 8, !tbaa !9
  %3925 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3926 = add nsw i32 %3925, 2
  %3927 = sext i32 %3926 to i64
  %3928 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3927
  store volatile i64 %3917, ptr %3928, align 8, !tbaa !9
  %3929 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3930 = add nsw i32 %3929, 3
  store volatile i32 %3930, ptr @P3_is_marked, align 4, !tbaa !5
  br label %3931

3931:                                             ; preds = %3913, %3909, %3905, %3901, %3898, %3895
  %3932 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %3933 = icmp sgt i32 %3932, 4
  br i1 %3933, label %3934, label %3966

3934:                                             ; preds = %3931
  %3935 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3936 = icmp slt i32 %3935, 4
  br i1 %3936, label %3937, label %3966

3937:                                             ; preds = %3934
  %3938 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %3939 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %3940 = icmp eq i64 %3938, %3939
  br i1 %3940, label %3941, label %3966

3941:                                             ; preds = %3937
  %3942 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %3943 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %3944 = icmp eq i64 %3942, %3943
  br i1 %3944, label %3945, label %3966

3945:                                             ; preds = %3941
  %3946 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %3947 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %3948 = icmp sgt i64 %3947, %3946
  br i1 %3948, label %3949, label %3966

3949:                                             ; preds = %3945
  %3950 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %3951 = add nsw i32 %3950, -4
  store volatile i32 %3951, ptr @P2_is_marked, align 4, !tbaa !5
  %3952 = add nsw i64 %3947, %3946
  %3953 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3954 = sext i32 %3953 to i64
  %3955 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3954
  store volatile i64 %3946, ptr %3955, align 8, !tbaa !9
  %3956 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3957 = add nsw i32 %3956, 1
  %3958 = sext i32 %3957 to i64
  %3959 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3958
  store volatile i64 %3947, ptr %3959, align 8, !tbaa !9
  %3960 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3961 = add nsw i32 %3960, 2
  %3962 = sext i32 %3961 to i64
  %3963 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3962
  store volatile i64 %3952, ptr %3963, align 8, !tbaa !9
  %3964 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3965 = add nsw i32 %3964, 3
  store volatile i32 %3965, ptr @P3_is_marked, align 4, !tbaa !5
  br label %3966

3966:                                             ; preds = %3949, %3945, %3941, %3937, %3934, %3931
  %3967 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %3968 = icmp sgt i32 %3967, 4
  br i1 %3968, label %3969, label %4002

3969:                                             ; preds = %3966
  %3970 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3971 = icmp slt i32 %3970, 4
  br i1 %3971, label %3972, label %4002

3972:                                             ; preds = %3969
  %3973 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %3974 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %3975 = icmp eq i64 %3973, %3974
  br i1 %3975, label %3976, label %4002

3976:                                             ; preds = %3972
  %3977 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %3978 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %3979 = icmp eq i64 %3977, %3978
  br i1 %3979, label %3980, label %4002

3980:                                             ; preds = %3976
  %3981 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %3982 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %3983 = icmp sgt i64 %3982, %3981
  br i1 %3983, label %3984, label %4002

3984:                                             ; preds = %3980
  %3985 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  store volatile i64 %3985, ptr @P2_marking_member_0, align 16, !tbaa !9
  %3986 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %3987 = add nsw i32 %3986, -4
  store volatile i32 %3987, ptr @P2_is_marked, align 4, !tbaa !5
  %3988 = add nsw i64 %3982, %3981
  %3989 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3990 = sext i32 %3989 to i64
  %3991 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3990
  store volatile i64 %3981, ptr %3991, align 8, !tbaa !9
  %3992 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3993 = add nsw i32 %3992, 1
  %3994 = sext i32 %3993 to i64
  %3995 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3994
  store volatile i64 %3982, ptr %3995, align 8, !tbaa !9
  %3996 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %3997 = add nsw i32 %3996, 2
  %3998 = sext i32 %3997 to i64
  %3999 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %3998
  store volatile i64 %3988, ptr %3999, align 8, !tbaa !9
  %4000 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4001 = add nsw i32 %4000, 3
  store volatile i32 %4001, ptr @P3_is_marked, align 4, !tbaa !5
  br label %4002

4002:                                             ; preds = %3984, %3980, %3976, %3972, %3969, %3966
  %4003 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %4004 = icmp sgt i32 %4003, 4
  br i1 %4004, label %4005, label %4037

4005:                                             ; preds = %4002
  %4006 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4007 = icmp slt i32 %4006, 4
  br i1 %4007, label %4008, label %4037

4008:                                             ; preds = %4005
  %4009 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %4010 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %4011 = icmp eq i64 %4009, %4010
  br i1 %4011, label %4012, label %4037

4012:                                             ; preds = %4008
  %4013 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %4014 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %4015 = icmp eq i64 %4013, %4014
  br i1 %4015, label %4016, label %4037

4016:                                             ; preds = %4012
  %4017 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %4018 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %4019 = icmp sgt i64 %4018, %4017
  br i1 %4019, label %4020, label %4037

4020:                                             ; preds = %4016
  %4021 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %4022 = add nsw i32 %4021, -4
  store volatile i32 %4022, ptr @P2_is_marked, align 4, !tbaa !5
  %4023 = add nsw i64 %4018, %4017
  %4024 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4025 = sext i32 %4024 to i64
  %4026 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %4025
  store volatile i64 %4017, ptr %4026, align 8, !tbaa !9
  %4027 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4028 = add nsw i32 %4027, 1
  %4029 = sext i32 %4028 to i64
  %4030 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %4029
  store volatile i64 %4018, ptr %4030, align 8, !tbaa !9
  %4031 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4032 = add nsw i32 %4031, 2
  %4033 = sext i32 %4032 to i64
  %4034 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %4033
  store volatile i64 %4023, ptr %4034, align 8, !tbaa !9
  %4035 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4036 = add nsw i32 %4035, 3
  store volatile i32 %4036, ptr @P3_is_marked, align 4, !tbaa !5
  br label %4037

4037:                                             ; preds = %4020, %4016, %4012, %4008, %4005, %4002
  %4038 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %4039 = icmp sgt i32 %4038, 4
  br i1 %4039, label %4040, label %4073

4040:                                             ; preds = %4037
  %4041 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4042 = icmp slt i32 %4041, 4
  br i1 %4042, label %4043, label %4073

4043:                                             ; preds = %4040
  %4044 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %4045 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %4046 = icmp eq i64 %4044, %4045
  br i1 %4046, label %4047, label %4073

4047:                                             ; preds = %4043
  %4048 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %4049 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %4050 = icmp eq i64 %4048, %4049
  br i1 %4050, label %4051, label %4073

4051:                                             ; preds = %4047
  %4052 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %4053 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %4054 = icmp sgt i64 %4053, %4052
  br i1 %4054, label %4055, label %4073

4055:                                             ; preds = %4051
  %4056 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  store volatile i64 %4056, ptr @P2_marking_member_0, align 16, !tbaa !9
  %4057 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %4058 = add nsw i32 %4057, -4
  store volatile i32 %4058, ptr @P2_is_marked, align 4, !tbaa !5
  %4059 = add nsw i64 %4053, %4052
  %4060 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4061 = sext i32 %4060 to i64
  %4062 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %4061
  store volatile i64 %4052, ptr %4062, align 8, !tbaa !9
  %4063 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4064 = add nsw i32 %4063, 1
  %4065 = sext i32 %4064 to i64
  %4066 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %4065
  store volatile i64 %4053, ptr %4066, align 8, !tbaa !9
  %4067 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4068 = add nsw i32 %4067, 2
  %4069 = sext i32 %4068 to i64
  %4070 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %4069
  store volatile i64 %4059, ptr %4070, align 8, !tbaa !9
  %4071 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4072 = add nsw i32 %4071, 3
  store volatile i32 %4072, ptr @P3_is_marked, align 4, !tbaa !5
  br label %4073

4073:                                             ; preds = %4055, %4051, %4047, %4043, %4040, %4037
  %4074 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %4075 = icmp sgt i32 %4074, 4
  br i1 %4075, label %4076, label %4109

4076:                                             ; preds = %4073
  %4077 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4078 = icmp slt i32 %4077, 4
  br i1 %4078, label %4079, label %4109

4079:                                             ; preds = %4076
  %4080 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %4081 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %4082 = icmp eq i64 %4080, %4081
  br i1 %4082, label %4083, label %4109

4083:                                             ; preds = %4079
  %4084 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %4085 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %4086 = icmp eq i64 %4084, %4085
  br i1 %4086, label %4087, label %4109

4087:                                             ; preds = %4083
  %4088 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %4089 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %4090 = icmp sgt i64 %4089, %4088
  br i1 %4090, label %4091, label %4109

4091:                                             ; preds = %4087
  %4092 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  store volatile i64 %4092, ptr @P2_marking_member_0, align 16, !tbaa !9
  %4093 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %4094 = add nsw i32 %4093, -4
  store volatile i32 %4094, ptr @P2_is_marked, align 4, !tbaa !5
  %4095 = add nsw i64 %4089, %4088
  %4096 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4097 = sext i32 %4096 to i64
  %4098 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %4097
  store volatile i64 %4088, ptr %4098, align 8, !tbaa !9
  %4099 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4100 = add nsw i32 %4099, 1
  %4101 = sext i32 %4100 to i64
  %4102 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %4101
  store volatile i64 %4089, ptr %4102, align 8, !tbaa !9
  %4103 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4104 = add nsw i32 %4103, 2
  %4105 = sext i32 %4104 to i64
  %4106 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %4105
  store volatile i64 %4095, ptr %4106, align 8, !tbaa !9
  %4107 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4108 = add nsw i32 %4107, 3
  store volatile i32 %4108, ptr @P3_is_marked, align 4, !tbaa !5
  br label %4109

4109:                                             ; preds = %4091, %4087, %4083, %4079, %4076, %4073
  %4110 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %4111 = icmp sgt i32 %4110, 4
  br i1 %4111, label %4112, label %4145

4112:                                             ; preds = %4109
  %4113 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4114 = icmp slt i32 %4113, 4
  br i1 %4114, label %4115, label %4145

4115:                                             ; preds = %4112
  %4116 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %4117 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %4118 = icmp eq i64 %4116, %4117
  br i1 %4118, label %4119, label %4145

4119:                                             ; preds = %4115
  %4120 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %4121 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %4122 = icmp eq i64 %4120, %4121
  br i1 %4122, label %4123, label %4145

4123:                                             ; preds = %4119
  %4124 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %4125 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %4126 = icmp sgt i64 %4125, %4124
  br i1 %4126, label %4127, label %4145

4127:                                             ; preds = %4123
  %4128 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  store volatile i64 %4128, ptr @P2_marking_member_0, align 16, !tbaa !9
  %4129 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %4130 = add nsw i32 %4129, -4
  store volatile i32 %4130, ptr @P2_is_marked, align 4, !tbaa !5
  %4131 = add nsw i64 %4125, %4124
  %4132 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4133 = sext i32 %4132 to i64
  %4134 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %4133
  store volatile i64 %4124, ptr %4134, align 8, !tbaa !9
  %4135 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4136 = add nsw i32 %4135, 1
  %4137 = sext i32 %4136 to i64
  %4138 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %4137
  store volatile i64 %4125, ptr %4138, align 8, !tbaa !9
  %4139 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4140 = add nsw i32 %4139, 2
  %4141 = sext i32 %4140 to i64
  %4142 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %4141
  store volatile i64 %4131, ptr %4142, align 8, !tbaa !9
  %4143 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4144 = add nsw i32 %4143, 3
  store volatile i32 %4144, ptr @P3_is_marked, align 4, !tbaa !5
  br label %4145

4145:                                             ; preds = %4127, %4123, %4119, %4115, %4112, %4109
  %4146 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %4147 = icmp sgt i32 %4146, 4
  br i1 %4147, label %4148, label %4180

4148:                                             ; preds = %4145
  %4149 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4150 = icmp slt i32 %4149, 4
  br i1 %4150, label %4151, label %4180

4151:                                             ; preds = %4148
  %4152 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %4153 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %4154 = icmp eq i64 %4152, %4153
  br i1 %4154, label %4155, label %4180

4155:                                             ; preds = %4151
  %4156 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %4157 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %4158 = icmp eq i64 %4156, %4157
  br i1 %4158, label %4159, label %4180

4159:                                             ; preds = %4155
  %4160 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %4161 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %4162 = icmp sgt i64 %4161, %4160
  br i1 %4162, label %4163, label %4180

4163:                                             ; preds = %4159
  %4164 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %4165 = add nsw i32 %4164, -4
  store volatile i32 %4165, ptr @P2_is_marked, align 4, !tbaa !5
  %4166 = add nsw i64 %4161, %4160
  %4167 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4168 = sext i32 %4167 to i64
  %4169 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %4168
  store volatile i64 %4160, ptr %4169, align 8, !tbaa !9
  %4170 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4171 = add nsw i32 %4170, 1
  %4172 = sext i32 %4171 to i64
  %4173 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %4172
  store volatile i64 %4161, ptr %4173, align 8, !tbaa !9
  %4174 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4175 = add nsw i32 %4174, 2
  %4176 = sext i32 %4175 to i64
  %4177 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %4176
  store volatile i64 %4166, ptr %4177, align 8, !tbaa !9
  %4178 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4179 = add nsw i32 %4178, 3
  store volatile i32 %4179, ptr @P3_is_marked, align 4, !tbaa !5
  br label %4180

4180:                                             ; preds = %4163, %4159, %4155, %4151, %4148, %4145
  %4181 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %4182 = icmp sgt i32 %4181, 4
  br i1 %4182, label %4183, label %4216

4183:                                             ; preds = %4180
  %4184 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4185 = icmp slt i32 %4184, 4
  br i1 %4185, label %4186, label %4216

4186:                                             ; preds = %4183
  %4187 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %4188 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %4189 = icmp eq i64 %4187, %4188
  br i1 %4189, label %4190, label %4216

4190:                                             ; preds = %4186
  %4191 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %4192 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %4193 = icmp eq i64 %4191, %4192
  br i1 %4193, label %4194, label %4216

4194:                                             ; preds = %4190
  %4195 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %4196 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %4197 = icmp sgt i64 %4196, %4195
  br i1 %4197, label %4198, label %4216

4198:                                             ; preds = %4194
  %4199 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  store volatile i64 %4199, ptr @P2_marking_member_0, align 16, !tbaa !9
  %4200 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %4201 = add nsw i32 %4200, -4
  store volatile i32 %4201, ptr @P2_is_marked, align 4, !tbaa !5
  %4202 = add nsw i64 %4196, %4195
  %4203 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4204 = sext i32 %4203 to i64
  %4205 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %4204
  store volatile i64 %4195, ptr %4205, align 8, !tbaa !9
  %4206 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4207 = add nsw i32 %4206, 1
  %4208 = sext i32 %4207 to i64
  %4209 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %4208
  store volatile i64 %4196, ptr %4209, align 8, !tbaa !9
  %4210 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4211 = add nsw i32 %4210, 2
  %4212 = sext i32 %4211 to i64
  %4213 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %4212
  store volatile i64 %4202, ptr %4213, align 8, !tbaa !9
  %4214 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4215 = add nsw i32 %4214, 3
  store volatile i32 %4215, ptr @P3_is_marked, align 4, !tbaa !5
  br label %4216

4216:                                             ; preds = %4198, %4194, %4190, %4186, %4183, %4180
  %4217 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %4218 = icmp sgt i32 %4217, 4
  br i1 %4218, label %4219, label %4251

4219:                                             ; preds = %4216
  %4220 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4221 = icmp slt i32 %4220, 4
  br i1 %4221, label %4222, label %4251

4222:                                             ; preds = %4219
  %4223 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %4224 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %4225 = icmp eq i64 %4223, %4224
  br i1 %4225, label %4226, label %4251

4226:                                             ; preds = %4222
  %4227 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %4228 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %4229 = icmp eq i64 %4227, %4228
  br i1 %4229, label %4230, label %4251

4230:                                             ; preds = %4226
  %4231 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %4232 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %4233 = icmp sgt i64 %4232, %4231
  br i1 %4233, label %4234, label %4251

4234:                                             ; preds = %4230
  %4235 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %4236 = add nsw i32 %4235, -4
  store volatile i32 %4236, ptr @P2_is_marked, align 4, !tbaa !5
  %4237 = add nsw i64 %4232, %4231
  %4238 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4239 = sext i32 %4238 to i64
  %4240 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %4239
  store volatile i64 %4231, ptr %4240, align 8, !tbaa !9
  %4241 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4242 = add nsw i32 %4241, 1
  %4243 = sext i32 %4242 to i64
  %4244 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %4243
  store volatile i64 %4232, ptr %4244, align 8, !tbaa !9
  %4245 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4246 = add nsw i32 %4245, 2
  %4247 = sext i32 %4246 to i64
  %4248 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %4247
  store volatile i64 %4237, ptr %4248, align 8, !tbaa !9
  %4249 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4250 = add nsw i32 %4249, 3
  store volatile i32 %4250, ptr @P3_is_marked, align 4, !tbaa !5
  br label %4251

4251:                                             ; preds = %4234, %4230, %4226, %4222, %4219, %4216
  %4252 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %4253 = icmp sgt i32 %4252, 4
  br i1 %4253, label %4254, label %4287

4254:                                             ; preds = %4251
  %4255 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4256 = icmp slt i32 %4255, 4
  br i1 %4256, label %4257, label %4287

4257:                                             ; preds = %4254
  %4258 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %4259 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %4260 = icmp eq i64 %4258, %4259
  br i1 %4260, label %4261, label %4287

4261:                                             ; preds = %4257
  %4262 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %4263 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %4264 = icmp eq i64 %4262, %4263
  br i1 %4264, label %4265, label %4287

4265:                                             ; preds = %4261
  %4266 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %4267 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %4268 = icmp sgt i64 %4267, %4266
  br i1 %4268, label %4269, label %4287

4269:                                             ; preds = %4265
  %4270 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  store volatile i64 %4270, ptr @P2_marking_member_0, align 16, !tbaa !9
  %4271 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %4272 = add nsw i32 %4271, -4
  store volatile i32 %4272, ptr @P2_is_marked, align 4, !tbaa !5
  %4273 = add nsw i64 %4267, %4266
  %4274 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4275 = sext i32 %4274 to i64
  %4276 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %4275
  store volatile i64 %4266, ptr %4276, align 8, !tbaa !9
  %4277 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4278 = add nsw i32 %4277, 1
  %4279 = sext i32 %4278 to i64
  %4280 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %4279
  store volatile i64 %4267, ptr %4280, align 8, !tbaa !9
  %4281 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4282 = add nsw i32 %4281, 2
  %4283 = sext i32 %4282 to i64
  %4284 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %4283
  store volatile i64 %4273, ptr %4284, align 8, !tbaa !9
  %4285 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4286 = add nsw i32 %4285, 3
  store volatile i32 %4286, ptr @P3_is_marked, align 4, !tbaa !5
  br label %4287

4287:                                             ; preds = %4269, %4265, %4261, %4257, %4254, %4251
  %4288 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %4289 = icmp sgt i32 %4288, 4
  br i1 %4289, label %4290, label %4323

4290:                                             ; preds = %4287
  %4291 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4292 = icmp slt i32 %4291, 4
  br i1 %4292, label %4293, label %4323

4293:                                             ; preds = %4290
  %4294 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %4295 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %4296 = icmp eq i64 %4294, %4295
  br i1 %4296, label %4297, label %4323

4297:                                             ; preds = %4293
  %4298 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %4299 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %4300 = icmp eq i64 %4298, %4299
  br i1 %4300, label %4301, label %4323

4301:                                             ; preds = %4297
  %4302 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %4303 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %4304 = icmp sgt i64 %4303, %4302
  br i1 %4304, label %4305, label %4323

4305:                                             ; preds = %4301
  %4306 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  store volatile i64 %4306, ptr @P2_marking_member_0, align 16, !tbaa !9
  %4307 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %4308 = add nsw i32 %4307, -4
  store volatile i32 %4308, ptr @P2_is_marked, align 4, !tbaa !5
  %4309 = add nsw i64 %4303, %4302
  %4310 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4311 = sext i32 %4310 to i64
  %4312 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %4311
  store volatile i64 %4302, ptr %4312, align 8, !tbaa !9
  %4313 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4314 = add nsw i32 %4313, 1
  %4315 = sext i32 %4314 to i64
  %4316 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %4315
  store volatile i64 %4303, ptr %4316, align 8, !tbaa !9
  %4317 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4318 = add nsw i32 %4317, 2
  %4319 = sext i32 %4318 to i64
  %4320 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %4319
  store volatile i64 %4309, ptr %4320, align 8, !tbaa !9
  %4321 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4322 = add nsw i32 %4321, 3
  store volatile i32 %4322, ptr @P3_is_marked, align 4, !tbaa !5
  br label %4323

4323:                                             ; preds = %4305, %4301, %4297, %4293, %4290, %4287
  %4324 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %4325 = icmp sgt i32 %4324, 4
  br i1 %4325, label %4326, label %4359

4326:                                             ; preds = %4323
  %4327 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4328 = icmp slt i32 %4327, 4
  br i1 %4328, label %4329, label %4359

4329:                                             ; preds = %4326
  %4330 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %4331 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %4332 = icmp eq i64 %4330, %4331
  br i1 %4332, label %4333, label %4359

4333:                                             ; preds = %4329
  %4334 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %4335 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %4336 = icmp eq i64 %4334, %4335
  br i1 %4336, label %4337, label %4359

4337:                                             ; preds = %4333
  %4338 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %4339 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %4340 = icmp sgt i64 %4339, %4338
  br i1 %4340, label %4341, label %4359

4341:                                             ; preds = %4337
  %4342 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  store volatile i64 %4342, ptr @P2_marking_member_0, align 16, !tbaa !9
  %4343 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %4344 = add nsw i32 %4343, -4
  store volatile i32 %4344, ptr @P2_is_marked, align 4, !tbaa !5
  %4345 = add nsw i64 %4339, %4338
  %4346 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4347 = sext i32 %4346 to i64
  %4348 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %4347
  store volatile i64 %4338, ptr %4348, align 8, !tbaa !9
  %4349 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4350 = add nsw i32 %4349, 1
  %4351 = sext i32 %4350 to i64
  %4352 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %4351
  store volatile i64 %4339, ptr %4352, align 8, !tbaa !9
  %4353 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4354 = add nsw i32 %4353, 2
  %4355 = sext i32 %4354 to i64
  %4356 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %4355
  store volatile i64 %4345, ptr %4356, align 8, !tbaa !9
  %4357 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4358 = add nsw i32 %4357, 3
  store volatile i32 %4358, ptr @P3_is_marked, align 4, !tbaa !5
  br label %4359

4359:                                             ; preds = %4341, %4337, %4333, %4329, %4326, %4323
  %4360 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %4361 = icmp sgt i32 %4360, 4
  br i1 %4361, label %4362, label %4394

4362:                                             ; preds = %4359
  %4363 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4364 = icmp slt i32 %4363, 4
  br i1 %4364, label %4365, label %4394

4365:                                             ; preds = %4362
  %4366 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %4367 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %4368 = icmp eq i64 %4366, %4367
  br i1 %4368, label %4369, label %4394

4369:                                             ; preds = %4365
  %4370 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %4371 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %4372 = icmp eq i64 %4370, %4371
  br i1 %4372, label %4373, label %4394

4373:                                             ; preds = %4369
  %4374 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %4375 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %4376 = icmp sgt i64 %4375, %4374
  br i1 %4376, label %4377, label %4394

4377:                                             ; preds = %4373
  %4378 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %4379 = add nsw i32 %4378, -4
  store volatile i32 %4379, ptr @P2_is_marked, align 4, !tbaa !5
  %4380 = add nsw i64 %4375, %4374
  %4381 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4382 = sext i32 %4381 to i64
  %4383 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %4382
  store volatile i64 %4374, ptr %4383, align 8, !tbaa !9
  %4384 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4385 = add nsw i32 %4384, 1
  %4386 = sext i32 %4385 to i64
  %4387 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %4386
  store volatile i64 %4375, ptr %4387, align 8, !tbaa !9
  %4388 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4389 = add nsw i32 %4388, 2
  %4390 = sext i32 %4389 to i64
  %4391 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %4390
  store volatile i64 %4380, ptr %4391, align 8, !tbaa !9
  %4392 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4393 = add nsw i32 %4392, 3
  store volatile i32 %4393, ptr @P3_is_marked, align 4, !tbaa !5
  br label %4394

4394:                                             ; preds = %4377, %4373, %4369, %4365, %4362, %4359
  %4395 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %4396 = icmp sgt i32 %4395, 4
  br i1 %4396, label %4397, label %4430

4397:                                             ; preds = %4394
  %4398 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4399 = icmp slt i32 %4398, 4
  br i1 %4399, label %4400, label %4430

4400:                                             ; preds = %4397
  %4401 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %4402 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %4403 = icmp eq i64 %4401, %4402
  br i1 %4403, label %4404, label %4430

4404:                                             ; preds = %4400
  %4405 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %4406 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %4407 = icmp eq i64 %4405, %4406
  br i1 %4407, label %4408, label %4430

4408:                                             ; preds = %4404
  %4409 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %4410 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %4411 = icmp sgt i64 %4410, %4409
  br i1 %4411, label %4412, label %4430

4412:                                             ; preds = %4408
  %4413 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  store volatile i64 %4413, ptr @P2_marking_member_0, align 16, !tbaa !9
  %4414 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %4415 = add nsw i32 %4414, -4
  store volatile i32 %4415, ptr @P2_is_marked, align 4, !tbaa !5
  %4416 = add nsw i64 %4410, %4409
  %4417 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4418 = sext i32 %4417 to i64
  %4419 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %4418
  store volatile i64 %4409, ptr %4419, align 8, !tbaa !9
  %4420 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4421 = add nsw i32 %4420, 1
  %4422 = sext i32 %4421 to i64
  %4423 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %4422
  store volatile i64 %4410, ptr %4423, align 8, !tbaa !9
  %4424 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4425 = add nsw i32 %4424, 2
  %4426 = sext i32 %4425 to i64
  %4427 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %4426
  store volatile i64 %4416, ptr %4427, align 8, !tbaa !9
  %4428 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4429 = add nsw i32 %4428, 3
  store volatile i32 %4429, ptr @P3_is_marked, align 4, !tbaa !5
  br label %4430

4430:                                             ; preds = %4412, %4408, %4404, %4400, %4397, %4394
  %4431 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %4432 = icmp sgt i32 %4431, 4
  br i1 %4432, label %4433, label %4465

4433:                                             ; preds = %4430
  %4434 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4435 = icmp slt i32 %4434, 4
  br i1 %4435, label %4436, label %4465

4436:                                             ; preds = %4433
  %4437 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %4438 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %4439 = icmp eq i64 %4437, %4438
  br i1 %4439, label %4440, label %4465

4440:                                             ; preds = %4436
  %4441 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %4442 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %4443 = icmp eq i64 %4441, %4442
  br i1 %4443, label %4444, label %4465

4444:                                             ; preds = %4440
  %4445 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %4446 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %4447 = icmp sgt i64 %4446, %4445
  br i1 %4447, label %4448, label %4465

4448:                                             ; preds = %4444
  %4449 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %4450 = add nsw i32 %4449, -4
  store volatile i32 %4450, ptr @P2_is_marked, align 4, !tbaa !5
  %4451 = add nsw i64 %4446, %4445
  %4452 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4453 = sext i32 %4452 to i64
  %4454 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %4453
  store volatile i64 %4445, ptr %4454, align 8, !tbaa !9
  %4455 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4456 = add nsw i32 %4455, 1
  %4457 = sext i32 %4456 to i64
  %4458 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %4457
  store volatile i64 %4446, ptr %4458, align 8, !tbaa !9
  %4459 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4460 = add nsw i32 %4459, 2
  %4461 = sext i32 %4460 to i64
  %4462 = getelementptr inbounds [6 x i64], ptr @P3_marking_member_0, i64 0, i64 %4461
  store volatile i64 %4451, ptr %4462, align 8, !tbaa !9
  %4463 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %4464 = add nsw i32 %4463, 3
  store volatile i32 %4464, ptr @P3_is_marked, align 4, !tbaa !5
  br label %4465

4465:                                             ; preds = %4448, %4444, %4440, %4436, %4433, %4430
  %4466 = add nuw i32 %7, 1
  %4467 = icmp eq i32 %4466, %1
  br i1 %4467, label %4468, label %6, !llvm.loop !11

4468:                                             ; preds = %4465
  %4469 = add nuw nsw i32 %5, 1
  %4470 = icmp eq i32 %4469, %0
  br i1 %4470, label %4471, label %4, !llvm.loop !13

4471:                                             ; preds = %4468, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind uwtable
define dso_local noundef i32 @benchmark() local_unnamed_addr #3 {
  tail call fastcc void @benchmark_body(i32 noundef 1232, i32 noundef 20)
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, argmem: none) uwtable
define dso_local range(i32 0, 2) i32 @verify_benchmark(i32 noundef %0) local_unnamed_addr #4 {
  %2 = load volatile i32, ptr @P1_is_marked, align 4, !tbaa !5
  %3 = icmp eq i32 %2, 3
  br i1 %3, label %4, label %53

4:                                                ; preds = %1
  %5 = load volatile i32, ptr @P2_is_marked, align 4, !tbaa !5
  %6 = icmp eq i32 %5, 5
  br i1 %6, label %7, label %53

7:                                                ; preds = %4
  %8 = load volatile i32, ptr @P3_is_marked, align 4, !tbaa !5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %53

10:                                               ; preds = %7
  %11 = load volatile i64, ptr @P1_marking_member_0, align 16, !tbaa !9
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %34, label %53

13:                                               ; preds = %37
  %14 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P1_marking_member_0, i64 8), align 8, !tbaa !9
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %53

16:                                               ; preds = %13
  %17 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 8), align 8, !tbaa !9
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %53

19:                                               ; preds = %16
  %20 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P3_marking_member_0, i64 8), align 8, !tbaa !9
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %53

22:                                               ; preds = %19
  %23 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P1_marking_member_0, i64 16), align 16, !tbaa !9
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %53

25:                                               ; preds = %22
  %26 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 16), align 16, !tbaa !9
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %53

28:                                               ; preds = %25
  %29 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P3_marking_member_0, i64 16), align 16, !tbaa !9
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %53

31:                                               ; preds = %28
  %32 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 24), align 8, !tbaa !9
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %50, label %53

34:                                               ; preds = %10
  %35 = load volatile i64, ptr @P2_marking_member_0, align 16, !tbaa !9
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %34
  %38 = load volatile i64, ptr @P3_marking_member_0, align 16, !tbaa !9
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %13, label %53

40:                                               ; preds = %50
  %41 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P2_marking_member_0, i64 32), align 16, !tbaa !9
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %40
  %44 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P3_marking_member_0, i64 32), align 16, !tbaa !9
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P3_marking_member_0, i64 40), align 8, !tbaa !9
  %48 = icmp eq i64 %47, 0
  %49 = zext i1 %48 to i32
  br label %53

50:                                               ; preds = %31
  %51 = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @P3_marking_member_0, i64 24), align 8, !tbaa !9
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %40, label %53

53:                                               ; preds = %10, %34, %37, %13, %16, %19, %22, %25, %28, %31, %50, %40, %43, %46, %1, %4, %7
  %54 = phi i32 [ 0, %7 ], [ 0, %4 ], [ 0, %1 ], [ %49, %46 ], [ 0, %43 ], [ 0, %40 ], [ 0, %50 ], [ 0, %31 ], [ 0, %28 ], [ 0, %25 ], [ 0, %22 ], [ 0, %19 ], [ 0, %16 ], [ 0, %13 ], [ 0, %37 ], [ 0, %34 ], [ 0, %10 ]
  ret i32 %54
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nounwind memory(readwrite, argmem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nounwind willreturn memory(readwrite, argmem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
