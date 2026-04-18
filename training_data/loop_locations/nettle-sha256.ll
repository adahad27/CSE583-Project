; ModuleID = '../src/nettle-sha256/nettle-sha256.c'
source_filename = "../src/nettle-sha256/nettle-sha256.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sha256_ctx = type { [8 x i32], i64, [64 x i8], i32 }

@sha256_init.H0 = internal unnamed_addr constant [8 x i32] [i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534, i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225], align 16
@K = internal constant [64 x i32] [i32 1116352408, i32 1899447441, i32 -1245643825, i32 -373957723, i32 961987163, i32 1508970993, i32 -1841331548, i32 -1424204075, i32 -670586216, i32 310598401, i32 607225278, i32 1426881987, i32 1925078388, i32 -2132889090, i32 -1680079193, i32 -1046744716, i32 -459576895, i32 -272742522, i32 264347078, i32 604807628, i32 770255983, i32 1249150122, i32 1555081692, i32 1996064986, i32 -1740746414, i32 -1473132947, i32 -1341970488, i32 -1084653625, i32 -958395405, i32 -710438585, i32 113926993, i32 338241895, i32 666307205, i32 773529912, i32 1294757372, i32 1396182291, i32 1695183700, i32 1986661051, i32 -2117940946, i32 -1838011259, i32 -1564481375, i32 -1474664885, i32 -1035236496, i32 -949202525, i32 -778901479, i32 -694614492, i32 -200395387, i32 275423344, i32 430227734, i32 506948616, i32 659060556, i32 883997877, i32 958139571, i32 1322822218, i32 1537002063, i32 1747873779, i32 1955562222, i32 2024104815, i32 -2067236844, i32 -1933114872, i32 -1866530822, i32 -1538233109, i32 -1090935817, i32 -965641998], align 16
@.str = private unnamed_addr constant [7 x i8] c"sha256\00", align 1
@nettle_sha256 = dso_local local_unnamed_addr constant { ptr, i32, i32, i32, [4 x i8], ptr, ptr, ptr } { ptr @.str, i32 112, i32 32, i32 64, [4 x i8] zeroinitializer, ptr @sha256_init, ptr @sha256_update, ptr @sha256_digest }, align 8
@msg = dso_local local_unnamed_addr global [56 x i8] c"abcdbcdecdefdefgefghfghighijhijkijkljklmklmnlmnomnopnopq", align 16
@hash = dso_local local_unnamed_addr global [32 x i8] c"$\8Dja\D2\068\B8\E5\C0&\93\0C>`9\A3<\E4Yd\FF!g\F6\EC\ED\D4\19\DB\06\C1", align 16
@buffer = dso_local local_unnamed_addr global [32 x i8] zeroinitializer, align 16

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_nettle_write_be32(i64 noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = lshr i64 %0, 2
  %5 = trunc i64 %0 to i32
  %6 = and i32 %5, 3
  %7 = icmp ult i64 %0, 4
  br i1 %7, label %75, label %8

8:                                                ; preds = %3
  %9 = icmp eq i64 %4, 1
  br i1 %9, label %52, label %10

10:                                               ; preds = %8
  %11 = and i64 %4, 4611686018427387902
  br label %12

12:                                               ; preds = %12, %10
  %13 = phi ptr [ %1, %10 ], [ %49, %12 ]
  %14 = phi i64 [ 0, %10 ], [ %48, %12 ]
  %15 = phi i64 [ 0, %10 ], [ %50, %12 ]
  %16 = getelementptr inbounds nuw i32, ptr %2, i64 %14
  %17 = load i32, ptr %16, align 4, !tbaa !5
  %18 = lshr i32 %17, 24
  %19 = trunc nuw i32 %18 to i8
  store i8 %19, ptr %13, align 1, !tbaa !9
  %20 = load i32, ptr %16, align 4, !tbaa !5
  %21 = lshr i32 %20, 16
  %22 = trunc i32 %21 to i8
  %23 = getelementptr inbounds nuw i8, ptr %13, i64 1
  store i8 %22, ptr %23, align 1, !tbaa !9
  %24 = load i32, ptr %16, align 4, !tbaa !5
  %25 = lshr i32 %24, 8
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds nuw i8, ptr %13, i64 2
  store i8 %26, ptr %27, align 1, !tbaa !9
  %28 = load i32, ptr %16, align 4, !tbaa !5
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds nuw i8, ptr %13, i64 3
  store i8 %29, ptr %30, align 1, !tbaa !9
  %31 = or disjoint i64 %14, 1
  %32 = getelementptr inbounds nuw i8, ptr %13, i64 4
  %33 = getelementptr inbounds nuw i32, ptr %2, i64 %31
  %34 = load i32, ptr %33, align 4, !tbaa !5
  %35 = lshr i32 %34, 24
  %36 = trunc nuw i32 %35 to i8
  store i8 %36, ptr %32, align 1, !tbaa !9
  %37 = load i32, ptr %33, align 4, !tbaa !5
  %38 = lshr i32 %37, 16
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds nuw i8, ptr %13, i64 5
  store i8 %39, ptr %40, align 1, !tbaa !9
  %41 = load i32, ptr %33, align 4, !tbaa !5
  %42 = lshr i32 %41, 8
  %43 = trunc i32 %42 to i8
  %44 = getelementptr inbounds nuw i8, ptr %13, i64 6
  store i8 %43, ptr %44, align 1, !tbaa !9
  %45 = load i32, ptr %33, align 4, !tbaa !5
  %46 = trunc i32 %45 to i8
  %47 = getelementptr inbounds nuw i8, ptr %13, i64 7
  store i8 %46, ptr %47, align 1, !tbaa !9
  %48 = add nuw nsw i64 %14, 2
  %49 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %50 = add i64 %15, 2
  %51 = icmp eq i64 %50, %11
  br i1 %51, label %52, label %12, !llvm.loop !10

52:                                               ; preds = %12, %8
  %53 = phi ptr [ poison, %8 ], [ %49, %12 ]
  %54 = phi ptr [ %1, %8 ], [ %49, %12 ]
  %55 = phi i64 [ 0, %8 ], [ %48, %12 ]
  %56 = and i64 %0, 4
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %75, label %58

58:                                               ; preds = %52
  %59 = getelementptr inbounds nuw i32, ptr %2, i64 %55
  %60 = load i32, ptr %59, align 4, !tbaa !5
  %61 = lshr i32 %60, 24
  %62 = trunc nuw i32 %61 to i8
  store i8 %62, ptr %54, align 1, !tbaa !9
  %63 = load i32, ptr %59, align 4, !tbaa !5
  %64 = lshr i32 %63, 16
  %65 = trunc i32 %64 to i8
  %66 = getelementptr inbounds nuw i8, ptr %54, i64 1
  store i8 %65, ptr %66, align 1, !tbaa !9
  %67 = load i32, ptr %59, align 4, !tbaa !5
  %68 = lshr i32 %67, 8
  %69 = trunc i32 %68 to i8
  %70 = getelementptr inbounds nuw i8, ptr %54, i64 2
  store i8 %69, ptr %70, align 1, !tbaa !9
  %71 = load i32, ptr %59, align 4, !tbaa !5
  %72 = trunc i32 %71 to i8
  %73 = getelementptr inbounds nuw i8, ptr %54, i64 3
  store i8 %72, ptr %73, align 1, !tbaa !9
  %74 = getelementptr inbounds nuw i8, ptr %54, i64 4
  br label %75

75:                                               ; preds = %58, %52, %3
  %76 = phi i64 [ 0, %3 ], [ %4, %52 ], [ %4, %58 ]
  %77 = phi ptr [ %1, %3 ], [ %53, %52 ], [ %74, %58 ]
  %78 = icmp eq i32 %6, 0
  br i1 %78, label %96, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds nuw i32, ptr %2, i64 %76
  %81 = load i32, ptr %80, align 4, !tbaa !5
  switch i32 %6, label %82 [
    i32 3, label %83
    i32 2, label %89
    i32 1, label %93
  ]

82:                                               ; preds = %79
  unreachable

83:                                               ; preds = %79
  %84 = lshr i32 %81, 8
  %85 = trunc i32 %84 to i8
  %86 = and i64 %0, 3
  %87 = getelementptr i8, ptr %77, i64 %86
  %88 = getelementptr i8, ptr %87, i64 -1
  store i8 %85, ptr %88, align 1, !tbaa !9
  br label %89

89:                                               ; preds = %79, %83
  %90 = lshr i32 %81, 16
  %91 = trunc i32 %90 to i8
  %92 = getelementptr inbounds nuw i8, ptr %77, i64 1
  store i8 %91, ptr %92, align 1, !tbaa !9
  br label %93

93:                                               ; preds = %79, %89
  %94 = lshr i32 %81, 24
  %95 = trunc nuw i32 %94 to i8
  store i8 %95, ptr %77, align 1, !tbaa !9
  br label %96

96:                                               ; preds = %93, %75
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_nettle_sha256_compress(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca [16 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #11
  %5 = load i8, ptr %1, align 1, !tbaa !9
  %6 = zext i8 %5 to i32
  %7 = shl nuw i32 %6, 24
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %9 = load i8, ptr %8, align 1, !tbaa !9
  %10 = zext i8 %9 to i32
  %11 = shl nuw nsw i32 %10, 16
  %12 = or disjoint i32 %11, %7
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %14 = load i8, ptr %13, align 1, !tbaa !9
  %15 = zext i8 %14 to i32
  %16 = shl nuw nsw i32 %15, 8
  %17 = or disjoint i32 %12, %16
  %18 = getelementptr inbounds nuw i8, ptr %1, i64 3
  %19 = load i8, ptr %18, align 1, !tbaa !9
  %20 = zext i8 %19 to i32
  %21 = or disjoint i32 %17, %20
  store i32 %21, ptr %4, align 16, !tbaa !5
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %23 = load i8, ptr %22, align 1, !tbaa !9
  %24 = zext i8 %23 to i32
  %25 = shl nuw i32 %24, 24
  %26 = getelementptr inbounds nuw i8, ptr %1, i64 5
  %27 = load i8, ptr %26, align 1, !tbaa !9
  %28 = zext i8 %27 to i32
  %29 = shl nuw nsw i32 %28, 16
  %30 = or disjoint i32 %29, %25
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 6
  %32 = load i8, ptr %31, align 1, !tbaa !9
  %33 = zext i8 %32 to i32
  %34 = shl nuw nsw i32 %33, 8
  %35 = or disjoint i32 %30, %34
  %36 = getelementptr inbounds nuw i8, ptr %1, i64 7
  %37 = load i8, ptr %36, align 1, !tbaa !9
  %38 = zext i8 %37 to i32
  %39 = or disjoint i32 %35, %38
  %40 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %39, ptr %40, align 4, !tbaa !5
  %41 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %42 = load i8, ptr %41, align 1, !tbaa !9
  %43 = zext i8 %42 to i32
  %44 = shl nuw i32 %43, 24
  %45 = getelementptr inbounds nuw i8, ptr %1, i64 9
  %46 = load i8, ptr %45, align 1, !tbaa !9
  %47 = zext i8 %46 to i32
  %48 = shl nuw nsw i32 %47, 16
  %49 = or disjoint i32 %48, %44
  %50 = getelementptr inbounds nuw i8, ptr %1, i64 10
  %51 = load i8, ptr %50, align 1, !tbaa !9
  %52 = zext i8 %51 to i32
  %53 = shl nuw nsw i32 %52, 8
  %54 = or disjoint i32 %49, %53
  %55 = getelementptr inbounds nuw i8, ptr %1, i64 11
  %56 = load i8, ptr %55, align 1, !tbaa !9
  %57 = zext i8 %56 to i32
  %58 = or disjoint i32 %54, %57
  %59 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %58, ptr %59, align 8, !tbaa !5
  %60 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %61 = load i8, ptr %60, align 1, !tbaa !9
  %62 = zext i8 %61 to i32
  %63 = shl nuw i32 %62, 24
  %64 = getelementptr inbounds nuw i8, ptr %1, i64 13
  %65 = load i8, ptr %64, align 1, !tbaa !9
  %66 = zext i8 %65 to i32
  %67 = shl nuw nsw i32 %66, 16
  %68 = or disjoint i32 %67, %63
  %69 = getelementptr inbounds nuw i8, ptr %1, i64 14
  %70 = load i8, ptr %69, align 1, !tbaa !9
  %71 = zext i8 %70 to i32
  %72 = shl nuw nsw i32 %71, 8
  %73 = or disjoint i32 %68, %72
  %74 = getelementptr inbounds nuw i8, ptr %1, i64 15
  %75 = load i8, ptr %74, align 1, !tbaa !9
  %76 = zext i8 %75 to i32
  %77 = or disjoint i32 %73, %76
  %78 = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %77, ptr %78, align 4, !tbaa !5
  %79 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %80 = load i8, ptr %79, align 1, !tbaa !9
  %81 = zext i8 %80 to i32
  %82 = shl nuw i32 %81, 24
  %83 = getelementptr inbounds nuw i8, ptr %1, i64 17
  %84 = load i8, ptr %83, align 1, !tbaa !9
  %85 = zext i8 %84 to i32
  %86 = shl nuw nsw i32 %85, 16
  %87 = or disjoint i32 %86, %82
  %88 = getelementptr inbounds nuw i8, ptr %1, i64 18
  %89 = load i8, ptr %88, align 1, !tbaa !9
  %90 = zext i8 %89 to i32
  %91 = shl nuw nsw i32 %90, 8
  %92 = or disjoint i32 %87, %91
  %93 = getelementptr inbounds nuw i8, ptr %1, i64 19
  %94 = load i8, ptr %93, align 1, !tbaa !9
  %95 = zext i8 %94 to i32
  %96 = or disjoint i32 %92, %95
  %97 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %96, ptr %97, align 16, !tbaa !5
  %98 = getelementptr inbounds nuw i8, ptr %1, i64 20
  %99 = load i8, ptr %98, align 1, !tbaa !9
  %100 = zext i8 %99 to i32
  %101 = shl nuw i32 %100, 24
  %102 = getelementptr inbounds nuw i8, ptr %1, i64 21
  %103 = load i8, ptr %102, align 1, !tbaa !9
  %104 = zext i8 %103 to i32
  %105 = shl nuw nsw i32 %104, 16
  %106 = or disjoint i32 %105, %101
  %107 = getelementptr inbounds nuw i8, ptr %1, i64 22
  %108 = load i8, ptr %107, align 1, !tbaa !9
  %109 = zext i8 %108 to i32
  %110 = shl nuw nsw i32 %109, 8
  %111 = or disjoint i32 %106, %110
  %112 = getelementptr inbounds nuw i8, ptr %1, i64 23
  %113 = load i8, ptr %112, align 1, !tbaa !9
  %114 = zext i8 %113 to i32
  %115 = or disjoint i32 %111, %114
  %116 = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 %115, ptr %116, align 4, !tbaa !5
  %117 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %118 = load i8, ptr %117, align 1, !tbaa !9
  %119 = zext i8 %118 to i32
  %120 = shl nuw i32 %119, 24
  %121 = getelementptr inbounds nuw i8, ptr %1, i64 25
  %122 = load i8, ptr %121, align 1, !tbaa !9
  %123 = zext i8 %122 to i32
  %124 = shl nuw nsw i32 %123, 16
  %125 = or disjoint i32 %124, %120
  %126 = getelementptr inbounds nuw i8, ptr %1, i64 26
  %127 = load i8, ptr %126, align 1, !tbaa !9
  %128 = zext i8 %127 to i32
  %129 = shl nuw nsw i32 %128, 8
  %130 = or disjoint i32 %125, %129
  %131 = getelementptr inbounds nuw i8, ptr %1, i64 27
  %132 = load i8, ptr %131, align 1, !tbaa !9
  %133 = zext i8 %132 to i32
  %134 = or disjoint i32 %130, %133
  %135 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 %134, ptr %135, align 8, !tbaa !5
  %136 = getelementptr inbounds nuw i8, ptr %1, i64 28
  %137 = load i8, ptr %136, align 1, !tbaa !9
  %138 = zext i8 %137 to i32
  %139 = shl nuw i32 %138, 24
  %140 = getelementptr inbounds nuw i8, ptr %1, i64 29
  %141 = load i8, ptr %140, align 1, !tbaa !9
  %142 = zext i8 %141 to i32
  %143 = shl nuw nsw i32 %142, 16
  %144 = or disjoint i32 %143, %139
  %145 = getelementptr inbounds nuw i8, ptr %1, i64 30
  %146 = load i8, ptr %145, align 1, !tbaa !9
  %147 = zext i8 %146 to i32
  %148 = shl nuw nsw i32 %147, 8
  %149 = or disjoint i32 %144, %148
  %150 = getelementptr inbounds nuw i8, ptr %1, i64 31
  %151 = load i8, ptr %150, align 1, !tbaa !9
  %152 = zext i8 %151 to i32
  %153 = or disjoint i32 %149, %152
  %154 = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i32 %153, ptr %154, align 4, !tbaa !5
  %155 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %156 = load i8, ptr %155, align 1, !tbaa !9
  %157 = zext i8 %156 to i32
  %158 = shl nuw i32 %157, 24
  %159 = getelementptr inbounds nuw i8, ptr %1, i64 33
  %160 = load i8, ptr %159, align 1, !tbaa !9
  %161 = zext i8 %160 to i32
  %162 = shl nuw nsw i32 %161, 16
  %163 = or disjoint i32 %162, %158
  %164 = getelementptr inbounds nuw i8, ptr %1, i64 34
  %165 = load i8, ptr %164, align 1, !tbaa !9
  %166 = zext i8 %165 to i32
  %167 = shl nuw nsw i32 %166, 8
  %168 = or disjoint i32 %163, %167
  %169 = getelementptr inbounds nuw i8, ptr %1, i64 35
  %170 = load i8, ptr %169, align 1, !tbaa !9
  %171 = zext i8 %170 to i32
  %172 = or disjoint i32 %168, %171
  %173 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 %172, ptr %173, align 16, !tbaa !5
  %174 = getelementptr inbounds nuw i8, ptr %1, i64 36
  %175 = load i8, ptr %174, align 1, !tbaa !9
  %176 = zext i8 %175 to i32
  %177 = shl nuw i32 %176, 24
  %178 = getelementptr inbounds nuw i8, ptr %1, i64 37
  %179 = load i8, ptr %178, align 1, !tbaa !9
  %180 = zext i8 %179 to i32
  %181 = shl nuw nsw i32 %180, 16
  %182 = or disjoint i32 %181, %177
  %183 = getelementptr inbounds nuw i8, ptr %1, i64 38
  %184 = load i8, ptr %183, align 1, !tbaa !9
  %185 = zext i8 %184 to i32
  %186 = shl nuw nsw i32 %185, 8
  %187 = or disjoint i32 %182, %186
  %188 = getelementptr inbounds nuw i8, ptr %1, i64 39
  %189 = load i8, ptr %188, align 1, !tbaa !9
  %190 = zext i8 %189 to i32
  %191 = or disjoint i32 %187, %190
  %192 = getelementptr inbounds nuw i8, ptr %4, i64 36
  store i32 %191, ptr %192, align 4, !tbaa !5
  %193 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %194 = load i8, ptr %193, align 1, !tbaa !9
  %195 = zext i8 %194 to i32
  %196 = shl nuw i32 %195, 24
  %197 = getelementptr inbounds nuw i8, ptr %1, i64 41
  %198 = load i8, ptr %197, align 1, !tbaa !9
  %199 = zext i8 %198 to i32
  %200 = shl nuw nsw i32 %199, 16
  %201 = or disjoint i32 %200, %196
  %202 = getelementptr inbounds nuw i8, ptr %1, i64 42
  %203 = load i8, ptr %202, align 1, !tbaa !9
  %204 = zext i8 %203 to i32
  %205 = shl nuw nsw i32 %204, 8
  %206 = or disjoint i32 %201, %205
  %207 = getelementptr inbounds nuw i8, ptr %1, i64 43
  %208 = load i8, ptr %207, align 1, !tbaa !9
  %209 = zext i8 %208 to i32
  %210 = or disjoint i32 %206, %209
  %211 = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i32 %210, ptr %211, align 8, !tbaa !5
  %212 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %213 = load i8, ptr %212, align 1, !tbaa !9
  %214 = zext i8 %213 to i32
  %215 = shl nuw i32 %214, 24
  %216 = getelementptr inbounds nuw i8, ptr %1, i64 45
  %217 = load i8, ptr %216, align 1, !tbaa !9
  %218 = zext i8 %217 to i32
  %219 = shl nuw nsw i32 %218, 16
  %220 = or disjoint i32 %219, %215
  %221 = getelementptr inbounds nuw i8, ptr %1, i64 46
  %222 = load i8, ptr %221, align 1, !tbaa !9
  %223 = zext i8 %222 to i32
  %224 = shl nuw nsw i32 %223, 8
  %225 = or disjoint i32 %220, %224
  %226 = getelementptr inbounds nuw i8, ptr %1, i64 47
  %227 = load i8, ptr %226, align 1, !tbaa !9
  %228 = zext i8 %227 to i32
  %229 = or disjoint i32 %225, %228
  %230 = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i32 %229, ptr %230, align 4, !tbaa !5
  %231 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %232 = load i8, ptr %231, align 1, !tbaa !9
  %233 = zext i8 %232 to i32
  %234 = shl nuw i32 %233, 24
  %235 = getelementptr inbounds nuw i8, ptr %1, i64 49
  %236 = load i8, ptr %235, align 1, !tbaa !9
  %237 = zext i8 %236 to i32
  %238 = shl nuw nsw i32 %237, 16
  %239 = or disjoint i32 %238, %234
  %240 = getelementptr inbounds nuw i8, ptr %1, i64 50
  %241 = load i8, ptr %240, align 1, !tbaa !9
  %242 = zext i8 %241 to i32
  %243 = shl nuw nsw i32 %242, 8
  %244 = or disjoint i32 %239, %243
  %245 = getelementptr inbounds nuw i8, ptr %1, i64 51
  %246 = load i8, ptr %245, align 1, !tbaa !9
  %247 = zext i8 %246 to i32
  %248 = or disjoint i32 %244, %247
  %249 = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i32 %248, ptr %249, align 16, !tbaa !5
  %250 = getelementptr inbounds nuw i8, ptr %1, i64 52
  %251 = load i8, ptr %250, align 1, !tbaa !9
  %252 = zext i8 %251 to i32
  %253 = shl nuw i32 %252, 24
  %254 = getelementptr inbounds nuw i8, ptr %1, i64 53
  %255 = load i8, ptr %254, align 1, !tbaa !9
  %256 = zext i8 %255 to i32
  %257 = shl nuw nsw i32 %256, 16
  %258 = or disjoint i32 %257, %253
  %259 = getelementptr inbounds nuw i8, ptr %1, i64 54
  %260 = load i8, ptr %259, align 1, !tbaa !9
  %261 = zext i8 %260 to i32
  %262 = shl nuw nsw i32 %261, 8
  %263 = or disjoint i32 %258, %262
  %264 = getelementptr inbounds nuw i8, ptr %1, i64 55
  %265 = load i8, ptr %264, align 1, !tbaa !9
  %266 = zext i8 %265 to i32
  %267 = or disjoint i32 %263, %266
  %268 = getelementptr inbounds nuw i8, ptr %4, i64 52
  store i32 %267, ptr %268, align 4, !tbaa !5
  %269 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %270 = load i8, ptr %269, align 1, !tbaa !9
  %271 = zext i8 %270 to i32
  %272 = shl nuw i32 %271, 24
  %273 = getelementptr inbounds nuw i8, ptr %1, i64 57
  %274 = load i8, ptr %273, align 1, !tbaa !9
  %275 = zext i8 %274 to i32
  %276 = shl nuw nsw i32 %275, 16
  %277 = or disjoint i32 %276, %272
  %278 = getelementptr inbounds nuw i8, ptr %1, i64 58
  %279 = load i8, ptr %278, align 1, !tbaa !9
  %280 = zext i8 %279 to i32
  %281 = shl nuw nsw i32 %280, 8
  %282 = or disjoint i32 %277, %281
  %283 = getelementptr inbounds nuw i8, ptr %1, i64 59
  %284 = load i8, ptr %283, align 1, !tbaa !9
  %285 = zext i8 %284 to i32
  %286 = or disjoint i32 %282, %285
  %287 = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i32 %286, ptr %287, align 8, !tbaa !5
  %288 = getelementptr inbounds nuw i8, ptr %1, i64 60
  %289 = load i8, ptr %288, align 1, !tbaa !9
  %290 = zext i8 %289 to i32
  %291 = shl nuw i32 %290, 24
  %292 = getelementptr inbounds nuw i8, ptr %1, i64 61
  %293 = load i8, ptr %292, align 1, !tbaa !9
  %294 = zext i8 %293 to i32
  %295 = shl nuw nsw i32 %294, 16
  %296 = or disjoint i32 %295, %291
  %297 = getelementptr inbounds nuw i8, ptr %1, i64 62
  %298 = load i8, ptr %297, align 1, !tbaa !9
  %299 = zext i8 %298 to i32
  %300 = shl nuw nsw i32 %299, 8
  %301 = or disjoint i32 %296, %300
  %302 = getelementptr inbounds nuw i8, ptr %1, i64 63
  %303 = load i8, ptr %302, align 1, !tbaa !9
  %304 = zext i8 %303 to i32
  %305 = or disjoint i32 %301, %304
  %306 = getelementptr inbounds nuw i8, ptr %4, i64 60
  store i32 %305, ptr %306, align 4, !tbaa !5
  %307 = load i32, ptr %0, align 4, !tbaa !5
  %308 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %309 = load i32, ptr %308, align 4, !tbaa !5
  %310 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %311 = load i32, ptr %310, align 4, !tbaa !5
  %312 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %313 = load i32, ptr %312, align 4, !tbaa !5
  %314 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %315 = load i32, ptr %314, align 4, !tbaa !5
  %316 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %317 = load i32, ptr %316, align 4, !tbaa !5
  %318 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %319 = load i32, ptr %318, align 4, !tbaa !5
  %320 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %321 = load i32, ptr %320, align 4, !tbaa !5
  br label %339

322:                                              ; preds = %339
  %323 = load i32, ptr %4, align 16
  %324 = load i32, ptr %287, align 8, !tbaa !5
  %325 = load i32, ptr %192, align 4, !tbaa !5
  %326 = load i32, ptr %40, align 4, !tbaa !5
  %327 = load i32, ptr %306, align 4, !tbaa !5
  %328 = load i32, ptr %211, align 8, !tbaa !5
  %329 = load i32, ptr %59, align 8, !tbaa !5
  %330 = load i32, ptr %230, align 4, !tbaa !5
  %331 = load i32, ptr %78, align 4, !tbaa !5
  %332 = load i32, ptr %249, align 16, !tbaa !5
  %333 = load i32, ptr %97, align 16, !tbaa !5
  %334 = load i32, ptr %268, align 4, !tbaa !5
  %335 = load i32, ptr %116, align 4, !tbaa !5
  %336 = load i32, ptr %135, align 8, !tbaa !5
  %337 = load i32, ptr %154, align 4, !tbaa !5
  %338 = load i32, ptr %173, align 16, !tbaa !5
  br label %575

339:                                              ; preds = %3, %339
  %340 = phi ptr [ %4, %3 ], [ %574, %339 ]
  %341 = phi i1 [ true, %3 ], [ false, %339 ]
  %342 = phi i32 [ %321, %3 ], [ %477, %339 ]
  %343 = phi i32 [ %319, %3 ], [ %505, %339 ]
  %344 = phi i32 [ %317, %3 ], [ %533, %339 ]
  %345 = phi i32 [ %315, %3 ], [ %561, %339 ]
  %346 = phi i32 [ %313, %3 ], [ %488, %339 ]
  %347 = phi i32 [ %311, %3 ], [ %516, %339 ]
  %348 = phi i32 [ %309, %3 ], [ %544, %339 ]
  %349 = phi i32 [ %307, %3 ], [ %572, %339 ]
  %350 = phi ptr [ %2, %3 ], [ %573, %339 ]
  %351 = tail call i32 @llvm.fshl.i32(i32 %345, i32 %345, i32 26)
  %352 = tail call i32 @llvm.fshl.i32(i32 %345, i32 %345, i32 21)
  %353 = xor i32 %351, %352
  %354 = tail call i32 @llvm.fshl.i32(i32 %345, i32 %345, i32 7)
  %355 = xor i32 %353, %354
  %356 = xor i32 %343, %344
  %357 = and i32 %356, %345
  %358 = xor i32 %357, %343
  %359 = load i32, ptr %350, align 4, !tbaa !5
  %360 = load i32, ptr %340, align 4, !tbaa !5
  %361 = add i32 %342, %355
  %362 = add i32 %361, %358
  %363 = add i32 %362, %359
  %364 = add i32 %363, %360
  %365 = add i32 %364, %346
  %366 = tail call i32 @llvm.fshl.i32(i32 %349, i32 %349, i32 30)
  %367 = tail call i32 @llvm.fshl.i32(i32 %349, i32 %349, i32 19)
  %368 = xor i32 %366, %367
  %369 = tail call i32 @llvm.fshl.i32(i32 %349, i32 %349, i32 10)
  %370 = xor i32 %368, %369
  %371 = and i32 %348, %349
  %372 = xor i32 %348, %349
  %373 = and i32 %347, %372
  %374 = xor i32 %373, %371
  %375 = add i32 %374, %370
  %376 = add i32 %375, %364
  %377 = tail call i32 @llvm.fshl.i32(i32 %365, i32 %365, i32 26)
  %378 = tail call i32 @llvm.fshl.i32(i32 %365, i32 %365, i32 21)
  %379 = xor i32 %377, %378
  %380 = tail call i32 @llvm.fshl.i32(i32 %365, i32 %365, i32 7)
  %381 = xor i32 %379, %380
  %382 = xor i32 %344, %345
  %383 = and i32 %365, %382
  %384 = xor i32 %383, %344
  %385 = getelementptr inbounds nuw i8, ptr %350, i64 4
  %386 = load i32, ptr %385, align 4, !tbaa !5
  %387 = getelementptr inbounds nuw i8, ptr %340, i64 4
  %388 = load i32, ptr %387, align 4, !tbaa !5
  %389 = add i32 %386, %343
  %390 = add i32 %389, %388
  %391 = add i32 %390, %384
  %392 = add i32 %391, %381
  %393 = add i32 %392, %347
  %394 = tail call i32 @llvm.fshl.i32(i32 %376, i32 %376, i32 30)
  %395 = tail call i32 @llvm.fshl.i32(i32 %376, i32 %376, i32 19)
  %396 = xor i32 %394, %395
  %397 = tail call i32 @llvm.fshl.i32(i32 %376, i32 %376, i32 10)
  %398 = xor i32 %396, %397
  %399 = and i32 %376, %349
  %400 = xor i32 %376, %349
  %401 = and i32 %400, %348
  %402 = xor i32 %401, %399
  %403 = add i32 %398, %402
  %404 = add i32 %403, %392
  %405 = tail call i32 @llvm.fshl.i32(i32 %393, i32 %393, i32 26)
  %406 = tail call i32 @llvm.fshl.i32(i32 %393, i32 %393, i32 21)
  %407 = xor i32 %405, %406
  %408 = tail call i32 @llvm.fshl.i32(i32 %393, i32 %393, i32 7)
  %409 = xor i32 %407, %408
  %410 = xor i32 %365, %345
  %411 = and i32 %393, %410
  %412 = xor i32 %411, %345
  %413 = getelementptr inbounds nuw i8, ptr %350, i64 8
  %414 = load i32, ptr %413, align 4, !tbaa !5
  %415 = getelementptr inbounds nuw i8, ptr %340, i64 8
  %416 = load i32, ptr %415, align 4, !tbaa !5
  %417 = add i32 %414, %344
  %418 = add i32 %417, %416
  %419 = add i32 %418, %412
  %420 = add i32 %419, %409
  %421 = add i32 %420, %348
  %422 = tail call i32 @llvm.fshl.i32(i32 %404, i32 %404, i32 30)
  %423 = tail call i32 @llvm.fshl.i32(i32 %404, i32 %404, i32 19)
  %424 = xor i32 %422, %423
  %425 = tail call i32 @llvm.fshl.i32(i32 %404, i32 %404, i32 10)
  %426 = xor i32 %424, %425
  %427 = and i32 %404, %376
  %428 = xor i32 %404, %376
  %429 = and i32 %428, %349
  %430 = xor i32 %429, %427
  %431 = add i32 %426, %430
  %432 = add i32 %431, %420
  %433 = tail call i32 @llvm.fshl.i32(i32 %421, i32 %421, i32 26)
  %434 = tail call i32 @llvm.fshl.i32(i32 %421, i32 %421, i32 21)
  %435 = xor i32 %433, %434
  %436 = tail call i32 @llvm.fshl.i32(i32 %421, i32 %421, i32 7)
  %437 = xor i32 %435, %436
  %438 = xor i32 %393, %365
  %439 = and i32 %421, %438
  %440 = xor i32 %439, %365
  %441 = getelementptr inbounds nuw i8, ptr %350, i64 12
  %442 = load i32, ptr %441, align 4, !tbaa !5
  %443 = getelementptr inbounds nuw i8, ptr %340, i64 12
  %444 = load i32, ptr %443, align 4, !tbaa !5
  %445 = add i32 %442, %345
  %446 = add i32 %445, %444
  %447 = add i32 %446, %440
  %448 = add i32 %447, %437
  %449 = add i32 %448, %349
  %450 = tail call i32 @llvm.fshl.i32(i32 %432, i32 %432, i32 30)
  %451 = tail call i32 @llvm.fshl.i32(i32 %432, i32 %432, i32 19)
  %452 = xor i32 %450, %451
  %453 = tail call i32 @llvm.fshl.i32(i32 %432, i32 %432, i32 10)
  %454 = xor i32 %452, %453
  %455 = and i32 %432, %404
  %456 = xor i32 %432, %404
  %457 = and i32 %456, %376
  %458 = xor i32 %457, %455
  %459 = add i32 %454, %458
  %460 = add i32 %459, %448
  %461 = tail call i32 @llvm.fshl.i32(i32 %449, i32 %449, i32 26)
  %462 = tail call i32 @llvm.fshl.i32(i32 %449, i32 %449, i32 21)
  %463 = xor i32 %461, %462
  %464 = tail call i32 @llvm.fshl.i32(i32 %449, i32 %449, i32 7)
  %465 = xor i32 %463, %464
  %466 = xor i32 %421, %393
  %467 = and i32 %449, %466
  %468 = xor i32 %467, %393
  %469 = getelementptr inbounds nuw i8, ptr %350, i64 16
  %470 = load i32, ptr %469, align 4, !tbaa !5
  %471 = getelementptr inbounds nuw i8, ptr %340, i64 16
  %472 = load i32, ptr %471, align 4, !tbaa !5
  %473 = add i32 %470, %365
  %474 = add i32 %473, %472
  %475 = add i32 %474, %468
  %476 = add i32 %475, %465
  %477 = add i32 %476, %376
  %478 = tail call i32 @llvm.fshl.i32(i32 %460, i32 %460, i32 30)
  %479 = tail call i32 @llvm.fshl.i32(i32 %460, i32 %460, i32 19)
  %480 = xor i32 %478, %479
  %481 = tail call i32 @llvm.fshl.i32(i32 %460, i32 %460, i32 10)
  %482 = xor i32 %480, %481
  %483 = and i32 %460, %432
  %484 = xor i32 %460, %432
  %485 = and i32 %484, %404
  %486 = xor i32 %485, %483
  %487 = add i32 %482, %486
  %488 = add i32 %487, %476
  %489 = tail call i32 @llvm.fshl.i32(i32 %477, i32 %477, i32 26)
  %490 = tail call i32 @llvm.fshl.i32(i32 %477, i32 %477, i32 21)
  %491 = xor i32 %489, %490
  %492 = tail call i32 @llvm.fshl.i32(i32 %477, i32 %477, i32 7)
  %493 = xor i32 %491, %492
  %494 = xor i32 %449, %421
  %495 = and i32 %477, %494
  %496 = xor i32 %495, %421
  %497 = getelementptr inbounds nuw i8, ptr %350, i64 20
  %498 = load i32, ptr %497, align 4, !tbaa !5
  %499 = getelementptr inbounds nuw i8, ptr %340, i64 20
  %500 = load i32, ptr %499, align 4, !tbaa !5
  %501 = add i32 %500, %498
  %502 = add i32 %501, %393
  %503 = add i32 %502, %496
  %504 = add i32 %503, %493
  %505 = add i32 %504, %404
  %506 = tail call i32 @llvm.fshl.i32(i32 %488, i32 %488, i32 30)
  %507 = tail call i32 @llvm.fshl.i32(i32 %488, i32 %488, i32 19)
  %508 = xor i32 %506, %507
  %509 = tail call i32 @llvm.fshl.i32(i32 %488, i32 %488, i32 10)
  %510 = xor i32 %508, %509
  %511 = and i32 %488, %460
  %512 = xor i32 %488, %460
  %513 = and i32 %512, %432
  %514 = xor i32 %513, %511
  %515 = add i32 %510, %514
  %516 = add i32 %515, %504
  %517 = tail call i32 @llvm.fshl.i32(i32 %505, i32 %505, i32 26)
  %518 = tail call i32 @llvm.fshl.i32(i32 %505, i32 %505, i32 21)
  %519 = xor i32 %517, %518
  %520 = tail call i32 @llvm.fshl.i32(i32 %505, i32 %505, i32 7)
  %521 = xor i32 %519, %520
  %522 = xor i32 %477, %449
  %523 = and i32 %505, %522
  %524 = xor i32 %523, %449
  %525 = getelementptr inbounds nuw i8, ptr %350, i64 24
  %526 = load i32, ptr %525, align 4, !tbaa !5
  %527 = getelementptr inbounds nuw i8, ptr %340, i64 24
  %528 = load i32, ptr %527, align 4, !tbaa !5
  %529 = add i32 %528, %526
  %530 = add i32 %529, %421
  %531 = add i32 %530, %524
  %532 = add i32 %531, %521
  %533 = add i32 %532, %432
  %534 = tail call i32 @llvm.fshl.i32(i32 %516, i32 %516, i32 30)
  %535 = tail call i32 @llvm.fshl.i32(i32 %516, i32 %516, i32 19)
  %536 = xor i32 %534, %535
  %537 = tail call i32 @llvm.fshl.i32(i32 %516, i32 %516, i32 10)
  %538 = xor i32 %536, %537
  %539 = and i32 %516, %488
  %540 = xor i32 %516, %488
  %541 = and i32 %540, %460
  %542 = xor i32 %541, %539
  %543 = add i32 %538, %542
  %544 = add i32 %543, %532
  %545 = tail call i32 @llvm.fshl.i32(i32 %533, i32 %533, i32 26)
  %546 = tail call i32 @llvm.fshl.i32(i32 %533, i32 %533, i32 21)
  %547 = xor i32 %545, %546
  %548 = tail call i32 @llvm.fshl.i32(i32 %533, i32 %533, i32 7)
  %549 = xor i32 %547, %548
  %550 = xor i32 %505, %477
  %551 = and i32 %533, %550
  %552 = xor i32 %551, %477
  %553 = getelementptr inbounds nuw i8, ptr %350, i64 28
  %554 = load i32, ptr %553, align 4, !tbaa !5
  %555 = getelementptr inbounds nuw i8, ptr %340, i64 28
  %556 = load i32, ptr %555, align 4, !tbaa !5
  %557 = add i32 %556, %554
  %558 = add i32 %557, %449
  %559 = add i32 %558, %552
  %560 = add i32 %559, %549
  %561 = add i32 %560, %460
  %562 = tail call i32 @llvm.fshl.i32(i32 %544, i32 %544, i32 30)
  %563 = tail call i32 @llvm.fshl.i32(i32 %544, i32 %544, i32 19)
  %564 = xor i32 %562, %563
  %565 = tail call i32 @llvm.fshl.i32(i32 %544, i32 %544, i32 10)
  %566 = xor i32 %564, %565
  %567 = and i32 %544, %516
  %568 = xor i32 %544, %516
  %569 = and i32 %568, %488
  %570 = xor i32 %569, %567
  %571 = add i32 %566, %570
  %572 = add i32 %571, %560
  %573 = getelementptr inbounds nuw i8, ptr %350, i64 32
  %574 = getelementptr inbounds nuw i8, ptr %340, i64 32
  br i1 %341, label %339, label %322, !llvm.loop !12

575:                                              ; preds = %322, %575
  %576 = phi i32 [ %338, %322 ], [ %936, %575 ]
  %577 = phi i32 [ %337, %322 ], [ %897, %575 ]
  %578 = phi i32 [ %336, %322 ], [ %858, %575 ]
  %579 = phi i32 [ %335, %322 ], [ %819, %575 ]
  %580 = phi i32 [ %334, %322 ], [ %1131, %575 ]
  %581 = phi i32 [ %333, %322 ], [ %780, %575 ]
  %582 = phi i32 [ %332, %322 ], [ %1092, %575 ]
  %583 = phi i32 [ %331, %322 ], [ %741, %575 ]
  %584 = phi i32 [ %330, %322 ], [ %1053, %575 ]
  %585 = phi i32 [ %329, %322 ], [ %702, %575 ]
  %586 = phi i32 [ %328, %322 ], [ %1014, %575 ]
  %587 = phi i32 [ %327, %322 ], [ %1209, %575 ]
  %588 = phi i32 [ %326, %322 ], [ %663, %575 ]
  %589 = phi i32 [ %325, %322 ], [ %975, %575 ]
  %590 = phi i32 [ %324, %322 ], [ %1170, %575 ]
  %591 = phi i32 [ 16, %322 ], [ %1226, %575 ]
  %592 = phi i32 [ %477, %322 ], [ %1097, %575 ]
  %593 = phi i32 [ %505, %322 ], [ %1136, %575 ]
  %594 = phi i32 [ %533, %322 ], [ %1175, %575 ]
  %595 = phi i32 [ %561, %322 ], [ %1214, %575 ]
  %596 = phi i32 [ %488, %322 ], [ %1108, %575 ]
  %597 = phi i32 [ %516, %322 ], [ %1147, %575 ]
  %598 = phi i32 [ %544, %322 ], [ %1186, %575 ]
  %599 = phi i32 [ %572, %322 ], [ %1225, %575 ]
  %600 = phi ptr [ %2, %322 ], [ %602, %575 ]
  %601 = phi i32 [ %323, %322 ], [ %624, %575 ]
  %602 = getelementptr i8, ptr %600, i64 64
  %603 = tail call i32 @llvm.fshl.i32(i32 %595, i32 %595, i32 26)
  %604 = tail call i32 @llvm.fshl.i32(i32 %595, i32 %595, i32 21)
  %605 = xor i32 %603, %604
  %606 = tail call i32 @llvm.fshl.i32(i32 %595, i32 %595, i32 7)
  %607 = xor i32 %605, %606
  %608 = xor i32 %593, %594
  %609 = and i32 %608, %595
  %610 = xor i32 %609, %593
  %611 = load i32, ptr %602, align 4, !tbaa !5
  %612 = tail call i32 @llvm.fshl.i32(i32 %590, i32 %590, i32 15)
  %613 = tail call i32 @llvm.fshl.i32(i32 %590, i32 %590, i32 13)
  %614 = xor i32 %612, %613
  %615 = lshr i32 %590, 10
  %616 = xor i32 %614, %615
  %617 = add i32 %616, %589
  %618 = tail call i32 @llvm.fshl.i32(i32 %588, i32 %588, i32 25)
  %619 = tail call i32 @llvm.fshl.i32(i32 %588, i32 %588, i32 14)
  %620 = xor i32 %618, %619
  %621 = lshr i32 %588, 3
  %622 = xor i32 %620, %621
  %623 = add i32 %617, %601
  %624 = add i32 %623, %622
  %625 = add i32 %592, %607
  %626 = add i32 %625, %610
  %627 = add i32 %626, %611
  %628 = add i32 %627, %624
  %629 = add i32 %628, %596
  %630 = tail call i32 @llvm.fshl.i32(i32 %599, i32 %599, i32 30)
  %631 = tail call i32 @llvm.fshl.i32(i32 %599, i32 %599, i32 19)
  %632 = xor i32 %630, %631
  %633 = tail call i32 @llvm.fshl.i32(i32 %599, i32 %599, i32 10)
  %634 = xor i32 %632, %633
  %635 = and i32 %598, %599
  %636 = xor i32 %598, %599
  %637 = and i32 %597, %636
  %638 = xor i32 %637, %635
  %639 = add i32 %638, %634
  %640 = add i32 %639, %628
  %641 = tail call i32 @llvm.fshl.i32(i32 %629, i32 %629, i32 26)
  %642 = tail call i32 @llvm.fshl.i32(i32 %629, i32 %629, i32 21)
  %643 = xor i32 %641, %642
  %644 = tail call i32 @llvm.fshl.i32(i32 %629, i32 %629, i32 7)
  %645 = xor i32 %643, %644
  %646 = xor i32 %594, %595
  %647 = and i32 %629, %646
  %648 = xor i32 %647, %594
  %649 = getelementptr i8, ptr %600, i64 68
  %650 = load i32, ptr %649, align 4, !tbaa !5
  %651 = tail call i32 @llvm.fshl.i32(i32 %587, i32 %587, i32 15)
  %652 = tail call i32 @llvm.fshl.i32(i32 %587, i32 %587, i32 13)
  %653 = xor i32 %651, %652
  %654 = lshr i32 %587, 10
  %655 = xor i32 %653, %654
  %656 = tail call i32 @llvm.fshl.i32(i32 %585, i32 %585, i32 25)
  %657 = tail call i32 @llvm.fshl.i32(i32 %585, i32 %585, i32 14)
  %658 = xor i32 %656, %657
  %659 = lshr i32 %585, 3
  %660 = xor i32 %658, %659
  %661 = add i32 %586, %588
  %662 = add i32 %661, %655
  %663 = add i32 %662, %660
  %664 = add i32 %650, %593
  %665 = add i32 %664, %648
  %666 = add i32 %665, %645
  %667 = add i32 %666, %663
  %668 = add i32 %667, %597
  %669 = tail call i32 @llvm.fshl.i32(i32 %640, i32 %640, i32 30)
  %670 = tail call i32 @llvm.fshl.i32(i32 %640, i32 %640, i32 19)
  %671 = xor i32 %669, %670
  %672 = tail call i32 @llvm.fshl.i32(i32 %640, i32 %640, i32 10)
  %673 = xor i32 %671, %672
  %674 = and i32 %640, %599
  %675 = xor i32 %640, %599
  %676 = and i32 %675, %598
  %677 = xor i32 %676, %674
  %678 = add i32 %673, %677
  %679 = add i32 %678, %667
  %680 = tail call i32 @llvm.fshl.i32(i32 %668, i32 %668, i32 26)
  %681 = tail call i32 @llvm.fshl.i32(i32 %668, i32 %668, i32 21)
  %682 = xor i32 %680, %681
  %683 = tail call i32 @llvm.fshl.i32(i32 %668, i32 %668, i32 7)
  %684 = xor i32 %682, %683
  %685 = xor i32 %629, %595
  %686 = and i32 %668, %685
  %687 = xor i32 %686, %595
  %688 = getelementptr i8, ptr %600, i64 72
  %689 = load i32, ptr %688, align 4, !tbaa !5
  %690 = tail call i32 @llvm.fshl.i32(i32 %624, i32 %624, i32 15)
  %691 = tail call i32 @llvm.fshl.i32(i32 %624, i32 %624, i32 13)
  %692 = xor i32 %690, %691
  %693 = lshr i32 %624, 10
  %694 = xor i32 %692, %693
  %695 = tail call i32 @llvm.fshl.i32(i32 %583, i32 %583, i32 25)
  %696 = tail call i32 @llvm.fshl.i32(i32 %583, i32 %583, i32 14)
  %697 = xor i32 %695, %696
  %698 = lshr i32 %583, 3
  %699 = xor i32 %697, %698
  %700 = add i32 %694, %585
  %701 = add i32 %700, %584
  %702 = add i32 %701, %699
  %703 = add i32 %689, %594
  %704 = add i32 %703, %702
  %705 = add i32 %704, %687
  %706 = add i32 %705, %684
  %707 = add i32 %706, %598
  %708 = tail call i32 @llvm.fshl.i32(i32 %679, i32 %679, i32 30)
  %709 = tail call i32 @llvm.fshl.i32(i32 %679, i32 %679, i32 19)
  %710 = xor i32 %708, %709
  %711 = tail call i32 @llvm.fshl.i32(i32 %679, i32 %679, i32 10)
  %712 = xor i32 %710, %711
  %713 = and i32 %679, %640
  %714 = xor i32 %679, %640
  %715 = and i32 %714, %599
  %716 = xor i32 %715, %713
  %717 = add i32 %712, %716
  %718 = add i32 %717, %706
  %719 = tail call i32 @llvm.fshl.i32(i32 %707, i32 %707, i32 26)
  %720 = tail call i32 @llvm.fshl.i32(i32 %707, i32 %707, i32 21)
  %721 = xor i32 %719, %720
  %722 = tail call i32 @llvm.fshl.i32(i32 %707, i32 %707, i32 7)
  %723 = xor i32 %721, %722
  %724 = xor i32 %668, %629
  %725 = and i32 %707, %724
  %726 = xor i32 %725, %629
  %727 = getelementptr i8, ptr %600, i64 76
  %728 = load i32, ptr %727, align 4, !tbaa !5
  %729 = tail call i32 @llvm.fshl.i32(i32 %663, i32 %663, i32 15)
  %730 = tail call i32 @llvm.fshl.i32(i32 %663, i32 %663, i32 13)
  %731 = xor i32 %729, %730
  %732 = lshr i32 %663, 10
  %733 = xor i32 %731, %732
  %734 = tail call i32 @llvm.fshl.i32(i32 %581, i32 %581, i32 25)
  %735 = tail call i32 @llvm.fshl.i32(i32 %581, i32 %581, i32 14)
  %736 = xor i32 %734, %735
  %737 = lshr i32 %581, 3
  %738 = xor i32 %736, %737
  %739 = add i32 %582, %583
  %740 = add i32 %739, %733
  %741 = add i32 %740, %738
  %742 = add i32 %728, %595
  %743 = add i32 %742, %741
  %744 = add i32 %743, %726
  %745 = add i32 %744, %723
  %746 = add i32 %745, %599
  %747 = tail call i32 @llvm.fshl.i32(i32 %718, i32 %718, i32 30)
  %748 = tail call i32 @llvm.fshl.i32(i32 %718, i32 %718, i32 19)
  %749 = xor i32 %747, %748
  %750 = tail call i32 @llvm.fshl.i32(i32 %718, i32 %718, i32 10)
  %751 = xor i32 %749, %750
  %752 = and i32 %718, %679
  %753 = xor i32 %718, %679
  %754 = and i32 %753, %640
  %755 = xor i32 %754, %752
  %756 = add i32 %751, %755
  %757 = add i32 %756, %745
  %758 = tail call i32 @llvm.fshl.i32(i32 %746, i32 %746, i32 26)
  %759 = tail call i32 @llvm.fshl.i32(i32 %746, i32 %746, i32 21)
  %760 = xor i32 %758, %759
  %761 = tail call i32 @llvm.fshl.i32(i32 %746, i32 %746, i32 7)
  %762 = xor i32 %760, %761
  %763 = xor i32 %707, %668
  %764 = and i32 %746, %763
  %765 = xor i32 %764, %668
  %766 = getelementptr i8, ptr %600, i64 80
  %767 = load i32, ptr %766, align 4, !tbaa !5
  %768 = tail call i32 @llvm.fshl.i32(i32 %702, i32 %702, i32 15)
  %769 = tail call i32 @llvm.fshl.i32(i32 %702, i32 %702, i32 13)
  %770 = xor i32 %768, %769
  %771 = lshr i32 %702, 10
  %772 = xor i32 %770, %771
  %773 = tail call i32 @llvm.fshl.i32(i32 %579, i32 %579, i32 25)
  %774 = tail call i32 @llvm.fshl.i32(i32 %579, i32 %579, i32 14)
  %775 = xor i32 %773, %774
  %776 = lshr i32 %579, 3
  %777 = xor i32 %775, %776
  %778 = add i32 %580, %581
  %779 = add i32 %778, %772
  %780 = add i32 %779, %777
  %781 = add i32 %767, %629
  %782 = add i32 %781, %780
  %783 = add i32 %782, %765
  %784 = add i32 %783, %762
  %785 = add i32 %784, %640
  %786 = tail call i32 @llvm.fshl.i32(i32 %757, i32 %757, i32 30)
  %787 = tail call i32 @llvm.fshl.i32(i32 %757, i32 %757, i32 19)
  %788 = xor i32 %786, %787
  %789 = tail call i32 @llvm.fshl.i32(i32 %757, i32 %757, i32 10)
  %790 = xor i32 %788, %789
  %791 = and i32 %757, %718
  %792 = xor i32 %757, %718
  %793 = and i32 %792, %679
  %794 = xor i32 %793, %791
  %795 = add i32 %790, %794
  %796 = add i32 %795, %784
  %797 = tail call i32 @llvm.fshl.i32(i32 %785, i32 %785, i32 26)
  %798 = tail call i32 @llvm.fshl.i32(i32 %785, i32 %785, i32 21)
  %799 = xor i32 %797, %798
  %800 = tail call i32 @llvm.fshl.i32(i32 %785, i32 %785, i32 7)
  %801 = xor i32 %799, %800
  %802 = xor i32 %746, %707
  %803 = and i32 %785, %802
  %804 = xor i32 %803, %707
  %805 = getelementptr i8, ptr %600, i64 84
  %806 = load i32, ptr %805, align 4, !tbaa !5
  %807 = tail call i32 @llvm.fshl.i32(i32 %741, i32 %741, i32 15)
  %808 = tail call i32 @llvm.fshl.i32(i32 %741, i32 %741, i32 13)
  %809 = xor i32 %807, %808
  %810 = lshr i32 %741, 10
  %811 = xor i32 %809, %810
  %812 = tail call i32 @llvm.fshl.i32(i32 %578, i32 %578, i32 25)
  %813 = tail call i32 @llvm.fshl.i32(i32 %578, i32 %578, i32 14)
  %814 = xor i32 %812, %813
  %815 = lshr i32 %578, 3
  %816 = xor i32 %814, %815
  %817 = add i32 %579, %590
  %818 = add i32 %817, %811
  %819 = add i32 %818, %816
  %820 = add i32 %806, %668
  %821 = add i32 %820, %819
  %822 = add i32 %821, %804
  %823 = add i32 %822, %801
  %824 = add i32 %823, %679
  %825 = tail call i32 @llvm.fshl.i32(i32 %796, i32 %796, i32 30)
  %826 = tail call i32 @llvm.fshl.i32(i32 %796, i32 %796, i32 19)
  %827 = xor i32 %825, %826
  %828 = tail call i32 @llvm.fshl.i32(i32 %796, i32 %796, i32 10)
  %829 = xor i32 %827, %828
  %830 = and i32 %796, %757
  %831 = xor i32 %796, %757
  %832 = and i32 %831, %718
  %833 = xor i32 %832, %830
  %834 = add i32 %829, %833
  %835 = add i32 %834, %823
  %836 = tail call i32 @llvm.fshl.i32(i32 %824, i32 %824, i32 26)
  %837 = tail call i32 @llvm.fshl.i32(i32 %824, i32 %824, i32 21)
  %838 = xor i32 %836, %837
  %839 = tail call i32 @llvm.fshl.i32(i32 %824, i32 %824, i32 7)
  %840 = xor i32 %838, %839
  %841 = xor i32 %785, %746
  %842 = and i32 %824, %841
  %843 = xor i32 %842, %746
  %844 = getelementptr i8, ptr %600, i64 88
  %845 = load i32, ptr %844, align 4, !tbaa !5
  %846 = tail call i32 @llvm.fshl.i32(i32 %780, i32 %780, i32 15)
  %847 = tail call i32 @llvm.fshl.i32(i32 %780, i32 %780, i32 13)
  %848 = xor i32 %846, %847
  %849 = lshr i32 %780, 10
  %850 = xor i32 %848, %849
  %851 = tail call i32 @llvm.fshl.i32(i32 %577, i32 %577, i32 25)
  %852 = tail call i32 @llvm.fshl.i32(i32 %577, i32 %577, i32 14)
  %853 = xor i32 %851, %852
  %854 = lshr i32 %577, 3
  %855 = xor i32 %853, %854
  %856 = add i32 %578, %587
  %857 = add i32 %856, %850
  %858 = add i32 %857, %855
  %859 = add i32 %707, %845
  %860 = add i32 %859, %858
  %861 = add i32 %860, %843
  %862 = add i32 %861, %840
  %863 = add i32 %862, %718
  %864 = tail call i32 @llvm.fshl.i32(i32 %835, i32 %835, i32 30)
  %865 = tail call i32 @llvm.fshl.i32(i32 %835, i32 %835, i32 19)
  %866 = xor i32 %864, %865
  %867 = tail call i32 @llvm.fshl.i32(i32 %835, i32 %835, i32 10)
  %868 = xor i32 %866, %867
  %869 = and i32 %835, %796
  %870 = xor i32 %835, %796
  %871 = and i32 %870, %757
  %872 = xor i32 %871, %869
  %873 = add i32 %868, %872
  %874 = add i32 %873, %862
  %875 = tail call i32 @llvm.fshl.i32(i32 %863, i32 %863, i32 26)
  %876 = tail call i32 @llvm.fshl.i32(i32 %863, i32 %863, i32 21)
  %877 = xor i32 %875, %876
  %878 = tail call i32 @llvm.fshl.i32(i32 %863, i32 %863, i32 7)
  %879 = xor i32 %877, %878
  %880 = xor i32 %824, %785
  %881 = and i32 %863, %880
  %882 = xor i32 %881, %785
  %883 = getelementptr i8, ptr %600, i64 92
  %884 = load i32, ptr %883, align 4, !tbaa !5
  %885 = tail call i32 @llvm.fshl.i32(i32 %819, i32 %819, i32 15)
  %886 = tail call i32 @llvm.fshl.i32(i32 %819, i32 %819, i32 13)
  %887 = xor i32 %885, %886
  %888 = lshr i32 %819, 10
  %889 = xor i32 %887, %888
  %890 = tail call i32 @llvm.fshl.i32(i32 %576, i32 %576, i32 25)
  %891 = tail call i32 @llvm.fshl.i32(i32 %576, i32 %576, i32 14)
  %892 = xor i32 %890, %891
  %893 = lshr i32 %576, 3
  %894 = xor i32 %892, %893
  %895 = add i32 %577, %624
  %896 = add i32 %895, %889
  %897 = add i32 %896, %894
  %898 = add i32 %897, %884
  %899 = add i32 %898, %746
  %900 = add i32 %899, %882
  %901 = add i32 %900, %879
  %902 = add i32 %901, %757
  %903 = tail call i32 @llvm.fshl.i32(i32 %874, i32 %874, i32 30)
  %904 = tail call i32 @llvm.fshl.i32(i32 %874, i32 %874, i32 19)
  %905 = xor i32 %903, %904
  %906 = tail call i32 @llvm.fshl.i32(i32 %874, i32 %874, i32 10)
  %907 = xor i32 %905, %906
  %908 = and i32 %874, %835
  %909 = xor i32 %874, %835
  %910 = and i32 %909, %796
  %911 = xor i32 %910, %908
  %912 = add i32 %907, %911
  %913 = add i32 %912, %901
  %914 = tail call i32 @llvm.fshl.i32(i32 %902, i32 %902, i32 26)
  %915 = tail call i32 @llvm.fshl.i32(i32 %902, i32 %902, i32 21)
  %916 = xor i32 %914, %915
  %917 = tail call i32 @llvm.fshl.i32(i32 %902, i32 %902, i32 7)
  %918 = xor i32 %916, %917
  %919 = xor i32 %863, %824
  %920 = and i32 %902, %919
  %921 = xor i32 %920, %824
  %922 = getelementptr i8, ptr %600, i64 96
  %923 = load i32, ptr %922, align 4, !tbaa !5
  %924 = tail call i32 @llvm.fshl.i32(i32 %858, i32 %858, i32 15)
  %925 = tail call i32 @llvm.fshl.i32(i32 %858, i32 %858, i32 13)
  %926 = xor i32 %924, %925
  %927 = lshr i32 %858, 10
  %928 = xor i32 %926, %927
  %929 = tail call i32 @llvm.fshl.i32(i32 %589, i32 %589, i32 25)
  %930 = tail call i32 @llvm.fshl.i32(i32 %589, i32 %589, i32 14)
  %931 = xor i32 %929, %930
  %932 = lshr i32 %589, 3
  %933 = xor i32 %931, %932
  %934 = add i32 %663, %933
  %935 = add i32 %934, %576
  %936 = add i32 %935, %928
  %937 = add i32 %936, %923
  %938 = add i32 %937, %785
  %939 = add i32 %938, %921
  %940 = add i32 %939, %918
  %941 = add i32 %940, %796
  %942 = tail call i32 @llvm.fshl.i32(i32 %913, i32 %913, i32 30)
  %943 = tail call i32 @llvm.fshl.i32(i32 %913, i32 %913, i32 19)
  %944 = xor i32 %942, %943
  %945 = tail call i32 @llvm.fshl.i32(i32 %913, i32 %913, i32 10)
  %946 = xor i32 %944, %945
  %947 = and i32 %913, %874
  %948 = xor i32 %913, %874
  %949 = and i32 %948, %835
  %950 = xor i32 %949, %947
  %951 = add i32 %946, %950
  %952 = add i32 %951, %940
  %953 = tail call i32 @llvm.fshl.i32(i32 %941, i32 %941, i32 26)
  %954 = tail call i32 @llvm.fshl.i32(i32 %941, i32 %941, i32 21)
  %955 = xor i32 %953, %954
  %956 = tail call i32 @llvm.fshl.i32(i32 %941, i32 %941, i32 7)
  %957 = xor i32 %955, %956
  %958 = xor i32 %902, %863
  %959 = and i32 %941, %958
  %960 = xor i32 %959, %863
  %961 = getelementptr i8, ptr %600, i64 100
  %962 = load i32, ptr %961, align 4, !tbaa !5
  %963 = tail call i32 @llvm.fshl.i32(i32 %897, i32 %897, i32 15)
  %964 = tail call i32 @llvm.fshl.i32(i32 %897, i32 %897, i32 13)
  %965 = xor i32 %963, %964
  %966 = lshr i32 %897, 10
  %967 = xor i32 %965, %966
  %968 = tail call i32 @llvm.fshl.i32(i32 %586, i32 %586, i32 25)
  %969 = tail call i32 @llvm.fshl.i32(i32 %586, i32 %586, i32 14)
  %970 = xor i32 %968, %969
  %971 = lshr i32 %586, 3
  %972 = xor i32 %970, %971
  %973 = add i32 %972, %589
  %974 = add i32 %973, %702
  %975 = add i32 %974, %967
  %976 = add i32 %975, %962
  %977 = add i32 %976, %824
  %978 = add i32 %977, %960
  %979 = add i32 %978, %957
  %980 = add i32 %979, %835
  %981 = tail call i32 @llvm.fshl.i32(i32 %952, i32 %952, i32 30)
  %982 = tail call i32 @llvm.fshl.i32(i32 %952, i32 %952, i32 19)
  %983 = xor i32 %981, %982
  %984 = tail call i32 @llvm.fshl.i32(i32 %952, i32 %952, i32 10)
  %985 = xor i32 %983, %984
  %986 = and i32 %952, %913
  %987 = xor i32 %952, %913
  %988 = and i32 %987, %874
  %989 = xor i32 %988, %986
  %990 = add i32 %985, %989
  %991 = add i32 %990, %979
  %992 = tail call i32 @llvm.fshl.i32(i32 %980, i32 %980, i32 26)
  %993 = tail call i32 @llvm.fshl.i32(i32 %980, i32 %980, i32 21)
  %994 = xor i32 %992, %993
  %995 = tail call i32 @llvm.fshl.i32(i32 %980, i32 %980, i32 7)
  %996 = xor i32 %994, %995
  %997 = xor i32 %941, %902
  %998 = and i32 %980, %997
  %999 = xor i32 %998, %902
  %1000 = getelementptr i8, ptr %600, i64 104
  %1001 = load i32, ptr %1000, align 4, !tbaa !5
  %1002 = tail call i32 @llvm.fshl.i32(i32 %936, i32 %936, i32 15)
  %1003 = tail call i32 @llvm.fshl.i32(i32 %936, i32 %936, i32 13)
  %1004 = xor i32 %1002, %1003
  %1005 = lshr i32 %936, 10
  %1006 = xor i32 %1004, %1005
  %1007 = tail call i32 @llvm.fshl.i32(i32 %584, i32 %584, i32 25)
  %1008 = tail call i32 @llvm.fshl.i32(i32 %584, i32 %584, i32 14)
  %1009 = xor i32 %1007, %1008
  %1010 = lshr i32 %584, 3
  %1011 = xor i32 %1009, %1010
  %1012 = add i32 %1011, %586
  %1013 = add i32 %1012, %741
  %1014 = add i32 %1013, %1006
  %1015 = add i32 %1014, %1001
  %1016 = add i32 %1015, %863
  %1017 = add i32 %1016, %999
  %1018 = add i32 %1017, %996
  %1019 = add i32 %1018, %874
  %1020 = tail call i32 @llvm.fshl.i32(i32 %991, i32 %991, i32 30)
  %1021 = tail call i32 @llvm.fshl.i32(i32 %991, i32 %991, i32 19)
  %1022 = xor i32 %1020, %1021
  %1023 = tail call i32 @llvm.fshl.i32(i32 %991, i32 %991, i32 10)
  %1024 = xor i32 %1022, %1023
  %1025 = and i32 %991, %952
  %1026 = xor i32 %991, %952
  %1027 = and i32 %1026, %913
  %1028 = xor i32 %1027, %1025
  %1029 = add i32 %1024, %1028
  %1030 = add i32 %1029, %1018
  %1031 = tail call i32 @llvm.fshl.i32(i32 %1019, i32 %1019, i32 26)
  %1032 = tail call i32 @llvm.fshl.i32(i32 %1019, i32 %1019, i32 21)
  %1033 = xor i32 %1031, %1032
  %1034 = tail call i32 @llvm.fshl.i32(i32 %1019, i32 %1019, i32 7)
  %1035 = xor i32 %1033, %1034
  %1036 = xor i32 %980, %941
  %1037 = and i32 %1019, %1036
  %1038 = xor i32 %1037, %941
  %1039 = getelementptr i8, ptr %600, i64 108
  %1040 = load i32, ptr %1039, align 4, !tbaa !5
  %1041 = tail call i32 @llvm.fshl.i32(i32 %975, i32 %975, i32 15)
  %1042 = tail call i32 @llvm.fshl.i32(i32 %975, i32 %975, i32 13)
  %1043 = xor i32 %1041, %1042
  %1044 = lshr i32 %975, 10
  %1045 = xor i32 %1043, %1044
  %1046 = tail call i32 @llvm.fshl.i32(i32 %582, i32 %582, i32 25)
  %1047 = tail call i32 @llvm.fshl.i32(i32 %582, i32 %582, i32 14)
  %1048 = xor i32 %1046, %1047
  %1049 = lshr i32 %582, 3
  %1050 = xor i32 %1048, %1049
  %1051 = add i32 %1050, %584
  %1052 = add i32 %1051, %780
  %1053 = add i32 %1052, %1045
  %1054 = add i32 %1053, %1040
  %1055 = add i32 %1054, %902
  %1056 = add i32 %1055, %1038
  %1057 = add i32 %1056, %1035
  %1058 = add i32 %1057, %913
  %1059 = tail call i32 @llvm.fshl.i32(i32 %1030, i32 %1030, i32 30)
  %1060 = tail call i32 @llvm.fshl.i32(i32 %1030, i32 %1030, i32 19)
  %1061 = xor i32 %1059, %1060
  %1062 = tail call i32 @llvm.fshl.i32(i32 %1030, i32 %1030, i32 10)
  %1063 = xor i32 %1061, %1062
  %1064 = and i32 %1030, %991
  %1065 = xor i32 %1030, %991
  %1066 = and i32 %1065, %952
  %1067 = xor i32 %1066, %1064
  %1068 = add i32 %1063, %1067
  %1069 = add i32 %1068, %1057
  %1070 = tail call i32 @llvm.fshl.i32(i32 %1058, i32 %1058, i32 26)
  %1071 = tail call i32 @llvm.fshl.i32(i32 %1058, i32 %1058, i32 21)
  %1072 = xor i32 %1070, %1071
  %1073 = tail call i32 @llvm.fshl.i32(i32 %1058, i32 %1058, i32 7)
  %1074 = xor i32 %1072, %1073
  %1075 = xor i32 %1019, %980
  %1076 = and i32 %1058, %1075
  %1077 = xor i32 %1076, %980
  %1078 = getelementptr i8, ptr %600, i64 112
  %1079 = load i32, ptr %1078, align 4, !tbaa !5
  %1080 = tail call i32 @llvm.fshl.i32(i32 %1014, i32 %1014, i32 15)
  %1081 = tail call i32 @llvm.fshl.i32(i32 %1014, i32 %1014, i32 13)
  %1082 = xor i32 %1080, %1081
  %1083 = lshr i32 %1014, 10
  %1084 = xor i32 %1082, %1083
  %1085 = tail call i32 @llvm.fshl.i32(i32 %580, i32 %580, i32 25)
  %1086 = tail call i32 @llvm.fshl.i32(i32 %580, i32 %580, i32 14)
  %1087 = xor i32 %1085, %1086
  %1088 = lshr i32 %580, 3
  %1089 = xor i32 %1087, %1088
  %1090 = add i32 %1089, %582
  %1091 = add i32 %1090, %819
  %1092 = add i32 %1091, %1084
  %1093 = add i32 %1092, %1079
  %1094 = add i32 %1093, %941
  %1095 = add i32 %1094, %1077
  %1096 = add i32 %1095, %1074
  %1097 = add i32 %1096, %952
  %1098 = tail call i32 @llvm.fshl.i32(i32 %1069, i32 %1069, i32 30)
  %1099 = tail call i32 @llvm.fshl.i32(i32 %1069, i32 %1069, i32 19)
  %1100 = xor i32 %1098, %1099
  %1101 = tail call i32 @llvm.fshl.i32(i32 %1069, i32 %1069, i32 10)
  %1102 = xor i32 %1100, %1101
  %1103 = and i32 %1069, %1030
  %1104 = xor i32 %1069, %1030
  %1105 = and i32 %1104, %991
  %1106 = xor i32 %1105, %1103
  %1107 = add i32 %1102, %1106
  %1108 = add i32 %1107, %1096
  %1109 = tail call i32 @llvm.fshl.i32(i32 %1097, i32 %1097, i32 26)
  %1110 = tail call i32 @llvm.fshl.i32(i32 %1097, i32 %1097, i32 21)
  %1111 = xor i32 %1109, %1110
  %1112 = tail call i32 @llvm.fshl.i32(i32 %1097, i32 %1097, i32 7)
  %1113 = xor i32 %1111, %1112
  %1114 = xor i32 %1058, %1019
  %1115 = and i32 %1097, %1114
  %1116 = xor i32 %1115, %1019
  %1117 = getelementptr i8, ptr %600, i64 116
  %1118 = load i32, ptr %1117, align 4, !tbaa !5
  %1119 = tail call i32 @llvm.fshl.i32(i32 %1053, i32 %1053, i32 15)
  %1120 = tail call i32 @llvm.fshl.i32(i32 %1053, i32 %1053, i32 13)
  %1121 = xor i32 %1119, %1120
  %1122 = lshr i32 %1053, 10
  %1123 = xor i32 %1121, %1122
  %1124 = tail call i32 @llvm.fshl.i32(i32 %590, i32 %590, i32 25)
  %1125 = tail call i32 @llvm.fshl.i32(i32 %590, i32 %590, i32 14)
  %1126 = xor i32 %1124, %1125
  %1127 = lshr i32 %590, 3
  %1128 = xor i32 %1126, %1127
  %1129 = add i32 %580, %1128
  %1130 = add i32 %1129, %858
  %1131 = add i32 %1130, %1123
  %1132 = add i32 %1131, %1118
  %1133 = add i32 %1132, %980
  %1134 = add i32 %1133, %1116
  %1135 = add i32 %1134, %1113
  %1136 = add i32 %1135, %991
  %1137 = tail call i32 @llvm.fshl.i32(i32 %1108, i32 %1108, i32 30)
  %1138 = tail call i32 @llvm.fshl.i32(i32 %1108, i32 %1108, i32 19)
  %1139 = xor i32 %1137, %1138
  %1140 = tail call i32 @llvm.fshl.i32(i32 %1108, i32 %1108, i32 10)
  %1141 = xor i32 %1139, %1140
  %1142 = and i32 %1108, %1069
  %1143 = xor i32 %1108, %1069
  %1144 = and i32 %1143, %1030
  %1145 = xor i32 %1144, %1142
  %1146 = add i32 %1141, %1145
  %1147 = add i32 %1146, %1135
  %1148 = tail call i32 @llvm.fshl.i32(i32 %1136, i32 %1136, i32 26)
  %1149 = tail call i32 @llvm.fshl.i32(i32 %1136, i32 %1136, i32 21)
  %1150 = xor i32 %1148, %1149
  %1151 = tail call i32 @llvm.fshl.i32(i32 %1136, i32 %1136, i32 7)
  %1152 = xor i32 %1150, %1151
  %1153 = xor i32 %1097, %1058
  %1154 = and i32 %1136, %1153
  %1155 = xor i32 %1154, %1058
  %1156 = getelementptr i8, ptr %600, i64 120
  %1157 = load i32, ptr %1156, align 4, !tbaa !5
  %1158 = tail call i32 @llvm.fshl.i32(i32 %1092, i32 %1092, i32 15)
  %1159 = tail call i32 @llvm.fshl.i32(i32 %1092, i32 %1092, i32 13)
  %1160 = xor i32 %1158, %1159
  %1161 = lshr i32 %1092, 10
  %1162 = xor i32 %1160, %1161
  %1163 = tail call i32 @llvm.fshl.i32(i32 %587, i32 %587, i32 25)
  %1164 = tail call i32 @llvm.fshl.i32(i32 %587, i32 %587, i32 14)
  %1165 = xor i32 %1163, %1164
  %1166 = lshr i32 %587, 3
  %1167 = xor i32 %1165, %1166
  %1168 = add i32 %1167, %590
  %1169 = add i32 %1168, %897
  %1170 = add i32 %1169, %1162
  %1171 = add i32 %1170, %1157
  %1172 = add i32 %1171, %1019
  %1173 = add i32 %1172, %1155
  %1174 = add i32 %1173, %1152
  %1175 = add i32 %1174, %1030
  %1176 = tail call i32 @llvm.fshl.i32(i32 %1147, i32 %1147, i32 30)
  %1177 = tail call i32 @llvm.fshl.i32(i32 %1147, i32 %1147, i32 19)
  %1178 = xor i32 %1176, %1177
  %1179 = tail call i32 @llvm.fshl.i32(i32 %1147, i32 %1147, i32 10)
  %1180 = xor i32 %1178, %1179
  %1181 = and i32 %1147, %1108
  %1182 = xor i32 %1147, %1108
  %1183 = and i32 %1182, %1069
  %1184 = xor i32 %1183, %1181
  %1185 = add i32 %1180, %1184
  %1186 = add i32 %1185, %1174
  %1187 = tail call i32 @llvm.fshl.i32(i32 %1175, i32 %1175, i32 26)
  %1188 = tail call i32 @llvm.fshl.i32(i32 %1175, i32 %1175, i32 21)
  %1189 = xor i32 %1187, %1188
  %1190 = tail call i32 @llvm.fshl.i32(i32 %1175, i32 %1175, i32 7)
  %1191 = xor i32 %1189, %1190
  %1192 = xor i32 %1136, %1097
  %1193 = and i32 %1175, %1192
  %1194 = xor i32 %1193, %1097
  %1195 = getelementptr i8, ptr %600, i64 124
  %1196 = load i32, ptr %1195, align 4, !tbaa !5
  %1197 = tail call i32 @llvm.fshl.i32(i32 %1131, i32 %1131, i32 15)
  %1198 = tail call i32 @llvm.fshl.i32(i32 %1131, i32 %1131, i32 13)
  %1199 = xor i32 %1197, %1198
  %1200 = lshr i32 %1131, 10
  %1201 = xor i32 %1199, %1200
  %1202 = tail call i32 @llvm.fshl.i32(i32 %624, i32 %624, i32 25)
  %1203 = tail call i32 @llvm.fshl.i32(i32 %624, i32 %624, i32 14)
  %1204 = xor i32 %1202, %1203
  %1205 = lshr i32 %624, 3
  %1206 = xor i32 %1204, %1205
  %1207 = add i32 %1206, %587
  %1208 = add i32 %1207, %936
  %1209 = add i32 %1208, %1201
  %1210 = add i32 %1209, %1196
  %1211 = add i32 %1210, %1058
  %1212 = add i32 %1211, %1194
  %1213 = add i32 %1212, %1191
  %1214 = add i32 %1213, %1069
  %1215 = tail call i32 @llvm.fshl.i32(i32 %1186, i32 %1186, i32 30)
  %1216 = tail call i32 @llvm.fshl.i32(i32 %1186, i32 %1186, i32 19)
  %1217 = xor i32 %1215, %1216
  %1218 = tail call i32 @llvm.fshl.i32(i32 %1186, i32 %1186, i32 10)
  %1219 = xor i32 %1217, %1218
  %1220 = and i32 %1186, %1147
  %1221 = xor i32 %1186, %1147
  %1222 = and i32 %1221, %1108
  %1223 = xor i32 %1222, %1220
  %1224 = add i32 %1219, %1223
  %1225 = add i32 %1224, %1213
  %1226 = add nuw nsw i32 %591, 16
  %1227 = icmp samesign ult i32 %591, 48
  br i1 %1227, label %575, label %1228, !llvm.loop !13

1228:                                             ; preds = %575
  %1229 = add i32 %1225, %307
  store i32 %1229, ptr %0, align 4, !tbaa !5
  %1230 = add i32 %1186, %309
  store i32 %1230, ptr %308, align 4, !tbaa !5
  %1231 = add i32 %1147, %311
  store i32 %1231, ptr %310, align 4, !tbaa !5
  %1232 = add i32 %1108, %313
  store i32 %1232, ptr %312, align 4, !tbaa !5
  %1233 = add i32 %1214, %315
  store i32 %1233, ptr %314, align 4, !tbaa !5
  %1234 = add i32 %1175, %317
  store i32 %1234, ptr %316, align 4, !tbaa !5
  %1235 = add i32 %1136, %319
  store i32 %1235, ptr %318, align 4, !tbaa !5
  %1236 = add i32 %1097, %321
  store i32 %1236, ptr %320, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @sha256_init(ptr nocapture noundef writeonly initializes((0, 40), (104, 108)) %0) #2 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) @sha256_init.H0, i64 32, i1 false)
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %2, align 8, !tbaa !14
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 0, ptr %3, align 8, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @sha256_update(ptr nocapture noundef %0, i64 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %5 = load i32, ptr %4, align 8, !tbaa !17
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %3
  %8 = zext i32 %5 to i64
  %9 = sub i32 64, %5
  %10 = zext i32 %9 to i64
  %11 = icmp ult i64 %1, %10
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 %8
  br i1 %11, label %20, label %14

14:                                               ; preds = %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %13, ptr align 1 %2, i64 %10, i1 false)
  tail call void @_nettle_sha256_compress(ptr noundef nonnull %0, ptr noundef nonnull %12, ptr noundef nonnull @K)
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %16 = load i64, ptr %15, align 8, !tbaa !14
  %17 = add i64 %16, 1
  store i64 %17, ptr %15, align 8, !tbaa !14
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 %10
  %19 = sub nuw i64 %1, %10
  br label %24

20:                                               ; preds = %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %13, ptr align 1 %2, i64 %1, i1 false)
  %21 = load i32, ptr %4, align 8, !tbaa !17
  %22 = trunc i64 %1 to i32
  %23 = add i32 %21, %22
  br label %43

24:                                               ; preds = %14, %3
  %25 = phi ptr [ %2, %3 ], [ %18, %14 ]
  %26 = phi i64 [ %1, %3 ], [ %19, %14 ]
  %27 = icmp ugt i64 %26, 63
  br i1 %27, label %28, label %38

28:                                               ; preds = %24
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %30

30:                                               ; preds = %28, %30
  %31 = phi i64 [ %26, %28 ], [ %36, %30 ]
  %32 = phi ptr [ %25, %28 ], [ %35, %30 ]
  tail call void @_nettle_sha256_compress(ptr noundef nonnull %0, ptr noundef %32, ptr noundef nonnull @K)
  %33 = load i64, ptr %29, align 8, !tbaa !14
  %34 = add i64 %33, 1
  store i64 %34, ptr %29, align 8, !tbaa !14
  %35 = getelementptr inbounds nuw i8, ptr %32, i64 64
  %36 = add i64 %31, -64
  %37 = icmp ugt i64 %36, 63
  br i1 %37, label %30, label %38, !llvm.loop !18

38:                                               ; preds = %30, %24
  %39 = phi ptr [ %25, %24 ], [ %35, %30 ]
  %40 = phi i64 [ %26, %24 ], [ %36, %30 ]
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %41, ptr align 1 %39, i64 %40, i1 false)
  %42 = trunc nuw nsw i64 %40 to i32
  br label %43

43:                                               ; preds = %20, %38
  %44 = phi i32 [ %23, %20 ], [ %42, %38 ]
  store i32 %44, ptr %4, align 8, !tbaa !17
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @sha256_digest(ptr nocapture noundef %0, i64 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = icmp ult i64 %1, 33
  br i1 %4, label %6, label %5

5:                                                ; preds = %3, %5
  br label %5

6:                                                ; preds = %3
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %8 = load i32, ptr %7, align 8, !tbaa !17
  %9 = icmp ult i32 %8, 64
  br i1 %9, label %11, label %10

10:                                               ; preds = %6, %10
  br label %10

11:                                               ; preds = %6
  %12 = zext nneg i32 %8 to i64
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %14 = add nuw nsw i32 %8, 1
  %15 = getelementptr inbounds nuw [64 x i8], ptr %13, i64 0, i64 %12
  store i8 -128, ptr %15, align 1, !tbaa !9
  %16 = icmp samesign ugt i32 %8, 55
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = zext nneg i32 %14 to i64
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 %18
  %20 = sub nuw nsw i64 64, %18
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %19, i8 0, i64 %20, i1 false)
  tail call void @_nettle_sha256_compress(ptr noundef nonnull %0, ptr noundef nonnull %13, ptr noundef nonnull @K)
  br label %21

21:                                               ; preds = %17, %11
  %22 = phi i32 [ 0, %17 ], [ %14, %11 ]
  %23 = zext nneg i32 %22 to i64
  %24 = getelementptr inbounds nuw i8, ptr %13, i64 %23
  %25 = sub nuw nsw i64 56, %23
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %24, i8 0, i64 %25, i1 false)
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %27 = load i64, ptr %26, align 8, !tbaa !14
  %28 = shl i64 %27, 9
  %29 = load i32, ptr %7, align 8, !tbaa !17
  %30 = shl i32 %29, 3
  %31 = zext i32 %30 to i64
  %32 = or i64 %28, %31
  %33 = lshr i64 %28, 56
  %34 = trunc nuw i64 %33 to i8
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 %34, ptr %35, align 1, !tbaa !9
  %36 = lshr i64 %28, 48
  %37 = trunc i64 %36 to i8
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 97
  store i8 %37, ptr %38, align 1, !tbaa !9
  %39 = lshr i64 %28, 40
  %40 = trunc i64 %39 to i8
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 98
  store i8 %40, ptr %41, align 1, !tbaa !9
  %42 = lshr i64 %28, 32
  %43 = trunc i64 %42 to i8
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 99
  store i8 %43, ptr %44, align 1, !tbaa !9
  %45 = lshr i64 %32, 24
  %46 = trunc i64 %45 to i8
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i8 %46, ptr %47, align 1, !tbaa !9
  %48 = lshr i64 %32, 16
  %49 = trunc i64 %48 to i8
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 101
  store i8 %49, ptr %50, align 1, !tbaa !9
  %51 = lshr i64 %32, 8
  %52 = trunc i64 %51 to i8
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 102
  store i8 %52, ptr %53, align 1, !tbaa !9
  %54 = trunc i32 %30 to i8
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 103
  store i8 %54, ptr %55, align 1, !tbaa !9
  tail call void @_nettle_sha256_compress(ptr noundef nonnull %0, ptr noundef nonnull %13, ptr noundef nonnull @K)
  %56 = lshr i64 %1, 2
  %57 = trunc nuw i64 %1 to i32
  %58 = and i32 %57, 3
  %59 = icmp samesign ult i64 %1, 4
  br i1 %59, label %127, label %60

