; ModuleID = '../../src/qrduino/qrframe.c'
source_filename = "../../src/qrduino/qrframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WDB = dso_local global i8 0, align 1
@WD = dso_local global i8 0, align 1
@framebase = dso_local global ptr null, align 8
@framask = dso_local global ptr null, align 8
@rlens = dso_local global ptr null, align 8
@VERSION = dso_local global i8 0, align 1
@qrframe = dso_local global ptr null, align 8
@ECCLEVEL = dso_local global i8 0, align 1
@eccblocks = internal constant [640 x i8] c"\01\00\13\07\01\00\10\0A\01\00\0D\0D\01\00\09\11\01\00\22\0A\01\00\1C\10\01\00\16\16\01\00\10\1C\01\007\0F\01\00,\1A\02\00\11\12\02\00\0D\16\01\00P\14\02\00 \12\02\00\18\1A\04\00\09\10\01\00l\1A\02\00+\18\02\02\0F\12\02\02\0B\16\02\00D\12\04\00\1B\10\04\00\13\18\04\00\0F\1C\02\00N\14\04\00\1F\12\02\04\0E\12\04\01\0D\1A\02\00a\18\02\02&\16\04\02\12\16\04\02\0E\1A\02\00t\1E\03\02$\16\04\04\10\14\04\04\0C\18\02\02D\12\04\01+\1A\06\02\13\18\06\02\0F\1C\04\00Q\14\01\042\1E\04\04\16\1C\03\08\0C\18\02\02\\\18\06\02$\16\04\06\14\1A\07\04\0E\1C\04\00k\1A\08\01%\16\08\04\14\18\0C\04\0B\16\03\01s\1E\04\05(\18\0B\05\10\14\0B\05\0C\18\05\01W\16\05\05)\18\05\07\18\1E\0B\07\0C\18\05\01b\18\07\03-\1C\0F\02\13\18\03\0D\0F\1E\01\05k\1C\0A\01.\1C\01\0F\16\1C\02\11\0E\1C\05\01x\1E\09\04+\1A\11\01\16\1C\02\13\0E\1C\03\04q\1C\03\0B,\1A\11\04\15\1A\09\10\0D\1A\03\05k\1C\03\0D)\1A\0F\05\18\1E\0F\0A\0F\1C\04\04t\1C\11\00*\1A\11\06\16\1C\13\06\10\1E\02\07o\1C\11\00.\1C\07\10\18\1E\22\00\0D\18\04\05y\1E\04\0E/\1C\0B\0E\18\1E\10\0E\0F\1E\06\04u\1E\06\0E-\1C\0B\10\18\1E\1E\02\10\1E\08\04j\1A\08\0D/\1C\07\16\18\1E\16\0D\0F\1E\0A\02r\1C\13\04.\1C\1C\06\16\1C!\04\10\1E\08\04z\1E\16\03-\1C\08\1A\17\1E\0C\1C\0F\1E\03\0Au\1E\03\17-\1C\04\1F\18\1E\0B\1F\0F\1E\07\07t\1E\15\07-\1C\01%\17\1E\13\1A\0F\1E\05\0As\1E\13\0A/\1C\0F\19\18\1E\17\19\0F\1E\0D\03s\1E\02\1D.\1C*\01\18\1E\17\1C\0F\1E\11\00s\1E\0A\17.\1C\0A#\18\1E\13#\0F\1E\11\01s\1E\0E\15.\1C\1D\13\18\1E\0B.\0F\1E\0D\06s\1E\0E\17.\1C,\07\18\1E;\01\10\1E\0C\07y\1E\0C\1A/\1C'\0E\18\1E\16)\0F\1E\06\0Ey\1E\06\22/\1C.\0A\18\1E\02@\0F\1E\11\04z\1E\1D\0E.\1C1\0A\18\1E\18.\0F\1E\04\12z\1E\0D .\1C0\0E\18\1E* \0F\1E\14\04u\1E(\07/\1C+\16\18\1E\0AC\0F\1E\13\06v\1E\12\1F/\1C\22\22\18\1E\14=\0F\1E", align 16
@neccblk1 = dso_local global i8 0, align 1
@neccblk2 = dso_local global i8 0, align 1
@datablkw = dso_local global i8 0, align 1
@eccblkwid = dso_local global i8 0, align 1
@strinbuf = dso_local global ptr null, align 8
@adelta = internal constant [41 x i8] c"\00\0B\0F\13\17\1B\1F\10\12\14\16\18\1A\1C\14\16\18\18\1A\1C\1C\16\18\18\1A\1A\1C\1C\18\18\1A\1A\1A\1C\1C\18\1A\1A\1A\1C\1C", align 16
@vpat = internal constant [34 x i32] [i32 3220, i32 1468, i32 2713, i32 1235, i32 3062, i32 1890, i32 2119, i32 1549, i32 2344, i32 2936, i32 1117, i32 2583, i32 1330, i32 2470, i32 1667, i32 2249, i32 2028, i32 3780, i32 481, i32 4011, i32 142, i32 3098, i32 831, i32 3445, i32 592, i32 2517, i32 1776, i32 2234, i32 1951, i32 2827, i32 1070, i32 2660, i32 1345, i32 3177], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @initframe() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i8, ptr @WDB, align 1
  %4 = zext i8 %3 to i32
  %5 = load i8, ptr @WD, align 1
  %6 = zext i8 %5 to i32
  %7 = mul nsw i32 %4, %6
  %8 = sext i32 %7 to i64
  %9 = call ptr @calloc_beebs(i64 noundef %8, i64 noundef 1)
  store ptr %9, ptr @framebase, align 8
  %10 = load i8, ptr @WD, align 1
  %11 = zext i8 %10 to i32
  %12 = load i8, ptr @WD, align 1
  %13 = zext i8 %12 to i32
  %14 = add nsw i32 %13, 1
  %15 = mul nsw i32 %11, %14
  %16 = sdiv i32 %15, 2
  %17 = add nsw i32 %16, 7
  %18 = sdiv i32 %17, 8
  %19 = sext i32 %18 to i64
  %20 = call ptr @calloc_beebs(i64 noundef %19, i64 noundef 1)
  store ptr %20, ptr @framask, align 8
  %21 = load i8, ptr @WD, align 1
  %22 = zext i8 %21 to i32
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = call ptr @malloc_beebs(i64 noundef %24)
  store ptr %25, ptr @rlens, align 8
  call void @putfind()
  call void @doaligns()
  %26 = load ptr, ptr @framebase, align 8
  %27 = load i8, ptr @WD, align 1
  %28 = zext i8 %27 to i32
  %29 = sub nsw i32 %28, 8
  %30 = load i8, ptr @WDB, align 1
  %31 = zext i8 %30 to i32
  %32 = mul nsw i32 %29, %31
  %33 = add nsw i32 1, %32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, ptr %26, i64 %34
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = or i32 %37, 128
  %39 = trunc i32 %38 to i8
  store i8 %39, ptr %35, align 1
  store i32 0, ptr %2, align 4
  br label %40

40:                                               ; preds = %58, %0
  %41 = load i32, ptr %2, align 4
  %42 = icmp ult i32 %41, 7
  br i1 %42, label %43, label %61

43:                                               ; preds = %40
  %44 = load i32, ptr %2, align 4
  %45 = trunc i32 %44 to i8
  call void @setmask(i8 noundef zeroext 7, i8 noundef zeroext %45)
  %46 = load i8, ptr @WD, align 1
  %47 = zext i8 %46 to i32
  %48 = sub nsw i32 %47, 8
  %49 = trunc i32 %48 to i8
  %50 = load i32, ptr %2, align 4
  %51 = trunc i32 %50 to i8
  call void @setmask(i8 noundef zeroext %49, i8 noundef zeroext %51)
  %52 = load i32, ptr %2, align 4
  %53 = load i8, ptr @WD, align 1
  %54 = zext i8 %53 to i32
  %55 = add i32 %52, %54
  %56 = sub i32 %55, 7
  %57 = trunc i32 %56 to i8
  call void @setmask(i8 noundef zeroext 7, i8 noundef zeroext %57)
  br label %58

