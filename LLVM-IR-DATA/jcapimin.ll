; ModuleID = 'cBench/consumer_jpeg_c/src/jcapimin.c'
source_filename = "cBench/consumer_jpeg_c/src/jcapimin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.jpeg_comp_master = type { ptr, ptr, ptr, i32, i32 }
%struct.jpeg_progress_mgr = type { ptr, i64, i64, i32, i32 }
%struct.jpeg_c_coef_controller = type { ptr, ptr }
%struct.jpeg_marker_writer = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_destination_mgr = type { ptr, i64, ptr, ptr, ptr }

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_CreateCompress(ptr noundef %0, i32 noundef %1, i64 noundef %2) #0 !dbg !286 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !532, !DIExpression(), !533)
  store i32 %1, ptr %5, align 4
    #dbg_declare(ptr %5, !534, !DIExpression(), !535)
  store i64 %2, ptr %6, align 8
    #dbg_declare(ptr %6, !536, !DIExpression(), !537)
    #dbg_declare(ptr %7, !538, !DIExpression(), !539)
  %9 = load ptr, ptr %4, align 8, !dbg !540
  %10 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %9, i32 0, i32 1, !dbg !541
  store ptr null, ptr %10, align 8, !dbg !542
  %11 = load i32, ptr %5, align 4, !dbg !543
  %12 = icmp ne i32 %11, 61, !dbg !545
  br i1 %12, label %13, label %35, !dbg !545

13:                                               ; preds = %3
  %14 = load ptr, ptr %4, align 8, !dbg !546
  %15 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %14, i32 0, i32 0, !dbg !546
  %16 = load ptr, ptr %15, align 8, !dbg !546
  %17 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %16, i32 0, i32 5, !dbg !546
  store i32 10, ptr %17, align 8, !dbg !546
  %18 = load ptr, ptr %4, align 8, !dbg !546
  %19 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %18, i32 0, i32 0, !dbg !546
  %20 = load ptr, ptr %19, align 8, !dbg !546
  %21 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %20, i32 0, i32 6, !dbg !546
  %22 = getelementptr inbounds [8 x i32], ptr %21, i64 0, i64 0, !dbg !546
  store i32 61, ptr %22, align 4, !dbg !546
  %23 = load i32, ptr %5, align 4, !dbg !546
  %24 = load ptr, ptr %4, align 8, !dbg !546
  %25 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %24, i32 0, i32 0, !dbg !546
  %26 = load ptr, ptr %25, align 8, !dbg !546
  %27 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %26, i32 0, i32 6, !dbg !546
  %28 = getelementptr inbounds [8 x i32], ptr %27, i64 0, i64 1, !dbg !546
  store i32 %23, ptr %28, align 4, !dbg !546
  %29 = load ptr, ptr %4, align 8, !dbg !546
  %30 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %29, i32 0, i32 0, !dbg !546
  %31 = load ptr, ptr %30, align 8, !dbg !546
  %32 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %31, i32 0, i32 0, !dbg !546
  %33 = load ptr, ptr %32, align 8, !dbg !546
  %34 = load ptr, ptr %4, align 8, !dbg !546
  call void %33(ptr noundef %34), !dbg !546
  br label %35, !dbg !546

35:                                               ; preds = %13, %3
  %36 = load i64, ptr %6, align 8, !dbg !547
  %37 = icmp ne i64 %36, 496, !dbg !549
  br i1 %37, label %38, label %61, !dbg !549

38:                                               ; preds = %35
  %39 = load ptr, ptr %4, align 8, !dbg !550
  %40 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %39, i32 0, i32 0, !dbg !550
  %41 = load ptr, ptr %40, align 8, !dbg !550
  %42 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %41, i32 0, i32 5, !dbg !550
  store i32 19, ptr %42, align 8, !dbg !550
  %43 = load ptr, ptr %4, align 8, !dbg !550
  %44 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %43, i32 0, i32 0, !dbg !550
  %45 = load ptr, ptr %44, align 8, !dbg !550
  %46 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %45, i32 0, i32 6, !dbg !550
  %47 = getelementptr inbounds [8 x i32], ptr %46, i64 0, i64 0, !dbg !550
  store i32 496, ptr %47, align 4, !dbg !550
  %48 = load i64, ptr %6, align 8, !dbg !550
  %49 = trunc i64 %48 to i32, !dbg !550
  %50 = load ptr, ptr %4, align 8, !dbg !550
  %51 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %50, i32 0, i32 0, !dbg !550
  %52 = load ptr, ptr %51, align 8, !dbg !550
  %53 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %52, i32 0, i32 6, !dbg !550
  %54 = getelementptr inbounds [8 x i32], ptr %53, i64 0, i64 1, !dbg !550
  store i32 %49, ptr %54, align 4, !dbg !550
  %55 = load ptr, ptr %4, align 8, !dbg !550
  %56 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %55, i32 0, i32 0, !dbg !550
  %57 = load ptr, ptr %56, align 8, !dbg !550
  %58 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %57, i32 0, i32 0, !dbg !550
  %59 = load ptr, ptr %58, align 8, !dbg !550
  %60 = load ptr, ptr %4, align 8, !dbg !550
  call void %59(ptr noundef %60), !dbg !550
  br label %61, !dbg !550

61:                                               ; preds = %38, %35
    #dbg_declare(ptr %8, !551, !DIExpression(), !553)
  %62 = load ptr, ptr %4, align 8, !dbg !554
  %63 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %62, i32 0, i32 0, !dbg !555
  %64 = load ptr, ptr %63, align 8, !dbg !555
  store ptr %64, ptr %8, align 8, !dbg !553
  %65 = load ptr, ptr %4, align 8, !dbg !556
  call void @llvm.memset.p0.i64(ptr align 1 %65, i8 0, i64 496, i1 false), !dbg !556
  %66 = load ptr, ptr %8, align 8, !dbg !557
  %67 = load ptr, ptr %4, align 8, !dbg !558
  %68 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %67, i32 0, i32 0, !dbg !559
  store ptr %66, ptr %68, align 8, !dbg !560
  %69 = load ptr, ptr %4, align 8, !dbg !561
  %70 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %69, i32 0, i32 3, !dbg !562
  store i32 0, ptr %70, align 8, !dbg !563
  %71 = load ptr, ptr %4, align 8, !dbg !564
  call void @jinit_memory_mgr(ptr noundef %71), !dbg !565
  %72 = load ptr, ptr %4, align 8, !dbg !566
  %73 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %72, i32 0, i32 2, !dbg !567
  store ptr null, ptr %73, align 8, !dbg !568
  %74 = load ptr, ptr %4, align 8, !dbg !569
  %75 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %74, i32 0, i32 5, !dbg !570
  store ptr null, ptr %75, align 8, !dbg !571
  %76 = load ptr, ptr %4, align 8, !dbg !572
  %77 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %76, i32 0, i32 14, !dbg !573
  store ptr null, ptr %77, align 8, !dbg !574
  store i32 0, ptr %7, align 4, !dbg !575
  br label %78, !dbg !577

78:                                               ; preds = %87, %61
  %79 = load i32, ptr %7, align 4, !dbg !578
  %80 = icmp slt i32 %79, 4, !dbg !580
  br i1 %80, label %81, label %90, !dbg !581

81:                                               ; preds = %78
  %82 = load ptr, ptr %4, align 8, !dbg !582
  %83 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %82, i32 0, i32 15, !dbg !583
  %84 = load i32, ptr %7, align 4, !dbg !584
  %85 = sext i32 %84 to i64, !dbg !582
  %86 = getelementptr inbounds [4 x ptr], ptr %83, i64 0, i64 %85, !dbg !582
  store ptr null, ptr %86, align 8, !dbg !585
  br label %87, !dbg !582

87:                                               ; preds = %81
  %88 = load i32, ptr %7, align 4, !dbg !586
  %89 = add nsw i32 %88, 1, !dbg !586
  store i32 %89, ptr %7, align 4, !dbg !586
  br label %78, !dbg !587, !llvm.loop !588

90:                                               ; preds = %78
  store i32 0, ptr %7, align 4, !dbg !591
  br label %91, !dbg !593

91:                                               ; preds = %105, %90
  %92 = load i32, ptr %7, align 4, !dbg !594
  %93 = icmp slt i32 %92, 4, !dbg !596
  br i1 %93, label %94, label %108, !dbg !597

94:                                               ; preds = %91
  %95 = load ptr, ptr %4, align 8, !dbg !598
  %96 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %95, i32 0, i32 16, !dbg !600
  %97 = load i32, ptr %7, align 4, !dbg !601
  %98 = sext i32 %97 to i64, !dbg !598
  %99 = getelementptr inbounds [4 x ptr], ptr %96, i64 0, i64 %98, !dbg !598
  store ptr null, ptr %99, align 8, !dbg !602
  %100 = load ptr, ptr %4, align 8, !dbg !603
  %101 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %100, i32 0, i32 17, !dbg !604
  %102 = load i32, ptr %7, align 4, !dbg !605
  %103 = sext i32 %102 to i64, !dbg !603
  %104 = getelementptr inbounds [4 x ptr], ptr %101, i64 0, i64 %103, !dbg !603
  store ptr null, ptr %104, align 8, !dbg !606
  br label %105, !dbg !607

105:                                              ; preds = %94
  %106 = load i32, ptr %7, align 4, !dbg !608
  %107 = add nsw i32 %106, 1, !dbg !608
  store i32 %107, ptr %7, align 4, !dbg !608
  br label %91, !dbg !609, !llvm.loop !610

108:                                              ; preds = %91
  %109 = load ptr, ptr %4, align 8, !dbg !612
  %110 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %109, i32 0, i32 10, !dbg !613
  store double 1.000000e+00, ptr %110, align 8, !dbg !614
  %111 = load ptr, ptr %4, align 8, !dbg !615
  %112 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %111, i32 0, i32 4, !dbg !616
  store i32 100, ptr %112, align 4, !dbg !617
  ret void, !dbg !618
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

declare void @jinit_memory_mgr(ptr noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_destroy_compress(ptr noundef %0) #0 !dbg !619 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !620, !DIExpression(), !621)
  %3 = load ptr, ptr %2, align 8, !dbg !622
  call void @jpeg_destroy(ptr noundef %3), !dbg !623
  ret void, !dbg !624
}

declare void @jpeg_destroy(ptr noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_abort_compress(ptr noundef %0) #0 !dbg !625 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !626, !DIExpression(), !627)
  %3 = load ptr, ptr %2, align 8, !dbg !628
  call void @jpeg_abort(ptr noundef %3), !dbg !629
  ret void, !dbg !630
}