60:                                               ; preds = %21
  %61 = icmp eq i64 %56, 1
  br i1 %61, label %104, label %62

62:                                               ; preds = %60
  %63 = and i64 %56, 14
  br label %64

64:                                               ; preds = %64, %62
  %65 = phi ptr [ %2, %62 ], [ %101, %64 ]
  %66 = phi i64 [ 0, %62 ], [ %100, %64 ]
  %67 = phi i64 [ 0, %62 ], [ %102, %64 ]
  %68 = getelementptr inbounds nuw i32, ptr %0, i64 %66
  %69 = load i32, ptr %68, align 4, !tbaa !5
  %70 = lshr i32 %69, 24
  %71 = trunc nuw i32 %70 to i8
  store i8 %71, ptr %65, align 1, !tbaa !9
  %72 = load i32, ptr %68, align 4, !tbaa !5
  %73 = lshr i32 %72, 16
  %74 = trunc i32 %73 to i8
  %75 = getelementptr inbounds nuw i8, ptr %65, i64 1
  store i8 %74, ptr %75, align 1, !tbaa !9
  %76 = load i32, ptr %68, align 4, !tbaa !5
  %77 = lshr i32 %76, 8
  %78 = trunc i32 %77 to i8
  %79 = getelementptr inbounds nuw i8, ptr %65, i64 2
  store i8 %78, ptr %79, align 1, !tbaa !9
  %80 = load i32, ptr %68, align 4, !tbaa !5
  %81 = trunc i32 %80 to i8
  %82 = getelementptr inbounds nuw i8, ptr %65, i64 3
  store i8 %81, ptr %82, align 1, !tbaa !9
  %83 = or disjoint i64 %66, 1
  %84 = getelementptr inbounds nuw i8, ptr %65, i64 4
  %85 = getelementptr inbounds nuw i32, ptr %0, i64 %83
  %86 = load i32, ptr %85, align 4, !tbaa !5
  %87 = lshr i32 %86, 24
  %88 = trunc nuw i32 %87 to i8
  store i8 %88, ptr %84, align 1, !tbaa !9
  %89 = load i32, ptr %85, align 4, !tbaa !5
  %90 = lshr i32 %89, 16
  %91 = trunc i32 %90 to i8
  %92 = getelementptr inbounds nuw i8, ptr %65, i64 5
  store i8 %91, ptr %92, align 1, !tbaa !9
  %93 = load i32, ptr %85, align 4, !tbaa !5
  %94 = lshr i32 %93, 8
  %95 = trunc i32 %94 to i8
  %96 = getelementptr inbounds nuw i8, ptr %65, i64 6
  store i8 %95, ptr %96, align 1, !tbaa !9
  %97 = load i32, ptr %85, align 4, !tbaa !5
  %98 = trunc i32 %97 to i8
  %99 = getelementptr inbounds nuw i8, ptr %65, i64 7
  store i8 %98, ptr %99, align 1, !tbaa !9
  %100 = add nuw nsw i64 %66, 2
  %101 = getelementptr inbounds nuw i8, ptr %65, i64 8
  %102 = add i64 %67, 2
  %103 = icmp eq i64 %102, %63
  br i1 %103, label %104, label %64, !llvm.loop !10