58:                                               ; preds = %43
  %59 = load i32, ptr %2, align 4
  %60 = add i32 %59, 1
  store i32 %60, ptr %2, align 4
  br label %40, !llvm.loop !6

61:                                               ; preds = %40
  store i32 0, ptr %1, align 4
  br label %62

62:                                               ; preds = %80, %61
  %63 = load i32, ptr %1, align 4
  %64 = icmp ult i32 %63, 8
  br i1 %64, label %65, label %83

65:                                               ; preds = %62
  %66 = load i32, ptr %1, align 4
  %67 = trunc i32 %66 to i8
  call void @setmask(i8 noundef zeroext %67, i8 noundef zeroext 7)
  %68 = load i32, ptr %1, align 4
  %69 = load i8, ptr @WD, align 1
  %70 = zext i8 %69 to i32
  %71 = add i32 %68, %70
  %72 = sub i32 %71, 8
  %73 = trunc i32 %72 to i8
  call void @setmask(i8 noundef zeroext %73, i8 noundef zeroext 7)
  %74 = load i32, ptr %1, align 4
  %75 = trunc i32 %74 to i8
  %76 = load i8, ptr @WD, align 1
  %77 = zext i8 %76 to i32
  %78 = sub nsw i32 %77, 8
  %79 = trunc i32 %78 to i8
  call void @setmask(i8 noundef zeroext %75, i8 noundef zeroext %79)
  br label %80

80:                                               ; preds = %65
  %81 = load i32, ptr %1, align 4
  %82 = add i32 %81, 1
  store i32 %82, ptr %1, align 4
  br label %62, !llvm.loop !8

83:                                               ; preds = %62
  store i32 0, ptr %1, align 4
  br label %84

84:                                               ; preds = %90, %83
  %85 = load i32, ptr %1, align 4
  %86 = icmp ult i32 %85, 9
  br i1 %86, label %87, label %93

87:                                               ; preds = %84
  %88 = load i32, ptr %1, align 4
  %89 = trunc i32 %88 to i8
  call void @setmask(i8 noundef zeroext %89, i8 noundef zeroext 8)
  br label %90

90:                                               ; preds = %87
  %91 = load i32, ptr %1, align 4
  %92 = add i32 %91, 1
  store i32 %92, ptr %1, align 4
  br label %84, !llvm.loop !9

93:                                               ; preds = %84
  store i32 0, ptr %1, align 4
  br label %94

94:                                               ; preds = %106, %93
  %95 = load i32, ptr %1, align 4
  %96 = icmp ult i32 %95, 8
  br i1 %96, label %97, label %109

97:                                               ; preds = %94
  %98 = load i32, ptr %1, align 4
  %99 = load i8, ptr @WD, align 1
  %100 = zext i8 %99 to i32
  %101 = add i32 %98, %100
  %102 = sub i32 %101, 8
  %103 = trunc i32 %102 to i8
  call void @setmask(i8 noundef zeroext %103, i8 noundef zeroext 8)
  %104 = load i32, ptr %1, align 4
  %105 = trunc i32 %104 to i8
  call void @setmask(i8 noundef zeroext 8, i8 noundef zeroext %105)
  br label %106

106:                                              ; preds = %97
  %107 = load i32, ptr %1, align 4
  %108 = add i32 %107, 1
  store i32 %108, ptr %1, align 4
  br label %94, !llvm.loop !10

109:                                              ; preds = %94
  store i32 0, ptr %2, align 4
  br label %110

110:                                              ; preds = %120, %109
  %111 = load i32, ptr %2, align 4
  %112 = icmp ult i32 %111, 7
  br i1 %112, label %113, label %123

113:                                              ; preds = %110
  %114 = load i32, ptr %2, align 4
  %115 = load i8, ptr @WD, align 1
  %116 = zext i8 %115 to i32
  %117 = add i32 %114, %116
  %118 = sub i32 %117, 7
  %119 = trunc i32 %118 to i8
  call void @setmask(i8 noundef zeroext 8, i8 noundef zeroext %119)
  br label %120

120:                                              ; preds = %113
  %121 = load i32, ptr %2, align 4
  %122 = add i32 %121, 1
  store i32 %122, ptr %2, align 4
  br label %110, !llvm.loop !11

123:                                              ; preds = %110
  store i32 0, ptr %1, align 4
  br label %124

124:                                              ; preds = %174, %123
  %125 = load i32, ptr %1, align 4
  %126 = load i8, ptr @WD, align 1
  %127 = zext i8 %126 to i32
  %128 = sub i32 %127, 14
  %129 = icmp ult i32 %125, %128
  br i1 %129, label %130, label %177

130:                                              ; preds = %124
  %131 = load i32, ptr %1, align 4
  %132 = and i32 %131, 1
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %130
  %135 = load i32, ptr %1, align 4
  %136 = add i32 8, %135
  %137 = trunc i32 %136 to i8
  call void @setmask(i8 noundef zeroext %137, i8 noundef zeroext 6)
  %138 = load i32, ptr %1, align 4
  %139 = add i32 8, %138
  %140 = trunc i32 %139 to i8
  call void @setmask(i8 noundef zeroext 6, i8 noundef zeroext %140)
  br label %173

141:                                              ; preds = %130
  %142 = load i32, ptr %1, align 4
  %143 = add i32 8, %142
  %144 = and i32 %143, 7
  %145 = ashr i32 128, %144
  %146 = load ptr, ptr @framebase, align 8
  %147 = load i32, ptr %1, align 4
  %148 = add i32 8, %147
  %149 = lshr i32 %148, 3
  %150 = load i8, ptr @WDB, align 1
  %151 = zext i8 %150 to i32
  %152 = mul nsw i32 6, %151
  %153 = add i32 %149, %152
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds nuw i8, ptr %146, i64 %154
  %156 = load i8, ptr %155, align 1
  %157 = zext i8 %156 to i32
  %158 = or i32 %157, %145
  %159 = trunc i32 %158 to i8
  store i8 %159, ptr %155, align 1
  %160 = load ptr, ptr @framebase, align 8
  %161 = load i32, ptr %1, align 4
  %162 = add i32 8, %161
  %163 = load i8, ptr @WDB, align 1
  %164 = zext i8 %163 to i32
  %165 = mul i32 %162, %164
  %166 = add i32 0, %165
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds nuw i8, ptr %160, i64 %167
  %169 = load i8, ptr %168, align 1
  %170 = zext i8 %169 to i32
  %171 = or i32 %170, 2
  %172 = trunc i32 %171 to i8
  store i8 %172, ptr %168, align 1
  br label %173

173:                                              ; preds = %141, %134
  br label %174

174:                                              ; preds = %173
  %175 = load i32, ptr %1, align 4
  %176 = add i32 %175, 1
  store i32 %176, ptr %1, align 4
  br label %124, !llvm.loop !12

177:                                              ; preds = %124
  call void @putvpat()
  store i32 0, ptr %2, align 4
  br label %178

178:                                              ; preds = %217, %177
  %179 = load i32, ptr %2, align 4
  %180 = load i8, ptr @WD, align 1
  %181 = zext i8 %180 to i32
  %182 = icmp ult i32 %179, %181
  br i1 %182, label %183, label %220

183:                                              ; preds = %178
  store i32 0, ptr %1, align 4
  br label %184

