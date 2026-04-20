; ModuleID = 'cBench/network_patricia/src/patricia.c'
source_filename = "cBench/network_patricia/src/patricia.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptree = type { i64, ptr, i8, i8, ptr, ptr }
%struct.ptree_mask = type { i64, ptr }

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @pat_insert(ptr noundef %0, ptr noundef %1) #0 !dbg !19 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !34, !DIExpression(), !35)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !36, !DIExpression(), !37)
    #dbg_declare(ptr %6, !38, !DIExpression(), !39)
    #dbg_declare(ptr %7, !40, !DIExpression(), !41)
    #dbg_declare(ptr %8, !42, !DIExpression(), !43)
    #dbg_declare(ptr %9, !44, !DIExpression(), !46)
    #dbg_declare(ptr %10, !47, !DIExpression(), !48)
  %11 = load ptr, ptr %5, align 8, !dbg !49
  %12 = icmp ne ptr %11, null, !dbg !49
  br i1 %12, label %13, label %21, !dbg !51

13:                                               ; preds = %2
  %14 = load ptr, ptr %4, align 8, !dbg !52
  %15 = icmp ne ptr %14, null, !dbg !52
  br i1 %15, label %16, label %21, !dbg !53

16:                                               ; preds = %13
  %17 = load ptr, ptr %4, align 8, !dbg !54
  %18 = getelementptr inbounds nuw %struct.ptree, ptr %17, i32 0, i32 1, !dbg !55
  %19 = load ptr, ptr %18, align 8, !dbg !55
  %20 = icmp ne ptr %19, null, !dbg !54
  br i1 %20, label %22, label %21, !dbg !53

21:                                               ; preds = %16, %13, %2
  store ptr null, ptr %3, align 8, !dbg !56
  br label %250, !dbg !56

22:                                               ; preds = %16
  %23 = load ptr, ptr %4, align 8, !dbg !57
  %24 = getelementptr inbounds nuw %struct.ptree, ptr %23, i32 0, i32 1, !dbg !58
  %25 = load ptr, ptr %24, align 8, !dbg !58
  %26 = getelementptr inbounds nuw %struct.ptree_mask, ptr %25, i32 0, i32 0, !dbg !59
  %27 = load i64, ptr %26, align 8, !dbg !59
  %28 = load ptr, ptr %4, align 8, !dbg !60
  %29 = getelementptr inbounds nuw %struct.ptree, ptr %28, i32 0, i32 0, !dbg !61
  %30 = load i64, ptr %29, align 8, !dbg !62
  %31 = and i64 %30, %27, !dbg !62
  store i64 %31, ptr %29, align 8, !dbg !62
  %32 = load ptr, ptr %5, align 8, !dbg !63
  store ptr %32, ptr %6, align 8, !dbg !64
  br label %33, !dbg !65

33:                                               ; preds = %57, %22
  %34 = load ptr, ptr %6, align 8, !dbg !66
  %35 = getelementptr inbounds nuw %struct.ptree, ptr %34, i32 0, i32 3, !dbg !68
  %36 = load i8, ptr %35, align 1, !dbg !68
  %37 = sext i8 %36 to i32, !dbg !66
  store i32 %37, ptr %9, align 4, !dbg !69
  %38 = load ptr, ptr %6, align 8, !dbg !70
  %39 = getelementptr inbounds nuw %struct.ptree, ptr %38, i32 0, i32 3, !dbg !71
  %40 = load i8, ptr %39, align 1, !dbg !71
  %41 = sext i8 %40 to i32, !dbg !70
  %42 = load ptr, ptr %4, align 8, !dbg !72
  %43 = getelementptr inbounds nuw %struct.ptree, ptr %42, i32 0, i32 0, !dbg !73
  %44 = load i64, ptr %43, align 8, !dbg !73
  %45 = call i64 @bit(i32 noundef %41, i64 noundef %44), !dbg !74
  %46 = icmp ne i64 %45, 0, !dbg !74
  br i1 %46, label %47, label %51, !dbg !74

47:                                               ; preds = %33
  %48 = load ptr, ptr %6, align 8, !dbg !75
  %49 = getelementptr inbounds nuw %struct.ptree, ptr %48, i32 0, i32 5, !dbg !76
  %50 = load ptr, ptr %49, align 8, !dbg !76
  br label %55, !dbg !74

51:                                               ; preds = %33
  %52 = load ptr, ptr %6, align 8, !dbg !77
  %53 = getelementptr inbounds nuw %struct.ptree, ptr %52, i32 0, i32 4, !dbg !78
  %54 = load ptr, ptr %53, align 8, !dbg !78
  br label %55, !dbg !74

55:                                               ; preds = %51, %47
  %56 = phi ptr [ %50, %47 ], [ %54, %51 ], !dbg !74
  store ptr %56, ptr %6, align 8, !dbg !79
  br label %57, !dbg !80

57:                                               ; preds = %55
  %58 = load i32, ptr %9, align 4, !dbg !81
  %59 = load ptr, ptr %6, align 8, !dbg !82
  %60 = getelementptr inbounds nuw %struct.ptree, ptr %59, i32 0, i32 3, !dbg !83
  %61 = load i8, ptr %60, align 1, !dbg !83
  %62 = sext i8 %61 to i32, !dbg !82
  %63 = icmp slt i32 %58, %62, !dbg !84
  br i1 %63, label %33, label %64, !dbg !80, !llvm.loop !85

64:                                               ; preds = %57
  %65 = load ptr, ptr %4, align 8, !dbg !88
  %66 = getelementptr inbounds nuw %struct.ptree, ptr %65, i32 0, i32 0, !dbg !90
  %67 = load i64, ptr %66, align 8, !dbg !90
  %68 = load ptr, ptr %6, align 8, !dbg !91
  %69 = getelementptr inbounds nuw %struct.ptree, ptr %68, i32 0, i32 0, !dbg !92
  %70 = load i64, ptr %69, align 8, !dbg !92
  %71 = icmp eq i64 %67, %70, !dbg !93
  br i1 %71, label %72, label %196, !dbg !93

72:                                               ; preds = %64
  store i32 0, ptr %9, align 4, !dbg !94
  br label %73, !dbg !97

73:                                               ; preds = %114, %72
  %74 = load i32, ptr %9, align 4, !dbg !98
  %75 = load ptr, ptr %6, align 8, !dbg !100
  %76 = getelementptr inbounds nuw %struct.ptree, ptr %75, i32 0, i32 2, !dbg !101
  %77 = load i8, ptr %76, align 8, !dbg !101
  %78 = zext i8 %77 to i32, !dbg !100
  %79 = icmp slt i32 %74, %78, !dbg !102
  br i1 %79, label %80, label %117, !dbg !103

80:                                               ; preds = %73
  %81 = load ptr, ptr %4, align 8, !dbg !104
  %82 = getelementptr inbounds nuw %struct.ptree, ptr %81, i32 0, i32 1, !dbg !107
  %83 = load ptr, ptr %82, align 8, !dbg !107
  %84 = getelementptr inbounds nuw %struct.ptree_mask, ptr %83, i32 0, i32 0, !dbg !108
  %85 = load i64, ptr %84, align 8, !dbg !108
  %86 = load ptr, ptr %6, align 8, !dbg !109
  %87 = getelementptr inbounds nuw %struct.ptree, ptr %86, i32 0, i32 1, !dbg !110
  %88 = load ptr, ptr %87, align 8, !dbg !110
  %89 = load i32, ptr %9, align 4, !dbg !111
  %90 = sext i32 %89 to i64, !dbg !109
  %91 = getelementptr inbounds %struct.ptree_mask, ptr %88, i64 %90, !dbg !109
  %92 = getelementptr inbounds nuw %struct.ptree_mask, ptr %91, i32 0, i32 0, !dbg !112
  %93 = load i64, ptr %92, align 8, !dbg !112
  %94 = icmp eq i64 %85, %93, !dbg !113
  br i1 %94, label %95, label %113, !dbg !113

95:                                               ; preds = %80
  %96 = load ptr, ptr %4, align 8, !dbg !114
  %97 = getelementptr inbounds nuw %struct.ptree, ptr %96, i32 0, i32 1, !dbg !116
  %98 = load ptr, ptr %97, align 8, !dbg !116
  %99 = getelementptr inbounds nuw %struct.ptree_mask, ptr %98, i32 0, i32 1, !dbg !117
  %100 = load ptr, ptr %99, align 8, !dbg !117
  %101 = load ptr, ptr %6, align 8, !dbg !118
  %102 = getelementptr inbounds nuw %struct.ptree, ptr %101, i32 0, i32 1, !dbg !119
  %103 = load ptr, ptr %102, align 8, !dbg !119
  %104 = load i32, ptr %9, align 4, !dbg !120
  %105 = sext i32 %104 to i64, !dbg !118
  %106 = getelementptr inbounds %struct.ptree_mask, ptr %103, i64 %105, !dbg !118
  %107 = getelementptr inbounds nuw %struct.ptree_mask, ptr %106, i32 0, i32 1, !dbg !121
  store ptr %100, ptr %107, align 8, !dbg !122
  %108 = load ptr, ptr %4, align 8, !dbg !123
  %109 = getelementptr inbounds nuw %struct.ptree, ptr %108, i32 0, i32 1, !dbg !124
  %110 = load ptr, ptr %109, align 8, !dbg !124
  call void @free(ptr noundef %110) #4, !dbg !125
  %111 = load ptr, ptr %4, align 8, !dbg !126
  call void @free(ptr noundef %111) #4, !dbg !127
  store ptr null, ptr %4, align 8, !dbg !128
  %112 = load ptr, ptr %6, align 8, !dbg !129
  store ptr %112, ptr %3, align 8, !dbg !130
  br label %250, !dbg !130

113:                                              ; preds = %80
  br label %114, !dbg !131

114:                                              ; preds = %113
  %115 = load i32, ptr %9, align 4, !dbg !132
  %116 = add nsw i32 %115, 1, !dbg !132
  store i32 %116, ptr %9, align 4, !dbg !132
  br label %73, !dbg !133, !llvm.loop !134

117:                                              ; preds = %73
  %118 = load ptr, ptr %6, align 8, !dbg !136
  %119 = getelementptr inbounds nuw %struct.ptree, ptr %118, i32 0, i32 2, !dbg !137
  %120 = load i8, ptr %119, align 8, !dbg !137
  %121 = zext i8 %120 to i32, !dbg !136
  %122 = add nsw i32 %121, 1, !dbg !138
  %123 = sext i32 %122 to i64, !dbg !139
  %124 = mul i64 16, %123, !dbg !140
  %125 = call noalias ptr @malloc(i64 noundef %124) #5, !dbg !141
  store ptr %125, ptr %7, align 8, !dbg !142
  store i32 0, ptr %10, align 4, !dbg !143
  store i32 0, ptr %9, align 4, !dbg !144
  %126 = load ptr, ptr %7, align 8, !dbg !146
  store ptr %126, ptr %8, align 8, !dbg !147
  br label %127, !dbg !148

127:                                              ; preds = %169, %117
  %128 = load i32, ptr %9, align 4, !dbg !149
  %129 = load ptr, ptr %6, align 8, !dbg !151
  %130 = getelementptr inbounds nuw %struct.ptree, ptr %129, i32 0, i32 2, !dbg !152
  %131 = load i8, ptr %130, align 8, !dbg !152
  %132 = zext i8 %131 to i32, !dbg !151
  %133 = icmp slt i32 %128, %132, !dbg !153
  br i1 %133, label %134, label %172, !dbg !154

134:                                              ; preds = %127
  %135 = load ptr, ptr %4, align 8, !dbg !155
  %136 = getelementptr inbounds nuw %struct.ptree, ptr %135, i32 0, i32 1, !dbg !158
  %137 = load ptr, ptr %136, align 8, !dbg !158
  %138 = getelementptr inbounds nuw %struct.ptree_mask, ptr %137, i32 0, i32 0, !dbg !159
  %139 = load i64, ptr %138, align 8, !dbg !159
  %140 = load ptr, ptr %6, align 8, !dbg !160
  %141 = getelementptr inbounds nuw %struct.ptree, ptr %140, i32 0, i32 1, !dbg !161
  %142 = load ptr, ptr %141, align 8, !dbg !161
  %143 = load i32, ptr %9, align 4, !dbg !162
  %144 = sext i32 %143 to i64, !dbg !160
  %145 = getelementptr inbounds %struct.ptree_mask, ptr %142, i64 %144, !dbg !160
  %146 = getelementptr inbounds nuw %struct.ptree_mask, ptr %145, i32 0, i32 0, !dbg !163
  %147 = load i64, ptr %146, align 8, !dbg !163
  %148 = icmp ugt i64 %139, %147, !dbg !164
  br i1 %148, label %149, label %159, !dbg !164

149:                                              ; preds = %134
  %150 = load ptr, ptr %8, align 8, !dbg !165
  %151 = load ptr, ptr %6, align 8, !dbg !167
  %152 = getelementptr inbounds nuw %struct.ptree, ptr %151, i32 0, i32 1, !dbg !168
  %153 = load ptr, ptr %152, align 8, !dbg !168
  %154 = load i32, ptr %9, align 4, !dbg !169
  %155 = sext i32 %154 to i64, !dbg !170
  %156 = getelementptr inbounds %struct.ptree_mask, ptr %153, i64 %155, !dbg !170
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %150, ptr align 8 %156, i64 16, i1 false), !dbg !171
  %157 = load i32, ptr %9, align 4, !dbg !172
  %158 = add nsw i32 %157, 1, !dbg !172
  store i32 %158, ptr %9, align 4, !dbg !172
  br label %168, !dbg !173

159:                                              ; preds = %134
  %160 = load ptr, ptr %8, align 8, !dbg !174
  %161 = load ptr, ptr %4, align 8, !dbg !176
  %162 = getelementptr inbounds nuw %struct.ptree, ptr %161, i32 0, i32 1, !dbg !177
  %163 = load ptr, ptr %162, align 8, !dbg !177
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %160, ptr align 8 %163, i64 16, i1 false), !dbg !178
  %164 = load ptr, ptr %4, align 8, !dbg !179
  %165 = getelementptr inbounds nuw %struct.ptree, ptr %164, i32 0, i32 1, !dbg !180
  %166 = load ptr, ptr %165, align 8, !dbg !180
  %167 = getelementptr inbounds nuw %struct.ptree_mask, ptr %166, i32 0, i32 0, !dbg !181
  store i64 4294967295, ptr %167, align 8, !dbg !182
  store i32 1, ptr %10, align 4, !dbg !183
  br label %168

