; ModuleID = '../src/matmult-int/matmult-int.c'
source_filename = "../src/matmult-int/matmult-int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Seed = dso_local local_unnamed_addr global i32 0, align 4
@ArrayA_ref = dso_local local_unnamed_addr global [20 x [20 x i64]] zeroinitializer, align 16
@ArrayB_ref = dso_local local_unnamed_addr global [20 x [20 x i64]] zeroinitializer, align 16
@__const.verify_benchmark.exp = private unnamed_addr constant [20 x [20 x i64]] [[20 x i64] [i64 291018000, i64 315000075, i64 279049970, i64 205074215, i64 382719905, i64 302595865, i64 348060915, i64 308986330, i64 343160760, i64 307099935, i64 292564810, i64 240954510, i64 232755815, i64 246511665, i64 328466830, i64 263664375, i64 324016395, i64 334656070, i64 285978755, i64 345370360], [20 x i64] [i64 252241835, i64 333432715, i64 299220275, i64 247745815, i64 422508990, i64 316728505, i64 359662270, i64 277775280, i64 323336795, i64 320656600, i64 249903690, i64 251499360, i64 242195700, i64 263484280, i64 348207635, i64 289485100, i64 328607555, i64 300799835, i64 269351410, i64 305703460], [20 x i64] [i64 304901010, i64 316252815, i64 263230275, i64 208939015, i64 421993740, i64 335002930, i64 348571170, i64 280992155, i64 289749970, i64 259701175, i64 295249990, i64 310900035, i64 250896625, i64 250154105, i64 315096035, i64 236364800, i64 312879355, i64 312580685, i64 275998435, i64 344137885], [20 x i64] [i64 286700525, i64 325985600, i64 253054970, i64 224361490, i64 353502130, i64 306544290, i64 323492140, i64 259123905, i64 307731610, i64 282414410, i64 281127810, i64 246936935, i64 207890815, i64 233789540, i64 339836730, i64 277296350, i64 319925620, i64 307470895, i64 290537580, i64 292297535], [20 x i64] [i64 272571255, i64 377663320, i64 304545985, i64 263001340, i64 375034885, i64 325423710, i64 410620380, i64 313191730, i64 356989815, i64 308508355, i64 218003850, i64 272487135, i64 266000220, i64 264734710, i64 367539620, i64 304146675, i64 355295500, i64 276019740, i64 251415695, i64 301225235], [20 x i64] [i64 272547900, i64 321522300, i64 288294345, i64 247748015, i64 389912855, i64 331874890, i64 370798315, i64 315467255, i64 367554485, i64 311947660, i64 258809685, i64 270536510, i64 256730515, i64 287143040, i64 363087030, i64 285672775, i64 353670120, i64 304219695, i64 274897255, i64 324684660], [20 x i64] [i64 233123995, i64 227142480, i64 212655155, i64 198592290, i64 345335250, i64 302661845, i64 253374925, i64 233243305, i64 233750030, i64 224590040, i64 200404820, i64 250791135, i64 234405760, i64 211723645, i64 280630165, i64 185245875, i64 296423665, i64 276278575, i64 252368265, i64 278726535], [20 x i64] [i64 277690535, i64 339615440, i64 320921550, i64 307114315, i64 400187215, i64 334374655, i64 376286920, i64 295993530, i64 362988020, i64 356272700, i64 293965465, i64 261574710, i64 259690975, i64 263037705, i64 416748985, i64 274683275, i64 385571030, i64 402782385, i64 323927010, i64 362778710], [20 x i64] [i64 267168970, i64 323401680, i64 279474330, i64 201934365, i64 362624300, i64 330736145, i64 371793675, i64 299650280, i64 333646005, i64 264791490, i64 215918320, i64 277512760, i64 264068435, i64 234555295, i64 321772515, i64 217507025, i64 310372440, i64 317544750, i64 245525965, i64 343183435], [20 x i64] [i64 281293570, i64 326519505, i64 233494705, i64 238516065, i64 297038200, i64 266273420, i64 349521550, i64 259343530, i64 306032255, i64 266397915, i64 210274920, i64 263743085, i64 231689610, i64 251949545, i64 293562740, i64 226822900, i64 309225440, i64 286212000, i64 206108715, i64 236678985], [20 x i64] [i64 288404350, i64 310319375, i64 282695670, i64 244150740, i64 426489380, i64 387525790, i64 342018190, i64 326086505, i64 352250260, i64 319997735, i64 300645835, i64 284822660, i64 271837440, i64 274000415, i64 361826730, i64 252399600, i64 348582320, i64 375813820, i64 316588255, i64 322499110], [20 x i64] [i64 273368780, i64 329706295, i64 288668335, i64 234501665, i64 381962610, i64 343186285, i64 337520205, i64 259637405, i64 295755465, i64 284778105, i64 205310525, i64 249598310, i64 256662470, i64 251533535, i64 336159770, i64 249342150, i64 333559450, i64 329296590, i64 278254845, i64 300673860], [20 x i64] [i64 318589575, i64 315522800, i64 260632295, i64 250009765, i64 337127730, i64 312810490, i64 346698590, i64 260810030, i64 388289910, i64 337081285, i64 283635410, i64 208148610, i64 234123865, i64 259653165, i64 370115255, i64 243311450, i64 377808245, i64 358786770, i64 286839730, i64 321912835], [20 x i64] [i64 229541925, i64 253967450, i64 223002545, i64 202302515, i64 303446955, i64 268472740, i64 285580065, i64 211013405, i64 287677960, i64 279773910, i64 227377310, i64 197461135, i64 222469715, i64 179536615, i64 306957380, i64 178407075, i64 281051570, i64 279718120, i64 234868230, i64 288991535], [20 x i64] [i64 290692955, i64 317729070, i64 297868235, i64 213450065, i64 469270935, i64 375344910, i64 326987580, i64 334565680, i64 325300040, i64 290325655, i64 254703825, i64 284914960, i64 245773820, i64 276641510, i64 323510795, i64 271034400, i64 337424250, i64 360011440, i64 281515520, i64 331261535], [20 x i64] [i64 287075125, i64 313194850, i64 269889345, i64 208109115, i64 420653930, i64 331900290, i64 355440665, i64 318065155, i64 343785360, i64 302163035, i64 308959360, i64 312666110, i64 268997740, i64 288557415, i64 370158305, i64 205012650, i64 318198795, i64 384484520, i64 316450105, i64 378714460], [20 x i64] [i64 278680580, i64 356815220, i64 307597060, i64 216073365, i64 390879235, i64 358775185, i64 358895230, i64 306434180, i64 315569040, i64 272688130, i64 249424325, i64 274584610, i64 273530970, i64 265450585, i64 325127920, i64 312802050, i64 317134900, i64 298518590, i64 269975470, i64 332586535], [20 x i64] [i64 245629780, i64 267021570, i64 234689035, i64 208808065, i64 366356035, i64 267059560, i64 349348005, i64 270158755, i64 348048340, i64 291550930, i64 272717800, i64 259714410, i64 236033845, i64 280627610, i64 335089770, i64 176610475, i64 259339950, i64 322752840, i64 236218295, i64 329687310], [20 x i64] [i64 226517370, i64 272306005, i64 271484080, i64 216145515, i64 400972075, i64 288475645, i64 332969550, i64 338410905, i64 329052205, i64 330392265, i64 306488095, i64 271979085, i64 232795960, i64 257593945, i64 339558165, i64 202700275, i64 320622065, i64 386350450, i64 315344865, i64 329233410], [20 x i64] [i64 224852610, i64 231292540, i64 236945875, i64 243273740, i64 336327040, i64 305144680, i64 248261920, i64 191671605, i64 241699245, i64 263085200, i64 198883715, i64 175742885, i64 202517850, i64 172427630, i64 296304160, i64 209188850, i64 326546955, i64 252990460, i64 238844535, i64 289753485]], align 16
@ResultArray = dso_local global [20 x [20 x i64]] zeroinitializer, align 16
@ArrayA = dso_local global [20 x [20 x i64]] zeroinitializer, align 16
@ArrayB = dso_local global [20 x [20 x i64]] zeroinitializer, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @values_match(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i64 %0, %1
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @warm_caches(i32 noundef %0) local_unnamed_addr #1 {
  tail call fastcc void @benchmark_body(i32 noundef 1, i32 noundef %0)
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @benchmark_body(i32 noundef range(i32 1, 40) %0, i32 noundef %1) unnamed_addr #2 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %2, %10
  %5 = phi i32 [ %11, %10 ], [ 0, %2 ]
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi i32 [ 0, %4 ], [ %8, %6 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3200) @ArrayA, ptr noundef nonnull align 16 dereferenceable(3200) @ArrayA_ref, i64 3200, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3200) @ArrayB, ptr noundef nonnull align 16 dereferenceable(3200) @ArrayB_ref, i64 3200, i1 false)
  tail call void @Multiply(ptr noundef nonnull @ArrayA, ptr noundef nonnull @ArrayB, ptr noundef nonnull @ResultArray)
  %8 = add nuw i32 %7, 1
  %9 = icmp eq i32 %8, %1
  br i1 %9, label %10, label %6, !llvm.loop !5