184:                                              ; preds = %213, %183
  %185 = load i32, ptr %1, align 4
  %186 = load i32, ptr %2, align 4
  %187 = icmp ule i32 %185, %186
  br i1 %187, label %188, label %216

188:                                              ; preds = %184
  %189 = load ptr, ptr @framebase, align 8
  %190 = load i32, ptr %1, align 4
  %191 = lshr i32 %190, 3
  %192 = load i32, ptr %2, align 4
  %193 = load i8, ptr @WDB, align 1
  %194 = zext i8 %193 to i32
  %195 = mul i32 %192, %194
  %196 = add i32 %191, %195
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds nuw i8, ptr %189, i64 %197
  %199 = load i8, ptr %198, align 1
  %200 = zext i8 %199 to i32
  %201 = load i32, ptr %1, align 4
  %202 = and i32 %201, 7
  %203 = sub i32 7, %202
  %204 = ashr i32 %200, %203
  %205 = and i32 %204, 1
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %212

207:                                              ; preds = %188
  %208 = load i32, ptr %1, align 4
  %209 = trunc i32 %208 to i8
  %210 = load i32, ptr %2, align 4
  %211 = trunc i32 %210 to i8
  call void @setmask(i8 noundef zeroext %209, i8 noundef zeroext %211)
  br label %212

212:                                              ; preds = %207, %188
  br label %213

213:                                              ; preds = %212
  %214 = load i32, ptr %1, align 4
  %215 = add i32 %214, 1
  store i32 %215, ptr %1, align 4
  br label %184, !llvm.loop !13

216:                                              ; preds = %184
  br label %217

217:                                              ; preds = %216
  %218 = load i32, ptr %2, align 4
  %219 = add i32 %218, 1
  store i32 %219, ptr %2, align 4
  br label %178, !llvm.loop !14

220:                                              ; preds = %178
  ret void
}

declare ptr @calloc_beebs(i64 noundef, i64 noundef) #1