104:                                              ; preds = %64, %60
  %105 = phi ptr [ poison, %60 ], [ %101, %64 ]
  %106 = phi ptr [ %2, %60 ], [ %101, %64 ]
  %107 = phi i64 [ 0, %60 ], [ %100, %64 ]
  %108 = and i64 %1, 4
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %127, label %110

110:                                              ; preds = %104
  %111 = getelementptr inbounds nuw i32, ptr %0, i64 %107
  %112 = load i32, ptr %111, align 4, !tbaa !5
  %113 = lshr i32 %112, 24
  %114 = trunc nuw i32 %113 to i8
  store i8 %114, ptr %106, align 1, !tbaa !9
  %115 = load i32, ptr %111, align 4, !tbaa !5
  %116 = lshr i32 %115, 16
  %117 = trunc i32 %116 to i8
  %118 = getelementptr inbounds nuw i8, ptr %106, i64 1
  store i8 %117, ptr %118, align 1, !tbaa !9
  %119 = load i32, ptr %111, align 4, !tbaa !5
  %120 = lshr i32 %119, 8
  %121 = trunc i32 %120 to i8
  %122 = getelementptr inbounds nuw i8, ptr %106, i64 2
  store i8 %121, ptr %122, align 1, !tbaa !9
  %123 = load i32, ptr %111, align 4, !tbaa !5
  %124 = trunc i32 %123 to i8
  %125 = getelementptr inbounds nuw i8, ptr %106, i64 3
  store i8 %124, ptr %125, align 1, !tbaa !9
  %126 = getelementptr inbounds nuw i8, ptr %106, i64 4
  br label %127