10:                                               ; preds = %6
  %11 = add nuw nsw i32 %5, 1
  %12 = icmp eq i32 %11, %0
  br i1 %12, label %13, label %4, !llvm.loop !7

13:                                               ; preds = %10, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @benchmark() local_unnamed_addr #3 {
  tail call fastcc void @benchmark_body(i32 noundef 39, i32 noundef 20)
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @InitSeed() local_unnamed_addr #4 {
  store i32 0, ptr @Seed, align 4, !tbaa !8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @Test(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #5 {
  tail call void @Multiply(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @Multiply(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #5 {
  %4 = getelementptr i8, ptr %2, i64 3200
  %5 = getelementptr i8, ptr %0, i64 3200
  %6 = getelementptr i8, ptr %1, i64 3200
  %7 = icmp ult ptr %2, %5
  %8 = icmp ult ptr %0, %4
  %9 = and i1 %7, %8
  %10 = icmp ult ptr %2, %6
  %11 = icmp ult ptr %1, %4
  %12 = and i1 %10, %11
  %13 = or i1 %9, %12
  br label %14

14:                                               ; preds = %3, %285
  %15 = phi i64 [ 0, %3 ], [ %286, %285 ]
  %16 = getelementptr inbounds nuw [20 x i64], ptr %0, i64 %15, i64 0
  %17 = getelementptr inbounds nuw [20 x i64], ptr %0, i64 %15, i64 1
  %18 = getelementptr inbounds nuw [20 x i64], ptr %0, i64 %15, i64 2
  %19 = getelementptr inbounds nuw [20 x i64], ptr %0, i64 %15, i64 3
  %20 = getelementptr inbounds nuw [20 x i64], ptr %0, i64 %15, i64 4
  %21 = getelementptr inbounds nuw [20 x i64], ptr %0, i64 %15, i64 5
  %22 = getelementptr inbounds nuw [20 x i64], ptr %0, i64 %15, i64 6
  %23 = getelementptr inbounds nuw [20 x i64], ptr %0, i64 %15, i64 7
  %24 = getelementptr inbounds nuw [20 x i64], ptr %0, i64 %15, i64 8
  %25 = getelementptr inbounds nuw [20 x i64], ptr %0, i64 %15, i64 9
  %26 = getelementptr inbounds nuw [20 x i64], ptr %0, i64 %15, i64 10
  %27 = getelementptr inbounds nuw [20 x i64], ptr %0, i64 %15, i64 11
  %28 = getelementptr inbounds nuw [20 x i64], ptr %0, i64 %15, i64 12
  %29 = getelementptr inbounds nuw [20 x i64], ptr %0, i64 %15, i64 13
  %30 = getelementptr inbounds nuw [20 x i64], ptr %0, i64 %15, i64 14
  %31 = getelementptr inbounds nuw [20 x i64], ptr %0, i64 %15, i64 15
  %32 = getelementptr inbounds nuw [20 x i64], ptr %0, i64 %15, i64 16
  %33 = getelementptr inbounds nuw [20 x i64], ptr %0, i64 %15, i64 17
  %34 = getelementptr inbounds nuw [20 x i64], ptr %0, i64 %15, i64 18
  %35 = getelementptr inbounds nuw [20 x i64], ptr %0, i64 %15, i64 19
  br i1 %13, label %181, label %36

36:                                               ; preds = %14
  %37 = load i64, ptr %16, align 8, !tbaa !12, !alias.scope !14
  %38 = insertelement <2 x i64> poison, i64 %37, i64 0
  %39 = shufflevector <2 x i64> %38, <2 x i64> poison, <2 x i32> zeroinitializer
  %40 = load i64, ptr %17, align 8, !tbaa !12, !alias.scope !14
  %41 = insertelement <2 x i64> poison, i64 %40, i64 0
  %42 = shufflevector <2 x i64> %41, <2 x i64> poison, <2 x i32> zeroinitializer
  %43 = load i64, ptr %18, align 8, !tbaa !12, !alias.scope !14
  %44 = insertelement <2 x i64> poison, i64 %43, i64 0
  %45 = shufflevector <2 x i64> %44, <2 x i64> poison, <2 x i32> zeroinitializer
  %46 = load i64, ptr %19, align 8, !tbaa !12, !alias.scope !14
  %47 = insertelement <2 x i64> poison, i64 %46, i64 0
  %48 = shufflevector <2 x i64> %47, <2 x i64> poison, <2 x i32> zeroinitializer
  %49 = load i64, ptr %20, align 8, !tbaa !12, !alias.scope !14
  %50 = insertelement <2 x i64> poison, i64 %49, i64 0
  %51 = shufflevector <2 x i64> %50, <2 x i64> poison, <2 x i32> zeroinitializer
  %52 = load i64, ptr %21, align 8, !tbaa !12, !alias.scope !14
  %53 = insertelement <2 x i64> poison, i64 %52, i64 0
  %54 = shufflevector <2 x i64> %53, <2 x i64> poison, <2 x i32> zeroinitializer
  %55 = load i64, ptr %22, align 8, !tbaa !12, !alias.scope !14
  %56 = insertelement <2 x i64> poison, i64 %55, i64 0
  %57 = shufflevector <2 x i64> %56, <2 x i64> poison, <2 x i32> zeroinitializer
  %58 = load i64, ptr %23, align 8, !tbaa !12, !alias.scope !14
  %59 = insertelement <2 x i64> poison, i64 %58, i64 0
  %60 = shufflevector <2 x i64> %59, <2 x i64> poison, <2 x i32> zeroinitializer
  %61 = load i64, ptr %24, align 8, !tbaa !12, !alias.scope !14
  %62 = insertelement <2 x i64> poison, i64 %61, i64 0
  %63 = shufflevector <2 x i64> %62, <2 x i64> poison, <2 x i32> zeroinitializer
  %64 = load i64, ptr %25, align 8, !tbaa !12, !alias.scope !14
  %65 = insertelement <2 x i64> poison, i64 %64, i64 0
  %66 = shufflevector <2 x i64> %65, <2 x i64> poison, <2 x i32> zeroinitializer
  %67 = load i64, ptr %26, align 8, !tbaa !12, !alias.scope !14
  %68 = insertelement <2 x i64> poison, i64 %67, i64 0
  %69 = shufflevector <2 x i64> %68, <2 x i64> poison, <2 x i32> zeroinitializer
  %70 = load i64, ptr %27, align 8, !tbaa !12, !alias.scope !14
  %71 = insertelement <2 x i64> poison, i64 %70, i64 0
  %72 = shufflevector <2 x i64> %71, <2 x i64> poison, <2 x i32> zeroinitializer
  %73 = load i64, ptr %28, align 8, !tbaa !12, !alias.scope !14
  %74 = insertelement <2 x i64> poison, i64 %73, i64 0
  %75 = shufflevector <2 x i64> %74, <2 x i64> poison, <2 x i32> zeroinitializer
  %76 = load i64, ptr %29, align 8, !tbaa !12, !alias.scope !14
  %77 = insertelement <2 x i64> poison, i64 %76, i64 0
  %78 = shufflevector <2 x i64> %77, <2 x i64> poison, <2 x i32> zeroinitializer
  %79 = load i64, ptr %30, align 8, !tbaa !12, !alias.scope !14
  %80 = insertelement <2 x i64> poison, i64 %79, i64 0
  %81 = shufflevector <2 x i64> %80, <2 x i64> poison, <2 x i32> zeroinitializer
  %82 = load i64, ptr %31, align 8, !tbaa !12, !alias.scope !14
  %83 = insertelement <2 x i64> poison, i64 %82, i64 0
  %84 = shufflevector <2 x i64> %83, <2 x i64> poison, <2 x i32> zeroinitializer
  %85 = load i64, ptr %32, align 8, !tbaa !12, !alias.scope !14
  %86 = insertelement <2 x i64> poison, i64 %85, i64 0
  %87 = shufflevector <2 x i64> %86, <2 x i64> poison, <2 x i32> zeroinitializer
  %88 = load i64, ptr %33, align 8, !tbaa !12, !alias.scope !14
  %89 = insertelement <2 x i64> poison, i64 %88, i64 0
  %90 = shufflevector <2 x i64> %89, <2 x i64> poison, <2 x i32> zeroinitializer
  %91 = load i64, ptr %34, align 8, !tbaa !12, !alias.scope !14
  %92 = insertelement <2 x i64> poison, i64 %91, i64 0
  %93 = shufflevector <2 x i64> %92, <2 x i64> poison, <2 x i32> zeroinitializer
  %94 = load i64, ptr %35, align 8, !tbaa !12, !alias.scope !14
  %95 = insertelement <2 x i64> poison, i64 %94, i64 0
  %96 = shufflevector <2 x i64> %95, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %97

97:                                               ; preds = %36, %97
  %98 = phi i64 [ %179, %97 ], [ 0, %36 ]
  %99 = getelementptr inbounds nuw [20 x i64], ptr %2, i64 %15, i64 %98
  store <2 x i64> zeroinitializer, ptr %99, align 8, !tbaa !12, !alias.scope !17, !noalias !19
  %100 = getelementptr inbounds nuw [20 x i64], ptr %1, i64 0, i64 %98
  %101 = load <2 x i64>, ptr %100, align 8, !tbaa !12, !alias.scope !21
  %102 = mul nsw <2 x i64> %101, %39
  store <2 x i64> %102, ptr %99, align 8, !tbaa !12, !alias.scope !17, !noalias !19
  %103 = getelementptr inbounds nuw [20 x i64], ptr %1, i64 1, i64 %98
  %104 = load <2 x i64>, ptr %103, align 8, !tbaa !12, !alias.scope !21
  %105 = mul nsw <2 x i64> %104, %42
  %106 = add nsw <2 x i64> %102, %105
  store <2 x i64> %106, ptr %99, align 8, !tbaa !12, !alias.scope !17, !noalias !19
  %107 = getelementptr inbounds nuw [20 x i64], ptr %1, i64 2, i64 %98
  %108 = load <2 x i64>, ptr %107, align 8, !tbaa !12, !alias.scope !21
  %109 = mul nsw <2 x i64> %108, %45
  %110 = add nsw <2 x i64> %106, %109
  store <2 x i64> %110, ptr %99, align 8, !tbaa !12, !alias.scope !17, !noalias !19
  %111 = getelementptr inbounds nuw [20 x i64], ptr %1, i64 3, i64 %98
  %112 = load <2 x i64>, ptr %111, align 8, !tbaa !12, !alias.scope !21
  %113 = mul nsw <2 x i64> %112, %48
  %114 = add nsw <2 x i64> %110, %113
  store <2 x i64> %114, ptr %99, align 8, !tbaa !12, !alias.scope !17, !noalias !19
  %115 = getelementptr inbounds nuw [20 x i64], ptr %1, i64 4, i64 %98
  %116 = load <2 x i64>, ptr %115, align 8, !tbaa !12, !alias.scope !21
  %117 = mul nsw <2 x i64> %116, %51
  %118 = add nsw <2 x i64> %114, %117
  store <2 x i64> %118, ptr %99, align 8, !tbaa !12, !alias.scope !17, !noalias !19
  %119 = getelementptr inbounds nuw [20 x i64], ptr %1, i64 5, i64 %98
  %120 = load <2 x i64>, ptr %119, align 8, !tbaa !12, !alias.scope !21
  %121 = mul nsw <2 x i64> %120, %54
  %122 = add nsw <2 x i64> %118, %121
  store <2 x i64> %122, ptr %99, align 8, !tbaa !12, !alias.scope !17, !noalias !19
  %123 = getelementptr inbounds nuw [20 x i64], ptr %1, i64 6, i64 %98
  %124 = load <2 x i64>, ptr %123, align 8, !tbaa !12, !alias.scope !21
  %125 = mul nsw <2 x i64> %124, %57
  %126 = add nsw <2 x i64> %122, %125
  store <2 x i64> %126, ptr %99, align 8, !tbaa !12, !alias.scope !17, !noalias !19
  %127 = getelementptr inbounds nuw [20 x i64], ptr %1, i64 7, i64 %98
  %128 = load <2 x i64>, ptr %127, align 8, !tbaa !12, !alias.scope !21
  %129 = mul nsw <2 x i64> %128, %60
  %130 = add nsw <2 x i64> %126, %129
  store <2 x i64> %130, ptr %99, align 8, !tbaa !12, !alias.scope !17, !noalias !19
  %131 = getelementptr inbounds nuw [20 x i64], ptr %1, i64 8, i64 %98
  %132 = load <2 x i64>, ptr %131, align 8, !tbaa !12, !alias.scope !21
  %133 = mul nsw <2 x i64> %132, %63
  %134 = add nsw <2 x i64> %130, %133
  store <2 x i64> %134, ptr %99, align 8, !tbaa !12, !alias.scope !17, !noalias !19
  %135 = getelementptr inbounds nuw [20 x i64], ptr %1, i64 9, i64 %98
  %136 = load <2 x i64>, ptr %135, align 8, !tbaa !12, !alias.scope !21
  %137 = mul nsw <2 x i64> %136, %66
  %138 = add nsw <2 x i64> %134, %137
  store <2 x i64> %138, ptr %99, align 8, !tbaa !12, !alias.scope !17, !noalias !19
  %139 = getelementptr inbounds nuw [20 x i64], ptr %1, i64 10, i64 %98
  %140 = load <2 x i64>, ptr %139, align 8, !tbaa !12, !alias.scope !21
  %141 = mul nsw <2 x i64> %140, %69
  %142 = add nsw <2 x i64> %138, %141
  store <2 x i64> %142, ptr %99, align 8, !tbaa !12, !alias.scope !17, !noalias !19
  %143 = getelementptr inbounds nuw [20 x i64], ptr %1, i64 11, i64 %98
  %144 = load <2 x i64>, ptr %143, align 8, !tbaa !12, !alias.scope !21
  %145 = mul nsw <2 x i64> %144, %72
  %146 = add nsw <2 x i64> %142, %145
  store <2 x i64> %146, ptr %99, align 8, !tbaa !12, !alias.scope !17, !noalias !19
  %147 = getelementptr inbounds nuw [20 x i64], ptr %1, i64 12, i64 %98
  %148 = load <2 x i64>, ptr %147, align 8, !tbaa !12, !alias.scope !21
  %149 = mul nsw <2 x i64> %148, %75
  %150 = add nsw <2 x i64> %146, %149
  store <2 x i64> %150, ptr %99, align 8, !tbaa !12, !alias.scope !17, !noalias !19
  %151 = getelementptr inbounds nuw [20 x i64], ptr %1, i64 13, i64 %98
  %152 = load <2 x i64>, ptr %151, align 8, !tbaa !12, !alias.scope !21
  %153 = mul nsw <2 x i64> %152, %78
  %154 = add nsw <2 x i64> %150, %153
  store <2 x i64> %154, ptr %99, align 8, !tbaa !12, !alias.scope !17, !noalias !19
  %155 = getelementptr inbounds nuw [20 x i64], ptr %1, i64 14, i64 %98
  %156 = load <2 x i64>, ptr %155, align 8, !tbaa !12, !alias.scope !21
  %157 = mul nsw <2 x i64> %156, %81
  %158 = add nsw <2 x i64> %154, %157
  store <2 x i64> %158, ptr %99, align 8, !tbaa !12, !alias.scope !17, !noalias !19
  %159 = getelementptr inbounds nuw [20 x i64], ptr %1, i64 15, i64 %98
  %160 = load <2 x i64>, ptr %159, align 8, !tbaa !12, !alias.scope !21
  %161 = mul nsw <2 x i64> %160, %84
  %162 = add nsw <2 x i64> %158, %161
  store <2 x i64> %162, ptr %99, align 8, !tbaa !12, !alias.scope !17, !noalias !19
  %163 = getelementptr inbounds nuw [20 x i64], ptr %1, i64 16, i64 %98
  %164 = load <2 x i64>, ptr %163, align 8, !tbaa !12, !alias.scope !21
  %165 = mul nsw <2 x i64> %164, %87
  %166 = add nsw <2 x i64> %162, %165
  store <2 x i64> %166, ptr %99, align 8, !tbaa !12, !alias.scope !17, !noalias !19
  %167 = getelementptr inbounds nuw [20 x i64], ptr %1, i64 17, i64 %98
  %168 = load <2 x i64>, ptr %167, align 8, !tbaa !12, !alias.scope !21
  %169 = mul nsw <2 x i64> %168, %90
  %170 = add nsw <2 x i64> %166, %169
  store <2 x i64> %170, ptr %99, align 8, !tbaa !12, !alias.scope !17, !noalias !19
  %171 = getelementptr inbounds nuw [20 x i64], ptr %1, i64 18, i64 %98
  %172 = load <2 x i64>, ptr %171, align 8, !tbaa !12, !alias.scope !21
  %173 = mul nsw <2 x i64> %172, %93
  %174 = add nsw <2 x i64> %170, %173
  store <2 x i64> %174, ptr %99, align 8, !tbaa !12, !alias.scope !17, !noalias !19
  %175 = getelementptr inbounds nuw [20 x i64], ptr %1, i64 19, i64 %98
  %176 = load <2 x i64>, ptr %175, align 8, !tbaa !12, !alias.scope !21
  %177 = mul nsw <2 x i64> %176, %96
  %178 = add nsw <2 x i64> %174, %177
  store <2 x i64> %178, ptr %99, align 8, !tbaa !12, !alias.scope !17, !noalias !19
  %179 = add nuw i64 %98, 2
  %180 = icmp eq i64 %179, 20
  br i1 %180, label %285, label %97, !llvm.loop !22

181:                                              ; preds = %14, %181
  %182 = phi i64 [ %283, %181 ], [ 0, %14 ]
  %183 = getelementptr inbounds nuw [20 x i64], ptr %2, i64 %15, i64 %182
  store i64 0, ptr %183, align 8, !tbaa !12
  %184 = load i64, ptr %16, align 8, !tbaa !12
  %185 = getelementptr inbounds nuw [20 x i64], ptr %1, i64 0, i64 %182
  %186 = load i64, ptr %185, align 8, !tbaa !12
  %187 = mul nsw i64 %186, %184
  store i64 %187, ptr %183, align 8, !tbaa !12
  %188 = load i64, ptr %17, align 8, !tbaa !12
  %189 = getelementptr inbounds nuw [20 x i64], ptr %1, i64 1, i64 %182
  %190 = load i64, ptr %189, align 8, !tbaa !12
  %191 = mul nsw i64 %190, %188
  %192 = add nsw i64 %187, %191
  store i64 %192, ptr %183, align 8, !tbaa !12
  %193 = load i64, ptr %18, align 8, !tbaa !12
  %194 = getelementptr inbounds nuw [20 x i64], ptr %1, i64 2, i64 %182
  %195 = load i64, ptr %194, align 8, !tbaa !12
  %196 = mul nsw i64 %195, %193
  %197 = add nsw i64 %192, %196
  store i64 %197, ptr %183, align 8, !tbaa !12
  %198 = load i64, ptr %19, align 8, !tbaa !12
  %199 = getelementptr inbounds nuw [20 x i64], ptr %1, i64 3, i64 %182
  %200 = load i64, ptr %199, align 8, !tbaa !12
  %201 = mul nsw i64 %200, %198
  %202 = add nsw i64 %197, %201
  store i64 %202, ptr %183, align 8, !tbaa !12
  %203 = load i64, ptr %20, align 8, !tbaa !12
  %204 = getelementptr inbounds nuw [20 x i64], ptr %1, i64 4, i64 %182
  %205 = load i64, ptr %204, align 8, !tbaa !12
  %206 = mul nsw i64 %205, %203
  %207 = add nsw i64 %202, %206
  store i64 %207, ptr %183, align 8, !tbaa !12
  %208 = load i64, ptr %21, align 8, !tbaa !12
  %209 = getelementptr inbounds nuw [20 x i64], ptr %1, i64 5, i64 %182
  %210 = load i64, ptr %209, align 8, !tbaa !12
  %211 = mul nsw i64 %210, %208
  %212 = add nsw i64 %207, %211
  store i64 %212, ptr %183, align 8, !tbaa !12
  %213 = load i64, ptr %22, align 8, !tbaa !12
  %214 = getelementptr inbounds nuw [20 x i64], ptr %1, i64 6, i64 %182
  %215 = load i64, ptr %214, align 8, !tbaa !12
  %216 = mul nsw i64 %215, %213
  %217 = add nsw i64 %212, %216
  store i64 %217, ptr %183, align 8, !tbaa !12
  %218 = load i64, ptr %23, align 8, !tbaa !12
  %219 = getelementptr inbounds nuw [20 x i64], ptr %1, i64 7, i64 %182
  %220 = load i64, ptr %219, align 8, !tbaa !12
  %221 = mul nsw i64 %220, %218
  %222 = add nsw i64 %217, %221
  store i64 %222, ptr %183, align 8, !tbaa !12
  %223 = load i64, ptr %24, align 8, !tbaa !12
  %224 = getelementptr inbounds nuw [20 x i64], ptr %1, i64 8, i64 %182
  %225 = load i64, ptr %224, align 8, !tbaa !12
  %226 = mul nsw i64 %225, %223
  %227 = add nsw i64 %222, %226
  store i64 %227, ptr %183, align 8, !tbaa !12
  %228 = load i64, ptr %25, align 8, !tbaa !12
  %229 = getelementptr inbounds nuw [20 x i64], ptr %1, i64 9, i64 %182
  %230 = load i64, ptr %229, align 8, !tbaa !12
  %231 = mul nsw i64 %230, %228
  %232 = add nsw i64 %227, %231
  store i64 %232, ptr %183, align 8, !tbaa !12
  %233 = load i64, ptr %26, align 8, !tbaa !12
  %234 = getelementptr inbounds nuw [20 x i64], ptr %1, i64 10, i64 %182
  %235 = load i64, ptr %234, align 8, !tbaa !12
  %236 = mul nsw i64 %235, %233
  %237 = add nsw i64 %232, %236
  store i64 %237, ptr %183, align 8, !tbaa !12
  %238 = load i64, ptr %27, align 8, !tbaa !12
  %239 = getelementptr inbounds nuw [20 x i64], ptr %1, i64 11, i64 %182
  %240 = load i64, ptr %239, align 8, !tbaa !12
  %241 = mul nsw i64 %240, %238
  %242 = add nsw i64 %237, %241
  store i64 %242, ptr %183, align 8, !tbaa !12
  %243 = load i64, ptr %28, align 8, !tbaa !12
  %244 = getelementptr inbounds nuw [20 x i64], ptr %1, i64 12, i64 %182
  %245 = load i64, ptr %244, align 8, !tbaa !12
  %246 = mul nsw i64 %245, %243
  %247 = add nsw i64 %242, %246
  store i64 %247, ptr %183, align 8, !tbaa !12
  %248 = load i64, ptr %29, align 8, !tbaa !12
  %249 = getelementptr inbounds nuw [20 x i64], ptr %1, i64 13, i64 %182
  %250 = load i64, ptr %249, align 8, !tbaa !12
  %251 = mul nsw i64 %250, %248
  %252 = add nsw i64 %247, %251
  store i64 %252, ptr %183, align 8, !tbaa !12
  %253 = load i64, ptr %30, align 8, !tbaa !12
  %254 = getelementptr inbounds nuw [20 x i64], ptr %1, i64 14, i64 %182
  %255 = load i64, ptr %254, align 8, !tbaa !12
  %256 = mul nsw i64 %255, %253
  %257 = add nsw i64 %252, %256
  store i64 %257, ptr %183, align 8, !tbaa !12
  %258 = load i64, ptr %31, align 8, !tbaa !12
  %259 = getelementptr inbounds nuw [20 x i64], ptr %1, i64 15, i64 %182
  %260 = load i64, ptr %259, align 8, !tbaa !12
  %261 = mul nsw i64 %260, %258
  %262 = add nsw i64 %257, %261
  store i64 %262, ptr %183, align 8, !tbaa !12
  %263 = load i64, ptr %32, align 8, !tbaa !12
  %264 = getelementptr inbounds nuw [20 x i64], ptr %1, i64 16, i64 %182
  %265 = load i64, ptr %264, align 8, !tbaa !12
  %266 = mul nsw i64 %265, %263
  %267 = add nsw i64 %262, %266
  store i64 %267, ptr %183, align 8, !tbaa !12
  %268 = load i64, ptr %33, align 8, !tbaa !12
  %269 = getelementptr inbounds nuw [20 x i64], ptr %1, i64 17, i64 %182
  %270 = load i64, ptr %269, align 8, !tbaa !12
  %271 = mul nsw i64 %270, %268
  %272 = add nsw i64 %267, %271
  store i64 %272, ptr %183, align 8, !tbaa !12
  %273 = load i64, ptr %34, align 8, !tbaa !12
  %274 = getelementptr inbounds nuw [20 x i64], ptr %1, i64 18, i64 %182
  %275 = load i64, ptr %274, align 8, !tbaa !12
  %276 = mul nsw i64 %275, %273
  %277 = add nsw i64 %272, %276
  store i64 %277, ptr %183, align 8, !tbaa !12
  %278 = load i64, ptr %35, align 8, !tbaa !12
  %279 = getelementptr inbounds nuw [20 x i64], ptr %1, i64 19, i64 %182
  %280 = load i64, ptr %279, align 8, !tbaa !12
  %281 = mul nsw i64 %280, %278
  %282 = add nsw i64 %277, %281
  store i64 %282, ptr %183, align 8, !tbaa !12
  %283 = add nuw nsw i64 %182, 1
  %284 = icmp eq i64 %283, 20
  br i1 %284, label %285, label %181, !llvm.loop !25

285:                                              ; preds = %97, %181
  %286 = add nuw nsw i64 %15, 1
  %287 = icmp eq i64 %286, 20
  br i1 %287, label %288, label %14, !llvm.loop !26

288:                                              ; preds = %285
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local range(i32 -8094, 8095) i32 @RandomInteger() local_unnamed_addr #6 {
  %1 = load i32, ptr @Seed, align 4, !tbaa !8
  %2 = mul nsw i32 %1, 133
  %3 = add nsw i32 %2, 81
  %4 = srem i32 %3, 8095
  store i32 %4, ptr @Seed, align 4, !tbaa !8
  ret i32 %4
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @initialise_benchmark() local_unnamed_addr #7 {
  store i32 0, ptr @Seed, align 4, !tbaa !8
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %104, %1 ]
  %3 = phi i32 [ 0, %0 ], [ %101, %1 ]
  %4 = mul nuw nsw i32 %3, 133
  %5 = add nuw nsw i32 %4, 81
  %6 = urem i32 %5, 8095
  %7 = zext nneg i32 %6 to i64
  %8 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @ArrayA_ref, i64 0, i64 %2, i64 0
  store i64 %7, ptr %8, align 16, !tbaa !12
  %9 = mul nuw nsw i32 %6, 133
  %10 = add nuw nsw i32 %9, 81
  %11 = urem i32 %10, 8095
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @ArrayA_ref, i64 0, i64 %2, i64 1
  store i64 %12, ptr %13, align 8, !tbaa !12
  %14 = mul nuw nsw i32 %11, 133
  %15 = add nuw nsw i32 %14, 81
  %16 = urem i32 %15, 8095
  %17 = zext nneg i32 %16 to i64
  %18 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @ArrayA_ref, i64 0, i64 %2, i64 2
  store i64 %17, ptr %18, align 16, !tbaa !12
  %19 = mul nuw nsw i32 %16, 133
  %20 = add nuw nsw i32 %19, 81
  %21 = urem i32 %20, 8095
  %22 = zext nneg i32 %21 to i64
  %23 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @ArrayA_ref, i64 0, i64 %2, i64 3
  store i64 %22, ptr %23, align 8, !tbaa !12
  %24 = mul nuw nsw i32 %21, 133
  %25 = add nuw nsw i32 %24, 81
  %26 = urem i32 %25, 8095
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @ArrayA_ref, i64 0, i64 %2, i64 4
  store i64 %27, ptr %28, align 16, !tbaa !12
  %29 = mul nuw nsw i32 %26, 133
  %30 = add nuw nsw i32 %29, 81
  %31 = urem i32 %30, 8095
  %32 = zext nneg i32 %31 to i64
  %33 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @ArrayA_ref, i64 0, i64 %2, i64 5
  store i64 %32, ptr %33, align 8, !tbaa !12
  %34 = mul nuw nsw i32 %31, 133
  %35 = add nuw nsw i32 %34, 81
  %36 = urem i32 %35, 8095
  %37 = zext nneg i32 %36 to i64
  %38 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @ArrayA_ref, i64 0, i64 %2, i64 6
  store i64 %37, ptr %38, align 16, !tbaa !12
  %39 = mul nuw nsw i32 %36, 133
  %40 = add nuw nsw i32 %39, 81
  %41 = urem i32 %40, 8095
  %42 = zext nneg i32 %41 to i64
  %43 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @ArrayA_ref, i64 0, i64 %2, i64 7
  store i64 %42, ptr %43, align 8, !tbaa !12
  %44 = mul nuw nsw i32 %41, 133
  %45 = add nuw nsw i32 %44, 81
  %46 = urem i32 %45, 8095
  %47 = zext nneg i32 %46 to i64
  %48 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @ArrayA_ref, i64 0, i64 %2, i64 8
  store i64 %47, ptr %48, align 16, !tbaa !12
  %49 = mul nuw nsw i32 %46, 133
  %50 = add nuw nsw i32 %49, 81
  %51 = urem i32 %50, 8095
  %52 = zext nneg i32 %51 to i64
  %53 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @ArrayA_ref, i64 0, i64 %2, i64 9
  store i64 %52, ptr %53, align 8, !tbaa !12
  %54 = mul nuw nsw i32 %51, 133
  %55 = add nuw nsw i32 %54, 81
  %56 = urem i32 %55, 8095
  %57 = zext nneg i32 %56 to i64
  %58 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @ArrayA_ref, i64 0, i64 %2, i64 10
  store i64 %57, ptr %58, align 16, !tbaa !12
  %59 = mul nuw nsw i32 %56, 133
  %60 = add nuw nsw i32 %59, 81
  %61 = urem i32 %60, 8095
  %62 = zext nneg i32 %61 to i64
  %63 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @ArrayA_ref, i64 0, i64 %2, i64 11
  store i64 %62, ptr %63, align 8, !tbaa !12
  %64 = mul nuw nsw i32 %61, 133
  %65 = add nuw nsw i32 %64, 81
  %66 = urem i32 %65, 8095
  %67 = zext nneg i32 %66 to i64
  %68 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @ArrayA_ref, i64 0, i64 %2, i64 12
  store i64 %67, ptr %68, align 16, !tbaa !12
  %69 = mul nuw nsw i32 %66, 133
  %70 = add nuw nsw i32 %69, 81
  %71 = urem i32 %70, 8095
  %72 = zext nneg i32 %71 to i64
  %73 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @ArrayA_ref, i64 0, i64 %2, i64 13
  store i64 %72, ptr %73, align 8, !tbaa !12
  %74 = mul nuw nsw i32 %71, 133
  %75 = add nuw nsw i32 %74, 81
  %76 = urem i32 %75, 8095
  %77 = zext nneg i32 %76 to i64
  %78 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @ArrayA_ref, i64 0, i64 %2, i64 14
  store i64 %77, ptr %78, align 16, !tbaa !12
  %79 = mul nuw nsw i32 %76, 133
  %80 = add nuw nsw i32 %79, 81
  %81 = urem i32 %80, 8095
  %82 = zext nneg i32 %81 to i64
  %83 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @ArrayA_ref, i64 0, i64 %2, i64 15
  store i64 %82, ptr %83, align 8, !tbaa !12
  %84 = mul nuw nsw i32 %81, 133
  %85 = add nuw nsw i32 %84, 81
  %86 = urem i32 %85, 8095
  %87 = zext nneg i32 %86 to i64
  %88 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @ArrayA_ref, i64 0, i64 %2, i64 16
  store i64 %87, ptr %88, align 16, !tbaa !12
  %89 = mul nuw nsw i32 %86, 133
  %90 = add nuw nsw i32 %89, 81
  %91 = urem i32 %90, 8095
  %92 = zext nneg i32 %91 to i64
  %93 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @ArrayA_ref, i64 0, i64 %2, i64 17
  store i64 %92, ptr %93, align 8, !tbaa !12
  %94 = mul nuw nsw i32 %91, 133
  %95 = add nuw nsw i32 %94, 81
  %96 = urem i32 %95, 8095
  %97 = zext nneg i32 %96 to i64
  %98 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @ArrayA_ref, i64 0, i64 %2, i64 18
  store i64 %97, ptr %98, align 16, !tbaa !12
  %99 = mul nuw nsw i32 %96, 133
  %100 = add nuw nsw i32 %99, 81
  %101 = urem i32 %100, 8095
  %102 = zext nneg i32 %101 to i64
  %103 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @ArrayA_ref, i64 0, i64 %2, i64 19
  store i64 %102, ptr %103, align 8, !tbaa !12
  %104 = add nuw nsw i64 %2, 1
  %105 = icmp eq i64 %104, 20
  br i1 %105, label %106, label %1, !llvm.loop !27

106:                                              ; preds = %1
  store i32 4995, ptr @Seed, align 4, !tbaa !8
  br label %107

107:                                              ; preds = %106, %107
  %108 = phi i64 [ 0, %106 ], [ %210, %107 ]
  %109 = phi i32 [ 4995, %106 ], [ %207, %107 ]
  %110 = mul nuw nsw i32 %109, 133
  %111 = add nuw nsw i32 %110, 81
  %112 = urem i32 %111, 8095
  %113 = zext nneg i32 %112 to i64
  %114 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @ArrayB_ref, i64 0, i64 %108, i64 0
  store i64 %113, ptr %114, align 16, !tbaa !12
  %115 = mul nuw nsw i32 %112, 133
  %116 = add nuw nsw i32 %115, 81
  %117 = urem i32 %116, 8095
  %118 = zext nneg i32 %117 to i64
  %119 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @ArrayB_ref, i64 0, i64 %108, i64 1
  store i64 %118, ptr %119, align 8, !tbaa !12
  %120 = mul nuw nsw i32 %117, 133
  %121 = add nuw nsw i32 %120, 81
  %122 = urem i32 %121, 8095
  %123 = zext nneg i32 %122 to i64
  %124 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @ArrayB_ref, i64 0, i64 %108, i64 2
  store i64 %123, ptr %124, align 16, !tbaa !12
  %125 = mul nuw nsw i32 %122, 133
  %126 = add nuw nsw i32 %125, 81
  %127 = urem i32 %126, 8095
  %128 = zext nneg i32 %127 to i64
  %129 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @ArrayB_ref, i64 0, i64 %108, i64 3
  store i64 %128, ptr %129, align 8, !tbaa !12
  %130 = mul nuw nsw i32 %127, 133
  %131 = add nuw nsw i32 %130, 81
  %132 = urem i32 %131, 8095
  %133 = zext nneg i32 %132 to i64
  %134 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @ArrayB_ref, i64 0, i64 %108, i64 4
  store i64 %133, ptr %134, align 16, !tbaa !12
  %135 = mul nuw nsw i32 %132, 133
  %136 = add nuw nsw i32 %135, 81
  %137 = urem i32 %136, 8095
  %138 = zext nneg i32 %137 to i64
  %139 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @ArrayB_ref, i64 0, i64 %108, i64 5
  store i64 %138, ptr %139, align 8, !tbaa !12
  %140 = mul nuw nsw i32 %137, 133
  %141 = add nuw nsw i32 %140, 81
  %142 = urem i32 %141, 8095
  %143 = zext nneg i32 %142 to i64
  %144 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @ArrayB_ref, i64 0, i64 %108, i64 6
  store i64 %143, ptr %144, align 16, !tbaa !12
  %145 = mul nuw nsw i32 %142, 133
  %146 = add nuw nsw i32 %145, 81
  %147 = urem i32 %146, 8095
  %148 = zext nneg i32 %147 to i64
  %149 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @ArrayB_ref, i64 0, i64 %108, i64 7
  store i64 %148, ptr %149, align 8, !tbaa !12
  %150 = mul nuw nsw i32 %147, 133
  %151 = add nuw nsw i32 %150, 81
  %152 = urem i32 %151, 8095
  %153 = zext nneg i32 %152 to i64
  %154 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @ArrayB_ref, i64 0, i64 %108, i64 8
  store i64 %153, ptr %154, align 16, !tbaa !12
  %155 = mul nuw nsw i32 %152, 133
  %156 = add nuw nsw i32 %155, 81
  %157 = urem i32 %156, 8095
  %158 = zext nneg i32 %157 to i64
  %159 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @ArrayB_ref, i64 0, i64 %108, i64 9
  store i64 %158, ptr %159, align 8, !tbaa !12
  %160 = mul nuw nsw i32 %157, 133
  %161 = add nuw nsw i32 %160, 81
  %162 = urem i32 %161, 8095
  %163 = zext nneg i32 %162 to i64
  %164 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @ArrayB_ref, i64 0, i64 %108, i64 10
  store i64 %163, ptr %164, align 16, !tbaa !12
  %165 = mul nuw nsw i32 %162, 133
  %166 = add nuw nsw i32 %165, 81
  %167 = urem i32 %166, 8095
  %168 = zext nneg i32 %167 to i64
  %169 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @ArrayB_ref, i64 0, i64 %108, i64 11
  store i64 %168, ptr %169, align 8, !tbaa !12
  %170 = mul nuw nsw i32 %167, 133
  %171 = add nuw nsw i32 %170, 81
  %172 = urem i32 %171, 8095
  %173 = zext nneg i32 %172 to i64
  %174 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @ArrayB_ref, i64 0, i64 %108, i64 12
  store i64 %173, ptr %174, align 16, !tbaa !12
  %175 = mul nuw nsw i32 %172, 133
  %176 = add nuw nsw i32 %175, 81
  %177 = urem i32 %176, 8095
  %178 = zext nneg i32 %177 to i64
  %179 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @ArrayB_ref, i64 0, i64 %108, i64 13
  store i64 %178, ptr %179, align 8, !tbaa !12
  %180 = mul nuw nsw i32 %177, 133
  %181 = add nuw nsw i32 %180, 81
  %182 = urem i32 %181, 8095
  %183 = zext nneg i32 %182 to i64
  %184 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @ArrayB_ref, i64 0, i64 %108, i64 14
  store i64 %183, ptr %184, align 16, !tbaa !12
  %185 = mul nuw nsw i32 %182, 133
  %186 = add nuw nsw i32 %185, 81
  %187 = urem i32 %186, 8095
  %188 = zext nneg i32 %187 to i64
  %189 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @ArrayB_ref, i64 0, i64 %108, i64 15
  store i64 %188, ptr %189, align 8, !tbaa !12
  %190 = mul nuw nsw i32 %187, 133
  %191 = add nuw nsw i32 %190, 81
  %192 = urem i32 %191, 8095
  %193 = zext nneg i32 %192 to i64
  %194 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @ArrayB_ref, i64 0, i64 %108, i64 16
  store i64 %193, ptr %194, align 16, !tbaa !12
  %195 = mul nuw nsw i32 %192, 133
  %196 = add nuw nsw i32 %195, 81
  %197 = urem i32 %196, 8095
  %198 = zext nneg i32 %197 to i64
  %199 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @ArrayB_ref, i64 0, i64 %108, i64 17
  store i64 %198, ptr %199, align 8, !tbaa !12
  %200 = mul nuw nsw i32 %197, 133
  %201 = add nuw nsw i32 %200, 81
  %202 = urem i32 %201, 8095
  %203 = zext nneg i32 %202 to i64
  %204 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @ArrayB_ref, i64 0, i64 %108, i64 18
  store i64 %203, ptr %204, align 16, !tbaa !12
  %205 = mul nuw nsw i32 %202, 133
  %206 = add nuw nsw i32 %205, 81
  %207 = urem i32 %206, 8095
  %208 = zext nneg i32 %207 to i64
  %209 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @ArrayB_ref, i64 0, i64 %108, i64 19
  store i64 %208, ptr %209, align 8, !tbaa !12
  %210 = add nuw nsw i64 %108, 1
  %211 = icmp eq i64 %210, 20
  br i1 %211, label %212, label %107, !llvm.loop !28

212:                                              ; preds = %107
  store i32 10, ptr @Seed, align 4, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local range(i32 0, 2) i32 @verify_benchmark(i32 noundef %0) local_unnamed_addr #8 {
  %2 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(3200) @ResultArray, ptr noundef nonnull dereferenceable(3200) @__const.verify_benchmark.exp, i64 3200)
  %3 = icmp eq i32 %2, 0
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nofree nounwind willreturn memory(argmem: read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !10, i64 0}
!14 = !{!15}
!15 = distinct !{!15, !16}
!16 = distinct !{!16, !"LVerDomain"}
!17 = !{!18}
!18 = distinct !{!18, !16}
!19 = !{!15, !20}
!20 = distinct !{!20, !16}
!21 = !{!20}
!22 = distinct !{!22, !6, !23, !24}
!23 = !{!"llvm.loop.isvectorized", i32 1}
!24 = !{!"llvm.loop.unroll.runtime.disable"}
!25 = distinct !{!25, !6, !23}
!26 = distinct !{!26, !6}
!27 = distinct !{!27, !6}
!28 = distinct !{!28, !6}