declare ptr @malloc_beebs(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @doaligns() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = load i8, ptr @VERSION, align 1
  %5 = zext i8 %4 to i32
  %6 = icmp slt i32 %5, 2
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %66

8:                                                ; preds = %0
  %9 = load i8, ptr @VERSION, align 1
  %10 = zext i8 %9 to i64
  %11 = getelementptr inbounds nuw [41 x i8], ptr @adelta, i64 0, i64 %10
  %12 = load i8, ptr %11, align 1
  store i8 %12, ptr %1, align 1
  %13 = load i8, ptr @WD, align 1
  %14 = zext i8 %13 to i32
  %15 = sub nsw i32 %14, 7
  %16 = trunc i32 %15 to i8
  store i8 %16, ptr %3, align 1
  br label %17

17:                                               ; preds = %55, %8
  %18 = load i8, ptr @WD, align 1
  %19 = zext i8 %18 to i32
  %20 = sub nsw i32 %19, 7
  %21 = trunc i32 %20 to i8
  store i8 %21, ptr %2, align 1
  br label %22

22:                                               ; preds = %40, %17
  %23 = load i8, ptr %2, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, ptr %1, align 1
  %26 = zext i8 %25 to i32
  %27 = sub i32 %26, 3
  %28 = icmp ugt i32 %24, %27
  br i1 %28, label %29, label %47

29:                                               ; preds = %22
  %30 = load i8, ptr %2, align 1
  %31 = zext i8 %30 to i32
  %32 = load i8, ptr %3, align 1
  %33 = zext i8 %32 to i32
  call void @putalign(i32 noundef %31, i32 noundef %33)
  %34 = load i8, ptr %2, align 1
  %35 = zext i8 %34 to i32
  %36 = load i8, ptr %1, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %47

40:                                               ; preds = %29
  %41 = load i8, ptr %1, align 1
  %42 = zext i8 %41 to i32
  %43 = load i8, ptr %2, align 1
  %44 = zext i8 %43 to i32
  %45 = sub nsw i32 %44, %42
  %46 = trunc i32 %45 to i8
  store i8 %46, ptr %2, align 1
  br label %22, !llvm.loop !15

47:                                               ; preds = %39, %22
  %48 = load i8, ptr %3, align 1
  %49 = zext i8 %48 to i32
  %50 = load i8, ptr %1, align 1
  %51 = zext i8 %50 to i32
  %52 = add i32 %51, 9
  %53 = icmp ule i32 %49, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %66

55:                                               ; preds = %47
  %56 = load i8, ptr %1, align 1
  %57 = zext i8 %56 to i32
  %58 = load i8, ptr %3, align 1
  %59 = zext i8 %58 to i32
  %60 = sub nsw i32 %59, %57
  %61 = trunc i32 %60 to i8
  store i8 %61, ptr %3, align 1
  %62 = load i8, ptr %3, align 1
  %63 = zext i8 %62 to i32
  call void @putalign(i32 noundef 6, i32 noundef %63)
  %64 = load i8, ptr %3, align 1
  %65 = zext i8 %64 to i32
  call void @putalign(i32 noundef %65, i32 noundef 6)
  br label %17

66:                                               ; preds = %7, %54
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @setmask(i8 noundef zeroext %0, i8 noundef zeroext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  store i8 %1, ptr %4, align 1
  %6 = load i8, ptr %3, align 1
  %7 = zext i8 %6 to i32
  %8 = load i8, ptr %4, align 1
  %9 = zext i8 %8 to i32
  %10 = icmp sgt i32 %7, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load i8, ptr %3, align 1
  %13 = zext i8 %12 to i32
  store i32 %13, ptr %5, align 4
  %14 = load i8, ptr %4, align 1
  store i8 %14, ptr %3, align 1
  %15 = load i32, ptr %5, align 4
  %16 = trunc i32 %15 to i8
  store i8 %16, ptr %4, align 1
  br label %17

17:                                               ; preds = %11, %2
  %18 = load i8, ptr %4, align 1
  %19 = zext i8 %18 to i32
  store i32 %19, ptr %5, align 4
  %20 = load i8, ptr %4, align 1
  %21 = zext i8 %20 to i32
  %22 = load i32, ptr %5, align 4
  %23 = mul i32 %22, %21
  store i32 %23, ptr %5, align 4
  %24 = load i8, ptr %4, align 1
  %25 = zext i8 %24 to i32
  %26 = load i32, ptr %5, align 4
  %27 = add i32 %26, %25
  store i32 %27, ptr %5, align 4
  %28 = load i32, ptr %5, align 4
  %29 = lshr i32 %28, 1
  store i32 %29, ptr %5, align 4
  %30 = load i8, ptr %3, align 1
  %31 = zext i8 %30 to i32
  %32 = load i32, ptr %5, align 4
  %33 = add i32 %32, %31
  store i32 %33, ptr %5, align 4
  %34 = load i32, ptr %5, align 4
  %35 = and i32 %34, 7
  %36 = ashr i32 128, %35
  %37 = load ptr, ptr @framask, align 8
  %38 = load i32, ptr %5, align 4
  %39 = lshr i32 %38, 3
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds nuw i8, ptr %37, i64 %40
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = or i32 %43, %36
  %45 = trunc i32 %44 to i8
  store i8 %45, ptr %41, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @putvpat() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = load i8, ptr @VERSION, align 1
  store i8 %6, ptr %1, align 1
  %7 = load i8, ptr %1, align 1
  %8 = zext i8 %7 to i32
  %9 = icmp slt i32 %8, 7
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  br label %141

11:                                               ; preds = %0
  %12 = load i8, ptr %1, align 1
  %13 = zext i8 %12 to i32
  %14 = sub nsw i32 %13, 7
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [34 x i32], ptr @vpat, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4
  store i32 %17, ptr %5, align 4
  store i8 17, ptr %4, align 1
  store i8 0, ptr %2, align 1
  br label %18

18:                                               ; preds = %138, %11
  %19 = load i8, ptr %2, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp slt i32 %20, 6
  br i1 %21, label %22, label %141

22:                                               ; preds = %18
  store i8 0, ptr %3, align 1
  br label %23

23:                                               ; preds = %132, %22
  %24 = load i8, ptr %3, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp slt i32 %25, 3
  br i1 %26, label %27, label %137

27:                                               ; preds = %23
  %28 = load i8, ptr %4, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp sgt i32 %29, 11
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load i8, ptr %1, align 1
  %33 = zext i8 %32 to i32
  %34 = load i8, ptr %4, align 1
  %35 = zext i8 %34 to i32
  %36 = sub nsw i32 %35, 12
  %37 = lshr i32 %33, %36
  br label %43

38:                                               ; preds = %27
  %39 = load i32, ptr %5, align 4
  %40 = load i8, ptr %4, align 1
  %41 = zext i8 %40 to i32
  %42 = lshr i32 %39, %41
  br label %43

43:                                               ; preds = %38, %31
  %44 = phi i32 [ %37, %31 ], [ %42, %38 ]
  %45 = and i32 1, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %106

47:                                               ; preds = %43
  %48 = load i8, ptr %2, align 1
  %49 = zext i8 %48 to i32
  %50 = sub nsw i32 5, %49
  %51 = and i32 %50, 7
  %52 = ashr i32 128, %51
  %53 = load ptr, ptr @framebase, align 8
  %54 = load i8, ptr %2, align 1
  %55 = zext i8 %54 to i32
  %56 = sub nsw i32 5, %55
  %57 = ashr i32 %56, 3
  %58 = load i8, ptr %3, align 1
  %59 = zext i8 %58 to i32
  %60 = sub nsw i32 2, %59
  %61 = load i8, ptr @WD, align 1
  %62 = zext i8 %61 to i32
  %63 = add nsw i32 %60, %62
  %64 = sub nsw i32 %63, 11
  %65 = load i8, ptr @WDB, align 1
  %66 = zext i8 %65 to i32
  %67 = mul nsw i32 %64, %66
  %68 = add nsw i32 %57, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, ptr %53, i64 %69
  %71 = load i8, ptr %70, align 1
  %72 = zext i8 %71 to i32
  %73 = or i32 %72, %52
  %74 = trunc i32 %73 to i8
  store i8 %74, ptr %70, align 1
  %75 = load i8, ptr %3, align 1
  %76 = zext i8 %75 to i32
  %77 = sub nsw i32 2, %76
  %78 = load i8, ptr @WD, align 1
  %79 = zext i8 %78 to i32
  %80 = add nsw i32 %77, %79
  %81 = sub nsw i32 %80, 11
  %82 = and i32 %81, 7
  %83 = ashr i32 128, %82
  %84 = load ptr, ptr @framebase, align 8
  %85 = load i8, ptr %3, align 1
  %86 = zext i8 %85 to i32
  %87 = sub nsw i32 2, %86
  %88 = load i8, ptr @WD, align 1
  %89 = zext i8 %88 to i32
  %90 = add nsw i32 %87, %89
  %91 = sub nsw i32 %90, 11
  %92 = ashr i32 %91, 3
  %93 = load i8, ptr %2, align 1
  %94 = zext i8 %93 to i32
  %95 = sub nsw i32 5, %94
  %96 = load i8, ptr @WDB, align 1
  %97 = zext i8 %96 to i32
  %98 = mul nsw i32 %95, %97
  %99 = add nsw i32 %92, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, ptr %84, i64 %100
  %102 = load i8, ptr %101, align 1
  %103 = zext i8 %102 to i32
  %104 = or i32 %103, %83
  %105 = trunc i32 %104 to i8
  store i8 %105, ptr %101, align 1
  br label %131

106:                                              ; preds = %43
  %107 = load i8, ptr %2, align 1
  %108 = zext i8 %107 to i32
  %109 = sub nsw i32 5, %108
  %110 = trunc i32 %109 to i8
  %111 = load i8, ptr %3, align 1
  %112 = zext i8 %111 to i32
  %113 = sub nsw i32 2, %112
  %114 = load i8, ptr @WD, align 1
  %115 = zext i8 %114 to i32
  %116 = add nsw i32 %113, %115
  %117 = sub nsw i32 %116, 11
  %118 = trunc i32 %117 to i8
  call void @setmask(i8 noundef zeroext %110, i8 noundef zeroext %118)
  %119 = load i8, ptr %3, align 1
  %120 = zext i8 %119 to i32
  %121 = sub nsw i32 2, %120
  %122 = load i8, ptr @WD, align 1
  %123 = zext i8 %122 to i32
  %124 = add nsw i32 %121, %123
  %125 = sub nsw i32 %124, 11
  %126 = trunc i32 %125 to i8
  %127 = load i8, ptr %2, align 1
  %128 = zext i8 %127 to i32
  %129 = sub nsw i32 5, %128
  %130 = trunc i32 %129 to i8
  call void @setmask(i8 noundef zeroext %126, i8 noundef zeroext %130)
  br label %131

131:                                              ; preds = %106, %47
  br label %132

132:                                              ; preds = %131
  %133 = load i8, ptr %3, align 1
  %134 = add i8 %133, 1
  store i8 %134, ptr %3, align 1
  %135 = load i8, ptr %4, align 1
  %136 = add i8 %135, -1
  store i8 %136, ptr %4, align 1
  br label %23, !llvm.loop !16

137:                                              ; preds = %23
  br label %138

138:                                              ; preds = %137
  %139 = load i8, ptr %2, align 1
  %140 = add i8 %139, 1
  store i8 %140, ptr %2, align 1
  br label %18, !llvm.loop !17

141:                                              ; preds = %10, %18
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @freeframe() #0 {
  %1 = load ptr, ptr @framebase, align 8
  call void @free_beebs(ptr noundef %1)
  %2 = load ptr, ptr @framask, align 8
  call void @free_beebs(ptr noundef %2)
  %3 = load ptr, ptr @rlens, align 8
  call void @free_beebs(ptr noundef %3)
  ret void
}

declare void @free_beebs(ptr noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @initecc(i8 noundef zeroext %0, i8 noundef zeroext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  store i8 %1, ptr %4, align 1
  %7 = load i8, ptr %4, align 1
  store i8 %7, ptr @VERSION, align 1
  %8 = load i8, ptr %4, align 1
  %9 = zext i8 %8 to i32
  %10 = mul nsw i32 4, %9
  %11 = add nsw i32 17, %10
  %12 = trunc i32 %11 to i8
  store i8 %12, ptr @WD, align 1
  %13 = load i8, ptr @WD, align 1
  %14 = zext i8 %13 to i32
  %15 = add nsw i32 %14, 7
  %16 = sdiv i32 %15, 8
  %17 = trunc i32 %16 to i8
  store i8 %17, ptr @WDB, align 1
  %18 = load i8, ptr @WD, align 1
  %19 = zext i8 %18 to i32
  %20 = load i8, ptr @WDB, align 1
  %21 = zext i8 %20 to i32
  %22 = mul nsw i32 %19, %21
  store i32 %22, ptr %5, align 4
  %23 = load i32, ptr %5, align 4
  %24 = icmp ult i32 %23, 768
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 768, ptr %5, align 4
  br label %26

26:                                               ; preds = %25, %2
  %27 = load i32, ptr %5, align 4
  %28 = zext i32 %27 to i64
  %29 = call ptr @malloc_beebs(i64 noundef %28)
  store ptr %29, ptr @qrframe, align 8
  %30 = load i8, ptr %3, align 1
  store i8 %30, ptr @ECCLEVEL, align 1
  %31 = load i8, ptr %3, align 1
  %32 = zext i8 %31 to i32
  %33 = sub nsw i32 %32, 1
  %34 = mul nsw i32 %33, 4
  %35 = load i8, ptr %4, align 1
  %36 = zext i8 %35 to i32
  %37 = sub nsw i32 %36, 1
  %38 = mul nsw i32 %37, 16
  %39 = add nsw i32 %34, %38
  store i32 %39, ptr %6, align 4
  %40 = load i32, ptr %6, align 4
  %41 = add i32 %40, 1
  store i32 %41, ptr %6, align 4
  %42 = zext i32 %40 to i64
  %43 = getelementptr inbounds nuw [640 x i8], ptr @eccblocks, i64 0, i64 %42
  %44 = load i8, ptr %43, align 1
  store i8 %44, ptr @neccblk1, align 1
  %45 = load i32, ptr %6, align 4
  %46 = add i32 %45, 1
  store i32 %46, ptr %6, align 4
  %47 = zext i32 %45 to i64
  %48 = getelementptr inbounds nuw [640 x i8], ptr @eccblocks, i64 0, i64 %47
  %49 = load i8, ptr %48, align 1
  store i8 %49, ptr @neccblk2, align 1
  %50 = load i32, ptr %6, align 4
  %51 = add i32 %50, 1
  store i32 %51, ptr %6, align 4
  %52 = zext i32 %50 to i64
  %53 = getelementptr inbounds nuw [640 x i8], ptr @eccblocks, i64 0, i64 %52
  %54 = load i8, ptr %53, align 1
  store i8 %54, ptr @datablkw, align 1
  %55 = load i32, ptr %6, align 4
  %56 = add i32 %55, 1
  store i32 %56, ptr %6, align 4
  %57 = zext i32 %55 to i64
  %58 = getelementptr inbounds nuw [640 x i8], ptr @eccblocks, i64 0, i64 %57
  %59 = load i8, ptr %58, align 1
  store i8 %59, ptr @eccblkwid, align 1
  %60 = load i32, ptr %5, align 4
  %61 = load i8, ptr @datablkw, align 1
  %62 = zext i8 %61 to i32
  %63 = load i8, ptr @datablkw, align 1
  %64 = zext i8 %63 to i32
  %65 = load i8, ptr @eccblkwid, align 1
  %66 = zext i8 %65 to i32
  %67 = add nsw i32 %64, %66
  %68 = load i8, ptr @neccblk1, align 1
  %69 = zext i8 %68 to i32
  %70 = load i8, ptr @neccblk2, align 1
  %71 = zext i8 %70 to i32
  %72 = add nsw i32 %69, %71
  %73 = mul nsw i32 %67, %72
  %74 = add nsw i32 %62, %73
  %75 = load i8, ptr @neccblk2, align 1
  %76 = zext i8 %75 to i32
  %77 = add nsw i32 %74, %76
  %78 = icmp ult i32 %60, %77
  br i1 %78, label %79, label %97

79:                                               ; preds = %26
  %80 = load i8, ptr @datablkw, align 1
  %81 = zext i8 %80 to i32
  %82 = load i8, ptr @datablkw, align 1
  %83 = zext i8 %82 to i32
  %84 = load i8, ptr @eccblkwid, align 1
  %85 = zext i8 %84 to i32
  %86 = add nsw i32 %83, %85
  %87 = load i8, ptr @neccblk1, align 1
  %88 = zext i8 %87 to i32
  %89 = load i8, ptr @neccblk2, align 1
  %90 = zext i8 %89 to i32
  %91 = add nsw i32 %88, %90
  %92 = mul nsw i32 %86, %91
  %93 = add nsw i32 %81, %92
  %94 = load i8, ptr @neccblk2, align 1
  %95 = zext i8 %94 to i32
  %96 = add nsw i32 %93, %95
  store i32 %96, ptr %5, align 4
  br label %97

97:                                               ; preds = %79, %26
  %98 = load i32, ptr %5, align 4
  %99 = zext i32 %98 to i64
  %100 = call ptr @malloc_beebs(i64 noundef %99)
  store ptr %100, ptr @strinbuf, align 8
  %101 = load i8, ptr @datablkw, align 1
  %102 = zext i8 %101 to i32
  %103 = load i8, ptr @neccblk1, align 1
  %104 = zext i8 %103 to i32
  %105 = load i8, ptr @neccblk2, align 1
  %106 = zext i8 %105 to i32
  %107 = add nsw i32 %104, %106
  %108 = mul nsw i32 %102, %107
  %109 = load i8, ptr @neccblk2, align 1
  %110 = zext i8 %109 to i32
  %111 = add nsw i32 %108, %110
  %112 = sub nsw i32 %111, 3
  ret i32 %112
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @initeccsize(i8 noundef zeroext %0, i32 noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store i8 %0, ptr %3, align 1
  store i32 %1, ptr %4, align 4
  store i8 1, ptr %6, align 1
  br label %7

7:                                                ; preds = %52, %2
  %8 = load i8, ptr %6, align 1
  %9 = zext i8 %8 to i32
  %10 = icmp slt i32 %9, 40
  br i1 %10, label %11, label %55

11:                                               ; preds = %7
  %12 = load i8, ptr %3, align 1
  %13 = zext i8 %12 to i32
  %14 = sub nsw i32 %13, 1
  %15 = mul nsw i32 %14, 4
  %16 = load i8, ptr %6, align 1
  %17 = zext i8 %16 to i32
  %18 = sub nsw i32 %17, 1
  %19 = mul nsw i32 %18, 16
  %20 = add nsw i32 %15, %19
  store i32 %20, ptr %5, align 4
  %21 = load i32, ptr %5, align 4
  %22 = add i32 %21, 1
  store i32 %22, ptr %5, align 4
  %23 = zext i32 %21 to i64
  %24 = getelementptr inbounds nuw [640 x i8], ptr @eccblocks, i64 0, i64 %23
  %25 = load i8, ptr %24, align 1
  store i8 %25, ptr @neccblk1, align 1
  %26 = load i32, ptr %5, align 4
  %27 = add i32 %26, 1
  store i32 %27, ptr %5, align 4
  %28 = zext i32 %26 to i64
  %29 = getelementptr inbounds nuw [640 x i8], ptr @eccblocks, i64 0, i64 %28
  %30 = load i8, ptr %29, align 1
  store i8 %30, ptr @neccblk2, align 1
  %31 = load i32, ptr %5, align 4
  %32 = add i32 %31, 1
  store i32 %32, ptr %5, align 4
  %33 = zext i32 %31 to i64
  %34 = getelementptr inbounds nuw [640 x i8], ptr @eccblocks, i64 0, i64 %33
  %35 = load i8, ptr %34, align 1
  store i8 %35, ptr @datablkw, align 1
  %36 = load i32, ptr %4, align 4
  %37 = load i8, ptr @datablkw, align 1
  %38 = zext i8 %37 to i32
  %39 = load i8, ptr @neccblk1, align 1
  %40 = zext i8 %39 to i32
  %41 = load i8, ptr @neccblk2, align 1
  %42 = zext i8 %41 to i32
  %43 = add nsw i32 %40, %42
  %44 = mul nsw i32 %38, %43
  %45 = load i8, ptr @neccblk2, align 1
  %46 = zext i8 %45 to i32
  %47 = add nsw i32 %44, %46
  %48 = sub nsw i32 %47, 3
  %49 = icmp ult i32 %36, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %11
  br label %55

51:                                               ; preds = %11
  br label %52

52:                                               ; preds = %51
  %53 = load i8, ptr %6, align 1
  %54 = add i8 %53, 1
  store i8 %54, ptr %6, align 1
  br label %7, !llvm.loop !18

55:                                               ; preds = %50, %7
  %56 = load i8, ptr %3, align 1
  %57 = load i8, ptr %6, align 1
  %58 = call i32 @initecc(i8 noundef zeroext %56, i8 noundef zeroext %57)
  ret i32 %58
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @freeecc() #0 {
  %1 = load ptr, ptr @qrframe, align 8
  call void @free_beebs(ptr noundef %1)
  %2 = load ptr, ptr @strinbuf, align 8
  call void @free_beebs(ptr noundef %2)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @putfind() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store i8 0, ptr %4, align 1
  br label %5

5:                                                ; preds = %331, %0
  %6 = load i8, ptr %4, align 1
  %7 = zext i8 %6 to i32
  %8 = icmp slt i32 %7, 3
  br i1 %8, label %9, label %334

9:                                                ; preds = %5
  store i8 0, ptr %3, align 1
  store i8 0, ptr %2, align 1
  %10 = load i8, ptr %4, align 1
  %11 = zext i8 %10 to i32
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = load i8, ptr @WD, align 1
  %15 = zext i8 %14 to i32
  %16 = sub nsw i32 %15, 7
  %17 = trunc i32 %16 to i8
  store i8 %17, ptr %3, align 1
  br label %18

18:                                               ; preds = %13, %9
  %19 = load i8, ptr %4, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load i8, ptr @WD, align 1
  %24 = zext i8 %23 to i32
  %25 = sub nsw i32 %24, 7
  %26 = trunc i32 %25 to i8
  store i8 %26, ptr %2, align 1
  br label %27

27:                                               ; preds = %22, %18
  %28 = load i8, ptr %2, align 1
  %29 = zext i8 %28 to i32
  %30 = add nsw i32 %29, 3
  %31 = and i32 %30, 7
  %32 = ashr i32 128, %31
  %33 = load ptr, ptr @framebase, align 8
  %34 = load i8, ptr %2, align 1
  %35 = zext i8 %34 to i32
  %36 = add nsw i32 %35, 3
  %37 = ashr i32 %36, 3
  %38 = load i8, ptr %3, align 1
  %39 = zext i8 %38 to i32
  %40 = add nsw i32 %39, 3
  %41 = load i8, ptr @WDB, align 1
  %42 = zext i8 %41 to i32
  %43 = mul nsw i32 %40, %42
  %44 = add nsw i32 %37, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, ptr %33, i64 %45
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  %49 = or i32 %48, %32
  %50 = trunc i32 %49 to i8
  store i8 %50, ptr %46, align 1
  store i8 0, ptr %1, align 1
  br label %51

51:                                               ; preds = %160, %27
  %52 = load i8, ptr %1, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp slt i32 %53, 6
  br i1 %54, label %55, label %163

55:                                               ; preds = %51
  %56 = load i8, ptr %2, align 1
  %57 = zext i8 %56 to i32
  %58 = load i8, ptr %1, align 1
  %59 = zext i8 %58 to i32
  %60 = add nsw i32 %57, %59
  %61 = and i32 %60, 7
  %62 = ashr i32 128, %61
  %63 = load ptr, ptr @framebase, align 8
  %64 = load i8, ptr %2, align 1
  %65 = zext i8 %64 to i32
  %66 = load i8, ptr %1, align 1
  %67 = zext i8 %66 to i32
  %68 = add nsw i32 %65, %67
  %69 = ashr i32 %68, 3
  %70 = load i8, ptr %3, align 1
  %71 = zext i8 %70 to i32
  %72 = load i8, ptr @WDB, align 1
  %73 = zext i8 %72 to i32
  %74 = mul nsw i32 %71, %73
  %75 = add nsw i32 %69, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, ptr %63, i64 %76
  %78 = load i8, ptr %77, align 1
  %79 = zext i8 %78 to i32
  %80 = or i32 %79, %62
  %81 = trunc i32 %80 to i8
  store i8 %81, ptr %77, align 1
  %82 = load i8, ptr %2, align 1
  %83 = zext i8 %82 to i32
  %84 = and i32 %83, 7
  %85 = ashr i32 128, %84
  %86 = load ptr, ptr @framebase, align 8
  %87 = load i8, ptr %2, align 1
  %88 = zext i8 %87 to i32
  %89 = ashr i32 %88, 3
  %90 = load i8, ptr %3, align 1
  %91 = zext i8 %90 to i32
  %92 = load i8, ptr %1, align 1
  %93 = zext i8 %92 to i32
  %94 = add nsw i32 %91, %93
  %95 = add nsw i32 %94, 1
  %96 = load i8, ptr @WDB, align 1
  %97 = zext i8 %96 to i32
  %98 = mul nsw i32 %95, %97
  %99 = add nsw i32 %89, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, ptr %86, i64 %100
  %102 = load i8, ptr %101, align 1
  %103 = zext i8 %102 to i32
  %104 = or i32 %103, %85
  %105 = trunc i32 %104 to i8
  store i8 %105, ptr %101, align 1
  %106 = load i8, ptr %2, align 1
  %107 = zext i8 %106 to i32
  %108 = add nsw i32 %107, 6
  %109 = and i32 %108, 7
  %110 = ashr i32 128, %109
  %111 = load ptr, ptr @framebase, align 8
  %112 = load i8, ptr %2, align 1
  %113 = zext i8 %112 to i32
  %114 = add nsw i32 %113, 6
  %115 = ashr i32 %114, 3
  %116 = load i8, ptr %3, align 1
  %117 = zext i8 %116 to i32
  %118 = load i8, ptr %1, align 1
  %119 = zext i8 %118 to i32
  %120 = add nsw i32 %117, %119
  %121 = load i8, ptr @WDB, align 1
  %122 = zext i8 %121 to i32
  %123 = mul nsw i32 %120, %122
  %124 = add nsw i32 %115, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, ptr %111, i64 %125
  %127 = load i8, ptr %126, align 1
  %128 = zext i8 %127 to i32
  %129 = or i32 %128, %110
  %130 = trunc i32 %129 to i8
  store i8 %130, ptr %126, align 1
  %131 = load i8, ptr %2, align 1
  %132 = zext i8 %131 to i32
  %133 = load i8, ptr %1, align 1
  %134 = zext i8 %133 to i32
  %135 = add nsw i32 %132, %134
  %136 = add nsw i32 %135, 1
  %137 = and i32 %136, 7
  %138 = ashr i32 128, %137
  %139 = load ptr, ptr @framebase, align 8
  %140 = load i8, ptr %2, align 1
  %141 = zext i8 %140 to i32
  %142 = load i8, ptr %1, align 1
  %143 = zext i8 %142 to i32
  %144 = add nsw i32 %141, %143
  %145 = add nsw i32 %144, 1
  %146 = ashr i32 %145, 3
  %147 = load i8, ptr %3, align 1
  %148 = zext i8 %147 to i32
  %149 = add nsw i32 %148, 6
  %150 = load i8, ptr @WDB, align 1
  %151 = zext i8 %150 to i32
  %152 = mul nsw i32 %149, %151
  %153 = add nsw i32 %146, %152
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, ptr %139, i64 %154
  %156 = load i8, ptr %155, align 1
  %157 = zext i8 %156 to i32
  %158 = or i32 %157, %138
  %159 = trunc i32 %158 to i8
  store i8 %159, ptr %155, align 1
  br label %160

160:                                              ; preds = %55
  %161 = load i8, ptr %1, align 1
  %162 = add i8 %161, 1
  store i8 %162, ptr %1, align 1
  br label %51, !llvm.loop !19

163:                                              ; preds = %51
  store i8 1, ptr %1, align 1
  br label %164

164:                                              ; preds = %211, %163
  %165 = load i8, ptr %1, align 1
  %166 = zext i8 %165 to i32
  %167 = icmp slt i32 %166, 5
  br i1 %167, label %168, label %214

168:                                              ; preds = %164
  %169 = load i8, ptr %2, align 1
  %170 = zext i8 %169 to i32
  %171 = load i8, ptr %1, align 1
  %172 = zext i8 %171 to i32
  %173 = add nsw i32 %170, %172
  %174 = trunc i32 %173 to i8
  %175 = load i8, ptr %3, align 1
  %176 = zext i8 %175 to i32
  %177 = add nsw i32 %176, 1
  %178 = trunc i32 %177 to i8
  call void @setmask(i8 noundef zeroext %174, i8 noundef zeroext %178)
  %179 = load i8, ptr %2, align 1
  %180 = zext i8 %179 to i32
  %181 = add nsw i32 %180, 1
  %182 = trunc i32 %181 to i8
  %183 = load i8, ptr %3, align 1
  %184 = zext i8 %183 to i32
  %185 = load i8, ptr %1, align 1
  %186 = zext i8 %185 to i32
  %187 = add nsw i32 %184, %186
  %188 = add nsw i32 %187, 1
  %189 = trunc i32 %188 to i8
  call void @setmask(i8 noundef zeroext %182, i8 noundef zeroext %189)
  %190 = load i8, ptr %2, align 1
  %191 = zext i8 %190 to i32
  %192 = add nsw i32 %191, 5
  %193 = trunc i32 %192 to i8
  %194 = load i8, ptr %3, align 1
  %195 = zext i8 %194 to i32
  %196 = load i8, ptr %1, align 1
  %197 = zext i8 %196 to i32
  %198 = add nsw i32 %195, %197
  %199 = trunc i32 %198 to i8
  call void @setmask(i8 noundef zeroext %193, i8 noundef zeroext %199)
  %200 = load i8, ptr %2, align 1
  %201 = zext i8 %200 to i32
  %202 = load i8, ptr %1, align 1
  %203 = zext i8 %202 to i32
  %204 = add nsw i32 %201, %203
  %205 = add nsw i32 %204, 1
  %206 = trunc i32 %205 to i8
  %207 = load i8, ptr %3, align 1
  %208 = zext i8 %207 to i32
  %209 = add nsw i32 %208, 5
  %210 = trunc i32 %209 to i8
  call void @setmask(i8 noundef zeroext %206, i8 noundef zeroext %210)
  br label %211

211:                                              ; preds = %168
  %212 = load i8, ptr %1, align 1
  %213 = add i8 %212, 1
  store i8 %213, ptr %1, align 1
  br label %164, !llvm.loop !20

214:                                              ; preds = %164
  store i8 2, ptr %1, align 1
  br label %215

215:                                              ; preds = %327, %214
  %216 = load i8, ptr %1, align 1
  %217 = zext i8 %216 to i32
  %218 = icmp slt i32 %217, 4
  br i1 %218, label %219, label %330

219:                                              ; preds = %215
  %220 = load i8, ptr %2, align 1
  %221 = zext i8 %220 to i32
  %222 = load i8, ptr %1, align 1
  %223 = zext i8 %222 to i32
  %224 = add nsw i32 %221, %223
  %225 = and i32 %224, 7
  %226 = ashr i32 128, %225
  %227 = load ptr, ptr @framebase, align 8
  %228 = load i8, ptr %2, align 1
  %229 = zext i8 %228 to i32
  %230 = load i8, ptr %1, align 1
  %231 = zext i8 %230 to i32
  %232 = add nsw i32 %229, %231
  %233 = ashr i32 %232, 3
  %234 = load i8, ptr %3, align 1
  %235 = zext i8 %234 to i32
  %236 = add nsw i32 %235, 2
  %237 = load i8, ptr @WDB, align 1
  %238 = zext i8 %237 to i32
  %239 = mul nsw i32 %236, %238
  %240 = add nsw i32 %233, %239
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i8, ptr %227, i64 %241
  %243 = load i8, ptr %242, align 1
  %244 = zext i8 %243 to i32
  %245 = or i32 %244, %226
  %246 = trunc i32 %245 to i8
  store i8 %246, ptr %242, align 1
  %247 = load i8, ptr %2, align 1
  %248 = zext i8 %247 to i32
  %249 = add nsw i32 %248, 2
  %250 = and i32 %249, 7
  %251 = ashr i32 128, %250
  %252 = load ptr, ptr @framebase, align 8
  %253 = load i8, ptr %2, align 1
  %254 = zext i8 %253 to i32
  %255 = add nsw i32 %254, 2
  %256 = ashr i32 %255, 3
  %257 = load i8, ptr %3, align 1
  %258 = zext i8 %257 to i32
  %259 = load i8, ptr %1, align 1
  %260 = zext i8 %259 to i32
  %261 = add nsw i32 %258, %260
  %262 = add nsw i32 %261, 1
  %263 = load i8, ptr @WDB, align 1
  %264 = zext i8 %263 to i32
  %265 = mul nsw i32 %262, %264
  %266 = add nsw i32 %256, %265
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i8, ptr %252, i64 %267
  %269 = load i8, ptr %268, align 1
  %270 = zext i8 %269 to i32
  %271 = or i32 %270, %251
  %272 = trunc i32 %271 to i8
  store i8 %272, ptr %268, align 1
  %273 = load i8, ptr %2, align 1
  %274 = zext i8 %273 to i32
  %275 = add nsw i32 %274, 4
  %276 = and i32 %275, 7
  %277 = ashr i32 128, %276
  %278 = load ptr, ptr @framebase, align 8
  %279 = load i8, ptr %2, align 1
  %280 = zext i8 %279 to i32
  %281 = add nsw i32 %280, 4
  %282 = ashr i32 %281, 3
  %283 = load i8, ptr %3, align 1
  %284 = zext i8 %283 to i32
  %285 = load i8, ptr %1, align 1
  %286 = zext i8 %285 to i32
  %287 = add nsw i32 %284, %286
  %288 = load i8, ptr @WDB, align 1
  %289 = zext i8 %288 to i32
  %290 = mul nsw i32 %287, %289
  %291 = add nsw i32 %282, %290
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i8, ptr %278, i64 %292
  %294 = load i8, ptr %293, align 1
  %295 = zext i8 %294 to i32
  %296 = or i32 %295, %277
  %297 = trunc i32 %296 to i8
  store i8 %297, ptr %293, align 1
  %298 = load i8, ptr %2, align 1
  %299 = zext i8 %298 to i32
  %300 = load i8, ptr %1, align 1
  %301 = zext i8 %300 to i32
  %302 = add nsw i32 %299, %301
  %303 = add nsw i32 %302, 1
  %304 = and i32 %303, 7
  %305 = ashr i32 128, %304
  %306 = load ptr, ptr @framebase, align 8
  %307 = load i8, ptr %2, align 1
  %308 = zext i8 %307 to i32
  %309 = load i8, ptr %1, align 1
  %310 = zext i8 %309 to i32
  %311 = add nsw i32 %308, %310
  %312 = add nsw i32 %311, 1
  %313 = ashr i32 %312, 3
  %314 = load i8, ptr %3, align 1
  %315 = zext i8 %314 to i32
  %316 = add nsw i32 %315, 4
  %317 = load i8, ptr @WDB, align 1
  %318 = zext i8 %317 to i32
  %319 = mul nsw i32 %316, %318
  %320 = add nsw i32 %313, %319
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i8, ptr %306, i64 %321
  %323 = load i8, ptr %322, align 1
  %324 = zext i8 %323 to i32
  %325 = or i32 %324, %305
  %326 = trunc i32 %325 to i8
  store i8 %326, ptr %322, align 1
  br label %327

327:                                              ; preds = %219
  %328 = load i8, ptr %1, align 1
  %329 = add i8 %328, 1
  store i8 %329, ptr %1, align 1
  br label %215, !llvm.loop !21

330:                                              ; preds = %215
  br label %331

331:                                              ; preds = %330
  %332 = load i8, ptr %4, align 1
  %333 = add i8 %332, 1
  store i8 %333, ptr %4, align 1
  br label %5, !llvm.loop !22

334:                                              ; preds = %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @putalign(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %6 = load i32, ptr %3, align 4
  %7 = and i32 %6, 7
  %8 = ashr i32 128, %7
  %9 = load ptr, ptr @framebase, align 8
  %10 = load i32, ptr %3, align 4
  %11 = ashr i32 %10, 3
  %12 = load i32, ptr %4, align 4
  %13 = load i8, ptr @WDB, align 1
  %14 = zext i8 %13 to i32
  %15 = mul nsw i32 %12, %14
  %16 = add nsw i32 %11, %15
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, ptr %9, i64 %17
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = or i32 %20, %8
  %22 = trunc i32 %21 to i8
  store i8 %22, ptr %18, align 1
  store i32 -2, ptr %5, align 4
  br label %23

23:                                               ; preds = %116, %2
  %24 = load i32, ptr %5, align 4
  %25 = icmp slt i32 %24, 2
  br i1 %25, label %26, label %119

26:                                               ; preds = %23
  %27 = load i32, ptr %3, align 4
  %28 = load i32, ptr %5, align 4
  %29 = add nsw i32 %27, %28
  %30 = and i32 %29, 7
  %31 = ashr i32 128, %30
  %32 = load ptr, ptr @framebase, align 8
  %33 = load i32, ptr %3, align 4
  %34 = load i32, ptr %5, align 4
  %35 = add nsw i32 %33, %34
  %36 = ashr i32 %35, 3
  %37 = load i32, ptr %4, align 4
  %38 = sub nsw i32 %37, 2
  %39 = load i8, ptr @WDB, align 1
  %40 = zext i8 %39 to i32
  %41 = mul nsw i32 %38, %40
  %42 = add nsw i32 %36, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, ptr %32, i64 %43
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i32
  %47 = or i32 %46, %31
  %48 = trunc i32 %47 to i8
  store i8 %48, ptr %44, align 1
  %49 = load i32, ptr %3, align 4
  %50 = sub nsw i32 %49, 2
  %51 = and i32 %50, 7
  %52 = ashr i32 128, %51
  %53 = load ptr, ptr @framebase, align 8
  %54 = load i32, ptr %3, align 4
  %55 = sub nsw i32 %54, 2
  %56 = ashr i32 %55, 3
  %57 = load i32, ptr %4, align 4
  %58 = load i32, ptr %5, align 4
  %59 = add nsw i32 %57, %58
  %60 = add nsw i32 %59, 1
  %61 = load i8, ptr @WDB, align 1
  %62 = zext i8 %61 to i32
  %63 = mul nsw i32 %60, %62
  %64 = add nsw i32 %56, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, ptr %53, i64 %65
  %67 = load i8, ptr %66, align 1
  %68 = zext i8 %67 to i32
  %69 = or i32 %68, %52
  %70 = trunc i32 %69 to i8
  store i8 %70, ptr %66, align 1
  %71 = load i32, ptr %3, align 4
  %72 = add nsw i32 %71, 2
  %73 = and i32 %72, 7
  %74 = ashr i32 128, %73
  %75 = load ptr, ptr @framebase, align 8
  %76 = load i32, ptr %3, align 4
  %77 = add nsw i32 %76, 2
  %78 = ashr i32 %77, 3
  %79 = load i32, ptr %4, align 4
  %80 = load i32, ptr %5, align 4
  %81 = add nsw i32 %79, %80
  %82 = load i8, ptr @WDB, align 1
  %83 = zext i8 %82 to i32
  %84 = mul nsw i32 %81, %83
  %85 = add nsw i32 %78, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, ptr %75, i64 %86
  %88 = load i8, ptr %87, align 1
  %89 = zext i8 %88 to i32
  %90 = or i32 %89, %74
  %91 = trunc i32 %90 to i8
  store i8 %91, ptr %87, align 1
  %92 = load i32, ptr %3, align 4
  %93 = load i32, ptr %5, align 4
  %94 = add nsw i32 %92, %93
  %95 = add nsw i32 %94, 1
  %96 = and i32 %95, 7
  %97 = ashr i32 128, %96
  %98 = load ptr, ptr @framebase, align 8
  %99 = load i32, ptr %3, align 4
  %100 = load i32, ptr %5, align 4
  %101 = add nsw i32 %99, %100
  %102 = add nsw i32 %101, 1
  %103 = ashr i32 %102, 3
  %104 = load i32, ptr %4, align 4
  %105 = add nsw i32 %104, 2
  %106 = load i8, ptr @WDB, align 1
  %107 = zext i8 %106 to i32
  %108 = mul nsw i32 %105, %107
  %109 = add nsw i32 %103, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, ptr %98, i64 %110
  %112 = load i8, ptr %111, align 1
  %113 = zext i8 %112 to i32
  %114 = or i32 %113, %97
  %115 = trunc i32 %114 to i8
  store i8 %115, ptr %111, align 1
  br label %116

116:                                              ; preds = %26
  %117 = load i32, ptr %5, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, ptr %5, align 4
  br label %23, !llvm.loop !23

119:                                              ; preds = %23
  store i32 0, ptr %5, align 4
  br label %120

120:                                              ; preds = %152, %119
  %121 = load i32, ptr %5, align 4
  %122 = icmp slt i32 %121, 2
  br i1 %122, label %123, label %155

123:                                              ; preds = %120
  %124 = load i32, ptr %3, align 4
  %125 = sub nsw i32 %124, 1
  %126 = trunc i32 %125 to i8
  %127 = load i32, ptr %4, align 4
  %128 = load i32, ptr %5, align 4
  %129 = add nsw i32 %127, %128
  %130 = trunc i32 %129 to i8
  call void @setmask(i8 noundef zeroext %126, i8 noundef zeroext %130)
  %131 = load i32, ptr %3, align 4
  %132 = add nsw i32 %131, 1
  %133 = trunc i32 %132 to i8
  %134 = load i32, ptr %4, align 4
  %135 = load i32, ptr %5, align 4
  %136 = sub nsw i32 %134, %135
  %137 = trunc i32 %136 to i8
  call void @setmask(i8 noundef zeroext %133, i8 noundef zeroext %137)
  %138 = load i32, ptr %3, align 4
  %139 = load i32, ptr %5, align 4
  %140 = sub nsw i32 %138, %139
  %141 = trunc i32 %140 to i8
  %142 = load i32, ptr %4, align 4
  %143 = sub nsw i32 %142, 1
  %144 = trunc i32 %143 to i8
  call void @setmask(i8 noundef zeroext %141, i8 noundef zeroext %144)
  %145 = load i32, ptr %3, align 4
  %146 = load i32, ptr %5, align 4
  %147 = add nsw i32 %145, %146
  %148 = trunc i32 %147 to i8
  %149 = load i32, ptr %4, align 4
  %150 = add nsw i32 %149, 1
  %151 = trunc i32 %150 to i8
  call void @setmask(i8 noundef zeroext %148, i8 noundef zeroext %151)
  br label %152

152:                                              ; preds = %123
  %153 = load i32, ptr %5, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, ptr %5, align 4
  br label %120, !llvm.loop !24

155:                                              ; preds = %120
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
