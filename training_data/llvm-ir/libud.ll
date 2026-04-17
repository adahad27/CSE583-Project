; ModuleID = '../../src/ud/libud.c'
source_filename = "../../src/ud/libud.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = dso_local global [20 x i64] zeroinitializer, align 16
@a = dso_local global [20 x [20 x i64]] zeroinitializer, align 16
@b = dso_local global [20 x i64] zeroinitializer, align 16
@chkerr = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @verify_benchmark(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [20 x i64], align 16
  store i32 %0, ptr %2, align 4
  call void @llvm.memset.p0.i64(ptr align 16 %3, i8 0, i64 160, i1 false)
  %4 = getelementptr inbounds <{ i64, i64, i64, i64, i64, i64, [14 x i64] }>, ptr %3, i32 0, i32 2
  store i64 1, ptr %4, align 16
  %5 = getelementptr inbounds <{ i64, i64, i64, i64, i64, i64, [14 x i64] }>, ptr %3, i32 0, i32 3
  store i64 1, ptr %5, align 8
  %6 = getelementptr inbounds <{ i64, i64, i64, i64, i64, i64, [14 x i64] }>, ptr %3, i32 0, i32 4
  store i64 1, ptr %6, align 16
  %7 = getelementptr inbounds <{ i64, i64, i64, i64, i64, i64, [14 x i64] }>, ptr %3, i32 0, i32 5
  store i64 2, ptr %7, align 8
  %8 = getelementptr inbounds [20 x i64], ptr %3, i64 0, i64 0
  %9 = call i32 @memcmp(ptr noundef @x, ptr noundef %8, i64 noundef 160) #3
  %10 = icmp eq i32 0, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, ptr %2, align 4
  %13 = icmp eq i32 0, %12
  br label %14

14:                                               ; preds = %11, %1
  %15 = phi i1 [ false, %1 ], [ %13, %11 ]
  %16 = zext i1 %15 to i32
  ret i32 %16
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #2

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
  %5 = call i32 @benchmark_body(i32 noundef 1, i32 noundef %4)
  store i32 %5, ptr %3, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @benchmark_body(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  store i32 0, ptr %5, align 4
  br label %12

12:                                               ; preds = %85, %2
  %13 = load i32, ptr %5, align 4
  %14 = load i32, ptr %3, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %88

16:                                               ; preds = %12
  store i32 0, ptr %6, align 4
  br label %17

17:                                               ; preds = %81, %16
  %18 = load i32, ptr %6, align 4
  %19 = load i32, ptr %4, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %84

21:                                               ; preds = %17
  store i32 20, ptr %9, align 4
  store i32 5, ptr %10, align 4
  store i32 0, ptr %7, align 4
  br label %22

22:                                               ; preds = %74, %21
  %23 = load i32, ptr %7, align 4
  %24 = load i32, ptr %10, align 4
  %25 = icmp sle i32 %23, %24
  br i1 %25, label %26, label %77

26:                                               ; preds = %22
  store i64 0, ptr %11, align 8
  store i32 0, ptr %8, align 4
  br label %27

27:                                               ; preds = %66, %26
  %28 = load i32, ptr %8, align 4
  %29 = load i32, ptr %10, align 4
  %30 = icmp sle i32 %28, %29
  br i1 %30, label %31, label %69

31:                                               ; preds = %27
  %32 = load i32, ptr %7, align 4
  %33 = add nsw i32 %32, 1
  %34 = load i32, ptr %8, align 4
  %35 = add nsw i32 %34, 1
  %36 = add nsw i32 %33, %35
  %37 = sext i32 %36 to i64
  %38 = load i32, ptr %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [20 x [20 x i64]], ptr @a, i64 0, i64 %39
  %41 = load i32, ptr %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [20 x i64], ptr %40, i64 0, i64 %42
  store i64 %37, ptr %43, align 8
  %44 = load i32, ptr %7, align 4
  %45 = load i32, ptr %8, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %31
  %48 = load i32, ptr %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [20 x [20 x i64]], ptr @a, i64 0, i64 %49
  %51 = load i32, ptr %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [20 x i64], ptr %50, i64 0, i64 %52
  %54 = load i64, ptr %53, align 8
  %55 = mul nsw i64 %54, 2
  store i64 %55, ptr %53, align 8
  br label %56

56:                                               ; preds = %47, %31
  %57 = load i32, ptr %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [20 x [20 x i64]], ptr @a, i64 0, i64 %58
  %60 = load i32, ptr %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [20 x i64], ptr %59, i64 0, i64 %61
  %63 = load i64, ptr %62, align 8
  %64 = load i64, ptr %11, align 8
  %65 = add nsw i64 %64, %63
  store i64 %65, ptr %11, align 8
  br label %66

66:                                               ; preds = %56
  %67 = load i32, ptr %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, ptr %8, align 4
  br label %27, !llvm.loop !6

69:                                               ; preds = %27
  %70 = load i64, ptr %11, align 8
  %71 = load i32, ptr %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [20 x i64], ptr @b, i64 0, i64 %72
  store i64 %70, ptr %73, align 8
  br label %74

74:                                               ; preds = %69
  %75 = load i32, ptr %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, ptr %7, align 4
  br label %22, !llvm.loop !8

77:                                               ; preds = %22
  %78 = load i32, ptr %9, align 4
  %79 = load i32, ptr %10, align 4
  %80 = call i32 @ludcmp(i32 noundef %78, i32 noundef %79)
  store volatile i32 %80, ptr @chkerr, align 4
  br label %81

81:                                               ; preds = %77
  %82 = load i32, ptr %6, align 4
  %83 = add i32 %82, 1
  store i32 %83, ptr %6, align 4
  br label %17, !llvm.loop !9

84:                                               ; preds = %17
  br label %85

85:                                               ; preds = %84
  %86 = load i32, ptr %5, align 4
  %87 = add i32 %86, 1
  store i32 %87, ptr %5, align 4
  br label %12, !llvm.loop !10

88:                                               ; preds = %12
  %89 = load volatile i32, ptr @chkerr, align 4
  ret i32 %89
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @benchmark() #0 {
  %1 = call i32 @benchmark_body(i32 noundef 1785, i32 noundef 20)
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ludcmp(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca [100 x i64], align 16
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  store i32 0, ptr %5, align 4
  br label %10

10:                                               ; preds = %132, %2
  %11 = load i32, ptr %5, align 4
  %12 = load i32, ptr %4, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %135

14:                                               ; preds = %10
  %15 = load i32, ptr %5, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr %6, align 4
  br label %17

17:                                               ; preds = %74, %14
  %18 = load i32, ptr %6, align 4
  %19 = load i32, ptr %4, align 4
  %20 = icmp sle i32 %18, %19
  br i1 %20, label %21, label %77

21:                                               ; preds = %17
  %22 = load i32, ptr %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [20 x [20 x i64]], ptr @a, i64 0, i64 %23
  %25 = load i32, ptr %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [20 x i64], ptr %24, i64 0, i64 %26
  %28 = load i64, ptr %27, align 8
  store i64 %28, ptr %8, align 8
  %29 = load i32, ptr %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %58

31:                                               ; preds = %21
  store i32 0, ptr %7, align 4
  br label %32

32:                                               ; preds = %54, %31
  %33 = load i32, ptr %7, align 4
  %34 = load i32, ptr %5, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %57

36:                                               ; preds = %32
  %37 = load i32, ptr %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [20 x [20 x i64]], ptr @a, i64 0, i64 %38
  %40 = load i32, ptr %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [20 x i64], ptr %39, i64 0, i64 %41
  %43 = load i64, ptr %42, align 8
  %44 = load i32, ptr %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [20 x [20 x i64]], ptr @a, i64 0, i64 %45
  %47 = load i32, ptr %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [20 x i64], ptr %46, i64 0, i64 %48
  %50 = load i64, ptr %49, align 8
  %51 = mul nsw i64 %43, %50
  %52 = load i64, ptr %8, align 8
  %53 = sub nsw i64 %52, %51
  store i64 %53, ptr %8, align 8
  br label %54

54:                                               ; preds = %36
  %55 = load i32, ptr %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, ptr %7, align 4
  br label %32, !llvm.loop !11

57:                                               ; preds = %32
  br label %58

58:                                               ; preds = %57, %21
  %59 = load i64, ptr %8, align 8
  %60 = load i32, ptr %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [20 x [20 x i64]], ptr @a, i64 0, i64 %61
  %63 = load i32, ptr %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [20 x i64], ptr %62, i64 0, i64 %64
  %66 = load i64, ptr %65, align 8
  %67 = sdiv i64 %59, %66
  %68 = load i32, ptr %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [20 x [20 x i64]], ptr @a, i64 0, i64 %69
  %71 = load i32, ptr %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [20 x i64], ptr %70, i64 0, i64 %72
  store i64 %67, ptr %73, align 8
  br label %74

74:                                               ; preds = %58
  %75 = load i32, ptr %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, ptr %6, align 4
  br label %17, !llvm.loop !12

77:                                               ; preds = %17
  %78 = load i32, ptr %5, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, ptr %6, align 4
  br label %80

80:                                               ; preds = %128, %77
  %81 = load i32, ptr %6, align 4
  %82 = load i32, ptr %4, align 4
  %83 = icmp sle i32 %81, %82
  br i1 %83, label %84, label %131

84:                                               ; preds = %80
  %85 = load i32, ptr %5, align 4
  %86 = add nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [20 x [20 x i64]], ptr @a, i64 0, i64 %87
  %89 = load i32, ptr %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [20 x i64], ptr %88, i64 0, i64 %90
  %92 = load i64, ptr %91, align 8
  store i64 %92, ptr %8, align 8
  store i32 0, ptr %7, align 4
  br label %93

93:                                               ; preds = %116, %84
  %94 = load i32, ptr %7, align 4
  %95 = load i32, ptr %5, align 4
  %96 = icmp sle i32 %94, %95
  br i1 %96, label %97, label %119

97:                                               ; preds = %93
  %98 = load i32, ptr %5, align 4
  %99 = add nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [20 x [20 x i64]], ptr @a, i64 0, i64 %100
  %102 = load i32, ptr %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [20 x i64], ptr %101, i64 0, i64 %103
  %105 = load i64, ptr %104, align 8
  %106 = load i32, ptr %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [20 x [20 x i64]], ptr @a, i64 0, i64 %107
  %109 = load i32, ptr %6, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [20 x i64], ptr %108, i64 0, i64 %110
  %112 = load i64, ptr %111, align 8
  %113 = mul nsw i64 %105, %112
  %114 = load i64, ptr %8, align 8
  %115 = sub nsw i64 %114, %113
  store i64 %115, ptr %8, align 8
  br label %116

116:                                              ; preds = %97
  %117 = load i32, ptr %7, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, ptr %7, align 4
  br label %93, !llvm.loop !13

119:                                              ; preds = %93
  %120 = load i64, ptr %8, align 8
  %121 = load i32, ptr %5, align 4
  %122 = add nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [20 x [20 x i64]], ptr @a, i64 0, i64 %123
  %125 = load i32, ptr %6, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [20 x i64], ptr %124, i64 0, i64 %126
  store i64 %120, ptr %127, align 8
  br label %128

128:                                              ; preds = %119
  %129 = load i32, ptr %6, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, ptr %6, align 4
  br label %80, !llvm.loop !14

131:                                              ; preds = %80
  br label %132

132:                                              ; preds = %131
  %133 = load i32, ptr %5, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, ptr %5, align 4
  br label %10, !llvm.loop !15

135:                                              ; preds = %10
  %136 = load i64, ptr @b, align 16
  %137 = getelementptr inbounds [100 x i64], ptr %9, i64 0, i64 0
  store i64 %136, ptr %137, align 16
  store i32 1, ptr %5, align 4
  br label %138

138:                                              ; preds = %174, %135
  %139 = load i32, ptr %5, align 4
  %140 = load i32, ptr %4, align 4
  %141 = icmp sle i32 %139, %140
  br i1 %141, label %142, label %177

142:                                              ; preds = %138
  %143 = load i32, ptr %5, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [20 x i64], ptr @b, i64 0, i64 %144
  %146 = load i64, ptr %145, align 8
  store i64 %146, ptr %8, align 8
  store i32 0, ptr %6, align 4
  br label %147

147:                                              ; preds = %166, %142
  %148 = load i32, ptr %6, align 4
  %149 = load i32, ptr %5, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %169

151:                                              ; preds = %147
  %152 = load i32, ptr %5, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [20 x [20 x i64]], ptr @a, i64 0, i64 %153
  %155 = load i32, ptr %6, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [20 x i64], ptr %154, i64 0, i64 %156
  %158 = load i64, ptr %157, align 8
  %159 = load i32, ptr %6, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [100 x i64], ptr %9, i64 0, i64 %160
  %162 = load i64, ptr %161, align 8
  %163 = mul nsw i64 %158, %162
  %164 = load i64, ptr %8, align 8
  %165 = sub nsw i64 %164, %163
  store i64 %165, ptr %8, align 8
  br label %166

166:                                              ; preds = %151
  %167 = load i32, ptr %6, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, ptr %6, align 4
  br label %147, !llvm.loop !16

169:                                              ; preds = %147
  %170 = load i64, ptr %8, align 8
  %171 = load i32, ptr %5, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [100 x i64], ptr %9, i64 0, i64 %172
  store i64 %170, ptr %173, align 8
  br label %174

174:                                              ; preds = %169
  %175 = load i32, ptr %5, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, ptr %5, align 4
  br label %138, !llvm.loop !17

177:                                              ; preds = %138
  %178 = load i32, ptr %4, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [100 x i64], ptr %9, i64 0, i64 %179
  %181 = load i64, ptr %180, align 8
  %182 = load i32, ptr %4, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [20 x [20 x i64]], ptr @a, i64 0, i64 %183
  %185 = load i32, ptr %4, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [20 x i64], ptr %184, i64 0, i64 %186
  %188 = load i64, ptr %187, align 8
  %189 = sdiv i64 %181, %188
  %190 = load i32, ptr %4, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [20 x i64], ptr @x, i64 0, i64 %191
  store i64 %189, ptr %192, align 8
  %193 = load i32, ptr %4, align 4
  %194 = sub nsw i32 %193, 1
  store i32 %194, ptr %5, align 4
  br label %195

195:                                              ; preds = %240, %177
  %196 = load i32, ptr %5, align 4
  %197 = icmp sge i32 %196, 0
  br i1 %197, label %198, label %243

198:                                              ; preds = %195
  %199 = load i32, ptr %5, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [100 x i64], ptr %9, i64 0, i64 %200
  %202 = load i64, ptr %201, align 8
  store i64 %202, ptr %8, align 8
  %203 = load i32, ptr %5, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, ptr %6, align 4
  br label %205

205:                                              ; preds = %224, %198
  %206 = load i32, ptr %6, align 4
  %207 = load i32, ptr %4, align 4
  %208 = icmp sle i32 %206, %207
  br i1 %208, label %209, label %227

209:                                              ; preds = %205
  %210 = load i32, ptr %5, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [20 x [20 x i64]], ptr @a, i64 0, i64 %211
  %213 = load i32, ptr %6, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [20 x i64], ptr %212, i64 0, i64 %214
  %216 = load i64, ptr %215, align 8
  %217 = load i32, ptr %6, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [20 x i64], ptr @x, i64 0, i64 %218
  %220 = load i64, ptr %219, align 8
  %221 = mul nsw i64 %216, %220
  %222 = load i64, ptr %8, align 8
  %223 = sub nsw i64 %222, %221
  store i64 %223, ptr %8, align 8
  br label %224

224:                                              ; preds = %209
  %225 = load i32, ptr %6, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, ptr %6, align 4
  br label %205, !llvm.loop !18

227:                                              ; preds = %205
  %228 = load i64, ptr %8, align 8
  %229 = load i32, ptr %5, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [20 x [20 x i64]], ptr @a, i64 0, i64 %230
  %232 = load i32, ptr %5, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [20 x i64], ptr %231, i64 0, i64 %233
  %235 = load i64, ptr %234, align 8
  %236 = sdiv i64 %228, %235
  %237 = load i32, ptr %5, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [20 x i64], ptr @x, i64 0, i64 %238
  store i64 %236, ptr %239, align 8
  br label %240

240:                                              ; preds = %227
  %241 = load i32, ptr %5, align 4
  %242 = add nsw i32 %241, -1
  store i32 %242, ptr %5, align 4
  br label %195, !llvm.loop !19

243:                                              ; preds = %195
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) }

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