127:                                              ; preds = %110, %104, %21
  %128 = phi i64 [ 0, %21 ], [ %56, %104 ], [ %56, %110 ]
  %129 = phi ptr [ %2, %21 ], [ %105, %104 ], [ %126, %110 ]
  %130 = icmp eq i32 %58, 0
  br i1 %130, label %148, label %131

131:                                              ; preds = %127
  %132 = getelementptr inbounds nuw i32, ptr %0, i64 %128
  %133 = load i32, ptr %132, align 4, !tbaa !5
  switch i32 %58, label %134 [
    i32 3, label %135
    i32 2, label %141
    i32 1, label %145
  ]

134:                                              ; preds = %131
  unreachable

135:                                              ; preds = %131
  %136 = lshr i32 %133, 8
  %137 = trunc i32 %136 to i8
  %138 = and i64 %1, 3
  %139 = getelementptr i8, ptr %129, i64 %138
  %140 = getelementptr i8, ptr %139, i64 -1
  store i8 %137, ptr %140, align 1, !tbaa !9
  br label %141

141:                                              ; preds = %135, %131
  %142 = lshr i32 %133, 16
  %143 = trunc i32 %142 to i8
  %144 = getelementptr inbounds nuw i8, ptr %129, i64 1
  store i8 %143, ptr %144, align 1, !tbaa !9
  br label %145