declare void @jpeg_abort(ptr noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_suppress_tables(ptr noundef %0, i32 noundef %1) #0 !dbg !631 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !632, !DIExpression(), !633)
  store i32 %1, ptr %4, align 4
    #dbg_declare(ptr %4, !634, !DIExpression(), !635)
    #dbg_declare(ptr %5, !636, !DIExpression(), !637)
    #dbg_declare(ptr %6, !638, !DIExpression(), !639)
    #dbg_declare(ptr %7, !640, !DIExpression(), !641)
  store i32 0, ptr %5, align 4, !dbg !642
  br label %8, !dbg !644

8:                                                ; preds = %24, %2
  %9 = load i32, ptr %5, align 4, !dbg !645
  %10 = icmp slt i32 %9, 4, !dbg !647
  br i1 %10, label %11, label %27, !dbg !648

11:                                               ; preds = %8
  %12 = load ptr, ptr %3, align 8, !dbg !649
  %13 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %12, i32 0, i32 15, !dbg !652
  %14 = load i32, ptr %5, align 4, !dbg !653
  %15 = sext i32 %14 to i64, !dbg !649
  %16 = getelementptr inbounds [4 x ptr], ptr %13, i64 0, i64 %15, !dbg !649
  %17 = load ptr, ptr %16, align 8, !dbg !649
  store ptr %17, ptr %6, align 8, !dbg !654
  %18 = icmp ne ptr %17, null, !dbg !655
  br i1 %18, label %19, label %23, !dbg !655

19:                                               ; preds = %11
  %20 = load i32, ptr %4, align 4, !dbg !656
  %21 = load ptr, ptr %6, align 8, !dbg !657
  %22 = getelementptr inbounds nuw %struct.JQUANT_TBL, ptr %21, i32 0, i32 1, !dbg !658
  store i32 %20, ptr %22, align 4, !dbg !659
  br label %23, !dbg !657

23:                                               ; preds = %19, %11
  br label %24, !dbg !660

24:                                               ; preds = %23
  %25 = load i32, ptr %5, align 4, !dbg !661
  %26 = add nsw i32 %25, 1, !dbg !661
  store i32 %26, ptr %5, align 4, !dbg !661
  br label %8, !dbg !662, !llvm.loop !663

27:                                               ; preds = %8
  store i32 0, ptr %5, align 4, !dbg !665
  br label %28, !dbg !667

28:                                               ; preds = %56, %27
  %29 = load i32, ptr %5, align 4, !dbg !668
  %30 = icmp slt i32 %29, 4, !dbg !670
  br i1 %30, label %31, label %59, !dbg !671

31:                                               ; preds = %28
  %32 = load ptr, ptr %3, align 8, !dbg !672
  %33 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %32, i32 0, i32 16, !dbg !675
  %34 = load i32, ptr %5, align 4, !dbg !676
  %35 = sext i32 %34 to i64, !dbg !672
  %36 = getelementptr inbounds [4 x ptr], ptr %33, i64 0, i64 %35, !dbg !672
  %37 = load ptr, ptr %36, align 8, !dbg !672
  store ptr %37, ptr %7, align 8, !dbg !677
  %38 = icmp ne ptr %37, null, !dbg !678
  br i1 %38, label %39, label %43, !dbg !678

39:                                               ; preds = %31
  %40 = load i32, ptr %4, align 4, !dbg !679
  %41 = load ptr, ptr %7, align 8, !dbg !680
  %42 = getelementptr inbounds nuw %struct.JHUFF_TBL, ptr %41, i32 0, i32 2, !dbg !681
  store i32 %40, ptr %42, align 4, !dbg !682
  br label %43, !dbg !680

43:                                               ; preds = %39, %31
  %44 = load ptr, ptr %3, align 8, !dbg !683
  %45 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %44, i32 0, i32 17, !dbg !685
  %46 = load i32, ptr %5, align 4, !dbg !686
  %47 = sext i32 %46 to i64, !dbg !683
  %48 = getelementptr inbounds [4 x ptr], ptr %45, i64 0, i64 %47, !dbg !683
  %49 = load ptr, ptr %48, align 8, !dbg !683
  store ptr %49, ptr %7, align 8, !dbg !687
  %50 = icmp ne ptr %49, null, !dbg !688
  br i1 %50, label %51, label %55, !dbg !688

51:                                               ; preds = %43
  %52 = load i32, ptr %4, align 4, !dbg !689
  %53 = load ptr, ptr %7, align 8, !dbg !690
  %54 = getelementptr inbounds nuw %struct.JHUFF_TBL, ptr %53, i32 0, i32 2, !dbg !691
  store i32 %52, ptr %54, align 4, !dbg !692
  br label %55, !dbg !690

55:                                               ; preds = %51, %43
  br label %56, !dbg !693

56:                                               ; preds = %55
  %57 = load i32, ptr %5, align 4, !dbg !694
  %58 = add nsw i32 %57, 1, !dbg !694
  store i32 %58, ptr %5, align 4, !dbg !694
  br label %28, !dbg !695, !llvm.loop !696

59:                                               ; preds = %28
  ret void, !dbg !698
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_finish_compress(ptr noundef %0) #0 !dbg !699 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !700, !DIExpression(), !701)
    #dbg_declare(ptr %3, !702, !DIExpression(), !703)
  %4 = load ptr, ptr %2, align 8, !dbg !704
  %5 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %4, i32 0, i32 4, !dbg !706
  %6 = load i32, ptr %5, align 4, !dbg !706
  %7 = icmp eq i32 %6, 101, !dbg !707
  br i1 %7, label %13, label %8, !dbg !708

8:                                                ; preds = %1
  %9 = load ptr, ptr %2, align 8, !dbg !709
  %10 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %9, i32 0, i32 4, !dbg !710
  %11 = load i32, ptr %10, align 4, !dbg !710
  %12 = icmp eq i32 %11, 102, !dbg !711
  br i1 %12, label %13, label %39, !dbg !708

13:                                               ; preds = %8, %1
  %14 = load ptr, ptr %2, align 8, !dbg !712
  %15 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %14, i32 0, i32 36, !dbg !715
  %16 = load i32, ptr %15, align 8, !dbg !715
  %17 = load ptr, ptr %2, align 8, !dbg !716
  %18 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %17, i32 0, i32 7, !dbg !717
  %19 = load i32, ptr %18, align 4, !dbg !717
  %20 = icmp ult i32 %16, %19, !dbg !718
  br i1 %20, label %21, label %32, !dbg !718

21:                                               ; preds = %13
  %22 = load ptr, ptr %2, align 8, !dbg !719
  %23 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %22, i32 0, i32 0, !dbg !719
  %24 = load ptr, ptr %23, align 8, !dbg !719
  %25 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %24, i32 0, i32 5, !dbg !719
  store i32 66, ptr %25, align 8, !dbg !719
  %26 = load ptr, ptr %2, align 8, !dbg !719
  %27 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %26, i32 0, i32 0, !dbg !719
  %28 = load ptr, ptr %27, align 8, !dbg !719
  %29 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %28, i32 0, i32 0, !dbg !719
  %30 = load ptr, ptr %29, align 8, !dbg !719
  %31 = load ptr, ptr %2, align 8, !dbg !719
  call void %30(ptr noundef %31), !dbg !719
  br label %32, !dbg !719

32:                                               ; preds = %21, %13
  %33 = load ptr, ptr %2, align 8, !dbg !720
  %34 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %33, i32 0, i32 51, !dbg !721
  %35 = load ptr, ptr %34, align 8, !dbg !721
  %36 = getelementptr inbounds nuw %struct.jpeg_comp_master, ptr %35, i32 0, i32 2, !dbg !722
  %37 = load ptr, ptr %36, align 8, !dbg !722
  %38 = load ptr, ptr %2, align 8, !dbg !723
  call void %37(ptr noundef %38), !dbg !724
  br label %64, !dbg !725

39:                                               ; preds = %8
  %40 = load ptr, ptr %2, align 8, !dbg !726
  %41 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %40, i32 0, i32 4, !dbg !728
  %42 = load i32, ptr %41, align 4, !dbg !728
  %43 = icmp ne i32 %42, 103, !dbg !729
  br i1 %43, label %44, label %63, !dbg !729

44:                                               ; preds = %39
  %45 = load ptr, ptr %2, align 8, !dbg !730
  %46 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %45, i32 0, i32 0, !dbg !730
  %47 = load ptr, ptr %46, align 8, !dbg !730
  %48 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %47, i32 0, i32 5, !dbg !730
  store i32 18, ptr %48, align 8, !dbg !730
  %49 = load ptr, ptr %2, align 8, !dbg !730
  %50 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %49, i32 0, i32 4, !dbg !730
  %51 = load i32, ptr %50, align 4, !dbg !730
  %52 = load ptr, ptr %2, align 8, !dbg !730
  %53 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %52, i32 0, i32 0, !dbg !730
  %54 = load ptr, ptr %53, align 8, !dbg !730
  %55 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %54, i32 0, i32 6, !dbg !730
  %56 = getelementptr inbounds [8 x i32], ptr %55, i64 0, i64 0, !dbg !730
  store i32 %51, ptr %56, align 4, !dbg !730
  %57 = load ptr, ptr %2, align 8, !dbg !730
  %58 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %57, i32 0, i32 0, !dbg !730
  %59 = load ptr, ptr %58, align 8, !dbg !730
  %60 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %59, i32 0, i32 0, !dbg !730
  %61 = load ptr, ptr %60, align 8, !dbg !730
  %62 = load ptr, ptr %2, align 8, !dbg !730
  call void %61(ptr noundef %62), !dbg !730
  br label %63, !dbg !730

63:                                               ; preds = %44, %39
  br label %64

64:                                               ; preds = %63, %32
  br label %65, !dbg !731

65:                                               ; preds = %136, %64
  %66 = load ptr, ptr %2, align 8, !dbg !732
  %67 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %66, i32 0, i32 51, !dbg !733
  %68 = load ptr, ptr %67, align 8, !dbg !733
  %69 = getelementptr inbounds nuw %struct.jpeg_comp_master, ptr %68, i32 0, i32 4, !dbg !734
  %70 = load i32, ptr %69, align 4, !dbg !734
  %71 = icmp ne i32 %70, 0, !dbg !735
  %72 = xor i1 %71, true, !dbg !735
  br i1 %72, label %73, label %143, !dbg !731

73:                                               ; preds = %65
  %74 = load ptr, ptr %2, align 8, !dbg !736
  %75 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %74, i32 0, i32 51, !dbg !738
  %76 = load ptr, ptr %75, align 8, !dbg !738
  %77 = getelementptr inbounds nuw %struct.jpeg_comp_master, ptr %76, i32 0, i32 0, !dbg !739
  %78 = load ptr, ptr %77, align 8, !dbg !739
  %79 = load ptr, ptr %2, align 8, !dbg !740
  call void %78(ptr noundef %79), !dbg !741
  store i32 0, ptr %3, align 4, !dbg !742
  br label %80, !dbg !744

80:                                               ; preds = %133, %73
  %81 = load i32, ptr %3, align 4, !dbg !745
  %82 = load ptr, ptr %2, align 8, !dbg !747
  %83 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %82, i32 0, i32 40, !dbg !748
  %84 = load i32, ptr %83, align 8, !dbg !748
  %85 = icmp ult i32 %81, %84, !dbg !749
  br i1 %85, label %86, label %136, !dbg !750

86:                                               ; preds = %80
  %87 = load ptr, ptr %2, align 8, !dbg !751
  %88 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %87, i32 0, i32 2, !dbg !754
  %89 = load ptr, ptr %88, align 8, !dbg !754
  %90 = icmp ne ptr %89, null, !dbg !755
  br i1 %90, label %91, label %112, !dbg !755

91:                                               ; preds = %86
  %92 = load i32, ptr %3, align 4, !dbg !756
  %93 = zext i32 %92 to i64, !dbg !758
  %94 = load ptr, ptr %2, align 8, !dbg !759
  %95 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %94, i32 0, i32 2, !dbg !760
  %96 = load ptr, ptr %95, align 8, !dbg !760
  %97 = getelementptr inbounds nuw %struct.jpeg_progress_mgr, ptr %96, i32 0, i32 1, !dbg !761
  store i64 %93, ptr %97, align 8, !dbg !762
  %98 = load ptr, ptr %2, align 8, !dbg !763
  %99 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %98, i32 0, i32 40, !dbg !764
  %100 = load i32, ptr %99, align 8, !dbg !764
  %101 = zext i32 %100 to i64, !dbg !765
  %102 = load ptr, ptr %2, align 8, !dbg !766
  %103 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %102, i32 0, i32 2, !dbg !767
  %104 = load ptr, ptr %103, align 8, !dbg !767
  %105 = getelementptr inbounds nuw %struct.jpeg_progress_mgr, ptr %104, i32 0, i32 2, !dbg !768
  store i64 %101, ptr %105, align 8, !dbg !769
  %106 = load ptr, ptr %2, align 8, !dbg !770
  %107 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %106, i32 0, i32 2, !dbg !771
  %108 = load ptr, ptr %107, align 8, !dbg !771
  %109 = getelementptr inbounds nuw %struct.jpeg_progress_mgr, ptr %108, i32 0, i32 0, !dbg !772
  %110 = load ptr, ptr %109, align 8, !dbg !772
  %111 = load ptr, ptr %2, align 8, !dbg !773
  call void %110(ptr noundef %111), !dbg !774
  br label %112, !dbg !775

112:                                              ; preds = %91, %86
  %113 = load ptr, ptr %2, align 8, !dbg !776
  %114 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %113, i32 0, i32 54, !dbg !778
  %115 = load ptr, ptr %114, align 8, !dbg !778
  %116 = getelementptr inbounds nuw %struct.jpeg_c_coef_controller, ptr %115, i32 0, i32 1, !dbg !779
  %117 = load ptr, ptr %116, align 8, !dbg !779
  %118 = load ptr, ptr %2, align 8, !dbg !780
  %119 = call i32 %117(ptr noundef %118, ptr noundef null), !dbg !781
  %120 = icmp ne i32 %119, 0, !dbg !781
  br i1 %120, label %132, label %121, !dbg !782

121:                                              ; preds = %112
  %122 = load ptr, ptr %2, align 8, !dbg !783
  %123 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %122, i32 0, i32 0, !dbg !783
  %124 = load ptr, ptr %123, align 8, !dbg !783
  %125 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %124, i32 0, i32 5, !dbg !783
  store i32 22, ptr %125, align 8, !dbg !783
  %126 = load ptr, ptr %2, align 8, !dbg !783
  %127 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %126, i32 0, i32 0, !dbg !783
  %128 = load ptr, ptr %127, align 8, !dbg !783
  %129 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %128, i32 0, i32 0, !dbg !783
  %130 = load ptr, ptr %129, align 8, !dbg !783
  %131 = load ptr, ptr %2, align 8, !dbg !783
  call void %130(ptr noundef %131), !dbg !783
  br label %132, !dbg !783

132:                                              ; preds = %121, %112
  br label %133, !dbg !784

133:                                              ; preds = %132
  %134 = load i32, ptr %3, align 4, !dbg !785
  %135 = add i32 %134, 1, !dbg !785
  store i32 %135, ptr %3, align 4, !dbg !785
  br label %80, !dbg !786, !llvm.loop !787

136:                                              ; preds = %80
  %137 = load ptr, ptr %2, align 8, !dbg !789
  %138 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %137, i32 0, i32 51, !dbg !790
  %139 = load ptr, ptr %138, align 8, !dbg !790
  %140 = getelementptr inbounds nuw %struct.jpeg_comp_master, ptr %139, i32 0, i32 2, !dbg !791
  %141 = load ptr, ptr %140, align 8, !dbg !791
  %142 = load ptr, ptr %2, align 8, !dbg !792
  call void %141(ptr noundef %142), !dbg !793
  br label %65, !dbg !731, !llvm.loop !794

143:                                              ; preds = %65
  %144 = load ptr, ptr %2, align 8, !dbg !796
  %145 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %144, i32 0, i32 55, !dbg !797
  %146 = load ptr, ptr %145, align 8, !dbg !797
  %147 = getelementptr inbounds nuw %struct.jpeg_marker_writer, ptr %146, i32 0, i32 4, !dbg !798
  %148 = load ptr, ptr %147, align 8, !dbg !798
  %149 = load ptr, ptr %2, align 8, !dbg !799
  call void %148(ptr noundef %149), !dbg !800
  %150 = load ptr, ptr %2, align 8, !dbg !801
  %151 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %150, i32 0, i32 5, !dbg !802
  %152 = load ptr, ptr %151, align 8, !dbg !802
  %153 = getelementptr inbounds nuw %struct.jpeg_destination_mgr, ptr %152, i32 0, i32 4, !dbg !803
  %154 = load ptr, ptr %153, align 8, !dbg !803
  %155 = load ptr, ptr %2, align 8, !dbg !804
  call void %154(ptr noundef %155), !dbg !805
  %156 = load ptr, ptr %2, align 8, !dbg !806
  call void @jpeg_abort(ptr noundef %156), !dbg !807
  ret void, !dbg !808
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_write_marker(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 !dbg !809 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !810, !DIExpression(), !811)
  store i32 %1, ptr %6, align 4
    #dbg_declare(ptr %6, !812, !DIExpression(), !813)
  store ptr %2, ptr %7, align 8
    #dbg_declare(ptr %7, !814, !DIExpression(), !815)
  store i32 %3, ptr %8, align 4
    #dbg_declare(ptr %8, !816, !DIExpression(), !817)
  %9 = load ptr, ptr %5, align 8, !dbg !818
  %10 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %9, i32 0, i32 36, !dbg !820
  %11 = load i32, ptr %10, align 8, !dbg !820
  %12 = icmp ne i32 %11, 0, !dbg !821
  br i1 %12, label %28, label %13, !dbg !822

13:                                               ; preds = %4
  %14 = load ptr, ptr %5, align 8, !dbg !823
  %15 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %14, i32 0, i32 4, !dbg !824
  %16 = load i32, ptr %15, align 4, !dbg !824
  %17 = icmp ne i32 %16, 101, !dbg !825
  br i1 %17, label %18, label %47, !dbg !826

18:                                               ; preds = %13
  %19 = load ptr, ptr %5, align 8, !dbg !827
  %20 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %19, i32 0, i32 4, !dbg !828
  %21 = load i32, ptr %20, align 4, !dbg !828
  %22 = icmp ne i32 %21, 102, !dbg !829
  br i1 %22, label %23, label %47, !dbg !830

23:                                               ; preds = %18
  %24 = load ptr, ptr %5, align 8, !dbg !831
  %25 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %24, i32 0, i32 4, !dbg !832
  %26 = load i32, ptr %25, align 4, !dbg !832
  %27 = icmp ne i32 %26, 103, !dbg !833
  br i1 %27, label %28, label %47, !dbg !822

28:                                               ; preds = %23, %4
  %29 = load ptr, ptr %5, align 8, !dbg !834
  %30 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %29, i32 0, i32 0, !dbg !834
  %31 = load ptr, ptr %30, align 8, !dbg !834
  %32 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %31, i32 0, i32 5, !dbg !834
  store i32 18, ptr %32, align 8, !dbg !834
  %33 = load ptr, ptr %5, align 8, !dbg !834
  %34 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %33, i32 0, i32 4, !dbg !834
  %35 = load i32, ptr %34, align 4, !dbg !834
  %36 = load ptr, ptr %5, align 8, !dbg !834
  %37 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %36, i32 0, i32 0, !dbg !834
  %38 = load ptr, ptr %37, align 8, !dbg !834
  %39 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %38, i32 0, i32 6, !dbg !834
  %40 = getelementptr inbounds [8 x i32], ptr %39, i64 0, i64 0, !dbg !834
  store i32 %35, ptr %40, align 4, !dbg !834
  %41 = load ptr, ptr %5, align 8, !dbg !834
  %42 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %41, i32 0, i32 0, !dbg !834
  %43 = load ptr, ptr %42, align 8, !dbg !834
  %44 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %43, i32 0, i32 0, !dbg !834
  %45 = load ptr, ptr %44, align 8, !dbg !834
  %46 = load ptr, ptr %5, align 8, !dbg !834
  call void %45(ptr noundef %46), !dbg !834
  br label %47, !dbg !834

47:                                               ; preds = %28, %23, %18, %13
  %48 = load ptr, ptr %5, align 8, !dbg !835
  %49 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %48, i32 0, i32 55, !dbg !836
  %50 = load ptr, ptr %49, align 8, !dbg !836
  %51 = getelementptr inbounds nuw %struct.jpeg_marker_writer, ptr %50, i32 0, i32 0, !dbg !837
  %52 = load ptr, ptr %51, align 8, !dbg !837
  %53 = load ptr, ptr %5, align 8, !dbg !838
  %54 = load i32, ptr %6, align 4, !dbg !839
  %55 = load ptr, ptr %7, align 8, !dbg !840
  %56 = load i32, ptr %8, align 4, !dbg !841
  call void %52(ptr noundef %53, i32 noundef %54, ptr noundef %55, i32 noundef %56), !dbg !842
  ret void, !dbg !843
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_write_tables(ptr noundef %0) #0 !dbg !844 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !845, !DIExpression(), !846)
  %3 = load ptr, ptr %2, align 8, !dbg !847
  %4 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %3, i32 0, i32 4, !dbg !849
  %5 = load i32, ptr %4, align 4, !dbg !849
  %6 = icmp ne i32 %5, 100, !dbg !850
  br i1 %6, label %7, label %26, !dbg !850

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !dbg !851
  %9 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %8, i32 0, i32 0, !dbg !851
  %10 = load ptr, ptr %9, align 8, !dbg !851
  %11 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %10, i32 0, i32 5, !dbg !851
  store i32 18, ptr %11, align 8, !dbg !851
  %12 = load ptr, ptr %2, align 8, !dbg !851
  %13 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %12, i32 0, i32 4, !dbg !851
  %14 = load i32, ptr %13, align 4, !dbg !851
  %15 = load ptr, ptr %2, align 8, !dbg !851
  %16 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %15, i32 0, i32 0, !dbg !851
  %17 = load ptr, ptr %16, align 8, !dbg !851
  %18 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %17, i32 0, i32 6, !dbg !851
  %19 = getelementptr inbounds [8 x i32], ptr %18, i64 0, i64 0, !dbg !851
  store i32 %14, ptr %19, align 4, !dbg !851
  %20 = load ptr, ptr %2, align 8, !dbg !851
  %21 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %20, i32 0, i32 0, !dbg !851
  %22 = load ptr, ptr %21, align 8, !dbg !851
  %23 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %22, i32 0, i32 0, !dbg !851
  %24 = load ptr, ptr %23, align 8, !dbg !851
  %25 = load ptr, ptr %2, align 8, !dbg !851
  call void %24(ptr noundef %25), !dbg !851
  br label %26, !dbg !851

26:                                               ; preds = %7, %1
  %27 = load ptr, ptr %2, align 8, !dbg !852
  %28 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %27, i32 0, i32 0, !dbg !853
  %29 = load ptr, ptr %28, align 8, !dbg !853
  %30 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %29, i32 0, i32 4, !dbg !854
  %31 = load ptr, ptr %30, align 8, !dbg !854
  %32 = load ptr, ptr %2, align 8, !dbg !855
  call void %31(ptr noundef %32), !dbg !856
  %33 = load ptr, ptr %2, align 8, !dbg !857
  %34 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %33, i32 0, i32 5, !dbg !858
  %35 = load ptr, ptr %34, align 8, !dbg !858
  %36 = getelementptr inbounds nuw %struct.jpeg_destination_mgr, ptr %35, i32 0, i32 2, !dbg !859
  %37 = load ptr, ptr %36, align 8, !dbg !859
  %38 = load ptr, ptr %2, align 8, !dbg !860
  call void %37(ptr noundef %38), !dbg !861
  %39 = load ptr, ptr %2, align 8, !dbg !862
  call void @jinit_marker_writer(ptr noundef %39), !dbg !863
  %40 = load ptr, ptr %2, align 8, !dbg !864
  %41 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %40, i32 0, i32 55, !dbg !865
  %42 = load ptr, ptr %41, align 8, !dbg !865
  %43 = getelementptr inbounds nuw %struct.jpeg_marker_writer, ptr %42, i32 0, i32 5, !dbg !866
  %44 = load ptr, ptr %43, align 8, !dbg !866
  %45 = load ptr, ptr %2, align 8, !dbg !867
  call void %44(ptr noundef %45), !dbg !868
  %46 = load ptr, ptr %2, align 8, !dbg !869
  %47 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %46, i32 0, i32 5, !dbg !870
  %48 = load ptr, ptr %47, align 8, !dbg !870
  %49 = getelementptr inbounds nuw %struct.jpeg_destination_mgr, ptr %48, i32 0, i32 4, !dbg !871
  %50 = load ptr, ptr %49, align 8, !dbg !871
  %51 = load ptr, ptr %2, align 8, !dbg !872
  call void %50(ptr noundef %51), !dbg !873
  %52 = load ptr, ptr %2, align 8, !dbg !874
  call void @jpeg_abort(ptr noundef %52), !dbg !875
  ret void, !dbg !876
}

