; ModuleID = 'cBench/consumer_jpeg_c/src/jctrans.c'
source_filename = "cBench/consumer_jpeg_c/src/jctrans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_destination_mgr = type { ptr, i64, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.jpeg_marker_writer = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.my_coef_controller = type { %struct.jpeg_c_coef_controller, i32, i32, i32, i32, ptr, [10 x ptr] }
%struct.jpeg_c_coef_controller = type { ptr, ptr }
%struct.jpeg_entropy_encoder = type { ptr, ptr, ptr }

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_write_coefficients(ptr noundef %0, ptr noundef %1) #0 !dbg !549 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !553, !DIExpression(), !554)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !555, !DIExpression(), !556)
  %5 = load ptr, ptr %3, align 8, !dbg !557
  %6 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %5, i32 0, i32 4, !dbg !559
  %7 = load i32, ptr %6, align 4, !dbg !559
  %8 = icmp ne i32 %7, 100, !dbg !560
  br i1 %8, label %9, label %28, !dbg !560

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 8, !dbg !561
  %11 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %10, i32 0, i32 0, !dbg !561
  %12 = load ptr, ptr %11, align 8, !dbg !561
  %13 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %12, i32 0, i32 5, !dbg !561
  store i32 18, ptr %13, align 8, !dbg !561
  %14 = load ptr, ptr %3, align 8, !dbg !561
  %15 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %14, i32 0, i32 4, !dbg !561
  %16 = load i32, ptr %15, align 4, !dbg !561
  %17 = load ptr, ptr %3, align 8, !dbg !561
  %18 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %17, i32 0, i32 0, !dbg !561
  %19 = load ptr, ptr %18, align 8, !dbg !561
  %20 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %19, i32 0, i32 6, !dbg !561
  %21 = getelementptr inbounds [8 x i32], ptr %20, i64 0, i64 0, !dbg !561
  store i32 %16, ptr %21, align 4, !dbg !561
  %22 = load ptr, ptr %3, align 8, !dbg !561
  %23 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %22, i32 0, i32 0, !dbg !561
  %24 = load ptr, ptr %23, align 8, !dbg !561
  %25 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %24, i32 0, i32 0, !dbg !561
  %26 = load ptr, ptr %25, align 8, !dbg !561
  %27 = load ptr, ptr %3, align 8, !dbg !561
  call void %26(ptr noundef %27), !dbg !561
  br label %28, !dbg !561

28:                                               ; preds = %9, %2
  %29 = load ptr, ptr %3, align 8, !dbg !562
  call void @jpeg_suppress_tables(ptr noundef %29, i32 noundef 0), !dbg !563
  %30 = load ptr, ptr %3, align 8, !dbg !564
  %31 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %30, i32 0, i32 0, !dbg !565
  %32 = load ptr, ptr %31, align 8, !dbg !565
  %33 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %32, i32 0, i32 4, !dbg !566
  %34 = load ptr, ptr %33, align 8, !dbg !566
  %35 = load ptr, ptr %3, align 8, !dbg !567
  call void %34(ptr noundef %35), !dbg !568
  %36 = load ptr, ptr %3, align 8, !dbg !569
  %37 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %36, i32 0, i32 5, !dbg !570
  %38 = load ptr, ptr %37, align 8, !dbg !570
  %39 = getelementptr inbounds nuw %struct.jpeg_destination_mgr, ptr %38, i32 0, i32 2, !dbg !571
  %40 = load ptr, ptr %39, align 8, !dbg !571
  %41 = load ptr, ptr %3, align 8, !dbg !572
  call void %40(ptr noundef %41), !dbg !573
  %42 = load ptr, ptr %3, align 8, !dbg !574
  %43 = load ptr, ptr %4, align 8, !dbg !575
  call void @transencode_master_selection(ptr noundef %42, ptr noundef %43), !dbg !576
  %44 = load ptr, ptr %3, align 8, !dbg !577
  %45 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %44, i32 0, i32 36, !dbg !578
  store i32 0, ptr %45, align 8, !dbg !579
  %46 = load ptr, ptr %3, align 8, !dbg !580
  %47 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %46, i32 0, i32 4, !dbg !581
  store i32 103, ptr %47, align 4, !dbg !582
  ret void, !dbg !583
}

declare void @jpeg_suppress_tables(ptr noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @transencode_master_selection(ptr noundef %0, ptr noundef %1) #0 !dbg !584 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !585, !DIExpression(), !586)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !587, !DIExpression(), !588)
  %5 = load ptr, ptr %3, align 8, !dbg !589
  %6 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %5, i32 0, i32 8, !dbg !590
  store i32 1, ptr %6, align 8, !dbg !591
  %7 = load ptr, ptr %3, align 8, !dbg !592
  call void @jinit_c_master_control(ptr noundef %7, i32 noundef 1), !dbg !593
  %8 = load ptr, ptr %3, align 8, !dbg !594
  %9 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %8, i32 0, i32 24, !dbg !596
  %10 = load i32, ptr %9, align 4, !dbg !596
  %11 = icmp ne i32 %10, 0, !dbg !594
  br i1 %11, label %12, label %23, !dbg !594

12:                                               ; preds = %2
  %13 = load ptr, ptr %3, align 8, !dbg !597
  %14 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %13, i32 0, i32 0, !dbg !597
  %15 = load ptr, ptr %14, align 8, !dbg !597
  %16 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %15, i32 0, i32 5, !dbg !597
  store i32 1, ptr %16, align 8, !dbg !597
  %17 = load ptr, ptr %3, align 8, !dbg !597
  %18 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %17, i32 0, i32 0, !dbg !597
  %19 = load ptr, ptr %18, align 8, !dbg !597
  %20 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %19, i32 0, i32 0, !dbg !597
  %21 = load ptr, ptr %20, align 8, !dbg !597
  %22 = load ptr, ptr %3, align 8, !dbg !597
  call void %21(ptr noundef %22), !dbg !597
  br label %33, !dbg !599

23:                                               ; preds = %2
  %24 = load ptr, ptr %3, align 8, !dbg !600
  %25 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %24, i32 0, i32 37, !dbg !603
  %26 = load i32, ptr %25, align 4, !dbg !603
  %27 = icmp ne i32 %26, 0, !dbg !600
  br i1 %27, label %28, label %30, !dbg !600

28:                                               ; preds = %23
  %29 = load ptr, ptr %3, align 8, !dbg !604
  call void @jinit_phuff_encoder(ptr noundef %29), !dbg !606
  br label %32, !dbg !607

30:                                               ; preds = %23
  %31 = load ptr, ptr %3, align 8, !dbg !608
  call void @jinit_huff_encoder(ptr noundef %31), !dbg !609
  br label %32

32:                                               ; preds = %30, %28
  br label %33

33:                                               ; preds = %32, %12
  %34 = load ptr, ptr %3, align 8, !dbg !610
  %35 = load ptr, ptr %4, align 8, !dbg !611
  call void @transencode_coef_controller(ptr noundef %34, ptr noundef %35), !dbg !612
  %36 = load ptr, ptr %3, align 8, !dbg !613
  call void @jinit_marker_writer(ptr noundef %36), !dbg !614
  %37 = load ptr, ptr %3, align 8, !dbg !615
  %38 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %37, i32 0, i32 1, !dbg !616
  %39 = load ptr, ptr %38, align 8, !dbg !616
  %40 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %39, i32 0, i32 6, !dbg !617
  %41 = load ptr, ptr %40, align 8, !dbg !617
  %42 = load ptr, ptr %3, align 8, !dbg !618
  call void %41(ptr noundef %42), !dbg !619
  %43 = load ptr, ptr %3, align 8, !dbg !620
  %44 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %43, i32 0, i32 55, !dbg !621
  %45 = load ptr, ptr %44, align 8, !dbg !621
  %46 = getelementptr inbounds nuw %struct.jpeg_marker_writer, ptr %45, i32 0, i32 1, !dbg !622
  %47 = load ptr, ptr %46, align 8, !dbg !622
  %48 = load ptr, ptr %3, align 8, !dbg !623
  call void %47(ptr noundef %48), !dbg !624
  ret void, !dbg !625
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_copy_critical_parameters(ptr noundef %0, ptr noundef %1) #0 !dbg !626 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !851, !DIExpression(), !852)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !853, !DIExpression(), !854)
    #dbg_declare(ptr %5, !855, !DIExpression(), !857)
    #dbg_declare(ptr %6, !858, !DIExpression(), !859)
    #dbg_declare(ptr %7, !860, !DIExpression(), !861)
    #dbg_declare(ptr %8, !862, !DIExpression(), !863)
    #dbg_declare(ptr %9, !864, !DIExpression(), !865)
    #dbg_declare(ptr %10, !866, !DIExpression(), !867)
    #dbg_declare(ptr %11, !868, !DIExpression(), !869)
    #dbg_declare(ptr %12, !870, !DIExpression(), !871)
  %13 = load ptr, ptr %4, align 8, !dbg !872
  %14 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %13, i32 0, i32 4, !dbg !874
  %15 = load i32, ptr %14, align 4, !dbg !874
  %16 = icmp ne i32 %15, 100, !dbg !875
  br i1 %16, label %17, label %36, !dbg !875

17:                                               ; preds = %2
  %18 = load ptr, ptr %4, align 8, !dbg !876
  %19 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %18, i32 0, i32 0, !dbg !876
  %20 = load ptr, ptr %19, align 8, !dbg !876
  %21 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %20, i32 0, i32 5, !dbg !876
  store i32 18, ptr %21, align 8, !dbg !876
  %22 = load ptr, ptr %4, align 8, !dbg !876
  %23 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %22, i32 0, i32 4, !dbg !876
  %24 = load i32, ptr %23, align 4, !dbg !876
  %25 = load ptr, ptr %4, align 8, !dbg !876
  %26 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %25, i32 0, i32 0, !dbg !876
  %27 = load ptr, ptr %26, align 8, !dbg !876
  %28 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %27, i32 0, i32 6, !dbg !876
  %29 = getelementptr inbounds [8 x i32], ptr %28, i64 0, i64 0, !dbg !876
  store i32 %24, ptr %29, align 4, !dbg !876
  %30 = load ptr, ptr %4, align 8, !dbg !876
  %31 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %30, i32 0, i32 0, !dbg !876
  %32 = load ptr, ptr %31, align 8, !dbg !876
  %33 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %32, i32 0, i32 0, !dbg !876
  %34 = load ptr, ptr %33, align 8, !dbg !876
  %35 = load ptr, ptr %4, align 8, !dbg !876
  call void %34(ptr noundef %35), !dbg !876
  br label %36, !dbg !876

36:                                               ; preds = %17, %2
  %37 = load ptr, ptr %3, align 8, !dbg !877
  %38 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %37, i32 0, i32 6, !dbg !878
  %39 = load i32, ptr %38, align 8, !dbg !878
  %40 = load ptr, ptr %4, align 8, !dbg !879
  %41 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %40, i32 0, i32 6, !dbg !880
  store i32 %39, ptr %41, align 8, !dbg !881
  %42 = load ptr, ptr %3, align 8, !dbg !882
  %43 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %42, i32 0, i32 7, !dbg !883
  %44 = load i32, ptr %43, align 4, !dbg !883
  %45 = load ptr, ptr %4, align 8, !dbg !884
  %46 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %45, i32 0, i32 7, !dbg !885
  store i32 %44, ptr %46, align 4, !dbg !886
  %47 = load ptr, ptr %3, align 8, !dbg !887
  %48 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %47, i32 0, i32 8, !dbg !888
  %49 = load i32, ptr %48, align 8, !dbg !888
  %50 = load ptr, ptr %4, align 8, !dbg !889
  %51 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %50, i32 0, i32 8, !dbg !890
  store i32 %49, ptr %51, align 8, !dbg !891
  %52 = load ptr, ptr %3, align 8, !dbg !892
  %53 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %52, i32 0, i32 9, !dbg !893
  %54 = load i32, ptr %53, align 4, !dbg !893
  %55 = load ptr, ptr %4, align 8, !dbg !894
  %56 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %55, i32 0, i32 9, !dbg !895
  store i32 %54, ptr %56, align 4, !dbg !896
  %57 = load ptr, ptr %4, align 8, !dbg !897
  call void @jpeg_set_defaults(ptr noundef %57), !dbg !898
  %58 = load ptr, ptr %4, align 8, !dbg !899
  %59 = load ptr, ptr %3, align 8, !dbg !900
  %60 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %59, i32 0, i32 9, !dbg !901
  %61 = load i32, ptr %60, align 4, !dbg !901
  call void @jpeg_set_colorspace(ptr noundef %58, i32 noundef %61), !dbg !902
  %62 = load ptr, ptr %3, align 8, !dbg !903
  %63 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %62, i32 0, i32 42, !dbg !904
  %64 = load i32, ptr %63, align 8, !dbg !904
  %65 = load ptr, ptr %4, align 8, !dbg !905
  %66 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %65, i32 0, i32 11, !dbg !906
  store i32 %64, ptr %66, align 8, !dbg !907
  %67 = load ptr, ptr %3, align 8, !dbg !908
  %68 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %67, i32 0, i32 56, !dbg !909
  %69 = load i32, ptr %68, align 8, !dbg !909
  %70 = load ptr, ptr %4, align 8, !dbg !910
  %71 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %70, i32 0, i32 26, !dbg !911
  store i32 %69, ptr %71, align 4, !dbg !912
  store i32 0, ptr %10, align 4, !dbg !913
  br label %72, !dbg !915

72:                                               ; preds = %113, %36
  %73 = load i32, ptr %10, align 4, !dbg !916
  %74 = icmp slt i32 %73, 4, !dbg !918
  br i1 %74, label %75, label %116, !dbg !919

75:                                               ; preds = %72
  %76 = load ptr, ptr %3, align 8, !dbg !920
  %77 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %76, i32 0, i32 39, !dbg !923
  %78 = load i32, ptr %10, align 4, !dbg !924
  %79 = sext i32 %78 to i64, !dbg !920
  %80 = getelementptr inbounds [4 x ptr], ptr %77, i64 0, i64 %79, !dbg !920
  %81 = load ptr, ptr %80, align 8, !dbg !920
  %82 = icmp ne ptr %81, null, !dbg !925
  br i1 %82, label %83, label %112, !dbg !925

83:                                               ; preds = %75
  %84 = load ptr, ptr %4, align 8, !dbg !926
  %85 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %84, i32 0, i32 15, !dbg !928
  %86 = load i32, ptr %10, align 4, !dbg !929
  %87 = sext i32 %86 to i64, !dbg !926
  %88 = getelementptr inbounds [4 x ptr], ptr %85, i64 0, i64 %87, !dbg !926
  store ptr %88, ptr %5, align 8, !dbg !930
  %89 = load ptr, ptr %5, align 8, !dbg !931
  %90 = load ptr, ptr %89, align 8, !dbg !933
  %91 = icmp eq ptr %90, null, !dbg !934
  br i1 %91, label %92, label %96, !dbg !934

92:                                               ; preds = %83
  %93 = load ptr, ptr %4, align 8, !dbg !935
  %94 = call ptr @jpeg_alloc_quant_table(ptr noundef %93), !dbg !936
  %95 = load ptr, ptr %5, align 8, !dbg !937
  store ptr %94, ptr %95, align 8, !dbg !938
  br label %96, !dbg !939

96:                                               ; preds = %92, %83
  %97 = load ptr, ptr %5, align 8, !dbg !940
  %98 = load ptr, ptr %97, align 8, !dbg !940
  %99 = getelementptr inbounds nuw %struct.JQUANT_TBL, ptr %98, i32 0, i32 0, !dbg !940
  %100 = getelementptr inbounds [64 x i16], ptr %99, i64 0, i64 0, !dbg !940
  %101 = load ptr, ptr %3, align 8, !dbg !940
  %102 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %101, i32 0, i32 39, !dbg !940
  %103 = load i32, ptr %10, align 4, !dbg !940
  %104 = sext i32 %103 to i64, !dbg !940
  %105 = getelementptr inbounds [4 x ptr], ptr %102, i64 0, i64 %104, !dbg !940
  %106 = load ptr, ptr %105, align 8, !dbg !940
  %107 = getelementptr inbounds nuw %struct.JQUANT_TBL, ptr %106, i32 0, i32 0, !dbg !940
  %108 = getelementptr inbounds [64 x i16], ptr %107, i64 0, i64 0, !dbg !940
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %100, ptr align 4 %108, i64 128, i1 false), !dbg !940
  %109 = load ptr, ptr %5, align 8, !dbg !941
  %110 = load ptr, ptr %109, align 8, !dbg !942
  %111 = getelementptr inbounds nuw %struct.JQUANT_TBL, ptr %110, i32 0, i32 1, !dbg !943
  store i32 0, ptr %111, align 4, !dbg !944
  br label %112, !dbg !945

112:                                              ; preds = %96, %75
  br label %113, !dbg !946

113:                                              ; preds = %112
  %114 = load i32, ptr %10, align 4, !dbg !947
  %115 = add nsw i32 %114, 1, !dbg !947
  store i32 %115, ptr %10, align 4, !dbg !947
  br label %72, !dbg !948, !llvm.loop !949

116:                                              ; preds = %72
  %117 = load ptr, ptr %3, align 8, !dbg !952
  %118 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %117, i32 0, i32 8, !dbg !953
  %119 = load i32, ptr %118, align 8, !dbg !953
  %120 = load ptr, ptr %4, align 8, !dbg !954
  %121 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %120, i32 0, i32 12, !dbg !955
  store i32 %119, ptr %121, align 4, !dbg !956
  %122 = load ptr, ptr %4, align 8, !dbg !957
  %123 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %122, i32 0, i32 12, !dbg !959
  %124 = load i32, ptr %123, align 4, !dbg !959
  %125 = icmp slt i32 %124, 1, !dbg !960
  br i1 %125, label %131, label %126, !dbg !961

