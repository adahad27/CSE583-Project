; ModuleID = '../../src/picojpeg/libpicojpeg.c'
source_filename = "../../src/picojpeg/libpicojpeg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.HuffTableT = type { [16 x i16], [16 x i16], [16 x i8] }
%struct.pjpeg_image_info_t = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }

@gWinogradQuant = dso_local constant [64 x i8] c"\80\B2\B2\A7\F6\A7\97\E8\E8\97\80\D1\DB\D1\80e\B2\C5\C5\B2eE\8B\A7\B1\A7\8BE#`\83\97\97\83`#1[v\80v[1.QeeQ.*EOE*#66#\1C%\1C\13\13\0A", align 16
@gCallbackStatus = internal global i8 0, align 1
@gNumMCUSRemaining = internal global i16 0, align 2
@g_pNeedBytesCallback = internal global ptr null, align 8
@g_pCallback_data = internal global ptr null, align 8
@gReduce = internal global i8 0, align 1
@gImageXSize = internal global i16 0, align 2
@gImageYSize = internal global i16 0, align 2
@gCompsInFrame = internal global i8 0, align 1
@gScanType = internal global i32 0, align 4
@gMaxMCUSPerRow = internal global i16 0, align 2
@gMaxMCUSPerCol = internal global i16 0, align 2
@gMaxMCUXSize = internal global i8 0, align 1
@gMaxMCUYSize = internal global i8 0, align 1
@gMCUBufR = internal global [256 x i8] zeroinitializer, align 16
@gMCUBufG = internal global [256 x i8] zeroinitializer, align 16
@gMCUBufB = internal global [256 x i8] zeroinitializer, align 16
@spectral_start = dso_local global i8 0, align 1
@spectral_end = dso_local global i8 0, align 1
@successive_high = dso_local global i8 0, align 1
@successive_low = dso_local global i8 0, align 1
@gRestartInterval = internal global i16 0, align 2
@gRestartsLeft = internal global i16 0, align 2
@gMaxBlocksPerMCU = internal global i8 0, align 1
@gMCUOrg = internal global [6 x i8] zeroinitializer, align 1
@gCompQuant = internal global [3 x i8] zeroinitializer, align 1
@gCompDCTab = internal global [3 x i8] zeroinitializer, align 1
@gQuant1 = internal global [64 x i16] zeroinitializer, align 16
@gQuant0 = internal global [64 x i16] zeroinitializer, align 16
@gHuffTab1 = internal global %struct.HuffTableT zeroinitializer, align 2
@gHuffTab0 = internal global %struct.HuffTableT zeroinitializer, align 2
@gHuffVal1 = internal global [16 x i8] zeroinitializer, align 16
@gHuffVal0 = internal global [16 x i8] zeroinitializer, align 16
@gLastDC = internal global [3 x i16] zeroinitializer, align 2
@gCoeffBuf = internal global [64 x i16] zeroinitializer, align 16
@gCompACTab = internal global [3 x i8] zeroinitializer, align 1
@gHuffTab3 = internal global %struct.HuffTableT zeroinitializer, align 2
@gHuffTab2 = internal global %struct.HuffTableT zeroinitializer, align 2
@gHuffVal3 = internal global [256 x i8] zeroinitializer, align 16
@gHuffVal2 = internal global [256 x i8] zeroinitializer, align 16
@ZAG = internal constant [64 x i8] c"\00\01\08\10\09\02\03\0A\11\18 \19\12\0B\04\05\0C\13\1A!(0)\22\1B\14\0D\06\07\0E\15\1C#*1892+$\1D\16\0F\17\1E%,3:;4-&\1F'.5<=6/7>?", align 16
@gNextRestartNum = internal global i16 0, align 2
@gBitsLeft = internal global i8 0, align 1
@gInBufLeft = internal global i8 0, align 1
@gTemFlag = internal global i8 0, align 1
@gInBuf = internal global [256 x i8] zeroinitializer, align 16
@gInBufOfs = internal global i8 0, align 1
@gBitBuf = internal global i16 0, align 2
@gCompsInScan = internal global i8 0, align 1
@gValidHuffTables = internal global i8 0, align 1
@gValidQuantTables = internal global i8 0, align 1
@gCompIdent = internal global [3 x i8] zeroinitializer, align 1
@gCompHSamp = internal global [3 x i8] zeroinitializer, align 1
@gCompVSamp = internal global [3 x i8] zeroinitializer, align 1
@gCompList = internal global [3 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i8 @pjpeg_decode_mcu() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  %3 = load i8, ptr @gCallbackStatus, align 1
  %4 = icmp ne i8 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = load i8, ptr @gCallbackStatus, align 1
  store i8 %6, ptr %1, align 1
  br label %36

7:                                                ; preds = %0
  %8 = load i16, ptr @gNumMCUSRemaining, align 2
  %9 = icmp ne i16 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  store i8 1, ptr %1, align 1
  br label %36

11:                                               ; preds = %7
  %12 = call zeroext i8 @decodeNextMCU()
  store i8 %12, ptr %2, align 1
  %13 = load i8, ptr %2, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = load i8, ptr @gCallbackStatus, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %16, %11
  %21 = load i8, ptr @gCallbackStatus, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i8, ptr @gCallbackStatus, align 1
  %26 = zext i8 %25 to i32
  br label %30

27:                                               ; preds = %20
  %28 = load i8, ptr %2, align 1
  %29 = zext i8 %28 to i32
  br label %30

30:                                               ; preds = %27, %24
  %31 = phi i32 [ %26, %24 ], [ %29, %27 ]
  %32 = trunc i32 %31 to i8
  store i8 %32, ptr %1, align 1
  br label %36

33:                                               ; preds = %16
  %34 = load i16, ptr @gNumMCUSRemaining, align 2
  %35 = add i16 %34, -1
  store i16 %35, ptr @gNumMCUSRemaining, align 2
  store i8 0, ptr %1, align 1
  br label %36

36:                                               ; preds = %33, %30, %10, %5
  %37 = load i8, ptr %1, align 1
  ret i8 %37
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @decodeNextMCU() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca ptr, align 8
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i8, align 1
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  %16 = load i16, ptr @gRestartInterval, align 2
  %17 = icmp ne i16 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %0
  %19 = load i16, ptr @gRestartsLeft, align 2
  %20 = zext i16 %19 to i32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = call zeroext i8 @processRestart()
  store i8 %23, ptr %2, align 1
  %24 = load i8, ptr %2, align 1
  %25 = icmp ne i8 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i8, ptr %2, align 1
  store i8 %27, ptr %1, align 1
  br label %325

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %28, %18
  %30 = load i16, ptr @gRestartsLeft, align 2
  %31 = add i16 %30, -1
  store i16 %31, ptr @gRestartsLeft, align 2
  br label %32

32:                                               ; preds = %29, %0
  store i8 0, ptr %3, align 1
  br label %33

33:                                               ; preds = %321, %32
  %34 = load i8, ptr %3, align 1
  %35 = zext i8 %34 to i32
  %36 = load i8, ptr @gMaxBlocksPerMCU, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %324

39:                                               ; preds = %33
  %40 = load i8, ptr %3, align 1
  %41 = zext i8 %40 to i64
  %42 = getelementptr inbounds nuw [6 x i8], ptr @gMCUOrg, i64 0, i64 %41
  %43 = load i8, ptr %42, align 1
  store i8 %43, ptr %4, align 1
  %44 = load i8, ptr %4, align 1
  %45 = zext i8 %44 to i64
  %46 = getelementptr inbounds nuw [3 x i8], ptr @gCompQuant, i64 0, i64 %45
  %47 = load i8, ptr %46, align 1
  store i8 %47, ptr %5, align 1
  %48 = load i8, ptr %4, align 1
  %49 = zext i8 %48 to i64
  %50 = getelementptr inbounds nuw [3 x i8], ptr @gCompDCTab, i64 0, i64 %49
  %51 = load i8, ptr %50, align 1
  store i8 %51, ptr %6, align 1
  %52 = load i8, ptr %5, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, ptr @gQuant1, ptr @gQuant0
  store ptr %56, ptr %10, align 8
  %57 = load i8, ptr %6, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, ptr @gHuffTab1, ptr @gHuffTab0
  %62 = load i8, ptr %6, align 1
  %63 = zext i8 %62 to i32
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, ptr @gHuffVal1, ptr @gHuffVal0
  %67 = call zeroext i8 @huffDecode(ptr noundef %61, ptr noundef %66)
  store i8 %67, ptr %13, align 1
  store i16 0, ptr %11, align 2
  %68 = load i8, ptr %13, align 1
  %69 = zext i8 %68 to i32
  %70 = and i32 %69, 15
  %71 = trunc i32 %70 to i8
  store i8 %71, ptr %7, align 1
  %72 = load i8, ptr %7, align 1
  %73 = icmp ne i8 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %39
  %75 = load i8, ptr %7, align 1
  %76 = call zeroext i16 @getBits2(i8 noundef zeroext %75)
  store i16 %76, ptr %11, align 2
  br label %77

77:                                               ; preds = %74, %39
  %78 = load i16, ptr %11, align 2
  %79 = load i8, ptr %13, align 1
  %80 = call signext i16 @huffExtend(i16 noundef zeroext %78, i8 noundef zeroext %79)
  store i16 %80, ptr %12, align 2
  %81 = load i16, ptr %12, align 2
  %82 = zext i16 %81 to i32
  %83 = load i8, ptr %4, align 1
  %84 = zext i8 %83 to i64
  %85 = getelementptr inbounds nuw [3 x i16], ptr @gLastDC, i64 0, i64 %84
  %86 = load i16, ptr %85, align 2
  %87 = sext i16 %86 to i32
  %88 = add nsw i32 %82, %87
  %89 = trunc i32 %88 to i16
  store i16 %89, ptr %12, align 2
  %90 = load i16, ptr %12, align 2
  %91 = load i8, ptr %4, align 1
  %92 = zext i8 %91 to i64
  %93 = getelementptr inbounds nuw [3 x i16], ptr @gLastDC, i64 0, i64 %92
  store i16 %90, ptr %93, align 2
  %94 = load i16, ptr %12, align 2
  %95 = zext i16 %94 to i32
  %96 = load ptr, ptr %10, align 8
  %97 = getelementptr inbounds i16, ptr %96, i64 0
  %98 = load i16, ptr %97, align 2
  %99 = sext i16 %98 to i32
  %100 = mul nsw i32 %95, %99
  %101 = trunc i32 %100 to i16
  store i16 %101, ptr @gCoeffBuf, align 16
  %102 = load i8, ptr %4, align 1
  %103 = zext i8 %102 to i64
  %104 = getelementptr inbounds nuw [3 x i8], ptr @gCompACTab, i64 0, i64 %103
  %105 = load i8, ptr %104, align 1
  store i8 %105, ptr %8, align 1
  %106 = load i8, ptr @gReduce, align 1
  %107 = icmp ne i8 %106, 0
  br i1 %107, label %108, label %187

108:                                              ; preds = %77
  store i8 1, ptr %9, align 1
  br label %109

109:                                              ; preds = %182, %108
  %110 = load i8, ptr %9, align 1
  %111 = zext i8 %110 to i32
  %112 = icmp slt i32 %111, 64
  br i1 %112, label %113, label %185

113:                                              ; preds = %109
  %114 = load i8, ptr %8, align 1
  %115 = zext i8 %114 to i32
  %116 = icmp ne i32 %115, 0
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, ptr @gHuffTab3, ptr @gHuffTab2
  %119 = load i8, ptr %8, align 1
  %120 = zext i8 %119 to i32
  %121 = icmp ne i32 %120, 0
  %122 = zext i1 %121 to i64
  %123 = select i1 %121, ptr @gHuffVal3, ptr @gHuffVal2
  %124 = call zeroext i8 @huffDecode(ptr noundef %118, ptr noundef %123)
  store i8 %124, ptr %13, align 1
  %125 = load i8, ptr %13, align 1
  %126 = zext i8 %125 to i32
  %127 = and i32 %126, 15
  %128 = trunc i32 %127 to i8
  store i8 %128, ptr %7, align 1
  %129 = load i8, ptr %7, align 1
  %130 = icmp ne i8 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %113
  %132 = load i8, ptr %7, align 1
  %133 = call zeroext i16 @getBits2(i8 noundef zeroext %132)
  br label %134

134:                                              ; preds = %131, %113
  %135 = load i8, ptr %13, align 1
  %136 = zext i8 %135 to i32
  %137 = ashr i32 %136, 4
  %138 = trunc i32 %137 to i16
  store i16 %138, ptr %11, align 2
  %139 = load i8, ptr %13, align 1
  %140 = zext i8 %139 to i32
  %141 = and i32 %140, 15
  %142 = trunc i32 %141 to i8
  store i8 %142, ptr %13, align 1
  %143 = load i8, ptr %13, align 1
  %144 = icmp ne i8 %143, 0
  br i1 %144, label %145, label %164

145:                                              ; preds = %134
  %146 = load i16, ptr %11, align 2
  %147 = icmp ne i16 %146, 0
  br i1 %147, label %148, label %163

148:                                              ; preds = %145
  %149 = load i8, ptr %9, align 1
  %150 = zext i8 %149 to i32
  %151 = load i16, ptr %11, align 2
  %152 = zext i16 %151 to i32
  %153 = add nsw i32 %150, %152
  %154 = icmp sgt i32 %153, 63
  br i1 %154, label %155, label %156

155:                                              ; preds = %148
  store i8 28, ptr %1, align 1
  br label %325

156:                                              ; preds = %148
  %157 = load i8, ptr %9, align 1
  %158 = zext i8 %157 to i32
  %159 = load i16, ptr %11, align 2
  %160 = zext i16 %159 to i32
  %161 = add nsw i32 %158, %160
  %162 = trunc i32 %161 to i8
  store i8 %162, ptr %9, align 1
  br label %163

163:                                              ; preds = %156, %145
  br label %181

164:                                              ; preds = %134
  %165 = load i16, ptr %11, align 2
  %166 = zext i16 %165 to i32
  %167 = icmp eq i32 %166, 15
  br i1 %167, label %168, label %179

168:                                              ; preds = %164
  %169 = load i8, ptr %9, align 1
  %170 = zext i8 %169 to i32
  %171 = add nsw i32 %170, 16
  %172 = icmp sgt i32 %171, 64
  br i1 %172, label %173, label %174

173:                                              ; preds = %168
  store i8 28, ptr %1, align 1
  br label %325

174:                                              ; preds = %168
  %175 = load i8, ptr %9, align 1
  %176 = zext i8 %175 to i32
  %177 = add nsw i32 %176, 15
  %178 = trunc i32 %177 to i8
  store i8 %178, ptr %9, align 1
  br label %180

179:                                              ; preds = %164
  br label %185

180:                                              ; preds = %174
  br label %181

181:                                              ; preds = %180, %163
  br label %182

182:                                              ; preds = %181
  %183 = load i8, ptr %9, align 1
  %184 = add i8 %183, 1
  store i8 %184, ptr %9, align 1
  br label %109, !llvm.loop !6

185:                                              ; preds = %179, %109
  %186 = load i8, ptr %3, align 1
  call void @transformBlockReduce(i8 noundef zeroext %186)
  br label %320

187:                                              ; preds = %77
  store i8 1, ptr %9, align 1
  br label %188

188:                                              ; preds = %302, %187
  %189 = load i8, ptr %9, align 1
  %190 = zext i8 %189 to i32
  %191 = icmp slt i32 %190, 64
  br i1 %191, label %192, label %305

192:                                              ; preds = %188
  %193 = load i8, ptr %8, align 1
  %194 = zext i8 %193 to i32
  %195 = icmp ne i32 %194, 0
  %196 = zext i1 %195 to i64
  %197 = select i1 %195, ptr @gHuffTab3, ptr @gHuffTab2
  %198 = load i8, ptr %8, align 1
  %199 = zext i8 %198 to i32
  %200 = icmp ne i32 %199, 0
  %201 = zext i1 %200 to i64
  %202 = select i1 %200, ptr @gHuffVal3, ptr @gHuffVal2
  %203 = call zeroext i8 @huffDecode(ptr noundef %197, ptr noundef %202)
  store i8 %203, ptr %13, align 1
  store i16 0, ptr %14, align 2
  %204 = load i8, ptr %13, align 1
  %205 = zext i8 %204 to i32
  %206 = and i32 %205, 15
  %207 = trunc i32 %206 to i8
  store i8 %207, ptr %7, align 1
  %208 = load i8, ptr %7, align 1
  %209 = icmp ne i8 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %192
  %211 = load i8, ptr %7, align 1
  %212 = call zeroext i16 @getBits2(i8 noundef zeroext %211)
  store i16 %212, ptr %14, align 2
  br label %213

213:                                              ; preds = %210, %192
  %214 = load i8, ptr %13, align 1
  %215 = zext i8 %214 to i32
  %216 = ashr i32 %215, 4
  %217 = trunc i32 %216 to i16
  store i16 %217, ptr %11, align 2
  %218 = load i8, ptr %13, align 1
  %219 = zext i8 %218 to i32
  %220 = and i32 %219, 15
  %221 = trunc i32 %220 to i8
  store i8 %221, ptr %13, align 1
  %222 = load i8, ptr %13, align 1
  %223 = icmp ne i8 %222, 0
  br i1 %223, label %224, label %270

224:                                              ; preds = %213
  %225 = load i16, ptr %11, align 2
  %226 = icmp ne i16 %225, 0
  br i1 %226, label %227, label %250

227:                                              ; preds = %224
  %228 = load i8, ptr %9, align 1
  %229 = zext i8 %228 to i32
  %230 = load i16, ptr %11, align 2
  %231 = zext i16 %230 to i32
  %232 = add nsw i32 %229, %231
  %233 = icmp sgt i32 %232, 63
  br i1 %233, label %234, label %235

234:                                              ; preds = %227
  store i8 28, ptr %1, align 1
  br label %325

235:                                              ; preds = %227
  br label %236

236:                                              ; preds = %239, %235
  %237 = load i16, ptr %11, align 2
  %238 = icmp ne i16 %237, 0
  br i1 %238, label %239, label %249

239:                                              ; preds = %236
  %240 = load i8, ptr %9, align 1
  %241 = add i8 %240, 1
  store i8 %241, ptr %9, align 1
  %242 = zext i8 %240 to i64
  %243 = getelementptr inbounds nuw [64 x i8], ptr @ZAG, i64 0, i64 %242
  %244 = load i8, ptr %243, align 1
  %245 = sext i8 %244 to i64
  %246 = getelementptr inbounds [64 x i16], ptr @gCoeffBuf, i64 0, i64 %245
  store i16 0, ptr %246, align 2
  %247 = load i16, ptr %11, align 2
  %248 = add i16 %247, -1
  store i16 %248, ptr %11, align 2
  br label %236, !llvm.loop !8

249:                                              ; preds = %236
  br label %250

250:                                              ; preds = %249, %224
  %251 = load i16, ptr %14, align 2
  %252 = load i8, ptr %13, align 1
  %253 = call signext i16 @huffExtend(i16 noundef zeroext %251, i8 noundef zeroext %252)
  store i16 %253, ptr %15, align 2
  %254 = load i16, ptr %15, align 2
  %255 = sext i16 %254 to i32
  %256 = load ptr, ptr %10, align 8
  %257 = load i8, ptr %9, align 1
  %258 = zext i8 %257 to i64
  %259 = getelementptr inbounds nuw i16, ptr %256, i64 %258
  %260 = load i16, ptr %259, align 2
  %261 = sext i16 %260 to i32
  %262 = mul nsw i32 %255, %261
  %263 = trunc i32 %262 to i16
  %264 = load i8, ptr %9, align 1
  %265 = zext i8 %264 to i64
  %266 = getelementptr inbounds nuw [64 x i8], ptr @ZAG, i64 0, i64 %265
  %267 = load i8, ptr %266, align 1
  %268 = sext i8 %267 to i64
  %269 = getelementptr inbounds [64 x i16], ptr @gCoeffBuf, i64 0, i64 %268
  store i16 %263, ptr %269, align 2
  br label %301

270:                                              ; preds = %213
  %271 = load i16, ptr %11, align 2
  %272 = zext i16 %271 to i32
  %273 = icmp eq i32 %272, 15
  br i1 %273, label %274, label %299

274:                                              ; preds = %270
  %275 = load i8, ptr %9, align 1
  %276 = zext i8 %275 to i32
  %277 = add nsw i32 %276, 16
  %278 = icmp sgt i32 %277, 64
  br i1 %278, label %279, label %280

279:                                              ; preds = %274
  store i8 28, ptr %1, align 1
  br label %325

280:                                              ; preds = %274
  store i16 16, ptr %11, align 2
  br label %281

281:                                              ; preds = %293, %280
  %282 = load i16, ptr %11, align 2
  %283 = zext i16 %282 to i32
  %284 = icmp sgt i32 %283, 0
  br i1 %284, label %285, label %296

285:                                              ; preds = %281
  %286 = load i8, ptr %9, align 1
  %287 = add i8 %286, 1
  store i8 %287, ptr %9, align 1
  %288 = zext i8 %286 to i64
  %289 = getelementptr inbounds nuw [64 x i8], ptr @ZAG, i64 0, i64 %288
  %290 = load i8, ptr %289, align 1
  %291 = sext i8 %290 to i64
  %292 = getelementptr inbounds [64 x i16], ptr @gCoeffBuf, i64 0, i64 %291
  store i16 0, ptr %292, align 2
  br label %293

293:                                              ; preds = %285
  %294 = load i16, ptr %11, align 2
  %295 = add i16 %294, -1
  store i16 %295, ptr %11, align 2
  br label %281, !llvm.loop !9

296:                                              ; preds = %281
  %297 = load i8, ptr %9, align 1
  %298 = add i8 %297, -1
  store i8 %298, ptr %9, align 1
  br label %300

299:                                              ; preds = %270
  br label %305

300:                                              ; preds = %296
  br label %301

301:                                              ; preds = %300, %250
  br label %302

302:                                              ; preds = %301
  %303 = load i8, ptr %9, align 1
  %304 = add i8 %303, 1
  store i8 %304, ptr %9, align 1
  br label %188, !llvm.loop !10

305:                                              ; preds = %299, %188
  br label %306

306:                                              ; preds = %310, %305
  %307 = load i8, ptr %9, align 1
  %308 = zext i8 %307 to i32
  %309 = icmp slt i32 %308, 64
  br i1 %309, label %310, label %318

310:                                              ; preds = %306
  %311 = load i8, ptr %9, align 1
  %312 = add i8 %311, 1
  store i8 %312, ptr %9, align 1
  %313 = zext i8 %311 to i64
  %314 = getelementptr inbounds nuw [64 x i8], ptr @ZAG, i64 0, i64 %313
  %315 = load i8, ptr %314, align 1
  %316 = sext i8 %315 to i64
  %317 = getelementptr inbounds [64 x i16], ptr @gCoeffBuf, i64 0, i64 %316
  store i16 0, ptr %317, align 2
  br label %306, !llvm.loop !11

318:                                              ; preds = %306
  %319 = load i8, ptr %3, align 1
  call void @transformBlock(i8 noundef zeroext %319)
  br label %320

320:                                              ; preds = %318, %185
  br label %321

321:                                              ; preds = %320
  %322 = load i8, ptr %3, align 1
  %323 = add i8 %322, 1
  store i8 %323, ptr %3, align 1
  br label %33, !llvm.loop !12

324:                                              ; preds = %33
  store i8 0, ptr %1, align 1
  br label %325

325:                                              ; preds = %324, %279, %234, %173, %155, %26
  %326 = load i8, ptr %1, align 1
  ret i8 %326
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i8 @pjpeg_decode_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store i8 %3, ptr %9, align 1
  %11 = load ptr, ptr %6, align 8
  %12 = getelementptr inbounds nuw %struct.pjpeg_image_info_t, ptr %11, i32 0, i32 0
  store i32 0, ptr %12, align 8
  %13 = load ptr, ptr %6, align 8
  %14 = getelementptr inbounds nuw %struct.pjpeg_image_info_t, ptr %13, i32 0, i32 1
  store i32 0, ptr %14, align 4
  %15 = load ptr, ptr %6, align 8
  %16 = getelementptr inbounds nuw %struct.pjpeg_image_info_t, ptr %15, i32 0, i32 2
  store i32 0, ptr %16, align 8
  %17 = load ptr, ptr %6, align 8
  %18 = getelementptr inbounds nuw %struct.pjpeg_image_info_t, ptr %17, i32 0, i32 3
  store i32 0, ptr %18, align 4
  %19 = load ptr, ptr %6, align 8
  %20 = getelementptr inbounds nuw %struct.pjpeg_image_info_t, ptr %19, i32 0, i32 4
  store i32 0, ptr %20, align 8
  %21 = load ptr, ptr %6, align 8
  %22 = getelementptr inbounds nuw %struct.pjpeg_image_info_t, ptr %21, i32 0, i32 5
  store i32 0, ptr %22, align 4
  %23 = load ptr, ptr %6, align 8
  %24 = getelementptr inbounds nuw %struct.pjpeg_image_info_t, ptr %23, i32 0, i32 6
  store i32 0, ptr %24, align 8
  %25 = load ptr, ptr %6, align 8
  %26 = getelementptr inbounds nuw %struct.pjpeg_image_info_t, ptr %25, i32 0, i32 7
  store i32 0, ptr %26, align 4
  %27 = load ptr, ptr %6, align 8
  %28 = getelementptr inbounds nuw %struct.pjpeg_image_info_t, ptr %27, i32 0, i32 8
  store ptr null, ptr %28, align 8
  %29 = load ptr, ptr %6, align 8
  %30 = getelementptr inbounds nuw %struct.pjpeg_image_info_t, ptr %29, i32 0, i32 9
  store ptr null, ptr %30, align 8
  %31 = load ptr, ptr %6, align 8
  %32 = getelementptr inbounds nuw %struct.pjpeg_image_info_t, ptr %31, i32 0, i32 10
  store ptr null, ptr %32, align 8
  %33 = load ptr, ptr %7, align 8
  store ptr %33, ptr @g_pNeedBytesCallback, align 8
  %34 = load ptr, ptr %8, align 8
  store ptr %34, ptr @g_pCallback_data, align 8
  store i8 0, ptr @gCallbackStatus, align 1
  %35 = load i8, ptr %9, align 1
  store i8 %35, ptr @gReduce, align 1
  %36 = call zeroext i8 @init()
  store i8 %36, ptr %10, align 1
  %37 = load i8, ptr %10, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %4
  %41 = load i8, ptr @gCallbackStatus, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %40, %4
  %45 = load i8, ptr @gCallbackStatus, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i8, ptr @gCallbackStatus, align 1
  %50 = zext i8 %49 to i32
  br label %54

51:                                               ; preds = %44
  %52 = load i8, ptr %10, align 1
  %53 = zext i8 %52 to i32
  br label %54

54:                                               ; preds = %51, %48
  %55 = phi i32 [ %50, %48 ], [ %53, %51 ]
  %56 = trunc i32 %55 to i8
  store i8 %56, ptr %5, align 1
  br label %161

57:                                               ; preds = %40
  %58 = call zeroext i8 @locateSOFMarker()
  store i8 %58, ptr %10, align 1
  %59 = load i8, ptr %10, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %57
  %63 = load i8, ptr @gCallbackStatus, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %62, %57
  %67 = load i8, ptr @gCallbackStatus, align 1
  %68 = zext i8 %67 to i32
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i8, ptr @gCallbackStatus, align 1
  %72 = zext i8 %71 to i32
  br label %76

73:                                               ; preds = %66
  %74 = load i8, ptr %10, align 1
  %75 = zext i8 %74 to i32
  br label %76

76:                                               ; preds = %73, %70
  %77 = phi i32 [ %72, %70 ], [ %75, %73 ]
  %78 = trunc i32 %77 to i8
  store i8 %78, ptr %5, align 1
  br label %161

79:                                               ; preds = %62
  %80 = call zeroext i8 @initFrame()
  store i8 %80, ptr %10, align 1
  %81 = load i8, ptr %10, align 1
  %82 = zext i8 %81 to i32
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %79
  %85 = load i8, ptr @gCallbackStatus, align 1
  %86 = zext i8 %85 to i32
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %84, %79
  %89 = load i8, ptr @gCallbackStatus, align 1
  %90 = zext i8 %89 to i32
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load i8, ptr @gCallbackStatus, align 1
  %94 = zext i8 %93 to i32
  br label %98

95:                                               ; preds = %88
  %96 = load i8, ptr %10, align 1
  %97 = zext i8 %96 to i32
  br label %98

98:                                               ; preds = %95, %92
  %99 = phi i32 [ %94, %92 ], [ %97, %95 ]
  %100 = trunc i32 %99 to i8
  store i8 %100, ptr %5, align 1
  br label %161

101:                                              ; preds = %84
  %102 = call zeroext i8 @initScan()
  store i8 %102, ptr %10, align 1
  %103 = load i8, ptr %10, align 1
  %104 = zext i8 %103 to i32
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %101
  %107 = load i8, ptr @gCallbackStatus, align 1
  %108 = zext i8 %107 to i32
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %123

110:                                              ; preds = %106, %101
  %111 = load i8, ptr @gCallbackStatus, align 1
  %112 = zext i8 %111 to i32
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %110
  %115 = load i8, ptr @gCallbackStatus, align 1
  %116 = zext i8 %115 to i32
  br label %120

117:                                              ; preds = %110
  %118 = load i8, ptr %10, align 1
  %119 = zext i8 %118 to i32
  br label %120

120:                                              ; preds = %117, %114
  %121 = phi i32 [ %116, %114 ], [ %119, %117 ]
  %122 = trunc i32 %121 to i8
  store i8 %122, ptr %5, align 1
  br label %161

123:                                              ; preds = %106
  %124 = load i16, ptr @gImageXSize, align 2
  %125 = zext i16 %124 to i32
  %126 = load ptr, ptr %6, align 8
  %127 = getelementptr inbounds nuw %struct.pjpeg_image_info_t, ptr %126, i32 0, i32 0
  store i32 %125, ptr %127, align 8
  %128 = load i16, ptr @gImageYSize, align 2
  %129 = zext i16 %128 to i32
  %130 = load ptr, ptr %6, align 8
  %131 = getelementptr inbounds nuw %struct.pjpeg_image_info_t, ptr %130, i32 0, i32 1
  store i32 %129, ptr %131, align 4
  %132 = load i8, ptr @gCompsInFrame, align 1
  %133 = zext i8 %132 to i32
  %134 = load ptr, ptr %6, align 8
  %135 = getelementptr inbounds nuw %struct.pjpeg_image_info_t, ptr %134, i32 0, i32 2
  store i32 %133, ptr %135, align 8
  %136 = load i32, ptr @gScanType, align 4
  %137 = load ptr, ptr %6, align 8
  %138 = getelementptr inbounds nuw %struct.pjpeg_image_info_t, ptr %137, i32 0, i32 5
  store i32 %136, ptr %138, align 4
  %139 = load i16, ptr @gMaxMCUSPerRow, align 2
  %140 = zext i16 %139 to i32
  %141 = load ptr, ptr %6, align 8
  %142 = getelementptr inbounds nuw %struct.pjpeg_image_info_t, ptr %141, i32 0, i32 3
  store i32 %140, ptr %142, align 4
  %143 = load i16, ptr @gMaxMCUSPerCol, align 2
  %144 = zext i16 %143 to i32
  %145 = load ptr, ptr %6, align 8
  %146 = getelementptr inbounds nuw %struct.pjpeg_image_info_t, ptr %145, i32 0, i32 4
  store i32 %144, ptr %146, align 8
  %147 = load i8, ptr @gMaxMCUXSize, align 1
  %148 = zext i8 %147 to i32
  %149 = load ptr, ptr %6, align 8
  %150 = getelementptr inbounds nuw %struct.pjpeg_image_info_t, ptr %149, i32 0, i32 6
  store i32 %148, ptr %150, align 8
  %151 = load i8, ptr @gMaxMCUYSize, align 1
  %152 = zext i8 %151 to i32
  %153 = load ptr, ptr %6, align 8
  %154 = getelementptr inbounds nuw %struct.pjpeg_image_info_t, ptr %153, i32 0, i32 7
  store i32 %152, ptr %154, align 4
  %155 = load ptr, ptr %6, align 8
  %156 = getelementptr inbounds nuw %struct.pjpeg_image_info_t, ptr %155, i32 0, i32 8
  store ptr @gMCUBufR, ptr %156, align 8
  %157 = load ptr, ptr %6, align 8
  %158 = getelementptr inbounds nuw %struct.pjpeg_image_info_t, ptr %157, i32 0, i32 9
  store ptr @gMCUBufG, ptr %158, align 8
  %159 = load ptr, ptr %6, align 8
  %160 = getelementptr inbounds nuw %struct.pjpeg_image_info_t, ptr %159, i32 0, i32 10
  store ptr @gMCUBufB, ptr %160, align 8
  store i8 0, ptr %5, align 1
  br label %161

161:                                              ; preds = %123, %120, %98, %76, %54
  %162 = load i8, ptr %5, align 1
  ret i8 %162
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @init() #0 {
  store i16 0, ptr @gImageXSize, align 2
  store i16 0, ptr @gImageYSize, align 2
  store i8 0, ptr @gCompsInFrame, align 1
  store i16 0, ptr @gRestartInterval, align 2
  store i8 0, ptr @gCompsInScan, align 1
  store i8 0, ptr @gValidHuffTables, align 1
  store i8 0, ptr @gValidQuantTables, align 1
  store i8 0, ptr @gTemFlag, align 1
  store i8 0, ptr @gInBufOfs, align 1
  store i8 0, ptr @gInBufLeft, align 1
  store i16 0, ptr @gBitBuf, align 2
  store i8 8, ptr @gBitsLeft, align 1
  %1 = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  %2 = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  ret i8 0
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @locateSOFMarker() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = call zeroext i8 @locateSOIMarker()
  store i8 %4, ptr %3, align 1
  %5 = load i8, ptr %3, align 1
  %6 = icmp ne i8 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = load i8, ptr %3, align 1
  store i8 %8, ptr %1, align 1
  br label %30

9:                                                ; preds = %0
  %10 = call zeroext i8 @processMarkers(ptr noundef %2)
  store i8 %10, ptr %3, align 1
  %11 = load i8, ptr %3, align 1
  %12 = icmp ne i8 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i8, ptr %3, align 1
  store i8 %14, ptr %1, align 1
  br label %30

15:                                               ; preds = %9
  %16 = load i8, ptr %2, align 1
  %17 = zext i8 %16 to i32
  switch i32 %17, label %28 [
    i32 194, label %18
    i32 192, label %19
    i32 201, label %26
    i32 193, label %27
  ]

18:                                               ; preds = %15
  store i8 37, ptr %1, align 1
  br label %30

19:                                               ; preds = %15
  %20 = call zeroext i8 @readSOFMarker()
  store i8 %20, ptr %3, align 1
  %21 = load i8, ptr %3, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i8, ptr %3, align 1
  store i8 %24, ptr %1, align 1
  br label %30

25:                                               ; preds = %19
  br label %29

26:                                               ; preds = %15
  store i8 17, ptr %1, align 1
  br label %30

27:                                               ; preds = %15
  br label %28

28:                                               ; preds = %15, %27
  store i8 20, ptr %1, align 1
  br label %30

29:                                               ; preds = %25
  store i8 0, ptr %1, align 1
  br label %30

30:                                               ; preds = %29, %28, %26, %23, %18, %13, %7
  %31 = load i8, ptr %1, align 1
  ret i8 %31
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @initFrame() #0 {
  %1 = alloca i8, align 1
  %2 = load i8, ptr @gCompsInFrame, align 1
  %3 = zext i8 %2 to i32
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %15

5:                                                ; preds = %0
  %6 = load i8, ptr @gCompHSamp, align 1
  %7 = zext i8 %6 to i32
  %8 = icmp ne i32 %7, 1
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load i8, ptr @gCompVSamp, align 1
  %11 = zext i8 %10 to i32
  %12 = icmp ne i32 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %5
  store i8 27, ptr %1, align 1
  br label %112

14:                                               ; preds = %9
  store i32 0, ptr @gScanType, align 4
  store i8 1, ptr @gMaxBlocksPerMCU, align 1
  store i8 0, ptr @gMCUOrg, align 1
  store i8 8, ptr @gMaxMCUXSize, align 1
  store i8 8, ptr @gMaxMCUYSize, align 1
  br label %79

15:                                               ; preds = %0
  %16 = load i8, ptr @gCompsInFrame, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp eq i32 %17, 3
  br i1 %18, label %19, label %77

19:                                               ; preds = %15
  %20 = load i8, ptr getelementptr inbounds ([3 x i8], ptr @gCompHSamp, i64 0, i64 1), align 1
  %21 = zext i8 %20 to i32
  %22 = icmp ne i32 %21, 1
  br i1 %22, label %35, label %23

23:                                               ; preds = %19
  %24 = load i8, ptr getelementptr inbounds ([3 x i8], ptr @gCompVSamp, i64 0, i64 1), align 1
  %25 = zext i8 %24 to i32
  %26 = icmp ne i32 %25, 1
  br i1 %26, label %35, label %27

27:                                               ; preds = %23
  %28 = load i8, ptr getelementptr inbounds ([3 x i8], ptr @gCompHSamp, i64 0, i64 2), align 1
  %29 = zext i8 %28 to i32
  %30 = icmp ne i32 %29, 1
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i8, ptr getelementptr inbounds ([3 x i8], ptr @gCompVSamp, i64 0, i64 2), align 1
  %33 = zext i8 %32 to i32
  %34 = icmp ne i32 %33, 1
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %27, %23, %19
  store i8 27, ptr %1, align 1
  br label %112

36:                                               ; preds = %31
  %37 = load i8, ptr @gCompHSamp, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load i8, ptr @gCompVSamp, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 1, ptr @gScanType, align 4
  store i8 3, ptr @gMaxBlocksPerMCU, align 1
  store i8 0, ptr @gMCUOrg, align 1
  store i8 1, ptr getelementptr inbounds ([6 x i8], ptr @gMCUOrg, i64 0, i64 1), align 1
  store i8 2, ptr getelementptr inbounds ([6 x i8], ptr @gMCUOrg, i64 0, i64 2), align 1
  store i8 8, ptr @gMaxMCUXSize, align 1
  store i8 8, ptr @gMaxMCUYSize, align 1
  br label %76

45:                                               ; preds = %40, %36
  %46 = load i8, ptr @gCompHSamp, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load i8, ptr @gCompVSamp, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 3, ptr @gScanType, align 4
  store i8 4, ptr @gMaxBlocksPerMCU, align 1
  store i8 0, ptr @gMCUOrg, align 1
  store i8 0, ptr getelementptr inbounds ([6 x i8], ptr @gMCUOrg, i64 0, i64 1), align 1
  store i8 1, ptr getelementptr inbounds ([6 x i8], ptr @gMCUOrg, i64 0, i64 2), align 1
  store i8 2, ptr getelementptr inbounds ([6 x i8], ptr @gMCUOrg, i64 0, i64 3), align 1
  store i8 8, ptr @gMaxMCUXSize, align 1
  store i8 16, ptr @gMaxMCUYSize, align 1
  br label %75

54:                                               ; preds = %49, %45
  %55 = load i8, ptr @gCompHSamp, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load i8, ptr @gCompVSamp, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 2, ptr @gScanType, align 4
  store i8 4, ptr @gMaxBlocksPerMCU, align 1
  store i8 0, ptr @gMCUOrg, align 1
  store i8 0, ptr getelementptr inbounds ([6 x i8], ptr @gMCUOrg, i64 0, i64 1), align 1
  store i8 1, ptr getelementptr inbounds ([6 x i8], ptr @gMCUOrg, i64 0, i64 2), align 1
  store i8 2, ptr getelementptr inbounds ([6 x i8], ptr @gMCUOrg, i64 0, i64 3), align 1
  store i8 16, ptr @gMaxMCUXSize, align 1
  store i8 8, ptr @gMaxMCUYSize, align 1
  br label %74

63:                                               ; preds = %58, %54
  %64 = load i8, ptr @gCompHSamp, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp eq i32 %65, 2
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = load i8, ptr @gCompVSamp, align 1
  %69 = zext i8 %68 to i32
  %70 = icmp eq i32 %69, 2
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store i32 4, ptr @gScanType, align 4
  store i8 6, ptr @gMaxBlocksPerMCU, align 1
  store i8 0, ptr @gMCUOrg, align 1
  store i8 0, ptr getelementptr inbounds ([6 x i8], ptr @gMCUOrg, i64 0, i64 1), align 1
  store i8 0, ptr getelementptr inbounds ([6 x i8], ptr @gMCUOrg, i64 0, i64 2), align 1
  store i8 0, ptr getelementptr inbounds ([6 x i8], ptr @gMCUOrg, i64 0, i64 3), align 1
  store i8 1, ptr getelementptr inbounds ([6 x i8], ptr @gMCUOrg, i64 0, i64 4), align 1
  store i8 2, ptr getelementptr inbounds ([6 x i8], ptr @gMCUOrg, i64 0, i64 5), align 1
  store i8 16, ptr @gMaxMCUXSize, align 1
  store i8 16, ptr @gMaxMCUYSize, align 1
  br label %73

72:                                               ; preds = %67, %63
  store i8 27, ptr %1, align 1
  br label %112

73:                                               ; preds = %71
  br label %74

74:                                               ; preds = %73, %62
  br label %75

75:                                               ; preds = %74, %53
  br label %76

76:                                               ; preds = %75, %44
  br label %78

77:                                               ; preds = %15
  store i8 26, ptr %1, align 1
  br label %112

78:                                               ; preds = %76
  br label %79

79:                                               ; preds = %78, %14
  %80 = load i16, ptr @gImageXSize, align 2
  %81 = zext i16 %80 to i32
  %82 = load i8, ptr @gMaxMCUXSize, align 1
  %83 = zext i8 %82 to i32
  %84 = sub nsw i32 %83, 1
  %85 = add nsw i32 %81, %84
  %86 = load i8, ptr @gMaxMCUXSize, align 1
  %87 = zext i8 %86 to i32
  %88 = icmp eq i32 %87, 8
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 3, i32 4
  %91 = ashr i32 %85, %90
  %92 = trunc i32 %91 to i16
  store i16 %92, ptr @gMaxMCUSPerRow, align 2
  %93 = load i16, ptr @gImageYSize, align 2
  %94 = zext i16 %93 to i32
  %95 = load i8, ptr @gMaxMCUYSize, align 1
  %96 = zext i8 %95 to i32
  %97 = sub nsw i32 %96, 1
  %98 = add nsw i32 %94, %97
  %99 = load i8, ptr @gMaxMCUYSize, align 1
  %100 = zext i8 %99 to i32
  %101 = icmp eq i32 %100, 8
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i32 3, i32 4
  %104 = ashr i32 %98, %103
  %105 = trunc i32 %104 to i16
  store i16 %105, ptr @gMaxMCUSPerCol, align 2
  %106 = load i16, ptr @gMaxMCUSPerRow, align 2
  %107 = zext i16 %106 to i32
  %108 = load i16, ptr @gMaxMCUSPerCol, align 2
  %109 = zext i16 %108 to i32
  %110 = mul nsw i32 %107, %109
  %111 = trunc i32 %110 to i16
  store i16 %111, ptr @gNumMCUSRemaining, align 2
  store i8 0, ptr %1, align 1
  br label %112

112:                                              ; preds = %79, %77, %72, %35, %13
  %113 = load i8, ptr %1, align 1
  ret i8 %113
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @initScan() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = call zeroext i8 @locateSOSMarker(ptr noundef %2)
  store i8 %4, ptr %3, align 1
  %5 = load i8, ptr %3, align 1
  %6 = icmp ne i8 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = load i8, ptr %3, align 1
  store i8 %8, ptr %1, align 1
  br label %31

9:                                                ; preds = %0
  %10 = load i8, ptr %2, align 1
  %11 = icmp ne i8 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i8 18, ptr %1, align 1
  br label %31

13:                                               ; preds = %9
  %14 = call zeroext i8 @checkHuffTables()
  store i8 %14, ptr %3, align 1
  %15 = load i8, ptr %3, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i8, ptr %3, align 1
  store i8 %18, ptr %1, align 1
  br label %31

19:                                               ; preds = %13
  %20 = call zeroext i8 @checkQuantTables()
  store i8 %20, ptr %3, align 1
  %21 = load i8, ptr %3, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i8, ptr %3, align 1
  store i8 %24, ptr %1, align 1
  br label %31

25:                                               ; preds = %19
  store i16 0, ptr @gLastDC, align 2
  store i16 0, ptr getelementptr inbounds ([3 x i16], ptr @gLastDC, i64 0, i64 1), align 2
  store i16 0, ptr getelementptr inbounds ([3 x i16], ptr @gLastDC, i64 0, i64 2), align 2
  %26 = load i16, ptr @gRestartInterval, align 2
  %27 = icmp ne i16 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i16, ptr @gRestartInterval, align 2
  store i16 %29, ptr @gRestartsLeft, align 2
  store i16 0, ptr @gNextRestartNum, align 2
  br label %30

30:                                               ; preds = %28, %25
  call void @fixInBuffer()
  store i8 0, ptr %1, align 1
  br label %31

31:                                               ; preds = %30, %23, %17, %12, %7
  %32 = load i8, ptr %1, align 1
  ret i8 %32
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @processRestart() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i16, align 2
  %3 = alloca i8, align 1
  store i8 0, ptr %3, align 1
  store i16 1536, ptr %2, align 2
  br label %4

4:                                                ; preds = %14, %0
  %5 = load i16, ptr %2, align 2
  %6 = zext i16 %5 to i32
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %4
  %9 = call zeroext i8 @getChar()
  %10 = zext i8 %9 to i32
  %11 = icmp eq i32 %10, 255
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  br label %17

13:                                               ; preds = %8
  br label %14

14:                                               ; preds = %13
  %15 = load i16, ptr %2, align 2
  %16 = add i16 %15, -1
  store i16 %16, ptr %2, align 2
  br label %4, !llvm.loop !13

17:                                               ; preds = %12, %4
  %18 = load i16, ptr %2, align 2
  %19 = zext i16 %18 to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i8 29, ptr %1, align 1
  br label %58

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %33, %22
  %24 = load i16, ptr %2, align 2
  %25 = zext i16 %24 to i32
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = call zeroext i8 @getChar()
  store i8 %28, ptr %3, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp ne i32 %29, 255
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %36

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %32
  %34 = load i16, ptr %2, align 2
  %35 = add i16 %34, -1
  store i16 %35, ptr %2, align 2
  br label %23, !llvm.loop !14

36:                                               ; preds = %31, %23
  %37 = load i16, ptr %2, align 2
  %38 = zext i16 %37 to i32
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i8 29, ptr %1, align 1
  br label %58

41:                                               ; preds = %36
  %42 = load i8, ptr %3, align 1
  %43 = zext i8 %42 to i32
  %44 = load i16, ptr @gNextRestartNum, align 2
  %45 = zext i16 %44 to i32
  %46 = add nsw i32 %45, 208
  %47 = icmp ne i32 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i8 29, ptr %1, align 1
  br label %58

49:                                               ; preds = %41
  store i16 0, ptr @gLastDC, align 2
  store i16 0, ptr getelementptr inbounds ([3 x i16], ptr @gLastDC, i64 0, i64 1), align 2
  store i16 0, ptr getelementptr inbounds ([3 x i16], ptr @gLastDC, i64 0, i64 2), align 2
  %50 = load i16, ptr @gRestartInterval, align 2
  store i16 %50, ptr @gRestartsLeft, align 2
  %51 = load i16, ptr @gNextRestartNum, align 2
  %52 = zext i16 %51 to i32
  %53 = add nsw i32 %52, 1
  %54 = and i32 %53, 7
  %55 = trunc i32 %54 to i16
  store i16 %55, ptr @gNextRestartNum, align 2
  store i8 8, ptr @gBitsLeft, align 1
  %56 = call zeroext i16 @getBits2(i8 noundef zeroext 8)
  %57 = call zeroext i16 @getBits2(i8 noundef zeroext 8)
  store i8 0, ptr %1, align 1
  br label %58

58:                                               ; preds = %49, %48, %40, %21
  %59 = load i8, ptr %1, align 1
  ret i8 %59
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @huffDecode(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i8 0, ptr %6, align 1
  %10 = call zeroext i8 @getBit()
  %11 = zext i8 %10 to i16
  store i16 %11, ptr %8, align 2
  br label %12

12:                                               ; preds = %34, %2
  %13 = load i8, ptr %6, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp eq i32 %14, 16
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i8 0, ptr %3, align 1
  br label %73

17:                                               ; preds = %12
  %18 = load ptr, ptr %4, align 8
  %19 = getelementptr inbounds nuw %struct.HuffTableT, ptr %18, i32 0, i32 1
  %20 = load i8, ptr %6, align 1
  %21 = zext i8 %20 to i64
  %22 = getelementptr inbounds nuw [16 x i16], ptr %19, i64 0, i64 %21
  %23 = load i16, ptr %22, align 2
  store i16 %23, ptr %9, align 2
  %24 = load i16, ptr %8, align 2
  %25 = zext i16 %24 to i32
  %26 = load i16, ptr %9, align 2
  %27 = zext i16 %26 to i32
  %28 = icmp sle i32 %25, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %17
  %30 = load i16, ptr %9, align 2
  %31 = zext i16 %30 to i32
  %32 = icmp ne i32 %31, 65535
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %47

34:                                               ; preds = %29, %17
  %35 = load i8, ptr %6, align 1
  %36 = add i8 %35, 1
  store i8 %36, ptr %6, align 1
  %37 = load i16, ptr %8, align 2
  %38 = zext i16 %37 to i32
  %39 = shl i32 %38, 1
  %40 = trunc i32 %39 to i16
  store i16 %40, ptr %8, align 2
  %41 = call zeroext i8 @getBit()
  %42 = zext i8 %41 to i32
  %43 = load i16, ptr %8, align 2
  %44 = zext i16 %43 to i32
  %45 = or i32 %44, %42
  %46 = trunc i32 %45 to i16
  store i16 %46, ptr %8, align 2
  br label %12

47:                                               ; preds = %33
  %48 = load ptr, ptr %4, align 8
  %49 = getelementptr inbounds nuw %struct.HuffTableT, ptr %48, i32 0, i32 2
  %50 = load i8, ptr %6, align 1
  %51 = zext i8 %50 to i64
  %52 = getelementptr inbounds nuw [16 x i8], ptr %49, i64 0, i64 %51
  %53 = load i8, ptr %52, align 1
  store i8 %53, ptr %7, align 1
  %54 = load i8, ptr %7, align 1
  %55 = zext i8 %54 to i32
  %56 = load i16, ptr %8, align 2
  %57 = zext i16 %56 to i32
  %58 = load ptr, ptr %4, align 8
  %59 = getelementptr inbounds nuw %struct.HuffTableT, ptr %58, i32 0, i32 0
  %60 = load i8, ptr %6, align 1
  %61 = zext i8 %60 to i64
  %62 = getelementptr inbounds nuw [16 x i16], ptr %59, i64 0, i64 %61
  %63 = load i16, ptr %62, align 2
  %64 = zext i16 %63 to i32
  %65 = sub nsw i32 %57, %64
  %66 = add nsw i32 %55, %65
  %67 = trunc i32 %66 to i8
  store i8 %67, ptr %7, align 1
  %68 = load ptr, ptr %5, align 8
  %69 = load i8, ptr %7, align 1
  %70 = zext i8 %69 to i64
  %71 = getelementptr inbounds nuw i8, ptr %68, i64 %70
  %72 = load i8, ptr %71, align 1
  store i8 %72, ptr %3, align 1
  br label %73

73:                                               ; preds = %47, %16
  %74 = load i8, ptr %3, align 1
  ret i8 %74
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i16 @getBits2(i8 noundef zeroext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  %3 = load i8, ptr %2, align 1
  %4 = call zeroext i16 @getBits(i8 noundef zeroext %3, i8 noundef zeroext 1)
  ret i16 %4
}

; Function Attrs: noinline nounwind uwtable
define internal signext i16 @huffExtend(i16 noundef zeroext %0, i8 noundef zeroext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i8, align 1
  store i16 %0, ptr %3, align 2
  store i8 %1, ptr %4, align 1
  %5 = load i16, ptr %3, align 2
  %6 = zext i16 %5 to i32
  %7 = load i8, ptr %4, align 1
  %8 = call zeroext i16 @getExtendTest(i8 noundef zeroext %7)
  %9 = zext i16 %8 to i32
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load i16, ptr %3, align 2
  %13 = sext i16 %12 to i32
  %14 = load i8, ptr %4, align 1
  %15 = call signext i16 @getExtendOffset(i8 noundef zeroext %14)
  %16 = sext i16 %15 to i32
  %17 = add nsw i32 %13, %16
  br label %21

18:                                               ; preds = %2
  %19 = load i16, ptr %3, align 2
  %20 = sext i16 %19 to i32
  br label %21

21:                                               ; preds = %18, %11
  %22 = phi i32 [ %17, %11 ], [ %20, %18 ]
  %23 = trunc i32 %22 to i16
  ret i16 %23
}

; Function Attrs: noinline nounwind uwtable
define internal void @transformBlockReduce(i8 noundef zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  store i8 %0, ptr %2, align 1
  %8 = load i16, ptr @gCoeffBuf, align 16
  %9 = sext i16 %8 to i32
  %10 = add i32 %9, 64
  %11 = lshr i32 %10, 7
  %12 = add i32 %11, 128
  %13 = trunc i32 %12 to i16
  %14 = call zeroext i8 @clamp(i16 noundef signext %13)
  store i8 %14, ptr %3, align 1
  %15 = load i32, ptr @gScanType, align 4
  switch i32 %15, label %306 [
    i32 0, label %16
    i32 1, label %18
    i32 3, label %70
    i32 2, label %138
    i32 4, label %206
  ]

16:                                               ; preds = %1
  %17 = load i8, ptr %3, align 1
  store i8 %17, ptr @gMCUBufR, align 16
  br label %306

18:                                               ; preds = %1
  %19 = load i8, ptr %2, align 1
  %20 = zext i8 %19 to i32
  switch i32 %20, label %69 [
    i32 0, label %21
    i32 1, label %25
    i32 2, label %47
  ]

21:                                               ; preds = %18
  %22 = load i8, ptr %3, align 1
  store i8 %22, ptr @gMCUBufR, align 16
  %23 = load i8, ptr %3, align 1
  store i8 %23, ptr @gMCUBufG, align 16
  %24 = load i8, ptr %3, align 1
  store i8 %24, ptr @gMCUBufB, align 16
  br label %69

25:                                               ; preds = %18
  %26 = load i8, ptr %3, align 1
  %27 = zext i8 %26 to i32
  %28 = mul i32 %27, 88
  %29 = lshr i32 %28, 8
  %30 = sub i32 %29, 44
  %31 = trunc i32 %30 to i16
  store i16 %31, ptr %4, align 2
  %32 = load i8, ptr @gMCUBufG, align 16
  %33 = load i16, ptr %4, align 2
  %34 = call zeroext i8 @subAndClamp(i8 noundef zeroext %32, i16 noundef signext %33)
  store i8 %34, ptr @gMCUBufG, align 16
  %35 = load i8, ptr %3, align 1
  %36 = zext i8 %35 to i32
  %37 = load i8, ptr %3, align 1
  %38 = zext i8 %37 to i32
  %39 = mul i32 %38, 198
  %40 = lshr i32 %39, 8
  %41 = add i32 %36, %40
  %42 = sub i32 %41, 227
  %43 = trunc i32 %42 to i16
  store i16 %43, ptr %5, align 2
  %44 = load i8, ptr @gMCUBufB, align 16
  %45 = load i16, ptr %5, align 2
  %46 = call zeroext i8 @addAndClamp(i8 noundef zeroext %44, i16 noundef signext %45)
  store i8 %46, ptr @gMCUBufB, align 16
  br label %69

47:                                               ; preds = %18
  %48 = load i8, ptr %3, align 1
  %49 = zext i8 %48 to i32
  %50 = load i8, ptr %3, align 1
  %51 = zext i8 %50 to i32
  %52 = mul i32 %51, 103
  %53 = lshr i32 %52, 8
  %54 = add i32 %49, %53
  %55 = sub i32 %54, 179
  %56 = trunc i32 %55 to i16
  store i16 %56, ptr %6, align 2
  %57 = load i8, ptr @gMCUBufR, align 16
  %58 = load i16, ptr %6, align 2
  %59 = call zeroext i8 @addAndClamp(i8 noundef zeroext %57, i16 noundef signext %58)
  store i8 %59, ptr @gMCUBufR, align 16
  %60 = load i8, ptr %3, align 1
  %61 = zext i8 %60 to i32
  %62 = mul i32 %61, 183
  %63 = lshr i32 %62, 8
  %64 = sub i32 %63, 91
  %65 = trunc i32 %64 to i16
  store i16 %65, ptr %7, align 2
  %66 = load i8, ptr @gMCUBufG, align 16
  %67 = load i16, ptr %7, align 2
  %68 = call zeroext i8 @subAndClamp(i8 noundef zeroext %66, i16 noundef signext %67)
  store i8 %68, ptr @gMCUBufG, align 16
  br label %69

69:                                               ; preds = %18, %47, %25, %21
  br label %306

70:                                               ; preds = %1
  %71 = load i8, ptr %2, align 1
  %72 = zext i8 %71 to i32
  switch i32 %72, label %137 [
    i32 0, label %73
    i32 1, label %77
    i32 2, label %81
    i32 3, label %109
  ]

73:                                               ; preds = %70
  %74 = load i8, ptr %3, align 1
  store i8 %74, ptr @gMCUBufR, align 16
  %75 = load i8, ptr %3, align 1
  store i8 %75, ptr @gMCUBufG, align 16
  %76 = load i8, ptr %3, align 1
  store i8 %76, ptr @gMCUBufB, align 16
  br label %137

77:                                               ; preds = %70
  %78 = load i8, ptr %3, align 1
  store i8 %78, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 128), align 16
  %79 = load i8, ptr %3, align 1
  store i8 %79, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 128), align 16
  %80 = load i8, ptr %3, align 1
  store i8 %80, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 128), align 16
  br label %137