168:                                              ; preds = %159, %149
  br label %169, !dbg !184

169:                                              ; preds = %168
  %170 = load ptr, ptr %8, align 8, !dbg !185
  %171 = getelementptr inbounds nuw %struct.ptree_mask, ptr %170, i32 1, !dbg !185
  store ptr %171, ptr %8, align 8, !dbg !185
  br label %127, !dbg !186, !llvm.loop !187

172:                                              ; preds = %127
  %173 = load i32, ptr %10, align 4, !dbg !189
  %174 = icmp ne i32 %173, 0, !dbg !189
  br i1 %174, label %180, label %175, !dbg !191

175:                                              ; preds = %172
  %176 = load ptr, ptr %8, align 8, !dbg !192
  %177 = load ptr, ptr %4, align 8, !dbg !194
  %178 = getelementptr inbounds nuw %struct.ptree, ptr %177, i32 0, i32 1, !dbg !195
  %179 = load ptr, ptr %178, align 8, !dbg !195
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %176, ptr align 8 %179, i64 16, i1 false), !dbg !196
  br label %180, !dbg !197

180:                                              ; preds = %175, %172
  %181 = load ptr, ptr %4, align 8, !dbg !198
  %182 = getelementptr inbounds nuw %struct.ptree, ptr %181, i32 0, i32 1, !dbg !199
  %183 = load ptr, ptr %182, align 8, !dbg !199
  call void @free(ptr noundef %183) #4, !dbg !200
  %184 = load ptr, ptr %4, align 8, !dbg !201
  call void @free(ptr noundef %184) #4, !dbg !202
  store ptr null, ptr %4, align 8, !dbg !203
  %185 = load ptr, ptr %6, align 8, !dbg !204
  %186 = getelementptr inbounds nuw %struct.ptree, ptr %185, i32 0, i32 2, !dbg !205
  %187 = load i8, ptr %186, align 8, !dbg !206
  %188 = add i8 %187, 1, !dbg !206
  store i8 %188, ptr %186, align 8, !dbg !206
  %189 = load ptr, ptr %6, align 8, !dbg !207
  %190 = getelementptr inbounds nuw %struct.ptree, ptr %189, i32 0, i32 1, !dbg !208
  %191 = load ptr, ptr %190, align 8, !dbg !208
  call void @free(ptr noundef %191) #4, !dbg !209
  %192 = load ptr, ptr %7, align 8, !dbg !210
  %193 = load ptr, ptr %6, align 8, !dbg !211
  %194 = getelementptr inbounds nuw %struct.ptree, ptr %193, i32 0, i32 1, !dbg !212
  store ptr %192, ptr %194, align 8, !dbg !213
  %195 = load ptr, ptr %6, align 8, !dbg !214
  store ptr %195, ptr %3, align 8, !dbg !215
  br label %250, !dbg !215

196:                                              ; preds = %64
  store i32 1, ptr %9, align 4, !dbg !216
  br label %197, !dbg !218

197:                                              ; preds = %215, %196
  %198 = load i32, ptr %9, align 4, !dbg !219
  %199 = icmp slt i32 %198, 32, !dbg !221
  br i1 %199, label %200, label %212, !dbg !222

200:                                              ; preds = %197
  %201 = load i32, ptr %9, align 4, !dbg !223
  %202 = load ptr, ptr %4, align 8, !dbg !224
  %203 = getelementptr inbounds nuw %struct.ptree, ptr %202, i32 0, i32 0, !dbg !225
  %204 = load i64, ptr %203, align 8, !dbg !225
  %205 = call i64 @bit(i32 noundef %201, i64 noundef %204), !dbg !226
  %206 = load i32, ptr %9, align 4, !dbg !227
  %207 = load ptr, ptr %6, align 8, !dbg !228
  %208 = getelementptr inbounds nuw %struct.ptree, ptr %207, i32 0, i32 0, !dbg !229
  %209 = load i64, ptr %208, align 8, !dbg !229
  %210 = call i64 @bit(i32 noundef %206, i64 noundef %209), !dbg !230
  %211 = icmp eq i64 %205, %210, !dbg !231
  br label %212

212:                                              ; preds = %200, %197
  %213 = phi i1 [ false, %197 ], [ %211, %200 ], !dbg !232
  br i1 %213, label %214, label %218, !dbg !233

214:                                              ; preds = %212
  br label %215, !dbg !233

215:                                              ; preds = %214
  %216 = load i32, ptr %9, align 4, !dbg !234
  %217 = add nsw i32 %216, 1, !dbg !234
  store i32 %217, ptr %9, align 4, !dbg !234
  br label %197, !dbg !235, !llvm.loop !236

218:                                              ; preds = %212
  %219 = load ptr, ptr %5, align 8, !dbg !238
  %220 = getelementptr inbounds nuw %struct.ptree, ptr %219, i32 0, i32 3, !dbg !240
  %221 = load i8, ptr %220, align 1, !dbg !240
  %222 = sext i8 %221 to i32, !dbg !238
  %223 = load ptr, ptr %4, align 8, !dbg !241
  %224 = getelementptr inbounds nuw %struct.ptree, ptr %223, i32 0, i32 0, !dbg !242
  %225 = load i64, ptr %224, align 8, !dbg !242
  %226 = call i64 @bit(i32 noundef %222, i64 noundef %225), !dbg !243
  %227 = icmp ne i64 %226, 0, !dbg !243
  br i1 %227, label %228, label %238, !dbg !243

228:                                              ; preds = %218
  %229 = load ptr, ptr %5, align 8, !dbg !244
  %230 = getelementptr inbounds nuw %struct.ptree, ptr %229, i32 0, i32 5, !dbg !245
  %231 = load ptr, ptr %230, align 8, !dbg !245
  %232 = load ptr, ptr %4, align 8, !dbg !246
  %233 = load i32, ptr %9, align 4, !dbg !247
  %234 = load ptr, ptr %5, align 8, !dbg !248
  %235 = call ptr @insertR(ptr noundef %231, ptr noundef %232, i32 noundef %233, ptr noundef %234), !dbg !249
  %236 = load ptr, ptr %5, align 8, !dbg !250
  %237 = getelementptr inbounds nuw %struct.ptree, ptr %236, i32 0, i32 5, !dbg !251
  store ptr %235, ptr %237, align 8, !dbg !252
  br label %248, !dbg !250

238:                                              ; preds = %218
  %239 = load ptr, ptr %5, align 8, !dbg !253
  %240 = getelementptr inbounds nuw %struct.ptree, ptr %239, i32 0, i32 4, !dbg !254
  %241 = load ptr, ptr %240, align 8, !dbg !254
  %242 = load ptr, ptr %4, align 8, !dbg !255
  %243 = load i32, ptr %9, align 4, !dbg !256
  %244 = load ptr, ptr %5, align 8, !dbg !257
  %245 = call ptr @insertR(ptr noundef %241, ptr noundef %242, i32 noundef %243, ptr noundef %244), !dbg !258
  %246 = load ptr, ptr %5, align 8, !dbg !259
  %247 = getelementptr inbounds nuw %struct.ptree, ptr %246, i32 0, i32 4, !dbg !260
  store ptr %245, ptr %247, align 8, !dbg !261
  br label %248

248:                                              ; preds = %238, %228
  %249 = load ptr, ptr %4, align 8, !dbg !262
  store ptr %249, ptr %3, align 8, !dbg !263
  br label %250, !dbg !263