126:                                              ; preds = %116
  %127 = load ptr, ptr %4, align 8, !dbg !962
  %128 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %127, i32 0, i32 12, !dbg !963
  %129 = load i32, ptr %128, align 4, !dbg !963
  %130 = icmp sgt i32 %129, 10, !dbg !964
  br i1 %130, label %131, label %155, !dbg !961

131:                                              ; preds = %126, %116
  %132 = load ptr, ptr %4, align 8, !dbg !965
  %133 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %132, i32 0, i32 0, !dbg !965
  %134 = load ptr, ptr %133, align 8, !dbg !965
  %135 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %134, i32 0, i32 5, !dbg !965
  store i32 24, ptr %135, align 8, !dbg !965
  %136 = load ptr, ptr %4, align 8, !dbg !965
  %137 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %136, i32 0, i32 12, !dbg !965
  %138 = load i32, ptr %137, align 4, !dbg !965
  %139 = load ptr, ptr %4, align 8, !dbg !965
  %140 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %139, i32 0, i32 0, !dbg !965
  %141 = load ptr, ptr %140, align 8, !dbg !965
  %142 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %141, i32 0, i32 6, !dbg !965
  %143 = getelementptr inbounds [8 x i32], ptr %142, i64 0, i64 0, !dbg !965
  store i32 %138, ptr %143, align 4, !dbg !965
  %144 = load ptr, ptr %4, align 8, !dbg !965
  %145 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %144, i32 0, i32 0, !dbg !965
  %146 = load ptr, ptr %145, align 8, !dbg !965
  %147 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %146, i32 0, i32 6, !dbg !965
  %148 = getelementptr inbounds [8 x i32], ptr %147, i64 0, i64 1, !dbg !965
  store i32 10, ptr %148, align 4, !dbg !965
  %149 = load ptr, ptr %4, align 8, !dbg !965
  %150 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %149, i32 0, i32 0, !dbg !965
  %151 = load ptr, ptr %150, align 8, !dbg !965
  %152 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %151, i32 0, i32 0, !dbg !965
  %153 = load ptr, ptr %152, align 8, !dbg !965
  %154 = load ptr, ptr %4, align 8, !dbg !965
  call void %153(ptr noundef %154), !dbg !965
  br label %155, !dbg !965

155:                                              ; preds = %131, %126
  store i32 0, ptr %11, align 4, !dbg !966
  %156 = load ptr, ptr %3, align 8, !dbg !968
  %157 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %156, i32 0, i32 43, !dbg !969
  %158 = load ptr, ptr %157, align 8, !dbg !969
  store ptr %158, ptr %6, align 8, !dbg !970
  %159 = load ptr, ptr %4, align 8, !dbg !971
  %160 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %159, i32 0, i32 14, !dbg !972
  %161 = load ptr, ptr %160, align 8, !dbg !972
  store ptr %161, ptr %7, align 8, !dbg !973
  br label %162, !dbg !974

162:                                              ; preds = %277, %155
  %163 = load i32, ptr %11, align 4, !dbg !975
  %164 = load ptr, ptr %4, align 8, !dbg !977
  %165 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %164, i32 0, i32 12, !dbg !978
  %166 = load i32, ptr %165, align 4, !dbg !978
  %167 = icmp slt i32 %163, %166, !dbg !979
  br i1 %167, label %168, label %284, !dbg !980

168:                                              ; preds = %162
  %169 = load ptr, ptr %6, align 8, !dbg !981
  %170 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %169, i32 0, i32 0, !dbg !983
  %171 = load i32, ptr %170, align 8, !dbg !983
  %172 = load ptr, ptr %7, align 8, !dbg !984
  %173 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %172, i32 0, i32 0, !dbg !985
  store i32 %171, ptr %173, align 8, !dbg !986
  %174 = load ptr, ptr %6, align 8, !dbg !987
  %175 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %174, i32 0, i32 2, !dbg !988
  %176 = load i32, ptr %175, align 8, !dbg !988
  %177 = load ptr, ptr %7, align 8, !dbg !989
  %178 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %177, i32 0, i32 2, !dbg !990
  store i32 %176, ptr %178, align 8, !dbg !991
  %179 = load ptr, ptr %6, align 8, !dbg !992
  %180 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %179, i32 0, i32 3, !dbg !993
  %181 = load i32, ptr %180, align 4, !dbg !993
  %182 = load ptr, ptr %7, align 8, !dbg !994
  %183 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %182, i32 0, i32 3, !dbg !995
  store i32 %181, ptr %183, align 4, !dbg !996
  %184 = load ptr, ptr %6, align 8, !dbg !997
  %185 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %184, i32 0, i32 4, !dbg !998
  %186 = load i32, ptr %185, align 8, !dbg !998
  %187 = load ptr, ptr %7, align 8, !dbg !999
  %188 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %187, i32 0, i32 4, !dbg !1000
  store i32 %186, ptr %188, align 8, !dbg !1001
  %189 = load ptr, ptr %7, align 8, !dbg !1002
  %190 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %189, i32 0, i32 4, !dbg !1003
  %191 = load i32, ptr %190, align 8, !dbg !1003
  store i32 %191, ptr %10, align 4, !dbg !1004
  %192 = load i32, ptr %10, align 4, !dbg !1005
  %193 = icmp slt i32 %192, 0, !dbg !1007
  br i1 %193, label %205, label %194, !dbg !1008

194:                                              ; preds = %168
  %195 = load i32, ptr %10, align 4, !dbg !1009
  %196 = icmp sge i32 %195, 4, !dbg !1010
  br i1 %196, label %205, label %197, !dbg !1011

197:                                              ; preds = %194
  %198 = load ptr, ptr %3, align 8, !dbg !1012
  %199 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %198, i32 0, i32 39, !dbg !1013
  %200 = load i32, ptr %10, align 4, !dbg !1014
  %201 = sext i32 %200 to i64, !dbg !1012
  %202 = getelementptr inbounds [4 x ptr], ptr %199, i64 0, i64 %201, !dbg !1012
  %203 = load ptr, ptr %202, align 8, !dbg !1012
  %204 = icmp eq ptr %203, null, !dbg !1015
  br i1 %204, label %205, label %222, !dbg !1011

205:                                              ; preds = %197, %194, %168
  %206 = load ptr, ptr %4, align 8, !dbg !1016
  %207 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %206, i32 0, i32 0, !dbg !1016
  %208 = load ptr, ptr %207, align 8, !dbg !1016
  %209 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %208, i32 0, i32 5, !dbg !1016
  store i32 51, ptr %209, align 8, !dbg !1016
  %210 = load i32, ptr %10, align 4, !dbg !1016
  %211 = load ptr, ptr %4, align 8, !dbg !1016
  %212 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %211, i32 0, i32 0, !dbg !1016
  %213 = load ptr, ptr %212, align 8, !dbg !1016
  %214 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %213, i32 0, i32 6, !dbg !1016
  %215 = getelementptr inbounds [8 x i32], ptr %214, i64 0, i64 0, !dbg !1016
  store i32 %210, ptr %215, align 4, !dbg !1016
  %216 = load ptr, ptr %4, align 8, !dbg !1016
  %217 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %216, i32 0, i32 0, !dbg !1016
  %218 = load ptr, ptr %217, align 8, !dbg !1016
  %219 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %218, i32 0, i32 0, !dbg !1016
  %220 = load ptr, ptr %219, align 8, !dbg !1016
  %221 = load ptr, ptr %4, align 8, !dbg !1016
  call void %220(ptr noundef %221), !dbg !1016
  br label %222, !dbg !1016

222:                                              ; preds = %205, %197
  %223 = load ptr, ptr %3, align 8, !dbg !1017
  %224 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %223, i32 0, i32 39, !dbg !1018
  %225 = load i32, ptr %10, align 4, !dbg !1019
  %226 = sext i32 %225 to i64, !dbg !1017
  %227 = getelementptr inbounds [4 x ptr], ptr %224, i64 0, i64 %226, !dbg !1017
  %228 = load ptr, ptr %227, align 8, !dbg !1017
  store ptr %228, ptr %9, align 8, !dbg !1020
  %229 = load ptr, ptr %6, align 8, !dbg !1021
  %230 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %229, i32 0, i32 19, !dbg !1022
  %231 = load ptr, ptr %230, align 8, !dbg !1022
  store ptr %231, ptr %8, align 8, !dbg !1023
  %232 = load ptr, ptr %8, align 8, !dbg !1024
  %233 = icmp ne ptr %232, null, !dbg !1026
  br i1 %233, label %234, label %276, !dbg !1026

234:                                              ; preds = %222
  store i32 0, ptr %12, align 4, !dbg !1027
  br label %235, !dbg !1030

235:                                              ; preds = %272, %234
  %236 = load i32, ptr %12, align 4, !dbg !1031
  %237 = icmp slt i32 %236, 64, !dbg !1033
  br i1 %237, label %238, label %275, !dbg !1034

238:                                              ; preds = %235
  %239 = load ptr, ptr %8, align 8, !dbg !1035
  %240 = getelementptr inbounds nuw %struct.JQUANT_TBL, ptr %239, i32 0, i32 0, !dbg !1038
  %241 = load i32, ptr %12, align 4, !dbg !1039
  %242 = sext i32 %241 to i64, !dbg !1035
  %243 = getelementptr inbounds [64 x i16], ptr %240, i64 0, i64 %242, !dbg !1035
  %244 = load i16, ptr %243, align 2, !dbg !1035
  %245 = zext i16 %244 to i32, !dbg !1035
  %246 = load ptr, ptr %9, align 8, !dbg !1040
  %247 = getelementptr inbounds nuw %struct.JQUANT_TBL, ptr %246, i32 0, i32 0, !dbg !1041
  %248 = load i32, ptr %12, align 4, !dbg !1042
  %249 = sext i32 %248 to i64, !dbg !1040
  %250 = getelementptr inbounds [64 x i16], ptr %247, i64 0, i64 %249, !dbg !1040
  %251 = load i16, ptr %250, align 2, !dbg !1040
  %252 = zext i16 %251 to i32, !dbg !1040
  %253 = icmp ne i32 %245, %252, !dbg !1043
  br i1 %253, label %254, label %271, !dbg !1043

254:                                              ; preds = %238
  %255 = load ptr, ptr %4, align 8, !dbg !1044
  %256 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %255, i32 0, i32 0, !dbg !1044
  %257 = load ptr, ptr %256, align 8, !dbg !1044
  %258 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %257, i32 0, i32 5, !dbg !1044
  store i32 43, ptr %258, align 8, !dbg !1044
  %259 = load i32, ptr %10, align 4, !dbg !1044
  %260 = load ptr, ptr %4, align 8, !dbg !1044
  %261 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %260, i32 0, i32 0, !dbg !1044
  %262 = load ptr, ptr %261, align 8, !dbg !1044
  %263 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %262, i32 0, i32 6, !dbg !1044
  %264 = getelementptr inbounds [8 x i32], ptr %263, i64 0, i64 0, !dbg !1044
  store i32 %259, ptr %264, align 4, !dbg !1044
  %265 = load ptr, ptr %4, align 8, !dbg !1044
  %266 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %265, i32 0, i32 0, !dbg !1044
  %267 = load ptr, ptr %266, align 8, !dbg !1044
  %268 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %267, i32 0, i32 0, !dbg !1044
  %269 = load ptr, ptr %268, align 8, !dbg !1044
  %270 = load ptr, ptr %4, align 8, !dbg !1044
  call void %269(ptr noundef %270), !dbg !1044
  br label %271, !dbg !1044

271:                                              ; preds = %254, %238
  br label %272, !dbg !1045

272:                                              ; preds = %271
  %273 = load i32, ptr %12, align 4, !dbg !1046
  %274 = add nsw i32 %273, 1, !dbg !1046
  store i32 %274, ptr %12, align 4, !dbg !1046
  br label %235, !dbg !1047, !llvm.loop !1048

275:                                              ; preds = %235
  br label %276, !dbg !1050

276:                                              ; preds = %275, %222
  br label %277, !dbg !1051

277:                                              ; preds = %276
  %278 = load i32, ptr %11, align 4, !dbg !1052
  %279 = add nsw i32 %278, 1, !dbg !1052
  store i32 %279, ptr %11, align 4, !dbg !1052
  %280 = load ptr, ptr %6, align 8, !dbg !1053
  %281 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %280, i32 1, !dbg !1053
  store ptr %281, ptr %6, align 8, !dbg !1053
  %282 = load ptr, ptr %7, align 8, !dbg !1054
  %283 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %282, i32 1, !dbg !1054
  store ptr %283, ptr %7, align 8, !dbg !1054
  br label %162, !dbg !1055, !llvm.loop !1056

284:                                              ; preds = %162
  ret void, !dbg !1058
}

declare void @jpeg_set_defaults(ptr noundef) #1

declare void @jpeg_set_colorspace(ptr noundef, i32 noundef) #1

declare ptr @jpeg_alloc_quant_table(ptr noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare void @jinit_c_master_control(ptr noundef, i32 noundef) #1

declare void @jinit_phuff_encoder(ptr noundef) #1

declare void @jinit_huff_encoder(ptr noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @transencode_coef_controller(ptr noundef %0, ptr noundef %1) #0 !dbg !1059 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1060, !DIExpression(), !1061)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !1062, !DIExpression(), !1063)
    #dbg_declare(ptr %5, !1064, !DIExpression(), !1065)
    #dbg_declare(ptr %6, !1066, !DIExpression(), !1067)
    #dbg_declare(ptr %7, !1068, !DIExpression(), !1069)
  %8 = load ptr, ptr %3, align 8, !dbg !1070
  %9 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %8, i32 0, i32 1, !dbg !1071
  %10 = load ptr, ptr %9, align 8, !dbg !1071
  %11 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %10, i32 0, i32 0, !dbg !1072
  %12 = load ptr, ptr %11, align 8, !dbg !1072
  %13 = load ptr, ptr %3, align 8, !dbg !1073
  %14 = call ptr %12(ptr noundef %13, i32 noundef 1, i64 noundef 120), !dbg !1074
  store ptr %14, ptr %5, align 8, !dbg !1075
  %15 = load ptr, ptr %5, align 8, !dbg !1076
  %16 = load ptr, ptr %3, align 8, !dbg !1077
  %17 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %16, i32 0, i32 54, !dbg !1078
  store ptr %15, ptr %17, align 8, !dbg !1079
  %18 = load ptr, ptr %5, align 8, !dbg !1080
  %19 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %18, i32 0, i32 0, !dbg !1081
  %20 = getelementptr inbounds nuw %struct.jpeg_c_coef_controller, ptr %19, i32 0, i32 0, !dbg !1082
  store ptr @start_pass_coef, ptr %20, align 8, !dbg !1083
  %21 = load ptr, ptr %5, align 8, !dbg !1084
  %22 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %21, i32 0, i32 0, !dbg !1085
  %23 = getelementptr inbounds nuw %struct.jpeg_c_coef_controller, ptr %22, i32 0, i32 1, !dbg !1086
  store ptr @compress_output, ptr %23, align 8, !dbg !1087
  %24 = load ptr, ptr %4, align 8, !dbg !1088
  %25 = load ptr, ptr %5, align 8, !dbg !1089
  %26 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %25, i32 0, i32 5, !dbg !1090
  store ptr %24, ptr %26, align 8, !dbg !1091
  %27 = load ptr, ptr %3, align 8, !dbg !1092
  %28 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %27, i32 0, i32 1, !dbg !1093
  %29 = load ptr, ptr %28, align 8, !dbg !1093
  %30 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %29, i32 0, i32 1, !dbg !1094
  %31 = load ptr, ptr %30, align 8, !dbg !1094
  %32 = load ptr, ptr %3, align 8, !dbg !1095
  %33 = call ptr %31(ptr noundef %32, i32 noundef 1, i64 noundef 1280), !dbg !1096
  store ptr %33, ptr %6, align 8, !dbg !1097
  %34 = load ptr, ptr %6, align 8, !dbg !1098
  call void @jzero_far(ptr noundef %34, i64 noundef 1280), !dbg !1099
  store i32 0, ptr %7, align 4, !dbg !1100
  br label %35, !dbg !1102

35:                                               ; preds = %48, %2
  %36 = load i32, ptr %7, align 4, !dbg !1103
  %37 = icmp slt i32 %36, 10, !dbg !1105
  br i1 %37, label %38, label %51, !dbg !1106

38:                                               ; preds = %35
  %39 = load ptr, ptr %6, align 8, !dbg !1107
  %40 = load i32, ptr %7, align 4, !dbg !1109
  %41 = sext i32 %40 to i64, !dbg !1110
  %42 = getelementptr inbounds [64 x i16], ptr %39, i64 %41, !dbg !1110
  %43 = load ptr, ptr %5, align 8, !dbg !1111
  %44 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %43, i32 0, i32 6, !dbg !1112
  %45 = load i32, ptr %7, align 4, !dbg !1113
  %46 = sext i32 %45 to i64, !dbg !1111
  %47 = getelementptr inbounds [10 x ptr], ptr %44, i64 0, i64 %46, !dbg !1111
  store ptr %42, ptr %47, align 8, !dbg !1114
  br label %48, !dbg !1115

48:                                               ; preds = %38
  %49 = load i32, ptr %7, align 4, !dbg !1116
  %50 = add nsw i32 %49, 1, !dbg !1116
  store i32 %50, ptr %7, align 4, !dbg !1116
  br label %35, !dbg !1117, !llvm.loop !1118

51:                                               ; preds = %35
  ret void, !dbg !1120
}

declare void @jinit_marker_writer(ptr noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @start_pass_coef(ptr noundef %0, i32 noundef %1) #0 !dbg !1121 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1122, !DIExpression(), !1123)
  store i32 %1, ptr %4, align 4
    #dbg_declare(ptr %4, !1124, !DIExpression(), !1125)
    #dbg_declare(ptr %5, !1126, !DIExpression(), !1127)
  %6 = load ptr, ptr %3, align 8, !dbg !1128
  %7 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %6, i32 0, i32 54, !dbg !1129
  %8 = load ptr, ptr %7, align 8, !dbg !1129
  store ptr %8, ptr %5, align 8, !dbg !1127
  %9 = load i32, ptr %4, align 4, !dbg !1130
  %10 = icmp ne i32 %9, 2, !dbg !1132
  br i1 %10, label %11, label %22, !dbg !1132

11:                                               ; preds = %2
  %12 = load ptr, ptr %3, align 8, !dbg !1133
  %13 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %12, i32 0, i32 0, !dbg !1133
  %14 = load ptr, ptr %13, align 8, !dbg !1133
  %15 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %14, i32 0, i32 5, !dbg !1133
  store i32 4, ptr %15, align 8, !dbg !1133
  %16 = load ptr, ptr %3, align 8, !dbg !1133
  %17 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %16, i32 0, i32 0, !dbg !1133
  %18 = load ptr, ptr %17, align 8, !dbg !1133
  %19 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %18, i32 0, i32 0, !dbg !1133
  %20 = load ptr, ptr %19, align 8, !dbg !1133
  %21 = load ptr, ptr %3, align 8, !dbg !1133
  call void %20(ptr noundef %21), !dbg !1133
  br label %22, !dbg !1133

22:                                               ; preds = %11, %2
  %23 = load ptr, ptr %5, align 8, !dbg !1134
  %24 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %23, i32 0, i32 1, !dbg !1135
  store i32 0, ptr %24, align 8, !dbg !1136
  %25 = load ptr, ptr %3, align 8, !dbg !1137
  call void @start_iMCU_row(ptr noundef %25), !dbg !1138
  ret void, !dbg !1139
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @compress_output(ptr noundef %0, ptr noundef %1) #0 !dbg !1140 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [4 x ptr], align 16
  %18 = alloca [10 x ptr], align 16
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !1141, !DIExpression(), !1142)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !1143, !DIExpression(), !1144)
    #dbg_declare(ptr %6, !1145, !DIExpression(), !1146)
  %21 = load ptr, ptr %4, align 8, !dbg !1147
  %22 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %21, i32 0, i32 54, !dbg !1148
  %23 = load ptr, ptr %22, align 8, !dbg !1148
  store ptr %23, ptr %6, align 8, !dbg !1146
    #dbg_declare(ptr %7, !1149, !DIExpression(), !1150)
    #dbg_declare(ptr %8, !1151, !DIExpression(), !1152)
  %24 = load ptr, ptr %4, align 8, !dbg !1153
  %25 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %24, i32 0, i32 43, !dbg !1154
  %26 = load i32, ptr %25, align 8, !dbg !1154
  %27 = sub i32 %26, 1, !dbg !1155
  store i32 %27, ptr %8, align 4, !dbg !1152
    #dbg_declare(ptr %9, !1156, !DIExpression(), !1157)
  %28 = load ptr, ptr %4, align 8, !dbg !1158
  %29 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %28, i32 0, i32 40, !dbg !1159
  %30 = load i32, ptr %29, align 8, !dbg !1159
  %31 = sub i32 %30, 1, !dbg !1160
  store i32 %31, ptr %9, align 4, !dbg !1157
    #dbg_declare(ptr %10, !1161, !DIExpression(), !1162)
    #dbg_declare(ptr %11, !1163, !DIExpression(), !1164)
    #dbg_declare(ptr %12, !1165, !DIExpression(), !1166)
    #dbg_declare(ptr %13, !1167, !DIExpression(), !1168)
    #dbg_declare(ptr %14, !1169, !DIExpression(), !1170)
    #dbg_declare(ptr %15, !1171, !DIExpression(), !1172)
    #dbg_declare(ptr %16, !1173, !DIExpression(), !1174)
    #dbg_declare(ptr %17, !1175, !DIExpression(), !1177)
    #dbg_declare(ptr %18, !1178, !DIExpression(), !1179)
    #dbg_declare(ptr %19, !1180, !DIExpression(), !1181)
    #dbg_declare(ptr %20, !1182, !DIExpression(), !1183)
  store i32 0, ptr %11, align 4, !dbg !1184
  br label %32, !dbg !1186

