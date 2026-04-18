; ModuleID = '../../src/depthconv/depthconv.c'
source_filename = "../../src/depthconv/depthconv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RuntimeShape = type { [6 x i32], i32 }
%struct.PaddingValues = type { i16, i16, i16, i16 }
%struct.DepthwiseParams = type { i8, %struct.PaddingValues, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, float, float, ptr, ptr }

@EXPECTED_OUTPUT = dso_local global [32 x i8] c"\C9\EA\E9\CC\12\F2\FB6\BA\04\1B\CD\D6)\FA;\E2S'\B6\D9\09\19=\14\1E\F8\DD+\C5\1A\13", align 16
@OUTPUT_DATA = dso_local global [32 x i8] zeroinitializer, align 16
@OUTPUT_MULTIPLIER = internal global [32 x i32] [i32 1152862902, i32 1152862902, i32 1152862902, i32 1152862902, i32 1152862902, i32 1152862902, i32 1152862902, i32 1152862902, i32 1152862902, i32 1152862902, i32 1152862902, i32 1152862902, i32 1152862902, i32 1152862902, i32 1152862902, i32 1152862902, i32 1152862902, i32 1152862902, i32 1152862902, i32 1152862902, i32 1152862902, i32 1152862902, i32 1152862902, i32 1152862902, i32 1152862902, i32 1152862902, i32 1152862902, i32 1152862902, i32 1152862902, i32 1152862902, i32 1152862902, i32 1152862902], align 16
@OUTPUT_SHIFT = internal global [32 x i32] [i32 -8, i32 -8, i32 -8, i32 -8, i32 -8, i32 -8, i32 -8, i32 -8, i32 -8, i32 -8, i32 -8, i32 -8, i32 -8, i32 -8, i32 -8, i32 -8, i32 -8, i32 -8, i32 -8, i32 -8, i32 -8, i32 -8, i32 -8, i32 -8, i32 -8, i32 -8, i32 -8, i32 -8, i32 -8, i32 -8, i32 -8, i32 -8], align 16
@INPUT_SHAPE = internal global %struct.RuntimeShape { [6 x i32] [i32 1, i32 4, i32 1, i32 32, i32 0, i32 0], i32 4 }, align 4
@INPUT_DATA = internal global [128 x i8] c"<9>D8\22\22*?9\1C\1A$\18\07\19\1F\00\1D#\01\0B\01\1E\1B\12\0C\13\09\08\FE\FD;=<?4\1E\1E,?9\18\16\1D\17\F7\1B#\0C\1C\22\FE\12\0A\1C\19\1A\18\0D\06\0F\FC\FB19=;*%&->5\13\11\22\19\F7 '\08\1D#\00\19\11\1A\18\1B\18\08\09\17\F8\FDA<67)\1B\1B&6.\12\16&\1E\00\1D%\0A\1E#\04$\1B!\1F\16\11\09\13#\FE\01", align 16
@FILTER_SHAPE = internal global %struct.RuntimeShape { [6 x i32] [i32 1, i32 4, i32 1, i32 32, i32 0, i32 1], i32 4 }, align 4
@FILTER_DATA = internal global [128 x i8] c"\CF\C5+\BA\E5/\01\\\CD).\CD\D6,74\C5?D\C4\B78<0L6\BF\D2?\A9=K\83\EF\9E\EE\E3=\E0*\B3\CF'\C9\F5+\EEG\FD\7F'\BA\BD\F0\C17\D4%&\E0\E9%\1F-R4\C7\CA2\AD:?\A6\B2\A0\06\F9I\F3\14\C9<=\D6\C64(+()\D6\CC(\CE*\19\D5\E16\0E>\BE\D2\D1.e^\C2\C2\E3\CE%\1E)\CF\D32\C9.&\F5\DA*\0D@\AA\E0\BB", align 16
@BIAS_SHAPE = internal global %struct.RuntimeShape { [6 x i32] [i32 32, i32 0, i32 0, i32 0, i32 0, i32 0], i32 1 }, align 4
@BIAS_DATA = internal global [32 x i32] zeroinitializer, align 16
@OUTPUT_SHAPE = internal global %struct.RuntimeShape { [6 x i32] [i32 1, i32 1, i32 1, i32 32, i32 1, i32 4], i32 4 }, align 4
@PARAMS = internal global { i8, i8, %struct.PaddingValues, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, float, float, ptr, ptr } { i8 0, i8 0, %struct.PaddingValues zeroinitializer, i16 1, i16 1, i16 1, i16 1, i16 1, i32 128, i32 0, i32 0, i32 0, i32 0, i32 -128, i32 127, float 0.000000e+00, float 0.000000e+00, ptr null, ptr null }, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @initialise_benchmark() #0 {
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @warm_caches(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %4 = load i32, ptr %2, align 4
  %5 = call i32 @benchmark_body(i32 noundef %4, i32 noundef 1)
  store i32 %5, ptr %3, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @benchmark_body(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  store i32 0, ptr %5, align 4
  br label %7

7:                                                ; preds = %21, %2
  %8 = load i32, ptr %5, align 4
  %9 = load i32, ptr %3, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %24

11:                                               ; preds = %7
  store i32 0, ptr %6, align 4
  br label %12

12:                                               ; preds = %17, %11
  %13 = load i32, ptr %6, align 4
  %14 = load i32, ptr %4, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  call void @DepthwiseConvPerChannel(ptr noundef @PARAMS, ptr noundef @OUTPUT_MULTIPLIER, ptr noundef @OUTPUT_SHIFT, ptr noundef @INPUT_SHAPE, ptr noundef @INPUT_DATA, ptr noundef @FILTER_SHAPE, ptr noundef @FILTER_DATA, ptr noundef @BIAS_SHAPE, ptr noundef @BIAS_DATA, ptr noundef @OUTPUT_SHAPE, ptr noundef @OUTPUT_DATA)
  br label %17

17:                                               ; preds = %16
  %18 = load i32, ptr %6, align 4
  %19 = add i32 %18, 1
  store i32 %19, ptr %6, align 4
  br label %12, !llvm.loop !6

20:                                               ; preds = %12
  br label %21

21:                                               ; preds = %20
  %22 = load i32, ptr %5, align 4
  %23 = add i32 %22, 1
  store i32 %23, ptr %5, align 4
  br label %7, !llvm.loop !8

24:                                               ; preds = %7
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @benchmark() #0 {
  %1 = call i32 @benchmark_body(i32 noundef 1639, i32 noundef 20)
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @verify_benchmark(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 0, ptr %4, align 4
  br label %5

5:                                                ; preds = %23, %1
  %6 = load i32, ptr %4, align 4
  %7 = sext i32 %6 to i64
  %8 = icmp ult i64 %7, 32
  br i1 %8, label %9, label %26

9:                                                ; preds = %5
  %10 = load i32, ptr %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [32 x i8], ptr @EXPECTED_OUTPUT, i64 0, i64 %11
  %13 = load i8, ptr %12, align 1
  %14 = sext i8 %13 to i32
  %15 = load i32, ptr %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [32 x i8], ptr @OUTPUT_DATA, i64 0, i64 %16
  %18 = load i8, ptr %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %14, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %9
  store i32 0, ptr %2, align 4
  br label %27

22:                                               ; preds = %9
  br label %23

23:                                               ; preds = %22
  %24 = load i32, ptr %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr %4, align 4
  br label %5, !llvm.loop !9

26:                                               ; preds = %5
  store i32 1, ptr %2, align 4
  br label %27

27:                                               ; preds = %26, %21
  %28 = load i32, ptr %2, align 4
  ret i32 %28
}

; Function Attrs: noinline nounwind uwtable
define internal void @DepthwiseConvPerChannel(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) #0 {
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca ptr, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca i32, align 4
  %57 = alloca i32, align 4
  %58 = alloca i32, align 4
  store ptr %0, ptr %12, align 8
  store ptr %1, ptr %13, align 8
  store ptr %2, ptr %14, align 8
  store ptr %3, ptr %15, align 8
  store ptr %4, ptr %16, align 8
  store ptr %5, ptr %17, align 8
  store ptr %6, ptr %18, align 8
  store ptr %7, ptr %19, align 8
  store ptr %8, ptr %20, align 8
  store ptr %9, ptr %21, align 8
  store ptr %10, ptr %22, align 8
  %59 = load ptr, ptr %12, align 8
  %60 = getelementptr inbounds nuw %struct.DepthwiseParams, ptr %59, i32 0, i32 2
  %61 = load i16, ptr %60, align 2
  %62 = sext i16 %61 to i32
  store i32 %62, ptr %23, align 4
  %63 = load ptr, ptr %12, align 8
  %64 = getelementptr inbounds nuw %struct.DepthwiseParams, ptr %63, i32 0, i32 3
  %65 = load i16, ptr %64, align 4
  %66 = sext i16 %65 to i32
  store i32 %66, ptr %24, align 4
  %67 = load ptr, ptr %12, align 8
  %68 = getelementptr inbounds nuw %struct.DepthwiseParams, ptr %67, i32 0, i32 4
  %69 = load i16, ptr %68, align 2
  %70 = sext i16 %69 to i32
  store i32 %70, ptr %25, align 4
  %71 = load ptr, ptr %12, align 8
  %72 = getelementptr inbounds nuw %struct.DepthwiseParams, ptr %71, i32 0, i32 5
  %73 = load i16, ptr %72, align 8
  %74 = sext i16 %73 to i32
  store i32 %74, ptr %26, align 4
  %75 = load ptr, ptr %12, align 8
  %76 = getelementptr inbounds nuw %struct.DepthwiseParams, ptr %75, i32 0, i32 1
  %77 = getelementptr inbounds nuw %struct.PaddingValues, ptr %76, i32 0, i32 0
  %78 = load i16, ptr %77, align 2
  %79 = sext i16 %78 to i32
  store i32 %79, ptr %27, align 4
  %80 = load ptr, ptr %12, align 8
  %81 = getelementptr inbounds nuw %struct.DepthwiseParams, ptr %80, i32 0, i32 1
  %82 = getelementptr inbounds nuw %struct.PaddingValues, ptr %81, i32 0, i32 1
  %83 = load i16, ptr %82, align 2
  %84 = sext i16 %83 to i32
  store i32 %84, ptr %28, align 4
  %85 = load ptr, ptr %12, align 8
  %86 = getelementptr inbounds nuw %struct.DepthwiseParams, ptr %85, i32 0, i32 6
  %87 = load i16, ptr %86, align 2
  %88 = sext i16 %87 to i32
  store i32 %88, ptr %29, align 4
  %89 = load ptr, ptr %12, align 8
  %90 = getelementptr inbounds nuw %struct.DepthwiseParams, ptr %89, i32 0, i32 7
  %91 = load i32, ptr %90, align 4
  store i32 %91, ptr %30, align 4
  %92 = load ptr, ptr %12, align 8
  %93 = getelementptr inbounds nuw %struct.DepthwiseParams, ptr %92, i32 0, i32 9
  %94 = load i32, ptr %93, align 4
  store i32 %94, ptr %31, align 4
  %95 = load ptr, ptr %12, align 8
  %96 = getelementptr inbounds nuw %struct.DepthwiseParams, ptr %95, i32 0, i32 12
  %97 = load i32, ptr %96, align 8
  store i32 %97, ptr %32, align 4
  %98 = load ptr, ptr %12, align 8
  %99 = getelementptr inbounds nuw %struct.DepthwiseParams, ptr %98, i32 0, i32 13
  %100 = load i32, ptr %99, align 4
  store i32 %100, ptr %33, align 4
  %101 = load ptr, ptr %15, align 8
  %102 = load ptr, ptr %21, align 8
  %103 = call i32 @MatchingDim(ptr noundef %101, i32 noundef 0, ptr noundef %102, i32 noundef 0)
  store i32 %103, ptr %34, align 4
  %104 = load ptr, ptr %17, align 8
  %105 = load ptr, ptr %21, align 8
  %106 = call i32 @MatchingDim(ptr noundef %104, i32 noundef 3, ptr noundef %105, i32 noundef 3)
  store i32 %106, ptr %35, align 4
  %107 = load ptr, ptr %15, align 8
  %108 = call i32 @Dims(ptr noundef %107, i32 noundef 1)
  store i32 %108, ptr %36, align 4
  %109 = load ptr, ptr %15, align 8
  %110 = call i32 @Dims(ptr noundef %109, i32 noundef 2)
  store i32 %110, ptr %37, align 4
  %111 = load ptr, ptr %15, align 8
  %112 = call i32 @Dims(ptr noundef %111, i32 noundef 3)
  store i32 %112, ptr %38, align 4
  %113 = load ptr, ptr %17, align 8
  %114 = call i32 @Dims(ptr noundef %113, i32 noundef 1)
  store i32 %114, ptr %39, align 4
  %115 = load ptr, ptr %17, align 8
  %116 = call i32 @Dims(ptr noundef %115, i32 noundef 2)
  store i32 %116, ptr %40, align 4
  %117 = load ptr, ptr %21, align 8
  %118 = call i32 @Dims(ptr noundef %117, i32 noundef 1)
  store i32 %118, ptr %41, align 4
  %119 = load ptr, ptr %21, align 8
  %120 = call i32 @Dims(ptr noundef %119, i32 noundef 2)
  store i32 %120, ptr %42, align 4
  store i32 0, ptr %43, align 4
  br label %121

121:                                              ; preds = %308, %11
  %122 = load i32, ptr %43, align 4
  %123 = load i32, ptr %34, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %311

125:                                              ; preds = %121
  store i32 0, ptr %44, align 4
  br label %126

126:                                              ; preds = %304, %125
  %127 = load i32, ptr %44, align 4
  %128 = load i32, ptr %41, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %307

130:                                              ; preds = %126
  store i32 0, ptr %45, align 4
  br label %131

131:                                              ; preds = %300, %130
  %132 = load i32, ptr %45, align 4
  %133 = load i32, ptr %42, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %303

135:                                              ; preds = %131
  store i32 0, ptr %46, align 4
  br label %136

136:                                              ; preds = %296, %135
  %137 = load i32, ptr %46, align 4
  %138 = load i32, ptr %38, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %299

140:                                              ; preds = %136
  store i32 0, ptr %47, align 4
  br label %141

141:                                              ; preds = %292, %140
  %142 = load i32, ptr %47, align 4
  %143 = load i32, ptr %29, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %295

145:                                              ; preds = %141
  %146 = load i32, ptr %47, align 4
  %147 = load i32, ptr %46, align 4
  %148 = load i32, ptr %29, align 4
  %149 = mul nsw i32 %147, %148
  %150 = add nsw i32 %146, %149
  store i32 %150, ptr %48, align 4
  %151 = load i32, ptr %45, align 4
  %152 = load i32, ptr %23, align 4
  %153 = mul nsw i32 %151, %152
  %154 = load i32, ptr %27, align 4
  %155 = sub nsw i32 %153, %154
  store i32 %155, ptr %49, align 4
  %156 = load i32, ptr %44, align 4
  %157 = load i32, ptr %24, align 4
  %158 = mul nsw i32 %156, %157
  %159 = load i32, ptr %28, align 4
  %160 = sub nsw i32 %158, %159
  store i32 %160, ptr %50, align 4
  store i32 0, ptr %51, align 4
  store i32 0, ptr %52, align 4
  br label %161

161:                                              ; preds = %233, %145
  %162 = load i32, ptr %52, align 4
  %163 = load i32, ptr %39, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %236

165:                                              ; preds = %161
  store i32 0, ptr %53, align 4
  br label %166

166:                                              ; preds = %229, %165
  %167 = load i32, ptr %53, align 4
  %168 = load i32, ptr %40, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %232

170:                                              ; preds = %166
  %171 = load i32, ptr %49, align 4
  %172 = load i32, ptr %25, align 4
  %173 = load i32, ptr %53, align 4
  %174 = mul nsw i32 %172, %173
  %175 = add nsw i32 %171, %174
  store i32 %175, ptr %54, align 4
  %176 = load i32, ptr %50, align 4
  %177 = load i32, ptr %26, align 4
  %178 = load i32, ptr %52, align 4
  %179 = mul nsw i32 %177, %178
  %180 = add nsw i32 %176, %179
  store i32 %180, ptr %55, align 4
  %181 = load i32, ptr %54, align 4
  %182 = icmp sge i32 %181, 0
  br i1 %182, label %183, label %194

183:                                              ; preds = %170
  %184 = load i32, ptr %54, align 4
  %185 = load i32, ptr %37, align 4
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %187, label %194

187:                                              ; preds = %183
  %188 = load i32, ptr %55, align 4
  %189 = icmp sge i32 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %187
  %191 = load i32, ptr %55, align 4
  %192 = load i32, ptr %36, align 4
  %193 = icmp slt i32 %191, %192
  br label %194

194:                                              ; preds = %190, %187, %183, %170
  %195 = phi i1 [ false, %187 ], [ false, %183 ], [ false, %170 ], [ %193, %190 ]
  %196 = zext i1 %195 to i32
  store i32 %196, ptr %56, align 4
  %197 = load i32, ptr %56, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %228

199:                                              ; preds = %194
  %200 = load ptr, ptr %16, align 8
  %201 = load ptr, ptr %15, align 8
  %202 = load i32, ptr %43, align 4
  %203 = load i32, ptr %55, align 4
  %204 = load i32, ptr %54, align 4
  %205 = load i32, ptr %46, align 4
  %206 = call i32 @Offset4(ptr noundef %201, i32 noundef %202, i32 noundef %203, i32 noundef %204, i32 noundef %205)
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8, ptr %200, i64 %207
  %209 = load i8, ptr %208, align 1
  %210 = sext i8 %209 to i32
  store i32 %210, ptr %57, align 4
  %211 = load ptr, ptr %18, align 8
  %212 = load ptr, ptr %17, align 8
  %213 = load i32, ptr %52, align 4
  %214 = load i32, ptr %53, align 4
  %215 = load i32, ptr %48, align 4
  %216 = call i32 @Offset4(ptr noundef %212, i32 noundef 0, i32 noundef %213, i32 noundef %214, i32 noundef %215)
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i8, ptr %211, i64 %217
  %219 = load i8, ptr %218, align 1
  %220 = sext i8 %219 to i32
  store i32 %220, ptr %58, align 4
  %221 = load i32, ptr %58, align 4
  %222 = load i32, ptr %57, align 4
  %223 = load i32, ptr %30, align 4
  %224 = add nsw i32 %222, %223
  %225 = mul nsw i32 %221, %224
  %226 = load i32, ptr %51, align 4
  %227 = add nsw i32 %226, %225
  store i32 %227, ptr %51, align 4
  br label %228

228:                                              ; preds = %199, %194
  br label %229

229:                                              ; preds = %228
  %230 = load i32, ptr %53, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, ptr %53, align 4
  br label %166, !llvm.loop !10

232:                                              ; preds = %166
  br label %233

233:                                              ; preds = %232
  %234 = load i32, ptr %52, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, ptr %52, align 4
  br label %161, !llvm.loop !11

236:                                              ; preds = %161
  %237 = load ptr, ptr %20, align 8
  %238 = icmp ne ptr %237, null
  br i1 %238, label %239, label %247

239:                                              ; preds = %236
  %240 = load ptr, ptr %20, align 8
  %241 = load i32, ptr %48, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, ptr %240, i64 %242
  %244 = load i32, ptr %243, align 4
  %245 = load i32, ptr %51, align 4
  %246 = add nsw i32 %245, %244
  store i32 %246, ptr %51, align 4
  br label %247

247:                                              ; preds = %239, %236
  %248 = load i32, ptr %51, align 4
  %249 = load ptr, ptr %13, align 8
  %250 = load i32, ptr %48, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, ptr %249, i64 %251
  %253 = load i32, ptr %252, align 4
  %254 = load ptr, ptr %14, align 8
  %255 = load i32, ptr %48, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, ptr %254, i64 %256
  %258 = load i32, ptr %257, align 4
  %259 = call i32 @MultiplyByQuantizedMultiplier(i32 noundef %248, i32 noundef %253, i32 noundef %258)
  store i32 %259, ptr %51, align 4
  %260 = load i32, ptr %31, align 4
  %261 = load i32, ptr %51, align 4
  %262 = add nsw i32 %261, %260
  store i32 %262, ptr %51, align 4
  %263 = load i32, ptr %51, align 4
  %264 = load i32, ptr %32, align 4
  %265 = icmp slt i32 %263, %264
  br i1 %265, label %266, label %268

266:                                              ; preds = %247
  %267 = load i32, ptr %32, align 4
  br label %270

268:                                              ; preds = %247
  %269 = load i32, ptr %51, align 4
  br label %270

270:                                              ; preds = %268, %266
  %271 = phi i32 [ %267, %266 ], [ %269, %268 ]
  store i32 %271, ptr %51, align 4
  %272 = load i32, ptr %51, align 4
  %273 = load i32, ptr %33, align 4
  %274 = icmp slt i32 %272, %273
  br i1 %274, label %275, label %277

275:                                              ; preds = %270
  %276 = load i32, ptr %51, align 4
  br label %279

277:                                              ; preds = %270
  %278 = load i32, ptr %33, align 4
  br label %279

279:                                              ; preds = %277, %275
  %280 = phi i32 [ %276, %275 ], [ %278, %277 ]
  store i32 %280, ptr %51, align 4
  %281 = load i32, ptr %51, align 4
  %282 = trunc i32 %281 to i8
  %283 = load ptr, ptr %22, align 8
  %284 = load ptr, ptr %21, align 8
  %285 = load i32, ptr %43, align 4
  %286 = load i32, ptr %44, align 4
  %287 = load i32, ptr %45, align 4
  %288 = load i32, ptr %48, align 4
  %289 = call i32 @Offset4(ptr noundef %284, i32 noundef %285, i32 noundef %286, i32 noundef %287, i32 noundef %288)
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i8, ptr %283, i64 %290
  store i8 %282, ptr %291, align 1
  br label %292

292:                                              ; preds = %279
  %293 = load i32, ptr %47, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, ptr %47, align 4
  br label %141, !llvm.loop !12

295:                                              ; preds = %141
  br label %296

296:                                              ; preds = %295
  %297 = load i32, ptr %46, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, ptr %46, align 4
  br label %136, !llvm.loop !13

299:                                              ; preds = %136
  br label %300

300:                                              ; preds = %299
  %301 = load i32, ptr %45, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, ptr %45, align 4
  br label %131, !llvm.loop !14

303:                                              ; preds = %131
  br label %304

304:                                              ; preds = %303
  %305 = load i32, ptr %44, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, ptr %44, align 4
  br label %126, !llvm.loop !15

307:                                              ; preds = %126
  br label %308

308:                                              ; preds = %307
  %309 = load i32, ptr %43, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, ptr %43, align 4
  br label %121, !llvm.loop !16

311:                                              ; preds = %121
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @MatchingDim(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store i32 %1, ptr %6, align 4
  store ptr %2, ptr %7, align 8
  store i32 %3, ptr %8, align 4
  %9 = load ptr, ptr %5, align 8
  %10 = load i32, ptr %6, align 4
  %11 = call i32 @Dims(ptr noundef %9, i32 noundef %10)
  %12 = load ptr, ptr %7, align 8
  %13 = load i32, ptr %8, align 4
  %14 = call i32 @Dims(ptr noundef %12, i32 noundef %13)
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load ptr, ptr %5, align 8
  %18 = load i32, ptr %6, align 4
  %19 = call i32 @Dims(ptr noundef %17, i32 noundef %18)
  br label %24

20:                                               ; preds = %4
  %21 = load ptr, ptr %7, align 8
  %22 = load i32, ptr %8, align 4
  %23 = call i32 @Dims(ptr noundef %21, i32 noundef %22)
  br label %24

24:                                               ; preds = %20, %16
  %25 = phi i32 [ %19, %16 ], [ %23, %20 ]
  ret i32 %25
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Dims(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds nuw %struct.RuntimeShape, ptr %5, i32 0, i32 0
  %7 = load i32, ptr %4, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [6 x i32], ptr %6, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Offset4(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  store i32 %1, ptr %7, align 4
  store i32 %2, ptr %8, align 4
  store i32 %3, ptr %9, align 4
  store i32 %4, ptr %10, align 4
  %12 = load ptr, ptr %6, align 8
  %13 = getelementptr inbounds nuw %struct.RuntimeShape, ptr %12, i32 0, i32 0
  %14 = getelementptr inbounds [6 x i32], ptr %13, i64 0, i64 0
  store ptr %14, ptr %11, align 8
  %15 = load i32, ptr %7, align 4
  %16 = load ptr, ptr %11, align 8
  %17 = getelementptr inbounds i32, ptr %16, i64 1
  %18 = load i32, ptr %17, align 4
  %19 = mul nsw i32 %15, %18
  %20 = load i32, ptr %8, align 4
  %21 = add nsw i32 %19, %20
  %22 = load ptr, ptr %11, align 8
  %23 = getelementptr inbounds i32, ptr %22, i64 2
  %24 = load i32, ptr %23, align 4
  %25 = mul nsw i32 %21, %24
  %26 = load i32, ptr %9, align 4
  %27 = add nsw i32 %25, %26
  %28 = load ptr, ptr %11, align 8
  %29 = getelementptr inbounds i32, ptr %28, i64 3
  %30 = load i32, ptr %29, align 4
  %31 = mul nsw i32 %27, %30
  %32 = load i32, ptr %10, align 4
  %33 = add nsw i32 %31, %32
  ret i32 %33
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @MultiplyByQuantizedMultiplier(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, ptr %4, align 4
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  %10 = load i32, ptr %6, align 4
  %11 = sub nsw i32 31, %10
  %12 = sext i32 %11 to i64
  store i64 %12, ptr %7, align 8
  %13 = load i64, ptr %7, align 8
  %14 = sub nsw i64 %13, 1
  %15 = shl i64 1, %14
  store i64 %15, ptr %8, align 8
  %16 = load i32, ptr %4, align 4
  %17 = sext i32 %16 to i64
  %18 = load i32, ptr %5, align 4
  %19 = sext i32 %18 to i64
  %20 = mul nsw i64 %17, %19
  %21 = load i64, ptr %8, align 8
  %22 = add nsw i64 %20, %21
  store i64 %22, ptr %9, align 8
  %23 = load i64, ptr %9, align 8
  %24 = load i64, ptr %7, align 8
  %25 = ashr i64 %23, %24
  store i64 %25, ptr %9, align 8
  %26 = load i64, ptr %9, align 8
  %27 = trunc i64 %26 to i32
  ret i32 %27
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
