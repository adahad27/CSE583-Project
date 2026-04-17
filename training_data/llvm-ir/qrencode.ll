; ModuleID = '../../src/qrduino/qrencode.c'
source_filename = "../../src/qrduino/qrencode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@strinbuf = external global ptr, align 8
@qrframe = external global ptr, align 8
@WD = external global i8, align 1
@WDB = external global i8, align 1
@datablkw = external global i8, align 1
@neccblk1 = external global i8, align 1
@neccblk2 = external global i8, align 1
@VERSION = external global i8, align 1
@eccblkwid = external global i8, align 1
@g0exp = internal constant [256 x i8] c"\01\02\04\08\10 @\80\1D:t\E8\CD\87\13&L\98-Z\B4u\EA\C9\8F\03\06\0C\180`\C0\9D'N\9C%J\945j\D4\B5w\EE\C1\9F#F\8C\05\0A\14(P\A0]\BAi\D2\B9o\DE\A1_\BEa\C2\99/^\BCe\CA\89\0F\1E<x\F0\FD\E7\D3\BBk\D6\B1\7F\FE\E1\DF\A3[\B6q\E2\D9\AFC\86\11\22D\88\0D\1A4h\D0\BDg\CE\81\1F>|\F8\ED\C7\93;v\EC\C5\973f\CC\85\17.\\\B8m\DA\A9O\9E!B\84\15*T\A8M\9A)R\A4U\AAI\929r\E4\D5\B7s\E6\D1\BFc\C6\91?~\FC\E5\D7\B3{\F6\F1\FF\E3\DB\ABK\961b\C4\957n\DC\A5W\AEA\82\192d\C8\8D\07\0E\1C8p\E0\DD\A7S\A6Q\A2Y\B2y\F2\F9\EF\C3\9B+V\ACE\8A\09\12$H\90=z\F4\F5\F7\F3\FB\EB\CB\8B\0B\16,X\B0}\FA\E9\CF\83\1B6l\D8\ADG\8E\00", align 16
@g0log = internal constant [256 x i8] c"\FF\00\01\19\022\1A\C6\03\DF3\EE\1Bh\C7K\04d\E0\0E4\8D\EF\81\1C\C1i\F8\C8\08Lq\05\8Ae/\E1$\0F!5\93\8E\DA\F0\12\82E\1D\B5\C2}j'\F9\B9\C9\9A\09xM\E4r\A6\06\BF\8Bbf\DD0\FD\E2\98%\B3\10\91\22\886\D0\94\CE\8F\96\DB\BD\F1\D2\13\\\838F@\1EB\B6\A3\C3H~nk:(T\FA\85\BA=\CA^\9B\9F\0A\15y+N\D4\E5\ACs\F3\A7W\07p\C0\F7\8C\80c\0DgJ\DE\ED1\C5\FE\18\E3\A5\99w&\B8\B4|\11D\92\D9# \89.7?\D1[\95\BC\CF\CD\90\87\97\B2\DC\FC\BEa\F2V\D3\AB\14*]\9E\84<9SGmA\A2\1F-C\D8\B7{\A4v\C4\17I\EC\7F\0Co\F6l\A1;R)\9DU\AA\FB`\86\B1\BB\CC>Z\CBY_\B0\9C\A9\A0Q\0B\F5\16\EBzu,\D7O\AE\D5\E9\E6\E7\AD\E8t\D6\F4\EA\A8PX\AF", align 16
@framebase = external global ptr, align 8
@framask = external global ptr, align 8
@rlens = external global ptr, align 8
@ECCLEVEL = external global i8, align 1
@fmtword = internal constant [32 x i32] [i32 30660, i32 29427, i32 32170, i32 30877, i32 26159, i32 25368, i32 27713, i32 26998, i32 21522, i32 20773, i32 24188, i32 23371, i32 17913, i32 16590, i32 20375, i32 19104, i32 13663, i32 12392, i32 16177, i32 14854, i32 9396, i32 8579, i32 11994, i32 11245, i32 5769, i32 5054, i32 7399, i32 6608, i32 1890, i32 597, i32 3340, i32 2107], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @qrencode() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i32 30000, ptr %1, align 4
  store i8 0, ptr %2, align 1
  call void @stringtoqr()
  call void @fillframe()
  %5 = load ptr, ptr @strinbuf, align 8
  %6 = load ptr, ptr @qrframe, align 8
  %7 = load i8, ptr @WD, align 1
  %8 = zext i8 %7 to i32
  %9 = load i8, ptr @WDB, align 1
  %10 = zext i8 %9 to i32
  %11 = mul nsw i32 %8, %10
  %12 = sext i32 %11 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr align 1 %6, i64 %12, i1 false)
  store i8 0, ptr %3, align 1
  br label %13

13:                                               ; preds = %40, %0
  %14 = load i8, ptr %3, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp slt i32 %15, 8
  br i1 %16, label %17, label %43

17:                                               ; preds = %13
  %18 = load i8, ptr %3, align 1
  call void @applymask(i8 noundef zeroext %18)
  %19 = call i32 @badcheck()
  store i32 %19, ptr %4, align 4
  %20 = load i32, ptr %4, align 4
  %21 = load i32, ptr %1, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, ptr %4, align 4
  store i32 %24, ptr %1, align 4
  %25 = load i8, ptr %3, align 1
  store i8 %25, ptr %2, align 1
  br label %26

26:                                               ; preds = %23, %17
  %27 = load i8, ptr %2, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp eq i32 %28, 7
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %43

31:                                               ; preds = %26
  %32 = load ptr, ptr @qrframe, align 8
  %33 = load ptr, ptr @strinbuf, align 8
  %34 = load i8, ptr @WD, align 1
  %35 = zext i8 %34 to i32
  %36 = load i8, ptr @WDB, align 1
  %37 = zext i8 %36 to i32
  %38 = mul nsw i32 %35, %37
  %39 = sext i32 %38 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %32, ptr align 1 %33, i64 %39, i1 false)
  br label %40

40:                                               ; preds = %31
  %41 = load i8, ptr %3, align 1
  %42 = add i8 %41, 1
  store i8 %42, ptr %3, align 1
  br label %13, !llvm.loop !6

43:                                               ; preds = %30, %13
  %44 = load i8, ptr %2, align 1
  %45 = zext i8 %44 to i32
  %46 = load i8, ptr %3, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp ne i32 %45, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i8, ptr %2, align 1
  call void @applymask(i8 noundef zeroext %50)
  br label %51

51:                                               ; preds = %49, %43
  %52 = load i8, ptr %2, align 1
  call void @addfmt(i8 noundef zeroext %52)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @stringtoqr() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = load ptr, ptr @strinbuf, align 8
  %8 = call i64 @strlen(ptr noundef %7) #4
  %9 = trunc i64 %8 to i32
  store i32 %9, ptr %2, align 4
  %10 = load i8, ptr @datablkw, align 1
  %11 = zext i8 %10 to i32
  %12 = load i8, ptr @neccblk1, align 1
  %13 = zext i8 %12 to i32
  %14 = load i8, ptr @neccblk2, align 1
  %15 = zext i8 %14 to i32
  %16 = add nsw i32 %13, %15
  %17 = mul nsw i32 %11, %16
  %18 = load i8, ptr @neccblk2, align 1
  %19 = zext i8 %18 to i32
  %20 = add nsw i32 %17, %19
  store i32 %20, ptr %3, align 4
  %21 = load i32, ptr %2, align 4
  %22 = load i32, ptr %3, align 4
  %23 = sub i32 %22, 2
  %24 = icmp uge i32 %21, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %0
  %26 = load i32, ptr %3, align 4
  %27 = sub i32 %26, 2
  store i32 %27, ptr %2, align 4
  %28 = load i8, ptr @VERSION, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp sgt i32 %29, 9
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, ptr %2, align 4
  %33 = add i32 %32, -1
  store i32 %33, ptr %2, align 4
  br label %34

34:                                               ; preds = %31, %25
  br label %35

35:                                               ; preds = %34, %0
  %36 = load i32, ptr %2, align 4
  store i32 %36, ptr %1, align 4
  %37 = load i8, ptr @VERSION, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp sgt i32 %38, 9
  br i1 %39, label %40, label %100

40:                                               ; preds = %35
  %41 = load ptr, ptr @strinbuf, align 8
  %42 = load i32, ptr %1, align 4
  %43 = add i32 %42, 2
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds nuw i8, ptr %41, i64 %44
  store i8 0, ptr %45, align 1
  br label %46

46:                                               ; preds = %50, %40
  %47 = load i32, ptr %1, align 4
  %48 = add i32 %47, -1
  store i32 %48, ptr %1, align 4
  %49 = icmp ne i32 %47, 0
  br i1 %49, label %50, label %80

50:                                               ; preds = %46
  %51 = load ptr, ptr @strinbuf, align 8
  %52 = load i32, ptr %1, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds nuw i8, ptr %51, i64 %53
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i32
  %57 = shl i32 %56, 4
  %58 = load ptr, ptr @strinbuf, align 8
  %59 = load i32, ptr %1, align 4
  %60 = add i32 %59, 3
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds nuw i8, ptr %58, i64 %61
  %63 = load i8, ptr %62, align 1
  %64 = zext i8 %63 to i32
  %65 = or i32 %64, %57
  %66 = trunc i32 %65 to i8
  store i8 %66, ptr %62, align 1
  %67 = load ptr, ptr @strinbuf, align 8
  %68 = load i32, ptr %1, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds nuw i8, ptr %67, i64 %69
  %71 = load i8, ptr %70, align 1
  %72 = zext i8 %71 to i32
  %73 = ashr i32 %72, 4
  %74 = trunc i32 %73 to i8
  %75 = load ptr, ptr @strinbuf, align 8
  %76 = load i32, ptr %1, align 4
  %77 = add i32 %76, 2
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds nuw i8, ptr %75, i64 %78
  store i8 %74, ptr %79, align 1
  br label %46, !llvm.loop !8

80:                                               ; preds = %46
  %81 = load i32, ptr %2, align 4
  %82 = shl i32 %81, 4
  %83 = load ptr, ptr @strinbuf, align 8
  %84 = getelementptr inbounds i8, ptr %83, i64 2
  %85 = load i8, ptr %84, align 1
  %86 = zext i8 %85 to i32
  %87 = or i32 %86, %82
  %88 = trunc i32 %87 to i8
  store i8 %88, ptr %84, align 1
  %89 = load i32, ptr %2, align 4
  %90 = lshr i32 %89, 4
  %91 = trunc i32 %90 to i8
  %92 = load ptr, ptr @strinbuf, align 8
  %93 = getelementptr inbounds i8, ptr %92, i64 1
  store i8 %91, ptr %93, align 1
  %94 = load i32, ptr %2, align 4
  %95 = lshr i32 %94, 12
  %96 = or i32 64, %95
  %97 = trunc i32 %96 to i8
  %98 = load ptr, ptr @strinbuf, align 8
  %99 = getelementptr inbounds i8, ptr %98, i64 0
  store i8 %97, ptr %99, align 1
  br label %155

100:                                              ; preds = %35
  %101 = load ptr, ptr @strinbuf, align 8
  %102 = load i32, ptr %1, align 4
  %103 = add i32 %102, 1
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds nuw i8, ptr %101, i64 %104
  store i8 0, ptr %105, align 1
  br label %106

106:                                              ; preds = %110, %100
  %107 = load i32, ptr %1, align 4
  %108 = add i32 %107, -1
  store i32 %108, ptr %1, align 4
  %109 = icmp ne i32 %107, 0
  br i1 %109, label %110, label %140

110:                                              ; preds = %106
  %111 = load ptr, ptr @strinbuf, align 8
  %112 = load i32, ptr %1, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds nuw i8, ptr %111, i64 %113
  %115 = load i8, ptr %114, align 1
  %116 = zext i8 %115 to i32
  %117 = shl i32 %116, 4
  %118 = load ptr, ptr @strinbuf, align 8
  %119 = load i32, ptr %1, align 4
  %120 = add i32 %119, 2
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds nuw i8, ptr %118, i64 %121
  %123 = load i8, ptr %122, align 1
  %124 = zext i8 %123 to i32
  %125 = or i32 %124, %117
  %126 = trunc i32 %125 to i8
  store i8 %126, ptr %122, align 1
  %127 = load ptr, ptr @strinbuf, align 8
  %128 = load i32, ptr %1, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds nuw i8, ptr %127, i64 %129
  %131 = load i8, ptr %130, align 1
  %132 = zext i8 %131 to i32
  %133 = ashr i32 %132, 4
  %134 = trunc i32 %133 to i8
  %135 = load ptr, ptr @strinbuf, align 8
  %136 = load i32, ptr %1, align 4
  %137 = add i32 %136, 1
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds nuw i8, ptr %135, i64 %138
  store i8 %134, ptr %139, align 1
  br label %106, !llvm.loop !9

140:                                              ; preds = %106
  %141 = load i32, ptr %2, align 4
  %142 = shl i32 %141, 4
  %143 = load ptr, ptr @strinbuf, align 8
  %144 = getelementptr inbounds i8, ptr %143, i64 1
  %145 = load i8, ptr %144, align 1
  %146 = zext i8 %145 to i32
  %147 = or i32 %146, %142
  %148 = trunc i32 %147 to i8
  store i8 %148, ptr %144, align 1
  %149 = load i32, ptr %2, align 4
  %150 = lshr i32 %149, 4
  %151 = or i32 64, %150
  %152 = trunc i32 %151 to i8
  %153 = load ptr, ptr @strinbuf, align 8
  %154 = getelementptr inbounds i8, ptr %153, i64 0
  store i8 %152, ptr %154, align 1
  br label %155

155:                                              ; preds = %140, %80
  %156 = load i32, ptr %2, align 4
  %157 = add i32 %156, 3
  %158 = load i8, ptr @VERSION, align 1
  %159 = zext i8 %158 to i32
  %160 = icmp slt i32 %159, 10
  %161 = zext i1 %160 to i32
  %162 = sub i32 %157, %161
  store i32 %162, ptr %1, align 4
  br label %163

