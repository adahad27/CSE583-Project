; ModuleID = '../src/picojpeg/libpicojpeg.c'
source_filename = "../src/picojpeg/libpicojpeg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.HuffTableT = type { [16 x i16], [16 x i16], [16 x i8] }

@gWinogradQuant = dso_local local_unnamed_addr constant [64 x i8] c"\80\B2\B2\A7\F6\A7\97\E8\E8\97\80\D1\DB\D1\80e\B2\C5\C5\B2eE\8B\A7\B1\A7\8BE#`\83\97\97\83`#1[v\80v[1.QeeQ.*EOE*#66#\1C%\1C\13\13\0A", align 16
@gCallbackStatus = internal unnamed_addr global i8 0, align 1
@gNumMCUSRemaining = internal unnamed_addr global i16 0, align 2
@g_pNeedBytesCallback = internal unnamed_addr global ptr null, align 8
@g_pCallback_data = internal unnamed_addr global ptr null, align 8
@gReduce = internal unnamed_addr global i8 0, align 1
@gImageXSize = internal unnamed_addr global i16 0, align 2
@gImageYSize = internal unnamed_addr global i16 0, align 2
@gCompsInFrame = internal unnamed_addr global i8 0, align 1
@gScanType = internal unnamed_addr global i32 0, align 4
@gMaxMCUSPerRow = internal unnamed_addr global i16 0, align 2
@gMaxMCUSPerCol = internal unnamed_addr global i16 0, align 2
@gMaxMCUXSize = internal unnamed_addr global i8 0, align 1
@gMaxMCUYSize = internal unnamed_addr global i8 0, align 1
@gMCUBufR = internal global [256 x i8] zeroinitializer, align 16
@gMCUBufG = internal global [256 x i8] zeroinitializer, align 16
@gMCUBufB = internal global [256 x i8] zeroinitializer, align 16
@spectral_start = dso_local global i8 0, align 1
@spectral_end = dso_local global i8 0, align 1
@successive_high = dso_local global i8 0, align 1
@successive_low = dso_local global i8 0, align 1
@gRestartInterval = internal unnamed_addr global i16 0, align 2
@gRestartsLeft = internal unnamed_addr global i16 0, align 2
@gMaxBlocksPerMCU = internal unnamed_addr global i8 0, align 1
@gMCUOrg = internal unnamed_addr global [6 x i8] zeroinitializer, align 4
@gCompQuant = internal unnamed_addr global [3 x i8] zeroinitializer, align 1
@gCompDCTab = internal unnamed_addr global [3 x i8] zeroinitializer, align 1
@gQuant1 = internal unnamed_addr global [64 x i16] zeroinitializer, align 16
@gQuant0 = internal unnamed_addr global [64 x i16] zeroinitializer, align 16
@gHuffTab1 = internal unnamed_addr global %struct.HuffTableT zeroinitializer, align 2
@gHuffTab0 = internal unnamed_addr global %struct.HuffTableT zeroinitializer, align 2
@gHuffVal1 = internal unnamed_addr global [16 x i8] zeroinitializer, align 16
@gHuffVal0 = internal unnamed_addr global [16 x i8] zeroinitializer, align 16
@gLastDC = internal unnamed_addr global [3 x i16] zeroinitializer, align 2
@gCoeffBuf = internal unnamed_addr global [64 x i16] zeroinitializer, align 16
@gCompACTab = internal unnamed_addr global [3 x i8] zeroinitializer, align 1
@gHuffTab3 = internal unnamed_addr global %struct.HuffTableT zeroinitializer, align 2
@gHuffTab2 = internal unnamed_addr global %struct.HuffTableT zeroinitializer, align 2
@gHuffVal3 = internal unnamed_addr global [256 x i8] zeroinitializer, align 16
@gHuffVal2 = internal unnamed_addr global [256 x i8] zeroinitializer, align 16
@ZAG = internal unnamed_addr constant [64 x i8] c"\00\01\08\10\09\02\03\0A\11\18 \19\12\0B\04\05\0C\13\1A!(0)\22\1B\14\0D\06\07\0E\15\1C#*1892+$\1D\16\0F\17\1E%,3:;4-&\1F'.5<=6/7>?", align 16
@gNextRestartNum = internal unnamed_addr global i16 0, align 2
@gBitsLeft = internal unnamed_addr global i8 0, align 1
@gInBufLeft = internal global i8 0, align 1
@gTemFlag = internal unnamed_addr global i8 0, align 1
@gInBuf = internal global [256 x i8] zeroinitializer, align 16
@gInBufOfs = internal unnamed_addr global i8 0, align 1
@gBitBuf = internal unnamed_addr global i16 0, align 2
@gCompsInScan = internal unnamed_addr global i8 0, align 1
@gValidHuffTables = internal unnamed_addr global i8 0, align 1
@gValidQuantTables = internal unnamed_addr global i8 0, align 1
@gCompIdent = internal unnamed_addr global [3 x i8] zeroinitializer, align 1
@gCompHSamp = internal unnamed_addr global [3 x i8] zeroinitializer, align 1
@gCompVSamp = internal unnamed_addr global [3 x i8] zeroinitializer, align 1
@gCompList = internal unnamed_addr global [3 x i8] zeroinitializer, align 1
@switch.table.pjpeg_decode_mcu = private unnamed_addr constant [15 x i16] [i16 1, i16 2, i16 4, i16 8, i16 16, i16 32, i16 64, i16 128, i16 256, i16 512, i16 1024, i16 2048, i16 4096, i16 8192, i16 16384], align 2
@switch.table.pjpeg_decode_mcu.2 = private unnamed_addr constant [15 x i16] [i16 -1, i16 -3, i16 -7, i16 -15, i16 -31, i16 -63, i16 -127, i16 -255, i16 -511, i16 -1023, i16 -2047, i16 -4095, i16 -8191, i16 -16383, i16 -32767], align 2
@switch.table.processMarkers = private unnamed_addr constant [4 x ptr] [ptr @gHuffTab0, ptr @gHuffTab1, ptr @gHuffTab2, ptr @gHuffTab3], align 8
@switch.table.processMarkers.3 = private unnamed_addr constant [4 x ptr] [ptr @gHuffVal0, ptr @gHuffVal1, ptr @gHuffVal2, ptr @gHuffVal3], align 8

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @pjpeg_decode_mcu() local_unnamed_addr #0 {
  %1 = load i8, ptr @gCallbackStatus, align 1, !tbaa !5
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %3, label %2181

3:                                                ; preds = %0
  %4 = load i16, ptr @gNumMCUSRemaining, align 2, !tbaa !8
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %2181, label %6

6:                                                ; preds = %3
  %7 = load i16, ptr @gRestartInterval, align 2, !tbaa !8
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %103, label %9

9:                                                ; preds = %6
  %10 = load i16, ptr @gRestartsLeft, align 2, !tbaa !8
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %100

12:                                               ; preds = %9
  %13 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  br label %14

14:                                               ; preds = %42, %12
  %15 = phi i8 [ %13, %12 ], [ %43, %42 ]
  %16 = phi i16 [ 1536, %12 ], [ %44, %42 ]
  %17 = icmp eq i8 %15, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %14
  store i8 4, ptr @gInBufOfs, align 1, !tbaa !5
  %19 = load ptr, ptr @g_pNeedBytesCallback, align 8, !tbaa !10
  %20 = load ptr, ptr @g_pCallback_data, align 8, !tbaa !10
  %21 = tail call zeroext i8 %19(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @gInBuf, i64 4), i8 noundef zeroext -4, ptr noundef nonnull @gInBufLeft, ptr noundef %20) #5
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i8 %21, ptr @gCallbackStatus, align 1, !tbaa !5
  br label %24

24:                                               ; preds = %23, %18
  %25 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i8, ptr @gTemFlag, align 1, !tbaa !5
  %29 = xor i8 %28, -1
  store i8 %29, ptr @gTemFlag, align 1, !tbaa !5
  %30 = icmp eq i8 %28, -1
  br i1 %30, label %42, label %31

31:                                               ; preds = %33, %27
  %32 = phi i8 [ %35, %33 ], [ 0, %27 ]
  br label %46

33:                                               ; preds = %24, %14
  %34 = phi i8 [ %25, %24 ], [ %15, %14 ]
  %35 = add i8 %34, -1
  store i8 %35, ptr @gInBufLeft, align 1, !tbaa !5
  %36 = load i8, ptr @gInBufOfs, align 1, !tbaa !5
  %37 = add i8 %36, 1
  store i8 %37, ptr @gInBufOfs, align 1, !tbaa !5
  %38 = zext i8 %36 to i64
  %39 = getelementptr inbounds nuw [256 x i8], ptr @gInBuf, i64 0, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !5
  %41 = icmp eq i8 %40, -1
  br i1 %41, label %31, label %42

42:                                               ; preds = %33, %27
  %43 = phi i8 [ 0, %27 ], [ %35, %33 ]
  %44 = add nsw i16 %16, -1
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %2170, label %14, !llvm.loop !12

46:                                               ; preds = %31, %72
  %47 = phi i8 [ %73, %72 ], [ %32, %31 ]
  %48 = phi i16 [ %74, %72 ], [ %16, %31 ]
  %49 = icmp eq i8 %47, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %46
  store i8 4, ptr @gInBufOfs, align 1, !tbaa !5
  %51 = load ptr, ptr @g_pNeedBytesCallback, align 8, !tbaa !10
  %52 = load ptr, ptr @g_pCallback_data, align 8, !tbaa !10
  %53 = tail call zeroext i8 %51(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @gInBuf, i64 4), i8 noundef zeroext -4, ptr noundef nonnull @gInBufLeft, ptr noundef %52) #5
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  store i8 %53, ptr @gCallbackStatus, align 1, !tbaa !5
  br label %56

56:                                               ; preds = %55, %50
  %57 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i8, ptr @gTemFlag, align 1, !tbaa !5
  %61 = xor i8 %60, -1
  store i8 %61, ptr @gTemFlag, align 1, !tbaa !5
  %62 = icmp eq i8 %60, -1
  br i1 %62, label %76, label %72

63:                                               ; preds = %56, %46
  %64 = phi i8 [ %57, %56 ], [ %47, %46 ]
  %65 = add i8 %64, -1
  store i8 %65, ptr @gInBufLeft, align 1, !tbaa !5
  %66 = load i8, ptr @gInBufOfs, align 1, !tbaa !5
  %67 = add i8 %66, 1
  store i8 %67, ptr @gInBufOfs, align 1, !tbaa !5
  %68 = zext i8 %66 to i64
  %69 = getelementptr inbounds nuw [256 x i8], ptr @gInBuf, i64 0, i64 %68
  %70 = load i8, ptr %69, align 1, !tbaa !5
  %71 = icmp eq i8 %70, -1
  br i1 %71, label %72, label %76

72:                                               ; preds = %63, %59
  %73 = phi i8 [ 0, %59 ], [ %65, %63 ]
  %74 = add nsw i16 %48, -1
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %2170, label %46, !llvm.loop !14

76:                                               ; preds = %63, %59
  %77 = phi i8 [ %70, %63 ], [ -39, %59 ]
  %78 = zext i8 %77 to i32
  %79 = load i16, ptr @gNextRestartNum, align 2, !tbaa !8
  %80 = zext nneg i16 %79 to i32
  %81 = add nuw nsw i32 %80, 208
  %82 = icmp eq i32 %81, %78
  br i1 %82, label %83, label %2170

83:                                               ; preds = %76
  store i16 0, ptr @gLastDC, align 2, !tbaa !8
  store i16 0, ptr getelementptr inbounds nuw (i8, ptr @gLastDC, i64 2), align 2, !tbaa !8
  store i16 0, ptr getelementptr inbounds nuw (i8, ptr @gLastDC, i64 4), align 2, !tbaa !8
  %84 = load i16, ptr @gRestartInterval, align 2, !tbaa !8
  store i16 %84, ptr @gRestartsLeft, align 2, !tbaa !8
  %85 = add i16 %79, 1
  %86 = and i16 %85, 7
  store i16 %86, ptr @gNextRestartNum, align 2, !tbaa !8
  %87 = load i16, ptr @gBitBuf, align 2, !tbaa !8
  %88 = shl i16 %87, 8
  store i8 0, ptr @gBitsLeft, align 1, !tbaa !5
  store i16 %88, ptr @gBitBuf, align 2, !tbaa !8
  %89 = tail call fastcc zeroext i8 @getOctet(i8 noundef zeroext 1)
  %90 = load i16, ptr @gBitBuf, align 2, !tbaa !8
  %91 = zext i8 %89 to i16
  %92 = or i16 %90, %91
  %93 = load i8, ptr @gBitsLeft, align 1, !tbaa !5
  %94 = zext i8 %93 to i32
  %95 = sub nsw i32 8, %94
  %96 = zext i16 %92 to i32
  %97 = shl nuw nsw i32 %96, %95
  %98 = trunc i32 %97 to i16
  store i16 %98, ptr @gBitBuf, align 2, !tbaa !8
  %99 = load i16, ptr @gRestartsLeft, align 2, !tbaa !8
  br label %100

100:                                              ; preds = %83, %9
  %101 = phi i16 [ %99, %83 ], [ %10, %9 ]
  %102 = add i16 %101, -1
  store i16 %102, ptr @gRestartsLeft, align 2, !tbaa !8
  br label %103

103:                                              ; preds = %100, %6
  %104 = load i8, ptr @gMaxBlocksPerMCU, align 1, !tbaa !5
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %2175, label %106

106:                                              ; preds = %103, %2165
  %107 = phi i64 [ %2166, %2165 ], [ 0, %103 ]
  %108 = getelementptr inbounds nuw [6 x i8], ptr @gMCUOrg, i64 0, i64 %107
  %109 = load i8, ptr %108, align 1, !tbaa !5
  %110 = zext i8 %109 to i64
  %111 = getelementptr inbounds nuw [3 x i8], ptr @gCompQuant, i64 0, i64 %110
  %112 = load i8, ptr %111, align 1, !tbaa !5
  %113 = getelementptr inbounds nuw [3 x i8], ptr @gCompDCTab, i64 0, i64 %110
  %114 = load i8, ptr %113, align 1, !tbaa !5
  %115 = icmp eq i8 %112, 0
  %116 = select i1 %115, ptr @gQuant0, ptr @gQuant1
  %117 = icmp eq i8 %114, 0
  %118 = select i1 %117, ptr @gHuffTab0, ptr @gHuffTab1
  %119 = select i1 %117, ptr @gHuffVal0, ptr @gHuffVal1
  %120 = load i16, ptr @gBitBuf, align 2, !tbaa !8
  %121 = load i8, ptr @gBitsLeft, align 1, !tbaa !5
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %106
  %124 = tail call fastcc zeroext i8 @getOctet(i8 noundef zeroext 1)
  %125 = load i16, ptr @gBitBuf, align 2, !tbaa !8
  %126 = zext i8 %124 to i16
  %127 = or i16 %125, %126
  %128 = load i8, ptr @gBitsLeft, align 1, !tbaa !5
  %129 = add i8 %128, 8
  br label %130

130:                                              ; preds = %123, %106
  %131 = phi i16 [ %127, %123 ], [ %120, %106 ]
  %132 = phi i8 [ %129, %123 ], [ %121, %106 ]
  %133 = lshr i16 %120, 15
  %134 = add i8 %132, -1
  store i8 %134, ptr @gBitsLeft, align 1, !tbaa !5
  %135 = shl i16 %131, 1
  store i16 %135, ptr @gBitBuf, align 2, !tbaa !8
  %136 = select i1 %117, ptr getelementptr inbounds nuw (i8, ptr @gHuffTab0, i64 32), ptr getelementptr inbounds nuw (i8, ptr @gHuffTab1, i64 32)
  br label %137

137:                                              ; preds = %219, %130
  %138 = phi i64 [ %148, %219 ], [ 0, %130 ]
  %139 = phi i8 [ %222, %219 ], [ %134, %130 ]
  %140 = phi i16 [ %223, %219 ], [ %135, %130 ]
  %141 = phi i16 [ %224, %219 ], [ %133, %130 ]
  %142 = getelementptr inbounds nuw [16 x i16], ptr %136, i64 0, i64 %138
  %143 = load i16, ptr %142, align 2, !tbaa !8
  %144 = icmp ule i16 %141, %143
  %145 = icmp ne i16 %143, -1
  %146 = and i1 %144, %145
  br i1 %146, label %226, label %147

147:                                              ; preds = %137
  %148 = add nuw nsw i64 %138, 1
  %149 = icmp eq i8 %139, 0
  br i1 %149, label %150, label %219

150:                                              ; preds = %147
  %151 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %153, label %162

153:                                              ; preds = %150
  store i8 4, ptr @gInBufOfs, align 1, !tbaa !5
  %154 = load ptr, ptr @g_pNeedBytesCallback, align 8, !tbaa !10
  %155 = load ptr, ptr @g_pCallback_data, align 8, !tbaa !10
  %156 = tail call zeroext i8 %154(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @gInBuf, i64 4), i8 noundef zeroext -4, ptr noundef nonnull @gInBufLeft, ptr noundef %155) #5
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %153
  store i8 %156, ptr @gCallbackStatus, align 1, !tbaa !5
  br label %159

159:                                              ; preds = %158, %153
  %160 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %171, label %162

162:                                              ; preds = %159, %150
  %163 = phi i8 [ %160, %159 ], [ %151, %150 ]
  %164 = add i8 %163, -1
  store i8 %164, ptr @gInBufLeft, align 1, !tbaa !5
  %165 = load i8, ptr @gInBufOfs, align 1, !tbaa !5
  %166 = add i8 %165, 1
  store i8 %166, ptr @gInBufOfs, align 1, !tbaa !5
  %167 = zext i8 %165 to i64
  %168 = getelementptr inbounds nuw [256 x i8], ptr @gInBuf, i64 0, i64 %167
  %169 = load i8, ptr %168, align 1, !tbaa !5
  %170 = icmp eq i8 %169, -1
  br i1 %170, label %175, label %212

171:                                              ; preds = %159
  %172 = load i8, ptr @gTemFlag, align 1, !tbaa !5
  %173 = xor i8 %172, -1
  store i8 %173, ptr @gTemFlag, align 1, !tbaa !5
  %174 = icmp eq i8 %172, -1
  br i1 %174, label %212, label %177

175:                                              ; preds = %162
  %176 = icmp eq i8 %164, 0
  br i1 %176, label %177, label %192

177:                                              ; preds = %175, %171
  store i8 4, ptr @gInBufOfs, align 1, !tbaa !5
  %178 = load ptr, ptr @g_pNeedBytesCallback, align 8, !tbaa !10
  %179 = load ptr, ptr @g_pCallback_data, align 8, !tbaa !10
  %180 = tail call zeroext i8 %178(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @gInBuf, i64 4), i8 noundef zeroext -4, ptr noundef nonnull @gInBufLeft, ptr noundef %179) #5
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %183, label %182

182:                                              ; preds = %177
  store i8 %180, ptr @gCallbackStatus, align 1, !tbaa !5
  br label %183

183:                                              ; preds = %182, %177
  %184 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %185 = icmp eq i8 %184, 0
  %186 = load i8, ptr @gInBufOfs, align 1, !tbaa !5
  br i1 %185, label %187, label %192

187:                                              ; preds = %183
  %188 = load i8, ptr @gTemFlag, align 1, !tbaa !5
  %189 = xor i8 %188, -1
  store i8 %189, ptr @gTemFlag, align 1, !tbaa !5
  %190 = icmp eq i8 %188, -1
  %191 = select i1 %190, i8 -39, i8 -1
  br label %201

192:                                              ; preds = %183, %175
  %193 = phi i8 [ %186, %183 ], [ %166, %175 ]
  %194 = phi i8 [ %184, %183 ], [ %164, %175 ]
  %195 = add i8 %194, -1
  store i8 %195, ptr @gInBufLeft, align 1, !tbaa !5
  %196 = add i8 %193, 1
  store i8 %196, ptr @gInBufOfs, align 1, !tbaa !5
  %197 = zext i8 %193 to i64
  %198 = getelementptr inbounds nuw [256 x i8], ptr @gInBuf, i64 0, i64 %197
  %199 = load i8, ptr %198, align 1, !tbaa !5
  %200 = icmp eq i8 %199, 0
  br i1 %200, label %212, label %201

201:                                              ; preds = %192, %187
  %202 = phi i8 [ 0, %187 ], [ %195, %192 ]
  %203 = phi i8 [ %186, %187 ], [ %196, %192 ]
  %204 = phi i8 [ %191, %187 ], [ %199, %192 ]
  %205 = add i8 %203, -1
  %206 = zext i8 %205 to i64
  %207 = getelementptr inbounds nuw [256 x i8], ptr @gInBuf, i64 0, i64 %206
  store i8 %204, ptr %207, align 1, !tbaa !5
  %208 = add i8 %203, -2
  store i8 %208, ptr @gInBufOfs, align 1, !tbaa !5
  %209 = zext i8 %208 to i64
  %210 = getelementptr inbounds nuw [256 x i8], ptr @gInBuf, i64 0, i64 %209
  store i8 -1, ptr %210, align 1, !tbaa !5
  %211 = add i8 %202, 2
  store i8 %211, ptr @gInBufLeft, align 1, !tbaa !5
  br label %212

212:                                              ; preds = %201, %192, %171, %162
  %213 = phi i8 [ -39, %171 ], [ -1, %192 ], [ -1, %201 ], [ %169, %162 ]
  %214 = load i16, ptr @gBitBuf, align 2, !tbaa !8
  %215 = zext i8 %213 to i16
  %216 = or i16 %214, %215
  %217 = load i8, ptr @gBitsLeft, align 1, !tbaa !5
  %218 = add i8 %217, 8
  br label %219

219:                                              ; preds = %212, %147
  %220 = phi i16 [ %216, %212 ], [ %140, %147 ]
  %221 = phi i8 [ %218, %212 ], [ %139, %147 ]
  %222 = add i8 %221, -1
  store i8 %222, ptr @gBitsLeft, align 1, !tbaa !5
  %223 = shl i16 %220, 1
  store i16 %223, ptr @gBitBuf, align 2, !tbaa !8
  %224 = tail call i16 @llvm.fshl.i16(i16 %141, i16 %140, i16 1)
  %225 = icmp eq i64 %148, 16
  br i1 %225, label %316, label %137

226:                                              ; preds = %137
  %227 = select i1 %117, ptr getelementptr inbounds nuw (i8, ptr @gHuffTab0, i64 64), ptr getelementptr inbounds nuw (i8, ptr @gHuffTab1, i64 64)
  %228 = getelementptr inbounds nuw [16 x i8], ptr %227, i64 0, i64 %138
  %229 = load i8, ptr %228, align 1, !tbaa !5
  %230 = trunc i16 %141 to i8
  %231 = getelementptr inbounds nuw [16 x i16], ptr %118, i64 0, i64 %138
  %232 = load i16, ptr %231, align 2, !tbaa !8
  %233 = trunc i16 %232 to i8
  %234 = add i8 %229, %230
  %235 = sub i8 %234, %233
  %236 = zext i8 %235 to i64
  %237 = getelementptr inbounds nuw i8, ptr %119, i64 %236
  %238 = load i8, ptr %237, align 1, !tbaa !5
  %239 = and i8 %238, 15
  %240 = icmp eq i8 %239, 0
  br i1 %240, label %299, label %241

241:                                              ; preds = %226
  %242 = icmp samesign ugt i8 %239, 8
  br i1 %242, label %243, label %264

243:                                              ; preds = %241
  %244 = add nsw i8 %239, -8
  %245 = zext nneg i8 %139 to i32
  %246 = zext i16 %140 to i32
  %247 = shl i32 %246, %245
  %248 = trunc i32 %247 to i16
  store i16 %248, ptr @gBitBuf, align 2, !tbaa !8
  %249 = tail call fastcc zeroext i8 @getOctet(i8 noundef zeroext 1)
  %250 = load i16, ptr @gBitBuf, align 2, !tbaa !8
  %251 = zext i8 %249 to i16
  %252 = or i16 %250, %251
  %253 = load i8, ptr @gBitsLeft, align 1, !tbaa !5
  %254 = zext i8 %253 to i32
  %255 = sub nsw i32 8, %254
  %256 = zext i16 %252 to i32
  %257 = shl nuw nsw i32 %256, %255
  %258 = trunc i32 %257 to i16
  %259 = and i32 %246, 65280
  %260 = lshr i32 %257, 8
  %261 = and i32 %260, 255
  %262 = or disjoint i32 %261, %259
  %263 = trunc nuw i32 %262 to i16
  br label %264

264:                                              ; preds = %243, %241
  %265 = phi i16 [ %258, %243 ], [ %140, %241 ]
  %266 = phi i8 [ %253, %243 ], [ %139, %241 ]
  %267 = phi i8 [ %244, %243 ], [ %239, %241 ]
  %268 = phi i16 [ %263, %243 ], [ %140, %241 ]
  %269 = zext nneg i8 %267 to i32
  %270 = icmp ult i8 %266, %267
  %271 = zext i16 %265 to i32
  br i1 %270, label %272, label %287

272:                                              ; preds = %264
  %273 = zext nneg i8 %266 to i32
  %274 = shl nuw nsw i32 %271, %273
  %275 = trunc i32 %274 to i16
  store i16 %275, ptr @gBitBuf, align 2, !tbaa !8
  %276 = tail call fastcc zeroext i8 @getOctet(i8 noundef zeroext 1)
  %277 = load i16, ptr @gBitBuf, align 2, !tbaa !8
  %278 = zext i8 %276 to i16
  %279 = or i16 %277, %278
  %280 = load i8, ptr @gBitsLeft, align 1, !tbaa !5
  %281 = zext i8 %280 to i32
  %282 = sub nsw i32 %269, %281
  %283 = zext i16 %279 to i32
  %284 = shl nuw nsw i32 %283, %282
  %285 = sub i8 %280, %267
  %286 = add i8 %285, 8
  br label %290

287:                                              ; preds = %264
  %288 = sub nuw i8 %266, %267
  %289 = shl nuw nsw i32 %271, %269
  br label %290

290:                                              ; preds = %287, %272
  %291 = phi i32 [ %284, %272 ], [ %289, %287 ]
  %292 = phi i8 [ %286, %272 ], [ %288, %287 ]
  %293 = trunc i32 %291 to i16
  store i16 %293, ptr @gBitBuf, align 2, !tbaa !8
  store i8 %292, ptr @gBitsLeft, align 1, !tbaa !5
  %294 = zext i16 %268 to i32
  %295 = sub nuw nsw i8 16, %239
  %296 = zext nneg i8 %295 to i32
  %297 = lshr i32 %294, %296
  %298 = trunc nuw nsw i32 %297 to i16
  br label %299

299:                                              ; preds = %290, %226
  %300 = phi i8 [ %292, %290 ], [ %139, %226 ]
  %301 = phi i16 [ %293, %290 ], [ %140, %226 ]
  %302 = phi i16 [ %298, %290 ], [ 0, %226 ]
  %303 = add i8 %238, -1
  %304 = icmp ult i8 %303, 15
  br i1 %304, label %305, label %316

305:                                              ; preds = %299
  %306 = zext nneg i8 %303 to i64
  %307 = getelementptr inbounds nuw [15 x i16], ptr @switch.table.pjpeg_decode_mcu, i64 0, i64 %306
  %308 = load i16, ptr %307, align 2
  %309 = icmp samesign ult i16 %302, %308
  br i1 %309, label %310, label %316

310:                                              ; preds = %305
  %311 = add nsw i8 %238, -1
  %312 = sext i8 %311 to i64
  %313 = getelementptr inbounds [15 x i16], ptr @switch.table.pjpeg_decode_mcu.2, i64 0, i64 %312
  %314 = load i16, ptr %313, align 2
  %315 = add nsw i16 %314, %302
  br label %316

316:                                              ; preds = %219, %299, %310, %305
  %317 = phi i8 [ %300, %310 ], [ %300, %305 ], [ %300, %299 ], [ %222, %219 ]
  %318 = phi i16 [ %301, %310 ], [ %301, %305 ], [ %301, %299 ], [ %223, %219 ]
  %319 = phi i16 [ %315, %310 ], [ %302, %305 ], [ %302, %299 ], [ 0, %219 ]
  %320 = getelementptr inbounds nuw [3 x i16], ptr @gLastDC, i64 0, i64 %110
  %321 = load i16, ptr %320, align 2, !tbaa !8
  %322 = add i16 %321, %319
  store i16 %322, ptr %320, align 2, !tbaa !8
  %323 = load i16, ptr %116, align 16, !tbaa !8
  %324 = mul i16 %323, %322
  store i16 %324, ptr @gCoeffBuf, align 16, !tbaa !8
  %325 = getelementptr inbounds nuw [3 x i8], ptr @gCompACTab, i64 0, i64 %110
  %326 = load i8, ptr %325, align 1, !tbaa !5
  %327 = load i8, ptr @gReduce, align 1, !tbaa !5
  %328 = icmp eq i8 %327, 0
  %329 = icmp eq i8 %326, 0
  %330 = select i1 %329, ptr @gHuffTab2, ptr @gHuffTab3
  %331 = select i1 %329, ptr @gHuffVal2, ptr @gHuffVal3
  %332 = select i1 %329, ptr getelementptr inbounds nuw (i8, ptr @gHuffTab2, i64 32), ptr getelementptr inbounds nuw (i8, ptr @gHuffTab3, i64 32)
  %333 = select i1 %329, ptr getelementptr inbounds nuw (i8, ptr @gHuffTab2, i64 64), ptr getelementptr inbounds nuw (i8, ptr @gHuffTab3, i64 64)
  br i1 %328, label %927, label %334

334:                                              ; preds = %316, %513
  %335 = phi i8 [ %514, %513 ], [ %317, %316 ]
  %336 = phi i16 [ %515, %513 ], [ %318, %316 ]
  %337 = phi i8 [ %517, %513 ], [ 1, %316 ]
  %338 = icmp eq i8 %335, 0
  br i1 %338, label %339, label %346

339:                                              ; preds = %334
  %340 = tail call fastcc zeroext i8 @getOctet(i8 noundef zeroext 1)
  %341 = load i16, ptr @gBitBuf, align 2, !tbaa !8
  %342 = zext i8 %340 to i16
  %343 = or i16 %341, %342
  %344 = load i8, ptr @gBitsLeft, align 1, !tbaa !5
  %345 = add i8 %344, 8
  br label %346

346:                                              ; preds = %339, %334
  %347 = phi i16 [ %343, %339 ], [ %336, %334 ]
  %348 = phi i8 [ %345, %339 ], [ %335, %334 ]
  %349 = lshr i16 %336, 15
  %350 = add i8 %348, -1
  store i8 %350, ptr @gBitsLeft, align 1, !tbaa !5
  %351 = shl i16 %347, 1
  store i16 %351, ptr @gBitBuf, align 2, !tbaa !8
  br label %352

352:                                              ; preds = %434, %346
  %353 = phi i64 [ %363, %434 ], [ 0, %346 ]
  %354 = phi i8 [ %437, %434 ], [ %350, %346 ]
  %355 = phi i16 [ %438, %434 ], [ %351, %346 ]
  %356 = phi i16 [ %439, %434 ], [ %349, %346 ]
  %357 = getelementptr inbounds nuw [16 x i16], ptr %332, i64 0, i64 %353
  %358 = load i16, ptr %357, align 2, !tbaa !8
  %359 = icmp ule i16 %356, %358
  %360 = icmp ne i16 %358, -1
  %361 = and i1 %359, %360
  br i1 %361, label %441, label %362

362:                                              ; preds = %352
  %363 = add nuw nsw i64 %353, 1
  %364 = icmp eq i8 %354, 0
  br i1 %364, label %365, label %434

365:                                              ; preds = %362
  %366 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %367 = icmp eq i8 %366, 0
  br i1 %367, label %368, label %377

368:                                              ; preds = %365
  store i8 4, ptr @gInBufOfs, align 1, !tbaa !5
  %369 = load ptr, ptr @g_pNeedBytesCallback, align 8, !tbaa !10
  %370 = load ptr, ptr @g_pCallback_data, align 8, !tbaa !10
  %371 = tail call zeroext i8 %369(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @gInBuf, i64 4), i8 noundef zeroext -4, ptr noundef nonnull @gInBufLeft, ptr noundef %370) #5
  %372 = icmp eq i8 %371, 0
  br i1 %372, label %374, label %373

373:                                              ; preds = %368
  store i8 %371, ptr @gCallbackStatus, align 1, !tbaa !5
  br label %374

374:                                              ; preds = %373, %368
  %375 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %376 = icmp eq i8 %375, 0
  br i1 %376, label %386, label %377

377:                                              ; preds = %374, %365
  %378 = phi i8 [ %375, %374 ], [ %366, %365 ]
  %379 = add i8 %378, -1
  store i8 %379, ptr @gInBufLeft, align 1, !tbaa !5
  %380 = load i8, ptr @gInBufOfs, align 1, !tbaa !5
  %381 = add i8 %380, 1
  store i8 %381, ptr @gInBufOfs, align 1, !tbaa !5
  %382 = zext i8 %380 to i64
  %383 = getelementptr inbounds nuw [256 x i8], ptr @gInBuf, i64 0, i64 %382
  %384 = load i8, ptr %383, align 1, !tbaa !5
  %385 = icmp eq i8 %384, -1
  br i1 %385, label %390, label %427

386:                                              ; preds = %374
  %387 = load i8, ptr @gTemFlag, align 1, !tbaa !5
  %388 = xor i8 %387, -1
  store i8 %388, ptr @gTemFlag, align 1, !tbaa !5
  %389 = icmp eq i8 %387, -1
  br i1 %389, label %427, label %392

390:                                              ; preds = %377
  %391 = icmp eq i8 %379, 0
  br i1 %391, label %392, label %407

392:                                              ; preds = %390, %386
  store i8 4, ptr @gInBufOfs, align 1, !tbaa !5
  %393 = load ptr, ptr @g_pNeedBytesCallback, align 8, !tbaa !10
  %394 = load ptr, ptr @g_pCallback_data, align 8, !tbaa !10
  %395 = tail call zeroext i8 %393(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @gInBuf, i64 4), i8 noundef zeroext -4, ptr noundef nonnull @gInBufLeft, ptr noundef %394) #5
  %396 = icmp eq i8 %395, 0
  br i1 %396, label %398, label %397

397:                                              ; preds = %392
  store i8 %395, ptr @gCallbackStatus, align 1, !tbaa !5
  br label %398

398:                                              ; preds = %397, %392
  %399 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %400 = icmp eq i8 %399, 0
  %401 = load i8, ptr @gInBufOfs, align 1, !tbaa !5
  br i1 %400, label %402, label %407

402:                                              ; preds = %398
  %403 = load i8, ptr @gTemFlag, align 1, !tbaa !5
  %404 = xor i8 %403, -1
  store i8 %404, ptr @gTemFlag, align 1, !tbaa !5
  %405 = icmp eq i8 %403, -1
  %406 = select i1 %405, i8 -39, i8 -1
  br label %416

407:                                              ; preds = %398, %390
  %408 = phi i8 [ %401, %398 ], [ %381, %390 ]
  %409 = phi i8 [ %399, %398 ], [ %379, %390 ]
  %410 = add i8 %409, -1
  store i8 %410, ptr @gInBufLeft, align 1, !tbaa !5
  %411 = add i8 %408, 1
  store i8 %411, ptr @gInBufOfs, align 1, !tbaa !5
  %412 = zext i8 %408 to i64
  %413 = getelementptr inbounds nuw [256 x i8], ptr @gInBuf, i64 0, i64 %412
  %414 = load i8, ptr %413, align 1, !tbaa !5
  %415 = icmp eq i8 %414, 0
  br i1 %415, label %427, label %416

416:                                              ; preds = %407, %402
  %417 = phi i8 [ 0, %402 ], [ %410, %407 ]
  %418 = phi i8 [ %401, %402 ], [ %411, %407 ]
  %419 = phi i8 [ %406, %402 ], [ %414, %407 ]
  %420 = add i8 %418, -1
  %421 = zext i8 %420 to i64
  %422 = getelementptr inbounds nuw [256 x i8], ptr @gInBuf, i64 0, i64 %421
  store i8 %419, ptr %422, align 1, !tbaa !5
  %423 = add i8 %418, -2
  store i8 %423, ptr @gInBufOfs, align 1, !tbaa !5
  %424 = zext i8 %423 to i64
  %425 = getelementptr inbounds nuw [256 x i8], ptr @gInBuf, i64 0, i64 %424
  store i8 -1, ptr %425, align 1, !tbaa !5
  %426 = add i8 %417, 2
  store i8 %426, ptr @gInBufLeft, align 1, !tbaa !5
  br label %427

427:                                              ; preds = %416, %407, %386, %377
  %428 = phi i8 [ -39, %386 ], [ -1, %407 ], [ -1, %416 ], [ %384, %377 ]
  %429 = load i16, ptr @gBitBuf, align 2, !tbaa !8
  %430 = zext i8 %428 to i16
  %431 = or i16 %429, %430
  %432 = load i8, ptr @gBitsLeft, align 1, !tbaa !5
  %433 = add i8 %432, 8
  br label %434

434:                                              ; preds = %427, %362
  %435 = phi i16 [ %431, %427 ], [ %355, %362 ]
  %436 = phi i8 [ %433, %427 ], [ %354, %362 ]
  %437 = add i8 %436, -1
  store i8 %437, ptr @gBitsLeft, align 1, !tbaa !5
  %438 = shl i16 %435, 1
  store i16 %438, ptr @gBitBuf, align 2, !tbaa !8
  %439 = tail call i16 @llvm.fshl.i16(i16 %356, i16 %355, i16 1)
  %440 = icmp eq i64 %363, 16
  br i1 %440, label %519, label %352

441:                                              ; preds = %352
  %442 = getelementptr inbounds nuw [16 x i8], ptr %333, i64 0, i64 %353
  %443 = load i8, ptr %442, align 1, !tbaa !5
  %444 = trunc i16 %356 to i8
  %445 = getelementptr inbounds nuw [16 x i16], ptr %330, i64 0, i64 %353
  %446 = load i16, ptr %445, align 2, !tbaa !8
  %447 = trunc i16 %446 to i8
  %448 = add i8 %443, %444
  %449 = sub i8 %448, %447
  %450 = zext i8 %449 to i64
  %451 = getelementptr inbounds nuw i8, ptr %331, i64 %450
  %452 = load i8, ptr %451, align 1, !tbaa !5
  %453 = and i8 %452, 15
  %454 = icmp eq i8 %453, 0
  br i1 %454, label %507, label %455

455:                                              ; preds = %441
  %456 = icmp samesign ugt i8 %453, 8
  br i1 %456, label %457, label %473

457:                                              ; preds = %455
  %458 = add nsw i8 %453, -8
  %459 = zext nneg i8 %354 to i32
  %460 = zext i16 %355 to i32
  %461 = shl i32 %460, %459
  %462 = trunc i32 %461 to i16
  store i16 %462, ptr @gBitBuf, align 2, !tbaa !8
  %463 = tail call fastcc zeroext i8 @getOctet(i8 noundef zeroext 1)
  %464 = load i16, ptr @gBitBuf, align 2, !tbaa !8
  %465 = zext i8 %463 to i16
  %466 = or i16 %464, %465
  %467 = load i8, ptr @gBitsLeft, align 1, !tbaa !5
  %468 = zext i8 %467 to i32
  %469 = sub nsw i32 8, %468
  %470 = zext i16 %466 to i32
  %471 = shl nuw nsw i32 %470, %469
  %472 = trunc i32 %471 to i16
  br label %473

473:                                              ; preds = %457, %455
  %474 = phi i16 [ %472, %457 ], [ %355, %455 ]
  %475 = phi i8 [ %467, %457 ], [ %354, %455 ]
  %476 = phi i8 [ %458, %457 ], [ %453, %455 ]
  %477 = zext nneg i8 %476 to i32
  %478 = icmp ult i8 %475, %476
  %479 = zext i16 %474 to i32
  br i1 %478, label %480, label %495

480:                                              ; preds = %473
  %481 = zext nneg i8 %475 to i32
  %482 = shl nuw nsw i32 %479, %481
  %483 = trunc i32 %482 to i16
  store i16 %483, ptr @gBitBuf, align 2, !tbaa !8
  %484 = tail call fastcc zeroext i8 @getOctet(i8 noundef zeroext 1)
  %485 = load i16, ptr @gBitBuf, align 2, !tbaa !8
  %486 = zext i8 %484 to i16
  %487 = or i16 %485, %486
  %488 = load i8, ptr @gBitsLeft, align 1, !tbaa !5
  %489 = zext i8 %488 to i32
  %490 = sub nsw i32 %477, %489
  %491 = zext i16 %487 to i32
  %492 = shl nuw nsw i32 %491, %490
  %493 = sub i8 %488, %476
  %494 = add i8 %493, 8
  br label %498

495:                                              ; preds = %473
  %496 = sub nuw i8 %475, %476
  %497 = shl nuw nsw i32 %479, %477
  br label %498

498:                                              ; preds = %495, %480
  %499 = phi i32 [ %492, %480 ], [ %497, %495 ]
  %500 = phi i8 [ %494, %480 ], [ %496, %495 ]
  %501 = trunc i32 %499 to i16
  store i16 %501, ptr @gBitBuf, align 2, !tbaa !8
  store i8 %500, ptr @gBitsLeft, align 1, !tbaa !5
  %502 = icmp ult i8 %452, 16
  br i1 %502, label %513, label %503

503:                                              ; preds = %498
  %504 = lshr i8 %452, 4
  %505 = add nuw nsw i8 %504, %337
  %506 = icmp samesign ugt i8 %505, 63
  br i1 %506, label %2170, label %513

507:                                              ; preds = %441
  %508 = icmp eq i8 %452, -16
  br i1 %508, label %509, label %519

509:                                              ; preds = %507
  %510 = icmp samesign ugt i8 %337, 48
  br i1 %510, label %2170, label %511

511:                                              ; preds = %509
  %512 = add nuw nsw i8 %337, 15
  br label %513

513:                                              ; preds = %511, %503, %498
  %514 = phi i8 [ %500, %498 ], [ %354, %511 ], [ %500, %503 ]
  %515 = phi i16 [ %501, %498 ], [ %355, %511 ], [ %501, %503 ]
  %516 = phi i8 [ %337, %498 ], [ %512, %511 ], [ %505, %503 ]
  %517 = add i8 %516, 1
  %518 = icmp ult i8 %517, 64
  br i1 %518, label %334, label %519, !llvm.loop !15

519:                                              ; preds = %513, %507, %434
  %520 = load i16, ptr @gCoeffBuf, align 16, !tbaa !8
  %521 = sext i16 %520 to i32
  %522 = add nsw i32 %521, 64
  %523 = lshr i32 %522, 7
  %524 = trunc i32 %523 to i16
  %525 = add i16 %524, 128
  %526 = icmp ugt i16 %525, 255
  %527 = trunc i16 %525 to i8
  %528 = icmp sgt i16 %525, -1
  %529 = sext i1 %528 to i8
  %530 = select i1 %526, i8 %529, i8 %527
  %531 = load i32, ptr @gScanType, align 4, !tbaa !16
  switch i32 %531, label %926 [
    i32 0, label %532
    i32 1, label %533
    i32 3, label %590
    i32 2, label %680
    i32 4, label %770
  ]

532:                                              ; preds = %519
  store i8 %530, ptr @gMCUBufR, align 16, !tbaa !5
  br label %2165

533:                                              ; preds = %519
  %534 = trunc nuw i64 %107 to i8
  switch i8 %534, label %2165 [
    i8 0, label %535
    i8 1, label %536
    i8 2, label %563
  ]

535:                                              ; preds = %533
  store i8 %530, ptr @gMCUBufR, align 16, !tbaa !5
  store i8 %530, ptr @gMCUBufG, align 16, !tbaa !5
  store i8 %530, ptr @gMCUBufB, align 16, !tbaa !5
  br label %2165

536:                                              ; preds = %533
  %537 = zext i8 %530 to i32
  %538 = mul nuw nsw i32 %537, 88
  %539 = lshr i32 %538, 8
  %540 = trunc nuw nsw i32 %539 to i16
  %541 = load i8, ptr @gMCUBufG, align 16, !tbaa !5
  %542 = zext i8 %541 to i16
  %543 = sub nsw i16 %542, %540
  %544 = add nsw i16 %543, 44
  %545 = icmp ugt i16 %544, 255
  %546 = trunc i16 %544 to i8
  %547 = icmp sgt i16 %543, -45
  %548 = sext i1 %547 to i8
  %549 = select i1 %545, i8 %548, i8 %546
  store i8 %549, ptr @gMCUBufG, align 16, !tbaa !5
  %550 = mul nuw nsw i32 %537, 198
  %551 = lshr i32 %550, 8
  %552 = add nuw nsw i32 %551, %537
  %553 = trunc nuw nsw i32 %552 to i16
  %554 = add nsw i16 %553, -227
  %555 = load i8, ptr @gMCUBufB, align 16, !tbaa !5
  %556 = zext i8 %555 to i16
  %557 = add nsw i16 %554, %556
  %558 = icmp ugt i16 %557, 255
  %559 = trunc i16 %557 to i8
  %560 = icmp sgt i16 %557, -1
  %561 = sext i1 %560 to i8
  %562 = select i1 %558, i8 %561, i8 %559
  store i8 %562, ptr @gMCUBufB, align 16, !tbaa !5
  br label %2165

563:                                              ; preds = %533
  %564 = zext i8 %530 to i32
  %565 = mul nuw nsw i32 %564, 103
  %566 = lshr i32 %565, 8
  %567 = add nuw nsw i32 %566, %564
  %568 = trunc nuw nsw i32 %567 to i16
  %569 = add nsw i16 %568, -179
  %570 = load i8, ptr @gMCUBufR, align 16, !tbaa !5
  %571 = zext i8 %570 to i16
  %572 = add nsw i16 %569, %571
  %573 = icmp ugt i16 %572, 255
  %574 = trunc i16 %572 to i8
  %575 = icmp sgt i16 %572, -1
  %576 = sext i1 %575 to i8
  %577 = select i1 %573, i8 %576, i8 %574
  store i8 %577, ptr @gMCUBufR, align 16, !tbaa !5
  %578 = mul nuw nsw i32 %564, 183
  %579 = lshr i32 %578, 8
  %580 = trunc nuw nsw i32 %579 to i16
  %581 = load i8, ptr @gMCUBufG, align 16, !tbaa !5
  %582 = zext i8 %581 to i16
  %583 = sub nsw i16 %582, %580
  %584 = add nsw i16 %583, 91
  %585 = icmp ugt i16 %584, 255
  %586 = trunc i16 %584 to i8
  %587 = icmp sgt i16 %583, -92
  %588 = sext i1 %587 to i8
  %589 = select i1 %585, i8 %588, i8 %586
  store i8 %589, ptr @gMCUBufG, align 16, !tbaa !5
  br label %2165

590:                                              ; preds = %519
  %591 = trunc nuw i64 %107 to i8
  switch i8 %591, label %2165 [
    i8 0, label %592
    i8 1, label %593
    i8 2, label %594
    i8 3, label %637
  ]

592:                                              ; preds = %590
  store i8 %530, ptr @gMCUBufR, align 16, !tbaa !5
  store i8 %530, ptr @gMCUBufG, align 16, !tbaa !5
  store i8 %530, ptr @gMCUBufB, align 16, !tbaa !5
  br label %2165

593:                                              ; preds = %590
  store i8 %530, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 128), align 16, !tbaa !5
  store i8 %530, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 128), align 16, !tbaa !5
  store i8 %530, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 128), align 16, !tbaa !5
  br label %2165

594:                                              ; preds = %590
  %595 = zext i8 %530 to i32
  %596 = mul nuw nsw i32 %595, 88
  %597 = lshr i32 %596, 8
  %598 = trunc nuw nsw i32 %597 to i16
  %599 = add nsw i16 %598, -44
  %600 = load i8, ptr @gMCUBufG, align 16, !tbaa !5
  %601 = zext i8 %600 to i16
  %602 = sub nsw i16 %601, %599
  %603 = icmp ugt i16 %602, 255
  %604 = trunc i16 %602 to i8
  %605 = icmp sgt i16 %602, -1
  %606 = sext i1 %605 to i8
  %607 = select i1 %603, i8 %606, i8 %604
  store i8 %607, ptr @gMCUBufG, align 16, !tbaa !5
  %608 = load i8, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 128), align 16, !tbaa !5
  %609 = zext i8 %608 to i16
  %610 = sub nsw i16 %609, %599
  %611 = icmp ugt i16 %610, 255
  %612 = trunc i16 %610 to i8
  %613 = icmp sgt i16 %610, -1
  %614 = sext i1 %613 to i8
  %615 = select i1 %611, i8 %614, i8 %612
  store i8 %615, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 128), align 16, !tbaa !5
  %616 = mul nuw nsw i32 %595, 198
  %617 = lshr i32 %616, 8
  %618 = add nuw nsw i32 %617, %595
  %619 = trunc nuw nsw i32 %618 to i16
  %620 = add nsw i16 %619, -227
  %621 = load i8, ptr @gMCUBufB, align 16, !tbaa !5
  %622 = zext i8 %621 to i16
  %623 = add nsw i16 %620, %622
  %624 = icmp ugt i16 %623, 255
  %625 = trunc i16 %623 to i8
  %626 = icmp sgt i16 %623, -1
  %627 = sext i1 %626 to i8
  %628 = select i1 %624, i8 %627, i8 %625
  store i8 %628, ptr @gMCUBufB, align 16, !tbaa !5
  %629 = load i8, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 128), align 16, !tbaa !5
  %630 = zext i8 %629 to i16
  %631 = add nsw i16 %620, %630
  %632 = icmp ugt i16 %631, 255
  %633 = trunc i16 %631 to i8
  %634 = icmp sgt i16 %631, -1
  %635 = sext i1 %634 to i8
  %636 = select i1 %632, i8 %635, i8 %633
  store i8 %636, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 128), align 16, !tbaa !5
  br label %2165

637:                                              ; preds = %590
  %638 = zext i8 %530 to i32
  %639 = mul nuw nsw i32 %638, 103
  %640 = lshr i32 %639, 8
  %641 = add nuw nsw i32 %640, %638
  %642 = trunc nuw nsw i32 %641 to i16
  %643 = add nsw i16 %642, -179
  %644 = load i8, ptr @gMCUBufR, align 16, !tbaa !5
  %645 = zext i8 %644 to i16
  %646 = add nsw i16 %643, %645
  %647 = icmp ugt i16 %646, 255
  %648 = trunc i16 %646 to i8
  %649 = icmp sgt i16 %646, -1
  %650 = sext i1 %649 to i8
  %651 = select i1 %647, i8 %650, i8 %648
  store i8 %651, ptr @gMCUBufR, align 16, !tbaa !5
  %652 = load i8, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 128), align 16, !tbaa !5
  %653 = zext i8 %652 to i16
  %654 = add nsw i16 %643, %653
  %655 = icmp ugt i16 %654, 255
  %656 = trunc i16 %654 to i8
  %657 = icmp sgt i16 %654, -1
  %658 = sext i1 %657 to i8
  %659 = select i1 %655, i8 %658, i8 %656
  store i8 %659, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 128), align 16, !tbaa !5
  %660 = mul nuw nsw i32 %638, 183
  %661 = lshr i32 %660, 8
  %662 = trunc nuw nsw i32 %661 to i16
  %663 = add nsw i16 %662, -91
  %664 = load i8, ptr @gMCUBufG, align 16, !tbaa !5
  %665 = zext i8 %664 to i16
  %666 = sub nsw i16 %665, %663
  %667 = icmp ugt i16 %666, 255
  %668 = trunc i16 %666 to i8
  %669 = icmp sgt i16 %666, -1
  %670 = sext i1 %669 to i8
  %671 = select i1 %667, i8 %670, i8 %668
  store i8 %671, ptr @gMCUBufG, align 16, !tbaa !5
  %672 = load i8, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 128), align 16, !tbaa !5
  %673 = zext i8 %672 to i16
  %674 = sub nsw i16 %673, %663
  %675 = icmp ugt i16 %674, 255
  %676 = trunc i16 %674 to i8
  %677 = icmp sgt i16 %674, -1
  %678 = sext i1 %677 to i8
  %679 = select i1 %675, i8 %678, i8 %676
  store i8 %679, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 128), align 16, !tbaa !5
  br label %2165

680:                                              ; preds = %519
  %681 = trunc nuw i64 %107 to i8
  switch i8 %681, label %2165 [
    i8 0, label %682
    i8 1, label %683
    i8 2, label %684
    i8 3, label %727
  ]

682:                                              ; preds = %680
  store i8 %530, ptr @gMCUBufR, align 16, !tbaa !5
  store i8 %530, ptr @gMCUBufG, align 16, !tbaa !5
  store i8 %530, ptr @gMCUBufB, align 16, !tbaa !5
  br label %2165

683:                                              ; preds = %680
  store i8 %530, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 64), align 16, !tbaa !5
  store i8 %530, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 64), align 16, !tbaa !5
  store i8 %530, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 64), align 16, !tbaa !5
  br label %2165

684:                                              ; preds = %680
  %685 = zext i8 %530 to i32
  %686 = mul nuw nsw i32 %685, 88
  %687 = lshr i32 %686, 8
  %688 = trunc nuw nsw i32 %687 to i16
  %689 = add nsw i16 %688, -44
  %690 = load i8, ptr @gMCUBufG, align 16, !tbaa !5
  %691 = zext i8 %690 to i16
  %692 = sub nsw i16 %691, %689
  %693 = icmp ugt i16 %692, 255
  %694 = trunc i16 %692 to i8
  %695 = icmp sgt i16 %692, -1
  %696 = sext i1 %695 to i8
  %697 = select i1 %693, i8 %696, i8 %694
  store i8 %697, ptr @gMCUBufG, align 16, !tbaa !5
  %698 = load i8, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 64), align 16, !tbaa !5
  %699 = zext i8 %698 to i16
  %700 = sub nsw i16 %699, %689
  %701 = icmp ugt i16 %700, 255
  %702 = trunc i16 %700 to i8
  %703 = icmp sgt i16 %700, -1
  %704 = sext i1 %703 to i8
  %705 = select i1 %701, i8 %704, i8 %702
  store i8 %705, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 64), align 16, !tbaa !5
  %706 = mul nuw nsw i32 %685, 198
  %707 = lshr i32 %706, 8
  %708 = add nuw nsw i32 %707, %685
  %709 = trunc nuw nsw i32 %708 to i16
  %710 = add nsw i16 %709, -227
  %711 = load i8, ptr @gMCUBufB, align 16, !tbaa !5
  %712 = zext i8 %711 to i16
  %713 = add nsw i16 %710, %712
  %714 = icmp ugt i16 %713, 255
  %715 = trunc i16 %713 to i8
  %716 = icmp sgt i16 %713, -1
  %717 = sext i1 %716 to i8
  %718 = select i1 %714, i8 %717, i8 %715
  store i8 %718, ptr @gMCUBufB, align 16, !tbaa !5
  %719 = load i8, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 64), align 16, !tbaa !5
  %720 = zext i8 %719 to i16
  %721 = add nsw i16 %710, %720
  %722 = icmp ugt i16 %721, 255
  %723 = trunc i16 %721 to i8
  %724 = icmp sgt i16 %721, -1
  %725 = sext i1 %724 to i8
  %726 = select i1 %722, i8 %725, i8 %723
  store i8 %726, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 64), align 16, !tbaa !5
  br label %2165

727:                                              ; preds = %680
  %728 = zext i8 %530 to i32
  %729 = mul nuw nsw i32 %728, 103
  %730 = lshr i32 %729, 8
  %731 = add nuw nsw i32 %730, %728
  %732 = trunc nuw nsw i32 %731 to i16
  %733 = add nsw i16 %732, -179
  %734 = load i8, ptr @gMCUBufR, align 16, !tbaa !5
  %735 = zext i8 %734 to i16
  %736 = add nsw i16 %733, %735
  %737 = icmp ugt i16 %736, 255
  %738 = trunc i16 %736 to i8
  %739 = icmp sgt i16 %736, -1
  %740 = sext i1 %739 to i8
  %741 = select i1 %737, i8 %740, i8 %738
  store i8 %741, ptr @gMCUBufR, align 16, !tbaa !5
  %742 = load i8, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 64), align 16, !tbaa !5
  %743 = zext i8 %742 to i16
  %744 = add nsw i16 %733, %743
  %745 = icmp ugt i16 %744, 255
  %746 = trunc i16 %744 to i8
  %747 = icmp sgt i16 %744, -1
  %748 = sext i1 %747 to i8
  %749 = select i1 %745, i8 %748, i8 %746
  store i8 %749, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 64), align 16, !tbaa !5
  %750 = mul nuw nsw i32 %728, 183
  %751 = lshr i32 %750, 8
  %752 = trunc nuw nsw i32 %751 to i16
  %753 = add nsw i16 %752, -91
  %754 = load i8, ptr @gMCUBufG, align 16, !tbaa !5
  %755 = zext i8 %754 to i16
  %756 = sub nsw i16 %755, %753
  %757 = icmp ugt i16 %756, 255
  %758 = trunc i16 %756 to i8
  %759 = icmp sgt i16 %756, -1
  %760 = sext i1 %759 to i8
  %761 = select i1 %757, i8 %760, i8 %758
  store i8 %761, ptr @gMCUBufG, align 16, !tbaa !5
  %762 = load i8, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 64), align 16, !tbaa !5
  %763 = zext i8 %762 to i16
  %764 = sub nsw i16 %763, %753
  %765 = icmp ugt i16 %764, 255
  %766 = trunc i16 %764 to i8
  %767 = icmp sgt i16 %764, -1
  %768 = sext i1 %767 to i8
  %769 = select i1 %765, i8 %768, i8 %766
  store i8 %769, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 64), align 16, !tbaa !5
  br label %2165

770:                                              ; preds = %519
  %771 = trunc nuw i64 %107 to i8
  switch i8 %771, label %2165 [
    i8 0, label %772
    i8 1, label %773
    i8 2, label %774
    i8 3, label %775
    i8 4, label %776
    i8 5, label %851
  ]

772:                                              ; preds = %770
  store i8 %530, ptr @gMCUBufR, align 16, !tbaa !5
  store i8 %530, ptr @gMCUBufG, align 16, !tbaa !5
  store i8 %530, ptr @gMCUBufB, align 16, !tbaa !5
  br label %2165

773:                                              ; preds = %770
  store i8 %530, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 64), align 16, !tbaa !5
  store i8 %530, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 64), align 16, !tbaa !5
  store i8 %530, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 64), align 16, !tbaa !5
  br label %2165

774:                                              ; preds = %770
  store i8 %530, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 128), align 16, !tbaa !5
  store i8 %530, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 128), align 16, !tbaa !5
  store i8 %530, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 128), align 16, !tbaa !5
  br label %2165

775:                                              ; preds = %770
  store i8 %530, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 192), align 16, !tbaa !5
  store i8 %530, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 192), align 16, !tbaa !5
  store i8 %530, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 192), align 16, !tbaa !5
  br label %2165

776:                                              ; preds = %770
  %777 = zext i8 %530 to i32
  %778 = mul nuw nsw i32 %777, 88
  %779 = lshr i32 %778, 8
  %780 = trunc nuw nsw i32 %779 to i16
  %781 = add nsw i16 %780, -44
  %782 = load i8, ptr @gMCUBufG, align 16, !tbaa !5
  %783 = zext i8 %782 to i16
  %784 = sub nsw i16 %783, %781
  %785 = icmp ugt i16 %784, 255
  %786 = trunc i16 %784 to i8
  %787 = icmp sgt i16 %784, -1
  %788 = sext i1 %787 to i8
  %789 = select i1 %785, i8 %788, i8 %786
  store i8 %789, ptr @gMCUBufG, align 16, !tbaa !5
  %790 = load i8, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 64), align 16, !tbaa !5
  %791 = zext i8 %790 to i16
  %792 = sub nsw i16 %791, %781
  %793 = icmp ugt i16 %792, 255
  %794 = trunc i16 %792 to i8
  %795 = icmp sgt i16 %792, -1
  %796 = sext i1 %795 to i8
  %797 = select i1 %793, i8 %796, i8 %794
  store i8 %797, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 64), align 16, !tbaa !5
  %798 = load i8, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 128), align 16, !tbaa !5
  %799 = zext i8 %798 to i16
  %800 = sub nsw i16 %799, %781
  %801 = icmp ugt i16 %800, 255
  %802 = trunc i16 %800 to i8
  %803 = icmp sgt i16 %800, -1
  %804 = sext i1 %803 to i8
  %805 = select i1 %801, i8 %804, i8 %802
  store i8 %805, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 128), align 16, !tbaa !5
  %806 = load i8, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 192), align 16, !tbaa !5
  %807 = zext i8 %806 to i16
  %808 = sub nsw i16 %807, %781
  %809 = icmp ugt i16 %808, 255
  %810 = trunc i16 %808 to i8
  %811 = icmp sgt i16 %808, -1
  %812 = sext i1 %811 to i8
  %813 = select i1 %809, i8 %812, i8 %810
  store i8 %813, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 192), align 16, !tbaa !5
  %814 = mul nuw nsw i32 %777, 198
  %815 = lshr i32 %814, 8
  %816 = add nuw nsw i32 %815, %777
  %817 = trunc nuw nsw i32 %816 to i16
  %818 = add nsw i16 %817, -227
  %819 = load i8, ptr @gMCUBufB, align 16, !tbaa !5
  %820 = zext i8 %819 to i16
  %821 = add nsw i16 %818, %820
  %822 = icmp ugt i16 %821, 255
  %823 = trunc i16 %821 to i8
  %824 = icmp sgt i16 %821, -1
  %825 = sext i1 %824 to i8
  %826 = select i1 %822, i8 %825, i8 %823
  store i8 %826, ptr @gMCUBufB, align 16, !tbaa !5
  %827 = load i8, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 64), align 16, !tbaa !5
  %828 = zext i8 %827 to i16
  %829 = add nsw i16 %818, %828
  %830 = icmp ugt i16 %829, 255
  %831 = trunc i16 %829 to i8
  %832 = icmp sgt i16 %829, -1
  %833 = sext i1 %832 to i8
  %834 = select i1 %830, i8 %833, i8 %831
  store i8 %834, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 64), align 16, !tbaa !5
  %835 = load i8, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 128), align 16, !tbaa !5
  %836 = zext i8 %835 to i16
  %837 = add nsw i16 %818, %836
  %838 = icmp ugt i16 %837, 255
  %839 = trunc i16 %837 to i8
  %840 = icmp sgt i16 %837, -1
  %841 = sext i1 %840 to i8
  %842 = select i1 %838, i8 %841, i8 %839
  store i8 %842, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 128), align 16, !tbaa !5
  %843 = load i8, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 192), align 16, !tbaa !5
  %844 = zext i8 %843 to i16
  %845 = add nsw i16 %818, %844
  %846 = icmp ugt i16 %845, 255
  %847 = trunc i16 %845 to i8
  %848 = icmp sgt i16 %845, -1
  %849 = sext i1 %848 to i8
  %850 = select i1 %846, i8 %849, i8 %847
  store i8 %850, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 192), align 16, !tbaa !5
  br label %2165

851:                                              ; preds = %770
  %852 = zext i8 %530 to i32
  %853 = mul nuw nsw i32 %852, 103
  %854 = lshr i32 %853, 8
  %855 = add nuw nsw i32 %854, %852
  %856 = trunc nuw nsw i32 %855 to i16
  %857 = add nsw i16 %856, -179
  %858 = load i8, ptr @gMCUBufR, align 16, !tbaa !5
  %859 = zext i8 %858 to i16
  %860 = add nsw i16 %857, %859
  %861 = icmp ugt i16 %860, 255
  %862 = trunc i16 %860 to i8
  %863 = icmp sgt i16 %860, -1
  %864 = sext i1 %863 to i8
  %865 = select i1 %861, i8 %864, i8 %862
  store i8 %865, ptr @gMCUBufR, align 16, !tbaa !5
  %866 = load i8, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 64), align 16, !tbaa !5
  %867 = zext i8 %866 to i16
  %868 = add nsw i16 %857, %867
  %869 = icmp ugt i16 %868, 255
  %870 = trunc i16 %868 to i8
  %871 = icmp sgt i16 %868, -1
  %872 = sext i1 %871 to i8
  %873 = select i1 %869, i8 %872, i8 %870
  store i8 %873, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 64), align 16, !tbaa !5
  %874 = load i8, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 128), align 16, !tbaa !5
  %875 = zext i8 %874 to i16
  %876 = add nsw i16 %857, %875
  %877 = icmp ugt i16 %876, 255
  %878 = trunc i16 %876 to i8
  %879 = icmp sgt i16 %876, -1
  %880 = sext i1 %879 to i8
  %881 = select i1 %877, i8 %880, i8 %878
  store i8 %881, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 128), align 16, !tbaa !5
  %882 = load i8, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 192), align 16, !tbaa !5
  %883 = zext i8 %882 to i16
  %884 = add nsw i16 %857, %883
  %885 = icmp ugt i16 %884, 255
  %886 = trunc i16 %884 to i8
  %887 = icmp sgt i16 %884, -1
  %888 = sext i1 %887 to i8
  %889 = select i1 %885, i8 %888, i8 %886
  store i8 %889, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 192), align 16, !tbaa !5
  %890 = mul nuw nsw i32 %852, 183
  %891 = lshr i32 %890, 8
  %892 = trunc nuw nsw i32 %891 to i16
  %893 = add nsw i16 %892, -91
  %894 = load i8, ptr @gMCUBufG, align 16, !tbaa !5
  %895 = zext i8 %894 to i16
  %896 = sub nsw i16 %895, %893
  %897 = icmp ugt i16 %896, 255
  %898 = trunc i16 %896 to i8
  %899 = icmp sgt i16 %896, -1
  %900 = sext i1 %899 to i8
  %901 = select i1 %897, i8 %900, i8 %898
  store i8 %901, ptr @gMCUBufG, align 16, !tbaa !5
  %902 = load i8, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 64), align 16, !tbaa !5
  %903 = zext i8 %902 to i16
  %904 = sub nsw i16 %903, %893
  %905 = icmp ugt i16 %904, 255
  %906 = trunc i16 %904 to i8
  %907 = icmp sgt i16 %904, -1
  %908 = sext i1 %907 to i8
  %909 = select i1 %905, i8 %908, i8 %906
  store i8 %909, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 64), align 16, !tbaa !5
  %910 = load i8, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 128), align 16, !tbaa !5
  %911 = zext i8 %910 to i16
  %912 = sub nsw i16 %911, %893
  %913 = icmp ugt i16 %912, 255
  %914 = trunc i16 %912 to i8
  %915 = icmp sgt i16 %912, -1
  %916 = sext i1 %915 to i8
  %917 = select i1 %913, i8 %916, i8 %914
  store i8 %917, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 128), align 16, !tbaa !5
  %918 = load i8, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 192), align 16, !tbaa !5
  %919 = zext i8 %918 to i16
  %920 = sub nsw i16 %919, %893
  %921 = icmp ugt i16 %920, 255
  %922 = trunc i16 %920 to i8
  %923 = icmp sgt i16 %920, -1
  %924 = sext i1 %923 to i8
  %925 = select i1 %921, i8 %924, i8 %922
  store i8 %925, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 192), align 16, !tbaa !5
  br label %2165

926:                                              ; preds = %519
  unreachable

927:                                              ; preds = %316, %1285
  %928 = phi i8 [ %1286, %1285 ], [ %317, %316 ]
  %929 = phi i16 [ %1287, %1285 ], [ %318, %316 ]
  %930 = phi i8 [ %1288, %1285 ], [ 1, %316 ]
  %931 = icmp eq i8 %928, 0
  br i1 %931, label %932, label %939

932:                                              ; preds = %927
  %933 = tail call fastcc zeroext i8 @getOctet(i8 noundef zeroext 1)
  %934 = load i16, ptr @gBitBuf, align 2, !tbaa !8
  %935 = zext i8 %933 to i16
  %936 = or i16 %934, %935
  %937 = load i8, ptr @gBitsLeft, align 1, !tbaa !5
  %938 = add i8 %937, 8
  br label %939

939:                                              ; preds = %932, %927
  %940 = phi i16 [ %936, %932 ], [ %929, %927 ]
  %941 = phi i8 [ %938, %932 ], [ %928, %927 ]
  %942 = lshr i16 %929, 15
  %943 = add i8 %941, -1
  store i8 %943, ptr @gBitsLeft, align 1, !tbaa !5
  %944 = shl i16 %940, 1
  store i16 %944, ptr @gBitBuf, align 2, !tbaa !8
  br label %945

945:                                              ; preds = %1027, %939
  %946 = phi i64 [ %956, %1027 ], [ 0, %939 ]
  %947 = phi i8 [ %1030, %1027 ], [ %943, %939 ]
  %948 = phi i16 [ %1031, %1027 ], [ %944, %939 ]
  %949 = phi i16 [ %1032, %1027 ], [ %942, %939 ]
  %950 = getelementptr inbounds nuw [16 x i16], ptr %332, i64 0, i64 %946
  %951 = load i16, ptr %950, align 2, !tbaa !8
  %952 = icmp ule i16 %949, %951
  %953 = icmp ne i16 %951, -1
  %954 = and i1 %952, %953
  br i1 %954, label %1034, label %955

955:                                              ; preds = %945
  %956 = add nuw nsw i64 %946, 1
  %957 = icmp eq i8 %947, 0
  br i1 %957, label %958, label %1027

958:                                              ; preds = %955
  %959 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %960 = icmp eq i8 %959, 0
  br i1 %960, label %961, label %970

961:                                              ; preds = %958
  store i8 4, ptr @gInBufOfs, align 1, !tbaa !5
  %962 = load ptr, ptr @g_pNeedBytesCallback, align 8, !tbaa !10
  %963 = load ptr, ptr @g_pCallback_data, align 8, !tbaa !10
  %964 = tail call zeroext i8 %962(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @gInBuf, i64 4), i8 noundef zeroext -4, ptr noundef nonnull @gInBufLeft, ptr noundef %963) #5
  %965 = icmp eq i8 %964, 0
  br i1 %965, label %967, label %966

966:                                              ; preds = %961
  store i8 %964, ptr @gCallbackStatus, align 1, !tbaa !5
  br label %967

967:                                              ; preds = %966, %961
  %968 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %969 = icmp eq i8 %968, 0
  br i1 %969, label %979, label %970

970:                                              ; preds = %967, %958
  %971 = phi i8 [ %968, %967 ], [ %959, %958 ]
  %972 = add i8 %971, -1
  store i8 %972, ptr @gInBufLeft, align 1, !tbaa !5
  %973 = load i8, ptr @gInBufOfs, align 1, !tbaa !5
  %974 = add i8 %973, 1
  store i8 %974, ptr @gInBufOfs, align 1, !tbaa !5
  %975 = zext i8 %973 to i64
  %976 = getelementptr inbounds nuw [256 x i8], ptr @gInBuf, i64 0, i64 %975
  %977 = load i8, ptr %976, align 1, !tbaa !5
  %978 = icmp eq i8 %977, -1
  br i1 %978, label %983, label %1020

979:                                              ; preds = %967
  %980 = load i8, ptr @gTemFlag, align 1, !tbaa !5
  %981 = xor i8 %980, -1
  store i8 %981, ptr @gTemFlag, align 1, !tbaa !5
  %982 = icmp eq i8 %980, -1
  br i1 %982, label %1020, label %985

983:                                              ; preds = %970
  %984 = icmp eq i8 %972, 0
  br i1 %984, label %985, label %1000

985:                                              ; preds = %983, %979
  store i8 4, ptr @gInBufOfs, align 1, !tbaa !5
  %986 = load ptr, ptr @g_pNeedBytesCallback, align 8, !tbaa !10
  %987 = load ptr, ptr @g_pCallback_data, align 8, !tbaa !10
  %988 = tail call zeroext i8 %986(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @gInBuf, i64 4), i8 noundef zeroext -4, ptr noundef nonnull @gInBufLeft, ptr noundef %987) #5
  %989 = icmp eq i8 %988, 0
  br i1 %989, label %991, label %990

990:                                              ; preds = %985
  store i8 %988, ptr @gCallbackStatus, align 1, !tbaa !5
  br label %991

991:                                              ; preds = %990, %985
  %992 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %993 = icmp eq i8 %992, 0
  %994 = load i8, ptr @gInBufOfs, align 1, !tbaa !5
  br i1 %993, label %995, label %1000

995:                                              ; preds = %991
  %996 = load i8, ptr @gTemFlag, align 1, !tbaa !5
  %997 = xor i8 %996, -1
  store i8 %997, ptr @gTemFlag, align 1, !tbaa !5
  %998 = icmp eq i8 %996, -1
  %999 = select i1 %998, i8 -39, i8 -1
  br label %1009

1000:                                             ; preds = %991, %983
  %1001 = phi i8 [ %994, %991 ], [ %974, %983 ]
  %1002 = phi i8 [ %992, %991 ], [ %972, %983 ]
  %1003 = add i8 %1002, -1
  store i8 %1003, ptr @gInBufLeft, align 1, !tbaa !5
  %1004 = add i8 %1001, 1
  store i8 %1004, ptr @gInBufOfs, align 1, !tbaa !5
  %1005 = zext i8 %1001 to i64
  %1006 = getelementptr inbounds nuw [256 x i8], ptr @gInBuf, i64 0, i64 %1005
  %1007 = load i8, ptr %1006, align 1, !tbaa !5
  %1008 = icmp eq i8 %1007, 0
  br i1 %1008, label %1020, label %1009

1009:                                             ; preds = %1000, %995
  %1010 = phi i8 [ 0, %995 ], [ %1003, %1000 ]
  %1011 = phi i8 [ %994, %995 ], [ %1004, %1000 ]
  %1012 = phi i8 [ %999, %995 ], [ %1007, %1000 ]
  %1013 = add i8 %1011, -1
  %1014 = zext i8 %1013 to i64
  %1015 = getelementptr inbounds nuw [256 x i8], ptr @gInBuf, i64 0, i64 %1014
  store i8 %1012, ptr %1015, align 1, !tbaa !5
  %1016 = add i8 %1011, -2
  store i8 %1016, ptr @gInBufOfs, align 1, !tbaa !5
  %1017 = zext i8 %1016 to i64
  %1018 = getelementptr inbounds nuw [256 x i8], ptr @gInBuf, i64 0, i64 %1017
  store i8 -1, ptr %1018, align 1, !tbaa !5
  %1019 = add i8 %1010, 2
  store i8 %1019, ptr @gInBufLeft, align 1, !tbaa !5
  br label %1020

1020:                                             ; preds = %1009, %1000, %979, %970
  %1021 = phi i8 [ -39, %979 ], [ -1, %1000 ], [ -1, %1009 ], [ %977, %970 ]
  %1022 = load i16, ptr @gBitBuf, align 2, !tbaa !8
  %1023 = zext i8 %1021 to i16
  %1024 = or i16 %1022, %1023
  %1025 = load i8, ptr @gBitsLeft, align 1, !tbaa !5
  %1026 = add i8 %1025, 8
  br label %1027

1027:                                             ; preds = %1020, %955
  %1028 = phi i16 [ %1024, %1020 ], [ %948, %955 ]
  %1029 = phi i8 [ %1026, %1020 ], [ %947, %955 ]
  %1030 = add i8 %1029, -1
  store i8 %1030, ptr @gBitsLeft, align 1, !tbaa !5
  %1031 = shl i16 %1028, 1
  store i16 %1031, ptr @gBitBuf, align 2, !tbaa !8
  %1032 = tail call i16 @llvm.fshl.i16(i16 %949, i16 %948, i16 1)
  %1033 = icmp eq i64 %956, 16
  br i1 %1033, label %1290, label %945

1034:                                             ; preds = %945
  %1035 = getelementptr inbounds nuw [16 x i8], ptr %333, i64 0, i64 %946
  %1036 = load i8, ptr %1035, align 1, !tbaa !5
  %1037 = trunc i16 %949 to i8
  %1038 = getelementptr inbounds nuw [16 x i16], ptr %330, i64 0, i64 %946
  %1039 = load i16, ptr %1038, align 2, !tbaa !8
  %1040 = trunc i16 %1039 to i8
  %1041 = add i8 %1036, %1037
  %1042 = sub i8 %1041, %1040
  %1043 = zext i8 %1042 to i64
  %1044 = getelementptr inbounds nuw i8, ptr %331, i64 %1043
  %1045 = load i8, ptr %1044, align 1, !tbaa !5
  %1046 = and i8 %1045, 15
  %1047 = icmp eq i8 %1046, 0
  br i1 %1047, label %1199, label %1048

1048:                                             ; preds = %1034
  %1049 = icmp samesign ugt i8 %1046, 8
  br i1 %1049, label %1050, label %1071

1050:                                             ; preds = %1048
  %1051 = add nsw i8 %1046, -8
  %1052 = zext nneg i8 %947 to i32
  %1053 = zext i16 %948 to i32
  %1054 = shl i32 %1053, %1052
  %1055 = trunc i32 %1054 to i16
  store i16 %1055, ptr @gBitBuf, align 2, !tbaa !8
  %1056 = tail call fastcc zeroext i8 @getOctet(i8 noundef zeroext 1)
  %1057 = load i16, ptr @gBitBuf, align 2, !tbaa !8
  %1058 = zext i8 %1056 to i16
  %1059 = or i16 %1057, %1058
  %1060 = load i8, ptr @gBitsLeft, align 1, !tbaa !5
  %1061 = zext i8 %1060 to i32
  %1062 = sub nsw i32 8, %1061
  %1063 = zext i16 %1059 to i32
  %1064 = shl nuw nsw i32 %1063, %1062
  %1065 = trunc i32 %1064 to i16
  %1066 = and i32 %1053, 65280
  %1067 = lshr i32 %1064, 8
  %1068 = and i32 %1067, 255
  %1069 = or disjoint i32 %1068, %1066
  %1070 = trunc nuw i32 %1069 to i16
  br label %1071

1071:                                             ; preds = %1050, %1048
  %1072 = phi i16 [ %1065, %1050 ], [ %948, %1048 ]
  %1073 = phi i8 [ %1060, %1050 ], [ %947, %1048 ]
  %1074 = phi i8 [ %1051, %1050 ], [ %1046, %1048 ]
  %1075 = phi i16 [ %1070, %1050 ], [ %948, %1048 ]
  %1076 = zext nneg i8 %1074 to i32
  %1077 = icmp ult i8 %1073, %1074
  %1078 = zext i16 %1072 to i32
  br i1 %1077, label %1079, label %1094

1079:                                             ; preds = %1071
  %1080 = zext nneg i8 %1073 to i32
  %1081 = shl nuw nsw i32 %1078, %1080
  %1082 = trunc i32 %1081 to i16
  store i16 %1082, ptr @gBitBuf, align 2, !tbaa !8
  %1083 = tail call fastcc zeroext i8 @getOctet(i8 noundef zeroext 1)
  %1084 = load i16, ptr @gBitBuf, align 2, !tbaa !8
  %1085 = zext i8 %1083 to i16
  %1086 = or i16 %1084, %1085
  %1087 = load i8, ptr @gBitsLeft, align 1, !tbaa !5
  %1088 = zext i8 %1087 to i32
  %1089 = sub nsw i32 %1076, %1088
  %1090 = zext i16 %1086 to i32
  %1091 = shl nuw nsw i32 %1090, %1089
  %1092 = sub i8 %1087, %1074
  %1093 = add i8 %1092, 8
  br label %1097

1094:                                             ; preds = %1071
  %1095 = sub nuw i8 %1073, %1074
  %1096 = shl nuw nsw i32 %1078, %1076
  br label %1097

1097:                                             ; preds = %1094, %1079
  %1098 = phi i32 [ %1091, %1079 ], [ %1096, %1094 ]
  %1099 = phi i8 [ %1093, %1079 ], [ %1095, %1094 ]
  %1100 = trunc i32 %1098 to i16
  store i16 %1100, ptr @gBitBuf, align 2, !tbaa !8
  store i8 %1099, ptr @gBitsLeft, align 1, !tbaa !5
  %1101 = zext i16 %1075 to i32
  %1102 = sub nuw nsw i8 16, %1046
  %1103 = zext nneg i8 %1102 to i32
  %1104 = lshr i32 %1101, %1103
  %1105 = trunc nuw nsw i32 %1104 to i16
  %1106 = icmp ult i8 %1045, 16
  br i1 %1106, label %1162, label %1107

1107:                                             ; preds = %1097
  %1108 = lshr i8 %1045, 4
  %1109 = add nuw nsw i8 %1108, %930
  %1110 = icmp samesign ugt i8 %1109, 63
  br i1 %1110, label %2170, label %1111

1111:                                             ; preds = %1107
  %1112 = zext nneg i8 %1108 to i16
  %1113 = zext nneg i8 %930 to i64
  %1114 = and i16 %1112, 3
  %1115 = icmp eq i16 %1114, 0
  br i1 %1115, label %1128, label %1116

1116:                                             ; preds = %1111, %1116
  %1117 = phi i64 [ %1120, %1116 ], [ %1113, %1111 ]
  %1118 = phi i16 [ %1125, %1116 ], [ %1112, %1111 ]
  %1119 = phi i16 [ %1126, %1116 ], [ 0, %1111 ]
  %1120 = add nuw nsw i64 %1117, 1
  %1121 = getelementptr inbounds nuw [64 x i8], ptr @ZAG, i64 0, i64 %1117
  %1122 = load i8, ptr %1121, align 1, !tbaa !5
  %1123 = sext i8 %1122 to i64
  %1124 = getelementptr inbounds [64 x i16], ptr @gCoeffBuf, i64 0, i64 %1123
  store i16 0, ptr %1124, align 2, !tbaa !8
  %1125 = add nsw i16 %1118, -1
  %1126 = add i16 %1119, 1
  %1127 = icmp eq i16 %1126, %1114
  br i1 %1127, label %1128, label %1116, !llvm.loop !18

1128:                                             ; preds = %1116, %1111
  %1129 = phi i64 [ poison, %1111 ], [ %1120, %1116 ]
  %1130 = phi i64 [ %1113, %1111 ], [ %1120, %1116 ]
  %1131 = phi i16 [ %1112, %1111 ], [ %1125, %1116 ]
  %1132 = add nsw i8 %1108, -1
  %1133 = icmp ult i8 %1132, 3
  br i1 %1133, label %1159, label %1134

1134:                                             ; preds = %1128, %1134
  %1135 = phi i64 [ %1152, %1134 ], [ %1130, %1128 ]
  %1136 = phi i16 [ %1157, %1134 ], [ %1131, %1128 ]
  %1137 = add nuw nsw i64 %1135, 1
  %1138 = getelementptr inbounds nuw [64 x i8], ptr @ZAG, i64 0, i64 %1135
  %1139 = load i8, ptr %1138, align 1, !tbaa !5
  %1140 = sext i8 %1139 to i64
  %1141 = getelementptr inbounds [64 x i16], ptr @gCoeffBuf, i64 0, i64 %1140
  store i16 0, ptr %1141, align 2, !tbaa !8
  %1142 = add nuw nsw i64 %1135, 2
  %1143 = getelementptr inbounds nuw [64 x i8], ptr @ZAG, i64 0, i64 %1137
  %1144 = load i8, ptr %1143, align 1, !tbaa !5
  %1145 = sext i8 %1144 to i64
  %1146 = getelementptr inbounds [64 x i16], ptr @gCoeffBuf, i64 0, i64 %1145
  store i16 0, ptr %1146, align 2, !tbaa !8
  %1147 = add nuw nsw i64 %1135, 3
  %1148 = getelementptr inbounds nuw [64 x i8], ptr @ZAG, i64 0, i64 %1142
  %1149 = load i8, ptr %1148, align 1, !tbaa !5
  %1150 = sext i8 %1149 to i64
  %1151 = getelementptr inbounds [64 x i16], ptr @gCoeffBuf, i64 0, i64 %1150
  store i16 0, ptr %1151, align 2, !tbaa !8
  %1152 = add nuw nsw i64 %1135, 4
  %1153 = getelementptr inbounds nuw [64 x i8], ptr @ZAG, i64 0, i64 %1147
  %1154 = load i8, ptr %1153, align 1, !tbaa !5
  %1155 = sext i8 %1154 to i64
  %1156 = getelementptr inbounds [64 x i16], ptr @gCoeffBuf, i64 0, i64 %1155
  store i16 0, ptr %1156, align 2, !tbaa !8
  %1157 = add nsw i16 %1136, -4
  %1158 = icmp eq i16 %1157, 0
  br i1 %1158, label %1159, label %1134, !llvm.loop !20

1159:                                             ; preds = %1134, %1128
  %1160 = phi i64 [ %1129, %1128 ], [ %1152, %1134 ]
  %1161 = trunc nuw nsw i64 %1160 to i8
  br label %1162

1162:                                             ; preds = %1159, %1097
  %1163 = phi i8 [ %930, %1097 ], [ %1161, %1159 ]
  switch i8 %1046, label %1187 [
    i8 15, label %1177
    i8 1, label %1178
    i8 2, label %1164
    i8 3, label %1165
    i8 4, label %1166
    i8 5, label %1167
    i8 6, label %1168
    i8 7, label %1169
    i8 8, label %1170
    i8 9, label %1171
    i8 10, label %1172
    i8 11, label %1173
    i8 12, label %1174
    i8 13, label %1175
    i8 14, label %1176
    i8 0, label %1188
  ]

1164:                                             ; preds = %1162
  br label %1178

1165:                                             ; preds = %1162
  br label %1178

1166:                                             ; preds = %1162
  br label %1178

1167:                                             ; preds = %1162
  br label %1178

1168:                                             ; preds = %1162
  br label %1178

1169:                                             ; preds = %1162
  br label %1178

1170:                                             ; preds = %1162
  br label %1178

1171:                                             ; preds = %1162
  br label %1178

1172:                                             ; preds = %1162
  br label %1178

1173:                                             ; preds = %1162
  br label %1178

1174:                                             ; preds = %1162
  br label %1178

1175:                                             ; preds = %1162
  br label %1178

1176:                                             ; preds = %1162
  br label %1178

1177:                                             ; preds = %1162
  br label %1178

1178:                                             ; preds = %1177, %1176, %1175, %1174, %1173, %1172, %1171, %1170, %1169, %1168, %1167, %1166, %1165, %1164, %1162
  %1179 = phi i16 [ 16384, %1177 ], [ 8192, %1176 ], [ 4096, %1175 ], [ 2048, %1174 ], [ 1024, %1173 ], [ 512, %1172 ], [ 256, %1171 ], [ 128, %1170 ], [ 64, %1169 ], [ 32, %1168 ], [ 16, %1167 ], [ 8, %1166 ], [ 4, %1165 ], [ 2, %1164 ], [ 1, %1162 ]
  %1180 = icmp samesign ugt i16 %1179, %1105
  br i1 %1180, label %1181, label %1188

1181:                                             ; preds = %1178
  %1182 = add nsw i8 %1046, -1
  %1183 = sext i8 %1182 to i64
  %1184 = getelementptr inbounds [15 x i16], ptr @switch.table.pjpeg_decode_mcu.2, i64 0, i64 %1183
  %1185 = load i16, ptr %1184, align 2
  %1186 = add nsw i16 %1185, %1105
  br label %1188

1187:                                             ; preds = %1162
  unreachable

1188:                                             ; preds = %1181, %1178, %1162
  %1189 = phi i16 [ %1186, %1181 ], [ %1105, %1178 ], [ %1105, %1162 ]
  %1190 = zext i8 %1163 to i64
  %1191 = getelementptr inbounds nuw i16, ptr %116, i64 %1190
  %1192 = load i16, ptr %1191, align 2, !tbaa !8
  %1193 = mul i16 %1192, %1189
  %1194 = getelementptr inbounds nuw [64 x i8], ptr @ZAG, i64 0, i64 %1190
  %1195 = load i8, ptr %1194, align 1, !tbaa !5
  %1196 = sext i8 %1195 to i64
  %1197 = getelementptr inbounds [64 x i16], ptr @gCoeffBuf, i64 0, i64 %1196
  store i16 %1193, ptr %1197, align 2, !tbaa !8
  %1198 = add i8 %1163, 1
  br label %1285

1199:                                             ; preds = %1034
  %1200 = icmp eq i8 %1045, -16
  br i1 %1200, label %1201, label %1290

1201:                                             ; preds = %1199
  %1202 = icmp samesign ugt i8 %930, 48
  br i1 %1202, label %2170, label %1203

1203:                                             ; preds = %1201
  %1204 = zext nneg i8 %930 to i64
  %1205 = add nuw nsw i64 %1204, 1
  %1206 = getelementptr inbounds nuw [64 x i8], ptr @ZAG, i64 0, i64 %1204
  %1207 = load i8, ptr %1206, align 1, !tbaa !5
  %1208 = sext i8 %1207 to i64
  %1209 = getelementptr inbounds [64 x i16], ptr @gCoeffBuf, i64 0, i64 %1208
  store i16 0, ptr %1209, align 2, !tbaa !8
  %1210 = add nuw nsw i64 %1204, 2
  %1211 = getelementptr inbounds nuw [64 x i8], ptr @ZAG, i64 0, i64 %1205
  %1212 = load i8, ptr %1211, align 1, !tbaa !5
  %1213 = sext i8 %1212 to i64
  %1214 = getelementptr inbounds [64 x i16], ptr @gCoeffBuf, i64 0, i64 %1213
  store i16 0, ptr %1214, align 2, !tbaa !8
  %1215 = add nuw nsw i64 %1204, 3
  %1216 = getelementptr inbounds nuw [64 x i8], ptr @ZAG, i64 0, i64 %1210
  %1217 = load i8, ptr %1216, align 1, !tbaa !5
  %1218 = sext i8 %1217 to i64
  %1219 = getelementptr inbounds [64 x i16], ptr @gCoeffBuf, i64 0, i64 %1218
  store i16 0, ptr %1219, align 2, !tbaa !8
  %1220 = add nuw nsw i64 %1204, 4
  %1221 = getelementptr inbounds nuw [64 x i8], ptr @ZAG, i64 0, i64 %1215
  %1222 = load i8, ptr %1221, align 1, !tbaa !5
  %1223 = sext i8 %1222 to i64
  %1224 = getelementptr inbounds [64 x i16], ptr @gCoeffBuf, i64 0, i64 %1223
  store i16 0, ptr %1224, align 2, !tbaa !8
  %1225 = add nuw nsw i64 %1204, 5
  %1226 = getelementptr inbounds nuw [64 x i8], ptr @ZAG, i64 0, i64 %1220
  %1227 = load i8, ptr %1226, align 1, !tbaa !5
  %1228 = sext i8 %1227 to i64
  %1229 = getelementptr inbounds [64 x i16], ptr @gCoeffBuf, i64 0, i64 %1228
  store i16 0, ptr %1229, align 2, !tbaa !8
  %1230 = add nuw nsw i64 %1204, 6
  %1231 = getelementptr inbounds nuw [64 x i8], ptr @ZAG, i64 0, i64 %1225
  %1232 = load i8, ptr %1231, align 1, !tbaa !5
  %1233 = sext i8 %1232 to i64
  %1234 = getelementptr inbounds [64 x i16], ptr @gCoeffBuf, i64 0, i64 %1233
  store i16 0, ptr %1234, align 2, !tbaa !8
  %1235 = add nuw nsw i64 %1204, 7
  %1236 = getelementptr inbounds nuw [64 x i8], ptr @ZAG, i64 0, i64 %1230
  %1237 = load i8, ptr %1236, align 1, !tbaa !5
  %1238 = sext i8 %1237 to i64
  %1239 = getelementptr inbounds [64 x i16], ptr @gCoeffBuf, i64 0, i64 %1238
  store i16 0, ptr %1239, align 2, !tbaa !8
  %1240 = add nuw nsw i64 %1204, 8
  %1241 = getelementptr inbounds nuw [64 x i8], ptr @ZAG, i64 0, i64 %1235
  %1242 = load i8, ptr %1241, align 1, !tbaa !5
  %1243 = sext i8 %1242 to i64
  %1244 = getelementptr inbounds [64 x i16], ptr @gCoeffBuf, i64 0, i64 %1243
  store i16 0, ptr %1244, align 2, !tbaa !8
  %1245 = add nuw nsw i64 %1204, 9
  %1246 = getelementptr inbounds nuw [64 x i8], ptr @ZAG, i64 0, i64 %1240
  %1247 = load i8, ptr %1246, align 1, !tbaa !5
  %1248 = sext i8 %1247 to i64
  %1249 = getelementptr inbounds [64 x i16], ptr @gCoeffBuf, i64 0, i64 %1248
  store i16 0, ptr %1249, align 2, !tbaa !8
  %1250 = add nuw nsw i64 %1204, 10
  %1251 = getelementptr inbounds nuw [64 x i8], ptr @ZAG, i64 0, i64 %1245
  %1252 = load i8, ptr %1251, align 1, !tbaa !5
  %1253 = sext i8 %1252 to i64
  %1254 = getelementptr inbounds [64 x i16], ptr @gCoeffBuf, i64 0, i64 %1253
  store i16 0, ptr %1254, align 2, !tbaa !8
  %1255 = add nuw nsw i64 %1204, 11
  %1256 = getelementptr inbounds nuw [64 x i8], ptr @ZAG, i64 0, i64 %1250
  %1257 = load i8, ptr %1256, align 1, !tbaa !5
  %1258 = sext i8 %1257 to i64
  %1259 = getelementptr inbounds [64 x i16], ptr @gCoeffBuf, i64 0, i64 %1258
  store i16 0, ptr %1259, align 2, !tbaa !8
  %1260 = add nuw nsw i64 %1204, 12
  %1261 = getelementptr inbounds nuw [64 x i8], ptr @ZAG, i64 0, i64 %1255
  %1262 = load i8, ptr %1261, align 1, !tbaa !5
  %1263 = sext i8 %1262 to i64
  %1264 = getelementptr inbounds [64 x i16], ptr @gCoeffBuf, i64 0, i64 %1263
  store i16 0, ptr %1264, align 2, !tbaa !8
  %1265 = add nuw nsw i64 %1204, 13
  %1266 = getelementptr inbounds nuw [64 x i8], ptr @ZAG, i64 0, i64 %1260
  %1267 = load i8, ptr %1266, align 1, !tbaa !5
  %1268 = sext i8 %1267 to i64
  %1269 = getelementptr inbounds [64 x i16], ptr @gCoeffBuf, i64 0, i64 %1268
  store i16 0, ptr %1269, align 2, !tbaa !8
  %1270 = add nuw nsw i64 %1204, 14
  %1271 = getelementptr inbounds nuw [64 x i8], ptr @ZAG, i64 0, i64 %1265
  %1272 = load i8, ptr %1271, align 1, !tbaa !5
  %1273 = sext i8 %1272 to i64
  %1274 = getelementptr inbounds [64 x i16], ptr @gCoeffBuf, i64 0, i64 %1273
  store i16 0, ptr %1274, align 2, !tbaa !8
  %1275 = add nuw nsw i64 %1204, 15
  %1276 = getelementptr inbounds nuw [64 x i8], ptr @ZAG, i64 0, i64 %1270
  %1277 = load i8, ptr %1276, align 1, !tbaa !5
  %1278 = sext i8 %1277 to i64
  %1279 = getelementptr inbounds [64 x i16], ptr @gCoeffBuf, i64 0, i64 %1278
  store i16 0, ptr %1279, align 2, !tbaa !8
  %1280 = add nuw nsw i8 %930, 16
  %1281 = getelementptr inbounds nuw [64 x i8], ptr @ZAG, i64 0, i64 %1275
  %1282 = load i8, ptr %1281, align 1, !tbaa !5
  %1283 = sext i8 %1282 to i64
  %1284 = getelementptr inbounds [64 x i16], ptr @gCoeffBuf, i64 0, i64 %1283
  store i16 0, ptr %1284, align 2, !tbaa !8
  br label %1285

1285:                                             ; preds = %1203, %1188
  %1286 = phi i8 [ %1099, %1188 ], [ %947, %1203 ]
  %1287 = phi i16 [ %1100, %1188 ], [ %948, %1203 ]
  %1288 = phi i8 [ %1198, %1188 ], [ %1280, %1203 ]
  %1289 = icmp ult i8 %1288, 64
  br i1 %1289, label %927, label %1301, !llvm.loop !21

1290:                                             ; preds = %1199, %1027
  %1291 = zext nneg i8 %930 to i64
  br label %1292

1292:                                             ; preds = %1292, %1290
  %1293 = phi i64 [ %1291, %1290 ], [ %1294, %1292 ]
  %1294 = add nuw nsw i64 %1293, 1
  %1295 = getelementptr inbounds nuw [64 x i8], ptr @ZAG, i64 0, i64 %1293
  %1296 = load i8, ptr %1295, align 1, !tbaa !5
  %1297 = sext i8 %1296 to i64
  %1298 = getelementptr inbounds [64 x i16], ptr @gCoeffBuf, i64 0, i64 %1297
  store i16 0, ptr %1298, align 2, !tbaa !8
  %1299 = and i64 %1294, 255
  %1300 = icmp eq i64 %1299, 64
  br i1 %1300, label %1301, label %1292, !llvm.loop !22

1301:                                             ; preds = %1285, %1292
  br label %1302

1302:                                             ; preds = %1301, %1384
  %1303 = phi i8 [ %1393, %1384 ], [ 0, %1301 ]
  %1304 = phi ptr [ %1392, %1384 ], [ @gCoeffBuf, %1301 ]
  %1305 = getelementptr inbounds nuw i8, ptr %1304, i64 2
  %1306 = load i16, ptr %1305, align 2, !tbaa !8
  %1307 = getelementptr inbounds nuw i8, ptr %1304, i64 4
  %1308 = load i16, ptr %1307, align 2, !tbaa !8
  %1309 = getelementptr inbounds nuw i8, ptr %1304, i64 6
  %1310 = load i16, ptr %1309, align 2, !tbaa !8
  %1311 = getelementptr inbounds nuw i8, ptr %1304, i64 8
  %1312 = load i16, ptr %1311, align 2, !tbaa !8
  %1313 = getelementptr inbounds nuw i8, ptr %1304, i64 10
  %1314 = load i16, ptr %1313, align 2, !tbaa !8
  %1315 = getelementptr inbounds nuw i8, ptr %1304, i64 12
  %1316 = load i16, ptr %1315, align 2, !tbaa !8
  %1317 = getelementptr inbounds nuw i8, ptr %1304, i64 14
  %1318 = load i16, ptr %1317, align 2, !tbaa !8
  %1319 = or i16 %1308, %1306
  %1320 = or i16 %1319, %1310
  %1321 = or i16 %1320, %1312
  %1322 = or i16 %1321, %1314
  %1323 = or i16 %1322, %1316
  %1324 = or i16 %1323, %1318
  %1325 = icmp eq i16 %1324, 0
  br i1 %1325, label %1326, label %1328

1326:                                             ; preds = %1302
  %1327 = load i16, ptr %1304, align 2, !tbaa !8
  br label %1384

1328:                                             ; preds = %1302
  %1329 = sub i16 %1314, %1310
  %1330 = add i16 %1314, %1310
  %1331 = add i16 %1318, %1306
  %1332 = sub i16 %1306, %1318
  %1333 = sub i16 %1329, %1332
  %1334 = sext i16 %1333 to i32
  %1335 = mul nsw i32 %1334, 196
  %1336 = add nsw i32 %1335, 128
  %1337 = lshr i32 %1336, 8
  %1338 = trunc i32 %1337 to i16
  %1339 = sext i16 %1332 to i32
  %1340 = mul nsw i32 %1339, 277
  %1341 = add nsw i32 %1340, 128
  %1342 = lshr i32 %1341, 8
  %1343 = trunc i32 %1342 to i16
  %1344 = sext i16 %1329 to i32
  %1345 = mul nsw i32 %1344, 669
  %1346 = add nsw i32 %1345, 128
  %1347 = lshr i32 %1346, 8
  %1348 = trunc i32 %1347 to i16
  %1349 = sub i16 %1338, %1348
  %1350 = sub i16 %1331, %1330
  %1351 = add i16 %1331, %1330
  %1352 = add i16 %1351, %1338
  %1353 = sub i16 %1343, %1352
  %1354 = sext i16 %1350 to i32
  %1355 = mul nsw i32 %1354, 362
  %1356 = add nsw i32 %1355, 128
  %1357 = lshr i32 %1356, 8
  %1358 = trunc i32 %1357 to i16
  %1359 = sub i16 %1358, %1353
  %1360 = add i16 %1359, %1349
  %1361 = load i16, ptr %1304, align 2, !tbaa !8
  %1362 = add i16 %1361, %1312
  %1363 = sub i16 %1361, %1312
  %1364 = sub i16 %1308, %1316
  %1365 = add i16 %1316, %1308
  %1366 = sext i16 %1364 to i32
  %1367 = mul nsw i32 %1366, 362
  %1368 = add nsw i32 %1367, 128
  %1369 = lshr i32 %1368, 8
  %1370 = trunc i32 %1369 to i16
  %1371 = sub i16 %1370, %1365
  %1372 = add i16 %1362, %1365
  %1373 = sub i16 %1362, %1365
  %1374 = add i16 %1363, %1371
  %1375 = sub i16 %1363, %1371
  %1376 = add i16 %1372, %1351
  store i16 %1376, ptr %1304, align 2, !tbaa !8
  %1377 = add i16 %1374, %1353
  %1378 = add i16 %1375, %1359
  %1379 = sub i16 %1373, %1360
  %1380 = add i16 %1373, %1360
  %1381 = sub i16 %1375, %1359
  %1382 = sub i16 %1374, %1353
  %1383 = sub i16 %1372, %1351
  br label %1384

1384:                                             ; preds = %1328, %1326
  %1385 = phi i16 [ %1327, %1326 ], [ %1377, %1328 ]
  %1386 = phi i16 [ %1327, %1326 ], [ %1378, %1328 ]
  %1387 = phi i16 [ %1327, %1326 ], [ %1379, %1328 ]
  %1388 = phi i16 [ %1327, %1326 ], [ %1380, %1328 ]
  %1389 = phi i16 [ %1327, %1326 ], [ %1381, %1328 ]
  %1390 = phi i16 [ %1327, %1326 ], [ %1382, %1328 ]
  %1391 = phi i16 [ %1327, %1326 ], [ %1383, %1328 ]
  store i16 %1385, ptr %1305, align 2, !tbaa !8
  store i16 %1386, ptr %1307, align 2, !tbaa !8
  store i16 %1387, ptr %1309, align 2, !tbaa !8
  store i16 %1388, ptr %1311, align 2, !tbaa !8
  store i16 %1389, ptr %1313, align 2, !tbaa !8
  store i16 %1390, ptr %1315, align 2, !tbaa !8
  store i16 %1391, ptr %1317, align 2, !tbaa !8
  %1392 = getelementptr inbounds nuw i8, ptr %1304, i64 16
  %1393 = add nuw nsw i8 %1303, 1
  %1394 = icmp eq i8 %1393, 8
  br i1 %1394, label %1395, label %1302, !llvm.loop !23

1395:                                             ; preds = %1384, %1567
  %1396 = phi i8 [ %1574, %1567 ], [ 0, %1384 ]
  %1397 = phi ptr [ %1573, %1567 ], [ @gCoeffBuf, %1384 ]
  %1398 = getelementptr inbounds nuw i8, ptr %1397, i64 16
  %1399 = load i16, ptr %1398, align 2, !tbaa !8
  %1400 = getelementptr inbounds nuw i8, ptr %1397, i64 32
  %1401 = load i16, ptr %1400, align 2, !tbaa !8
  %1402 = getelementptr inbounds nuw i8, ptr %1397, i64 48
  %1403 = load i16, ptr %1402, align 2, !tbaa !8
  %1404 = getelementptr inbounds nuw i8, ptr %1397, i64 64
  %1405 = load i16, ptr %1404, align 2, !tbaa !8
  %1406 = getelementptr inbounds nuw i8, ptr %1397, i64 80
  %1407 = load i16, ptr %1406, align 2, !tbaa !8
  %1408 = getelementptr inbounds nuw i8, ptr %1397, i64 96
  %1409 = load i16, ptr %1408, align 2, !tbaa !8
  %1410 = getelementptr inbounds nuw i8, ptr %1397, i64 112
  %1411 = load i16, ptr %1410, align 2, !tbaa !8
  %1412 = or i16 %1401, %1399
  %1413 = or i16 %1412, %1403
  %1414 = or i16 %1413, %1405
  %1415 = or i16 %1414, %1407
  %1416 = or i16 %1415, %1409
  %1417 = or i16 %1416, %1411
  %1418 = icmp eq i16 %1417, 0
  br i1 %1418, label %1419, label %1431

1419:                                             ; preds = %1395
  %1420 = load i16, ptr %1397, align 2, !tbaa !8
  %1421 = sext i16 %1420 to i32
  %1422 = add nsw i32 %1421, 64
  %1423 = lshr i32 %1422, 7
  %1424 = trunc i32 %1423 to i16
  %1425 = add i16 %1424, 128
  %1426 = icmp ugt i16 %1425, 255
  %1427 = icmp sgt i16 %1425, -1
  %1428 = sext i1 %1427 to i16
  %1429 = select i1 %1426, i16 %1428, i16 %1425
  %1430 = and i16 %1429, 255
  store i16 %1430, ptr %1397, align 2, !tbaa !8
  store i16 %1430, ptr %1398, align 2, !tbaa !8
  store i16 %1430, ptr %1400, align 2, !tbaa !8
  br label %1567

1431:                                             ; preds = %1395
  %1432 = sub i16 %1407, %1403
  %1433 = add i16 %1407, %1403
  %1434 = add i16 %1411, %1399
  %1435 = sub i16 %1399, %1411
  %1436 = sub i16 %1432, %1435
  %1437 = sext i16 %1436 to i32
  %1438 = mul nsw i32 %1437, 196
  %1439 = add nsw i32 %1438, 128
  %1440 = lshr i32 %1439, 8
  %1441 = trunc i32 %1440 to i16
  %1442 = sext i16 %1435 to i32
  %1443 = mul nsw i32 %1442, 277
  %1444 = add nsw i32 %1443, 128
  %1445 = lshr i32 %1444, 8
  %1446 = trunc i32 %1445 to i16
  %1447 = sext i16 %1432 to i32
  %1448 = mul nsw i32 %1447, 669
  %1449 = add nsw i32 %1448, 128
  %1450 = lshr i32 %1449, 8
  %1451 = trunc i32 %1450 to i16
  %1452 = sub i16 %1441, %1451
  %1453 = sub i16 %1434, %1433
  %1454 = add i16 %1434, %1433
  %1455 = sext i16 %1454 to i32
  %1456 = add i16 %1454, %1441
  %1457 = sub i16 %1446, %1456
  %1458 = sext i16 %1453 to i32
  %1459 = mul nsw i32 %1458, 362
  %1460 = add nsw i32 %1459, 128
  %1461 = lshr i32 %1460, 8
  %1462 = trunc i32 %1461 to i16
  %1463 = sext i16 %1457 to i32
  %1464 = sub i16 %1462, %1457
  %1465 = sext i16 %1464 to i32
  %1466 = add i16 %1452, %1464
  %1467 = load i16, ptr %1397, align 2, !tbaa !8
  %1468 = add i16 %1467, %1405
  %1469 = sub i16 %1467, %1405
  %1470 = sub i16 %1401, %1409
  %1471 = add i16 %1409, %1401
  %1472 = sext i16 %1470 to i32
  %1473 = mul nsw i32 %1472, 362
  %1474 = add nsw i32 %1473, 128
  %1475 = lshr i32 %1474, 8
  %1476 = trunc i32 %1475 to i16
  %1477 = sub i16 %1476, %1471
  %1478 = add i16 %1468, %1471
  %1479 = sub i16 %1468, %1471
  %1480 = add i16 %1469, %1477
  %1481 = sub i16 %1469, %1477
  %1482 = sext i16 %1478 to i32
  %1483 = add nsw i32 %1455, 64
  %1484 = add nsw i32 %1483, %1482
  %1485 = lshr i32 %1484, 7
  %1486 = trunc i32 %1485 to i16
  %1487 = add i16 %1486, 128
  %1488 = icmp ugt i16 %1487, 255
  %1489 = icmp sgt i16 %1487, -1
  %1490 = sext i1 %1489 to i16
  %1491 = select i1 %1488, i16 %1490, i16 %1487
  %1492 = and i16 %1491, 255
  store i16 %1492, ptr %1397, align 2, !tbaa !8
  %1493 = sext i16 %1480 to i32
  %1494 = add nsw i32 %1463, 64
  %1495 = add nsw i32 %1494, %1493
  %1496 = lshr i32 %1495, 7
  %1497 = trunc i32 %1496 to i16
  %1498 = add i16 %1497, 128
  %1499 = icmp ugt i16 %1498, 255
  %1500 = icmp sgt i16 %1498, -1
  %1501 = sext i1 %1500 to i16
  %1502 = select i1 %1499, i16 %1501, i16 %1498
  %1503 = and i16 %1502, 255
  store i16 %1503, ptr %1398, align 2, !tbaa !8
  %1504 = sext i16 %1481 to i32
  %1505 = add nsw i32 %1465, 64
  %1506 = add nsw i32 %1505, %1504
  %1507 = lshr i32 %1506, 7
  %1508 = trunc i32 %1507 to i16
  %1509 = add i16 %1508, 128
  %1510 = icmp ugt i16 %1509, 255
  %1511 = icmp sgt i16 %1509, -1
  %1512 = sext i1 %1511 to i16
  %1513 = select i1 %1510, i16 %1512, i16 %1509
  %1514 = and i16 %1513, 255
  store i16 %1514, ptr %1400, align 2, !tbaa !8
  %1515 = sext i16 %1479 to i32
  %1516 = sext i16 %1466 to i32
  %1517 = sub nsw i32 %1515, %1516
  %1518 = add nsw i32 %1517, 64
  %1519 = lshr i32 %1518, 7
  %1520 = trunc i32 %1519 to i16
  %1521 = add i16 %1520, 128
  %1522 = icmp ugt i16 %1521, 255
  %1523 = icmp sgt i16 %1521, -1
  %1524 = sext i1 %1523 to i16
  %1525 = select i1 %1522, i16 %1524, i16 %1521
  %1526 = and i16 %1525, 255
  %1527 = add nsw i32 %1516, 64
  %1528 = add nsw i32 %1527, %1515
  %1529 = lshr i32 %1528, 7
  %1530 = trunc i32 %1529 to i16
  %1531 = add i16 %1530, 128
  %1532 = icmp ugt i16 %1531, 255
  %1533 = icmp sgt i16 %1531, -1
  %1534 = sext i1 %1533 to i16
  %1535 = select i1 %1532, i16 %1534, i16 %1531
  %1536 = and i16 %1535, 255
  %1537 = sub nsw i32 %1504, %1465
  %1538 = add nsw i32 %1537, 64
  %1539 = lshr i32 %1538, 7
  %1540 = trunc i32 %1539 to i16
  %1541 = add i16 %1540, 128
  %1542 = icmp ugt i16 %1541, 255
  %1543 = icmp sgt i16 %1541, -1
  %1544 = sext i1 %1543 to i16
  %1545 = select i1 %1542, i16 %1544, i16 %1541
  %1546 = and i16 %1545, 255
  %1547 = sub nsw i32 %1493, %1463
  %1548 = add nsw i32 %1547, 64
  %1549 = lshr i32 %1548, 7
  %1550 = trunc i32 %1549 to i16
  %1551 = add i16 %1550, 128
  %1552 = icmp ugt i16 %1551, 255
  %1553 = icmp sgt i16 %1551, -1
  %1554 = sext i1 %1553 to i16
  %1555 = select i1 %1552, i16 %1554, i16 %1551
  %1556 = and i16 %1555, 255
  %1557 = sub nsw i32 %1482, %1455
  %1558 = add nsw i32 %1557, 64
  %1559 = lshr i32 %1558, 7
  %1560 = trunc i32 %1559 to i16
  %1561 = add i16 %1560, 128
  %1562 = icmp ugt i16 %1561, 255
  %1563 = icmp sgt i16 %1561, -1
  %1564 = sext i1 %1563 to i16
  %1565 = select i1 %1562, i16 %1564, i16 %1561
  %1566 = and i16 %1565, 255
  br label %1567

1567:                                             ; preds = %1431, %1419
  %1568 = phi i16 [ %1430, %1419 ], [ %1526, %1431 ]
  %1569 = phi i16 [ %1430, %1419 ], [ %1536, %1431 ]
  %1570 = phi i16 [ %1430, %1419 ], [ %1546, %1431 ]
  %1571 = phi i16 [ %1430, %1419 ], [ %1556, %1431 ]
  %1572 = phi i16 [ %1430, %1419 ], [ %1566, %1431 ]
  store i16 %1568, ptr %1402, align 2, !tbaa !8
  store i16 %1569, ptr %1404, align 2, !tbaa !8
  store i16 %1570, ptr %1406, align 2, !tbaa !8
  store i16 %1571, ptr %1408, align 2, !tbaa !8
  store i16 %1572, ptr %1410, align 2, !tbaa !8
  %1573 = getelementptr inbounds nuw i8, ptr %1397, i64 2
  %1574 = add nuw nsw i8 %1396, 1
  %1575 = icmp eq i8 %1574, 8
  br i1 %1575, label %1576, label %1395, !llvm.loop !24

1576:                                             ; preds = %1567
  %1577 = load i32, ptr @gScanType, align 4, !tbaa !16
  switch i32 %1577, label %2164 [
    i32 0, label %1578
    i32 1, label %1595
    i32 3, label %2016
    i32 2, label %2054
    i32 4, label %2092
  ]

1578:                                             ; preds = %1576
  %1579 = load <8 x i16>, ptr @gCoeffBuf, align 16, !tbaa !8
  %1580 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 16), align 16, !tbaa !8
  %1581 = trunc <8 x i16> %1579 to <8 x i8>
  %1582 = trunc <8 x i16> %1580 to <8 x i8>
  store <8 x i8> %1581, ptr @gMCUBufR, align 16, !tbaa !5
  store <8 x i8> %1582, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 8), align 8, !tbaa !5
  store <8 x i8> %1581, ptr @gMCUBufG, align 16, !tbaa !5
  store <8 x i8> %1582, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 8), align 8, !tbaa !5
  store <8 x i8> %1581, ptr @gMCUBufB, align 16, !tbaa !5
  store <8 x i8> %1582, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 8), align 8, !tbaa !5
  %1583 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 32), align 16, !tbaa !8
  %1584 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 48), align 16, !tbaa !8
  %1585 = trunc <8 x i16> %1583 to <8 x i8>
  %1586 = trunc <8 x i16> %1584 to <8 x i8>
  store <8 x i8> %1585, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 16), align 16, !tbaa !5
  store <8 x i8> %1586, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 24), align 8, !tbaa !5
  store <8 x i8> %1585, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 16), align 16, !tbaa !5
  store <8 x i8> %1586, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 24), align 8, !tbaa !5
  store <8 x i8> %1585, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 16), align 16, !tbaa !5
  store <8 x i8> %1586, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 24), align 8, !tbaa !5
  %1587 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 64), align 16, !tbaa !8
  %1588 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 80), align 16, !tbaa !8
  %1589 = trunc <8 x i16> %1587 to <8 x i8>
  %1590 = trunc <8 x i16> %1588 to <8 x i8>
  store <8 x i8> %1589, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 32), align 16, !tbaa !5
  store <8 x i8> %1590, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 40), align 8, !tbaa !5
  store <8 x i8> %1589, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 32), align 16, !tbaa !5
  store <8 x i8> %1590, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 40), align 8, !tbaa !5
  store <8 x i8> %1589, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 32), align 16, !tbaa !5
  store <8 x i8> %1590, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 40), align 8, !tbaa !5
  %1591 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 96), align 16, !tbaa !8
  %1592 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 112), align 16, !tbaa !8
  %1593 = trunc <8 x i16> %1591 to <8 x i8>
  %1594 = trunc <8 x i16> %1592 to <8 x i8>
  store <8 x i8> %1593, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 48), align 16, !tbaa !5
  store <8 x i8> %1594, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 56), align 8, !tbaa !5
  store <8 x i8> %1593, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 48), align 16, !tbaa !5
  store <8 x i8> %1594, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 56), align 8, !tbaa !5
  store <8 x i8> %1593, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 48), align 16, !tbaa !5
  store <8 x i8> %1594, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 56), align 8, !tbaa !5
  br label %2165

1595:                                             ; preds = %1576
  %1596 = trunc nuw i64 %107 to i8
  switch i8 %1596, label %2165 [
    i8 0, label %1999
    i8 1, label %1798
    i8 2, label %1597
  ]

1597:                                             ; preds = %1595
  %1598 = load <8 x i16>, ptr @gCoeffBuf, align 16, !tbaa !8
  %1599 = and <8 x i16> %1598, splat (i16 255)
  %1600 = mul nuw nsw <8 x i16> %1599, splat (i16 103)
  %1601 = lshr <8 x i16> %1600, splat (i16 8)
  %1602 = load <8 x i8>, ptr @gMCUBufR, align 16, !tbaa !5
  %1603 = zext <8 x i8> %1602 to <8 x i16>
  %1604 = add nsw <8 x i16> %1599, splat (i16 -179)
  %1605 = add nsw <8 x i16> %1604, %1603
  %1606 = add nsw <8 x i16> %1605, %1601
  %1607 = icmp ugt <8 x i16> %1606, splat (i16 255)
  %1608 = trunc <8 x i16> %1606 to <8 x i8>
  %1609 = icmp sgt <8 x i16> %1606, splat (i16 -1)
  %1610 = sext <8 x i1> %1609 to <8 x i8>
  %1611 = select <8 x i1> %1607, <8 x i8> %1610, <8 x i8> %1608
  store <8 x i8> %1611, ptr @gMCUBufR, align 16, !tbaa !5
  %1612 = mul nuw <8 x i16> %1599, splat (i16 183)
  %1613 = lshr <8 x i16> %1612, splat (i16 8)
  %1614 = load <8 x i8>, ptr @gMCUBufG, align 16, !tbaa !5
  %1615 = zext <8 x i8> %1614 to <8 x i16>
  %1616 = sub nsw <8 x i16> %1615, %1613
  %1617 = add nsw <8 x i16> %1616, splat (i16 91)
  %1618 = icmp ugt <8 x i16> %1617, splat (i16 255)
  %1619 = trunc <8 x i16> %1617 to <8 x i8>
  %1620 = icmp sgt <8 x i16> %1616, splat (i16 -92)
  %1621 = sext <8 x i1> %1620 to <8 x i8>
  %1622 = select <8 x i1> %1618, <8 x i8> %1621, <8 x i8> %1619
  store <8 x i8> %1622, ptr @gMCUBufG, align 16, !tbaa !5
  %1623 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 16), align 16, !tbaa !8
  %1624 = and <8 x i16> %1623, splat (i16 255)
  %1625 = mul nuw nsw <8 x i16> %1624, splat (i16 103)
  %1626 = lshr <8 x i16> %1625, splat (i16 8)
  %1627 = load <8 x i8>, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 8), align 8, !tbaa !5
  %1628 = zext <8 x i8> %1627 to <8 x i16>
  %1629 = add nsw <8 x i16> %1624, splat (i16 -179)
  %1630 = add nsw <8 x i16> %1629, %1628
  %1631 = add nsw <8 x i16> %1630, %1626
  %1632 = icmp ugt <8 x i16> %1631, splat (i16 255)
  %1633 = trunc <8 x i16> %1631 to <8 x i8>
  %1634 = icmp sgt <8 x i16> %1631, splat (i16 -1)
  %1635 = sext <8 x i1> %1634 to <8 x i8>
  %1636 = select <8 x i1> %1632, <8 x i8> %1635, <8 x i8> %1633
  store <8 x i8> %1636, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 8), align 8, !tbaa !5
  %1637 = mul nuw <8 x i16> %1624, splat (i16 183)
  %1638 = lshr <8 x i16> %1637, splat (i16 8)
  %1639 = load <8 x i8>, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 8), align 8, !tbaa !5
  %1640 = zext <8 x i8> %1639 to <8 x i16>
  %1641 = sub nsw <8 x i16> %1640, %1638
  %1642 = add nsw <8 x i16> %1641, splat (i16 91)
  %1643 = icmp ugt <8 x i16> %1642, splat (i16 255)
  %1644 = trunc <8 x i16> %1642 to <8 x i8>
  %1645 = icmp sgt <8 x i16> %1641, splat (i16 -92)
  %1646 = sext <8 x i1> %1645 to <8 x i8>
  %1647 = select <8 x i1> %1643, <8 x i8> %1646, <8 x i8> %1644
  store <8 x i8> %1647, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 8), align 8, !tbaa !5
  %1648 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 32), align 16, !tbaa !8
  %1649 = and <8 x i16> %1648, splat (i16 255)
  %1650 = mul nuw nsw <8 x i16> %1649, splat (i16 103)
  %1651 = lshr <8 x i16> %1650, splat (i16 8)
  %1652 = load <8 x i8>, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 16), align 16, !tbaa !5
  %1653 = zext <8 x i8> %1652 to <8 x i16>
  %1654 = add nsw <8 x i16> %1649, splat (i16 -179)
  %1655 = add nsw <8 x i16> %1654, %1653
  %1656 = add nsw <8 x i16> %1655, %1651
  %1657 = icmp ugt <8 x i16> %1656, splat (i16 255)
  %1658 = trunc <8 x i16> %1656 to <8 x i8>
  %1659 = icmp sgt <8 x i16> %1656, splat (i16 -1)
  %1660 = sext <8 x i1> %1659 to <8 x i8>
  %1661 = select <8 x i1> %1657, <8 x i8> %1660, <8 x i8> %1658
  store <8 x i8> %1661, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 16), align 16, !tbaa !5
  %1662 = mul nuw <8 x i16> %1649, splat (i16 183)
  %1663 = lshr <8 x i16> %1662, splat (i16 8)
  %1664 = load <8 x i8>, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 16), align 16, !tbaa !5
  %1665 = zext <8 x i8> %1664 to <8 x i16>
  %1666 = sub nsw <8 x i16> %1665, %1663
  %1667 = add nsw <8 x i16> %1666, splat (i16 91)
  %1668 = icmp ugt <8 x i16> %1667, splat (i16 255)
  %1669 = trunc <8 x i16> %1667 to <8 x i8>
  %1670 = icmp sgt <8 x i16> %1666, splat (i16 -92)
  %1671 = sext <8 x i1> %1670 to <8 x i8>
  %1672 = select <8 x i1> %1668, <8 x i8> %1671, <8 x i8> %1669
  store <8 x i8> %1672, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 16), align 16, !tbaa !5
  %1673 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 48), align 16, !tbaa !8
  %1674 = and <8 x i16> %1673, splat (i16 255)
  %1675 = mul nuw nsw <8 x i16> %1674, splat (i16 103)
  %1676 = lshr <8 x i16> %1675, splat (i16 8)
  %1677 = load <8 x i8>, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 24), align 8, !tbaa !5
  %1678 = zext <8 x i8> %1677 to <8 x i16>
  %1679 = add nsw <8 x i16> %1674, splat (i16 -179)
  %1680 = add nsw <8 x i16> %1679, %1678
  %1681 = add nsw <8 x i16> %1680, %1676
  %1682 = icmp ugt <8 x i16> %1681, splat (i16 255)
  %1683 = trunc <8 x i16> %1681 to <8 x i8>
  %1684 = icmp sgt <8 x i16> %1681, splat (i16 -1)
  %1685 = sext <8 x i1> %1684 to <8 x i8>
  %1686 = select <8 x i1> %1682, <8 x i8> %1685, <8 x i8> %1683
  store <8 x i8> %1686, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 24), align 8, !tbaa !5
  %1687 = mul nuw <8 x i16> %1674, splat (i16 183)
  %1688 = lshr <8 x i16> %1687, splat (i16 8)
  %1689 = load <8 x i8>, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 24), align 8, !tbaa !5
  %1690 = zext <8 x i8> %1689 to <8 x i16>
  %1691 = sub nsw <8 x i16> %1690, %1688
  %1692 = add nsw <8 x i16> %1691, splat (i16 91)
  %1693 = icmp ugt <8 x i16> %1692, splat (i16 255)
  %1694 = trunc <8 x i16> %1692 to <8 x i8>
  %1695 = icmp sgt <8 x i16> %1691, splat (i16 -92)
  %1696 = sext <8 x i1> %1695 to <8 x i8>
  %1697 = select <8 x i1> %1693, <8 x i8> %1696, <8 x i8> %1694
  store <8 x i8> %1697, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 24), align 8, !tbaa !5
  %1698 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 64), align 16, !tbaa !8
  %1699 = and <8 x i16> %1698, splat (i16 255)
  %1700 = mul nuw nsw <8 x i16> %1699, splat (i16 103)
  %1701 = lshr <8 x i16> %1700, splat (i16 8)
  %1702 = load <8 x i8>, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 32), align 16, !tbaa !5
  %1703 = zext <8 x i8> %1702 to <8 x i16>
  %1704 = add nsw <8 x i16> %1699, splat (i16 -179)
  %1705 = add nsw <8 x i16> %1704, %1703
  %1706 = add nsw <8 x i16> %1705, %1701
  %1707 = icmp ugt <8 x i16> %1706, splat (i16 255)
  %1708 = trunc <8 x i16> %1706 to <8 x i8>
  %1709 = icmp sgt <8 x i16> %1706, splat (i16 -1)
  %1710 = sext <8 x i1> %1709 to <8 x i8>
  %1711 = select <8 x i1> %1707, <8 x i8> %1710, <8 x i8> %1708
  store <8 x i8> %1711, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 32), align 16, !tbaa !5
  %1712 = mul nuw <8 x i16> %1699, splat (i16 183)
  %1713 = lshr <8 x i16> %1712, splat (i16 8)
  %1714 = load <8 x i8>, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 32), align 16, !tbaa !5
  %1715 = zext <8 x i8> %1714 to <8 x i16>
  %1716 = sub nsw <8 x i16> %1715, %1713
  %1717 = add nsw <8 x i16> %1716, splat (i16 91)
  %1718 = icmp ugt <8 x i16> %1717, splat (i16 255)
  %1719 = trunc <8 x i16> %1717 to <8 x i8>
  %1720 = icmp sgt <8 x i16> %1716, splat (i16 -92)
  %1721 = sext <8 x i1> %1720 to <8 x i8>
  %1722 = select <8 x i1> %1718, <8 x i8> %1721, <8 x i8> %1719
  store <8 x i8> %1722, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 32), align 16, !tbaa !5
  %1723 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 80), align 16, !tbaa !8
  %1724 = and <8 x i16> %1723, splat (i16 255)
  %1725 = mul nuw nsw <8 x i16> %1724, splat (i16 103)
  %1726 = lshr <8 x i16> %1725, splat (i16 8)
  %1727 = load <8 x i8>, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 40), align 8, !tbaa !5
  %1728 = zext <8 x i8> %1727 to <8 x i16>
  %1729 = add nsw <8 x i16> %1724, splat (i16 -179)
  %1730 = add nsw <8 x i16> %1729, %1728
  %1731 = add nsw <8 x i16> %1730, %1726
  %1732 = icmp ugt <8 x i16> %1731, splat (i16 255)
  %1733 = trunc <8 x i16> %1731 to <8 x i8>
  %1734 = icmp sgt <8 x i16> %1731, splat (i16 -1)
  %1735 = sext <8 x i1> %1734 to <8 x i8>
  %1736 = select <8 x i1> %1732, <8 x i8> %1735, <8 x i8> %1733
  store <8 x i8> %1736, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 40), align 8, !tbaa !5
  %1737 = mul nuw <8 x i16> %1724, splat (i16 183)
  %1738 = lshr <8 x i16> %1737, splat (i16 8)
  %1739 = load <8 x i8>, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 40), align 8, !tbaa !5
  %1740 = zext <8 x i8> %1739 to <8 x i16>
  %1741 = sub nsw <8 x i16> %1740, %1738
  %1742 = add nsw <8 x i16> %1741, splat (i16 91)
  %1743 = icmp ugt <8 x i16> %1742, splat (i16 255)
  %1744 = trunc <8 x i16> %1742 to <8 x i8>
  %1745 = icmp sgt <8 x i16> %1741, splat (i16 -92)
  %1746 = sext <8 x i1> %1745 to <8 x i8>
  %1747 = select <8 x i1> %1743, <8 x i8> %1746, <8 x i8> %1744
  store <8 x i8> %1747, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 40), align 8, !tbaa !5
  %1748 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 96), align 16, !tbaa !8
  %1749 = and <8 x i16> %1748, splat (i16 255)
  %1750 = mul nuw nsw <8 x i16> %1749, splat (i16 103)
  %1751 = lshr <8 x i16> %1750, splat (i16 8)
  %1752 = load <8 x i8>, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 48), align 16, !tbaa !5
  %1753 = zext <8 x i8> %1752 to <8 x i16>
  %1754 = add nsw <8 x i16> %1749, splat (i16 -179)
  %1755 = add nsw <8 x i16> %1754, %1753
  %1756 = add nsw <8 x i16> %1755, %1751
  %1757 = icmp ugt <8 x i16> %1756, splat (i16 255)
  %1758 = trunc <8 x i16> %1756 to <8 x i8>
  %1759 = icmp sgt <8 x i16> %1756, splat (i16 -1)
  %1760 = sext <8 x i1> %1759 to <8 x i8>
  %1761 = select <8 x i1> %1757, <8 x i8> %1760, <8 x i8> %1758
  store <8 x i8> %1761, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 48), align 16, !tbaa !5
  %1762 = mul nuw <8 x i16> %1749, splat (i16 183)
  %1763 = lshr <8 x i16> %1762, splat (i16 8)
  %1764 = load <8 x i8>, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 48), align 16, !tbaa !5
  %1765 = zext <8 x i8> %1764 to <8 x i16>
  %1766 = sub nsw <8 x i16> %1765, %1763
  %1767 = add nsw <8 x i16> %1766, splat (i16 91)
  %1768 = icmp ugt <8 x i16> %1767, splat (i16 255)
  %1769 = trunc <8 x i16> %1767 to <8 x i8>
  %1770 = icmp sgt <8 x i16> %1766, splat (i16 -92)
  %1771 = sext <8 x i1> %1770 to <8 x i8>
  %1772 = select <8 x i1> %1768, <8 x i8> %1771, <8 x i8> %1769
  store <8 x i8> %1772, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 48), align 16, !tbaa !5
  %1773 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 112), align 16, !tbaa !8
  %1774 = and <8 x i16> %1773, splat (i16 255)
  %1775 = mul nuw nsw <8 x i16> %1774, splat (i16 103)
  %1776 = lshr <8 x i16> %1775, splat (i16 8)
  %1777 = load <8 x i8>, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 56), align 8, !tbaa !5
  %1778 = zext <8 x i8> %1777 to <8 x i16>
  %1779 = add nsw <8 x i16> %1774, splat (i16 -179)
  %1780 = add nsw <8 x i16> %1779, %1778
  %1781 = add nsw <8 x i16> %1780, %1776
  %1782 = icmp ugt <8 x i16> %1781, splat (i16 255)
  %1783 = trunc <8 x i16> %1781 to <8 x i8>
  %1784 = icmp sgt <8 x i16> %1781, splat (i16 -1)
  %1785 = sext <8 x i1> %1784 to <8 x i8>
  %1786 = select <8 x i1> %1782, <8 x i8> %1785, <8 x i8> %1783
  store <8 x i8> %1786, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 56), align 8, !tbaa !5
  %1787 = mul nuw <8 x i16> %1774, splat (i16 183)
  %1788 = lshr <8 x i16> %1787, splat (i16 8)
  %1789 = load <8 x i8>, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 56), align 8, !tbaa !5
  %1790 = zext <8 x i8> %1789 to <8 x i16>
  %1791 = sub nsw <8 x i16> %1790, %1788
  %1792 = add nsw <8 x i16> %1791, splat (i16 91)
  %1793 = icmp ugt <8 x i16> %1792, splat (i16 255)
  %1794 = trunc <8 x i16> %1792 to <8 x i8>
  %1795 = icmp sgt <8 x i16> %1791, splat (i16 -92)
  %1796 = sext <8 x i1> %1795 to <8 x i8>
  %1797 = select <8 x i1> %1793, <8 x i8> %1796, <8 x i8> %1794
  store <8 x i8> %1797, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 56), align 8, !tbaa !5
  br label %2165

1798:                                             ; preds = %1595
  %1799 = load <8 x i16>, ptr @gCoeffBuf, align 16, !tbaa !8
  %1800 = and <8 x i16> %1799, splat (i16 255)
  %1801 = mul nuw nsw <8 x i16> %1800, splat (i16 88)
  %1802 = lshr <8 x i16> %1801, splat (i16 8)
  %1803 = load <8 x i8>, ptr @gMCUBufG, align 16, !tbaa !5
  %1804 = zext <8 x i8> %1803 to <8 x i16>
  %1805 = add nuw nsw <8 x i16> %1804, splat (i16 44)
  %1806 = sub nsw <8 x i16> %1805, %1802
  %1807 = icmp ugt <8 x i16> %1806, splat (i16 255)
  %1808 = trunc <8 x i16> %1806 to <8 x i8>
  %1809 = icmp sgt <8 x i16> %1806, splat (i16 -1)
  %1810 = sext <8 x i1> %1809 to <8 x i8>
  %1811 = select <8 x i1> %1807, <8 x i8> %1810, <8 x i8> %1808
  store <8 x i8> %1811, ptr @gMCUBufG, align 16, !tbaa !5
  %1812 = mul nuw <8 x i16> %1800, splat (i16 198)
  %1813 = lshr <8 x i16> %1812, splat (i16 8)
  %1814 = load <8 x i8>, ptr @gMCUBufB, align 16, !tbaa !5
  %1815 = zext <8 x i8> %1814 to <8 x i16>
  %1816 = add nsw <8 x i16> %1800, splat (i16 -227)
  %1817 = add nsw <8 x i16> %1816, %1813
  %1818 = add nsw <8 x i16> %1817, %1815
  %1819 = icmp ugt <8 x i16> %1818, splat (i16 255)
  %1820 = trunc <8 x i16> %1818 to <8 x i8>
  %1821 = icmp sgt <8 x i16> %1818, splat (i16 -1)
  %1822 = sext <8 x i1> %1821 to <8 x i8>
  %1823 = select <8 x i1> %1819, <8 x i8> %1822, <8 x i8> %1820
  store <8 x i8> %1823, ptr @gMCUBufB, align 16, !tbaa !5
  %1824 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 16), align 16, !tbaa !8
  %1825 = and <8 x i16> %1824, splat (i16 255)
  %1826 = mul nuw nsw <8 x i16> %1825, splat (i16 88)
  %1827 = lshr <8 x i16> %1826, splat (i16 8)
  %1828 = load <8 x i8>, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 8), align 8, !tbaa !5
  %1829 = zext <8 x i8> %1828 to <8 x i16>
  %1830 = add nuw nsw <8 x i16> %1829, splat (i16 44)
  %1831 = sub nsw <8 x i16> %1830, %1827
  %1832 = icmp ugt <8 x i16> %1831, splat (i16 255)
  %1833 = trunc <8 x i16> %1831 to <8 x i8>
  %1834 = icmp sgt <8 x i16> %1831, splat (i16 -1)
  %1835 = sext <8 x i1> %1834 to <8 x i8>
  %1836 = select <8 x i1> %1832, <8 x i8> %1835, <8 x i8> %1833
  store <8 x i8> %1836, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 8), align 8, !tbaa !5
  %1837 = mul nuw <8 x i16> %1825, splat (i16 198)
  %1838 = lshr <8 x i16> %1837, splat (i16 8)
  %1839 = load <8 x i8>, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 8), align 8, !tbaa !5
  %1840 = zext <8 x i8> %1839 to <8 x i16>
  %1841 = add nsw <8 x i16> %1825, splat (i16 -227)
  %1842 = add nsw <8 x i16> %1841, %1838
  %1843 = add nsw <8 x i16> %1842, %1840
  %1844 = icmp ugt <8 x i16> %1843, splat (i16 255)
  %1845 = trunc <8 x i16> %1843 to <8 x i8>
  %1846 = icmp sgt <8 x i16> %1843, splat (i16 -1)
  %1847 = sext <8 x i1> %1846 to <8 x i8>
  %1848 = select <8 x i1> %1844, <8 x i8> %1847, <8 x i8> %1845
  store <8 x i8> %1848, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 8), align 8, !tbaa !5
  %1849 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 32), align 16, !tbaa !8
  %1850 = and <8 x i16> %1849, splat (i16 255)
  %1851 = mul nuw nsw <8 x i16> %1850, splat (i16 88)
  %1852 = lshr <8 x i16> %1851, splat (i16 8)
  %1853 = load <8 x i8>, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 16), align 16, !tbaa !5
  %1854 = zext <8 x i8> %1853 to <8 x i16>
  %1855 = add nuw nsw <8 x i16> %1854, splat (i16 44)
  %1856 = sub nsw <8 x i16> %1855, %1852
  %1857 = icmp ugt <8 x i16> %1856, splat (i16 255)
  %1858 = trunc <8 x i16> %1856 to <8 x i8>
  %1859 = icmp sgt <8 x i16> %1856, splat (i16 -1)
  %1860 = sext <8 x i1> %1859 to <8 x i8>
  %1861 = select <8 x i1> %1857, <8 x i8> %1860, <8 x i8> %1858
  store <8 x i8> %1861, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 16), align 16, !tbaa !5
  %1862 = mul nuw <8 x i16> %1850, splat (i16 198)
  %1863 = lshr <8 x i16> %1862, splat (i16 8)
  %1864 = load <8 x i8>, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 16), align 16, !tbaa !5
  %1865 = zext <8 x i8> %1864 to <8 x i16>
  %1866 = add nsw <8 x i16> %1850, splat (i16 -227)
  %1867 = add nsw <8 x i16> %1866, %1863
  %1868 = add nsw <8 x i16> %1867, %1865
  %1869 = icmp ugt <8 x i16> %1868, splat (i16 255)
  %1870 = trunc <8 x i16> %1868 to <8 x i8>
  %1871 = icmp sgt <8 x i16> %1868, splat (i16 -1)
  %1872 = sext <8 x i1> %1871 to <8 x i8>
  %1873 = select <8 x i1> %1869, <8 x i8> %1872, <8 x i8> %1870
  store <8 x i8> %1873, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 16), align 16, !tbaa !5
  %1874 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 48), align 16, !tbaa !8
  %1875 = and <8 x i16> %1874, splat (i16 255)
  %1876 = mul nuw nsw <8 x i16> %1875, splat (i16 88)
  %1877 = lshr <8 x i16> %1876, splat (i16 8)
  %1878 = load <8 x i8>, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 24), align 8, !tbaa !5
  %1879 = zext <8 x i8> %1878 to <8 x i16>
  %1880 = add nuw nsw <8 x i16> %1879, splat (i16 44)
  %1881 = sub nsw <8 x i16> %1880, %1877
  %1882 = icmp ugt <8 x i16> %1881, splat (i16 255)
  %1883 = trunc <8 x i16> %1881 to <8 x i8>
  %1884 = icmp sgt <8 x i16> %1881, splat (i16 -1)
  %1885 = sext <8 x i1> %1884 to <8 x i8>
  %1886 = select <8 x i1> %1882, <8 x i8> %1885, <8 x i8> %1883
  store <8 x i8> %1886, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 24), align 8, !tbaa !5
  %1887 = mul nuw <8 x i16> %1875, splat (i16 198)
  %1888 = lshr <8 x i16> %1887, splat (i16 8)
  %1889 = load <8 x i8>, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 24), align 8, !tbaa !5
  %1890 = zext <8 x i8> %1889 to <8 x i16>
  %1891 = add nsw <8 x i16> %1875, splat (i16 -227)
  %1892 = add nsw <8 x i16> %1891, %1888
  %1893 = add nsw <8 x i16> %1892, %1890
  %1894 = icmp ugt <8 x i16> %1893, splat (i16 255)
  %1895 = trunc <8 x i16> %1893 to <8 x i8>
  %1896 = icmp sgt <8 x i16> %1893, splat (i16 -1)
  %1897 = sext <8 x i1> %1896 to <8 x i8>
  %1898 = select <8 x i1> %1894, <8 x i8> %1897, <8 x i8> %1895
  store <8 x i8> %1898, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 24), align 8, !tbaa !5
  %1899 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 64), align 16, !tbaa !8
  %1900 = and <8 x i16> %1899, splat (i16 255)
  %1901 = mul nuw nsw <8 x i16> %1900, splat (i16 88)
  %1902 = lshr <8 x i16> %1901, splat (i16 8)
  %1903 = load <8 x i8>, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 32), align 16, !tbaa !5
  %1904 = zext <8 x i8> %1903 to <8 x i16>
  %1905 = add nuw nsw <8 x i16> %1904, splat (i16 44)
  %1906 = sub nsw <8 x i16> %1905, %1902
  %1907 = icmp ugt <8 x i16> %1906, splat (i16 255)
  %1908 = trunc <8 x i16> %1906 to <8 x i8>
  %1909 = icmp sgt <8 x i16> %1906, splat (i16 -1)
  %1910 = sext <8 x i1> %1909 to <8 x i8>
  %1911 = select <8 x i1> %1907, <8 x i8> %1910, <8 x i8> %1908
  store <8 x i8> %1911, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 32), align 16, !tbaa !5
  %1912 = mul nuw <8 x i16> %1900, splat (i16 198)
  %1913 = lshr <8 x i16> %1912, splat (i16 8)
  %1914 = load <8 x i8>, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 32), align 16, !tbaa !5
  %1915 = zext <8 x i8> %1914 to <8 x i16>
  %1916 = add nsw <8 x i16> %1900, splat (i16 -227)
  %1917 = add nsw <8 x i16> %1916, %1913
  %1918 = add nsw <8 x i16> %1917, %1915
  %1919 = icmp ugt <8 x i16> %1918, splat (i16 255)
  %1920 = trunc <8 x i16> %1918 to <8 x i8>
  %1921 = icmp sgt <8 x i16> %1918, splat (i16 -1)
  %1922 = sext <8 x i1> %1921 to <8 x i8>
  %1923 = select <8 x i1> %1919, <8 x i8> %1922, <8 x i8> %1920
  store <8 x i8> %1923, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 32), align 16, !tbaa !5
  %1924 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 80), align 16, !tbaa !8
  %1925 = and <8 x i16> %1924, splat (i16 255)
  %1926 = mul nuw nsw <8 x i16> %1925, splat (i16 88)
  %1927 = lshr <8 x i16> %1926, splat (i16 8)
  %1928 = load <8 x i8>, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 40), align 8, !tbaa !5
  %1929 = zext <8 x i8> %1928 to <8 x i16>
  %1930 = add nuw nsw <8 x i16> %1929, splat (i16 44)
  %1931 = sub nsw <8 x i16> %1930, %1927
  %1932 = icmp ugt <8 x i16> %1931, splat (i16 255)
  %1933 = trunc <8 x i16> %1931 to <8 x i8>
  %1934 = icmp sgt <8 x i16> %1931, splat (i16 -1)
  %1935 = sext <8 x i1> %1934 to <8 x i8>
  %1936 = select <8 x i1> %1932, <8 x i8> %1935, <8 x i8> %1933
  store <8 x i8> %1936, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 40), align 8, !tbaa !5
  %1937 = mul nuw <8 x i16> %1925, splat (i16 198)
  %1938 = lshr <8 x i16> %1937, splat (i16 8)
  %1939 = load <8 x i8>, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 40), align 8, !tbaa !5
  %1940 = zext <8 x i8> %1939 to <8 x i16>
  %1941 = add nsw <8 x i16> %1925, splat (i16 -227)
  %1942 = add nsw <8 x i16> %1941, %1938
  %1943 = add nsw <8 x i16> %1942, %1940
  %1944 = icmp ugt <8 x i16> %1943, splat (i16 255)
  %1945 = trunc <8 x i16> %1943 to <8 x i8>
  %1946 = icmp sgt <8 x i16> %1943, splat (i16 -1)
  %1947 = sext <8 x i1> %1946 to <8 x i8>
  %1948 = select <8 x i1> %1944, <8 x i8> %1947, <8 x i8> %1945
  store <8 x i8> %1948, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 40), align 8, !tbaa !5
  %1949 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 96), align 16, !tbaa !8
  %1950 = and <8 x i16> %1949, splat (i16 255)
  %1951 = mul nuw nsw <8 x i16> %1950, splat (i16 88)
  %1952 = lshr <8 x i16> %1951, splat (i16 8)
  %1953 = load <8 x i8>, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 48), align 16, !tbaa !5
  %1954 = zext <8 x i8> %1953 to <8 x i16>
  %1955 = add nuw nsw <8 x i16> %1954, splat (i16 44)
  %1956 = sub nsw <8 x i16> %1955, %1952
  %1957 = icmp ugt <8 x i16> %1956, splat (i16 255)
  %1958 = trunc <8 x i16> %1956 to <8 x i8>
  %1959 = icmp sgt <8 x i16> %1956, splat (i16 -1)
  %1960 = sext <8 x i1> %1959 to <8 x i8>
  %1961 = select <8 x i1> %1957, <8 x i8> %1960, <8 x i8> %1958
  store <8 x i8> %1961, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 48), align 16, !tbaa !5
  %1962 = mul nuw <8 x i16> %1950, splat (i16 198)
  %1963 = lshr <8 x i16> %1962, splat (i16 8)
  %1964 = load <8 x i8>, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 48), align 16, !tbaa !5
  %1965 = zext <8 x i8> %1964 to <8 x i16>
  %1966 = add nsw <8 x i16> %1950, splat (i16 -227)
  %1967 = add nsw <8 x i16> %1966, %1963
  %1968 = add nsw <8 x i16> %1967, %1965
  %1969 = icmp ugt <8 x i16> %1968, splat (i16 255)
  %1970 = trunc <8 x i16> %1968 to <8 x i8>
  %1971 = icmp sgt <8 x i16> %1968, splat (i16 -1)
  %1972 = sext <8 x i1> %1971 to <8 x i8>
  %1973 = select <8 x i1> %1969, <8 x i8> %1972, <8 x i8> %1970
  store <8 x i8> %1973, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 48), align 16, !tbaa !5
  %1974 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 112), align 16, !tbaa !8
  %1975 = and <8 x i16> %1974, splat (i16 255)
  %1976 = mul nuw nsw <8 x i16> %1975, splat (i16 88)
  %1977 = lshr <8 x i16> %1976, splat (i16 8)
  %1978 = load <8 x i8>, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 56), align 8, !tbaa !5
  %1979 = zext <8 x i8> %1978 to <8 x i16>
  %1980 = add nuw nsw <8 x i16> %1979, splat (i16 44)
  %1981 = sub nsw <8 x i16> %1980, %1977
  %1982 = icmp ugt <8 x i16> %1981, splat (i16 255)
  %1983 = trunc <8 x i16> %1981 to <8 x i8>
  %1984 = icmp sgt <8 x i16> %1981, splat (i16 -1)
  %1985 = sext <8 x i1> %1984 to <8 x i8>
  %1986 = select <8 x i1> %1982, <8 x i8> %1985, <8 x i8> %1983
  store <8 x i8> %1986, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 56), align 8, !tbaa !5
  %1987 = mul nuw <8 x i16> %1975, splat (i16 198)
  %1988 = lshr <8 x i16> %1987, splat (i16 8)
  %1989 = load <8 x i8>, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 56), align 8, !tbaa !5
  %1990 = zext <8 x i8> %1989 to <8 x i16>
  %1991 = add nsw <8 x i16> %1975, splat (i16 -227)
  %1992 = add nsw <8 x i16> %1991, %1988
  %1993 = add nsw <8 x i16> %1992, %1990
  %1994 = icmp ugt <8 x i16> %1993, splat (i16 255)
  %1995 = trunc <8 x i16> %1993 to <8 x i8>
  %1996 = icmp sgt <8 x i16> %1993, splat (i16 -1)
  %1997 = sext <8 x i1> %1996 to <8 x i8>
  %1998 = select <8 x i1> %1994, <8 x i8> %1997, <8 x i8> %1995
  store <8 x i8> %1998, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 56), align 8, !tbaa !5
  br label %2165

1999:                                             ; preds = %1595
  %2000 = load <8 x i16>, ptr @gCoeffBuf, align 16, !tbaa !8
  %2001 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 16), align 16, !tbaa !8
  %2002 = trunc <8 x i16> %2000 to <8 x i8>
  %2003 = trunc <8 x i16> %2001 to <8 x i8>
  store <8 x i8> %2002, ptr @gMCUBufR, align 16, !tbaa !5
  store <8 x i8> %2003, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 8), align 8, !tbaa !5
  store <8 x i8> %2002, ptr @gMCUBufG, align 16, !tbaa !5
  store <8 x i8> %2003, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 8), align 8, !tbaa !5
  store <8 x i8> %2002, ptr @gMCUBufB, align 16, !tbaa !5
  store <8 x i8> %2003, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 8), align 8, !tbaa !5
  %2004 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 32), align 16, !tbaa !8
  %2005 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 48), align 16, !tbaa !8
  %2006 = trunc <8 x i16> %2004 to <8 x i8>
  %2007 = trunc <8 x i16> %2005 to <8 x i8>
  store <8 x i8> %2006, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 16), align 16, !tbaa !5
  store <8 x i8> %2007, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 24), align 8, !tbaa !5
  store <8 x i8> %2006, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 16), align 16, !tbaa !5
  store <8 x i8> %2007, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 24), align 8, !tbaa !5
  store <8 x i8> %2006, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 16), align 16, !tbaa !5
  store <8 x i8> %2007, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 24), align 8, !tbaa !5
  %2008 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 64), align 16, !tbaa !8
  %2009 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 80), align 16, !tbaa !8
  %2010 = trunc <8 x i16> %2008 to <8 x i8>
  %2011 = trunc <8 x i16> %2009 to <8 x i8>
  store <8 x i8> %2010, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 32), align 16, !tbaa !5
  store <8 x i8> %2011, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 40), align 8, !tbaa !5
  store <8 x i8> %2010, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 32), align 16, !tbaa !5
  store <8 x i8> %2011, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 40), align 8, !tbaa !5
  store <8 x i8> %2010, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 32), align 16, !tbaa !5
  store <8 x i8> %2011, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 40), align 8, !tbaa !5
  %2012 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 96), align 16, !tbaa !8
  %2013 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 112), align 16, !tbaa !8
  %2014 = trunc <8 x i16> %2012 to <8 x i8>
  %2015 = trunc <8 x i16> %2013 to <8 x i8>
  store <8 x i8> %2014, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 48), align 16, !tbaa !5
  store <8 x i8> %2015, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 56), align 8, !tbaa !5
  store <8 x i8> %2014, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 48), align 16, !tbaa !5
  store <8 x i8> %2015, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 56), align 8, !tbaa !5
  store <8 x i8> %2014, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 48), align 16, !tbaa !5
  store <8 x i8> %2015, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 56), align 8, !tbaa !5
  br label %2165

2016:                                             ; preds = %1576
  %2017 = trunc nuw i64 %107 to i8
  switch i8 %2017, label %2165 [
    i8 0, label %2035
    i8 1, label %2018
    i8 2, label %2052
    i8 3, label %2053
  ]

2018:                                             ; preds = %2016
  %2019 = load <8 x i16>, ptr @gCoeffBuf, align 16, !tbaa !8
  %2020 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 16), align 16, !tbaa !8
  %2021 = trunc <8 x i16> %2019 to <8 x i8>
  %2022 = trunc <8 x i16> %2020 to <8 x i8>
  store <8 x i8> %2021, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 128), align 16, !tbaa !5
  store <8 x i8> %2022, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 136), align 8, !tbaa !5
  store <8 x i8> %2021, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 128), align 16, !tbaa !5
  store <8 x i8> %2022, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 136), align 8, !tbaa !5
  store <8 x i8> %2021, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 128), align 16, !tbaa !5
  store <8 x i8> %2022, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 136), align 8, !tbaa !5
  %2023 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 32), align 16, !tbaa !8
  %2024 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 48), align 16, !tbaa !8
  %2025 = trunc <8 x i16> %2023 to <8 x i8>
  %2026 = trunc <8 x i16> %2024 to <8 x i8>
  store <8 x i8> %2025, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 144), align 16, !tbaa !5
  store <8 x i8> %2026, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 152), align 8, !tbaa !5
  store <8 x i8> %2025, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 144), align 16, !tbaa !5
  store <8 x i8> %2026, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 152), align 8, !tbaa !5
  store <8 x i8> %2025, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 144), align 16, !tbaa !5
  store <8 x i8> %2026, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 152), align 8, !tbaa !5
  %2027 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 64), align 16, !tbaa !8
  %2028 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 80), align 16, !tbaa !8
  %2029 = trunc <8 x i16> %2027 to <8 x i8>
  %2030 = trunc <8 x i16> %2028 to <8 x i8>
  store <8 x i8> %2029, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 160), align 16, !tbaa !5
  store <8 x i8> %2030, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 168), align 8, !tbaa !5
  store <8 x i8> %2029, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 160), align 16, !tbaa !5
  store <8 x i8> %2030, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 168), align 8, !tbaa !5
  store <8 x i8> %2029, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 160), align 16, !tbaa !5
  store <8 x i8> %2030, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 168), align 8, !tbaa !5
  %2031 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 96), align 16, !tbaa !8
  %2032 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 112), align 16, !tbaa !8
  %2033 = trunc <8 x i16> %2031 to <8 x i8>
  %2034 = trunc <8 x i16> %2032 to <8 x i8>
  store <8 x i8> %2033, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 176), align 16, !tbaa !5
  store <8 x i8> %2034, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 184), align 8, !tbaa !5
  store <8 x i8> %2033, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 176), align 16, !tbaa !5
  store <8 x i8> %2034, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 184), align 8, !tbaa !5
  store <8 x i8> %2033, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 176), align 16, !tbaa !5
  store <8 x i8> %2034, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 184), align 8, !tbaa !5
  br label %2165

2035:                                             ; preds = %2016
  %2036 = load <8 x i16>, ptr @gCoeffBuf, align 16, !tbaa !8
  %2037 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 16), align 16, !tbaa !8
  %2038 = trunc <8 x i16> %2036 to <8 x i8>
  %2039 = trunc <8 x i16> %2037 to <8 x i8>
  store <8 x i8> %2038, ptr @gMCUBufR, align 16, !tbaa !5
  store <8 x i8> %2039, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 8), align 8, !tbaa !5
  store <8 x i8> %2038, ptr @gMCUBufG, align 16, !tbaa !5
  store <8 x i8> %2039, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 8), align 8, !tbaa !5
  store <8 x i8> %2038, ptr @gMCUBufB, align 16, !tbaa !5
  store <8 x i8> %2039, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 8), align 8, !tbaa !5
  %2040 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 32), align 16, !tbaa !8
  %2041 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 48), align 16, !tbaa !8
  %2042 = trunc <8 x i16> %2040 to <8 x i8>
  %2043 = trunc <8 x i16> %2041 to <8 x i8>
  store <8 x i8> %2042, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 16), align 16, !tbaa !5
  store <8 x i8> %2043, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 24), align 8, !tbaa !5
  store <8 x i8> %2042, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 16), align 16, !tbaa !5
  store <8 x i8> %2043, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 24), align 8, !tbaa !5
  store <8 x i8> %2042, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 16), align 16, !tbaa !5
  store <8 x i8> %2043, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 24), align 8, !tbaa !5
  %2044 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 64), align 16, !tbaa !8
  %2045 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 80), align 16, !tbaa !8
  %2046 = trunc <8 x i16> %2044 to <8 x i8>
  %2047 = trunc <8 x i16> %2045 to <8 x i8>
  store <8 x i8> %2046, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 32), align 16, !tbaa !5
  store <8 x i8> %2047, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 40), align 8, !tbaa !5
  store <8 x i8> %2046, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 32), align 16, !tbaa !5
  store <8 x i8> %2047, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 40), align 8, !tbaa !5
  store <8 x i8> %2046, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 32), align 16, !tbaa !5
  store <8 x i8> %2047, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 40), align 8, !tbaa !5
  %2048 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 96), align 16, !tbaa !8
  %2049 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 112), align 16, !tbaa !8
  %2050 = trunc <8 x i16> %2048 to <8 x i8>
  %2051 = trunc <8 x i16> %2049 to <8 x i8>
  store <8 x i8> %2050, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 48), align 16, !tbaa !5
  store <8 x i8> %2051, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 56), align 8, !tbaa !5
  store <8 x i8> %2050, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 48), align 16, !tbaa !5
  store <8 x i8> %2051, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 56), align 8, !tbaa !5
  store <8 x i8> %2050, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 48), align 16, !tbaa !5
  store <8 x i8> %2051, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 56), align 8, !tbaa !5
  br label %2165

2052:                                             ; preds = %2016
  tail call fastcc void @upsampleCbV(i8 noundef zeroext 0, i8 noundef zeroext 0)
  tail call fastcc void @upsampleCbV(i8 noundef zeroext 32, i8 noundef zeroext -128)
  br label %2165

2053:                                             ; preds = %2016
  tail call fastcc void @upsampleCrV(i8 noundef zeroext 0, i8 noundef zeroext 0)
  tail call fastcc void @upsampleCrV(i8 noundef zeroext 32, i8 noundef zeroext -128)
  br label %2165

2054:                                             ; preds = %1576
  %2055 = trunc nuw i64 %107 to i8
  switch i8 %2055, label %2165 [
    i8 0, label %2073
    i8 1, label %2056
    i8 2, label %2090
    i8 3, label %2091
  ]

2056:                                             ; preds = %2054
  %2057 = load <8 x i16>, ptr @gCoeffBuf, align 16, !tbaa !8
  %2058 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 16), align 16, !tbaa !8
  %2059 = trunc <8 x i16> %2057 to <8 x i8>
  %2060 = trunc <8 x i16> %2058 to <8 x i8>
  store <8 x i8> %2059, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 64), align 16, !tbaa !5
  store <8 x i8> %2060, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 72), align 8, !tbaa !5
  store <8 x i8> %2059, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 64), align 16, !tbaa !5
  store <8 x i8> %2060, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 72), align 8, !tbaa !5
  store <8 x i8> %2059, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 64), align 16, !tbaa !5
  store <8 x i8> %2060, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 72), align 8, !tbaa !5
  %2061 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 32), align 16, !tbaa !8
  %2062 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 48), align 16, !tbaa !8
  %2063 = trunc <8 x i16> %2061 to <8 x i8>
  %2064 = trunc <8 x i16> %2062 to <8 x i8>
  store <8 x i8> %2063, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 80), align 16, !tbaa !5
  store <8 x i8> %2064, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 88), align 8, !tbaa !5
  store <8 x i8> %2063, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 80), align 16, !tbaa !5
  store <8 x i8> %2064, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 88), align 8, !tbaa !5
  store <8 x i8> %2063, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 80), align 16, !tbaa !5
  store <8 x i8> %2064, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 88), align 8, !tbaa !5
  %2065 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 64), align 16, !tbaa !8
  %2066 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 80), align 16, !tbaa !8
  %2067 = trunc <8 x i16> %2065 to <8 x i8>
  %2068 = trunc <8 x i16> %2066 to <8 x i8>
  store <8 x i8> %2067, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 96), align 16, !tbaa !5
  store <8 x i8> %2068, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 104), align 8, !tbaa !5
  store <8 x i8> %2067, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 96), align 16, !tbaa !5
  store <8 x i8> %2068, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 104), align 8, !tbaa !5
  store <8 x i8> %2067, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 96), align 16, !tbaa !5
  store <8 x i8> %2068, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 104), align 8, !tbaa !5
  %2069 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 96), align 16, !tbaa !8
  %2070 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 112), align 16, !tbaa !8
  %2071 = trunc <8 x i16> %2069 to <8 x i8>
  %2072 = trunc <8 x i16> %2070 to <8 x i8>
  store <8 x i8> %2071, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 112), align 16, !tbaa !5
  store <8 x i8> %2072, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 120), align 8, !tbaa !5
  store <8 x i8> %2071, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 112), align 16, !tbaa !5
  store <8 x i8> %2072, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 120), align 8, !tbaa !5
  store <8 x i8> %2071, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 112), align 16, !tbaa !5
  store <8 x i8> %2072, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 120), align 8, !tbaa !5
  br label %2165

2073:                                             ; preds = %2054
  %2074 = load <8 x i16>, ptr @gCoeffBuf, align 16, !tbaa !8
  %2075 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 16), align 16, !tbaa !8
  %2076 = trunc <8 x i16> %2074 to <8 x i8>
  %2077 = trunc <8 x i16> %2075 to <8 x i8>
  store <8 x i8> %2076, ptr @gMCUBufR, align 16, !tbaa !5
  store <8 x i8> %2077, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 8), align 8, !tbaa !5
  store <8 x i8> %2076, ptr @gMCUBufG, align 16, !tbaa !5
  store <8 x i8> %2077, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 8), align 8, !tbaa !5
  store <8 x i8> %2076, ptr @gMCUBufB, align 16, !tbaa !5
  store <8 x i8> %2077, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 8), align 8, !tbaa !5
  %2078 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 32), align 16, !tbaa !8
  %2079 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 48), align 16, !tbaa !8
  %2080 = trunc <8 x i16> %2078 to <8 x i8>
  %2081 = trunc <8 x i16> %2079 to <8 x i8>
  store <8 x i8> %2080, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 16), align 16, !tbaa !5
  store <8 x i8> %2081, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 24), align 8, !tbaa !5
  store <8 x i8> %2080, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 16), align 16, !tbaa !5
  store <8 x i8> %2081, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 24), align 8, !tbaa !5
  store <8 x i8> %2080, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 16), align 16, !tbaa !5
  store <8 x i8> %2081, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 24), align 8, !tbaa !5
  %2082 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 64), align 16, !tbaa !8
  %2083 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 80), align 16, !tbaa !8
  %2084 = trunc <8 x i16> %2082 to <8 x i8>
  %2085 = trunc <8 x i16> %2083 to <8 x i8>
  store <8 x i8> %2084, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 32), align 16, !tbaa !5
  store <8 x i8> %2085, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 40), align 8, !tbaa !5
  store <8 x i8> %2084, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 32), align 16, !tbaa !5
  store <8 x i8> %2085, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 40), align 8, !tbaa !5
  store <8 x i8> %2084, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 32), align 16, !tbaa !5
  store <8 x i8> %2085, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 40), align 8, !tbaa !5
  %2086 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 96), align 16, !tbaa !8
  %2087 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 112), align 16, !tbaa !8
  %2088 = trunc <8 x i16> %2086 to <8 x i8>
  %2089 = trunc <8 x i16> %2087 to <8 x i8>
  store <8 x i8> %2088, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 48), align 16, !tbaa !5
  store <8 x i8> %2089, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 56), align 8, !tbaa !5
  store <8 x i8> %2088, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 48), align 16, !tbaa !5
  store <8 x i8> %2089, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 56), align 8, !tbaa !5
  store <8 x i8> %2088, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 48), align 16, !tbaa !5
  store <8 x i8> %2089, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 56), align 8, !tbaa !5
  br label %2165

2090:                                             ; preds = %2054
  tail call fastcc void @upsampleCbH(i8 noundef zeroext 0, i8 noundef zeroext 0)
  tail call fastcc void @upsampleCbH(i8 noundef zeroext 4, i8 noundef zeroext 64)
  br label %2165

2091:                                             ; preds = %2054
  tail call fastcc void @upsampleCrH(i8 noundef zeroext 0, i8 noundef zeroext 0)
  tail call fastcc void @upsampleCrH(i8 noundef zeroext 4, i8 noundef zeroext 64)
  br label %2165

2092:                                             ; preds = %1576
  %2093 = trunc nuw i64 %107 to i8
  switch i8 %2093, label %2165 [
    i8 0, label %2145
    i8 1, label %2128
    i8 2, label %2111
    i8 3, label %2094
    i8 4, label %2162
    i8 5, label %2163
  ]

2094:                                             ; preds = %2092
  %2095 = load <8 x i16>, ptr @gCoeffBuf, align 16, !tbaa !8
  %2096 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 16), align 16, !tbaa !8
  %2097 = trunc <8 x i16> %2095 to <8 x i8>
  %2098 = trunc <8 x i16> %2096 to <8 x i8>
  store <8 x i8> %2097, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 192), align 16, !tbaa !5
  store <8 x i8> %2098, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 200), align 8, !tbaa !5
  store <8 x i8> %2097, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 192), align 16, !tbaa !5
  store <8 x i8> %2098, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 200), align 8, !tbaa !5
  store <8 x i8> %2097, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 192), align 16, !tbaa !5
  store <8 x i8> %2098, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 200), align 8, !tbaa !5
  %2099 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 32), align 16, !tbaa !8
  %2100 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 48), align 16, !tbaa !8
  %2101 = trunc <8 x i16> %2099 to <8 x i8>
  %2102 = trunc <8 x i16> %2100 to <8 x i8>
  store <8 x i8> %2101, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 208), align 16, !tbaa !5
  store <8 x i8> %2102, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 216), align 8, !tbaa !5
  store <8 x i8> %2101, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 208), align 16, !tbaa !5
  store <8 x i8> %2102, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 216), align 8, !tbaa !5
  store <8 x i8> %2101, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 208), align 16, !tbaa !5
  store <8 x i8> %2102, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 216), align 8, !tbaa !5
  %2103 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 64), align 16, !tbaa !8
  %2104 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 80), align 16, !tbaa !8
  %2105 = trunc <8 x i16> %2103 to <8 x i8>
  %2106 = trunc <8 x i16> %2104 to <8 x i8>
  store <8 x i8> %2105, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 224), align 16, !tbaa !5
  store <8 x i8> %2106, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 232), align 8, !tbaa !5
  store <8 x i8> %2105, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 224), align 16, !tbaa !5
  store <8 x i8> %2106, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 232), align 8, !tbaa !5
  store <8 x i8> %2105, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 224), align 16, !tbaa !5
  store <8 x i8> %2106, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 232), align 8, !tbaa !5
  %2107 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 96), align 16, !tbaa !8
  %2108 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 112), align 16, !tbaa !8
  %2109 = trunc <8 x i16> %2107 to <8 x i8>
  %2110 = trunc <8 x i16> %2108 to <8 x i8>
  store <8 x i8> %2109, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 240), align 16, !tbaa !5
  store <8 x i8> %2110, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 248), align 8, !tbaa !5
  store <8 x i8> %2109, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 240), align 16, !tbaa !5
  store <8 x i8> %2110, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 248), align 8, !tbaa !5
  store <8 x i8> %2109, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 240), align 16, !tbaa !5
  store <8 x i8> %2110, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 248), align 8, !tbaa !5
  br label %2165

2111:                                             ; preds = %2092
  %2112 = load <8 x i16>, ptr @gCoeffBuf, align 16, !tbaa !8
  %2113 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 16), align 16, !tbaa !8
  %2114 = trunc <8 x i16> %2112 to <8 x i8>
  %2115 = trunc <8 x i16> %2113 to <8 x i8>
  store <8 x i8> %2114, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 128), align 16, !tbaa !5
  store <8 x i8> %2115, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 136), align 8, !tbaa !5
  store <8 x i8> %2114, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 128), align 16, !tbaa !5
  store <8 x i8> %2115, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 136), align 8, !tbaa !5
  store <8 x i8> %2114, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 128), align 16, !tbaa !5
  store <8 x i8> %2115, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 136), align 8, !tbaa !5
  %2116 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 32), align 16, !tbaa !8
  %2117 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 48), align 16, !tbaa !8
  %2118 = trunc <8 x i16> %2116 to <8 x i8>
  %2119 = trunc <8 x i16> %2117 to <8 x i8>
  store <8 x i8> %2118, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 144), align 16, !tbaa !5
  store <8 x i8> %2119, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 152), align 8, !tbaa !5
  store <8 x i8> %2118, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 144), align 16, !tbaa !5
  store <8 x i8> %2119, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 152), align 8, !tbaa !5
  store <8 x i8> %2118, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 144), align 16, !tbaa !5
  store <8 x i8> %2119, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 152), align 8, !tbaa !5
  %2120 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 64), align 16, !tbaa !8
  %2121 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 80), align 16, !tbaa !8
  %2122 = trunc <8 x i16> %2120 to <8 x i8>
  %2123 = trunc <8 x i16> %2121 to <8 x i8>
  store <8 x i8> %2122, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 160), align 16, !tbaa !5
  store <8 x i8> %2123, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 168), align 8, !tbaa !5
  store <8 x i8> %2122, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 160), align 16, !tbaa !5
  store <8 x i8> %2123, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 168), align 8, !tbaa !5
  store <8 x i8> %2122, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 160), align 16, !tbaa !5
  store <8 x i8> %2123, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 168), align 8, !tbaa !5
  %2124 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 96), align 16, !tbaa !8
  %2125 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 112), align 16, !tbaa !8
  %2126 = trunc <8 x i16> %2124 to <8 x i8>
  %2127 = trunc <8 x i16> %2125 to <8 x i8>
  store <8 x i8> %2126, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 176), align 16, !tbaa !5
  store <8 x i8> %2127, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 184), align 8, !tbaa !5
  store <8 x i8> %2126, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 176), align 16, !tbaa !5
  store <8 x i8> %2127, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 184), align 8, !tbaa !5
  store <8 x i8> %2126, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 176), align 16, !tbaa !5
  store <8 x i8> %2127, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 184), align 8, !tbaa !5
  br label %2165

2128:                                             ; preds = %2092
  %2129 = load <8 x i16>, ptr @gCoeffBuf, align 16, !tbaa !8
  %2130 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 16), align 16, !tbaa !8
  %2131 = trunc <8 x i16> %2129 to <8 x i8>
  %2132 = trunc <8 x i16> %2130 to <8 x i8>
  store <8 x i8> %2131, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 64), align 16, !tbaa !5
  store <8 x i8> %2132, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 72), align 8, !tbaa !5
  store <8 x i8> %2131, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 64), align 16, !tbaa !5
  store <8 x i8> %2132, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 72), align 8, !tbaa !5
  store <8 x i8> %2131, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 64), align 16, !tbaa !5
  store <8 x i8> %2132, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 72), align 8, !tbaa !5
  %2133 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 32), align 16, !tbaa !8
  %2134 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 48), align 16, !tbaa !8
  %2135 = trunc <8 x i16> %2133 to <8 x i8>
  %2136 = trunc <8 x i16> %2134 to <8 x i8>
  store <8 x i8> %2135, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 80), align 16, !tbaa !5
  store <8 x i8> %2136, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 88), align 8, !tbaa !5
  store <8 x i8> %2135, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 80), align 16, !tbaa !5
  store <8 x i8> %2136, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 88), align 8, !tbaa !5
  store <8 x i8> %2135, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 80), align 16, !tbaa !5
  store <8 x i8> %2136, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 88), align 8, !tbaa !5
  %2137 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 64), align 16, !tbaa !8
  %2138 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 80), align 16, !tbaa !8
  %2139 = trunc <8 x i16> %2137 to <8 x i8>
  %2140 = trunc <8 x i16> %2138 to <8 x i8>
  store <8 x i8> %2139, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 96), align 16, !tbaa !5
  store <8 x i8> %2140, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 104), align 8, !tbaa !5
  store <8 x i8> %2139, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 96), align 16, !tbaa !5
  store <8 x i8> %2140, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 104), align 8, !tbaa !5
  store <8 x i8> %2139, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 96), align 16, !tbaa !5
  store <8 x i8> %2140, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 104), align 8, !tbaa !5
  %2141 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 96), align 16, !tbaa !8
  %2142 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 112), align 16, !tbaa !8
  %2143 = trunc <8 x i16> %2141 to <8 x i8>
  %2144 = trunc <8 x i16> %2142 to <8 x i8>
  store <8 x i8> %2143, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 112), align 16, !tbaa !5
  store <8 x i8> %2144, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 120), align 8, !tbaa !5
  store <8 x i8> %2143, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 112), align 16, !tbaa !5
  store <8 x i8> %2144, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 120), align 8, !tbaa !5
  store <8 x i8> %2143, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 112), align 16, !tbaa !5
  store <8 x i8> %2144, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 120), align 8, !tbaa !5
  br label %2165

2145:                                             ; preds = %2092
  %2146 = load <8 x i16>, ptr @gCoeffBuf, align 16, !tbaa !8
  %2147 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 16), align 16, !tbaa !8
  %2148 = trunc <8 x i16> %2146 to <8 x i8>
  %2149 = trunc <8 x i16> %2147 to <8 x i8>
  store <8 x i8> %2148, ptr @gMCUBufR, align 16, !tbaa !5
  store <8 x i8> %2149, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 8), align 8, !tbaa !5
  store <8 x i8> %2148, ptr @gMCUBufG, align 16, !tbaa !5
  store <8 x i8> %2149, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 8), align 8, !tbaa !5
  store <8 x i8> %2148, ptr @gMCUBufB, align 16, !tbaa !5
  store <8 x i8> %2149, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 8), align 8, !tbaa !5
  %2150 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 32), align 16, !tbaa !8
  %2151 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 48), align 16, !tbaa !8
  %2152 = trunc <8 x i16> %2150 to <8 x i8>
  %2153 = trunc <8 x i16> %2151 to <8 x i8>
  store <8 x i8> %2152, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 16), align 16, !tbaa !5
  store <8 x i8> %2153, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 24), align 8, !tbaa !5
  store <8 x i8> %2152, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 16), align 16, !tbaa !5
  store <8 x i8> %2153, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 24), align 8, !tbaa !5
  store <8 x i8> %2152, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 16), align 16, !tbaa !5
  store <8 x i8> %2153, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 24), align 8, !tbaa !5
  %2154 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 64), align 16, !tbaa !8
  %2155 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 80), align 16, !tbaa !8
  %2156 = trunc <8 x i16> %2154 to <8 x i8>
  %2157 = trunc <8 x i16> %2155 to <8 x i8>
  store <8 x i8> %2156, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 32), align 16, !tbaa !5
  store <8 x i8> %2157, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 40), align 8, !tbaa !5
  store <8 x i8> %2156, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 32), align 16, !tbaa !5
  store <8 x i8> %2157, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 40), align 8, !tbaa !5
  store <8 x i8> %2156, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 32), align 16, !tbaa !5
  store <8 x i8> %2157, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 40), align 8, !tbaa !5
  %2158 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 96), align 16, !tbaa !8
  %2159 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @gCoeffBuf, i64 112), align 16, !tbaa !8
  %2160 = trunc <8 x i16> %2158 to <8 x i8>
  %2161 = trunc <8 x i16> %2159 to <8 x i8>
  store <8 x i8> %2160, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 48), align 16, !tbaa !5
  store <8 x i8> %2161, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufR, i64 56), align 8, !tbaa !5
  store <8 x i8> %2160, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 48), align 16, !tbaa !5
  store <8 x i8> %2161, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufG, i64 56), align 8, !tbaa !5
  store <8 x i8> %2160, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 48), align 16, !tbaa !5
  store <8 x i8> %2161, ptr getelementptr inbounds nuw (i8, ptr @gMCUBufB, i64 56), align 8, !tbaa !5
  br label %2165

2162:                                             ; preds = %2092
  tail call fastcc void @upsampleCb(i8 noundef zeroext 0, i8 noundef zeroext 0)
  tail call fastcc void @upsampleCb(i8 noundef zeroext 4, i8 noundef zeroext 64)
  tail call fastcc void @upsampleCb(i8 noundef zeroext 32, i8 noundef zeroext -128)
  tail call fastcc void @upsampleCb(i8 noundef zeroext 36, i8 noundef zeroext -64)
  br label %2165

2163:                                             ; preds = %2092
  tail call fastcc void @upsampleCr(i8 noundef zeroext 0, i8 noundef zeroext 0)
  tail call fastcc void @upsampleCr(i8 noundef zeroext 4, i8 noundef zeroext 64)
  tail call fastcc void @upsampleCr(i8 noundef zeroext 32, i8 noundef zeroext -128)
  tail call fastcc void @upsampleCr(i8 noundef zeroext 36, i8 noundef zeroext -64)
  br label %2165

2164:                                             ; preds = %1576
  unreachable

2165:                                             ; preds = %2094, %2111, %2128, %2145, %2056, %2073, %2018, %2035, %1597, %1798, %1999, %1578, %2163, %2162, %2092, %2091, %2090, %2054, %2053, %2052, %2016, %1595, %851, %776, %775, %774, %773, %772, %770, %727, %684, %683, %682, %680, %637, %594, %593, %592, %590, %563, %536, %535, %533, %532
  %2166 = add nuw nsw i64 %107, 1
  %2167 = load i8, ptr @gMaxBlocksPerMCU, align 1, !tbaa !5
  %2168 = zext i8 %2167 to i64
  %2169 = icmp samesign ult i64 %2166, %2168
  br i1 %2169, label %106, label %2175, !llvm.loop !25

2170:                                             ; preds = %42, %72, %509, %503, %1201, %1107, %76
  %2171 = phi i8 [ 29, %76 ], [ 28, %1107 ], [ 28, %1201 ], [ 28, %503 ], [ 28, %509 ], [ 29, %72 ], [ 29, %42 ]
  %2172 = load i8, ptr @gCallbackStatus, align 1
  %2173 = icmp eq i8 %2172, 0
  %2174 = select i1 %2173, i8 %2171, i8 %2172
  br label %2181

2175:                                             ; preds = %2165, %103
  %2176 = load i8, ptr @gCallbackStatus, align 1
  %2177 = icmp eq i8 %2176, 0
  br i1 %2177, label %2178, label %2181

2178:                                             ; preds = %2175
  %2179 = load i16, ptr @gNumMCUSRemaining, align 2, !tbaa !8
  %2180 = add i16 %2179, -1
  store i16 %2180, ptr @gNumMCUSRemaining, align 2, !tbaa !8
  br label %2181

2181:                                             ; preds = %2175, %2170, %3, %0, %2178
  %2182 = phi i8 [ 0, %2178 ], [ %1, %0 ], [ 1, %3 ], [ %2174, %2170 ], [ %2176, %2175 ]
  ret i8 %2182
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @pjpeg_decode_init(ptr nocapture noundef writeonly initializes((0, 56)) %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false)
  store ptr %1, ptr @g_pNeedBytesCallback, align 8, !tbaa !10
  store ptr %2, ptr @g_pCallback_data, align 8, !tbaa !10
  store i8 0, ptr @gCallbackStatus, align 1, !tbaa !5
  store i8 %3, ptr @gReduce, align 1, !tbaa !5
  store i16 0, ptr @gImageXSize, align 2, !tbaa !8
  store i16 0, ptr @gImageYSize, align 2, !tbaa !8
  store i8 0, ptr @gCompsInFrame, align 1, !tbaa !5
  store i16 0, ptr @gRestartInterval, align 2, !tbaa !8
  store i8 0, ptr @gCompsInScan, align 1, !tbaa !5
  store i8 0, ptr @gValidHuffTables, align 1, !tbaa !5
  store i8 0, ptr @gValidQuantTables, align 1, !tbaa !5
  store i8 0, ptr @gTemFlag, align 1, !tbaa !5
  store i8 0, ptr @gInBufLeft, align 1, !tbaa !5
  store i8 0, ptr @gBitsLeft, align 1, !tbaa !5
  store i16 0, ptr @gBitBuf, align 2, !tbaa !8
  store i8 4, ptr @gInBufOfs, align 1, !tbaa !5
  %17 = tail call zeroext i8 %1(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @gInBuf, i64 4), i8 noundef zeroext -4, ptr noundef nonnull @gInBufLeft, ptr noundef %2) #5
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  store i8 %17, ptr @gCallbackStatus, align 1, !tbaa !5
  br label %20

20:                                               ; preds = %19, %4
  %21 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %20
  %24 = add i8 %21, -1
  store i8 %24, ptr @gInBufLeft, align 1, !tbaa !5
  %25 = load i8, ptr @gInBufOfs, align 1, !tbaa !5
  %26 = add i8 %25, 1
  store i8 %26, ptr @gInBufOfs, align 1, !tbaa !5
  %27 = zext i8 %25 to i64
  %28 = getelementptr inbounds nuw [256 x i8], ptr @gInBuf, i64 0, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !5
  br label %35

30:                                               ; preds = %20
  %31 = load i8, ptr @gTemFlag, align 1, !tbaa !5
  %32 = xor i8 %31, -1
  store i8 %32, ptr @gTemFlag, align 1, !tbaa !5
  %33 = icmp eq i8 %31, -1
  %34 = select i1 %33, i8 -39, i8 -1
  br label %35

35:                                               ; preds = %23, %30
  %36 = phi i8 [ 0, %30 ], [ %24, %23 ]
  %37 = phi i8 [ %34, %30 ], [ %29, %23 ]
  %38 = load i16, ptr @gBitBuf, align 2, !tbaa !8
  %39 = zext i8 %37 to i16
  %40 = or i16 %38, %39
  %41 = load i8, ptr @gBitsLeft, align 1, !tbaa !5
  %42 = zext i8 %41 to i32
  %43 = sub nsw i32 8, %42
  %44 = zext i16 %40 to i32
  %45 = shl nuw nsw i32 %44, %43
  %46 = trunc i32 %45 to i16
  store i16 %46, ptr @gBitBuf, align 2, !tbaa !8
  %47 = load i8, ptr @gCallbackStatus, align 1
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %1129

49:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #5
  %50 = icmp ult i8 %41, 8
  br i1 %50, label %51, label %88

51:                                               ; preds = %49
  %52 = shl i32 %45, %42
  %53 = trunc i32 %52 to i16
  store i16 %53, ptr @gBitBuf, align 2, !tbaa !8
  %54 = icmp eq i8 %36, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %51
  store i8 4, ptr @gInBufOfs, align 1, !tbaa !5
  %56 = load ptr, ptr @g_pNeedBytesCallback, align 8, !tbaa !10
  %57 = load ptr, ptr @g_pCallback_data, align 8, !tbaa !10
  %58 = tail call zeroext i8 %56(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @gInBuf, i64 4), i8 noundef zeroext -4, ptr noundef nonnull @gInBufLeft, ptr noundef %57) #5
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  store i8 %58, ptr @gCallbackStatus, align 1, !tbaa !5
  br label %61

61:                                               ; preds = %60, %55
  %62 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %61, %51
  %65 = phi i8 [ %62, %61 ], [ %36, %51 ]
  %66 = add i8 %65, -1
  store i8 %66, ptr @gInBufLeft, align 1, !tbaa !5
  %67 = load i8, ptr @gInBufOfs, align 1, !tbaa !5
  %68 = add i8 %67, 1
  store i8 %68, ptr @gInBufOfs, align 1, !tbaa !5
  %69 = zext i8 %67 to i64
  %70 = getelementptr inbounds nuw [256 x i8], ptr @gInBuf, i64 0, i64 %69
  %71 = load i8, ptr %70, align 1, !tbaa !5
  br label %77

72:                                               ; preds = %61
  %73 = load i8, ptr @gTemFlag, align 1, !tbaa !5
  %74 = xor i8 %73, -1
  store i8 %74, ptr @gTemFlag, align 1, !tbaa !5
  %75 = icmp eq i8 %73, -1
  %76 = select i1 %75, i8 -39, i8 -1
  br label %77

77:                                               ; preds = %72, %64
  %78 = phi i8 [ 0, %72 ], [ %66, %64 ]
  %79 = phi i8 [ %76, %72 ], [ %71, %64 ]
  %80 = load i16, ptr @gBitBuf, align 2, !tbaa !8
  %81 = zext i8 %79 to i16
  %82 = or i16 %80, %81
  %83 = load i8, ptr @gBitsLeft, align 1, !tbaa !5
  %84 = zext i8 %83 to i32
  %85 = sub nsw i32 8, %84
  %86 = zext i16 %82 to i32
  %87 = shl nuw nsw i32 %86, %85
  br label %92

88:                                               ; preds = %49
  %89 = add i8 %41, -8
  %90 = shl i32 %45, 8
  %91 = and i32 %90, 16776960
  br label %92

92:                                               ; preds = %88, %77
  %93 = phi i8 [ %78, %77 ], [ %36, %88 ]
  %94 = phi i32 [ %87, %77 ], [ %91, %88 ]
  %95 = phi i8 [ %83, %77 ], [ %89, %88 ]
  store i8 %95, ptr @gBitsLeft, align 1, !tbaa !5
  %96 = icmp ult i8 %95, 8
  %97 = and i32 %94, 65535
  br i1 %96, label %98, label %136

98:                                               ; preds = %92
  %99 = zext nneg i8 %95 to i32
  %100 = shl i32 %94, %99
  %101 = trunc i32 %100 to i16
  store i16 %101, ptr @gBitBuf, align 2, !tbaa !8
  %102 = icmp eq i8 %93, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %98
  store i8 4, ptr @gInBufOfs, align 1, !tbaa !5
  %104 = load ptr, ptr @g_pNeedBytesCallback, align 8, !tbaa !10
  %105 = load ptr, ptr @g_pCallback_data, align 8, !tbaa !10
  %106 = tail call zeroext i8 %104(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @gInBuf, i64 4), i8 noundef zeroext -4, ptr noundef nonnull @gInBufLeft, ptr noundef %105) #5
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %103
  store i8 %106, ptr @gCallbackStatus, align 1, !tbaa !5
  br label %109

109:                                              ; preds = %108, %103
  %110 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %120, label %112

112:                                              ; preds = %109, %98
  %113 = phi i8 [ %110, %109 ], [ %93, %98 ]
  %114 = add i8 %113, -1
  store i8 %114, ptr @gInBufLeft, align 1, !tbaa !5
  %115 = load i8, ptr @gInBufOfs, align 1, !tbaa !5
  %116 = add i8 %115, 1
  store i8 %116, ptr @gInBufOfs, align 1, !tbaa !5
  %117 = zext i8 %115 to i64
  %118 = getelementptr inbounds nuw [256 x i8], ptr @gInBuf, i64 0, i64 %117
  %119 = load i8, ptr %118, align 1, !tbaa !5
  br label %125

120:                                              ; preds = %109
  %121 = load i8, ptr @gTemFlag, align 1, !tbaa !5
  %122 = xor i8 %121, -1
  store i8 %122, ptr @gTemFlag, align 1, !tbaa !5
  %123 = icmp eq i8 %121, -1
  %124 = select i1 %123, i8 -39, i8 -1
  br label %125

125:                                              ; preds = %120, %112
  %126 = phi i8 [ 0, %120 ], [ %114, %112 ]
  %127 = phi i8 [ %124, %120 ], [ %119, %112 ]
  %128 = load i16, ptr @gBitBuf, align 2, !tbaa !8
  %129 = zext i8 %127 to i16
  %130 = or i16 %128, %129
  %131 = load i8, ptr @gBitsLeft, align 1, !tbaa !5
  %132 = zext i8 %131 to i32
  %133 = sub nsw i32 8, %132
  %134 = zext i16 %130 to i32
  %135 = shl nuw nsw i32 %134, %133
  br label %139

136:                                              ; preds = %92
  %137 = add i8 %95, -8
  %138 = shl nuw nsw i32 %97, 8
  br label %139

139:                                              ; preds = %136, %125
  %140 = phi i8 [ %126, %125 ], [ %93, %136 ]
  %141 = phi i32 [ %135, %125 ], [ %138, %136 ]
  %142 = phi i8 [ %131, %125 ], [ %137, %136 ]
  %143 = trunc i32 %141 to i16
  store i16 %143, ptr @gBitBuf, align 2, !tbaa !8
  store i8 %142, ptr @gBitsLeft, align 1, !tbaa !5
  %144 = lshr i32 %97, 8
  %145 = icmp ugt i16 %46, -257
  %146 = icmp eq i32 %144, 216
  %147 = select i1 %145, i1 %146, i1 false
  br i1 %147, label %213, label %148

148:                                              ; preds = %139
  %149 = trunc nuw nsw i32 %144 to i16
  br label %150

150:                                              ; preds = %208, %148
  %151 = phi i8 [ %200, %208 ], [ %140, %148 ]
  %152 = phi i8 [ %202, %208 ], [ %142, %148 ]
  %153 = phi i16 [ %203, %208 ], [ %143, %148 ]
  %154 = phi i16 [ %209, %208 ], [ 4095, %148 ]
  %155 = phi i16 [ %204, %208 ], [ %149, %148 ]
  %156 = icmp ult i8 %152, 8
  %157 = zext i16 %153 to i32
  br i1 %156, label %158, label %196

158:                                              ; preds = %150
  %159 = zext nneg i8 %152 to i32
  %160 = shl nuw nsw i32 %157, %159
  %161 = trunc i32 %160 to i16
  store i16 %161, ptr @gBitBuf, align 2, !tbaa !8
  %162 = icmp eq i8 %151, 0
  br i1 %162, label %163, label %172

163:                                              ; preds = %158
  store i8 4, ptr @gInBufOfs, align 1, !tbaa !5
  %164 = load ptr, ptr @g_pNeedBytesCallback, align 8, !tbaa !10
  %165 = load ptr, ptr @g_pCallback_data, align 8, !tbaa !10
  %166 = tail call zeroext i8 %164(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @gInBuf, i64 4), i8 noundef zeroext -4, ptr noundef nonnull @gInBufLeft, ptr noundef %165) #5
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %163
  store i8 %166, ptr @gCallbackStatus, align 1, !tbaa !5
  br label %169

169:                                              ; preds = %168, %163
  %170 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %180, label %172

172:                                              ; preds = %169, %158
  %173 = phi i8 [ %170, %169 ], [ %151, %158 ]
  %174 = add i8 %173, -1
  store i8 %174, ptr @gInBufLeft, align 1, !tbaa !5
  %175 = load i8, ptr @gInBufOfs, align 1, !tbaa !5
  %176 = add i8 %175, 1
  store i8 %176, ptr @gInBufOfs, align 1, !tbaa !5
  %177 = zext i8 %175 to i64
  %178 = getelementptr inbounds nuw [256 x i8], ptr @gInBuf, i64 0, i64 %177
  %179 = load i8, ptr %178, align 1, !tbaa !5
  br label %185

180:                                              ; preds = %169
  %181 = load i8, ptr @gTemFlag, align 1, !tbaa !5
  %182 = xor i8 %181, -1
  store i8 %182, ptr @gTemFlag, align 1, !tbaa !5
  %183 = icmp eq i8 %181, -1
  %184 = select i1 %183, i8 -39, i8 -1
  br label %185

185:                                              ; preds = %180, %172
  %186 = phi i8 [ 0, %180 ], [ %174, %172 ]
  %187 = phi i8 [ %184, %180 ], [ %179, %172 ]
  %188 = load i16, ptr @gBitBuf, align 2, !tbaa !8
  %189 = zext i8 %187 to i16
  %190 = or i16 %188, %189
  %191 = load i8, ptr @gBitsLeft, align 1, !tbaa !5
  %192 = zext i8 %191 to i32
  %193 = sub nsw i32 8, %192
  %194 = zext i16 %190 to i32
  %195 = shl nuw nsw i32 %194, %193
  br label %199

196:                                              ; preds = %150
  %197 = add i8 %152, -8
  %198 = shl nuw nsw i32 %157, 8
  br label %199

199:                                              ; preds = %196, %185
  %200 = phi i8 [ %186, %185 ], [ %151, %196 ]
  %201 = phi i32 [ %195, %185 ], [ %198, %196 ]
  %202 = phi i8 [ %191, %185 ], [ %197, %196 ]
  %203 = trunc i32 %201 to i16
  store i16 %203, ptr @gBitBuf, align 2, !tbaa !8
  store i8 %202, ptr @gBitsLeft, align 1, !tbaa !5
  %204 = lshr i16 %153, 8
  %205 = icmp eq i16 %155, 255
  br i1 %205, label %206, label %208

206:                                              ; preds = %199
  %207 = trunc nuw i16 %204 to i8
  switch i8 %207, label %208 [
    i8 -40, label %211
    i8 -39, label %549
  ]

208:                                              ; preds = %206, %199
  %209 = add nsw i16 %154, -1
  %210 = icmp eq i16 %209, 0
  br i1 %210, label %549, label %150

211:                                              ; preds = %206
  %212 = icmp ugt i16 %203, -257
  br i1 %212, label %213, label %549

213:                                              ; preds = %211, %139
  %214 = call fastcc zeroext i8 @processMarkers(ptr noundef %6)
  %215 = icmp eq i8 %214, 0
  br i1 %215, label %216, label %549

216:                                              ; preds = %213
  %217 = load i8, ptr %6, align 1, !tbaa !5
  switch i8 %217, label %548 [
    i8 -62, label %549
    i8 -64, label %218
    i8 -55, label %547
  ]

218:                                              ; preds = %216
  %219 = tail call fastcc zeroext i16 @getBits1(i8 noundef zeroext 16)
  %220 = load i16, ptr @gBitBuf, align 2, !tbaa !8
  %221 = load i8, ptr @gBitsLeft, align 1, !tbaa !5
  %222 = icmp ult i8 %221, 8
  %223 = zext i16 %220 to i32
  br i1 %222, label %224, label %262

224:                                              ; preds = %218
  %225 = zext nneg i8 %221 to i32
  %226 = shl nuw nsw i32 %223, %225
  %227 = trunc i32 %226 to i16
  store i16 %227, ptr @gBitBuf, align 2, !tbaa !8
  %228 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %229 = icmp eq i8 %228, 0
  br i1 %229, label %230, label %239

230:                                              ; preds = %224
  store i8 4, ptr @gInBufOfs, align 1, !tbaa !5
  %231 = load ptr, ptr @g_pNeedBytesCallback, align 8, !tbaa !10
  %232 = load ptr, ptr @g_pCallback_data, align 8, !tbaa !10
  %233 = tail call zeroext i8 %231(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @gInBuf, i64 4), i8 noundef zeroext -4, ptr noundef nonnull @gInBufLeft, ptr noundef %232) #5
  %234 = icmp eq i8 %233, 0
  br i1 %234, label %236, label %235

235:                                              ; preds = %230
  store i8 %233, ptr @gCallbackStatus, align 1, !tbaa !5
  br label %236

236:                                              ; preds = %235, %230
  %237 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %247, label %239

239:                                              ; preds = %236, %224
  %240 = phi i8 [ %237, %236 ], [ %228, %224 ]
  %241 = add i8 %240, -1
  store i8 %241, ptr @gInBufLeft, align 1, !tbaa !5
  %242 = load i8, ptr @gInBufOfs, align 1, !tbaa !5
  %243 = add i8 %242, 1
  store i8 %243, ptr @gInBufOfs, align 1, !tbaa !5
  %244 = zext i8 %242 to i64
  %245 = getelementptr inbounds nuw [256 x i8], ptr @gInBuf, i64 0, i64 %244
  %246 = load i8, ptr %245, align 1, !tbaa !5
  br label %252

247:                                              ; preds = %236
  %248 = load i8, ptr @gTemFlag, align 1, !tbaa !5
  %249 = xor i8 %248, -1
  store i8 %249, ptr @gTemFlag, align 1, !tbaa !5
  %250 = icmp eq i8 %248, -1
  %251 = select i1 %250, i8 -39, i8 -1
  br label %252

252:                                              ; preds = %247, %239
  %253 = phi i8 [ %251, %247 ], [ %246, %239 ]
  %254 = load i16, ptr @gBitBuf, align 2, !tbaa !8
  %255 = zext i8 %253 to i16
  %256 = or i16 %254, %255
  %257 = load i8, ptr @gBitsLeft, align 1, !tbaa !5
  %258 = zext i8 %257 to i32
  %259 = sub nsw i32 8, %258
  %260 = zext i16 %256 to i32
  %261 = shl nuw nsw i32 %260, %259
  br label %265

262:                                              ; preds = %218
  %263 = add i8 %221, -8
  %264 = shl nuw nsw i32 %223, 8
  br label %265

265:                                              ; preds = %262, %252
  %266 = phi i32 [ %261, %252 ], [ %264, %262 ]
  %267 = phi i8 [ %257, %252 ], [ %263, %262 ]
  %268 = trunc i32 %266 to i16
  store i16 %268, ptr @gBitBuf, align 2, !tbaa !8
  store i8 %267, ptr @gBitsLeft, align 1, !tbaa !5
  %269 = and i16 %220, -256
  %270 = icmp eq i16 %269, 2048
  br i1 %270, label %271, label %549

271:                                              ; preds = %265
  %272 = tail call fastcc zeroext i16 @getBits1(i8 noundef zeroext 16)
  store i16 %272, ptr @gImageYSize, align 2, !tbaa !8
  %273 = add i16 %272, -16385
  %274 = icmp ult i16 %273, -16384
  br i1 %274, label %549, label %275

275:                                              ; preds = %271
  %276 = tail call fastcc zeroext i16 @getBits1(i8 noundef zeroext 16)
  store i16 %276, ptr @gImageXSize, align 2, !tbaa !8
  %277 = add i16 %276, -16385
  %278 = icmp ult i16 %277, -16384
  br i1 %278, label %549, label %279

279:                                              ; preds = %275
  %280 = load i16, ptr @gBitBuf, align 2, !tbaa !8
  %281 = load i8, ptr @gBitsLeft, align 1, !tbaa !5
  %282 = icmp ult i8 %281, 8
  %283 = zext i16 %280 to i32
  br i1 %282, label %284, label %322

284:                                              ; preds = %279
  %285 = zext nneg i8 %281 to i32
  %286 = shl nuw nsw i32 %283, %285
  %287 = trunc i32 %286 to i16
  store i16 %287, ptr @gBitBuf, align 2, !tbaa !8
  %288 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %289 = icmp eq i8 %288, 0
  br i1 %289, label %290, label %299

290:                                              ; preds = %284
  store i8 4, ptr @gInBufOfs, align 1, !tbaa !5
  %291 = load ptr, ptr @g_pNeedBytesCallback, align 8, !tbaa !10
  %292 = load ptr, ptr @g_pCallback_data, align 8, !tbaa !10
  %293 = tail call zeroext i8 %291(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @gInBuf, i64 4), i8 noundef zeroext -4, ptr noundef nonnull @gInBufLeft, ptr noundef %292) #5
  %294 = icmp eq i8 %293, 0
  br i1 %294, label %296, label %295

295:                                              ; preds = %290
  store i8 %293, ptr @gCallbackStatus, align 1, !tbaa !5
  br label %296

296:                                              ; preds = %295, %290
  %297 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %298 = icmp eq i8 %297, 0
  br i1 %298, label %307, label %299

299:                                              ; preds = %296, %284
  %300 = phi i8 [ %297, %296 ], [ %288, %284 ]
  %301 = add i8 %300, -1
  store i8 %301, ptr @gInBufLeft, align 1, !tbaa !5
  %302 = load i8, ptr @gInBufOfs, align 1, !tbaa !5
  %303 = add i8 %302, 1
  store i8 %303, ptr @gInBufOfs, align 1, !tbaa !5
  %304 = zext i8 %302 to i64
  %305 = getelementptr inbounds nuw [256 x i8], ptr @gInBuf, i64 0, i64 %304
  %306 = load i8, ptr %305, align 1, !tbaa !5
  br label %312

307:                                              ; preds = %296
  %308 = load i8, ptr @gTemFlag, align 1, !tbaa !5
  %309 = xor i8 %308, -1
  store i8 %309, ptr @gTemFlag, align 1, !tbaa !5
  %310 = icmp eq i8 %308, -1
  %311 = select i1 %310, i8 -39, i8 -1
  br label %312

312:                                              ; preds = %307, %299
  %313 = phi i8 [ %311, %307 ], [ %306, %299 ]
  %314 = load i16, ptr @gBitBuf, align 2, !tbaa !8
  %315 = zext i8 %313 to i16
  %316 = or i16 %314, %315
  %317 = load i8, ptr @gBitsLeft, align 1, !tbaa !5
  %318 = zext i8 %317 to i32
  %319 = sub nsw i32 8, %318
  %320 = zext i16 %316 to i32
  %321 = shl nuw nsw i32 %320, %319
  br label %325

322:                                              ; preds = %279
  %323 = add i8 %281, -8
  %324 = shl nuw nsw i32 %283, 8
  br label %325

325:                                              ; preds = %322, %312
  %326 = phi i32 [ %321, %312 ], [ %324, %322 ]
  %327 = phi i8 [ %317, %312 ], [ %323, %322 ]
  %328 = trunc i32 %326 to i16
  store i16 %328, ptr @gBitBuf, align 2, !tbaa !8
  store i8 %327, ptr @gBitsLeft, align 1, !tbaa !5
  %329 = lshr i16 %280, 8
  %330 = trunc nuw i16 %329 to i8
  store i8 %330, ptr @gCompsInFrame, align 1, !tbaa !5
  %331 = icmp ugt i16 %280, 1023
  br i1 %331, label %549, label %332

332:                                              ; preds = %325
  %333 = mul nuw nsw i16 %329, 3
  %334 = add nuw nsw i16 %333, 8
  %335 = icmp eq i16 %219, %334
  br i1 %335, label %336, label %549

336:                                              ; preds = %332
  %337 = icmp samesign ult i16 %280, 256
  br i1 %337, label %554, label %343

338:                                              ; preds = %539
  %339 = add nuw nsw i64 %346, 1
  %340 = load i8, ptr @gCompsInFrame, align 1, !tbaa !5
  %341 = zext i8 %340 to i64
  %342 = icmp samesign ult i64 %339, %341
  br i1 %342, label %343, label %554, !llvm.loop !26

343:                                              ; preds = %336, %338
  %344 = phi i8 [ %541, %338 ], [ %327, %336 ]
  %345 = phi i16 [ %542, %338 ], [ %328, %336 ]
  %346 = phi i64 [ %339, %338 ], [ 0, %336 ]
  %347 = icmp ult i8 %344, 8
  %348 = zext i16 %345 to i32
  br i1 %347, label %349, label %387

349:                                              ; preds = %343
  %350 = zext nneg i8 %344 to i32
  %351 = shl nuw nsw i32 %348, %350
  %352 = trunc i32 %351 to i16
  store i16 %352, ptr @gBitBuf, align 2, !tbaa !8
  %353 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %354 = icmp eq i8 %353, 0
  br i1 %354, label %355, label %364

355:                                              ; preds = %349
  store i8 4, ptr @gInBufOfs, align 1, !tbaa !5
  %356 = load ptr, ptr @g_pNeedBytesCallback, align 8, !tbaa !10
  %357 = load ptr, ptr @g_pCallback_data, align 8, !tbaa !10
  %358 = tail call zeroext i8 %356(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @gInBuf, i64 4), i8 noundef zeroext -4, ptr noundef nonnull @gInBufLeft, ptr noundef %357) #5
  %359 = icmp eq i8 %358, 0
  br i1 %359, label %361, label %360

360:                                              ; preds = %355
  store i8 %358, ptr @gCallbackStatus, align 1, !tbaa !5
  br label %361

361:                                              ; preds = %360, %355
  %362 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %363 = icmp eq i8 %362, 0
  br i1 %363, label %372, label %364

364:                                              ; preds = %361, %349
  %365 = phi i8 [ %362, %361 ], [ %353, %349 ]
  %366 = add i8 %365, -1
  store i8 %366, ptr @gInBufLeft, align 1, !tbaa !5
  %367 = load i8, ptr @gInBufOfs, align 1, !tbaa !5
  %368 = add i8 %367, 1
  store i8 %368, ptr @gInBufOfs, align 1, !tbaa !5
  %369 = zext i8 %367 to i64
  %370 = getelementptr inbounds nuw [256 x i8], ptr @gInBuf, i64 0, i64 %369
  %371 = load i8, ptr %370, align 1, !tbaa !5
  br label %377

372:                                              ; preds = %361
  %373 = load i8, ptr @gTemFlag, align 1, !tbaa !5
  %374 = xor i8 %373, -1
  store i8 %374, ptr @gTemFlag, align 1, !tbaa !5
  %375 = icmp eq i8 %373, -1
  %376 = select i1 %375, i8 -39, i8 -1
  br label %377

377:                                              ; preds = %372, %364
  %378 = phi i8 [ %376, %372 ], [ %371, %364 ]
  %379 = load i16, ptr @gBitBuf, align 2, !tbaa !8
  %380 = zext i8 %378 to i16
  %381 = or i16 %379, %380
  %382 = load i8, ptr @gBitsLeft, align 1, !tbaa !5
  %383 = zext i8 %382 to i32
  %384 = sub nsw i32 8, %383
  %385 = zext i16 %381 to i32
  %386 = shl nuw nsw i32 %385, %384
  br label %390

387:                                              ; preds = %343
  %388 = add i8 %344, -8
  %389 = shl nuw nsw i32 %348, 8
  br label %390

390:                                              ; preds = %387, %377
  %391 = phi i32 [ %386, %377 ], [ %389, %387 ]
  %392 = phi i8 [ %382, %377 ], [ %388, %387 ]
  store i8 %392, ptr @gBitsLeft, align 1, !tbaa !5
  %393 = lshr i16 %345, 8
  %394 = trunc nuw i16 %393 to i8
  %395 = getelementptr inbounds nuw [3 x i8], ptr @gCompIdent, i64 0, i64 %346
  store i8 %394, ptr %395, align 1, !tbaa !5
  %396 = icmp ult i8 %392, 4
  %397 = and i32 %391, 65535
  br i1 %396, label %398, label %437

398:                                              ; preds = %390
  %399 = zext nneg i8 %392 to i32
  %400 = shl i32 %391, %399
  %401 = trunc i32 %400 to i16
  store i16 %401, ptr @gBitBuf, align 2, !tbaa !8
  %402 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %403 = icmp eq i8 %402, 0
  br i1 %403, label %404, label %413

404:                                              ; preds = %398
  store i8 4, ptr @gInBufOfs, align 1, !tbaa !5
  %405 = load ptr, ptr @g_pNeedBytesCallback, align 8, !tbaa !10
  %406 = load ptr, ptr @g_pCallback_data, align 8, !tbaa !10
  %407 = tail call zeroext i8 %405(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @gInBuf, i64 4), i8 noundef zeroext -4, ptr noundef nonnull @gInBufLeft, ptr noundef %406) #5
  %408 = icmp eq i8 %407, 0
  br i1 %408, label %410, label %409

409:                                              ; preds = %404
  store i8 %407, ptr @gCallbackStatus, align 1, !tbaa !5
  br label %410

410:                                              ; preds = %409, %404
  %411 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %412 = icmp eq i8 %411, 0
  br i1 %412, label %421, label %413

413:                                              ; preds = %410, %398
  %414 = phi i8 [ %411, %410 ], [ %402, %398 ]
  %415 = add i8 %414, -1
  store i8 %415, ptr @gInBufLeft, align 1, !tbaa !5
  %416 = load i8, ptr @gInBufOfs, align 1, !tbaa !5
  %417 = add i8 %416, 1
  store i8 %417, ptr @gInBufOfs, align 1, !tbaa !5
  %418 = zext i8 %416 to i64
  %419 = getelementptr inbounds nuw [256 x i8], ptr @gInBuf, i64 0, i64 %418
  %420 = load i8, ptr %419, align 1, !tbaa !5
  br label %426

421:                                              ; preds = %410
  %422 = load i8, ptr @gTemFlag, align 1, !tbaa !5
  %423 = xor i8 %422, -1
  store i8 %423, ptr @gTemFlag, align 1, !tbaa !5
  %424 = icmp eq i8 %422, -1
  %425 = select i1 %424, i8 -39, i8 -1
  br label %426

426:                                              ; preds = %421, %413
  %427 = phi i8 [ %425, %421 ], [ %420, %413 ]
  %428 = load i16, ptr @gBitBuf, align 2, !tbaa !8
  %429 = zext i8 %427 to i16
  %430 = or i16 %428, %429
  %431 = load i8, ptr @gBitsLeft, align 1, !tbaa !5
  %432 = zext i8 %431 to i32
  %433 = sub nsw i32 4, %432
  %434 = zext i16 %430 to i32
  %435 = shl nuw nsw i32 %434, %433
  %436 = add i8 %431, 4
  br label %440

437:                                              ; preds = %390
  %438 = add i8 %392, -4
  %439 = shl nuw nsw i32 %397, 4
  br label %440

440:                                              ; preds = %437, %426
  %441 = phi i32 [ %435, %426 ], [ %439, %437 ]
  %442 = phi i8 [ %436, %426 ], [ %438, %437 ]
  store i8 %442, ptr @gBitsLeft, align 1, !tbaa !5
  %443 = lshr i32 %397, 12
  %444 = trunc nuw nsw i32 %443 to i8
  %445 = getelementptr inbounds nuw [3 x i8], ptr @gCompHSamp, i64 0, i64 %346
  store i8 %444, ptr %445, align 1, !tbaa !5
  %446 = icmp ult i8 %442, 4
  %447 = and i32 %441, 65535
  br i1 %446, label %448, label %487

448:                                              ; preds = %440
  %449 = zext nneg i8 %442 to i32
  %450 = shl i32 %441, %449
  %451 = trunc i32 %450 to i16
  store i16 %451, ptr @gBitBuf, align 2, !tbaa !8
  %452 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %453 = icmp eq i8 %452, 0
  br i1 %453, label %454, label %463

454:                                              ; preds = %448
  store i8 4, ptr @gInBufOfs, align 1, !tbaa !5
  %455 = load ptr, ptr @g_pNeedBytesCallback, align 8, !tbaa !10
  %456 = load ptr, ptr @g_pCallback_data, align 8, !tbaa !10
  %457 = tail call zeroext i8 %455(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @gInBuf, i64 4), i8 noundef zeroext -4, ptr noundef nonnull @gInBufLeft, ptr noundef %456) #5
  %458 = icmp eq i8 %457, 0
  br i1 %458, label %460, label %459

459:                                              ; preds = %454
  store i8 %457, ptr @gCallbackStatus, align 1, !tbaa !5
  br label %460

460:                                              ; preds = %459, %454
  %461 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %462 = icmp eq i8 %461, 0
  br i1 %462, label %471, label %463

463:                                              ; preds = %460, %448
  %464 = phi i8 [ %461, %460 ], [ %452, %448 ]
  %465 = add i8 %464, -1
  store i8 %465, ptr @gInBufLeft, align 1, !tbaa !5
  %466 = load i8, ptr @gInBufOfs, align 1, !tbaa !5
  %467 = add i8 %466, 1
  store i8 %467, ptr @gInBufOfs, align 1, !tbaa !5
  %468 = zext i8 %466 to i64
  %469 = getelementptr inbounds nuw [256 x i8], ptr @gInBuf, i64 0, i64 %468
  %470 = load i8, ptr %469, align 1, !tbaa !5
  br label %476

471:                                              ; preds = %460
  %472 = load i8, ptr @gTemFlag, align 1, !tbaa !5
  %473 = xor i8 %472, -1
  store i8 %473, ptr @gTemFlag, align 1, !tbaa !5
  %474 = icmp eq i8 %472, -1
  %475 = select i1 %474, i8 -39, i8 -1
  br label %476

476:                                              ; preds = %471, %463
  %477 = phi i8 [ %475, %471 ], [ %470, %463 ]
  %478 = load i16, ptr @gBitBuf, align 2, !tbaa !8
  %479 = zext i8 %477 to i16
  %480 = or i16 %478, %479
  %481 = load i8, ptr @gBitsLeft, align 1, !tbaa !5
  %482 = zext i8 %481 to i32
  %483 = sub nsw i32 4, %482
  %484 = zext i16 %480 to i32
  %485 = shl nuw nsw i32 %484, %483
  %486 = add i8 %481, 4
  br label %490

487:                                              ; preds = %440
  %488 = add i8 %442, -4
  %489 = shl nuw nsw i32 %447, 4
  br label %490

490:                                              ; preds = %487, %476
  %491 = phi i32 [ %485, %476 ], [ %489, %487 ]
  %492 = phi i8 [ %486, %476 ], [ %488, %487 ]
  store i8 %492, ptr @gBitsLeft, align 1, !tbaa !5
  %493 = lshr i32 %447, 12
  %494 = trunc nuw nsw i32 %493 to i8
  %495 = getelementptr inbounds nuw [3 x i8], ptr @gCompVSamp, i64 0, i64 %346
  store i8 %494, ptr %495, align 1, !tbaa !5
  %496 = icmp ult i8 %492, 8
  %497 = and i32 %491, 65535
  br i1 %496, label %498, label %536

498:                                              ; preds = %490
  %499 = zext nneg i8 %492 to i32
  %500 = shl i32 %491, %499
  %501 = trunc i32 %500 to i16
  store i16 %501, ptr @gBitBuf, align 2, !tbaa !8
  %502 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %503 = icmp eq i8 %502, 0
  br i1 %503, label %504, label %513

504:                                              ; preds = %498
  store i8 4, ptr @gInBufOfs, align 1, !tbaa !5
  %505 = load ptr, ptr @g_pNeedBytesCallback, align 8, !tbaa !10
  %506 = load ptr, ptr @g_pCallback_data, align 8, !tbaa !10
  %507 = tail call zeroext i8 %505(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @gInBuf, i64 4), i8 noundef zeroext -4, ptr noundef nonnull @gInBufLeft, ptr noundef %506) #5
  %508 = icmp eq i8 %507, 0
  br i1 %508, label %510, label %509

509:                                              ; preds = %504
  store i8 %507, ptr @gCallbackStatus, align 1, !tbaa !5
  br label %510

510:                                              ; preds = %509, %504
  %511 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %512 = icmp eq i8 %511, 0
  br i1 %512, label %521, label %513

513:                                              ; preds = %510, %498
  %514 = phi i8 [ %511, %510 ], [ %502, %498 ]
  %515 = add i8 %514, -1
  store i8 %515, ptr @gInBufLeft, align 1, !tbaa !5
  %516 = load i8, ptr @gInBufOfs, align 1, !tbaa !5
  %517 = add i8 %516, 1
  store i8 %517, ptr @gInBufOfs, align 1, !tbaa !5
  %518 = zext i8 %516 to i64
  %519 = getelementptr inbounds nuw [256 x i8], ptr @gInBuf, i64 0, i64 %518
  %520 = load i8, ptr %519, align 1, !tbaa !5
  br label %526

521:                                              ; preds = %510
  %522 = load i8, ptr @gTemFlag, align 1, !tbaa !5
  %523 = xor i8 %522, -1
  store i8 %523, ptr @gTemFlag, align 1, !tbaa !5
  %524 = icmp eq i8 %522, -1
  %525 = select i1 %524, i8 -39, i8 -1
  br label %526

526:                                              ; preds = %521, %513
  %527 = phi i8 [ %525, %521 ], [ %520, %513 ]
  %528 = load i16, ptr @gBitBuf, align 2, !tbaa !8
  %529 = zext i8 %527 to i16
  %530 = or i16 %528, %529
  %531 = load i8, ptr @gBitsLeft, align 1, !tbaa !5
  %532 = zext i8 %531 to i32
  %533 = sub nsw i32 8, %532
  %534 = zext i16 %530 to i32
  %535 = shl nuw nsw i32 %534, %533
  br label %539

536:                                              ; preds = %490
  %537 = add i8 %492, -8
  %538 = shl nuw nsw i32 %497, 8
  br label %539

539:                                              ; preds = %536, %526
  %540 = phi i32 [ %535, %526 ], [ %538, %536 ]
  %541 = phi i8 [ %531, %526 ], [ %537, %536 ]
  %542 = trunc i32 %540 to i16
  store i16 %542, ptr @gBitBuf, align 2, !tbaa !8
  store i8 %541, ptr @gBitsLeft, align 1, !tbaa !5
  %543 = lshr i32 %491, 8
  %544 = trunc i32 %543 to i8
  %545 = getelementptr inbounds nuw [3 x i8], ptr @gCompQuant, i64 0, i64 %346
  store i8 %544, ptr %545, align 1, !tbaa !5
  %546 = icmp samesign ult i32 %497, 512
  br i1 %546, label %338, label %549

547:                                              ; preds = %216
  br label %549

548:                                              ; preds = %216
  br label %549

549:                                              ; preds = %208, %206, %539, %548, %547, %213, %216, %211, %265, %271, %275, %325, %332
  %550 = phi i8 [ 11, %332 ], [ 10, %325 ], [ 9, %275 ], [ 8, %271 ], [ 7, %265 ], [ 19, %211 ], [ 37, %216 ], [ %214, %213 ], [ 17, %547 ], [ 20, %548 ], [ 36, %539 ], [ 19, %206 ], [ 19, %208 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #5
  %551 = load i8, ptr @gCallbackStatus, align 1
  %552 = icmp eq i8 %551, 0
  %553 = select i1 %552, i8 %550, i8 %551
  br label %1129

554:                                              ; preds = %338, %336
  %555 = phi i8 [ %330, %336 ], [ %340, %338 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #5
  %556 = load i8, ptr @gCallbackStatus, align 1
  %557 = icmp eq i8 %556, 0
  br i1 %557, label %558, label %1129

558:                                              ; preds = %554
  switch i8 %555, label %1129 [
    i8 1, label %559
    i8 3, label %566
  ]

559:                                              ; preds = %558
  %560 = load i8, ptr @gCompHSamp, align 1, !tbaa !5
  %561 = icmp ne i8 %560, 1
  %562 = load i8, ptr @gCompVSamp, align 1
  %563 = icmp ne i8 %562, 1
  %564 = select i1 %561, i1 true, i1 %563
  br i1 %564, label %1129, label %565

565:                                              ; preds = %559
  store i32 0, ptr @gScanType, align 4, !tbaa !16
  store i8 1, ptr @gMaxBlocksPerMCU, align 1, !tbaa !5
  store i8 0, ptr @gMCUOrg, align 4, !tbaa !5
  br label %591

566:                                              ; preds = %558
  %567 = load <2 x i8>, ptr getelementptr inbounds nuw (i8, ptr @gCompHSamp, i64 1), align 1
  %568 = load <2 x i8>, ptr getelementptr inbounds nuw (i8, ptr @gCompVSamp, i64 1), align 1
  %569 = shufflevector <2 x i8> %567, <2 x i8> %568, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %570 = freeze <4 x i8> %569
  %571 = bitcast <4 x i8> %570 to i32
  %572 = icmp eq i32 %571, 16843009
  br i1 %572, label %573, label %1129

573:                                              ; preds = %566
  %574 = load i8, ptr @gCompHSamp, align 1, !tbaa !5
  %575 = icmp eq i8 %574, 1
  %576 = load i8, ptr @gCompVSamp, align 1
  %577 = icmp eq i8 %576, 1
  %578 = select i1 %575, i1 %577, i1 false
  br i1 %578, label %579, label %580

579:                                              ; preds = %573
  store i32 1, ptr @gScanType, align 4, !tbaa !16
  store i8 3, ptr @gMaxBlocksPerMCU, align 1, !tbaa !5
  store i8 0, ptr @gMCUOrg, align 4, !tbaa !5
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @gMCUOrg, i64 1), align 1, !tbaa !5
  store i8 2, ptr getelementptr inbounds nuw (i8, ptr @gMCUOrg, i64 2), align 2, !tbaa !5
  br label %591

580:                                              ; preds = %573
  %581 = icmp eq i8 %576, 2
  %582 = select i1 %575, i1 %581, i1 false
  br i1 %582, label %583, label %584

583:                                              ; preds = %580
  store i32 3, ptr @gScanType, align 4, !tbaa !16
  store i8 4, ptr @gMaxBlocksPerMCU, align 1, !tbaa !5
  store <4 x i8> <i8 0, i8 0, i8 1, i8 2>, ptr @gMCUOrg, align 4, !tbaa !5
  br label %591

584:                                              ; preds = %580
  %585 = icmp eq i8 %574, 2
  %586 = select i1 %585, i1 %577, i1 false
  br i1 %586, label %587, label %588

587:                                              ; preds = %584
  store i32 2, ptr @gScanType, align 4, !tbaa !16
  store i8 4, ptr @gMaxBlocksPerMCU, align 1, !tbaa !5
  store <4 x i8> <i8 0, i8 0, i8 1, i8 2>, ptr @gMCUOrg, align 4, !tbaa !5
  br label %591

588:                                              ; preds = %584
  %589 = select i1 %585, i1 %581, i1 false
  br i1 %589, label %590, label %1129

590:                                              ; preds = %588
  store i32 4, ptr @gScanType, align 4, !tbaa !16
  store i8 6, ptr @gMaxBlocksPerMCU, align 1, !tbaa !5
  store i32 0, ptr @gMCUOrg, align 4
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @gMCUOrg, i64 4), align 4, !tbaa !5
  store i8 2, ptr getelementptr inbounds nuw (i8, ptr @gMCUOrg, i64 5), align 1, !tbaa !5
  br label %591

591:                                              ; preds = %590, %587, %583, %579, %565
  %592 = phi i8 [ 8, %583 ], [ 16, %590 ], [ 16, %587 ], [ 8, %579 ], [ 8, %565 ]
  %593 = phi i8 [ 16, %583 ], [ 16, %590 ], [ 8, %587 ], [ 8, %579 ], [ 8, %565 ]
  %594 = phi i32 [ 4, %583 ], [ 4, %590 ], [ 3, %587 ], [ 3, %579 ], [ 3, %565 ]
  %595 = phi i32 [ 15, %583 ], [ 15, %590 ], [ 7, %587 ], [ 7, %579 ], [ 7, %565 ]
  %596 = phi i32 [ 3, %583 ], [ 4, %590 ], [ 4, %587 ], [ 3, %579 ], [ 3, %565 ]
  %597 = phi i32 [ 7, %583 ], [ 15, %590 ], [ 15, %587 ], [ 7, %579 ], [ 7, %565 ]
  store i8 %592, ptr @gMaxMCUXSize, align 1, !tbaa !5
  store i8 %593, ptr @gMaxMCUYSize, align 1, !tbaa !5
  %598 = load i16, ptr @gImageXSize, align 2, !tbaa !8
  %599 = zext i16 %598 to i32
  %600 = add nuw nsw i32 %597, %599
  %601 = lshr i32 %600, %596
  %602 = trunc nuw nsw i32 %601 to i16
  store i16 %602, ptr @gMaxMCUSPerRow, align 2, !tbaa !8
  %603 = load i16, ptr @gImageYSize, align 2, !tbaa !8
  %604 = zext i16 %603 to i32
  %605 = add nuw nsw i32 %595, %604
  %606 = lshr i32 %605, %594
  %607 = trunc nuw nsw i32 %606 to i16
  store i16 %607, ptr @gMaxMCUSPerCol, align 2, !tbaa !8
  %608 = mul i16 %607, %602
  store i16 %608, ptr @gNumMCUSRemaining, align 2, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #5
  %609 = call fastcc zeroext i8 @processMarkers(ptr noundef %5)
  %610 = icmp eq i8 %609, 0
  br i1 %610, label %611, label %1103

611:                                              ; preds = %591
  %612 = load i8, ptr %5, align 1, !tbaa !5
  %613 = icmp eq i8 %612, -38
  br i1 %613, label %614, label %1103

614:                                              ; preds = %611
  %615 = tail call fastcc zeroext i16 @getBits1(i8 noundef zeroext 16)
  %616 = load i16, ptr @gBitBuf, align 2, !tbaa !8
  %617 = load i8, ptr @gBitsLeft, align 1, !tbaa !5
  %618 = icmp ult i8 %617, 8
  %619 = zext i16 %616 to i32
  br i1 %618, label %620, label %658

620:                                              ; preds = %614
  %621 = zext nneg i8 %617 to i32
  %622 = shl nuw nsw i32 %619, %621
  %623 = trunc i32 %622 to i16
  store i16 %623, ptr @gBitBuf, align 2, !tbaa !8
  %624 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %625 = icmp eq i8 %624, 0
  br i1 %625, label %626, label %635

626:                                              ; preds = %620
  store i8 4, ptr @gInBufOfs, align 1, !tbaa !5
  %627 = load ptr, ptr @g_pNeedBytesCallback, align 8, !tbaa !10
  %628 = load ptr, ptr @g_pCallback_data, align 8, !tbaa !10
  %629 = tail call zeroext i8 %627(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @gInBuf, i64 4), i8 noundef zeroext -4, ptr noundef nonnull @gInBufLeft, ptr noundef %628) #5
  %630 = icmp eq i8 %629, 0
  br i1 %630, label %632, label %631

631:                                              ; preds = %626
  store i8 %629, ptr @gCallbackStatus, align 1, !tbaa !5
  br label %632

632:                                              ; preds = %631, %626
  %633 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %634 = icmp eq i8 %633, 0
  br i1 %634, label %643, label %635

635:                                              ; preds = %632, %620
  %636 = phi i8 [ %633, %632 ], [ %624, %620 ]
  %637 = add i8 %636, -1
  store i8 %637, ptr @gInBufLeft, align 1, !tbaa !5
  %638 = load i8, ptr @gInBufOfs, align 1, !tbaa !5
  %639 = add i8 %638, 1
  store i8 %639, ptr @gInBufOfs, align 1, !tbaa !5
  %640 = zext i8 %638 to i64
  %641 = getelementptr inbounds nuw [256 x i8], ptr @gInBuf, i64 0, i64 %640
  %642 = load i8, ptr %641, align 1, !tbaa !5
  br label %648

643:                                              ; preds = %632
  %644 = load i8, ptr @gTemFlag, align 1, !tbaa !5
  %645 = xor i8 %644, -1
  store i8 %645, ptr @gTemFlag, align 1, !tbaa !5
  %646 = icmp eq i8 %644, -1
  %647 = select i1 %646, i8 -39, i8 -1
  br label %648

648:                                              ; preds = %643, %635
  %649 = phi i8 [ %647, %643 ], [ %642, %635 ]
  %650 = load i16, ptr @gBitBuf, align 2, !tbaa !8
  %651 = zext i8 %649 to i16
  %652 = or i16 %650, %651
  %653 = load i8, ptr @gBitsLeft, align 1, !tbaa !5
  %654 = zext i8 %653 to i32
  %655 = sub nsw i32 8, %654
  %656 = zext i16 %652 to i32
  %657 = shl nuw nsw i32 %656, %655
  br label %661

658:                                              ; preds = %614
  %659 = add i8 %617, -8
  %660 = shl nuw nsw i32 %619, 8
  br label %661

661:                                              ; preds = %658, %648
  %662 = phi i32 [ %657, %648 ], [ %660, %658 ]
  %663 = phi i8 [ %653, %648 ], [ %659, %658 ]
  %664 = trunc i32 %662 to i16
  store i16 %664, ptr @gBitBuf, align 2, !tbaa !8
  store i8 %663, ptr @gBitsLeft, align 1, !tbaa !5
  %665 = lshr i16 %616, 8
  %666 = trunc nuw i16 %665 to i8
  store i8 %666, ptr @gCompsInScan, align 1, !tbaa !5
  %667 = shl nuw nsw i16 %665, 1
  %668 = add i16 %615, -6
  %669 = icmp ne i16 %667, %668
  %670 = add i16 %616, -1024
  %671 = icmp ult i16 %670, -768
  %672 = or i1 %671, %669
  br i1 %672, label %1103, label %673

673:                                              ; preds = %661
  %674 = add nsw i16 %615, -3
  br label %675

675:                                              ; preds = %789, %673
  %676 = phi i8 [ %663, %673 ], [ %772, %789 ]
  %677 = phi i16 [ %664, %673 ], [ %773, %789 ]
  %678 = phi i64 [ 0, %673 ], [ %798, %789 ]
  %679 = phi i16 [ %674, %673 ], [ %775, %789 ]
  %680 = icmp ult i8 %676, 8
  %681 = zext i16 %677 to i32
  br i1 %680, label %682, label %720

682:                                              ; preds = %675
  %683 = zext nneg i8 %676 to i32
  %684 = shl nuw nsw i32 %681, %683
  %685 = trunc i32 %684 to i16
  store i16 %685, ptr @gBitBuf, align 2, !tbaa !8
  %686 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %687 = icmp eq i8 %686, 0
  br i1 %687, label %688, label %697

688:                                              ; preds = %682
  store i8 4, ptr @gInBufOfs, align 1, !tbaa !5
  %689 = load ptr, ptr @g_pNeedBytesCallback, align 8, !tbaa !10
  %690 = load ptr, ptr @g_pCallback_data, align 8, !tbaa !10
  %691 = tail call zeroext i8 %689(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @gInBuf, i64 4), i8 noundef zeroext -4, ptr noundef nonnull @gInBufLeft, ptr noundef %690) #5
  %692 = icmp eq i8 %691, 0
  br i1 %692, label %694, label %693

693:                                              ; preds = %688
  store i8 %691, ptr @gCallbackStatus, align 1, !tbaa !5
  br label %694

694:                                              ; preds = %693, %688
  %695 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %696 = icmp eq i8 %695, 0
  br i1 %696, label %705, label %697

697:                                              ; preds = %694, %682
  %698 = phi i8 [ %695, %694 ], [ %686, %682 ]
  %699 = add i8 %698, -1
  store i8 %699, ptr @gInBufLeft, align 1, !tbaa !5
  %700 = load i8, ptr @gInBufOfs, align 1, !tbaa !5
  %701 = add i8 %700, 1
  store i8 %701, ptr @gInBufOfs, align 1, !tbaa !5
  %702 = zext i8 %700 to i64
  %703 = getelementptr inbounds nuw [256 x i8], ptr @gInBuf, i64 0, i64 %702
  %704 = load i8, ptr %703, align 1, !tbaa !5
  br label %710

705:                                              ; preds = %694
  %706 = load i8, ptr @gTemFlag, align 1, !tbaa !5
  %707 = xor i8 %706, -1
  store i8 %707, ptr @gTemFlag, align 1, !tbaa !5
  %708 = icmp eq i8 %706, -1
  %709 = select i1 %708, i8 -39, i8 -1
  br label %710

710:                                              ; preds = %705, %697
  %711 = phi i8 [ %709, %705 ], [ %704, %697 ]
  %712 = load i16, ptr @gBitBuf, align 2, !tbaa !8
  %713 = zext i8 %711 to i16
  %714 = or i16 %712, %713
  %715 = load i8, ptr @gBitsLeft, align 1, !tbaa !5
  %716 = zext i8 %715 to i32
  %717 = sub nsw i32 8, %716
  %718 = zext i16 %714 to i32
  %719 = shl nuw nsw i32 %718, %717
  br label %723

720:                                              ; preds = %675
  %721 = add i8 %676, -8
  %722 = shl nuw nsw i32 %681, 8
  br label %723

723:                                              ; preds = %720, %710
  %724 = phi i32 [ %719, %710 ], [ %722, %720 ]
  %725 = phi i8 [ %715, %710 ], [ %721, %720 ]
  store i8 %725, ptr @gBitsLeft, align 1, !tbaa !5
  %726 = lshr i16 %677, 8
  %727 = icmp ult i8 %725, 8
  br i1 %727, label %728, label %766

728:                                              ; preds = %723
  %729 = zext nneg i8 %725 to i32
  %730 = shl i32 %724, %729
  %731 = trunc i32 %730 to i16
  store i16 %731, ptr @gBitBuf, align 2, !tbaa !8
  %732 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %733 = icmp eq i8 %732, 0
  br i1 %733, label %734, label %743

734:                                              ; preds = %728
  store i8 4, ptr @gInBufOfs, align 1, !tbaa !5
  %735 = load ptr, ptr @g_pNeedBytesCallback, align 8, !tbaa !10
  %736 = load ptr, ptr @g_pCallback_data, align 8, !tbaa !10
  %737 = tail call zeroext i8 %735(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @gInBuf, i64 4), i8 noundef zeroext -4, ptr noundef nonnull @gInBufLeft, ptr noundef %736) #5
  %738 = icmp eq i8 %737, 0
  br i1 %738, label %740, label %739

739:                                              ; preds = %734
  store i8 %737, ptr @gCallbackStatus, align 1, !tbaa !5
  br label %740

740:                                              ; preds = %739, %734
  %741 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %742 = icmp eq i8 %741, 0
  br i1 %742, label %751, label %743

743:                                              ; preds = %740, %728
  %744 = phi i8 [ %741, %740 ], [ %732, %728 ]
  %745 = add i8 %744, -1
  store i8 %745, ptr @gInBufLeft, align 1, !tbaa !5
  %746 = load i8, ptr @gInBufOfs, align 1, !tbaa !5
  %747 = add i8 %746, 1
  store i8 %747, ptr @gInBufOfs, align 1, !tbaa !5
  %748 = zext i8 %746 to i64
  %749 = getelementptr inbounds nuw [256 x i8], ptr @gInBuf, i64 0, i64 %748
  %750 = load i8, ptr %749, align 1, !tbaa !5
  br label %756

751:                                              ; preds = %740
  %752 = load i8, ptr @gTemFlag, align 1, !tbaa !5
  %753 = xor i8 %752, -1
  store i8 %753, ptr @gTemFlag, align 1, !tbaa !5
  %754 = icmp eq i8 %752, -1
  %755 = select i1 %754, i8 -39, i8 -1
  br label %756

756:                                              ; preds = %751, %743
  %757 = phi i8 [ %755, %751 ], [ %750, %743 ]
  %758 = load i16, ptr @gBitBuf, align 2, !tbaa !8
  %759 = zext i8 %757 to i16
  %760 = or i16 %758, %759
  %761 = load i8, ptr @gBitsLeft, align 1, !tbaa !5
  %762 = zext i8 %761 to i32
  %763 = sub nsw i32 8, %762
  %764 = zext i16 %760 to i32
  %765 = shl nuw nsw i32 %764, %763
  br label %770

766:                                              ; preds = %723
  %767 = add i8 %725, -8
  %768 = shl i32 %724, 8
  %769 = and i32 %768, 16776960
  br label %770

770:                                              ; preds = %766, %756
  %771 = phi i32 [ %765, %756 ], [ %769, %766 ]
  %772 = phi i8 [ %761, %756 ], [ %767, %766 ]
  %773 = trunc i32 %771 to i16
  store i16 %773, ptr @gBitBuf, align 2, !tbaa !8
  store i8 %772, ptr @gBitsLeft, align 1, !tbaa !5
  %774 = lshr i32 %724, 8
  %775 = add i16 %679, -2
  %776 = load i8, ptr @gCompsInFrame, align 1, !tbaa !5
  %777 = icmp eq i8 %776, 0
  br i1 %777, label %1103, label %778

778:                                              ; preds = %770
  %779 = trunc nuw i16 %726 to i8
  %780 = zext i8 %776 to i64
  br label %781

781:                                              ; preds = %786, %778
  %782 = phi i64 [ 0, %778 ], [ %787, %786 ]
  %783 = getelementptr inbounds nuw [3 x i8], ptr @gCompIdent, i64 0, i64 %782
  %784 = load i8, ptr %783, align 1, !tbaa !5
  %785 = icmp eq i8 %784, %779
  br i1 %785, label %789, label %786

786:                                              ; preds = %781
  %787 = add nuw nsw i64 %782, 1
  %788 = icmp eq i64 %787, %780
  br i1 %788, label %1103, label %781, !llvm.loop !27

789:                                              ; preds = %781
  %790 = trunc nuw i64 %782 to i8
  %791 = getelementptr inbounds nuw [3 x i8], ptr @gCompList, i64 0, i64 %678
  store i8 %790, ptr %791, align 1, !tbaa !5
  %792 = trunc i32 %774 to i8
  %793 = lshr i8 %792, 4
  %794 = and i64 %782, 255
  %795 = getelementptr inbounds nuw [3 x i8], ptr @gCompDCTab, i64 0, i64 %794
  store i8 %793, ptr %795, align 1, !tbaa !5
  %796 = and i8 %792, 15
  %797 = getelementptr inbounds nuw [3 x i8], ptr @gCompACTab, i64 0, i64 %794
  store i8 %796, ptr %797, align 1, !tbaa !5
  %798 = add nuw nsw i64 %678, 1
  %799 = load i8, ptr @gCompsInScan, align 1, !tbaa !5
  %800 = zext i8 %799 to i64
  %801 = icmp samesign ult i64 %798, %800
  br i1 %801, label %675, label %802, !llvm.loop !28

802:                                              ; preds = %789
  %803 = icmp ult i8 %772, 8
  br i1 %803, label %804, label %842

804:                                              ; preds = %802
  %805 = zext nneg i8 %772 to i32
  %806 = shl i32 %771, %805
  %807 = trunc i32 %806 to i16
  store i16 %807, ptr @gBitBuf, align 2, !tbaa !8
  %808 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %809 = icmp eq i8 %808, 0
  br i1 %809, label %810, label %819

810:                                              ; preds = %804
  store i8 4, ptr @gInBufOfs, align 1, !tbaa !5
  %811 = load ptr, ptr @g_pNeedBytesCallback, align 8, !tbaa !10
  %812 = load ptr, ptr @g_pCallback_data, align 8, !tbaa !10
  %813 = tail call zeroext i8 %811(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @gInBuf, i64 4), i8 noundef zeroext -4, ptr noundef nonnull @gInBufLeft, ptr noundef %812) #5
  %814 = icmp eq i8 %813, 0
  br i1 %814, label %816, label %815

815:                                              ; preds = %810
  store i8 %813, ptr @gCallbackStatus, align 1, !tbaa !5
  br label %816

816:                                              ; preds = %815, %810
  %817 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %818 = icmp eq i8 %817, 0
  br i1 %818, label %827, label %819

819:                                              ; preds = %816, %804
  %820 = phi i8 [ %817, %816 ], [ %808, %804 ]
  %821 = add i8 %820, -1
  store i8 %821, ptr @gInBufLeft, align 1, !tbaa !5
  %822 = load i8, ptr @gInBufOfs, align 1, !tbaa !5
  %823 = add i8 %822, 1
  store i8 %823, ptr @gInBufOfs, align 1, !tbaa !5
  %824 = zext i8 %822 to i64
  %825 = getelementptr inbounds nuw [256 x i8], ptr @gInBuf, i64 0, i64 %824
  %826 = load i8, ptr %825, align 1, !tbaa !5
  br label %832

827:                                              ; preds = %816
  %828 = load i8, ptr @gTemFlag, align 1, !tbaa !5
  %829 = xor i8 %828, -1
  store i8 %829, ptr @gTemFlag, align 1, !tbaa !5
  %830 = icmp eq i8 %828, -1
  %831 = select i1 %830, i8 -39, i8 -1
  br label %832

832:                                              ; preds = %827, %819
  %833 = phi i8 [ %831, %827 ], [ %826, %819 ]
  %834 = load i16, ptr @gBitBuf, align 2, !tbaa !8
  %835 = zext i8 %833 to i16
  %836 = or i16 %834, %835
  %837 = load i8, ptr @gBitsLeft, align 1, !tbaa !5
  %838 = zext i8 %837 to i32
  %839 = sub nsw i32 8, %838
  %840 = zext i16 %836 to i32
  %841 = shl nuw nsw i32 %840, %839
  br label %846

842:                                              ; preds = %802
  %843 = add i8 %772, -8
  %844 = shl i32 %771, 8
  %845 = and i32 %844, 16776960
  br label %846

846:                                              ; preds = %842, %832
  %847 = phi i32 [ %841, %832 ], [ %845, %842 ]
  %848 = phi i8 [ %837, %832 ], [ %843, %842 ]
  store i8 %848, ptr @gBitsLeft, align 1, !tbaa !5
  %849 = lshr i32 %771, 8
  %850 = trunc i32 %849 to i8
  store volatile i8 %850, ptr @spectral_start, align 1, !tbaa !5
  %851 = icmp ult i8 %848, 8
  br i1 %851, label %852, label %890

852:                                              ; preds = %846
  %853 = zext nneg i8 %848 to i32
  %854 = shl i32 %847, %853
  %855 = trunc i32 %854 to i16
  store i16 %855, ptr @gBitBuf, align 2, !tbaa !8
  %856 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %857 = icmp eq i8 %856, 0
  br i1 %857, label %858, label %867

858:                                              ; preds = %852
  store i8 4, ptr @gInBufOfs, align 1, !tbaa !5
  %859 = load ptr, ptr @g_pNeedBytesCallback, align 8, !tbaa !10
  %860 = load ptr, ptr @g_pCallback_data, align 8, !tbaa !10
  %861 = tail call zeroext i8 %859(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @gInBuf, i64 4), i8 noundef zeroext -4, ptr noundef nonnull @gInBufLeft, ptr noundef %860) #5
  %862 = icmp eq i8 %861, 0
  br i1 %862, label %864, label %863

863:                                              ; preds = %858
  store i8 %861, ptr @gCallbackStatus, align 1, !tbaa !5
  br label %864

864:                                              ; preds = %863, %858
  %865 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %866 = icmp eq i8 %865, 0
  br i1 %866, label %875, label %867

867:                                              ; preds = %864, %852
  %868 = phi i8 [ %865, %864 ], [ %856, %852 ]
  %869 = add i8 %868, -1
  store i8 %869, ptr @gInBufLeft, align 1, !tbaa !5
  %870 = load i8, ptr @gInBufOfs, align 1, !tbaa !5
  %871 = add i8 %870, 1
  store i8 %871, ptr @gInBufOfs, align 1, !tbaa !5
  %872 = zext i8 %870 to i64
  %873 = getelementptr inbounds nuw [256 x i8], ptr @gInBuf, i64 0, i64 %872
  %874 = load i8, ptr %873, align 1, !tbaa !5
  br label %880

875:                                              ; preds = %864
  %876 = load i8, ptr @gTemFlag, align 1, !tbaa !5
  %877 = xor i8 %876, -1
  store i8 %877, ptr @gTemFlag, align 1, !tbaa !5
  %878 = icmp eq i8 %876, -1
  %879 = select i1 %878, i8 -39, i8 -1
  br label %880

880:                                              ; preds = %875, %867
  %881 = phi i8 [ %879, %875 ], [ %874, %867 ]
  %882 = load i16, ptr @gBitBuf, align 2, !tbaa !8
  %883 = zext i8 %881 to i16
  %884 = or i16 %882, %883
  %885 = load i8, ptr @gBitsLeft, align 1, !tbaa !5
  %886 = zext i8 %885 to i32
  %887 = sub nsw i32 8, %886
  %888 = zext i16 %884 to i32
  %889 = shl nuw nsw i32 %888, %887
  br label %894

890:                                              ; preds = %846
  %891 = add i8 %848, -8
  %892 = shl i32 %847, 8
  %893 = and i32 %892, 16776960
  br label %894

894:                                              ; preds = %890, %880
  %895 = phi i32 [ %889, %880 ], [ %893, %890 ]
  %896 = phi i8 [ %885, %880 ], [ %891, %890 ]
  store i8 %896, ptr @gBitsLeft, align 1, !tbaa !5
  %897 = lshr i32 %847, 8
  %898 = trunc i32 %897 to i8
  store volatile i8 %898, ptr @spectral_end, align 1, !tbaa !5
  %899 = icmp ult i8 %896, 4
  %900 = and i32 %895, 65535
  br i1 %899, label %901, label %940

901:                                              ; preds = %894
  %902 = zext nneg i8 %896 to i32
  %903 = shl i32 %895, %902
  %904 = trunc i32 %903 to i16
  store i16 %904, ptr @gBitBuf, align 2, !tbaa !8
  %905 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %906 = icmp eq i8 %905, 0
  br i1 %906, label %907, label %916

907:                                              ; preds = %901
  store i8 4, ptr @gInBufOfs, align 1, !tbaa !5
  %908 = load ptr, ptr @g_pNeedBytesCallback, align 8, !tbaa !10
  %909 = load ptr, ptr @g_pCallback_data, align 8, !tbaa !10
  %910 = tail call zeroext i8 %908(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @gInBuf, i64 4), i8 noundef zeroext -4, ptr noundef nonnull @gInBufLeft, ptr noundef %909) #5
  %911 = icmp eq i8 %910, 0
  br i1 %911, label %913, label %912

912:                                              ; preds = %907
  store i8 %910, ptr @gCallbackStatus, align 1, !tbaa !5
  br label %913

913:                                              ; preds = %912, %907
  %914 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %915 = icmp eq i8 %914, 0
  br i1 %915, label %924, label %916

916:                                              ; preds = %913, %901
  %917 = phi i8 [ %914, %913 ], [ %905, %901 ]
  %918 = add i8 %917, -1
  store i8 %918, ptr @gInBufLeft, align 1, !tbaa !5
  %919 = load i8, ptr @gInBufOfs, align 1, !tbaa !5
  %920 = add i8 %919, 1
  store i8 %920, ptr @gInBufOfs, align 1, !tbaa !5
  %921 = zext i8 %919 to i64
  %922 = getelementptr inbounds nuw [256 x i8], ptr @gInBuf, i64 0, i64 %921
  %923 = load i8, ptr %922, align 1, !tbaa !5
  br label %929

924:                                              ; preds = %913
  %925 = load i8, ptr @gTemFlag, align 1, !tbaa !5
  %926 = xor i8 %925, -1
  store i8 %926, ptr @gTemFlag, align 1, !tbaa !5
  %927 = icmp eq i8 %925, -1
  %928 = select i1 %927, i8 -39, i8 -1
  br label %929

929:                                              ; preds = %924, %916
  %930 = phi i8 [ %928, %924 ], [ %923, %916 ]
  %931 = load i16, ptr @gBitBuf, align 2, !tbaa !8
  %932 = zext i8 %930 to i16
  %933 = or i16 %931, %932
  %934 = load i8, ptr @gBitsLeft, align 1, !tbaa !5
  %935 = zext i8 %934 to i32
  %936 = sub nsw i32 4, %935
  %937 = zext i16 %933 to i32
  %938 = shl nuw nsw i32 %937, %936
  %939 = add i8 %934, 4
  br label %943

940:                                              ; preds = %894
  %941 = add i8 %896, -4
  %942 = shl nuw nsw i32 %900, 4
  br label %943

943:                                              ; preds = %940, %929
  %944 = phi i32 [ %938, %929 ], [ %942, %940 ]
  %945 = phi i8 [ %939, %929 ], [ %941, %940 ]
  store i8 %945, ptr @gBitsLeft, align 1, !tbaa !5
  %946 = lshr i32 %900, 12
  %947 = trunc nuw nsw i32 %946 to i8
  store volatile i8 %947, ptr @successive_high, align 1, !tbaa !5
  %948 = icmp ult i8 %945, 4
  %949 = and i32 %944, 65535
  br i1 %948, label %950, label %989

950:                                              ; preds = %943
  %951 = zext nneg i8 %945 to i32
  %952 = shl i32 %944, %951
  %953 = trunc i32 %952 to i16
  store i16 %953, ptr @gBitBuf, align 2, !tbaa !8
  %954 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %955 = icmp eq i8 %954, 0
  br i1 %955, label %956, label %965

956:                                              ; preds = %950
  store i8 4, ptr @gInBufOfs, align 1, !tbaa !5
  %957 = load ptr, ptr @g_pNeedBytesCallback, align 8, !tbaa !10
  %958 = load ptr, ptr @g_pCallback_data, align 8, !tbaa !10
  %959 = tail call zeroext i8 %957(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @gInBuf, i64 4), i8 noundef zeroext -4, ptr noundef nonnull @gInBufLeft, ptr noundef %958) #5
  %960 = icmp eq i8 %959, 0
  br i1 %960, label %962, label %961

961:                                              ; preds = %956
  store i8 %959, ptr @gCallbackStatus, align 1, !tbaa !5
  br label %962

962:                                              ; preds = %961, %956
  %963 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %964 = icmp eq i8 %963, 0
  br i1 %964, label %973, label %965

965:                                              ; preds = %962, %950
  %966 = phi i8 [ %963, %962 ], [ %954, %950 ]
  %967 = add i8 %966, -1
  store i8 %967, ptr @gInBufLeft, align 1, !tbaa !5
  %968 = load i8, ptr @gInBufOfs, align 1, !tbaa !5
  %969 = add i8 %968, 1
  store i8 %969, ptr @gInBufOfs, align 1, !tbaa !5
  %970 = zext i8 %968 to i64
  %971 = getelementptr inbounds nuw [256 x i8], ptr @gInBuf, i64 0, i64 %970
  %972 = load i8, ptr %971, align 1, !tbaa !5
  br label %978

973:                                              ; preds = %962
  %974 = load i8, ptr @gTemFlag, align 1, !tbaa !5
  %975 = xor i8 %974, -1
  store i8 %975, ptr @gTemFlag, align 1, !tbaa !5
  %976 = icmp eq i8 %974, -1
  %977 = select i1 %976, i8 -39, i8 -1
  br label %978

978:                                              ; preds = %973, %965
  %979 = phi i8 [ %977, %973 ], [ %972, %965 ]
  %980 = load i16, ptr @gBitBuf, align 2, !tbaa !8
  %981 = zext i8 %979 to i16
  %982 = or i16 %980, %981
  %983 = load i8, ptr @gBitsLeft, align 1, !tbaa !5
  %984 = zext i8 %983 to i32
  %985 = sub nsw i32 4, %984
  %986 = zext i16 %982 to i32
  %987 = shl nuw nsw i32 %986, %985
  %988 = add i8 %983, 4
  br label %992

989:                                              ; preds = %943
  %990 = add i8 %945, -4
  %991 = shl nuw nsw i32 %949, 4
  br label %992

992:                                              ; preds = %989, %978
  %993 = phi i32 [ %987, %978 ], [ %991, %989 ]
  %994 = phi i8 [ %988, %978 ], [ %990, %989 ]
  %995 = trunc i32 %993 to i16
  store i16 %995, ptr @gBitBuf, align 2, !tbaa !8
  store i8 %994, ptr @gBitsLeft, align 1, !tbaa !5
  %996 = lshr i32 %949, 12
  %997 = trunc nuw nsw i32 %996 to i8
  store volatile i8 %997, ptr @successive_low, align 1, !tbaa !5
  %998 = add i16 %679, -5
  %999 = icmp eq i16 %998, 0
  br i1 %999, label %1053, label %1000

1000:                                             ; preds = %992, %1047
  %1001 = phi i8 [ %1049, %1047 ], [ %994, %992 ]
  %1002 = phi i32 [ %1048, %1047 ], [ %993, %992 ]
  %1003 = phi i16 [ %1051, %1047 ], [ %998, %992 ]
  %1004 = icmp ult i8 %1001, 8
  br i1 %1004, label %1005, label %1043

1005:                                             ; preds = %1000
  %1006 = zext nneg i8 %1001 to i32
  %1007 = shl i32 %1002, %1006
  %1008 = trunc i32 %1007 to i16
  store i16 %1008, ptr @gBitBuf, align 2, !tbaa !8
  %1009 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %1010 = icmp eq i8 %1009, 0
  br i1 %1010, label %1011, label %1020

1011:                                             ; preds = %1005
  store i8 4, ptr @gInBufOfs, align 1, !tbaa !5
  %1012 = load ptr, ptr @g_pNeedBytesCallback, align 8, !tbaa !10
  %1013 = load ptr, ptr @g_pCallback_data, align 8, !tbaa !10
  %1014 = tail call zeroext i8 %1012(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @gInBuf, i64 4), i8 noundef zeroext -4, ptr noundef nonnull @gInBufLeft, ptr noundef %1013) #5
  %1015 = icmp eq i8 %1014, 0
  br i1 %1015, label %1017, label %1016

1016:                                             ; preds = %1011
  store i8 %1014, ptr @gCallbackStatus, align 1, !tbaa !5
  br label %1017

1017:                                             ; preds = %1016, %1011
  %1018 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %1019 = icmp eq i8 %1018, 0
  br i1 %1019, label %1028, label %1020

1020:                                             ; preds = %1017, %1005
  %1021 = phi i8 [ %1018, %1017 ], [ %1009, %1005 ]
  %1022 = add i8 %1021, -1
  store i8 %1022, ptr @gInBufLeft, align 1, !tbaa !5
  %1023 = load i8, ptr @gInBufOfs, align 1, !tbaa !5
  %1024 = add i8 %1023, 1
  store i8 %1024, ptr @gInBufOfs, align 1, !tbaa !5
  %1025 = zext i8 %1023 to i64
  %1026 = getelementptr inbounds nuw [256 x i8], ptr @gInBuf, i64 0, i64 %1025
  %1027 = load i8, ptr %1026, align 1, !tbaa !5
  br label %1033

1028:                                             ; preds = %1017
  %1029 = load i8, ptr @gTemFlag, align 1, !tbaa !5
  %1030 = xor i8 %1029, -1
  store i8 %1030, ptr @gTemFlag, align 1, !tbaa !5
  %1031 = icmp eq i8 %1029, -1
  %1032 = select i1 %1031, i8 -39, i8 -1
  br label %1033

1033:                                             ; preds = %1028, %1020
  %1034 = phi i8 [ %1032, %1028 ], [ %1027, %1020 ]
  %1035 = load i16, ptr @gBitBuf, align 2, !tbaa !8
  %1036 = zext i8 %1034 to i16
  %1037 = or i16 %1035, %1036
  %1038 = load i8, ptr @gBitsLeft, align 1, !tbaa !5
  %1039 = zext i8 %1038 to i32
  %1040 = sub nsw i32 8, %1039
  %1041 = zext i16 %1037 to i32
  %1042 = shl nuw nsw i32 %1041, %1040
  br label %1047

1043:                                             ; preds = %1000
  %1044 = add i8 %1001, -8
  %1045 = shl i32 %1002, 8
  %1046 = and i32 %1045, 16776960
  br label %1047

1047:                                             ; preds = %1043, %1033
  %1048 = phi i32 [ %1042, %1033 ], [ %1046, %1043 ]
  %1049 = phi i8 [ %1038, %1033 ], [ %1044, %1043 ]
  %1050 = trunc i32 %1048 to i16
  store i16 %1050, ptr @gBitBuf, align 2, !tbaa !8
  store i8 %1049, ptr @gBitsLeft, align 1, !tbaa !5
  %1051 = add i16 %1003, -1
  %1052 = icmp eq i16 %1051, 0
  br i1 %1052, label %1053, label %1000, !llvm.loop !29

1053:                                             ; preds = %1047, %992
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #5
  %1054 = load i8, ptr @gCompsInScan, align 1, !tbaa !5
  %1055 = icmp eq i8 %1054, 0
  br i1 %1055, label %1099, label %1056

1056:                                             ; preds = %1053
  %1057 = load i8, ptr @gValidHuffTables, align 1, !tbaa !5
  %1058 = zext nneg i8 %1057 to i32
  %1059 = zext i8 %1054 to i64
  br label %1063

1060:                                             ; preds = %1074
  %1061 = add nuw nsw i64 %1064, 1
  %1062 = icmp eq i64 %1061, %1059
  br i1 %1062, label %1082, label %1063, !llvm.loop !30

1063:                                             ; preds = %1060, %1056
  %1064 = phi i64 [ 0, %1056 ], [ %1061, %1060 ]
  %1065 = getelementptr inbounds nuw [3 x i8], ptr @gCompList, i64 0, i64 %1064
  %1066 = load i8, ptr %1065, align 1, !tbaa !5
  %1067 = zext i8 %1066 to i64
  %1068 = getelementptr inbounds nuw [3 x i8], ptr @gCompDCTab, i64 0, i64 %1067
  %1069 = load i8, ptr %1068, align 1, !tbaa !5
  %1070 = zext nneg i8 %1069 to i32
  %1071 = shl nuw i32 1, %1070
  %1072 = and i32 %1071, %1058
  %1073 = icmp eq i32 %1072, 0
  br i1 %1073, label %1105, label %1074

1074:                                             ; preds = %1063
  %1075 = getelementptr inbounds nuw [3 x i8], ptr @gCompACTab, i64 0, i64 %1067
  %1076 = load i8, ptr %1075, align 1, !tbaa !5
  %1077 = add i8 %1076, 2
  %1078 = zext nneg i8 %1077 to i32
  %1079 = shl nuw i32 1, %1078
  %1080 = and i32 %1079, %1058
  %1081 = icmp eq i32 %1080, 0
  br i1 %1081, label %1105, label %1060

1082:                                             ; preds = %1060
  %1083 = load i8, ptr @gValidQuantTables, align 1, !tbaa !5
  %1084 = zext nneg i8 %1083 to i32
  br label %1088

1085:                                             ; preds = %1088
  %1086 = add nuw nsw i64 %1089, 1
  %1087 = icmp eq i64 %1086, %1059
  br i1 %1087, label %1099, label %1088, !llvm.loop !31

1088:                                             ; preds = %1085, %1082
  %1089 = phi i64 [ 0, %1082 ], [ %1086, %1085 ]
  %1090 = getelementptr inbounds nuw [3 x i8], ptr @gCompList, i64 0, i64 %1089
  %1091 = load i8, ptr %1090, align 1, !tbaa !5
  %1092 = zext i8 %1091 to i64
  %1093 = getelementptr inbounds nuw [3 x i8], ptr @gCompQuant, i64 0, i64 %1092
  %1094 = load i8, ptr %1093, align 1, !tbaa !5
  %1095 = icmp eq i8 %1094, 0
  %1096 = select i1 %1095, i32 1, i32 2
  %1097 = and i32 %1096, %1084
  %1098 = icmp eq i32 %1097, 0
  br i1 %1098, label %1105, label %1085

1099:                                             ; preds = %1085, %1053
  store i16 0, ptr @gLastDC, align 2, !tbaa !8
  store i16 0, ptr getelementptr inbounds nuw (i8, ptr @gLastDC, i64 2), align 2, !tbaa !8
  store i16 0, ptr getelementptr inbounds nuw (i8, ptr @gLastDC, i64 4), align 2, !tbaa !8
  %1100 = load i16, ptr @gRestartInterval, align 2, !tbaa !8
  %1101 = icmp eq i16 %1100, 0
  br i1 %1101, label %1110, label %1102

1102:                                             ; preds = %1099
  store i16 %1100, ptr @gRestartsLeft, align 2, !tbaa !8
  store i16 0, ptr @gNextRestartNum, align 2, !tbaa !8
  br label %1110

1103:                                             ; preds = %770, %786, %611, %591, %661
  %1104 = phi i8 [ 14, %661 ], [ %609, %591 ], [ 18, %611 ], [ 15, %786 ], [ 15, %770 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #5
  br label %1105

1105:                                             ; preds = %1063, %1074, %1088, %1103
  %1106 = phi i8 [ %1104, %1103 ], [ 23, %1088 ], [ 24, %1074 ], [ 24, %1063 ]
  %1107 = load i8, ptr @gCallbackStatus, align 1
  %1108 = icmp eq i8 %1107, 0
  %1109 = select i1 %1108, i8 %1106, i8 %1107
  br label %1129

1110:                                             ; preds = %1099, %1102
  tail call fastcc void @fixInBuffer()
  %1111 = load i8, ptr @gCallbackStatus, align 1
  %1112 = icmp eq i8 %1111, 0
  br i1 %1112, label %1113, label %1129

1113:                                             ; preds = %1110
  %1114 = load i16, ptr @gImageXSize, align 2, !tbaa !8
  %1115 = zext i16 %1114 to i32
  store i32 %1115, ptr %0, align 8, !tbaa !32
  %1116 = load i16, ptr @gImageYSize, align 2, !tbaa !8
  %1117 = zext i16 %1116 to i32
  store i32 %1117, ptr %7, align 4, !tbaa !35
  %1118 = load i8, ptr @gCompsInFrame, align 1, !tbaa !5
  %1119 = zext i8 %1118 to i32
  store i32 %1119, ptr %8, align 8, !tbaa !36
  %1120 = load i32, ptr @gScanType, align 4, !tbaa !16
  store i32 %1120, ptr %11, align 4, !tbaa !37
  %1121 = load i16, ptr @gMaxMCUSPerRow, align 2, !tbaa !8
  %1122 = zext i16 %1121 to i32
  store i32 %1122, ptr %9, align 4, !tbaa !38
  %1123 = load i16, ptr @gMaxMCUSPerCol, align 2, !tbaa !8
  %1124 = zext i16 %1123 to i32
  store i32 %1124, ptr %10, align 8, !tbaa !39
  %1125 = load i8, ptr @gMaxMCUXSize, align 1, !tbaa !5
  %1126 = zext nneg i8 %1125 to i32
  store i32 %1126, ptr %12, align 8, !tbaa !40
  %1127 = load i8, ptr @gMaxMCUYSize, align 1, !tbaa !5
  %1128 = zext nneg i8 %1127 to i32
  store i32 %1128, ptr %13, align 4, !tbaa !41
  store ptr @gMCUBufR, ptr %14, align 8, !tbaa !42
  store ptr @gMCUBufG, ptr %15, align 8, !tbaa !43
  store ptr @gMCUBufB, ptr %16, align 8, !tbaa !44
  br label %1129

1129:                                             ; preds = %1110, %1105, %554, %549, %558, %588, %566, %559, %35, %1113
  %1130 = phi i8 [ 0, %1113 ], [ %47, %35 ], [ 26, %558 ], [ 27, %588 ], [ 27, %566 ], [ 27, %559 ], [ %553, %549 ], [ %556, %554 ], [ %1109, %1105 ], [ %1111, %1110 ]
  ret i8 %1130
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @getOctet(i8 noundef zeroext range(i8 0, 2) %0) unnamed_addr #0 {
  %2 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %13

4:                                                ; preds = %1
  store i8 4, ptr @gInBufOfs, align 1, !tbaa !5
  %5 = load ptr, ptr @g_pNeedBytesCallback, align 8, !tbaa !10
  %6 = load ptr, ptr @g_pCallback_data, align 8, !tbaa !10
  %7 = tail call zeroext i8 %5(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @gInBuf, i64 4), i8 noundef zeroext -4, ptr noundef nonnull @gInBufLeft, ptr noundef %6) #5
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  store i8 %7, ptr @gCallbackStatus, align 1, !tbaa !5
  br label %10

10:                                               ; preds = %9, %4
  %11 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %1, %10
  %14 = phi i8 [ %11, %10 ], [ %2, %1 ]
  %15 = add i8 %14, -1
  store i8 %15, ptr @gInBufLeft, align 1, !tbaa !5
  %16 = load i8, ptr @gInBufOfs, align 1, !tbaa !5
  %17 = add i8 %16, 1
  store i8 %17, ptr @gInBufOfs, align 1, !tbaa !5
  %18 = zext i8 %16 to i64
  %19 = getelementptr inbounds nuw [256 x i8], ptr @gInBuf, i64 0, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !5
  %21 = icmp ne i8 %0, 0
  %22 = icmp eq i8 %20, -1
  %23 = select i1 %21, i1 %22, i1 false
  br i1 %23, label %31, label %70

24:                                               ; preds = %10
  %25 = load i8, ptr @gTemFlag, align 1, !tbaa !5
  %26 = xor i8 %25, -1
  store i8 %26, ptr @gTemFlag, align 1, !tbaa !5
  %27 = icmp ne i8 %25, -1
  %28 = select i1 %27, i8 -1, i8 -39
  %29 = icmp ne i8 %0, 0
  %30 = select i1 %29, i1 %27, i1 false
  br i1 %30, label %35, label %70

31:                                               ; preds = %13
  %32 = icmp eq i8 %15, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %31
  %34 = load i8, ptr @gInBufOfs, align 1, !tbaa !5
  br label %50

35:                                               ; preds = %24, %31
  store i8 4, ptr @gInBufOfs, align 1, !tbaa !5
  %36 = load ptr, ptr @g_pNeedBytesCallback, align 8, !tbaa !10
  %37 = load ptr, ptr @g_pCallback_data, align 8, !tbaa !10
  %38 = tail call zeroext i8 %36(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @gInBuf, i64 4), i8 noundef zeroext -4, ptr noundef nonnull @gInBufLeft, ptr noundef %37) #5
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  store i8 %38, ptr @gCallbackStatus, align 1, !tbaa !5
  br label %41

41:                                               ; preds = %40, %35
  %42 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %43 = icmp eq i8 %42, 0
  %44 = load i8, ptr @gInBufOfs, align 1, !tbaa !5
  br i1 %43, label %45, label %50

45:                                               ; preds = %41
  %46 = load i8, ptr @gTemFlag, align 1, !tbaa !5
  %47 = xor i8 %46, -1
  store i8 %47, ptr @gTemFlag, align 1, !tbaa !5
  %48 = icmp eq i8 %46, -1
  %49 = select i1 %48, i8 -39, i8 -1
  br label %59

50:                                               ; preds = %33, %41
  %51 = phi i8 [ %44, %41 ], [ %34, %33 ]
  %52 = phi i8 [ %42, %41 ], [ %15, %33 ]
  %53 = add i8 %52, -1
  store i8 %53, ptr @gInBufLeft, align 1, !tbaa !5
  %54 = add i8 %51, 1
  store i8 %54, ptr @gInBufOfs, align 1, !tbaa !5
  %55 = zext i8 %51 to i64
  %56 = getelementptr inbounds nuw [256 x i8], ptr @gInBuf, i64 0, i64 %55
  %57 = load i8, ptr %56, align 1, !tbaa !5
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %70, label %59

59:                                               ; preds = %45, %50
  %60 = phi i8 [ 0, %45 ], [ %53, %50 ]
  %61 = phi i8 [ %44, %45 ], [ %54, %50 ]
  %62 = phi i8 [ %49, %45 ], [ %57, %50 ]
  %63 = add i8 %61, -1
  %64 = zext i8 %63 to i64
  %65 = getelementptr inbounds nuw [256 x i8], ptr @gInBuf, i64 0, i64 %64
  store i8 %62, ptr %65, align 1, !tbaa !5
  %66 = add i8 %61, -2
  store i8 %66, ptr @gInBufOfs, align 1, !tbaa !5
  %67 = zext i8 %66 to i64
  %68 = getelementptr inbounds nuw [256 x i8], ptr @gInBuf, i64 0, i64 %67
  store i8 -1, ptr %68, align 1, !tbaa !5
  %69 = add i8 %60, 2
  store i8 %69, ptr @gInBufLeft, align 1, !tbaa !5
  br label %70

70:                                               ; preds = %24, %50, %59, %13
  %71 = phi i8 [ %28, %24 ], [ -1, %50 ], [ -1, %59 ], [ %20, %13 ]
  ret i8 %71
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @upsampleCbV(i8 noundef zeroext range(i8 0, 33) %0, i8 noundef zeroext range(i8 -128, 1) %1) unnamed_addr #2 {
  %3 = zext i8 %1 to i64
  %4 = getelementptr inbounds nuw i8, ptr @gMCUBufB, i64 %3
  %5 = getelementptr inbounds nuw i8, ptr @gMCUBufG, i64 %3
  %6 = zext nneg i8 %0 to i64
  %7 = getelementptr inbounds nuw i16, ptr @gCoeffBuf, i64 %6
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %9 = load <8 x i16>, ptr %7, align 2, !tbaa !8
  %10 = and <8 x i16> %9, splat (i16 255)
  %11 = shufflevector <8 x i16> %10, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %12 = mul nuw nsw <16 x i16> %11, splat (i16 88)
  %13 = lshr <16 x i16> %12, splat (i16 8)
  %14 = add nsw <16 x i16> %13, splat (i16 -44)
  %15 = load <16 x i8>, ptr %5, align 1, !tbaa !5
  %16 = zext <16 x i8> %15 to <16 x i16>
  %17 = sub nsw <16 x i16> %16, %14
  %18 = icmp ugt <16 x i16> %17, splat (i16 255)
  %19 = trunc <16 x i16> %17 to <16 x i8>
  %20 = icmp sgt <16 x i16> %17, splat (i16 -1)
  %21 = sext <16 x i1> %20 to <16 x i8>
  %22 = select <16 x i1> %18, <16 x i8> %21, <16 x i8> %19
  store <16 x i8> %22, ptr %5, align 1, !tbaa !5
  %23 = shufflevector <8 x i16> %10, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %24 = add nsw <16 x i16> %23, splat (i16 -227)
  %25 = shufflevector <8 x i16> %10, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %26 = mul nuw <16 x i16> %25, splat (i16 198)
  %27 = lshr <16 x i16> %26, splat (i16 8)
  %28 = add nsw <16 x i16> %24, %27
  %29 = load <16 x i8>, ptr %4, align 1, !tbaa !5
  %30 = zext <16 x i8> %29 to <16 x i16>
  %31 = add nsw <16 x i16> %28, %30
  %32 = icmp ugt <16 x i16> %31, splat (i16 255)
  %33 = trunc <16 x i16> %31 to <16 x i8>
  %34 = icmp sgt <16 x i16> %31, splat (i16 -1)
  %35 = sext <16 x i1> %34 to <16 x i8>
  %36 = select <16 x i1> %32, <16 x i8> %35, <16 x i8> %33
  store <16 x i8> %36, ptr %4, align 1, !tbaa !5
  %37 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %38 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %39 = getelementptr inbounds nuw i8, ptr %7, i64 32
  %40 = load <8 x i16>, ptr %8, align 2, !tbaa !8
  %41 = and <8 x i16> %40, splat (i16 255)
  %42 = shufflevector <8 x i16> %41, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %43 = mul nuw nsw <16 x i16> %42, splat (i16 88)
  %44 = lshr <16 x i16> %43, splat (i16 8)
  %45 = add nsw <16 x i16> %44, splat (i16 -44)
  %46 = load <16 x i8>, ptr %37, align 1, !tbaa !5
  %47 = zext <16 x i8> %46 to <16 x i16>
  %48 = sub nsw <16 x i16> %47, %45
  %49 = icmp ugt <16 x i16> %48, splat (i16 255)
  %50 = trunc <16 x i16> %48 to <16 x i8>
  %51 = icmp sgt <16 x i16> %48, splat (i16 -1)
  %52 = sext <16 x i1> %51 to <16 x i8>
  %53 = select <16 x i1> %49, <16 x i8> %52, <16 x i8> %50
  store <16 x i8> %53, ptr %37, align 1, !tbaa !5
  %54 = shufflevector <8 x i16> %41, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %55 = add nsw <16 x i16> %54, splat (i16 -227)
  %56 = shufflevector <8 x i16> %41, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %57 = mul nuw <16 x i16> %56, splat (i16 198)
  %58 = lshr <16 x i16> %57, splat (i16 8)
  %59 = add nsw <16 x i16> %55, %58
  %60 = load <16 x i8>, ptr %38, align 1, !tbaa !5
  %61 = zext <16 x i8> %60 to <16 x i16>
  %62 = add nsw <16 x i16> %59, %61
  %63 = icmp ugt <16 x i16> %62, splat (i16 255)
  %64 = trunc <16 x i16> %62 to <16 x i8>
  %65 = icmp sgt <16 x i16> %62, splat (i16 -1)
  %66 = sext <16 x i1> %65 to <16 x i8>
  %67 = select <16 x i1> %63, <16 x i8> %66, <16 x i8> %64
  store <16 x i8> %67, ptr %38, align 1, !tbaa !5
  %68 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %69 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %70 = getelementptr inbounds nuw i8, ptr %7, i64 48
  %71 = load <8 x i16>, ptr %39, align 2, !tbaa !8
  %72 = and <8 x i16> %71, splat (i16 255)
  %73 = shufflevector <8 x i16> %72, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %74 = mul nuw nsw <16 x i16> %73, splat (i16 88)
  %75 = lshr <16 x i16> %74, splat (i16 8)
  %76 = add nsw <16 x i16> %75, splat (i16 -44)
  %77 = load <16 x i8>, ptr %68, align 1, !tbaa !5
  %78 = zext <16 x i8> %77 to <16 x i16>
  %79 = sub nsw <16 x i16> %78, %76
  %80 = icmp ugt <16 x i16> %79, splat (i16 255)
  %81 = trunc <16 x i16> %79 to <16 x i8>
  %82 = icmp sgt <16 x i16> %79, splat (i16 -1)
  %83 = sext <16 x i1> %82 to <16 x i8>
  %84 = select <16 x i1> %80, <16 x i8> %83, <16 x i8> %81
  store <16 x i8> %84, ptr %68, align 1, !tbaa !5
  %85 = shufflevector <8 x i16> %72, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %86 = add nsw <16 x i16> %85, splat (i16 -227)
  %87 = shufflevector <8 x i16> %72, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %88 = mul nuw <16 x i16> %87, splat (i16 198)
  %89 = lshr <16 x i16> %88, splat (i16 8)
  %90 = add nsw <16 x i16> %86, %89
  %91 = load <16 x i8>, ptr %69, align 1, !tbaa !5
  %92 = zext <16 x i8> %91 to <16 x i16>
  %93 = add nsw <16 x i16> %90, %92
  %94 = icmp ugt <16 x i16> %93, splat (i16 255)
  %95 = trunc <16 x i16> %93 to <16 x i8>
  %96 = icmp sgt <16 x i16> %93, splat (i16 -1)
  %97 = sext <16 x i1> %96 to <16 x i8>
  %98 = select <16 x i1> %94, <16 x i8> %97, <16 x i8> %95
  store <16 x i8> %98, ptr %69, align 1, !tbaa !5
  %99 = getelementptr inbounds nuw i8, ptr %5, i64 48
  %100 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %101 = load <8 x i16>, ptr %70, align 2, !tbaa !8
  %102 = and <8 x i16> %101, splat (i16 255)
  %103 = shufflevector <8 x i16> %102, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %104 = mul nuw nsw <16 x i16> %103, splat (i16 88)
  %105 = lshr <16 x i16> %104, splat (i16 8)
  %106 = add nsw <16 x i16> %105, splat (i16 -44)
  %107 = load <16 x i8>, ptr %99, align 1, !tbaa !5
  %108 = zext <16 x i8> %107 to <16 x i16>
  %109 = sub nsw <16 x i16> %108, %106
  %110 = icmp ugt <16 x i16> %109, splat (i16 255)
  %111 = trunc <16 x i16> %109 to <16 x i8>
  %112 = icmp sgt <16 x i16> %109, splat (i16 -1)
  %113 = sext <16 x i1> %112 to <16 x i8>
  %114 = select <16 x i1> %110, <16 x i8> %113, <16 x i8> %111
  store <16 x i8> %114, ptr %99, align 1, !tbaa !5
  %115 = shufflevector <8 x i16> %102, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %116 = add nsw <16 x i16> %115, splat (i16 -227)
  %117 = shufflevector <8 x i16> %102, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %118 = mul nuw <16 x i16> %117, splat (i16 198)
  %119 = lshr <16 x i16> %118, splat (i16 8)
  %120 = add nsw <16 x i16> %116, %119
  %121 = load <16 x i8>, ptr %100, align 1, !tbaa !5
  %122 = zext <16 x i8> %121 to <16 x i16>
  %123 = add nsw <16 x i16> %120, %122
  %124 = icmp ugt <16 x i16> %123, splat (i16 255)
  %125 = trunc <16 x i16> %123 to <16 x i8>
  %126 = icmp sgt <16 x i16> %123, splat (i16 -1)
  %127 = sext <16 x i1> %126 to <16 x i8>
  %128 = select <16 x i1> %124, <16 x i8> %127, <16 x i8> %125
  store <16 x i8> %128, ptr %100, align 1, !tbaa !5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @upsampleCrV(i8 noundef zeroext range(i8 0, 33) %0, i8 noundef zeroext range(i8 -128, 1) %1) unnamed_addr #2 {
  %3 = zext i8 %1 to i64
  %4 = getelementptr inbounds nuw i8, ptr @gMCUBufG, i64 %3
  %5 = getelementptr inbounds nuw i8, ptr @gMCUBufR, i64 %3
  %6 = zext nneg i8 %0 to i64
  %7 = getelementptr inbounds nuw i16, ptr @gCoeffBuf, i64 %6
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %9 = load <8 x i16>, ptr %7, align 2, !tbaa !8
  %10 = and <8 x i16> %9, splat (i16 255)
  %11 = shufflevector <8 x i16> %10, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %12 = add nsw <16 x i16> %11, splat (i16 -179)
  %13 = shufflevector <8 x i16> %10, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %14 = mul nuw nsw <16 x i16> %13, splat (i16 103)
  %15 = lshr <16 x i16> %14, splat (i16 8)
  %16 = add nsw <16 x i16> %12, %15
  %17 = load <16 x i8>, ptr %5, align 1, !tbaa !5
  %18 = zext <16 x i8> %17 to <16 x i16>
  %19 = add nsw <16 x i16> %16, %18
  %20 = icmp ugt <16 x i16> %19, splat (i16 255)
  %21 = trunc <16 x i16> %19 to <16 x i8>
  %22 = icmp sgt <16 x i16> %19, splat (i16 -1)
  %23 = sext <16 x i1> %22 to <16 x i8>
  %24 = select <16 x i1> %20, <16 x i8> %23, <16 x i8> %21
  store <16 x i8> %24, ptr %5, align 1, !tbaa !5
  %25 = shufflevector <8 x i16> %10, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %26 = mul nuw <16 x i16> %25, splat (i16 183)
  %27 = lshr <16 x i16> %26, splat (i16 8)
  %28 = add nsw <16 x i16> %27, splat (i16 -91)
  %29 = load <16 x i8>, ptr %4, align 1, !tbaa !5
  %30 = zext <16 x i8> %29 to <16 x i16>
  %31 = sub nsw <16 x i16> %30, %28
  %32 = icmp ugt <16 x i16> %31, splat (i16 255)
  %33 = trunc <16 x i16> %31 to <16 x i8>
  %34 = icmp sgt <16 x i16> %31, splat (i16 -1)
  %35 = sext <16 x i1> %34 to <16 x i8>
  %36 = select <16 x i1> %32, <16 x i8> %35, <16 x i8> %33
  store <16 x i8> %36, ptr %4, align 1, !tbaa !5
  %37 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %38 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %39 = getelementptr inbounds nuw i8, ptr %7, i64 32
  %40 = load <8 x i16>, ptr %8, align 2, !tbaa !8
  %41 = and <8 x i16> %40, splat (i16 255)
  %42 = shufflevector <8 x i16> %41, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %43 = add nsw <16 x i16> %42, splat (i16 -179)
  %44 = shufflevector <8 x i16> %41, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %45 = mul nuw nsw <16 x i16> %44, splat (i16 103)
  %46 = lshr <16 x i16> %45, splat (i16 8)
  %47 = add nsw <16 x i16> %43, %46
  %48 = load <16 x i8>, ptr %37, align 1, !tbaa !5
  %49 = zext <16 x i8> %48 to <16 x i16>
  %50 = add nsw <16 x i16> %47, %49
  %51 = icmp ugt <16 x i16> %50, splat (i16 255)
  %52 = trunc <16 x i16> %50 to <16 x i8>
  %53 = icmp sgt <16 x i16> %50, splat (i16 -1)
  %54 = sext <16 x i1> %53 to <16 x i8>
  %55 = select <16 x i1> %51, <16 x i8> %54, <16 x i8> %52
  store <16 x i8> %55, ptr %37, align 1, !tbaa !5
  %56 = shufflevector <8 x i16> %41, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %57 = mul nuw <16 x i16> %56, splat (i16 183)
  %58 = lshr <16 x i16> %57, splat (i16 8)
  %59 = add nsw <16 x i16> %58, splat (i16 -91)
  %60 = load <16 x i8>, ptr %38, align 1, !tbaa !5
  %61 = zext <16 x i8> %60 to <16 x i16>
  %62 = sub nsw <16 x i16> %61, %59
  %63 = icmp ugt <16 x i16> %62, splat (i16 255)
  %64 = trunc <16 x i16> %62 to <16 x i8>
  %65 = icmp sgt <16 x i16> %62, splat (i16 -1)
  %66 = sext <16 x i1> %65 to <16 x i8>
  %67 = select <16 x i1> %63, <16 x i8> %66, <16 x i8> %64
  store <16 x i8> %67, ptr %38, align 1, !tbaa !5
  %68 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %69 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %70 = getelementptr inbounds nuw i8, ptr %7, i64 48
  %71 = load <8 x i16>, ptr %39, align 2, !tbaa !8
  %72 = and <8 x i16> %71, splat (i16 255)
  %73 = shufflevector <8 x i16> %72, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %74 = add nsw <16 x i16> %73, splat (i16 -179)
  %75 = shufflevector <8 x i16> %72, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %76 = mul nuw nsw <16 x i16> %75, splat (i16 103)
  %77 = lshr <16 x i16> %76, splat (i16 8)
  %78 = add nsw <16 x i16> %74, %77
  %79 = load <16 x i8>, ptr %68, align 1, !tbaa !5
  %80 = zext <16 x i8> %79 to <16 x i16>
  %81 = add nsw <16 x i16> %78, %80
  %82 = icmp ugt <16 x i16> %81, splat (i16 255)
  %83 = trunc <16 x i16> %81 to <16 x i8>
  %84 = icmp sgt <16 x i16> %81, splat (i16 -1)
  %85 = sext <16 x i1> %84 to <16 x i8>
  %86 = select <16 x i1> %82, <16 x i8> %85, <16 x i8> %83
  store <16 x i8> %86, ptr %68, align 1, !tbaa !5
  %87 = shufflevector <8 x i16> %72, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %88 = mul nuw <16 x i16> %87, splat (i16 183)
  %89 = lshr <16 x i16> %88, splat (i16 8)
  %90 = add nsw <16 x i16> %89, splat (i16 -91)
  %91 = load <16 x i8>, ptr %69, align 1, !tbaa !5
  %92 = zext <16 x i8> %91 to <16 x i16>
  %93 = sub nsw <16 x i16> %92, %90
  %94 = icmp ugt <16 x i16> %93, splat (i16 255)
  %95 = trunc <16 x i16> %93 to <16 x i8>
  %96 = icmp sgt <16 x i16> %93, splat (i16 -1)
  %97 = sext <16 x i1> %96 to <16 x i8>
  %98 = select <16 x i1> %94, <16 x i8> %97, <16 x i8> %95
  store <16 x i8> %98, ptr %69, align 1, !tbaa !5
  %99 = getelementptr inbounds nuw i8, ptr %5, i64 48
  %100 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %101 = load <8 x i16>, ptr %70, align 2, !tbaa !8
  %102 = and <8 x i16> %101, splat (i16 255)
  %103 = shufflevector <8 x i16> %102, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %104 = add nsw <16 x i16> %103, splat (i16 -179)
  %105 = shufflevector <8 x i16> %102, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %106 = mul nuw nsw <16 x i16> %105, splat (i16 103)
  %107 = lshr <16 x i16> %106, splat (i16 8)
  %108 = add nsw <16 x i16> %104, %107
  %109 = load <16 x i8>, ptr %99, align 1, !tbaa !5
  %110 = zext <16 x i8> %109 to <16 x i16>
  %111 = add nsw <16 x i16> %108, %110
  %112 = icmp ugt <16 x i16> %111, splat (i16 255)
  %113 = trunc <16 x i16> %111 to <16 x i8>
  %114 = icmp sgt <16 x i16> %111, splat (i16 -1)
  %115 = sext <16 x i1> %114 to <16 x i8>
  %116 = select <16 x i1> %112, <16 x i8> %115, <16 x i8> %113
  store <16 x i8> %116, ptr %99, align 1, !tbaa !5
  %117 = shufflevector <8 x i16> %102, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %118 = mul nuw <16 x i16> %117, splat (i16 183)
  %119 = lshr <16 x i16> %118, splat (i16 8)
  %120 = add nsw <16 x i16> %119, splat (i16 -91)
  %121 = load <16 x i8>, ptr %100, align 1, !tbaa !5
  %122 = zext <16 x i8> %121 to <16 x i16>
  %123 = sub nsw <16 x i16> %122, %120
  %124 = icmp ugt <16 x i16> %123, splat (i16 255)
  %125 = trunc <16 x i16> %123 to <16 x i8>
  %126 = icmp sgt <16 x i16> %123, splat (i16 -1)
  %127 = sext <16 x i1> %126 to <16 x i8>
  %128 = select <16 x i1> %124, <16 x i8> %127, <16 x i8> %125
  store <16 x i8> %128, ptr %100, align 1, !tbaa !5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @upsampleCbH(i8 noundef zeroext range(i8 0, 5) %0, i8 noundef zeroext range(i8 0, 65) %1) unnamed_addr #2 {
  %3 = zext nneg i8 %0 to i64
  %4 = getelementptr inbounds nuw i16, ptr @gCoeffBuf, i64 %3
  %5 = zext nneg i8 %1 to i64
  %6 = getelementptr inbounds nuw i8, ptr @gMCUBufG, i64 %5
  %7 = getelementptr inbounds nuw i8, ptr @gMCUBufB, i64 %5
  br label %8

8:                                                ; preds = %2, %8
  %9 = phi i8 [ 0, %2 ], [ %43, %8 ]
  %10 = phi ptr [ %4, %2 ], [ %42, %8 ]
  %11 = phi ptr [ %7, %2 ], [ %41, %8 ]
  %12 = phi ptr [ %6, %2 ], [ %40, %8 ]
  %13 = load <4 x i16>, ptr %10, align 2, !tbaa !8
  %14 = and <4 x i16> %13, splat (i16 255)
  %15 = mul nuw nsw <4 x i16> %14, splat (i16 88)
  %16 = lshr <4 x i16> %15, splat (i16 8)
  %17 = add nsw <4 x i16> %16, splat (i16 -44)
  %18 = shufflevector <4 x i16> %17, <4 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %19 = load <8 x i8>, ptr %12, align 1, !tbaa !5
  %20 = zext <8 x i8> %19 to <8 x i16>
  %21 = sub nsw <8 x i16> %20, %18
  %22 = icmp ugt <8 x i16> %21, splat (i16 255)
  %23 = trunc <8 x i16> %21 to <8 x i8>
  %24 = icmp sgt <8 x i16> %21, splat (i16 -1)
  %25 = sext <8 x i1> %24 to <8 x i8>
  %26 = select <8 x i1> %22, <8 x i8> %25, <8 x i8> %23
  store <8 x i8> %26, ptr %12, align 1, !tbaa !5
  %27 = mul nuw <4 x i16> %14, splat (i16 198)
  %28 = lshr <4 x i16> %27, splat (i16 8)
  %29 = add nsw <4 x i16> %14, splat (i16 -227)
  %30 = add nsw <4 x i16> %29, %28
  %31 = shufflevector <4 x i16> %30, <4 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %32 = load <8 x i8>, ptr %11, align 1, !tbaa !5
  %33 = zext <8 x i8> %32 to <8 x i16>
  %34 = add nsw <8 x i16> %31, %33
  %35 = icmp ugt <8 x i16> %34, splat (i16 255)
  %36 = trunc <8 x i16> %34 to <8 x i8>
  %37 = icmp sgt <8 x i16> %34, splat (i16 -1)
  %38 = sext <8 x i1> %37 to <8 x i8>
  %39 = select <8 x i1> %35, <8 x i8> %38, <8 x i8> %36
  store <8 x i8> %39, ptr %11, align 1, !tbaa !5
  %40 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %41 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %42 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %43 = add nuw nsw i8 %9, 1
  %44 = icmp eq i8 %43, 8
  br i1 %44, label %45, label %8, !llvm.loop !45

45:                                               ; preds = %8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @upsampleCrH(i8 noundef zeroext range(i8 0, 5) %0, i8 noundef zeroext range(i8 0, 65) %1) unnamed_addr #2 {
  %3 = zext nneg i8 %0 to i64
  %4 = getelementptr inbounds nuw i16, ptr @gCoeffBuf, i64 %3
  %5 = zext nneg i8 %1 to i64
  %6 = getelementptr inbounds nuw i8, ptr @gMCUBufR, i64 %5
  %7 = getelementptr inbounds nuw i8, ptr @gMCUBufG, i64 %5
  br label %8

8:                                                ; preds = %2, %8
  %9 = phi i8 [ 0, %2 ], [ %43, %8 ]
  %10 = phi ptr [ %4, %2 ], [ %42, %8 ]
  %11 = phi ptr [ %7, %2 ], [ %41, %8 ]
  %12 = phi ptr [ %6, %2 ], [ %40, %8 ]
  %13 = load <4 x i16>, ptr %10, align 2, !tbaa !8
  %14 = and <4 x i16> %13, splat (i16 255)
  %15 = mul nuw nsw <4 x i16> %14, splat (i16 103)
  %16 = lshr <4 x i16> %15, splat (i16 8)
  %17 = add nsw <4 x i16> %14, splat (i16 -179)
  %18 = add nsw <4 x i16> %17, %16
  %19 = shufflevector <4 x i16> %18, <4 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %20 = load <8 x i8>, ptr %12, align 1, !tbaa !5
  %21 = zext <8 x i8> %20 to <8 x i16>
  %22 = add nsw <8 x i16> %19, %21
  %23 = icmp ugt <8 x i16> %22, splat (i16 255)
  %24 = trunc <8 x i16> %22 to <8 x i8>
  %25 = icmp sgt <8 x i16> %22, splat (i16 -1)
  %26 = sext <8 x i1> %25 to <8 x i8>
  %27 = select <8 x i1> %23, <8 x i8> %26, <8 x i8> %24
  store <8 x i8> %27, ptr %12, align 1, !tbaa !5
  %28 = mul nuw <4 x i16> %14, splat (i16 183)
  %29 = lshr <4 x i16> %28, splat (i16 8)
  %30 = add nsw <4 x i16> %29, splat (i16 -91)
  %31 = shufflevector <4 x i16> %30, <4 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %32 = load <8 x i8>, ptr %11, align 1, !tbaa !5
  %33 = zext <8 x i8> %32 to <8 x i16>
  %34 = sub nsw <8 x i16> %33, %31
  %35 = icmp ugt <8 x i16> %34, splat (i16 255)
  %36 = trunc <8 x i16> %34 to <8 x i8>
  %37 = icmp sgt <8 x i16> %34, splat (i16 -1)
  %38 = sext <8 x i1> %37 to <8 x i8>
  %39 = select <8 x i1> %35, <8 x i8> %38, <8 x i8> %36
  store <8 x i8> %39, ptr %11, align 1, !tbaa !5
  %40 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %41 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %42 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %43 = add nuw nsw i8 %9, 1
  %44 = icmp eq i8 %43, 8
  br i1 %44, label %45, label %8, !llvm.loop !46

45:                                               ; preds = %8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @upsampleCb(i8 noundef zeroext range(i8 0, 37) %0, i8 noundef zeroext range(i8 -64, -127) %1) unnamed_addr #2 {
  %3 = zext i8 %1 to i64
  %4 = getelementptr inbounds nuw i8, ptr @gMCUBufB, i64 %3
  %5 = getelementptr inbounds nuw i8, ptr @gMCUBufG, i64 %3
  %6 = zext nneg i8 %0 to i64
  %7 = getelementptr inbounds nuw i16, ptr @gCoeffBuf, i64 %6
  %8 = load <4 x i16>, ptr %7, align 2, !tbaa !8
  %9 = and <4 x i16> %8, splat (i16 255)
  %10 = mul nuw nsw <4 x i16> %9, splat (i16 88)
  %11 = lshr <4 x i16> %10, splat (i16 8)
  %12 = add nsw <4 x i16> %11, splat (i16 -44)
  %13 = shufflevector <4 x i16> %12, <4 x i16> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %14 = load <16 x i8>, ptr %5, align 1, !tbaa !5
  %15 = zext <16 x i8> %14 to <16 x i16>
  %16 = sub nsw <16 x i16> %15, %13
  %17 = icmp ugt <16 x i16> %16, splat (i16 255)
  %18 = trunc <16 x i16> %16 to <16 x i8>
  %19 = icmp sgt <16 x i16> %16, splat (i16 -1)
  %20 = sext <16 x i1> %19 to <16 x i8>
  %21 = select <16 x i1> %17, <16 x i8> %20, <16 x i8> %18
  store <16 x i8> %21, ptr %5, align 1, !tbaa !5
  %22 = mul nuw <4 x i16> %9, splat (i16 198)
  %23 = lshr <4 x i16> %22, splat (i16 8)
  %24 = add nsw <4 x i16> %9, splat (i16 -227)
  %25 = add nsw <4 x i16> %24, %23
  %26 = shufflevector <4 x i16> %25, <4 x i16> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %27 = load <16 x i8>, ptr %4, align 1, !tbaa !5
  %28 = zext <16 x i8> %27 to <16 x i16>
  %29 = add nsw <16 x i16> %26, %28
  %30 = icmp ugt <16 x i16> %29, splat (i16 255)
  %31 = trunc <16 x i16> %29 to <16 x i8>
  %32 = icmp sgt <16 x i16> %29, splat (i16 -1)
  %33 = sext <16 x i1> %32 to <16 x i8>
  %34 = select <16 x i1> %30, <16 x i8> %33, <16 x i8> %31
  store <16 x i8> %34, ptr %4, align 1, !tbaa !5
  %35 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %36 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %37 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %38 = load <4 x i16>, ptr %35, align 2, !tbaa !8
  %39 = and <4 x i16> %38, splat (i16 255)
  %40 = mul nuw nsw <4 x i16> %39, splat (i16 88)
  %41 = lshr <4 x i16> %40, splat (i16 8)
  %42 = add nsw <4 x i16> %41, splat (i16 -44)
  %43 = shufflevector <4 x i16> %42, <4 x i16> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %44 = load <16 x i8>, ptr %36, align 1, !tbaa !5
  %45 = zext <16 x i8> %44 to <16 x i16>
  %46 = sub nsw <16 x i16> %45, %43
  %47 = icmp ugt <16 x i16> %46, splat (i16 255)
  %48 = trunc <16 x i16> %46 to <16 x i8>
  %49 = icmp sgt <16 x i16> %46, splat (i16 -1)
  %50 = sext <16 x i1> %49 to <16 x i8>
  %51 = select <16 x i1> %47, <16 x i8> %50, <16 x i8> %48
  store <16 x i8> %51, ptr %36, align 1, !tbaa !5
  %52 = mul nuw <4 x i16> %39, splat (i16 198)
  %53 = lshr <4 x i16> %52, splat (i16 8)
  %54 = add nsw <4 x i16> %39, splat (i16 -227)
  %55 = add nsw <4 x i16> %54, %53
  %56 = shufflevector <4 x i16> %55, <4 x i16> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %57 = load <16 x i8>, ptr %37, align 1, !tbaa !5
  %58 = zext <16 x i8> %57 to <16 x i16>
  %59 = add nsw <16 x i16> %56, %58
  %60 = icmp ugt <16 x i16> %59, splat (i16 255)
  %61 = trunc <16 x i16> %59 to <16 x i8>
  %62 = icmp sgt <16 x i16> %59, splat (i16 -1)
  %63 = sext <16 x i1> %62 to <16 x i8>
  %64 = select <16 x i1> %60, <16 x i8> %63, <16 x i8> %61
  store <16 x i8> %64, ptr %37, align 1, !tbaa !5
  %65 = getelementptr inbounds nuw i8, ptr %7, i64 32
  %66 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %67 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %68 = load <4 x i16>, ptr %65, align 2, !tbaa !8
  %69 = and <4 x i16> %68, splat (i16 255)
  %70 = mul nuw nsw <4 x i16> %69, splat (i16 88)
  %71 = lshr <4 x i16> %70, splat (i16 8)
  %72 = add nsw <4 x i16> %71, splat (i16 -44)
  %73 = shufflevector <4 x i16> %72, <4 x i16> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %74 = load <16 x i8>, ptr %66, align 1, !tbaa !5
  %75 = zext <16 x i8> %74 to <16 x i16>
  %76 = sub nsw <16 x i16> %75, %73
  %77 = icmp ugt <16 x i16> %76, splat (i16 255)
  %78 = trunc <16 x i16> %76 to <16 x i8>
  %79 = icmp sgt <16 x i16> %76, splat (i16 -1)
  %80 = sext <16 x i1> %79 to <16 x i8>
  %81 = select <16 x i1> %77, <16 x i8> %80, <16 x i8> %78
  store <16 x i8> %81, ptr %66, align 1, !tbaa !5
  %82 = mul nuw <4 x i16> %69, splat (i16 198)
  %83 = lshr <4 x i16> %82, splat (i16 8)
  %84 = add nsw <4 x i16> %69, splat (i16 -227)
  %85 = add nsw <4 x i16> %84, %83
  %86 = shufflevector <4 x i16> %85, <4 x i16> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %87 = load <16 x i8>, ptr %67, align 1, !tbaa !5
  %88 = zext <16 x i8> %87 to <16 x i16>
  %89 = add nsw <16 x i16> %86, %88
  %90 = icmp ugt <16 x i16> %89, splat (i16 255)
  %91 = trunc <16 x i16> %89 to <16 x i8>
  %92 = icmp sgt <16 x i16> %89, splat (i16 -1)
  %93 = sext <16 x i1> %92 to <16 x i8>
  %94 = select <16 x i1> %90, <16 x i8> %93, <16 x i8> %91
  store <16 x i8> %94, ptr %67, align 1, !tbaa !5
  %95 = getelementptr inbounds nuw i8, ptr %7, i64 48
  %96 = getelementptr inbounds nuw i8, ptr %5, i64 48
  %97 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %98 = load <4 x i16>, ptr %95, align 2, !tbaa !8
  %99 = and <4 x i16> %98, splat (i16 255)
  %100 = mul nuw nsw <4 x i16> %99, splat (i16 88)
  %101 = lshr <4 x i16> %100, splat (i16 8)
  %102 = add nsw <4 x i16> %101, splat (i16 -44)
  %103 = shufflevector <4 x i16> %102, <4 x i16> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %104 = load <16 x i8>, ptr %96, align 1, !tbaa !5
  %105 = zext <16 x i8> %104 to <16 x i16>
  %106 = sub nsw <16 x i16> %105, %103
  %107 = icmp ugt <16 x i16> %106, splat (i16 255)
  %108 = trunc <16 x i16> %106 to <16 x i8>
  %109 = icmp sgt <16 x i16> %106, splat (i16 -1)
  %110 = sext <16 x i1> %109 to <16 x i8>
  %111 = select <16 x i1> %107, <16 x i8> %110, <16 x i8> %108
  store <16 x i8> %111, ptr %96, align 1, !tbaa !5
  %112 = mul nuw <4 x i16> %99, splat (i16 198)
  %113 = lshr <4 x i16> %112, splat (i16 8)
  %114 = add nsw <4 x i16> %99, splat (i16 -227)
  %115 = add nsw <4 x i16> %114, %113
  %116 = shufflevector <4 x i16> %115, <4 x i16> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %117 = load <16 x i8>, ptr %97, align 1, !tbaa !5
  %118 = zext <16 x i8> %117 to <16 x i16>
  %119 = add nsw <16 x i16> %116, %118
  %120 = icmp ugt <16 x i16> %119, splat (i16 255)
  %121 = trunc <16 x i16> %119 to <16 x i8>
  %122 = icmp sgt <16 x i16> %119, splat (i16 -1)
  %123 = sext <16 x i1> %122 to <16 x i8>
  %124 = select <16 x i1> %120, <16 x i8> %123, <16 x i8> %121
  store <16 x i8> %124, ptr %97, align 1, !tbaa !5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @upsampleCr(i8 noundef zeroext range(i8 0, 37) %0, i8 noundef zeroext range(i8 -64, -127) %1) unnamed_addr #2 {
  %3 = zext i8 %1 to i64
  %4 = getelementptr inbounds nuw i8, ptr @gMCUBufG, i64 %3
  %5 = getelementptr inbounds nuw i8, ptr @gMCUBufR, i64 %3
  %6 = zext nneg i8 %0 to i64
  %7 = getelementptr inbounds nuw i16, ptr @gCoeffBuf, i64 %6
  %8 = load <4 x i16>, ptr %7, align 2, !tbaa !8
  %9 = and <4 x i16> %8, splat (i16 255)
  %10 = mul nuw nsw <4 x i16> %9, splat (i16 103)
  %11 = lshr <4 x i16> %10, splat (i16 8)
  %12 = add nsw <4 x i16> %9, splat (i16 -179)
  %13 = add nsw <4 x i16> %12, %11
  %14 = shufflevector <4 x i16> %13, <4 x i16> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %15 = load <16 x i8>, ptr %5, align 1, !tbaa !5
  %16 = zext <16 x i8> %15 to <16 x i16>
  %17 = add nsw <16 x i16> %14, %16
  %18 = icmp ugt <16 x i16> %17, splat (i16 255)
  %19 = trunc <16 x i16> %17 to <16 x i8>
  %20 = icmp sgt <16 x i16> %17, splat (i16 -1)
  %21 = sext <16 x i1> %20 to <16 x i8>
  %22 = select <16 x i1> %18, <16 x i8> %21, <16 x i8> %19
  store <16 x i8> %22, ptr %5, align 1, !tbaa !5
  %23 = mul nuw <4 x i16> %9, splat (i16 183)
  %24 = lshr <4 x i16> %23, splat (i16 8)
  %25 = add nsw <4 x i16> %24, splat (i16 -91)
  %26 = shufflevector <4 x i16> %25, <4 x i16> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %27 = load <16 x i8>, ptr %4, align 1, !tbaa !5
  %28 = zext <16 x i8> %27 to <16 x i16>
  %29 = sub nsw <16 x i16> %28, %26
  %30 = icmp ugt <16 x i16> %29, splat (i16 255)
  %31 = trunc <16 x i16> %29 to <16 x i8>
  %32 = icmp sgt <16 x i16> %29, splat (i16 -1)
  %33 = sext <16 x i1> %32 to <16 x i8>
  %34 = select <16 x i1> %30, <16 x i8> %33, <16 x i8> %31
  store <16 x i8> %34, ptr %4, align 1, !tbaa !5
  %35 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %36 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %37 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %38 = load <4 x i16>, ptr %35, align 2, !tbaa !8
  %39 = and <4 x i16> %38, splat (i16 255)
  %40 = mul nuw nsw <4 x i16> %39, splat (i16 103)
  %41 = lshr <4 x i16> %40, splat (i16 8)
  %42 = add nsw <4 x i16> %39, splat (i16 -179)
  %43 = add nsw <4 x i16> %42, %41
  %44 = shufflevector <4 x i16> %43, <4 x i16> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %45 = load <16 x i8>, ptr %36, align 1, !tbaa !5
  %46 = zext <16 x i8> %45 to <16 x i16>
  %47 = add nsw <16 x i16> %44, %46
  %48 = icmp ugt <16 x i16> %47, splat (i16 255)
  %49 = trunc <16 x i16> %47 to <16 x i8>
  %50 = icmp sgt <16 x i16> %47, splat (i16 -1)
  %51 = sext <16 x i1> %50 to <16 x i8>
  %52 = select <16 x i1> %48, <16 x i8> %51, <16 x i8> %49
  store <16 x i8> %52, ptr %36, align 1, !tbaa !5
  %53 = mul nuw <4 x i16> %39, splat (i16 183)
  %54 = lshr <4 x i16> %53, splat (i16 8)
  %55 = add nsw <4 x i16> %54, splat (i16 -91)
  %56 = shufflevector <4 x i16> %55, <4 x i16> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %57 = load <16 x i8>, ptr %37, align 1, !tbaa !5
  %58 = zext <16 x i8> %57 to <16 x i16>
  %59 = sub nsw <16 x i16> %58, %56
  %60 = icmp ugt <16 x i16> %59, splat (i16 255)
  %61 = trunc <16 x i16> %59 to <16 x i8>
  %62 = icmp sgt <16 x i16> %59, splat (i16 -1)
  %63 = sext <16 x i1> %62 to <16 x i8>
  %64 = select <16 x i1> %60, <16 x i8> %63, <16 x i8> %61
  store <16 x i8> %64, ptr %37, align 1, !tbaa !5
  %65 = getelementptr inbounds nuw i8, ptr %7, i64 32
  %66 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %67 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %68 = load <4 x i16>, ptr %65, align 2, !tbaa !8
  %69 = and <4 x i16> %68, splat (i16 255)
  %70 = mul nuw nsw <4 x i16> %69, splat (i16 103)
  %71 = lshr <4 x i16> %70, splat (i16 8)
  %72 = add nsw <4 x i16> %69, splat (i16 -179)
  %73 = add nsw <4 x i16> %72, %71
  %74 = shufflevector <4 x i16> %73, <4 x i16> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %75 = load <16 x i8>, ptr %66, align 1, !tbaa !5
  %76 = zext <16 x i8> %75 to <16 x i16>
  %77 = add nsw <16 x i16> %74, %76
  %78 = icmp ugt <16 x i16> %77, splat (i16 255)
  %79 = trunc <16 x i16> %77 to <16 x i8>
  %80 = icmp sgt <16 x i16> %77, splat (i16 -1)
  %81 = sext <16 x i1> %80 to <16 x i8>
  %82 = select <16 x i1> %78, <16 x i8> %81, <16 x i8> %79
  store <16 x i8> %82, ptr %66, align 1, !tbaa !5
  %83 = mul nuw <4 x i16> %69, splat (i16 183)
  %84 = lshr <4 x i16> %83, splat (i16 8)
  %85 = add nsw <4 x i16> %84, splat (i16 -91)
  %86 = shufflevector <4 x i16> %85, <4 x i16> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %87 = load <16 x i8>, ptr %67, align 1, !tbaa !5
  %88 = zext <16 x i8> %87 to <16 x i16>
  %89 = sub nsw <16 x i16> %88, %86
  %90 = icmp ugt <16 x i16> %89, splat (i16 255)
  %91 = trunc <16 x i16> %89 to <16 x i8>
  %92 = icmp sgt <16 x i16> %89, splat (i16 -1)
  %93 = sext <16 x i1> %92 to <16 x i8>
  %94 = select <16 x i1> %90, <16 x i8> %93, <16 x i8> %91
  store <16 x i8> %94, ptr %67, align 1, !tbaa !5
  %95 = getelementptr inbounds nuw i8, ptr %7, i64 48
  %96 = getelementptr inbounds nuw i8, ptr %5, i64 48
  %97 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %98 = load <4 x i16>, ptr %95, align 2, !tbaa !8
  %99 = and <4 x i16> %98, splat (i16 255)
  %100 = mul nuw nsw <4 x i16> %99, splat (i16 103)
  %101 = lshr <4 x i16> %100, splat (i16 8)
  %102 = add nsw <4 x i16> %99, splat (i16 -179)
  %103 = add nsw <4 x i16> %102, %101
  %104 = shufflevector <4 x i16> %103, <4 x i16> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %105 = load <16 x i8>, ptr %96, align 1, !tbaa !5
  %106 = zext <16 x i8> %105 to <16 x i16>
  %107 = add nsw <16 x i16> %104, %106
  %108 = icmp ugt <16 x i16> %107, splat (i16 255)
  %109 = trunc <16 x i16> %107 to <16 x i8>
  %110 = icmp sgt <16 x i16> %107, splat (i16 -1)
  %111 = sext <16 x i1> %110 to <16 x i8>
  %112 = select <16 x i1> %108, <16 x i8> %111, <16 x i8> %109
  store <16 x i8> %112, ptr %96, align 1, !tbaa !5
  %113 = mul nuw <4 x i16> %99, splat (i16 183)
  %114 = lshr <4 x i16> %113, splat (i16 8)
  %115 = add nsw <4 x i16> %114, splat (i16 -91)
  %116 = shufflevector <4 x i16> %115, <4 x i16> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %117 = load <16 x i8>, ptr %97, align 1, !tbaa !5
  %118 = zext <16 x i8> %117 to <16 x i16>
  %119 = sub nsw <16 x i16> %118, %116
  %120 = icmp ugt <16 x i16> %119, splat (i16 255)
  %121 = trunc <16 x i16> %119 to <16 x i8>
  %122 = icmp sgt <16 x i16> %119, splat (i16 -1)
  %123 = sext <16 x i1> %122 to <16 x i8>
  %124 = select <16 x i1> %120, <16 x i8> %123, <16 x i8> %121
  store <16 x i8> %124, ptr %97, align 1, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i16 @getBits1(i8 noundef zeroext range(i8 4, 17) %0) unnamed_addr #0 {
  %2 = load i16, ptr @gBitBuf, align 2, !tbaa !8
  %3 = icmp samesign ugt i8 %0, 8
  %4 = load i8, ptr @gBitsLeft, align 1, !tbaa !5
  br i1 %3, label %5, label %51

5:                                                ; preds = %1
  %6 = add nsw i8 %0, -8
  %7 = zext nneg i8 %4 to i32
  %8 = zext i16 %2 to i32
  %9 = shl i32 %8, %7
  %10 = trunc i32 %9 to i16
  store i16 %10, ptr @gBitBuf, align 2, !tbaa !8
  %11 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %5
  store i8 4, ptr @gInBufOfs, align 1, !tbaa !5
  %14 = load ptr, ptr @g_pNeedBytesCallback, align 8, !tbaa !10
  %15 = load ptr, ptr @g_pCallback_data, align 8, !tbaa !10
  %16 = tail call zeroext i8 %14(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @gInBuf, i64 4), i8 noundef zeroext -4, ptr noundef nonnull @gInBufLeft, ptr noundef %15) #5
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  store i8 %16, ptr @gCallbackStatus, align 1, !tbaa !5
  br label %19

19:                                               ; preds = %18, %13
  %20 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %19, %5
  %23 = phi i8 [ %20, %19 ], [ %11, %5 ]
  %24 = add i8 %23, -1
  store i8 %24, ptr @gInBufLeft, align 1, !tbaa !5
  %25 = load i8, ptr @gInBufOfs, align 1, !tbaa !5
  %26 = add i8 %25, 1
  store i8 %26, ptr @gInBufOfs, align 1, !tbaa !5
  %27 = zext i8 %25 to i64
  %28 = getelementptr inbounds nuw [256 x i8], ptr @gInBuf, i64 0, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !5
  br label %35

30:                                               ; preds = %19
  %31 = load i8, ptr @gTemFlag, align 1, !tbaa !5
  %32 = xor i8 %31, -1
  store i8 %32, ptr @gTemFlag, align 1, !tbaa !5
  %33 = icmp eq i8 %31, -1
  %34 = select i1 %33, i8 -39, i8 -1
  br label %35

35:                                               ; preds = %22, %30
  %36 = phi i8 [ %34, %30 ], [ %29, %22 ]
  %37 = load i16, ptr @gBitBuf, align 2, !tbaa !8
  %38 = zext i8 %36 to i16
  %39 = or i16 %37, %38
  %40 = load i8, ptr @gBitsLeft, align 1, !tbaa !5
  %41 = zext i8 %40 to i32
  %42 = sub nsw i32 8, %41
  %43 = zext i16 %39 to i32
  %44 = shl nuw nsw i32 %43, %42
  %45 = trunc i32 %44 to i16
  %46 = and i32 %8, 65280
  %47 = lshr i32 %44, 8
  %48 = and i32 %47, 255
  %49 = or disjoint i32 %48, %46
  %50 = trunc nuw i32 %49 to i16
  br label %51

51:                                               ; preds = %35, %1
  %52 = phi i16 [ %45, %35 ], [ %2, %1 ]
  %53 = phi i8 [ %40, %35 ], [ %4, %1 ]
  %54 = phi i8 [ %6, %35 ], [ %0, %1 ]
  %55 = phi i16 [ %50, %35 ], [ %2, %1 ]
  %56 = zext nneg i8 %54 to i32
  %57 = icmp ult i8 %53, %54
  %58 = zext i16 %52 to i32
  br i1 %57, label %59, label %99

59:                                               ; preds = %51
  %60 = zext nneg i8 %53 to i32
  %61 = shl nuw nsw i32 %58, %60
  %62 = trunc i32 %61 to i16
  store i16 %62, ptr @gBitBuf, align 2, !tbaa !8
  %63 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %59
  store i8 4, ptr @gInBufOfs, align 1, !tbaa !5
  %66 = load ptr, ptr @g_pNeedBytesCallback, align 8, !tbaa !10
  %67 = load ptr, ptr @g_pCallback_data, align 8, !tbaa !10
  %68 = tail call zeroext i8 %66(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @gInBuf, i64 4), i8 noundef zeroext -4, ptr noundef nonnull @gInBufLeft, ptr noundef %67) #5
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %65
  store i8 %68, ptr @gCallbackStatus, align 1, !tbaa !5
  br label %71

71:                                               ; preds = %70, %65
  %72 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %71, %59
  %75 = phi i8 [ %72, %71 ], [ %63, %59 ]
  %76 = add i8 %75, -1
  store i8 %76, ptr @gInBufLeft, align 1, !tbaa !5
  %77 = load i8, ptr @gInBufOfs, align 1, !tbaa !5
  %78 = add i8 %77, 1
  store i8 %78, ptr @gInBufOfs, align 1, !tbaa !5
  %79 = zext i8 %77 to i64
  %80 = getelementptr inbounds nuw [256 x i8], ptr @gInBuf, i64 0, i64 %79
  %81 = load i8, ptr %80, align 1, !tbaa !5
  br label %87

82:                                               ; preds = %71
  %83 = load i8, ptr @gTemFlag, align 1, !tbaa !5
  %84 = xor i8 %83, -1
  store i8 %84, ptr @gTemFlag, align 1, !tbaa !5
  %85 = icmp eq i8 %83, -1
  %86 = select i1 %85, i8 -39, i8 -1
  br label %87

87:                                               ; preds = %74, %82
  %88 = phi i8 [ %86, %82 ], [ %81, %74 ]
  %89 = load i16, ptr @gBitBuf, align 2, !tbaa !8
  %90 = zext i8 %88 to i16
  %91 = or i16 %89, %90
  %92 = load i8, ptr @gBitsLeft, align 1, !tbaa !5
  %93 = zext i8 %92 to i32
  %94 = sub nsw i32 %56, %93
  %95 = zext i16 %91 to i32
  %96 = shl nuw nsw i32 %95, %94
  %97 = sub i8 %92, %54
  %98 = add i8 %97, 8
  br label %102

99:                                               ; preds = %51
  %100 = sub nuw i8 %53, %54
  %101 = shl nuw nsw i32 %58, %56
  br label %102

102:                                              ; preds = %87, %99
  %103 = phi i32 [ %96, %87 ], [ %101, %99 ]
  %104 = phi i8 [ %98, %87 ], [ %100, %99 ]
  %105 = trunc i32 %103 to i16
  store i16 %105, ptr @gBitBuf, align 2, !tbaa !8
  store i8 %104, ptr @gBitsLeft, align 1, !tbaa !5
  %106 = zext i16 %55 to i32
  %107 = sub nuw nsw i8 16, %0
  %108 = zext nneg i8 %107 to i32
  %109 = lshr i32 %106, %108
  %110 = trunc nuw i32 %109 to i16
  ret i16 %110
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext range(i8 0, 19) i8 @processMarkers(ptr nocapture noundef nonnull writeonly %0) unnamed_addr #0 {
  %2 = alloca [16 x i8], align 16
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 2
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 3
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 5
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 6
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 7
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 9
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 10
  %13 = getelementptr inbounds nuw i8, ptr %2, i64 11
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 12
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 13
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 14
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 15
  br label %18

18:                                               ; preds = %852, %1
  %19 = load i8, ptr @gBitsLeft, align 1, !tbaa !5
  %20 = load i16, ptr @gBitBuf, align 2, !tbaa !8
  br label %21

21:                                               ; preds = %72, %18
  %22 = phi i16 [ %20, %18 ], [ %73, %72 ]
  %23 = phi i8 [ %19, %18 ], [ %74, %72 ]
  %24 = icmp ult i8 %23, 8
  %25 = zext i16 %22 to i32
  br i1 %24, label %26, label %64

26:                                               ; preds = %21
  %27 = zext nneg i8 %23 to i32
  %28 = shl nuw nsw i32 %25, %27
  %29 = trunc i32 %28 to i16
  store i16 %29, ptr @gBitBuf, align 2, !tbaa !8
  %30 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  store i8 4, ptr @gInBufOfs, align 1, !tbaa !5
  %33 = load ptr, ptr @g_pNeedBytesCallback, align 8, !tbaa !10
  %34 = load ptr, ptr @g_pCallback_data, align 8, !tbaa !10
  %35 = tail call zeroext i8 %33(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @gInBuf, i64 4), i8 noundef zeroext -4, ptr noundef nonnull @gInBufLeft, ptr noundef %34) #5
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  store i8 %35, ptr @gCallbackStatus, align 1, !tbaa !5
  br label %38

38:                                               ; preds = %37, %32
  %39 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %38, %26
  %42 = phi i8 [ %39, %38 ], [ %30, %26 ]
  %43 = add i8 %42, -1
  store i8 %43, ptr @gInBufLeft, align 1, !tbaa !5
  %44 = load i8, ptr @gInBufOfs, align 1, !tbaa !5
  %45 = add i8 %44, 1
  store i8 %45, ptr @gInBufOfs, align 1, !tbaa !5
  %46 = zext i8 %44 to i64
  %47 = getelementptr inbounds nuw [256 x i8], ptr @gInBuf, i64 0, i64 %46
  %48 = load i8, ptr %47, align 1, !tbaa !5
  br label %54

49:                                               ; preds = %38
  %50 = load i8, ptr @gTemFlag, align 1, !tbaa !5
  %51 = xor i8 %50, -1
  store i8 %51, ptr @gTemFlag, align 1, !tbaa !5
  %52 = icmp eq i8 %50, -1
  %53 = select i1 %52, i8 -39, i8 -1
  br label %54

54:                                               ; preds = %49, %41
  %55 = phi i8 [ %53, %49 ], [ %48, %41 ]
  %56 = load i16, ptr @gBitBuf, align 2, !tbaa !8
  %57 = zext i8 %55 to i16
  %58 = or i16 %56, %57
  %59 = load i8, ptr @gBitsLeft, align 1, !tbaa !5
  %60 = zext i8 %59 to i32
  %61 = sub nsw i32 8, %60
  %62 = zext i16 %58 to i32
  %63 = shl nuw nsw i32 %62, %61
  br label %67

64:                                               ; preds = %21
  %65 = add i8 %23, -8
  %66 = shl nuw nsw i32 %25, 8
  br label %67

67:                                               ; preds = %64, %54
  %68 = phi i32 [ %63, %54 ], [ %66, %64 ]
  %69 = phi i8 [ %59, %54 ], [ %65, %64 ]
  %70 = trunc i32 %68 to i16
  store i16 %70, ptr @gBitBuf, align 2, !tbaa !8
  store i8 %69, ptr @gBitsLeft, align 1, !tbaa !5
  %71 = icmp ugt i16 %22, -257
  br i1 %71, label %75, label %72

72:                                               ; preds = %121, %67
  %73 = phi i16 [ %70, %67 ], [ %124, %121 ]
  %74 = phi i8 [ %69, %67 ], [ %123, %121 ]
  br label %21, !llvm.loop !47

75:                                               ; preds = %67, %121
  %76 = phi i16 [ %124, %121 ], [ %70, %67 ]
  %77 = phi i8 [ %123, %121 ], [ %69, %67 ]
  %78 = icmp ult i8 %77, 8
  %79 = zext i16 %76 to i32
  br i1 %78, label %80, label %118

80:                                               ; preds = %75
  %81 = zext nneg i8 %77 to i32
  %82 = shl nuw nsw i32 %79, %81
  %83 = trunc i32 %82 to i16
  store i16 %83, ptr @gBitBuf, align 2, !tbaa !8
  %84 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %80
  store i8 4, ptr @gInBufOfs, align 1, !tbaa !5
  %87 = load ptr, ptr @g_pNeedBytesCallback, align 8, !tbaa !10
  %88 = load ptr, ptr @g_pCallback_data, align 8, !tbaa !10
  %89 = tail call zeroext i8 %87(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @gInBuf, i64 4), i8 noundef zeroext -4, ptr noundef nonnull @gInBufLeft, ptr noundef %88) #5
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %86
  store i8 %89, ptr @gCallbackStatus, align 1, !tbaa !5
  br label %92

92:                                               ; preds = %91, %86
  %93 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %103, label %95

95:                                               ; preds = %92, %80
  %96 = phi i8 [ %93, %92 ], [ %84, %80 ]
  %97 = add i8 %96, -1
  store i8 %97, ptr @gInBufLeft, align 1, !tbaa !5
  %98 = load i8, ptr @gInBufOfs, align 1, !tbaa !5
  %99 = add i8 %98, 1
  store i8 %99, ptr @gInBufOfs, align 1, !tbaa !5
  %100 = zext i8 %98 to i64
  %101 = getelementptr inbounds nuw [256 x i8], ptr @gInBuf, i64 0, i64 %100
  %102 = load i8, ptr %101, align 1, !tbaa !5
  br label %108

103:                                              ; preds = %92
  %104 = load i8, ptr @gTemFlag, align 1, !tbaa !5
  %105 = xor i8 %104, -1
  store i8 %105, ptr @gTemFlag, align 1, !tbaa !5
  %106 = icmp eq i8 %104, -1
  %107 = select i1 %106, i8 -39, i8 -1
  br label %108

108:                                              ; preds = %103, %95
  %109 = phi i8 [ %107, %103 ], [ %102, %95 ]
  %110 = load i16, ptr @gBitBuf, align 2, !tbaa !8
  %111 = zext i8 %109 to i16
  %112 = or i16 %110, %111
  %113 = load i8, ptr @gBitsLeft, align 1, !tbaa !5
  %114 = zext i8 %113 to i32
  %115 = sub nsw i32 8, %114
  %116 = zext i16 %112 to i32
  %117 = shl nuw nsw i32 %116, %115
  br label %121

118:                                              ; preds = %75
  %119 = add i8 %77, -8
  %120 = shl nuw nsw i32 %79, 8
  br label %121

121:                                              ; preds = %118, %108
  %122 = phi i32 [ %117, %108 ], [ %120, %118 ]
  %123 = phi i8 [ %113, %108 ], [ %119, %118 ]
  %124 = trunc i32 %122 to i16
  store i16 %124, ptr @gBitBuf, align 2, !tbaa !8
  store i8 %123, ptr @gBitsLeft, align 1, !tbaa !5
  %125 = lshr i16 %76, 8
  %126 = trunc nuw i16 %125 to i8
  switch i8 %126, label %846 [
    i8 -1, label %75
    i8 0, label %72
    i8 -64, label %127
    i8 -63, label %127
    i8 -62, label %127
    i8 -61, label %127
    i8 -59, label %127
    i8 -58, label %127
    i8 -57, label %127
    i8 -55, label %127
    i8 -54, label %127
    i8 -53, label %127
    i8 -51, label %127
    i8 -50, label %127
    i8 -49, label %127
    i8 -40, label %127
    i8 -39, label %127
    i8 -38, label %127
    i8 -60, label %128
    i8 -52, label %909
    i8 -37, label %596
    i8 -35, label %841
    i8 -56, label %910
    i8 -48, label %910
    i8 -47, label %910
    i8 -46, label %910
    i8 -45, label %910
    i8 -44, label %910
    i8 -43, label %910
    i8 -42, label %910
    i8 -41, label %910
    i8 1, label %910
  ]

127:                                              ; preds = %121, %121, %121, %121, %121, %121, %121, %121, %121, %121, %121, %121, %121, %121, %121, %121
  store i8 %126, ptr %0, align 1, !tbaa !5
  br label %910

128:                                              ; preds = %121
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #5
  %129 = tail call fastcc zeroext i16 @getBits1(i8 noundef zeroext 16)
  %130 = icmp ult i16 %129, 2
  br i1 %130, label %595, label %131

131:                                              ; preds = %128
  %132 = add i16 %129, -2
  %133 = icmp eq i16 %132, 0
  br i1 %133, label %595, label %134

134:                                              ; preds = %131
  %135 = load i16, ptr @gBitBuf, align 2, !tbaa !8
  %136 = load i8, ptr @gBitsLeft, align 1, !tbaa !5
  br label %137

137:                                              ; preds = %573, %134
  %138 = phi i8 [ %333, %573 ], [ %136, %134 ]
  %139 = phi i16 [ %334, %573 ], [ %135, %134 ]
  %140 = phi i16 [ %593, %573 ], [ %132, %134 ]
  %141 = icmp ult i8 %138, 8
  %142 = zext i16 %139 to i32
  br i1 %141, label %143, label %181

143:                                              ; preds = %137
  %144 = zext nneg i8 %138 to i32
  %145 = shl nuw nsw i32 %142, %144
  %146 = trunc i32 %145 to i16
  store i16 %146, ptr @gBitBuf, align 2, !tbaa !8
  %147 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %149, label %158

149:                                              ; preds = %143
  store i8 4, ptr @gInBufOfs, align 1, !tbaa !5
  %150 = load ptr, ptr @g_pNeedBytesCallback, align 8, !tbaa !10
  %151 = load ptr, ptr @g_pCallback_data, align 8, !tbaa !10
  %152 = tail call zeroext i8 %150(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @gInBuf, i64 4), i8 noundef zeroext -4, ptr noundef nonnull @gInBufLeft, ptr noundef %151) #5
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %149
  store i8 %152, ptr @gCallbackStatus, align 1, !tbaa !5
  br label %155

155:                                              ; preds = %154, %149
  %156 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %166, label %158

158:                                              ; preds = %155, %143
  %159 = phi i8 [ %156, %155 ], [ %147, %143 ]
  %160 = add i8 %159, -1
  store i8 %160, ptr @gInBufLeft, align 1, !tbaa !5
  %161 = load i8, ptr @gInBufOfs, align 1, !tbaa !5
  %162 = add i8 %161, 1
  store i8 %162, ptr @gInBufOfs, align 1, !tbaa !5
  %163 = zext i8 %161 to i64
  %164 = getelementptr inbounds nuw [256 x i8], ptr @gInBuf, i64 0, i64 %163
  %165 = load i8, ptr %164, align 1, !tbaa !5
  br label %171

166:                                              ; preds = %155
  %167 = load i8, ptr @gTemFlag, align 1, !tbaa !5
  %168 = xor i8 %167, -1
  store i8 %168, ptr @gTemFlag, align 1, !tbaa !5
  %169 = icmp eq i8 %167, -1
  %170 = select i1 %169, i8 -39, i8 -1
  br label %171

171:                                              ; preds = %166, %158
  %172 = phi i8 [ %170, %166 ], [ %165, %158 ]
  %173 = load i16, ptr @gBitBuf, align 2, !tbaa !8
  %174 = zext i8 %172 to i16
  %175 = or i16 %173, %174
  %176 = load i8, ptr @gBitsLeft, align 1, !tbaa !5
  %177 = zext i8 %176 to i32
  %178 = sub nsw i32 8, %177
  %179 = zext i16 %175 to i32
  %180 = shl nuw nsw i32 %179, %178
  br label %184

181:                                              ; preds = %137
  %182 = add i8 %138, -8
  %183 = shl nuw nsw i32 %142, 8
  br label %184

184:                                              ; preds = %181, %171
  %185 = phi i32 [ %180, %171 ], [ %183, %181 ]
  %186 = phi i8 [ %176, %171 ], [ %182, %181 ]
  %187 = trunc i32 %185 to i16
  store i16 %187, ptr @gBitBuf, align 2, !tbaa !8
  store i8 %186, ptr @gBitsLeft, align 1, !tbaa !5
  %188 = lshr i16 %139, 8
  %189 = zext nneg i16 %188 to i32
  %190 = and i32 %189, 14
  %191 = icmp ne i32 %190, 0
  %192 = and i32 %189, 240
  %193 = icmp samesign ugt i32 %192, 16
  %194 = select i1 %191, i1 true, i1 %193
  br i1 %194, label %595, label %195

195:                                              ; preds = %184
  %196 = lshr i16 %139, 11
  %197 = and i16 %196, 2
  %198 = and i16 %188, 1
  %199 = or disjoint i16 %197, %198
  %200 = trunc nuw nsw i16 %199 to i8
  %201 = zext nneg i16 %199 to i64
  %202 = getelementptr inbounds nuw [4 x ptr], ptr @switch.table.processMarkers, i64 0, i64 %201
  %203 = load ptr, ptr %202, align 8
  %204 = zext nneg i16 %199 to i64
  %205 = getelementptr inbounds nuw [4 x ptr], ptr @switch.table.processMarkers.3, i64 0, i64 %204
  %206 = load ptr, ptr %205, align 8
  %207 = shl nuw nsw i8 1, %200
  %208 = load i8, ptr @gValidHuffTables, align 1, !tbaa !5
  %209 = or i8 %208, %207
  store i8 %209, ptr @gValidHuffTables, align 1, !tbaa !5
  br label %210

210:                                              ; preds = %258, %195
  %211 = phi i8 [ %186, %195 ], [ %260, %258 ]
  %212 = phi i16 [ %187, %195 ], [ %261, %258 ]
  %213 = phi i64 [ 0, %195 ], [ %266, %258 ]
  %214 = phi i16 [ 0, %195 ], [ %265, %258 ]
  %215 = icmp ult i8 %211, 8
  %216 = zext i16 %212 to i32
  br i1 %215, label %217, label %255

217:                                              ; preds = %210
  %218 = zext nneg i8 %211 to i32
  %219 = shl nuw nsw i32 %216, %218
  %220 = trunc i32 %219 to i16
  store i16 %220, ptr @gBitBuf, align 2, !tbaa !8
  %221 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %222 = icmp eq i8 %221, 0
  br i1 %222, label %223, label %232

223:                                              ; preds = %217
  store i8 4, ptr @gInBufOfs, align 1, !tbaa !5
  %224 = load ptr, ptr @g_pNeedBytesCallback, align 8, !tbaa !10
  %225 = load ptr, ptr @g_pCallback_data, align 8, !tbaa !10
  %226 = tail call zeroext i8 %224(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @gInBuf, i64 4), i8 noundef zeroext -4, ptr noundef nonnull @gInBufLeft, ptr noundef %225) #5
  %227 = icmp eq i8 %226, 0
  br i1 %227, label %229, label %228

228:                                              ; preds = %223
  store i8 %226, ptr @gCallbackStatus, align 1, !tbaa !5
  br label %229

229:                                              ; preds = %228, %223
  %230 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %231 = icmp eq i8 %230, 0
  br i1 %231, label %240, label %232

232:                                              ; preds = %229, %217
  %233 = phi i8 [ %230, %229 ], [ %221, %217 ]
  %234 = add i8 %233, -1
  store i8 %234, ptr @gInBufLeft, align 1, !tbaa !5
  %235 = load i8, ptr @gInBufOfs, align 1, !tbaa !5
  %236 = add i8 %235, 1
  store i8 %236, ptr @gInBufOfs, align 1, !tbaa !5
  %237 = zext i8 %235 to i64
  %238 = getelementptr inbounds nuw [256 x i8], ptr @gInBuf, i64 0, i64 %237
  %239 = load i8, ptr %238, align 1, !tbaa !5
  br label %245

240:                                              ; preds = %229
  %241 = load i8, ptr @gTemFlag, align 1, !tbaa !5
  %242 = xor i8 %241, -1
  store i8 %242, ptr @gTemFlag, align 1, !tbaa !5
  %243 = icmp eq i8 %241, -1
  %244 = select i1 %243, i8 -39, i8 -1
  br label %245

245:                                              ; preds = %240, %232
  %246 = phi i8 [ %244, %240 ], [ %239, %232 ]
  %247 = load i16, ptr @gBitBuf, align 2, !tbaa !8
  %248 = zext i8 %246 to i16
  %249 = or i16 %247, %248
  %250 = load i8, ptr @gBitsLeft, align 1, !tbaa !5
  %251 = zext i8 %250 to i32
  %252 = sub nsw i32 8, %251
  %253 = zext i16 %249 to i32
  %254 = shl nuw nsw i32 %253, %252
  br label %258

255:                                              ; preds = %210
  %256 = add i8 %211, -8
  %257 = shl nuw nsw i32 %216, 8
  br label %258

258:                                              ; preds = %255, %245
  %259 = phi i32 [ %254, %245 ], [ %257, %255 ]
  %260 = phi i8 [ %250, %245 ], [ %256, %255 ]
  %261 = trunc i32 %259 to i16
  store i16 %261, ptr @gBitBuf, align 2, !tbaa !8
  store i8 %260, ptr @gBitsLeft, align 1, !tbaa !5
  %262 = lshr i16 %212, 8
  %263 = trunc nuw i16 %262 to i8
  %264 = getelementptr inbounds nuw [16 x i8], ptr %2, i64 0, i64 %213
  store i8 %263, ptr %264, align 1, !tbaa !5
  %265 = add i16 %214, %262
  %266 = add nuw nsw i64 %213, 1
  %267 = icmp eq i64 %266, 16
  br i1 %267, label %268, label %210, !llvm.loop !48

268:                                              ; preds = %258
  %269 = icmp eq i16 %197, 0
  %270 = select i1 %269, i16 12, i16 255
  %271 = icmp ugt i16 %265, %270
  br i1 %271, label %595, label %272

272:                                              ; preds = %268
  %273 = icmp eq i16 %265, 0
  br i1 %273, label %332, label %274

274:                                              ; preds = %272, %321
  %275 = phi i8 [ %323, %321 ], [ %260, %272 ]
  %276 = phi i16 [ %324, %321 ], [ %261, %272 ]
  %277 = phi i8 [ %329, %321 ], [ 0, %272 ]
  %278 = icmp ult i8 %275, 8
  %279 = zext i16 %276 to i32
  br i1 %278, label %280, label %318

280:                                              ; preds = %274
  %281 = zext nneg i8 %275 to i32
  %282 = shl nuw nsw i32 %279, %281
  %283 = trunc i32 %282 to i16
  store i16 %283, ptr @gBitBuf, align 2, !tbaa !8
  %284 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %285 = icmp eq i8 %284, 0
  br i1 %285, label %286, label %295

286:                                              ; preds = %280
  store i8 4, ptr @gInBufOfs, align 1, !tbaa !5
  %287 = load ptr, ptr @g_pNeedBytesCallback, align 8, !tbaa !10
  %288 = load ptr, ptr @g_pCallback_data, align 8, !tbaa !10
  %289 = tail call zeroext i8 %287(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @gInBuf, i64 4), i8 noundef zeroext -4, ptr noundef nonnull @gInBufLeft, ptr noundef %288) #5
  %290 = icmp eq i8 %289, 0
  br i1 %290, label %292, label %291

291:                                              ; preds = %286
  store i8 %289, ptr @gCallbackStatus, align 1, !tbaa !5
  br label %292

292:                                              ; preds = %291, %286
  %293 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %294 = icmp eq i8 %293, 0
  br i1 %294, label %303, label %295

295:                                              ; preds = %292, %280
  %296 = phi i8 [ %293, %292 ], [ %284, %280 ]
  %297 = add i8 %296, -1
  store i8 %297, ptr @gInBufLeft, align 1, !tbaa !5
  %298 = load i8, ptr @gInBufOfs, align 1, !tbaa !5
  %299 = add i8 %298, 1
  store i8 %299, ptr @gInBufOfs, align 1, !tbaa !5
  %300 = zext i8 %298 to i64
  %301 = getelementptr inbounds nuw [256 x i8], ptr @gInBuf, i64 0, i64 %300
  %302 = load i8, ptr %301, align 1, !tbaa !5
  br label %308

303:                                              ; preds = %292
  %304 = load i8, ptr @gTemFlag, align 1, !tbaa !5
  %305 = xor i8 %304, -1
  store i8 %305, ptr @gTemFlag, align 1, !tbaa !5
  %306 = icmp eq i8 %304, -1
  %307 = select i1 %306, i8 -39, i8 -1
  br label %308

308:                                              ; preds = %303, %295
  %309 = phi i8 [ %307, %303 ], [ %302, %295 ]
  %310 = load i16, ptr @gBitBuf, align 2, !tbaa !8
  %311 = zext i8 %309 to i16
  %312 = or i16 %310, %311
  %313 = load i8, ptr @gBitsLeft, align 1, !tbaa !5
  %314 = zext i8 %313 to i32
  %315 = sub nsw i32 8, %314
  %316 = zext i16 %312 to i32
  %317 = shl nuw nsw i32 %316, %315
  br label %321

318:                                              ; preds = %274
  %319 = add i8 %275, -8
  %320 = shl nuw nsw i32 %279, 8
  br label %321

321:                                              ; preds = %318, %308
  %322 = phi i32 [ %317, %308 ], [ %320, %318 ]
  %323 = phi i8 [ %313, %308 ], [ %319, %318 ]
  %324 = trunc i32 %322 to i16
  store i16 %324, ptr @gBitBuf, align 2, !tbaa !8
  store i8 %323, ptr @gBitsLeft, align 1, !tbaa !5
  %325 = lshr i16 %276, 8
  %326 = trunc nuw i16 %325 to i8
  %327 = zext i8 %277 to i64
  %328 = getelementptr inbounds nuw i8, ptr %206, i64 %327
  store i8 %326, ptr %328, align 1, !tbaa !5
  %329 = add i8 %277, 1
  %330 = zext i8 %329 to i16
  %331 = icmp ugt i16 %265, %330
  br i1 %331, label %274, label %332, !llvm.loop !49

332:                                              ; preds = %321, %272
  %333 = phi i8 [ %260, %272 ], [ %323, %321 ]
  %334 = phi i16 [ %261, %272 ], [ %324, %321 ]
  %335 = add nuw nsw i16 %265, 17
  %336 = icmp ult i16 %140, %335
  br i1 %336, label %595, label %337

337:                                              ; preds = %332
  %338 = getelementptr inbounds nuw i8, ptr %203, i64 32
  %339 = getelementptr inbounds nuw i8, ptr %203, i64 64
  %340 = load i8, ptr %2, align 16, !tbaa !5
  %341 = zext i8 %340 to i16
  %342 = add nsw i16 %341, -1
  %343 = shl nuw nsw i16 %341, 1
  store i16 0, ptr %203, align 2, !tbaa !8
  store i16 %342, ptr %338, align 2, !tbaa !8
  store i8 0, ptr %339, align 2, !tbaa !5
  %344 = load i8, ptr %3, align 1, !tbaa !5
  %345 = icmp eq i8 %344, 0
  %346 = getelementptr inbounds nuw i8, ptr %203, i64 2
  br i1 %345, label %352, label %347

347:                                              ; preds = %337
  %348 = zext i8 %344 to i16
  %349 = add nuw nsw i16 %343, %348
  %350 = add nsw i16 %349, -1
  %351 = add i8 %344, %340
  br label %352

352:                                              ; preds = %347, %337
  %353 = phi i16 [ %343, %347 ], [ 0, %337 ]
  %354 = phi i16 [ %350, %347 ], [ -1, %337 ]
  %355 = phi i8 [ %340, %347 ], [ 0, %337 ]
  %356 = phi i8 [ %351, %347 ], [ %340, %337 ]
  %357 = phi i16 [ %349, %347 ], [ %343, %337 ]
  store i16 %353, ptr %346, align 2, !tbaa !8
  %358 = getelementptr inbounds nuw i8, ptr %203, i64 34
  store i16 %354, ptr %358, align 2, !tbaa !8
  %359 = getelementptr inbounds nuw i8, ptr %203, i64 65
  store i8 %355, ptr %359, align 1, !tbaa !5
  %360 = shl nuw nsw i16 %357, 1
  %361 = load i8, ptr %4, align 2, !tbaa !5
  %362 = icmp eq i8 %361, 0
  %363 = getelementptr inbounds nuw i8, ptr %203, i64 4
  br i1 %362, label %369, label %364

364:                                              ; preds = %352
  %365 = zext i8 %361 to i16
  %366 = add nuw nsw i16 %360, %365
  %367 = add nsw i16 %366, -1
  %368 = add i8 %361, %356
  br label %369

369:                                              ; preds = %364, %352
  %370 = phi i16 [ %360, %364 ], [ 0, %352 ]
  %371 = phi i16 [ %367, %364 ], [ -1, %352 ]
  %372 = phi i8 [ %356, %364 ], [ 0, %352 ]
  %373 = phi i8 [ %368, %364 ], [ %356, %352 ]
  %374 = phi i16 [ %366, %364 ], [ %360, %352 ]
  store i16 %370, ptr %363, align 2, !tbaa !8
  %375 = getelementptr inbounds nuw i8, ptr %203, i64 36
  store i16 %371, ptr %375, align 2, !tbaa !8
  %376 = getelementptr inbounds nuw i8, ptr %203, i64 66
  store i8 %372, ptr %376, align 2, !tbaa !5
  %377 = shl nuw nsw i16 %374, 1
  %378 = load i8, ptr %5, align 1, !tbaa !5
  %379 = icmp eq i8 %378, 0
  %380 = getelementptr inbounds nuw i8, ptr %203, i64 6
  br i1 %379, label %386, label %381

381:                                              ; preds = %369
  %382 = zext i8 %378 to i16
  %383 = add nuw nsw i16 %377, %382
  %384 = add nsw i16 %383, -1
  %385 = add i8 %378, %373
  br label %386

386:                                              ; preds = %381, %369
  %387 = phi i16 [ %377, %381 ], [ 0, %369 ]
  %388 = phi i16 [ %384, %381 ], [ -1, %369 ]
  %389 = phi i8 [ %373, %381 ], [ 0, %369 ]
  %390 = phi i8 [ %385, %381 ], [ %373, %369 ]
  %391 = phi i16 [ %383, %381 ], [ %377, %369 ]
  store i16 %387, ptr %380, align 2, !tbaa !8
  %392 = getelementptr inbounds nuw i8, ptr %203, i64 38
  store i16 %388, ptr %392, align 2, !tbaa !8
  %393 = getelementptr inbounds nuw i8, ptr %203, i64 67
  store i8 %389, ptr %393, align 1, !tbaa !5
  %394 = shl nuw nsw i16 %391, 1
  %395 = load i8, ptr %6, align 4, !tbaa !5
  %396 = icmp eq i8 %395, 0
  %397 = getelementptr inbounds nuw i8, ptr %203, i64 8
  br i1 %396, label %403, label %398

398:                                              ; preds = %386
  %399 = zext i8 %395 to i16
  %400 = add nuw nsw i16 %394, %399
  %401 = add nsw i16 %400, -1
  %402 = add i8 %395, %390
  br label %403

403:                                              ; preds = %398, %386
  %404 = phi i16 [ %394, %398 ], [ 0, %386 ]
  %405 = phi i16 [ %401, %398 ], [ -1, %386 ]
  %406 = phi i8 [ %390, %398 ], [ 0, %386 ]
  %407 = phi i8 [ %402, %398 ], [ %390, %386 ]
  %408 = phi i16 [ %400, %398 ], [ %394, %386 ]
  store i16 %404, ptr %397, align 2, !tbaa !8
  %409 = getelementptr inbounds nuw i8, ptr %203, i64 40
  store i16 %405, ptr %409, align 2, !tbaa !8
  %410 = getelementptr inbounds nuw i8, ptr %203, i64 68
  store i8 %406, ptr %410, align 2, !tbaa !5
  %411 = shl nuw nsw i16 %408, 1
  %412 = load i8, ptr %7, align 1, !tbaa !5
  %413 = icmp eq i8 %412, 0
  %414 = getelementptr inbounds nuw i8, ptr %203, i64 10
  br i1 %413, label %420, label %415

415:                                              ; preds = %403
  %416 = zext i8 %412 to i16
  %417 = add nuw nsw i16 %411, %416
  %418 = add nsw i16 %417, -1
  %419 = add i8 %412, %407
  br label %420

420:                                              ; preds = %415, %403
  %421 = phi i16 [ %411, %415 ], [ 0, %403 ]
  %422 = phi i16 [ %418, %415 ], [ -1, %403 ]
  %423 = phi i8 [ %407, %415 ], [ 0, %403 ]
  %424 = phi i8 [ %419, %415 ], [ %407, %403 ]
  %425 = phi i16 [ %417, %415 ], [ %411, %403 ]
  store i16 %421, ptr %414, align 2, !tbaa !8
  %426 = getelementptr inbounds nuw i8, ptr %203, i64 42
  store i16 %422, ptr %426, align 2, !tbaa !8
  %427 = getelementptr inbounds nuw i8, ptr %203, i64 69
  store i8 %423, ptr %427, align 1, !tbaa !5
  %428 = shl nuw nsw i16 %425, 1
  %429 = load i8, ptr %8, align 2, !tbaa !5
  %430 = icmp eq i8 %429, 0
  %431 = getelementptr inbounds nuw i8, ptr %203, i64 12
  br i1 %430, label %437, label %432

432:                                              ; preds = %420
  %433 = zext i8 %429 to i16
  %434 = add nuw nsw i16 %428, %433
  %435 = add nsw i16 %434, -1
  %436 = add i8 %429, %424
  br label %437

437:                                              ; preds = %432, %420
  %438 = phi i16 [ %428, %432 ], [ 0, %420 ]
  %439 = phi i16 [ %435, %432 ], [ -1, %420 ]
  %440 = phi i8 [ %424, %432 ], [ 0, %420 ]
  %441 = phi i8 [ %436, %432 ], [ %424, %420 ]
  %442 = phi i16 [ %434, %432 ], [ %428, %420 ]
  store i16 %438, ptr %431, align 2, !tbaa !8
  %443 = getelementptr inbounds nuw i8, ptr %203, i64 44
  store i16 %439, ptr %443, align 2, !tbaa !8
  %444 = getelementptr inbounds nuw i8, ptr %203, i64 70
  store i8 %440, ptr %444, align 2, !tbaa !5
  %445 = shl nuw i16 %442, 1
  %446 = load i8, ptr %9, align 1, !tbaa !5
  %447 = icmp eq i8 %446, 0
  %448 = getelementptr inbounds nuw i8, ptr %203, i64 14
  br i1 %447, label %454, label %449

449:                                              ; preds = %437
  %450 = zext i8 %446 to i16
  %451 = add nuw i16 %445, %450
  %452 = add i16 %451, -1
  %453 = add i8 %446, %441
  br label %454

454:                                              ; preds = %449, %437
  %455 = phi i16 [ %445, %449 ], [ 0, %437 ]
  %456 = phi i16 [ %452, %449 ], [ -1, %437 ]
  %457 = phi i8 [ %441, %449 ], [ 0, %437 ]
  %458 = phi i8 [ %453, %449 ], [ %441, %437 ]
  %459 = phi i16 [ %451, %449 ], [ %445, %437 ]
  store i16 %455, ptr %448, align 2, !tbaa !8
  %460 = getelementptr inbounds nuw i8, ptr %203, i64 46
  store i16 %456, ptr %460, align 2, !tbaa !8
  %461 = getelementptr inbounds nuw i8, ptr %203, i64 71
  store i8 %457, ptr %461, align 1, !tbaa !5
  %462 = shl i16 %459, 1
  %463 = load i8, ptr %10, align 8, !tbaa !5
  %464 = icmp eq i8 %463, 0
  %465 = getelementptr inbounds nuw i8, ptr %203, i64 16
  br i1 %464, label %471, label %466

466:                                              ; preds = %454
  %467 = zext i8 %463 to i16
  %468 = add i16 %462, %467
  %469 = add i16 %468, -1
  %470 = add i8 %463, %458
  br label %471

471:                                              ; preds = %466, %454
  %472 = phi i16 [ %462, %466 ], [ 0, %454 ]
  %473 = phi i16 [ %469, %466 ], [ -1, %454 ]
  %474 = phi i8 [ %458, %466 ], [ 0, %454 ]
  %475 = phi i8 [ %470, %466 ], [ %458, %454 ]
  %476 = phi i16 [ %468, %466 ], [ %462, %454 ]
  store i16 %472, ptr %465, align 2, !tbaa !8
  %477 = getelementptr inbounds nuw i8, ptr %203, i64 48
  store i16 %473, ptr %477, align 2, !tbaa !8
  %478 = getelementptr inbounds nuw i8, ptr %203, i64 72
  store i8 %474, ptr %478, align 2, !tbaa !5
  %479 = shl i16 %476, 1
  %480 = load i8, ptr %11, align 1, !tbaa !5
  %481 = icmp eq i8 %480, 0
  %482 = getelementptr inbounds nuw i8, ptr %203, i64 18
  br i1 %481, label %488, label %483

483:                                              ; preds = %471
  %484 = zext i8 %480 to i16
  %485 = add i16 %479, %484
  %486 = add i16 %485, -1
  %487 = add i8 %480, %475
  br label %488

488:                                              ; preds = %483, %471
  %489 = phi i16 [ %479, %483 ], [ 0, %471 ]
  %490 = phi i16 [ %486, %483 ], [ -1, %471 ]
  %491 = phi i8 [ %475, %483 ], [ 0, %471 ]
  %492 = phi i8 [ %487, %483 ], [ %475, %471 ]
  %493 = phi i16 [ %485, %483 ], [ %479, %471 ]
  store i16 %489, ptr %482, align 2, !tbaa !8
  %494 = getelementptr inbounds nuw i8, ptr %203, i64 50
  store i16 %490, ptr %494, align 2, !tbaa !8
  %495 = getelementptr inbounds nuw i8, ptr %203, i64 73
  store i8 %491, ptr %495, align 1, !tbaa !5
  %496 = shl i16 %493, 1
  %497 = load i8, ptr %12, align 2, !tbaa !5
  %498 = icmp eq i8 %497, 0
  %499 = getelementptr inbounds nuw i8, ptr %203, i64 20
  br i1 %498, label %505, label %500

500:                                              ; preds = %488
  %501 = zext i8 %497 to i16
  %502 = add i16 %496, %501
  %503 = add i16 %502, -1
  %504 = add i8 %497, %492
  br label %505

505:                                              ; preds = %500, %488
  %506 = phi i16 [ %496, %500 ], [ 0, %488 ]
  %507 = phi i16 [ %503, %500 ], [ -1, %488 ]
  %508 = phi i8 [ %492, %500 ], [ 0, %488 ]
  %509 = phi i8 [ %504, %500 ], [ %492, %488 ]
  %510 = phi i16 [ %502, %500 ], [ %496, %488 ]
  store i16 %506, ptr %499, align 2, !tbaa !8
  %511 = getelementptr inbounds nuw i8, ptr %203, i64 52
  store i16 %507, ptr %511, align 2, !tbaa !8
  %512 = getelementptr inbounds nuw i8, ptr %203, i64 74
  store i8 %508, ptr %512, align 2, !tbaa !5
  %513 = shl i16 %510, 1
  %514 = load i8, ptr %13, align 1, !tbaa !5
  %515 = icmp eq i8 %514, 0
  %516 = getelementptr inbounds nuw i8, ptr %203, i64 22
  br i1 %515, label %522, label %517

517:                                              ; preds = %505
  %518 = zext i8 %514 to i16
  %519 = add i16 %513, %518
  %520 = add i16 %519, -1
  %521 = add i8 %514, %509
  br label %522

522:                                              ; preds = %517, %505
  %523 = phi i16 [ %513, %517 ], [ 0, %505 ]
  %524 = phi i16 [ %520, %517 ], [ -1, %505 ]
  %525 = phi i8 [ %509, %517 ], [ 0, %505 ]
  %526 = phi i8 [ %521, %517 ], [ %509, %505 ]
  %527 = phi i16 [ %519, %517 ], [ %513, %505 ]
  store i16 %523, ptr %516, align 2, !tbaa !8
  %528 = getelementptr inbounds nuw i8, ptr %203, i64 54
  store i16 %524, ptr %528, align 2, !tbaa !8
  %529 = getelementptr inbounds nuw i8, ptr %203, i64 75
  store i8 %525, ptr %529, align 1, !tbaa !5
  %530 = shl i16 %527, 1
  %531 = load i8, ptr %14, align 4, !tbaa !5
  %532 = icmp eq i8 %531, 0
  %533 = getelementptr inbounds nuw i8, ptr %203, i64 24
  br i1 %532, label %539, label %534

534:                                              ; preds = %522
  %535 = zext i8 %531 to i16
  %536 = add i16 %530, %535
  %537 = add i16 %536, -1
  %538 = add i8 %531, %526
  br label %539

539:                                              ; preds = %534, %522
  %540 = phi i16 [ %530, %534 ], [ 0, %522 ]
  %541 = phi i16 [ %537, %534 ], [ -1, %522 ]
  %542 = phi i8 [ %526, %534 ], [ 0, %522 ]
  %543 = phi i8 [ %538, %534 ], [ %526, %522 ]
  %544 = phi i16 [ %536, %534 ], [ %530, %522 ]
  store i16 %540, ptr %533, align 2, !tbaa !8
  %545 = getelementptr inbounds nuw i8, ptr %203, i64 56
  store i16 %541, ptr %545, align 2, !tbaa !8
  %546 = getelementptr inbounds nuw i8, ptr %203, i64 76
  store i8 %542, ptr %546, align 2, !tbaa !5
  %547 = shl i16 %544, 1
  %548 = load i8, ptr %15, align 1, !tbaa !5
  %549 = icmp eq i8 %548, 0
  %550 = getelementptr inbounds nuw i8, ptr %203, i64 26
  br i1 %549, label %556, label %551

551:                                              ; preds = %539
  %552 = zext i8 %548 to i16
  %553 = add i16 %547, %552
  %554 = add i16 %553, -1
  %555 = add i8 %548, %543
  br label %556

556:                                              ; preds = %551, %539
  %557 = phi i16 [ %547, %551 ], [ 0, %539 ]
  %558 = phi i16 [ %554, %551 ], [ -1, %539 ]
  %559 = phi i8 [ %543, %551 ], [ 0, %539 ]
  %560 = phi i8 [ %555, %551 ], [ %543, %539 ]
  %561 = phi i16 [ %553, %551 ], [ %547, %539 ]
  store i16 %557, ptr %550, align 2, !tbaa !8
  %562 = getelementptr inbounds nuw i8, ptr %203, i64 58
  store i16 %558, ptr %562, align 2, !tbaa !8
  %563 = getelementptr inbounds nuw i8, ptr %203, i64 77
  store i8 %559, ptr %563, align 1, !tbaa !5
  %564 = shl i16 %561, 1
  %565 = load i8, ptr %16, align 2, !tbaa !5
  %566 = icmp eq i8 %565, 0
  %567 = getelementptr inbounds nuw i8, ptr %203, i64 28
  br i1 %566, label %573, label %568

568:                                              ; preds = %556
  %569 = zext i8 %565 to i16
  %570 = add i16 %564, %569
  %571 = add i16 %570, -1
  %572 = add i8 %565, %560
  br label %573

573:                                              ; preds = %568, %556
  %574 = phi i16 [ %564, %568 ], [ 0, %556 ]
  %575 = phi i16 [ %571, %568 ], [ -1, %556 ]
  %576 = phi i8 [ %560, %568 ], [ 0, %556 ]
  %577 = phi i8 [ %572, %568 ], [ %560, %556 ]
  %578 = phi i16 [ %570, %568 ], [ %564, %556 ]
  store i16 %574, ptr %567, align 2, !tbaa !8
  %579 = getelementptr inbounds nuw i8, ptr %203, i64 60
  store i16 %575, ptr %579, align 2, !tbaa !8
  %580 = getelementptr inbounds nuw i8, ptr %203, i64 78
  store i8 %576, ptr %580, align 2, !tbaa !5
  %581 = load i8, ptr %17, align 1, !tbaa !5
  %582 = icmp eq i8 %581, 0
  %583 = getelementptr inbounds nuw i8, ptr %203, i64 30
  %584 = shl i16 %578, 1
  %585 = zext i8 %581 to i16
  %586 = add i16 %584, %585
  %587 = add i16 %586, -1
  %588 = select i1 %582, i16 0, i16 %584
  %589 = select i1 %582, i16 -1, i16 %587
  %590 = select i1 %582, i8 0, i8 %577
  store i16 %588, ptr %583, align 2, !tbaa !8
  %591 = getelementptr inbounds nuw i8, ptr %203, i64 62
  store i16 %589, ptr %591, align 2, !tbaa !8
  %592 = getelementptr inbounds nuw i8, ptr %203, i64 79
  store i8 %590, ptr %592, align 1, !tbaa !5
  %593 = sub nuw i16 %140, %335
  %594 = icmp eq i16 %593, 0
  br i1 %594, label %595, label %137, !llvm.loop !50

595:                                              ; preds = %573, %184, %268, %332, %128, %131
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #5
  br label %852

596:                                              ; preds = %121
  %597 = tail call fastcc zeroext i16 @getBits1(i8 noundef zeroext 16)
  %598 = icmp ult i16 %597, 2
  br i1 %598, label %852, label %599

599:                                              ; preds = %596
  %600 = add i16 %597, -2
  %601 = icmp eq i16 %600, 0
  br i1 %601, label %852, label %602

602:                                              ; preds = %599
  %603 = load i16, ptr @gBitBuf, align 2, !tbaa !8
  %604 = load i8, ptr @gBitsLeft, align 1, !tbaa !5
  br label %605

605:                                              ; preds = %778, %602
  %606 = phi i8 [ %604, %602 ], [ %772, %778 ]
  %607 = phi i16 [ %603, %602 ], [ %773, %778 ]
  %608 = phi i16 [ %600, %602 ], [ %838, %778 ]
  %609 = icmp ult i8 %606, 8
  %610 = zext i16 %607 to i32
  br i1 %609, label %611, label %649

611:                                              ; preds = %605
  %612 = zext nneg i8 %606 to i32
  %613 = shl nuw nsw i32 %610, %612
  %614 = trunc i32 %613 to i16
  store i16 %614, ptr @gBitBuf, align 2, !tbaa !8
  %615 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %616 = icmp eq i8 %615, 0
  br i1 %616, label %617, label %626

617:                                              ; preds = %611
  store i8 4, ptr @gInBufOfs, align 1, !tbaa !5
  %618 = load ptr, ptr @g_pNeedBytesCallback, align 8, !tbaa !10
  %619 = load ptr, ptr @g_pCallback_data, align 8, !tbaa !10
  %620 = tail call zeroext i8 %618(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @gInBuf, i64 4), i8 noundef zeroext -4, ptr noundef nonnull @gInBufLeft, ptr noundef %619) #5
  %621 = icmp eq i8 %620, 0
  br i1 %621, label %623, label %622

622:                                              ; preds = %617
  store i8 %620, ptr @gCallbackStatus, align 1, !tbaa !5
  br label %623

623:                                              ; preds = %622, %617
  %624 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %625 = icmp eq i8 %624, 0
  br i1 %625, label %634, label %626

626:                                              ; preds = %623, %611
  %627 = phi i8 [ %624, %623 ], [ %615, %611 ]
  %628 = add i8 %627, -1
  store i8 %628, ptr @gInBufLeft, align 1, !tbaa !5
  %629 = load i8, ptr @gInBufOfs, align 1, !tbaa !5
  %630 = add i8 %629, 1
  store i8 %630, ptr @gInBufOfs, align 1, !tbaa !5
  %631 = zext i8 %629 to i64
  %632 = getelementptr inbounds nuw [256 x i8], ptr @gInBuf, i64 0, i64 %631
  %633 = load i8, ptr %632, align 1, !tbaa !5
  br label %639

634:                                              ; preds = %623
  %635 = load i8, ptr @gTemFlag, align 1, !tbaa !5
  %636 = xor i8 %635, -1
  store i8 %636, ptr @gTemFlag, align 1, !tbaa !5
  %637 = icmp eq i8 %635, -1
  %638 = select i1 %637, i8 -39, i8 -1
  br label %639

639:                                              ; preds = %634, %626
  %640 = phi i8 [ %638, %634 ], [ %633, %626 ]
  %641 = load i16, ptr @gBitBuf, align 2, !tbaa !8
  %642 = zext i8 %640 to i16
  %643 = or i16 %641, %642
  %644 = load i8, ptr @gBitsLeft, align 1, !tbaa !5
  %645 = zext i8 %644 to i32
  %646 = sub nsw i32 8, %645
  %647 = zext i16 %643 to i32
  %648 = shl nuw nsw i32 %647, %646
  br label %652

649:                                              ; preds = %605
  %650 = add i8 %606, -8
  %651 = shl nuw nsw i32 %610, 8
  br label %652

652:                                              ; preds = %649, %639
  %653 = phi i32 [ %648, %639 ], [ %651, %649 ]
  %654 = phi i8 [ %644, %639 ], [ %650, %649 ]
  %655 = trunc i32 %653 to i16
  store i16 %655, ptr @gBitBuf, align 2, !tbaa !8
  store i8 %654, ptr @gBitsLeft, align 1, !tbaa !5
  %656 = lshr i16 %607, 8
  %657 = trunc nuw i16 %656 to i8
  %658 = and i8 %657, 15
  %659 = icmp samesign ugt i8 %658, 1
  br i1 %659, label %852, label %660

660:                                              ; preds = %652
  %661 = icmp eq i8 %658, 0
  %662 = select i1 %661, i8 1, i8 2
  %663 = load i8, ptr @gValidQuantTables, align 1, !tbaa !5
  %664 = or i8 %663, %662
  store i8 %664, ptr @gValidQuantTables, align 1, !tbaa !5
  %665 = icmp ult i16 %607, 4096
  %666 = select i1 %661, ptr @gQuant0, ptr @gQuant1
  br label %667

667:                                              ; preds = %771, %660
  %668 = phi i8 [ %654, %660 ], [ %772, %771 ]
  %669 = phi i16 [ %655, %660 ], [ %773, %771 ]
  %670 = phi i64 [ 0, %660 ], [ %776, %771 ]
  %671 = icmp ult i8 %668, 8
  %672 = zext i16 %669 to i32
  br i1 %671, label %673, label %711

673:                                              ; preds = %667
  %674 = zext nneg i8 %668 to i32
  %675 = shl nuw nsw i32 %672, %674
  %676 = trunc i32 %675 to i16
  store i16 %676, ptr @gBitBuf, align 2, !tbaa !8
  %677 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %678 = icmp eq i8 %677, 0
  br i1 %678, label %679, label %688

679:                                              ; preds = %673
  store i8 4, ptr @gInBufOfs, align 1, !tbaa !5
  %680 = load ptr, ptr @g_pNeedBytesCallback, align 8, !tbaa !10
  %681 = load ptr, ptr @g_pCallback_data, align 8, !tbaa !10
  %682 = tail call zeroext i8 %680(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @gInBuf, i64 4), i8 noundef zeroext -4, ptr noundef nonnull @gInBufLeft, ptr noundef %681) #5
  %683 = icmp eq i8 %682, 0
  br i1 %683, label %685, label %684

684:                                              ; preds = %679
  store i8 %682, ptr @gCallbackStatus, align 1, !tbaa !5
  br label %685

685:                                              ; preds = %684, %679
  %686 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %687 = icmp eq i8 %686, 0
  br i1 %687, label %696, label %688

688:                                              ; preds = %685, %673
  %689 = phi i8 [ %686, %685 ], [ %677, %673 ]
  %690 = add i8 %689, -1
  store i8 %690, ptr @gInBufLeft, align 1, !tbaa !5
  %691 = load i8, ptr @gInBufOfs, align 1, !tbaa !5
  %692 = add i8 %691, 1
  store i8 %692, ptr @gInBufOfs, align 1, !tbaa !5
  %693 = zext i8 %691 to i64
  %694 = getelementptr inbounds nuw [256 x i8], ptr @gInBuf, i64 0, i64 %693
  %695 = load i8, ptr %694, align 1, !tbaa !5
  br label %701

696:                                              ; preds = %685
  %697 = load i8, ptr @gTemFlag, align 1, !tbaa !5
  %698 = xor i8 %697, -1
  store i8 %698, ptr @gTemFlag, align 1, !tbaa !5
  %699 = icmp eq i8 %697, -1
  %700 = select i1 %699, i8 -39, i8 -1
  br label %701

701:                                              ; preds = %696, %688
  %702 = phi i8 [ %700, %696 ], [ %695, %688 ]
  %703 = load i16, ptr @gBitBuf, align 2, !tbaa !8
  %704 = zext i8 %702 to i16
  %705 = or i16 %703, %704
  %706 = load i8, ptr @gBitsLeft, align 1, !tbaa !5
  %707 = zext i8 %706 to i32
  %708 = sub nsw i32 8, %707
  %709 = zext i16 %705 to i32
  %710 = shl nuw nsw i32 %709, %708
  br label %714

711:                                              ; preds = %667
  %712 = add i8 %668, -8
  %713 = shl nuw nsw i32 %672, 8
  br label %714

714:                                              ; preds = %711, %701
  %715 = phi i32 [ %710, %701 ], [ %713, %711 ]
  %716 = phi i8 [ %706, %701 ], [ %712, %711 ]
  %717 = trunc i32 %715 to i16
  store i16 %717, ptr @gBitBuf, align 2, !tbaa !8
  store i8 %716, ptr @gBitsLeft, align 1, !tbaa !5
  %718 = lshr i16 %669, 8
  br i1 %665, label %771, label %719

719:                                              ; preds = %714
  %720 = and i16 %669, -256
  %721 = icmp ult i8 %716, 8
  %722 = and i32 %715, 65535
  br i1 %721, label %723, label %761

723:                                              ; preds = %719
  %724 = zext nneg i8 %716 to i32
  %725 = shl i32 %715, %724
  %726 = trunc i32 %725 to i16
  store i16 %726, ptr @gBitBuf, align 2, !tbaa !8
  %727 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %728 = icmp eq i8 %727, 0
  br i1 %728, label %729, label %738

729:                                              ; preds = %723
  store i8 4, ptr @gInBufOfs, align 1, !tbaa !5
  %730 = load ptr, ptr @g_pNeedBytesCallback, align 8, !tbaa !10
  %731 = load ptr, ptr @g_pCallback_data, align 8, !tbaa !10
  %732 = tail call zeroext i8 %730(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @gInBuf, i64 4), i8 noundef zeroext -4, ptr noundef nonnull @gInBufLeft, ptr noundef %731) #5
  %733 = icmp eq i8 %732, 0
  br i1 %733, label %735, label %734

734:                                              ; preds = %729
  store i8 %732, ptr @gCallbackStatus, align 1, !tbaa !5
  br label %735

735:                                              ; preds = %734, %729
  %736 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %737 = icmp eq i8 %736, 0
  br i1 %737, label %746, label %738

738:                                              ; preds = %735, %723
  %739 = phi i8 [ %736, %735 ], [ %727, %723 ]
  %740 = add i8 %739, -1
  store i8 %740, ptr @gInBufLeft, align 1, !tbaa !5
  %741 = load i8, ptr @gInBufOfs, align 1, !tbaa !5
  %742 = add i8 %741, 1
  store i8 %742, ptr @gInBufOfs, align 1, !tbaa !5
  %743 = zext i8 %741 to i64
  %744 = getelementptr inbounds nuw [256 x i8], ptr @gInBuf, i64 0, i64 %743
  %745 = load i8, ptr %744, align 1, !tbaa !5
  br label %751

746:                                              ; preds = %735
  %747 = load i8, ptr @gTemFlag, align 1, !tbaa !5
  %748 = xor i8 %747, -1
  store i8 %748, ptr @gTemFlag, align 1, !tbaa !5
  %749 = icmp eq i8 %747, -1
  %750 = select i1 %749, i8 -39, i8 -1
  br label %751

751:                                              ; preds = %746, %738
  %752 = phi i8 [ %750, %746 ], [ %745, %738 ]
  %753 = load i16, ptr @gBitBuf, align 2, !tbaa !8
  %754 = zext i8 %752 to i16
  %755 = or i16 %753, %754
  %756 = load i8, ptr @gBitsLeft, align 1, !tbaa !5
  %757 = zext i8 %756 to i32
  %758 = sub nsw i32 8, %757
  %759 = zext i16 %755 to i32
  %760 = shl nuw nsw i32 %759, %758
  br label %764

761:                                              ; preds = %719
  %762 = add i8 %716, -8
  %763 = shl nuw nsw i32 %722, 8
  br label %764

764:                                              ; preds = %761, %751
  %765 = phi i32 [ %760, %751 ], [ %763, %761 ]
  %766 = phi i8 [ %756, %751 ], [ %762, %761 ]
  %767 = trunc i32 %765 to i16
  store i16 %767, ptr @gBitBuf, align 2, !tbaa !8
  store i8 %766, ptr @gBitsLeft, align 1, !tbaa !5
  %768 = lshr i32 %722, 8
  %769 = trunc nuw nsw i32 %768 to i16
  %770 = or disjoint i16 %720, %769
  br label %771

771:                                              ; preds = %764, %714
  %772 = phi i8 [ %766, %764 ], [ %716, %714 ]
  %773 = phi i16 [ %767, %764 ], [ %717, %714 ]
  %774 = phi i16 [ %770, %764 ], [ %718, %714 ]
  %775 = getelementptr inbounds nuw [64 x i16], ptr %666, i64 0, i64 %670
  store i16 %774, ptr %775, align 2, !tbaa !8
  %776 = add nuw nsw i64 %670, 1
  %777 = icmp eq i64 %776, 64
  br i1 %777, label %778, label %667, !llvm.loop !51

778:                                              ; preds = %771
  %779 = load <8 x i16>, ptr %666, align 16, !tbaa !8
  %780 = sext <8 x i16> %779 to <8 x i32>
  %781 = mul nsw <8 x i32> %780, <i32 128, i32 178, i32 178, i32 167, i32 246, i32 167, i32 151, i32 232>
  %782 = add nsw <8 x i32> %781, splat (i32 4)
  %783 = lshr <8 x i32> %782, splat (i32 3)
  %784 = trunc <8 x i32> %783 to <8 x i16>
  store <8 x i16> %784, ptr %666, align 16, !tbaa !8
  %785 = select i1 %661, ptr getelementptr inbounds nuw (i8, ptr @gQuant0, i64 16), ptr getelementptr inbounds nuw (i8, ptr @gQuant1, i64 16)
  %786 = load <8 x i16>, ptr %785, align 16, !tbaa !8
  %787 = sext <8 x i16> %786 to <8 x i32>
  %788 = mul nsw <8 x i32> %787, <i32 232, i32 151, i32 128, i32 209, i32 219, i32 209, i32 128, i32 101>
  %789 = add nsw <8 x i32> %788, splat (i32 4)
  %790 = lshr <8 x i32> %789, splat (i32 3)
  %791 = trunc <8 x i32> %790 to <8 x i16>
  store <8 x i16> %791, ptr %785, align 16, !tbaa !8
  %792 = select i1 %661, ptr getelementptr inbounds nuw (i8, ptr @gQuant0, i64 32), ptr getelementptr inbounds nuw (i8, ptr @gQuant1, i64 32)
  %793 = load <8 x i16>, ptr %792, align 16, !tbaa !8
  %794 = sext <8 x i16> %793 to <8 x i32>
  %795 = mul nsw <8 x i32> %794, <i32 178, i32 197, i32 197, i32 178, i32 101, i32 69, i32 139, i32 167>
  %796 = add nsw <8 x i32> %795, splat (i32 4)
  %797 = lshr <8 x i32> %796, splat (i32 3)
  %798 = trunc <8 x i32> %797 to <8 x i16>
  store <8 x i16> %798, ptr %792, align 16, !tbaa !8
  %799 = select i1 %661, ptr getelementptr inbounds nuw (i8, ptr @gQuant0, i64 48), ptr getelementptr inbounds nuw (i8, ptr @gQuant1, i64 48)
  %800 = load <8 x i16>, ptr %799, align 16, !tbaa !8
  %801 = sext <8 x i16> %800 to <8 x i32>
  %802 = mul nsw <8 x i32> %801, <i32 177, i32 167, i32 139, i32 69, i32 35, i32 96, i32 131, i32 151>
  %803 = add nsw <8 x i32> %802, splat (i32 4)
  %804 = lshr <8 x i32> %803, splat (i32 3)
  %805 = trunc <8 x i32> %804 to <8 x i16>
  store <8 x i16> %805, ptr %799, align 16, !tbaa !8
  %806 = select i1 %661, ptr getelementptr inbounds nuw (i8, ptr @gQuant0, i64 64), ptr getelementptr inbounds nuw (i8, ptr @gQuant1, i64 64)
  %807 = load <8 x i16>, ptr %806, align 16, !tbaa !8
  %808 = sext <8 x i16> %807 to <8 x i32>
  %809 = mul nsw <8 x i32> %808, <i32 151, i32 131, i32 96, i32 35, i32 49, i32 91, i32 118, i32 128>
  %810 = add nsw <8 x i32> %809, splat (i32 4)
  %811 = lshr <8 x i32> %810, splat (i32 3)
  %812 = trunc <8 x i32> %811 to <8 x i16>
  store <8 x i16> %812, ptr %806, align 16, !tbaa !8
  %813 = select i1 %661, ptr getelementptr inbounds nuw (i8, ptr @gQuant0, i64 80), ptr getelementptr inbounds nuw (i8, ptr @gQuant1, i64 80)
  %814 = load <8 x i16>, ptr %813, align 16, !tbaa !8
  %815 = sext <8 x i16> %814 to <8 x i32>
  %816 = mul nsw <8 x i32> %815, <i32 118, i32 91, i32 49, i32 46, i32 81, i32 101, i32 101, i32 81>
  %817 = add nsw <8 x i32> %816, splat (i32 4)
  %818 = lshr <8 x i32> %817, splat (i32 3)
  %819 = trunc <8 x i32> %818 to <8 x i16>
  store <8 x i16> %819, ptr %813, align 16, !tbaa !8
  %820 = select i1 %661, ptr getelementptr inbounds nuw (i8, ptr @gQuant0, i64 96), ptr getelementptr inbounds nuw (i8, ptr @gQuant1, i64 96)
  %821 = load <8 x i16>, ptr %820, align 16, !tbaa !8
  %822 = sext <8 x i16> %821 to <8 x i32>
  %823 = mul nsw <8 x i32> %822, <i32 46, i32 42, i32 69, i32 79, i32 69, i32 42, i32 35, i32 54>
  %824 = add nsw <8 x i32> %823, splat (i32 4)
  %825 = lshr <8 x i32> %824, splat (i32 3)
  %826 = trunc <8 x i32> %825 to <8 x i16>
  store <8 x i16> %826, ptr %820, align 16, !tbaa !8
  %827 = select i1 %661, ptr getelementptr inbounds nuw (i8, ptr @gQuant0, i64 112), ptr getelementptr inbounds nuw (i8, ptr @gQuant1, i64 112)
  %828 = load <8 x i16>, ptr %827, align 16, !tbaa !8
  %829 = sext <8 x i16> %828 to <8 x i32>
  %830 = mul nsw <8 x i32> %829, <i32 54, i32 35, i32 28, i32 37, i32 28, i32 19, i32 19, i32 10>
  %831 = add nsw <8 x i32> %830, splat (i32 4)
  %832 = lshr <8 x i32> %831, splat (i32 3)
  %833 = trunc <8 x i32> %832 to <8 x i16>
  store <8 x i16> %833, ptr %827, align 16, !tbaa !8
  %834 = select i1 %665, i32 65, i32 129
  %835 = zext i16 %608 to i32
  %836 = icmp samesign ugt i32 %834, %835
  %837 = trunc nuw nsw i32 %834 to i16
  %838 = sub i16 %608, %837
  %839 = icmp eq i16 %838, 0
  %840 = select i1 %836, i1 true, i1 %839
  br i1 %840, label %852, label %605, !llvm.loop !52

841:                                              ; preds = %121
  %842 = tail call fastcc zeroext i16 @getBits1(i8 noundef zeroext 16)
  %843 = icmp eq i16 %842, 4
  br i1 %843, label %844, label %852

844:                                              ; preds = %841
  %845 = tail call fastcc zeroext i16 @getBits1(i8 noundef zeroext 16)
  store i16 %845, ptr @gRestartInterval, align 2, !tbaa !8
  br label %852

846:                                              ; preds = %121
  %847 = tail call fastcc zeroext i16 @getBits1(i8 noundef zeroext 16)
  %848 = icmp ult i16 %847, 2
  br i1 %848, label %852, label %849

849:                                              ; preds = %846
  %850 = add i16 %847, -2
  %851 = icmp eq i16 %850, 0
  br i1 %851, label %852, label %853

852:                                              ; preds = %652, %778, %903, %849, %846, %844, %841, %599, %596, %595
  br label %18

853:                                              ; preds = %849
  %854 = load i16, ptr @gBitBuf, align 2, !tbaa !8
  %855 = load i8, ptr @gBitsLeft, align 1, !tbaa !5
  br label %856

856:                                              ; preds = %903, %853
  %857 = phi i8 [ %905, %903 ], [ %855, %853 ]
  %858 = phi i16 [ %906, %903 ], [ %854, %853 ]
  %859 = phi i16 [ %907, %903 ], [ %850, %853 ]
  %860 = icmp ult i8 %857, 8
  %861 = zext i16 %858 to i32
  br i1 %860, label %862, label %900

862:                                              ; preds = %856
  %863 = zext nneg i8 %857 to i32
  %864 = shl nuw nsw i32 %861, %863
  %865 = trunc i32 %864 to i16
  store i16 %865, ptr @gBitBuf, align 2, !tbaa !8
  %866 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %867 = icmp eq i8 %866, 0
  br i1 %867, label %868, label %877

868:                                              ; preds = %862
  store i8 4, ptr @gInBufOfs, align 1, !tbaa !5
  %869 = load ptr, ptr @g_pNeedBytesCallback, align 8, !tbaa !10
  %870 = load ptr, ptr @g_pCallback_data, align 8, !tbaa !10
  %871 = tail call zeroext i8 %869(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @gInBuf, i64 4), i8 noundef zeroext -4, ptr noundef nonnull @gInBufLeft, ptr noundef %870) #5
  %872 = icmp eq i8 %871, 0
  br i1 %872, label %874, label %873

873:                                              ; preds = %868
  store i8 %871, ptr @gCallbackStatus, align 1, !tbaa !5
  br label %874

874:                                              ; preds = %873, %868
  %875 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  %876 = icmp eq i8 %875, 0
  br i1 %876, label %885, label %877

877:                                              ; preds = %874, %862
  %878 = phi i8 [ %875, %874 ], [ %866, %862 ]
  %879 = add i8 %878, -1
  store i8 %879, ptr @gInBufLeft, align 1, !tbaa !5
  %880 = load i8, ptr @gInBufOfs, align 1, !tbaa !5
  %881 = add i8 %880, 1
  store i8 %881, ptr @gInBufOfs, align 1, !tbaa !5
  %882 = zext i8 %880 to i64
  %883 = getelementptr inbounds nuw [256 x i8], ptr @gInBuf, i64 0, i64 %882
  %884 = load i8, ptr %883, align 1, !tbaa !5
  br label %890

885:                                              ; preds = %874
  %886 = load i8, ptr @gTemFlag, align 1, !tbaa !5
  %887 = xor i8 %886, -1
  store i8 %887, ptr @gTemFlag, align 1, !tbaa !5
  %888 = icmp eq i8 %886, -1
  %889 = select i1 %888, i8 -39, i8 -1
  br label %890

890:                                              ; preds = %885, %877
  %891 = phi i8 [ %889, %885 ], [ %884, %877 ]
  %892 = load i16, ptr @gBitBuf, align 2, !tbaa !8
  %893 = zext i8 %891 to i16
  %894 = or i16 %892, %893
  %895 = load i8, ptr @gBitsLeft, align 1, !tbaa !5
  %896 = zext i8 %895 to i32
  %897 = sub nsw i32 8, %896
  %898 = zext i16 %894 to i32
  %899 = shl nuw nsw i32 %898, %897
  br label %903

900:                                              ; preds = %856
  %901 = add i8 %857, -8
  %902 = shl nuw nsw i32 %861, 8
  br label %903

903:                                              ; preds = %900, %890
  %904 = phi i32 [ %899, %890 ], [ %902, %900 ]
  %905 = phi i8 [ %895, %890 ], [ %901, %900 ]
  %906 = trunc i32 %904 to i16
  store i16 %906, ptr @gBitBuf, align 2, !tbaa !8
  store i8 %905, ptr @gBitsLeft, align 1, !tbaa !5
  %907 = add i16 %859, -1
  %908 = icmp eq i16 %907, 0
  br i1 %908, label %852, label %856, !llvm.loop !53

909:                                              ; preds = %121
  br label %910

910:                                              ; preds = %121, %121, %121, %121, %121, %121, %121, %121, %121, %121, %909, %127
  %911 = phi i8 [ 0, %127 ], [ 17, %909 ], [ 18, %121 ], [ 18, %121 ], [ 18, %121 ], [ 18, %121 ], [ 18, %121 ], [ 18, %121 ], [ 18, %121 ], [ 18, %121 ], [ 18, %121 ], [ 18, %121 ]
  ret i8 %911
}

; Function Attrs: nounwind uwtable
define internal fastcc void @fixInBuffer() unnamed_addr #0 {
  %1 = load i8, ptr @gBitsLeft, align 1, !tbaa !5
  %2 = icmp eq i8 %1, 0
  %3 = load i16, ptr @gBitBuf, align 2, !tbaa !8
  %4 = load i8, ptr @gInBufOfs, align 1, !tbaa !5
  %5 = load i8, ptr @gInBufLeft, align 1, !tbaa !5
  br i1 %2, label %12, label %6

6:                                                ; preds = %0
  %7 = trunc i16 %3 to i8
  %8 = add i8 %4, -1
  %9 = zext i8 %8 to i64
  %10 = getelementptr inbounds nuw [256 x i8], ptr @gInBuf, i64 0, i64 %9
  store i8 %7, ptr %10, align 1, !tbaa !5
  %11 = add i8 %5, 1
  br label %12

12:                                               ; preds = %6, %0
  %13 = phi i8 [ %11, %6 ], [ %5, %0 ]
  %14 = phi i8 [ %8, %6 ], [ %4, %0 ]
  %15 = lshr i16 %3, 8
  %16 = trunc nuw i16 %15 to i8
  %17 = add i8 %14, -1
  store i8 %17, ptr @gInBufOfs, align 1, !tbaa !5
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds nuw [256 x i8], ptr @gInBuf, i64 0, i64 %18
  store i8 %16, ptr %19, align 1, !tbaa !5
  %20 = add i8 %13, 1
  store i8 %20, ptr @gInBufLeft, align 1, !tbaa !5
  %21 = shl i16 %3, 8
  store i8 0, ptr @gBitsLeft, align 1, !tbaa !5
  store i16 %21, ptr @gBitBuf, align 2, !tbaa !8
  %22 = tail call fastcc zeroext i8 @getOctet(i8 noundef zeroext 1)
  %23 = load i16, ptr @gBitBuf, align 2, !tbaa !8
  %24 = zext i8 %22 to i16
  %25 = or i16 %23, %24
  %26 = load i8, ptr @gBitsLeft, align 1, !tbaa !5
  %27 = zext i8 %26 to i32
  %28 = sub nsw i32 8, %27
  %29 = zext i16 %25 to i32
  %30 = shl nuw nsw i32 %29, %28
  %31 = trunc i32 %30 to i16
  store i16 %31, ptr @gBitBuf, align 2, !tbaa !8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.fshl.i16(i16, i16, i16) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

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
!9 = !{!"short", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
!16 = !{!17, !17, i64 0}
!17 = !{!"int", !6, i64 0}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.unroll.disable"}
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
!32 = !{!33, !17, i64 0}
!33 = !{!"", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !17, i64 16, !17, i64 20, !17, i64 24, !17, i64 28, !34, i64 32, !34, i64 40, !34, i64 48}
!34 = !{!"p1 omnipotent char", !11, i64 0}
!35 = !{!33, !17, i64 4}
!36 = !{!33, !17, i64 8}
!37 = !{!33, !17, i64 20}
!38 = !{!33, !17, i64 12}
!39 = !{!33, !17, i64 16}
!40 = !{!33, !17, i64 24}
!41 = !{!33, !17, i64 28}
!42 = !{!33, !34, i64 32}
!43 = !{!33, !34, i64 40}
!44 = !{!33, !34, i64 48}
!45 = distinct !{!45, !13}
!46 = distinct !{!46, !13}
!47 = distinct !{!47, !13}
!48 = distinct !{!48, !13}
!49 = distinct !{!49, !13}
!50 = distinct !{!50, !13}
!51 = distinct !{!51, !13}
!52 = distinct !{!52, !13}
!53 = distinct !{!53, !13}