145:                                              ; preds = %141, %131
  %146 = lshr i32 %133, 24
  %147 = trunc nuw i32 %146 to i8
  store i8 %147, ptr %129, align 1, !tbaa !9
  br label %148

148:                                              ; preds = %127, %145
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) @sha256_init.H0, i64 32, i1 false)
  store i64 0, ptr %26, align 8, !tbaa !14
  store i32 0, ptr %7, align 8, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local range(i32 0, 2) i32 @verify_benchmark(i32 noundef %0) local_unnamed_addr #4 {
  %2 = load <8 x i8>, ptr @hash, align 16, !tbaa !9
  %3 = load <8 x i8>, ptr @buffer, align 16, !tbaa !9
  %4 = icmp eq <8 x i8> %2, %3
  %5 = freeze <8 x i1> %4
  %6 = bitcast <8 x i1> %5 to i8
  %7 = icmp eq i8 %6, -1
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @initialise_benchmark() local_unnamed_addr #5 {
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @warm_caches(i32 noundef %0) local_unnamed_addr #6 {
  tail call fastcc void @benchmark_body(i32 noundef 1, i32 noundef %0)
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @benchmark_body(i32 noundef range(i32 1, 563) %0, i32 noundef %1) unnamed_addr #7 {
  %3 = alloca %struct.sha256_ctx, align 8
  %4 = icmp eq i32 %1, 0
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 97
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 98
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 99
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 101
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 102
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 103
  br i1 %4, label %118, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %18 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %19 = getelementptr inbounds nuw i8, ptr %3, i64 12
  %20 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %21 = getelementptr inbounds nuw i8, ptr %3, i64 20
  %22 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %23 = getelementptr inbounds nuw i8, ptr %3, i64 28
  br label %24