declare void @jinit_marker_writer(ptr noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!278, !279, !280, !281, !282, !283, !284}
!llvm.ident = !{!285}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !149, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jcapimin.c", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "b7f0b2205b26cad68abe2267044c1440")
!2 = !{!3, !13, !18, !25}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 194, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jpeglib.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "2a2b23235fe587b10147d741e3371e67")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12}
!7 = !DIEnumerator(name: "JCS_UNKNOWN", value: 0)
!8 = !DIEnumerator(name: "JCS_GRAYSCALE", value: 1)
!9 = !DIEnumerator(name: "JCS_RGB", value: 2)
!10 = !DIEnumerator(name: "JCS_YCbCr", value: 3)
!11 = !DIEnumerator(name: "JCS_CMYK", value: 4)
!12 = !DIEnumerator(name: "JCS_YCCK", value: 5)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 205, baseType: !5, size: 32, elements: !14)
!14 = !{!15, !16, !17}
!15 = !DIEnumerator(name: "JDCT_ISLOW", value: 0)
!16 = !DIEnumerator(name: "JDCT_IFAST", value: 1)
!17 = !DIEnumerator(name: "JDCT_FLOAT", value: 2)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !19, line: 16, baseType: !5, size: 32, elements: !20)
!19 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jpegint.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "87e9869e13f29b8e74a9dee50528c6c5")
!20 = !{!21, !22, !23, !24}
!21 = !DIEnumerator(name: "JBUF_PASS_THRU", value: 0)
!22 = !DIEnumerator(name: "JBUF_SAVE_SOURCE", value: 1)
!23 = !DIEnumerator(name: "JBUF_CRANK_DEST", value: 2)
!24 = !DIEnumerator(name: "JBUF_SAVE_AND_PASS", value: 3)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !26, line: 33, baseType: !5, size: 32, elements: !27)
!26 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jerror.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "a232f2460ff0049c960896e323d8710b")
!27 = !{!28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148}
!28 = !DIEnumerator(name: "JMSG_NOMESSAGE", value: 0)
!29 = !DIEnumerator(name: "JERR_ARITH_NOTIMPL", value: 1)
!30 = !DIEnumerator(name: "JERR_BAD_ALIGN_TYPE", value: 2)
!31 = !DIEnumerator(name: "JERR_BAD_ALLOC_CHUNK", value: 3)
!32 = !DIEnumerator(name: "JERR_BAD_BUFFER_MODE", value: 4)
!33 = !DIEnumerator(name: "JERR_BAD_COMPONENT_ID", value: 5)
!34 = !DIEnumerator(name: "JERR_BAD_DCTSIZE", value: 6)
!35 = !DIEnumerator(name: "JERR_BAD_IN_COLORSPACE", value: 7)
!36 = !DIEnumerator(name: "JERR_BAD_J_COLORSPACE", value: 8)
!37 = !DIEnumerator(name: "JERR_BAD_LENGTH", value: 9)
!38 = !DIEnumerator(name: "JERR_BAD_LIB_VERSION", value: 10)
!39 = !DIEnumerator(name: "JERR_BAD_MCU_SIZE", value: 11)
!40 = !DIEnumerator(name: "JERR_BAD_POOL_ID", value: 12)
!41 = !DIEnumerator(name: "JERR_BAD_PRECISION", value: 13)
!42 = !DIEnumerator(name: "JERR_BAD_PROGRESSION", value: 14)
!43 = !DIEnumerator(name: "JERR_BAD_PROG_SCRIPT", value: 15)
!44 = !DIEnumerator(name: "JERR_BAD_SAMPLING", value: 16)
!45 = !DIEnumerator(name: "JERR_BAD_SCAN_SCRIPT", value: 17)
!46 = !DIEnumerator(name: "JERR_BAD_STATE", value: 18)
!47 = !DIEnumerator(name: "JERR_BAD_STRUCT_SIZE", value: 19)
!48 = !DIEnumerator(name: "JERR_BAD_VIRTUAL_ACCESS", value: 20)
!49 = !DIEnumerator(name: "JERR_BUFFER_SIZE", value: 21)
!50 = !DIEnumerator(name: "JERR_CANT_SUSPEND", value: 22)
!51 = !DIEnumerator(name: "JERR_CCIR601_NOTIMPL", value: 23)
!52 = !DIEnumerator(name: "JERR_COMPONENT_COUNT", value: 24)
!53 = !DIEnumerator(name: "JERR_CONVERSION_NOTIMPL", value: 25)
!54 = !DIEnumerator(name: "JERR_DAC_INDEX", value: 26)
!55 = !DIEnumerator(name: "JERR_DAC_VALUE", value: 27)
!56 = !DIEnumerator(name: "JERR_DHT_COUNTS", value: 28)
!57 = !DIEnumerator(name: "JERR_DHT_INDEX", value: 29)
!58 = !DIEnumerator(name: "JERR_DQT_INDEX", value: 30)
!59 = !DIEnumerator(name: "JERR_EMPTY_IMAGE", value: 31)
!60 = !DIEnumerator(name: "JERR_EMS_READ", value: 32)
!61 = !DIEnumerator(name: "JERR_EMS_WRITE", value: 33)
!62 = !DIEnumerator(name: "JERR_EOI_EXPECTED", value: 34)
!63 = !DIEnumerator(name: "JERR_FILE_READ", value: 35)
!64 = !DIEnumerator(name: "JERR_FILE_WRITE", value: 36)
!65 = !DIEnumerator(name: "JERR_FRACT_SAMPLE_NOTIMPL", value: 37)
!66 = !DIEnumerator(name: "JERR_HUFF_CLEN_OVERFLOW", value: 38)
!67 = !DIEnumerator(name: "JERR_HUFF_MISSING_CODE", value: 39)
!68 = !DIEnumerator(name: "JERR_IMAGE_TOO_BIG", value: 40)
!69 = !DIEnumerator(name: "JERR_INPUT_EMPTY", value: 41)
!70 = !DIEnumerator(name: "JERR_INPUT_EOF", value: 42)
!71 = !DIEnumerator(name: "JERR_MISMATCHED_QUANT_TABLE", value: 43)
!72 = !DIEnumerator(name: "JERR_MISSING_DATA", value: 44)
!73 = !DIEnumerator(name: "JERR_MODE_CHANGE", value: 45)
!74 = !DIEnumerator(name: "JERR_NOTIMPL", value: 46)
!75 = !DIEnumerator(name: "JERR_NOT_COMPILED", value: 47)
!76 = !DIEnumerator(name: "JERR_NO_BACKING_STORE", value: 48)
!77 = !DIEnumerator(name: "JERR_NO_HUFF_TABLE", value: 49)
!78 = !DIEnumerator(name: "JERR_NO_IMAGE", value: 50)
!79 = !DIEnumerator(name: "JERR_NO_QUANT_TABLE", value: 51)
!80 = !DIEnumerator(name: "JERR_NO_SOI", value: 52)
!81 = !DIEnumerator(name: "JERR_OUT_OF_MEMORY", value: 53)
!82 = !DIEnumerator(name: "JERR_QUANT_COMPONENTS", value: 54)
!83 = !DIEnumerator(name: "JERR_QUANT_FEW_COLORS", value: 55)
!84 = !DIEnumerator(name: "JERR_QUANT_MANY_COLORS", value: 56)
!85 = !DIEnumerator(name: "JERR_SOF_DUPLICATE", value: 57)
!86 = !DIEnumerator(name: "JERR_SOF_NO_SOS", value: 58)
!87 = !DIEnumerator(name: "JERR_SOF_UNSUPPORTED", value: 59)
!88 = !DIEnumerator(name: "JERR_SOI_DUPLICATE", value: 60)
!89 = !DIEnumerator(name: "JERR_SOS_NO_SOF", value: 61)
!90 = !DIEnumerator(name: "JERR_TFILE_CREATE", value: 62)
!91 = !DIEnumerator(name: "JERR_TFILE_READ", value: 63)
!92 = !DIEnumerator(name: "JERR_TFILE_SEEK", value: 64)
!93 = !DIEnumerator(name: "JERR_TFILE_WRITE", value: 65)
!94 = !DIEnumerator(name: "JERR_TOO_LITTLE_DATA", value: 66)
!95 = !DIEnumerator(name: "JERR_UNKNOWN_MARKER", value: 67)
!96 = !DIEnumerator(name: "JERR_VIRTUAL_BUG", value: 68)
!97 = !DIEnumerator(name: "JERR_WIDTH_OVERFLOW", value: 69)
!98 = !DIEnumerator(name: "JERR_XMS_READ", value: 70)
!99 = !DIEnumerator(name: "JERR_XMS_WRITE", value: 71)
!100 = !DIEnumerator(name: "JMSG_COPYRIGHT", value: 72)
!101 = !DIEnumerator(name: "JMSG_VERSION", value: 73)
!102 = !DIEnumerator(name: "JTRC_16BIT_TABLES", value: 74)
!103 = !DIEnumerator(name: "JTRC_ADOBE", value: 75)
!104 = !DIEnumerator(name: "JTRC_APP0", value: 76)
!105 = !DIEnumerator(name: "JTRC_APP14", value: 77)
!106 = !DIEnumerator(name: "JTRC_DAC", value: 78)
!107 = !DIEnumerator(name: "JTRC_DHT", value: 79)
!108 = !DIEnumerator(name: "JTRC_DQT", value: 80)
!109 = !DIEnumerator(name: "JTRC_DRI", value: 81)
!110 = !DIEnumerator(name: "JTRC_EMS_CLOSE", value: 82)
!111 = !DIEnumerator(name: "JTRC_EMS_OPEN", value: 83)
!112 = !DIEnumerator(name: "JTRC_EOI", value: 84)
!113 = !DIEnumerator(name: "JTRC_HUFFBITS", value: 85)
!114 = !DIEnumerator(name: "JTRC_JFIF", value: 86)
!115 = !DIEnumerator(name: "JTRC_JFIF_BADTHUMBNAILSIZE", value: 87)
!116 = !DIEnumerator(name: "JTRC_JFIF_MINOR", value: 88)
!117 = !DIEnumerator(name: "JTRC_JFIF_THUMBNAIL", value: 89)
!118 = !DIEnumerator(name: "JTRC_MISC_MARKER", value: 90)
!119 = !DIEnumerator(name: "JTRC_PARMLESS_MARKER", value: 91)
!120 = !DIEnumerator(name: "JTRC_QUANTVALS", value: 92)
!121 = !DIEnumerator(name: "JTRC_QUANT_3_NCOLORS", value: 93)
!122 = !DIEnumerator(name: "JTRC_QUANT_NCOLORS", value: 94)
!123 = !DIEnumerator(name: "JTRC_QUANT_SELECTED", value: 95)
!124 = !DIEnumerator(name: "JTRC_RECOVERY_ACTION", value: 96)
!125 = !DIEnumerator(name: "JTRC_RST", value: 97)
!126 = !DIEnumerator(name: "JTRC_SMOOTH_NOTIMPL", value: 98)
!127 = !DIEnumerator(name: "JTRC_SOF", value: 99)
!128 = !DIEnumerator(name: "JTRC_SOF_COMPONENT", value: 100)
!129 = !DIEnumerator(name: "JTRC_SOI", value: 101)
!130 = !DIEnumerator(name: "JTRC_SOS", value: 102)
!131 = !DIEnumerator(name: "JTRC_SOS_COMPONENT", value: 103)
!132 = !DIEnumerator(name: "JTRC_SOS_PARAMS", value: 104)
!133 = !DIEnumerator(name: "JTRC_TFILE_CLOSE", value: 105)
!134 = !DIEnumerator(name: "JTRC_TFILE_OPEN", value: 106)
!135 = !DIEnumerator(name: "JTRC_UNKNOWN_IDS", value: 107)
!136 = !DIEnumerator(name: "JTRC_XMS_CLOSE", value: 108)
!137 = !DIEnumerator(name: "JTRC_XMS_OPEN", value: 109)
!138 = !DIEnumerator(name: "JWRN_ADOBE_XFORM", value: 110)
!139 = !DIEnumerator(name: "JWRN_BOGUS_PROGRESSION", value: 111)
!140 = !DIEnumerator(name: "JWRN_EXTRANEOUS_DATA", value: 112)
!141 = !DIEnumerator(name: "JWRN_HIT_MARKER", value: 113)
!142 = !DIEnumerator(name: "JWRN_HUFF_BAD_CODE", value: 114)
!143 = !DIEnumerator(name: "JWRN_JFIF_MAJOR", value: 115)
!144 = !DIEnumerator(name: "JWRN_JPEG_EOF", value: 116)
!145 = !DIEnumerator(name: "JWRN_MUST_RESYNC", value: 117)
!146 = !DIEnumerator(name: "JWRN_NOT_SEQUENTIAL", value: 118)
!147 = !DIEnumerator(name: "JWRN_TOO_MUCH_DATA", value: 119)
!148 = !DIEnumerator(name: "JMSG_LASTMSGCODE", value: 120)
!149 = !{!150, !208, !166, !207, !189, !276}
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_common_ptr", file: !4, line: 248, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_common_struct", file: !4, line: 240, size: 256, elements: !153)
!153 = !{!154, !199, !265, !274, !275}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !152, file: !4, line: 241, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_error_mgr", file: !4, line: 618, size: 1344, elements: !157)
!157 = !{!158, !162, !167, !168, !174, !175, !176, !187, !188, !190, !195, !196, !197, !198}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "error_exit", scope: !156, file: !4, line: 620, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DISubroutineType(types: !161)
!161 = !{null, !150}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "emit_message", scope: !156, file: !4, line: 622, baseType: !163, size: 64, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DISubroutineType(types: !165)
!165 = !{null, !150, !166}
!166 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "output_message", scope: !156, file: !4, line: 624, baseType: !159, size: 64, offset: 128)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "format_message", scope: !156, file: !4, line: 626, baseType: !169, size: 64, offset: 192)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DISubroutineType(types: !171)
!171 = !{null, !150, !172}
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "reset_error_mgr", scope: !156, file: !4, line: 629, baseType: !159, size: 64, offset: 256)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "msg_code", scope: !156, file: !4, line: 634, baseType: !166, size: 32, offset: 320)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "msg_parm", scope: !156, file: !4, line: 639, baseType: !177, size: 640, offset: 352)
!177 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !156, file: !4, line: 636, size: 640, elements: !178)
!178 = !{!179, !183}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !177, file: !4, line: 637, baseType: !180, size: 256)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 256, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 8)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !177, file: !4, line: 638, baseType: !184, size: 640)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 640, elements: !185)
!185 = !{!186}
!186 = !DISubrange(count: 80)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "trace_level", scope: !156, file: !4, line: 643, baseType: !166, size: 32, offset: 992)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "num_warnings", scope: !156, file: !4, line: 651, baseType: !189, size: 64, offset: 1024)
!189 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_message_table", scope: !156, file: !4, line: 663, baseType: !191, size: 64, offset: 1088)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !193)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !173)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "last_jpeg_message", scope: !156, file: !4, line: 664, baseType: !166, size: 32, offset: 1152)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "addon_message_table", scope: !156, file: !4, line: 668, baseType: !191, size: 64, offset: 1216)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "first_addon_message", scope: !156, file: !4, line: 669, baseType: !166, size: 32, offset: 1280)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "last_addon_message", scope: !156, file: !4, line: 670, baseType: !166, size: 32, offset: 1312)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !152, file: !4, line: 241, baseType: !200, size: 64, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_memory_mgr", file: !4, line: 731, size: 768, elements: !202)
!202 = !{!203, !211, !212, !224, !238, !246, !253, !254, !258, !262, !263, !264}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_small", scope: !201, file: !4, line: 733, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!207, !150, !166, !208}
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !209, line: 18, baseType: !210)
!209 = !DIFile(filename: "/usr/local/lib/clang/20/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!210 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_large", scope: !201, file: !4, line: 735, baseType: !204, size: 64, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_sarray", scope: !201, file: !4, line: 737, baseType: !213, size: 64, offset: 128)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{!216, !150, !166, !223, !223}
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPARRAY", file: !4, line: 67, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPROW", file: !4, line: 66, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPLE", file: !221, line: 59, baseType: !222)
!221 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jmorecfg.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "56a0eda58fafa6bdd5498f702a998c09")
!222 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "JDIMENSION", file: !221, line: 171, baseType: !5)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_barray", scope: !201, file: !4, line: 740, baseType: !225, size: 64, offset: 192)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DISubroutineType(types: !227)
!227 = !{!228, !150, !166, !223, !223}
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCKARRAY", file: !4, line: 72, baseType: !229)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCKROW", file: !4, line: 71, baseType: !231)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCK", file: !4, line: 70, baseType: !233)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !234, size: 1024, elements: !236)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "JCOEF", file: !221, line: 99, baseType: !235)
!235 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!236 = !{!237}
!237 = !DISubrange(count: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_sarray", scope: !201, file: !4, line: 743, baseType: !239, size: 64, offset: 256)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{!242, !150, !166, !245, !223, !223, !223}
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_sarray_ptr", file: !4, line: 727, baseType: !243)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_sarray_control", file: !4, line: 727, flags: DIFlagFwdDecl)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "boolean", file: !221, line: 227, baseType: !166)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_barray", scope: !201, file: !4, line: 749, baseType: !247, size: 64, offset: 320)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DISubroutineType(types: !249)
!249 = !{!250, !150, !166, !245, !223, !223, !223}
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_barray_ptr", file: !4, line: 728, baseType: !251)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_barray_control", file: !4, line: 728, flags: DIFlagFwdDecl)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "realize_virt_arrays", scope: !201, file: !4, line: 755, baseType: !159, size: 64, offset: 384)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_sarray", scope: !201, file: !4, line: 756, baseType: !255, size: 64, offset: 448)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DISubroutineType(types: !257)
!257 = !{!216, !150, !242, !223, !223, !245}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_barray", scope: !201, file: !4, line: 761, baseType: !259, size: 64, offset: 512)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DISubroutineType(types: !261)
!261 = !{!228, !150, !250, !223, !223, !245}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "free_pool", scope: !201, file: !4, line: 766, baseType: !163, size: 64, offset: 576)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "self_destruct", scope: !201, file: !4, line: 767, baseType: !159, size: 64, offset: 640)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "max_memory_to_use", scope: !201, file: !4, line: 774, baseType: !189, size: 64, offset: 704)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !152, file: !4, line: 241, baseType: !266, size: 64, offset: 128)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_progress_mgr", file: !4, line: 676, size: 256, elements: !268)
!268 = !{!269, !270, !271, !272, !273}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !267, file: !4, line: 677, baseType: !159, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "pass_counter", scope: !267, file: !4, line: 679, baseType: !189, size: 64, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "pass_limit", scope: !267, file: !4, line: 680, baseType: !189, size: 64, offset: 128)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "completed_passes", scope: !267, file: !4, line: 681, baseType: !166, size: 32, offset: 192)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "total_passes", scope: !267, file: !4, line: 682, baseType: !166, size: 32, offset: 224)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !152, file: !4, line: 241, baseType: !245, size: 32, offset: 192)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !152, file: !4, line: 241, baseType: !166, size: 32, offset: 224)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPIMAGE", file: !4, line: 68, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!278 = !{i32 7, !"Dwarf Version", i32 5}
!279 = !{i32 2, !"Debug Info Version", i32 3}
!280 = !{i32 1, !"wchar_size", i32 4}
!281 = !{i32 8, !"PIC Level", i32 2}
!282 = !{i32 7, !"PIE Level", i32 2}
!283 = !{i32 7, !"uwtable", i32 2}
!284 = !{i32 7, !"frame-pointer", i32 2}
!285 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!286 = distinct !DISubprogram(name: "jpeg_CreateCompress", scope: !1, file: !1, line: 30, type: !287, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !531)
!287 = !DISubroutineType(types: !288)
!288 = !{null, !289, !166, !208}
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_compress_ptr", file: !4, line: 249, baseType: !290)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_compress_struct", file: !4, line: 255, size: 3968, elements: !292)
!292 = !{!293, !294, !295, !296, !297, !298, !315, !316, !317, !318, !320, !322, !323, !324, !325, !360, !364, !380, !381, !385, !386, !387, !388, !401, !402, !403, !404, !405, !406, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !423, !424, !425, !426, !430, !431, !432, !433, !434, !443, !457, !466, !475, !490, !499, !509, !518}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !291, file: !4, line: 256, baseType: !155, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !291, file: !4, line: 256, baseType: !200, size: 64, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !291, file: !4, line: 256, baseType: !266, size: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !291, file: !4, line: 256, baseType: !245, size: 32, offset: 192)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !291, file: !4, line: 256, baseType: !166, size: 32, offset: 224)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !291, file: !4, line: 259, baseType: !299, size: 64, offset: 256)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_destination_mgr", file: !4, line: 688, size: 320, elements: !301)
!301 = !{!302, !305, !306, !310, !314}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "next_output_byte", scope: !300, file: !4, line: 689, baseType: !303, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "JOCTET", file: !221, line: 110, baseType: !222)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "free_in_buffer", scope: !300, file: !4, line: 690, baseType: !208, size: 64, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "init_destination", scope: !300, file: !4, line: 692, baseType: !307, size: 64, offset: 128)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DISubroutineType(types: !309)
!309 = !{null, !289}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "empty_output_buffer", scope: !300, file: !4, line: 693, baseType: !311, size: 64, offset: 192)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{!245, !289}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "term_destination", scope: !300, file: !4, line: 694, baseType: !307, size: 64, offset: 256)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "image_width", scope: !291, file: !4, line: 266, baseType: !223, size: 32, offset: 320)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "image_height", scope: !291, file: !4, line: 267, baseType: !223, size: 32, offset: 352)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "input_components", scope: !291, file: !4, line: 268, baseType: !166, size: 32, offset: 384)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "in_color_space", scope: !291, file: !4, line: 269, baseType: !319, size: 32, offset: 416)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_COLOR_SPACE", file: !4, line: 201, baseType: !3)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "input_gamma", scope: !291, file: !4, line: 271, baseType: !321, size: 64, offset: 448)
!321 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "data_precision", scope: !291, file: !4, line: 281, baseType: !166, size: 32, offset: 512)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "num_components", scope: !291, file: !4, line: 283, baseType: !166, size: 32, offset: 544)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_color_space", scope: !291, file: !4, line: 284, baseType: !319, size: 32, offset: 576)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "comp_info", scope: !291, file: !4, line: 286, baseType: !326, size: 64, offset: 640)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_component_info", file: !4, line: 179, baseType: !328)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 116, size: 768, elements: !329)
!329 = !{!330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !359}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "component_id", scope: !328, file: !4, line: 120, baseType: !166, size: 32)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "component_index", scope: !328, file: !4, line: 121, baseType: !166, size: 32, offset: 32)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "h_samp_factor", scope: !328, file: !4, line: 122, baseType: !166, size: 32, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "v_samp_factor", scope: !328, file: !4, line: 123, baseType: !166, size: 32, offset: 96)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_no", scope: !328, file: !4, line: 124, baseType: !166, size: 32, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "dc_tbl_no", scope: !328, file: !4, line: 129, baseType: !166, size: 32, offset: 160)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tbl_no", scope: !328, file: !4, line: 130, baseType: !166, size: 32, offset: 192)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "width_in_blocks", scope: !328, file: !4, line: 139, baseType: !223, size: 32, offset: 224)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "height_in_blocks", scope: !328, file: !4, line: 140, baseType: !223, size: 32, offset: 256)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "DCT_scaled_size", scope: !328, file: !4, line: 147, baseType: !166, size: 32, offset: 288)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_width", scope: !328, file: !4, line: 154, baseType: !223, size: 32, offset: 320)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_height", scope: !328, file: !4, line: 155, baseType: !223, size: 32, offset: 352)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "component_needed", scope: !328, file: !4, line: 160, baseType: !245, size: 32, offset: 384)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_width", scope: !328, file: !4, line: 164, baseType: !166, size: 32, offset: 416)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_height", scope: !328, file: !4, line: 165, baseType: !166, size: 32, offset: 448)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_blocks", scope: !328, file: !4, line: 166, baseType: !166, size: 32, offset: 480)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_sample_width", scope: !328, file: !4, line: 167, baseType: !166, size: 32, offset: 512)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "last_col_width", scope: !328, file: !4, line: 168, baseType: !166, size: 32, offset: 544)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "last_row_height", scope: !328, file: !4, line: 169, baseType: !166, size: 32, offset: 576)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "quant_table", scope: !328, file: !4, line: 175, baseType: !350, size: 64, offset: 640)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "JQUANT_TBL", file: !4, line: 95, baseType: !352)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 83, size: 1056, elements: !353)
!353 = !{!354, !358}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "quantval", scope: !352, file: !4, line: 88, baseType: !355, size: 1024)
!355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, size: 1024, elements: !236)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !221, line: 147, baseType: !357)
!357 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !352, file: !4, line: 94, baseType: !245, size: 32, offset: 1024)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "dct_table", scope: !328, file: !4, line: 178, baseType: !207, size: 64, offset: 704)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_ptrs", scope: !291, file: !4, line: 289, baseType: !361, size: 256, offset: 704)
!361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !350, size: 256, elements: !362)
!362 = !{!363}
!363 = !DISubrange(count: 4)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "dc_huff_tbl_ptrs", scope: !291, file: !4, line: 292, baseType: !365, size: 256, offset: 960)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 256, elements: !362)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "JHUFF_TBL", file: !4, line: 111, baseType: !368)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 100, size: 2240, elements: !369)
!369 = !{!370, !375, !379}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !368, file: !4, line: 102, baseType: !371, size: 136)
!371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 136, elements: !373)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT8", file: !221, line: 135, baseType: !222)
!373 = !{!374}
!374 = !DISubrange(count: 17)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "huffval", scope: !368, file: !4, line: 104, baseType: !376, size: 2048, offset: 136)
!376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 2048, elements: !377)
!377 = !{!378}
!378 = !DISubrange(count: 256)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !368, file: !4, line: 110, baseType: !245, size: 32, offset: 2208)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "ac_huff_tbl_ptrs", scope: !291, file: !4, line: 293, baseType: !365, size: 256, offset: 1216)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_L", scope: !291, file: !4, line: 296, baseType: !382, size: 128, offset: 1472)
!382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 128, elements: !383)
!383 = !{!384}
!384 = !DISubrange(count: 16)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_U", scope: !291, file: !4, line: 297, baseType: !382, size: 128, offset: 1600)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "arith_ac_K", scope: !291, file: !4, line: 298, baseType: !382, size: 128, offset: 1728)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "num_scans", scope: !291, file: !4, line: 300, baseType: !166, size: 32, offset: 1856)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "scan_info", scope: !291, file: !4, line: 301, baseType: !389, size: 64, offset: 1920)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !391)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_scan_info", file: !4, line: 189, baseType: !392)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 184, size: 288, elements: !393)
!393 = !{!394, !395, !397, !398, !399, !400}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "comps_in_scan", scope: !392, file: !4, line: 185, baseType: !166, size: 32)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "component_index", scope: !392, file: !4, line: 186, baseType: !396, size: 128, offset: 32)
!396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 128, elements: !362)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "Ss", scope: !392, file: !4, line: 187, baseType: !166, size: 32, offset: 160)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "Se", scope: !392, file: !4, line: 187, baseType: !166, size: 32, offset: 192)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "Ah", scope: !392, file: !4, line: 188, baseType: !166, size: 32, offset: 224)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "Al", scope: !392, file: !4, line: 188, baseType: !166, size: 32, offset: 256)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "raw_data_in", scope: !291, file: !4, line: 307, baseType: !245, size: 32, offset: 1984)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "arith_code", scope: !291, file: !4, line: 308, baseType: !245, size: 32, offset: 2016)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_coding", scope: !291, file: !4, line: 309, baseType: !245, size: 32, offset: 2048)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "CCIR601_sampling", scope: !291, file: !4, line: 310, baseType: !245, size: 32, offset: 2080)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "smoothing_factor", scope: !291, file: !4, line: 311, baseType: !166, size: 32, offset: 2112)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "dct_method", scope: !291, file: !4, line: 312, baseType: !407, size: 32, offset: 2144)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_DCT_METHOD", file: !4, line: 209, baseType: !13)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "restart_interval", scope: !291, file: !4, line: 319, baseType: !5, size: 32, offset: 2176)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "restart_in_rows", scope: !291, file: !4, line: 320, baseType: !166, size: 32, offset: 2208)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "write_JFIF_header", scope: !291, file: !4, line: 324, baseType: !245, size: 32, offset: 2240)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "density_unit", scope: !291, file: !4, line: 329, baseType: !372, size: 8, offset: 2272)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "X_density", scope: !291, file: !4, line: 330, baseType: !356, size: 16, offset: 2288)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "Y_density", scope: !291, file: !4, line: 331, baseType: !356, size: 16, offset: 2304)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "write_Adobe_marker", scope: !291, file: !4, line: 332, baseType: !245, size: 32, offset: 2336)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "next_scanline", scope: !291, file: !4, line: 339, baseType: !223, size: 32, offset: 2368)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "progressive_mode", scope: !291, file: !4, line: 348, baseType: !245, size: 32, offset: 2400)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "max_h_samp_factor", scope: !291, file: !4, line: 349, baseType: !166, size: 32, offset: 2432)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "max_v_samp_factor", scope: !291, file: !4, line: 350, baseType: !166, size: 32, offset: 2464)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "total_iMCU_rows", scope: !291, file: !4, line: 352, baseType: !223, size: 32, offset: 2496)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "comps_in_scan", scope: !291, file: !4, line: 363, baseType: !166, size: 32, offset: 2528)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "cur_comp_info", scope: !291, file: !4, line: 364, baseType: !422, size: 256, offset: 2560)
!422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 256, elements: !362)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "MCUs_per_row", scope: !291, file: !4, line: 367, baseType: !223, size: 32, offset: 2816)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_rows_in_scan", scope: !291, file: !4, line: 368, baseType: !223, size: 32, offset: 2848)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_in_MCU", scope: !291, file: !4, line: 370, baseType: !166, size: 32, offset: 2880)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_membership", scope: !291, file: !4, line: 371, baseType: !427, size: 320, offset: 2912)
!427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 320, elements: !428)
!428 = !{!429}
!429 = !DISubrange(count: 10)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "Ss", scope: !291, file: !4, line: 375, baseType: !166, size: 32, offset: 3232)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "Se", scope: !291, file: !4, line: 375, baseType: !166, size: 32, offset: 3264)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "Ah", scope: !291, file: !4, line: 375, baseType: !166, size: 32, offset: 3296)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "Al", scope: !291, file: !4, line: 375, baseType: !166, size: 32, offset: 3328)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !291, file: !4, line: 380, baseType: !435, size: 64, offset: 3392)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_comp_master", file: !19, line: 45, size: 256, elements: !437)
!437 = !{!438, !439, !440, !441, !442}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_for_pass", scope: !436, file: !19, line: 46, baseType: !307, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "pass_startup", scope: !436, file: !19, line: 47, baseType: !307, size: 64, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "finish_pass", scope: !436, file: !19, line: 48, baseType: !307, size: 64, offset: 128)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "call_pass_startup", scope: !436, file: !19, line: 51, baseType: !245, size: 32, offset: 192)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "is_last_pass", scope: !436, file: !19, line: 52, baseType: !245, size: 32, offset: 224)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "main", scope: !291, file: !4, line: 381, baseType: !444, size: 64, offset: 3456)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_c_main_controller", file: !19, line: 56, size: 128, elements: !446)
!446 = !{!447, !452}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !445, file: !19, line: 57, baseType: !448, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{null, !289, !451}
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_BUF_MODE", file: !19, line: 22, baseType: !18)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "process_data", scope: !445, file: !19, line: 58, baseType: !453, size: 64, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DISubroutineType(types: !455)
!455 = !{null, !289, !216, !456, !223}
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "prep", scope: !291, file: !4, line: 382, baseType: !458, size: 64, offset: 3520)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_c_prep_controller", file: !19, line: 64, size: 128, elements: !460)
!460 = !{!461, !462}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !459, file: !19, line: 65, baseType: !448, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "pre_process_data", scope: !459, file: !19, line: 66, baseType: !463, size: 64, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{null, !289, !216, !456, !223, !276, !456, !223}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "coef", scope: !291, file: !4, line: 383, baseType: !467, size: 64, offset: 3584)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_c_coef_controller", file: !19, line: 76, size: 128, elements: !469)
!469 = !{!470, !471}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !468, file: !19, line: 77, baseType: !448, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "compress_data", scope: !468, file: !19, line: 78, baseType: !472, size: 64, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{!245, !289, !276}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "marker", scope: !291, file: !4, line: 384, baseType: !476, size: 64, offset: 3648)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_marker_writer", file: !19, line: 120, size: 384, elements: !478)
!478 = !{!479, !485, !486, !487, !488, !489}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "write_any_marker", scope: !477, file: !19, line: 123, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{null, !289, !166, !483, !5}
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !304)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_header", scope: !477, file: !19, line: 125, baseType: !307, size: 64, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "write_frame_header", scope: !477, file: !19, line: 126, baseType: !307, size: 64, offset: 128)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "write_scan_header", scope: !477, file: !19, line: 127, baseType: !307, size: 64, offset: 192)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_trailer", scope: !477, file: !19, line: 128, baseType: !307, size: 64, offset: 256)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "write_tables_only", scope: !477, file: !19, line: 129, baseType: !307, size: 64, offset: 320)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "cconvert", scope: !291, file: !4, line: 385, baseType: !491, size: 64, offset: 3712)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_color_converter", file: !19, line: 83, size: 128, elements: !493)
!493 = !{!494, !495}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !492, file: !19, line: 84, baseType: !307, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "color_convert", scope: !492, file: !19, line: 85, baseType: !496, size: 64, offset: 64)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{null, !289, !216, !276, !223, !166}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "downsample", scope: !291, file: !4, line: 386, baseType: !500, size: 64, offset: 3776)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_downsampler", file: !19, line: 91, size: 192, elements: !502)
!502 = !{!503, !504, !508}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !501, file: !19, line: 92, baseType: !307, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "downsample", scope: !501, file: !19, line: 93, baseType: !505, size: 64, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DISubroutineType(types: !507)
!507 = !{null, !289, !276, !223, !276, !223}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "need_context_rows", scope: !501, file: !19, line: 98, baseType: !245, size: 32, offset: 128)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "fdct", scope: !291, file: !4, line: 387, baseType: !510, size: 64, offset: 3840)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_forward_dct", file: !19, line: 102, size: 128, elements: !512)
!512 = !{!513, !514}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !511, file: !19, line: 103, baseType: !307, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "forward_DCT", scope: !511, file: !19, line: 105, baseType: !515, size: 64, offset: 64)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DISubroutineType(types: !517)
!517 = !{null, !289, !326, !216, !230, !223, !223, !223}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "entropy", scope: !291, file: !4, line: 388, baseType: !519, size: 64, offset: 3904)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_entropy_encoder", file: !19, line: 113, size: 192, elements: !521)
!521 = !{!522, !526, !530}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !520, file: !19, line: 114, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DISubroutineType(types: !525)
!525 = !{null, !289, !245}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "encode_mcu", scope: !520, file: !19, line: 115, baseType: !527, size: 64, offset: 64)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{!245, !289, !229}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "finish_pass", scope: !520, file: !19, line: 116, baseType: !307, size: 64, offset: 128)
!531 = !{}
!532 = !DILocalVariable(name: "cinfo", arg: 1, scope: !286, file: !1, line: 30, type: !289)
!533 = !DILocation(line: 30, column: 37, scope: !286)
!534 = !DILocalVariable(name: "version", arg: 2, scope: !286, file: !1, line: 30, type: !166)
!535 = !DILocation(line: 30, column: 48, scope: !286)
!536 = !DILocalVariable(name: "structsize", arg: 3, scope: !286, file: !1, line: 30, type: !208)
!537 = !DILocation(line: 30, column: 64, scope: !286)
!538 = !DILocalVariable(name: "i", scope: !286, file: !1, line: 32, type: !166)
!539 = !DILocation(line: 32, column: 7, scope: !286)
!540 = !DILocation(line: 35, column: 3, scope: !286)
!541 = !DILocation(line: 35, column: 10, scope: !286)
!542 = !DILocation(line: 35, column: 14, scope: !286)
!543 = !DILocation(line: 36, column: 7, scope: !544)
!544 = distinct !DILexicalBlock(scope: !286, file: !1, line: 36, column: 7)
!545 = !DILocation(line: 36, column: 15, scope: !544)
!546 = !DILocation(line: 37, column: 5, scope: !544)
!547 = !DILocation(line: 38, column: 7, scope: !548)
!548 = distinct !DILexicalBlock(scope: !286, file: !1, line: 38, column: 7)
!549 = !DILocation(line: 38, column: 18, scope: !548)
!550 = !DILocation(line: 39, column: 5, scope: !548)
!551 = !DILocalVariable(name: "err", scope: !552, file: !1, line: 46, type: !155)
!552 = distinct !DILexicalBlock(scope: !286, file: !1, line: 45, column: 3)
!553 = !DILocation(line: 46, column: 29, scope: !552)
!554 = !DILocation(line: 46, column: 35, scope: !552)
!555 = !DILocation(line: 46, column: 42, scope: !552)
!556 = !DILocation(line: 47, column: 5, scope: !552)
!557 = !DILocation(line: 48, column: 18, scope: !552)
!558 = !DILocation(line: 48, column: 5, scope: !552)
!559 = !DILocation(line: 48, column: 12, scope: !552)
!560 = !DILocation(line: 48, column: 16, scope: !552)
!561 = !DILocation(line: 50, column: 3, scope: !286)
!562 = !DILocation(line: 50, column: 10, scope: !286)
!563 = !DILocation(line: 50, column: 26, scope: !286)
!564 = !DILocation(line: 53, column: 35, scope: !286)
!565 = !DILocation(line: 53, column: 3, scope: !286)
!566 = !DILocation(line: 56, column: 3, scope: !286)
!567 = !DILocation(line: 56, column: 10, scope: !286)
!568 = !DILocation(line: 56, column: 19, scope: !286)
!569 = !DILocation(line: 57, column: 3, scope: !286)
!570 = !DILocation(line: 57, column: 10, scope: !286)
!571 = !DILocation(line: 57, column: 15, scope: !286)
!572 = !DILocation(line: 59, column: 3, scope: !286)
!573 = !DILocation(line: 59, column: 10, scope: !286)
!574 = !DILocation(line: 59, column: 20, scope: !286)
!575 = !DILocation(line: 61, column: 10, scope: !576)
!576 = distinct !DILexicalBlock(scope: !286, file: !1, line: 61, column: 3)
!577 = !DILocation(line: 61, column: 8, scope: !576)
!578 = !DILocation(line: 61, column: 15, scope: !579)
!579 = distinct !DILexicalBlock(scope: !576, file: !1, line: 61, column: 3)
!580 = !DILocation(line: 61, column: 17, scope: !579)
!581 = !DILocation(line: 61, column: 3, scope: !576)
!582 = !DILocation(line: 62, column: 5, scope: !579)
!583 = !DILocation(line: 62, column: 12, scope: !579)
!584 = !DILocation(line: 62, column: 27, scope: !579)
!585 = !DILocation(line: 62, column: 30, scope: !579)
!586 = !DILocation(line: 61, column: 36, scope: !579)
!587 = !DILocation(line: 61, column: 3, scope: !579)
!588 = distinct !{!588, !581, !589, !590}
!589 = !DILocation(line: 62, column: 32, scope: !576)
!590 = !{!"llvm.loop.mustprogress"}
!591 = !DILocation(line: 64, column: 10, scope: !592)
!592 = distinct !DILexicalBlock(scope: !286, file: !1, line: 64, column: 3)
!593 = !DILocation(line: 64, column: 8, scope: !592)
!594 = !DILocation(line: 64, column: 15, scope: !595)
!595 = distinct !DILexicalBlock(scope: !592, file: !1, line: 64, column: 3)
!596 = !DILocation(line: 64, column: 17, scope: !595)
!597 = !DILocation(line: 64, column: 3, scope: !592)
!598 = !DILocation(line: 65, column: 5, scope: !599)
!599 = distinct !DILexicalBlock(scope: !595, file: !1, line: 64, column: 39)
!600 = !DILocation(line: 65, column: 12, scope: !599)
!601 = !DILocation(line: 65, column: 29, scope: !599)
!602 = !DILocation(line: 65, column: 32, scope: !599)
!603 = !DILocation(line: 66, column: 5, scope: !599)
!604 = !DILocation(line: 66, column: 12, scope: !599)
!605 = !DILocation(line: 66, column: 29, scope: !599)
!606 = !DILocation(line: 66, column: 32, scope: !599)
!607 = !DILocation(line: 67, column: 3, scope: !599)
!608 = !DILocation(line: 64, column: 35, scope: !595)
!609 = !DILocation(line: 64, column: 3, scope: !595)
!610 = distinct !{!610, !597, !611, !590}
!611 = !DILocation(line: 67, column: 3, scope: !592)
!612 = !DILocation(line: 69, column: 3, scope: !286)
!613 = !DILocation(line: 69, column: 10, scope: !286)
!614 = !DILocation(line: 69, column: 22, scope: !286)
!615 = !DILocation(line: 72, column: 3, scope: !286)
!616 = !DILocation(line: 72, column: 10, scope: !286)
!617 = !DILocation(line: 72, column: 23, scope: !286)
!618 = !DILocation(line: 73, column: 1, scope: !286)
!619 = distinct !DISubprogram(name: "jpeg_destroy_compress", scope: !1, file: !1, line: 81, type: !308, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !531)
!620 = !DILocalVariable(name: "cinfo", arg: 1, scope: !619, file: !1, line: 81, type: !289)
!621 = !DILocation(line: 81, column: 39, scope: !619)
!622 = !DILocation(line: 83, column: 31, scope: !619)
!623 = !DILocation(line: 83, column: 3, scope: !619)
!624 = !DILocation(line: 84, column: 1, scope: !619)
!625 = distinct !DISubprogram(name: "jpeg_abort_compress", scope: !1, file: !1, line: 93, type: !308, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !531)
!626 = !DILocalVariable(name: "cinfo", arg: 1, scope: !625, file: !1, line: 93, type: !289)
!627 = !DILocation(line: 93, column: 37, scope: !625)
!628 = !DILocation(line: 95, column: 29, scope: !625)
!629 = !DILocation(line: 95, column: 3, scope: !625)
!630 = !DILocation(line: 96, column: 1, scope: !625)
!631 = distinct !DISubprogram(name: "jpeg_suppress_tables", scope: !1, file: !1, line: 112, type: !524, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !531)
!632 = !DILocalVariable(name: "cinfo", arg: 1, scope: !631, file: !1, line: 112, type: !289)
!633 = !DILocation(line: 112, column: 38, scope: !631)
!634 = !DILocalVariable(name: "suppress", arg: 2, scope: !631, file: !1, line: 112, type: !245)
!635 = !DILocation(line: 112, column: 53, scope: !631)
!636 = !DILocalVariable(name: "i", scope: !631, file: !1, line: 114, type: !166)
!637 = !DILocation(line: 114, column: 7, scope: !631)
!638 = !DILocalVariable(name: "qtbl", scope: !631, file: !1, line: 115, type: !350)
!639 = !DILocation(line: 115, column: 16, scope: !631)
!640 = !DILocalVariable(name: "htbl", scope: !631, file: !1, line: 116, type: !366)
!641 = !DILocation(line: 116, column: 15, scope: !631)
!642 = !DILocation(line: 118, column: 10, scope: !643)
!643 = distinct !DILexicalBlock(scope: !631, file: !1, line: 118, column: 3)
!644 = !DILocation(line: 118, column: 8, scope: !643)
!645 = !DILocation(line: 118, column: 15, scope: !646)
!646 = distinct !DILexicalBlock(scope: !643, file: !1, line: 118, column: 3)
!647 = !DILocation(line: 118, column: 17, scope: !646)
!648 = !DILocation(line: 118, column: 3, scope: !643)
!649 = !DILocation(line: 119, column: 17, scope: !650)
!650 = distinct !DILexicalBlock(scope: !651, file: !1, line: 119, column: 9)
!651 = distinct !DILexicalBlock(scope: !646, file: !1, line: 118, column: 40)
!652 = !DILocation(line: 119, column: 24, scope: !650)
!653 = !DILocation(line: 119, column: 39, scope: !650)
!654 = !DILocation(line: 119, column: 15, scope: !650)
!655 = !DILocation(line: 119, column: 43, scope: !650)
!656 = !DILocation(line: 120, column: 26, scope: !650)
!657 = !DILocation(line: 120, column: 7, scope: !650)
!658 = !DILocation(line: 120, column: 13, scope: !650)
!659 = !DILocation(line: 120, column: 24, scope: !650)
!660 = !DILocation(line: 121, column: 3, scope: !651)
!661 = !DILocation(line: 118, column: 36, scope: !646)
!662 = !DILocation(line: 118, column: 3, scope: !646)
!663 = distinct !{!663, !648, !664, !590}
!664 = !DILocation(line: 121, column: 3, scope: !643)
!665 = !DILocation(line: 123, column: 10, scope: !666)
!666 = distinct !DILexicalBlock(scope: !631, file: !1, line: 123, column: 3)
!667 = !DILocation(line: 123, column: 8, scope: !666)
!668 = !DILocation(line: 123, column: 15, scope: !669)
!669 = distinct !DILexicalBlock(scope: !666, file: !1, line: 123, column: 3)
!670 = !DILocation(line: 123, column: 17, scope: !669)
!671 = !DILocation(line: 123, column: 3, scope: !666)
!672 = !DILocation(line: 124, column: 17, scope: !673)
!673 = distinct !DILexicalBlock(scope: !674, file: !1, line: 124, column: 9)
!674 = distinct !DILexicalBlock(scope: !669, file: !1, line: 123, column: 39)
!675 = !DILocation(line: 124, column: 24, scope: !673)
!676 = !DILocation(line: 124, column: 41, scope: !673)
!677 = !DILocation(line: 124, column: 15, scope: !673)
!678 = !DILocation(line: 124, column: 45, scope: !673)
!679 = !DILocation(line: 125, column: 26, scope: !673)
!680 = !DILocation(line: 125, column: 7, scope: !673)
!681 = !DILocation(line: 125, column: 13, scope: !673)
!682 = !DILocation(line: 125, column: 24, scope: !673)
!683 = !DILocation(line: 126, column: 17, scope: !684)
!684 = distinct !DILexicalBlock(scope: !674, file: !1, line: 126, column: 9)
!685 = !DILocation(line: 126, column: 24, scope: !684)
!686 = !DILocation(line: 126, column: 41, scope: !684)
!687 = !DILocation(line: 126, column: 15, scope: !684)
!688 = !DILocation(line: 126, column: 45, scope: !684)
!689 = !DILocation(line: 127, column: 26, scope: !684)
!690 = !DILocation(line: 127, column: 7, scope: !684)
!691 = !DILocation(line: 127, column: 13, scope: !684)
!692 = !DILocation(line: 127, column: 24, scope: !684)
!693 = !DILocation(line: 128, column: 3, scope: !674)
!694 = !DILocation(line: 123, column: 35, scope: !669)
!695 = !DILocation(line: 123, column: 3, scope: !669)
!696 = distinct !{!696, !671, !697, !590}
!697 = !DILocation(line: 128, column: 3, scope: !666)
!698 = !DILocation(line: 129, column: 1, scope: !631)
!699 = distinct !DISubprogram(name: "jpeg_finish_compress", scope: !1, file: !1, line: 140, type: !308, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !531)
!700 = !DILocalVariable(name: "cinfo", arg: 1, scope: !699, file: !1, line: 140, type: !289)
!701 = !DILocation(line: 140, column: 38, scope: !699)
!702 = !DILocalVariable(name: "iMCU_row", scope: !699, file: !1, line: 142, type: !223)
!703 = !DILocation(line: 142, column: 14, scope: !699)
!704 = !DILocation(line: 144, column: 7, scope: !705)
!705 = distinct !DILexicalBlock(scope: !699, file: !1, line: 144, column: 7)
!706 = !DILocation(line: 144, column: 14, scope: !705)
!707 = !DILocation(line: 144, column: 27, scope: !705)
!708 = !DILocation(line: 144, column: 46, scope: !705)
!709 = !DILocation(line: 145, column: 7, scope: !705)
!710 = !DILocation(line: 145, column: 14, scope: !705)
!711 = !DILocation(line: 145, column: 27, scope: !705)
!712 = !DILocation(line: 147, column: 9, scope: !713)
!713 = distinct !DILexicalBlock(scope: !714, file: !1, line: 147, column: 9)
!714 = distinct !DILexicalBlock(scope: !705, file: !1, line: 145, column: 45)
!715 = !DILocation(line: 147, column: 16, scope: !713)
!716 = !DILocation(line: 147, column: 32, scope: !713)
!717 = !DILocation(line: 147, column: 39, scope: !713)
!718 = !DILocation(line: 147, column: 30, scope: !713)
!719 = !DILocation(line: 148, column: 7, scope: !713)
!720 = !DILocation(line: 149, column: 7, scope: !714)
!721 = !DILocation(line: 149, column: 14, scope: !714)
!722 = !DILocation(line: 149, column: 22, scope: !714)
!723 = !DILocation(line: 149, column: 36, scope: !714)
!724 = !DILocation(line: 149, column: 5, scope: !714)
!725 = !DILocation(line: 150, column: 3, scope: !714)
!726 = !DILocation(line: 150, column: 14, scope: !727)
!727 = distinct !DILexicalBlock(scope: !705, file: !1, line: 150, column: 14)
!728 = !DILocation(line: 150, column: 21, scope: !727)
!729 = !DILocation(line: 150, column: 34, scope: !727)
!730 = !DILocation(line: 151, column: 5, scope: !727)
!731 = !DILocation(line: 153, column: 3, scope: !699)
!732 = !DILocation(line: 153, column: 12, scope: !699)
!733 = !DILocation(line: 153, column: 19, scope: !699)
!734 = !DILocation(line: 153, column: 27, scope: !699)
!735 = !DILocation(line: 153, column: 10, scope: !699)
!736 = !DILocation(line: 154, column: 7, scope: !737)
!737 = distinct !DILexicalBlock(scope: !699, file: !1, line: 153, column: 41)
!738 = !DILocation(line: 154, column: 14, scope: !737)
!739 = !DILocation(line: 154, column: 22, scope: !737)
!740 = !DILocation(line: 154, column: 41, scope: !737)
!741 = !DILocation(line: 154, column: 5, scope: !737)
!742 = !DILocation(line: 155, column: 19, scope: !743)
!743 = distinct !DILexicalBlock(scope: !737, file: !1, line: 155, column: 5)
!744 = !DILocation(line: 155, column: 10, scope: !743)
!745 = !DILocation(line: 155, column: 24, scope: !746)
!746 = distinct !DILexicalBlock(scope: !743, file: !1, line: 155, column: 5)
!747 = !DILocation(line: 155, column: 35, scope: !746)
!748 = !DILocation(line: 155, column: 42, scope: !746)
!749 = !DILocation(line: 155, column: 33, scope: !746)
!750 = !DILocation(line: 155, column: 5, scope: !743)
!751 = !DILocation(line: 156, column: 11, scope: !752)
!752 = distinct !DILexicalBlock(scope: !753, file: !1, line: 156, column: 11)
!753 = distinct !DILexicalBlock(scope: !746, file: !1, line: 155, column: 71)
!754 = !DILocation(line: 156, column: 18, scope: !752)
!755 = !DILocation(line: 156, column: 27, scope: !752)
!756 = !DILocation(line: 157, column: 41, scope: !757)
!757 = distinct !DILexicalBlock(scope: !752, file: !1, line: 156, column: 36)
!758 = !DILocation(line: 157, column: 34, scope: !757)
!759 = !DILocation(line: 157, column: 2, scope: !757)
!760 = !DILocation(line: 157, column: 9, scope: !757)
!761 = !DILocation(line: 157, column: 19, scope: !757)
!762 = !DILocation(line: 157, column: 32, scope: !757)
!763 = !DILocation(line: 158, column: 39, scope: !757)
!764 = !DILocation(line: 158, column: 46, scope: !757)
!765 = !DILocation(line: 158, column: 32, scope: !757)
!766 = !DILocation(line: 158, column: 2, scope: !757)
!767 = !DILocation(line: 158, column: 9, scope: !757)
!768 = !DILocation(line: 158, column: 19, scope: !757)
!769 = !DILocation(line: 158, column: 30, scope: !757)
!770 = !DILocation(line: 159, column: 4, scope: !757)
!771 = !DILocation(line: 159, column: 11, scope: !757)
!772 = !DILocation(line: 159, column: 21, scope: !757)
!773 = !DILocation(line: 159, column: 55, scope: !757)
!774 = !DILocation(line: 159, column: 2, scope: !757)
!775 = !DILocation(line: 160, column: 7, scope: !757)
!776 = !DILocation(line: 164, column: 15, scope: !777)
!777 = distinct !DILexicalBlock(scope: !753, file: !1, line: 164, column: 11)
!778 = !DILocation(line: 164, column: 22, scope: !777)
!779 = !DILocation(line: 164, column: 28, scope: !777)
!780 = !DILocation(line: 164, column: 44, scope: !777)
!781 = !DILocation(line: 164, column: 13, scope: !777)
!782 = !DILocation(line: 164, column: 11, scope: !777)
!783 = !DILocation(line: 165, column: 2, scope: !777)
!784 = !DILocation(line: 166, column: 5, scope: !753)
!785 = !DILocation(line: 155, column: 67, scope: !746)
!786 = !DILocation(line: 155, column: 5, scope: !746)
!787 = distinct !{!787, !750, !788, !590}
!788 = !DILocation(line: 166, column: 5, scope: !743)
!789 = !DILocation(line: 167, column: 7, scope: !737)
!790 = !DILocation(line: 167, column: 14, scope: !737)
!791 = !DILocation(line: 167, column: 22, scope: !737)
!792 = !DILocation(line: 167, column: 36, scope: !737)
!793 = !DILocation(line: 167, column: 5, scope: !737)
!794 = distinct !{!794, !731, !795, !590}
!795 = !DILocation(line: 168, column: 3, scope: !699)
!796 = !DILocation(line: 170, column: 5, scope: !699)
!797 = !DILocation(line: 170, column: 12, scope: !699)
!798 = !DILocation(line: 170, column: 20, scope: !699)
!799 = !DILocation(line: 170, column: 41, scope: !699)
!800 = !DILocation(line: 170, column: 3, scope: !699)
!801 = !DILocation(line: 171, column: 5, scope: !699)
!802 = !DILocation(line: 171, column: 12, scope: !699)
!803 = !DILocation(line: 171, column: 18, scope: !699)
!804 = !DILocation(line: 171, column: 37, scope: !699)
!805 = !DILocation(line: 171, column: 3, scope: !699)
!806 = !DILocation(line: 173, column: 29, scope: !699)
!807 = !DILocation(line: 173, column: 3, scope: !699)
!808 = !DILocation(line: 174, column: 1, scope: !699)
!809 = distinct !DISubprogram(name: "jpeg_write_marker", scope: !1, file: !1, line: 185, type: !481, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !531)
!810 = !DILocalVariable(name: "cinfo", arg: 1, scope: !809, file: !1, line: 185, type: !289)
!811 = !DILocation(line: 185, column: 35, scope: !809)
!812 = !DILocalVariable(name: "marker", arg: 2, scope: !809, file: !1, line: 185, type: !166)
!813 = !DILocation(line: 185, column: 46, scope: !809)
!814 = !DILocalVariable(name: "dataptr", arg: 3, scope: !809, file: !1, line: 186, type: !483)
!815 = !DILocation(line: 186, column: 20, scope: !809)
!816 = !DILocalVariable(name: "datalen", arg: 4, scope: !809, file: !1, line: 186, type: !5)
!817 = !DILocation(line: 186, column: 42, scope: !809)
!818 = !DILocation(line: 188, column: 7, scope: !819)
!819 = distinct !DILexicalBlock(scope: !809, file: !1, line: 188, column: 7)
!820 = !DILocation(line: 188, column: 14, scope: !819)
!821 = !DILocation(line: 188, column: 28, scope: !819)
!822 = !DILocation(line: 188, column: 33, scope: !819)
!823 = !DILocation(line: 189, column: 8, scope: !819)
!824 = !DILocation(line: 189, column: 15, scope: !819)
!825 = !DILocation(line: 189, column: 28, scope: !819)
!826 = !DILocation(line: 189, column: 47, scope: !819)
!827 = !DILocation(line: 190, column: 8, scope: !819)
!828 = !DILocation(line: 190, column: 15, scope: !819)
!829 = !DILocation(line: 190, column: 28, scope: !819)
!830 = !DILocation(line: 190, column: 45, scope: !819)
!831 = !DILocation(line: 191, column: 8, scope: !819)
!832 = !DILocation(line: 191, column: 15, scope: !819)
!833 = !DILocation(line: 191, column: 28, scope: !819)
!834 = !DILocation(line: 192, column: 5, scope: !819)
!835 = !DILocation(line: 194, column: 5, scope: !809)
!836 = !DILocation(line: 194, column: 12, scope: !809)
!837 = !DILocation(line: 194, column: 20, scope: !809)
!838 = !DILocation(line: 194, column: 39, scope: !809)
!839 = !DILocation(line: 194, column: 46, scope: !809)
!840 = !DILocation(line: 194, column: 54, scope: !809)
!841 = !DILocation(line: 194, column: 63, scope: !809)
!842 = !DILocation(line: 194, column: 3, scope: !809)
!843 = !DILocation(line: 195, column: 1, scope: !809)
!844 = distinct !DISubprogram(name: "jpeg_write_tables", scope: !1, file: !1, line: 220, type: !308, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !531)
!845 = !DILocalVariable(name: "cinfo", arg: 1, scope: !844, file: !1, line: 220, type: !289)
!846 = !DILocation(line: 220, column: 35, scope: !844)
!847 = !DILocation(line: 222, column: 7, scope: !848)
!848 = distinct !DILexicalBlock(scope: !844, file: !1, line: 222, column: 7)
!849 = !DILocation(line: 222, column: 14, scope: !848)
!850 = !DILocation(line: 222, column: 27, scope: !848)
!851 = !DILocation(line: 223, column: 5, scope: !848)
!852 = !DILocation(line: 226, column: 5, scope: !844)
!853 = !DILocation(line: 226, column: 12, scope: !844)
!854 = !DILocation(line: 226, column: 17, scope: !844)
!855 = !DILocation(line: 226, column: 50, scope: !844)
!856 = !DILocation(line: 226, column: 3, scope: !844)
!857 = !DILocation(line: 227, column: 5, scope: !844)
!858 = !DILocation(line: 227, column: 12, scope: !844)
!859 = !DILocation(line: 227, column: 18, scope: !844)
!860 = !DILocation(line: 227, column: 37, scope: !844)
!861 = !DILocation(line: 227, column: 3, scope: !844)
!862 = !DILocation(line: 229, column: 23, scope: !844)
!863 = !DILocation(line: 229, column: 3, scope: !844)
!864 = !DILocation(line: 231, column: 5, scope: !844)
!865 = !DILocation(line: 231, column: 12, scope: !844)
!866 = !DILocation(line: 231, column: 20, scope: !844)
!867 = !DILocation(line: 231, column: 40, scope: !844)
!868 = !DILocation(line: 231, column: 3, scope: !844)
!869 = !DILocation(line: 233, column: 5, scope: !844)
!870 = !DILocation(line: 233, column: 12, scope: !844)
!871 = !DILocation(line: 233, column: 18, scope: !844)
!872 = !DILocation(line: 233, column: 37, scope: !844)
!873 = !DILocation(line: 233, column: 3, scope: !844)
!874 = !DILocation(line: 235, column: 29, scope: !844)
!875 = !DILocation(line: 235, column: 3, scope: !844)
!876 = !DILocation(line: 236, column: 1, scope: !844)