250:                                              ; preds = %248, %180, %95, %21
  %251 = load ptr, ptr %3, align 8, !dbg !264
  ret ptr %251, !dbg !264
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @bit(i32 noundef %0, i64 noundef %1) #0 !dbg !265 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, ptr %3, align 4
    #dbg_declare(ptr %3, !268, !DIExpression(), !269)
  store i64 %1, ptr %4, align 8
    #dbg_declare(ptr %4, !270, !DIExpression(), !271)
  %5 = load i64, ptr %4, align 8, !dbg !272
  %6 = load i32, ptr %3, align 4, !dbg !273
  %7 = sub nsw i32 31, %6, !dbg !274
  %8 = shl i32 1, %7, !dbg !275
  %9 = sext i32 %8 to i64, !dbg !276
  %10 = and i64 %5, %9, !dbg !277
  ret i64 %10, !dbg !278
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #1

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define internal ptr @insertR(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 !dbg !279 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
    #dbg_declare(ptr %6, !282, !DIExpression(), !283)
  store ptr %1, ptr %7, align 8
    #dbg_declare(ptr %7, !284, !DIExpression(), !285)
  store i32 %2, ptr %8, align 4
    #dbg_declare(ptr %8, !286, !DIExpression(), !287)
  store ptr %3, ptr %9, align 8
    #dbg_declare(ptr %9, !288, !DIExpression(), !289)
  %10 = load ptr, ptr %6, align 8, !dbg !290
  %11 = getelementptr inbounds nuw %struct.ptree, ptr %10, i32 0, i32 3, !dbg !292
  %12 = load i8, ptr %11, align 1, !dbg !292
  %13 = sext i8 %12 to i32, !dbg !290
  %14 = load i32, ptr %8, align 4, !dbg !293
  %15 = icmp sge i32 %13, %14, !dbg !294
  br i1 %15, label %26, label %16, !dbg !295

16:                                               ; preds = %4
  %17 = load ptr, ptr %6, align 8, !dbg !296
  %18 = getelementptr inbounds nuw %struct.ptree, ptr %17, i32 0, i32 3, !dbg !297
  %19 = load i8, ptr %18, align 1, !dbg !297
  %20 = sext i8 %19 to i32, !dbg !296
  %21 = load ptr, ptr %9, align 8, !dbg !298
  %22 = getelementptr inbounds nuw %struct.ptree, ptr %21, i32 0, i32 3, !dbg !299
  %23 = load i8, ptr %22, align 1, !dbg !299
  %24 = sext i8 %23 to i32, !dbg !298
  %25 = icmp sle i32 %20, %24, !dbg !300
  br i1 %25, label %26, label %60, !dbg !295

26:                                               ; preds = %16, %4
  %27 = load i32, ptr %8, align 4, !dbg !301
  %28 = trunc i32 %27 to i8, !dbg !301
  %29 = load ptr, ptr %7, align 8, !dbg !303
  %30 = getelementptr inbounds nuw %struct.ptree, ptr %29, i32 0, i32 3, !dbg !304
  store i8 %28, ptr %30, align 1, !dbg !305
  %31 = load i32, ptr %8, align 4, !dbg !306
  %32 = load ptr, ptr %7, align 8, !dbg !307
  %33 = getelementptr inbounds nuw %struct.ptree, ptr %32, i32 0, i32 0, !dbg !308
  %34 = load i64, ptr %33, align 8, !dbg !308
  %35 = call i64 @bit(i32 noundef %31, i64 noundef %34), !dbg !309
  %36 = icmp ne i64 %35, 0, !dbg !309
  br i1 %36, label %37, label %39, !dbg !309

37:                                               ; preds = %26
  %38 = load ptr, ptr %6, align 8, !dbg !310
  br label %41, !dbg !309

39:                                               ; preds = %26
  %40 = load ptr, ptr %7, align 8, !dbg !311
  br label %41, !dbg !309

41:                                               ; preds = %39, %37
  %42 = phi ptr [ %38, %37 ], [ %40, %39 ], !dbg !309
  %43 = load ptr, ptr %7, align 8, !dbg !312
  %44 = getelementptr inbounds nuw %struct.ptree, ptr %43, i32 0, i32 4, !dbg !313
  store ptr %42, ptr %44, align 8, !dbg !314
  %45 = load i32, ptr %8, align 4, !dbg !315
  %46 = load ptr, ptr %7, align 8, !dbg !316
  %47 = getelementptr inbounds nuw %struct.ptree, ptr %46, i32 0, i32 0, !dbg !317
  %48 = load i64, ptr %47, align 8, !dbg !317
  %49 = call i64 @bit(i32 noundef %45, i64 noundef %48), !dbg !318
  %50 = icmp ne i64 %49, 0, !dbg !318
  br i1 %50, label %51, label %53, !dbg !318

51:                                               ; preds = %41
  %52 = load ptr, ptr %7, align 8, !dbg !319
  br label %55, !dbg !318

53:                                               ; preds = %41
  %54 = load ptr, ptr %6, align 8, !dbg !320
  br label %55, !dbg !318

55:                                               ; preds = %53, %51
  %56 = phi ptr [ %52, %51 ], [ %54, %53 ], !dbg !318
  %57 = load ptr, ptr %7, align 8, !dbg !321
  %58 = getelementptr inbounds nuw %struct.ptree, ptr %57, i32 0, i32 5, !dbg !322
  store ptr %56, ptr %58, align 8, !dbg !323
  %59 = load ptr, ptr %7, align 8, !dbg !324
  store ptr %59, ptr %5, align 8, !dbg !325
  br label %92, !dbg !325

60:                                               ; preds = %16
  %61 = load ptr, ptr %6, align 8, !dbg !326
  %62 = getelementptr inbounds nuw %struct.ptree, ptr %61, i32 0, i32 3, !dbg !328
  %63 = load i8, ptr %62, align 1, !dbg !328
  %64 = sext i8 %63 to i32, !dbg !326
  %65 = load ptr, ptr %7, align 8, !dbg !329
  %66 = getelementptr inbounds nuw %struct.ptree, ptr %65, i32 0, i32 0, !dbg !330
  %67 = load i64, ptr %66, align 8, !dbg !330
  %68 = call i64 @bit(i32 noundef %64, i64 noundef %67), !dbg !331
  %69 = icmp ne i64 %68, 0, !dbg !331
  br i1 %69, label %70, label %80, !dbg !331

70:                                               ; preds = %60
  %71 = load ptr, ptr %6, align 8, !dbg !332
  %72 = getelementptr inbounds nuw %struct.ptree, ptr %71, i32 0, i32 5, !dbg !333
  %73 = load ptr, ptr %72, align 8, !dbg !333
  %74 = load ptr, ptr %7, align 8, !dbg !334
  %75 = load i32, ptr %8, align 4, !dbg !335
  %76 = load ptr, ptr %6, align 8, !dbg !336
  %77 = call ptr @insertR(ptr noundef %73, ptr noundef %74, i32 noundef %75, ptr noundef %76), !dbg !337
  %78 = load ptr, ptr %6, align 8, !dbg !338
  %79 = getelementptr inbounds nuw %struct.ptree, ptr %78, i32 0, i32 5, !dbg !339
  store ptr %77, ptr %79, align 8, !dbg !340
  br label %90, !dbg !338

80:                                               ; preds = %60
  %81 = load ptr, ptr %6, align 8, !dbg !341
  %82 = getelementptr inbounds nuw %struct.ptree, ptr %81, i32 0, i32 4, !dbg !342
  %83 = load ptr, ptr %82, align 8, !dbg !342
  %84 = load ptr, ptr %7, align 8, !dbg !343
  %85 = load i32, ptr %8, align 4, !dbg !344
  %86 = load ptr, ptr %6, align 8, !dbg !345
  %87 = call ptr @insertR(ptr noundef %83, ptr noundef %84, i32 noundef %85, ptr noundef %86), !dbg !346
  %88 = load ptr, ptr %6, align 8, !dbg !347
  %89 = getelementptr inbounds nuw %struct.ptree, ptr %88, i32 0, i32 4, !dbg !348
  store ptr %87, ptr %89, align 8, !dbg !349
  br label %90

90:                                               ; preds = %80, %70
  %91 = load ptr, ptr %6, align 8, !dbg !350
  store ptr %91, ptr %5, align 8, !dbg !351
  br label %92, !dbg !351

92:                                               ; preds = %90, %55
  %93 = load ptr, ptr %5, align 8, !dbg !352
  ret ptr %93, !dbg !352
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @pat_remove(ptr noundef %0, ptr noundef %1) #0 !dbg !353 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !356, !DIExpression(), !357)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !358, !DIExpression(), !359)
    #dbg_declare(ptr %6, !360, !DIExpression(), !361)
    #dbg_declare(ptr %7, !362, !DIExpression(), !363)
    #dbg_declare(ptr %8, !364, !DIExpression(), !365)
    #dbg_declare(ptr %9, !366, !DIExpression(), !367)
    #dbg_declare(ptr %10, !368, !DIExpression(), !369)
    #dbg_declare(ptr %11, !370, !DIExpression(), !371)
    #dbg_declare(ptr %12, !372, !DIExpression(), !373)
    #dbg_declare(ptr %13, !374, !DIExpression(), !375)
  %14 = load ptr, ptr %4, align 8, !dbg !376
  %15 = icmp ne ptr %14, null, !dbg !376
  br i1 %15, label %16, label %24, !dbg !378

16:                                               ; preds = %2
  %17 = load ptr, ptr %4, align 8, !dbg !379
  %18 = getelementptr inbounds nuw %struct.ptree, ptr %17, i32 0, i32 1, !dbg !380
  %19 = load ptr, ptr %18, align 8, !dbg !380
  %20 = icmp ne ptr %19, null, !dbg !379
  br i1 %20, label %21, label %24, !dbg !381

21:                                               ; preds = %16
  %22 = load ptr, ptr %10, align 8, !dbg !382
  %23 = icmp ne ptr %22, null, !dbg !382
  br i1 %23, label %25, label %24, !dbg !381

24:                                               ; preds = %21, %16, %2
  store i32 0, ptr %3, align 4, !dbg !383
  br label %331, !dbg !383

25:                                               ; preds = %21
  %26 = load ptr, ptr %5, align 8, !dbg !384
  store ptr %26, ptr %10, align 8, !dbg !385
  store ptr %26, ptr %6, align 8, !dbg !386
  store ptr %26, ptr %7, align 8, !dbg !387
  br label %27, !dbg !388

27:                                               ; preds = %53, %25
  %28 = load ptr, ptr %10, align 8, !dbg !389
  %29 = getelementptr inbounds nuw %struct.ptree, ptr %28, i32 0, i32 3, !dbg !391
  %30 = load i8, ptr %29, align 1, !dbg !391
  %31 = sext i8 %30 to i32, !dbg !389
  store i32 %31, ptr %13, align 4, !dbg !392
  %32 = load ptr, ptr %6, align 8, !dbg !393
  store ptr %32, ptr %7, align 8, !dbg !394
  %33 = load ptr, ptr %10, align 8, !dbg !395
  store ptr %33, ptr %6, align 8, !dbg !396
  %34 = load ptr, ptr %10, align 8, !dbg !397
  %35 = getelementptr inbounds nuw %struct.ptree, ptr %34, i32 0, i32 3, !dbg !398
  %36 = load i8, ptr %35, align 1, !dbg !398
  %37 = sext i8 %36 to i32, !dbg !397
  %38 = load ptr, ptr %4, align 8, !dbg !399
  %39 = getelementptr inbounds nuw %struct.ptree, ptr %38, i32 0, i32 0, !dbg !400
  %40 = load i64, ptr %39, align 8, !dbg !400
  %41 = call i64 @bit(i32 noundef %37, i64 noundef %40), !dbg !401
  %42 = icmp ne i64 %41, 0, !dbg !401
  br i1 %42, label %43, label %47, !dbg !401

43:                                               ; preds = %27
  %44 = load ptr, ptr %10, align 8, !dbg !402
  %45 = getelementptr inbounds nuw %struct.ptree, ptr %44, i32 0, i32 5, !dbg !403
  %46 = load ptr, ptr %45, align 8, !dbg !403
  br label %51, !dbg !401

47:                                               ; preds = %27
  %48 = load ptr, ptr %10, align 8, !dbg !404
  %49 = getelementptr inbounds nuw %struct.ptree, ptr %48, i32 0, i32 4, !dbg !405
  %50 = load ptr, ptr %49, align 8, !dbg !405
  br label %51, !dbg !401

51:                                               ; preds = %47, %43
  %52 = phi ptr [ %46, %43 ], [ %50, %47 ], !dbg !401
  store ptr %52, ptr %10, align 8, !dbg !406
  br label %53, !dbg !407

53:                                               ; preds = %51
  %54 = load i32, ptr %13, align 4, !dbg !408
  %55 = load ptr, ptr %10, align 8, !dbg !409
  %56 = getelementptr inbounds nuw %struct.ptree, ptr %55, i32 0, i32 3, !dbg !410
  %57 = load i8, ptr %56, align 1, !dbg !410
  %58 = sext i8 %57 to i32, !dbg !409
  %59 = icmp slt i32 %54, %58, !dbg !411
  br i1 %59, label %27, label %60, !dbg !407, !llvm.loop !412

60:                                               ; preds = %53
  %61 = load ptr, ptr %10, align 8, !dbg !414
  %62 = getelementptr inbounds nuw %struct.ptree, ptr %61, i32 0, i32 0, !dbg !416
  %63 = load i64, ptr %62, align 8, !dbg !416
  %64 = load ptr, ptr %4, align 8, !dbg !417
  %65 = getelementptr inbounds nuw %struct.ptree, ptr %64, i32 0, i32 0, !dbg !418
  %66 = load i64, ptr %65, align 8, !dbg !418
  %67 = icmp ne i64 %63, %66, !dbg !419
  br i1 %67, label %68, label %69, !dbg !419

68:                                               ; preds = %60
  store i32 0, ptr %3, align 4, !dbg !420
  br label %331, !dbg !420

69:                                               ; preds = %60
  %70 = load ptr, ptr %10, align 8, !dbg !421
  %71 = getelementptr inbounds nuw %struct.ptree, ptr %70, i32 0, i32 2, !dbg !423
  %72 = load i8, ptr %71, align 8, !dbg !423
  %73 = zext i8 %72 to i32, !dbg !421
  %74 = icmp eq i32 %73, 1, !dbg !424
  br i1 %74, label %75, label %239, !dbg !424

75:                                               ; preds = %69
  %76 = load ptr, ptr %10, align 8, !dbg !425
  %77 = getelementptr inbounds nuw %struct.ptree, ptr %76, i32 0, i32 3, !dbg !428
  %78 = load i8, ptr %77, align 1, !dbg !428
  %79 = sext i8 %78 to i32, !dbg !425
  %80 = icmp eq i32 %79, 0, !dbg !429
  br i1 %80, label %81, label %82, !dbg !429

81:                                               ; preds = %75
  store i32 0, ptr %3, align 4, !dbg !430
  br label %331, !dbg !430

82:                                               ; preds = %75
  %83 = load ptr, ptr %10, align 8, !dbg !431
  %84 = getelementptr inbounds nuw %struct.ptree, ptr %83, i32 0, i32 1, !dbg !433
  %85 = load ptr, ptr %84, align 8, !dbg !433
  %86 = getelementptr inbounds nuw %struct.ptree_mask, ptr %85, i32 0, i32 0, !dbg !434
  %87 = load i64, ptr %86, align 8, !dbg !434
  %88 = load ptr, ptr %4, align 8, !dbg !435
  %89 = getelementptr inbounds nuw %struct.ptree, ptr %88, i32 0, i32 1, !dbg !436
  %90 = load ptr, ptr %89, align 8, !dbg !436
  %91 = getelementptr inbounds nuw %struct.ptree_mask, ptr %90, i32 0, i32 0, !dbg !437
  %92 = load i64, ptr %91, align 8, !dbg !437
  %93 = icmp ne i64 %87, %92, !dbg !438
  br i1 %93, label %94, label %95, !dbg !438

94:                                               ; preds = %82
  store i32 0, ptr %3, align 4, !dbg !439
  br label %331, !dbg !439

95:                                               ; preds = %82
  %96 = load ptr, ptr %6, align 8, !dbg !440
  store ptr %96, ptr %8, align 8, !dbg !441
  store ptr %96, ptr %9, align 8, !dbg !442
  br label %97, !dbg !443

97:                                               ; preds = %122, %95
  %98 = load ptr, ptr %8, align 8, !dbg !444
  %99 = getelementptr inbounds nuw %struct.ptree, ptr %98, i32 0, i32 3, !dbg !446
  %100 = load i8, ptr %99, align 1, !dbg !446
  %101 = sext i8 %100 to i32, !dbg !444
  store i32 %101, ptr %13, align 4, !dbg !447
  %102 = load ptr, ptr %8, align 8, !dbg !448
  store ptr %102, ptr %9, align 8, !dbg !449
  %103 = load ptr, ptr %8, align 8, !dbg !450
  %104 = getelementptr inbounds nuw %struct.ptree, ptr %103, i32 0, i32 3, !dbg !451
  %105 = load i8, ptr %104, align 1, !dbg !451
  %106 = sext i8 %105 to i32, !dbg !450
  %107 = load ptr, ptr %6, align 8, !dbg !452
  %108 = getelementptr inbounds nuw %struct.ptree, ptr %107, i32 0, i32 0, !dbg !453
  %109 = load i64, ptr %108, align 8, !dbg !453
  %110 = call i64 @bit(i32 noundef %106, i64 noundef %109), !dbg !454
  %111 = icmp ne i64 %110, 0, !dbg !454
  br i1 %111, label %112, label %116, !dbg !454

112:                                              ; preds = %97
  %113 = load ptr, ptr %8, align 8, !dbg !455
  %114 = getelementptr inbounds nuw %struct.ptree, ptr %113, i32 0, i32 5, !dbg !456
  %115 = load ptr, ptr %114, align 8, !dbg !456
  br label %120, !dbg !454

116:                                              ; preds = %97
  %117 = load ptr, ptr %8, align 8, !dbg !457
  %118 = getelementptr inbounds nuw %struct.ptree, ptr %117, i32 0, i32 4, !dbg !458
  %119 = load ptr, ptr %118, align 8, !dbg !458
  br label %120, !dbg !454

120:                                              ; preds = %116, %112
  %121 = phi ptr [ %115, %112 ], [ %119, %116 ], !dbg !454
  store ptr %121, ptr %8, align 8, !dbg !459
  br label %122, !dbg !460

122:                                              ; preds = %120
  %123 = load i32, ptr %13, align 4, !dbg !461
  %124 = load ptr, ptr %8, align 8, !dbg !462
  %125 = getelementptr inbounds nuw %struct.ptree, ptr %124, i32 0, i32 3, !dbg !463
  %126 = load i8, ptr %125, align 1, !dbg !463
  %127 = sext i8 %126 to i32, !dbg !462
  %128 = icmp slt i32 %123, %127, !dbg !464
  br i1 %128, label %97, label %129, !dbg !460, !llvm.loop !465

129:                                              ; preds = %122
  %130 = load ptr, ptr %9, align 8, !dbg !467
  %131 = getelementptr inbounds nuw %struct.ptree, ptr %130, i32 0, i32 3, !dbg !469
  %132 = load i8, ptr %131, align 1, !dbg !469
  %133 = sext i8 %132 to i32, !dbg !467
  %134 = load ptr, ptr %6, align 8, !dbg !470
  %135 = getelementptr inbounds nuw %struct.ptree, ptr %134, i32 0, i32 0, !dbg !471
  %136 = load i64, ptr %135, align 8, !dbg !471
  %137 = call i64 @bit(i32 noundef %133, i64 noundef %136), !dbg !472
  %138 = icmp ne i64 %137, 0, !dbg !472
  br i1 %138, label %139, label %143, !dbg !472

139:                                              ; preds = %129
  %140 = load ptr, ptr %10, align 8, !dbg !473
  %141 = load ptr, ptr %9, align 8, !dbg !474
  %142 = getelementptr inbounds nuw %struct.ptree, ptr %141, i32 0, i32 5, !dbg !475
  store ptr %140, ptr %142, align 8, !dbg !476
  br label %147, !dbg !474

143:                                              ; preds = %129
  %144 = load ptr, ptr %10, align 8, !dbg !477
  %145 = load ptr, ptr %9, align 8, !dbg !478
  %146 = getelementptr inbounds nuw %struct.ptree, ptr %145, i32 0, i32 4, !dbg !479
  store ptr %144, ptr %146, align 8, !dbg !480
  br label %147

147:                                              ; preds = %143, %139
  %148 = load ptr, ptr %7, align 8, !dbg !481
  %149 = getelementptr inbounds nuw %struct.ptree, ptr %148, i32 0, i32 3, !dbg !483
  %150 = load i8, ptr %149, align 1, !dbg !483
  %151 = sext i8 %150 to i32, !dbg !481
  %152 = load ptr, ptr %4, align 8, !dbg !484
  %153 = getelementptr inbounds nuw %struct.ptree, ptr %152, i32 0, i32 0, !dbg !485
  %154 = load i64, ptr %153, align 8, !dbg !485
  %155 = call i64 @bit(i32 noundef %151, i64 noundef %154), !dbg !486
  %156 = icmp ne i64 %155, 0, !dbg !486
  br i1 %156, label %157, label %179, !dbg !486

157:                                              ; preds = %147
  %158 = load ptr, ptr %6, align 8, !dbg !487
  %159 = getelementptr inbounds nuw %struct.ptree, ptr %158, i32 0, i32 3, !dbg !488
  %160 = load i8, ptr %159, align 1, !dbg !488
  %161 = sext i8 %160 to i32, !dbg !487
  %162 = load ptr, ptr %4, align 8, !dbg !489
  %163 = getelementptr inbounds nuw %struct.ptree, ptr %162, i32 0, i32 0, !dbg !490
  %164 = load i64, ptr %163, align 8, !dbg !490
  %165 = call i64 @bit(i32 noundef %161, i64 noundef %164), !dbg !491
  %166 = icmp ne i64 %165, 0, !dbg !491
  br i1 %166, label %167, label %171, !dbg !491

167:                                              ; preds = %157
  %168 = load ptr, ptr %6, align 8, !dbg !492
  %169 = getelementptr inbounds nuw %struct.ptree, ptr %168, i32 0, i32 4, !dbg !493
  %170 = load ptr, ptr %169, align 8, !dbg !493
  br label %175, !dbg !491

171:                                              ; preds = %157
  %172 = load ptr, ptr %6, align 8, !dbg !494
  %173 = getelementptr inbounds nuw %struct.ptree, ptr %172, i32 0, i32 5, !dbg !495
  %174 = load ptr, ptr %173, align 8, !dbg !495
  br label %175, !dbg !491

175:                                              ; preds = %171, %167
  %176 = phi ptr [ %170, %167 ], [ %174, %171 ], !dbg !491
  %177 = load ptr, ptr %7, align 8, !dbg !496
  %178 = getelementptr inbounds nuw %struct.ptree, ptr %177, i32 0, i32 5, !dbg !497
  store ptr %176, ptr %178, align 8, !dbg !498
  br label %201, !dbg !496

179:                                              ; preds = %147
  %180 = load ptr, ptr %6, align 8, !dbg !499
  %181 = getelementptr inbounds nuw %struct.ptree, ptr %180, i32 0, i32 3, !dbg !500
  %182 = load i8, ptr %181, align 1, !dbg !500
  %183 = sext i8 %182 to i32, !dbg !499
  %184 = load ptr, ptr %4, align 8, !dbg !501
  %185 = getelementptr inbounds nuw %struct.ptree, ptr %184, i32 0, i32 0, !dbg !502
  %186 = load i64, ptr %185, align 8, !dbg !502
  %187 = call i64 @bit(i32 noundef %183, i64 noundef %186), !dbg !503
  %188 = icmp ne i64 %187, 0, !dbg !503
  br i1 %188, label %189, label %193, !dbg !503

189:                                              ; preds = %179
  %190 = load ptr, ptr %6, align 8, !dbg !504
  %191 = getelementptr inbounds nuw %struct.ptree, ptr %190, i32 0, i32 4, !dbg !505
  %192 = load ptr, ptr %191, align 8, !dbg !505
  br label %197, !dbg !503

193:                                              ; preds = %179
  %194 = load ptr, ptr %6, align 8, !dbg !506
  %195 = getelementptr inbounds nuw %struct.ptree, ptr %194, i32 0, i32 5, !dbg !507
  %196 = load ptr, ptr %195, align 8, !dbg !507
  br label %197, !dbg !503

197:                                              ; preds = %193, %189
  %198 = phi ptr [ %192, %189 ], [ %196, %193 ], !dbg !503
  %199 = load ptr, ptr %7, align 8, !dbg !508
  %200 = getelementptr inbounds nuw %struct.ptree, ptr %199, i32 0, i32 4, !dbg !509
  store ptr %198, ptr %200, align 8, !dbg !510
  br label %201

201:                                              ; preds = %197, %175
  %202 = load ptr, ptr %10, align 8, !dbg !511
  %203 = getelementptr inbounds nuw %struct.ptree, ptr %202, i32 0, i32 1, !dbg !513
  %204 = load ptr, ptr %203, align 8, !dbg !513
  %205 = getelementptr inbounds nuw %struct.ptree_mask, ptr %204, i32 0, i32 1, !dbg !514
  %206 = load ptr, ptr %205, align 8, !dbg !514
  %207 = icmp ne ptr %206, null, !dbg !511
  br i1 %207, label %208, label %214, !dbg !511

208:                                              ; preds = %201
  %209 = load ptr, ptr %10, align 8, !dbg !515
  %210 = getelementptr inbounds nuw %struct.ptree, ptr %209, i32 0, i32 1, !dbg !516
  %211 = load ptr, ptr %210, align 8, !dbg !516
  %212 = getelementptr inbounds nuw %struct.ptree_mask, ptr %211, i32 0, i32 1, !dbg !517
  %213 = load ptr, ptr %212, align 8, !dbg !517
  call void @free(ptr noundef %213) #4, !dbg !518
  br label %214, !dbg !518

214:                                              ; preds = %208, %201
  %215 = load ptr, ptr %10, align 8, !dbg !519
  %216 = getelementptr inbounds nuw %struct.ptree, ptr %215, i32 0, i32 1, !dbg !520
  %217 = load ptr, ptr %216, align 8, !dbg !520
  call void @free(ptr noundef %217) #4, !dbg !521
  %218 = load ptr, ptr %10, align 8, !dbg !522
  %219 = load ptr, ptr %6, align 8, !dbg !524
  %220 = icmp ne ptr %218, %219, !dbg !525
  br i1 %220, label %221, label %237, !dbg !525

221:                                              ; preds = %214
  %222 = load ptr, ptr %6, align 8, !dbg !526
  %223 = getelementptr inbounds nuw %struct.ptree, ptr %222, i32 0, i32 0, !dbg !528
  %224 = load i64, ptr %223, align 8, !dbg !528
  %225 = load ptr, ptr %10, align 8, !dbg !529
  %226 = getelementptr inbounds nuw %struct.ptree, ptr %225, i32 0, i32 0, !dbg !530
  store i64 %224, ptr %226, align 8, !dbg !531
  %227 = load ptr, ptr %6, align 8, !dbg !532
  %228 = getelementptr inbounds nuw %struct.ptree, ptr %227, i32 0, i32 1, !dbg !533
  %229 = load ptr, ptr %228, align 8, !dbg !533
  %230 = load ptr, ptr %10, align 8, !dbg !534
  %231 = getelementptr inbounds nuw %struct.ptree, ptr %230, i32 0, i32 1, !dbg !535
  store ptr %229, ptr %231, align 8, !dbg !536
  %232 = load ptr, ptr %6, align 8, !dbg !537
  %233 = getelementptr inbounds nuw %struct.ptree, ptr %232, i32 0, i32 2, !dbg !538
  %234 = load i8, ptr %233, align 8, !dbg !538
  %235 = load ptr, ptr %10, align 8, !dbg !539
  %236 = getelementptr inbounds nuw %struct.ptree, ptr %235, i32 0, i32 2, !dbg !540
  store i8 %234, ptr %236, align 8, !dbg !541
  br label %237, !dbg !542

237:                                              ; preds = %221, %214
  %238 = load ptr, ptr %6, align 8, !dbg !543
  call void @free(ptr noundef %238) #4, !dbg !544
  store i32 1, ptr %3, align 4, !dbg !545
  br label %331, !dbg !545

239:                                              ; preds = %69
  store i32 0, ptr %13, align 4, !dbg !546
  br label %240, !dbg !548

240:                                              ; preds = %264, %239
  %241 = load i32, ptr %13, align 4, !dbg !549
  %242 = load ptr, ptr %10, align 8, !dbg !551
  %243 = getelementptr inbounds nuw %struct.ptree, ptr %242, i32 0, i32 2, !dbg !552
  %244 = load i8, ptr %243, align 8, !dbg !552
  %245 = zext i8 %244 to i32, !dbg !551
  %246 = icmp slt i32 %241, %245, !dbg !553
  br i1 %246, label %247, label %267, !dbg !554

247:                                              ; preds = %240
  %248 = load ptr, ptr %4, align 8, !dbg !555
  %249 = getelementptr inbounds nuw %struct.ptree, ptr %248, i32 0, i32 1, !dbg !557
  %250 = load ptr, ptr %249, align 8, !dbg !557
  %251 = getelementptr inbounds nuw %struct.ptree_mask, ptr %250, i32 0, i32 0, !dbg !558
  %252 = load i64, ptr %251, align 8, !dbg !558
  %253 = load ptr, ptr %10, align 8, !dbg !559
  %254 = getelementptr inbounds nuw %struct.ptree, ptr %253, i32 0, i32 1, !dbg !560
  %255 = load ptr, ptr %254, align 8, !dbg !560
  %256 = load i32, ptr %13, align 4, !dbg !561
  %257 = sext i32 %256 to i64, !dbg !559
  %258 = getelementptr inbounds %struct.ptree_mask, ptr %255, i64 %257, !dbg !559
  %259 = getelementptr inbounds nuw %struct.ptree_mask, ptr %258, i32 0, i32 0, !dbg !562
  %260 = load i64, ptr %259, align 8, !dbg !562
  %261 = icmp eq i64 %252, %260, !dbg !563
  br i1 %261, label %262, label %263, !dbg !563

262:                                              ; preds = %247
  br label %267, !dbg !564

263:                                              ; preds = %247
  br label %264, !dbg !562

264:                                              ; preds = %263
  %265 = load i32, ptr %13, align 4, !dbg !565
  %266 = add nsw i32 %265, 1, !dbg !565
  store i32 %266, ptr %13, align 4, !dbg !565
  br label %240, !dbg !566, !llvm.loop !567

267:                                              ; preds = %262, %240
  %268 = load i32, ptr %13, align 4, !dbg !569
  %269 = load ptr, ptr %10, align 8, !dbg !571
  %270 = getelementptr inbounds nuw %struct.ptree, ptr %269, i32 0, i32 2, !dbg !572
  %271 = load i8, ptr %270, align 8, !dbg !572
  %272 = zext i8 %271 to i32, !dbg !571
  %273 = icmp sge i32 %268, %272, !dbg !573
  br i1 %273, label %274, label %275, !dbg !573

274:                                              ; preds = %267
  store i32 0, ptr %3, align 4, !dbg !574
  br label %331, !dbg !574

275:                                              ; preds = %267
  %276 = load ptr, ptr %10, align 8, !dbg !575
  %277 = getelementptr inbounds nuw %struct.ptree, ptr %276, i32 0, i32 2, !dbg !576
  %278 = load i8, ptr %277, align 8, !dbg !576
  %279 = zext i8 %278 to i32, !dbg !575
  %280 = sub nsw i32 %279, 1, !dbg !577
  %281 = sext i32 %280 to i64, !dbg !578
  %282 = mul i64 16, %281, !dbg !579
  %283 = call noalias ptr @malloc(i64 noundef %282) #5, !dbg !580
  store ptr %283, ptr %11, align 8, !dbg !581
  store i32 0, ptr %13, align 4, !dbg !582
  %284 = load ptr, ptr %11, align 8, !dbg !584
  store ptr %284, ptr %12, align 8, !dbg !585
  br label %285, !dbg !586

285:                                              ; preds = %317, %275
  %286 = load i32, ptr %13, align 4, !dbg !587
  %287 = load ptr, ptr %10, align 8, !dbg !589
  %288 = getelementptr inbounds nuw %struct.ptree, ptr %287, i32 0, i32 2, !dbg !590
  %289 = load i8, ptr %288, align 8, !dbg !590
  %290 = zext i8 %289 to i32, !dbg !589
  %291 = icmp slt i32 %286, %290, !dbg !591
  br i1 %291, label %292, label %320, !dbg !592

292:                                              ; preds = %285
  %293 = load ptr, ptr %4, align 8, !dbg !593
  %294 = getelementptr inbounds nuw %struct.ptree, ptr %293, i32 0, i32 1, !dbg !596
  %295 = load ptr, ptr %294, align 8, !dbg !596
  %296 = getelementptr inbounds nuw %struct.ptree_mask, ptr %295, i32 0, i32 0, !dbg !597
  %297 = load i64, ptr %296, align 8, !dbg !597
  %298 = load ptr, ptr %10, align 8, !dbg !598
  %299 = getelementptr inbounds nuw %struct.ptree, ptr %298, i32 0, i32 1, !dbg !599
  %300 = load ptr, ptr %299, align 8, !dbg !599
  %301 = load i32, ptr %13, align 4, !dbg !600
  %302 = sext i32 %301 to i64, !dbg !598
  %303 = getelementptr inbounds %struct.ptree_mask, ptr %300, i64 %302, !dbg !598
  %304 = getelementptr inbounds nuw %struct.ptree_mask, ptr %303, i32 0, i32 0, !dbg !601
  %305 = load i64, ptr %304, align 8, !dbg !601
  %306 = icmp ne i64 %297, %305, !dbg !602
  br i1 %306, label %307, label %316, !dbg !602

307:                                              ; preds = %292
  %308 = load ptr, ptr %12, align 8, !dbg !603
  %309 = getelementptr inbounds nuw %struct.ptree_mask, ptr %308, i32 1, !dbg !603
  store ptr %309, ptr %12, align 8, !dbg !603
  %310 = load ptr, ptr %10, align 8, !dbg !605
  %311 = getelementptr inbounds nuw %struct.ptree, ptr %310, i32 0, i32 1, !dbg !606
  %312 = load ptr, ptr %311, align 8, !dbg !606
  %313 = load i32, ptr %13, align 4, !dbg !607
  %314 = sext i32 %313 to i64, !dbg !608
  %315 = getelementptr inbounds %struct.ptree_mask, ptr %312, i64 %314, !dbg !608
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %308, ptr align 8 %315, i64 16, i1 false), !dbg !609
  br label %316, !dbg !610