24:                                               ; preds = %16, %115
  %25 = phi i32 [ %116, %115 ], [ 0, %16 ]
  br label %26

26:                                               ; preds = %24, %26
  %27 = phi i32 [ 0, %24 ], [ %113, %26 ]
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %3) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 16 dereferenceable(32) @sha256_init.H0, i64 32, i1 false)
  store i64 0, ptr %5, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 16 dereferenceable(56) @msg, i64 56, i1 false)
  store i32 56, ptr %6, align 8, !tbaa !17
  store i8 -128, ptr %8, align 8, !tbaa !9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %9, i8 0, i64 7, i1 false)
  call void @_nettle_sha256_compress(ptr noundef nonnull %3, ptr noundef nonnull %7, ptr noundef nonnull @K)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %7, i8 0, i64 56, i1 false)
  %28 = load i64, ptr %5, align 8, !tbaa !14
  %29 = shl i64 %28, 9
  %30 = load i32, ptr %6, align 8, !tbaa !17
  %31 = shl i32 %30, 3
  %32 = zext i32 %31 to i64
  %33 = or i64 %29, %32
  %34 = lshr i64 %29, 56
  %35 = trunc nuw i64 %34 to i8
  store i8 %35, ptr %8, align 8, !tbaa !9
  %36 = lshr i64 %29, 48
  %37 = trunc i64 %36 to i8
  store i8 %37, ptr %9, align 1, !tbaa !9
  %38 = lshr i64 %29, 40
  %39 = trunc i64 %38 to i8
  store i8 %39, ptr %10, align 2, !tbaa !9
  %40 = lshr i64 %29, 32
  %41 = trunc i64 %40 to i8
  store i8 %41, ptr %11, align 1, !tbaa !9
  %42 = lshr i64 %33, 24
  %43 = trunc i64 %42 to i8
  store i8 %43, ptr %12, align 4, !tbaa !9
  %44 = lshr i64 %33, 16
  %45 = trunc i64 %44 to i8
  store i8 %45, ptr %13, align 1, !tbaa !9
  %46 = lshr i64 %33, 8
  %47 = trunc i64 %46 to i8
  store i8 %47, ptr %14, align 2, !tbaa !9
  %48 = trunc i32 %31 to i8
  store i8 %48, ptr %15, align 1, !tbaa !9
  call void @_nettle_sha256_compress(ptr noundef nonnull %3, ptr noundef nonnull %7, ptr noundef nonnull @K)
  %49 = load i32, ptr %3, align 8, !tbaa !5
  %50 = lshr i32 %49, 24
  %51 = trunc nuw i32 %50 to i8
  store i8 %51, ptr @buffer, align 16, !tbaa !9
  %52 = lshr i32 %49, 16
  %53 = trunc i32 %52 to i8
  store i8 %53, ptr getelementptr inbounds nuw (i8, ptr @buffer, i64 1), align 1, !tbaa !9
  %54 = lshr i32 %49, 8
  %55 = trunc i32 %54 to i8
  store i8 %55, ptr getelementptr inbounds nuw (i8, ptr @buffer, i64 2), align 2, !tbaa !9
  %56 = trunc i32 %49 to i8
  store i8 %56, ptr getelementptr inbounds nuw (i8, ptr @buffer, i64 3), align 1, !tbaa !9
  %57 = load i32, ptr %17, align 4, !tbaa !5
  %58 = lshr i32 %57, 24
  %59 = trunc nuw i32 %58 to i8
  store i8 %59, ptr getelementptr inbounds nuw (i8, ptr @buffer, i64 4), align 4, !tbaa !9
  %60 = lshr i32 %57, 16
  %61 = trunc i32 %60 to i8
  store i8 %61, ptr getelementptr inbounds nuw (i8, ptr @buffer, i64 5), align 1, !tbaa !9
  %62 = lshr i32 %57, 8
  %63 = trunc i32 %62 to i8
  store i8 %63, ptr getelementptr inbounds nuw (i8, ptr @buffer, i64 6), align 2, !tbaa !9
  %64 = trunc i32 %57 to i8
  store i8 %64, ptr getelementptr inbounds nuw (i8, ptr @buffer, i64 7), align 1, !tbaa !9
  %65 = load i32, ptr %18, align 8, !tbaa !5
  %66 = lshr i32 %65, 24
  %67 = trunc nuw i32 %66 to i8
  store i8 %67, ptr getelementptr inbounds nuw (i8, ptr @buffer, i64 8), align 8, !tbaa !9
  %68 = lshr i32 %65, 16
  %69 = trunc i32 %68 to i8
  store i8 %69, ptr getelementptr inbounds nuw (i8, ptr @buffer, i64 9), align 1, !tbaa !9
  %70 = lshr i32 %65, 8
  %71 = trunc i32 %70 to i8
  store i8 %71, ptr getelementptr inbounds nuw (i8, ptr @buffer, i64 10), align 2, !tbaa !9
  %72 = trunc i32 %65 to i8
  store i8 %72, ptr getelementptr inbounds nuw (i8, ptr @buffer, i64 11), align 1, !tbaa !9
  %73 = load i32, ptr %19, align 4, !tbaa !5
  %74 = lshr i32 %73, 24
  %75 = trunc nuw i32 %74 to i8
  store i8 %75, ptr getelementptr inbounds nuw (i8, ptr @buffer, i64 12), align 4, !tbaa !9
  %76 = lshr i32 %73, 16
  %77 = trunc i32 %76 to i8
  store i8 %77, ptr getelementptr inbounds nuw (i8, ptr @buffer, i64 13), align 1, !tbaa !9
  %78 = lshr i32 %73, 8
  %79 = trunc i32 %78 to i8
  store i8 %79, ptr getelementptr inbounds nuw (i8, ptr @buffer, i64 14), align 2, !tbaa !9
  %80 = trunc i32 %73 to i8
  store i8 %80, ptr getelementptr inbounds nuw (i8, ptr @buffer, i64 15), align 1, !tbaa !9
  %81 = load i32, ptr %20, align 8, !tbaa !5
  %82 = lshr i32 %81, 24
  %83 = trunc nuw i32 %82 to i8
  store i8 %83, ptr getelementptr inbounds nuw (i8, ptr @buffer, i64 16), align 16, !tbaa !9
  %84 = lshr i32 %81, 16
  %85 = trunc i32 %84 to i8
  store i8 %85, ptr getelementptr inbounds nuw (i8, ptr @buffer, i64 17), align 1, !tbaa !9
  %86 = lshr i32 %81, 8
  %87 = trunc i32 %86 to i8
  store i8 %87, ptr getelementptr inbounds nuw (i8, ptr @buffer, i64 18), align 2, !tbaa !9
  %88 = trunc i32 %81 to i8
  store i8 %88, ptr getelementptr inbounds nuw (i8, ptr @buffer, i64 19), align 1, !tbaa !9
  %89 = load i32, ptr %21, align 4, !tbaa !5
  %90 = lshr i32 %89, 24
  %91 = trunc nuw i32 %90 to i8
  store i8 %91, ptr getelementptr inbounds nuw (i8, ptr @buffer, i64 20), align 4, !tbaa !9
  %92 = lshr i32 %89, 16
  %93 = trunc i32 %92 to i8
  store i8 %93, ptr getelementptr inbounds nuw (i8, ptr @buffer, i64 21), align 1, !tbaa !9
  %94 = lshr i32 %89, 8
  %95 = trunc i32 %94 to i8
  store i8 %95, ptr getelementptr inbounds nuw (i8, ptr @buffer, i64 22), align 2, !tbaa !9
  %96 = trunc i32 %89 to i8
  store i8 %96, ptr getelementptr inbounds nuw (i8, ptr @buffer, i64 23), align 1, !tbaa !9
  %97 = load i32, ptr %22, align 8, !tbaa !5
  %98 = lshr i32 %97, 24
  %99 = trunc nuw i32 %98 to i8
  store i8 %99, ptr getelementptr inbounds nuw (i8, ptr @buffer, i64 24), align 8, !tbaa !9
  %100 = lshr i32 %97, 16
  %101 = trunc i32 %100 to i8
  store i8 %101, ptr getelementptr inbounds nuw (i8, ptr @buffer, i64 25), align 1, !tbaa !9
  %102 = lshr i32 %97, 8
  %103 = trunc i32 %102 to i8
  store i8 %103, ptr getelementptr inbounds nuw (i8, ptr @buffer, i64 26), align 2, !tbaa !9
  %104 = trunc i32 %97 to i8
  store i8 %104, ptr getelementptr inbounds nuw (i8, ptr @buffer, i64 27), align 1, !tbaa !9
  %105 = load i32, ptr %23, align 4, !tbaa !5
  %106 = lshr i32 %105, 24
  %107 = trunc nuw i32 %106 to i8
  store i8 %107, ptr getelementptr inbounds nuw (i8, ptr @buffer, i64 28), align 4, !tbaa !9
  %108 = lshr i32 %105, 16
  %109 = trunc i32 %108 to i8
  store i8 %109, ptr getelementptr inbounds nuw (i8, ptr @buffer, i64 29), align 1, !tbaa !9
  %110 = lshr i32 %105, 8
  %111 = trunc i32 %110 to i8
  store i8 %111, ptr getelementptr inbounds nuw (i8, ptr @buffer, i64 30), align 2, !tbaa !9
  %112 = trunc i32 %105 to i8
  store i8 %112, ptr getelementptr inbounds nuw (i8, ptr @buffer, i64 31), align 1, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %3) #11
  %113 = add nuw i32 %27, 1
  %114 = icmp eq i32 %113, %1
  br i1 %114, label %115, label %26, !llvm.loop !19

115:                                              ; preds = %26
  %116 = add nuw nsw i32 %25, 1
  %117 = icmp eq i32 %116, %0
  br i1 %117, label %118, label %24, !llvm.loop !20

118:                                              ; preds = %115, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @benchmark() local_unnamed_addr #8 {
  tail call fastcc void @benchmark_body(i32 noundef 562, i32 noundef 20)
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }

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
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = !{!15, !16, i64 32}
!15 = !{!"sha256_ctx", !7, i64 0, !16, i64 32, !7, i64 40, !6, i64 104}
!16 = !{!"long", !7, i64 0}
!17 = !{!15, !6, i64 104}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