163:                                              ; preds = %167, %155
  %164 = load i32, ptr %1, align 4
  %165 = load i32, ptr %3, align 4
  %166 = icmp ult i32 %164, %165
  br i1 %166, label %167, label %178

167:                                              ; preds = %163
  %168 = load ptr, ptr @strinbuf, align 8
  %169 = load i32, ptr %1, align 4
  %170 = add i32 %169, 1
  store i32 %170, ptr %1, align 4
  %171 = zext i32 %169 to i64
  %172 = getelementptr inbounds nuw i8, ptr %168, i64 %171
  store i8 -20, ptr %172, align 1
  %173 = load ptr, ptr @strinbuf, align 8
  %174 = load i32, ptr %1, align 4
  %175 = add i32 %174, 1
  store i32 %175, ptr %1, align 4
  %176 = zext i32 %174 to i64
  %177 = getelementptr inbounds nuw i8, ptr %173, i64 %176
  store i8 17, ptr %177, align 1
  br label %163, !llvm.loop !10

178:                                              ; preds = %163
  %179 = load ptr, ptr @strinbuf, align 8
  %180 = load i32, ptr %3, align 4
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds nuw i8, ptr %179, i64 %181
  store ptr %182, ptr %4, align 8
  %183 = load ptr, ptr @strinbuf, align 8
  store ptr %183, ptr %5, align 8
  %184 = load i8, ptr @eccblkwid, align 1
  %185 = load ptr, ptr @qrframe, align 8
  call void @initrspoly(i8 noundef zeroext %184, ptr noundef %185)
  store i32 0, ptr %1, align 4
  br label %186

186:                                              ; preds = %207, %178
  %187 = load i32, ptr %1, align 4
  %188 = load i8, ptr @neccblk1, align 1
  %189 = zext i8 %188 to i32
  %190 = icmp ult i32 %187, %189
  br i1 %190, label %191, label %210

191:                                              ; preds = %186
  %192 = load ptr, ptr %5, align 8
  %193 = load i8, ptr @datablkw, align 1
  %194 = load ptr, ptr %4, align 8
  %195 = load i8, ptr @eccblkwid, align 1
  %196 = load ptr, ptr @qrframe, align 8
  call void @appendrs(ptr noundef %192, i8 noundef zeroext %193, ptr noundef %194, i8 noundef zeroext %195, ptr noundef %196)
  %197 = load i8, ptr @datablkw, align 1
  %198 = zext i8 %197 to i32
  %199 = load ptr, ptr %5, align 8
  %200 = sext i32 %198 to i64
  %201 = getelementptr inbounds i8, ptr %199, i64 %200
  store ptr %201, ptr %5, align 8
  %202 = load i8, ptr @eccblkwid, align 1
  %203 = zext i8 %202 to i32
  %204 = load ptr, ptr %4, align 8
  %205 = sext i32 %203 to i64
  %206 = getelementptr inbounds i8, ptr %204, i64 %205
  store ptr %206, ptr %4, align 8
  br label %207

207:                                              ; preds = %191
  %208 = load i32, ptr %1, align 4
  %209 = add i32 %208, 1
  store i32 %209, ptr %1, align 4
  br label %186, !llvm.loop !11

210:                                              ; preds = %186
  store i32 0, ptr %1, align 4
  br label %211

211:                                              ; preds = %236, %210
  %212 = load i32, ptr %1, align 4
  %213 = load i8, ptr @neccblk2, align 1
  %214 = zext i8 %213 to i32
  %215 = icmp ult i32 %212, %214
  br i1 %215, label %216, label %239

216:                                              ; preds = %211
  %217 = load ptr, ptr %5, align 8
  %218 = load i8, ptr @datablkw, align 1
  %219 = zext i8 %218 to i32
  %220 = add nsw i32 %219, 1
  %221 = trunc i32 %220 to i8
  %222 = load ptr, ptr %4, align 8
  %223 = load i8, ptr @eccblkwid, align 1
  %224 = load ptr, ptr @qrframe, align 8
  call void @appendrs(ptr noundef %217, i8 noundef zeroext %221, ptr noundef %222, i8 noundef zeroext %223, ptr noundef %224)
  %225 = load i8, ptr @datablkw, align 1
  %226 = zext i8 %225 to i32
  %227 = add nsw i32 %226, 1
  %228 = load ptr, ptr %5, align 8
  %229 = sext i32 %227 to i64
  %230 = getelementptr inbounds i8, ptr %228, i64 %229
  store ptr %230, ptr %5, align 8
  %231 = load i8, ptr @eccblkwid, align 1
  %232 = zext i8 %231 to i32
  %233 = load ptr, ptr %4, align 8
  %234 = sext i32 %232 to i64
  %235 = getelementptr inbounds i8, ptr %233, i64 %234
  store ptr %235, ptr %4, align 8
  br label %236

236:                                              ; preds = %216
  %237 = load i32, ptr %1, align 4
  %238 = add i32 %237, 1
  store i32 %238, ptr %1, align 4
  br label %211, !llvm.loop !12

239:                                              ; preds = %211
  %240 = load ptr, ptr @qrframe, align 8
  store ptr %240, ptr %5, align 8
  store i32 0, ptr %1, align 4
  br label %241

241:                                              ; preds = %298, %239
  %242 = load i32, ptr %1, align 4
  %243 = load i8, ptr @datablkw, align 1
  %244 = zext i8 %243 to i32
  %245 = icmp ult i32 %242, %244
  br i1 %245, label %246, label %301

246:                                              ; preds = %241
  store i32 0, ptr %6, align 4
  br label %247

247:                                              ; preds = %265, %246
  %248 = load i32, ptr %6, align 4
  %249 = load i8, ptr @neccblk1, align 1
  %250 = zext i8 %249 to i32
  %251 = icmp ult i32 %248, %250
  br i1 %251, label %252, label %268

252:                                              ; preds = %247
  %253 = load ptr, ptr @strinbuf, align 8
  %254 = load i32, ptr %1, align 4
  %255 = load i32, ptr %6, align 4
  %256 = load i8, ptr @datablkw, align 1
  %257 = zext i8 %256 to i32
  %258 = mul i32 %255, %257
  %259 = add i32 %254, %258
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds nuw i8, ptr %253, i64 %260
  %262 = load i8, ptr %261, align 1
  %263 = load ptr, ptr %5, align 8
  %264 = getelementptr inbounds nuw i8, ptr %263, i32 1
  store ptr %264, ptr %5, align 8
  store i8 %262, ptr %263, align 1
  br label %265

265:                                              ; preds = %252
  %266 = load i32, ptr %6, align 4
  %267 = add i32 %266, 1
  store i32 %267, ptr %6, align 4
  br label %247, !llvm.loop !13

268:                                              ; preds = %247
  store i32 0, ptr %6, align 4
  br label %269

269:                                              ; preds = %294, %268
  %270 = load i32, ptr %6, align 4
  %271 = load i8, ptr @neccblk2, align 1
  %272 = zext i8 %271 to i32
  %273 = icmp ult i32 %270, %272
  br i1 %273, label %274, label %297

274:                                              ; preds = %269
  %275 = load ptr, ptr @strinbuf, align 8
  %276 = load i8, ptr @neccblk1, align 1
  %277 = zext i8 %276 to i32
  %278 = load i8, ptr @datablkw, align 1
  %279 = zext i8 %278 to i32
  %280 = mul nsw i32 %277, %279
  %281 = load i32, ptr %1, align 4
  %282 = add i32 %280, %281
  %283 = load i32, ptr %6, align 4
  %284 = load i8, ptr @datablkw, align 1
  %285 = zext i8 %284 to i32
  %286 = add nsw i32 %285, 1
  %287 = mul i32 %283, %286
  %288 = add i32 %282, %287
  %289 = zext i32 %288 to i64
  %290 = getelementptr inbounds nuw i8, ptr %275, i64 %289
  %291 = load i8, ptr %290, align 1
  %292 = load ptr, ptr %5, align 8
  %293 = getelementptr inbounds nuw i8, ptr %292, i32 1
  store ptr %293, ptr %5, align 8
  store i8 %291, ptr %292, align 1
  br label %294

294:                                              ; preds = %274
  %295 = load i32, ptr %6, align 4
  %296 = add i32 %295, 1
  store i32 %296, ptr %6, align 4
  br label %269, !llvm.loop !14

297:                                              ; preds = %269
  br label %298

298:                                              ; preds = %297
  %299 = load i32, ptr %1, align 4
  %300 = add i32 %299, 1
  store i32 %300, ptr %1, align 4
  br label %241, !llvm.loop !15

301:                                              ; preds = %241
  store i32 0, ptr %6, align 4
  br label %302

302:                                              ; preds = %327, %301
  %303 = load i32, ptr %6, align 4
  %304 = load i8, ptr @neccblk2, align 1
  %305 = zext i8 %304 to i32
  %306 = icmp ult i32 %303, %305
  br i1 %306, label %307, label %330

307:                                              ; preds = %302
  %308 = load ptr, ptr @strinbuf, align 8
  %309 = load i8, ptr @neccblk1, align 1
  %310 = zext i8 %309 to i32
  %311 = load i8, ptr @datablkw, align 1
  %312 = zext i8 %311 to i32
  %313 = mul nsw i32 %310, %312
  %314 = load i32, ptr %1, align 4
  %315 = add i32 %313, %314
  %316 = load i32, ptr %6, align 4
  %317 = load i8, ptr @datablkw, align 1
  %318 = zext i8 %317 to i32
  %319 = add nsw i32 %318, 1
  %320 = mul i32 %316, %319
  %321 = add i32 %315, %320
  %322 = zext i32 %321 to i64
  %323 = getelementptr inbounds nuw i8, ptr %308, i64 %322
  %324 = load i8, ptr %323, align 1
  %325 = load ptr, ptr %5, align 8
  %326 = getelementptr inbounds nuw i8, ptr %325, i32 1
  store ptr %326, ptr %5, align 8
  store i8 %324, ptr %325, align 1
  br label %327

327:                                              ; preds = %307
  %328 = load i32, ptr %6, align 4
  %329 = add i32 %328, 1
  store i32 %329, ptr %6, align 4
  br label %302, !llvm.loop !16

330:                                              ; preds = %302
  store i32 0, ptr %1, align 4
  br label %331

331:                                              ; preds = %364, %330
  %332 = load i32, ptr %1, align 4
  %333 = load i8, ptr @eccblkwid, align 1
  %334 = zext i8 %333 to i32
  %335 = icmp ult i32 %332, %334
  br i1 %335, label %336, label %367

336:                                              ; preds = %331
  store i32 0, ptr %6, align 4
  br label %337

337:                                              ; preds = %360, %336
  %338 = load i32, ptr %6, align 4
  %339 = load i8, ptr @neccblk1, align 1
  %340 = zext i8 %339 to i32
  %341 = load i8, ptr @neccblk2, align 1
  %342 = zext i8 %341 to i32
  %343 = add nsw i32 %340, %342
  %344 = icmp ult i32 %338, %343
  br i1 %344, label %345, label %363

345:                                              ; preds = %337
  %346 = load ptr, ptr @strinbuf, align 8
  %347 = load i32, ptr %3, align 4
  %348 = load i32, ptr %1, align 4
  %349 = add i32 %347, %348
  %350 = load i32, ptr %6, align 4
  %351 = load i8, ptr @eccblkwid, align 1
  %352 = zext i8 %351 to i32
  %353 = mul i32 %350, %352
  %354 = add i32 %349, %353
  %355 = zext i32 %354 to i64
  %356 = getelementptr inbounds nuw i8, ptr %346, i64 %355
  %357 = load i8, ptr %356, align 1
  %358 = load ptr, ptr %5, align 8
  %359 = getelementptr inbounds nuw i8, ptr %358, i32 1
  store ptr %359, ptr %5, align 8
  store i8 %357, ptr %358, align 1
  br label %360

360:                                              ; preds = %345
  %361 = load i32, ptr %6, align 4
  %362 = add i32 %361, 1
  store i32 %362, ptr %6, align 4
  br label %337, !llvm.loop !17

363:                                              ; preds = %337
  br label %364

364:                                              ; preds = %363
  %365 = load i32, ptr %1, align 4
  %366 = add i32 %365, 1
  store i32 %366, ptr %1, align 4
  br label %331, !llvm.loop !18

367:                                              ; preds = %331
  %368 = load ptr, ptr @strinbuf, align 8
  %369 = load ptr, ptr @qrframe, align 8
  %370 = load i32, ptr %3, align 4
  %371 = load i8, ptr @eccblkwid, align 1
  %372 = zext i8 %371 to i32
  %373 = load i8, ptr @neccblk1, align 1
  %374 = zext i8 %373 to i32
  %375 = load i8, ptr @neccblk2, align 1
  %376 = zext i8 %375 to i32
  %377 = add nsw i32 %374, %376
  %378 = mul nsw i32 %372, %377
  %379 = add i32 %370, %378
  %380 = zext i32 %379 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %368, ptr align 1 %369, i64 %380, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @fillframe() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = load ptr, ptr @qrframe, align 8
  %9 = load ptr, ptr @framebase, align 8
  %10 = load i8, ptr @WDB, align 1
  %11 = zext i8 %10 to i32
  %12 = load i8, ptr @WD, align 1
  %13 = zext i8 %12 to i32
  %14 = mul nsw i32 %11, %13
  %15 = sext i32 %14 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %9, i64 %15, i1 false)
  %16 = load i8, ptr @WD, align 1
  %17 = zext i8 %16 to i32
  %18 = sub nsw i32 %17, 1
  %19 = trunc i32 %18 to i8
  store i8 %19, ptr %5, align 1
  store i8 %19, ptr %4, align 1
  store i8 1, ptr %6, align 1
  store i8 1, ptr %7, align 1
  store i32 0, ptr %1, align 4
  br label %20