316:                                              ; preds = %307, %292
  br label %317, !dbg !611

317:                                              ; preds = %316
  %318 = load i32, ptr %13, align 4, !dbg !612
  %319 = add nsw i32 %318, 1, !dbg !612
  store i32 %319, ptr %13, align 4, !dbg !612
  br label %285, !dbg !613, !llvm.loop !614

320:                                              ; preds = %285
  %321 = load ptr, ptr %10, align 8, !dbg !616
  %322 = getelementptr inbounds nuw %struct.ptree, ptr %321, i32 0, i32 2, !dbg !617
  %323 = load i8, ptr %322, align 8, !dbg !618
  %324 = add i8 %323, -1, !dbg !618
  store i8 %324, ptr %322, align 8, !dbg !618
  %325 = load ptr, ptr %10, align 8, !dbg !619
  %326 = getelementptr inbounds nuw %struct.ptree, ptr %325, i32 0, i32 1, !dbg !620
  %327 = load ptr, ptr %326, align 8, !dbg !620
  call void @free(ptr noundef %327) #4, !dbg !621
  %328 = load ptr, ptr %11, align 8, !dbg !622
  %329 = load ptr, ptr %10, align 8, !dbg !623
  %330 = getelementptr inbounds nuw %struct.ptree, ptr %329, i32 0, i32 1, !dbg !624
  store ptr %328, ptr %330, align 8, !dbg !625
  store i32 1, ptr %3, align 4, !dbg !626
  br label %331, !dbg !626