32:                                               ; preds = %74, %2
  %33 = load i32, ptr %11, align 4, !dbg !1187
  %34 = load ptr, ptr %4, align 8, !dbg !1189
  %35 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %34, i32 0, i32 41, !dbg !1190
  %36 = load i32, ptr %35, align 4, !dbg !1190
  %37 = icmp slt i32 %33, %36, !dbg !1191
  br i1 %37, label %38, label %77, !dbg !1192

38:                                               ; preds = %32
  %39 = load ptr, ptr %4, align 8, !dbg !1193
  %40 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %39, i32 0, i32 42, !dbg !1195
  %41 = load i32, ptr %11, align 4, !dbg !1196
  %42 = sext i32 %41 to i64, !dbg !1193
  %43 = getelementptr inbounds [4 x ptr], ptr %40, i64 0, i64 %42, !dbg !1193
  %44 = load ptr, ptr %43, align 8, !dbg !1193
  store ptr %44, ptr %20, align 8, !dbg !1197
  %45 = load ptr, ptr %4, align 8, !dbg !1198
  %46 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %45, i32 0, i32 1, !dbg !1199
  %47 = load ptr, ptr %46, align 8, !dbg !1199
  %48 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %47, i32 0, i32 8, !dbg !1200
  %49 = load ptr, ptr %48, align 8, !dbg !1200
  %50 = load ptr, ptr %4, align 8, !dbg !1201
  %51 = load ptr, ptr %6, align 8, !dbg !1202
  %52 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %51, i32 0, i32 5, !dbg !1203
  %53 = load ptr, ptr %52, align 8, !dbg !1203
  %54 = load ptr, ptr %20, align 8, !dbg !1204
  %55 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %54, i32 0, i32 1, !dbg !1205
  %56 = load i32, ptr %55, align 4, !dbg !1205
  %57 = sext i32 %56 to i64, !dbg !1202
  %58 = getelementptr inbounds ptr, ptr %53, i64 %57, !dbg !1202
  %59 = load ptr, ptr %58, align 8, !dbg !1202
  %60 = load ptr, ptr %6, align 8, !dbg !1206
  %61 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %60, i32 0, i32 1, !dbg !1207
  %62 = load i32, ptr %61, align 8, !dbg !1207
  %63 = load ptr, ptr %20, align 8, !dbg !1208
  %64 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %63, i32 0, i32 3, !dbg !1209
  %65 = load i32, ptr %64, align 4, !dbg !1209
  %66 = mul i32 %62, %65, !dbg !1210
  %67 = load ptr, ptr %20, align 8, !dbg !1211
  %68 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %67, i32 0, i32 3, !dbg !1212
  %69 = load i32, ptr %68, align 4, !dbg !1212
  %70 = call ptr %49(ptr noundef %50, ptr noundef %59, i32 noundef %66, i32 noundef %69, i32 noundef 0), !dbg !1213
  %71 = load i32, ptr %11, align 4, !dbg !1214
  %72 = sext i32 %71 to i64, !dbg !1215
  %73 = getelementptr inbounds [4 x ptr], ptr %17, i64 0, i64 %72, !dbg !1215
  store ptr %70, ptr %73, align 8, !dbg !1216
  br label %74, !dbg !1217

74:                                               ; preds = %38
  %75 = load i32, ptr %11, align 4, !dbg !1218
  %76 = add nsw i32 %75, 1, !dbg !1218
  store i32 %76, ptr %11, align 4, !dbg !1218
  br label %32, !dbg !1219, !llvm.loop !1220

77:                                               ; preds = %32
  %78 = load ptr, ptr %6, align 8, !dbg !1222
  %79 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %78, i32 0, i32 3, !dbg !1224
  %80 = load i32, ptr %79, align 8, !dbg !1224
  store i32 %80, ptr %14, align 4, !dbg !1225
  br label %81, !dbg !1226

81:                                               ; preds = %247, %77
  %82 = load i32, ptr %14, align 4, !dbg !1227
  %83 = load ptr, ptr %6, align 8, !dbg !1229
  %84 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %83, i32 0, i32 4, !dbg !1230
  %85 = load i32, ptr %84, align 4, !dbg !1230
  %86 = icmp slt i32 %82, %85, !dbg !1231
  br i1 %86, label %87, label %250, !dbg !1232

87:                                               ; preds = %81
  %88 = load ptr, ptr %6, align 8, !dbg !1233
  %89 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %88, i32 0, i32 2, !dbg !1236
  %90 = load i32, ptr %89, align 4, !dbg !1236
  store i32 %90, ptr %7, align 4, !dbg !1237
  br label %91, !dbg !1238

91:                                               ; preds = %241, %87
  %92 = load i32, ptr %7, align 4, !dbg !1239
  %93 = load ptr, ptr %4, align 8, !dbg !1241
  %94 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %93, i32 0, i32 43, !dbg !1242
  %95 = load i32, ptr %94, align 8, !dbg !1242
  %96 = icmp ult i32 %92, %95, !dbg !1243
  br i1 %96, label %97, label %244, !dbg !1244

97:                                               ; preds = %91
  store i32 0, ptr %10, align 4, !dbg !1245
  store i32 0, ptr %11, align 4, !dbg !1247
  br label %98, !dbg !1249

98:                                               ; preds = %220, %97
  %99 = load i32, ptr %11, align 4, !dbg !1250
  %100 = load ptr, ptr %4, align 8, !dbg !1252
  %101 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %100, i32 0, i32 41, !dbg !1253
  %102 = load i32, ptr %101, align 4, !dbg !1253
  %103 = icmp slt i32 %99, %102, !dbg !1254
  br i1 %103, label %104, label %223, !dbg !1255

104:                                              ; preds = %98
  %105 = load ptr, ptr %4, align 8, !dbg !1256
  %106 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %105, i32 0, i32 42, !dbg !1258
  %107 = load i32, ptr %11, align 4, !dbg !1259
  %108 = sext i32 %107 to i64, !dbg !1256
  %109 = getelementptr inbounds [4 x ptr], ptr %106, i64 0, i64 %108, !dbg !1256
  %110 = load ptr, ptr %109, align 8, !dbg !1256
  store ptr %110, ptr %20, align 8, !dbg !1260
  %111 = load i32, ptr %7, align 4, !dbg !1261
  %112 = load ptr, ptr %20, align 8, !dbg !1262
  %113 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %112, i32 0, i32 13, !dbg !1263
  %114 = load i32, ptr %113, align 4, !dbg !1263
  %115 = mul i32 %111, %114, !dbg !1264
  store i32 %115, ptr %16, align 4, !dbg !1265
  %116 = load i32, ptr %7, align 4, !dbg !1266
  %117 = load i32, ptr %8, align 4, !dbg !1267
  %118 = icmp ult i32 %116, %117, !dbg !1268
  br i1 %118, label %119, label %123, !dbg !1269

119:                                              ; preds = %104
  %120 = load ptr, ptr %20, align 8, !dbg !1270
  %121 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %120, i32 0, i32 13, !dbg !1271
  %122 = load i32, ptr %121, align 4, !dbg !1271
  br label %127, !dbg !1269

123:                                              ; preds = %104
  %124 = load ptr, ptr %20, align 8, !dbg !1272
  %125 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %124, i32 0, i32 17, !dbg !1273
  %126 = load i32, ptr %125, align 4, !dbg !1273
  br label %127, !dbg !1269

127:                                              ; preds = %123, %119
  %128 = phi i32 [ %122, %119 ], [ %126, %123 ], !dbg !1269
  store i32 %128, ptr %15, align 4, !dbg !1274
  store i32 0, ptr %13, align 4, !dbg !1275
  br label %129, !dbg !1277

129:                                              ; preds = %216, %127
  %130 = load i32, ptr %13, align 4, !dbg !1278
  %131 = load ptr, ptr %20, align 8, !dbg !1280
  %132 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %131, i32 0, i32 14, !dbg !1281
  %133 = load i32, ptr %132, align 8, !dbg !1281
  %134 = icmp slt i32 %130, %133, !dbg !1282
  br i1 %134, label %135, label %219, !dbg !1283

135:                                              ; preds = %129
  %136 = load ptr, ptr %6, align 8, !dbg !1284
  %137 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %136, i32 0, i32 1, !dbg !1287
  %138 = load i32, ptr %137, align 8, !dbg !1287
  %139 = load i32, ptr %9, align 4, !dbg !1288
  %140 = icmp ult i32 %138, %139, !dbg !1289
  br i1 %140, label %149, label %141, !dbg !1290

141:                                              ; preds = %135
  %142 = load i32, ptr %13, align 4, !dbg !1291
  %143 = load i32, ptr %14, align 4, !dbg !1292
  %144 = add nsw i32 %142, %143, !dbg !1293
  %145 = load ptr, ptr %20, align 8, !dbg !1294
  %146 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %145, i32 0, i32 18, !dbg !1295
  %147 = load i32, ptr %146, align 8, !dbg !1295
  %148 = icmp slt i32 %144, %147, !dbg !1296
  br i1 %148, label %149, label %178, !dbg !1290

149:                                              ; preds = %141, %135
  %150 = load i32, ptr %11, align 4, !dbg !1297
  %151 = sext i32 %150 to i64, !dbg !1299
  %152 = getelementptr inbounds [4 x ptr], ptr %17, i64 0, i64 %151, !dbg !1299
  %153 = load ptr, ptr %152, align 8, !dbg !1299
  %154 = load i32, ptr %13, align 4, !dbg !1300
  %155 = load i32, ptr %14, align 4, !dbg !1301
  %156 = add nsw i32 %154, %155, !dbg !1302
  %157 = sext i32 %156 to i64, !dbg !1299
  %158 = getelementptr inbounds ptr, ptr %153, i64 %157, !dbg !1299
  %159 = load ptr, ptr %158, align 8, !dbg !1299
  %160 = load i32, ptr %16, align 4, !dbg !1303
  %161 = zext i32 %160 to i64, !dbg !1304
  %162 = getelementptr inbounds nuw [64 x i16], ptr %159, i64 %161, !dbg !1304
  store ptr %162, ptr %19, align 8, !dbg !1305
  store i32 0, ptr %12, align 4, !dbg !1306
  br label %163, !dbg !1308

163:                                              ; preds = %174, %149
  %164 = load i32, ptr %12, align 4, !dbg !1309
  %165 = load i32, ptr %15, align 4, !dbg !1311
  %166 = icmp slt i32 %164, %165, !dbg !1312
  br i1 %166, label %167, label %177, !dbg !1313

167:                                              ; preds = %163
  %168 = load ptr, ptr %19, align 8, !dbg !1314
  %169 = getelementptr inbounds nuw [64 x i16], ptr %168, i32 1, !dbg !1314
  store ptr %169, ptr %19, align 8, !dbg !1314
  %170 = load i32, ptr %10, align 4, !dbg !1315
  %171 = add nsw i32 %170, 1, !dbg !1315
  store i32 %171, ptr %10, align 4, !dbg !1315
  %172 = sext i32 %170 to i64, !dbg !1316
  %173 = getelementptr inbounds [10 x ptr], ptr %18, i64 0, i64 %172, !dbg !1316
  store ptr %168, ptr %173, align 8, !dbg !1317
  br label %174, !dbg !1316

174:                                              ; preds = %167
  %175 = load i32, ptr %12, align 4, !dbg !1318
  %176 = add nsw i32 %175, 1, !dbg !1318
  store i32 %176, ptr %12, align 4, !dbg !1318
  br label %163, !dbg !1319, !llvm.loop !1320

177:                                              ; preds = %163
  br label %179, !dbg !1322

178:                                              ; preds = %141
  store i32 0, ptr %12, align 4, !dbg !1323
  br label %179

179:                                              ; preds = %178, %177
  br label %180, !dbg !1325

180:                                              ; preds = %212, %179
  %181 = load i32, ptr %12, align 4, !dbg !1326
  %182 = load ptr, ptr %20, align 8, !dbg !1329
  %183 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %182, i32 0, i32 13, !dbg !1330
  %184 = load i32, ptr %183, align 4, !dbg !1330
  %185 = icmp slt i32 %181, %184, !dbg !1331
  br i1 %185, label %186, label %215, !dbg !1332

186:                                              ; preds = %180
  %187 = load ptr, ptr %6, align 8, !dbg !1333
  %188 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %187, i32 0, i32 6, !dbg !1335
  %189 = load i32, ptr %10, align 4, !dbg !1336
  %190 = sext i32 %189 to i64, !dbg !1333
  %191 = getelementptr inbounds [10 x ptr], ptr %188, i64 0, i64 %190, !dbg !1333
  %192 = load ptr, ptr %191, align 8, !dbg !1333
  %193 = load i32, ptr %10, align 4, !dbg !1337
  %194 = sext i32 %193 to i64, !dbg !1338
  %195 = getelementptr inbounds [10 x ptr], ptr %18, i64 0, i64 %194, !dbg !1338
  store ptr %192, ptr %195, align 8, !dbg !1339
  %196 = load i32, ptr %10, align 4, !dbg !1340
  %197 = sub nsw i32 %196, 1, !dbg !1341
  %198 = sext i32 %197 to i64, !dbg !1342
  %199 = getelementptr inbounds [10 x ptr], ptr %18, i64 0, i64 %198, !dbg !1342
  %200 = load ptr, ptr %199, align 8, !dbg !1342
  %201 = getelementptr inbounds [64 x i16], ptr %200, i64 0, !dbg !1342
  %202 = getelementptr inbounds [64 x i16], ptr %201, i64 0, i64 0, !dbg !1342
  %203 = load i16, ptr %202, align 2, !dbg !1342
  %204 = load i32, ptr %10, align 4, !dbg !1343
  %205 = sext i32 %204 to i64, !dbg !1344
  %206 = getelementptr inbounds [10 x ptr], ptr %18, i64 0, i64 %205, !dbg !1344
  %207 = load ptr, ptr %206, align 8, !dbg !1344
  %208 = getelementptr inbounds [64 x i16], ptr %207, i64 0, !dbg !1344
  %209 = getelementptr inbounds [64 x i16], ptr %208, i64 0, i64 0, !dbg !1344
  store i16 %203, ptr %209, align 2, !dbg !1345
  %210 = load i32, ptr %10, align 4, !dbg !1346
  %211 = add nsw i32 %210, 1, !dbg !1346
  store i32 %211, ptr %10, align 4, !dbg !1346
  br label %212, !dbg !1347