20:                                               ; preds = %163, %0
  %21 = load i32, ptr %1, align 4
  %22 = load i8, ptr @datablkw, align 1
  %23 = zext i8 %22 to i32
  %24 = load i8, ptr @eccblkwid, align 1
  %25 = zext i8 %24 to i32
  %26 = add nsw i32 %23, %25
  %27 = load i8, ptr @neccblk1, align 1
  %28 = zext i8 %27 to i32
  %29 = load i8, ptr @neccblk2, align 1
  %30 = zext i8 %29 to i32
  %31 = add nsw i32 %28, %30
  %32 = mul nsw i32 %26, %31
  %33 = load i8, ptr @neccblk2, align 1
  %34 = zext i8 %33 to i32
  %35 = add nsw i32 %32, %34
  %36 = icmp slt i32 %21, %35
  br i1 %36, label %37, label %166

37:                                               ; preds = %20
  %38 = load ptr, ptr @strinbuf, align 8
  %39 = load i32, ptr %1, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, ptr %38, i64 %40
  %42 = load i8, ptr %41, align 1
  store i8 %42, ptr %2, align 1
  store i8 0, ptr %3, align 1
  br label %43

43:                                               ; preds = %155, %37
  %44 = load i8, ptr %3, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp slt i32 %45, 8
  br i1 %46, label %47, label %162

47:                                               ; preds = %43
  %48 = load i8, ptr %2, align 1
  %49 = zext i8 %48 to i32
  %50 = and i32 128, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %73

52:                                               ; preds = %47
  %53 = load i8, ptr %4, align 1
  %54 = zext i8 %53 to i32
  %55 = and i32 %54, 7
  %56 = ashr i32 128, %55
  %57 = load ptr, ptr @qrframe, align 8
  %58 = load i8, ptr %4, align 1
  %59 = zext i8 %58 to i32
  %60 = ashr i32 %59, 3
  %61 = load i8, ptr %5, align 1
  %62 = zext i8 %61 to i32
  %63 = load i8, ptr @WDB, align 1
  %64 = zext i8 %63 to i32
  %65 = mul nsw i32 %62, %64
  %66 = add nsw i32 %60, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, ptr %57, i64 %67
  %69 = load i8, ptr %68, align 1
  %70 = zext i8 %69 to i32
  %71 = or i32 %70, %56
  %72 = trunc i32 %71 to i8
  store i8 %72, ptr %68, align 1
  br label %73

73:                                               ; preds = %52, %47
  br label %74

74:                                               ; preds = %149, %73
  %75 = load i8, ptr %7, align 1
  %76 = icmp ne i8 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i8, ptr %4, align 1
  %79 = add i8 %78, -1
  store i8 %79, ptr %4, align 1
  br label %143

80:                                               ; preds = %74
  %81 = load i8, ptr %4, align 1
  %82 = add i8 %81, 1
  store i8 %82, ptr %4, align 1
  %83 = load i8, ptr %6, align 1
  %84 = icmp ne i8 %83, 0
  br i1 %84, label %85, label %110

85:                                               ; preds = %80
  %86 = load i8, ptr %5, align 1
  %87 = zext i8 %86 to i32
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = load i8, ptr %5, align 1
  %91 = add i8 %90, -1
  store i8 %91, ptr %5, align 1
  br label %109

92:                                               ; preds = %85
  %93 = load i8, ptr %4, align 1
  %94 = zext i8 %93 to i32
  %95 = sub nsw i32 %94, 2
  %96 = trunc i32 %95 to i8
  store i8 %96, ptr %4, align 1
  %97 = load i8, ptr %6, align 1
  %98 = icmp ne i8 %97, 0
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  %101 = trunc i32 %100 to i8
  store i8 %101, ptr %6, align 1
  %102 = load i8, ptr %4, align 1
  %103 = zext i8 %102 to i32
  %104 = icmp eq i32 %103, 6
  br i1 %104, label %105, label %108

105:                                              ; preds = %92
  %106 = load i8, ptr %4, align 1
  %107 = add i8 %106, -1
  store i8 %107, ptr %4, align 1
  store i8 9, ptr %5, align 1
  br label %108

108:                                              ; preds = %105, %92
  br label %109

109:                                              ; preds = %108, %89
  br label %142

110:                                              ; preds = %80
  %111 = load i8, ptr %5, align 1
  %112 = zext i8 %111 to i32
  %113 = load i8, ptr @WD, align 1
  %114 = zext i8 %113 to i32
  %115 = sub nsw i32 %114, 1
  %116 = icmp ne i32 %112, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %110
  %118 = load i8, ptr %5, align 1
  %119 = add i8 %118, 1
  store i8 %119, ptr %5, align 1
  br label %141

120:                                              ; preds = %110
  %121 = load i8, ptr %4, align 1
  %122 = zext i8 %121 to i32
  %123 = sub nsw i32 %122, 2
  %124 = trunc i32 %123 to i8
  store i8 %124, ptr %4, align 1
  %125 = load i8, ptr %6, align 1
  %126 = icmp ne i8 %125, 0
  %127 = xor i1 %126, true
  %128 = zext i1 %127 to i32
  %129 = trunc i32 %128 to i8
  store i8 %129, ptr %6, align 1
  %130 = load i8, ptr %4, align 1
  %131 = zext i8 %130 to i32
  %132 = icmp eq i32 %131, 6
  br i1 %132, label %133, label %140

133:                                              ; preds = %120
  %134 = load i8, ptr %4, align 1
  %135 = add i8 %134, -1
  store i8 %135, ptr %4, align 1
  %136 = load i8, ptr %5, align 1
  %137 = zext i8 %136 to i32
  %138 = sub nsw i32 %137, 8
  %139 = trunc i32 %138 to i8
  store i8 %139, ptr %5, align 1
  br label %140

140:                                              ; preds = %133, %120
  br label %141

141:                                              ; preds = %140, %117
  br label %142

142:                                              ; preds = %141, %109
  br label %143

143:                                              ; preds = %142, %77
  %144 = load i8, ptr %7, align 1
  %145 = icmp ne i8 %144, 0
  %146 = xor i1 %145, true
  %147 = zext i1 %146 to i32
  %148 = trunc i32 %147 to i8
  store i8 %148, ptr %7, align 1
  br label %149

149:                                              ; preds = %143
  %150 = load i8, ptr %4, align 1
  %151 = load i8, ptr %5, align 1
  %152 = call zeroext i8 @ismasked(i8 noundef zeroext %150, i8 noundef zeroext %151)
  %153 = icmp ne i8 %152, 0
  br i1 %153, label %74, label %154, !llvm.loop !19

154:                                              ; preds = %149
  br label %155

155:                                              ; preds = %154
  %156 = load i8, ptr %3, align 1
  %157 = add i8 %156, 1
  store i8 %157, ptr %3, align 1
  %158 = load i8, ptr %2, align 1
  %159 = zext i8 %158 to i32
  %160 = shl i32 %159, 1
  %161 = trunc i32 %160 to i8
  store i8 %161, ptr %2, align 1
  br label %43, !llvm.loop !20

162:                                              ; preds = %43
  br label %163

163:                                              ; preds = %162
  %164 = load i32, ptr %1, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, ptr %1, align 4
  br label %20, !llvm.loop !21