81:                                               ; preds = %70
  %82 = load i8, ptr %3, align 1
  %83 = zext i8 %82 to i32
  %84 = mul i32 %83, 88
  %85 = lshr i32 %84, 8
  %86 = sub i32 %85, 44
  %87 = trunc i32 %86 to i16
  store i16 %87, ptr %4, align 2
  %88 = load i8, ptr @gMCUBufG, align 16
  %89 = load i16, ptr %4, align 2
  %90 = call zeroext i8 @subAndClamp(i8 noundef zeroext %88, i16 noundef signext %89)
  store i8 %90, ptr @gMCUBufG, align 16
  %91 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 128), align 16
  %92 = load i16, ptr %4, align 2
  %93 = call zeroext i8 @subAndClamp(i8 noundef zeroext %91, i16 noundef signext %92)
  store i8 %93, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 128), align 16
  %94 = load i8, ptr %3, align 1
  %95 = zext i8 %94 to i32
  %96 = load i8, ptr %3, align 1
  %97 = zext i8 %96 to i32
  %98 = mul i32 %97, 198
  %99 = lshr i32 %98, 8
  %100 = add i32 %95, %99
  %101 = sub i32 %100, 227
  %102 = trunc i32 %101 to i16
  store i16 %102, ptr %5, align 2
  %103 = load i8, ptr @gMCUBufB, align 16
  %104 = load i16, ptr %5, align 2
  %105 = call zeroext i8 @addAndClamp(i8 noundef zeroext %103, i16 noundef signext %104)
  store i8 %105, ptr @gMCUBufB, align 16
  %106 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 128), align 16
  %107 = load i16, ptr %5, align 2
  %108 = call zeroext i8 @addAndClamp(i8 noundef zeroext %106, i16 noundef signext %107)
  store i8 %108, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 128), align 16
  br label %137