212:                                              ; preds = %186
  %213 = load i32, ptr %12, align 4, !dbg !1348
  %214 = add nsw i32 %213, 1, !dbg !1348
  store i32 %214, ptr %12, align 4, !dbg !1348
  br label %180, !dbg !1349, !llvm.loop !1350

215:                                              ; preds = %180
  br label %216, !dbg !1352

216:                                              ; preds = %215
  %217 = load i32, ptr %13, align 4, !dbg !1353
  %218 = add nsw i32 %217, 1, !dbg !1353
  store i32 %218, ptr %13, align 4, !dbg !1353
  br label %129, !dbg !1354, !llvm.loop !1355

219:                                              ; preds = %129
  br label %220, !dbg !1357

220:                                              ; preds = %219
  %221 = load i32, ptr %11, align 4, !dbg !1358
  %222 = add nsw i32 %221, 1, !dbg !1358
  store i32 %222, ptr %11, align 4, !dbg !1358
  br label %98, !dbg !1359, !llvm.loop !1360

223:                                              ; preds = %98
  %224 = load ptr, ptr %4, align 8, !dbg !1362
  %225 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %224, i32 0, i32 59, !dbg !1364
  %226 = load ptr, ptr %225, align 8, !dbg !1364
  %227 = getelementptr inbounds nuw %struct.jpeg_entropy_encoder, ptr %226, i32 0, i32 1, !dbg !1365
  %228 = load ptr, ptr %227, align 8, !dbg !1365
  %229 = load ptr, ptr %4, align 8, !dbg !1366
  %230 = getelementptr inbounds [10 x ptr], ptr %18, i64 0, i64 0, !dbg !1367
  %231 = call i32 %228(ptr noundef %229, ptr noundef %230), !dbg !1368
  %232 = icmp ne i32 %231, 0, !dbg !1368
  br i1 %232, label %240, label %233, !dbg !1369

233:                                              ; preds = %223
  %234 = load i32, ptr %14, align 4, !dbg !1370
  %235 = load ptr, ptr %6, align 8, !dbg !1372
  %236 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %235, i32 0, i32 3, !dbg !1373
  store i32 %234, ptr %236, align 8, !dbg !1374
  %237 = load i32, ptr %7, align 4, !dbg !1375
  %238 = load ptr, ptr %6, align 8, !dbg !1376
  %239 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %238, i32 0, i32 2, !dbg !1377
  store i32 %237, ptr %239, align 4, !dbg !1378
  store i32 0, ptr %3, align 4, !dbg !1379
  br label %256, !dbg !1379

240:                                              ; preds = %223
  br label %241, !dbg !1380

241:                                              ; preds = %240
  %242 = load i32, ptr %7, align 4, !dbg !1381
  %243 = add i32 %242, 1, !dbg !1381
  store i32 %243, ptr %7, align 4, !dbg !1381
  br label %91, !dbg !1382, !llvm.loop !1383

244:                                              ; preds = %91
  %245 = load ptr, ptr %6, align 8, !dbg !1385
  %246 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %245, i32 0, i32 2, !dbg !1386
  store i32 0, ptr %246, align 4, !dbg !1387
  br label %247, !dbg !1388

247:                                              ; preds = %244
  %248 = load i32, ptr %14, align 4, !dbg !1389
  %249 = add nsw i32 %248, 1, !dbg !1389
  store i32 %249, ptr %14, align 4, !dbg !1389
  br label %81, !dbg !1390, !llvm.loop !1391

250:                                              ; preds = %81
  %251 = load ptr, ptr %6, align 8, !dbg !1393
  %252 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %251, i32 0, i32 1, !dbg !1394
  %253 = load i32, ptr %252, align 8, !dbg !1395
  %254 = add i32 %253, 1, !dbg !1395
  store i32 %254, ptr %252, align 8, !dbg !1395
  %255 = load ptr, ptr %4, align 8, !dbg !1396
  call void @start_iMCU_row(ptr noundef %255), !dbg !1397
  store i32 1, ptr %3, align 4, !dbg !1398
  br label %256, !dbg !1398

256:                                              ; preds = %250, %233
  %257 = load i32, ptr %3, align 4, !dbg !1399
  ret i32 %257, !dbg !1399
}