331:                                              ; preds = %320, %274, %237, %94, %81, %68, %24
  %332 = load i32, ptr %3, align 4, !dbg !627
  ret i32 %332, !dbg !627
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @pat_search(i64 noundef %0, ptr noundef %1) #0 !dbg !628 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store i64 %0, ptr %4, align 8
    #dbg_declare(ptr %4, !631, !DIExpression(), !632)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !633, !DIExpression(), !634)
    #dbg_declare(ptr %6, !635, !DIExpression(), !636)
  store ptr null, ptr %6, align 8, !dbg !636
    #dbg_declare(ptr %7, !637, !DIExpression(), !638)
  %9 = load ptr, ptr %5, align 8, !dbg !639
  store ptr %9, ptr %7, align 8, !dbg !638
    #dbg_declare(ptr %8, !640, !DIExpression(), !641)
  %10 = load ptr, ptr %7, align 8, !dbg !642
  %11 = icmp ne ptr %10, null, !dbg !642
  br i1 %11, label %13, label %12, !dbg !644

12:                                               ; preds = %2
  store ptr null, ptr %3, align 8, !dbg !645
  br label %75, !dbg !645

13:                                               ; preds = %2
  br label %14, !dbg !646

14:                                               ; preds = %50, %13
  %15 = load ptr, ptr %7, align 8, !dbg !647
  %16 = getelementptr inbounds nuw %struct.ptree, ptr %15, i32 0, i32 0, !dbg !650
  %17 = load i64, ptr %16, align 8, !dbg !650
  %18 = load i64, ptr %4, align 8, !dbg !651
  %19 = load ptr, ptr %7, align 8, !dbg !652
  %20 = getelementptr inbounds nuw %struct.ptree, ptr %19, i32 0, i32 1, !dbg !653
  %21 = load ptr, ptr %20, align 8, !dbg !653
  %22 = getelementptr inbounds nuw %struct.ptree_mask, ptr %21, i32 0, i32 0, !dbg !654
  %23 = load i64, ptr %22, align 8, !dbg !654
  %24 = and i64 %18, %23, !dbg !655
  %25 = icmp eq i64 %17, %24, !dbg !656
  br i1 %25, label %26, label %28, !dbg !656

26:                                               ; preds = %14
  %27 = load ptr, ptr %7, align 8, !dbg !657
  store ptr %27, ptr %6, align 8, !dbg !659
  br label %28, !dbg !660

28:                                               ; preds = %26, %14
  %29 = load ptr, ptr %7, align 8, !dbg !661
  %30 = getelementptr inbounds nuw %struct.ptree, ptr %29, i32 0, i32 3, !dbg !662
  %31 = load i8, ptr %30, align 1, !dbg !662
  %32 = sext i8 %31 to i32, !dbg !661
  store i32 %32, ptr %8, align 4, !dbg !663
  %33 = load ptr, ptr %7, align 8, !dbg !664
  %34 = getelementptr inbounds nuw %struct.ptree, ptr %33, i32 0, i32 3, !dbg !665
  %35 = load i8, ptr %34, align 1, !dbg !665
  %36 = sext i8 %35 to i32, !dbg !664
  %37 = load i64, ptr %4, align 8, !dbg !666
  %38 = call i64 @bit(i32 noundef %36, i64 noundef %37), !dbg !667
  %39 = icmp ne i64 %38, 0, !dbg !667
  br i1 %39, label %40, label %44, !dbg !667

40:                                               ; preds = %28
  %41 = load ptr, ptr %7, align 8, !dbg !668
  %42 = getelementptr inbounds nuw %struct.ptree, ptr %41, i32 0, i32 5, !dbg !669
  %43 = load ptr, ptr %42, align 8, !dbg !669
  br label %48, !dbg !667

44:                                               ; preds = %28
  %45 = load ptr, ptr %7, align 8, !dbg !670
  %46 = getelementptr inbounds nuw %struct.ptree, ptr %45, i32 0, i32 4, !dbg !671
  %47 = load ptr, ptr %46, align 8, !dbg !671
  br label %48, !dbg !667

48:                                               ; preds = %44, %40
  %49 = phi ptr [ %43, %40 ], [ %47, %44 ], !dbg !667
  store ptr %49, ptr %7, align 8, !dbg !672
  br label %50, !dbg !673

50:                                               ; preds = %48
  %51 = load i32, ptr %8, align 4, !dbg !674
  %52 = load ptr, ptr %7, align 8, !dbg !675
  %53 = getelementptr inbounds nuw %struct.ptree, ptr %52, i32 0, i32 3, !dbg !676
  %54 = load i8, ptr %53, align 1, !dbg !676
  %55 = sext i8 %54 to i32, !dbg !675
  %56 = icmp slt i32 %51, %55, !dbg !677
  br i1 %56, label %14, label %57, !dbg !673, !llvm.loop !678

57:                                               ; preds = %50
  %58 = load ptr, ptr %7, align 8, !dbg !680
  %59 = getelementptr inbounds nuw %struct.ptree, ptr %58, i32 0, i32 0, !dbg !681
  %60 = load i64, ptr %59, align 8, !dbg !681
  %61 = load i64, ptr %4, align 8, !dbg !682
  %62 = load ptr, ptr %7, align 8, !dbg !683
  %63 = getelementptr inbounds nuw %struct.ptree, ptr %62, i32 0, i32 1, !dbg !684
  %64 = load ptr, ptr %63, align 8, !dbg !684
  %65 = getelementptr inbounds nuw %struct.ptree_mask, ptr %64, i32 0, i32 0, !dbg !685
  %66 = load i64, ptr %65, align 8, !dbg !685
  %67 = and i64 %61, %66, !dbg !686
  %68 = icmp eq i64 %60, %67, !dbg !687
  br i1 %68, label %69, label %71, !dbg !688

69:                                               ; preds = %57
  %70 = load ptr, ptr %7, align 8, !dbg !689
  br label %73, !dbg !688

71:                                               ; preds = %57
  %72 = load ptr, ptr %6, align 8, !dbg !690
  br label %73, !dbg !688

73:                                               ; preds = %71, %69
  %74 = phi ptr [ %70, %69 ], [ %72, %71 ], !dbg !688
  store ptr %74, ptr %3, align 8, !dbg !691
  br label %75, !dbg !691