109:                                              ; preds = %70
  %110 = load i8, ptr %3, align 1
  %111 = zext i8 %110 to i32
  %112 = load i8, ptr %3, align 1
  %113 = zext i8 %112 to i32
  %114 = mul i32 %113, 103
  %115 = lshr i32 %114, 8
  %116 = add i32 %111, %115
  %117 = sub i32 %116, 179
  %118 = trunc i32 %117 to i16
  store i16 %118, ptr %6, align 2
  %119 = load i8, ptr @gMCUBufR, align 16
  %120 = load i16, ptr %6, align 2
  %121 = call zeroext i8 @addAndClamp(i8 noundef zeroext %119, i16 noundef signext %120)
  store i8 %121, ptr @gMCUBufR, align 16
  %122 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 128), align 16
  %123 = load i16, ptr %6, align 2
  %124 = call zeroext i8 @addAndClamp(i8 noundef zeroext %122, i16 noundef signext %123)
  store i8 %124, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 128), align 16
  %125 = load i8, ptr %3, align 1
  %126 = zext i8 %125 to i32
  %127 = mul i32 %126, 183
  %128 = lshr i32 %127, 8
  %129 = sub i32 %128, 91
  %130 = trunc i32 %129 to i16
  store i16 %130, ptr %7, align 2
  %131 = load i8, ptr @gMCUBufG, align 16
  %132 = load i16, ptr %7, align 2
  %133 = call zeroext i8 @subAndClamp(i8 noundef zeroext %131, i16 noundef signext %132)
  store i8 %133, ptr @gMCUBufG, align 16
  %134 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 128), align 16
  %135 = load i16, ptr %7, align 2
  %136 = call zeroext i8 @subAndClamp(i8 noundef zeroext %134, i16 noundef signext %135)
  store i8 %136, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 128), align 16
  br label %137

137:                                              ; preds = %70, %109, %81, %77, %73
  br label %306

138:                                              ; preds = %1
  %139 = load i8, ptr %2, align 1
  %140 = zext i8 %139 to i32
  switch i32 %140, label %205 [
    i32 0, label %141
    i32 1, label %145
    i32 2, label %149
    i32 3, label %177
  ]

141:                                              ; preds = %138
  %142 = load i8, ptr %3, align 1
  store i8 %142, ptr @gMCUBufR, align 16
  %143 = load i8, ptr %3, align 1
  store i8 %143, ptr @gMCUBufG, align 16
  %144 = load i8, ptr %3, align 1
  store i8 %144, ptr @gMCUBufB, align 16
  br label %205

145:                                              ; preds = %138
  %146 = load i8, ptr %3, align 1
  store i8 %146, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 64), align 16
  %147 = load i8, ptr %3, align 1
  store i8 %147, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 64), align 16
  %148 = load i8, ptr %3, align 1
  store i8 %148, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 64), align 16
  br label %205

149:                                              ; preds = %138
  %150 = load i8, ptr %3, align 1
  %151 = zext i8 %150 to i32
  %152 = mul i32 %151, 88
  %153 = lshr i32 %152, 8
  %154 = sub i32 %153, 44
  %155 = trunc i32 %154 to i16
  store i16 %155, ptr %4, align 2
  %156 = load i8, ptr @gMCUBufG, align 16
  %157 = load i16, ptr %4, align 2
  %158 = call zeroext i8 @subAndClamp(i8 noundef zeroext %156, i16 noundef signext %157)
  store i8 %158, ptr @gMCUBufG, align 16
  %159 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 64), align 16
  %160 = load i16, ptr %4, align 2
  %161 = call zeroext i8 @subAndClamp(i8 noundef zeroext %159, i16 noundef signext %160)
  store i8 %161, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 64), align 16
  %162 = load i8, ptr %3, align 1
  %163 = zext i8 %162 to i32
  %164 = load i8, ptr %3, align 1
  %165 = zext i8 %164 to i32
  %166 = mul i32 %165, 198
  %167 = lshr i32 %166, 8
  %168 = add i32 %163, %167
  %169 = sub i32 %168, 227
  %170 = trunc i32 %169 to i16
  store i16 %170, ptr %5, align 2
  %171 = load i8, ptr @gMCUBufB, align 16
  %172 = load i16, ptr %5, align 2
  %173 = call zeroext i8 @addAndClamp(i8 noundef zeroext %171, i16 noundef signext %172)
  store i8 %173, ptr @gMCUBufB, align 16
  %174 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 64), align 16
  %175 = load i16, ptr %5, align 2
  %176 = call zeroext i8 @addAndClamp(i8 noundef zeroext %174, i16 noundef signext %175)
  store i8 %176, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 64), align 16
  br label %205

177:                                              ; preds = %138
  %178 = load i8, ptr %3, align 1
  %179 = zext i8 %178 to i32
  %180 = load i8, ptr %3, align 1
  %181 = zext i8 %180 to i32
  %182 = mul i32 %181, 103
  %183 = lshr i32 %182, 8
  %184 = add i32 %179, %183
  %185 = sub i32 %184, 179
  %186 = trunc i32 %185 to i16
  store i16 %186, ptr %6, align 2
  %187 = load i8, ptr @gMCUBufR, align 16
  %188 = load i16, ptr %6, align 2
  %189 = call zeroext i8 @addAndClamp(i8 noundef zeroext %187, i16 noundef signext %188)
  store i8 %189, ptr @gMCUBufR, align 16
  %190 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 64), align 16
  %191 = load i16, ptr %6, align 2
  %192 = call zeroext i8 @addAndClamp(i8 noundef zeroext %190, i16 noundef signext %191)
  store i8 %192, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 64), align 16
  %193 = load i8, ptr %3, align 1
  %194 = zext i8 %193 to i32
  %195 = mul i32 %194, 183
  %196 = lshr i32 %195, 8
  %197 = sub i32 %196, 91
  %198 = trunc i32 %197 to i16
  store i16 %198, ptr %7, align 2
  %199 = load i8, ptr @gMCUBufG, align 16
  %200 = load i16, ptr %7, align 2
  %201 = call zeroext i8 @subAndClamp(i8 noundef zeroext %199, i16 noundef signext %200)
  store i8 %201, ptr @gMCUBufG, align 16
  %202 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 64), align 16
  %203 = load i16, ptr %7, align 2
  %204 = call zeroext i8 @subAndClamp(i8 noundef zeroext %202, i16 noundef signext %203)
  store i8 %204, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 64), align 16
  br label %205

205:                                              ; preds = %138, %177, %149, %145, %141
  br label %306

206:                                              ; preds = %1
  %207 = load i8, ptr %2, align 1
  %208 = zext i8 %207 to i32
  switch i32 %208, label %305 [
    i32 0, label %209
    i32 1, label %213
    i32 2, label %217
    i32 3, label %221
    i32 4, label %225
    i32 5, label %265
  ]

209:                                              ; preds = %206
  %210 = load i8, ptr %3, align 1
  store i8 %210, ptr @gMCUBufR, align 16
  %211 = load i8, ptr %3, align 1
  store i8 %211, ptr @gMCUBufG, align 16
  %212 = load i8, ptr %3, align 1
  store i8 %212, ptr @gMCUBufB, align 16
  br label %305

213:                                              ; preds = %206
  %214 = load i8, ptr %3, align 1
  store i8 %214, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 64), align 16
  %215 = load i8, ptr %3, align 1
  store i8 %215, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 64), align 16
  %216 = load i8, ptr %3, align 1
  store i8 %216, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 64), align 16
  br label %305

217:                                              ; preds = %206
  %218 = load i8, ptr %3, align 1
  store i8 %218, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 128), align 16
  %219 = load i8, ptr %3, align 1
  store i8 %219, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 128), align 16
  %220 = load i8, ptr %3, align 1
  store i8 %220, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 128), align 16
  br label %305

221:                                              ; preds = %206
  %222 = load i8, ptr %3, align 1
  store i8 %222, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 192), align 16
  %223 = load i8, ptr %3, align 1
  store i8 %223, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 192), align 16
  %224 = load i8, ptr %3, align 1
  store i8 %224, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 192), align 16
  br label %305

225:                                              ; preds = %206
  %226 = load i8, ptr %3, align 1
  %227 = zext i8 %226 to i32
  %228 = mul i32 %227, 88
  %229 = lshr i32 %228, 8
  %230 = sub i32 %229, 44
  %231 = trunc i32 %230 to i16
  store i16 %231, ptr %4, align 2
  %232 = load i8, ptr @gMCUBufG, align 16
  %233 = load i16, ptr %4, align 2
  %234 = call zeroext i8 @subAndClamp(i8 noundef zeroext %232, i16 noundef signext %233)
  store i8 %234, ptr @gMCUBufG, align 16
  %235 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 64), align 16
  %236 = load i16, ptr %4, align 2
  %237 = call zeroext i8 @subAndClamp(i8 noundef zeroext %235, i16 noundef signext %236)
  store i8 %237, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 64), align 16
  %238 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 128), align 16
  %239 = load i16, ptr %4, align 2
  %240 = call zeroext i8 @subAndClamp(i8 noundef zeroext %238, i16 noundef signext %239)
  store i8 %240, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 128), align 16
  %241 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 192), align 16
  %242 = load i16, ptr %4, align 2
  %243 = call zeroext i8 @subAndClamp(i8 noundef zeroext %241, i16 noundef signext %242)
  store i8 %243, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 192), align 16
  %244 = load i8, ptr %3, align 1
  %245 = zext i8 %244 to i32
  %246 = load i8, ptr %3, align 1
  %247 = zext i8 %246 to i32
  %248 = mul i32 %247, 198
  %249 = lshr i32 %248, 8
  %250 = add i32 %245, %249
  %251 = sub i32 %250, 227
  %252 = trunc i32 %251 to i16
  store i16 %252, ptr %5, align 2
  %253 = load i8, ptr @gMCUBufB, align 16
  %254 = load i16, ptr %5, align 2
  %255 = call zeroext i8 @addAndClamp(i8 noundef zeroext %253, i16 noundef signext %254)
  store i8 %255, ptr @gMCUBufB, align 16
  %256 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 64), align 16
  %257 = load i16, ptr %5, align 2
  %258 = call zeroext i8 @addAndClamp(i8 noundef zeroext %256, i16 noundef signext %257)
  store i8 %258, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 64), align 16
  %259 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 128), align 16
  %260 = load i16, ptr %5, align 2
  %261 = call zeroext i8 @addAndClamp(i8 noundef zeroext %259, i16 noundef signext %260)
  store i8 %261, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 128), align 16
  %262 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 192), align 16
  %263 = load i16, ptr %5, align 2
  %264 = call zeroext i8 @addAndClamp(i8 noundef zeroext %262, i16 noundef signext %263)
  store i8 %264, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufB, i64 0, i64 192), align 16
  br label %305

265:                                              ; preds = %206
  %266 = load i8, ptr %3, align 1
  %267 = zext i8 %266 to i32
  %268 = load i8, ptr %3, align 1
  %269 = zext i8 %268 to i32
  %270 = mul i32 %269, 103
  %271 = lshr i32 %270, 8
  %272 = add i32 %267, %271
  %273 = sub i32 %272, 179
  %274 = trunc i32 %273 to i16
  store i16 %274, ptr %6, align 2
  %275 = load i8, ptr @gMCUBufR, align 16
  %276 = load i16, ptr %6, align 2
  %277 = call zeroext i8 @addAndClamp(i8 noundef zeroext %275, i16 noundef signext %276)
  store i8 %277, ptr @gMCUBufR, align 16
  %278 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 64), align 16
  %279 = load i16, ptr %6, align 2
  %280 = call zeroext i8 @addAndClamp(i8 noundef zeroext %278, i16 noundef signext %279)
  store i8 %280, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 64), align 16
  %281 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 128), align 16
  %282 = load i16, ptr %6, align 2
  %283 = call zeroext i8 @addAndClamp(i8 noundef zeroext %281, i16 noundef signext %282)
  store i8 %283, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 128), align 16
  %284 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 192), align 16
  %285 = load i16, ptr %6, align 2
  %286 = call zeroext i8 @addAndClamp(i8 noundef zeroext %284, i16 noundef signext %285)
  store i8 %286, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufR, i64 0, i64 192), align 16
  %287 = load i8, ptr %3, align 1
  %288 = zext i8 %287 to i32
  %289 = mul i32 %288, 183
  %290 = lshr i32 %289, 8
  %291 = sub i32 %290, 91
  %292 = trunc i32 %291 to i16
  store i16 %292, ptr %7, align 2
  %293 = load i8, ptr @gMCUBufG, align 16
  %294 = load i16, ptr %7, align 2
  %295 = call zeroext i8 @subAndClamp(i8 noundef zeroext %293, i16 noundef signext %294)
  store i8 %295, ptr @gMCUBufG, align 16
  %296 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 64), align 16
  %297 = load i16, ptr %7, align 2
  %298 = call zeroext i8 @subAndClamp(i8 noundef zeroext %296, i16 noundef signext %297)
  store i8 %298, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 64), align 16
  %299 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 128), align 16
  %300 = load i16, ptr %7, align 2
  %301 = call zeroext i8 @subAndClamp(i8 noundef zeroext %299, i16 noundef signext %300)
  store i8 %301, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 128), align 16
  %302 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 192), align 16
  %303 = load i16, ptr %7, align 2
  %304 = call zeroext i8 @subAndClamp(i8 noundef zeroext %302, i16 noundef signext %303)
  store i8 %304, ptr getelementptr inbounds ([256 x i8], ptr @gMCUBufG, i64 0, i64 192), align 16
  br label %305

305:                                              ; preds = %206, %265, %225, %221, %217, %213, %209
  br label %306

306:                                              ; preds = %1, %305, %205, %137, %69, %16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @transformBlock(i8 noundef zeroext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @idctRows()
  call void @idctCols()
  %3 = load i32, ptr @gScanType, align 4
  switch i32 %3, label %38 [
    i32 0, label %4
    i32 1, label %5
    i32 3, label %12
    i32 2, label %20
    i32 4, label %28
  ]

4:                                                ; preds = %1
  call void @copyY(i8 noundef zeroext 0)
  br label %38

5:                                                ; preds = %1
  %6 = load i8, ptr %2, align 1
  %7 = zext i8 %6 to i32
  switch i32 %7, label %11 [
    i32 0, label %8
    i32 1, label %9
    i32 2, label %10
  ]

8:                                                ; preds = %5
  call void @copyY(i8 noundef zeroext 0)
  br label %11

9:                                                ; preds = %5
  call void @convertCb(i8 noundef zeroext 0)
  br label %11

10:                                               ; preds = %5
  call void @convertCr(i8 noundef zeroext 0)
  br label %11

11:                                               ; preds = %5, %10, %9, %8
  br label %38

12:                                               ; preds = %1
  %13 = load i8, ptr %2, align 1
  %14 = zext i8 %13 to i32
  switch i32 %14, label %19 [
    i32 0, label %15
    i32 1, label %16
    i32 2, label %17
    i32 3, label %18
  ]

15:                                               ; preds = %12
  call void @copyY(i8 noundef zeroext 0)
  br label %19

16:                                               ; preds = %12
  call void @copyY(i8 noundef zeroext -128)
  br label %19

17:                                               ; preds = %12
  call void @upsampleCbV(i8 noundef zeroext 0, i8 noundef zeroext 0)
  call void @upsampleCbV(i8 noundef zeroext 32, i8 noundef zeroext -128)
  br label %19

18:                                               ; preds = %12
  call void @upsampleCrV(i8 noundef zeroext 0, i8 noundef zeroext 0)
  call void @upsampleCrV(i8 noundef zeroext 32, i8 noundef zeroext -128)
  br label %19

19:                                               ; preds = %12, %18, %17, %16, %15
  br label %38

20:                                               ; preds = %1
  %21 = load i8, ptr %2, align 1
  %22 = zext i8 %21 to i32
  switch i32 %22, label %27 [
    i32 0, label %23
    i32 1, label %24
    i32 2, label %25
    i32 3, label %26
  ]

23:                                               ; preds = %20
  call void @copyY(i8 noundef zeroext 0)
  br label %27

24:                                               ; preds = %20
  call void @copyY(i8 noundef zeroext 64)
  br label %27

25:                                               ; preds = %20
  call void @upsampleCbH(i8 noundef zeroext 0, i8 noundef zeroext 0)
  call void @upsampleCbH(i8 noundef zeroext 4, i8 noundef zeroext 64)
  br label %27

26:                                               ; preds = %20
  call void @upsampleCrH(i8 noundef zeroext 0, i8 noundef zeroext 0)
  call void @upsampleCrH(i8 noundef zeroext 4, i8 noundef zeroext 64)
  br label %27

27:                                               ; preds = %20, %26, %25, %24, %23
  br label %38

28:                                               ; preds = %1
  %29 = load i8, ptr %2, align 1
  %30 = zext i8 %29 to i32
  switch i32 %30, label %37 [
    i32 0, label %31
    i32 1, label %32
    i32 2, label %33
    i32 3, label %34
    i32 4, label %35
    i32 5, label %36
  ]

31:                                               ; preds = %28
  call void @copyY(i8 noundef zeroext 0)
  br label %37

32:                                               ; preds = %28
  call void @copyY(i8 noundef zeroext 64)
  br label %37

33:                                               ; preds = %28
  call void @copyY(i8 noundef zeroext -128)
  br label %37

34:                                               ; preds = %28
  call void @copyY(i8 noundef zeroext -64)
  br label %37

35:                                               ; preds = %28
  call void @upsampleCb(i8 noundef zeroext 0, i8 noundef zeroext 0)
  call void @upsampleCb(i8 noundef zeroext 4, i8 noundef zeroext 64)
  call void @upsampleCb(i8 noundef zeroext 32, i8 noundef zeroext -128)
  call void @upsampleCb(i8 noundef zeroext 36, i8 noundef zeroext -64)
  br label %37

36:                                               ; preds = %28
  call void @upsampleCr(i8 noundef zeroext 0, i8 noundef zeroext 0)
  call void @upsampleCr(i8 noundef zeroext 4, i8 noundef zeroext 64)
  call void @upsampleCr(i8 noundef zeroext 32, i8 noundef zeroext -128)
  call void @upsampleCr(i8 noundef zeroext 36, i8 noundef zeroext -64)
  br label %37

37:                                               ; preds = %28, %36, %35, %34, %33, %32, %31
  br label %38

38:                                               ; preds = %1, %37, %27, %19, %11, %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @getChar() #0 {
  %1 = alloca i8, align 1
  %2 = load i8, ptr @gInBufLeft, align 1
  %3 = icmp ne i8 %2, 0
  br i1 %3, label %19, label %4

4:                                                ; preds = %0
  call void @fillInBuf()
  %5 = load i8, ptr @gInBufLeft, align 1
  %6 = icmp ne i8 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %4
  %8 = load i8, ptr @gTemFlag, align 1
  %9 = zext i8 %8 to i32
  %10 = xor i32 %9, -1
  %11 = trunc i32 %10 to i8
  store i8 %11, ptr @gTemFlag, align 1
  %12 = load i8, ptr @gTemFlag, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 255, i32 217
  %17 = trunc i32 %16 to i8
  store i8 %17, ptr %1, align 1
  br label %27

18:                                               ; preds = %4
  br label %19

19:                                               ; preds = %18, %0
  %20 = load i8, ptr @gInBufLeft, align 1
  %21 = add i8 %20, -1
  store i8 %21, ptr @gInBufLeft, align 1
  %22 = load i8, ptr @gInBufOfs, align 1
  %23 = add i8 %22, 1
  store i8 %23, ptr @gInBufOfs, align 1
  %24 = zext i8 %22 to i64
  %25 = getelementptr inbounds nuw [256 x i8], ptr @gInBuf, i64 0, i64 %24
  %26 = load i8, ptr %25, align 1
  store i8 %26, ptr %1, align 1
  br label %27

27:                                               ; preds = %19, %7
  %28 = load i8, ptr %1, align 1
  ret i8 %28
}

; Function Attrs: noinline nounwind uwtable
define internal void @fillInBuf() #0 {
  %1 = alloca i8, align 1
  store i8 4, ptr @gInBufOfs, align 1
  store i8 0, ptr @gInBufLeft, align 1
  %2 = load ptr, ptr @g_pNeedBytesCallback, align 8
  %3 = load i8, ptr @gInBufOfs, align 1
  %4 = zext i8 %3 to i32
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i8, ptr @gInBuf, i64 %5
  %7 = load i8, ptr @gInBufOfs, align 1
  %8 = zext i8 %7 to i32
  %9 = sub nsw i32 256, %8
  %10 = trunc i32 %9 to i8
  %11 = load ptr, ptr @g_pCallback_data, align 8
  %12 = call zeroext i8 %2(ptr noundef %6, i8 noundef zeroext %10, ptr noundef @gInBufLeft, ptr noundef %11)
  store i8 %12, ptr %1, align 1
  %13 = load i8, ptr %1, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %0
  %16 = load i8, ptr %1, align 1
  store i8 %16, ptr @gCallbackStatus, align 1
  br label %17

17:                                               ; preds = %15, %0
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @getBit() #0 {
  %1 = alloca i8, align 1
  store i8 0, ptr %1, align 1
  %2 = load i16, ptr @gBitBuf, align 2
  %3 = zext i16 %2 to i32
  %4 = and i32 %3, 32768
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i8 1, ptr %1, align 1
  br label %7

7:                                                ; preds = %6, %0
  %8 = load i8, ptr @gBitsLeft, align 1
  %9 = icmp ne i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %7
  %11 = call zeroext i8 @getOctet(i8 noundef zeroext 1)
  %12 = zext i8 %11 to i32
  %13 = load i16, ptr @gBitBuf, align 2
  %14 = zext i16 %13 to i32
  %15 = or i32 %14, %12
  %16 = trunc i32 %15 to i16
  store i16 %16, ptr @gBitBuf, align 2
  %17 = load i8, ptr @gBitsLeft, align 1
  %18 = zext i8 %17 to i32
  %19 = add nsw i32 %18, 8
  %20 = trunc i32 %19 to i8
  store i8 %20, ptr @gBitsLeft, align 1
  br label %21

21:                                               ; preds = %10, %7
  %22 = load i8, ptr @gBitsLeft, align 1
  %23 = add i8 %22, -1
  store i8 %23, ptr @gBitsLeft, align 1
  %24 = load i16, ptr @gBitBuf, align 2
  %25 = zext i16 %24 to i32
  %26 = shl i32 %25, 1
  %27 = trunc i32 %26 to i16
  store i16 %27, ptr @gBitBuf, align 2
  %28 = load i8, ptr %1, align 1
  ret i8 %28
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @getOctet(i8 noundef zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  %5 = call zeroext i8 @getChar()
  store i8 %5, ptr %3, align 1
  %6 = load i8, ptr %2, align 1
  %7 = zext i8 %6 to i32
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %1
  %10 = load i8, ptr %3, align 1
  %11 = zext i8 %10 to i32
  %12 = icmp eq i32 %11, 255
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = call zeroext i8 @getChar()
  store i8 %14, ptr %4, align 1
  %15 = load i8, ptr %4, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i8, ptr %4, align 1
  call void @stuffChar(i8 noundef zeroext %18)
  call void @stuffChar(i8 noundef zeroext -1)
  br label %19

19:                                               ; preds = %17, %13
  br label %20

20:                                               ; preds = %19, %9, %1
  %21 = load i8, ptr %3, align 1
  ret i8 %21
}