166:                                              ; preds = %20
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define internal void @applymask(i8 noundef zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  %7 = load i8, ptr %2, align 1
  %8 = zext i8 %7 to i32
  switch i32 %8, label %569 [
    i32 0, label %9
    i32 1, label %66
    i32 2, label %120
    i32 3, label %179
    i32 4, label %246
    i32 5, label %315
    i32 6, label %399
    i32 7, label %484
  ]

9:                                                ; preds = %1
  store i8 0, ptr %4, align 1
  br label %10

10:                                               ; preds = %62, %9
  %11 = load i8, ptr %4, align 1
  %12 = zext i8 %11 to i32
  %13 = load i8, ptr @WD, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %65

16:                                               ; preds = %10
  store i8 0, ptr %3, align 1
  br label %17

17:                                               ; preds = %58, %16
  %18 = load i8, ptr %3, align 1
  %19 = zext i8 %18 to i32
  %20 = load i8, ptr @WD, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %61

23:                                               ; preds = %17
  %24 = load i8, ptr %3, align 1
  %25 = zext i8 %24 to i32
  %26 = load i8, ptr %4, align 1
  %27 = zext i8 %26 to i32
  %28 = add nsw i32 %25, %27
  %29 = and i32 %28, 1
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %57, label %31

31:                                               ; preds = %23
  %32 = load i8, ptr %3, align 1
  %33 = load i8, ptr %4, align 1
  %34 = call zeroext i8 @ismasked(i8 noundef zeroext %32, i8 noundef zeroext %33)
  %35 = icmp ne i8 %34, 0
  br i1 %35, label %57, label %36

36:                                               ; preds = %31
  %37 = load i8, ptr %3, align 1
  %38 = zext i8 %37 to i32
  %39 = and i32 %38, 7
  %40 = ashr i32 128, %39
  %41 = load ptr, ptr @qrframe, align 8
  %42 = load i8, ptr %3, align 1
  %43 = zext i8 %42 to i32
  %44 = ashr i32 %43, 3
  %45 = load i8, ptr %4, align 1
  %46 = zext i8 %45 to i32
  %47 = load i8, ptr @WDB, align 1
  %48 = zext i8 %47 to i32
  %49 = mul nsw i32 %46, %48
  %50 = add nsw i32 %44, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, ptr %41, i64 %51
  %53 = load i8, ptr %52, align 1
  %54 = zext i8 %53 to i32
  %55 = xor i32 %54, %40
  %56 = trunc i32 %55 to i8
  store i8 %56, ptr %52, align 1
  br label %57

57:                                               ; preds = %36, %31, %23
  br label %58

58:                                               ; preds = %57
  %59 = load i8, ptr %3, align 1
  %60 = add i8 %59, 1
  store i8 %60, ptr %3, align 1
  br label %17, !llvm.loop !22

61:                                               ; preds = %17
  br label %62

62:                                               ; preds = %61
  %63 = load i8, ptr %4, align 1
  %64 = add i8 %63, 1
  store i8 %64, ptr %4, align 1
  br label %10, !llvm.loop !23

65:                                               ; preds = %10
  br label %569

66:                                               ; preds = %1
  store i8 0, ptr %4, align 1
  br label %67

67:                                               ; preds = %116, %66
  %68 = load i8, ptr %4, align 1
  %69 = zext i8 %68 to i32
  %70 = load i8, ptr @WD, align 1
  %71 = zext i8 %70 to i32
  %72 = icmp slt i32 %69, %71
  br i1 %72, label %73, label %119

73:                                               ; preds = %67
  store i8 0, ptr %3, align 1
  br label %74

74:                                               ; preds = %112, %73
  %75 = load i8, ptr %3, align 1
  %76 = zext i8 %75 to i32
  %77 = load i8, ptr @WD, align 1
  %78 = zext i8 %77 to i32
  %79 = icmp slt i32 %76, %78
  br i1 %79, label %80, label %115

80:                                               ; preds = %74
  %81 = load i8, ptr %4, align 1
  %82 = zext i8 %81 to i32
  %83 = and i32 %82, 1
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %111, label %85

85:                                               ; preds = %80
  %86 = load i8, ptr %3, align 1
  %87 = load i8, ptr %4, align 1
  %88 = call zeroext i8 @ismasked(i8 noundef zeroext %86, i8 noundef zeroext %87)
  %89 = icmp ne i8 %88, 0
  br i1 %89, label %111, label %90

90:                                               ; preds = %85
  %91 = load i8, ptr %3, align 1
  %92 = zext i8 %91 to i32
  %93 = and i32 %92, 7
  %94 = ashr i32 128, %93
  %95 = load ptr, ptr @qrframe, align 8
  %96 = load i8, ptr %3, align 1
  %97 = zext i8 %96 to i32
  %98 = ashr i32 %97, 3
  %99 = load i8, ptr %4, align 1
  %100 = zext i8 %99 to i32
  %101 = load i8, ptr @WDB, align 1
  %102 = zext i8 %101 to i32
  %103 = mul nsw i32 %100, %102
  %104 = add nsw i32 %98, %103
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, ptr %95, i64 %105
  %107 = load i8, ptr %106, align 1
  %108 = zext i8 %107 to i32
  %109 = xor i32 %108, %94
  %110 = trunc i32 %109 to i8
  store i8 %110, ptr %106, align 1
  br label %111

111:                                              ; preds = %90, %85, %80
  br label %112

112:                                              ; preds = %111
  %113 = load i8, ptr %3, align 1
  %114 = add i8 %113, 1
  store i8 %114, ptr %3, align 1
  br label %74, !llvm.loop !24

115:                                              ; preds = %74
  br label %116

116:                                              ; preds = %115
  %117 = load i8, ptr %4, align 1
  %118 = add i8 %117, 1
  store i8 %118, ptr %4, align 1
  br label %67, !llvm.loop !25

119:                                              ; preds = %67
  br label %569

120:                                              ; preds = %1
  store i8 0, ptr %4, align 1
  br label %121

121:                                              ; preds = %175, %120
  %122 = load i8, ptr %4, align 1
  %123 = zext i8 %122 to i32
  %124 = load i8, ptr @WD, align 1
  %125 = zext i8 %124 to i32
  %126 = icmp slt i32 %123, %125
  br i1 %126, label %127, label %178

127:                                              ; preds = %121
  store i8 0, ptr %5, align 1
  store i8 0, ptr %3, align 1
  br label %128

128:                                              ; preds = %169, %127
  %129 = load i8, ptr %3, align 1
  %130 = zext i8 %129 to i32
  %131 = load i8, ptr @WD, align 1
  %132 = zext i8 %131 to i32
  %133 = icmp slt i32 %130, %132
  br i1 %133, label %134, label %174

134:                                              ; preds = %128
  %135 = load i8, ptr %5, align 1
  %136 = zext i8 %135 to i32
  %137 = icmp eq i32 %136, 3
  br i1 %137, label %138, label %139

138:                                              ; preds = %134
  store i8 0, ptr %5, align 1
  br label %139

139:                                              ; preds = %138, %134
  %140 = load i8, ptr %5, align 1
  %141 = icmp ne i8 %140, 0
  br i1 %141, label %168, label %142

142:                                              ; preds = %139
  %143 = load i8, ptr %3, align 1
  %144 = load i8, ptr %4, align 1
  %145 = call zeroext i8 @ismasked(i8 noundef zeroext %143, i8 noundef zeroext %144)
  %146 = icmp ne i8 %145, 0
  br i1 %146, label %168, label %147

147:                                              ; preds = %142
  %148 = load i8, ptr %3, align 1
  %149 = zext i8 %148 to i32
  %150 = and i32 %149, 7
  %151 = ashr i32 128, %150
  %152 = load ptr, ptr @qrframe, align 8
  %153 = load i8, ptr %3, align 1
  %154 = zext i8 %153 to i32
  %155 = ashr i32 %154, 3
  %156 = load i8, ptr %4, align 1
  %157 = zext i8 %156 to i32
  %158 = load i8, ptr @WDB, align 1
  %159 = zext i8 %158 to i32
  %160 = mul nsw i32 %157, %159
  %161 = add nsw i32 %155, %160
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, ptr %152, i64 %162
  %164 = load i8, ptr %163, align 1
  %165 = zext i8 %164 to i32
  %166 = xor i32 %165, %151
  %167 = trunc i32 %166 to i8
  store i8 %167, ptr %163, align 1
  br label %168

168:                                              ; preds = %147, %142, %139
  br label %169

169:                                              ; preds = %168
  %170 = load i8, ptr %3, align 1
  %171 = add i8 %170, 1
  store i8 %171, ptr %3, align 1
  %172 = load i8, ptr %5, align 1
  %173 = add i8 %172, 1
  store i8 %173, ptr %5, align 1
  br label %128, !llvm.loop !26

174:                                              ; preds = %128
  br label %175

175:                                              ; preds = %174
  %176 = load i8, ptr %4, align 1
  %177 = add i8 %176, 1
  store i8 %177, ptr %4, align 1
  br label %121, !llvm.loop !27

178:                                              ; preds = %121
  br label %569

179:                                              ; preds = %1
  store i8 0, ptr %6, align 1
  store i8 0, ptr %4, align 1
  br label %180

180:                                              ; preds = %240, %179
  %181 = load i8, ptr %4, align 1
  %182 = zext i8 %181 to i32
  %183 = load i8, ptr @WD, align 1
  %184 = zext i8 %183 to i32
  %185 = icmp slt i32 %182, %184
  br i1 %185, label %186, label %245

186:                                              ; preds = %180
  %187 = load i8, ptr %6, align 1
  %188 = zext i8 %187 to i32
  %189 = icmp eq i32 %188, 3
  br i1 %189, label %190, label %191

190:                                              ; preds = %186
  store i8 0, ptr %6, align 1
  br label %191

191:                                              ; preds = %190, %186
  %192 = load i8, ptr %6, align 1
  store i8 %192, ptr %5, align 1
  store i8 0, ptr %3, align 1
  br label %193

193:                                              ; preds = %234, %191
  %194 = load i8, ptr %3, align 1
  %195 = zext i8 %194 to i32
  %196 = load i8, ptr @WD, align 1
  %197 = zext i8 %196 to i32
  %198 = icmp slt i32 %195, %197
  br i1 %198, label %199, label %239

199:                                              ; preds = %193
  %200 = load i8, ptr %5, align 1
  %201 = zext i8 %200 to i32
  %202 = icmp eq i32 %201, 3
  br i1 %202, label %203, label %204

203:                                              ; preds = %199
  store i8 0, ptr %5, align 1
  br label %204

204:                                              ; preds = %203, %199
  %205 = load i8, ptr %5, align 1
  %206 = icmp ne i8 %205, 0
  br i1 %206, label %233, label %207

207:                                              ; preds = %204
  %208 = load i8, ptr %3, align 1
  %209 = load i8, ptr %4, align 1
  %210 = call zeroext i8 @ismasked(i8 noundef zeroext %208, i8 noundef zeroext %209)
  %211 = icmp ne i8 %210, 0
  br i1 %211, label %233, label %212

212:                                              ; preds = %207
  %213 = load i8, ptr %3, align 1
  %214 = zext i8 %213 to i32
  %215 = and i32 %214, 7
  %216 = ashr i32 128, %215
  %217 = load ptr, ptr @qrframe, align 8
  %218 = load i8, ptr %3, align 1
  %219 = zext i8 %218 to i32
  %220 = ashr i32 %219, 3
  %221 = load i8, ptr %4, align 1
  %222 = zext i8 %221 to i32
  %223 = load i8, ptr @WDB, align 1
  %224 = zext i8 %223 to i32
  %225 = mul nsw i32 %222, %224
  %226 = add nsw i32 %220, %225
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i8, ptr %217, i64 %227
  %229 = load i8, ptr %228, align 1
  %230 = zext i8 %229 to i32
  %231 = xor i32 %230, %216
  %232 = trunc i32 %231 to i8
  store i8 %232, ptr %228, align 1
  br label %233

233:                                              ; preds = %212, %207, %204
  br label %234

234:                                              ; preds = %233
  %235 = load i8, ptr %3, align 1
  %236 = add i8 %235, 1
  store i8 %236, ptr %3, align 1
  %237 = load i8, ptr %5, align 1
  %238 = add i8 %237, 1
  store i8 %238, ptr %5, align 1
  br label %193, !llvm.loop !28

239:                                              ; preds = %193
  br label %240

240:                                              ; preds = %239
  %241 = load i8, ptr %4, align 1
  %242 = add i8 %241, 1
  store i8 %242, ptr %4, align 1
  %243 = load i8, ptr %6, align 1
  %244 = add i8 %243, 1
  store i8 %244, ptr %6, align 1
  br label %180, !llvm.loop !29

245:                                              ; preds = %180
  br label %569

246:                                              ; preds = %1
  store i8 0, ptr %4, align 1
  br label %247

247:                                              ; preds = %311, %246
  %248 = load i8, ptr %4, align 1
  %249 = zext i8 %248 to i32
  %250 = load i8, ptr @WD, align 1
  %251 = zext i8 %250 to i32
  %252 = icmp slt i32 %249, %251
  br i1 %252, label %253, label %314

253:                                              ; preds = %247
  store i8 0, ptr %5, align 1
  %254 = load i8, ptr %4, align 1
  %255 = zext i8 %254 to i32
  %256 = ashr i32 %255, 1
  %257 = and i32 %256, 1
  %258 = trunc i32 %257 to i8
  store i8 %258, ptr %6, align 1
  store i8 0, ptr %3, align 1
  br label %259

259:                                              ; preds = %305, %253
  %260 = load i8, ptr %3, align 1
  %261 = zext i8 %260 to i32
  %262 = load i8, ptr @WD, align 1
  %263 = zext i8 %262 to i32
  %264 = icmp slt i32 %261, %263
  br i1 %264, label %265, label %310

265:                                              ; preds = %259
  %266 = load i8, ptr %5, align 1
  %267 = zext i8 %266 to i32
  %268 = icmp eq i32 %267, 3
  br i1 %268, label %269, label %275

269:                                              ; preds = %265
  store i8 0, ptr %5, align 1
  %270 = load i8, ptr %6, align 1
  %271 = icmp ne i8 %270, 0
  %272 = xor i1 %271, true
  %273 = zext i1 %272 to i32
  %274 = trunc i32 %273 to i8
  store i8 %274, ptr %6, align 1
  br label %275

275:                                              ; preds = %269, %265
  %276 = load i8, ptr %6, align 1
  %277 = icmp ne i8 %276, 0
  br i1 %277, label %304, label %278

278:                                              ; preds = %275
  %279 = load i8, ptr %3, align 1
  %280 = load i8, ptr %4, align 1
  %281 = call zeroext i8 @ismasked(i8 noundef zeroext %279, i8 noundef zeroext %280)
  %282 = icmp ne i8 %281, 0
  br i1 %282, label %304, label %283

283:                                              ; preds = %278
  %284 = load i8, ptr %3, align 1
  %285 = zext i8 %284 to i32
  %286 = and i32 %285, 7
  %287 = ashr i32 128, %286
  %288 = load ptr, ptr @qrframe, align 8
  %289 = load i8, ptr %3, align 1
  %290 = zext i8 %289 to i32
  %291 = ashr i32 %290, 3
  %292 = load i8, ptr %4, align 1
  %293 = zext i8 %292 to i32
  %294 = load i8, ptr @WDB, align 1
  %295 = zext i8 %294 to i32
  %296 = mul nsw i32 %293, %295
  %297 = add nsw i32 %291, %296
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i8, ptr %288, i64 %298
  %300 = load i8, ptr %299, align 1
  %301 = zext i8 %300 to i32
  %302 = xor i32 %301, %287
  %303 = trunc i32 %302 to i8
  store i8 %303, ptr %299, align 1
  br label %304

304:                                              ; preds = %283, %278, %275
  br label %305

305:                                              ; preds = %304
  %306 = load i8, ptr %3, align 1
  %307 = add i8 %306, 1
  store i8 %307, ptr %3, align 1
  %308 = load i8, ptr %5, align 1
  %309 = add i8 %308, 1
  store i8 %309, ptr %5, align 1
  br label %259, !llvm.loop !30

310:                                              ; preds = %259
  br label %311

311:                                              ; preds = %310
  %312 = load i8, ptr %4, align 1
  %313 = add i8 %312, 1
  store i8 %313, ptr %4, align 1
  br label %247, !llvm.loop !31

314:                                              ; preds = %247
  br label %569

315:                                              ; preds = %1
  store i8 0, ptr %6, align 1
  store i8 0, ptr %4, align 1
  br label %316

316:                                              ; preds = %393, %315
  %317 = load i8, ptr %4, align 1
  %318 = zext i8 %317 to i32
  %319 = load i8, ptr @WD, align 1
  %320 = zext i8 %319 to i32
  %321 = icmp slt i32 %318, %320
  br i1 %321, label %322, label %398

322:                                              ; preds = %316
  %323 = load i8, ptr %6, align 1
  %324 = zext i8 %323 to i32
  %325 = icmp eq i32 %324, 3
  br i1 %325, label %326, label %327

326:                                              ; preds = %322
  store i8 0, ptr %6, align 1
  br label %327

327:                                              ; preds = %326, %322
  store i8 0, ptr %5, align 1
  store i8 0, ptr %3, align 1
  br label %328

328:                                              ; preds = %387, %327
  %329 = load i8, ptr %3, align 1
  %330 = zext i8 %329 to i32
  %331 = load i8, ptr @WD, align 1
  %332 = zext i8 %331 to i32
  %333 = icmp slt i32 %330, %332
  br i1 %333, label %334, label %392

334:                                              ; preds = %328
  %335 = load i8, ptr %5, align 1
  %336 = zext i8 %335 to i32
  %337 = icmp eq i32 %336, 3
  br i1 %337, label %338, label %339

338:                                              ; preds = %334
  store i8 0, ptr %5, align 1
  br label %339

339:                                              ; preds = %338, %334
  %340 = load i8, ptr %3, align 1
  %341 = zext i8 %340 to i32
  %342 = load i8, ptr %4, align 1
  %343 = zext i8 %342 to i32
  %344 = and i32 %341, %343
  %345 = and i32 %344, 1
  %346 = load i8, ptr %5, align 1
  %347 = icmp ne i8 %346, 0
  %348 = xor i1 %347, true
  %349 = zext i1 %348 to i32
  %350 = load i8, ptr %6, align 1
  %351 = icmp ne i8 %350, 0
  %352 = xor i1 %351, true
  %353 = zext i1 %352 to i32
  %354 = or i32 %349, %353
  %355 = icmp ne i32 %354, 0
  %356 = xor i1 %355, true
  %357 = zext i1 %356 to i32
  %358 = add nsw i32 %345, %357
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %386, label %360

360:                                              ; preds = %339
  %361 = load i8, ptr %3, align 1
  %362 = load i8, ptr %4, align 1
  %363 = call zeroext i8 @ismasked(i8 noundef zeroext %361, i8 noundef zeroext %362)
  %364 = icmp ne i8 %363, 0
  br i1 %364, label %386, label %365

365:                                              ; preds = %360
  %366 = load i8, ptr %3, align 1
  %367 = zext i8 %366 to i32
  %368 = and i32 %367, 7
  %369 = ashr i32 128, %368
  %370 = load ptr, ptr @qrframe, align 8
  %371 = load i8, ptr %3, align 1
  %372 = zext i8 %371 to i32
  %373 = ashr i32 %372, 3
  %374 = load i8, ptr %4, align 1
  %375 = zext i8 %374 to i32
  %376 = load i8, ptr @WDB, align 1
  %377 = zext i8 %376 to i32
  %378 = mul nsw i32 %375, %377
  %379 = add nsw i32 %373, %378
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i8, ptr %370, i64 %380
  %382 = load i8, ptr %381, align 1
  %383 = zext i8 %382 to i32
  %384 = xor i32 %383, %369
  %385 = trunc i32 %384 to i8
  store i8 %385, ptr %381, align 1
  br label %386

386:                                              ; preds = %365, %360, %339
  br label %387

387:                                              ; preds = %386
  %388 = load i8, ptr %3, align 1
  %389 = add i8 %388, 1
  store i8 %389, ptr %3, align 1
  %390 = load i8, ptr %5, align 1
  %391 = add i8 %390, 1
  store i8 %391, ptr %5, align 1
  br label %328, !llvm.loop !32

392:                                              ; preds = %328
  br label %393

393:                                              ; preds = %392
  %394 = load i8, ptr %4, align 1
  %395 = add i8 %394, 1
  store i8 %395, ptr %4, align 1
  %396 = load i8, ptr %6, align 1
  %397 = add i8 %396, 1
  store i8 %397, ptr %6, align 1
  br label %316, !llvm.loop !33

398:                                              ; preds = %316
  br label %569

399:                                              ; preds = %1
  store i8 0, ptr %6, align 1
  store i8 0, ptr %4, align 1
  br label %400

400:                                              ; preds = %478, %399
  %401 = load i8, ptr %4, align 1
  %402 = zext i8 %401 to i32
  %403 = load i8, ptr @WD, align 1
  %404 = zext i8 %403 to i32
  %405 = icmp slt i32 %402, %404
  br i1 %405, label %406, label %483

406:                                              ; preds = %400
  %407 = load i8, ptr %6, align 1
  %408 = zext i8 %407 to i32
  %409 = icmp eq i32 %408, 3
  br i1 %409, label %410, label %411

410:                                              ; preds = %406
  store i8 0, ptr %6, align 1
  br label %411

411:                                              ; preds = %410, %406
  store i8 0, ptr %5, align 1
  store i8 0, ptr %3, align 1
  br label %412

412:                                              ; preds = %472, %411
  %413 = load i8, ptr %3, align 1
  %414 = zext i8 %413 to i32
  %415 = load i8, ptr @WD, align 1
  %416 = zext i8 %415 to i32
  %417 = icmp slt i32 %414, %416
  br i1 %417, label %418, label %477

418:                                              ; preds = %412
  %419 = load i8, ptr %5, align 1
  %420 = zext i8 %419 to i32
  %421 = icmp eq i32 %420, 3
  br i1 %421, label %422, label %423

422:                                              ; preds = %418
  store i8 0, ptr %5, align 1
  br label %423

423:                                              ; preds = %422, %418
  %424 = load i8, ptr %3, align 1
  %425 = zext i8 %424 to i32
  %426 = load i8, ptr %4, align 1
  %427 = zext i8 %426 to i32
  %428 = and i32 %425, %427
  %429 = and i32 %428, 1
  %430 = load i8, ptr %5, align 1
  %431 = zext i8 %430 to i32
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %433, label %439

433:                                              ; preds = %423
  %434 = load i8, ptr %5, align 1
  %435 = zext i8 %434 to i32
  %436 = load i8, ptr %6, align 1
  %437 = zext i8 %436 to i32
  %438 = icmp eq i32 %435, %437
  br label %439

439:                                              ; preds = %433, %423
  %440 = phi i1 [ false, %423 ], [ %438, %433 ]
  %441 = zext i1 %440 to i32
  %442 = add nsw i32 %429, %441
  %443 = and i32 %442, 1
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %471, label %445

445:                                              ; preds = %439
  %446 = load i8, ptr %3, align 1
  %447 = load i8, ptr %4, align 1
  %448 = call zeroext i8 @ismasked(i8 noundef zeroext %446, i8 noundef zeroext %447)
  %449 = icmp ne i8 %448, 0
  br i1 %449, label %471, label %450

450:                                              ; preds = %445
  %451 = load i8, ptr %3, align 1
  %452 = zext i8 %451 to i32
  %453 = and i32 %452, 7
  %454 = ashr i32 128, %453
  %455 = load ptr, ptr @qrframe, align 8
  %456 = load i8, ptr %3, align 1
  %457 = zext i8 %456 to i32
  %458 = ashr i32 %457, 3
  %459 = load i8, ptr %4, align 1
  %460 = zext i8 %459 to i32
  %461 = load i8, ptr @WDB, align 1
  %462 = zext i8 %461 to i32
  %463 = mul nsw i32 %460, %462
  %464 = add nsw i32 %458, %463
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds i8, ptr %455, i64 %465
  %467 = load i8, ptr %466, align 1
  %468 = zext i8 %467 to i32
  %469 = xor i32 %468, %454
  %470 = trunc i32 %469 to i8
  store i8 %470, ptr %466, align 1
  br label %471

471:                                              ; preds = %450, %445, %439
  br label %472

472:                                              ; preds = %471
  %473 = load i8, ptr %3, align 1
  %474 = add i8 %473, 1
  store i8 %474, ptr %3, align 1
  %475 = load i8, ptr %5, align 1
  %476 = add i8 %475, 1
  store i8 %476, ptr %5, align 1
  br label %412, !llvm.loop !34

477:                                              ; preds = %412
  br label %478

478:                                              ; preds = %477
  %479 = load i8, ptr %4, align 1
  %480 = add i8 %479, 1
  store i8 %480, ptr %4, align 1
  %481 = load i8, ptr %6, align 1
  %482 = add i8 %481, 1
  store i8 %482, ptr %6, align 1
  br label %400, !llvm.loop !35

483:                                              ; preds = %400
  br label %569

484:                                              ; preds = %1
  store i8 0, ptr %6, align 1
  store i8 0, ptr %4, align 1
  br label %485

485:                                              ; preds = %563, %484
  %486 = load i8, ptr %4, align 1
  %487 = zext i8 %486 to i32
  %488 = load i8, ptr @WD, align 1
  %489 = zext i8 %488 to i32
  %490 = icmp slt i32 %487, %489
  br i1 %490, label %491, label %568

491:                                              ; preds = %485
  %492 = load i8, ptr %6, align 1
  %493 = zext i8 %492 to i32
  %494 = icmp eq i32 %493, 3
  br i1 %494, label %495, label %496

495:                                              ; preds = %491
  store i8 0, ptr %6, align 1
  br label %496

496:                                              ; preds = %495, %491
  store i8 0, ptr %5, align 1
  store i8 0, ptr %3, align 1
  br label %497

497:                                              ; preds = %557, %496
  %498 = load i8, ptr %3, align 1
  %499 = zext i8 %498 to i32
  %500 = load i8, ptr @WD, align 1
  %501 = zext i8 %500 to i32
  %502 = icmp slt i32 %499, %501
  br i1 %502, label %503, label %562

503:                                              ; preds = %497
  %504 = load i8, ptr %5, align 1
  %505 = zext i8 %504 to i32
  %506 = icmp eq i32 %505, 3
  br i1 %506, label %507, label %508

507:                                              ; preds = %503
  store i8 0, ptr %5, align 1
  br label %508

508:                                              ; preds = %507, %503
  %509 = load i8, ptr %5, align 1
  %510 = zext i8 %509 to i32
  %511 = icmp ne i32 %510, 0
  br i1 %511, label %512, label %518

512:                                              ; preds = %508
  %513 = load i8, ptr %5, align 1
  %514 = zext i8 %513 to i32
  %515 = load i8, ptr %6, align 1
  %516 = zext i8 %515 to i32
  %517 = icmp eq i32 %514, %516
  br label %518

518:                                              ; preds = %512, %508
  %519 = phi i1 [ false, %508 ], [ %517, %512 ]
  %520 = zext i1 %519 to i32
  %521 = load i8, ptr %3, align 1
  %522 = zext i8 %521 to i32
  %523 = load i8, ptr %4, align 1
  %524 = zext i8 %523 to i32
  %525 = add nsw i32 %522, %524
  %526 = and i32 %525, 1
  %527 = add nsw i32 %520, %526
  %528 = and i32 %527, 1
  %529 = icmp ne i32 %528, 0
  br i1 %529, label %556, label %530

530:                                              ; preds = %518
  %531 = load i8, ptr %3, align 1
  %532 = load i8, ptr %4, align 1
  %533 = call zeroext i8 @ismasked(i8 noundef zeroext %531, i8 noundef zeroext %532)
  %534 = icmp ne i8 %533, 0
  br i1 %534, label %556, label %535

535:                                              ; preds = %530
  %536 = load i8, ptr %3, align 1
  %537 = zext i8 %536 to i32
  %538 = and i32 %537, 7
  %539 = ashr i32 128, %538
  %540 = load ptr, ptr @qrframe, align 8
  %541 = load i8, ptr %3, align 1
  %542 = zext i8 %541 to i32
  %543 = ashr i32 %542, 3
  %544 = load i8, ptr %4, align 1
  %545 = zext i8 %544 to i32
  %546 = load i8, ptr @WDB, align 1
  %547 = zext i8 %546 to i32
  %548 = mul nsw i32 %545, %547
  %549 = add nsw i32 %543, %548
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds i8, ptr %540, i64 %550
  %552 = load i8, ptr %551, align 1
  %553 = zext i8 %552 to i32
  %554 = xor i32 %553, %539
  %555 = trunc i32 %554 to i8
  store i8 %555, ptr %551, align 1
  br label %556

556:                                              ; preds = %535, %530, %518
  br label %557

557:                                              ; preds = %556
  %558 = load i8, ptr %3, align 1
  %559 = add i8 %558, 1
  store i8 %559, ptr %3, align 1
  %560 = load i8, ptr %5, align 1
  %561 = add i8 %560, 1
  store i8 %561, ptr %5, align 1
  br label %497, !llvm.loop !36

562:                                              ; preds = %497
  br label %563

563:                                              ; preds = %562
  %564 = load i8, ptr %4, align 1
  %565 = add i8 %564, 1
  store i8 %565, ptr %4, align 1
  %566 = load i8, ptr %6, align 1
  %567 = add i8 %566, 1
  store i8 %567, ptr %6, align 1
  br label %485, !llvm.loop !37

568:                                              ; preds = %485
  br label %569

569:                                              ; preds = %1, %568, %483, %398, %314, %245, %178, %119, %65
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @addfmt(i8 noundef zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  %6 = load i8, ptr @ECCLEVEL, align 1
  %7 = zext i8 %6 to i32
  %8 = sub nsw i32 %7, 1
  %9 = trunc i32 %8 to i8
  store i8 %9, ptr %5, align 1
  %10 = load i8, ptr %2, align 1
  %11 = zext i8 %10 to i32
  %12 = load i8, ptr %5, align 1
  %13 = zext i8 %12 to i32
  %14 = shl i32 %13, 3
  %15 = add nsw i32 %11, %14
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [32 x i32], ptr @fmtword, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4
  store i32 %18, ptr %3, align 4
  store i8 0, ptr %4, align 1
  br label %19

19:                                               ; preds = %88, %1
  %20 = load i8, ptr %4, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp slt i32 %21, 8
  br i1 %22, label %23, label %93

23:                                               ; preds = %19
  %24 = load i32, ptr %3, align 4
  %25 = and i32 %24, 1
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %87

27:                                               ; preds = %23
  %28 = load i8, ptr @WD, align 1
  %29 = zext i8 %28 to i32
  %30 = sub nsw i32 %29, 1
  %31 = load i8, ptr %4, align 1
  %32 = zext i8 %31 to i32
  %33 = sub nsw i32 %30, %32
  %34 = and i32 %33, 7
  %35 = ashr i32 128, %34
  %36 = load ptr, ptr @qrframe, align 8
  %37 = load i8, ptr @WD, align 1
  %38 = zext i8 %37 to i32
  %39 = sub nsw i32 %38, 1
  %40 = load i8, ptr %4, align 1
  %41 = zext i8 %40 to i32
  %42 = sub nsw i32 %39, %41
  %43 = ashr i32 %42, 3
  %44 = load i8, ptr @WDB, align 1
  %45 = zext i8 %44 to i32
  %46 = mul nsw i32 8, %45
  %47 = add nsw i32 %43, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, ptr %36, i64 %48
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i32
  %52 = or i32 %51, %35
  %53 = trunc i32 %52 to i8
  store i8 %53, ptr %49, align 1
  %54 = load i8, ptr %4, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp slt i32 %55, 6
  br i1 %56, label %57, label %71

57:                                               ; preds = %27
  %58 = load ptr, ptr @qrframe, align 8
  %59 = load i8, ptr %4, align 1
  %60 = zext i8 %59 to i32
  %61 = load i8, ptr @WDB, align 1
  %62 = zext i8 %61 to i32
  %63 = mul nsw i32 %60, %62
  %64 = add nsw i32 1, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, ptr %58, i64 %65
  %67 = load i8, ptr %66, align 1
  %68 = zext i8 %67 to i32
  %69 = or i32 %68, 128
  %70 = trunc i32 %69 to i8
  store i8 %70, ptr %66, align 1
  br label %86

71:                                               ; preds = %27
  %72 = load ptr, ptr @qrframe, align 8
  %73 = load i8, ptr %4, align 1
  %74 = zext i8 %73 to i32
  %75 = add nsw i32 %74, 1
  %76 = load i8, ptr @WDB, align 1
  %77 = zext i8 %76 to i32
  %78 = mul nsw i32 %75, %77
  %79 = add nsw i32 1, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, ptr %72, i64 %80
  %82 = load i8, ptr %81, align 1
  %83 = zext i8 %82 to i32
  %84 = or i32 %83, 128
  %85 = trunc i32 %84 to i8
  store i8 %85, ptr %81, align 1
  br label %86

86:                                               ; preds = %71, %57
  br label %87

87:                                               ; preds = %86, %23
  br label %88

88:                                               ; preds = %87
  %89 = load i8, ptr %4, align 1
  %90 = add i8 %89, 1
  store i8 %90, ptr %4, align 1
  %91 = load i32, ptr %3, align 4
  %92 = lshr i32 %91, 1
  store i32 %92, ptr %3, align 4
  br label %19, !llvm.loop !38

93:                                               ; preds = %19
  store i8 0, ptr %4, align 1
  br label %94

94:                                               ; preds = %157, %93
  %95 = load i8, ptr %4, align 1
  %96 = zext i8 %95 to i32
  %97 = icmp slt i32 %96, 7
  br i1 %97, label %98, label %162

98:                                               ; preds = %94
  %99 = load i32, ptr %3, align 4
  %100 = and i32 %99, 1
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %156

102:                                              ; preds = %98
  %103 = load ptr, ptr @qrframe, align 8
  %104 = load i8, ptr @WD, align 1
  %105 = zext i8 %104 to i32
  %106 = sub nsw i32 %105, 7
  %107 = load i8, ptr %4, align 1
  %108 = zext i8 %107 to i32
  %109 = add nsw i32 %106, %108
  %110 = load i8, ptr @WDB, align 1
  %111 = zext i8 %110 to i32
  %112 = mul nsw i32 %109, %111
  %113 = add nsw i32 1, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, ptr %103, i64 %114
  %116 = load i8, ptr %115, align 1
  %117 = zext i8 %116 to i32
  %118 = or i32 %117, 128
  %119 = trunc i32 %118 to i8
  store i8 %119, ptr %115, align 1
  %120 = load i8, ptr %4, align 1
  %121 = icmp ne i8 %120, 0
  br i1 %121, label %122, label %143

122:                                              ; preds = %102
  %123 = load i8, ptr %4, align 1
  %124 = zext i8 %123 to i32
  %125 = sub nsw i32 6, %124
  %126 = and i32 %125, 7
  %127 = ashr i32 128, %126
  %128 = load ptr, ptr @qrframe, align 8
  %129 = load i8, ptr %4, align 1
  %130 = zext i8 %129 to i32
  %131 = sub nsw i32 6, %130
  %132 = ashr i32 %131, 3
  %133 = load i8, ptr @WDB, align 1
  %134 = zext i8 %133 to i32
  %135 = mul nsw i32 8, %134
  %136 = add nsw i32 %132, %135
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, ptr %128, i64 %137
  %139 = load i8, ptr %138, align 1
  %140 = zext i8 %139 to i32
  %141 = or i32 %140, %127
  %142 = trunc i32 %141 to i8
  store i8 %142, ptr %138, align 1
  br label %155

143:                                              ; preds = %102
  %144 = load ptr, ptr @qrframe, align 8
  %145 = load i8, ptr @WDB, align 1
  %146 = zext i8 %145 to i32
  %147 = mul nsw i32 8, %146
  %148 = add nsw i32 0, %147
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, ptr %144, i64 %149
  %151 = load i8, ptr %150, align 1
  %152 = zext i8 %151 to i32
  %153 = or i32 %152, 1
  %154 = trunc i32 %153 to i8
  store i8 %154, ptr %150, align 1
  br label %155

155:                                              ; preds = %143, %122
  br label %156

156:                                              ; preds = %155, %98
  br label %157

157:                                              ; preds = %156
  %158 = load i8, ptr %4, align 1
  %159 = add i8 %158, 1
  store i8 %159, ptr %4, align 1
  %160 = load i32, ptr %3, align 4
  %161 = lshr i32 %160, 1
  store i32 %161, ptr %3, align 4
  br label %94, !llvm.loop !39

162:                                              ; preds = %94
  ret void
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal void @initrspoly(i8 noundef zeroext %0, ptr noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store i8 %0, ptr %3, align 1
  store ptr %1, ptr %4, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds i8, ptr %7, i64 0
  store i8 1, ptr %8, align 1
  store i8 0, ptr %5, align 1
  br label %9

9:                                                ; preds = %98, %2
  %10 = load i8, ptr %5, align 1
  %11 = zext i8 %10 to i32
  %12 = load i8, ptr %3, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %101

15:                                               ; preds = %9
  %16 = load ptr, ptr %4, align 8
  %17 = load i8, ptr %5, align 1
  %18 = zext i8 %17 to i32
  %19 = add nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, ptr %16, i64 %20
  store i8 1, ptr %21, align 1
  %22 = load i8, ptr %5, align 1
  store i8 %22, ptr %6, align 1
  br label %23

23:                                               ; preds = %78, %15
  %24 = load i8, ptr %6, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %81

27:                                               ; preds = %23
  %28 = load ptr, ptr %4, align 8
  %29 = load i8, ptr %6, align 1
  %30 = zext i8 %29 to i64
  %31 = getelementptr inbounds nuw i8, ptr %28, i64 %30
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %62

35:                                               ; preds = %27
  %36 = load ptr, ptr %4, align 8
  %37 = load i8, ptr %6, align 1
  %38 = zext i8 %37 to i32
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, ptr %36, i64 %40
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = load ptr, ptr %4, align 8
  %45 = load i8, ptr %6, align 1
  %46 = zext i8 %45 to i64
  %47 = getelementptr inbounds nuw i8, ptr %44, i64 %46
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i64
  %50 = getelementptr inbounds nuw [256 x i8], ptr @g0log, i64 0, i64 %49
  %51 = load i8, ptr %50, align 1
  %52 = zext i8 %51 to i32
  %53 = load i8, ptr %5, align 1
  %54 = zext i8 %53 to i32
  %55 = add nsw i32 %52, %54
  %56 = call i32 @modnn(i32 noundef %55)
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds nuw [256 x i8], ptr @g0exp, i64 0, i64 %57
  %59 = load i8, ptr %58, align 1
  %60 = zext i8 %59 to i32
  %61 = xor i32 %43, %60
  br label %71

62:                                               ; preds = %27
  %63 = load ptr, ptr %4, align 8
  %64 = load i8, ptr %6, align 1
  %65 = zext i8 %64 to i32
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, ptr %63, i64 %67
  %69 = load i8, ptr %68, align 1
  %70 = zext i8 %69 to i32
  br label %71

71:                                               ; preds = %62, %35
  %72 = phi i32 [ %61, %35 ], [ %70, %62 ]
  %73 = trunc i32 %72 to i8
  %74 = load ptr, ptr %4, align 8
  %75 = load i8, ptr %6, align 1
  %76 = zext i8 %75 to i64
  %77 = getelementptr inbounds nuw i8, ptr %74, i64 %76
  store i8 %73, ptr %77, align 1
  br label %78

78:                                               ; preds = %71
  %79 = load i8, ptr %6, align 1
  %80 = add i8 %79, -1
  store i8 %80, ptr %6, align 1
  br label %23, !llvm.loop !40

81:                                               ; preds = %23
  %82 = load ptr, ptr %4, align 8
  %83 = getelementptr inbounds i8, ptr %82, i64 0
  %84 = load i8, ptr %83, align 1
  %85 = zext i8 %84 to i64
  %86 = getelementptr inbounds nuw [256 x i8], ptr @g0log, i64 0, i64 %85
  %87 = load i8, ptr %86, align 1
  %88 = zext i8 %87 to i32
  %89 = load i8, ptr %5, align 1
  %90 = zext i8 %89 to i32
  %91 = add nsw i32 %88, %90
  %92 = call i32 @modnn(i32 noundef %91)
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds nuw [256 x i8], ptr @g0exp, i64 0, i64 %93
  %95 = load i8, ptr %94, align 1
  %96 = load ptr, ptr %4, align 8
  %97 = getelementptr inbounds i8, ptr %96, i64 0
  store i8 %95, ptr %97, align 1
  br label %98

98:                                               ; preds = %81
  %99 = load i8, ptr %5, align 1
  %100 = add i8 %99, 1
  store i8 %100, ptr %5, align 1
  br label %9, !llvm.loop !41

101:                                              ; preds = %9
  store i8 0, ptr %5, align 1
  br label %102

102:                                              ; preds = %121, %101
  %103 = load i8, ptr %5, align 1
  %104 = zext i8 %103 to i32
  %105 = load i8, ptr %3, align 1
  %106 = zext i8 %105 to i32
  %107 = icmp sle i32 %104, %106
  br i1 %107, label %108, label %124

108:                                              ; preds = %102
  %109 = load ptr, ptr %4, align 8
  %110 = load i8, ptr %5, align 1
  %111 = zext i8 %110 to i64
  %112 = getelementptr inbounds nuw i8, ptr %109, i64 %111
  %113 = load i8, ptr %112, align 1
  %114 = zext i8 %113 to i64
  %115 = getelementptr inbounds nuw [256 x i8], ptr @g0log, i64 0, i64 %114
  %116 = load i8, ptr %115, align 1
  %117 = load ptr, ptr %4, align 8
  %118 = load i8, ptr %5, align 1
  %119 = zext i8 %118 to i64
  %120 = getelementptr inbounds nuw i8, ptr %117, i64 %119
  store i8 %116, ptr %120, align 1
  br label %121

121:                                              ; preds = %108
  %122 = load i8, ptr %5, align 1
  %123 = add i8 %122, 1
  store i8 %123, ptr %5, align 1
  br label %102, !llvm.loop !42

124:                                              ; preds = %102
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @appendrs(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2, i8 noundef zeroext %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i8, align 1
  %8 = alloca ptr, align 8
  %9 = alloca i8, align 1
  %10 = alloca ptr, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  store ptr %0, ptr %6, align 8
  store i8 %1, ptr %7, align 1
  store ptr %2, ptr %8, align 8
  store i8 %3, ptr %9, align 1
  store ptr %4, ptr %10, align 8
  %14 = load ptr, ptr %8, align 8
  %15 = load i8, ptr %9, align 1
  %16 = zext i8 %15 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %14, i8 0, i64 %16, i1 false)
  store i8 0, ptr %11, align 1
  br label %17

17:                                               ; preds = %120, %5
  %18 = load i8, ptr %11, align 1
  %19 = zext i8 %18 to i32
  %20 = load i8, ptr %7, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %123

23:                                               ; preds = %17
  %24 = load ptr, ptr %6, align 8
  %25 = load i8, ptr %11, align 1
  %26 = zext i8 %25 to i64
  %27 = getelementptr inbounds nuw i8, ptr %24, i64 %26
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  %30 = load ptr, ptr %8, align 8
  %31 = getelementptr inbounds i8, ptr %30, i64 0
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = xor i32 %29, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [256 x i8], ptr @g0log, i64 0, i64 %35
  %37 = load i8, ptr %36, align 1
  store i8 %37, ptr %13, align 1
  %38 = load i8, ptr %13, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp ne i32 %39, 255
  br i1 %40, label %41, label %85

41:                                               ; preds = %23
  store i8 1, ptr %12, align 1
  br label %42

42:                                               ; preds = %81, %41
  %43 = load i8, ptr %12, align 1
  %44 = zext i8 %43 to i32
  %45 = load i8, ptr %9, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %84

48:                                               ; preds = %42
  %49 = load ptr, ptr %8, align 8
  %50 = load i8, ptr %12, align 1
  %51 = zext i8 %50 to i64
  %52 = getelementptr inbounds nuw i8, ptr %49, i64 %51
  %53 = load i8, ptr %52, align 1
  %54 = zext i8 %53 to i32
  %55 = load i8, ptr %13, align 1
  %56 = zext i8 %55 to i32
  %57 = load ptr, ptr %10, align 8
  %58 = load i8, ptr %9, align 1
  %59 = zext i8 %58 to i32
  %60 = load i8, ptr %12, align 1
  %61 = zext i8 %60 to i32
  %62 = sub nsw i32 %59, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, ptr %57, i64 %63
  %65 = load i8, ptr %64, align 1
  %66 = zext i8 %65 to i32
  %67 = add nsw i32 %56, %66
  %68 = call i32 @modnn(i32 noundef %67)
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds nuw [256 x i8], ptr @g0exp, i64 0, i64 %69
  %71 = load i8, ptr %70, align 1
  %72 = zext i8 %71 to i32
  %73 = xor i32 %54, %72
  %74 = trunc i32 %73 to i8
  %75 = load ptr, ptr %8, align 8
  %76 = load i8, ptr %12, align 1
  %77 = zext i8 %76 to i32
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, ptr %75, i64 %79
  store i8 %74, ptr %80, align 1
  br label %81

81:                                               ; preds = %48
  %82 = load i8, ptr %12, align 1
  %83 = add i8 %82, 1
  store i8 %83, ptr %12, align 1
  br label %42, !llvm.loop !43

84:                                               ; preds = %42
  br label %93

85:                                               ; preds = %23
  %86 = load ptr, ptr %8, align 8
  %87 = load ptr, ptr %8, align 8
  %88 = getelementptr inbounds i8, ptr %87, i64 1
  %89 = load i8, ptr %9, align 1
  %90 = zext i8 %89 to i32
  %91 = sub nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %86, ptr align 1 %88, i64 %92, i1 false)
  br label %93

93:                                               ; preds = %85, %84
  %94 = load i8, ptr %13, align 1
  %95 = zext i8 %94 to i32
  %96 = icmp eq i32 %95, 255
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  br label %111

98:                                               ; preds = %93
  %99 = load i8, ptr %13, align 1
  %100 = zext i8 %99 to i32
  %101 = load ptr, ptr %10, align 8
  %102 = getelementptr inbounds i8, ptr %101, i64 0
  %103 = load i8, ptr %102, align 1
  %104 = zext i8 %103 to i32
  %105 = add nsw i32 %100, %104
  %106 = call i32 @modnn(i32 noundef %105)
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds nuw [256 x i8], ptr @g0exp, i64 0, i64 %107
  %109 = load i8, ptr %108, align 1
  %110 = zext i8 %109 to i32
  br label %111

111:                                              ; preds = %98, %97
  %112 = phi i32 [ 0, %97 ], [ %110, %98 ]
  %113 = trunc i32 %112 to i8
  %114 = load ptr, ptr %8, align 8
  %115 = load i8, ptr %9, align 1
  %116 = zext i8 %115 to i32
  %117 = sub nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, ptr %114, i64 %118
  store i8 %113, ptr %119, align 1
  br label %120

120:                                              ; preds = %111
  %121 = load i8, ptr %11, align 1
  %122 = add i8 %121, 1
  store i8 %122, ptr %11, align 1
  br label %17, !llvm.loop !44

123:                                              ; preds = %17
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @modnn(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  br label %3

3:                                                ; preds = %6, %1
  %4 = load i32, ptr %2, align 4
  %5 = icmp uge i32 %4, 255
  br i1 %5, label %6, label %14

6:                                                ; preds = %3
  %7 = load i32, ptr %2, align 4
  %8 = sub i32 %7, 255
  store i32 %8, ptr %2, align 4
  %9 = load i32, ptr %2, align 4
  %10 = lshr i32 %9, 8
  %11 = load i32, ptr %2, align 4
  %12 = and i32 %11, 255
  %13 = add i32 %10, %12
  store i32 %13, ptr %2, align 4
  br label %3, !llvm.loop !45

14:                                               ; preds = %3
  %15 = load i32, ptr %2, align 4
  ret i32 %15
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @ismasked(i8 noundef zeroext %0, i8 noundef zeroext %1) #0 {
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
  %22 = load i8, ptr %4, align 1
  %23 = zext i8 %22 to i32
  %24 = mul nsw i32 %21, %23
  %25 = load i32, ptr %5, align 4
  %26 = add i32 %25, %24
  store i32 %26, ptr %5, align 4
  %27 = load i32, ptr %5, align 4
  %28 = lshr i32 %27, 1
  store i32 %28, ptr %5, align 4
  %29 = load i8, ptr %3, align 1
  %30 = zext i8 %29 to i32
  %31 = load i32, ptr %5, align 4
  %32 = add i32 %31, %30
  store i32 %32, ptr %5, align 4
  %33 = load ptr, ptr @framask, align 8
  %34 = load i32, ptr %5, align 4
  %35 = lshr i32 %34, 3
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds nuw i8, ptr %33, i64 %36
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = load i32, ptr %5, align 4
  %41 = and i32 %40, 7
  %42 = sub i32 7, %41
  %43 = ashr i32 %39, %42
  %44 = and i32 %43, 1
  %45 = trunc i32 %44 to i8
  ret i8 %45
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @badcheck() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 0, ptr %6, align 4
  store i32 0, ptr %7, align 4
  store i8 0, ptr %2, align 1
  br label %10

10:                                               ; preds = %221, %0
  %11 = load i8, ptr %2, align 1
  %12 = zext i8 %11 to i32
  %13 = load i8, ptr @WD, align 1
  %14 = zext i8 %13 to i32
  %15 = sub nsw i32 %14, 1
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %224

17:                                               ; preds = %10
  store i8 0, ptr %1, align 1
  br label %18

18:                                               ; preds = %217, %17
  %19 = load i8, ptr %1, align 1
  %20 = zext i8 %19 to i32
  %21 = load i8, ptr @WD, align 1
  %22 = zext i8 %21 to i32
  %23 = sub nsw i32 %22, 1
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %220

25:                                               ; preds = %18
  %26 = load ptr, ptr @qrframe, align 8
  %27 = load i8, ptr %1, align 1
  %28 = zext i8 %27 to i32
  %29 = ashr i32 %28, 3
  %30 = load i8, ptr %2, align 1
  %31 = zext i8 %30 to i32
  %32 = load i8, ptr @WDB, align 1
  %33 = zext i8 %32 to i32
  %34 = mul nsw i32 %31, %33
  %35 = add nsw i32 %29, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, ptr %26, i64 %36
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = load i8, ptr %1, align 1
  %41 = zext i8 %40 to i32
  %42 = and i32 %41, 7
  %43 = sub nsw i32 7, %42
  %44 = ashr i32 %39, %43
  %45 = and i32 %44, 1
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %119

47:                                               ; preds = %25
  %48 = load ptr, ptr @qrframe, align 8
  %49 = load i8, ptr %1, align 1
  %50 = zext i8 %49 to i32
  %51 = add nsw i32 %50, 1
  %52 = ashr i32 %51, 3
  %53 = load i8, ptr %2, align 1
  %54 = zext i8 %53 to i32
  %55 = load i8, ptr @WDB, align 1
  %56 = zext i8 %55 to i32
  %57 = mul nsw i32 %54, %56
  %58 = add nsw i32 %52, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, ptr %48, i64 %59
  %61 = load i8, ptr %60, align 1
  %62 = zext i8 %61 to i32
  %63 = load i8, ptr %1, align 1
  %64 = zext i8 %63 to i32
  %65 = add nsw i32 %64, 1
  %66 = and i32 %65, 7
  %67 = sub nsw i32 7, %66
  %68 = ashr i32 %62, %67
  %69 = and i32 %68, 1
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %119

71:                                               ; preds = %47
  %72 = load ptr, ptr @qrframe, align 8
  %73 = load i8, ptr %1, align 1
  %74 = zext i8 %73 to i32
  %75 = ashr i32 %74, 3
  %76 = load i8, ptr %2, align 1
  %77 = zext i8 %76 to i32
  %78 = add nsw i32 %77, 1
  %79 = load i8, ptr @WDB, align 1
  %80 = zext i8 %79 to i32
  %81 = mul nsw i32 %78, %80
  %82 = add nsw i32 %75, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, ptr %72, i64 %83
  %85 = load i8, ptr %84, align 1
  %86 = zext i8 %85 to i32
  %87 = load i8, ptr %1, align 1
  %88 = zext i8 %87 to i32
  %89 = and i32 %88, 7
  %90 = sub nsw i32 7, %89
  %91 = ashr i32 %86, %90
  %92 = and i32 %91, 1
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %119

94:                                               ; preds = %71
  %95 = load ptr, ptr @qrframe, align 8
  %96 = load i8, ptr %1, align 1
  %97 = zext i8 %96 to i32
  %98 = add nsw i32 %97, 1
  %99 = ashr i32 %98, 3
  %100 = load i8, ptr %2, align 1
  %101 = zext i8 %100 to i32
  %102 = add nsw i32 %101, 1
  %103 = load i8, ptr @WDB, align 1
  %104 = zext i8 %103 to i32
  %105 = mul nsw i32 %102, %104
  %106 = add nsw i32 %99, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, ptr %95, i64 %107
  %109 = load i8, ptr %108, align 1
  %110 = zext i8 %109 to i32
  %111 = load i8, ptr %1, align 1
  %112 = zext i8 %111 to i32
  %113 = add nsw i32 %112, 1
  %114 = and i32 %113, 7
  %115 = sub nsw i32 7, %114
  %116 = ashr i32 %110, %115
  %117 = and i32 %116, 1
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %213, label %119

119:                                              ; preds = %94, %71, %47, %25
  %120 = load ptr, ptr @qrframe, align 8
  %121 = load i8, ptr %1, align 1
  %122 = zext i8 %121 to i32
  %123 = ashr i32 %122, 3
  %124 = load i8, ptr %2, align 1
  %125 = zext i8 %124 to i32
  %126 = load i8, ptr @WDB, align 1
  %127 = zext i8 %126 to i32
  %128 = mul nsw i32 %125, %127
  %129 = add nsw i32 %123, %128
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, ptr %120, i64 %130
  %132 = load i8, ptr %131, align 1
  %133 = zext i8 %132 to i32
  %134 = load i8, ptr %1, align 1
  %135 = zext i8 %134 to i32
  %136 = and i32 %135, 7
  %137 = sub nsw i32 7, %136
  %138 = ashr i32 %133, %137
  %139 = and i32 %138, 1
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %216, label %141

141:                                              ; preds = %119
  %142 = load ptr, ptr @qrframe, align 8
  %143 = load i8, ptr %1, align 1
  %144 = zext i8 %143 to i32
  %145 = add nsw i32 %144, 1
  %146 = ashr i32 %145, 3
  %147 = load i8, ptr %2, align 1
  %148 = zext i8 %147 to i32
  %149 = load i8, ptr @WDB, align 1
  %150 = zext i8 %149 to i32
  %151 = mul nsw i32 %148, %150
  %152 = add nsw i32 %146, %151
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, ptr %142, i64 %153
  %155 = load i8, ptr %154, align 1
  %156 = zext i8 %155 to i32
  %157 = load i8, ptr %1, align 1
  %158 = zext i8 %157 to i32
  %159 = add nsw i32 %158, 1
  %160 = and i32 %159, 7
  %161 = sub nsw i32 7, %160
  %162 = ashr i32 %156, %161
  %163 = and i32 %162, 1
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %216, label %165

165:                                              ; preds = %141
  %166 = load ptr, ptr @qrframe, align 8
  %167 = load i8, ptr %1, align 1
  %168 = zext i8 %167 to i32
  %169 = ashr i32 %168, 3
  %170 = load i8, ptr %2, align 1
  %171 = zext i8 %170 to i32
  %172 = add nsw i32 %171, 1
  %173 = load i8, ptr @WDB, align 1
  %174 = zext i8 %173 to i32
  %175 = mul nsw i32 %172, %174
  %176 = add nsw i32 %169, %175
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8, ptr %166, i64 %177
  %179 = load i8, ptr %178, align 1
  %180 = zext i8 %179 to i32
  %181 = load i8, ptr %1, align 1
  %182 = zext i8 %181 to i32
  %183 = and i32 %182, 7
  %184 = sub nsw i32 7, %183
  %185 = ashr i32 %180, %184
  %186 = and i32 %185, 1
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %216, label %188

188:                                              ; preds = %165
  %189 = load ptr, ptr @qrframe, align 8
  %190 = load i8, ptr %1, align 1
  %191 = zext i8 %190 to i32
  %192 = add nsw i32 %191, 1
  %193 = ashr i32 %192, 3
  %194 = load i8, ptr %2, align 1
  %195 = zext i8 %194 to i32
  %196 = add nsw i32 %195, 1
  %197 = load i8, ptr @WDB, align 1
  %198 = zext i8 %197 to i32
  %199 = mul nsw i32 %196, %198
  %200 = add nsw i32 %193, %199
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8, ptr %189, i64 %201
  %203 = load i8, ptr %202, align 1
  %204 = zext i8 %203 to i32
  %205 = load i8, ptr %1, align 1
  %206 = zext i8 %205 to i32
  %207 = add nsw i32 %206, 1
  %208 = and i32 %207, 7
  %209 = sub nsw i32 7, %208
  %210 = ashr i32 %204, %209
  %211 = and i32 %210, 1
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %216, label %213

213:                                              ; preds = %188, %94
  %214 = load i32, ptr %6, align 4
  %215 = add i32 %214, 3
  store i32 %215, ptr %6, align 4
  br label %216

216:                                              ; preds = %213, %188, %165, %141, %119
  br label %217

217:                                              ; preds = %216
  %218 = load i8, ptr %1, align 1
  %219 = add i8 %218, 1
  store i8 %219, ptr %1, align 1
  br label %18, !llvm.loop !46

220:                                              ; preds = %18
  br label %221

221:                                              ; preds = %220
  %222 = load i8, ptr %2, align 1
  %223 = add i8 %222, 1
  store i8 %223, ptr %2, align 1
  br label %10, !llvm.loop !47

224:                                              ; preds = %10
  store i8 0, ptr %2, align 1
  br label %225

225:                                              ; preds = %296, %224
  %226 = load i8, ptr %2, align 1
  %227 = zext i8 %226 to i32
  %228 = load i8, ptr @WD, align 1
  %229 = zext i8 %228 to i32
  %230 = icmp slt i32 %227, %229
  br i1 %230, label %231, label %299

231:                                              ; preds = %225
  %232 = load ptr, ptr @rlens, align 8
  %233 = getelementptr inbounds i8, ptr %232, i64 0
  store i8 0, ptr %233, align 1
  store i8 0, ptr %1, align 1
  store i8 0, ptr %4, align 1
  store i8 0, ptr %3, align 1
  br label %234

234:                                              ; preds = %288, %231
  %235 = load i8, ptr %1, align 1
  %236 = zext i8 %235 to i32
  %237 = load i8, ptr @WD, align 1
  %238 = zext i8 %237 to i32
  %239 = icmp slt i32 %236, %238
  br i1 %239, label %240, label %291

240:                                              ; preds = %234
  %241 = load ptr, ptr @qrframe, align 8
  %242 = load i8, ptr %1, align 1
  %243 = zext i8 %242 to i32
  %244 = ashr i32 %243, 3
  %245 = load i8, ptr %2, align 1
  %246 = zext i8 %245 to i32
  %247 = load i8, ptr @WDB, align 1
  %248 = zext i8 %247 to i32
  %249 = mul nsw i32 %246, %248
  %250 = add nsw i32 %244, %249
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i8, ptr %241, i64 %251
  %253 = load i8, ptr %252, align 1
  %254 = zext i8 %253 to i32
  %255 = load i8, ptr %1, align 1
  %256 = zext i8 %255 to i32
  %257 = and i32 %256, 7
  %258 = sub nsw i32 7, %257
  %259 = ashr i32 %254, %258
  %260 = and i32 %259, 1
  %261 = trunc i32 %260 to i8
  store i8 %261, ptr %5, align 1
  %262 = zext i8 %261 to i32
  %263 = load i8, ptr %4, align 1
  %264 = zext i8 %263 to i32
  %265 = icmp eq i32 %262, %264
  br i1 %265, label %266, label %273

266:                                              ; preds = %240
  %267 = load ptr, ptr @rlens, align 8
  %268 = load i8, ptr %3, align 1
  %269 = zext i8 %268 to i64
  %270 = getelementptr inbounds nuw i8, ptr %267, i64 %269
  %271 = load i8, ptr %270, align 1
  %272 = add i8 %271, 1
  store i8 %272, ptr %270, align 1
  br label %279

273:                                              ; preds = %240
  %274 = load ptr, ptr @rlens, align 8
  %275 = load i8, ptr %3, align 1
  %276 = add i8 %275, 1
  store i8 %276, ptr %3, align 1
  %277 = zext i8 %276 to i64
  %278 = getelementptr inbounds nuw i8, ptr %274, i64 %277
  store i8 1, ptr %278, align 1
  br label %279

279:                                              ; preds = %273, %266
  %280 = load i8, ptr %5, align 1
  store i8 %280, ptr %4, align 1
  %281 = load i8, ptr %4, align 1
  %282 = zext i8 %281 to i32
  %283 = icmp ne i32 %282, 0
  %284 = zext i1 %283 to i64
  %285 = select i1 %283, i32 1, i32 -1
  %286 = load i32, ptr %7, align 4
  %287 = add nsw i32 %286, %285
  store i32 %287, ptr %7, align 4
  br label %288

288:                                              ; preds = %279
  %289 = load i8, ptr %1, align 1
  %290 = add i8 %289, 1
  store i8 %290, ptr %1, align 1
  br label %234, !llvm.loop !48

291:                                              ; preds = %234
  %292 = load i8, ptr %3, align 1
  %293 = call i32 @badruns(i8 noundef zeroext %292)
  %294 = load i32, ptr %6, align 4
  %295 = add i32 %294, %293
  store i32 %295, ptr %6, align 4
  br label %296

296:                                              ; preds = %291
  %297 = load i8, ptr %2, align 1
  %298 = add i8 %297, 1
  store i8 %298, ptr %2, align 1
  br label %225, !llvm.loop !49

299:                                              ; preds = %225
  %300 = load i32, ptr %7, align 4
  %301 = icmp slt i32 %300, 0
  br i1 %301, label %302, label %305

302:                                              ; preds = %299
  %303 = load i32, ptr %7, align 4
  %304 = sub nsw i32 0, %303
  store i32 %304, ptr %7, align 4
  br label %305

305:                                              ; preds = %302, %299
  %306 = load i32, ptr %7, align 4
  %307 = sext i32 %306 to i64
  store i64 %307, ptr %8, align 8
  store i32 0, ptr %9, align 4
  %308 = load i64, ptr %8, align 8
  %309 = shl i64 %308, 2
  %310 = load i64, ptr %8, align 8
  %311 = add i64 %310, %309
  store i64 %311, ptr %8, align 8
  %312 = load i64, ptr %8, align 8
  %313 = shl i64 %312, 1
  store i64 %313, ptr %8, align 8
  br label %314

314:                                              ; preds = %323, %305
  %315 = load i64, ptr %8, align 8
  %316 = load i8, ptr @WD, align 1
  %317 = zext i8 %316 to i32
  %318 = load i8, ptr @WD, align 1
  %319 = zext i8 %318 to i32
  %320 = mul nsw i32 %317, %319
  %321 = sext i32 %320 to i64
  %322 = icmp ugt i64 %315, %321
  br i1 %322, label %323, label %334

323:                                              ; preds = %314
  %324 = load i8, ptr @WD, align 1
  %325 = zext i8 %324 to i32
  %326 = load i8, ptr @WD, align 1
  %327 = zext i8 %326 to i32
  %328 = mul nsw i32 %325, %327
  %329 = sext i32 %328 to i64
  %330 = load i64, ptr %8, align 8
  %331 = sub i64 %330, %329
  store i64 %331, ptr %8, align 8
  %332 = load i32, ptr %9, align 4
  %333 = add i32 %332, 1
  store i32 %333, ptr %9, align 4
  br label %314, !llvm.loop !50

334:                                              ; preds = %314
  %335 = load i32, ptr %9, align 4
  %336 = mul i32 %335, 10
  %337 = load i32, ptr %6, align 4
  %338 = add i32 %337, %336
  store i32 %338, ptr %6, align 4
  store i8 0, ptr %1, align 1
  br label %339

339:                                              ; preds = %403, %334
  %340 = load i8, ptr %1, align 1
  %341 = zext i8 %340 to i32
  %342 = load i8, ptr @WD, align 1
  %343 = zext i8 %342 to i32
  %344 = icmp slt i32 %341, %343
  br i1 %344, label %345, label %406

345:                                              ; preds = %339
  %346 = load ptr, ptr @rlens, align 8
  %347 = getelementptr inbounds i8, ptr %346, i64 0
  store i8 0, ptr %347, align 1
  store i8 0, ptr %2, align 1
  store i8 0, ptr %4, align 1
  store i8 0, ptr %3, align 1
  br label %348

348:                                              ; preds = %395, %345
  %349 = load i8, ptr %2, align 1
  %350 = zext i8 %349 to i32
  %351 = load i8, ptr @WD, align 1
  %352 = zext i8 %351 to i32
  %353 = icmp slt i32 %350, %352
  br i1 %353, label %354, label %398

354:                                              ; preds = %348
  %355 = load ptr, ptr @qrframe, align 8
  %356 = load i8, ptr %1, align 1
  %357 = zext i8 %356 to i32
  %358 = ashr i32 %357, 3
  %359 = load i8, ptr %2, align 1
  %360 = zext i8 %359 to i32
  %361 = load i8, ptr @WDB, align 1
  %362 = zext i8 %361 to i32
  %363 = mul nsw i32 %360, %362
  %364 = add nsw i32 %358, %363
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i8, ptr %355, i64 %365
  %367 = load i8, ptr %366, align 1
  %368 = zext i8 %367 to i32
  %369 = load i8, ptr %1, align 1
  %370 = zext i8 %369 to i32
  %371 = and i32 %370, 7
  %372 = sub nsw i32 7, %371
  %373 = ashr i32 %368, %372
  %374 = and i32 %373, 1
  %375 = trunc i32 %374 to i8
  store i8 %375, ptr %5, align 1
  %376 = zext i8 %375 to i32
  %377 = load i8, ptr %4, align 1
  %378 = zext i8 %377 to i32
  %379 = icmp eq i32 %376, %378
  br i1 %379, label %380, label %387

380:                                              ; preds = %354
  %381 = load ptr, ptr @rlens, align 8
  %382 = load i8, ptr %3, align 1
  %383 = zext i8 %382 to i64
  %384 = getelementptr inbounds nuw i8, ptr %381, i64 %383
  %385 = load i8, ptr %384, align 1
  %386 = add i8 %385, 1
  store i8 %386, ptr %384, align 1
  br label %393

387:                                              ; preds = %354
  %388 = load ptr, ptr @rlens, align 8
  %389 = load i8, ptr %3, align 1
  %390 = add i8 %389, 1
  store i8 %390, ptr %3, align 1
  %391 = zext i8 %390 to i64
  %392 = getelementptr inbounds nuw i8, ptr %388, i64 %391
  store i8 1, ptr %392, align 1
  br label %393

393:                                              ; preds = %387, %380
  %394 = load i8, ptr %5, align 1
  store i8 %394, ptr %4, align 1
  br label %395

395:                                              ; preds = %393
  %396 = load i8, ptr %2, align 1
  %397 = add i8 %396, 1
  store i8 %397, ptr %2, align 1
  br label %348, !llvm.loop !51

398:                                              ; preds = %348
  %399 = load i8, ptr %3, align 1
  %400 = call i32 @badruns(i8 noundef zeroext %399)
  %401 = load i32, ptr %6, align 4
  %402 = add i32 %401, %400
  store i32 %402, ptr %6, align 4
  br label %403

403:                                              ; preds = %398
  %404 = load i8, ptr %1, align 1
  %405 = add i8 %404, 1
  store i8 %405, ptr %1, align 1
  br label %339, !llvm.loop !52

406:                                              ; preds = %339
  %407 = load i32, ptr %6, align 4
  ret i32 %407
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @badruns(i8 noundef zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %2, align 1
  store i32 0, ptr %4, align 4
  store i8 0, ptr %3, align 1
  br label %5

5:                                                ; preds = %31, %1
  %6 = load i8, ptr %3, align 1
  %7 = zext i8 %6 to i32
  %8 = load i8, ptr %2, align 1
  %9 = zext i8 %8 to i32
  %10 = icmp sle i32 %7, %9
  br i1 %10, label %11, label %34

11:                                               ; preds = %5
  %12 = load ptr, ptr @rlens, align 8
  %13 = load i8, ptr %3, align 1
  %14 = zext i8 %13 to i64
  %15 = getelementptr inbounds nuw i8, ptr %12, i64 %14
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp sge i32 %17, 5
  br i1 %18, label %19, label %30

19:                                               ; preds = %11
  %20 = load ptr, ptr @rlens, align 8
  %21 = load i8, ptr %3, align 1
  %22 = zext i8 %21 to i64
  %23 = getelementptr inbounds nuw i8, ptr %20, i64 %22
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = add nsw i32 3, %25
  %27 = sub nsw i32 %26, 5
  %28 = load i32, ptr %4, align 4
  %29 = add i32 %28, %27
  store i32 %29, ptr %4, align 4
  br label %30

30:                                               ; preds = %19, %11
  br label %31

31:                                               ; preds = %30
  %32 = load i8, ptr %3, align 1
  %33 = add i8 %32, 1
  store i8 %33, ptr %3, align 1
  br label %5, !llvm.loop !53

34:                                               ; preds = %5
  store i8 3, ptr %3, align 1
  br label %35

35:                                               ; preds = %170, %34
  %36 = load i8, ptr %3, align 1
  %37 = zext i8 %36 to i32
  %38 = load i8, ptr %2, align 1
  %39 = zext i8 %38 to i32
  %40 = sub nsw i32 %39, 1
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %175

42:                                               ; preds = %35
  %43 = load ptr, ptr @rlens, align 8
  %44 = load i8, ptr %3, align 1
  %45 = zext i8 %44 to i32
  %46 = sub nsw i32 %45, 2
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, ptr %43, i64 %47
  %49 = load i8, ptr %48, align 1
  %50 = zext i8 %49 to i32
  %51 = load ptr, ptr @rlens, align 8
  %52 = load i8, ptr %3, align 1
  %53 = zext i8 %52 to i32
  %54 = add nsw i32 %53, 2
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, ptr %51, i64 %55
  %57 = load i8, ptr %56, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp eq i32 %50, %58
  br i1 %59, label %60, label %169

60:                                               ; preds = %42
  %61 = load ptr, ptr @rlens, align 8
  %62 = load i8, ptr %3, align 1
  %63 = zext i8 %62 to i32
  %64 = add nsw i32 %63, 2
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, ptr %61, i64 %65
  %67 = load i8, ptr %66, align 1
  %68 = zext i8 %67 to i32
  %69 = load ptr, ptr @rlens, align 8
  %70 = load i8, ptr %3, align 1
  %71 = zext i8 %70 to i32
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, ptr %69, i64 %73
  %75 = load i8, ptr %74, align 1
  %76 = zext i8 %75 to i32
  %77 = icmp eq i32 %68, %76
  br i1 %77, label %78, label %169

78:                                               ; preds = %60
  %79 = load ptr, ptr @rlens, align 8
  %80 = load i8, ptr %3, align 1
  %81 = zext i8 %80 to i32
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, ptr %79, i64 %83
  %85 = load i8, ptr %84, align 1
  %86 = zext i8 %85 to i32
  %87 = load ptr, ptr @rlens, align 8
  %88 = load i8, ptr %3, align 1
  %89 = zext i8 %88 to i32
  %90 = add nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, ptr %87, i64 %91
  %93 = load i8, ptr %92, align 1
  %94 = zext i8 %93 to i32
  %95 = icmp eq i32 %86, %94
  br i1 %95, label %96, label %169

96:                                               ; preds = %78
  %97 = load ptr, ptr @rlens, align 8
  %98 = load i8, ptr %3, align 1
  %99 = zext i8 %98 to i32
  %100 = sub nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, ptr %97, i64 %101
  %103 = load i8, ptr %102, align 1
  %104 = zext i8 %103 to i32
  %105 = mul nsw i32 %104, 3
  %106 = load ptr, ptr @rlens, align 8
  %107 = load i8, ptr %3, align 1
  %108 = zext i8 %107 to i64
  %109 = getelementptr inbounds nuw i8, ptr %106, i64 %108
  %110 = load i8, ptr %109, align 1
  %111 = zext i8 %110 to i32
  %112 = icmp eq i32 %105, %111
  br i1 %112, label %113, label %169

113:                                              ; preds = %96
  %114 = load ptr, ptr @rlens, align 8
  %115 = load i8, ptr %3, align 1
  %116 = zext i8 %115 to i32
  %117 = sub nsw i32 %116, 3
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, ptr %114, i64 %118
  %120 = load i8, ptr %119, align 1
  %121 = zext i8 %120 to i32
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %166, label %123

123:                                              ; preds = %113
  %124 = load i8, ptr %3, align 1
  %125 = zext i8 %124 to i32
  %126 = add nsw i32 %125, 3
  %127 = load i8, ptr %2, align 1
  %128 = zext i8 %127 to i32
  %129 = icmp sgt i32 %126, %128
  br i1 %129, label %166, label %130

130:                                              ; preds = %123
  %131 = load ptr, ptr @rlens, align 8
  %132 = load i8, ptr %3, align 1
  %133 = zext i8 %132 to i32
  %134 = sub nsw i32 %133, 3
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, ptr %131, i64 %135
  %137 = load i8, ptr %136, align 1
  %138 = zext i8 %137 to i32
  %139 = mul nsw i32 %138, 3
  %140 = load ptr, ptr @rlens, align 8
  %141 = load i8, ptr %3, align 1
  %142 = zext i8 %141 to i64
  %143 = getelementptr inbounds nuw i8, ptr %140, i64 %142
  %144 = load i8, ptr %143, align 1
  %145 = zext i8 %144 to i32
  %146 = mul nsw i32 %145, 4
  %147 = icmp sge i32 %139, %146
  br i1 %147, label %166, label %148

148:                                              ; preds = %130
  %149 = load ptr, ptr @rlens, align 8
  %150 = load i8, ptr %3, align 1
  %151 = zext i8 %150 to i32
  %152 = add nsw i32 %151, 3
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, ptr %149, i64 %153
  %155 = load i8, ptr %154, align 1
  %156 = zext i8 %155 to i32
  %157 = mul nsw i32 %156, 3
  %158 = load ptr, ptr @rlens, align 8
  %159 = load i8, ptr %3, align 1
  %160 = zext i8 %159 to i64
  %161 = getelementptr inbounds nuw i8, ptr %158, i64 %160
  %162 = load i8, ptr %161, align 1
  %163 = zext i8 %162 to i32
  %164 = mul nsw i32 %163, 4
  %165 = icmp sge i32 %157, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %148, %130, %123, %113
  %167 = load i32, ptr %4, align 4
  %168 = add i32 %167, 40
  store i32 %168, ptr %4, align 4
  br label %169

169:                                              ; preds = %166, %148, %96, %78, %60, %42
  br label %170

170:                                              ; preds = %169
  %171 = load i8, ptr %3, align 1
  %172 = zext i8 %171 to i32
  %173 = add nsw i32 %172, 2
  %174 = trunc i32 %173 to i8
  store i8 %174, ptr %3, align 1
  br label %35, !llvm.loop !54

175:                                              ; preds = %35
  %176 = load i32, ptr %4, align 4
  ret i32 %176
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind willreturn memory(read) }

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
!48 = distinct !{!48, !7}
!49 = distinct !{!49, !7}
!50 = distinct !{!50, !7}
!51 = distinct !{!51, !7}
!52 = distinct !{!52, !7}
!53 = distinct !{!53, !7}
!54 = distinct !{!54, !7}