75:                                               ; preds = %73, %12
  %76 = load ptr, ptr %3, align 8, !dbg !692
  ret ptr %76, !dbg !692
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind }
attributes #5 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "cBench/network_patricia/src/patricia.c", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "e5f3f99b3728dc3c47888e71a534009f")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptree_mask", file: !5, line: 34, size: 128, elements: !6)
!5 = !DIFile(filename: "cBench/network_patricia/src/patricia.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "d75bf3dfcb1634c6753a281a9a20ff25")
!6 = !{!7, !9}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "pm_mask", scope: !4, file: !5, line: 35, baseType: !8, size: 64)
!8 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!9 = !DIDerivedType(tag: DW_TAG_member, name: "pm_data", scope: !4, file: !5, line: 36, baseType: !10, size: 64, offset: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!11 = !{i32 7, !"Dwarf Version", i32 5}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{i32 8, !"PIC Level", i32 2}
!15 = !{i32 7, !"PIE Level", i32 2}
!16 = !{i32 7, !"uwtable", i32 2}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!19 = distinct !DISubprogram(name: "pat_insert", scope: !1, file: !1, line: 92, type: !20, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!20 = !DISubroutineType(types: !21)
!21 = !{!22, !22, !22}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptree", file: !5, line: 43, size: 320, elements: !24)
!24 = !{!25, !26, !27, !29, !31, !32}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "p_key", scope: !23, file: !5, line: 44, baseType: !8, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "p_m", scope: !23, file: !5, line: 45, baseType: !3, size: 64, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "p_mlen", scope: !23, file: !5, line: 46, baseType: !28, size: 8, offset: 128)
!28 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "p_b", scope: !23, file: !5, line: 47, baseType: !30, size: 8, offset: 136)
!30 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "p_left", scope: !23, file: !5, line: 48, baseType: !22, size: 64, offset: 192)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "p_right", scope: !23, file: !5, line: 49, baseType: !22, size: 64, offset: 256)
!33 = !{}
!34 = !DILocalVariable(name: "n", arg: 1, scope: !19, file: !1, line: 92, type: !22)
!35 = !DILocation(line: 92, column: 26, scope: !19)
!36 = !DILocalVariable(name: "head", arg: 2, scope: !19, file: !1, line: 92, type: !22)
!37 = !DILocation(line: 92, column: 43, scope: !19)
!38 = !DILocalVariable(name: "t", scope: !19, file: !1, line: 94, type: !22)
!39 = !DILocation(line: 94, column: 16, scope: !19)
!40 = !DILocalVariable(name: "buf", scope: !19, file: !1, line: 95, type: !3)
!41 = !DILocation(line: 95, column: 21, scope: !19)
!42 = !DILocalVariable(name: "pm", scope: !19, file: !1, line: 95, type: !3)
!43 = !DILocation(line: 95, column: 27, scope: !19)
!44 = !DILocalVariable(name: "i", scope: !19, file: !1, line: 96, type: !45)
!45 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!46 = !DILocation(line: 96, column: 6, scope: !19)
!47 = !DILocalVariable(name: "copied", scope: !19, file: !1, line: 96, type: !45)
!48 = !DILocation(line: 96, column: 9, scope: !19)
!49 = !DILocation(line: 98, column: 7, scope: !50)
!50 = distinct !DILexicalBlock(scope: !19, file: !1, line: 98, column: 6)
!51 = !DILocation(line: 98, column: 12, scope: !50)
!52 = !DILocation(line: 98, column: 16, scope: !50)
!53 = !DILocation(line: 98, column: 18, scope: !50)
!54 = !DILocation(line: 98, column: 22, scope: !50)
!55 = !DILocation(line: 98, column: 25, scope: !50)
!56 = !DILocation(line: 99, column: 3, scope: !50)
!57 = !DILocation(line: 104, column: 14, scope: !19)
!58 = !DILocation(line: 104, column: 17, scope: !19)
!59 = !DILocation(line: 104, column: 22, scope: !19)
!60 = !DILocation(line: 104, column: 2, scope: !19)
!61 = !DILocation(line: 104, column: 5, scope: !19)
!62 = !DILocation(line: 104, column: 11, scope: !19)
!63 = !DILocation(line: 109, column: 6, scope: !19)
!64 = !DILocation(line: 109, column: 4, scope: !19)
!65 = !DILocation(line: 110, column: 2, scope: !19)
!66 = !DILocation(line: 111, column: 7, scope: !67)
!67 = distinct !DILexicalBlock(scope: !19, file: !1, line: 110, column: 5)
!68 = !DILocation(line: 111, column: 10, scope: !67)
!69 = !DILocation(line: 111, column: 5, scope: !67)
!70 = !DILocation(line: 112, column: 11, scope: !67)
!71 = !DILocation(line: 112, column: 14, scope: !67)
!72 = !DILocation(line: 112, column: 19, scope: !67)
!73 = !DILocation(line: 112, column: 22, scope: !67)
!74 = !DILocation(line: 112, column: 7, scope: !67)
!75 = !DILocation(line: 112, column: 31, scope: !67)
!76 = !DILocation(line: 112, column: 34, scope: !67)
!77 = !DILocation(line: 112, column: 44, scope: !67)
!78 = !DILocation(line: 112, column: 47, scope: !67)
!79 = !DILocation(line: 112, column: 5, scope: !67)
!80 = !DILocation(line: 113, column: 2, scope: !67)
!81 = !DILocation(line: 113, column: 11, scope: !19)
!82 = !DILocation(line: 113, column: 15, scope: !19)
!83 = !DILocation(line: 113, column: 18, scope: !19)
!84 = !DILocation(line: 113, column: 13, scope: !19)
!85 = distinct !{!85, !65, !86, !87}
!86 = !DILocation(line: 113, column: 21, scope: !19)
!87 = !{!"llvm.loop.mustprogress"}
!88 = !DILocation(line: 118, column: 6, scope: !89)
!89 = distinct !DILexicalBlock(scope: !19, file: !1, line: 118, column: 6)
!90 = !DILocation(line: 118, column: 9, scope: !89)
!91 = !DILocation(line: 118, column: 18, scope: !89)
!92 = !DILocation(line: 118, column: 21, scope: !89)
!93 = !DILocation(line: 118, column: 15, scope: !89)
!94 = !DILocation(line: 123, column: 9, scope: !95)
!95 = distinct !DILexicalBlock(scope: !96, file: !1, line: 123, column: 3)
!96 = distinct !DILexicalBlock(scope: !89, file: !1, line: 118, column: 28)
!97 = !DILocation(line: 123, column: 8, scope: !95)
!98 = !DILocation(line: 123, column: 13, scope: !99)
!99 = distinct !DILexicalBlock(scope: !95, file: !1, line: 123, column: 3)
!100 = !DILocation(line: 123, column: 17, scope: !99)
!101 = !DILocation(line: 123, column: 20, scope: !99)
!102 = !DILocation(line: 123, column: 15, scope: !99)
!103 = !DILocation(line: 123, column: 3, scope: !95)
!104 = !DILocation(line: 124, column: 8, scope: !105)
!105 = distinct !DILexicalBlock(scope: !106, file: !1, line: 124, column: 8)
!106 = distinct !DILexicalBlock(scope: !99, file: !1, line: 123, column: 33)
!107 = !DILocation(line: 124, column: 11, scope: !105)
!108 = !DILocation(line: 124, column: 16, scope: !105)
!109 = !DILocation(line: 124, column: 27, scope: !105)
!110 = !DILocation(line: 124, column: 30, scope: !105)
!111 = !DILocation(line: 124, column: 34, scope: !105)
!112 = !DILocation(line: 124, column: 37, scope: !105)
!113 = !DILocation(line: 124, column: 24, scope: !105)
!114 = !DILocation(line: 125, column: 25, scope: !115)
!115 = distinct !DILexicalBlock(scope: !105, file: !1, line: 124, column: 46)
!116 = !DILocation(line: 125, column: 28, scope: !115)
!117 = !DILocation(line: 125, column: 33, scope: !115)
!118 = !DILocation(line: 125, column: 5, scope: !115)
!119 = !DILocation(line: 125, column: 8, scope: !115)
!120 = !DILocation(line: 125, column: 12, scope: !115)
!121 = !DILocation(line: 125, column: 15, scope: !115)
!122 = !DILocation(line: 125, column: 23, scope: !115)
!123 = !DILocation(line: 126, column: 10, scope: !115)
!124 = !DILocation(line: 126, column: 13, scope: !115)
!125 = !DILocation(line: 126, column: 5, scope: !115)
!126 = !DILocation(line: 127, column: 10, scope: !115)
!127 = !DILocation(line: 127, column: 5, scope: !115)
!128 = !DILocation(line: 128, column: 7, scope: !115)
!129 = !DILocation(line: 129, column: 12, scope: !115)
!130 = !DILocation(line: 129, column: 5, scope: !115)
!131 = !DILocation(line: 131, column: 3, scope: !106)
!132 = !DILocation(line: 123, column: 29, scope: !99)
!133 = !DILocation(line: 123, column: 3, scope: !99)
!134 = distinct !{!134, !103, !135, !87}
!135 = !DILocation(line: 131, column: 3, scope: !95)
!136 = !DILocation(line: 137, column: 37, scope: !96)
!137 = !DILocation(line: 137, column: 40, scope: !96)
!138 = !DILocation(line: 137, column: 46, scope: !96)
!139 = !DILocation(line: 137, column: 36, scope: !96)
!140 = !DILocation(line: 137, column: 35, scope: !96)
!141 = !DILocation(line: 136, column: 30, scope: !96)
!142 = !DILocation(line: 136, column: 7, scope: !96)
!143 = !DILocation(line: 143, column: 10, scope: !96)
!144 = !DILocation(line: 144, column: 9, scope: !145)
!145 = distinct !DILexicalBlock(scope: !96, file: !1, line: 144, column: 3)
!146 = !DILocation(line: 144, column: 16, scope: !145)
!147 = !DILocation(line: 144, column: 15, scope: !145)
!148 = !DILocation(line: 144, column: 8, scope: !145)
!149 = !DILocation(line: 144, column: 21, scope: !150)
!150 = distinct !DILexicalBlock(scope: !145, file: !1, line: 144, column: 3)
!151 = !DILocation(line: 144, column: 25, scope: !150)
!152 = !DILocation(line: 144, column: 28, scope: !150)
!153 = !DILocation(line: 144, column: 23, scope: !150)
!154 = !DILocation(line: 144, column: 3, scope: !145)
!155 = !DILocation(line: 145, column: 8, scope: !156)
!156 = distinct !DILexicalBlock(scope: !157, file: !1, line: 145, column: 8)
!157 = distinct !DILexicalBlock(scope: !150, file: !1, line: 144, column: 42)
!158 = !DILocation(line: 145, column: 11, scope: !156)
!159 = !DILocation(line: 145, column: 16, scope: !156)
!160 = !DILocation(line: 145, column: 26, scope: !156)
!161 = !DILocation(line: 145, column: 29, scope: !156)
!162 = !DILocation(line: 145, column: 33, scope: !156)
!163 = !DILocation(line: 145, column: 36, scope: !156)
!164 = !DILocation(line: 145, column: 24, scope: !156)
!165 = !DILocation(line: 146, column: 37, scope: !166)
!166 = distinct !DILexicalBlock(scope: !156, file: !1, line: 145, column: 45)
!167 = !DILocation(line: 146, column: 41, scope: !166)
!168 = !DILocation(line: 146, column: 44, scope: !166)
!169 = !DILocation(line: 146, column: 50, scope: !166)
!170 = !DILocation(line: 146, column: 48, scope: !166)
!171 = !DILocation(line: 146, column: 29, scope: !166)
!172 = !DILocation(line: 147, column: 6, scope: !166)
!173 = !DILocation(line: 148, column: 4, scope: !166)
!174 = !DILocation(line: 150, column: 37, scope: !175)
!175 = distinct !DILexicalBlock(scope: !156, file: !1, line: 149, column: 9)
!176 = !DILocation(line: 150, column: 41, scope: !175)
!177 = !DILocation(line: 150, column: 44, scope: !175)
!178 = !DILocation(line: 150, column: 29, scope: !175)
!179 = !DILocation(line: 151, column: 5, scope: !175)
!180 = !DILocation(line: 151, column: 8, scope: !175)
!181 = !DILocation(line: 151, column: 13, scope: !175)
!182 = !DILocation(line: 151, column: 21, scope: !175)
!183 = !DILocation(line: 152, column: 12, scope: !175)
!184 = !DILocation(line: 154, column: 3, scope: !157)
!185 = !DILocation(line: 144, column: 38, scope: !150)
!186 = !DILocation(line: 144, column: 3, scope: !150)
!187 = distinct !{!187, !154, !188, !87}
!188 = !DILocation(line: 154, column: 3, scope: !145)
!189 = !DILocation(line: 155, column: 8, scope: !190)
!190 = distinct !DILexicalBlock(scope: !96, file: !1, line: 155, column: 7)
!191 = !DILocation(line: 155, column: 7, scope: !190)
!192 = !DILocation(line: 156, column: 29, scope: !193)
!193 = distinct !DILexicalBlock(scope: !190, file: !1, line: 155, column: 16)
!194 = !DILocation(line: 156, column: 33, scope: !193)
!195 = !DILocation(line: 156, column: 36, scope: !193)
!196 = !DILocation(line: 156, column: 21, scope: !193)
!197 = !DILocation(line: 157, column: 3, scope: !193)
!198 = !DILocation(line: 158, column: 8, scope: !96)
!199 = !DILocation(line: 158, column: 11, scope: !96)
!200 = !DILocation(line: 158, column: 3, scope: !96)
!201 = !DILocation(line: 159, column: 8, scope: !96)
!202 = !DILocation(line: 159, column: 3, scope: !96)
!203 = !DILocation(line: 160, column: 5, scope: !96)
!204 = !DILocation(line: 161, column: 3, scope: !96)
!205 = !DILocation(line: 161, column: 6, scope: !96)
!206 = !DILocation(line: 161, column: 12, scope: !96)
!207 = !DILocation(line: 166, column: 8, scope: !96)
!208 = !DILocation(line: 166, column: 11, scope: !96)
!209 = !DILocation(line: 166, column: 3, scope: !96)
!210 = !DILocation(line: 167, column: 12, scope: !96)
!211 = !DILocation(line: 167, column: 3, scope: !96)
!212 = !DILocation(line: 167, column: 6, scope: !96)
!213 = !DILocation(line: 167, column: 10, scope: !96)
!214 = !DILocation(line: 169, column: 10, scope: !96)
!215 = !DILocation(line: 169, column: 3, scope: !96)
!216 = !DILocation(line: 175, column: 8, scope: !217)
!217 = distinct !DILexicalBlock(scope: !19, file: !1, line: 175, column: 2)
!218 = !DILocation(line: 175, column: 7, scope: !217)
!219 = !DILocation(line: 175, column: 12, scope: !220)
!220 = distinct !DILexicalBlock(scope: !217, file: !1, line: 175, column: 2)
!221 = !DILocation(line: 175, column: 14, scope: !220)
!222 = !DILocation(line: 175, column: 19, scope: !220)
!223 = !DILocation(line: 175, column: 26, scope: !220)
!224 = !DILocation(line: 175, column: 29, scope: !220)
!225 = !DILocation(line: 175, column: 32, scope: !220)
!226 = !DILocation(line: 175, column: 22, scope: !220)
!227 = !DILocation(line: 175, column: 46, scope: !220)
!228 = !DILocation(line: 175, column: 49, scope: !220)
!229 = !DILocation(line: 175, column: 52, scope: !220)
!230 = !DILocation(line: 175, column: 42, scope: !220)
!231 = !DILocation(line: 175, column: 39, scope: !220)
!232 = !DILocation(line: 0, scope: !220)
!233 = !DILocation(line: 175, column: 2, scope: !217)
!234 = !DILocation(line: 175, column: 61, scope: !220)
!235 = !DILocation(line: 175, column: 2, scope: !220)
!236 = distinct !{!236, !233, !237, !87}
!237 = !DILocation(line: 175, column: 64, scope: !217)
!238 = !DILocation(line: 180, column: 10, scope: !239)
!239 = distinct !DILexicalBlock(scope: !19, file: !1, line: 180, column: 6)
!240 = !DILocation(line: 180, column: 16, scope: !239)
!241 = !DILocation(line: 180, column: 21, scope: !239)
!242 = !DILocation(line: 180, column: 24, scope: !239)
!243 = !DILocation(line: 180, column: 6, scope: !239)
!244 = !DILocation(line: 181, column: 27, scope: !239)
!245 = !DILocation(line: 181, column: 33, scope: !239)
!246 = !DILocation(line: 181, column: 42, scope: !239)
!247 = !DILocation(line: 181, column: 45, scope: !239)
!248 = !DILocation(line: 181, column: 48, scope: !239)
!249 = !DILocation(line: 181, column: 19, scope: !239)
!250 = !DILocation(line: 181, column: 3, scope: !239)
!251 = !DILocation(line: 181, column: 9, scope: !239)
!252 = !DILocation(line: 181, column: 17, scope: !239)
!253 = !DILocation(line: 183, column: 26, scope: !239)
!254 = !DILocation(line: 183, column: 32, scope: !239)
!255 = !DILocation(line: 183, column: 40, scope: !239)
!256 = !DILocation(line: 183, column: 43, scope: !239)
!257 = !DILocation(line: 183, column: 46, scope: !239)
!258 = !DILocation(line: 183, column: 18, scope: !239)
!259 = !DILocation(line: 183, column: 3, scope: !239)
!260 = !DILocation(line: 183, column: 9, scope: !239)
!261 = !DILocation(line: 183, column: 16, scope: !239)
!262 = !DILocation(line: 185, column: 9, scope: !19)
!263 = !DILocation(line: 185, column: 2, scope: !19)
!264 = !DILocation(line: 186, column: 1, scope: !19)
!265 = distinct !DISubprogram(name: "bit", scope: !1, file: !1, line: 36, type: !266, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !33)
!266 = !DISubroutineType(types: !267)
!267 = !{!8, !45, !8}
!268 = !DILocalVariable(name: "i", arg: 1, scope: !265, file: !1, line: 36, type: !45)
!269 = !DILocation(line: 36, column: 9, scope: !265)
!270 = !DILocalVariable(name: "key", arg: 2, scope: !265, file: !1, line: 36, type: !8)
!271 = !DILocation(line: 36, column: 26, scope: !265)
!272 = !DILocation(line: 38, column: 9, scope: !265)
!273 = !DILocation(line: 38, column: 25, scope: !265)
!274 = !DILocation(line: 38, column: 24, scope: !265)
!275 = !DILocation(line: 38, column: 18, scope: !265)
!276 = !DILocation(line: 38, column: 15, scope: !265)
!277 = !DILocation(line: 38, column: 13, scope: !265)
!278 = !DILocation(line: 38, column: 2, scope: !265)
!279 = distinct !DISubprogram(name: "insertR", scope: !1, file: !1, line: 66, type: !280, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !33)
!280 = !DISubroutineType(types: !281)
!281 = !{!22, !22, !22, !45, !22}
!282 = !DILocalVariable(name: "h", arg: 1, scope: !279, file: !1, line: 66, type: !22)
!283 = !DILocation(line: 66, column: 23, scope: !279)
!284 = !DILocalVariable(name: "n", arg: 2, scope: !279, file: !1, line: 66, type: !22)
!285 = !DILocation(line: 66, column: 40, scope: !279)
!286 = !DILocalVariable(name: "d", arg: 3, scope: !279, file: !1, line: 66, type: !45)
!287 = !DILocation(line: 66, column: 47, scope: !279)
!288 = !DILocalVariable(name: "p", arg: 4, scope: !279, file: !1, line: 66, type: !22)
!289 = !DILocation(line: 66, column: 64, scope: !279)
!290 = !DILocation(line: 68, column: 7, scope: !291)
!291 = distinct !DILexicalBlock(scope: !279, file: !1, line: 68, column: 6)
!292 = !DILocation(line: 68, column: 10, scope: !291)
!293 = !DILocation(line: 68, column: 17, scope: !291)
!294 = !DILocation(line: 68, column: 14, scope: !291)
!295 = !DILocation(line: 68, column: 20, scope: !291)
!296 = !DILocation(line: 68, column: 24, scope: !291)
!297 = !DILocation(line: 68, column: 27, scope: !291)
!298 = !DILocation(line: 68, column: 34, scope: !291)
!299 = !DILocation(line: 68, column: 37, scope: !291)
!300 = !DILocation(line: 68, column: 31, scope: !291)
!301 = !DILocation(line: 69, column: 12, scope: !302)
!302 = distinct !DILexicalBlock(scope: !291, file: !1, line: 68, column: 43)
!303 = !DILocation(line: 69, column: 3, scope: !302)
!304 = !DILocation(line: 69, column: 6, scope: !302)
!305 = !DILocation(line: 69, column: 10, scope: !302)
!306 = !DILocation(line: 70, column: 19, scope: !302)
!307 = !DILocation(line: 70, column: 22, scope: !302)
!308 = !DILocation(line: 70, column: 25, scope: !302)
!309 = !DILocation(line: 70, column: 15, scope: !302)
!310 = !DILocation(line: 70, column: 34, scope: !302)
!311 = !DILocation(line: 70, column: 38, scope: !302)
!312 = !DILocation(line: 70, column: 3, scope: !302)
!313 = !DILocation(line: 70, column: 6, scope: !302)
!314 = !DILocation(line: 70, column: 13, scope: !302)
!315 = !DILocation(line: 71, column: 20, scope: !302)
!316 = !DILocation(line: 71, column: 23, scope: !302)
!317 = !DILocation(line: 71, column: 26, scope: !302)
!318 = !DILocation(line: 71, column: 16, scope: !302)
!319 = !DILocation(line: 71, column: 35, scope: !302)
!320 = !DILocation(line: 71, column: 39, scope: !302)
!321 = !DILocation(line: 71, column: 3, scope: !302)
!322 = !DILocation(line: 71, column: 6, scope: !302)
!323 = !DILocation(line: 71, column: 14, scope: !302)
!324 = !DILocation(line: 72, column: 10, scope: !302)
!325 = !DILocation(line: 72, column: 3, scope: !302)
!326 = !DILocation(line: 75, column: 10, scope: !327)
!327 = distinct !DILexicalBlock(scope: !279, file: !1, line: 75, column: 6)
!328 = !DILocation(line: 75, column: 13, scope: !327)
!329 = !DILocation(line: 75, column: 18, scope: !327)
!330 = !DILocation(line: 75, column: 21, scope: !327)
!331 = !DILocation(line: 75, column: 6, scope: !327)
!332 = !DILocation(line: 76, column: 24, scope: !327)
!333 = !DILocation(line: 76, column: 27, scope: !327)
!334 = !DILocation(line: 76, column: 36, scope: !327)
!335 = !DILocation(line: 76, column: 39, scope: !327)
!336 = !DILocation(line: 76, column: 42, scope: !327)
!337 = !DILocation(line: 76, column: 16, scope: !327)
!338 = !DILocation(line: 76, column: 3, scope: !327)
!339 = !DILocation(line: 76, column: 6, scope: !327)
!340 = !DILocation(line: 76, column: 14, scope: !327)
!341 = !DILocation(line: 78, column: 23, scope: !327)
!342 = !DILocation(line: 78, column: 26, scope: !327)
!343 = !DILocation(line: 78, column: 34, scope: !327)
!344 = !DILocation(line: 78, column: 37, scope: !327)
!345 = !DILocation(line: 78, column: 40, scope: !327)
!346 = !DILocation(line: 78, column: 15, scope: !327)
!347 = !DILocation(line: 78, column: 3, scope: !327)
!348 = !DILocation(line: 78, column: 6, scope: !327)
!349 = !DILocation(line: 78, column: 13, scope: !327)
!350 = !DILocation(line: 79, column: 9, scope: !279)
!351 = !DILocation(line: 79, column: 2, scope: !279)
!352 = !DILocation(line: 80, column: 1, scope: !279)
!353 = distinct !DISubprogram(name: "pat_remove", scope: !1, file: !1, line: 193, type: !354, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!354 = !DISubroutineType(types: !355)
!355 = !{!45, !22, !22}
!356 = !DILocalVariable(name: "n", arg: 1, scope: !353, file: !1, line: 193, type: !22)
!357 = !DILocation(line: 193, column: 26, scope: !353)
!358 = !DILocalVariable(name: "head", arg: 2, scope: !353, file: !1, line: 193, type: !22)
!359 = !DILocation(line: 193, column: 43, scope: !353)
!360 = !DILocalVariable(name: "p", scope: !353, file: !1, line: 195, type: !22)
!361 = !DILocation(line: 195, column: 16, scope: !353)
!362 = !DILocalVariable(name: "g", scope: !353, file: !1, line: 195, type: !22)
!363 = !DILocation(line: 195, column: 20, scope: !353)
!364 = !DILocalVariable(name: "pt", scope: !353, file: !1, line: 195, type: !22)
!365 = !DILocation(line: 195, column: 24, scope: !353)
!366 = !DILocalVariable(name: "pp", scope: !353, file: !1, line: 195, type: !22)
!367 = !DILocation(line: 195, column: 29, scope: !353)
!368 = !DILocalVariable(name: "t", scope: !353, file: !1, line: 195, type: !22)
!369 = !DILocation(line: 195, column: 34, scope: !353)
!370 = !DILocalVariable(name: "buf", scope: !353, file: !1, line: 196, type: !3)
!371 = !DILocation(line: 196, column: 21, scope: !353)
!372 = !DILocalVariable(name: "pm", scope: !353, file: !1, line: 196, type: !3)
!373 = !DILocation(line: 196, column: 27, scope: !353)
!374 = !DILocalVariable(name: "i", scope: !353, file: !1, line: 197, type: !45)
!375 = !DILocation(line: 197, column: 6, scope: !353)
!376 = !DILocation(line: 199, column: 7, scope: !377)
!377 = distinct !DILexicalBlock(scope: !353, file: !1, line: 199, column: 6)
!378 = !DILocation(line: 199, column: 9, scope: !377)
!379 = !DILocation(line: 199, column: 13, scope: !377)
!380 = !DILocation(line: 199, column: 16, scope: !377)
!381 = !DILocation(line: 199, column: 20, scope: !377)
!382 = !DILocation(line: 199, column: 24, scope: !377)
!383 = !DILocation(line: 200, column: 3, scope: !377)
!384 = !DILocation(line: 206, column: 14, scope: !353)
!385 = !DILocation(line: 206, column: 12, scope: !353)
!386 = !DILocation(line: 206, column: 8, scope: !353)
!387 = !DILocation(line: 206, column: 4, scope: !353)
!388 = !DILocation(line: 207, column: 2, scope: !353)
!389 = !DILocation(line: 208, column: 7, scope: !390)
!390 = distinct !DILexicalBlock(scope: !353, file: !1, line: 207, column: 5)
!391 = !DILocation(line: 208, column: 10, scope: !390)
!392 = !DILocation(line: 208, column: 5, scope: !390)
!393 = !DILocation(line: 209, column: 7, scope: !390)
!394 = !DILocation(line: 209, column: 5, scope: !390)
!395 = !DILocation(line: 210, column: 7, scope: !390)
!396 = !DILocation(line: 210, column: 5, scope: !390)
!397 = !DILocation(line: 211, column: 11, scope: !390)
!398 = !DILocation(line: 211, column: 14, scope: !390)
!399 = !DILocation(line: 211, column: 19, scope: !390)
!400 = !DILocation(line: 211, column: 22, scope: !390)
!401 = !DILocation(line: 211, column: 7, scope: !390)
!402 = !DILocation(line: 211, column: 31, scope: !390)
!403 = !DILocation(line: 211, column: 34, scope: !390)
!404 = !DILocation(line: 211, column: 44, scope: !390)
!405 = !DILocation(line: 211, column: 47, scope: !390)
!406 = !DILocation(line: 211, column: 5, scope: !390)
!407 = !DILocation(line: 212, column: 2, scope: !390)
!408 = !DILocation(line: 212, column: 11, scope: !353)
!409 = !DILocation(line: 212, column: 15, scope: !353)
!410 = !DILocation(line: 212, column: 18, scope: !353)
!411 = !DILocation(line: 212, column: 13, scope: !353)
!412 = distinct !{!412, !388, !413, !87}
!413 = !DILocation(line: 212, column: 21, scope: !353)
!414 = !DILocation(line: 217, column: 6, scope: !415)
!415 = distinct !DILexicalBlock(scope: !353, file: !1, line: 217, column: 6)
!416 = !DILocation(line: 217, column: 9, scope: !415)
!417 = !DILocation(line: 217, column: 18, scope: !415)
!418 = !DILocation(line: 217, column: 21, scope: !415)
!419 = !DILocation(line: 217, column: 15, scope: !415)
!420 = !DILocation(line: 218, column: 3, scope: !415)
!421 = !DILocation(line: 223, column: 6, scope: !422)
!422 = distinct !DILexicalBlock(scope: !353, file: !1, line: 223, column: 6)
!423 = !DILocation(line: 223, column: 9, scope: !422)
!424 = !DILocation(line: 223, column: 16, scope: !422)
!425 = !DILocation(line: 227, column: 7, scope: !426)
!426 = distinct !DILexicalBlock(scope: !427, file: !1, line: 227, column: 7)
!427 = distinct !DILexicalBlock(scope: !422, file: !1, line: 223, column: 22)
!428 = !DILocation(line: 227, column: 10, scope: !426)
!429 = !DILocation(line: 227, column: 14, scope: !426)
!430 = !DILocation(line: 228, column: 4, scope: !426)
!431 = !DILocation(line: 233, column: 7, scope: !432)
!432 = distinct !DILexicalBlock(scope: !427, file: !1, line: 233, column: 7)
!433 = !DILocation(line: 233, column: 10, scope: !432)
!434 = !DILocation(line: 233, column: 15, scope: !432)
!435 = !DILocation(line: 233, column: 26, scope: !432)
!436 = !DILocation(line: 233, column: 29, scope: !432)
!437 = !DILocation(line: 233, column: 34, scope: !432)
!438 = !DILocation(line: 233, column: 23, scope: !432)
!439 = !DILocation(line: 234, column: 4, scope: !432)
!440 = !DILocation(line: 240, column: 13, scope: !427)
!441 = !DILocation(line: 240, column: 11, scope: !427)
!442 = !DILocation(line: 240, column: 6, scope: !427)
!443 = !DILocation(line: 241, column: 3, scope: !427)
!444 = !DILocation(line: 242, column: 8, scope: !445)
!445 = distinct !DILexicalBlock(scope: !427, file: !1, line: 241, column: 6)
!446 = !DILocation(line: 242, column: 12, scope: !445)
!447 = !DILocation(line: 242, column: 6, scope: !445)
!448 = !DILocation(line: 243, column: 9, scope: !445)
!449 = !DILocation(line: 243, column: 7, scope: !445)
!450 = !DILocation(line: 244, column: 13, scope: !445)
!451 = !DILocation(line: 244, column: 17, scope: !445)
!452 = !DILocation(line: 244, column: 22, scope: !445)
!453 = !DILocation(line: 244, column: 25, scope: !445)
!454 = !DILocation(line: 244, column: 9, scope: !445)
!455 = !DILocation(line: 244, column: 34, scope: !445)
!456 = !DILocation(line: 244, column: 38, scope: !445)
!457 = !DILocation(line: 244, column: 48, scope: !445)
!458 = !DILocation(line: 244, column: 52, scope: !445)
!459 = !DILocation(line: 244, column: 7, scope: !445)
!460 = !DILocation(line: 245, column: 3, scope: !445)
!461 = !DILocation(line: 245, column: 12, scope: !427)
!462 = !DILocation(line: 245, column: 16, scope: !427)
!463 = !DILocation(line: 245, column: 20, scope: !427)
!464 = !DILocation(line: 245, column: 14, scope: !427)
!465 = distinct !{!465, !443, !466, !87}
!466 = !DILocation(line: 245, column: 23, scope: !427)
!467 = !DILocation(line: 247, column: 11, scope: !468)
!468 = distinct !DILexicalBlock(scope: !427, file: !1, line: 247, column: 7)
!469 = !DILocation(line: 247, column: 15, scope: !468)
!470 = !DILocation(line: 247, column: 20, scope: !468)
!471 = !DILocation(line: 247, column: 23, scope: !468)
!472 = !DILocation(line: 247, column: 7, scope: !468)
!473 = !DILocation(line: 248, column: 18, scope: !468)
!474 = !DILocation(line: 248, column: 4, scope: !468)
!475 = !DILocation(line: 248, column: 8, scope: !468)
!476 = !DILocation(line: 248, column: 16, scope: !468)
!477 = !DILocation(line: 250, column: 17, scope: !468)
!478 = !DILocation(line: 250, column: 4, scope: !468)
!479 = !DILocation(line: 250, column: 8, scope: !468)
!480 = !DILocation(line: 250, column: 15, scope: !468)
!481 = !DILocation(line: 255, column: 11, scope: !482)
!482 = distinct !DILexicalBlock(scope: !427, file: !1, line: 255, column: 7)
!483 = !DILocation(line: 255, column: 14, scope: !482)
!484 = !DILocation(line: 255, column: 19, scope: !482)
!485 = !DILocation(line: 255, column: 22, scope: !482)
!486 = !DILocation(line: 255, column: 7, scope: !482)
!487 = !DILocation(line: 256, column: 21, scope: !482)
!488 = !DILocation(line: 256, column: 24, scope: !482)
!489 = !DILocation(line: 256, column: 29, scope: !482)
!490 = !DILocation(line: 256, column: 32, scope: !482)
!491 = !DILocation(line: 256, column: 17, scope: !482)
!492 = !DILocation(line: 257, column: 5, scope: !482)
!493 = !DILocation(line: 257, column: 8, scope: !482)
!494 = !DILocation(line: 257, column: 17, scope: !482)
!495 = !DILocation(line: 257, column: 20, scope: !482)
!496 = !DILocation(line: 256, column: 4, scope: !482)
!497 = !DILocation(line: 256, column: 7, scope: !482)
!498 = !DILocation(line: 256, column: 15, scope: !482)
!499 = !DILocation(line: 259, column: 20, scope: !482)
!500 = !DILocation(line: 259, column: 23, scope: !482)
!501 = !DILocation(line: 259, column: 28, scope: !482)
!502 = !DILocation(line: 259, column: 31, scope: !482)
!503 = !DILocation(line: 259, column: 16, scope: !482)
!504 = !DILocation(line: 260, column: 5, scope: !482)
!505 = !DILocation(line: 260, column: 8, scope: !482)
!506 = !DILocation(line: 260, column: 17, scope: !482)
!507 = !DILocation(line: 260, column: 20, scope: !482)
!508 = !DILocation(line: 259, column: 4, scope: !482)
!509 = !DILocation(line: 259, column: 7, scope: !482)
!510 = !DILocation(line: 259, column: 14, scope: !482)
!511 = !DILocation(line: 266, column: 7, scope: !512)
!512 = distinct !DILexicalBlock(scope: !427, file: !1, line: 266, column: 7)
!513 = !DILocation(line: 266, column: 10, scope: !512)
!514 = !DILocation(line: 266, column: 15, scope: !512)
!515 = !DILocation(line: 267, column: 9, scope: !512)
!516 = !DILocation(line: 267, column: 12, scope: !512)
!517 = !DILocation(line: 267, column: 17, scope: !512)
!518 = !DILocation(line: 267, column: 4, scope: !512)
!519 = !DILocation(line: 268, column: 8, scope: !427)
!520 = !DILocation(line: 268, column: 11, scope: !427)
!521 = !DILocation(line: 268, column: 3, scope: !427)
!522 = !DILocation(line: 269, column: 7, scope: !523)
!523 = distinct !DILexicalBlock(scope: !427, file: !1, line: 269, column: 7)
!524 = !DILocation(line: 269, column: 12, scope: !523)
!525 = !DILocation(line: 269, column: 9, scope: !523)
!526 = !DILocation(line: 270, column: 15, scope: !527)
!527 = distinct !DILexicalBlock(scope: !523, file: !1, line: 269, column: 15)
!528 = !DILocation(line: 270, column: 18, scope: !527)
!529 = !DILocation(line: 270, column: 4, scope: !527)
!530 = !DILocation(line: 270, column: 7, scope: !527)
!531 = !DILocation(line: 270, column: 13, scope: !527)
!532 = !DILocation(line: 271, column: 13, scope: !527)
!533 = !DILocation(line: 271, column: 16, scope: !527)
!534 = !DILocation(line: 271, column: 4, scope: !527)
!535 = !DILocation(line: 271, column: 7, scope: !527)
!536 = !DILocation(line: 271, column: 11, scope: !527)
!537 = !DILocation(line: 272, column: 16, scope: !527)
!538 = !DILocation(line: 272, column: 19, scope: !527)
!539 = !DILocation(line: 272, column: 4, scope: !527)
!540 = !DILocation(line: 272, column: 7, scope: !527)
!541 = !DILocation(line: 272, column: 14, scope: !527)
!542 = !DILocation(line: 273, column: 3, scope: !527)
!543 = !DILocation(line: 274, column: 8, scope: !427)
!544 = !DILocation(line: 274, column: 3, scope: !427)
!545 = !DILocation(line: 276, column: 3, scope: !427)
!546 = !DILocation(line: 283, column: 8, scope: !547)
!547 = distinct !DILexicalBlock(scope: !353, file: !1, line: 283, column: 2)
!548 = !DILocation(line: 283, column: 7, scope: !547)
!549 = !DILocation(line: 283, column: 12, scope: !550)
!550 = distinct !DILexicalBlock(scope: !547, file: !1, line: 283, column: 2)
!551 = !DILocation(line: 283, column: 16, scope: !550)
!552 = !DILocation(line: 283, column: 19, scope: !550)
!553 = !DILocation(line: 283, column: 14, scope: !550)
!554 = !DILocation(line: 283, column: 2, scope: !547)
!555 = !DILocation(line: 284, column: 7, scope: !556)
!556 = distinct !DILexicalBlock(scope: !550, file: !1, line: 284, column: 7)
!557 = !DILocation(line: 284, column: 10, scope: !556)
!558 = !DILocation(line: 284, column: 15, scope: !556)
!559 = !DILocation(line: 284, column: 26, scope: !556)
!560 = !DILocation(line: 284, column: 29, scope: !556)
!561 = !DILocation(line: 284, column: 33, scope: !556)
!562 = !DILocation(line: 284, column: 36, scope: !556)
!563 = !DILocation(line: 284, column: 23, scope: !556)
!564 = !DILocation(line: 285, column: 4, scope: !556)
!565 = !DILocation(line: 283, column: 28, scope: !550)
!566 = !DILocation(line: 283, column: 2, scope: !550)
!567 = distinct !{!567, !554, !568, !87}
!568 = !DILocation(line: 285, column: 4, scope: !547)
!569 = !DILocation(line: 286, column: 6, scope: !570)
!570 = distinct !DILexicalBlock(scope: !353, file: !1, line: 286, column: 6)
!571 = !DILocation(line: 286, column: 11, scope: !570)
!572 = !DILocation(line: 286, column: 14, scope: !570)
!573 = !DILocation(line: 286, column: 8, scope: !570)
!574 = !DILocation(line: 287, column: 3, scope: !570)
!575 = !DILocation(line: 293, column: 36, scope: !353)
!576 = !DILocation(line: 293, column: 39, scope: !353)
!577 = !DILocation(line: 293, column: 45, scope: !353)
!578 = !DILocation(line: 293, column: 35, scope: !353)
!579 = !DILocation(line: 293, column: 34, scope: !353)
!580 = !DILocation(line: 292, column: 29, scope: !353)
!581 = !DILocation(line: 292, column: 6, scope: !353)
!582 = !DILocation(line: 295, column: 8, scope: !583)
!583 = distinct !DILexicalBlock(scope: !353, file: !1, line: 295, column: 2)
!584 = !DILocation(line: 295, column: 15, scope: !583)
!585 = !DILocation(line: 295, column: 14, scope: !583)
!586 = !DILocation(line: 295, column: 7, scope: !583)
!587 = !DILocation(line: 295, column: 20, scope: !588)
!588 = distinct !DILexicalBlock(scope: !583, file: !1, line: 295, column: 2)
!589 = !DILocation(line: 295, column: 24, scope: !588)
!590 = !DILocation(line: 295, column: 27, scope: !588)
!591 = !DILocation(line: 295, column: 22, scope: !588)
!592 = !DILocation(line: 295, column: 2, scope: !583)
!593 = !DILocation(line: 296, column: 7, scope: !594)
!594 = distinct !DILexicalBlock(scope: !595, file: !1, line: 296, column: 7)
!595 = distinct !DILexicalBlock(scope: !588, file: !1, line: 295, column: 40)
!596 = !DILocation(line: 296, column: 10, scope: !594)
!597 = !DILocation(line: 296, column: 15, scope: !594)
!598 = !DILocation(line: 296, column: 26, scope: !594)
!599 = !DILocation(line: 296, column: 29, scope: !594)
!600 = !DILocation(line: 296, column: 33, scope: !594)
!601 = !DILocation(line: 296, column: 36, scope: !594)
!602 = !DILocation(line: 296, column: 23, scope: !594)
!603 = !DILocation(line: 297, column: 31, scope: !604)
!604 = distinct !DILexicalBlock(scope: !594, file: !1, line: 296, column: 45)
!605 = !DILocation(line: 297, column: 35, scope: !604)
!606 = !DILocation(line: 297, column: 38, scope: !604)
!607 = !DILocation(line: 297, column: 44, scope: !604)
!608 = !DILocation(line: 297, column: 42, scope: !604)
!609 = !DILocation(line: 297, column: 21, scope: !604)
!610 = !DILocation(line: 298, column: 3, scope: !604)
!611 = !DILocation(line: 299, column: 2, scope: !595)
!612 = !DILocation(line: 295, column: 36, scope: !588)
!613 = !DILocation(line: 295, column: 2, scope: !588)
!614 = distinct !{!614, !592, !615, !87}
!615 = !DILocation(line: 299, column: 2, scope: !583)
!616 = !DILocation(line: 304, column: 2, scope: !353)
!617 = !DILocation(line: 304, column: 5, scope: !353)
!618 = !DILocation(line: 304, column: 11, scope: !353)
!619 = !DILocation(line: 305, column: 7, scope: !353)
!620 = !DILocation(line: 305, column: 10, scope: !353)
!621 = !DILocation(line: 305, column: 2, scope: !353)
!622 = !DILocation(line: 306, column: 11, scope: !353)
!623 = !DILocation(line: 306, column: 2, scope: !353)
!624 = !DILocation(line: 306, column: 5, scope: !353)
!625 = !DILocation(line: 306, column: 9, scope: !353)
!626 = !DILocation(line: 307, column: 2, scope: !353)
!627 = !DILocation(line: 308, column: 1, scope: !353)
!628 = distinct !DISubprogram(name: "pat_search", scope: !1, file: !1, line: 315, type: !629, scopeLine: 316, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!629 = !DISubroutineType(types: !630)
!630 = !{!22, !8, !22}
!631 = !DILocalVariable(name: "key", arg: 1, scope: !628, file: !1, line: 315, type: !8)
!632 = !DILocation(line: 315, column: 26, scope: !628)
!633 = !DILocalVariable(name: "head", arg: 2, scope: !628, file: !1, line: 315, type: !22)
!634 = !DILocation(line: 315, column: 45, scope: !628)
!635 = !DILocalVariable(name: "p", scope: !628, file: !1, line: 317, type: !22)
!636 = !DILocation(line: 317, column: 16, scope: !628)
!637 = !DILocalVariable(name: "t", scope: !628, file: !1, line: 317, type: !22)
!638 = !DILocation(line: 317, column: 24, scope: !628)
!639 = !DILocation(line: 317, column: 28, scope: !628)
!640 = !DILocalVariable(name: "i", scope: !628, file: !1, line: 318, type: !45)
!641 = !DILocation(line: 318, column: 6, scope: !628)
!642 = !DILocation(line: 320, column: 7, scope: !643)
!643 = distinct !DILexicalBlock(scope: !628, file: !1, line: 320, column: 6)
!644 = !DILocation(line: 320, column: 6, scope: !643)
!645 = !DILocation(line: 321, column: 3, scope: !643)
!646 = !DILocation(line: 326, column: 2, scope: !628)
!647 = !DILocation(line: 330, column: 7, scope: !648)
!648 = distinct !DILexicalBlock(scope: !649, file: !1, line: 330, column: 7)
!649 = distinct !DILexicalBlock(scope: !628, file: !1, line: 326, column: 5)
!650 = !DILocation(line: 330, column: 10, scope: !648)
!651 = !DILocation(line: 330, column: 20, scope: !648)
!652 = !DILocation(line: 330, column: 26, scope: !648)
!653 = !DILocation(line: 330, column: 29, scope: !648)
!654 = !DILocation(line: 330, column: 34, scope: !648)
!655 = !DILocation(line: 330, column: 24, scope: !648)
!656 = !DILocation(line: 330, column: 16, scope: !648)
!657 = !DILocation(line: 331, column: 8, scope: !658)
!658 = distinct !DILexicalBlock(scope: !648, file: !1, line: 330, column: 44)
!659 = !DILocation(line: 331, column: 6, scope: !658)
!660 = !DILocation(line: 332, column: 3, scope: !658)
!661 = !DILocation(line: 334, column: 7, scope: !649)
!662 = !DILocation(line: 334, column: 10, scope: !649)
!663 = !DILocation(line: 334, column: 5, scope: !649)
!664 = !DILocation(line: 335, column: 11, scope: !649)
!665 = !DILocation(line: 335, column: 14, scope: !649)
!666 = !DILocation(line: 335, column: 19, scope: !649)
!667 = !DILocation(line: 335, column: 7, scope: !649)
!668 = !DILocation(line: 335, column: 26, scope: !649)
!669 = !DILocation(line: 335, column: 29, scope: !649)
!670 = !DILocation(line: 335, column: 39, scope: !649)
!671 = !DILocation(line: 335, column: 42, scope: !649)
!672 = !DILocation(line: 335, column: 5, scope: !649)
!673 = !DILocation(line: 336, column: 2, scope: !649)
!674 = !DILocation(line: 336, column: 11, scope: !628)
!675 = !DILocation(line: 336, column: 15, scope: !628)
!676 = !DILocation(line: 336, column: 18, scope: !628)
!677 = !DILocation(line: 336, column: 13, scope: !628)
!678 = distinct !{!678, !646, !679, !87}
!679 = !DILocation(line: 336, column: 21, scope: !628)
!680 = !DILocation(line: 342, column: 10, scope: !628)
!681 = !DILocation(line: 342, column: 13, scope: !628)
!682 = !DILocation(line: 342, column: 23, scope: !628)
!683 = !DILocation(line: 342, column: 29, scope: !628)
!684 = !DILocation(line: 342, column: 32, scope: !628)
!685 = !DILocation(line: 342, column: 37, scope: !628)
!686 = !DILocation(line: 342, column: 27, scope: !628)
!687 = !DILocation(line: 342, column: 19, scope: !628)
!688 = !DILocation(line: 342, column: 9, scope: !628)
!689 = !DILocation(line: 342, column: 49, scope: !628)
!690 = !DILocation(line: 342, column: 53, scope: !628)
!691 = !DILocation(line: 342, column: 2, scope: !628)
!692 = !DILocation(line: 343, column: 1, scope: !628)