; Function Attrs: noinline nounwind uwtable
define internal void @stuffChar(i8 noundef zeroext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  %3 = load i8, ptr @gInBufOfs, align 1
  %4 = add i8 %3, -1
  store i8 %4, ptr @gInBufOfs, align 1
  %5 = load i8, ptr %2, align 1
  %6 = load i8, ptr @gInBufOfs, align 1
  %7 = zext i8 %6 to i64
  %8 = getelementptr inbounds nuw [256 x i8], ptr @gInBuf, i64 0, i64 %7
  store i8 %5, ptr %8, align 1
  %9 = load i8, ptr @gInBufLeft, align 1
  %10 = add i8 %9, 1
  store i8 %10, ptr @gInBufLeft, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i16 @getBits(i8 noundef zeroext %0, i8 noundef zeroext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i16, align 2
  store i8 %0, ptr %3, align 1
  store i8 %1, ptr %4, align 1
  %7 = load i8, ptr %3, align 1
  store i8 %7, ptr %5, align 1
  %8 = load i16, ptr @gBitBuf, align 2
  store i16 %8, ptr %6, align 2
  %9 = load i8, ptr %3, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp sgt i32 %10, 8
  br i1 %11, label %12, label %45

12:                                               ; preds = %2
  %13 = load i8, ptr %3, align 1
  %14 = zext i8 %13 to i32
  %15 = sub nsw i32 %14, 8
  %16 = trunc i32 %15 to i8
  store i8 %16, ptr %3, align 1
  %17 = load i8, ptr @gBitsLeft, align 1
  %18 = zext i8 %17 to i32
  %19 = load i16, ptr @gBitBuf, align 2
  %20 = zext i16 %19 to i32
  %21 = shl i32 %20, %18
  %22 = trunc i32 %21 to i16
  store i16 %22, ptr @gBitBuf, align 2
  %23 = load i8, ptr %4, align 1
  %24 = call zeroext i8 @getOctet(i8 noundef zeroext %23)
  %25 = zext i8 %24 to i32
  %26 = load i16, ptr @gBitBuf, align 2
  %27 = zext i16 %26 to i32
  %28 = or i32 %27, %25
  %29 = trunc i32 %28 to i16
  store i16 %29, ptr @gBitBuf, align 2
  %30 = load i8, ptr @gBitsLeft, align 1
  %31 = zext i8 %30 to i32
  %32 = sub nsw i32 8, %31
  %33 = load i16, ptr @gBitBuf, align 2
  %34 = zext i16 %33 to i32
  %35 = shl i32 %34, %32
  %36 = trunc i32 %35 to i16
  store i16 %36, ptr @gBitBuf, align 2
  %37 = load i16, ptr %6, align 2
  %38 = zext i16 %37 to i32
  %39 = and i32 %38, 65280
  %40 = load i16, ptr @gBitBuf, align 2
  %41 = zext i16 %40 to i32
  %42 = ashr i32 %41, 8
  %43 = or i32 %39, %42
  %44 = trunc i32 %43 to i16
  store i16 %44, ptr %6, align 2
  br label %45

45:                                               ; preds = %12, %2
  %46 = load i8, ptr @gBitsLeft, align 1
  %47 = zext i8 %46 to i32
  %48 = load i8, ptr %3, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %51, label %81

51:                                               ; preds = %45
  %52 = load i8, ptr @gBitsLeft, align 1
  %53 = zext i8 %52 to i32
  %54 = load i16, ptr @gBitBuf, align 2
  %55 = zext i16 %54 to i32
  %56 = shl i32 %55, %53
  %57 = trunc i32 %56 to i16
  store i16 %57, ptr @gBitBuf, align 2
  %58 = load i8, ptr %4, align 1
  %59 = call zeroext i8 @getOctet(i8 noundef zeroext %58)
  %60 = zext i8 %59 to i32
  %61 = load i16, ptr @gBitBuf, align 2
  %62 = zext i16 %61 to i32
  %63 = or i32 %62, %60
  %64 = trunc i32 %63 to i16
  store i16 %64, ptr @gBitBuf, align 2
  %65 = load i8, ptr %3, align 1
  %66 = zext i8 %65 to i32
  %67 = load i8, ptr @gBitsLeft, align 1
  %68 = zext i8 %67 to i32
  %69 = sub nsw i32 %66, %68
  %70 = load i16, ptr @gBitBuf, align 2
  %71 = zext i16 %70 to i32
  %72 = shl i32 %71, %69
  %73 = trunc i32 %72 to i16
  store i16 %73, ptr @gBitBuf, align 2
  %74 = load i8, ptr %3, align 1
  %75 = zext i8 %74 to i32
  %76 = load i8, ptr @gBitsLeft, align 1
  %77 = zext i8 %76 to i32
  %78 = sub nsw i32 %75, %77
  %79 = sub nsw i32 8, %78
  %80 = trunc i32 %79 to i8
  store i8 %80, ptr @gBitsLeft, align 1
  br label %94

81:                                               ; preds = %45
  %82 = load i8, ptr @gBitsLeft, align 1
  %83 = zext i8 %82 to i32
  %84 = load i8, ptr %3, align 1
  %85 = zext i8 %84 to i32
  %86 = sub nsw i32 %83, %85
  %87 = trunc i32 %86 to i8
  store i8 %87, ptr @gBitsLeft, align 1
  %88 = load i8, ptr %3, align 1
  %89 = zext i8 %88 to i32
  %90 = load i16, ptr @gBitBuf, align 2
  %91 = zext i16 %90 to i32
  %92 = shl i32 %91, %89
  %93 = trunc i32 %92 to i16
  store i16 %93, ptr @gBitBuf, align 2
  br label %94

94:                                               ; preds = %81, %51
  %95 = load i16, ptr %6, align 2
  %96 = zext i16 %95 to i32
  %97 = load i8, ptr %5, align 1
  %98 = zext i8 %97 to i32
  %99 = sub nsw i32 16, %98
  %100 = ashr i32 %96, %99
  %101 = trunc i32 %100 to i16
  ret i16 %101
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i16 @getExtendTest(i8 noundef zeroext %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i8, align 1
  store i8 %0, ptr %3, align 1
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  switch i32 %5, label %22 [
    i32 0, label %6
    i32 1, label %7
    i32 2, label %8
    i32 3, label %9
    i32 4, label %10
    i32 5, label %11
    i32 6, label %12
    i32 7, label %13
    i32 8, label %14
    i32 9, label %15
    i32 10, label %16
    i32 11, label %17
    i32 12, label %18
    i32 13, label %19
    i32 14, label %20
    i32 15, label %21
  ]

6:                                                ; preds = %1
  store i16 0, ptr %2, align 2
  br label %23

7:                                                ; preds = %1
  store i16 1, ptr %2, align 2
  br label %23

8:                                                ; preds = %1
  store i16 2, ptr %2, align 2
  br label %23

9:                                                ; preds = %1
  store i16 4, ptr %2, align 2
  br label %23

10:                                               ; preds = %1
  store i16 8, ptr %2, align 2
  br label %23

11:                                               ; preds = %1
  store i16 16, ptr %2, align 2
  br label %23

12:                                               ; preds = %1
  store i16 32, ptr %2, align 2
  br label %23

13:                                               ; preds = %1
  store i16 64, ptr %2, align 2
  br label %23

14:                                               ; preds = %1
  store i16 128, ptr %2, align 2
  br label %23

15:                                               ; preds = %1
  store i16 256, ptr %2, align 2
  br label %23

16:                                               ; preds = %1
  store i16 512, ptr %2, align 2
  br label %23

17:                                               ; preds = %1
  store i16 1024, ptr %2, align 2
  br label %23

18:                                               ; preds = %1
  store i16 2048, ptr %2, align 2
  br label %23

19:                                               ; preds = %1
  store i16 4096, ptr %2, align 2
  br label %23

20:                                               ; preds = %1
  store i16 8192, ptr %2, align 2
  br label %23

21:                                               ; preds = %1
  store i16 16384, ptr %2, align 2
  br label %23

22:                                               ; preds = %1
  store i16 0, ptr %2, align 2
  br label %23

23:                                               ; preds = %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6
  %24 = load i16, ptr %2, align 2
  ret i16 %24
}

; Function Attrs: noinline nounwind uwtable
define internal signext i16 @getExtendOffset(i8 noundef zeroext %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i8, align 1
  store i8 %0, ptr %3, align 1
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  switch i32 %5, label %22 [
    i32 0, label %6
    i32 1, label %7
    i32 2, label %8
    i32 3, label %9
    i32 4, label %10
    i32 5, label %11
    i32 6, label %12
    i32 7, label %13
    i32 8, label %14
    i32 9, label %15
    i32 10, label %16
    i32 11, label %17
    i32 12, label %18
    i32 13, label %19
    i32 14, label %20
    i32 15, label %21
  ]

6:                                                ; preds = %1
  store i16 0, ptr %2, align 2
  br label %23

7:                                                ; preds = %1
  store i16 -1, ptr %2, align 2
  br label %23

8:                                                ; preds = %1
  store i16 -3, ptr %2, align 2
  br label %23

9:                                                ; preds = %1
  store i16 -7, ptr %2, align 2
  br label %23

10:                                               ; preds = %1
  store i16 -15, ptr %2, align 2
  br label %23

11:                                               ; preds = %1
  store i16 -31, ptr %2, align 2
  br label %23

12:                                               ; preds = %1
  store i16 -63, ptr %2, align 2
  br label %23

13:                                               ; preds = %1
  store i16 -127, ptr %2, align 2
  br label %23

14:                                               ; preds = %1
  store i16 -255, ptr %2, align 2
  br label %23

15:                                               ; preds = %1
  store i16 -511, ptr %2, align 2
  br label %23

16:                                               ; preds = %1
  store i16 -1023, ptr %2, align 2
  br label %23

17:                                               ; preds = %1
  store i16 -2047, ptr %2, align 2
  br label %23

18:                                               ; preds = %1
  store i16 -4095, ptr %2, align 2
  br label %23

19:                                               ; preds = %1
  store i16 -8191, ptr %2, align 2
  br label %23

20:                                               ; preds = %1
  store i16 -16383, ptr %2, align 2
  br label %23

21:                                               ; preds = %1
  store i16 -32767, ptr %2, align 2
  br label %23

22:                                               ; preds = %1
  store i16 0, ptr %2, align 2
  br label %23

23:                                               ; preds = %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6
  %24 = load i16, ptr %2, align 2
  ret i16 %24
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @clamp(i16 noundef signext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i16, align 2
  store i16 %0, ptr %3, align 2
  %4 = load i16, ptr %3, align 2
  %5 = zext i16 %4 to i32
  %6 = icmp ugt i32 %5, 255
  br i1 %6, label %7, label %19

7:                                                ; preds = %1
  %8 = load i16, ptr %3, align 2
  %9 = sext i16 %8 to i32
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  store i8 0, ptr %2, align 1
  br label %22

12:                                               ; preds = %7
  %13 = load i16, ptr %3, align 2
  %14 = sext i16 %13 to i32
  %15 = icmp sgt i32 %14, 255
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i8 -1, ptr %2, align 1
  br label %22

17:                                               ; preds = %12
  br label %18

18:                                               ; preds = %17
  br label %19

19:                                               ; preds = %18, %1
  %20 = load i16, ptr %3, align 2
  %21 = trunc i16 %20 to i8
  store i8 %21, ptr %2, align 1
  br label %22

22:                                               ; preds = %19, %16, %11
  %23 = load i8, ptr %2, align 1
  ret i8 %23
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @subAndClamp(i8 noundef zeroext %0, i16 noundef signext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i16, align 2
  store i8 %0, ptr %4, align 1
  store i16 %1, ptr %5, align 2
  %6 = load i8, ptr %4, align 1
  %7 = zext i8 %6 to i32
  %8 = load i16, ptr %5, align 2
  %9 = sext i16 %8 to i32
  %10 = sub nsw i32 %7, %9
  %11 = trunc i32 %10 to i16
  store i16 %11, ptr %5, align 2
  %12 = load i16, ptr %5, align 2
  %13 = zext i16 %12 to i32
  %14 = icmp ugt i32 %13, 255
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = load i16, ptr %5, align 2
  %17 = sext i16 %16 to i32
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i8 0, ptr %3, align 1
  br label %30

20:                                               ; preds = %15
  %21 = load i16, ptr %5, align 2
  %22 = sext i16 %21 to i32
  %23 = icmp sgt i32 %22, 255
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i8 -1, ptr %3, align 1
  br label %30

25:                                               ; preds = %20
  br label %26

26:                                               ; preds = %25
  br label %27

27:                                               ; preds = %26, %2
  %28 = load i16, ptr %5, align 2
  %29 = trunc i16 %28 to i8
  store i8 %29, ptr %3, align 1
  br label %30

30:                                               ; preds = %27, %24, %19
  %31 = load i8, ptr %3, align 1
  ret i8 %31
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @addAndClamp(i8 noundef zeroext %0, i16 noundef signext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i16, align 2
  store i8 %0, ptr %4, align 1
  store i16 %1, ptr %5, align 2
  %6 = load i8, ptr %4, align 1
  %7 = zext i8 %6 to i32
  %8 = load i16, ptr %5, align 2
  %9 = sext i16 %8 to i32
  %10 = add nsw i32 %7, %9
  %11 = trunc i32 %10 to i16
  store i16 %11, ptr %5, align 2
  %12 = load i16, ptr %5, align 2
  %13 = zext i16 %12 to i32
  %14 = icmp ugt i32 %13, 255
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = load i16, ptr %5, align 2
  %17 = sext i16 %16 to i32
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i8 0, ptr %3, align 1
  br label %30

20:                                               ; preds = %15
  %21 = load i16, ptr %5, align 2
  %22 = sext i16 %21 to i32
  %23 = icmp sgt i32 %22, 255
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i8 -1, ptr %3, align 1
  br label %30

25:                                               ; preds = %20
  br label %26

26:                                               ; preds = %25
  br label %27

27:                                               ; preds = %26, %2
  %28 = load i16, ptr %5, align 2
  %29 = trunc i16 %28 to i8
  store i8 %29, ptr %3, align 1
  br label %30

30:                                               ; preds = %27, %24, %19
  %31 = load i8, ptr %3, align 1
  ret i8 %31
}

; Function Attrs: noinline nounwind uwtable
define internal void @idctRows() #0 {
  %1 = alloca i8, align 1
  %2 = alloca ptr, align 8
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  %16 = alloca i16, align 2
  %17 = alloca i16, align 2
  %18 = alloca i16, align 2
  %19 = alloca i16, align 2
  %20 = alloca i16, align 2
  %21 = alloca i16, align 2
  %22 = alloca i16, align 2
  %23 = alloca i16, align 2
  %24 = alloca i16, align 2
  %25 = alloca i16, align 2
  %26 = alloca i16, align 2
  %27 = alloca i16, align 2
  %28 = alloca i16, align 2
  %29 = alloca i16, align 2
  %30 = alloca i16, align 2
  %31 = alloca i16, align 2
  %32 = alloca i16, align 2
  store ptr @gCoeffBuf, ptr %2, align 8
  store i8 0, ptr %1, align 1
  br label %33

33:                                               ; preds = %320, %0
  %34 = load i8, ptr %1, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp slt i32 %35, 8
  br i1 %36, label %37, label %323

37:                                               ; preds = %33
  %38 = load ptr, ptr %2, align 8
  %39 = getelementptr inbounds i16, ptr %38, i64 1
  %40 = load i16, ptr %39, align 2
  %41 = sext i16 %40 to i32
  %42 = load ptr, ptr %2, align 8
  %43 = getelementptr inbounds i16, ptr %42, i64 2
  %44 = load i16, ptr %43, align 2
  %45 = sext i16 %44 to i32
  %46 = or i32 %41, %45
  %47 = load ptr, ptr %2, align 8
  %48 = getelementptr inbounds i16, ptr %47, i64 3
  %49 = load i16, ptr %48, align 2
  %50 = sext i16 %49 to i32
  %51 = or i32 %46, %50
  %52 = load ptr, ptr %2, align 8
  %53 = getelementptr inbounds i16, ptr %52, i64 4
  %54 = load i16, ptr %53, align 2
  %55 = sext i16 %54 to i32
  %56 = or i32 %51, %55
  %57 = load ptr, ptr %2, align 8
  %58 = getelementptr inbounds i16, ptr %57, i64 5
  %59 = load i16, ptr %58, align 2
  %60 = sext i16 %59 to i32
  %61 = or i32 %56, %60
  %62 = load ptr, ptr %2, align 8
  %63 = getelementptr inbounds i16, ptr %62, i64 6
  %64 = load i16, ptr %63, align 2
  %65 = sext i16 %64 to i32
  %66 = or i32 %61, %65
  %67 = load ptr, ptr %2, align 8
  %68 = getelementptr inbounds i16, ptr %67, i64 7
  %69 = load i16, ptr %68, align 2
  %70 = sext i16 %69 to i32
  %71 = or i32 %66, %70
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %97

73:                                               ; preds = %37
  %74 = load ptr, ptr %2, align 8
  %75 = load i16, ptr %74, align 2
  store i16 %75, ptr %3, align 2
  %76 = load i16, ptr %3, align 2
  %77 = load ptr, ptr %2, align 8
  %78 = getelementptr inbounds i16, ptr %77, i64 1
  store i16 %76, ptr %78, align 2
  %79 = load i16, ptr %3, align 2
  %80 = load ptr, ptr %2, align 8
  %81 = getelementptr inbounds i16, ptr %80, i64 2
  store i16 %79, ptr %81, align 2
  %82 = load i16, ptr %3, align 2
  %83 = load ptr, ptr %2, align 8
  %84 = getelementptr inbounds i16, ptr %83, i64 3
  store i16 %82, ptr %84, align 2
  %85 = load i16, ptr %3, align 2
  %86 = load ptr, ptr %2, align 8
  %87 = getelementptr inbounds i16, ptr %86, i64 4
  store i16 %85, ptr %87, align 2
  %88 = load i16, ptr %3, align 2
  %89 = load ptr, ptr %2, align 8
  %90 = getelementptr inbounds i16, ptr %89, i64 5
  store i16 %88, ptr %90, align 2
  %91 = load i16, ptr %3, align 2
  %92 = load ptr, ptr %2, align 8
  %93 = getelementptr inbounds i16, ptr %92, i64 6
  store i16 %91, ptr %93, align 2
  %94 = load i16, ptr %3, align 2
  %95 = load ptr, ptr %2, align 8
  %96 = getelementptr inbounds i16, ptr %95, i64 7
  store i16 %94, ptr %96, align 2
  br label %317

97:                                               ; preds = %37
  %98 = load ptr, ptr %2, align 8
  %99 = getelementptr inbounds i16, ptr %98, i64 5
  %100 = load i16, ptr %99, align 2
  store i16 %100, ptr %4, align 2
  %101 = load ptr, ptr %2, align 8
  %102 = getelementptr inbounds i16, ptr %101, i64 3
  %103 = load i16, ptr %102, align 2
  store i16 %103, ptr %5, align 2
  %104 = load i16, ptr %4, align 2
  %105 = sext i16 %104 to i32
  %106 = load i16, ptr %5, align 2
  %107 = sext i16 %106 to i32
  %108 = sub nsw i32 %105, %107
  %109 = trunc i32 %108 to i16
  store i16 %109, ptr %6, align 2
  %110 = load i16, ptr %4, align 2
  %111 = sext i16 %110 to i32
  %112 = load i16, ptr %5, align 2
  %113 = sext i16 %112 to i32
  %114 = add nsw i32 %111, %113
  %115 = trunc i32 %114 to i16
  store i16 %115, ptr %7, align 2
  %116 = load ptr, ptr %2, align 8
  %117 = getelementptr inbounds i16, ptr %116, i64 1
  %118 = load i16, ptr %117, align 2
  store i16 %118, ptr %8, align 2
  %119 = load ptr, ptr %2, align 8
  %120 = getelementptr inbounds i16, ptr %119, i64 7
  %121 = load i16, ptr %120, align 2
  store i16 %121, ptr %9, align 2
  %122 = load i16, ptr %8, align 2
  %123 = sext i16 %122 to i32
  %124 = load i16, ptr %9, align 2
  %125 = sext i16 %124 to i32
  %126 = add nsw i32 %123, %125
  %127 = trunc i32 %126 to i16
  store i16 %127, ptr %10, align 2
  %128 = load i16, ptr %8, align 2
  %129 = sext i16 %128 to i32
  %130 = load i16, ptr %9, align 2
  %131 = sext i16 %130 to i32
  %132 = sub nsw i32 %129, %131
  %133 = trunc i32 %132 to i16
  store i16 %133, ptr %11, align 2
  %134 = load i16, ptr %6, align 2
  %135 = sext i16 %134 to i32
  %136 = load i16, ptr %11, align 2
  %137 = sext i16 %136 to i32
  %138 = sub nsw i32 %135, %137
  %139 = trunc i32 %138 to i16
  %140 = call signext i16 @imul_b5(i16 noundef signext %139)
  store i16 %140, ptr %12, align 2
  %141 = load i16, ptr %11, align 2
  %142 = call signext i16 @imul_b4(i16 noundef signext %141)
  %143 = sext i16 %142 to i32
  %144 = load i16, ptr %12, align 2
  %145 = sext i16 %144 to i32
  %146 = sub nsw i32 %143, %145
  %147 = trunc i32 %146 to i16
  store i16 %147, ptr %13, align 2
  %148 = load i16, ptr %12, align 2
  %149 = sext i16 %148 to i32
  %150 = load i16, ptr %6, align 2
  %151 = call signext i16 @imul_b2(i16 noundef signext %150)
  %152 = sext i16 %151 to i32
  %153 = sub nsw i32 %149, %152
  %154 = trunc i32 %153 to i16
  store i16 %154, ptr %14, align 2
  %155 = load i16, ptr %10, align 2
  %156 = sext i16 %155 to i32
  %157 = load i16, ptr %7, align 2
  %158 = sext i16 %157 to i32
  %159 = sub nsw i32 %156, %158
  %160 = trunc i32 %159 to i16
  store i16 %160, ptr %15, align 2
  %161 = load i16, ptr %10, align 2
  %162 = sext i16 %161 to i32
  %163 = load i16, ptr %7, align 2
  %164 = sext i16 %163 to i32
  %165 = add nsw i32 %162, %164
  %166 = trunc i32 %165 to i16
  store i16 %166, ptr %16, align 2
  %167 = load i16, ptr %13, align 2
  %168 = sext i16 %167 to i32
  %169 = load i16, ptr %16, align 2
  %170 = sext i16 %169 to i32
  %171 = sub nsw i32 %168, %170
  %172 = trunc i32 %171 to i16
  store i16 %172, ptr %17, align 2
  %173 = load i16, ptr %15, align 2
  %174 = call signext i16 @imul_b1_b3(i16 noundef signext %173)
  %175 = sext i16 %174 to i32
  %176 = load i16, ptr %17, align 2
  %177 = sext i16 %176 to i32
  %178 = sub nsw i32 %175, %177
  %179 = trunc i32 %178 to i16
  store i16 %179, ptr %18, align 2
  %180 = load i16, ptr %18, align 2
  %181 = sext i16 %180 to i32
  %182 = load i16, ptr %14, align 2
  %183 = sext i16 %182 to i32
  %184 = add nsw i32 %181, %183
  %185 = trunc i32 %184 to i16
  store i16 %185, ptr %19, align 2
  %186 = load ptr, ptr %2, align 8
  %187 = getelementptr inbounds i16, ptr %186, i64 0
  %188 = load i16, ptr %187, align 2
  store i16 %188, ptr %20, align 2
  %189 = load ptr, ptr %2, align 8
  %190 = getelementptr inbounds i16, ptr %189, i64 4
  %191 = load i16, ptr %190, align 2
  store i16 %191, ptr %21, align 2
  %192 = load i16, ptr %20, align 2
  %193 = sext i16 %192 to i32
  %194 = load i16, ptr %21, align 2
  %195 = sext i16 %194 to i32
  %196 = add nsw i32 %193, %195
  %197 = trunc i32 %196 to i16
  store i16 %197, ptr %22, align 2
  %198 = load i16, ptr %20, align 2
  %199 = sext i16 %198 to i32
  %200 = load i16, ptr %21, align 2
  %201 = sext i16 %200 to i32
  %202 = sub nsw i32 %199, %201
  %203 = trunc i32 %202 to i16
  store i16 %203, ptr %23, align 2
  %204 = load ptr, ptr %2, align 8
  %205 = getelementptr inbounds i16, ptr %204, i64 2
  %206 = load i16, ptr %205, align 2
  store i16 %206, ptr %24, align 2
  %207 = load ptr, ptr %2, align 8
  %208 = getelementptr inbounds i16, ptr %207, i64 6
  %209 = load i16, ptr %208, align 2
  store i16 %209, ptr %25, align 2
  %210 = load i16, ptr %24, align 2
  %211 = sext i16 %210 to i32
  %212 = load i16, ptr %25, align 2
  %213 = sext i16 %212 to i32
  %214 = sub nsw i32 %211, %213
  %215 = trunc i32 %214 to i16
  store i16 %215, ptr %26, align 2
  %216 = load i16, ptr %24, align 2
  %217 = sext i16 %216 to i32
  %218 = load i16, ptr %25, align 2
  %219 = sext i16 %218 to i32
  %220 = add nsw i32 %217, %219
  %221 = trunc i32 %220 to i16
  store i16 %221, ptr %27, align 2
  %222 = load i16, ptr %26, align 2
  %223 = call signext i16 @imul_b1_b3(i16 noundef signext %222)
  %224 = sext i16 %223 to i32
  %225 = load i16, ptr %27, align 2
  %226 = sext i16 %225 to i32
  %227 = sub nsw i32 %224, %226
  %228 = trunc i32 %227 to i16
  store i16 %228, ptr %28, align 2
  %229 = load i16, ptr %22, align 2
  %230 = sext i16 %229 to i32
  %231 = load i16, ptr %27, align 2
  %232 = sext i16 %231 to i32
  %233 = add nsw i32 %230, %232
  %234 = trunc i32 %233 to i16
  store i16 %234, ptr %29, align 2
  %235 = load i16, ptr %22, align 2
  %236 = sext i16 %235 to i32
  %237 = load i16, ptr %27, align 2
  %238 = sext i16 %237 to i32
  %239 = sub nsw i32 %236, %238
  %240 = trunc i32 %239 to i16
  store i16 %240, ptr %30, align 2
  %241 = load i16, ptr %23, align 2
  %242 = sext i16 %241 to i32
  %243 = load i16, ptr %28, align 2
  %244 = sext i16 %243 to i32
  %245 = add nsw i32 %242, %244
  %246 = trunc i32 %245 to i16
  store i16 %246, ptr %31, align 2
  %247 = load i16, ptr %23, align 2
  %248 = sext i16 %247 to i32
  %249 = load i16, ptr %28, align 2
  %250 = sext i16 %249 to i32
  %251 = sub nsw i32 %248, %250
  %252 = trunc i32 %251 to i16
  store i16 %252, ptr %32, align 2
  %253 = load i16, ptr %29, align 2
  %254 = sext i16 %253 to i32
  %255 = load i16, ptr %16, align 2
  %256 = sext i16 %255 to i32
  %257 = add nsw i32 %254, %256
  %258 = trunc i32 %257 to i16
  %259 = load ptr, ptr %2, align 8
  %260 = getelementptr inbounds i16, ptr %259, i64 0
  store i16 %258, ptr %260, align 2
  %261 = load i16, ptr %31, align 2
  %262 = sext i16 %261 to i32
  %263 = load i16, ptr %17, align 2
  %264 = sext i16 %263 to i32
  %265 = add nsw i32 %262, %264
  %266 = trunc i32 %265 to i16
  %267 = load ptr, ptr %2, align 8
  %268 = getelementptr inbounds i16, ptr %267, i64 1
  store i16 %266, ptr %268, align 2
  %269 = load i16, ptr %32, align 2
  %270 = sext i16 %269 to i32
  %271 = load i16, ptr %18, align 2
  %272 = sext i16 %271 to i32
  %273 = add nsw i32 %270, %272
  %274 = trunc i32 %273 to i16
  %275 = load ptr, ptr %2, align 8
  %276 = getelementptr inbounds i16, ptr %275, i64 2
  store i16 %274, ptr %276, align 2
  %277 = load i16, ptr %30, align 2
  %278 = sext i16 %277 to i32
  %279 = load i16, ptr %19, align 2
  %280 = sext i16 %279 to i32
  %281 = sub nsw i32 %278, %280
  %282 = trunc i32 %281 to i16
  %283 = load ptr, ptr %2, align 8
  %284 = getelementptr inbounds i16, ptr %283, i64 3
  store i16 %282, ptr %284, align 2
  %285 = load i16, ptr %30, align 2
  %286 = sext i16 %285 to i32
  %287 = load i16, ptr %19, align 2
  %288 = sext i16 %287 to i32
  %289 = add nsw i32 %286, %288
  %290 = trunc i32 %289 to i16
  %291 = load ptr, ptr %2, align 8
  %292 = getelementptr inbounds i16, ptr %291, i64 4
  store i16 %290, ptr %292, align 2
  %293 = load i16, ptr %32, align 2
  %294 = sext i16 %293 to i32
  %295 = load i16, ptr %18, align 2
  %296 = sext i16 %295 to i32
  %297 = sub nsw i32 %294, %296
  %298 = trunc i32 %297 to i16
  %299 = load ptr, ptr %2, align 8
  %300 = getelementptr inbounds i16, ptr %299, i64 5
  store i16 %298, ptr %300, align 2
  %301 = load i16, ptr %31, align 2
  %302 = sext i16 %301 to i32
  %303 = load i16, ptr %17, align 2
  %304 = sext i16 %303 to i32
  %305 = sub nsw i32 %302, %304
  %306 = trunc i32 %305 to i16
  %307 = load ptr, ptr %2, align 8
  %308 = getelementptr inbounds i16, ptr %307, i64 6
  store i16 %306, ptr %308, align 2
  %309 = load i16, ptr %29, align 2
  %310 = sext i16 %309 to i32
  %311 = load i16, ptr %16, align 2
  %312 = sext i16 %311 to i32
  %313 = sub nsw i32 %310, %312
  %314 = trunc i32 %313 to i16
  %315 = load ptr, ptr %2, align 8
  %316 = getelementptr inbounds i16, ptr %315, i64 7
  store i16 %314, ptr %316, align 2
  br label %317

317:                                              ; preds = %97, %73
  %318 = load ptr, ptr %2, align 8
  %319 = getelementptr inbounds i16, ptr %318, i64 8
  store ptr %319, ptr %2, align 8
  br label %320

320:                                              ; preds = %317
  %321 = load i8, ptr %1, align 1
  %322 = add i8 %321, 1
  store i8 %322, ptr %1, align 1
  br label %33, !llvm.loop !15

323:                                              ; preds = %33
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @idctCols() #0 {
  %1 = alloca i8, align 1
  %2 = alloca ptr, align 8
  %3 = alloca i8, align 1
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  %16 = alloca i16, align 2
  %17 = alloca i16, align 2
  %18 = alloca i16, align 2
  %19 = alloca i16, align 2
  %20 = alloca i16, align 2
  %21 = alloca i16, align 2
  %22 = alloca i16, align 2
  %23 = alloca i16, align 2
  %24 = alloca i16, align 2
  %25 = alloca i16, align 2
  %26 = alloca i16, align 2
  %27 = alloca i16, align 2
  %28 = alloca i16, align 2
  %29 = alloca i16, align 2
  %30 = alloca i16, align 2
  %31 = alloca i16, align 2
  %32 = alloca i16, align 2
  store ptr @gCoeffBuf, ptr %2, align 8
  store i8 0, ptr %1, align 1
  br label %33

33:                                               ; preds = %377, %0
  %34 = load i8, ptr %1, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp slt i32 %35, 8
  br i1 %36, label %37, label %380

37:                                               ; preds = %33
  %38 = load ptr, ptr %2, align 8
  %39 = getelementptr inbounds i16, ptr %38, i64 8
  %40 = load i16, ptr %39, align 2
  %41 = sext i16 %40 to i32
  %42 = load ptr, ptr %2, align 8
  %43 = getelementptr inbounds i16, ptr %42, i64 16
  %44 = load i16, ptr %43, align 2
  %45 = sext i16 %44 to i32
  %46 = or i32 %41, %45
  %47 = load ptr, ptr %2, align 8
  %48 = getelementptr inbounds i16, ptr %47, i64 24
  %49 = load i16, ptr %48, align 2
  %50 = sext i16 %49 to i32
  %51 = or i32 %46, %50
  %52 = load ptr, ptr %2, align 8
  %53 = getelementptr inbounds i16, ptr %52, i64 32
  %54 = load i16, ptr %53, align 2
  %55 = sext i16 %54 to i32
  %56 = or i32 %51, %55
  %57 = load ptr, ptr %2, align 8
  %58 = getelementptr inbounds i16, ptr %57, i64 40
  %59 = load i16, ptr %58, align 2
  %60 = sext i16 %59 to i32
  %61 = or i32 %56, %60
  %62 = load ptr, ptr %2, align 8
  %63 = getelementptr inbounds i16, ptr %62, i64 48
  %64 = load i16, ptr %63, align 2
  %65 = sext i16 %64 to i32
  %66 = or i32 %61, %65
  %67 = load ptr, ptr %2, align 8
  %68 = getelementptr inbounds i16, ptr %67, i64 56
  %69 = load i16, ptr %68, align 2
  %70 = sext i16 %69 to i32
  %71 = or i32 %66, %70
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %114

73:                                               ; preds = %37
  %74 = load ptr, ptr %2, align 8
  %75 = load i16, ptr %74, align 2
  %76 = sext i16 %75 to i32
  %77 = add i32 %76, 64
  %78 = lshr i32 %77, 7
  %79 = add i32 %78, 128
  %80 = trunc i32 %79 to i16
  %81 = call zeroext i8 @clamp(i16 noundef signext %80)
  store i8 %81, ptr %3, align 1
  %82 = load i8, ptr %3, align 1
  %83 = zext i8 %82 to i16
  %84 = load ptr, ptr %2, align 8
  %85 = getelementptr inbounds i16, ptr %84, i64 0
  store i16 %83, ptr %85, align 2
  %86 = load i8, ptr %3, align 1
  %87 = zext i8 %86 to i16
  %88 = load ptr, ptr %2, align 8
  %89 = getelementptr inbounds i16, ptr %88, i64 8
  store i16 %87, ptr %89, align 2
  %90 = load i8, ptr %3, align 1
  %91 = zext i8 %90 to i16
  %92 = load ptr, ptr %2, align 8
  %93 = getelementptr inbounds i16, ptr %92, i64 16
  store i16 %91, ptr %93, align 2
  %94 = load i8, ptr %3, align 1
  %95 = zext i8 %94 to i16
  %96 = load ptr, ptr %2, align 8
  %97 = getelementptr inbounds i16, ptr %96, i64 24
  store i16 %95, ptr %97, align 2
  %98 = load i8, ptr %3, align 1
  %99 = zext i8 %98 to i16
  %100 = load ptr, ptr %2, align 8
  %101 = getelementptr inbounds i16, ptr %100, i64 32
  store i16 %99, ptr %101, align 2
  %102 = load i8, ptr %3, align 1
  %103 = zext i8 %102 to i16
  %104 = load ptr, ptr %2, align 8
  %105 = getelementptr inbounds i16, ptr %104, i64 40
  store i16 %103, ptr %105, align 2
  %106 = load i8, ptr %3, align 1
  %107 = zext i8 %106 to i16
  %108 = load ptr, ptr %2, align 8
  %109 = getelementptr inbounds i16, ptr %108, i64 48
  store i16 %107, ptr %109, align 2
  %110 = load i8, ptr %3, align 1
  %111 = zext i8 %110 to i16
  %112 = load ptr, ptr %2, align 8
  %113 = getelementptr inbounds i16, ptr %112, i64 56
  store i16 %111, ptr %113, align 2
  br label %374

114:                                              ; preds = %37
  %115 = load ptr, ptr %2, align 8
  %116 = getelementptr inbounds i16, ptr %115, i64 40
  %117 = load i16, ptr %116, align 2
  store i16 %117, ptr %4, align 2
  %118 = load ptr, ptr %2, align 8
  %119 = getelementptr inbounds i16, ptr %118, i64 24
  %120 = load i16, ptr %119, align 2
  store i16 %120, ptr %5, align 2
  %121 = load i16, ptr %4, align 2
  %122 = sext i16 %121 to i32
  %123 = load i16, ptr %5, align 2
  %124 = sext i16 %123 to i32
  %125 = sub nsw i32 %122, %124
  %126 = trunc i32 %125 to i16
  store i16 %126, ptr %6, align 2
  %127 = load i16, ptr %4, align 2
  %128 = sext i16 %127 to i32
  %129 = load i16, ptr %5, align 2
  %130 = sext i16 %129 to i32
  %131 = add nsw i32 %128, %130
  %132 = trunc i32 %131 to i16
  store i16 %132, ptr %7, align 2
  %133 = load ptr, ptr %2, align 8
  %134 = getelementptr inbounds i16, ptr %133, i64 8
  %135 = load i16, ptr %134, align 2
  store i16 %135, ptr %8, align 2
  %136 = load ptr, ptr %2, align 8
  %137 = getelementptr inbounds i16, ptr %136, i64 56
  %138 = load i16, ptr %137, align 2
  store i16 %138, ptr %9, align 2
  %139 = load i16, ptr %8, align 2
  %140 = sext i16 %139 to i32
  %141 = load i16, ptr %9, align 2
  %142 = sext i16 %141 to i32
  %143 = add nsw i32 %140, %142
  %144 = trunc i32 %143 to i16
  store i16 %144, ptr %10, align 2
  %145 = load i16, ptr %8, align 2
  %146 = sext i16 %145 to i32
  %147 = load i16, ptr %9, align 2
  %148 = sext i16 %147 to i32
  %149 = sub nsw i32 %146, %148
  %150 = trunc i32 %149 to i16
  store i16 %150, ptr %11, align 2
  %151 = load i16, ptr %6, align 2
  %152 = sext i16 %151 to i32
  %153 = load i16, ptr %11, align 2
  %154 = sext i16 %153 to i32
  %155 = sub nsw i32 %152, %154
  %156 = trunc i32 %155 to i16
  %157 = call signext i16 @imul_b5(i16 noundef signext %156)
  store i16 %157, ptr %12, align 2
  %158 = load i16, ptr %11, align 2
  %159 = call signext i16 @imul_b4(i16 noundef signext %158)
  %160 = sext i16 %159 to i32
  %161 = load i16, ptr %12, align 2
  %162 = sext i16 %161 to i32
  %163 = sub nsw i32 %160, %162
  %164 = trunc i32 %163 to i16
  store i16 %164, ptr %13, align 2
  %165 = load i16, ptr %12, align 2
  %166 = sext i16 %165 to i32
  %167 = load i16, ptr %6, align 2
  %168 = call signext i16 @imul_b2(i16 noundef signext %167)
  %169 = sext i16 %168 to i32
  %170 = sub nsw i32 %166, %169
  %171 = trunc i32 %170 to i16
  store i16 %171, ptr %14, align 2
  %172 = load i16, ptr %10, align 2
  %173 = sext i16 %172 to i32
  %174 = load i16, ptr %7, align 2
  %175 = sext i16 %174 to i32
  %176 = sub nsw i32 %173, %175
  %177 = trunc i32 %176 to i16
  store i16 %177, ptr %15, align 2
  %178 = load i16, ptr %10, align 2
  %179 = sext i16 %178 to i32
  %180 = load i16, ptr %7, align 2
  %181 = sext i16 %180 to i32
  %182 = add nsw i32 %179, %181
  %183 = trunc i32 %182 to i16
  store i16 %183, ptr %16, align 2
  %184 = load i16, ptr %13, align 2
  %185 = sext i16 %184 to i32
  %186 = load i16, ptr %16, align 2
  %187 = sext i16 %186 to i32
  %188 = sub nsw i32 %185, %187
  %189 = trunc i32 %188 to i16
  store i16 %189, ptr %17, align 2
  %190 = load i16, ptr %15, align 2
  %191 = call signext i16 @imul_b1_b3(i16 noundef signext %190)
  %192 = sext i16 %191 to i32
  %193 = load i16, ptr %17, align 2
  %194 = sext i16 %193 to i32
  %195 = sub nsw i32 %192, %194
  %196 = trunc i32 %195 to i16
  store i16 %196, ptr %18, align 2
  %197 = load i16, ptr %18, align 2
  %198 = sext i16 %197 to i32
  %199 = load i16, ptr %14, align 2
  %200 = sext i16 %199 to i32
  %201 = add nsw i32 %198, %200
  %202 = trunc i32 %201 to i16
  store i16 %202, ptr %19, align 2
  %203 = load ptr, ptr %2, align 8
  %204 = getelementptr inbounds i16, ptr %203, i64 0
  %205 = load i16, ptr %204, align 2
  store i16 %205, ptr %20, align 2
  %206 = load ptr, ptr %2, align 8
  %207 = getelementptr inbounds i16, ptr %206, i64 32
  %208 = load i16, ptr %207, align 2
  store i16 %208, ptr %21, align 2
  %209 = load i16, ptr %20, align 2
  %210 = sext i16 %209 to i32
  %211 = load i16, ptr %21, align 2
  %212 = sext i16 %211 to i32
  %213 = add nsw i32 %210, %212
  %214 = trunc i32 %213 to i16
  store i16 %214, ptr %22, align 2
  %215 = load i16, ptr %20, align 2
  %216 = sext i16 %215 to i32
  %217 = load i16, ptr %21, align 2
  %218 = sext i16 %217 to i32
  %219 = sub nsw i32 %216, %218
  %220 = trunc i32 %219 to i16
  store i16 %220, ptr %23, align 2
  %221 = load ptr, ptr %2, align 8
  %222 = getelementptr inbounds i16, ptr %221, i64 16
  %223 = load i16, ptr %222, align 2
  store i16 %223, ptr %24, align 2
  %224 = load ptr, ptr %2, align 8
  %225 = getelementptr inbounds i16, ptr %224, i64 48
  %226 = load i16, ptr %225, align 2
  store i16 %226, ptr %25, align 2
  %227 = load i16, ptr %24, align 2
  %228 = sext i16 %227 to i32
  %229 = load i16, ptr %25, align 2
  %230 = sext i16 %229 to i32
  %231 = sub nsw i32 %228, %230
  %232 = trunc i32 %231 to i16
  store i16 %232, ptr %26, align 2
  %233 = load i16, ptr %24, align 2
  %234 = sext i16 %233 to i32
  %235 = load i16, ptr %25, align 2
  %236 = sext i16 %235 to i32
  %237 = add nsw i32 %234, %236
  %238 = trunc i32 %237 to i16
  store i16 %238, ptr %27, align 2
  %239 = load i16, ptr %26, align 2
  %240 = call signext i16 @imul_b1_b3(i16 noundef signext %239)
  %241 = sext i16 %240 to i32
  %242 = load i16, ptr %27, align 2
  %243 = sext i16 %242 to i32
  %244 = sub nsw i32 %241, %243
  %245 = trunc i32 %244 to i16
  store i16 %245, ptr %28, align 2
  %246 = load i16, ptr %22, align 2
  %247 = sext i16 %246 to i32
  %248 = load i16, ptr %27, align 2
  %249 = sext i16 %248 to i32
  %250 = add nsw i32 %247, %249
  %251 = trunc i32 %250 to i16
  store i16 %251, ptr %29, align 2
  %252 = load i16, ptr %22, align 2
  %253 = sext i16 %252 to i32
  %254 = load i16, ptr %27, align 2
  %255 = sext i16 %254 to i32
  %256 = sub nsw i32 %253, %255
  %257 = trunc i32 %256 to i16
  store i16 %257, ptr %30, align 2
  %258 = load i16, ptr %23, align 2
  %259 = sext i16 %258 to i32
  %260 = load i16, ptr %28, align 2
  %261 = sext i16 %260 to i32
  %262 = add nsw i32 %259, %261
  %263 = trunc i32 %262 to i16
  store i16 %263, ptr %31, align 2
  %264 = load i16, ptr %23, align 2
  %265 = sext i16 %264 to i32
  %266 = load i16, ptr %28, align 2
  %267 = sext i16 %266 to i32
  %268 = sub nsw i32 %265, %267
  %269 = trunc i32 %268 to i16
  store i16 %269, ptr %32, align 2
  %270 = load i16, ptr %29, align 2
  %271 = sext i16 %270 to i32
  %272 = load i16, ptr %16, align 2
  %273 = sext i16 %272 to i32
  %274 = add nsw i32 %271, %273
  %275 = add i32 %274, 64
  %276 = lshr i32 %275, 7
  %277 = add i32 %276, 128
  %278 = trunc i32 %277 to i16
  %279 = call zeroext i8 @clamp(i16 noundef signext %278)
  %280 = zext i8 %279 to i16
  %281 = load ptr, ptr %2, align 8
  %282 = getelementptr inbounds i16, ptr %281, i64 0
  store i16 %280, ptr %282, align 2
  %283 = load i16, ptr %31, align 2
  %284 = sext i16 %283 to i32
  %285 = load i16, ptr %17, align 2
  %286 = sext i16 %285 to i32
  %287 = add nsw i32 %284, %286
  %288 = add i32 %287, 64
  %289 = lshr i32 %288, 7
  %290 = add i32 %289, 128
  %291 = trunc i32 %290 to i16
  %292 = call zeroext i8 @clamp(i16 noundef signext %291)
  %293 = zext i8 %292 to i16
  %294 = load ptr, ptr %2, align 8
  %295 = getelementptr inbounds i16, ptr %294, i64 8
  store i16 %293, ptr %295, align 2
  %296 = load i16, ptr %32, align 2
  %297 = sext i16 %296 to i32
  %298 = load i16, ptr %18, align 2
  %299 = sext i16 %298 to i32
  %300 = add nsw i32 %297, %299
  %301 = add i32 %300, 64
  %302 = lshr i32 %301, 7
  %303 = add i32 %302, 128
  %304 = trunc i32 %303 to i16
  %305 = call zeroext i8 @clamp(i16 noundef signext %304)
  %306 = zext i8 %305 to i16
  %307 = load ptr, ptr %2, align 8
  %308 = getelementptr inbounds i16, ptr %307, i64 16
  store i16 %306, ptr %308, align 2
  %309 = load i16, ptr %30, align 2
  %310 = sext i16 %309 to i32
  %311 = load i16, ptr %19, align 2
  %312 = sext i16 %311 to i32
  %313 = sub nsw i32 %310, %312
  %314 = add i32 %313, 64
  %315 = lshr i32 %314, 7
  %316 = add i32 %315, 128
  %317 = trunc i32 %316 to i16
  %318 = call zeroext i8 @clamp(i16 noundef signext %317)
  %319 = zext i8 %318 to i16
  %320 = load ptr, ptr %2, align 8
  %321 = getelementptr inbounds i16, ptr %320, i64 24
  store i16 %319, ptr %321, align 2
  %322 = load i16, ptr %30, align 2
  %323 = sext i16 %322 to i32
  %324 = load i16, ptr %19, align 2
  %325 = sext i16 %324 to i32
  %326 = add nsw i32 %323, %325
  %327 = add i32 %326, 64
  %328 = lshr i32 %327, 7
  %329 = add i32 %328, 128
  %330 = trunc i32 %329 to i16
  %331 = call zeroext i8 @clamp(i16 noundef signext %330)
  %332 = zext i8 %331 to i16
  %333 = load ptr, ptr %2, align 8
  %334 = getelementptr inbounds i16, ptr %333, i64 32
  store i16 %332, ptr %334, align 2
  %335 = load i16, ptr %32, align 2
  %336 = sext i16 %335 to i32
  %337 = load i16, ptr %18, align 2
  %338 = sext i16 %337 to i32
  %339 = sub nsw i32 %336, %338
  %340 = add i32 %339, 64
  %341 = lshr i32 %340, 7
  %342 = add i32 %341, 128
  %343 = trunc i32 %342 to i16
  %344 = call zeroext i8 @clamp(i16 noundef signext %343)
  %345 = zext i8 %344 to i16
  %346 = load ptr, ptr %2, align 8
  %347 = getelementptr inbounds i16, ptr %346, i64 40
  store i16 %345, ptr %347, align 2
  %348 = load i16, ptr %31, align 2
  %349 = sext i16 %348 to i32
  %350 = load i16, ptr %17, align 2
  %351 = sext i16 %350 to i32
  %352 = sub nsw i32 %349, %351
  %353 = add i32 %352, 64
  %354 = lshr i32 %353, 7
  %355 = add i32 %354, 128
  %356 = trunc i32 %355 to i16
  %357 = call zeroext i8 @clamp(i16 noundef signext %356)
  %358 = zext i8 %357 to i16
  %359 = load ptr, ptr %2, align 8
  %360 = getelementptr inbounds i16, ptr %359, i64 48
  store i16 %358, ptr %360, align 2
  %361 = load i16, ptr %29, align 2
  %362 = sext i16 %361 to i32
  %363 = load i16, ptr %16, align 2
  %364 = sext i16 %363 to i32
  %365 = sub nsw i32 %362, %364
  %366 = add i32 %365, 64
  %367 = lshr i32 %366, 7
  %368 = add i32 %367, 128
  %369 = trunc i32 %368 to i16
  %370 = call zeroext i8 @clamp(i16 noundef signext %369)
  %371 = zext i8 %370 to i16
  %372 = load ptr, ptr %2, align 8
  %373 = getelementptr inbounds i16, ptr %372, i64 56
  store i16 %371, ptr %373, align 2
  br label %374

374:                                              ; preds = %114, %73
  %375 = load ptr, ptr %2, align 8
  %376 = getelementptr inbounds nuw i16, ptr %375, i32 1
  store ptr %376, ptr %2, align 8
  br label %377

377:                                              ; preds = %374
  %378 = load i8, ptr %1, align 1
  %379 = add i8 %378, 1
  store i8 %379, ptr %1, align 1
  br label %33, !llvm.loop !16

380:                                              ; preds = %33
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @copyY(i8 noundef zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  %9 = load i8, ptr %2, align 1
  %10 = zext i8 %9 to i32
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, ptr @gMCUBufR, i64 %11
  store ptr %12, ptr %4, align 8
  %13 = load i8, ptr %2, align 1
  %14 = zext i8 %13 to i32
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, ptr @gMCUBufG, i64 %15
  store ptr %16, ptr %5, align 8
  %17 = load i8, ptr %2, align 1
  %18 = zext i8 %17 to i32
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, ptr @gMCUBufB, i64 %19
  store ptr %20, ptr %6, align 8
  store ptr @gCoeffBuf, ptr %7, align 8
  store i8 64, ptr %3, align 1
  br label %21

21:                                               ; preds = %39, %1
  %22 = load i8, ptr %3, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %21
  %26 = load ptr, ptr %7, align 8
  %27 = getelementptr inbounds nuw i16, ptr %26, i32 1
  store ptr %27, ptr %7, align 8
  %28 = load i16, ptr %26, align 2
  %29 = trunc i16 %28 to i8
  store i8 %29, ptr %8, align 1
  %30 = load i8, ptr %8, align 1
  %31 = load ptr, ptr %4, align 8
  %32 = getelementptr inbounds nuw i8, ptr %31, i32 1
  store ptr %32, ptr %4, align 8
  store i8 %30, ptr %31, align 1
  %33 = load i8, ptr %8, align 1
  %34 = load ptr, ptr %5, align 8
  %35 = getelementptr inbounds nuw i8, ptr %34, i32 1
  store ptr %35, ptr %5, align 8
  store i8 %33, ptr %34, align 1
  %36 = load i8, ptr %8, align 1
  %37 = load ptr, ptr %6, align 8
  %38 = getelementptr inbounds nuw i8, ptr %37, i32 1
  store ptr %38, ptr %6, align 8
  store i8 %36, ptr %37, align 1
  br label %39

39:                                               ; preds = %25
  %40 = load i8, ptr %3, align 1
  %41 = add i8 %40, -1
  store i8 %41, ptr %3, align 1
  br label %21, !llvm.loop !17

42:                                               ; preds = %21
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @convertCb(i8 noundef zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i8, align 1
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  store i8 %0, ptr %2, align 1
  %10 = load i8, ptr %2, align 1
  %11 = zext i8 %10 to i32
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, ptr @gMCUBufG, i64 %12
  store ptr %13, ptr %4, align 8
  %14 = load i8, ptr %2, align 1
  %15 = zext i8 %14 to i32
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, ptr @gMCUBufB, i64 %16
  store ptr %17, ptr %5, align 8
  store ptr @gCoeffBuf, ptr %6, align 8
  store i8 64, ptr %3, align 1
  br label %18

18:                                               ; preds = %58, %1
  %19 = load i8, ptr %3, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %61

22:                                               ; preds = %18
  %23 = load ptr, ptr %6, align 8
  %24 = getelementptr inbounds nuw i16, ptr %23, i32 1
  store ptr %24, ptr %6, align 8
  %25 = load i16, ptr %23, align 2
  %26 = trunc i16 %25 to i8
  store i8 %26, ptr %7, align 1
  %27 = load i8, ptr %7, align 1
  %28 = zext i8 %27 to i32
  %29 = mul i32 %28, 88
  %30 = lshr i32 %29, 8
  %31 = sub i32 %30, 44
  %32 = trunc i32 %31 to i16
  store i16 %32, ptr %8, align 2
  %33 = load ptr, ptr %4, align 8
  %34 = getelementptr inbounds i8, ptr %33, i64 0
  %35 = load i8, ptr %34, align 1
  %36 = load i16, ptr %8, align 2
  %37 = call zeroext i8 @subAndClamp(i8 noundef zeroext %35, i16 noundef signext %36)
  %38 = load ptr, ptr %4, align 8
  store i8 %37, ptr %38, align 1
  %39 = load ptr, ptr %4, align 8
  %40 = getelementptr inbounds nuw i8, ptr %39, i32 1
  store ptr %40, ptr %4, align 8
  %41 = load i8, ptr %7, align 1
  %42 = zext i8 %41 to i32
  %43 = load i8, ptr %7, align 1
  %44 = zext i8 %43 to i32
  %45 = mul i32 %44, 198
  %46 = lshr i32 %45, 8
  %47 = add i32 %42, %46
  %48 = sub i32 %47, 227
  %49 = trunc i32 %48 to i16
  store i16 %49, ptr %9, align 2
  %50 = load ptr, ptr %5, align 8
  %51 = getelementptr inbounds i8, ptr %50, i64 0
  %52 = load i8, ptr %51, align 1
  %53 = load i16, ptr %9, align 2
  %54 = call zeroext i8 @addAndClamp(i8 noundef zeroext %52, i16 noundef signext %53)
  %55 = load ptr, ptr %5, align 8
  store i8 %54, ptr %55, align 1
  %56 = load ptr, ptr %5, align 8
  %57 = getelementptr inbounds nuw i8, ptr %56, i32 1
  store ptr %57, ptr %5, align 8
  br label %58

58:                                               ; preds = %22
  %59 = load i8, ptr %3, align 1
  %60 = add i8 %59, -1
  store i8 %60, ptr %3, align 1
  br label %18, !llvm.loop !18

61:                                               ; preds = %18
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @convertCr(i8 noundef zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i8, align 1
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  store i8 %0, ptr %2, align 1
  %10 = load i8, ptr %2, align 1
  %11 = zext i8 %10 to i32
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, ptr @gMCUBufR, i64 %12
  store ptr %13, ptr %4, align 8
  %14 = load i8, ptr %2, align 1
  %15 = zext i8 %14 to i32
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, ptr @gMCUBufG, i64 %16
  store ptr %17, ptr %5, align 8
  store ptr @gCoeffBuf, ptr %6, align 8
  store i8 64, ptr %3, align 1
  br label %18

18:                                               ; preds = %58, %1
  %19 = load i8, ptr %3, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %61

22:                                               ; preds = %18
  %23 = load ptr, ptr %6, align 8
  %24 = getelementptr inbounds nuw i16, ptr %23, i32 1
  store ptr %24, ptr %6, align 8
  %25 = load i16, ptr %23, align 2
  %26 = trunc i16 %25 to i8
  store i8 %26, ptr %7, align 1
  %27 = load i8, ptr %7, align 1
  %28 = zext i8 %27 to i32
  %29 = load i8, ptr %7, align 1
  %30 = zext i8 %29 to i32
  %31 = mul i32 %30, 103
  %32 = lshr i32 %31, 8
  %33 = add i32 %28, %32
  %34 = sub i32 %33, 179
  %35 = trunc i32 %34 to i16
  store i16 %35, ptr %8, align 2
  %36 = load ptr, ptr %4, align 8
  %37 = getelementptr inbounds i8, ptr %36, i64 0
  %38 = load i8, ptr %37, align 1
  %39 = load i16, ptr %8, align 2
  %40 = call zeroext i8 @addAndClamp(i8 noundef zeroext %38, i16 noundef signext %39)
  %41 = load ptr, ptr %4, align 8
  store i8 %40, ptr %41, align 1
  %42 = load ptr, ptr %4, align 8
  %43 = getelementptr inbounds nuw i8, ptr %42, i32 1
  store ptr %43, ptr %4, align 8
  %44 = load i8, ptr %7, align 1
  %45 = zext i8 %44 to i32
  %46 = mul i32 %45, 183
  %47 = lshr i32 %46, 8
  %48 = sub i32 %47, 91
  %49 = trunc i32 %48 to i16
  store i16 %49, ptr %9, align 2
  %50 = load ptr, ptr %5, align 8
  %51 = getelementptr inbounds i8, ptr %50, i64 0
  %52 = load i8, ptr %51, align 1
  %53 = load i16, ptr %9, align 2
  %54 = call zeroext i8 @subAndClamp(i8 noundef zeroext %52, i16 noundef signext %53)
  %55 = load ptr, ptr %5, align 8
  store i8 %54, ptr %55, align 1
  %56 = load ptr, ptr %5, align 8
  %57 = getelementptr inbounds nuw i8, ptr %56, i32 1
  store ptr %57, ptr %5, align 8
  br label %58

58:                                               ; preds = %22
  %59 = load i8, ptr %3, align 1
  %60 = add i8 %59, -1
  store i8 %60, ptr %3, align 1
  br label %18, !llvm.loop !19

61:                                               ; preds = %18
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @upsampleCbV(i8 noundef zeroext %0, i8 noundef zeroext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i8, align 1
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  store i8 %0, ptr %3, align 1
  store i8 %1, ptr %4, align 1
  %13 = load i8, ptr %3, align 1
  %14 = zext i8 %13 to i32
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i16, ptr @gCoeffBuf, i64 %15
  store ptr %16, ptr %7, align 8
  %17 = load i8, ptr %4, align 1
  %18 = zext i8 %17 to i32
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, ptr @gMCUBufG, i64 %19
  store ptr %20, ptr %8, align 8
  %21 = load i8, ptr %4, align 1
  %22 = zext i8 %21 to i32
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, ptr @gMCUBufB, i64 %23
  store ptr %24, ptr %9, align 8
  store i8 0, ptr %6, align 1
  br label %25

25:                                               ; preds = %96, %2
  %26 = load i8, ptr %6, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp slt i32 %27, 4
  br i1 %28, label %29, label %99

29:                                               ; preds = %25
  store i8 0, ptr %5, align 1
  br label %30

30:                                               ; preds = %86, %29
  %31 = load i8, ptr %5, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp slt i32 %32, 8
  br i1 %33, label %34, label %89

34:                                               ; preds = %30
  %35 = load ptr, ptr %7, align 8
  %36 = getelementptr inbounds nuw i16, ptr %35, i32 1
  store ptr %36, ptr %7, align 8
  %37 = load i16, ptr %35, align 2
  %38 = trunc i16 %37 to i8
  store i8 %38, ptr %10, align 1
  %39 = load i8, ptr %10, align 1
  %40 = zext i8 %39 to i32
  %41 = mul i32 %40, 88
  %42 = lshr i32 %41, 8
  %43 = sub i32 %42, 44
  %44 = trunc i32 %43 to i16
  store i16 %44, ptr %11, align 2
  %45 = load ptr, ptr %8, align 8
  %46 = getelementptr inbounds i8, ptr %45, i64 0
  %47 = load i8, ptr %46, align 1
  %48 = load i16, ptr %11, align 2
  %49 = call zeroext i8 @subAndClamp(i8 noundef zeroext %47, i16 noundef signext %48)
  %50 = load ptr, ptr %8, align 8
  %51 = getelementptr inbounds i8, ptr %50, i64 0
  store i8 %49, ptr %51, align 1
  %52 = load ptr, ptr %8, align 8
  %53 = getelementptr inbounds i8, ptr %52, i64 8
  %54 = load i8, ptr %53, align 1
  %55 = load i16, ptr %11, align 2
  %56 = call zeroext i8 @subAndClamp(i8 noundef zeroext %54, i16 noundef signext %55)
  %57 = load ptr, ptr %8, align 8
  %58 = getelementptr inbounds i8, ptr %57, i64 8
  store i8 %56, ptr %58, align 1
  %59 = load i8, ptr %10, align 1
  %60 = zext i8 %59 to i32
  %61 = load i8, ptr %10, align 1
  %62 = zext i8 %61 to i32
  %63 = mul i32 %62, 198
  %64 = lshr i32 %63, 8
  %65 = add i32 %60, %64
  %66 = sub i32 %65, 227
  %67 = trunc i32 %66 to i16
  store i16 %67, ptr %12, align 2
  %68 = load ptr, ptr %9, align 8
  %69 = getelementptr inbounds i8, ptr %68, i64 0
  %70 = load i8, ptr %69, align 1
  %71 = load i16, ptr %12, align 2
  %72 = call zeroext i8 @addAndClamp(i8 noundef zeroext %70, i16 noundef signext %71)
  %73 = load ptr, ptr %9, align 8
  %74 = getelementptr inbounds i8, ptr %73, i64 0
  store i8 %72, ptr %74, align 1
  %75 = load ptr, ptr %9, align 8
  %76 = getelementptr inbounds i8, ptr %75, i64 8
  %77 = load i8, ptr %76, align 1
  %78 = load i16, ptr %12, align 2
  %79 = call zeroext i8 @addAndClamp(i8 noundef zeroext %77, i16 noundef signext %78)
  %80 = load ptr, ptr %9, align 8
  %81 = getelementptr inbounds i8, ptr %80, i64 8
  store i8 %79, ptr %81, align 1
  %82 = load ptr, ptr %8, align 8
  %83 = getelementptr inbounds nuw i8, ptr %82, i32 1
  store ptr %83, ptr %8, align 8
  %84 = load ptr, ptr %9, align 8
  %85 = getelementptr inbounds nuw i8, ptr %84, i32 1
  store ptr %85, ptr %9, align 8
  br label %86

86:                                               ; preds = %34
  %87 = load i8, ptr %5, align 1
  %88 = add i8 %87, 1
  store i8 %88, ptr %5, align 1
  br label %30, !llvm.loop !20

89:                                               ; preds = %30
  %90 = load ptr, ptr %8, align 8
  %91 = getelementptr inbounds i8, ptr %90, i64 -8
  %92 = getelementptr inbounds i8, ptr %91, i64 16
  store ptr %92, ptr %8, align 8
  %93 = load ptr, ptr %9, align 8
  %94 = getelementptr inbounds i8, ptr %93, i64 -8
  %95 = getelementptr inbounds i8, ptr %94, i64 16
  store ptr %95, ptr %9, align 8
  br label %96

96:                                               ; preds = %89
  %97 = load i8, ptr %6, align 1
  %98 = add i8 %97, 1
  store i8 %98, ptr %6, align 1
  br label %25, !llvm.loop !21

99:                                               ; preds = %25
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @upsampleCrV(i8 noundef zeroext %0, i8 noundef zeroext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i8, align 1
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  store i8 %0, ptr %3, align 1
  store i8 %1, ptr %4, align 1
  %13 = load i8, ptr %3, align 1
  %14 = zext i8 %13 to i32
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i16, ptr @gCoeffBuf, i64 %15
  store ptr %16, ptr %7, align 8
  %17 = load i8, ptr %4, align 1
  %18 = zext i8 %17 to i32
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, ptr @gMCUBufR, i64 %19
  store ptr %20, ptr %8, align 8
  %21 = load i8, ptr %4, align 1
  %22 = zext i8 %21 to i32
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, ptr @gMCUBufG, i64 %23
  store ptr %24, ptr %9, align 8
  store i8 0, ptr %6, align 1
  br label %25

25:                                               ; preds = %96, %2
  %26 = load i8, ptr %6, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp slt i32 %27, 4
  br i1 %28, label %29, label %99

29:                                               ; preds = %25
  store i8 0, ptr %5, align 1
  br label %30

30:                                               ; preds = %86, %29
  %31 = load i8, ptr %5, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp slt i32 %32, 8
  br i1 %33, label %34, label %89

34:                                               ; preds = %30
  %35 = load ptr, ptr %7, align 8
  %36 = getelementptr inbounds nuw i16, ptr %35, i32 1
  store ptr %36, ptr %7, align 8
  %37 = load i16, ptr %35, align 2
  %38 = trunc i16 %37 to i8
  store i8 %38, ptr %10, align 1
  %39 = load i8, ptr %10, align 1
  %40 = zext i8 %39 to i32
  %41 = load i8, ptr %10, align 1
  %42 = zext i8 %41 to i32
  %43 = mul i32 %42, 103
  %44 = lshr i32 %43, 8
  %45 = add i32 %40, %44
  %46 = sub i32 %45, 179
  %47 = trunc i32 %46 to i16
  store i16 %47, ptr %11, align 2
  %48 = load ptr, ptr %8, align 8
  %49 = getelementptr inbounds i8, ptr %48, i64 0
  %50 = load i8, ptr %49, align 1
  %51 = load i16, ptr %11, align 2
  %52 = call zeroext i8 @addAndClamp(i8 noundef zeroext %50, i16 noundef signext %51)
  %53 = load ptr, ptr %8, align 8
  %54 = getelementptr inbounds i8, ptr %53, i64 0
  store i8 %52, ptr %54, align 1
  %55 = load ptr, ptr %8, align 8
  %56 = getelementptr inbounds i8, ptr %55, i64 8
  %57 = load i8, ptr %56, align 1
  %58 = load i16, ptr %11, align 2
  %59 = call zeroext i8 @addAndClamp(i8 noundef zeroext %57, i16 noundef signext %58)
  %60 = load ptr, ptr %8, align 8
  %61 = getelementptr inbounds i8, ptr %60, i64 8
  store i8 %59, ptr %61, align 1
  %62 = load i8, ptr %10, align 1
  %63 = zext i8 %62 to i32
  %64 = mul i32 %63, 183
  %65 = lshr i32 %64, 8
  %66 = sub i32 %65, 91
  %67 = trunc i32 %66 to i16
  store i16 %67, ptr %12, align 2
  %68 = load ptr, ptr %9, align 8
  %69 = getelementptr inbounds i8, ptr %68, i64 0
  %70 = load i8, ptr %69, align 1
  %71 = load i16, ptr %12, align 2
  %72 = call zeroext i8 @subAndClamp(i8 noundef zeroext %70, i16 noundef signext %71)
  %73 = load ptr, ptr %9, align 8
  %74 = getelementptr inbounds i8, ptr %73, i64 0
  store i8 %72, ptr %74, align 1
  %75 = load ptr, ptr %9, align 8
  %76 = getelementptr inbounds i8, ptr %75, i64 8
  %77 = load i8, ptr %76, align 1
  %78 = load i16, ptr %12, align 2
  %79 = call zeroext i8 @subAndClamp(i8 noundef zeroext %77, i16 noundef signext %78)
  %80 = load ptr, ptr %9, align 8
  %81 = getelementptr inbounds i8, ptr %80, i64 8
  store i8 %79, ptr %81, align 1
  %82 = load ptr, ptr %8, align 8
  %83 = getelementptr inbounds nuw i8, ptr %82, i32 1
  store ptr %83, ptr %8, align 8
  %84 = load ptr, ptr %9, align 8
  %85 = getelementptr inbounds nuw i8, ptr %84, i32 1
  store ptr %85, ptr %9, align 8
  br label %86

86:                                               ; preds = %34
  %87 = load i8, ptr %5, align 1
  %88 = add i8 %87, 1
  store i8 %88, ptr %5, align 1
  br label %30, !llvm.loop !22

89:                                               ; preds = %30
  %90 = load ptr, ptr %8, align 8
  %91 = getelementptr inbounds i8, ptr %90, i64 -8
  %92 = getelementptr inbounds i8, ptr %91, i64 16
  store ptr %92, ptr %8, align 8
  %93 = load ptr, ptr %9, align 8
  %94 = getelementptr inbounds i8, ptr %93, i64 -8
  %95 = getelementptr inbounds i8, ptr %94, i64 16
  store ptr %95, ptr %9, align 8
  br label %96

96:                                               ; preds = %89
  %97 = load i8, ptr %6, align 1
  %98 = add i8 %97, 1
  store i8 %98, ptr %6, align 1
  br label %25, !llvm.loop !23

99:                                               ; preds = %25
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @upsampleCbH(i8 noundef zeroext %0, i8 noundef zeroext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i8, align 1
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  store i8 %0, ptr %3, align 1
  store i8 %1, ptr %4, align 1
  %13 = load i8, ptr %3, align 1
  %14 = zext i8 %13 to i32
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i16, ptr @gCoeffBuf, i64 %15
  store ptr %16, ptr %7, align 8
  %17 = load i8, ptr %4, align 1
  %18 = zext i8 %17 to i32
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, ptr @gMCUBufG, i64 %19
  store ptr %20, ptr %8, align 8
  %21 = load i8, ptr %4, align 1
  %22 = zext i8 %21 to i32
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, ptr @gMCUBufB, i64 %23
  store ptr %24, ptr %9, align 8
  store i8 0, ptr %6, align 1
  br label %25

25:                                               ; preds = %93, %2
  %26 = load i8, ptr %6, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp slt i32 %27, 8
  br i1 %28, label %29, label %96

29:                                               ; preds = %25
  store i8 0, ptr %5, align 1
  br label %30

30:                                               ; preds = %86, %29
  %31 = load i8, ptr %5, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp slt i32 %32, 4
  br i1 %33, label %34, label %89

34:                                               ; preds = %30
  %35 = load ptr, ptr %7, align 8
  %36 = getelementptr inbounds nuw i16, ptr %35, i32 1
  store ptr %36, ptr %7, align 8
  %37 = load i16, ptr %35, align 2
  %38 = trunc i16 %37 to i8
  store i8 %38, ptr %10, align 1
  %39 = load i8, ptr %10, align 1
  %40 = zext i8 %39 to i32
  %41 = mul i32 %40, 88
  %42 = lshr i32 %41, 8
  %43 = sub i32 %42, 44
  %44 = trunc i32 %43 to i16
  store i16 %44, ptr %11, align 2
  %45 = load ptr, ptr %8, align 8
  %46 = getelementptr inbounds i8, ptr %45, i64 0
  %47 = load i8, ptr %46, align 1
  %48 = load i16, ptr %11, align 2
  %49 = call zeroext i8 @subAndClamp(i8 noundef zeroext %47, i16 noundef signext %48)
  %50 = load ptr, ptr %8, align 8
  %51 = getelementptr inbounds i8, ptr %50, i64 0
  store i8 %49, ptr %51, align 1
  %52 = load ptr, ptr %8, align 8
  %53 = getelementptr inbounds i8, ptr %52, i64 1
  %54 = load i8, ptr %53, align 1
  %55 = load i16, ptr %11, align 2
  %56 = call zeroext i8 @subAndClamp(i8 noundef zeroext %54, i16 noundef signext %55)
  %57 = load ptr, ptr %8, align 8
  %58 = getelementptr inbounds i8, ptr %57, i64 1
  store i8 %56, ptr %58, align 1
  %59 = load i8, ptr %10, align 1
  %60 = zext i8 %59 to i32
  %61 = load i8, ptr %10, align 1
  %62 = zext i8 %61 to i32
  %63 = mul i32 %62, 198
  %64 = lshr i32 %63, 8
  %65 = add i32 %60, %64
  %66 = sub i32 %65, 227
  %67 = trunc i32 %66 to i16
  store i16 %67, ptr %12, align 2
  %68 = load ptr, ptr %9, align 8
  %69 = getelementptr inbounds i8, ptr %68, i64 0
  %70 = load i8, ptr %69, align 1
  %71 = load i16, ptr %12, align 2
  %72 = call zeroext i8 @addAndClamp(i8 noundef zeroext %70, i16 noundef signext %71)
  %73 = load ptr, ptr %9, align 8
  %74 = getelementptr inbounds i8, ptr %73, i64 0
  store i8 %72, ptr %74, align 1
  %75 = load ptr, ptr %9, align 8
  %76 = getelementptr inbounds i8, ptr %75, i64 1
  %77 = load i8, ptr %76, align 1
  %78 = load i16, ptr %12, align 2
  %79 = call zeroext i8 @addAndClamp(i8 noundef zeroext %77, i16 noundef signext %78)
  %80 = load ptr, ptr %9, align 8
  %81 = getelementptr inbounds i8, ptr %80, i64 1
  store i8 %79, ptr %81, align 1
  %82 = load ptr, ptr %8, align 8
  %83 = getelementptr inbounds i8, ptr %82, i64 2
  store ptr %83, ptr %8, align 8
  %84 = load ptr, ptr %9, align 8
  %85 = getelementptr inbounds i8, ptr %84, i64 2
  store ptr %85, ptr %9, align 8
  br label %86

86:                                               ; preds = %34
  %87 = load i8, ptr %5, align 1
  %88 = add i8 %87, 1
  store i8 %88, ptr %5, align 1
  br label %30, !llvm.loop !24

89:                                               ; preds = %30
  %90 = load ptr, ptr %7, align 8
  %91 = getelementptr inbounds i16, ptr %90, i64 -4
  %92 = getelementptr inbounds i16, ptr %91, i64 8
  store ptr %92, ptr %7, align 8
  br label %93

93:                                               ; preds = %89
  %94 = load i8, ptr %6, align 1
  %95 = add i8 %94, 1
  store i8 %95, ptr %6, align 1
  br label %25, !llvm.loop !25

96:                                               ; preds = %25
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @upsampleCrH(i8 noundef zeroext %0, i8 noundef zeroext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i8, align 1
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  store i8 %0, ptr %3, align 1
  store i8 %1, ptr %4, align 1
  %13 = load i8, ptr %3, align 1
  %14 = zext i8 %13 to i32
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i16, ptr @gCoeffBuf, i64 %15
  store ptr %16, ptr %7, align 8
  %17 = load i8, ptr %4, align 1
  %18 = zext i8 %17 to i32
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, ptr @gMCUBufR, i64 %19
  store ptr %20, ptr %8, align 8
  %21 = load i8, ptr %4, align 1
  %22 = zext i8 %21 to i32
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, ptr @gMCUBufG, i64 %23
  store ptr %24, ptr %9, align 8
  store i8 0, ptr %6, align 1
  br label %25

25:                                               ; preds = %93, %2
  %26 = load i8, ptr %6, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp slt i32 %27, 8
  br i1 %28, label %29, label %96

29:                                               ; preds = %25
  store i8 0, ptr %5, align 1
  br label %30

30:                                               ; preds = %86, %29
  %31 = load i8, ptr %5, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp slt i32 %32, 4
  br i1 %33, label %34, label %89

34:                                               ; preds = %30
  %35 = load ptr, ptr %7, align 8
  %36 = getelementptr inbounds nuw i16, ptr %35, i32 1
  store ptr %36, ptr %7, align 8
  %37 = load i16, ptr %35, align 2
  %38 = trunc i16 %37 to i8
  store i8 %38, ptr %10, align 1
  %39 = load i8, ptr %10, align 1
  %40 = zext i8 %39 to i32
  %41 = load i8, ptr %10, align 1
  %42 = zext i8 %41 to i32
  %43 = mul i32 %42, 103
  %44 = lshr i32 %43, 8
  %45 = add i32 %40, %44
  %46 = sub i32 %45, 179
  %47 = trunc i32 %46 to i16
  store i16 %47, ptr %11, align 2
  %48 = load ptr, ptr %8, align 8
  %49 = getelementptr inbounds i8, ptr %48, i64 0
  %50 = load i8, ptr %49, align 1
  %51 = load i16, ptr %11, align 2
  %52 = call zeroext i8 @addAndClamp(i8 noundef zeroext %50, i16 noundef signext %51)
  %53 = load ptr, ptr %8, align 8
  %54 = getelementptr inbounds i8, ptr %53, i64 0
  store i8 %52, ptr %54, align 1
  %55 = load ptr, ptr %8, align 8
  %56 = getelementptr inbounds i8, ptr %55, i64 1
  %57 = load i8, ptr %56, align 1
  %58 = load i16, ptr %11, align 2
  %59 = call zeroext i8 @addAndClamp(i8 noundef zeroext %57, i16 noundef signext %58)
  %60 = load ptr, ptr %8, align 8
  %61 = getelementptr inbounds i8, ptr %60, i64 1
  store i8 %59, ptr %61, align 1
  %62 = load i8, ptr %10, align 1
  %63 = zext i8 %62 to i32
  %64 = mul i32 %63, 183
  %65 = lshr i32 %64, 8
  %66 = sub i32 %65, 91
  %67 = trunc i32 %66 to i16
  store i16 %67, ptr %12, align 2
  %68 = load ptr, ptr %9, align 8
  %69 = getelementptr inbounds i8, ptr %68, i64 0
  %70 = load i8, ptr %69, align 1
  %71 = load i16, ptr %12, align 2
  %72 = call zeroext i8 @subAndClamp(i8 noundef zeroext %70, i16 noundef signext %71)
  %73 = load ptr, ptr %9, align 8
  %74 = getelementptr inbounds i8, ptr %73, i64 0
  store i8 %72, ptr %74, align 1
  %75 = load ptr, ptr %9, align 8
  %76 = getelementptr inbounds i8, ptr %75, i64 1
  %77 = load i8, ptr %76, align 1
  %78 = load i16, ptr %12, align 2
  %79 = call zeroext i8 @subAndClamp(i8 noundef zeroext %77, i16 noundef signext %78)
  %80 = load ptr, ptr %9, align 8
  %81 = getelementptr inbounds i8, ptr %80, i64 1
  store i8 %79, ptr %81, align 1
  %82 = load ptr, ptr %8, align 8
  %83 = getelementptr inbounds i8, ptr %82, i64 2
  store ptr %83, ptr %8, align 8
  %84 = load ptr, ptr %9, align 8
  %85 = getelementptr inbounds i8, ptr %84, i64 2
  store ptr %85, ptr %9, align 8
  br label %86

86:                                               ; preds = %34
  %87 = load i8, ptr %5, align 1
  %88 = add i8 %87, 1
  store i8 %88, ptr %5, align 1
  br label %30, !llvm.loop !26

89:                                               ; preds = %30
  %90 = load ptr, ptr %7, align 8
  %91 = getelementptr inbounds i16, ptr %90, i64 -4
  %92 = getelementptr inbounds i16, ptr %91, i64 8
  store ptr %92, ptr %7, align 8
  br label %93

93:                                               ; preds = %89
  %94 = load i8, ptr %6, align 1
  %95 = add i8 %94, 1
  store i8 %95, ptr %6, align 1
  br label %25, !llvm.loop !27

96:                                               ; preds = %25
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @upsampleCb(i8 noundef zeroext %0, i8 noundef zeroext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i8, align 1
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  store i8 %0, ptr %3, align 1
  store i8 %1, ptr %4, align 1
  %13 = load i8, ptr %3, align 1
  %14 = zext i8 %13 to i32
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i16, ptr @gCoeffBuf, i64 %15
  store ptr %16, ptr %7, align 8
  %17 = load i8, ptr %4, align 1
  %18 = zext i8 %17 to i32
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, ptr @gMCUBufG, i64 %19
  store ptr %20, ptr %8, align 8
  %21 = load i8, ptr %4, align 1
  %22 = zext i8 %21 to i32
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, ptr @gMCUBufB, i64 %23
  store ptr %24, ptr %9, align 8
  store i8 0, ptr %6, align 1
  br label %25

25:                                               ; preds = %127, %2
  %26 = load i8, ptr %6, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp slt i32 %27, 4
  br i1 %28, label %29, label %130

29:                                               ; preds = %25
  store i8 0, ptr %5, align 1
  br label %30

30:                                               ; preds = %114, %29
  %31 = load i8, ptr %5, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp slt i32 %32, 4
  br i1 %33, label %34, label %117

34:                                               ; preds = %30
  %35 = load ptr, ptr %7, align 8
  %36 = getelementptr inbounds nuw i16, ptr %35, i32 1
  store ptr %36, ptr %7, align 8
  %37 = load i16, ptr %35, align 2
  %38 = trunc i16 %37 to i8
  store i8 %38, ptr %10, align 1
  %39 = load i8, ptr %10, align 1
  %40 = zext i8 %39 to i32
  %41 = mul i32 %40, 88
  %42 = lshr i32 %41, 8
  %43 = sub i32 %42, 44
  %44 = trunc i32 %43 to i16
  store i16 %44, ptr %11, align 2
  %45 = load ptr, ptr %8, align 8
  %46 = getelementptr inbounds i8, ptr %45, i64 0
  %47 = load i8, ptr %46, align 1
  %48 = load i16, ptr %11, align 2
  %49 = call zeroext i8 @subAndClamp(i8 noundef zeroext %47, i16 noundef signext %48)
  %50 = load ptr, ptr %8, align 8
  %51 = getelementptr inbounds i8, ptr %50, i64 0
  store i8 %49, ptr %51, align 1
  %52 = load ptr, ptr %8, align 8
  %53 = getelementptr inbounds i8, ptr %52, i64 1
  %54 = load i8, ptr %53, align 1
  %55 = load i16, ptr %11, align 2
  %56 = call zeroext i8 @subAndClamp(i8 noundef zeroext %54, i16 noundef signext %55)
  %57 = load ptr, ptr %8, align 8
  %58 = getelementptr inbounds i8, ptr %57, i64 1
  store i8 %56, ptr %58, align 1
  %59 = load ptr, ptr %8, align 8
  %60 = getelementptr inbounds i8, ptr %59, i64 8
  %61 = load i8, ptr %60, align 1
  %62 = load i16, ptr %11, align 2
  %63 = call zeroext i8 @subAndClamp(i8 noundef zeroext %61, i16 noundef signext %62)
  %64 = load ptr, ptr %8, align 8
  %65 = getelementptr inbounds i8, ptr %64, i64 8
  store i8 %63, ptr %65, align 1
  %66 = load ptr, ptr %8, align 8
  %67 = getelementptr inbounds i8, ptr %66, i64 9
  %68 = load i8, ptr %67, align 1
  %69 = load i16, ptr %11, align 2
  %70 = call zeroext i8 @subAndClamp(i8 noundef zeroext %68, i16 noundef signext %69)
  %71 = load ptr, ptr %8, align 8
  %72 = getelementptr inbounds i8, ptr %71, i64 9
  store i8 %70, ptr %72, align 1
  %73 = load i8, ptr %10, align 1
  %74 = zext i8 %73 to i32
  %75 = load i8, ptr %10, align 1
  %76 = zext i8 %75 to i32
  %77 = mul i32 %76, 198
  %78 = lshr i32 %77, 8
  %79 = add i32 %74, %78
  %80 = sub i32 %79, 227
  %81 = trunc i32 %80 to i16
  store i16 %81, ptr %12, align 2
  %82 = load ptr, ptr %9, align 8
  %83 = getelementptr inbounds i8, ptr %82, i64 0
  %84 = load i8, ptr %83, align 1
  %85 = load i16, ptr %12, align 2
  %86 = call zeroext i8 @addAndClamp(i8 noundef zeroext %84, i16 noundef signext %85)
  %87 = load ptr, ptr %9, align 8
  %88 = getelementptr inbounds i8, ptr %87, i64 0
  store i8 %86, ptr %88, align 1
  %89 = load ptr, ptr %9, align 8
  %90 = getelementptr inbounds i8, ptr %89, i64 1
  %91 = load i8, ptr %90, align 1
  %92 = load i16, ptr %12, align 2
  %93 = call zeroext i8 @addAndClamp(i8 noundef zeroext %91, i16 noundef signext %92)
  %94 = load ptr, ptr %9, align 8
  %95 = getelementptr inbounds i8, ptr %94, i64 1
  store i8 %93, ptr %95, align 1
  %96 = load ptr, ptr %9, align 8
  %97 = getelementptr inbounds i8, ptr %96, i64 8
  %98 = load i8, ptr %97, align 1
  %99 = load i16, ptr %12, align 2
  %100 = call zeroext i8 @addAndClamp(i8 noundef zeroext %98, i16 noundef signext %99)
  %101 = load ptr, ptr %9, align 8
  %102 = getelementptr inbounds i8, ptr %101, i64 8
  store i8 %100, ptr %102, align 1
  %103 = load ptr, ptr %9, align 8
  %104 = getelementptr inbounds i8, ptr %103, i64 9
  %105 = load i8, ptr %104, align 1
  %106 = load i16, ptr %12, align 2
  %107 = call zeroext i8 @addAndClamp(i8 noundef zeroext %105, i16 noundef signext %106)
  %108 = load ptr, ptr %9, align 8
  %109 = getelementptr inbounds i8, ptr %108, i64 9
  store i8 %107, ptr %109, align 1
  %110 = load ptr, ptr %8, align 8
  %111 = getelementptr inbounds i8, ptr %110, i64 2
  store ptr %111, ptr %8, align 8
  %112 = load ptr, ptr %9, align 8
  %113 = getelementptr inbounds i8, ptr %112, i64 2
  store ptr %113, ptr %9, align 8
  br label %114

114:                                              ; preds = %34
  %115 = load i8, ptr %5, align 1
  %116 = add i8 %115, 1
  store i8 %116, ptr %5, align 1
  br label %30, !llvm.loop !28

117:                                              ; preds = %30
  %118 = load ptr, ptr %7, align 8
  %119 = getelementptr inbounds i16, ptr %118, i64 -4
  %120 = getelementptr inbounds i16, ptr %119, i64 8
  store ptr %120, ptr %7, align 8
  %121 = load ptr, ptr %8, align 8
  %122 = getelementptr inbounds i8, ptr %121, i64 -8
  %123 = getelementptr inbounds i8, ptr %122, i64 16
  store ptr %123, ptr %8, align 8
  %124 = load ptr, ptr %9, align 8
  %125 = getelementptr inbounds i8, ptr %124, i64 -8
  %126 = getelementptr inbounds i8, ptr %125, i64 16
  store ptr %126, ptr %9, align 8
  br label %127

127:                                              ; preds = %117
  %128 = load i8, ptr %6, align 1
  %129 = add i8 %128, 1
  store i8 %129, ptr %6, align 1
  br label %25, !llvm.loop !29

130:                                              ; preds = %25
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @upsampleCr(i8 noundef zeroext %0, i8 noundef zeroext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i8, align 1
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  store i8 %0, ptr %3, align 1
  store i8 %1, ptr %4, align 1
  %13 = load i8, ptr %3, align 1
  %14 = zext i8 %13 to i32
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i16, ptr @gCoeffBuf, i64 %15
  store ptr %16, ptr %7, align 8
  %17 = load i8, ptr %4, align 1
  %18 = zext i8 %17 to i32
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, ptr @gMCUBufR, i64 %19
  store ptr %20, ptr %8, align 8
  %21 = load i8, ptr %4, align 1
  %22 = zext i8 %21 to i32
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, ptr @gMCUBufG, i64 %23
  store ptr %24, ptr %9, align 8
  store i8 0, ptr %6, align 1
  br label %25

25:                                               ; preds = %127, %2
  %26 = load i8, ptr %6, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp slt i32 %27, 4
  br i1 %28, label %29, label %130

29:                                               ; preds = %25
  store i8 0, ptr %5, align 1
  br label %30

30:                                               ; preds = %114, %29
  %31 = load i8, ptr %5, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp slt i32 %32, 4
  br i1 %33, label %34, label %117

34:                                               ; preds = %30
  %35 = load ptr, ptr %7, align 8
  %36 = getelementptr inbounds nuw i16, ptr %35, i32 1
  store ptr %36, ptr %7, align 8
  %37 = load i16, ptr %35, align 2
  %38 = trunc i16 %37 to i8
  store i8 %38, ptr %10, align 1
  %39 = load i8, ptr %10, align 1
  %40 = zext i8 %39 to i32
  %41 = load i8, ptr %10, align 1
  %42 = zext i8 %41 to i32
  %43 = mul i32 %42, 103
  %44 = lshr i32 %43, 8
  %45 = add i32 %40, %44
  %46 = sub i32 %45, 179
  %47 = trunc i32 %46 to i16
  store i16 %47, ptr %11, align 2
  %48 = load ptr, ptr %8, align 8
  %49 = getelementptr inbounds i8, ptr %48, i64 0
  %50 = load i8, ptr %49, align 1
  %51 = load i16, ptr %11, align 2
  %52 = call zeroext i8 @addAndClamp(i8 noundef zeroext %50, i16 noundef signext %51)
  %53 = load ptr, ptr %8, align 8
  %54 = getelementptr inbounds i8, ptr %53, i64 0
  store i8 %52, ptr %54, align 1
  %55 = load ptr, ptr %8, align 8
  %56 = getelementptr inbounds i8, ptr %55, i64 1
  %57 = load i8, ptr %56, align 1
  %58 = load i16, ptr %11, align 2
  %59 = call zeroext i8 @addAndClamp(i8 noundef zeroext %57, i16 noundef signext %58)
  %60 = load ptr, ptr %8, align 8
  %61 = getelementptr inbounds i8, ptr %60, i64 1
  store i8 %59, ptr %61, align 1
  %62 = load ptr, ptr %8, align 8
  %63 = getelementptr inbounds i8, ptr %62, i64 8
  %64 = load i8, ptr %63, align 1
  %65 = load i16, ptr %11, align 2
  %66 = call zeroext i8 @addAndClamp(i8 noundef zeroext %64, i16 noundef signext %65)
  %67 = load ptr, ptr %8, align 8
  %68 = getelementptr inbounds i8, ptr %67, i64 8
  store i8 %66, ptr %68, align 1
  %69 = load ptr, ptr %8, align 8
  %70 = getelementptr inbounds i8, ptr %69, i64 9
  %71 = load i8, ptr %70, align 1
  %72 = load i16, ptr %11, align 2
  %73 = call zeroext i8 @addAndClamp(i8 noundef zeroext %71, i16 noundef signext %72)
  %74 = load ptr, ptr %8, align 8
  %75 = getelementptr inbounds i8, ptr %74, i64 9
  store i8 %73, ptr %75, align 1
  %76 = load i8, ptr %10, align 1
  %77 = zext i8 %76 to i32
  %78 = mul i32 %77, 183
  %79 = lshr i32 %78, 8
  %80 = sub i32 %79, 91
  %81 = trunc i32 %80 to i16
  store i16 %81, ptr %12, align 2
  %82 = load ptr, ptr %9, align 8
  %83 = getelementptr inbounds i8, ptr %82, i64 0
  %84 = load i8, ptr %83, align 1
  %85 = load i16, ptr %12, align 2
  %86 = call zeroext i8 @subAndClamp(i8 noundef zeroext %84, i16 noundef signext %85)
  %87 = load ptr, ptr %9, align 8
  %88 = getelementptr inbounds i8, ptr %87, i64 0
  store i8 %86, ptr %88, align 1
  %89 = load ptr, ptr %9, align 8
  %90 = getelementptr inbounds i8, ptr %89, i64 1
  %91 = load i8, ptr %90, align 1
  %92 = load i16, ptr %12, align 2
  %93 = call zeroext i8 @subAndClamp(i8 noundef zeroext %91, i16 noundef signext %92)
  %94 = load ptr, ptr %9, align 8
  %95 = getelementptr inbounds i8, ptr %94, i64 1
  store i8 %93, ptr %95, align 1
  %96 = load ptr, ptr %9, align 8
  %97 = getelementptr inbounds i8, ptr %96, i64 8
  %98 = load i8, ptr %97, align 1
  %99 = load i16, ptr %12, align 2
  %100 = call zeroext i8 @subAndClamp(i8 noundef zeroext %98, i16 noundef signext %99)
  %101 = load ptr, ptr %9, align 8
  %102 = getelementptr inbounds i8, ptr %101, i64 8
  store i8 %100, ptr %102, align 1
  %103 = load ptr, ptr %9, align 8
  %104 = getelementptr inbounds i8, ptr %103, i64 9
  %105 = load i8, ptr %104, align 1
  %106 = load i16, ptr %12, align 2
  %107 = call zeroext i8 @subAndClamp(i8 noundef zeroext %105, i16 noundef signext %106)
  %108 = load ptr, ptr %9, align 8
  %109 = getelementptr inbounds i8, ptr %108, i64 9
  store i8 %107, ptr %109, align 1
  %110 = load ptr, ptr %8, align 8
  %111 = getelementptr inbounds i8, ptr %110, i64 2
  store ptr %111, ptr %8, align 8
  %112 = load ptr, ptr %9, align 8
  %113 = getelementptr inbounds i8, ptr %112, i64 2
  store ptr %113, ptr %9, align 8
  br label %114

114:                                              ; preds = %34
  %115 = load i8, ptr %5, align 1
  %116 = add i8 %115, 1
  store i8 %116, ptr %5, align 1
  br label %30, !llvm.loop !30

117:                                              ; preds = %30
  %118 = load ptr, ptr %7, align 8
  %119 = getelementptr inbounds i16, ptr %118, i64 -4
  %120 = getelementptr inbounds i16, ptr %119, i64 8
  store ptr %120, ptr %7, align 8
  %121 = load ptr, ptr %8, align 8
  %122 = getelementptr inbounds i8, ptr %121, i64 -8
  %123 = getelementptr inbounds i8, ptr %122, i64 16
  store ptr %123, ptr %8, align 8
  %124 = load ptr, ptr %9, align 8
  %125 = getelementptr inbounds i8, ptr %124, i64 -8
  %126 = getelementptr inbounds i8, ptr %125, i64 16
  store ptr %126, ptr %9, align 8
  br label %127

127:                                              ; preds = %117
  %128 = load i8, ptr %6, align 1
  %129 = add i8 %128, 1
  store i8 %129, ptr %6, align 1
  br label %25, !llvm.loop !31

130:                                              ; preds = %25
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal signext i16 @imul_b5(i16 noundef signext %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i64, align 8
  store i16 %0, ptr %2, align 2
  %4 = load i16, ptr %2, align 2
  %5 = sext i16 %4 to i64
  %6 = mul nsw i64 %5, 196
  store i64 %6, ptr %3, align 8
  %7 = load i64, ptr %3, align 8
  %8 = add nsw i64 %7, 128
  store i64 %8, ptr %3, align 8
  %9 = load i64, ptr %3, align 8
  %10 = ashr i64 %9, 8
  %11 = trunc i64 %10 to i16
  ret i16 %11
}

; Function Attrs: noinline nounwind uwtable
define internal signext i16 @imul_b4(i16 noundef signext %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i64, align 8
  store i16 %0, ptr %2, align 2
  %4 = load i16, ptr %2, align 2
  %5 = sext i16 %4 to i64
  %6 = mul nsw i64 %5, 277
  store i64 %6, ptr %3, align 8
  %7 = load i64, ptr %3, align 8
  %8 = add nsw i64 %7, 128
  store i64 %8, ptr %3, align 8
  %9 = load i64, ptr %3, align 8
  %10 = ashr i64 %9, 8
  %11 = trunc i64 %10 to i16
  ret i16 %11
}

; Function Attrs: noinline nounwind uwtable
define internal signext i16 @imul_b2(i16 noundef signext %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i64, align 8
  store i16 %0, ptr %2, align 2
  %4 = load i16, ptr %2, align 2
  %5 = sext i16 %4 to i64
  %6 = mul nsw i64 %5, 669
  store i64 %6, ptr %3, align 8
  %7 = load i64, ptr %3, align 8
  %8 = add nsw i64 %7, 128
  store i64 %8, ptr %3, align 8
  %9 = load i64, ptr %3, align 8
  %10 = ashr i64 %9, 8
  %11 = trunc i64 %10 to i16
  ret i16 %11
}

; Function Attrs: noinline nounwind uwtable
define internal signext i16 @imul_b1_b3(i16 noundef signext %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i64, align 8
  store i16 %0, ptr %2, align 2
  %4 = load i16, ptr %2, align 2
  %5 = sext i16 %4 to i64
  %6 = mul nsw i64 %5, 362
  store i64 %6, ptr %3, align 8
  %7 = load i64, ptr %3, align 8
  %8 = add nsw i64 %7, 128
  store i64 %8, ptr %3, align 8
  %9 = load i64, ptr %3, align 8
  %10 = ashr i64 %9, 8
  %11 = trunc i64 %10 to i16
  ret i16 %11
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i16 @getBits1(i8 noundef zeroext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  %3 = load i8, ptr %2, align 1
  %4 = call zeroext i16 @getBits(i8 noundef zeroext %3, i8 noundef zeroext 0)
  ret i16 %4
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @locateSOIMarker() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i16, align 2
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  %6 = trunc i16 %5 to i8
  store i8 %6, ptr %3, align 1
  %7 = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  %8 = trunc i16 %7 to i8
  store i8 %8, ptr %4, align 1
  %9 = load i8, ptr %3, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp eq i32 %10, 255
  br i1 %11, label %12, label %17

12:                                               ; preds = %0
  %13 = load i8, ptr %4, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp eq i32 %14, 216
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i8 0, ptr %1, align 1
  br label %55

17:                                               ; preds = %12, %0
  store i16 4096, ptr %2, align 2
  br label %18

18:                                               ; preds = %43, %17
  %19 = load i16, ptr %2, align 2
  %20 = add i16 %19, -1
  store i16 %20, ptr %2, align 2
  %21 = zext i16 %20 to i32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i8 19, ptr %1, align 1
  br label %55

24:                                               ; preds = %18
  %25 = load i8, ptr %4, align 1
  store i8 %25, ptr %3, align 1
  %26 = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  %27 = trunc i16 %26 to i8
  store i8 %27, ptr %4, align 1
  %28 = load i8, ptr %3, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp eq i32 %29, 255
  br i1 %30, label %31, label %43

31:                                               ; preds = %24
  %32 = load i8, ptr %4, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp eq i32 %33, 216
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %44

36:                                               ; preds = %31
  %37 = load i8, ptr %4, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp eq i32 %38, 217
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i8 19, ptr %1, align 1
  br label %55

41:                                               ; preds = %36
  br label %42

42:                                               ; preds = %41
  br label %43

43:                                               ; preds = %42, %24
  br label %18

44:                                               ; preds = %35
  %45 = load i16, ptr @gBitBuf, align 2
  %46 = zext i16 %45 to i32
  %47 = ashr i32 %46, 8
  %48 = and i32 %47, 255
  %49 = trunc i32 %48 to i8
  store i8 %49, ptr %4, align 1
  %50 = load i8, ptr %4, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp ne i32 %51, 255
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  store i8 19, ptr %1, align 1
  br label %55

54:                                               ; preds = %44
  store i8 0, ptr %1, align 1
  br label %55

55:                                               ; preds = %54, %53, %40, %23, %16
  %56 = load i8, ptr %1, align 1
  ret i8 %56
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @processMarkers(ptr noundef %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  store ptr %0, ptr %3, align 8
  br label %5

5:                                                ; preds = %22, %1
  %6 = call zeroext i8 @nextMarker()
  store i8 %6, ptr %4, align 1
  %7 = load i8, ptr %4, align 1
  %8 = zext i8 %7 to i32
  switch i32 %8, label %20 [
    i32 192, label %9
    i32 193, label %9
    i32 194, label %9
    i32 195, label %9
    i32 197, label %9
    i32 198, label %9
    i32 199, label %9
    i32 201, label %9
    i32 202, label %9
    i32 203, label %9
    i32 205, label %9
    i32 206, label %9
    i32 207, label %9
    i32 216, label %9
    i32 217, label %9
    i32 218, label %9
    i32 196, label %12
    i32 204, label %14
    i32 219, label %15
    i32 221, label %17
    i32 200, label %19
    i32 208, label %19
    i32 209, label %19
    i32 210, label %19
    i32 211, label %19
    i32 212, label %19
    i32 213, label %19
    i32 214, label %19
    i32 215, label %19
    i32 1, label %19
  ]

9:                                                ; preds = %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5
  %10 = load i8, ptr %4, align 1
  %11 = load ptr, ptr %3, align 8
  store i8 %10, ptr %11, align 1
  store i8 0, ptr %2, align 1
  br label %23

12:                                               ; preds = %5
  %13 = call zeroext i8 @readDHTMarker()
  br label %22

14:                                               ; preds = %5
  store i8 17, ptr %2, align 1
  br label %23

15:                                               ; preds = %5
  %16 = call zeroext i8 @readDQTMarker()
  br label %22

17:                                               ; preds = %5
  %18 = call zeroext i8 @readDRIMarker()
  br label %22

19:                                               ; preds = %5, %5, %5, %5, %5, %5, %5, %5, %5, %5
  store i8 18, ptr %2, align 1
  br label %23

20:                                               ; preds = %5
  %21 = call zeroext i8 @skipVariableMarker()
  br label %22

22:                                               ; preds = %20, %17, %15, %12
  br label %5

23:                                               ; preds = %19, %14, %9
  %24 = load i8, ptr %2, align 1
  ret i8 %24
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @readSOFMarker() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  %3 = alloca i16, align 2
  %4 = call zeroext i16 @getBits1(i8 noundef zeroext 16)
  store i16 %4, ptr %3, align 2
  %5 = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  %6 = zext i16 %5 to i32
  %7 = icmp ne i32 %6, 8
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  store i8 7, ptr %1, align 1
  br label %88

9:                                                ; preds = %0
  %10 = call zeroext i16 @getBits1(i8 noundef zeroext 16)
  store i16 %10, ptr @gImageYSize, align 2
  %11 = load i16, ptr @gImageYSize, align 2
  %12 = icmp ne i16 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load i16, ptr @gImageYSize, align 2
  %15 = zext i16 %14 to i32
  %16 = icmp sgt i32 %15, 16384
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %9
  store i8 8, ptr %1, align 1
  br label %88

18:                                               ; preds = %13
  %19 = call zeroext i16 @getBits1(i8 noundef zeroext 16)
  store i16 %19, ptr @gImageXSize, align 2
  %20 = load i16, ptr @gImageXSize, align 2
  %21 = icmp ne i16 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i16, ptr @gImageXSize, align 2
  %24 = zext i16 %23 to i32
  %25 = icmp sgt i32 %24, 16384
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %18
  store i8 9, ptr %1, align 1
  br label %88

27:                                               ; preds = %22
  %28 = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  %29 = trunc i16 %28 to i8
  store i8 %29, ptr @gCompsInFrame, align 1
  %30 = load i8, ptr @gCompsInFrame, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp sgt i32 %31, 3
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i8 10, ptr %1, align 1
  br label %88

34:                                               ; preds = %27
  %35 = load i16, ptr %3, align 2
  %36 = zext i16 %35 to i32
  %37 = load i8, ptr @gCompsInFrame, align 1
  %38 = zext i8 %37 to i32
  %39 = load i8, ptr @gCompsInFrame, align 1
  %40 = zext i8 %39 to i32
  %41 = add nsw i32 %38, %40
  %42 = load i8, ptr @gCompsInFrame, align 1
  %43 = zext i8 %42 to i32
  %44 = add nsw i32 %41, %43
  %45 = add nsw i32 %44, 8
  %46 = icmp ne i32 %36, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %34
  store i8 11, ptr %1, align 1
  br label %88

48:                                               ; preds = %34
  store i8 0, ptr %2, align 1
  br label %49

49:                                               ; preds = %84, %48
  %50 = load i8, ptr %2, align 1
  %51 = zext i8 %50 to i32
  %52 = load i8, ptr @gCompsInFrame, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %87

55:                                               ; preds = %49
  %56 = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  %57 = trunc i16 %56 to i8
  %58 = load i8, ptr %2, align 1
  %59 = zext i8 %58 to i64
  %60 = getelementptr inbounds nuw [3 x i8], ptr @gCompIdent, i64 0, i64 %59
  store i8 %57, ptr %60, align 1
  %61 = call zeroext i16 @getBits1(i8 noundef zeroext 4)
  %62 = trunc i16 %61 to i8
  %63 = load i8, ptr %2, align 1
  %64 = zext i8 %63 to i64
  %65 = getelementptr inbounds nuw [3 x i8], ptr @gCompHSamp, i64 0, i64 %64
  store i8 %62, ptr %65, align 1
  %66 = call zeroext i16 @getBits1(i8 noundef zeroext 4)
  %67 = trunc i16 %66 to i8
  %68 = load i8, ptr %2, align 1
  %69 = zext i8 %68 to i64
  %70 = getelementptr inbounds nuw [3 x i8], ptr @gCompVSamp, i64 0, i64 %69
  store i8 %67, ptr %70, align 1
  %71 = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  %72 = trunc i16 %71 to i8
  %73 = load i8, ptr %2, align 1
  %74 = zext i8 %73 to i64
  %75 = getelementptr inbounds nuw [3 x i8], ptr @gCompQuant, i64 0, i64 %74
  store i8 %72, ptr %75, align 1
  %76 = load i8, ptr %2, align 1
  %77 = zext i8 %76 to i64
  %78 = getelementptr inbounds nuw [3 x i8], ptr @gCompQuant, i64 0, i64 %77
  %79 = load i8, ptr %78, align 1
  %80 = zext i8 %79 to i32
  %81 = icmp sgt i32 %80, 1
  br i1 %81, label %82, label %83

82:                                               ; preds = %55
  store i8 36, ptr %1, align 1
  br label %88

83:                                               ; preds = %55
  br label %84

84:                                               ; preds = %83
  %85 = load i8, ptr %2, align 1
  %86 = add i8 %85, 1
  store i8 %86, ptr %2, align 1
  br label %49, !llvm.loop !32

87:                                               ; preds = %49
  store i8 0, ptr %1, align 1
  br label %88

88:                                               ; preds = %87, %82, %47, %33, %26, %17, %8
  %89 = load i8, ptr %1, align 1
  ret i8 %89
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @nextMarker() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  store i8 0, ptr %2, align 1
  br label %3

3:                                                ; preds = %22, %0
  br label %4

4:                                                ; preds = %9, %3
  %5 = load i8, ptr %2, align 1
  %6 = add i8 %5, 1
  store i8 %6, ptr %2, align 1
  %7 = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  %8 = trunc i16 %7 to i8
  store i8 %8, ptr %1, align 1
  br label %9

9:                                                ; preds = %4
  %10 = load i8, ptr %1, align 1
  %11 = zext i8 %10 to i32
  %12 = icmp ne i32 %11, 255
  br i1 %12, label %4, label %13, !llvm.loop !33

13:                                               ; preds = %9
  br label %14

14:                                               ; preds = %17, %13
  %15 = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  %16 = trunc i16 %15 to i8
  store i8 %16, ptr %1, align 1
  br label %17

17:                                               ; preds = %14
  %18 = load i8, ptr %1, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp eq i32 %19, 255
  br i1 %20, label %14, label %21, !llvm.loop !34

21:                                               ; preds = %17
  br label %22

22:                                               ; preds = %21
  %23 = load i8, ptr %1, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %3, label %26, !llvm.loop !35

26:                                               ; preds = %22
  %27 = load i8, ptr %1, align 1
  ret i8 %27
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @readDHTMarker() #0 {
  %1 = alloca i8, align 1
  %2 = alloca [16 x i8], align 16
  %3 = alloca i16, align 2
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i8, align 1
  %12 = call zeroext i16 @getBits1(i8 noundef zeroext 16)
  store i16 %12, ptr %3, align 2
  %13 = load i16, ptr %3, align 2
  %14 = zext i16 %13 to i32
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %17

16:                                               ; preds = %0
  store i8 4, ptr %1, align 1
  br label %125

17:                                               ; preds = %0
  %18 = load i16, ptr %3, align 2
  %19 = zext i16 %18 to i32
  %20 = sub nsw i32 %19, 2
  %21 = trunc i32 %20 to i16
  store i16 %21, ptr %3, align 2
  br label %22

22:                                               ; preds = %115, %17
  %23 = load i16, ptr %3, align 2
  %24 = icmp ne i16 %23, 0
  br i1 %24, label %25, label %124

25:                                               ; preds = %22
  %26 = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  %27 = trunc i16 %26 to i8
  store i8 %27, ptr %6, align 1
  %28 = load i8, ptr %6, align 1
  %29 = zext i8 %28 to i32
  %30 = and i32 %29, 15
  %31 = icmp sgt i32 %30, 1
  br i1 %31, label %37, label %32

32:                                               ; preds = %25
  %33 = load i8, ptr %6, align 1
  %34 = zext i8 %33 to i32
  %35 = and i32 %34, 240
  %36 = icmp sgt i32 %35, 16
  br i1 %36, label %37, label %38

37:                                               ; preds = %32, %25
  store i8 3, ptr %1, align 1
  br label %125

38:                                               ; preds = %32
  %39 = load i8, ptr %6, align 1
  %40 = zext i8 %39 to i32
  %41 = ashr i32 %40, 3
  %42 = and i32 %41, 2
  %43 = load i8, ptr %6, align 1
  %44 = zext i8 %43 to i32
  %45 = and i32 %44, 1
  %46 = add nsw i32 %42, %45
  %47 = trunc i32 %46 to i8
  store i8 %47, ptr %5, align 1
  %48 = load i8, ptr %5, align 1
  %49 = call ptr @getHuffTable(i8 noundef zeroext %48)
  store ptr %49, ptr %8, align 8
  %50 = load i8, ptr %5, align 1
  %51 = call ptr @getHuffVal(i8 noundef zeroext %50)
  store ptr %51, ptr %7, align 8
  %52 = load i8, ptr %5, align 1
  %53 = zext i8 %52 to i32
  %54 = shl i32 1, %53
  %55 = load i8, ptr @gValidHuffTables, align 1
  %56 = zext i8 %55 to i32
  %57 = or i32 %56, %54
  %58 = trunc i32 %57 to i8
  store i8 %58, ptr @gValidHuffTables, align 1
  store i16 0, ptr %9, align 2
  store i8 0, ptr %4, align 1
  br label %59

59:                                               ; preds = %76, %38
  %60 = load i8, ptr %4, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp sle i32 %61, 15
  br i1 %62, label %63, label %79

63:                                               ; preds = %59
  %64 = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  %65 = trunc i16 %64 to i8
  store i8 %65, ptr %11, align 1
  %66 = load i8, ptr %11, align 1
  %67 = load i8, ptr %4, align 1
  %68 = zext i8 %67 to i64
  %69 = getelementptr inbounds nuw [16 x i8], ptr %2, i64 0, i64 %68
  store i8 %66, ptr %69, align 1
  %70 = load i16, ptr %9, align 2
  %71 = zext i16 %70 to i32
  %72 = load i8, ptr %11, align 1
  %73 = zext i8 %72 to i32
  %74 = add nsw i32 %71, %73
  %75 = trunc i32 %74 to i16
  store i16 %75, ptr %9, align 2
  br label %76

76:                                               ; preds = %63
  %77 = load i8, ptr %4, align 1
  %78 = add i8 %77, 1
  store i8 %78, ptr %4, align 1
  br label %59, !llvm.loop !36

79:                                               ; preds = %59
  %80 = load i16, ptr %9, align 2
  %81 = zext i16 %80 to i32
  %82 = load i8, ptr %5, align 1
  %83 = call zeroext i16 @getMaxHuffCodes(i8 noundef zeroext %82)
  %84 = zext i16 %83 to i32
  %85 = icmp sgt i32 %81, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  store i8 2, ptr %1, align 1
  br label %125

87:                                               ; preds = %79
  store i8 0, ptr %4, align 1
  br label %88

88:                                               ; preds = %101, %87
  %89 = load i8, ptr %4, align 1
  %90 = zext i8 %89 to i32
  %91 = load i16, ptr %9, align 2
  %92 = zext i16 %91 to i32
  %93 = icmp slt i32 %90, %92
  br i1 %93, label %94, label %104

94:                                               ; preds = %88
  %95 = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  %96 = trunc i16 %95 to i8
  %97 = load ptr, ptr %7, align 8
  %98 = load i8, ptr %4, align 1
  %99 = zext i8 %98 to i64
  %100 = getelementptr inbounds nuw i8, ptr %97, i64 %99
  store i8 %96, ptr %100, align 1
  br label %101

101:                                              ; preds = %94
  %102 = load i8, ptr %4, align 1
  %103 = add i8 %102, 1
  store i8 %103, ptr %4, align 1
  br label %88, !llvm.loop !37

104:                                              ; preds = %88
  %105 = load i16, ptr %9, align 2
  %106 = zext i16 %105 to i32
  %107 = add nsw i32 17, %106
  %108 = trunc i32 %107 to i16
  store i16 %108, ptr %10, align 2
  %109 = load i16, ptr %3, align 2
  %110 = zext i16 %109 to i32
  %111 = load i16, ptr %10, align 2
  %112 = zext i16 %111 to i32
  %113 = icmp slt i32 %110, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %104
  store i8 4, ptr %1, align 1
  br label %125

115:                                              ; preds = %104
  %116 = load i16, ptr %3, align 2
  %117 = zext i16 %116 to i32
  %118 = load i16, ptr %10, align 2
  %119 = zext i16 %118 to i32
  %120 = sub nsw i32 %117, %119
  %121 = trunc i32 %120 to i16
  store i16 %121, ptr %3, align 2
  %122 = getelementptr inbounds [16 x i8], ptr %2, i64 0, i64 0
  %123 = load ptr, ptr %8, align 8
  call void @huffCreate(ptr noundef %122, ptr noundef %123)
  br label %22, !llvm.loop !38

124:                                              ; preds = %22
  store i8 0, ptr %1, align 1
  br label %125

125:                                              ; preds = %124, %114, %86, %37, %16
  %126 = load i8, ptr %1, align 1
  ret i8 %126
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @readDQTMarker() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i16, align 2
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = call zeroext i16 @getBits1(i8 noundef zeroext 16)
  store i16 %8, ptr %2, align 2
  %9 = load i16, ptr %2, align 2
  %10 = zext i16 %9 to i32
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  store i8 5, ptr %1, align 1
  br label %107

13:                                               ; preds = %0
  %14 = load i16, ptr %2, align 2
  %15 = zext i16 %14 to i32
  %16 = sub nsw i32 %15, 2
  %17 = trunc i32 %16 to i16
  store i16 %17, ptr %2, align 2
  br label %18

18:                                               ; preds = %99, %13
  %19 = load i16, ptr %2, align 2
  %20 = icmp ne i16 %19, 0
  br i1 %20, label %21, label %106

21:                                               ; preds = %18
  %22 = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  %23 = trunc i16 %22 to i8
  store i8 %23, ptr %4, align 1
  %24 = load i8, ptr %4, align 1
  %25 = zext i8 %24 to i32
  %26 = ashr i32 %25, 4
  %27 = trunc i32 %26 to i8
  store i8 %27, ptr %5, align 1
  %28 = load i8, ptr %4, align 1
  %29 = zext i8 %28 to i32
  %30 = and i32 %29, 15
  %31 = trunc i32 %30 to i8
  store i8 %31, ptr %4, align 1
  %32 = load i8, ptr %4, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp sgt i32 %33, 1
  br i1 %34, label %35, label %36

35:                                               ; preds = %21
  store i8 6, ptr %1, align 1
  br label %107

36:                                               ; preds = %21
  %37 = load i8, ptr %4, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 2, i32 1
  %42 = load i8, ptr @gValidQuantTables, align 1
  %43 = zext i8 %42 to i32
  %44 = or i32 %43, %41
  %45 = trunc i32 %44 to i8
  store i8 %45, ptr @gValidQuantTables, align 1
  store i8 0, ptr %3, align 1
  br label %46

46:                                               ; preds = %76, %36
  %47 = load i8, ptr %3, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp slt i32 %48, 64
  br i1 %49, label %50, label %79

50:                                               ; preds = %46
  %51 = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  store i16 %51, ptr %7, align 2
  %52 = load i8, ptr %5, align 1
  %53 = icmp ne i8 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load i16, ptr %7, align 2
  %56 = zext i16 %55 to i32
  %57 = shl i32 %56, 8
  %58 = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  %59 = zext i16 %58 to i32
  %60 = add nsw i32 %57, %59
  %61 = trunc i32 %60 to i16
  store i16 %61, ptr %7, align 2
  br label %62

62:                                               ; preds = %54, %50
  %63 = load i8, ptr %4, align 1
  %64 = icmp ne i8 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load i16, ptr %7, align 2
  %67 = load i8, ptr %3, align 1
  %68 = zext i8 %67 to i64
  %69 = getelementptr inbounds nuw [64 x i16], ptr @gQuant1, i64 0, i64 %68
  store i16 %66, ptr %69, align 2
  br label %75

70:                                               ; preds = %62
  %71 = load i16, ptr %7, align 2
  %72 = load i8, ptr %3, align 1
  %73 = zext i8 %72 to i64
  %74 = getelementptr inbounds nuw [64 x i16], ptr @gQuant0, i64 0, i64 %73
  store i16 %71, ptr %74, align 2
  br label %75

75:                                               ; preds = %70, %65
  br label %76

76:                                               ; preds = %75
  %77 = load i8, ptr %3, align 1
  %78 = add i8 %77, 1
  store i8 %78, ptr %3, align 1
  br label %46, !llvm.loop !39

79:                                               ; preds = %46
  %80 = load i8, ptr %4, align 1
  %81 = zext i8 %80 to i32
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, ptr @gQuant1, ptr @gQuant0
  call void @createWinogradQuant(ptr noundef %84)
  store i16 65, ptr %6, align 2
  %85 = load i8, ptr %5, align 1
  %86 = icmp ne i8 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %79
  %88 = load i16, ptr %6, align 2
  %89 = zext i16 %88 to i32
  %90 = add nsw i32 %89, 64
  %91 = trunc i32 %90 to i16
  store i16 %91, ptr %6, align 2
  br label %92

92:                                               ; preds = %87, %79
  %93 = load i16, ptr %2, align 2
  %94 = zext i16 %93 to i32
  %95 = load i16, ptr %6, align 2
  %96 = zext i16 %95 to i32
  %97 = icmp slt i32 %94, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  store i8 21, ptr %1, align 1
  br label %107

99:                                               ; preds = %92
  %100 = load i16, ptr %2, align 2
  %101 = zext i16 %100 to i32
  %102 = load i16, ptr %6, align 2
  %103 = zext i16 %102 to i32
  %104 = sub nsw i32 %101, %103
  %105 = trunc i32 %104 to i16
  store i16 %105, ptr %2, align 2
  br label %18, !llvm.loop !40

106:                                              ; preds = %18
  store i8 0, ptr %1, align 1
  br label %107

107:                                              ; preds = %106, %98, %35, %12
  %108 = load i8, ptr %1, align 1
  ret i8 %108
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @readDRIMarker() #0 {
  %1 = alloca i8, align 1
  %2 = call zeroext i16 @getBits1(i8 noundef zeroext 16)
  %3 = zext i16 %2 to i32
  %4 = icmp ne i32 %3, 4
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i8 13, ptr %1, align 1
  br label %8

6:                                                ; preds = %0
  %7 = call zeroext i16 @getBits1(i8 noundef zeroext 16)
  store i16 %7, ptr @gRestartInterval, align 2
  store i8 0, ptr %1, align 1
  br label %8

8:                                                ; preds = %6, %5
  %9 = load i8, ptr %1, align 1
  ret i8 %9
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @skipVariableMarker() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i16, align 2
  %3 = call zeroext i16 @getBits1(i8 noundef zeroext 16)
  store i16 %3, ptr %2, align 2
  %4 = load i16, ptr %2, align 2
  %5 = zext i16 %4 to i32
  %6 = icmp slt i32 %5, 2
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store i8 12, ptr %1, align 1
  br label %21

8:                                                ; preds = %0
  %9 = load i16, ptr %2, align 2
  %10 = zext i16 %9 to i32
  %11 = sub nsw i32 %10, 2
  %12 = trunc i32 %11 to i16
  store i16 %12, ptr %2, align 2
  br label %13

13:                                               ; preds = %16, %8
  %14 = load i16, ptr %2, align 2
  %15 = icmp ne i16 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  %18 = load i16, ptr %2, align 2
  %19 = add i16 %18, -1
  store i16 %19, ptr %2, align 2
  br label %13, !llvm.loop !41

20:                                               ; preds = %13
  store i8 0, ptr %1, align 1
  br label %21

21:                                               ; preds = %20, %7
  %22 = load i8, ptr %1, align 1
  ret i8 %22
}

; Function Attrs: noinline nounwind uwtable
define internal ptr @getHuffTable(i8 noundef zeroext %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i8, align 1
  store i8 %0, ptr %3, align 1
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  switch i32 %5, label %10 [
    i32 0, label %6
    i32 1, label %7
    i32 2, label %8
    i32 3, label %9
  ]

6:                                                ; preds = %1
  store ptr @gHuffTab0, ptr %2, align 8
  br label %11

7:                                                ; preds = %1
  store ptr @gHuffTab1, ptr %2, align 8
  br label %11

8:                                                ; preds = %1
  store ptr @gHuffTab2, ptr %2, align 8
  br label %11

9:                                                ; preds = %1
  store ptr @gHuffTab3, ptr %2, align 8
  br label %11

10:                                               ; preds = %1
  store ptr null, ptr %2, align 8
  br label %11

11:                                               ; preds = %10, %9, %8, %7, %6
  %12 = load ptr, ptr %2, align 8
  ret ptr %12
}

; Function Attrs: noinline nounwind uwtable
define internal ptr @getHuffVal(i8 noundef zeroext %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i8, align 1
  store i8 %0, ptr %3, align 1
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  switch i32 %5, label %10 [
    i32 0, label %6
    i32 1, label %7
    i32 2, label %8
    i32 3, label %9
  ]

6:                                                ; preds = %1
  store ptr @gHuffVal0, ptr %2, align 8
  br label %11

7:                                                ; preds = %1
  store ptr @gHuffVal1, ptr %2, align 8
  br label %11

8:                                                ; preds = %1
  store ptr @gHuffVal2, ptr %2, align 8
  br label %11

9:                                                ; preds = %1
  store ptr @gHuffVal3, ptr %2, align 8
  br label %11

10:                                               ; preds = %1
  store ptr null, ptr %2, align 8
  br label %11

11:                                               ; preds = %10, %9, %8, %7, %6
  %12 = load ptr, ptr %2, align 8
  ret ptr %12
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i16 @getMaxHuffCodes(i8 noundef zeroext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  %3 = load i8, ptr %2, align 1
  %4 = zext i8 %3 to i32
  %5 = icmp slt i32 %4, 2
  %6 = zext i1 %5 to i64
  %7 = select i1 %5, i32 12, i32 255
  %8 = trunc i32 %7 to i16
  ret i16 %8
}

; Function Attrs: noinline nounwind uwtable
define internal void @huffCreate(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i16, align 2
  %8 = alloca i8, align 1
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  store i8 0, ptr %5, align 1
  store i8 0, ptr %6, align 1
  store i16 0, ptr %7, align 2
  br label %9

9:                                                ; preds = %81, %2
  %10 = load ptr, ptr %3, align 8
  %11 = load i8, ptr %5, align 1
  %12 = zext i8 %11 to i64
  %13 = getelementptr inbounds nuw i8, ptr %10, i64 %12
  %14 = load i8, ptr %13, align 1
  store i8 %14, ptr %8, align 1
  %15 = load i8, ptr %8, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %33, label %17

17:                                               ; preds = %9
  %18 = load ptr, ptr %4, align 8
  %19 = getelementptr inbounds nuw %struct.HuffTableT, ptr %18, i32 0, i32 0
  %20 = load i8, ptr %5, align 1
  %21 = zext i8 %20 to i64
  %22 = getelementptr inbounds nuw [16 x i16], ptr %19, i64 0, i64 %21
  store i16 0, ptr %22, align 2
  %23 = load ptr, ptr %4, align 8
  %24 = getelementptr inbounds nuw %struct.HuffTableT, ptr %23, i32 0, i32 1
  %25 = load i8, ptr %5, align 1
  %26 = zext i8 %25 to i64
  %27 = getelementptr inbounds nuw [16 x i16], ptr %24, i64 0, i64 %26
  store i16 -1, ptr %27, align 2
  %28 = load ptr, ptr %4, align 8
  %29 = getelementptr inbounds nuw %struct.HuffTableT, ptr %28, i32 0, i32 2
  %30 = load i8, ptr %5, align 1
  %31 = zext i8 %30 to i64
  %32 = getelementptr inbounds nuw [16 x i8], ptr %29, i64 0, i64 %31
  store i8 0, ptr %32, align 1
  br label %70

33:                                               ; preds = %9
  %34 = load i16, ptr %7, align 2
  %35 = load ptr, ptr %4, align 8
  %36 = getelementptr inbounds nuw %struct.HuffTableT, ptr %35, i32 0, i32 0
  %37 = load i8, ptr %5, align 1
  %38 = zext i8 %37 to i64
  %39 = getelementptr inbounds nuw [16 x i16], ptr %36, i64 0, i64 %38
  store i16 %34, ptr %39, align 2
  %40 = load i16, ptr %7, align 2
  %41 = zext i16 %40 to i32
  %42 = load i8, ptr %8, align 1
  %43 = zext i8 %42 to i32
  %44 = add nsw i32 %41, %43
  %45 = sub nsw i32 %44, 1
  %46 = trunc i32 %45 to i16
  %47 = load ptr, ptr %4, align 8
  %48 = getelementptr inbounds nuw %struct.HuffTableT, ptr %47, i32 0, i32 1
  %49 = load i8, ptr %5, align 1
  %50 = zext i8 %49 to i64
  %51 = getelementptr inbounds nuw [16 x i16], ptr %48, i64 0, i64 %50
  store i16 %46, ptr %51, align 2
  %52 = load i8, ptr %6, align 1
  %53 = load ptr, ptr %4, align 8
  %54 = getelementptr inbounds nuw %struct.HuffTableT, ptr %53, i32 0, i32 2
  %55 = load i8, ptr %5, align 1
  %56 = zext i8 %55 to i64
  %57 = getelementptr inbounds nuw [16 x i8], ptr %54, i64 0, i64 %56
  store i8 %52, ptr %57, align 1
  %58 = load i8, ptr %6, align 1
  %59 = zext i8 %58 to i32
  %60 = load i8, ptr %8, align 1
  %61 = zext i8 %60 to i32
  %62 = add nsw i32 %59, %61
  %63 = trunc i32 %62 to i8
  store i8 %63, ptr %6, align 1
  %64 = load i16, ptr %7, align 2
  %65 = zext i16 %64 to i32
  %66 = load i8, ptr %8, align 1
  %67 = zext i8 %66 to i32
  %68 = add nsw i32 %65, %67
  %69 = trunc i32 %68 to i16
  store i16 %69, ptr %7, align 2
  br label %70

70:                                               ; preds = %33, %17
  %71 = load i16, ptr %7, align 2
  %72 = zext i16 %71 to i32
  %73 = shl i32 %72, 1
  %74 = trunc i32 %73 to i16
  store i16 %74, ptr %7, align 2
  %75 = load i8, ptr %5, align 1
  %76 = add i8 %75, 1
  store i8 %76, ptr %5, align 1
  %77 = load i8, ptr %5, align 1
  %78 = zext i8 %77 to i32
  %79 = icmp sgt i32 %78, 15
  br i1 %79, label %80, label %81

80:                                               ; preds = %70
  br label %82

81:                                               ; preds = %70
  br label %9

82:                                               ; preds = %80
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @createWinogradQuant(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i8, align 1
  %4 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  store i8 0, ptr %3, align 1
  br label %5

5:                                                ; preds = %31, %1
  %6 = load i8, ptr %3, align 1
  %7 = zext i8 %6 to i32
  %8 = icmp slt i32 %7, 64
  br i1 %8, label %9, label %34

9:                                                ; preds = %5
  %10 = load ptr, ptr %2, align 8
  %11 = load i8, ptr %3, align 1
  %12 = zext i8 %11 to i64
  %13 = getelementptr inbounds nuw i16, ptr %10, i64 %12
  %14 = load i16, ptr %13, align 2
  %15 = sext i16 %14 to i64
  store i64 %15, ptr %4, align 8
  %16 = load i8, ptr %3, align 1
  %17 = zext i8 %16 to i64
  %18 = getelementptr inbounds nuw [64 x i8], ptr @gWinogradQuant, i64 0, i64 %17
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i64
  %21 = load i64, ptr %4, align 8
  %22 = mul nsw i64 %21, %20
  store i64 %22, ptr %4, align 8
  %23 = load i64, ptr %4, align 8
  %24 = add nsw i64 %23, 4
  %25 = ashr i64 %24, 3
  %26 = trunc i64 %25 to i16
  %27 = load ptr, ptr %2, align 8
  %28 = load i8, ptr %3, align 1
  %29 = zext i8 %28 to i64
  %30 = getelementptr inbounds nuw i16, ptr %27, i64 %29
  store i16 %26, ptr %30, align 2
  br label %31

31:                                               ; preds = %9
  %32 = load i8, ptr %3, align 1
  %33 = add i8 %32, 1
  store i8 %33, ptr %3, align 1
  br label %5, !llvm.loop !42

34:                                               ; preds = %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @locateSOSMarker(ptr noundef %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store ptr %0, ptr %3, align 8
  %6 = load ptr, ptr %3, align 8
  store i8 0, ptr %6, align 1
  %7 = call zeroext i8 @processMarkers(ptr noundef %4)
  store i8 %7, ptr %5, align 1
  %8 = load i8, ptr %5, align 1
  %9 = icmp ne i8 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i8, ptr %5, align 1
  store i8 %11, ptr %2, align 1
  br label %26

12:                                               ; preds = %1
  %13 = load i8, ptr %4, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp eq i32 %14, 217
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load ptr, ptr %3, align 8
  store i8 1, ptr %17, align 1
  store i8 0, ptr %2, align 1
  br label %26

18:                                               ; preds = %12
  %19 = load i8, ptr %4, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp ne i32 %20, 218
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i8 18, ptr %2, align 1
  br label %26

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %23
  %25 = call zeroext i8 @readSOSMarker()
  store i8 %25, ptr %2, align 1
  br label %26

26:                                               ; preds = %24, %22, %16, %10
  %27 = load i8, ptr %2, align 1
  ret i8 %27
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @checkHuffTables() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store i8 0, ptr %2, align 1
  br label %5

5:                                                ; preds = %46, %0
  %6 = load i8, ptr %2, align 1
  %7 = zext i8 %6 to i32
  %8 = load i8, ptr @gCompsInScan, align 1
  %9 = zext i8 %8 to i32
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %49

11:                                               ; preds = %5
  %12 = load i8, ptr %2, align 1
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds nuw [3 x i8], ptr @gCompList, i64 0, i64 %13
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i64
  %17 = getelementptr inbounds nuw [3 x i8], ptr @gCompDCTab, i64 0, i64 %16
  %18 = load i8, ptr %17, align 1
  store i8 %18, ptr %3, align 1
  %19 = load i8, ptr %2, align 1
  %20 = zext i8 %19 to i64
  %21 = getelementptr inbounds nuw [3 x i8], ptr @gCompList, i64 0, i64 %20
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i64
  %24 = getelementptr inbounds nuw [3 x i8], ptr @gCompACTab, i64 0, i64 %23
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = add nsw i32 %26, 2
  %28 = trunc i32 %27 to i8
  store i8 %28, ptr %4, align 1
  %29 = load i8, ptr @gValidHuffTables, align 1
  %30 = zext i8 %29 to i32
  %31 = load i8, ptr %3, align 1
  %32 = zext i8 %31 to i32
  %33 = shl i32 1, %32
  %34 = and i32 %30, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %11
  %37 = load i8, ptr @gValidHuffTables, align 1
  %38 = zext i8 %37 to i32
  %39 = load i8, ptr %4, align 1
  %40 = zext i8 %39 to i32
  %41 = shl i32 1, %40
  %42 = and i32 %38, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36, %11
  store i8 24, ptr %1, align 1
  br label %50

45:                                               ; preds = %36
  br label %46

46:                                               ; preds = %45
  %47 = load i8, ptr %2, align 1
  %48 = add i8 %47, 1
  store i8 %48, ptr %2, align 1
  br label %5, !llvm.loop !43

49:                                               ; preds = %5
  store i8 0, ptr %1, align 1
  br label %50

50:                                               ; preds = %49, %44
  %51 = load i8, ptr %1, align 1
  ret i8 %51
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @checkQuantTables() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  store i8 0, ptr %2, align 1
  br label %4

4:                                                ; preds = %31, %0
  %5 = load i8, ptr %2, align 1
  %6 = zext i8 %5 to i32
  %7 = load i8, ptr @gCompsInScan, align 1
  %8 = zext i8 %7 to i32
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %34

10:                                               ; preds = %4
  %11 = load i8, ptr %2, align 1
  %12 = zext i8 %11 to i64
  %13 = getelementptr inbounds nuw [3 x i8], ptr @gCompList, i64 0, i64 %12
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i64
  %16 = getelementptr inbounds nuw [3 x i8], ptr @gCompQuant, i64 0, i64 %15
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 2, i32 1
  %22 = trunc i32 %21 to i8
  store i8 %22, ptr %3, align 1
  %23 = load i8, ptr @gValidQuantTables, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, ptr %3, align 1
  %26 = zext i8 %25 to i32
  %27 = and i32 %24, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %10
  store i8 23, ptr %1, align 1
  br label %35

30:                                               ; preds = %10
  br label %31

31:                                               ; preds = %30
  %32 = load i8, ptr %2, align 1
  %33 = add i8 %32, 1
  store i8 %33, ptr %2, align 1
  br label %4, !llvm.loop !44

34:                                               ; preds = %4
  store i8 0, ptr %1, align 1
  br label %35

35:                                               ; preds = %34, %29
  %36 = load i8, ptr %1, align 1
  ret i8 %36
}

; Function Attrs: noinline nounwind uwtable
define internal void @fixInBuffer() #0 {
  %1 = load i8, ptr @gBitsLeft, align 1
  %2 = zext i8 %1 to i32
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i16, ptr @gBitBuf, align 2
  %6 = trunc i16 %5 to i8
  call void @stuffChar(i8 noundef zeroext %6)
  br label %7

7:                                                ; preds = %4, %0
  %8 = load i16, ptr @gBitBuf, align 2
  %9 = zext i16 %8 to i32
  %10 = ashr i32 %9, 8
  %11 = trunc i32 %10 to i8
  call void @stuffChar(i8 noundef zeroext %11)
  store i8 8, ptr @gBitsLeft, align 1
  %12 = call zeroext i16 @getBits2(i8 noundef zeroext 8)
  %13 = call zeroext i16 @getBits2(i8 noundef zeroext 8)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @readSOSMarker() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  %3 = alloca i16, align 2
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = call zeroext i16 @getBits1(i8 noundef zeroext 16)
  store i16 %7, ptr %3, align 2
  %8 = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  %9 = trunc i16 %8 to i8
  store i8 %9, ptr @gCompsInScan, align 1
  %10 = load i16, ptr %3, align 2
  %11 = zext i16 %10 to i32
  %12 = sub nsw i32 %11, 3
  %13 = trunc i32 %12 to i16
  store i16 %13, ptr %3, align 2
  %14 = load i16, ptr %3, align 2
  %15 = zext i16 %14 to i32
  %16 = load i8, ptr @gCompsInScan, align 1
  %17 = zext i8 %16 to i32
  %18 = load i8, ptr @gCompsInScan, align 1
  %19 = zext i8 %18 to i32
  %20 = add nsw i32 %17, %19
  %21 = add nsw i32 %20, 3
  %22 = icmp ne i32 %15, %21
  br i1 %22, label %31, label %23

23:                                               ; preds = %0
  %24 = load i8, ptr @gCompsInScan, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp slt i32 %25, 1
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i8, ptr @gCompsInScan, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp sgt i32 %29, 3
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %23, %0
  store i8 14, ptr %1, align 1
  br label %119

32:                                               ; preds = %27
  store i8 0, ptr %2, align 1
  br label %33

33:                                               ; preds = %95, %32
  %34 = load i8, ptr %2, align 1
  %35 = zext i8 %34 to i32
  %36 = load i8, ptr @gCompsInScan, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %98

39:                                               ; preds = %33
  %40 = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  %41 = trunc i16 %40 to i8
  store i8 %41, ptr %4, align 1
  %42 = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  %43 = trunc i16 %42 to i8
  store i8 %43, ptr %5, align 1
  %44 = load i16, ptr %3, align 2
  %45 = zext i16 %44 to i32
  %46 = sub nsw i32 %45, 2
  %47 = trunc i32 %46 to i16
  store i16 %47, ptr %3, align 2
  store i8 0, ptr %6, align 1
  br label %48

48:                                               ; preds = %65, %39
  %49 = load i8, ptr %6, align 1
  %50 = zext i8 %49 to i32
  %51 = load i8, ptr @gCompsInFrame, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %54, label %68

54:                                               ; preds = %48
  %55 = load i8, ptr %4, align 1
  %56 = zext i8 %55 to i32
  %57 = load i8, ptr %6, align 1
  %58 = zext i8 %57 to i64
  %59 = getelementptr inbounds nuw [3 x i8], ptr @gCompIdent, i64 0, i64 %58
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp eq i32 %56, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  br label %68

64:                                               ; preds = %54
  br label %65

65:                                               ; preds = %64
  %66 = load i8, ptr %6, align 1
  %67 = add i8 %66, 1
  store i8 %67, ptr %6, align 1
  br label %48, !llvm.loop !45

68:                                               ; preds = %63, %48
  %69 = load i8, ptr %6, align 1
  %70 = zext i8 %69 to i32
  %71 = load i8, ptr @gCompsInFrame, align 1
  %72 = zext i8 %71 to i32
  %73 = icmp sge i32 %70, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  store i8 15, ptr %1, align 1
  br label %119

75:                                               ; preds = %68
  %76 = load i8, ptr %6, align 1
  %77 = load i8, ptr %2, align 1
  %78 = zext i8 %77 to i64
  %79 = getelementptr inbounds nuw [3 x i8], ptr @gCompList, i64 0, i64 %78
  store i8 %76, ptr %79, align 1
  %80 = load i8, ptr %5, align 1
  %81 = zext i8 %80 to i32
  %82 = ashr i32 %81, 4
  %83 = and i32 %82, 15
  %84 = trunc i32 %83 to i8
  %85 = load i8, ptr %6, align 1
  %86 = zext i8 %85 to i64
  %87 = getelementptr inbounds nuw [3 x i8], ptr @gCompDCTab, i64 0, i64 %86
  store i8 %84, ptr %87, align 1
  %88 = load i8, ptr %5, align 1
  %89 = zext i8 %88 to i32
  %90 = and i32 %89, 15
  %91 = trunc i32 %90 to i8
  %92 = load i8, ptr %6, align 1
  %93 = zext i8 %92 to i64
  %94 = getelementptr inbounds nuw [3 x i8], ptr @gCompACTab, i64 0, i64 %93
  store i8 %91, ptr %94, align 1
  br label %95

95:                                               ; preds = %75
  %96 = load i8, ptr %2, align 1
  %97 = add i8 %96, 1
  store i8 %97, ptr %2, align 1
  br label %33, !llvm.loop !46

98:                                               ; preds = %33
  %99 = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  %100 = trunc i16 %99 to i8
  store volatile i8 %100, ptr @spectral_start, align 1
  %101 = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  %102 = trunc i16 %101 to i8
  store volatile i8 %102, ptr @spectral_end, align 1
  %103 = call zeroext i16 @getBits1(i8 noundef zeroext 4)
  %104 = trunc i16 %103 to i8
  store volatile i8 %104, ptr @successive_high, align 1
  %105 = call zeroext i16 @getBits1(i8 noundef zeroext 4)
  %106 = trunc i16 %105 to i8
  store volatile i8 %106, ptr @successive_low, align 1
  %107 = load i16, ptr %3, align 2
  %108 = zext i16 %107 to i32
  %109 = sub nsw i32 %108, 3
  %110 = trunc i32 %109 to i16
  store i16 %110, ptr %3, align 2
  br label %111

111:                                              ; preds = %114, %98
  %112 = load i16, ptr %3, align 2
  %113 = icmp ne i16 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = call zeroext i16 @getBits1(i8 noundef zeroext 8)
  %116 = load i16, ptr %3, align 2
  %117 = add i16 %116, -1
  store i16 %117, ptr %3, align 2
  br label %111, !llvm.loop !47

118:                                              ; preds = %111
  store i8 0, ptr %1, align 1
  br label %119

119:                                              ; preds = %118, %74, %31
  %120 = load i8, ptr %1, align 1
  ret i8 %120
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
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7}
!31 = distinct !{!31, !7}
!32 = distinct !{!32, !7}
!33 = distinct !{!33, !7}
!34 = distinct !{!34, !7}
!35 = distinct !{!35, !7}
!36 = distinct !{!36, !7}
!37 = distinct !{!37, !7}
!38 = distinct !{!38, !7}
!39 = distinct !{!39, !7}
!40 = distinct !{!40, !7}
!41 = distinct !{!41, !7}
!42 = distinct !{!42, !7}
!43 = distinct !{!43, !7}
!44 = distinct !{!44, !7}
!45 = distinct !{!45, !7}
!46 = distinct !{!46, !7}
!47 = distinct !{!47, !7}