declare void @jzero_far(ptr noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @start_iMCU_row(ptr noundef %0) #0 !dbg !1400 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !1401, !DIExpression(), !1402)
    #dbg_declare(ptr %3, !1403, !DIExpression(), !1404)
  %4 = load ptr, ptr %2, align 8, !dbg !1405
  %5 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %4, i32 0, i32 54, !dbg !1406
  %6 = load ptr, ptr %5, align 8, !dbg !1406
  store ptr %6, ptr %3, align 8, !dbg !1404
  %7 = load ptr, ptr %2, align 8, !dbg !1407
  %8 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %7, i32 0, i32 41, !dbg !1409
  %9 = load i32, ptr %8, align 4, !dbg !1409
  %10 = icmp sgt i32 %9, 1, !dbg !1410
  br i1 %10, label %11, label %14, !dbg !1410

11:                                               ; preds = %1
  %12 = load ptr, ptr %3, align 8, !dbg !1411
  %13 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %12, i32 0, i32 4, !dbg !1413
  store i32 1, ptr %13, align 4, !dbg !1414
  br label %42, !dbg !1415

14:                                               ; preds = %1
  %15 = load ptr, ptr %3, align 8, !dbg !1416
  %16 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %15, i32 0, i32 1, !dbg !1419
  %17 = load i32, ptr %16, align 8, !dbg !1419
  %18 = load ptr, ptr %2, align 8, !dbg !1420
  %19 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %18, i32 0, i32 40, !dbg !1421
  %20 = load i32, ptr %19, align 8, !dbg !1421
  %21 = sub i32 %20, 1, !dbg !1422
  %22 = icmp ult i32 %17, %21, !dbg !1423
  br i1 %22, label %23, label %32, !dbg !1423

23:                                               ; preds = %14
  %24 = load ptr, ptr %2, align 8, !dbg !1424
  %25 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %24, i32 0, i32 42, !dbg !1425
  %26 = getelementptr inbounds [4 x ptr], ptr %25, i64 0, i64 0, !dbg !1424
  %27 = load ptr, ptr %26, align 8, !dbg !1424
  %28 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %27, i32 0, i32 3, !dbg !1426
  %29 = load i32, ptr %28, align 4, !dbg !1426
  %30 = load ptr, ptr %3, align 8, !dbg !1427
  %31 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %30, i32 0, i32 4, !dbg !1428
  store i32 %29, ptr %31, align 4, !dbg !1429
  br label %41, !dbg !1427

32:                                               ; preds = %14
  %33 = load ptr, ptr %2, align 8, !dbg !1430
  %34 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %33, i32 0, i32 42, !dbg !1431
  %35 = getelementptr inbounds [4 x ptr], ptr %34, i64 0, i64 0, !dbg !1430
  %36 = load ptr, ptr %35, align 8, !dbg !1430
  %37 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %36, i32 0, i32 18, !dbg !1432
  %38 = load i32, ptr %37, align 8, !dbg !1432
  %39 = load ptr, ptr %3, align 8, !dbg !1433
  %40 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %39, i32 0, i32 4, !dbg !1434
  store i32 %38, ptr %40, align 4, !dbg !1435
  br label %41

41:                                               ; preds = %32, %23
  br label %42

42:                                               ; preds = %41, %11
  %43 = load ptr, ptr %3, align 8, !dbg !1436
  %44 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %43, i32 0, i32 2, !dbg !1437
  store i32 0, ptr %44, align 4, !dbg !1438
  %45 = load ptr, ptr %3, align 8, !dbg !1439
  %46 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %45, i32 0, i32 3, !dbg !1440
  store i32 0, ptr %46, align 8, !dbg !1441
  ret void, !dbg !1442
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!541, !542, !543, !544, !545, !546, !547}
!llvm.ident = !{!548}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !154, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jctrans.c", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "6808ed47f5034a16ca8e7d2b5408adb4")
!2 = !{!3, !13, !18, !25, !149}
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
!149 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 220, baseType: !5, size: 32, elements: !150)
!150 = !{!151, !152, !153}
!151 = !DIEnumerator(name: "JDITHER_NONE", value: 0)
!152 = !DIEnumerator(name: "JDITHER_ORDERED", value: 1)
!153 = !DIEnumerator(name: "JDITHER_FS", value: 2)
!154 = !{!155, !212, !281, !213, !283, !471, !235, !228}
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
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "my_coef_ptr", file: !1, line: 206, baseType: !284)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "my_coef_controller", file: !1, line: 204, baseType: !286)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 191, size: 960, elements: !287)
!287 = !{!288, !533, !534, !535, !536, !537, !539}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "pub", scope: !286, file: !1, line: 192, baseType: !289, size: 128)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_c_coef_controller", file: !19, line: 76, size: 128, elements: !290)
!290 = !{!291, !529}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !289, file: !19, line: 77, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DISubroutineType(types: !294)
!294 = !{null, !295, !528}
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_compress_ptr", file: !4, line: 249, baseType: !296)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_compress_struct", file: !4, line: 255, size: 3968, elements: !298)
!298 = !{!299, !300, !301, !302, !303, !304, !321, !322, !323, !324, !326, !328, !329, !330, !331, !366, !370, !386, !387, !391, !392, !393, !394, !407, !408, !409, !410, !411, !412, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !429, !430, !431, !432, !436, !437, !438, !439, !440, !449, !459, !470, !472, !487, !496, !506, !515}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !297, file: !4, line: 256, baseType: !160, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !297, file: !4, line: 256, baseType: !205, size: 64, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !297, file: !4, line: 256, baseType: !271, size: 64, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !297, file: !4, line: 256, baseType: !250, size: 32, offset: 192)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !297, file: !4, line: 256, baseType: !171, size: 32, offset: 224)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !297, file: !4, line: 259, baseType: !305, size: 64, offset: 256)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_destination_mgr", file: !4, line: 688, size: 320, elements: !307)
!307 = !{!308, !311, !312, !316, !320}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "next_output_byte", scope: !306, file: !4, line: 689, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "JOCTET", file: !226, line: 110, baseType: !227)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "free_in_buffer", scope: !306, file: !4, line: 690, baseType: !213, size: 64, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "init_destination", scope: !306, file: !4, line: 692, baseType: !313, size: 64, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{null, !295}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "empty_output_buffer", scope: !306, file: !4, line: 693, baseType: !317, size: 64, offset: 192)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{!250, !295}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "term_destination", scope: !306, file: !4, line: 694, baseType: !313, size: 64, offset: 256)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "image_width", scope: !297, file: !4, line: 266, baseType: !228, size: 32, offset: 320)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "image_height", scope: !297, file: !4, line: 267, baseType: !228, size: 32, offset: 352)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "input_components", scope: !297, file: !4, line: 268, baseType: !171, size: 32, offset: 384)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "in_color_space", scope: !297, file: !4, line: 269, baseType: !325, size: 32, offset: 416)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_COLOR_SPACE", file: !4, line: 201, baseType: !3)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "input_gamma", scope: !297, file: !4, line: 271, baseType: !327, size: 64, offset: 448)
!327 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "data_precision", scope: !297, file: !4, line: 281, baseType: !171, size: 32, offset: 512)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "num_components", scope: !297, file: !4, line: 283, baseType: !171, size: 32, offset: 544)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_color_space", scope: !297, file: !4, line: 284, baseType: !325, size: 32, offset: 576)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "comp_info", scope: !297, file: !4, line: 286, baseType: !332, size: 64, offset: 640)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_component_info", file: !4, line: 179, baseType: !334)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 116, size: 768, elements: !335)
!335 = !{!336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !365}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "component_id", scope: !334, file: !4, line: 120, baseType: !171, size: 32)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "component_index", scope: !334, file: !4, line: 121, baseType: !171, size: 32, offset: 32)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "h_samp_factor", scope: !334, file: !4, line: 122, baseType: !171, size: 32, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "v_samp_factor", scope: !334, file: !4, line: 123, baseType: !171, size: 32, offset: 96)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_no", scope: !334, file: !4, line: 124, baseType: !171, size: 32, offset: 128)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "dc_tbl_no", scope: !334, file: !4, line: 129, baseType: !171, size: 32, offset: 160)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tbl_no", scope: !334, file: !4, line: 130, baseType: !171, size: 32, offset: 192)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "width_in_blocks", scope: !334, file: !4, line: 139, baseType: !228, size: 32, offset: 224)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "height_in_blocks", scope: !334, file: !4, line: 140, baseType: !228, size: 32, offset: 256)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "DCT_scaled_size", scope: !334, file: !4, line: 147, baseType: !171, size: 32, offset: 288)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_width", scope: !334, file: !4, line: 154, baseType: !228, size: 32, offset: 320)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_height", scope: !334, file: !4, line: 155, baseType: !228, size: 32, offset: 352)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "component_needed", scope: !334, file: !4, line: 160, baseType: !250, size: 32, offset: 384)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_width", scope: !334, file: !4, line: 164, baseType: !171, size: 32, offset: 416)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_height", scope: !334, file: !4, line: 165, baseType: !171, size: 32, offset: 448)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_blocks", scope: !334, file: !4, line: 166, baseType: !171, size: 32, offset: 480)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_sample_width", scope: !334, file: !4, line: 167, baseType: !171, size: 32, offset: 512)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "last_col_width", scope: !334, file: !4, line: 168, baseType: !171, size: 32, offset: 544)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "last_row_height", scope: !334, file: !4, line: 169, baseType: !171, size: 32, offset: 576)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "quant_table", scope: !334, file: !4, line: 175, baseType: !356, size: 64, offset: 640)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "JQUANT_TBL", file: !4, line: 95, baseType: !358)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 83, size: 1056, elements: !359)
!359 = !{!360, !364}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "quantval", scope: !358, file: !4, line: 88, baseType: !361, size: 1024)
!361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 1024, elements: !241)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !226, line: 147, baseType: !363)
!363 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !358, file: !4, line: 94, baseType: !250, size: 32, offset: 1024)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "dct_table", scope: !334, file: !4, line: 178, baseType: !212, size: 64, offset: 704)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_ptrs", scope: !297, file: !4, line: 289, baseType: !367, size: 256, offset: 704)
!367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, size: 256, elements: !368)
!368 = !{!369}
!369 = !DISubrange(count: 4)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "dc_huff_tbl_ptrs", scope: !297, file: !4, line: 292, baseType: !371, size: 256, offset: 960)
!371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 256, elements: !368)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "JHUFF_TBL", file: !4, line: 111, baseType: !374)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 100, size: 2240, elements: !375)
!375 = !{!376, !381, !385}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !374, file: !4, line: 102, baseType: !377, size: 136)
!377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 136, elements: !379)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT8", file: !226, line: 135, baseType: !227)
!379 = !{!380}
!380 = !DISubrange(count: 17)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "huffval", scope: !374, file: !4, line: 104, baseType: !382, size: 2048, offset: 136)
!382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 2048, elements: !383)
!383 = !{!384}
!384 = !DISubrange(count: 256)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !374, file: !4, line: 110, baseType: !250, size: 32, offset: 2208)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "ac_huff_tbl_ptrs", scope: !297, file: !4, line: 293, baseType: !371, size: 256, offset: 1216)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_L", scope: !297, file: !4, line: 296, baseType: !388, size: 128, offset: 1472)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 128, elements: !389)
!389 = !{!390}
!390 = !DISubrange(count: 16)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_U", scope: !297, file: !4, line: 297, baseType: !388, size: 128, offset: 1600)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "arith_ac_K", scope: !297, file: !4, line: 298, baseType: !388, size: 128, offset: 1728)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "num_scans", scope: !297, file: !4, line: 300, baseType: !171, size: 32, offset: 1856)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "scan_info", scope: !297, file: !4, line: 301, baseType: !395, size: 64, offset: 1920)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !397)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_scan_info", file: !4, line: 189, baseType: !398)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 184, size: 288, elements: !399)
!399 = !{!400, !401, !403, !404, !405, !406}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "comps_in_scan", scope: !398, file: !4, line: 185, baseType: !171, size: 32)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "component_index", scope: !398, file: !4, line: 186, baseType: !402, size: 128, offset: 32)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 128, elements: !368)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "Ss", scope: !398, file: !4, line: 187, baseType: !171, size: 32, offset: 160)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "Se", scope: !398, file: !4, line: 187, baseType: !171, size: 32, offset: 192)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "Ah", scope: !398, file: !4, line: 188, baseType: !171, size: 32, offset: 224)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "Al", scope: !398, file: !4, line: 188, baseType: !171, size: 32, offset: 256)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "raw_data_in", scope: !297, file: !4, line: 307, baseType: !250, size: 32, offset: 1984)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "arith_code", scope: !297, file: !4, line: 308, baseType: !250, size: 32, offset: 2016)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_coding", scope: !297, file: !4, line: 309, baseType: !250, size: 32, offset: 2048)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "CCIR601_sampling", scope: !297, file: !4, line: 310, baseType: !250, size: 32, offset: 2080)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "smoothing_factor", scope: !297, file: !4, line: 311, baseType: !171, size: 32, offset: 2112)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "dct_method", scope: !297, file: !4, line: 312, baseType: !413, size: 32, offset: 2144)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_DCT_METHOD", file: !4, line: 209, baseType: !13)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "restart_interval", scope: !297, file: !4, line: 319, baseType: !5, size: 32, offset: 2176)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "restart_in_rows", scope: !297, file: !4, line: 320, baseType: !171, size: 32, offset: 2208)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "write_JFIF_header", scope: !297, file: !4, line: 324, baseType: !250, size: 32, offset: 2240)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "density_unit", scope: !297, file: !4, line: 329, baseType: !378, size: 8, offset: 2272)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "X_density", scope: !297, file: !4, line: 330, baseType: !362, size: 16, offset: 2288)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "Y_density", scope: !297, file: !4, line: 331, baseType: !362, size: 16, offset: 2304)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "write_Adobe_marker", scope: !297, file: !4, line: 332, baseType: !250, size: 32, offset: 2336)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "next_scanline", scope: !297, file: !4, line: 339, baseType: !228, size: 32, offset: 2368)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "progressive_mode", scope: !297, file: !4, line: 348, baseType: !250, size: 32, offset: 2400)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "max_h_samp_factor", scope: !297, file: !4, line: 349, baseType: !171, size: 32, offset: 2432)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "max_v_samp_factor", scope: !297, file: !4, line: 350, baseType: !171, size: 32, offset: 2464)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "total_iMCU_rows", scope: !297, file: !4, line: 352, baseType: !228, size: 32, offset: 2496)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "comps_in_scan", scope: !297, file: !4, line: 363, baseType: !171, size: 32, offset: 2528)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "cur_comp_info", scope: !297, file: !4, line: 364, baseType: !428, size: 256, offset: 2560)
!428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 256, elements: !368)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "MCUs_per_row", scope: !297, file: !4, line: 367, baseType: !228, size: 32, offset: 2816)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_rows_in_scan", scope: !297, file: !4, line: 368, baseType: !228, size: 32, offset: 2848)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_in_MCU", scope: !297, file: !4, line: 370, baseType: !171, size: 32, offset: 2880)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_membership", scope: !297, file: !4, line: 371, baseType: !433, size: 320, offset: 2912)
!433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 320, elements: !434)
!434 = !{!435}
!435 = !DISubrange(count: 10)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "Ss", scope: !297, file: !4, line: 375, baseType: !171, size: 32, offset: 3232)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "Se", scope: !297, file: !4, line: 375, baseType: !171, size: 32, offset: 3264)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "Ah", scope: !297, file: !4, line: 375, baseType: !171, size: 32, offset: 3296)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "Al", scope: !297, file: !4, line: 375, baseType: !171, size: 32, offset: 3328)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !297, file: !4, line: 380, baseType: !441, size: 64, offset: 3392)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_comp_master", file: !19, line: 45, size: 256, elements: !443)
!443 = !{!444, !445, !446, !447, !448}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_for_pass", scope: !442, file: !19, line: 46, baseType: !313, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "pass_startup", scope: !442, file: !19, line: 47, baseType: !313, size: 64, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "finish_pass", scope: !442, file: !19, line: 48, baseType: !313, size: 64, offset: 128)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "call_pass_startup", scope: !442, file: !19, line: 51, baseType: !250, size: 32, offset: 192)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "is_last_pass", scope: !442, file: !19, line: 52, baseType: !250, size: 32, offset: 224)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "main", scope: !297, file: !4, line: 381, baseType: !450, size: 64, offset: 3456)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_c_main_controller", file: !19, line: 56, size: 128, elements: !452)
!452 = !{!453, !454}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !451, file: !19, line: 57, baseType: !292, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "process_data", scope: !451, file: !19, line: 58, baseType: !455, size: 64, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DISubroutineType(types: !457)
!457 = !{null, !295, !221, !458, !228}
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "prep", scope: !297, file: !4, line: 382, baseType: !460, size: 64, offset: 3520)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_c_prep_controller", file: !19, line: 64, size: 128, elements: !462)
!462 = !{!463, !464}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !461, file: !19, line: 65, baseType: !292, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "pre_process_data", scope: !461, file: !19, line: 66, baseType: !465, size: 64, offset: 64)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DISubroutineType(types: !467)
!467 = !{null, !295, !221, !458, !228, !468, !458, !228}
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPIMAGE", file: !4, line: 68, baseType: !469)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "coef", scope: !297, file: !4, line: 383, baseType: !471, size: 64, offset: 3584)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "marker", scope: !297, file: !4, line: 384, baseType: !473, size: 64, offset: 3648)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_marker_writer", file: !19, line: 120, size: 384, elements: !475)
!475 = !{!476, !482, !483, !484, !485, !486}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "write_any_marker", scope: !474, file: !19, line: 123, baseType: !477, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DISubroutineType(types: !479)
!479 = !{null, !295, !171, !480, !5}
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !310)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_header", scope: !474, file: !19, line: 125, baseType: !313, size: 64, offset: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "write_frame_header", scope: !474, file: !19, line: 126, baseType: !313, size: 64, offset: 128)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "write_scan_header", scope: !474, file: !19, line: 127, baseType: !313, size: 64, offset: 192)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_trailer", scope: !474, file: !19, line: 128, baseType: !313, size: 64, offset: 256)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "write_tables_only", scope: !474, file: !19, line: 129, baseType: !313, size: 64, offset: 320)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "cconvert", scope: !297, file: !4, line: 385, baseType: !488, size: 64, offset: 3712)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_color_converter", file: !19, line: 83, size: 128, elements: !490)
!490 = !{!491, !492}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !489, file: !19, line: 84, baseType: !313, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "color_convert", scope: !489, file: !19, line: 85, baseType: !493, size: 64, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{null, !295, !221, !468, !228, !171}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "downsample", scope: !297, file: !4, line: 386, baseType: !497, size: 64, offset: 3776)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_downsampler", file: !19, line: 91, size: 192, elements: !499)
!499 = !{!500, !501, !505}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !498, file: !19, line: 92, baseType: !313, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "downsample", scope: !498, file: !19, line: 93, baseType: !502, size: 64, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DISubroutineType(types: !504)
!504 = !{null, !295, !468, !228, !468, !228}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "need_context_rows", scope: !498, file: !19, line: 98, baseType: !250, size: 32, offset: 128)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "fdct", scope: !297, file: !4, line: 387, baseType: !507, size: 64, offset: 3840)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_forward_dct", file: !19, line: 102, size: 128, elements: !509)
!509 = !{!510, !511}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !508, file: !19, line: 103, baseType: !313, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "forward_DCT", scope: !508, file: !19, line: 105, baseType: !512, size: 64, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{null, !295, !332, !221, !235, !228, !228, !228}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "entropy", scope: !297, file: !4, line: 388, baseType: !516, size: 64, offset: 3904)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_entropy_encoder", file: !19, line: 113, size: 192, elements: !518)
!518 = !{!519, !523, !527}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !517, file: !19, line: 114, baseType: !520, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{null, !295, !250}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "encode_mcu", scope: !517, file: !19, line: 115, baseType: !524, size: 64, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DISubroutineType(types: !526)
!526 = !{!250, !295, !234}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "finish_pass", scope: !517, file: !19, line: 116, baseType: !313, size: 64, offset: 128)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_BUF_MODE", file: !19, line: 22, baseType: !18)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "compress_data", scope: !289, file: !19, line: 78, baseType: !530, size: 64, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DISubroutineType(types: !532)
!532 = !{!250, !295, !468}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "iMCU_row_num", scope: !286, file: !1, line: 194, baseType: !228, size: 32, offset: 128)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "mcu_ctr", scope: !286, file: !1, line: 195, baseType: !228, size: 32, offset: 160)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_vert_offset", scope: !286, file: !1, line: 196, baseType: !171, size: 32, offset: 192)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_rows_per_iMCU_row", scope: !286, file: !1, line: 197, baseType: !171, size: 32, offset: 224)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "whole_image", scope: !286, file: !1, line: 200, baseType: !538, size: 64, offset: 256)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "dummy_buffer", scope: !286, file: !1, line: 203, baseType: !540, size: 640, offset: 320)
!540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 640, elements: !434)
!541 = !{i32 7, !"Dwarf Version", i32 5}
!542 = !{i32 2, !"Debug Info Version", i32 3}
!543 = !{i32 1, !"wchar_size", i32 4}
!544 = !{i32 8, !"PIC Level", i32 2}
!545 = !{i32 7, !"PIE Level", i32 2}
!546 = !{i32 7, !"uwtable", i32 2}
!547 = !{i32 7, !"frame-pointer", i32 2}
!548 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!549 = distinct !DISubprogram(name: "jpeg_write_coefficients", scope: !1, file: !1, line: 38, type: !550, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !552)
!550 = !DISubroutineType(types: !551)
!551 = !{null, !295, !538}
!552 = !{}
!553 = !DILocalVariable(name: "cinfo", arg: 1, scope: !549, file: !1, line: 38, type: !295)
!554 = !DILocation(line: 38, column: 41, scope: !549)
!555 = !DILocalVariable(name: "coef_arrays", arg: 2, scope: !549, file: !1, line: 38, type: !538)
!556 = !DILocation(line: 38, column: 67, scope: !549)
!557 = !DILocation(line: 40, column: 7, scope: !558)
!558 = distinct !DILexicalBlock(scope: !549, file: !1, line: 40, column: 7)
!559 = !DILocation(line: 40, column: 14, scope: !558)
!560 = !DILocation(line: 40, column: 27, scope: !558)
!561 = !DILocation(line: 41, column: 5, scope: !558)
!562 = !DILocation(line: 43, column: 24, scope: !549)
!563 = !DILocation(line: 43, column: 3, scope: !549)
!564 = !DILocation(line: 45, column: 5, scope: !549)
!565 = !DILocation(line: 45, column: 12, scope: !549)
!566 = !DILocation(line: 45, column: 17, scope: !549)
!567 = !DILocation(line: 45, column: 50, scope: !549)
!568 = !DILocation(line: 45, column: 3, scope: !549)
!569 = !DILocation(line: 46, column: 5, scope: !549)
!570 = !DILocation(line: 46, column: 12, scope: !549)
!571 = !DILocation(line: 46, column: 18, scope: !549)
!572 = !DILocation(line: 46, column: 37, scope: !549)
!573 = !DILocation(line: 46, column: 3, scope: !549)
!574 = !DILocation(line: 48, column: 32, scope: !549)
!575 = !DILocation(line: 48, column: 39, scope: !549)
!576 = !DILocation(line: 48, column: 3, scope: !549)
!577 = !DILocation(line: 50, column: 3, scope: !549)
!578 = !DILocation(line: 50, column: 10, scope: !549)
!579 = !DILocation(line: 50, column: 24, scope: !549)
!580 = !DILocation(line: 51, column: 3, scope: !549)
!581 = !DILocation(line: 51, column: 10, scope: !549)
!582 = !DILocation(line: 51, column: 23, scope: !549)
!583 = !DILocation(line: 52, column: 1, scope: !549)
!584 = distinct !DISubprogram(name: "transencode_master_selection", scope: !1, file: !1, line: 141, type: !550, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !552)
!585 = !DILocalVariable(name: "cinfo", arg: 1, scope: !584, file: !1, line: 141, type: !295)
!586 = !DILocation(line: 141, column: 46, scope: !584)
!587 = !DILocalVariable(name: "coef_arrays", arg: 2, scope: !584, file: !1, line: 142, type: !538)
!588 = !DILocation(line: 142, column: 29, scope: !584)
!589 = !DILocation(line: 147, column: 3, scope: !584)
!590 = !DILocation(line: 147, column: 10, scope: !584)
!591 = !DILocation(line: 147, column: 27, scope: !584)
!592 = !DILocation(line: 149, column: 26, scope: !584)
!593 = !DILocation(line: 149, column: 3, scope: !584)
!594 = !DILocation(line: 152, column: 7, scope: !595)
!595 = distinct !DILexicalBlock(scope: !584, file: !1, line: 152, column: 7)
!596 = !DILocation(line: 152, column: 14, scope: !595)
!597 = !DILocation(line: 153, column: 5, scope: !598)
!598 = distinct !DILexicalBlock(scope: !595, file: !1, line: 152, column: 26)
!599 = !DILocation(line: 154, column: 3, scope: !598)
!600 = !DILocation(line: 155, column: 9, scope: !601)
!601 = distinct !DILexicalBlock(scope: !602, file: !1, line: 155, column: 9)
!602 = distinct !DILexicalBlock(scope: !595, file: !1, line: 154, column: 10)
!603 = !DILocation(line: 155, column: 16, scope: !601)
!604 = !DILocation(line: 157, column: 27, scope: !605)
!605 = distinct !DILexicalBlock(scope: !601, file: !1, line: 155, column: 34)
!606 = !DILocation(line: 157, column: 7, scope: !605)
!607 = !DILocation(line: 161, column: 5, scope: !605)
!608 = !DILocation(line: 162, column: 26, scope: !601)
!609 = !DILocation(line: 162, column: 7, scope: !601)
!610 = !DILocation(line: 166, column: 31, scope: !584)
!611 = !DILocation(line: 166, column: 38, scope: !584)
!612 = !DILocation(line: 166, column: 3, scope: !584)
!613 = !DILocation(line: 168, column: 23, scope: !584)
!614 = !DILocation(line: 168, column: 3, scope: !584)
!615 = !DILocation(line: 171, column: 5, scope: !584)
!616 = !DILocation(line: 171, column: 12, scope: !584)
!617 = !DILocation(line: 171, column: 17, scope: !584)
!618 = !DILocation(line: 171, column: 54, scope: !584)
!619 = !DILocation(line: 171, column: 3, scope: !584)
!620 = !DILocation(line: 177, column: 5, scope: !584)
!621 = !DILocation(line: 177, column: 12, scope: !584)
!622 = !DILocation(line: 177, column: 20, scope: !584)
!623 = !DILocation(line: 177, column: 40, scope: !584)
!624 = !DILocation(line: 177, column: 3, scope: !584)
!625 = !DILocation(line: 178, column: 1, scope: !584)
!626 = distinct !DISubprogram(name: "jpeg_copy_critical_parameters", scope: !1, file: !1, line: 63, type: !627, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !552)
!627 = !DISubroutineType(types: !628)
!628 = !{null, !629, !295}
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_decompress_ptr", file: !4, line: 250, baseType: !630)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_decompress_struct", file: !4, line: 394, size: 4928, elements: !632)
!632 = !{!633, !634, !635, !636, !637, !638, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !738, !750, !765, !774, !784, !799, !808, !821, !828, !837}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !631, file: !4, line: 395, baseType: !160, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !631, file: !4, line: 395, baseType: !205, size: 64, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !631, file: !4, line: 395, baseType: !271, size: 64, offset: 128)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !631, file: !4, line: 395, baseType: !250, size: 32, offset: 192)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !631, file: !4, line: 395, baseType: !171, size: 32, offset: 224)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !631, file: !4, line: 398, baseType: !639, size: 64, offset: 256)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_source_mgr", file: !4, line: 700, size: 448, elements: !641)
!641 = !{!642, !643, !644, !648, !652, !656, !660}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "next_input_byte", scope: !640, file: !4, line: 701, baseType: !480, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_in_buffer", scope: !640, file: !4, line: 702, baseType: !213, size: 64, offset: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "init_source", scope: !640, file: !4, line: 704, baseType: !645, size: 64, offset: 128)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DISubroutineType(types: !647)
!647 = !{null, !629}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "fill_input_buffer", scope: !640, file: !4, line: 705, baseType: !649, size: 64, offset: 192)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DISubroutineType(types: !651)
!651 = !{!250, !629}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "skip_input_data", scope: !640, file: !4, line: 706, baseType: !653, size: 64, offset: 256)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DISubroutineType(types: !655)
!655 = !{null, !629, !194}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "resync_to_restart", scope: !640, file: !4, line: 707, baseType: !657, size: 64, offset: 320)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DISubroutineType(types: !659)
!659 = !{!250, !629, !171}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "term_source", scope: !640, file: !4, line: 708, baseType: !645, size: 64, offset: 384)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "image_width", scope: !631, file: !4, line: 403, baseType: !228, size: 32, offset: 320)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "image_height", scope: !631, file: !4, line: 404, baseType: !228, size: 32, offset: 352)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "num_components", scope: !631, file: !4, line: 405, baseType: !171, size: 32, offset: 384)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_color_space", scope: !631, file: !4, line: 406, baseType: !325, size: 32, offset: 416)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "out_color_space", scope: !631, file: !4, line: 413, baseType: !325, size: 32, offset: 448)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "scale_num", scope: !631, file: !4, line: 415, baseType: !5, size: 32, offset: 480)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "scale_denom", scope: !631, file: !4, line: 415, baseType: !5, size: 32, offset: 512)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "output_gamma", scope: !631, file: !4, line: 417, baseType: !327, size: 64, offset: 576)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "buffered_image", scope: !631, file: !4, line: 419, baseType: !250, size: 32, offset: 640)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "raw_data_out", scope: !631, file: !4, line: 420, baseType: !250, size: 32, offset: 672)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "dct_method", scope: !631, file: !4, line: 422, baseType: !413, size: 32, offset: 704)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "do_fancy_upsampling", scope: !631, file: !4, line: 423, baseType: !250, size: 32, offset: 736)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "do_block_smoothing", scope: !631, file: !4, line: 424, baseType: !250, size: 32, offset: 768)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "quantize_colors", scope: !631, file: !4, line: 426, baseType: !250, size: 32, offset: 800)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "dither_mode", scope: !631, file: !4, line: 428, baseType: !676, size: 32, offset: 832)
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_DITHER_MODE", file: !4, line: 224, baseType: !149)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "two_pass_quantize", scope: !631, file: !4, line: 429, baseType: !250, size: 32, offset: 864)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "desired_number_of_colors", scope: !631, file: !4, line: 430, baseType: !171, size: 32, offset: 896)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "enable_1pass_quant", scope: !631, file: !4, line: 432, baseType: !250, size: 32, offset: 928)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "enable_external_quant", scope: !631, file: !4, line: 433, baseType: !250, size: 32, offset: 960)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "enable_2pass_quant", scope: !631, file: !4, line: 434, baseType: !250, size: 32, offset: 992)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "output_width", scope: !631, file: !4, line: 442, baseType: !228, size: 32, offset: 1024)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "output_height", scope: !631, file: !4, line: 443, baseType: !228, size: 32, offset: 1056)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "out_color_components", scope: !631, file: !4, line: 444, baseType: !171, size: 32, offset: 1088)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "output_components", scope: !631, file: !4, line: 445, baseType: !171, size: 32, offset: 1120)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "rec_outbuf_height", scope: !631, file: !4, line: 449, baseType: !171, size: 32, offset: 1152)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "actual_number_of_colors", scope: !631, file: !4, line: 461, baseType: !171, size: 32, offset: 1184)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !631, file: !4, line: 462, baseType: !221, size: 64, offset: 1216)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "output_scanline", scope: !631, file: !4, line: 472, baseType: !228, size: 32, offset: 1280)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "input_scan_number", scope: !631, file: !4, line: 477, baseType: !171, size: 32, offset: 1312)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "input_iMCU_row", scope: !631, file: !4, line: 478, baseType: !228, size: 32, offset: 1344)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "output_scan_number", scope: !631, file: !4, line: 484, baseType: !171, size: 32, offset: 1376)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "output_iMCU_row", scope: !631, file: !4, line: 485, baseType: !228, size: 32, offset: 1408)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "coef_bits", scope: !631, file: !4, line: 494, baseType: !695, size: 64, offset: 1472)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 2048, elements: !241)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_ptrs", scope: !631, file: !4, line: 505, baseType: !367, size: 256, offset: 1536)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "dc_huff_tbl_ptrs", scope: !631, file: !4, line: 508, baseType: !371, size: 256, offset: 1792)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "ac_huff_tbl_ptrs", scope: !631, file: !4, line: 509, baseType: !371, size: 256, offset: 2048)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "data_precision", scope: !631, file: !4, line: 516, baseType: !171, size: 32, offset: 2304)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "comp_info", scope: !631, file: !4, line: 518, baseType: !332, size: 64, offset: 2368)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "progressive_mode", scope: !631, file: !4, line: 521, baseType: !250, size: 32, offset: 2432)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "arith_code", scope: !631, file: !4, line: 522, baseType: !250, size: 32, offset: 2464)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_L", scope: !631, file: !4, line: 524, baseType: !388, size: 128, offset: 2496)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_U", scope: !631, file: !4, line: 525, baseType: !388, size: 128, offset: 2624)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "arith_ac_K", scope: !631, file: !4, line: 526, baseType: !388, size: 128, offset: 2752)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "restart_interval", scope: !631, file: !4, line: 528, baseType: !5, size: 32, offset: 2880)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "saw_JFIF_marker", scope: !631, file: !4, line: 533, baseType: !250, size: 32, offset: 2912)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "density_unit", scope: !631, file: !4, line: 535, baseType: !378, size: 8, offset: 2944)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "X_density", scope: !631, file: !4, line: 536, baseType: !362, size: 16, offset: 2960)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "Y_density", scope: !631, file: !4, line: 537, baseType: !362, size: 16, offset: 2976)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "saw_Adobe_marker", scope: !631, file: !4, line: 538, baseType: !250, size: 32, offset: 3008)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "Adobe_transform", scope: !631, file: !4, line: 539, baseType: !378, size: 8, offset: 3040)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "CCIR601_sampling", scope: !631, file: !4, line: 541, baseType: !250, size: 32, offset: 3072)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "max_h_samp_factor", scope: !631, file: !4, line: 550, baseType: !171, size: 32, offset: 3104)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "max_v_samp_factor", scope: !631, file: !4, line: 551, baseType: !171, size: 32, offset: 3136)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "min_DCT_scaled_size", scope: !631, file: !4, line: 553, baseType: !171, size: 32, offset: 3168)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "total_iMCU_rows", scope: !631, file: !4, line: 555, baseType: !228, size: 32, offset: 3200)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "sample_range_limit", scope: !631, file: !4, line: 564, baseType: !224, size: 64, offset: 3264)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "comps_in_scan", scope: !631, file: !4, line: 571, baseType: !171, size: 32, offset: 3328)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "cur_comp_info", scope: !631, file: !4, line: 572, baseType: !428, size: 256, offset: 3392)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "MCUs_per_row", scope: !631, file: !4, line: 575, baseType: !228, size: 32, offset: 3648)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_rows_in_scan", scope: !631, file: !4, line: 576, baseType: !228, size: 32, offset: 3680)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_in_MCU", scope: !631, file: !4, line: 578, baseType: !171, size: 32, offset: 3712)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_membership", scope: !631, file: !4, line: 579, baseType: !433, size: 320, offset: 3744)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "Ss", scope: !631, file: !4, line: 583, baseType: !171, size: 32, offset: 4064)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "Se", scope: !631, file: !4, line: 583, baseType: !171, size: 32, offset: 4096)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "Ah", scope: !631, file: !4, line: 583, baseType: !171, size: 32, offset: 4128)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "Al", scope: !631, file: !4, line: 583, baseType: !171, size: 32, offset: 4160)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "unread_marker", scope: !631, file: !4, line: 589, baseType: !171, size: 32, offset: 4192)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !631, file: !4, line: 594, baseType: !732, size: 64, offset: 4224)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_decomp_master", file: !19, line: 136, size: 192, elements: !734)
!734 = !{!735, !736, !737}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_for_output_pass", scope: !733, file: !19, line: 137, baseType: !645, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "finish_output_pass", scope: !733, file: !19, line: 138, baseType: !645, size: 64, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "is_dummy_pass", scope: !733, file: !19, line: 141, baseType: !250, size: 32, offset: 128)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "main", scope: !631, file: !4, line: 595, baseType: !739, size: 64, offset: 4288)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_d_main_controller", file: !19, line: 157, size: 128, elements: !741)
!741 = !{!742, !746}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !740, file: !19, line: 158, baseType: !743, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{null, !629, !528}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "process_data", scope: !740, file: !19, line: 159, baseType: !747, size: 64, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DISubroutineType(types: !749)
!749 = !{null, !629, !221, !458, !228}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "coef", scope: !631, file: !4, line: 596, baseType: !751, size: 64, offset: 4352)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_d_coef_controller", file: !19, line: 165, size: 320, elements: !753)
!753 = !{!754, !755, !759, !760, !764}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "start_input_pass", scope: !752, file: !19, line: 166, baseType: !645, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "consume_data", scope: !752, file: !19, line: 167, baseType: !756, size: 64, offset: 64)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{!171, !629}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "start_output_pass", scope: !752, file: !19, line: 168, baseType: !645, size: 64, offset: 128)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "decompress_data", scope: !752, file: !19, line: 169, baseType: !761, size: 64, offset: 192)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DISubroutineType(types: !763)
!763 = !{!171, !629, !468}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "coef_arrays", scope: !752, file: !19, line: 172, baseType: !538, size: 64, offset: 256)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "post", scope: !631, file: !4, line: 597, baseType: !766, size: 64, offset: 4416)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_d_post_controller", file: !19, line: 176, size: 128, elements: !768)
!768 = !{!769, !770}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !767, file: !19, line: 177, baseType: !743, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "post_process_data", scope: !767, file: !19, line: 178, baseType: !771, size: 64, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DISubroutineType(types: !773)
!773 = !{null, !629, !468, !458, !228, !221, !458, !228}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "inputctl", scope: !631, file: !4, line: 598, baseType: !775, size: 64, offset: 4480)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_input_controller", file: !19, line: 145, size: 320, elements: !777)
!777 = !{!778, !779, !780, !781, !782, !783}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "consume_input", scope: !776, file: !19, line: 146, baseType: !756, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "reset_input_controller", scope: !776, file: !19, line: 147, baseType: !645, size: 64, offset: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "start_input_pass", scope: !776, file: !19, line: 148, baseType: !645, size: 64, offset: 128)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "finish_input_pass", scope: !776, file: !19, line: 149, baseType: !645, size: 64, offset: 192)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "has_multiple_scans", scope: !776, file: !19, line: 152, baseType: !250, size: 32, offset: 256)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "eoi_reached", scope: !776, file: !19, line: 153, baseType: !250, size: 32, offset: 288)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "marker", scope: !631, file: !4, line: 599, baseType: !785, size: 64, offset: 4544)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_marker_reader", file: !19, line: 188, size: 1408, elements: !787)
!787 = !{!788, !789, !790, !792, !793, !795, !796, !797, !798}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "reset_marker_reader", scope: !786, file: !19, line: 189, baseType: !645, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "read_markers", scope: !786, file: !19, line: 194, baseType: !756, size: 64, offset: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "read_restart_marker", scope: !786, file: !19, line: 196, baseType: !791, size: 64, offset: 128)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_marker_parser_method", file: !4, line: 781, baseType: !649)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "process_COM", scope: !786, file: !19, line: 198, baseType: !791, size: 64, offset: 192)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "process_APPn", scope: !786, file: !19, line: 199, baseType: !794, size: 1024, offset: 256)
!794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !791, size: 1024, elements: !389)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "saw_SOI", scope: !786, file: !19, line: 204, baseType: !250, size: 32, offset: 1280)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "saw_SOF", scope: !786, file: !19, line: 205, baseType: !250, size: 32, offset: 1312)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "next_restart_num", scope: !786, file: !19, line: 206, baseType: !171, size: 32, offset: 1344)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "discarded_bytes", scope: !786, file: !19, line: 207, baseType: !5, size: 32, offset: 1376)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "entropy", scope: !631, file: !4, line: 600, baseType: !800, size: 64, offset: 4608)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_entropy_decoder", file: !19, line: 211, size: 128, elements: !802)
!802 = !{!803, !804}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !801, file: !19, line: 212, baseType: !645, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "decode_mcu", scope: !801, file: !19, line: 213, baseType: !805, size: 64, offset: 64)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DISubroutineType(types: !807)
!807 = !{!250, !629, !234}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "idct", scope: !631, file: !4, line: 601, baseType: !809, size: 64, offset: 4672)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_inverse_dct", file: !19, line: 223, size: 704, elements: !811)
!811 = !{!812, !813}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !810, file: !19, line: 224, baseType: !645, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "inverse_DCT", scope: !810, file: !19, line: 226, baseType: !814, size: 640, offset: 64)
!814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !815, size: 640, elements: !434)
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "inverse_DCT_method_ptr", file: !19, line: 218, baseType: !816)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DISubroutineType(types: !818)
!818 = !{null, !629, !332, !819, !221, !228}
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "JCOEFPTR", file: !4, line: 75, baseType: !820)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "upsample", scope: !631, file: !4, line: 602, baseType: !822, size: 64, offset: 4736)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_upsampler", file: !19, line: 230, size: 192, elements: !824)
!824 = !{!825, !826, !827}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !823, file: !19, line: 231, baseType: !645, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "upsample", scope: !823, file: !19, line: 232, baseType: !771, size: 64, offset: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "need_context_rows", scope: !823, file: !19, line: 240, baseType: !250, size: 32, offset: 128)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "cconvert", scope: !631, file: !4, line: 603, baseType: !829, size: 64, offset: 4800)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_color_deconverter", file: !19, line: 244, size: 128, elements: !831)
!831 = !{!832, !833}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !830, file: !19, line: 245, baseType: !645, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "color_convert", scope: !830, file: !19, line: 246, baseType: !834, size: 64, offset: 64)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DISubroutineType(types: !836)
!836 = !{null, !629, !468, !228, !221, !171}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "cquantize", scope: !631, file: !4, line: 604, baseType: !838, size: 64, offset: 4864)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_color_quantizer", file: !19, line: 252, size: 256, elements: !840)
!840 = !{!841, !845, !849, !850}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !839, file: !19, line: 253, baseType: !842, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DISubroutineType(types: !844)
!844 = !{null, !629, !250}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "color_quantize", scope: !839, file: !19, line: 254, baseType: !846, size: 64, offset: 64)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DISubroutineType(types: !848)
!848 = !{null, !629, !221, !221, !171}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "finish_pass", scope: !839, file: !19, line: 257, baseType: !645, size: 64, offset: 128)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "new_color_map", scope: !839, file: !19, line: 258, baseType: !645, size: 64, offset: 192)
!851 = !DILocalVariable(name: "srcinfo", arg: 1, scope: !626, file: !1, line: 63, type: !629)
!852 = !DILocation(line: 63, column: 49, scope: !626)
!853 = !DILocalVariable(name: "dstinfo", arg: 2, scope: !626, file: !1, line: 64, type: !295)
!854 = !DILocation(line: 64, column: 26, scope: !626)
!855 = !DILocalVariable(name: "qtblptr", scope: !626, file: !1, line: 66, type: !856)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!857 = !DILocation(line: 66, column: 17, scope: !626)
!858 = !DILocalVariable(name: "incomp", scope: !626, file: !1, line: 67, type: !332)
!859 = !DILocation(line: 67, column: 24, scope: !626)
!860 = !DILocalVariable(name: "outcomp", scope: !626, file: !1, line: 67, type: !332)
!861 = !DILocation(line: 67, column: 33, scope: !626)
!862 = !DILocalVariable(name: "c_quant", scope: !626, file: !1, line: 68, type: !356)
!863 = !DILocation(line: 68, column: 15, scope: !626)
!864 = !DILocalVariable(name: "slot_quant", scope: !626, file: !1, line: 68, type: !356)
!865 = !DILocation(line: 68, column: 25, scope: !626)
!866 = !DILocalVariable(name: "tblno", scope: !626, file: !1, line: 69, type: !171)
!867 = !DILocation(line: 69, column: 7, scope: !626)
!868 = !DILocalVariable(name: "ci", scope: !626, file: !1, line: 69, type: !171)
!869 = !DILocation(line: 69, column: 14, scope: !626)
!870 = !DILocalVariable(name: "coefi", scope: !626, file: !1, line: 69, type: !171)
!871 = !DILocation(line: 69, column: 18, scope: !626)
!872 = !DILocation(line: 72, column: 7, scope: !873)
!873 = distinct !DILexicalBlock(scope: !626, file: !1, line: 72, column: 7)
!874 = !DILocation(line: 72, column: 16, scope: !873)
!875 = !DILocation(line: 72, column: 29, scope: !873)
!876 = !DILocation(line: 73, column: 5, scope: !873)
!877 = !DILocation(line: 75, column: 26, scope: !626)
!878 = !DILocation(line: 75, column: 35, scope: !626)
!879 = !DILocation(line: 75, column: 3, scope: !626)
!880 = !DILocation(line: 75, column: 12, scope: !626)
!881 = !DILocation(line: 75, column: 24, scope: !626)
!882 = !DILocation(line: 76, column: 27, scope: !626)
!883 = !DILocation(line: 76, column: 36, scope: !626)
!884 = !DILocation(line: 76, column: 3, scope: !626)
!885 = !DILocation(line: 76, column: 12, scope: !626)
!886 = !DILocation(line: 76, column: 25, scope: !626)
!887 = !DILocation(line: 77, column: 31, scope: !626)
!888 = !DILocation(line: 77, column: 40, scope: !626)
!889 = !DILocation(line: 77, column: 3, scope: !626)
!890 = !DILocation(line: 77, column: 12, scope: !626)
!891 = !DILocation(line: 77, column: 29, scope: !626)
!892 = !DILocation(line: 78, column: 29, scope: !626)
!893 = !DILocation(line: 78, column: 38, scope: !626)
!894 = !DILocation(line: 78, column: 3, scope: !626)
!895 = !DILocation(line: 78, column: 12, scope: !626)
!896 = !DILocation(line: 78, column: 27, scope: !626)
!897 = !DILocation(line: 80, column: 21, scope: !626)
!898 = !DILocation(line: 80, column: 3, scope: !626)
!899 = !DILocation(line: 84, column: 23, scope: !626)
!900 = !DILocation(line: 84, column: 32, scope: !626)
!901 = !DILocation(line: 84, column: 41, scope: !626)
!902 = !DILocation(line: 84, column: 3, scope: !626)
!903 = !DILocation(line: 85, column: 29, scope: !626)
!904 = !DILocation(line: 85, column: 38, scope: !626)
!905 = !DILocation(line: 85, column: 3, scope: !626)
!906 = !DILocation(line: 85, column: 12, scope: !626)
!907 = !DILocation(line: 85, column: 27, scope: !626)
!908 = !DILocation(line: 86, column: 31, scope: !626)
!909 = !DILocation(line: 86, column: 40, scope: !626)
!910 = !DILocation(line: 86, column: 3, scope: !626)
!911 = !DILocation(line: 86, column: 12, scope: !626)
!912 = !DILocation(line: 86, column: 29, scope: !626)
!913 = !DILocation(line: 88, column: 14, scope: !914)
!914 = distinct !DILexicalBlock(scope: !626, file: !1, line: 88, column: 3)
!915 = !DILocation(line: 88, column: 8, scope: !914)
!916 = !DILocation(line: 88, column: 19, scope: !917)
!917 = distinct !DILexicalBlock(scope: !914, file: !1, line: 88, column: 3)
!918 = !DILocation(line: 88, column: 25, scope: !917)
!919 = !DILocation(line: 88, column: 3, scope: !914)
!920 = !DILocation(line: 89, column: 9, scope: !921)
!921 = distinct !DILexicalBlock(scope: !922, file: !1, line: 89, column: 9)
!922 = distinct !DILexicalBlock(scope: !917, file: !1, line: 88, column: 52)
!923 = !DILocation(line: 89, column: 18, scope: !921)
!924 = !DILocation(line: 89, column: 33, scope: !921)
!925 = !DILocation(line: 89, column: 40, scope: !921)
!926 = !DILocation(line: 90, column: 19, scope: !927)
!927 = distinct !DILexicalBlock(scope: !921, file: !1, line: 89, column: 49)
!928 = !DILocation(line: 90, column: 28, scope: !927)
!929 = !DILocation(line: 90, column: 43, scope: !927)
!930 = !DILocation(line: 90, column: 15, scope: !927)
!931 = !DILocation(line: 91, column: 12, scope: !932)
!932 = distinct !DILexicalBlock(scope: !927, file: !1, line: 91, column: 11)
!933 = !DILocation(line: 91, column: 11, scope: !932)
!934 = !DILocation(line: 91, column: 20, scope: !932)
!935 = !DILocation(line: 92, column: 51, scope: !932)
!936 = !DILocation(line: 92, column: 13, scope: !932)
!937 = !DILocation(line: 92, column: 3, scope: !932)
!938 = !DILocation(line: 92, column: 11, scope: !932)
!939 = !DILocation(line: 92, column: 2, scope: !932)
!940 = !DILocation(line: 93, column: 7, scope: !927)
!941 = !DILocation(line: 96, column: 9, scope: !927)
!942 = !DILocation(line: 96, column: 8, scope: !927)
!943 = !DILocation(line: 96, column: 19, scope: !927)
!944 = !DILocation(line: 96, column: 30, scope: !927)
!945 = !DILocation(line: 97, column: 5, scope: !927)
!946 = !DILocation(line: 98, column: 3, scope: !922)
!947 = !DILocation(line: 88, column: 48, scope: !917)
!948 = !DILocation(line: 88, column: 3, scope: !917)
!949 = distinct !{!949, !919, !950, !951}
!950 = !DILocation(line: 98, column: 3, scope: !914)
!951 = !{!"llvm.loop.mustprogress"}
!952 = !DILocation(line: 102, column: 29, scope: !626)
!953 = !DILocation(line: 102, column: 38, scope: !626)
!954 = !DILocation(line: 102, column: 3, scope: !626)
!955 = !DILocation(line: 102, column: 12, scope: !626)
!956 = !DILocation(line: 102, column: 27, scope: !626)
!957 = !DILocation(line: 103, column: 7, scope: !958)
!958 = distinct !DILexicalBlock(scope: !626, file: !1, line: 103, column: 7)
!959 = !DILocation(line: 103, column: 16, scope: !958)
!960 = !DILocation(line: 103, column: 31, scope: !958)
!961 = !DILocation(line: 103, column: 35, scope: !958)
!962 = !DILocation(line: 103, column: 38, scope: !958)
!963 = !DILocation(line: 103, column: 47, scope: !958)
!964 = !DILocation(line: 103, column: 62, scope: !958)
!965 = !DILocation(line: 104, column: 5, scope: !958)
!966 = !DILocation(line: 106, column: 11, scope: !967)
!967 = distinct !DILexicalBlock(scope: !626, file: !1, line: 106, column: 3)
!968 = !DILocation(line: 106, column: 25, scope: !967)
!969 = !DILocation(line: 106, column: 34, scope: !967)
!970 = !DILocation(line: 106, column: 23, scope: !967)
!971 = !DILocation(line: 106, column: 55, scope: !967)
!972 = !DILocation(line: 106, column: 64, scope: !967)
!973 = !DILocation(line: 106, column: 53, scope: !967)
!974 = !DILocation(line: 106, column: 8, scope: !967)
!975 = !DILocation(line: 107, column: 8, scope: !976)
!976 = distinct !DILexicalBlock(scope: !967, file: !1, line: 106, column: 3)
!977 = !DILocation(line: 107, column: 13, scope: !976)
!978 = !DILocation(line: 107, column: 22, scope: !976)
!979 = !DILocation(line: 107, column: 11, scope: !976)
!980 = !DILocation(line: 106, column: 3, scope: !967)
!981 = !DILocation(line: 108, column: 29, scope: !982)
!982 = distinct !DILexicalBlock(scope: !976, file: !1, line: 107, column: 65)
!983 = !DILocation(line: 108, column: 37, scope: !982)
!984 = !DILocation(line: 108, column: 5, scope: !982)
!985 = !DILocation(line: 108, column: 14, scope: !982)
!986 = !DILocation(line: 108, column: 27, scope: !982)
!987 = !DILocation(line: 109, column: 30, scope: !982)
!988 = !DILocation(line: 109, column: 38, scope: !982)
!989 = !DILocation(line: 109, column: 5, scope: !982)
!990 = !DILocation(line: 109, column: 14, scope: !982)
!991 = !DILocation(line: 109, column: 28, scope: !982)
!992 = !DILocation(line: 110, column: 30, scope: !982)
!993 = !DILocation(line: 110, column: 38, scope: !982)
!994 = !DILocation(line: 110, column: 5, scope: !982)
!995 = !DILocation(line: 110, column: 14, scope: !982)
!996 = !DILocation(line: 110, column: 28, scope: !982)
!997 = !DILocation(line: 111, column: 29, scope: !982)
!998 = !DILocation(line: 111, column: 37, scope: !982)
!999 = !DILocation(line: 111, column: 5, scope: !982)
!1000 = !DILocation(line: 111, column: 14, scope: !982)
!1001 = !DILocation(line: 111, column: 27, scope: !982)
!1002 = !DILocation(line: 116, column: 13, scope: !982)
!1003 = !DILocation(line: 116, column: 22, scope: !982)
!1004 = !DILocation(line: 116, column: 11, scope: !982)
!1005 = !DILocation(line: 117, column: 9, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !982, file: !1, line: 117, column: 9)
!1007 = !DILocation(line: 117, column: 15, scope: !1006)
!1008 = !DILocation(line: 117, column: 19, scope: !1006)
!1009 = !DILocation(line: 117, column: 22, scope: !1006)
!1010 = !DILocation(line: 117, column: 28, scope: !1006)
!1011 = !DILocation(line: 117, column: 46, scope: !1006)
!1012 = !DILocation(line: 118, column: 2, scope: !1006)
!1013 = !DILocation(line: 118, column: 11, scope: !1006)
!1014 = !DILocation(line: 118, column: 26, scope: !1006)
!1015 = !DILocation(line: 118, column: 33, scope: !1006)
!1016 = !DILocation(line: 119, column: 7, scope: !1006)
!1017 = !DILocation(line: 120, column: 18, scope: !982)
!1018 = !DILocation(line: 120, column: 27, scope: !982)
!1019 = !DILocation(line: 120, column: 42, scope: !982)
!1020 = !DILocation(line: 120, column: 16, scope: !982)
!1021 = !DILocation(line: 121, column: 15, scope: !982)
!1022 = !DILocation(line: 121, column: 23, scope: !982)
!1023 = !DILocation(line: 121, column: 13, scope: !982)
!1024 = !DILocation(line: 122, column: 9, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !982, file: !1, line: 122, column: 9)
!1026 = !DILocation(line: 122, column: 17, scope: !1025)
!1027 = !DILocation(line: 123, column: 18, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1029, file: !1, line: 123, column: 7)
!1029 = distinct !DILexicalBlock(scope: !1025, file: !1, line: 122, column: 26)
!1030 = !DILocation(line: 123, column: 12, scope: !1028)
!1031 = !DILocation(line: 123, column: 23, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1028, file: !1, line: 123, column: 7)
!1033 = !DILocation(line: 123, column: 29, scope: !1032)
!1034 = !DILocation(line: 123, column: 7, scope: !1028)
!1035 = !DILocation(line: 124, column: 6, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1037, file: !1, line: 124, column: 6)
!1037 = distinct !DILexicalBlock(scope: !1032, file: !1, line: 123, column: 50)
!1038 = !DILocation(line: 124, column: 15, scope: !1036)
!1039 = !DILocation(line: 124, column: 24, scope: !1036)
!1040 = !DILocation(line: 124, column: 34, scope: !1036)
!1041 = !DILocation(line: 124, column: 46, scope: !1036)
!1042 = !DILocation(line: 124, column: 55, scope: !1036)
!1043 = !DILocation(line: 124, column: 31, scope: !1036)
!1044 = !DILocation(line: 125, column: 4, scope: !1036)
!1045 = !DILocation(line: 126, column: 7, scope: !1037)
!1046 = !DILocation(line: 123, column: 46, scope: !1032)
!1047 = !DILocation(line: 123, column: 7, scope: !1032)
!1048 = distinct !{!1048, !1034, !1049, !951}
!1049 = !DILocation(line: 126, column: 7, scope: !1028)
!1050 = !DILocation(line: 127, column: 5, scope: !1029)
!1051 = !DILocation(line: 131, column: 3, scope: !982)
!1052 = !DILocation(line: 107, column: 40, scope: !976)
!1053 = !DILocation(line: 107, column: 50, scope: !976)
!1054 = !DILocation(line: 107, column: 61, scope: !976)
!1055 = !DILocation(line: 106, column: 3, scope: !976)
!1056 = distinct !{!1056, !980, !1057, !951}
!1057 = !DILocation(line: 131, column: 3, scope: !967)
!1058 = !DILocation(line: 132, column: 1, scope: !626)
!1059 = distinct !DISubprogram(name: "transencode_coef_controller", scope: !1, file: !1, line: 346, type: !550, scopeLine: 348, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !552)
!1060 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1059, file: !1, line: 346, type: !295)
!1061 = !DILocation(line: 346, column: 45, scope: !1059)
!1062 = !DILocalVariable(name: "coef_arrays", arg: 2, scope: !1059, file: !1, line: 347, type: !538)
!1063 = !DILocation(line: 347, column: 28, scope: !1059)
!1064 = !DILocalVariable(name: "coef", scope: !1059, file: !1, line: 349, type: !283)
!1065 = !DILocation(line: 349, column: 15, scope: !1059)
!1066 = !DILocalVariable(name: "buffer", scope: !1059, file: !1, line: 350, type: !235)
!1067 = !DILocation(line: 350, column: 13, scope: !1059)
!1068 = !DILocalVariable(name: "i", scope: !1059, file: !1, line: 351, type: !171)
!1069 = !DILocation(line: 351, column: 7, scope: !1059)
!1070 = !DILocation(line: 354, column: 7, scope: !1059)
!1071 = !DILocation(line: 354, column: 14, scope: !1059)
!1072 = !DILocation(line: 354, column: 19, scope: !1059)
!1073 = !DILocation(line: 354, column: 48, scope: !1059)
!1074 = !DILocation(line: 354, column: 5, scope: !1059)
!1075 = !DILocation(line: 353, column: 8, scope: !1059)
!1076 = !DILocation(line: 356, column: 51, scope: !1059)
!1077 = !DILocation(line: 356, column: 3, scope: !1059)
!1078 = !DILocation(line: 356, column: 10, scope: !1059)
!1079 = !DILocation(line: 356, column: 15, scope: !1059)
!1080 = !DILocation(line: 357, column: 3, scope: !1059)
!1081 = !DILocation(line: 357, column: 9, scope: !1059)
!1082 = !DILocation(line: 357, column: 13, scope: !1059)
!1083 = !DILocation(line: 357, column: 24, scope: !1059)
!1084 = !DILocation(line: 358, column: 3, scope: !1059)
!1085 = !DILocation(line: 358, column: 9, scope: !1059)
!1086 = !DILocation(line: 358, column: 13, scope: !1059)
!1087 = !DILocation(line: 358, column: 27, scope: !1059)
!1088 = !DILocation(line: 361, column: 23, scope: !1059)
!1089 = !DILocation(line: 361, column: 3, scope: !1059)
!1090 = !DILocation(line: 361, column: 9, scope: !1059)
!1091 = !DILocation(line: 361, column: 21, scope: !1059)
!1092 = !DILocation(line: 365, column: 7, scope: !1059)
!1093 = !DILocation(line: 365, column: 14, scope: !1059)
!1094 = !DILocation(line: 365, column: 19, scope: !1059)
!1095 = !DILocation(line: 365, column: 48, scope: !1059)
!1096 = !DILocation(line: 365, column: 5, scope: !1059)
!1097 = !DILocation(line: 364, column: 10, scope: !1059)
!1098 = !DILocation(line: 367, column: 26, scope: !1059)
!1099 = !DILocation(line: 367, column: 3, scope: !1059)
!1100 = !DILocation(line: 368, column: 10, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1059, file: !1, line: 368, column: 3)
!1102 = !DILocation(line: 368, column: 8, scope: !1101)
!1103 = !DILocation(line: 368, column: 15, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1101, file: !1, line: 368, column: 3)
!1105 = !DILocation(line: 368, column: 17, scope: !1104)
!1106 = !DILocation(line: 368, column: 3, scope: !1101)
!1107 = !DILocation(line: 369, column: 29, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1104, file: !1, line: 368, column: 45)
!1109 = !DILocation(line: 369, column: 38, scope: !1108)
!1110 = !DILocation(line: 369, column: 36, scope: !1108)
!1111 = !DILocation(line: 369, column: 5, scope: !1108)
!1112 = !DILocation(line: 369, column: 11, scope: !1108)
!1113 = !DILocation(line: 369, column: 24, scope: !1108)
!1114 = !DILocation(line: 369, column: 27, scope: !1108)
!1115 = !DILocation(line: 370, column: 3, scope: !1108)
!1116 = !DILocation(line: 368, column: 41, scope: !1104)
!1117 = !DILocation(line: 368, column: 3, scope: !1104)
!1118 = distinct !{!1118, !1106, !1119, !951}
!1119 = !DILocation(line: 370, column: 3, scope: !1101)
!1120 = !DILocation(line: 371, column: 1, scope: !1059)
!1121 = distinct !DISubprogram(name: "start_pass_coef", scope: !1, file: !1, line: 238, type: !293, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !552)
!1122 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1121, file: !1, line: 238, type: !295)
!1123 = !DILocation(line: 238, column: 33, scope: !1121)
!1124 = !DILocalVariable(name: "pass_mode", arg: 2, scope: !1121, file: !1, line: 238, type: !528)
!1125 = !DILocation(line: 238, column: 51, scope: !1121)
!1126 = !DILocalVariable(name: "coef", scope: !1121, file: !1, line: 240, type: !283)
!1127 = !DILocation(line: 240, column: 15, scope: !1121)
!1128 = !DILocation(line: 240, column: 36, scope: !1121)
!1129 = !DILocation(line: 240, column: 43, scope: !1121)
!1130 = !DILocation(line: 242, column: 7, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1121, file: !1, line: 242, column: 7)
!1132 = !DILocation(line: 242, column: 17, scope: !1131)
!1133 = !DILocation(line: 243, column: 5, scope: !1131)
!1134 = !DILocation(line: 245, column: 3, scope: !1121)
!1135 = !DILocation(line: 245, column: 9, scope: !1121)
!1136 = !DILocation(line: 245, column: 22, scope: !1121)
!1137 = !DILocation(line: 246, column: 18, scope: !1121)
!1138 = !DILocation(line: 246, column: 3, scope: !1121)
!1139 = !DILocation(line: 247, column: 1, scope: !1121)
!1140 = distinct !DISubprogram(name: "compress_output", scope: !1, file: !1, line: 261, type: !531, scopeLine: 262, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !552)
!1141 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1140, file: !1, line: 261, type: !295)
!1142 = !DILocation(line: 261, column: 33, scope: !1140)
!1143 = !DILocalVariable(name: "input_buf", arg: 2, scope: !1140, file: !1, line: 261, type: !468)
!1144 = !DILocation(line: 261, column: 51, scope: !1140)
!1145 = !DILocalVariable(name: "coef", scope: !1140, file: !1, line: 263, type: !283)
!1146 = !DILocation(line: 263, column: 15, scope: !1140)
!1147 = !DILocation(line: 263, column: 36, scope: !1140)
!1148 = !DILocation(line: 263, column: 43, scope: !1140)
!1149 = !DILocalVariable(name: "MCU_col_num", scope: !1140, file: !1, line: 264, type: !228)
!1150 = !DILocation(line: 264, column: 14, scope: !1140)
!1151 = !DILocalVariable(name: "last_MCU_col", scope: !1140, file: !1, line: 265, type: !228)
!1152 = !DILocation(line: 265, column: 14, scope: !1140)
!1153 = !DILocation(line: 265, column: 29, scope: !1140)
!1154 = !DILocation(line: 265, column: 36, scope: !1140)
!1155 = !DILocation(line: 265, column: 49, scope: !1140)
!1156 = !DILocalVariable(name: "last_iMCU_row", scope: !1140, file: !1, line: 266, type: !228)
!1157 = !DILocation(line: 266, column: 14, scope: !1140)
!1158 = !DILocation(line: 266, column: 30, scope: !1140)
!1159 = !DILocation(line: 266, column: 37, scope: !1140)
!1160 = !DILocation(line: 266, column: 53, scope: !1140)
!1161 = !DILocalVariable(name: "blkn", scope: !1140, file: !1, line: 267, type: !171)
!1162 = !DILocation(line: 267, column: 7, scope: !1140)
!1163 = !DILocalVariable(name: "ci", scope: !1140, file: !1, line: 267, type: !171)
!1164 = !DILocation(line: 267, column: 13, scope: !1140)
!1165 = !DILocalVariable(name: "xindex", scope: !1140, file: !1, line: 267, type: !171)
!1166 = !DILocation(line: 267, column: 17, scope: !1140)
!1167 = !DILocalVariable(name: "yindex", scope: !1140, file: !1, line: 267, type: !171)
!1168 = !DILocation(line: 267, column: 25, scope: !1140)
!1169 = !DILocalVariable(name: "yoffset", scope: !1140, file: !1, line: 267, type: !171)
!1170 = !DILocation(line: 267, column: 33, scope: !1140)
!1171 = !DILocalVariable(name: "blockcnt", scope: !1140, file: !1, line: 267, type: !171)
!1172 = !DILocation(line: 267, column: 42, scope: !1140)
!1173 = !DILocalVariable(name: "start_col", scope: !1140, file: !1, line: 268, type: !228)
!1174 = !DILocation(line: 268, column: 14, scope: !1140)
!1175 = !DILocalVariable(name: "buffer", scope: !1140, file: !1, line: 269, type: !1176)
!1176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 256, elements: !368)
!1177 = !DILocation(line: 269, column: 15, scope: !1140)
!1178 = !DILocalVariable(name: "MCU_buffer", scope: !1140, file: !1, line: 270, type: !540)
!1179 = !DILocation(line: 270, column: 13, scope: !1140)
!1180 = !DILocalVariable(name: "buffer_ptr", scope: !1140, file: !1, line: 271, type: !235)
!1181 = !DILocation(line: 271, column: 13, scope: !1140)
!1182 = !DILocalVariable(name: "compptr", scope: !1140, file: !1, line: 272, type: !332)
!1183 = !DILocation(line: 272, column: 24, scope: !1140)
!1184 = !DILocation(line: 275, column: 11, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1140, file: !1, line: 275, column: 3)
!1186 = !DILocation(line: 275, column: 8, scope: !1185)
!1187 = !DILocation(line: 275, column: 16, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1185, file: !1, line: 275, column: 3)
!1189 = !DILocation(line: 275, column: 21, scope: !1188)
!1190 = !DILocation(line: 275, column: 28, scope: !1188)
!1191 = !DILocation(line: 275, column: 19, scope: !1188)
!1192 = !DILocation(line: 275, column: 3, scope: !1185)
!1193 = !DILocation(line: 276, column: 15, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1188, file: !1, line: 275, column: 49)
!1195 = !DILocation(line: 276, column: 22, scope: !1194)
!1196 = !DILocation(line: 276, column: 36, scope: !1194)
!1197 = !DILocation(line: 276, column: 13, scope: !1194)
!1198 = !DILocation(line: 277, column: 20, scope: !1194)
!1199 = !DILocation(line: 277, column: 27, scope: !1194)
!1200 = !DILocation(line: 277, column: 32, scope: !1194)
!1201 = !DILocation(line: 278, column: 23, scope: !1194)
!1202 = !DILocation(line: 278, column: 30, scope: !1194)
!1203 = !DILocation(line: 278, column: 36, scope: !1194)
!1204 = !DILocation(line: 278, column: 48, scope: !1194)
!1205 = !DILocation(line: 278, column: 57, scope: !1194)
!1206 = !DILocation(line: 279, column: 8, scope: !1194)
!1207 = !DILocation(line: 279, column: 14, scope: !1194)
!1208 = !DILocation(line: 279, column: 29, scope: !1194)
!1209 = !DILocation(line: 279, column: 38, scope: !1194)
!1210 = !DILocation(line: 279, column: 27, scope: !1194)
!1211 = !DILocation(line: 280, column: 21, scope: !1194)
!1212 = !DILocation(line: 280, column: 30, scope: !1194)
!1213 = !DILocation(line: 277, column: 18, scope: !1194)
!1214 = !DILocation(line: 277, column: 12, scope: !1194)
!1215 = !DILocation(line: 277, column: 5, scope: !1194)
!1216 = !DILocation(line: 277, column: 16, scope: !1194)
!1217 = !DILocation(line: 281, column: 3, scope: !1194)
!1218 = !DILocation(line: 275, column: 45, scope: !1188)
!1219 = !DILocation(line: 275, column: 3, scope: !1188)
!1220 = distinct !{!1220, !1192, !1221, !951}
!1221 = !DILocation(line: 281, column: 3, scope: !1185)
!1222 = !DILocation(line: 284, column: 18, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1140, file: !1, line: 284, column: 3)
!1224 = !DILocation(line: 284, column: 24, scope: !1223)
!1225 = !DILocation(line: 284, column: 16, scope: !1223)
!1226 = !DILocation(line: 284, column: 8, scope: !1223)
!1227 = !DILocation(line: 284, column: 41, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1223, file: !1, line: 284, column: 3)
!1229 = !DILocation(line: 284, column: 51, scope: !1228)
!1230 = !DILocation(line: 284, column: 57, scope: !1228)
!1231 = !DILocation(line: 284, column: 49, scope: !1228)
!1232 = !DILocation(line: 284, column: 3, scope: !1223)
!1233 = !DILocation(line: 286, column: 24, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1235, file: !1, line: 286, column: 5)
!1235 = distinct !DILexicalBlock(scope: !1228, file: !1, line: 285, column: 19)
!1236 = !DILocation(line: 286, column: 30, scope: !1234)
!1237 = !DILocation(line: 286, column: 22, scope: !1234)
!1238 = !DILocation(line: 286, column: 10, scope: !1234)
!1239 = !DILocation(line: 286, column: 39, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1234, file: !1, line: 286, column: 5)
!1241 = !DILocation(line: 286, column: 53, scope: !1240)
!1242 = !DILocation(line: 286, column: 60, scope: !1240)
!1243 = !DILocation(line: 286, column: 51, scope: !1240)
!1244 = !DILocation(line: 286, column: 5, scope: !1234)
!1245 = !DILocation(line: 289, column: 12, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1240, file: !1, line: 287, column: 18)
!1247 = !DILocation(line: 290, column: 15, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1246, file: !1, line: 290, column: 7)
!1249 = !DILocation(line: 290, column: 12, scope: !1248)
!1250 = !DILocation(line: 290, column: 20, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1248, file: !1, line: 290, column: 7)
!1252 = !DILocation(line: 290, column: 25, scope: !1251)
!1253 = !DILocation(line: 290, column: 32, scope: !1251)
!1254 = !DILocation(line: 290, column: 23, scope: !1251)
!1255 = !DILocation(line: 290, column: 7, scope: !1248)
!1256 = !DILocation(line: 291, column: 12, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1251, file: !1, line: 290, column: 53)
!1258 = !DILocation(line: 291, column: 19, scope: !1257)
!1259 = !DILocation(line: 291, column: 33, scope: !1257)
!1260 = !DILocation(line: 291, column: 10, scope: !1257)
!1261 = !DILocation(line: 292, column: 14, scope: !1257)
!1262 = !DILocation(line: 292, column: 28, scope: !1257)
!1263 = !DILocation(line: 292, column: 37, scope: !1257)
!1264 = !DILocation(line: 292, column: 26, scope: !1257)
!1265 = !DILocation(line: 292, column: 12, scope: !1257)
!1266 = !DILocation(line: 293, column: 14, scope: !1257)
!1267 = !DILocation(line: 293, column: 28, scope: !1257)
!1268 = !DILocation(line: 293, column: 26, scope: !1257)
!1269 = !DILocation(line: 293, column: 13, scope: !1257)
!1270 = !DILocation(line: 293, column: 44, scope: !1257)
!1271 = !DILocation(line: 293, column: 53, scope: !1257)
!1272 = !DILocation(line: 294, column: 9, scope: !1257)
!1273 = !DILocation(line: 294, column: 18, scope: !1257)
!1274 = !DILocation(line: 293, column: 11, scope: !1257)
!1275 = !DILocation(line: 295, column: 14, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1257, file: !1, line: 295, column: 2)
!1277 = !DILocation(line: 295, column: 7, scope: !1276)
!1278 = !DILocation(line: 295, column: 19, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1276, file: !1, line: 295, column: 2)
!1280 = !DILocation(line: 295, column: 28, scope: !1279)
!1281 = !DILocation(line: 295, column: 37, scope: !1279)
!1282 = !DILocation(line: 295, column: 26, scope: !1279)
!1283 = !DILocation(line: 295, column: 2, scope: !1276)
!1284 = !DILocation(line: 296, column: 8, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1286, file: !1, line: 296, column: 8)
!1286 = distinct !DILexicalBlock(scope: !1279, file: !1, line: 295, column: 59)
!1287 = !DILocation(line: 296, column: 14, scope: !1285)
!1288 = !DILocation(line: 296, column: 29, scope: !1285)
!1289 = !DILocation(line: 296, column: 27, scope: !1285)
!1290 = !DILocation(line: 296, column: 43, scope: !1285)
!1291 = !DILocation(line: 297, column: 8, scope: !1285)
!1292 = !DILocation(line: 297, column: 15, scope: !1285)
!1293 = !DILocation(line: 297, column: 14, scope: !1285)
!1294 = !DILocation(line: 297, column: 25, scope: !1285)
!1295 = !DILocation(line: 297, column: 34, scope: !1285)
!1296 = !DILocation(line: 297, column: 23, scope: !1285)
!1297 = !DILocation(line: 299, column: 26, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1285, file: !1, line: 297, column: 51)
!1299 = !DILocation(line: 299, column: 19, scope: !1298)
!1300 = !DILocation(line: 299, column: 30, scope: !1298)
!1301 = !DILocation(line: 299, column: 37, scope: !1298)
!1302 = !DILocation(line: 299, column: 36, scope: !1298)
!1303 = !DILocation(line: 299, column: 48, scope: !1298)
!1304 = !DILocation(line: 299, column: 46, scope: !1298)
!1305 = !DILocation(line: 299, column: 17, scope: !1298)
!1306 = !DILocation(line: 300, column: 18, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1298, file: !1, line: 300, column: 6)
!1308 = !DILocation(line: 300, column: 11, scope: !1307)
!1309 = !DILocation(line: 300, column: 23, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1307, file: !1, line: 300, column: 6)
!1311 = !DILocation(line: 300, column: 32, scope: !1310)
!1312 = !DILocation(line: 300, column: 30, scope: !1310)
!1313 = !DILocation(line: 300, column: 6, scope: !1307)
!1314 = !DILocation(line: 301, column: 39, scope: !1310)
!1315 = !DILocation(line: 301, column: 23, scope: !1310)
!1316 = !DILocation(line: 301, column: 8, scope: !1310)
!1317 = !DILocation(line: 301, column: 27, scope: !1310)
!1318 = !DILocation(line: 300, column: 48, scope: !1310)
!1319 = !DILocation(line: 300, column: 6, scope: !1310)
!1320 = distinct !{!1320, !1313, !1321, !951}
!1321 = !DILocation(line: 301, column: 39, scope: !1307)
!1322 = !DILocation(line: 302, column: 4, scope: !1298)
!1323 = !DILocation(line: 304, column: 13, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1285, file: !1, line: 302, column: 11)
!1325 = !DILocation(line: 312, column: 4, scope: !1286)
!1326 = !DILocation(line: 312, column: 11, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1328, file: !1, line: 312, column: 4)
!1328 = distinct !DILexicalBlock(scope: !1286, file: !1, line: 312, column: 4)
!1329 = !DILocation(line: 312, column: 20, scope: !1327)
!1330 = !DILocation(line: 312, column: 29, scope: !1327)
!1331 = !DILocation(line: 312, column: 18, scope: !1327)
!1332 = !DILocation(line: 312, column: 4, scope: !1328)
!1333 = !DILocation(line: 313, column: 25, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1327, file: !1, line: 312, column: 50)
!1335 = !DILocation(line: 313, column: 31, scope: !1334)
!1336 = !DILocation(line: 313, column: 44, scope: !1334)
!1337 = !DILocation(line: 313, column: 17, scope: !1334)
!1338 = !DILocation(line: 313, column: 6, scope: !1334)
!1339 = !DILocation(line: 313, column: 23, scope: !1334)
!1340 = !DILocation(line: 314, column: 42, scope: !1334)
!1341 = !DILocation(line: 314, column: 46, scope: !1334)
!1342 = !DILocation(line: 314, column: 31, scope: !1334)
!1343 = !DILocation(line: 314, column: 17, scope: !1334)
!1344 = !DILocation(line: 314, column: 6, scope: !1334)
!1345 = !DILocation(line: 314, column: 29, scope: !1334)
!1346 = !DILocation(line: 315, column: 10, scope: !1334)
!1347 = !DILocation(line: 316, column: 4, scope: !1334)
!1348 = !DILocation(line: 312, column: 46, scope: !1327)
!1349 = !DILocation(line: 312, column: 4, scope: !1327)
!1350 = distinct !{!1350, !1332, !1351, !951}
!1351 = !DILocation(line: 316, column: 4, scope: !1328)
!1352 = !DILocation(line: 317, column: 2, scope: !1286)
!1353 = !DILocation(line: 295, column: 55, scope: !1279)
!1354 = !DILocation(line: 295, column: 2, scope: !1279)
!1355 = distinct !{!1355, !1283, !1356, !951}
!1356 = !DILocation(line: 317, column: 2, scope: !1276)
!1357 = !DILocation(line: 318, column: 7, scope: !1257)
!1358 = !DILocation(line: 290, column: 49, scope: !1251)
!1359 = !DILocation(line: 290, column: 7, scope: !1251)
!1360 = distinct !{!1360, !1255, !1361, !951}
!1361 = !DILocation(line: 318, column: 7, scope: !1248)
!1362 = !DILocation(line: 320, column: 15, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1246, file: !1, line: 320, column: 11)
!1364 = !DILocation(line: 320, column: 22, scope: !1363)
!1365 = !DILocation(line: 320, column: 31, scope: !1363)
!1366 = !DILocation(line: 320, column: 44, scope: !1363)
!1367 = !DILocation(line: 320, column: 51, scope: !1363)
!1368 = !DILocation(line: 320, column: 13, scope: !1363)
!1369 = !DILocation(line: 320, column: 11, scope: !1363)
!1370 = !DILocation(line: 322, column: 26, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1363, file: !1, line: 320, column: 64)
!1372 = !DILocation(line: 322, column: 2, scope: !1371)
!1373 = !DILocation(line: 322, column: 8, scope: !1371)
!1374 = !DILocation(line: 322, column: 24, scope: !1371)
!1375 = !DILocation(line: 323, column: 18, scope: !1371)
!1376 = !DILocation(line: 323, column: 2, scope: !1371)
!1377 = !DILocation(line: 323, column: 8, scope: !1371)
!1378 = !DILocation(line: 323, column: 16, scope: !1371)
!1379 = !DILocation(line: 324, column: 2, scope: !1371)
!1380 = !DILocation(line: 326, column: 5, scope: !1246)
!1381 = !DILocation(line: 287, column: 14, scope: !1240)
!1382 = !DILocation(line: 286, column: 5, scope: !1240)
!1383 = distinct !{!1383, !1244, !1384, !951}
!1384 = !DILocation(line: 326, column: 5, scope: !1234)
!1385 = !DILocation(line: 328, column: 5, scope: !1235)
!1386 = !DILocation(line: 328, column: 11, scope: !1235)
!1387 = !DILocation(line: 328, column: 19, scope: !1235)
!1388 = !DILocation(line: 329, column: 3, scope: !1235)
!1389 = !DILocation(line: 285, column: 15, scope: !1228)
!1390 = !DILocation(line: 284, column: 3, scope: !1228)
!1391 = distinct !{!1391, !1232, !1392, !951}
!1392 = !DILocation(line: 329, column: 3, scope: !1223)
!1393 = !DILocation(line: 331, column: 3, scope: !1140)
!1394 = !DILocation(line: 331, column: 9, scope: !1140)
!1395 = !DILocation(line: 331, column: 21, scope: !1140)
!1396 = !DILocation(line: 332, column: 18, scope: !1140)
!1397 = !DILocation(line: 332, column: 3, scope: !1140)
!1398 = !DILocation(line: 333, column: 3, scope: !1140)
!1399 = !DILocation(line: 334, column: 1, scope: !1140)
!1400 = distinct !DISubprogram(name: "start_iMCU_row", scope: !1, file: !1, line: 210, type: !314, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !552)
!1401 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1400, file: !1, line: 210, type: !295)
!1402 = !DILocation(line: 210, column: 32, scope: !1400)
!1403 = !DILocalVariable(name: "coef", scope: !1400, file: !1, line: 213, type: !283)
!1404 = !DILocation(line: 213, column: 15, scope: !1400)
!1405 = !DILocation(line: 213, column: 36, scope: !1400)
!1406 = !DILocation(line: 213, column: 43, scope: !1400)
!1407 = !DILocation(line: 219, column: 7, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1400, file: !1, line: 219, column: 7)
!1409 = !DILocation(line: 219, column: 14, scope: !1408)
!1410 = !DILocation(line: 219, column: 28, scope: !1408)
!1411 = !DILocation(line: 220, column: 5, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1408, file: !1, line: 219, column: 33)
!1413 = !DILocation(line: 220, column: 11, scope: !1412)
!1414 = !DILocation(line: 220, column: 33, scope: !1412)
!1415 = !DILocation(line: 221, column: 3, scope: !1412)
!1416 = !DILocation(line: 222, column: 9, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1418, file: !1, line: 222, column: 9)
!1418 = distinct !DILexicalBlock(scope: !1408, file: !1, line: 221, column: 10)
!1419 = !DILocation(line: 222, column: 15, scope: !1417)
!1420 = !DILocation(line: 222, column: 31, scope: !1417)
!1421 = !DILocation(line: 222, column: 38, scope: !1417)
!1422 = !DILocation(line: 222, column: 53, scope: !1417)
!1423 = !DILocation(line: 222, column: 28, scope: !1417)
!1424 = !DILocation(line: 223, column: 37, scope: !1417)
!1425 = !DILocation(line: 223, column: 44, scope: !1417)
!1426 = !DILocation(line: 223, column: 62, scope: !1417)
!1427 = !DILocation(line: 223, column: 7, scope: !1417)
!1428 = !DILocation(line: 223, column: 13, scope: !1417)
!1429 = !DILocation(line: 223, column: 35, scope: !1417)
!1430 = !DILocation(line: 225, column: 37, scope: !1417)
!1431 = !DILocation(line: 225, column: 44, scope: !1417)
!1432 = !DILocation(line: 225, column: 62, scope: !1417)
!1433 = !DILocation(line: 225, column: 7, scope: !1417)
!1434 = !DILocation(line: 225, column: 13, scope: !1417)
!1435 = !DILocation(line: 225, column: 35, scope: !1417)
!1436 = !DILocation(line: 228, column: 3, scope: !1400)
!1437 = !DILocation(line: 228, column: 9, scope: !1400)
!1438 = !DILocation(line: 228, column: 17, scope: !1400)
!1439 = !DILocation(line: 229, column: 3, scope: !1400)
!1440 = !DILocation(line: 229, column: 9, scope: !1400)
!1441 = !DILocation(line: 229, column: 25, scope: !1400)
!1442 = !DILocation(line: 230, column: 1, scope: !1400)
