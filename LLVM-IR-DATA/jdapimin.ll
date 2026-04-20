; ModuleID = 'cBench/consumer_jpeg_c/src/jdapimin.c'
source_filename = "cBench/consumer_jpeg_c/src/jdapimin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_marker_reader = type { ptr, ptr, ptr, ptr, [16 x ptr], i32, i32, i32, i32 }
%struct.jpeg_input_controller = type { ptr, ptr, ptr, ptr, i32, i32 }
%struct.jpeg_source_mgr = type { ptr, i64, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.jpeg_decomp_master = type { ptr, ptr, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_CreateDecompress(ptr noundef %0, i32 noundef %1, i64 noundef %2) #0 !dbg !289 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !585, !DIExpression(), !586)
  store i32 %1, ptr %5, align 4
    #dbg_declare(ptr %5, !587, !DIExpression(), !588)
  store i64 %2, ptr %6, align 8
    #dbg_declare(ptr %6, !589, !DIExpression(), !590)
    #dbg_declare(ptr %7, !591, !DIExpression(), !592)
  %9 = load ptr, ptr %4, align 8, !dbg !593
  %10 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %9, i32 0, i32 1, !dbg !594
  store ptr null, ptr %10, align 8, !dbg !595
  %11 = load i32, ptr %5, align 4, !dbg !596
  %12 = icmp ne i32 %11, 61, !dbg !598
  br i1 %12, label %13, label %35, !dbg !598

13:                                               ; preds = %3
  %14 = load ptr, ptr %4, align 8, !dbg !599
  %15 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %14, i32 0, i32 0, !dbg !599
  %16 = load ptr, ptr %15, align 8, !dbg !599
  %17 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %16, i32 0, i32 5, !dbg !599
  store i32 10, ptr %17, align 8, !dbg !599
  %18 = load ptr, ptr %4, align 8, !dbg !599
  %19 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %18, i32 0, i32 0, !dbg !599
  %20 = load ptr, ptr %19, align 8, !dbg !599
  %21 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %20, i32 0, i32 6, !dbg !599
  %22 = getelementptr inbounds [8 x i32], ptr %21, i64 0, i64 0, !dbg !599
  store i32 61, ptr %22, align 4, !dbg !599
  %23 = load i32, ptr %5, align 4, !dbg !599
  %24 = load ptr, ptr %4, align 8, !dbg !599
  %25 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %24, i32 0, i32 0, !dbg !599
  %26 = load ptr, ptr %25, align 8, !dbg !599
  %27 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %26, i32 0, i32 6, !dbg !599
  %28 = getelementptr inbounds [8 x i32], ptr %27, i64 0, i64 1, !dbg !599
  store i32 %23, ptr %28, align 4, !dbg !599
  %29 = load ptr, ptr %4, align 8, !dbg !599
  %30 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %29, i32 0, i32 0, !dbg !599
  %31 = load ptr, ptr %30, align 8, !dbg !599
  %32 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %31, i32 0, i32 0, !dbg !599
  %33 = load ptr, ptr %32, align 8, !dbg !599
  %34 = load ptr, ptr %4, align 8, !dbg !599
  call void %33(ptr noundef %34), !dbg !599
  br label %35, !dbg !599

35:                                               ; preds = %13, %3
  %36 = load i64, ptr %6, align 8, !dbg !600
  %37 = icmp ne i64 %36, 616, !dbg !602
  br i1 %37, label %38, label %61, !dbg !602

38:                                               ; preds = %35
  %39 = load ptr, ptr %4, align 8, !dbg !603
  %40 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %39, i32 0, i32 0, !dbg !603
  %41 = load ptr, ptr %40, align 8, !dbg !603
  %42 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %41, i32 0, i32 5, !dbg !603
  store i32 19, ptr %42, align 8, !dbg !603
  %43 = load ptr, ptr %4, align 8, !dbg !603
  %44 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %43, i32 0, i32 0, !dbg !603
  %45 = load ptr, ptr %44, align 8, !dbg !603
  %46 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %45, i32 0, i32 6, !dbg !603
  %47 = getelementptr inbounds [8 x i32], ptr %46, i64 0, i64 0, !dbg !603
  store i32 616, ptr %47, align 4, !dbg !603
  %48 = load i64, ptr %6, align 8, !dbg !603
  %49 = trunc i64 %48 to i32, !dbg !603
  %50 = load ptr, ptr %4, align 8, !dbg !603
  %51 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %50, i32 0, i32 0, !dbg !603
  %52 = load ptr, ptr %51, align 8, !dbg !603
  %53 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %52, i32 0, i32 6, !dbg !603
  %54 = getelementptr inbounds [8 x i32], ptr %53, i64 0, i64 1, !dbg !603
  store i32 %49, ptr %54, align 4, !dbg !603
  %55 = load ptr, ptr %4, align 8, !dbg !603
  %56 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %55, i32 0, i32 0, !dbg !603
  %57 = load ptr, ptr %56, align 8, !dbg !603
  %58 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %57, i32 0, i32 0, !dbg !603
  %59 = load ptr, ptr %58, align 8, !dbg !603
  %60 = load ptr, ptr %4, align 8, !dbg !603
  call void %59(ptr noundef %60), !dbg !603
  br label %61, !dbg !603

61:                                               ; preds = %38, %35
    #dbg_declare(ptr %8, !604, !DIExpression(), !606)
  %62 = load ptr, ptr %4, align 8, !dbg !607
  %63 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %62, i32 0, i32 0, !dbg !608
  %64 = load ptr, ptr %63, align 8, !dbg !608
  store ptr %64, ptr %8, align 8, !dbg !606
  %65 = load ptr, ptr %4, align 8, !dbg !609
  call void @llvm.memset.p0.i64(ptr align 1 %65, i8 0, i64 616, i1 false), !dbg !609
  %66 = load ptr, ptr %8, align 8, !dbg !610
  %67 = load ptr, ptr %4, align 8, !dbg !611
  %68 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %67, i32 0, i32 0, !dbg !612
  store ptr %66, ptr %68, align 8, !dbg !613
  %69 = load ptr, ptr %4, align 8, !dbg !614
  %70 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %69, i32 0, i32 3, !dbg !615
  store i32 1, ptr %70, align 8, !dbg !616
  %71 = load ptr, ptr %4, align 8, !dbg !617
  call void @jinit_memory_mgr(ptr noundef %71), !dbg !618
  %72 = load ptr, ptr %4, align 8, !dbg !619
  %73 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %72, i32 0, i32 2, !dbg !620
  store ptr null, ptr %73, align 8, !dbg !621
  %74 = load ptr, ptr %4, align 8, !dbg !622
  %75 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %74, i32 0, i32 5, !dbg !623
  store ptr null, ptr %75, align 8, !dbg !624
  store i32 0, ptr %7, align 4, !dbg !625
  br label %76, !dbg !627

76:                                               ; preds = %85, %61
  %77 = load i32, ptr %7, align 4, !dbg !628
  %78 = icmp slt i32 %77, 4, !dbg !630
  br i1 %78, label %79, label %88, !dbg !631

79:                                               ; preds = %76
  %80 = load ptr, ptr %4, align 8, !dbg !632
  %81 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %80, i32 0, i32 39, !dbg !633
  %82 = load i32, ptr %7, align 4, !dbg !634
  %83 = sext i32 %82 to i64, !dbg !632
  %84 = getelementptr inbounds [4 x ptr], ptr %81, i64 0, i64 %83, !dbg !632
  store ptr null, ptr %84, align 8, !dbg !635
  br label %85, !dbg !632

85:                                               ; preds = %79
  %86 = load i32, ptr %7, align 4, !dbg !636
  %87 = add nsw i32 %86, 1, !dbg !636
  store i32 %87, ptr %7, align 4, !dbg !636
  br label %76, !dbg !637, !llvm.loop !638

88:                                               ; preds = %76
  store i32 0, ptr %7, align 4, !dbg !641
  br label %89, !dbg !643

89:                                               ; preds = %103, %88
  %90 = load i32, ptr %7, align 4, !dbg !644
  %91 = icmp slt i32 %90, 4, !dbg !646
  br i1 %91, label %92, label %106, !dbg !647

92:                                               ; preds = %89
  %93 = load ptr, ptr %4, align 8, !dbg !648
  %94 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %93, i32 0, i32 40, !dbg !650
  %95 = load i32, ptr %7, align 4, !dbg !651
  %96 = sext i32 %95 to i64, !dbg !648
  %97 = getelementptr inbounds [4 x ptr], ptr %94, i64 0, i64 %96, !dbg !648
  store ptr null, ptr %97, align 8, !dbg !652
  %98 = load ptr, ptr %4, align 8, !dbg !653
  %99 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %98, i32 0, i32 41, !dbg !654
  %100 = load i32, ptr %7, align 4, !dbg !655
  %101 = sext i32 %100 to i64, !dbg !653
  %102 = getelementptr inbounds [4 x ptr], ptr %99, i64 0, i64 %101, !dbg !653
  store ptr null, ptr %102, align 8, !dbg !656
  br label %103, !dbg !657

103:                                              ; preds = %92
  %104 = load i32, ptr %7, align 4, !dbg !658
  %105 = add nsw i32 %104, 1, !dbg !658
  store i32 %105, ptr %7, align 4, !dbg !658
  br label %89, !dbg !659, !llvm.loop !660

106:                                              ; preds = %89
  %107 = load ptr, ptr %4, align 8, !dbg !662
  call void @jinit_marker_reader(ptr noundef %107), !dbg !663
  %108 = load ptr, ptr %4, align 8, !dbg !664
  call void @jinit_input_controller(ptr noundef %108), !dbg !665
  %109 = load ptr, ptr %4, align 8, !dbg !666
  %110 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %109, i32 0, i32 4, !dbg !667
  store i32 200, ptr %110, align 4, !dbg !668
  ret void, !dbg !669
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

declare void @jinit_memory_mgr(ptr noundef) #2

declare void @jinit_marker_reader(ptr noundef) #2

declare void @jinit_input_controller(ptr noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_destroy_decompress(ptr noundef %0) #0 !dbg !670 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !671, !DIExpression(), !672)
  %3 = load ptr, ptr %2, align 8, !dbg !673
  call void @jpeg_destroy(ptr noundef %3), !dbg !674
  ret void, !dbg !675
}

declare void @jpeg_destroy(ptr noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_abort_decompress(ptr noundef %0) #0 !dbg !676 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !677, !DIExpression(), !678)
  %3 = load ptr, ptr %2, align 8, !dbg !679
  call void @jpeg_abort(ptr noundef %3), !dbg !680
  ret void, !dbg !681
}

declare void @jpeg_abort(ptr noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_set_marker_processor(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 !dbg !682 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !685, !DIExpression(), !686)
  store i32 %1, ptr %5, align 4
    #dbg_declare(ptr %5, !687, !DIExpression(), !688)
  store ptr %2, ptr %6, align 8
    #dbg_declare(ptr %6, !689, !DIExpression(), !690)
  %7 = load i32, ptr %5, align 4, !dbg !691
  %8 = icmp eq i32 %7, 254, !dbg !693
  br i1 %8, label %9, label %15, !dbg !693

9:                                                ; preds = %3
  %10 = load ptr, ptr %6, align 8, !dbg !694
  %11 = load ptr, ptr %4, align 8, !dbg !695
  %12 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %11, i32 0, i32 78, !dbg !696
  %13 = load ptr, ptr %12, align 8, !dbg !696
  %14 = getelementptr inbounds nuw %struct.jpeg_marker_reader, ptr %13, i32 0, i32 3, !dbg !697
  store ptr %10, ptr %14, align 8, !dbg !698
  br label %49, !dbg !695

15:                                               ; preds = %3
  %16 = load i32, ptr %5, align 4, !dbg !699
  %17 = icmp sge i32 %16, 224, !dbg !701
  br i1 %17, label %18, label %31, !dbg !702

18:                                               ; preds = %15
  %19 = load i32, ptr %5, align 4, !dbg !703
  %20 = icmp sle i32 %19, 239, !dbg !704
  br i1 %20, label %21, label %31, !dbg !702

21:                                               ; preds = %18
  %22 = load ptr, ptr %6, align 8, !dbg !705
  %23 = load ptr, ptr %4, align 8, !dbg !706
  %24 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %23, i32 0, i32 78, !dbg !707
  %25 = load ptr, ptr %24, align 8, !dbg !707
  %26 = getelementptr inbounds nuw %struct.jpeg_marker_reader, ptr %25, i32 0, i32 4, !dbg !708
  %27 = load i32, ptr %5, align 4, !dbg !709
  %28 = sub nsw i32 %27, 224, !dbg !710
  %29 = sext i32 %28 to i64, !dbg !706
  %30 = getelementptr inbounds [16 x ptr], ptr %26, i64 0, i64 %29, !dbg !706
  store ptr %22, ptr %30, align 8, !dbg !711
  br label %48, !dbg !706

31:                                               ; preds = %18, %15
  %32 = load ptr, ptr %4, align 8, !dbg !712
  %33 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %32, i32 0, i32 0, !dbg !712
  %34 = load ptr, ptr %33, align 8, !dbg !712
  %35 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %34, i32 0, i32 5, !dbg !712
  store i32 67, ptr %35, align 8, !dbg !712
  %36 = load i32, ptr %5, align 4, !dbg !712
  %37 = load ptr, ptr %4, align 8, !dbg !712
  %38 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %37, i32 0, i32 0, !dbg !712
  %39 = load ptr, ptr %38, align 8, !dbg !712
  %40 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %39, i32 0, i32 6, !dbg !712
  %41 = getelementptr inbounds [8 x i32], ptr %40, i64 0, i64 0, !dbg !712
  store i32 %36, ptr %41, align 4, !dbg !712
  %42 = load ptr, ptr %4, align 8, !dbg !712
  %43 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %42, i32 0, i32 0, !dbg !712
  %44 = load ptr, ptr %43, align 8, !dbg !712
  %45 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %44, i32 0, i32 0, !dbg !712
  %46 = load ptr, ptr %45, align 8, !dbg !712
  %47 = load ptr, ptr %4, align 8, !dbg !712
  call void %46(ptr noundef %47), !dbg !712
  br label %48

48:                                               ; preds = %31, %21
  br label %49

49:                                               ; preds = %48, %9
  ret void, !dbg !713
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @jpeg_read_header(ptr noundef %0, i32 noundef %1) #0 !dbg !714 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !717, !DIExpression(), !718)
  store i32 %1, ptr %4, align 4
    #dbg_declare(ptr %4, !719, !DIExpression(), !720)
    #dbg_declare(ptr %5, !721, !DIExpression(), !722)
  %6 = load ptr, ptr %3, align 8, !dbg !723
  %7 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %6, i32 0, i32 4, !dbg !725
  %8 = load i32, ptr %7, align 4, !dbg !725
  %9 = icmp ne i32 %8, 200, !dbg !726
  br i1 %9, label %10, label %34, !dbg !727

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 8, !dbg !728
  %12 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %11, i32 0, i32 4, !dbg !729
  %13 = load i32, ptr %12, align 4, !dbg !729
  %14 = icmp ne i32 %13, 201, !dbg !730
  br i1 %14, label %15, label %34, !dbg !727

15:                                               ; preds = %10
  %16 = load ptr, ptr %3, align 8, !dbg !731
  %17 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %16, i32 0, i32 0, !dbg !731
  %18 = load ptr, ptr %17, align 8, !dbg !731
  %19 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %18, i32 0, i32 5, !dbg !731
  store i32 18, ptr %19, align 8, !dbg !731
  %20 = load ptr, ptr %3, align 8, !dbg !731
  %21 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %20, i32 0, i32 4, !dbg !731
  %22 = load i32, ptr %21, align 4, !dbg !731
  %23 = load ptr, ptr %3, align 8, !dbg !731
  %24 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %23, i32 0, i32 0, !dbg !731
  %25 = load ptr, ptr %24, align 8, !dbg !731
  %26 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %25, i32 0, i32 6, !dbg !731
  %27 = getelementptr inbounds [8 x i32], ptr %26, i64 0, i64 0, !dbg !731
  store i32 %22, ptr %27, align 4, !dbg !731
  %28 = load ptr, ptr %3, align 8, !dbg !731
  %29 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %28, i32 0, i32 0, !dbg !731
  %30 = load ptr, ptr %29, align 8, !dbg !731
  %31 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %30, i32 0, i32 0, !dbg !731
  %32 = load ptr, ptr %31, align 8, !dbg !731
  %33 = load ptr, ptr %3, align 8, !dbg !731
  call void %32(ptr noundef %33), !dbg !731
  br label %34, !dbg !731

34:                                               ; preds = %15, %10, %2
  %35 = load ptr, ptr %3, align 8, !dbg !732
  %36 = call i32 @jpeg_consume_input(ptr noundef %35), !dbg !733
  store i32 %36, ptr %5, align 4, !dbg !734
  %37 = load i32, ptr %5, align 4, !dbg !735
  switch i32 %37, label %56 [
    i32 1, label %38
    i32 2, label %39
    i32 0, label %55
  ], !dbg !736

38:                                               ; preds = %34
  store i32 1, ptr %5, align 4, !dbg !737
  br label %56, !dbg !739

39:                                               ; preds = %34
  %40 = load i32, ptr %4, align 4, !dbg !740
  %41 = icmp ne i32 %40, 0, !dbg !740
  br i1 %41, label %42, label %53, !dbg !740

42:                                               ; preds = %39
  %43 = load ptr, ptr %3, align 8, !dbg !742
  %44 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %43, i32 0, i32 0, !dbg !742
  %45 = load ptr, ptr %44, align 8, !dbg !742
  %46 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %45, i32 0, i32 5, !dbg !742
  store i32 50, ptr %46, align 8, !dbg !742
  %47 = load ptr, ptr %3, align 8, !dbg !742
  %48 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %47, i32 0, i32 0, !dbg !742
  %49 = load ptr, ptr %48, align 8, !dbg !742
  %50 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %49, i32 0, i32 0, !dbg !742
  %51 = load ptr, ptr %50, align 8, !dbg !742
  %52 = load ptr, ptr %3, align 8, !dbg !742
  call void %51(ptr noundef %52), !dbg !742
  br label %53, !dbg !742

53:                                               ; preds = %42, %39
  %54 = load ptr, ptr %3, align 8, !dbg !743
  call void @jpeg_abort(ptr noundef %54), !dbg !744
  store i32 2, ptr %5, align 4, !dbg !745
  br label %56, !dbg !746

55:                                               ; preds = %34
  br label %56, !dbg !747

56:                                               ; preds = %34, %55, %53, %38
  %57 = load i32, ptr %5, align 4, !dbg !748
  ret i32 %57, !dbg !749
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @jpeg_consume_input(ptr noundef %0) #0 !dbg !750 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !751, !DIExpression(), !752)
    #dbg_declare(ptr %3, !753, !DIExpression(), !754)
  store i32 0, ptr %3, align 4, !dbg !754
  %4 = load ptr, ptr %2, align 8, !dbg !755
  %5 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 4, !dbg !756
  %6 = load i32, ptr %5, align 4, !dbg !756
  switch i32 %6, label %46 [
    i32 200, label %7
    i32 201, label %22
    i32 202, label %37
    i32 203, label %38
    i32 204, label %38
    i32 205, label %38
    i32 206, label %38
    i32 207, label %38
    i32 208, label %38
    i32 210, label %38
  ], !dbg !757

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !dbg !758
  %9 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %8, i32 0, i32 77, !dbg !760
  %10 = load ptr, ptr %9, align 8, !dbg !760
  %11 = getelementptr inbounds nuw %struct.jpeg_input_controller, ptr %10, i32 0, i32 1, !dbg !761
  %12 = load ptr, ptr %11, align 8, !dbg !761
  %13 = load ptr, ptr %2, align 8, !dbg !762
  call void %12(ptr noundef %13), !dbg !763
  %14 = load ptr, ptr %2, align 8, !dbg !764
  %15 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %14, i32 0, i32 5, !dbg !765
  %16 = load ptr, ptr %15, align 8, !dbg !765
  %17 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %16, i32 0, i32 2, !dbg !766
  %18 = load ptr, ptr %17, align 8, !dbg !766
  %19 = load ptr, ptr %2, align 8, !dbg !767
  call void %18(ptr noundef %19), !dbg !768
  %20 = load ptr, ptr %2, align 8, !dbg !769
  %21 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %20, i32 0, i32 4, !dbg !770
  store i32 201, ptr %21, align 4, !dbg !771
  br label %22, !dbg !769

22:                                               ; preds = %1, %7
  %23 = load ptr, ptr %2, align 8, !dbg !772
  %24 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %23, i32 0, i32 77, !dbg !773
  %25 = load ptr, ptr %24, align 8, !dbg !773
  %26 = getelementptr inbounds nuw %struct.jpeg_input_controller, ptr %25, i32 0, i32 0, !dbg !774
  %27 = load ptr, ptr %26, align 8, !dbg !774
  %28 = load ptr, ptr %2, align 8, !dbg !775
  %29 = call i32 %27(ptr noundef %28), !dbg !776
  store i32 %29, ptr %3, align 4, !dbg !777
  %30 = load i32, ptr %3, align 4, !dbg !778
  %31 = icmp eq i32 %30, 1, !dbg !780
  br i1 %31, label %32, label %36, !dbg !780

32:                                               ; preds = %22
  %33 = load ptr, ptr %2, align 8, !dbg !781
  call void @default_decompress_parms(ptr noundef %33), !dbg !783
  %34 = load ptr, ptr %2, align 8, !dbg !784
  %35 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %34, i32 0, i32 4, !dbg !785
  store i32 202, ptr %35, align 4, !dbg !786
  br label %36, !dbg !787

36:                                               ; preds = %32, %22
  br label %65, !dbg !788

37:                                               ; preds = %1
  store i32 1, ptr %3, align 4, !dbg !789
  br label %65, !dbg !790

38:                                               ; preds = %1, %1, %1, %1, %1, %1, %1
  %39 = load ptr, ptr %2, align 8, !dbg !791
  %40 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %39, i32 0, i32 77, !dbg !792
  %41 = load ptr, ptr %40, align 8, !dbg !792
  %42 = getelementptr inbounds nuw %struct.jpeg_input_controller, ptr %41, i32 0, i32 0, !dbg !793
  %43 = load ptr, ptr %42, align 8, !dbg !793
  %44 = load ptr, ptr %2, align 8, !dbg !794
  %45 = call i32 %43(ptr noundef %44), !dbg !795
  store i32 %45, ptr %3, align 4, !dbg !796
  br label %65, !dbg !797

46:                                               ; preds = %1
  %47 = load ptr, ptr %2, align 8, !dbg !798
  %48 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %47, i32 0, i32 0, !dbg !798
  %49 = load ptr, ptr %48, align 8, !dbg !798
  %50 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %49, i32 0, i32 5, !dbg !798
  store i32 18, ptr %50, align 8, !dbg !798
  %51 = load ptr, ptr %2, align 8, !dbg !798
  %52 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %51, i32 0, i32 4, !dbg !798
  %53 = load i32, ptr %52, align 4, !dbg !798
  %54 = load ptr, ptr %2, align 8, !dbg !798
  %55 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %54, i32 0, i32 0, !dbg !798
  %56 = load ptr, ptr %55, align 8, !dbg !798
  %57 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %56, i32 0, i32 6, !dbg !798
  %58 = getelementptr inbounds [8 x i32], ptr %57, i64 0, i64 0, !dbg !798
  store i32 %53, ptr %58, align 4, !dbg !798
  %59 = load ptr, ptr %2, align 8, !dbg !798
  %60 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %59, i32 0, i32 0, !dbg !798
  %61 = load ptr, ptr %60, align 8, !dbg !798
  %62 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %61, i32 0, i32 0, !dbg !798
  %63 = load ptr, ptr %62, align 8, !dbg !798
  %64 = load ptr, ptr %2, align 8, !dbg !798
  call void %63(ptr noundef %64), !dbg !798
  br label %65, !dbg !799

65:                                               ; preds = %46, %38, %37, %36
  %66 = load i32, ptr %3, align 4, !dbg !800
  ret i32 %66, !dbg !801
}

; Function Attrs: noinline nounwind uwtable
define internal void @default_decompress_parms(ptr noundef %0) #0 !dbg !802 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !803, !DIExpression(), !804)
  %7 = load ptr, ptr %2, align 8, !dbg !805
  %8 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %7, i32 0, i32 8, !dbg !806
  %9 = load i32, ptr %8, align 8, !dbg !806
  switch i32 %9, label %184 [
    i32 1, label %10
    i32 3, label %15
    i32 4, label %139
  ], !dbg !807

10:                                               ; preds = %1
  %11 = load ptr, ptr %2, align 8, !dbg !808
  %12 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %11, i32 0, i32 9, !dbg !810
  store i32 1, ptr %12, align 4, !dbg !811
  %13 = load ptr, ptr %2, align 8, !dbg !812
  %14 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %13, i32 0, i32 10, !dbg !813
  store i32 1, ptr %14, align 8, !dbg !814
  br label %189, !dbg !815

15:                                               ; preds = %1
  %16 = load ptr, ptr %2, align 8, !dbg !816
  %17 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %16, i32 0, i32 50, !dbg !818
  %18 = load i32, ptr %17, align 4, !dbg !818
  %19 = icmp ne i32 %18, 0, !dbg !816
  br i1 %19, label %20, label %23, !dbg !816

20:                                               ; preds = %15
  %21 = load ptr, ptr %2, align 8, !dbg !819
  %22 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %21, i32 0, i32 9, !dbg !821
  store i32 3, ptr %22, align 4, !dbg !822
  br label %136, !dbg !823

23:                                               ; preds = %15
  %24 = load ptr, ptr %2, align 8, !dbg !824
  %25 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %24, i32 0, i32 54, !dbg !826
  %26 = load i32, ptr %25, align 8, !dbg !826
  %27 = icmp ne i32 %26, 0, !dbg !824
  br i1 %27, label %28, label %62, !dbg !824

28:                                               ; preds = %23
  %29 = load ptr, ptr %2, align 8, !dbg !827
  %30 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %29, i32 0, i32 55, !dbg !829
  %31 = load i8, ptr %30, align 4, !dbg !829
  %32 = zext i8 %31 to i32, !dbg !827
  switch i32 %32, label %39 [
    i32 0, label %33
    i32 1, label %36
  ], !dbg !830

33:                                               ; preds = %28
  %34 = load ptr, ptr %2, align 8, !dbg !831
  %35 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %34, i32 0, i32 9, !dbg !833
  store i32 2, ptr %35, align 4, !dbg !834
  br label %61, !dbg !835

36:                                               ; preds = %28
  %37 = load ptr, ptr %2, align 8, !dbg !836
  %38 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %37, i32 0, i32 9, !dbg !837
  store i32 3, ptr %38, align 4, !dbg !838
  br label %61, !dbg !839

39:                                               ; preds = %28
  %40 = load ptr, ptr %2, align 8, !dbg !840
  %41 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %40, i32 0, i32 0, !dbg !840
  %42 = load ptr, ptr %41, align 8, !dbg !840
  %43 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %42, i32 0, i32 5, !dbg !840
  store i32 110, ptr %43, align 8, !dbg !840
  %44 = load ptr, ptr %2, align 8, !dbg !840
  %45 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %44, i32 0, i32 55, !dbg !840
  %46 = load i8, ptr %45, align 4, !dbg !840
  %47 = zext i8 %46 to i32, !dbg !840
  %48 = load ptr, ptr %2, align 8, !dbg !840
  %49 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %48, i32 0, i32 0, !dbg !840
  %50 = load ptr, ptr %49, align 8, !dbg !840
  %51 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %50, i32 0, i32 6, !dbg !840
  %52 = getelementptr inbounds [8 x i32], ptr %51, i64 0, i64 0, !dbg !840
  store i32 %47, ptr %52, align 4, !dbg !840
  %53 = load ptr, ptr %2, align 8, !dbg !840
  %54 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %53, i32 0, i32 0, !dbg !840
  %55 = load ptr, ptr %54, align 8, !dbg !840
  %56 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %55, i32 0, i32 1, !dbg !840
  %57 = load ptr, ptr %56, align 8, !dbg !840
  %58 = load ptr, ptr %2, align 8, !dbg !840
  call void %57(ptr noundef %58, i32 noundef -1), !dbg !840
  %59 = load ptr, ptr %2, align 8, !dbg !841
  %60 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %59, i32 0, i32 9, !dbg !842
  store i32 3, ptr %60, align 4, !dbg !843
  br label %61, !dbg !844

61:                                               ; preds = %39, %36, %33
  br label %135, !dbg !845

62:                                               ; preds = %23
    #dbg_declare(ptr %3, !846, !DIExpression(), !848)
  %63 = load ptr, ptr %2, align 8, !dbg !849
  %64 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %63, i32 0, i32 43, !dbg !850
  %65 = load ptr, ptr %64, align 8, !dbg !850
  %66 = getelementptr inbounds %struct.jpeg_component_info, ptr %65, i64 0, !dbg !849
  %67 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %66, i32 0, i32 0, !dbg !851
  %68 = load i32, ptr %67, align 8, !dbg !851
  store i32 %68, ptr %3, align 4, !dbg !848
    #dbg_declare(ptr %4, !852, !DIExpression(), !853)
  %69 = load ptr, ptr %2, align 8, !dbg !854
  %70 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %69, i32 0, i32 43, !dbg !855
  %71 = load ptr, ptr %70, align 8, !dbg !855
  %72 = getelementptr inbounds %struct.jpeg_component_info, ptr %71, i64 1, !dbg !854
  %73 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %72, i32 0, i32 0, !dbg !856
  %74 = load i32, ptr %73, align 8, !dbg !856
  store i32 %74, ptr %4, align 4, !dbg !853
    #dbg_declare(ptr %5, !857, !DIExpression(), !858)
  %75 = load ptr, ptr %2, align 8, !dbg !859
  %76 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %75, i32 0, i32 43, !dbg !860
  %77 = load ptr, ptr %76, align 8, !dbg !860
  %78 = getelementptr inbounds %struct.jpeg_component_info, ptr %77, i64 2, !dbg !859
  %79 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %78, i32 0, i32 0, !dbg !861
  %80 = load i32, ptr %79, align 8, !dbg !861
  store i32 %80, ptr %5, align 4, !dbg !858
  %81 = load i32, ptr %3, align 4, !dbg !862
  %82 = icmp eq i32 %81, 1, !dbg !864
  br i1 %82, label %83, label %92, !dbg !865

83:                                               ; preds = %62
  %84 = load i32, ptr %4, align 4, !dbg !866
  %85 = icmp eq i32 %84, 2, !dbg !867
  br i1 %85, label %86, label %92, !dbg !868

86:                                               ; preds = %83
  %87 = load i32, ptr %5, align 4, !dbg !869
  %88 = icmp eq i32 %87, 3, !dbg !870
  br i1 %88, label %89, label %92, !dbg !868

89:                                               ; preds = %86
  %90 = load ptr, ptr %2, align 8, !dbg !871
  %91 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %90, i32 0, i32 9, !dbg !872
  store i32 3, ptr %91, align 4, !dbg !873
  br label %134, !dbg !871

92:                                               ; preds = %86, %83, %62
  %93 = load i32, ptr %3, align 4, !dbg !874
  %94 = icmp eq i32 %93, 82, !dbg !876
  br i1 %94, label %95, label %104, !dbg !877

95:                                               ; preds = %92
  %96 = load i32, ptr %4, align 4, !dbg !878
  %97 = icmp eq i32 %96, 71, !dbg !879
  br i1 %97, label %98, label %104, !dbg !880

98:                                               ; preds = %95
  %99 = load i32, ptr %5, align 4, !dbg !881
  %100 = icmp eq i32 %99, 66, !dbg !882
  br i1 %100, label %101, label %104, !dbg !880

101:                                              ; preds = %98
  %102 = load ptr, ptr %2, align 8, !dbg !883
  %103 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %102, i32 0, i32 9, !dbg !884
  store i32 2, ptr %103, align 4, !dbg !885
  br label %133, !dbg !883

104:                                              ; preds = %98, %95, %92
  br label %105, !dbg !886

105:                                              ; preds = %104
    #dbg_declare(ptr %6, !888, !DIExpression(), !891)
  %106 = load ptr, ptr %2, align 8, !dbg !891
  %107 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %106, i32 0, i32 0, !dbg !891
  %108 = load ptr, ptr %107, align 8, !dbg !891
  %109 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %108, i32 0, i32 6, !dbg !891
  %110 = getelementptr inbounds [8 x i32], ptr %109, i64 0, i64 0, !dbg !891
  store ptr %110, ptr %6, align 8, !dbg !891
  %111 = load i32, ptr %3, align 4, !dbg !891
  %112 = load ptr, ptr %6, align 8, !dbg !891
  %113 = getelementptr inbounds i32, ptr %112, i64 0, !dbg !891
  store i32 %111, ptr %113, align 4, !dbg !891
  %114 = load i32, ptr %4, align 4, !dbg !891
  %115 = load ptr, ptr %6, align 8, !dbg !891
  %116 = getelementptr inbounds i32, ptr %115, i64 1, !dbg !891
  store i32 %114, ptr %116, align 4, !dbg !891
  %117 = load i32, ptr %5, align 4, !dbg !891
  %118 = load ptr, ptr %6, align 8, !dbg !891
  %119 = getelementptr inbounds i32, ptr %118, i64 2, !dbg !891
  store i32 %117, ptr %119, align 4, !dbg !891
  %120 = load ptr, ptr %2, align 8, !dbg !891
  %121 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %120, i32 0, i32 0, !dbg !891
  %122 = load ptr, ptr %121, align 8, !dbg !891
  %123 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %122, i32 0, i32 5, !dbg !891
  store i32 107, ptr %123, align 8, !dbg !891
  %124 = load ptr, ptr %2, align 8, !dbg !891
  %125 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %124, i32 0, i32 0, !dbg !891
  %126 = load ptr, ptr %125, align 8, !dbg !891
  %127 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %126, i32 0, i32 1, !dbg !891
  %128 = load ptr, ptr %127, align 8, !dbg !891
  %129 = load ptr, ptr %2, align 8, !dbg !891
  call void %128(ptr noundef %129, i32 noundef 1), !dbg !891
  br label %130, !dbg !891

130:                                              ; preds = %105
  %131 = load ptr, ptr %2, align 8, !dbg !892
  %132 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %131, i32 0, i32 9, !dbg !893
  store i32 3, ptr %132, align 4, !dbg !894
  br label %133

133:                                              ; preds = %130, %101
  br label %134

134:                                              ; preds = %133, %89
  br label %135

135:                                              ; preds = %134, %61
  br label %136

136:                                              ; preds = %135, %20
  %137 = load ptr, ptr %2, align 8, !dbg !895
  %138 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %137, i32 0, i32 10, !dbg !896
  store i32 2, ptr %138, align 8, !dbg !897
  br label %189, !dbg !898

139:                                              ; preds = %1
  %140 = load ptr, ptr %2, align 8, !dbg !899
  %141 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %140, i32 0, i32 54, !dbg !901
  %142 = load i32, ptr %141, align 8, !dbg !901
  %143 = icmp ne i32 %142, 0, !dbg !899
  br i1 %143, label %144, label %178, !dbg !899

144:                                              ; preds = %139
  %145 = load ptr, ptr %2, align 8, !dbg !902
  %146 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %145, i32 0, i32 55, !dbg !904
  %147 = load i8, ptr %146, align 4, !dbg !904
  %148 = zext i8 %147 to i32, !dbg !902
  switch i32 %148, label %155 [
    i32 0, label %149
    i32 2, label %152
  ], !dbg !905

149:                                              ; preds = %144
  %150 = load ptr, ptr %2, align 8, !dbg !906
  %151 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %150, i32 0, i32 9, !dbg !908
  store i32 4, ptr %151, align 4, !dbg !909
  br label %177, !dbg !910

152:                                              ; preds = %144
  %153 = load ptr, ptr %2, align 8, !dbg !911
  %154 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %153, i32 0, i32 9, !dbg !912
  store i32 5, ptr %154, align 4, !dbg !913
  br label %177, !dbg !914

155:                                              ; preds = %144
  %156 = load ptr, ptr %2, align 8, !dbg !915
  %157 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %156, i32 0, i32 0, !dbg !915
  %158 = load ptr, ptr %157, align 8, !dbg !915
  %159 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %158, i32 0, i32 5, !dbg !915
  store i32 110, ptr %159, align 8, !dbg !915
  %160 = load ptr, ptr %2, align 8, !dbg !915
  %161 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %160, i32 0, i32 55, !dbg !915
  %162 = load i8, ptr %161, align 4, !dbg !915
  %163 = zext i8 %162 to i32, !dbg !915
  %164 = load ptr, ptr %2, align 8, !dbg !915
  %165 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %164, i32 0, i32 0, !dbg !915
  %166 = load ptr, ptr %165, align 8, !dbg !915
  %167 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %166, i32 0, i32 6, !dbg !915
  %168 = getelementptr inbounds [8 x i32], ptr %167, i64 0, i64 0, !dbg !915
  store i32 %163, ptr %168, align 4, !dbg !915
  %169 = load ptr, ptr %2, align 8, !dbg !915
  %170 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %169, i32 0, i32 0, !dbg !915
  %171 = load ptr, ptr %170, align 8, !dbg !915
  %172 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %171, i32 0, i32 1, !dbg !915
  %173 = load ptr, ptr %172, align 8, !dbg !915
  %174 = load ptr, ptr %2, align 8, !dbg !915
  call void %173(ptr noundef %174, i32 noundef -1), !dbg !915
  %175 = load ptr, ptr %2, align 8, !dbg !916
  %176 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %175, i32 0, i32 9, !dbg !917
  store i32 5, ptr %176, align 4, !dbg !918
  br label %177, !dbg !919

177:                                              ; preds = %155, %152, %149
  br label %181, !dbg !920

178:                                              ; preds = %139
  %179 = load ptr, ptr %2, align 8, !dbg !921
  %180 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %179, i32 0, i32 9, !dbg !923
  store i32 4, ptr %180, align 4, !dbg !924
  br label %181

181:                                              ; preds = %178, %177
  %182 = load ptr, ptr %2, align 8, !dbg !925
  %183 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %182, i32 0, i32 10, !dbg !926
  store i32 4, ptr %183, align 8, !dbg !927
  br label %189, !dbg !928

184:                                              ; preds = %1
  %185 = load ptr, ptr %2, align 8, !dbg !929
  %186 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %185, i32 0, i32 9, !dbg !930
  store i32 0, ptr %186, align 4, !dbg !931
  %187 = load ptr, ptr %2, align 8, !dbg !932
  %188 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %187, i32 0, i32 10, !dbg !933
  store i32 0, ptr %188, align 8, !dbg !934
  br label %189, !dbg !935

189:                                              ; preds = %184, %181, %136, %10
  %190 = load ptr, ptr %2, align 8, !dbg !936
  %191 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %190, i32 0, i32 11, !dbg !937
  store i32 1, ptr %191, align 4, !dbg !938
  %192 = load ptr, ptr %2, align 8, !dbg !939
  %193 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %192, i32 0, i32 12, !dbg !940
  store i32 1, ptr %193, align 8, !dbg !941
  %194 = load ptr, ptr %2, align 8, !dbg !942
  %195 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %194, i32 0, i32 13, !dbg !943
  store double 1.000000e+00, ptr %195, align 8, !dbg !944
  %196 = load ptr, ptr %2, align 8, !dbg !945
  %197 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %196, i32 0, i32 14, !dbg !946
  store i32 0, ptr %197, align 8, !dbg !947
  %198 = load ptr, ptr %2, align 8, !dbg !948
  %199 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %198, i32 0, i32 15, !dbg !949
  store i32 0, ptr %199, align 4, !dbg !950
  %200 = load ptr, ptr %2, align 8, !dbg !951
  %201 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %200, i32 0, i32 16, !dbg !952
  store i32 0, ptr %201, align 8, !dbg !953
  %202 = load ptr, ptr %2, align 8, !dbg !954
  %203 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %202, i32 0, i32 17, !dbg !955
  store i32 1, ptr %203, align 4, !dbg !956
  %204 = load ptr, ptr %2, align 8, !dbg !957
  %205 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %204, i32 0, i32 18, !dbg !958
  store i32 1, ptr %205, align 8, !dbg !959
  %206 = load ptr, ptr %2, align 8, !dbg !960
  %207 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %206, i32 0, i32 19, !dbg !961
  store i32 0, ptr %207, align 4, !dbg !962
  %208 = load ptr, ptr %2, align 8, !dbg !963
  %209 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %208, i32 0, i32 20, !dbg !964
  store i32 2, ptr %209, align 8, !dbg !965
  %210 = load ptr, ptr %2, align 8, !dbg !966
  %211 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %210, i32 0, i32 21, !dbg !967
  store i32 1, ptr %211, align 4, !dbg !968
  %212 = load ptr, ptr %2, align 8, !dbg !969
  %213 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %212, i32 0, i32 22, !dbg !970
  store i32 256, ptr %213, align 8, !dbg !971
  %214 = load ptr, ptr %2, align 8, !dbg !972
  %215 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %214, i32 0, i32 32, !dbg !973
  store ptr null, ptr %215, align 8, !dbg !974
  %216 = load ptr, ptr %2, align 8, !dbg !975
  %217 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %216, i32 0, i32 23, !dbg !976
  store i32 0, ptr %217, align 4, !dbg !977
  %218 = load ptr, ptr %2, align 8, !dbg !978
  %219 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %218, i32 0, i32 24, !dbg !979
  store i32 0, ptr %219, align 8, !dbg !980
  %220 = load ptr, ptr %2, align 8, !dbg !981
  %221 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %220, i32 0, i32 25, !dbg !982
  store i32 0, ptr %221, align 4, !dbg !983
  ret void, !dbg !984
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @jpeg_input_complete(ptr noundef %0) #0 !dbg !985 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !986, !DIExpression(), !987)
  %3 = load ptr, ptr %2, align 8, !dbg !988
  %4 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %3, i32 0, i32 4, !dbg !990
  %5 = load i32, ptr %4, align 4, !dbg !990
  %6 = icmp slt i32 %5, 200, !dbg !991
  br i1 %6, label %12, label %7, !dbg !992

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !dbg !993
  %9 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %8, i32 0, i32 4, !dbg !994
  %10 = load i32, ptr %9, align 4, !dbg !994
  %11 = icmp sgt i32 %10, 210, !dbg !995
  br i1 %11, label %12, label %31, !dbg !992

12:                                               ; preds = %7, %1
  %13 = load ptr, ptr %2, align 8, !dbg !996
  %14 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %13, i32 0, i32 0, !dbg !996
  %15 = load ptr, ptr %14, align 8, !dbg !996
  %16 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %15, i32 0, i32 5, !dbg !996
  store i32 18, ptr %16, align 8, !dbg !996
  %17 = load ptr, ptr %2, align 8, !dbg !996
  %18 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %17, i32 0, i32 4, !dbg !996
  %19 = load i32, ptr %18, align 4, !dbg !996
  %20 = load ptr, ptr %2, align 8, !dbg !996
  %21 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %20, i32 0, i32 0, !dbg !996
  %22 = load ptr, ptr %21, align 8, !dbg !996
  %23 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %22, i32 0, i32 6, !dbg !996
  %24 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 0, !dbg !996
  store i32 %19, ptr %24, align 4, !dbg !996
  %25 = load ptr, ptr %2, align 8, !dbg !996
  %26 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %25, i32 0, i32 0, !dbg !996
  %27 = load ptr, ptr %26, align 8, !dbg !996
  %28 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %27, i32 0, i32 0, !dbg !996
  %29 = load ptr, ptr %28, align 8, !dbg !996
  %30 = load ptr, ptr %2, align 8, !dbg !996
  call void %29(ptr noundef %30), !dbg !996
  br label %31, !dbg !996

31:                                               ; preds = %12, %7
  %32 = load ptr, ptr %2, align 8, !dbg !997
  %33 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %32, i32 0, i32 77, !dbg !998
  %34 = load ptr, ptr %33, align 8, !dbg !998
  %35 = getelementptr inbounds nuw %struct.jpeg_input_controller, ptr %34, i32 0, i32 5, !dbg !999
  %36 = load i32, ptr %35, align 4, !dbg !999
  ret i32 %36, !dbg !1000
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @jpeg_has_multiple_scans(ptr noundef %0) #0 !dbg !1001 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !1002, !DIExpression(), !1003)
  %3 = load ptr, ptr %2, align 8, !dbg !1004
  %4 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %3, i32 0, i32 4, !dbg !1006
  %5 = load i32, ptr %4, align 4, !dbg !1006
  %6 = icmp slt i32 %5, 202, !dbg !1007
  br i1 %6, label %12, label %7, !dbg !1008

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !dbg !1009
  %9 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %8, i32 0, i32 4, !dbg !1010
  %10 = load i32, ptr %9, align 4, !dbg !1010
  %11 = icmp sgt i32 %10, 210, !dbg !1011
  br i1 %11, label %12, label %31, !dbg !1008

12:                                               ; preds = %7, %1
  %13 = load ptr, ptr %2, align 8, !dbg !1012
  %14 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %13, i32 0, i32 0, !dbg !1012
  %15 = load ptr, ptr %14, align 8, !dbg !1012
  %16 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %15, i32 0, i32 5, !dbg !1012
  store i32 18, ptr %16, align 8, !dbg !1012
  %17 = load ptr, ptr %2, align 8, !dbg !1012
  %18 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %17, i32 0, i32 4, !dbg !1012
  %19 = load i32, ptr %18, align 4, !dbg !1012
  %20 = load ptr, ptr %2, align 8, !dbg !1012
  %21 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %20, i32 0, i32 0, !dbg !1012
  %22 = load ptr, ptr %21, align 8, !dbg !1012
  %23 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %22, i32 0, i32 6, !dbg !1012
  %24 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 0, !dbg !1012
  store i32 %19, ptr %24, align 4, !dbg !1012
  %25 = load ptr, ptr %2, align 8, !dbg !1012
  %26 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %25, i32 0, i32 0, !dbg !1012
  %27 = load ptr, ptr %26, align 8, !dbg !1012
  %28 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %27, i32 0, i32 0, !dbg !1012
  %29 = load ptr, ptr %28, align 8, !dbg !1012
  %30 = load ptr, ptr %2, align 8, !dbg !1012
  call void %29(ptr noundef %30), !dbg !1012
  br label %31, !dbg !1012

31:                                               ; preds = %12, %7
  %32 = load ptr, ptr %2, align 8, !dbg !1013
  %33 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %32, i32 0, i32 77, !dbg !1014
  %34 = load ptr, ptr %33, align 8, !dbg !1014
  %35 = getelementptr inbounds nuw %struct.jpeg_input_controller, ptr %34, i32 0, i32 4, !dbg !1015
  %36 = load i32, ptr %35, align 8, !dbg !1015
  ret i32 %36, !dbg !1016
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @jpeg_finish_decompress(ptr noundef %0) #0 !dbg !1017 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1018, !DIExpression(), !1019)
  %4 = load ptr, ptr %3, align 8, !dbg !1020
  %5 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 4, !dbg !1022
  %6 = load i32, ptr %5, align 4, !dbg !1022
  %7 = icmp eq i32 %6, 205, !dbg !1023
  br i1 %7, label %13, label %8, !dbg !1024

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 8, !dbg !1025
  %10 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %9, i32 0, i32 4, !dbg !1026
  %11 = load i32, ptr %10, align 4, !dbg !1026
  %12 = icmp eq i32 %11, 206, !dbg !1027
  br i1 %12, label %13, label %46, !dbg !1028

13:                                               ; preds = %8, %1
  %14 = load ptr, ptr %3, align 8, !dbg !1029
  %15 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %14, i32 0, i32 14, !dbg !1030
  %16 = load i32, ptr %15, align 8, !dbg !1030
  %17 = icmp ne i32 %16, 0, !dbg !1029
  br i1 %17, label %46, label %18, !dbg !1028

18:                                               ; preds = %13
  %19 = load ptr, ptr %3, align 8, !dbg !1031
  %20 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %19, i32 0, i32 33, !dbg !1034
  %21 = load i32, ptr %20, align 8, !dbg !1034
  %22 = load ptr, ptr %3, align 8, !dbg !1035
  %23 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %22, i32 0, i32 27, !dbg !1036
  %24 = load i32, ptr %23, align 4, !dbg !1036
  %25 = icmp ult i32 %21, %24, !dbg !1037
  br i1 %25, label %26, label %37, !dbg !1037

26:                                               ; preds = %18
  %27 = load ptr, ptr %3, align 8, !dbg !1038
  %28 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %27, i32 0, i32 0, !dbg !1038
  %29 = load ptr, ptr %28, align 8, !dbg !1038
  %30 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %29, i32 0, i32 5, !dbg !1038
  store i32 66, ptr %30, align 8, !dbg !1038
  %31 = load ptr, ptr %3, align 8, !dbg !1038
  %32 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %31, i32 0, i32 0, !dbg !1038
  %33 = load ptr, ptr %32, align 8, !dbg !1038
  %34 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %33, i32 0, i32 0, !dbg !1038
  %35 = load ptr, ptr %34, align 8, !dbg !1038
  %36 = load ptr, ptr %3, align 8, !dbg !1038
  call void %35(ptr noundef %36), !dbg !1038
  br label %37, !dbg !1038

37:                                               ; preds = %26, %18
  %38 = load ptr, ptr %3, align 8, !dbg !1039
  %39 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %38, i32 0, i32 73, !dbg !1040
  %40 = load ptr, ptr %39, align 8, !dbg !1040
  %41 = getelementptr inbounds nuw %struct.jpeg_decomp_master, ptr %40, i32 0, i32 1, !dbg !1041
  %42 = load ptr, ptr %41, align 8, !dbg !1041
  %43 = load ptr, ptr %3, align 8, !dbg !1042
  call void %42(ptr noundef %43), !dbg !1043
  %44 = load ptr, ptr %3, align 8, !dbg !1044
  %45 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %44, i32 0, i32 4, !dbg !1045
  store i32 210, ptr %45, align 4, !dbg !1046
  br label %80, !dbg !1047

46:                                               ; preds = %13, %8
  %47 = load ptr, ptr %3, align 8, !dbg !1048
  %48 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %47, i32 0, i32 4, !dbg !1050
  %49 = load i32, ptr %48, align 4, !dbg !1050
  %50 = icmp eq i32 %49, 207, !dbg !1051
  br i1 %50, label %51, label %54, !dbg !1051

51:                                               ; preds = %46
  %52 = load ptr, ptr %3, align 8, !dbg !1052
  %53 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %52, i32 0, i32 4, !dbg !1054
  store i32 210, ptr %53, align 4, !dbg !1055
  br label %79, !dbg !1056

54:                                               ; preds = %46
  %55 = load ptr, ptr %3, align 8, !dbg !1057
  %56 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %55, i32 0, i32 4, !dbg !1059
  %57 = load i32, ptr %56, align 4, !dbg !1059
  %58 = icmp ne i32 %57, 210, !dbg !1060
  br i1 %58, label %59, label %78, !dbg !1060

59:                                               ; preds = %54
  %60 = load ptr, ptr %3, align 8, !dbg !1061
  %61 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %60, i32 0, i32 0, !dbg !1061
  %62 = load ptr, ptr %61, align 8, !dbg !1061
  %63 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %62, i32 0, i32 5, !dbg !1061
  store i32 18, ptr %63, align 8, !dbg !1061
  %64 = load ptr, ptr %3, align 8, !dbg !1061
  %65 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %64, i32 0, i32 4, !dbg !1061
  %66 = load i32, ptr %65, align 4, !dbg !1061
  %67 = load ptr, ptr %3, align 8, !dbg !1061
  %68 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %67, i32 0, i32 0, !dbg !1061
  %69 = load ptr, ptr %68, align 8, !dbg !1061
  %70 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %69, i32 0, i32 6, !dbg !1061
  %71 = getelementptr inbounds [8 x i32], ptr %70, i64 0, i64 0, !dbg !1061
  store i32 %66, ptr %71, align 4, !dbg !1061
  %72 = load ptr, ptr %3, align 8, !dbg !1061
  %73 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %72, i32 0, i32 0, !dbg !1061
  %74 = load ptr, ptr %73, align 8, !dbg !1061
  %75 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %74, i32 0, i32 0, !dbg !1061
  %76 = load ptr, ptr %75, align 8, !dbg !1061
  %77 = load ptr, ptr %3, align 8, !dbg !1061
  call void %76(ptr noundef %77), !dbg !1061
  br label %78, !dbg !1063

78:                                               ; preds = %59, %54
  br label %79

79:                                               ; preds = %78, %51
  br label %80

80:                                               ; preds = %79, %37
  br label %81, !dbg !1064

81:                                               ; preds = %99, %80
  %82 = load ptr, ptr %3, align 8, !dbg !1065
  %83 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %82, i32 0, i32 77, !dbg !1066
  %84 = load ptr, ptr %83, align 8, !dbg !1066
  %85 = getelementptr inbounds nuw %struct.jpeg_input_controller, ptr %84, i32 0, i32 5, !dbg !1067
  %86 = load i32, ptr %85, align 4, !dbg !1067
  %87 = icmp ne i32 %86, 0, !dbg !1068
  %88 = xor i1 %87, true, !dbg !1068
  br i1 %88, label %89, label %100, !dbg !1064

89:                                               ; preds = %81
  %90 = load ptr, ptr %3, align 8, !dbg !1069
  %91 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %90, i32 0, i32 77, !dbg !1072
  %92 = load ptr, ptr %91, align 8, !dbg !1072
  %93 = getelementptr inbounds nuw %struct.jpeg_input_controller, ptr %92, i32 0, i32 0, !dbg !1073
  %94 = load ptr, ptr %93, align 8, !dbg !1073
  %95 = load ptr, ptr %3, align 8, !dbg !1074
  %96 = call i32 %94(ptr noundef %95), !dbg !1075
  %97 = icmp eq i32 %96, 0, !dbg !1076
  br i1 %97, label %98, label %99, !dbg !1076

98:                                               ; preds = %89
  store i32 0, ptr %2, align 4, !dbg !1077
  br label %108, !dbg !1077

99:                                               ; preds = %89
  br label %81, !dbg !1064, !llvm.loop !1078

100:                                              ; preds = %81
  %101 = load ptr, ptr %3, align 8, !dbg !1080
  %102 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %101, i32 0, i32 5, !dbg !1081
  %103 = load ptr, ptr %102, align 8, !dbg !1081
  %104 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %103, i32 0, i32 6, !dbg !1082
  %105 = load ptr, ptr %104, align 8, !dbg !1082
  %106 = load ptr, ptr %3, align 8, !dbg !1083
  call void %105(ptr noundef %106), !dbg !1084
  %107 = load ptr, ptr %3, align 8, !dbg !1085
  call void @jpeg_abort(ptr noundef %107), !dbg !1086
  store i32 1, ptr %2, align 4, !dbg !1087
  br label %108, !dbg !1087

108:                                              ; preds = %100, %98
  %109 = load i32, ptr %2, align 4, !dbg !1088
  ret i32 %109, !dbg !1088
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!281, !282, !283, !284, !285, !286, !287}
!llvm.ident = !{!288}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !154, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jdapimin.c", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "49737e161490ab1ef788be1393c0514f")
!2 = !{!3, !13, !18, !23, !30}
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
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 220, baseType: !5, size: 32, elements: !19)
!19 = !{!20, !21, !22}
!20 = !DIEnumerator(name: "JDITHER_NONE", value: 0)
!21 = !DIEnumerator(name: "JDITHER_ORDERED", value: 1)
!22 = !DIEnumerator(name: "JDITHER_FS", value: 2)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !24, line: 16, baseType: !5, size: 32, elements: !25)
!24 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jpegint.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "87e9869e13f29b8e74a9dee50528c6c5")
!25 = !{!26, !27, !28, !29}
!26 = !DIEnumerator(name: "JBUF_PASS_THRU", value: 0)
!27 = !DIEnumerator(name: "JBUF_SAVE_SOURCE", value: 1)
!28 = !DIEnumerator(name: "JBUF_CRANK_DEST", value: 2)
!29 = !DIEnumerator(name: "JBUF_SAVE_AND_PASS", value: 3)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !31, line: 33, baseType: !5, size: 32, elements: !32)
!31 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jerror.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "a232f2460ff0049c960896e323d8710b")
!32 = !{!33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153}
!33 = !DIEnumerator(name: "JMSG_NOMESSAGE", value: 0)
!34 = !DIEnumerator(name: "JERR_ARITH_NOTIMPL", value: 1)
!35 = !DIEnumerator(name: "JERR_BAD_ALIGN_TYPE", value: 2)
!36 = !DIEnumerator(name: "JERR_BAD_ALLOC_CHUNK", value: 3)
!37 = !DIEnumerator(name: "JERR_BAD_BUFFER_MODE", value: 4)
!38 = !DIEnumerator(name: "JERR_BAD_COMPONENT_ID", value: 5)
!39 = !DIEnumerator(name: "JERR_BAD_DCTSIZE", value: 6)
!40 = !DIEnumerator(name: "JERR_BAD_IN_COLORSPACE", value: 7)
!41 = !DIEnumerator(name: "JERR_BAD_J_COLORSPACE", value: 8)
!42 = !DIEnumerator(name: "JERR_BAD_LENGTH", value: 9)
!43 = !DIEnumerator(name: "JERR_BAD_LIB_VERSION", value: 10)
!44 = !DIEnumerator(name: "JERR_BAD_MCU_SIZE", value: 11)
!45 = !DIEnumerator(name: "JERR_BAD_POOL_ID", value: 12)
!46 = !DIEnumerator(name: "JERR_BAD_PRECISION", value: 13)
!47 = !DIEnumerator(name: "JERR_BAD_PROGRESSION", value: 14)
!48 = !DIEnumerator(name: "JERR_BAD_PROG_SCRIPT", value: 15)
!49 = !DIEnumerator(name: "JERR_BAD_SAMPLING", value: 16)
!50 = !DIEnumerator(name: "JERR_BAD_SCAN_SCRIPT", value: 17)
!51 = !DIEnumerator(name: "JERR_BAD_STATE", value: 18)
!52 = !DIEnumerator(name: "JERR_BAD_STRUCT_SIZE", value: 19)
!53 = !DIEnumerator(name: "JERR_BAD_VIRTUAL_ACCESS", value: 20)
!54 = !DIEnumerator(name: "JERR_BUFFER_SIZE", value: 21)
!55 = !DIEnumerator(name: "JERR_CANT_SUSPEND", value: 22)
!56 = !DIEnumerator(name: "JERR_CCIR601_NOTIMPL", value: 23)
!57 = !DIEnumerator(name: "JERR_COMPONENT_COUNT", value: 24)
!58 = !DIEnumerator(name: "JERR_CONVERSION_NOTIMPL", value: 25)
!59 = !DIEnumerator(name: "JERR_DAC_INDEX", value: 26)
!60 = !DIEnumerator(name: "JERR_DAC_VALUE", value: 27)
!61 = !DIEnumerator(name: "JERR_DHT_COUNTS", value: 28)
!62 = !DIEnumerator(name: "JERR_DHT_INDEX", value: 29)
!63 = !DIEnumerator(name: "JERR_DQT_INDEX", value: 30)
!64 = !DIEnumerator(name: "JERR_EMPTY_IMAGE", value: 31)
!65 = !DIEnumerator(name: "JERR_EMS_READ", value: 32)
!66 = !DIEnumerator(name: "JERR_EMS_WRITE", value: 33)
!67 = !DIEnumerator(name: "JERR_EOI_EXPECTED", value: 34)
!68 = !DIEnumerator(name: "JERR_FILE_READ", value: 35)
!69 = !DIEnumerator(name: "JERR_FILE_WRITE", value: 36)
!70 = !DIEnumerator(name: "JERR_FRACT_SAMPLE_NOTIMPL", value: 37)
!71 = !DIEnumerator(name: "JERR_HUFF_CLEN_OVERFLOW", value: 38)
!72 = !DIEnumerator(name: "JERR_HUFF_MISSING_CODE", value: 39)
!73 = !DIEnumerator(name: "JERR_IMAGE_TOO_BIG", value: 40)
!74 = !DIEnumerator(name: "JERR_INPUT_EMPTY", value: 41)
!75 = !DIEnumerator(name: "JERR_INPUT_EOF", value: 42)
!76 = !DIEnumerator(name: "JERR_MISMATCHED_QUANT_TABLE", value: 43)
!77 = !DIEnumerator(name: "JERR_MISSING_DATA", value: 44)
!78 = !DIEnumerator(name: "JERR_MODE_CHANGE", value: 45)
!79 = !DIEnumerator(name: "JERR_NOTIMPL", value: 46)
!80 = !DIEnumerator(name: "JERR_NOT_COMPILED", value: 47)
!81 = !DIEnumerator(name: "JERR_NO_BACKING_STORE", value: 48)
!82 = !DIEnumerator(name: "JERR_NO_HUFF_TABLE", value: 49)
!83 = !DIEnumerator(name: "JERR_NO_IMAGE", value: 50)
!84 = !DIEnumerator(name: "JERR_NO_QUANT_TABLE", value: 51)
!85 = !DIEnumerator(name: "JERR_NO_SOI", value: 52)
!86 = !DIEnumerator(name: "JERR_OUT_OF_MEMORY", value: 53)
!87 = !DIEnumerator(name: "JERR_QUANT_COMPONENTS", value: 54)
!88 = !DIEnumerator(name: "JERR_QUANT_FEW_COLORS", value: 55)
!89 = !DIEnumerator(name: "JERR_QUANT_MANY_COLORS", value: 56)
!90 = !DIEnumerator(name: "JERR_SOF_DUPLICATE", value: 57)
!91 = !DIEnumerator(name: "JERR_SOF_NO_SOS", value: 58)
!92 = !DIEnumerator(name: "JERR_SOF_UNSUPPORTED", value: 59)
!93 = !DIEnumerator(name: "JERR_SOI_DUPLICATE", value: 60)
!94 = !DIEnumerator(name: "JERR_SOS_NO_SOF", value: 61)
!95 = !DIEnumerator(name: "JERR_TFILE_CREATE", value: 62)
!96 = !DIEnumerator(name: "JERR_TFILE_READ", value: 63)
!97 = !DIEnumerator(name: "JERR_TFILE_SEEK", value: 64)
!98 = !DIEnumerator(name: "JERR_TFILE_WRITE", value: 65)
!99 = !DIEnumerator(name: "JERR_TOO_LITTLE_DATA", value: 66)
!100 = !DIEnumerator(name: "JERR_UNKNOWN_MARKER", value: 67)
!101 = !DIEnumerator(name: "JERR_VIRTUAL_BUG", value: 68)
!102 = !DIEnumerator(name: "JERR_WIDTH_OVERFLOW", value: 69)
!103 = !DIEnumerator(name: "JERR_XMS_READ", value: 70)
!104 = !DIEnumerator(name: "JERR_XMS_WRITE", value: 71)
!105 = !DIEnumerator(name: "JMSG_COPYRIGHT", value: 72)
!106 = !DIEnumerator(name: "JMSG_VERSION", value: 73)
!107 = !DIEnumerator(name: "JTRC_16BIT_TABLES", value: 74)
!108 = !DIEnumerator(name: "JTRC_ADOBE", value: 75)
!109 = !DIEnumerator(name: "JTRC_APP0", value: 76)
!110 = !DIEnumerator(name: "JTRC_APP14", value: 77)
!111 = !DIEnumerator(name: "JTRC_DAC", value: 78)
!112 = !DIEnumerator(name: "JTRC_DHT", value: 79)
!113 = !DIEnumerator(name: "JTRC_DQT", value: 80)
!114 = !DIEnumerator(name: "JTRC_DRI", value: 81)
!115 = !DIEnumerator(name: "JTRC_EMS_CLOSE", value: 82)
!116 = !DIEnumerator(name: "JTRC_EMS_OPEN", value: 83)
!117 = !DIEnumerator(name: "JTRC_EOI", value: 84)
!118 = !DIEnumerator(name: "JTRC_HUFFBITS", value: 85)
!119 = !DIEnumerator(name: "JTRC_JFIF", value: 86)
!120 = !DIEnumerator(name: "JTRC_JFIF_BADTHUMBNAILSIZE", value: 87)
!121 = !DIEnumerator(name: "JTRC_JFIF_MINOR", value: 88)
!122 = !DIEnumerator(name: "JTRC_JFIF_THUMBNAIL", value: 89)
!123 = !DIEnumerator(name: "JTRC_MISC_MARKER", value: 90)
!124 = !DIEnumerator(name: "JTRC_PARMLESS_MARKER", value: 91)
!125 = !DIEnumerator(name: "JTRC_QUANTVALS", value: 92)
!126 = !DIEnumerator(name: "JTRC_QUANT_3_NCOLORS", value: 93)
!127 = !DIEnumerator(name: "JTRC_QUANT_NCOLORS", value: 94)
!128 = !DIEnumerator(name: "JTRC_QUANT_SELECTED", value: 95)
!129 = !DIEnumerator(name: "JTRC_RECOVERY_ACTION", value: 96)
!130 = !DIEnumerator(name: "JTRC_RST", value: 97)
!131 = !DIEnumerator(name: "JTRC_SMOOTH_NOTIMPL", value: 98)
!132 = !DIEnumerator(name: "JTRC_SOF", value: 99)
!133 = !DIEnumerator(name: "JTRC_SOF_COMPONENT", value: 100)
!134 = !DIEnumerator(name: "JTRC_SOI", value: 101)
!135 = !DIEnumerator(name: "JTRC_SOS", value: 102)
!136 = !DIEnumerator(name: "JTRC_SOS_COMPONENT", value: 103)
!137 = !DIEnumerator(name: "JTRC_SOS_PARAMS", value: 104)
!138 = !DIEnumerator(name: "JTRC_TFILE_CLOSE", value: 105)
!139 = !DIEnumerator(name: "JTRC_TFILE_OPEN", value: 106)
!140 = !DIEnumerator(name: "JTRC_UNKNOWN_IDS", value: 107)
!141 = !DIEnumerator(name: "JTRC_XMS_CLOSE", value: 108)
!142 = !DIEnumerator(name: "JTRC_XMS_OPEN", value: 109)
!143 = !DIEnumerator(name: "JWRN_ADOBE_XFORM", value: 110)
!144 = !DIEnumerator(name: "JWRN_BOGUS_PROGRESSION", value: 111)
!145 = !DIEnumerator(name: "JWRN_EXTRANEOUS_DATA", value: 112)
!146 = !DIEnumerator(name: "JWRN_HIT_MARKER", value: 113)
!147 = !DIEnumerator(name: "JWRN_HUFF_BAD_CODE", value: 114)
!148 = !DIEnumerator(name: "JWRN_JFIF_MAJOR", value: 115)
!149 = !DIEnumerator(name: "JWRN_JPEG_EOF", value: 116)
!150 = !DIEnumerator(name: "JWRN_MUST_RESYNC", value: 117)
!151 = !DIEnumerator(name: "JWRN_NOT_SEQUENTIAL", value: 118)
!152 = !DIEnumerator(name: "JWRN_TOO_MUCH_DATA", value: 119)
!153 = !DIEnumerator(name: "JMSG_LASTMSGCODE", value: 120)
!154 = !{!155, !213, !171, !212}
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_common_ptr", file: !4, line: 248, baseType: !156)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_common_struct", file: !4, line: 240, size: 256, elements: !158)
!158 = !{!159, !204, !270, !279, !280}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !157, file: !4, line: 241, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_error_mgr", file: !4, line: 618, size: 1344, elements: !162)
!162 = !{!163, !167, !172, !173, !179, !180, !181, !192, !193, !195, !200, !201, !202, !203}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "error_exit", scope: !161, file: !4, line: 620, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DISubroutineType(types: !166)
!166 = !{null, !155}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "emit_message", scope: !161, file: !4, line: 622, baseType: !168, size: 64, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DISubroutineType(types: !170)
!170 = !{null, !155, !171}
!171 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "output_message", scope: !161, file: !4, line: 624, baseType: !164, size: 64, offset: 128)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "format_message", scope: !161, file: !4, line: 626, baseType: !174, size: 64, offset: 192)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DISubroutineType(types: !176)
!176 = !{null, !155, !177}
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "reset_error_mgr", scope: !161, file: !4, line: 629, baseType: !164, size: 64, offset: 256)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "msg_code", scope: !161, file: !4, line: 634, baseType: !171, size: 32, offset: 320)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "msg_parm", scope: !161, file: !4, line: 639, baseType: !182, size: 640, offset: 352)
!182 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !161, file: !4, line: 636, size: 640, elements: !183)
!183 = !{!184, !188}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !182, file: !4, line: 637, baseType: !185, size: 256)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 256, elements: !186)
!186 = !{!187}
!187 = !DISubrange(count: 8)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !182, file: !4, line: 638, baseType: !189, size: 640)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 640, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 80)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "trace_level", scope: !161, file: !4, line: 643, baseType: !171, size: 32, offset: 992)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "num_warnings", scope: !161, file: !4, line: 651, baseType: !194, size: 64, offset: 1024)
!194 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_message_table", scope: !161, file: !4, line: 663, baseType: !196, size: 64, offset: 1088)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !178)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "last_jpeg_message", scope: !161, file: !4, line: 664, baseType: !171, size: 32, offset: 1152)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "addon_message_table", scope: !161, file: !4, line: 668, baseType: !196, size: 64, offset: 1216)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "first_addon_message", scope: !161, file: !4, line: 669, baseType: !171, size: 32, offset: 1280)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "last_addon_message", scope: !161, file: !4, line: 670, baseType: !171, size: 32, offset: 1312)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !157, file: !4, line: 241, baseType: !205, size: 64, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_memory_mgr", file: !4, line: 731, size: 768, elements: !207)
!207 = !{!208, !216, !217, !229, !243, !251, !258, !259, !263, !267, !268, !269}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_small", scope: !206, file: !4, line: 733, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DISubroutineType(types: !211)
!211 = !{!212, !155, !171, !213}
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !214, line: 18, baseType: !215)
!214 = !DIFile(filename: "/usr/local/lib/clang/20/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!215 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_large", scope: !206, file: !4, line: 735, baseType: !209, size: 64, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_sarray", scope: !206, file: !4, line: 737, baseType: !218, size: 64, offset: 128)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{!221, !155, !171, !228, !228}
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPARRAY", file: !4, line: 67, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPROW", file: !4, line: 66, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPLE", file: !226, line: 59, baseType: !227)
!226 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jmorecfg.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "56a0eda58fafa6bdd5498f702a998c09")
!227 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "JDIMENSION", file: !226, line: 171, baseType: !5)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_barray", scope: !206, file: !4, line: 740, baseType: !230, size: 64, offset: 192)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DISubroutineType(types: !232)
!232 = !{!233, !155, !171, !228, !228}
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCKARRAY", file: !4, line: 72, baseType: !234)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCKROW", file: !4, line: 71, baseType: !236)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCK", file: !4, line: 70, baseType: !238)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 1024, elements: !241)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "JCOEF", file: !226, line: 99, baseType: !240)
!240 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!241 = !{!242}
!242 = !DISubrange(count: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_sarray", scope: !206, file: !4, line: 743, baseType: !244, size: 64, offset: 256)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{!247, !155, !171, !250, !228, !228, !228}
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_sarray_ptr", file: !4, line: 727, baseType: !248)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_sarray_control", file: !4, line: 727, flags: DIFlagFwdDecl)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "boolean", file: !226, line: 227, baseType: !171)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_barray", scope: !206, file: !4, line: 749, baseType: !252, size: 64, offset: 320)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DISubroutineType(types: !254)
!254 = !{!255, !155, !171, !250, !228, !228, !228}
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_barray_ptr", file: !4, line: 728, baseType: !256)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_barray_control", file: !4, line: 728, flags: DIFlagFwdDecl)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "realize_virt_arrays", scope: !206, file: !4, line: 755, baseType: !164, size: 64, offset: 384)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_sarray", scope: !206, file: !4, line: 756, baseType: !260, size: 64, offset: 448)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!221, !155, !247, !228, !228, !250}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_barray", scope: !206, file: !4, line: 761, baseType: !264, size: 64, offset: 512)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!233, !155, !255, !228, !228, !250}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "free_pool", scope: !206, file: !4, line: 766, baseType: !168, size: 64, offset: 576)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "self_destruct", scope: !206, file: !4, line: 767, baseType: !164, size: 64, offset: 640)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "max_memory_to_use", scope: !206, file: !4, line: 774, baseType: !194, size: 64, offset: 704)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !157, file: !4, line: 241, baseType: !271, size: 64, offset: 128)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_progress_mgr", file: !4, line: 676, size: 256, elements: !273)
!273 = !{!274, !275, !276, !277, !278}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !272, file: !4, line: 677, baseType: !164, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "pass_counter", scope: !272, file: !4, line: 679, baseType: !194, size: 64, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "pass_limit", scope: !272, file: !4, line: 680, baseType: !194, size: 64, offset: 128)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "completed_passes", scope: !272, file: !4, line: 681, baseType: !171, size: 32, offset: 192)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "total_passes", scope: !272, file: !4, line: 682, baseType: !171, size: 32, offset: 224)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !157, file: !4, line: 241, baseType: !250, size: 32, offset: 192)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !157, file: !4, line: 241, baseType: !171, size: 32, offset: 224)
!281 = !{i32 7, !"Dwarf Version", i32 5}
!282 = !{i32 2, !"Debug Info Version", i32 3}
!283 = !{i32 1, !"wchar_size", i32 4}
!284 = !{i32 8, !"PIC Level", i32 2}
!285 = !{i32 7, !"PIE Level", i32 2}
!286 = !{i32 7, !"uwtable", i32 2}
!287 = !{i32 7, !"frame-pointer", i32 2}
!288 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!289 = distinct !DISubprogram(name: "jpeg_CreateDecompress", scope: !1, file: !1, line: 30, type: !290, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !584)
!290 = !DISubroutineType(types: !291)
!291 = !{null, !292, !171, !213}
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_decompress_ptr", file: !4, line: 250, baseType: !293)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_decompress_struct", file: !4, line: 394, size: 4928, elements: !295)
!295 = !{!296, !297, !298, !299, !300, !301, !327, !328, !329, !330, !332, !333, !334, !335, !337, !338, !339, !341, !342, !343, !344, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !366, !379, !395, !396, !397, !423, !424, !425, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !447, !448, !449, !450, !454, !455, !456, !457, !458, !459, !466, !480, !498, !507, !517, !532, !541, !554, !561, !570}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !294, file: !4, line: 395, baseType: !160, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !294, file: !4, line: 395, baseType: !205, size: 64, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !294, file: !4, line: 395, baseType: !271, size: 64, offset: 128)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !294, file: !4, line: 395, baseType: !250, size: 32, offset: 192)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !294, file: !4, line: 395, baseType: !171, size: 32, offset: 224)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !294, file: !4, line: 398, baseType: !302, size: 64, offset: 256)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_source_mgr", file: !4, line: 700, size: 448, elements: !304)
!304 = !{!305, !309, !310, !314, !318, !322, !326}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "next_input_byte", scope: !303, file: !4, line: 701, baseType: !306, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !308)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "JOCTET", file: !226, line: 110, baseType: !227)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_in_buffer", scope: !303, file: !4, line: 702, baseType: !213, size: 64, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "init_source", scope: !303, file: !4, line: 704, baseType: !311, size: 64, offset: 128)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{null, !292}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "fill_input_buffer", scope: !303, file: !4, line: 705, baseType: !315, size: 64, offset: 192)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DISubroutineType(types: !317)
!317 = !{!250, !292}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "skip_input_data", scope: !303, file: !4, line: 706, baseType: !319, size: 64, offset: 256)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DISubroutineType(types: !321)
!321 = !{null, !292, !194}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "resync_to_restart", scope: !303, file: !4, line: 707, baseType: !323, size: 64, offset: 320)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{!250, !292, !171}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "term_source", scope: !303, file: !4, line: 708, baseType: !311, size: 64, offset: 384)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "image_width", scope: !294, file: !4, line: 403, baseType: !228, size: 32, offset: 320)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "image_height", scope: !294, file: !4, line: 404, baseType: !228, size: 32, offset: 352)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "num_components", scope: !294, file: !4, line: 405, baseType: !171, size: 32, offset: 384)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_color_space", scope: !294, file: !4, line: 406, baseType: !331, size: 32, offset: 416)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_COLOR_SPACE", file: !4, line: 201, baseType: !3)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "out_color_space", scope: !294, file: !4, line: 413, baseType: !331, size: 32, offset: 448)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "scale_num", scope: !294, file: !4, line: 415, baseType: !5, size: 32, offset: 480)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "scale_denom", scope: !294, file: !4, line: 415, baseType: !5, size: 32, offset: 512)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "output_gamma", scope: !294, file: !4, line: 417, baseType: !336, size: 64, offset: 576)
!336 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "buffered_image", scope: !294, file: !4, line: 419, baseType: !250, size: 32, offset: 640)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "raw_data_out", scope: !294, file: !4, line: 420, baseType: !250, size: 32, offset: 672)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "dct_method", scope: !294, file: !4, line: 422, baseType: !340, size: 32, offset: 704)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_DCT_METHOD", file: !4, line: 209, baseType: !13)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "do_fancy_upsampling", scope: !294, file: !4, line: 423, baseType: !250, size: 32, offset: 736)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "do_block_smoothing", scope: !294, file: !4, line: 424, baseType: !250, size: 32, offset: 768)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "quantize_colors", scope: !294, file: !4, line: 426, baseType: !250, size: 32, offset: 800)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "dither_mode", scope: !294, file: !4, line: 428, baseType: !345, size: 32, offset: 832)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_DITHER_MODE", file: !4, line: 224, baseType: !18)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "two_pass_quantize", scope: !294, file: !4, line: 429, baseType: !250, size: 32, offset: 864)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "desired_number_of_colors", scope: !294, file: !4, line: 430, baseType: !171, size: 32, offset: 896)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "enable_1pass_quant", scope: !294, file: !4, line: 432, baseType: !250, size: 32, offset: 928)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "enable_external_quant", scope: !294, file: !4, line: 433, baseType: !250, size: 32, offset: 960)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "enable_2pass_quant", scope: !294, file: !4, line: 434, baseType: !250, size: 32, offset: 992)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "output_width", scope: !294, file: !4, line: 442, baseType: !228, size: 32, offset: 1024)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "output_height", scope: !294, file: !4, line: 443, baseType: !228, size: 32, offset: 1056)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "out_color_components", scope: !294, file: !4, line: 444, baseType: !171, size: 32, offset: 1088)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "output_components", scope: !294, file: !4, line: 445, baseType: !171, size: 32, offset: 1120)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "rec_outbuf_height", scope: !294, file: !4, line: 449, baseType: !171, size: 32, offset: 1152)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "actual_number_of_colors", scope: !294, file: !4, line: 461, baseType: !171, size: 32, offset: 1184)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !294, file: !4, line: 462, baseType: !221, size: 64, offset: 1216)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "output_scanline", scope: !294, file: !4, line: 472, baseType: !228, size: 32, offset: 1280)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "input_scan_number", scope: !294, file: !4, line: 477, baseType: !171, size: 32, offset: 1312)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "input_iMCU_row", scope: !294, file: !4, line: 478, baseType: !228, size: 32, offset: 1344)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "output_scan_number", scope: !294, file: !4, line: 484, baseType: !171, size: 32, offset: 1376)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "output_iMCU_row", scope: !294, file: !4, line: 485, baseType: !228, size: 32, offset: 1408)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "coef_bits", scope: !294, file: !4, line: 494, baseType: !364, size: 64, offset: 1472)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 2048, elements: !241)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_ptrs", scope: !294, file: !4, line: 505, baseType: !367, size: 256, offset: 1536)
!367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 256, elements: !377)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "JQUANT_TBL", file: !4, line: 95, baseType: !370)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 83, size: 1056, elements: !371)
!371 = !{!372, !376}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "quantval", scope: !370, file: !4, line: 88, baseType: !373, size: 1024)
!373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !374, size: 1024, elements: !241)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !226, line: 147, baseType: !375)
!375 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !370, file: !4, line: 94, baseType: !250, size: 32, offset: 1024)
!377 = !{!378}
!378 = !DISubrange(count: 4)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "dc_huff_tbl_ptrs", scope: !294, file: !4, line: 508, baseType: !380, size: 256, offset: 1792)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 256, elements: !377)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "JHUFF_TBL", file: !4, line: 111, baseType: !383)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 100, size: 2240, elements: !384)
!384 = !{!385, !390, !394}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !383, file: !4, line: 102, baseType: !386, size: 136)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 136, elements: !388)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT8", file: !226, line: 135, baseType: !227)
!388 = !{!389}
!389 = !DISubrange(count: 17)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "huffval", scope: !383, file: !4, line: 104, baseType: !391, size: 2048, offset: 136)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 2048, elements: !392)
!392 = !{!393}
!393 = !DISubrange(count: 256)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !383, file: !4, line: 110, baseType: !250, size: 32, offset: 2208)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "ac_huff_tbl_ptrs", scope: !294, file: !4, line: 509, baseType: !380, size: 256, offset: 2048)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "data_precision", scope: !294, file: !4, line: 516, baseType: !171, size: 32, offset: 2304)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "comp_info", scope: !294, file: !4, line: 518, baseType: !398, size: 64, offset: 2368)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_component_info", file: !4, line: 179, baseType: !400)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 116, size: 768, elements: !401)
!401 = !{!402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "component_id", scope: !400, file: !4, line: 120, baseType: !171, size: 32)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "component_index", scope: !400, file: !4, line: 121, baseType: !171, size: 32, offset: 32)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "h_samp_factor", scope: !400, file: !4, line: 122, baseType: !171, size: 32, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "v_samp_factor", scope: !400, file: !4, line: 123, baseType: !171, size: 32, offset: 96)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_no", scope: !400, file: !4, line: 124, baseType: !171, size: 32, offset: 128)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "dc_tbl_no", scope: !400, file: !4, line: 129, baseType: !171, size: 32, offset: 160)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tbl_no", scope: !400, file: !4, line: 130, baseType: !171, size: 32, offset: 192)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "width_in_blocks", scope: !400, file: !4, line: 139, baseType: !228, size: 32, offset: 224)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "height_in_blocks", scope: !400, file: !4, line: 140, baseType: !228, size: 32, offset: 256)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "DCT_scaled_size", scope: !400, file: !4, line: 147, baseType: !171, size: 32, offset: 288)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_width", scope: !400, file: !4, line: 154, baseType: !228, size: 32, offset: 320)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_height", scope: !400, file: !4, line: 155, baseType: !228, size: 32, offset: 352)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "component_needed", scope: !400, file: !4, line: 160, baseType: !250, size: 32, offset: 384)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_width", scope: !400, file: !4, line: 164, baseType: !171, size: 32, offset: 416)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_height", scope: !400, file: !4, line: 165, baseType: !171, size: 32, offset: 448)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_blocks", scope: !400, file: !4, line: 166, baseType: !171, size: 32, offset: 480)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_sample_width", scope: !400, file: !4, line: 167, baseType: !171, size: 32, offset: 512)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "last_col_width", scope: !400, file: !4, line: 168, baseType: !171, size: 32, offset: 544)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "last_row_height", scope: !400, file: !4, line: 169, baseType: !171, size: 32, offset: 576)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "quant_table", scope: !400, file: !4, line: 175, baseType: !368, size: 64, offset: 640)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "dct_table", scope: !400, file: !4, line: 178, baseType: !212, size: 64, offset: 704)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "progressive_mode", scope: !294, file: !4, line: 521, baseType: !250, size: 32, offset: 2432)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "arith_code", scope: !294, file: !4, line: 522, baseType: !250, size: 32, offset: 2464)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_L", scope: !294, file: !4, line: 524, baseType: !426, size: 128, offset: 2496)
!426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 128, elements: !427)
!427 = !{!428}
!428 = !DISubrange(count: 16)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_U", scope: !294, file: !4, line: 525, baseType: !426, size: 128, offset: 2624)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "arith_ac_K", scope: !294, file: !4, line: 526, baseType: !426, size: 128, offset: 2752)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "restart_interval", scope: !294, file: !4, line: 528, baseType: !5, size: 32, offset: 2880)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "saw_JFIF_marker", scope: !294, file: !4, line: 533, baseType: !250, size: 32, offset: 2912)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "density_unit", scope: !294, file: !4, line: 535, baseType: !387, size: 8, offset: 2944)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "X_density", scope: !294, file: !4, line: 536, baseType: !374, size: 16, offset: 2960)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "Y_density", scope: !294, file: !4, line: 537, baseType: !374, size: 16, offset: 2976)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "saw_Adobe_marker", scope: !294, file: !4, line: 538, baseType: !250, size: 32, offset: 3008)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "Adobe_transform", scope: !294, file: !4, line: 539, baseType: !387, size: 8, offset: 3040)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "CCIR601_sampling", scope: !294, file: !4, line: 541, baseType: !250, size: 32, offset: 3072)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "max_h_samp_factor", scope: !294, file: !4, line: 550, baseType: !171, size: 32, offset: 3104)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "max_v_samp_factor", scope: !294, file: !4, line: 551, baseType: !171, size: 32, offset: 3136)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "min_DCT_scaled_size", scope: !294, file: !4, line: 553, baseType: !171, size: 32, offset: 3168)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "total_iMCU_rows", scope: !294, file: !4, line: 555, baseType: !228, size: 32, offset: 3200)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "sample_range_limit", scope: !294, file: !4, line: 564, baseType: !224, size: 64, offset: 3264)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "comps_in_scan", scope: !294, file: !4, line: 571, baseType: !171, size: 32, offset: 3328)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "cur_comp_info", scope: !294, file: !4, line: 572, baseType: !446, size: 256, offset: 3392)
!446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 256, elements: !377)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "MCUs_per_row", scope: !294, file: !4, line: 575, baseType: !228, size: 32, offset: 3648)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_rows_in_scan", scope: !294, file: !4, line: 576, baseType: !228, size: 32, offset: 3680)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_in_MCU", scope: !294, file: !4, line: 578, baseType: !171, size: 32, offset: 3712)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_membership", scope: !294, file: !4, line: 579, baseType: !451, size: 320, offset: 3744)
!451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 320, elements: !452)
!452 = !{!453}
!453 = !DISubrange(count: 10)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "Ss", scope: !294, file: !4, line: 583, baseType: !171, size: 32, offset: 4064)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "Se", scope: !294, file: !4, line: 583, baseType: !171, size: 32, offset: 4096)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "Ah", scope: !294, file: !4, line: 583, baseType: !171, size: 32, offset: 4128)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "Al", scope: !294, file: !4, line: 583, baseType: !171, size: 32, offset: 4160)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "unread_marker", scope: !294, file: !4, line: 589, baseType: !171, size: 32, offset: 4192)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !294, file: !4, line: 594, baseType: !460, size: 64, offset: 4224)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_decomp_master", file: !24, line: 136, size: 192, elements: !462)
!462 = !{!463, !464, !465}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_for_output_pass", scope: !461, file: !24, line: 137, baseType: !311, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "finish_output_pass", scope: !461, file: !24, line: 138, baseType: !311, size: 64, offset: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "is_dummy_pass", scope: !461, file: !24, line: 141, baseType: !250, size: 32, offset: 128)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "main", scope: !294, file: !4, line: 595, baseType: !467, size: 64, offset: 4288)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_d_main_controller", file: !24, line: 157, size: 128, elements: !469)
!469 = !{!470, !475}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !468, file: !24, line: 158, baseType: !471, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DISubroutineType(types: !473)
!473 = !{null, !292, !474}
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_BUF_MODE", file: !24, line: 22, baseType: !23)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "process_data", scope: !468, file: !24, line: 159, baseType: !476, size: 64, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{null, !292, !221, !479, !228}
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "coef", scope: !294, file: !4, line: 596, baseType: !481, size: 64, offset: 4352)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_d_coef_controller", file: !24, line: 165, size: 320, elements: !483)
!483 = !{!484, !485, !489, !490, !496}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "start_input_pass", scope: !482, file: !24, line: 166, baseType: !311, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "consume_data", scope: !482, file: !24, line: 167, baseType: !486, size: 64, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{!171, !292}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "start_output_pass", scope: !482, file: !24, line: 168, baseType: !311, size: 64, offset: 128)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "decompress_data", scope: !482, file: !24, line: 169, baseType: !491, size: 64, offset: 192)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DISubroutineType(types: !493)
!493 = !{!171, !292, !494}
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPIMAGE", file: !4, line: 68, baseType: !495)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "coef_arrays", scope: !482, file: !24, line: 172, baseType: !497, size: 64, offset: 256)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "post", scope: !294, file: !4, line: 597, baseType: !499, size: 64, offset: 4416)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_d_post_controller", file: !24, line: 176, size: 128, elements: !501)
!501 = !{!502, !503}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !500, file: !24, line: 177, baseType: !471, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "post_process_data", scope: !500, file: !24, line: 178, baseType: !504, size: 64, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{null, !292, !494, !479, !228, !221, !479, !228}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "inputctl", scope: !294, file: !4, line: 598, baseType: !508, size: 64, offset: 4480)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_input_controller", file: !24, line: 145, size: 320, elements: !510)
!510 = !{!511, !512, !513, !514, !515, !516}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "consume_input", scope: !509, file: !24, line: 146, baseType: !486, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "reset_input_controller", scope: !509, file: !24, line: 147, baseType: !311, size: 64, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "start_input_pass", scope: !509, file: !24, line: 148, baseType: !311, size: 64, offset: 128)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "finish_input_pass", scope: !509, file: !24, line: 149, baseType: !311, size: 64, offset: 192)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "has_multiple_scans", scope: !509, file: !24, line: 152, baseType: !250, size: 32, offset: 256)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "eoi_reached", scope: !509, file: !24, line: 153, baseType: !250, size: 32, offset: 288)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "marker", scope: !294, file: !4, line: 599, baseType: !518, size: 64, offset: 4544)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_marker_reader", file: !24, line: 188, size: 1408, elements: !520)
!520 = !{!521, !522, !523, !525, !526, !528, !529, !530, !531}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "reset_marker_reader", scope: !519, file: !24, line: 189, baseType: !311, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "read_markers", scope: !519, file: !24, line: 194, baseType: !486, size: 64, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "read_restart_marker", scope: !519, file: !24, line: 196, baseType: !524, size: 64, offset: 128)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_marker_parser_method", file: !4, line: 781, baseType: !315)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "process_COM", scope: !519, file: !24, line: 198, baseType: !524, size: 64, offset: 192)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "process_APPn", scope: !519, file: !24, line: 199, baseType: !527, size: 1024, offset: 256)
!527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !524, size: 1024, elements: !427)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "saw_SOI", scope: !519, file: !24, line: 204, baseType: !250, size: 32, offset: 1280)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "saw_SOF", scope: !519, file: !24, line: 205, baseType: !250, size: 32, offset: 1312)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "next_restart_num", scope: !519, file: !24, line: 206, baseType: !171, size: 32, offset: 1344)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "discarded_bytes", scope: !519, file: !24, line: 207, baseType: !5, size: 32, offset: 1376)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "entropy", scope: !294, file: !4, line: 600, baseType: !533, size: 64, offset: 4608)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_entropy_decoder", file: !24, line: 211, size: 128, elements: !535)
!535 = !{!536, !537}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !534, file: !24, line: 212, baseType: !311, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "decode_mcu", scope: !534, file: !24, line: 213, baseType: !538, size: 64, offset: 64)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{!250, !292, !234}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "idct", scope: !294, file: !4, line: 601, baseType: !542, size: 64, offset: 4672)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_inverse_dct", file: !24, line: 223, size: 704, elements: !544)
!544 = !{!545, !546}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !543, file: !24, line: 224, baseType: !311, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "inverse_DCT", scope: !543, file: !24, line: 226, baseType: !547, size: 640, offset: 64)
!547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !548, size: 640, elements: !452)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "inverse_DCT_method_ptr", file: !24, line: 218, baseType: !549)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DISubroutineType(types: !551)
!551 = !{null, !292, !398, !552, !221, !228}
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "JCOEFPTR", file: !4, line: 75, baseType: !553)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "upsample", scope: !294, file: !4, line: 602, baseType: !555, size: 64, offset: 4736)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_upsampler", file: !24, line: 230, size: 192, elements: !557)
!557 = !{!558, !559, !560}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !556, file: !24, line: 231, baseType: !311, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "upsample", scope: !556, file: !24, line: 232, baseType: !504, size: 64, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "need_context_rows", scope: !556, file: !24, line: 240, baseType: !250, size: 32, offset: 128)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "cconvert", scope: !294, file: !4, line: 603, baseType: !562, size: 64, offset: 4800)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_color_deconverter", file: !24, line: 244, size: 128, elements: !564)
!564 = !{!565, !566}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !563, file: !24, line: 245, baseType: !311, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "color_convert", scope: !563, file: !24, line: 246, baseType: !567, size: 64, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DISubroutineType(types: !569)
!569 = !{null, !292, !494, !228, !221, !171}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "cquantize", scope: !294, file: !4, line: 604, baseType: !571, size: 64, offset: 4864)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_color_quantizer", file: !24, line: 252, size: 256, elements: !573)
!573 = !{!574, !578, !582, !583}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !572, file: !24, line: 253, baseType: !575, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{null, !292, !250}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "color_quantize", scope: !572, file: !24, line: 254, baseType: !579, size: 64, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DISubroutineType(types: !581)
!581 = !{null, !292, !221, !221, !171}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "finish_pass", scope: !572, file: !24, line: 257, baseType: !311, size: 64, offset: 128)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "new_color_map", scope: !572, file: !24, line: 258, baseType: !311, size: 64, offset: 192)
!584 = !{}
!585 = !DILocalVariable(name: "cinfo", arg: 1, scope: !289, file: !1, line: 30, type: !292)
!586 = !DILocation(line: 30, column: 41, scope: !289)
!587 = !DILocalVariable(name: "version", arg: 2, scope: !289, file: !1, line: 30, type: !171)
!588 = !DILocation(line: 30, column: 52, scope: !289)
!589 = !DILocalVariable(name: "structsize", arg: 3, scope: !289, file: !1, line: 30, type: !213)
!590 = !DILocation(line: 30, column: 68, scope: !289)
!591 = !DILocalVariable(name: "i", scope: !289, file: !1, line: 32, type: !171)
!592 = !DILocation(line: 32, column: 7, scope: !289)
!593 = !DILocation(line: 35, column: 3, scope: !289)
!594 = !DILocation(line: 35, column: 10, scope: !289)
!595 = !DILocation(line: 35, column: 14, scope: !289)
!596 = !DILocation(line: 36, column: 7, scope: !597)
!597 = distinct !DILexicalBlock(scope: !289, file: !1, line: 36, column: 7)
!598 = !DILocation(line: 36, column: 15, scope: !597)
!599 = !DILocation(line: 37, column: 5, scope: !597)
!600 = !DILocation(line: 38, column: 7, scope: !601)
!601 = distinct !DILexicalBlock(scope: !289, file: !1, line: 38, column: 7)
!602 = !DILocation(line: 38, column: 18, scope: !601)
!603 = !DILocation(line: 39, column: 5, scope: !601)
!604 = !DILocalVariable(name: "err", scope: !605, file: !1, line: 46, type: !160)
!605 = distinct !DILexicalBlock(scope: !289, file: !1, line: 45, column: 3)
!606 = !DILocation(line: 46, column: 29, scope: !605)
!607 = !DILocation(line: 46, column: 35, scope: !605)
!608 = !DILocation(line: 46, column: 42, scope: !605)
!609 = !DILocation(line: 47, column: 5, scope: !605)
!610 = !DILocation(line: 48, column: 18, scope: !605)
!611 = !DILocation(line: 48, column: 5, scope: !605)
!612 = !DILocation(line: 48, column: 12, scope: !605)
!613 = !DILocation(line: 48, column: 16, scope: !605)
!614 = !DILocation(line: 50, column: 3, scope: !289)
!615 = !DILocation(line: 50, column: 10, scope: !289)
!616 = !DILocation(line: 50, column: 26, scope: !289)
!617 = !DILocation(line: 53, column: 35, scope: !289)
!618 = !DILocation(line: 53, column: 3, scope: !289)
!619 = !DILocation(line: 56, column: 3, scope: !289)
!620 = !DILocation(line: 56, column: 10, scope: !289)
!621 = !DILocation(line: 56, column: 19, scope: !289)
!622 = !DILocation(line: 57, column: 3, scope: !289)
!623 = !DILocation(line: 57, column: 10, scope: !289)
!624 = !DILocation(line: 57, column: 14, scope: !289)
!625 = !DILocation(line: 59, column: 10, scope: !626)
!626 = distinct !DILexicalBlock(scope: !289, file: !1, line: 59, column: 3)
!627 = !DILocation(line: 59, column: 8, scope: !626)
!628 = !DILocation(line: 59, column: 15, scope: !629)
!629 = distinct !DILexicalBlock(scope: !626, file: !1, line: 59, column: 3)
!630 = !DILocation(line: 59, column: 17, scope: !629)
!631 = !DILocation(line: 59, column: 3, scope: !626)
!632 = !DILocation(line: 60, column: 5, scope: !629)
!633 = !DILocation(line: 60, column: 12, scope: !629)
!634 = !DILocation(line: 60, column: 27, scope: !629)
!635 = !DILocation(line: 60, column: 30, scope: !629)
!636 = !DILocation(line: 59, column: 36, scope: !629)
!637 = !DILocation(line: 59, column: 3, scope: !629)
!638 = distinct !{!638, !631, !639, !640}
!639 = !DILocation(line: 60, column: 32, scope: !626)
!640 = !{!"llvm.loop.mustprogress"}
!641 = !DILocation(line: 62, column: 10, scope: !642)
!642 = distinct !DILexicalBlock(scope: !289, file: !1, line: 62, column: 3)
!643 = !DILocation(line: 62, column: 8, scope: !642)
!644 = !DILocation(line: 62, column: 15, scope: !645)
!645 = distinct !DILexicalBlock(scope: !642, file: !1, line: 62, column: 3)
!646 = !DILocation(line: 62, column: 17, scope: !645)
!647 = !DILocation(line: 62, column: 3, scope: !642)
!648 = !DILocation(line: 63, column: 5, scope: !649)
!649 = distinct !DILexicalBlock(scope: !645, file: !1, line: 62, column: 39)
!650 = !DILocation(line: 63, column: 12, scope: !649)
!651 = !DILocation(line: 63, column: 29, scope: !649)
!652 = !DILocation(line: 63, column: 32, scope: !649)
!653 = !DILocation(line: 64, column: 5, scope: !649)
!654 = !DILocation(line: 64, column: 12, scope: !649)
!655 = !DILocation(line: 64, column: 29, scope: !649)
!656 = !DILocation(line: 64, column: 32, scope: !649)
!657 = !DILocation(line: 65, column: 3, scope: !649)
!658 = !DILocation(line: 62, column: 35, scope: !645)
!659 = !DILocation(line: 62, column: 3, scope: !645)
!660 = distinct !{!660, !647, !661, !640}
!661 = !DILocation(line: 65, column: 3, scope: !642)
!662 = !DILocation(line: 70, column: 23, scope: !289)
!663 = !DILocation(line: 70, column: 3, scope: !289)
!664 = !DILocation(line: 73, column: 26, scope: !289)
!665 = !DILocation(line: 73, column: 3, scope: !289)
!666 = !DILocation(line: 76, column: 3, scope: !289)
!667 = !DILocation(line: 76, column: 10, scope: !289)
!668 = !DILocation(line: 76, column: 23, scope: !289)
!669 = !DILocation(line: 77, column: 1, scope: !289)
!670 = distinct !DISubprogram(name: "jpeg_destroy_decompress", scope: !1, file: !1, line: 85, type: !312, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !584)
!671 = !DILocalVariable(name: "cinfo", arg: 1, scope: !670, file: !1, line: 85, type: !292)
!672 = !DILocation(line: 85, column: 43, scope: !670)
!673 = !DILocation(line: 87, column: 31, scope: !670)
!674 = !DILocation(line: 87, column: 3, scope: !670)
!675 = !DILocation(line: 88, column: 1, scope: !670)
!676 = distinct !DISubprogram(name: "jpeg_abort_decompress", scope: !1, file: !1, line: 97, type: !312, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !584)
!677 = !DILocalVariable(name: "cinfo", arg: 1, scope: !676, file: !1, line: 97, type: !292)
!678 = !DILocation(line: 97, column: 41, scope: !676)
!679 = !DILocation(line: 99, column: 29, scope: !676)
!680 = !DILocation(line: 99, column: 3, scope: !676)
!681 = !DILocation(line: 100, column: 1, scope: !676)
!682 = distinct !DISubprogram(name: "jpeg_set_marker_processor", scope: !1, file: !1, line: 108, type: !683, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !584)
!683 = !DISubroutineType(types: !684)
!684 = !{null, !292, !171, !524}
!685 = !DILocalVariable(name: "cinfo", arg: 1, scope: !682, file: !1, line: 108, type: !292)
!686 = !DILocation(line: 108, column: 45, scope: !682)
!687 = !DILocalVariable(name: "marker_code", arg: 2, scope: !682, file: !1, line: 108, type: !171)
!688 = !DILocation(line: 108, column: 56, scope: !682)
!689 = !DILocalVariable(name: "routine", arg: 3, scope: !682, file: !1, line: 109, type: !524)
!690 = !DILocation(line: 109, column: 33, scope: !682)
!691 = !DILocation(line: 111, column: 7, scope: !692)
!692 = distinct !DILexicalBlock(scope: !682, file: !1, line: 111, column: 7)
!693 = !DILocation(line: 111, column: 19, scope: !692)
!694 = !DILocation(line: 112, column: 34, scope: !692)
!695 = !DILocation(line: 112, column: 5, scope: !692)
!696 = !DILocation(line: 112, column: 12, scope: !692)
!697 = !DILocation(line: 112, column: 20, scope: !692)
!698 = !DILocation(line: 112, column: 32, scope: !692)
!699 = !DILocation(line: 113, column: 12, scope: !700)
!700 = distinct !DILexicalBlock(scope: !692, file: !1, line: 113, column: 12)
!701 = !DILocation(line: 113, column: 24, scope: !700)
!702 = !DILocation(line: 113, column: 37, scope: !700)
!703 = !DILocation(line: 113, column: 40, scope: !700)
!704 = !DILocation(line: 113, column: 52, scope: !700)
!705 = !DILocation(line: 114, column: 58, scope: !700)
!706 = !DILocation(line: 114, column: 5, scope: !700)
!707 = !DILocation(line: 114, column: 12, scope: !700)
!708 = !DILocation(line: 114, column: 20, scope: !700)
!709 = !DILocation(line: 114, column: 33, scope: !700)
!710 = !DILocation(line: 114, column: 44, scope: !700)
!711 = !DILocation(line: 114, column: 56, scope: !700)
!712 = !DILocation(line: 116, column: 5, scope: !700)
!713 = !DILocation(line: 117, column: 1, scope: !682)
!714 = distinct !DISubprogram(name: "jpeg_read_header", scope: !1, file: !1, line: 252, type: !715, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !584)
!715 = !DISubroutineType(types: !716)
!716 = !{!171, !292, !250}
!717 = !DILocalVariable(name: "cinfo", arg: 1, scope: !714, file: !1, line: 252, type: !292)
!718 = !DILocation(line: 252, column: 36, scope: !714)
!719 = !DILocalVariable(name: "require_image", arg: 2, scope: !714, file: !1, line: 252, type: !250)
!720 = !DILocation(line: 252, column: 51, scope: !714)
!721 = !DILocalVariable(name: "retcode", scope: !714, file: !1, line: 254, type: !171)
!722 = !DILocation(line: 254, column: 7, scope: !714)
!723 = !DILocation(line: 256, column: 7, scope: !724)
!724 = distinct !DILexicalBlock(scope: !714, file: !1, line: 256, column: 7)
!725 = !DILocation(line: 256, column: 14, scope: !724)
!726 = !DILocation(line: 256, column: 27, scope: !724)
!727 = !DILocation(line: 256, column: 43, scope: !724)
!728 = !DILocation(line: 257, column: 7, scope: !724)
!729 = !DILocation(line: 257, column: 14, scope: !724)
!730 = !DILocation(line: 257, column: 27, scope: !724)
!731 = !DILocation(line: 258, column: 5, scope: !724)
!732 = !DILocation(line: 260, column: 32, scope: !714)
!733 = !DILocation(line: 260, column: 13, scope: !714)
!734 = !DILocation(line: 260, column: 11, scope: !714)
!735 = !DILocation(line: 262, column: 11, scope: !714)
!736 = !DILocation(line: 262, column: 3, scope: !714)
!737 = !DILocation(line: 264, column: 13, scope: !738)
!738 = distinct !DILexicalBlock(scope: !714, file: !1, line: 262, column: 20)
!739 = !DILocation(line: 265, column: 5, scope: !738)
!740 = !DILocation(line: 267, column: 9, scope: !741)
!741 = distinct !DILexicalBlock(scope: !738, file: !1, line: 267, column: 9)
!742 = !DILocation(line: 268, column: 7, scope: !741)
!743 = !DILocation(line: 273, column: 31, scope: !738)
!744 = !DILocation(line: 273, column: 5, scope: !738)
!745 = !DILocation(line: 274, column: 13, scope: !738)
!746 = !DILocation(line: 275, column: 5, scope: !738)
!747 = !DILocation(line: 278, column: 5, scope: !738)
!748 = !DILocation(line: 281, column: 10, scope: !714)
!749 = !DILocation(line: 281, column: 3, scope: !714)
!750 = distinct !DISubprogram(name: "jpeg_consume_input", scope: !1, file: !1, line: 298, type: !487, scopeLine: 299, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !584)
!751 = !DILocalVariable(name: "cinfo", arg: 1, scope: !750, file: !1, line: 298, type: !292)
!752 = !DILocation(line: 298, column: 38, scope: !750)
!753 = !DILocalVariable(name: "retcode", scope: !750, file: !1, line: 300, type: !171)
!754 = !DILocation(line: 300, column: 7, scope: !750)
!755 = !DILocation(line: 303, column: 11, scope: !750)
!756 = !DILocation(line: 303, column: 18, scope: !750)
!757 = !DILocation(line: 303, column: 3, scope: !750)
!758 = !DILocation(line: 306, column: 7, scope: !759)
!759 = distinct !DILexicalBlock(scope: !750, file: !1, line: 303, column: 32)
!760 = !DILocation(line: 306, column: 14, scope: !759)
!761 = !DILocation(line: 306, column: 24, scope: !759)
!762 = !DILocation(line: 306, column: 49, scope: !759)
!763 = !DILocation(line: 306, column: 5, scope: !759)
!764 = !DILocation(line: 308, column: 7, scope: !759)
!765 = !DILocation(line: 308, column: 14, scope: !759)
!766 = !DILocation(line: 308, column: 19, scope: !759)
!767 = !DILocation(line: 308, column: 33, scope: !759)
!768 = !DILocation(line: 308, column: 5, scope: !759)
!769 = !DILocation(line: 309, column: 5, scope: !759)
!770 = !DILocation(line: 309, column: 12, scope: !759)
!771 = !DILocation(line: 309, column: 25, scope: !759)
!772 = !DILocation(line: 312, column: 17, scope: !759)
!773 = !DILocation(line: 312, column: 24, scope: !759)
!774 = !DILocation(line: 312, column: 34, scope: !759)
!775 = !DILocation(line: 312, column: 50, scope: !759)
!776 = !DILocation(line: 312, column: 15, scope: !759)
!777 = !DILocation(line: 312, column: 13, scope: !759)
!778 = !DILocation(line: 313, column: 9, scope: !779)
!779 = distinct !DILexicalBlock(scope: !759, file: !1, line: 313, column: 9)
!780 = !DILocation(line: 313, column: 17, scope: !779)
!781 = !DILocation(line: 315, column: 32, scope: !782)
!782 = distinct !DILexicalBlock(scope: !779, file: !1, line: 313, column: 38)
!783 = !DILocation(line: 315, column: 7, scope: !782)
!784 = !DILocation(line: 317, column: 7, scope: !782)
!785 = !DILocation(line: 317, column: 14, scope: !782)
!786 = !DILocation(line: 317, column: 27, scope: !782)
!787 = !DILocation(line: 318, column: 5, scope: !782)
!788 = !DILocation(line: 319, column: 5, scope: !759)
!789 = !DILocation(line: 322, column: 13, scope: !759)
!790 = !DILocation(line: 323, column: 5, scope: !759)
!791 = !DILocation(line: 331, column: 17, scope: !759)
!792 = !DILocation(line: 331, column: 24, scope: !759)
!793 = !DILocation(line: 331, column: 34, scope: !759)
!794 = !DILocation(line: 331, column: 50, scope: !759)
!795 = !DILocation(line: 331, column: 15, scope: !759)
!796 = !DILocation(line: 331, column: 13, scope: !759)
!797 = !DILocation(line: 332, column: 5, scope: !759)
!798 = !DILocation(line: 334, column: 5, scope: !759)
!799 = !DILocation(line: 335, column: 3, scope: !759)
!800 = !DILocation(line: 336, column: 10, scope: !750)
!801 = !DILocation(line: 336, column: 3, scope: !750)
!802 = distinct !DISubprogram(name: "default_decompress_parms", scope: !1, file: !1, line: 125, type: !312, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !584)
!803 = !DILocalVariable(name: "cinfo", arg: 1, scope: !802, file: !1, line: 125, type: !292)
!804 = !DILocation(line: 125, column: 44, scope: !802)
!805 = !DILocation(line: 130, column: 11, scope: !802)
!806 = !DILocation(line: 130, column: 18, scope: !802)
!807 = !DILocation(line: 130, column: 3, scope: !802)
!808 = !DILocation(line: 132, column: 5, scope: !809)
!809 = distinct !DILexicalBlock(scope: !802, file: !1, line: 130, column: 34)
!810 = !DILocation(line: 132, column: 12, scope: !809)
!811 = !DILocation(line: 132, column: 29, scope: !809)
!812 = !DILocation(line: 133, column: 5, scope: !809)
!813 = !DILocation(line: 133, column: 12, scope: !809)
!814 = !DILocation(line: 133, column: 28, scope: !809)
!815 = !DILocation(line: 134, column: 5, scope: !809)
!816 = !DILocation(line: 137, column: 9, scope: !817)
!817 = distinct !DILexicalBlock(scope: !809, file: !1, line: 137, column: 9)
!818 = !DILocation(line: 137, column: 16, scope: !817)
!819 = !DILocation(line: 138, column: 7, scope: !820)
!820 = distinct !DILexicalBlock(scope: !817, file: !1, line: 137, column: 33)
!821 = !DILocation(line: 138, column: 14, scope: !820)
!822 = !DILocation(line: 138, column: 31, scope: !820)
!823 = !DILocation(line: 139, column: 5, scope: !820)
!824 = !DILocation(line: 139, column: 16, scope: !825)
!825 = distinct !DILexicalBlock(scope: !817, file: !1, line: 139, column: 16)
!826 = !DILocation(line: 139, column: 23, scope: !825)
!827 = !DILocation(line: 140, column: 15, scope: !828)
!828 = distinct !DILexicalBlock(scope: !825, file: !1, line: 139, column: 41)
!829 = !DILocation(line: 140, column: 22, scope: !828)
!830 = !DILocation(line: 140, column: 7, scope: !828)
!831 = !DILocation(line: 142, column: 2, scope: !832)
!832 = distinct !DILexicalBlock(scope: !828, file: !1, line: 140, column: 39)
!833 = !DILocation(line: 142, column: 9, scope: !832)
!834 = !DILocation(line: 142, column: 26, scope: !832)
!835 = !DILocation(line: 143, column: 2, scope: !832)
!836 = !DILocation(line: 145, column: 2, scope: !832)
!837 = !DILocation(line: 145, column: 9, scope: !832)
!838 = !DILocation(line: 145, column: 26, scope: !832)
!839 = !DILocation(line: 146, column: 2, scope: !832)
!840 = !DILocation(line: 148, column: 2, scope: !832)
!841 = !DILocation(line: 149, column: 2, scope: !832)
!842 = !DILocation(line: 149, column: 9, scope: !832)
!843 = !DILocation(line: 149, column: 26, scope: !832)
!844 = !DILocation(line: 150, column: 2, scope: !832)
!845 = !DILocation(line: 152, column: 5, scope: !828)
!846 = !DILocalVariable(name: "cid0", scope: !847, file: !1, line: 154, type: !171)
!847 = distinct !DILexicalBlock(scope: !825, file: !1, line: 152, column: 12)
!848 = !DILocation(line: 154, column: 11, scope: !847)
!849 = !DILocation(line: 154, column: 18, scope: !847)
!850 = !DILocation(line: 154, column: 25, scope: !847)
!851 = !DILocation(line: 154, column: 38, scope: !847)
!852 = !DILocalVariable(name: "cid1", scope: !847, file: !1, line: 155, type: !171)
!853 = !DILocation(line: 155, column: 11, scope: !847)
!854 = !DILocation(line: 155, column: 18, scope: !847)
!855 = !DILocation(line: 155, column: 25, scope: !847)
!856 = !DILocation(line: 155, column: 38, scope: !847)
!857 = !DILocalVariable(name: "cid2", scope: !847, file: !1, line: 156, type: !171)
!858 = !DILocation(line: 156, column: 11, scope: !847)
!859 = !DILocation(line: 156, column: 18, scope: !847)
!860 = !DILocation(line: 156, column: 25, scope: !847)
!861 = !DILocation(line: 156, column: 38, scope: !847)
!862 = !DILocation(line: 158, column: 11, scope: !863)
!863 = distinct !DILexicalBlock(scope: !847, file: !1, line: 158, column: 11)
!864 = !DILocation(line: 158, column: 16, scope: !863)
!865 = !DILocation(line: 158, column: 21, scope: !863)
!866 = !DILocation(line: 158, column: 24, scope: !863)
!867 = !DILocation(line: 158, column: 29, scope: !863)
!868 = !DILocation(line: 158, column: 34, scope: !863)
!869 = !DILocation(line: 158, column: 37, scope: !863)
!870 = !DILocation(line: 158, column: 42, scope: !863)
!871 = !DILocation(line: 159, column: 2, scope: !863)
!872 = !DILocation(line: 159, column: 9, scope: !863)
!873 = !DILocation(line: 159, column: 26, scope: !863)
!874 = !DILocation(line: 160, column: 16, scope: !875)
!875 = distinct !DILexicalBlock(scope: !863, file: !1, line: 160, column: 16)
!876 = !DILocation(line: 160, column: 21, scope: !875)
!877 = !DILocation(line: 160, column: 27, scope: !875)
!878 = !DILocation(line: 160, column: 30, scope: !875)
!879 = !DILocation(line: 160, column: 35, scope: !875)
!880 = !DILocation(line: 160, column: 41, scope: !875)
!881 = !DILocation(line: 160, column: 44, scope: !875)
!882 = !DILocation(line: 160, column: 49, scope: !875)
!883 = !DILocation(line: 161, column: 2, scope: !875)
!884 = !DILocation(line: 161, column: 9, scope: !875)
!885 = !DILocation(line: 161, column: 26, scope: !875)
!886 = !DILocation(line: 163, column: 2, scope: !887)
!887 = distinct !DILexicalBlock(scope: !875, file: !1, line: 162, column: 12)
!888 = !DILocalVariable(name: "_mp", scope: !889, file: !1, line: 163, type: !890)
!889 = distinct !DILexicalBlock(scope: !887, file: !1, line: 163, column: 2)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!891 = !DILocation(line: 163, column: 2, scope: !889)
!892 = !DILocation(line: 164, column: 2, scope: !887)
!893 = !DILocation(line: 164, column: 9, scope: !887)
!894 = !DILocation(line: 164, column: 26, scope: !887)
!895 = !DILocation(line: 168, column: 5, scope: !809)
!896 = !DILocation(line: 168, column: 12, scope: !809)
!897 = !DILocation(line: 168, column: 28, scope: !809)
!898 = !DILocation(line: 169, column: 5, scope: !809)
!899 = !DILocation(line: 172, column: 9, scope: !900)
!900 = distinct !DILexicalBlock(scope: !809, file: !1, line: 172, column: 9)
!901 = !DILocation(line: 172, column: 16, scope: !900)
!902 = !DILocation(line: 173, column: 15, scope: !903)
!903 = distinct !DILexicalBlock(scope: !900, file: !1, line: 172, column: 34)
!904 = !DILocation(line: 173, column: 22, scope: !903)
!905 = !DILocation(line: 173, column: 7, scope: !903)
!906 = !DILocation(line: 175, column: 2, scope: !907)
!907 = distinct !DILexicalBlock(scope: !903, file: !1, line: 173, column: 39)
!908 = !DILocation(line: 175, column: 9, scope: !907)
!909 = !DILocation(line: 175, column: 26, scope: !907)
!910 = !DILocation(line: 176, column: 2, scope: !907)
!911 = !DILocation(line: 178, column: 2, scope: !907)
!912 = !DILocation(line: 178, column: 9, scope: !907)
!913 = !DILocation(line: 178, column: 26, scope: !907)
!914 = !DILocation(line: 179, column: 2, scope: !907)
!915 = !DILocation(line: 181, column: 2, scope: !907)
!916 = !DILocation(line: 182, column: 2, scope: !907)
!917 = !DILocation(line: 182, column: 9, scope: !907)
!918 = !DILocation(line: 182, column: 26, scope: !907)
!919 = !DILocation(line: 183, column: 2, scope: !907)
!920 = !DILocation(line: 185, column: 5, scope: !903)
!921 = !DILocation(line: 187, column: 7, scope: !922)
!922 = distinct !DILexicalBlock(scope: !900, file: !1, line: 185, column: 12)
!923 = !DILocation(line: 187, column: 14, scope: !922)
!924 = !DILocation(line: 187, column: 31, scope: !922)
!925 = !DILocation(line: 189, column: 5, scope: !809)
!926 = !DILocation(line: 189, column: 12, scope: !809)
!927 = !DILocation(line: 189, column: 28, scope: !809)
!928 = !DILocation(line: 190, column: 5, scope: !809)
!929 = !DILocation(line: 193, column: 5, scope: !809)
!930 = !DILocation(line: 193, column: 12, scope: !809)
!931 = !DILocation(line: 193, column: 29, scope: !809)
!932 = !DILocation(line: 194, column: 5, scope: !809)
!933 = !DILocation(line: 194, column: 12, scope: !809)
!934 = !DILocation(line: 194, column: 28, scope: !809)
!935 = !DILocation(line: 195, column: 5, scope: !809)
!936 = !DILocation(line: 199, column: 3, scope: !802)
!937 = !DILocation(line: 199, column: 10, scope: !802)
!938 = !DILocation(line: 199, column: 20, scope: !802)
!939 = !DILocation(line: 200, column: 3, scope: !802)
!940 = !DILocation(line: 200, column: 10, scope: !802)
!941 = !DILocation(line: 200, column: 22, scope: !802)
!942 = !DILocation(line: 201, column: 3, scope: !802)
!943 = !DILocation(line: 201, column: 10, scope: !802)
!944 = !DILocation(line: 201, column: 23, scope: !802)
!945 = !DILocation(line: 202, column: 3, scope: !802)
!946 = !DILocation(line: 202, column: 10, scope: !802)
!947 = !DILocation(line: 202, column: 25, scope: !802)
!948 = !DILocation(line: 203, column: 3, scope: !802)
!949 = !DILocation(line: 203, column: 10, scope: !802)
!950 = !DILocation(line: 203, column: 23, scope: !802)
!951 = !DILocation(line: 204, column: 3, scope: !802)
!952 = !DILocation(line: 204, column: 10, scope: !802)
!953 = !DILocation(line: 204, column: 21, scope: !802)
!954 = !DILocation(line: 205, column: 3, scope: !802)
!955 = !DILocation(line: 205, column: 10, scope: !802)
!956 = !DILocation(line: 205, column: 30, scope: !802)
!957 = !DILocation(line: 206, column: 3, scope: !802)
!958 = !DILocation(line: 206, column: 10, scope: !802)
!959 = !DILocation(line: 206, column: 29, scope: !802)
!960 = !DILocation(line: 207, column: 3, scope: !802)
!961 = !DILocation(line: 207, column: 10, scope: !802)
!962 = !DILocation(line: 207, column: 26, scope: !802)
!963 = !DILocation(line: 209, column: 3, scope: !802)
!964 = !DILocation(line: 209, column: 10, scope: !802)
!965 = !DILocation(line: 209, column: 22, scope: !802)
!966 = !DILocation(line: 211, column: 3, scope: !802)
!967 = !DILocation(line: 211, column: 10, scope: !802)
!968 = !DILocation(line: 211, column: 28, scope: !802)
!969 = !DILocation(line: 215, column: 3, scope: !802)
!970 = !DILocation(line: 215, column: 10, scope: !802)
!971 = !DILocation(line: 215, column: 35, scope: !802)
!972 = !DILocation(line: 216, column: 3, scope: !802)
!973 = !DILocation(line: 216, column: 10, scope: !802)
!974 = !DILocation(line: 216, column: 19, scope: !802)
!975 = !DILocation(line: 218, column: 3, scope: !802)
!976 = !DILocation(line: 218, column: 10, scope: !802)
!977 = !DILocation(line: 218, column: 29, scope: !802)
!978 = !DILocation(line: 219, column: 3, scope: !802)
!979 = !DILocation(line: 219, column: 10, scope: !802)
!980 = !DILocation(line: 219, column: 32, scope: !802)
!981 = !DILocation(line: 220, column: 3, scope: !802)
!982 = !DILocation(line: 220, column: 10, scope: !802)
!983 = !DILocation(line: 220, column: 29, scope: !802)
!984 = !DILocation(line: 221, column: 1, scope: !802)
!985 = distinct !DISubprogram(name: "jpeg_input_complete", scope: !1, file: !1, line: 345, type: !316, scopeLine: 346, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !584)
!986 = !DILocalVariable(name: "cinfo", arg: 1, scope: !985, file: !1, line: 345, type: !292)
!987 = !DILocation(line: 345, column: 39, scope: !985)
!988 = !DILocation(line: 348, column: 7, scope: !989)
!989 = distinct !DILexicalBlock(scope: !985, file: !1, line: 348, column: 7)
!990 = !DILocation(line: 348, column: 14, scope: !989)
!991 = !DILocation(line: 348, column: 27, scope: !989)
!992 = !DILocation(line: 348, column: 42, scope: !989)
!993 = !DILocation(line: 349, column: 7, scope: !989)
!994 = !DILocation(line: 349, column: 14, scope: !989)
!995 = !DILocation(line: 349, column: 27, scope: !989)
!996 = !DILocation(line: 350, column: 5, scope: !989)
!997 = !DILocation(line: 351, column: 10, scope: !985)
!998 = !DILocation(line: 351, column: 17, scope: !985)
!999 = !DILocation(line: 351, column: 27, scope: !985)
!1000 = !DILocation(line: 351, column: 3, scope: !985)
!1001 = distinct !DISubprogram(name: "jpeg_has_multiple_scans", scope: !1, file: !1, line: 360, type: !316, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !584)
!1002 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1001, file: !1, line: 360, type: !292)
!1003 = !DILocation(line: 360, column: 43, scope: !1001)
!1004 = !DILocation(line: 363, column: 7, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1001, file: !1, line: 363, column: 7)
!1006 = !DILocation(line: 363, column: 14, scope: !1005)
!1007 = !DILocation(line: 363, column: 27, scope: !1005)
!1008 = !DILocation(line: 363, column: 42, scope: !1005)
!1009 = !DILocation(line: 364, column: 7, scope: !1005)
!1010 = !DILocation(line: 364, column: 14, scope: !1005)
!1011 = !DILocation(line: 364, column: 27, scope: !1005)
!1012 = !DILocation(line: 365, column: 5, scope: !1005)
!1013 = !DILocation(line: 366, column: 10, scope: !1001)
!1014 = !DILocation(line: 366, column: 17, scope: !1001)
!1015 = !DILocation(line: 366, column: 27, scope: !1001)
!1016 = !DILocation(line: 366, column: 3, scope: !1001)
!1017 = distinct !DISubprogram(name: "jpeg_finish_decompress", scope: !1, file: !1, line: 380, type: !316, scopeLine: 381, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !584)
!1018 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1017, file: !1, line: 380, type: !292)
!1019 = !DILocation(line: 380, column: 42, scope: !1017)
!1020 = !DILocation(line: 382, column: 8, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1017, file: !1, line: 382, column: 7)
!1022 = !DILocation(line: 382, column: 15, scope: !1021)
!1023 = !DILocation(line: 382, column: 28, scope: !1021)
!1024 = !DILocation(line: 382, column: 47, scope: !1021)
!1025 = !DILocation(line: 383, column: 8, scope: !1021)
!1026 = !DILocation(line: 383, column: 15, scope: !1021)
!1027 = !DILocation(line: 383, column: 28, scope: !1021)
!1028 = !DILocation(line: 383, column: 46, scope: !1021)
!1029 = !DILocation(line: 383, column: 51, scope: !1021)
!1030 = !DILocation(line: 383, column: 58, scope: !1021)
!1031 = !DILocation(line: 385, column: 9, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1033, file: !1, line: 385, column: 9)
!1033 = distinct !DILexicalBlock(scope: !1021, file: !1, line: 383, column: 74)
!1034 = !DILocation(line: 385, column: 16, scope: !1032)
!1035 = !DILocation(line: 385, column: 34, scope: !1032)
!1036 = !DILocation(line: 385, column: 41, scope: !1032)
!1037 = !DILocation(line: 385, column: 32, scope: !1032)
!1038 = !DILocation(line: 386, column: 7, scope: !1032)
!1039 = !DILocation(line: 387, column: 7, scope: !1033)
!1040 = !DILocation(line: 387, column: 14, scope: !1033)
!1041 = !DILocation(line: 387, column: 22, scope: !1033)
!1042 = !DILocation(line: 387, column: 43, scope: !1033)
!1043 = !DILocation(line: 387, column: 5, scope: !1033)
!1044 = !DILocation(line: 388, column: 5, scope: !1033)
!1045 = !DILocation(line: 388, column: 12, scope: !1033)
!1046 = !DILocation(line: 388, column: 25, scope: !1033)
!1047 = !DILocation(line: 389, column: 3, scope: !1033)
!1048 = !DILocation(line: 389, column: 14, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1021, file: !1, line: 389, column: 14)
!1050 = !DILocation(line: 389, column: 21, scope: !1049)
!1051 = !DILocation(line: 389, column: 34, scope: !1049)
!1052 = !DILocation(line: 391, column: 5, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1049, file: !1, line: 389, column: 54)
!1054 = !DILocation(line: 391, column: 12, scope: !1053)
!1055 = !DILocation(line: 391, column: 25, scope: !1053)
!1056 = !DILocation(line: 392, column: 3, scope: !1053)
!1057 = !DILocation(line: 392, column: 14, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1049, file: !1, line: 392, column: 14)
!1059 = !DILocation(line: 392, column: 21, scope: !1058)
!1060 = !DILocation(line: 392, column: 34, scope: !1058)
!1061 = !DILocation(line: 394, column: 5, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1058, file: !1, line: 392, column: 54)
!1063 = !DILocation(line: 395, column: 3, scope: !1062)
!1064 = !DILocation(line: 397, column: 3, scope: !1017)
!1065 = !DILocation(line: 397, column: 12, scope: !1017)
!1066 = !DILocation(line: 397, column: 19, scope: !1017)
!1067 = !DILocation(line: 397, column: 29, scope: !1017)
!1068 = !DILocation(line: 397, column: 10, scope: !1017)
!1069 = !DILocation(line: 398, column: 11, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1071, file: !1, line: 398, column: 9)
!1071 = distinct !DILexicalBlock(scope: !1017, file: !1, line: 397, column: 42)
!1072 = !DILocation(line: 398, column: 18, scope: !1070)
!1073 = !DILocation(line: 398, column: 28, scope: !1070)
!1074 = !DILocation(line: 398, column: 44, scope: !1070)
!1075 = !DILocation(line: 398, column: 9, scope: !1070)
!1076 = !DILocation(line: 398, column: 51, scope: !1070)
!1077 = !DILocation(line: 399, column: 7, scope: !1070)
!1078 = distinct !{!1078, !1064, !1079, !640}
!1079 = !DILocation(line: 400, column: 3, scope: !1017)
!1080 = !DILocation(line: 402, column: 5, scope: !1017)
!1081 = !DILocation(line: 402, column: 12, scope: !1017)
!1082 = !DILocation(line: 402, column: 17, scope: !1017)
!1083 = !DILocation(line: 402, column: 31, scope: !1017)
!1084 = !DILocation(line: 402, column: 3, scope: !1017)
!1085 = !DILocation(line: 404, column: 29, scope: !1017)
!1086 = !DILocation(line: 404, column: 3, scope: !1017)
!1087 = !DILocation(line: 405, column: 3, scope: !1017)
!1088 = !DILocation(line: 406, column: 1, scope: !1017)
