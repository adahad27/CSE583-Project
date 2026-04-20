; ModuleID = 'cBench/consumer_jpeg_c/src/jquant1.c'
source_filename = "cBench/consumer_jpeg_c/src/jquant1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.my_cquantizer = type { %struct.jpeg_color_quantizer, ptr, i32, ptr, i32, [4 x i32], i32, [4 x ptr], [4 x ptr], i32 }
%struct.jpeg_color_quantizer = type { ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }

@base_dither_matrix = internal constant [16 x [16 x i8]] [[16 x i8] c"\00\C00\F0\0C\CC<\FC\03\C33\F3\0F\CF?\FF", [16 x i8] c"\80@\B0p\8CL\BC|\83C\B3s\8FO\BF\7F", [16 x i8] c" \E0\10\D0,\EC\1C\DC#\E3\13\D3/\EF\1F\DF", [16 x i8] c"\A0`\90P\ACl\9C\\\A3c\93S\AFo\9F_", [16 x i8] c"\08\C88\F8\04\C44\F4\0B\CB;\FB\07\C77\F7", [16 x i8] c"\88H\B8x\84D\B4t\8BK\BB{\87G\B7w", [16 x i8] c"(\E8\18\D8$\E4\14\D4+\EB\1B\DB'\E7\17\D7", [16 x i8] c"\A8h\98X\A4d\94T\ABk\9B[\A7g\97W", [16 x i8] c"\02\C22\F2\0E\CE>\FE\01\C11\F1\0D\CD=\FD", [16 x i8] c"\82B\B2r\8EN\BE~\81A\B1q\8DM\BD}", [16 x i8] c"\22\E2\12\D2.\EE\1E\DE!\E1\11\D1-\ED\1D\DD", [16 x i8] c"\A2b\92R\AEn\9E^\A1a\91Q\ADm\9D]", [16 x i8] c"\0A\CA:\FA\06\C66\F6\09\C99\F9\05\C55\F5", [16 x i8] c"\8AJ\BAz\86F\B6v\89I\B9y\85E\B5u", [16 x i8] c"*\EA\1A\DA&\E6\16\D6)\E9\19\D9%\E5\15\D5", [16 x i8] c"\AAj\9AZ\A6f\96V\A9i\99Y\A5e\95U"], align 16, !dbg !0
@select_ncolors.RGB_order = internal constant [3 x i32] [i32 1, i32 0, i32 2], align 4, !dbg !602

; Function Attrs: noinline nounwind uwtable
define dso_local void @jinit_1pass_quantizer(ptr noundef %0) #0 !dbg !624 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !625, !DIExpression(), !626)
    #dbg_declare(ptr %3, !627, !DIExpression(), !628)
  %4 = load ptr, ptr %2, align 8, !dbg !629
  %5 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 1, !dbg !630
  %6 = load ptr, ptr %5, align 8, !dbg !630
  %7 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %6, i32 0, i32 0, !dbg !631
  %8 = load ptr, ptr %7, align 8, !dbg !631
  %9 = load ptr, ptr %2, align 8, !dbg !632
  %10 = call ptr %8(ptr noundef %9, i32 noundef 1, i64 noundef 152), !dbg !633
  store ptr %10, ptr %3, align 8, !dbg !634
  %11 = load ptr, ptr %3, align 8, !dbg !635
  %12 = load ptr, ptr %2, align 8, !dbg !636
  %13 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %12, i32 0, i32 83, !dbg !637
  store ptr %11, ptr %13, align 8, !dbg !638
  %14 = load ptr, ptr %3, align 8, !dbg !639
  %15 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %14, i32 0, i32 0, !dbg !640
  %16 = getelementptr inbounds nuw %struct.jpeg_color_quantizer, ptr %15, i32 0, i32 0, !dbg !641
  store ptr @start_pass_1_quant, ptr %16, align 8, !dbg !642
  %17 = load ptr, ptr %3, align 8, !dbg !643
  %18 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %17, i32 0, i32 0, !dbg !644
  %19 = getelementptr inbounds nuw %struct.jpeg_color_quantizer, ptr %18, i32 0, i32 2, !dbg !645
  store ptr @finish_pass_1_quant, ptr %19, align 8, !dbg !646
  %20 = load ptr, ptr %3, align 8, !dbg !647
  %21 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %20, i32 0, i32 0, !dbg !648
  %22 = getelementptr inbounds nuw %struct.jpeg_color_quantizer, ptr %21, i32 0, i32 3, !dbg !649
  store ptr @new_color_map_1_quant, ptr %22, align 8, !dbg !650
  %23 = load ptr, ptr %3, align 8, !dbg !651
  %24 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %23, i32 0, i32 8, !dbg !652
  %25 = getelementptr inbounds [4 x ptr], ptr %24, i64 0, i64 0, !dbg !651
  store ptr null, ptr %25, align 8, !dbg !653
  %26 = load ptr, ptr %3, align 8, !dbg !654
  %27 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %26, i32 0, i32 7, !dbg !655
  %28 = getelementptr inbounds [4 x ptr], ptr %27, i64 0, i64 0, !dbg !654
  store ptr null, ptr %28, align 8, !dbg !656
  %29 = load ptr, ptr %2, align 8, !dbg !657
  %30 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %29, i32 0, i32 28, !dbg !659
  %31 = load i32, ptr %30, align 8, !dbg !659
  %32 = icmp sgt i32 %31, 4, !dbg !660
  br i1 %32, label %33, label %49, !dbg !660

33:                                               ; preds = %1
  %34 = load ptr, ptr %2, align 8, !dbg !661
  %35 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %34, i32 0, i32 0, !dbg !661
  %36 = load ptr, ptr %35, align 8, !dbg !661
  %37 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %36, i32 0, i32 5, !dbg !661
  store i32 54, ptr %37, align 8, !dbg !661
  %38 = load ptr, ptr %2, align 8, !dbg !661
  %39 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %38, i32 0, i32 0, !dbg !661
  %40 = load ptr, ptr %39, align 8, !dbg !661
  %41 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %40, i32 0, i32 6, !dbg !661
  %42 = getelementptr inbounds [8 x i32], ptr %41, i64 0, i64 0, !dbg !661
  store i32 4, ptr %42, align 4, !dbg !661
  %43 = load ptr, ptr %2, align 8, !dbg !661
  %44 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %43, i32 0, i32 0, !dbg !661
  %45 = load ptr, ptr %44, align 8, !dbg !661
  %46 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %45, i32 0, i32 0, !dbg !661
  %47 = load ptr, ptr %46, align 8, !dbg !661
  %48 = load ptr, ptr %2, align 8, !dbg !661
  call void %47(ptr noundef %48), !dbg !661
  br label %49, !dbg !661

49:                                               ; preds = %33, %1
  %50 = load ptr, ptr %2, align 8, !dbg !662
  %51 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %50, i32 0, i32 22, !dbg !664
  %52 = load i32, ptr %51, align 8, !dbg !664
  %53 = icmp sgt i32 %52, 256, !dbg !665
  br i1 %53, label %54, label %70, !dbg !665

54:                                               ; preds = %49
  %55 = load ptr, ptr %2, align 8, !dbg !666
  %56 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %55, i32 0, i32 0, !dbg !666
  %57 = load ptr, ptr %56, align 8, !dbg !666
  %58 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %57, i32 0, i32 5, !dbg !666
  store i32 56, ptr %58, align 8, !dbg !666
  %59 = load ptr, ptr %2, align 8, !dbg !666
  %60 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %59, i32 0, i32 0, !dbg !666
  %61 = load ptr, ptr %60, align 8, !dbg !666
  %62 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %61, i32 0, i32 6, !dbg !666
  %63 = getelementptr inbounds [8 x i32], ptr %62, i64 0, i64 0, !dbg !666
  store i32 256, ptr %63, align 4, !dbg !666
  %64 = load ptr, ptr %2, align 8, !dbg !666
  %65 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %64, i32 0, i32 0, !dbg !666
  %66 = load ptr, ptr %65, align 8, !dbg !666
  %67 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %66, i32 0, i32 0, !dbg !666
  %68 = load ptr, ptr %67, align 8, !dbg !666
  %69 = load ptr, ptr %2, align 8, !dbg !666
  call void %68(ptr noundef %69), !dbg !666
  br label %70, !dbg !666

70:                                               ; preds = %54, %49
  %71 = load ptr, ptr %2, align 8, !dbg !667
  call void @create_colormap(ptr noundef %71), !dbg !668
  %72 = load ptr, ptr %2, align 8, !dbg !669
  call void @create_colorindex(ptr noundef %72), !dbg !670
  %73 = load ptr, ptr %2, align 8, !dbg !671
  %74 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %73, i32 0, i32 20, !dbg !673
  %75 = load i32, ptr %74, align 8, !dbg !673
  %76 = icmp eq i32 %75, 2, !dbg !674
  br i1 %76, label %77, label %79, !dbg !674

77:                                               ; preds = %70
  %78 = load ptr, ptr %2, align 8, !dbg !675
  call void @alloc_fs_workspace(ptr noundef %78), !dbg !676
  br label %79, !dbg !676

79:                                               ; preds = %77, %70
  ret void, !dbg !677
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_pass_1_quant(ptr noundef %0, i32 noundef %1) #0 !dbg !678 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !679, !DIExpression(), !680)
  store i32 %1, ptr %4, align 4
    #dbg_declare(ptr %4, !681, !DIExpression(), !682)
    #dbg_declare(ptr %5, !683, !DIExpression(), !684)
  %8 = load ptr, ptr %3, align 8, !dbg !685
  %9 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %8, i32 0, i32 83, !dbg !686
  %10 = load ptr, ptr %9, align 8, !dbg !686
  store ptr %10, ptr %5, align 8, !dbg !684
    #dbg_declare(ptr %6, !687, !DIExpression(), !688)
    #dbg_declare(ptr %7, !689, !DIExpression(), !690)
  %11 = load ptr, ptr %5, align 8, !dbg !691
  %12 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %11, i32 0, i32 1, !dbg !692
  %13 = load ptr, ptr %12, align 8, !dbg !692
  %14 = load ptr, ptr %3, align 8, !dbg !693
  %15 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %14, i32 0, i32 32, !dbg !694
  store ptr %13, ptr %15, align 8, !dbg !695
  %16 = load ptr, ptr %5, align 8, !dbg !696
  %17 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %16, i32 0, i32 2, !dbg !697
  %18 = load i32, ptr %17, align 8, !dbg !697
  %19 = load ptr, ptr %3, align 8, !dbg !698
  %20 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %19, i32 0, i32 31, !dbg !699
  store i32 %18, ptr %20, align 4, !dbg !700
  %21 = load ptr, ptr %3, align 8, !dbg !701
  %22 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %21, i32 0, i32 20, !dbg !702
  %23 = load i32, ptr %22, align 8, !dbg !702
  switch i32 %23, label %107 [
    i32 0, label %24
    i32 1, label %38
    i32 2, label %69
  ], !dbg !703

24:                                               ; preds = %2
  %25 = load ptr, ptr %3, align 8, !dbg !704
  %26 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %25, i32 0, i32 28, !dbg !707
  %27 = load i32, ptr %26, align 8, !dbg !707
  %28 = icmp eq i32 %27, 3, !dbg !708
  br i1 %28, label %29, label %33, !dbg !708

29:                                               ; preds = %24
  %30 = load ptr, ptr %5, align 8, !dbg !709
  %31 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %30, i32 0, i32 0, !dbg !710
  %32 = getelementptr inbounds nuw %struct.jpeg_color_quantizer, ptr %31, i32 0, i32 1, !dbg !711
  store ptr @color_quantize3, ptr %32, align 8, !dbg !712
  br label %37, !dbg !709

33:                                               ; preds = %24
  %34 = load ptr, ptr %5, align 8, !dbg !713
  %35 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %34, i32 0, i32 0, !dbg !714
  %36 = getelementptr inbounds nuw %struct.jpeg_color_quantizer, ptr %35, i32 0, i32 1, !dbg !715
  store ptr @color_quantize, ptr %36, align 8, !dbg !716
  br label %37

37:                                               ; preds = %33, %29
  br label %118, !dbg !717

38:                                               ; preds = %2
  %39 = load ptr, ptr %3, align 8, !dbg !718
  %40 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %39, i32 0, i32 28, !dbg !720
  %41 = load i32, ptr %40, align 8, !dbg !720
  %42 = icmp eq i32 %41, 3, !dbg !721
  br i1 %42, label %43, label %47, !dbg !721

43:                                               ; preds = %38
  %44 = load ptr, ptr %5, align 8, !dbg !722
  %45 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %44, i32 0, i32 0, !dbg !723
  %46 = getelementptr inbounds nuw %struct.jpeg_color_quantizer, ptr %45, i32 0, i32 1, !dbg !724
  store ptr @quantize3_ord_dither, ptr %46, align 8, !dbg !725
  br label %51, !dbg !722

47:                                               ; preds = %38
  %48 = load ptr, ptr %5, align 8, !dbg !726
  %49 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %48, i32 0, i32 0, !dbg !727
  %50 = getelementptr inbounds nuw %struct.jpeg_color_quantizer, ptr %49, i32 0, i32 1, !dbg !728
  store ptr @quantize_ord_dither, ptr %50, align 8, !dbg !729
  br label %51

51:                                               ; preds = %47, %43
  %52 = load ptr, ptr %5, align 8, !dbg !730
  %53 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %52, i32 0, i32 6, !dbg !731
  store i32 0, ptr %53, align 4, !dbg !732
  %54 = load ptr, ptr %5, align 8, !dbg !733
  %55 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %54, i32 0, i32 4, !dbg !735
  %56 = load i32, ptr %55, align 8, !dbg !735
  %57 = icmp ne i32 %56, 0, !dbg !733
  br i1 %57, label %60, label %58, !dbg !736

58:                                               ; preds = %51
  %59 = load ptr, ptr %3, align 8, !dbg !737
  call void @create_colorindex(ptr noundef %59), !dbg !738
  br label %60, !dbg !738

60:                                               ; preds = %58, %51
  %61 = load ptr, ptr %5, align 8, !dbg !739
  %62 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %61, i32 0, i32 7, !dbg !741
  %63 = getelementptr inbounds [4 x ptr], ptr %62, i64 0, i64 0, !dbg !739
  %64 = load ptr, ptr %63, align 8, !dbg !739
  %65 = icmp eq ptr %64, null, !dbg !742
  br i1 %65, label %66, label %68, !dbg !742

66:                                               ; preds = %60
  %67 = load ptr, ptr %3, align 8, !dbg !743
  call void @create_odither_tables(ptr noundef %67), !dbg !744
  br label %68, !dbg !744

68:                                               ; preds = %66, %60
  br label %118, !dbg !745

69:                                               ; preds = %2
  %70 = load ptr, ptr %5, align 8, !dbg !746
  %71 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %70, i32 0, i32 0, !dbg !747
  %72 = getelementptr inbounds nuw %struct.jpeg_color_quantizer, ptr %71, i32 0, i32 1, !dbg !748
  store ptr @quantize_fs_dither, ptr %72, align 8, !dbg !749
  %73 = load ptr, ptr %5, align 8, !dbg !750
  %74 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %73, i32 0, i32 9, !dbg !751
  store i32 0, ptr %74, align 8, !dbg !752
  %75 = load ptr, ptr %5, align 8, !dbg !753
  %76 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %75, i32 0, i32 8, !dbg !755
  %77 = getelementptr inbounds [4 x ptr], ptr %76, i64 0, i64 0, !dbg !753
  %78 = load ptr, ptr %77, align 8, !dbg !753
  %79 = icmp eq ptr %78, null, !dbg !756
  br i1 %79, label %80, label %82, !dbg !756

80:                                               ; preds = %69
  %81 = load ptr, ptr %3, align 8, !dbg !757
  call void @alloc_fs_workspace(ptr noundef %81), !dbg !758
  br label %82, !dbg !758

82:                                               ; preds = %80, %69
  %83 = load ptr, ptr %3, align 8, !dbg !759
  %84 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %83, i32 0, i32 26, !dbg !760
  %85 = load i32, ptr %84, align 8, !dbg !760
  %86 = add i32 %85, 2, !dbg !761
  %87 = zext i32 %86 to i64, !dbg !762
  %88 = mul i64 %87, 2, !dbg !763
  store i64 %88, ptr %6, align 8, !dbg !764
  store i32 0, ptr %7, align 4, !dbg !765
  br label %89, !dbg !767

89:                                               ; preds = %103, %82
  %90 = load i32, ptr %7, align 4, !dbg !768
  %91 = load ptr, ptr %3, align 8, !dbg !770
  %92 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %91, i32 0, i32 28, !dbg !771
  %93 = load i32, ptr %92, align 8, !dbg !771
  %94 = icmp slt i32 %90, %93, !dbg !772
  br i1 %94, label %95, label %106, !dbg !773

95:                                               ; preds = %89
  %96 = load ptr, ptr %5, align 8, !dbg !774
  %97 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %96, i32 0, i32 8, !dbg !775
  %98 = load i32, ptr %7, align 4, !dbg !776
  %99 = sext i32 %98 to i64, !dbg !774
  %100 = getelementptr inbounds [4 x ptr], ptr %97, i64 0, i64 %99, !dbg !774
  %101 = load ptr, ptr %100, align 8, !dbg !774
  %102 = load i64, ptr %6, align 8, !dbg !777
  call void @jzero_far(ptr noundef %101, i64 noundef %102), !dbg !778
  br label %103, !dbg !778

103:                                              ; preds = %95
  %104 = load i32, ptr %7, align 4, !dbg !779
  %105 = add nsw i32 %104, 1, !dbg !779
  store i32 %105, ptr %7, align 4, !dbg !779
  br label %89, !dbg !780, !llvm.loop !781

106:                                              ; preds = %89
  br label %118, !dbg !784

107:                                              ; preds = %2
  %108 = load ptr, ptr %3, align 8, !dbg !785
  %109 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %108, i32 0, i32 0, !dbg !785
  %110 = load ptr, ptr %109, align 8, !dbg !785
  %111 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %110, i32 0, i32 5, !dbg !785
  store i32 47, ptr %111, align 8, !dbg !785
  %112 = load ptr, ptr %3, align 8, !dbg !785
  %113 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %112, i32 0, i32 0, !dbg !785
  %114 = load ptr, ptr %113, align 8, !dbg !785
  %115 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %114, i32 0, i32 0, !dbg !785
  %116 = load ptr, ptr %115, align 8, !dbg !785
  %117 = load ptr, ptr %3, align 8, !dbg !785
  call void %116(ptr noundef %117), !dbg !785
  br label %118, !dbg !786

118:                                              ; preds = %107, %106, %68, %37
  ret void, !dbg !787
}

; Function Attrs: noinline nounwind uwtable
define internal void @finish_pass_1_quant(ptr noundef %0) #0 !dbg !788 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !789, !DIExpression(), !790)
  ret void, !dbg !791
}

; Function Attrs: noinline nounwind uwtable
define internal void @new_color_map_1_quant(ptr noundef %0) #0 !dbg !792 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !793, !DIExpression(), !794)
  %3 = load ptr, ptr %2, align 8, !dbg !795
  %4 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %3, i32 0, i32 0, !dbg !795
  %5 = load ptr, ptr %4, align 8, !dbg !795
  %6 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %5, i32 0, i32 5, !dbg !795
  store i32 45, ptr %6, align 8, !dbg !795
  %7 = load ptr, ptr %2, align 8, !dbg !795
  %8 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %7, i32 0, i32 0, !dbg !795
  %9 = load ptr, ptr %8, align 8, !dbg !795
  %10 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %9, i32 0, i32 0, !dbg !795
  %11 = load ptr, ptr %10, align 8, !dbg !795
  %12 = load ptr, ptr %2, align 8, !dbg !795
  call void %11(ptr noundef %12), !dbg !795
  ret void, !dbg !796
}

; Function Attrs: noinline nounwind uwtable
define internal void @create_colormap(ptr noundef %0) #0 !dbg !797 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !798, !DIExpression(), !799)
    #dbg_declare(ptr %3, !800, !DIExpression(), !801)
  %15 = load ptr, ptr %2, align 8, !dbg !802
  %16 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %15, i32 0, i32 83, !dbg !803
  %17 = load ptr, ptr %16, align 8, !dbg !803
  store ptr %17, ptr %3, align 8, !dbg !801
    #dbg_declare(ptr %4, !804, !DIExpression(), !805)
    #dbg_declare(ptr %5, !806, !DIExpression(), !807)
    #dbg_declare(ptr %6, !808, !DIExpression(), !809)
    #dbg_declare(ptr %7, !810, !DIExpression(), !811)
    #dbg_declare(ptr %8, !812, !DIExpression(), !813)
    #dbg_declare(ptr %9, !814, !DIExpression(), !815)
    #dbg_declare(ptr %10, !816, !DIExpression(), !817)
    #dbg_declare(ptr %11, !818, !DIExpression(), !819)
    #dbg_declare(ptr %12, !820, !DIExpression(), !821)
    #dbg_declare(ptr %13, !822, !DIExpression(), !823)
  %18 = load ptr, ptr %2, align 8, !dbg !824
  %19 = load ptr, ptr %3, align 8, !dbg !825
  %20 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %19, i32 0, i32 5, !dbg !826
  %21 = getelementptr inbounds [4 x i32], ptr %20, i64 0, i64 0, !dbg !825
  %22 = call i32 @select_ncolors(ptr noundef %18, ptr noundef %21), !dbg !827
  store i32 %22, ptr %5, align 4, !dbg !828
  %23 = load ptr, ptr %2, align 8, !dbg !829
  %24 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %23, i32 0, i32 28, !dbg !831
  %25 = load i32, ptr %24, align 8, !dbg !831
  %26 = icmp eq i32 %25, 3, !dbg !832
  br i1 %26, label %27, label %66, !dbg !832

27:                                               ; preds = %1
  br label %28, !dbg !833

28:                                               ; preds = %27
    #dbg_declare(ptr %14, !834, !DIExpression(), !836)
  %29 = load ptr, ptr %2, align 8, !dbg !836
  %30 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %29, i32 0, i32 0, !dbg !836
  %31 = load ptr, ptr %30, align 8, !dbg !836
  %32 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %31, i32 0, i32 6, !dbg !836
  %33 = getelementptr inbounds [8 x i32], ptr %32, i64 0, i64 0, !dbg !836
  store ptr %33, ptr %14, align 8, !dbg !836
  %34 = load i32, ptr %5, align 4, !dbg !836
  %35 = load ptr, ptr %14, align 8, !dbg !836
  %36 = getelementptr inbounds i32, ptr %35, i64 0, !dbg !836
  store i32 %34, ptr %36, align 4, !dbg !836
  %37 = load ptr, ptr %3, align 8, !dbg !836
  %38 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %37, i32 0, i32 5, !dbg !836
  %39 = getelementptr inbounds [4 x i32], ptr %38, i64 0, i64 0, !dbg !836
  %40 = load i32, ptr %39, align 4, !dbg !836
  %41 = load ptr, ptr %14, align 8, !dbg !836
  %42 = getelementptr inbounds i32, ptr %41, i64 1, !dbg !836
  store i32 %40, ptr %42, align 4, !dbg !836
  %43 = load ptr, ptr %3, align 8, !dbg !836
  %44 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %43, i32 0, i32 5, !dbg !836
  %45 = getelementptr inbounds [4 x i32], ptr %44, i64 0, i64 1, !dbg !836
  %46 = load i32, ptr %45, align 4, !dbg !836
  %47 = load ptr, ptr %14, align 8, !dbg !836
  %48 = getelementptr inbounds i32, ptr %47, i64 2, !dbg !836
  store i32 %46, ptr %48, align 4, !dbg !836
  %49 = load ptr, ptr %3, align 8, !dbg !836
  %50 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %49, i32 0, i32 5, !dbg !836
  %51 = getelementptr inbounds [4 x i32], ptr %50, i64 0, i64 2, !dbg !836
  %52 = load i32, ptr %51, align 4, !dbg !836
  %53 = load ptr, ptr %14, align 8, !dbg !836
  %54 = getelementptr inbounds i32, ptr %53, i64 3, !dbg !836
  store i32 %52, ptr %54, align 4, !dbg !836
  %55 = load ptr, ptr %2, align 8, !dbg !836
  %56 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %55, i32 0, i32 0, !dbg !836
  %57 = load ptr, ptr %56, align 8, !dbg !836
  %58 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %57, i32 0, i32 5, !dbg !836
  store i32 93, ptr %58, align 8, !dbg !836
  %59 = load ptr, ptr %2, align 8, !dbg !836
  %60 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %59, i32 0, i32 0, !dbg !836
  %61 = load ptr, ptr %60, align 8, !dbg !836
  %62 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %61, i32 0, i32 1, !dbg !836
  %63 = load ptr, ptr %62, align 8, !dbg !836
  %64 = load ptr, ptr %2, align 8, !dbg !836
  call void %63(ptr noundef %64, i32 noundef 1), !dbg !836
  br label %65, !dbg !836

65:                                               ; preds = %28
  br label %83, !dbg !836

66:                                               ; preds = %1
  %67 = load ptr, ptr %2, align 8, !dbg !837
  %68 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %67, i32 0, i32 0, !dbg !837
  %69 = load ptr, ptr %68, align 8, !dbg !837
  %70 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %69, i32 0, i32 5, !dbg !837
  store i32 94, ptr %70, align 8, !dbg !837
  %71 = load i32, ptr %5, align 4, !dbg !837
  %72 = load ptr, ptr %2, align 8, !dbg !837
  %73 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %72, i32 0, i32 0, !dbg !837
  %74 = load ptr, ptr %73, align 8, !dbg !837
  %75 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %74, i32 0, i32 6, !dbg !837
  %76 = getelementptr inbounds [8 x i32], ptr %75, i64 0, i64 0, !dbg !837
  store i32 %71, ptr %76, align 4, !dbg !837
  %77 = load ptr, ptr %2, align 8, !dbg !837
  %78 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %77, i32 0, i32 0, !dbg !837
  %79 = load ptr, ptr %78, align 8, !dbg !837
  %80 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %79, i32 0, i32 1, !dbg !837
  %81 = load ptr, ptr %80, align 8, !dbg !837
  %82 = load ptr, ptr %2, align 8, !dbg !837
  call void %81(ptr noundef %82, i32 noundef 1), !dbg !837
  br label %83

83:                                               ; preds = %66, %65
  %84 = load ptr, ptr %2, align 8, !dbg !838
  %85 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %84, i32 0, i32 1, !dbg !839
  %86 = load ptr, ptr %85, align 8, !dbg !839
  %87 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %86, i32 0, i32 2, !dbg !840
  %88 = load ptr, ptr %87, align 8, !dbg !840
  %89 = load ptr, ptr %2, align 8, !dbg !841
  %90 = load i32, ptr %5, align 4, !dbg !842
  %91 = load ptr, ptr %2, align 8, !dbg !843
  %92 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %91, i32 0, i32 28, !dbg !844
  %93 = load i32, ptr %92, align 8, !dbg !844
  %94 = call ptr %88(ptr noundef %89, i32 noundef 1, i32 noundef %90, i32 noundef %93), !dbg !845
  store ptr %94, ptr %4, align 8, !dbg !846
  %95 = load i32, ptr %5, align 4, !dbg !847
  store i32 %95, ptr %11, align 4, !dbg !848
  store i32 0, ptr %6, align 4, !dbg !849
  br label %96, !dbg !851

96:                                               ; preds = %162, %83
  %97 = load i32, ptr %6, align 4, !dbg !852
  %98 = load ptr, ptr %2, align 8, !dbg !854
  %99 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %98, i32 0, i32 28, !dbg !855
  %100 = load i32, ptr %99, align 8, !dbg !855
  %101 = icmp slt i32 %97, %100, !dbg !856
  br i1 %101, label %102, label %165, !dbg !857

102:                                              ; preds = %96
  %103 = load ptr, ptr %3, align 8, !dbg !858
  %104 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %103, i32 0, i32 5, !dbg !860
  %105 = load i32, ptr %6, align 4, !dbg !861
  %106 = sext i32 %105 to i64, !dbg !858
  %107 = getelementptr inbounds [4 x i32], ptr %104, i64 0, i64 %106, !dbg !858
  %108 = load i32, ptr %107, align 4, !dbg !858
  store i32 %108, ptr %9, align 4, !dbg !862
  %109 = load i32, ptr %11, align 4, !dbg !863
  %110 = load i32, ptr %9, align 4, !dbg !864
  %111 = sdiv i32 %109, %110, !dbg !865
  store i32 %111, ptr %10, align 4, !dbg !866
  store i32 0, ptr %7, align 4, !dbg !867
  br label %112, !dbg !869

112:                                              ; preds = %157, %102
  %113 = load i32, ptr %7, align 4, !dbg !870
  %114 = load i32, ptr %9, align 4, !dbg !872
  %115 = icmp slt i32 %113, %114, !dbg !873
  br i1 %115, label %116, label %160, !dbg !874

116:                                              ; preds = %112
  %117 = load ptr, ptr %2, align 8, !dbg !875
  %118 = load i32, ptr %6, align 4, !dbg !877
  %119 = load i32, ptr %7, align 4, !dbg !878
  %120 = load i32, ptr %9, align 4, !dbg !879
  %121 = sub nsw i32 %120, 1, !dbg !880
  %122 = call i32 @output_value(ptr noundef %117, i32 noundef %118, i32 noundef %119, i32 noundef %121), !dbg !881
  store i32 %122, ptr %13, align 4, !dbg !882
  %123 = load i32, ptr %7, align 4, !dbg !883
  %124 = load i32, ptr %10, align 4, !dbg !885
  %125 = mul nsw i32 %123, %124, !dbg !886
  store i32 %125, ptr %12, align 4, !dbg !887
  br label %126, !dbg !888

126:                                              ; preds = %152, %116
  %127 = load i32, ptr %12, align 4, !dbg !889
  %128 = load i32, ptr %5, align 4, !dbg !891
  %129 = icmp slt i32 %127, %128, !dbg !892
  br i1 %129, label %130, label %156, !dbg !893

130:                                              ; preds = %126
  store i32 0, ptr %8, align 4, !dbg !894
  br label %131, !dbg !897

131:                                              ; preds = %148, %130
  %132 = load i32, ptr %8, align 4, !dbg !898
  %133 = load i32, ptr %10, align 4, !dbg !900
  %134 = icmp slt i32 %132, %133, !dbg !901
  br i1 %134, label %135, label %151, !dbg !902

135:                                              ; preds = %131
  %136 = load i32, ptr %13, align 4, !dbg !903
  %137 = trunc i32 %136 to i8, !dbg !904
  %138 = load ptr, ptr %4, align 8, !dbg !905
  %139 = load i32, ptr %6, align 4, !dbg !906
  %140 = sext i32 %139 to i64, !dbg !905
  %141 = getelementptr inbounds ptr, ptr %138, i64 %140, !dbg !905
  %142 = load ptr, ptr %141, align 8, !dbg !905
  %143 = load i32, ptr %12, align 4, !dbg !907
  %144 = load i32, ptr %8, align 4, !dbg !908
  %145 = add nsw i32 %143, %144, !dbg !909
  %146 = sext i32 %145 to i64, !dbg !905
  %147 = getelementptr inbounds i8, ptr %142, i64 %146, !dbg !905
  store i8 %137, ptr %147, align 1, !dbg !910
  br label %148, !dbg !905

148:                                              ; preds = %135
  %149 = load i32, ptr %8, align 4, !dbg !911
  %150 = add nsw i32 %149, 1, !dbg !911
  store i32 %150, ptr %8, align 4, !dbg !911
  br label %131, !dbg !912, !llvm.loop !913

151:                                              ; preds = %131
  br label %152, !dbg !915

152:                                              ; preds = %151
  %153 = load i32, ptr %11, align 4, !dbg !916
  %154 = load i32, ptr %12, align 4, !dbg !917
  %155 = add nsw i32 %154, %153, !dbg !917
  store i32 %155, ptr %12, align 4, !dbg !917
  br label %126, !dbg !918, !llvm.loop !919

156:                                              ; preds = %126
  br label %157, !dbg !921

157:                                              ; preds = %156
  %158 = load i32, ptr %7, align 4, !dbg !922
  %159 = add nsw i32 %158, 1, !dbg !922
  store i32 %159, ptr %7, align 4, !dbg !922
  br label %112, !dbg !923, !llvm.loop !924

160:                                              ; preds = %112
  %161 = load i32, ptr %10, align 4, !dbg !926
  store i32 %161, ptr %11, align 4, !dbg !927
  br label %162, !dbg !928

162:                                              ; preds = %160
  %163 = load i32, ptr %6, align 4, !dbg !929
  %164 = add nsw i32 %163, 1, !dbg !929
  store i32 %164, ptr %6, align 4, !dbg !929
  br label %96, !dbg !930, !llvm.loop !931

165:                                              ; preds = %96
  %166 = load ptr, ptr %4, align 8, !dbg !933
  %167 = load ptr, ptr %3, align 8, !dbg !934
  %168 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %167, i32 0, i32 1, !dbg !935
  store ptr %166, ptr %168, align 8, !dbg !936
  %169 = load i32, ptr %5, align 4, !dbg !937
  %170 = load ptr, ptr %3, align 8, !dbg !938
  %171 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %170, i32 0, i32 2, !dbg !939
  store i32 %169, ptr %171, align 8, !dbg !940
  ret void, !dbg !941
}

; Function Attrs: noinline nounwind uwtable
define internal void @create_colorindex(ptr noundef %0) #0 !dbg !942 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !943, !DIExpression(), !944)
    #dbg_declare(ptr %3, !945, !DIExpression(), !946)
  %12 = load ptr, ptr %2, align 8, !dbg !947
  %13 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %12, i32 0, i32 83, !dbg !948
  %14 = load ptr, ptr %13, align 8, !dbg !948
  store ptr %14, ptr %3, align 8, !dbg !946
    #dbg_declare(ptr %4, !949, !DIExpression(), !950)
    #dbg_declare(ptr %5, !951, !DIExpression(), !952)
    #dbg_declare(ptr %6, !953, !DIExpression(), !954)
    #dbg_declare(ptr %7, !955, !DIExpression(), !956)
    #dbg_declare(ptr %8, !957, !DIExpression(), !958)
    #dbg_declare(ptr %9, !959, !DIExpression(), !960)
    #dbg_declare(ptr %10, !961, !DIExpression(), !962)
    #dbg_declare(ptr %11, !963, !DIExpression(), !964)
  %15 = load ptr, ptr %2, align 8, !dbg !965
  %16 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %15, i32 0, i32 20, !dbg !967
  %17 = load i32, ptr %16, align 8, !dbg !967
  %18 = icmp eq i32 %17, 1, !dbg !968
  br i1 %18, label %19, label %22, !dbg !968

19:                                               ; preds = %1
  store i32 510, ptr %11, align 4, !dbg !969
  %20 = load ptr, ptr %3, align 8, !dbg !971
  %21 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %20, i32 0, i32 4, !dbg !972
  store i32 1, ptr %21, align 8, !dbg !973
  br label %25, !dbg !974

22:                                               ; preds = %1
  store i32 0, ptr %11, align 4, !dbg !975
  %23 = load ptr, ptr %3, align 8, !dbg !977
  %24 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %23, i32 0, i32 4, !dbg !978
  store i32 0, ptr %24, align 8, !dbg !979
  br label %25

25:                                               ; preds = %22, %19
  %26 = load ptr, ptr %2, align 8, !dbg !980
  %27 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %26, i32 0, i32 1, !dbg !981
  %28 = load ptr, ptr %27, align 8, !dbg !981
  %29 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %28, i32 0, i32 2, !dbg !982
  %30 = load ptr, ptr %29, align 8, !dbg !982
  %31 = load ptr, ptr %2, align 8, !dbg !983
  %32 = load i32, ptr %11, align 4, !dbg !984
  %33 = add nsw i32 256, %32, !dbg !985
  %34 = load ptr, ptr %2, align 8, !dbg !986
  %35 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %34, i32 0, i32 28, !dbg !987
  %36 = load i32, ptr %35, align 8, !dbg !987
  %37 = call ptr %30(ptr noundef %31, i32 noundef 1, i32 noundef %33, i32 noundef %36), !dbg !988
  %38 = load ptr, ptr %3, align 8, !dbg !989
  %39 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %38, i32 0, i32 3, !dbg !990
  store ptr %37, ptr %39, align 8, !dbg !991
  %40 = load ptr, ptr %3, align 8, !dbg !992
  %41 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %40, i32 0, i32 2, !dbg !993
  %42 = load i32, ptr %41, align 8, !dbg !993
  store i32 %42, ptr %9, align 4, !dbg !994
  store i32 0, ptr %5, align 4, !dbg !995
  br label %43, !dbg !997

43:                                               ; preds = %140, %25
  %44 = load i32, ptr %5, align 4, !dbg !998
  %45 = load ptr, ptr %2, align 8, !dbg !1000
  %46 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %45, i32 0, i32 28, !dbg !1001
  %47 = load i32, ptr %46, align 8, !dbg !1001
  %48 = icmp slt i32 %44, %47, !dbg !1002
  br i1 %48, label %49, label %143, !dbg !1003

49:                                               ; preds = %43
  %50 = load ptr, ptr %3, align 8, !dbg !1004
  %51 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %50, i32 0, i32 5, !dbg !1006
  %52 = load i32, ptr %5, align 4, !dbg !1007
  %53 = sext i32 %52 to i64, !dbg !1004
  %54 = getelementptr inbounds [4 x i32], ptr %51, i64 0, i64 %53, !dbg !1004
  %55 = load i32, ptr %54, align 4, !dbg !1004
  store i32 %55, ptr %8, align 4, !dbg !1008
  %56 = load i32, ptr %9, align 4, !dbg !1009
  %57 = load i32, ptr %8, align 4, !dbg !1010
  %58 = sdiv i32 %56, %57, !dbg !1011
  store i32 %58, ptr %9, align 4, !dbg !1012
  %59 = load i32, ptr %11, align 4, !dbg !1013
  %60 = icmp ne i32 %59, 0, !dbg !1013
  br i1 %60, label %61, label %70, !dbg !1013

61:                                               ; preds = %49
  %62 = load ptr, ptr %3, align 8, !dbg !1015
  %63 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %62, i32 0, i32 3, !dbg !1016
  %64 = load ptr, ptr %63, align 8, !dbg !1016
  %65 = load i32, ptr %5, align 4, !dbg !1017
  %66 = sext i32 %65 to i64, !dbg !1015
  %67 = getelementptr inbounds ptr, ptr %64, i64 %66, !dbg !1015
  %68 = load ptr, ptr %67, align 8, !dbg !1018
  %69 = getelementptr inbounds i8, ptr %68, i64 255, !dbg !1018
  store ptr %69, ptr %67, align 8, !dbg !1018
  br label %70, !dbg !1015

70:                                               ; preds = %61, %49
  %71 = load ptr, ptr %3, align 8, !dbg !1019
  %72 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %71, i32 0, i32 3, !dbg !1020
  %73 = load ptr, ptr %72, align 8, !dbg !1020
  %74 = load i32, ptr %5, align 4, !dbg !1021
  %75 = sext i32 %74 to i64, !dbg !1019
  %76 = getelementptr inbounds ptr, ptr %73, i64 %75, !dbg !1019
  %77 = load ptr, ptr %76, align 8, !dbg !1019
  store ptr %77, ptr %4, align 8, !dbg !1022
  store i32 0, ptr %10, align 4, !dbg !1023
  %78 = load ptr, ptr %2, align 8, !dbg !1024
  %79 = load i32, ptr %5, align 4, !dbg !1025
  %80 = load i32, ptr %8, align 4, !dbg !1026
  %81 = sub nsw i32 %80, 1, !dbg !1027
  %82 = call i32 @largest_input_value(ptr noundef %78, i32 noundef %79, i32 noundef 0, i32 noundef %81), !dbg !1028
  store i32 %82, ptr %7, align 4, !dbg !1029
  store i32 0, ptr %6, align 4, !dbg !1030
  br label %83, !dbg !1032

83:                                               ; preds = %108, %70
  %84 = load i32, ptr %6, align 4, !dbg !1033
  %85 = icmp sle i32 %84, 255, !dbg !1035
  br i1 %85, label %86, label %111, !dbg !1036

86:                                               ; preds = %83
  br label %87, !dbg !1037

87:                                               ; preds = %91, %86
  %88 = load i32, ptr %6, align 4, !dbg !1039
  %89 = load i32, ptr %7, align 4, !dbg !1040
  %90 = icmp sgt i32 %88, %89, !dbg !1041
  br i1 %90, label %91, label %99, !dbg !1037

91:                                               ; preds = %87
  %92 = load ptr, ptr %2, align 8, !dbg !1042
  %93 = load i32, ptr %5, align 4, !dbg !1043
  %94 = load i32, ptr %10, align 4, !dbg !1044
  %95 = add nsw i32 %94, 1, !dbg !1044
  store i32 %95, ptr %10, align 4, !dbg !1044
  %96 = load i32, ptr %8, align 4, !dbg !1045
  %97 = sub nsw i32 %96, 1, !dbg !1046
  %98 = call i32 @largest_input_value(ptr noundef %92, i32 noundef %93, i32 noundef %95, i32 noundef %97), !dbg !1047
  store i32 %98, ptr %7, align 4, !dbg !1048
  br label %87, !dbg !1037, !llvm.loop !1049

99:                                               ; preds = %87
  %100 = load i32, ptr %10, align 4, !dbg !1051
  %101 = load i32, ptr %9, align 4, !dbg !1052
  %102 = mul nsw i32 %100, %101, !dbg !1053
  %103 = trunc i32 %102 to i8, !dbg !1054
  %104 = load ptr, ptr %4, align 8, !dbg !1055
  %105 = load i32, ptr %6, align 4, !dbg !1056
  %106 = sext i32 %105 to i64, !dbg !1055
  %107 = getelementptr inbounds i8, ptr %104, i64 %106, !dbg !1055
  store i8 %103, ptr %107, align 1, !dbg !1057
  br label %108, !dbg !1058

108:                                              ; preds = %99
  %109 = load i32, ptr %6, align 4, !dbg !1059
  %110 = add nsw i32 %109, 1, !dbg !1059
  store i32 %110, ptr %6, align 4, !dbg !1059
  br label %83, !dbg !1060, !llvm.loop !1061

111:                                              ; preds = %83
  %112 = load i32, ptr %11, align 4, !dbg !1063
  %113 = icmp ne i32 %112, 0, !dbg !1063
  br i1 %113, label %114, label %139, !dbg !1063

114:                                              ; preds = %111
  store i32 1, ptr %6, align 4, !dbg !1065
  br label %115, !dbg !1067

115:                                              ; preds = %135, %114
  %116 = load i32, ptr %6, align 4, !dbg !1068
  %117 = icmp sle i32 %116, 255, !dbg !1070
  br i1 %117, label %118, label %138, !dbg !1071

118:                                              ; preds = %115
  %119 = load ptr, ptr %4, align 8, !dbg !1072
  %120 = getelementptr inbounds i8, ptr %119, i64 0, !dbg !1072
  %121 = load i8, ptr %120, align 1, !dbg !1072
  %122 = load ptr, ptr %4, align 8, !dbg !1074
  %123 = load i32, ptr %6, align 4, !dbg !1075
  %124 = sub nsw i32 0, %123, !dbg !1076
  %125 = sext i32 %124 to i64, !dbg !1074
  %126 = getelementptr inbounds i8, ptr %122, i64 %125, !dbg !1074
  store i8 %121, ptr %126, align 1, !dbg !1077
  %127 = load ptr, ptr %4, align 8, !dbg !1078
  %128 = getelementptr inbounds i8, ptr %127, i64 255, !dbg !1078
  %129 = load i8, ptr %128, align 1, !dbg !1078
  %130 = load ptr, ptr %4, align 8, !dbg !1079
  %131 = load i32, ptr %6, align 4, !dbg !1080
  %132 = add nsw i32 255, %131, !dbg !1081
  %133 = sext i32 %132 to i64, !dbg !1079
  %134 = getelementptr inbounds i8, ptr %130, i64 %133, !dbg !1079
  store i8 %129, ptr %134, align 1, !dbg !1082
  br label %135, !dbg !1083

135:                                              ; preds = %118
  %136 = load i32, ptr %6, align 4, !dbg !1084
  %137 = add nsw i32 %136, 1, !dbg !1084
  store i32 %137, ptr %6, align 4, !dbg !1084
  br label %115, !dbg !1085, !llvm.loop !1086

138:                                              ; preds = %115
  br label %139, !dbg !1087

139:                                              ; preds = %138, %111
  br label %140, !dbg !1088

140:                                              ; preds = %139
  %141 = load i32, ptr %5, align 4, !dbg !1089
  %142 = add nsw i32 %141, 1, !dbg !1089
  store i32 %142, ptr %5, align 4, !dbg !1089
  br label %43, !dbg !1090, !llvm.loop !1091

143:                                              ; preds = %43
  ret void, !dbg !1093
}

; Function Attrs: noinline nounwind uwtable
define internal void @alloc_fs_workspace(ptr noundef %0) #0 !dbg !1094 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !1095, !DIExpression(), !1096)
    #dbg_declare(ptr %3, !1097, !DIExpression(), !1098)
  %6 = load ptr, ptr %2, align 8, !dbg !1099
  %7 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %6, i32 0, i32 83, !dbg !1100
  %8 = load ptr, ptr %7, align 8, !dbg !1100
  store ptr %8, ptr %3, align 8, !dbg !1098
    #dbg_declare(ptr %4, !1101, !DIExpression(), !1102)
    #dbg_declare(ptr %5, !1103, !DIExpression(), !1104)
  %9 = load ptr, ptr %2, align 8, !dbg !1105
  %10 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %9, i32 0, i32 26, !dbg !1106
  %11 = load i32, ptr %10, align 8, !dbg !1106
  %12 = add i32 %11, 2, !dbg !1107
  %13 = zext i32 %12 to i64, !dbg !1108
  %14 = mul i64 %13, 2, !dbg !1109
  store i64 %14, ptr %4, align 8, !dbg !1110
  store i32 0, ptr %5, align 4, !dbg !1111
  br label %15, !dbg !1113

15:                                               ; preds = %35, %1
  %16 = load i32, ptr %5, align 4, !dbg !1114
  %17 = load ptr, ptr %2, align 8, !dbg !1116
  %18 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %17, i32 0, i32 28, !dbg !1117
  %19 = load i32, ptr %18, align 8, !dbg !1117
  %20 = icmp slt i32 %16, %19, !dbg !1118
  br i1 %20, label %21, label %38, !dbg !1119

21:                                               ; preds = %15
  %22 = load ptr, ptr %2, align 8, !dbg !1120
  %23 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %22, i32 0, i32 1, !dbg !1122
  %24 = load ptr, ptr %23, align 8, !dbg !1122
  %25 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %24, i32 0, i32 1, !dbg !1123
  %26 = load ptr, ptr %25, align 8, !dbg !1123
  %27 = load ptr, ptr %2, align 8, !dbg !1124
  %28 = load i64, ptr %4, align 8, !dbg !1125
  %29 = call ptr %26(ptr noundef %27, i32 noundef 1, i64 noundef %28), !dbg !1126
  %30 = load ptr, ptr %3, align 8, !dbg !1127
  %31 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %30, i32 0, i32 8, !dbg !1128
  %32 = load i32, ptr %5, align 4, !dbg !1129
  %33 = sext i32 %32 to i64, !dbg !1127
  %34 = getelementptr inbounds [4 x ptr], ptr %31, i64 0, i64 %33, !dbg !1127
  store ptr %29, ptr %34, align 8, !dbg !1130
  br label %35, !dbg !1131

35:                                               ; preds = %21
  %36 = load i32, ptr %5, align 4, !dbg !1132
  %37 = add nsw i32 %36, 1, !dbg !1132
  store i32 %37, ptr %5, align 4, !dbg !1132
  br label %15, !dbg !1133, !llvm.loop !1134

38:                                               ; preds = %15
  ret void, !dbg !1136
}

; Function Attrs: noinline nounwind uwtable
define internal void @color_quantize3(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 !dbg !1137 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !1138, !DIExpression(), !1139)
  store ptr %1, ptr %6, align 8
    #dbg_declare(ptr %6, !1140, !DIExpression(), !1141)
  store ptr %2, ptr %7, align 8
    #dbg_declare(ptr %7, !1142, !DIExpression(), !1143)
  store i32 %3, ptr %8, align 4
    #dbg_declare(ptr %8, !1144, !DIExpression(), !1145)
    #dbg_declare(ptr %9, !1146, !DIExpression(), !1147)
  %19 = load ptr, ptr %5, align 8, !dbg !1148
  %20 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %19, i32 0, i32 83, !dbg !1149
  %21 = load ptr, ptr %20, align 8, !dbg !1149
  store ptr %21, ptr %9, align 8, !dbg !1147
    #dbg_declare(ptr %10, !1150, !DIExpression(), !1151)
    #dbg_declare(ptr %11, !1152, !DIExpression(), !1153)
    #dbg_declare(ptr %12, !1154, !DIExpression(), !1155)
    #dbg_declare(ptr %13, !1156, !DIExpression(), !1157)
  %22 = load ptr, ptr %9, align 8, !dbg !1158
  %23 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %22, i32 0, i32 3, !dbg !1159
  %24 = load ptr, ptr %23, align 8, !dbg !1159
  %25 = getelementptr inbounds ptr, ptr %24, i64 0, !dbg !1158
  %26 = load ptr, ptr %25, align 8, !dbg !1158
  store ptr %26, ptr %13, align 8, !dbg !1157
    #dbg_declare(ptr %14, !1160, !DIExpression(), !1161)
  %27 = load ptr, ptr %9, align 8, !dbg !1162
  %28 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %27, i32 0, i32 3, !dbg !1163
  %29 = load ptr, ptr %28, align 8, !dbg !1163
  %30 = getelementptr inbounds ptr, ptr %29, i64 1, !dbg !1162
  %31 = load ptr, ptr %30, align 8, !dbg !1162
  store ptr %31, ptr %14, align 8, !dbg !1161
    #dbg_declare(ptr %15, !1164, !DIExpression(), !1165)
  %32 = load ptr, ptr %9, align 8, !dbg !1166
  %33 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %32, i32 0, i32 3, !dbg !1167
  %34 = load ptr, ptr %33, align 8, !dbg !1167
  %35 = getelementptr inbounds ptr, ptr %34, i64 2, !dbg !1166
  %36 = load ptr, ptr %35, align 8, !dbg !1166
  store ptr %36, ptr %15, align 8, !dbg !1165
    #dbg_declare(ptr %16, !1168, !DIExpression(), !1169)
    #dbg_declare(ptr %17, !1170, !DIExpression(), !1171)
    #dbg_declare(ptr %18, !1172, !DIExpression(), !1173)
  %37 = load ptr, ptr %5, align 8, !dbg !1174
  %38 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %37, i32 0, i32 26, !dbg !1175
  %39 = load i32, ptr %38, align 8, !dbg !1175
  store i32 %39, ptr %18, align 4, !dbg !1173
  store i32 0, ptr %16, align 4, !dbg !1176
  br label %40, !dbg !1178

40:                                               ; preds = %99, %4
  %41 = load i32, ptr %16, align 4, !dbg !1179
  %42 = load i32, ptr %8, align 4, !dbg !1181
  %43 = icmp slt i32 %41, %42, !dbg !1182
  br i1 %43, label %44, label %102, !dbg !1183

44:                                               ; preds = %40
  %45 = load ptr, ptr %6, align 8, !dbg !1184
  %46 = load i32, ptr %16, align 4, !dbg !1186
  %47 = sext i32 %46 to i64, !dbg !1184
  %48 = getelementptr inbounds ptr, ptr %45, i64 %47, !dbg !1184
  %49 = load ptr, ptr %48, align 8, !dbg !1184
  store ptr %49, ptr %11, align 8, !dbg !1187
  %50 = load ptr, ptr %7, align 8, !dbg !1188
  %51 = load i32, ptr %16, align 4, !dbg !1189
  %52 = sext i32 %51 to i64, !dbg !1188
  %53 = getelementptr inbounds ptr, ptr %50, i64 %52, !dbg !1188
  %54 = load ptr, ptr %53, align 8, !dbg !1188
  store ptr %54, ptr %12, align 8, !dbg !1190
  %55 = load i32, ptr %18, align 4, !dbg !1191
  store i32 %55, ptr %17, align 4, !dbg !1193
  br label %56, !dbg !1194

56:                                               ; preds = %95, %44
  %57 = load i32, ptr %17, align 4, !dbg !1195
  %58 = icmp ugt i32 %57, 0, !dbg !1197
  br i1 %58, label %59, label %98, !dbg !1198

59:                                               ; preds = %56
  %60 = load ptr, ptr %13, align 8, !dbg !1199
  %61 = load ptr, ptr %11, align 8, !dbg !1199
  %62 = getelementptr inbounds nuw i8, ptr %61, i32 1, !dbg !1199
  store ptr %62, ptr %11, align 8, !dbg !1199
  %63 = load i8, ptr %61, align 1, !dbg !1199
  %64 = zext i8 %63 to i32, !dbg !1199
  %65 = sext i32 %64 to i64, !dbg !1199
  %66 = getelementptr inbounds i8, ptr %60, i64 %65, !dbg !1199
  %67 = load i8, ptr %66, align 1, !dbg !1199
  %68 = zext i8 %67 to i32, !dbg !1199
  store i32 %68, ptr %10, align 4, !dbg !1201
  %69 = load ptr, ptr %14, align 8, !dbg !1202
  %70 = load ptr, ptr %11, align 8, !dbg !1202
  %71 = getelementptr inbounds nuw i8, ptr %70, i32 1, !dbg !1202
  store ptr %71, ptr %11, align 8, !dbg !1202
  %72 = load i8, ptr %70, align 1, !dbg !1202
  %73 = zext i8 %72 to i32, !dbg !1202
  %74 = sext i32 %73 to i64, !dbg !1202
  %75 = getelementptr inbounds i8, ptr %69, i64 %74, !dbg !1202
  %76 = load i8, ptr %75, align 1, !dbg !1202
  %77 = zext i8 %76 to i32, !dbg !1202
  %78 = load i32, ptr %10, align 4, !dbg !1203
  %79 = add nsw i32 %78, %77, !dbg !1203
  store i32 %79, ptr %10, align 4, !dbg !1203
  %80 = load ptr, ptr %15, align 8, !dbg !1204
  %81 = load ptr, ptr %11, align 8, !dbg !1204
  %82 = getelementptr inbounds nuw i8, ptr %81, i32 1, !dbg !1204
  store ptr %82, ptr %11, align 8, !dbg !1204
  %83 = load i8, ptr %81, align 1, !dbg !1204
  %84 = zext i8 %83 to i32, !dbg !1204
  %85 = sext i32 %84 to i64, !dbg !1204
  %86 = getelementptr inbounds i8, ptr %80, i64 %85, !dbg !1204
  %87 = load i8, ptr %86, align 1, !dbg !1204
  %88 = zext i8 %87 to i32, !dbg !1204
  %89 = load i32, ptr %10, align 4, !dbg !1205
  %90 = add nsw i32 %89, %88, !dbg !1205
  store i32 %90, ptr %10, align 4, !dbg !1205
  %91 = load i32, ptr %10, align 4, !dbg !1206
  %92 = trunc i32 %91 to i8, !dbg !1207
  %93 = load ptr, ptr %12, align 8, !dbg !1208
  %94 = getelementptr inbounds nuw i8, ptr %93, i32 1, !dbg !1208
  store ptr %94, ptr %12, align 8, !dbg !1208
  store i8 %92, ptr %93, align 1, !dbg !1209
  br label %95, !dbg !1210

95:                                               ; preds = %59
  %96 = load i32, ptr %17, align 4, !dbg !1211
  %97 = add i32 %96, -1, !dbg !1211
  store i32 %97, ptr %17, align 4, !dbg !1211
  br label %56, !dbg !1212, !llvm.loop !1213

98:                                               ; preds = %56
  br label %99, !dbg !1215

99:                                               ; preds = %98
  %100 = load i32, ptr %16, align 4, !dbg !1216
  %101 = add nsw i32 %100, 1, !dbg !1216
  store i32 %101, ptr %16, align 4, !dbg !1216
  br label %40, !dbg !1217, !llvm.loop !1218

102:                                              ; preds = %40
  ret void, !dbg !1220
}

; Function Attrs: noinline nounwind uwtable
define internal void @color_quantize(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 !dbg !1221 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !1222, !DIExpression(), !1223)
  store ptr %1, ptr %6, align 8
    #dbg_declare(ptr %6, !1224, !DIExpression(), !1225)
  store ptr %2, ptr %7, align 8
    #dbg_declare(ptr %7, !1226, !DIExpression(), !1227)
  store i32 %3, ptr %8, align 4
    #dbg_declare(ptr %8, !1228, !DIExpression(), !1229)
    #dbg_declare(ptr %9, !1230, !DIExpression(), !1231)
  %19 = load ptr, ptr %5, align 8, !dbg !1232
  %20 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %19, i32 0, i32 83, !dbg !1233
  %21 = load ptr, ptr %20, align 8, !dbg !1233
  store ptr %21, ptr %9, align 8, !dbg !1231
    #dbg_declare(ptr %10, !1234, !DIExpression(), !1235)
  %22 = load ptr, ptr %9, align 8, !dbg !1236
  %23 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %22, i32 0, i32 3, !dbg !1237
  %24 = load ptr, ptr %23, align 8, !dbg !1237
  store ptr %24, ptr %10, align 8, !dbg !1235
    #dbg_declare(ptr %11, !1238, !DIExpression(), !1239)
    #dbg_declare(ptr %12, !1240, !DIExpression(), !1241)
    #dbg_declare(ptr %13, !1242, !DIExpression(), !1243)
    #dbg_declare(ptr %14, !1244, !DIExpression(), !1245)
    #dbg_declare(ptr %15, !1246, !DIExpression(), !1247)
    #dbg_declare(ptr %16, !1248, !DIExpression(), !1249)
    #dbg_declare(ptr %17, !1250, !DIExpression(), !1251)
  %25 = load ptr, ptr %5, align 8, !dbg !1252
  %26 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %25, i32 0, i32 26, !dbg !1253
  %27 = load i32, ptr %26, align 8, !dbg !1253
  store i32 %27, ptr %17, align 4, !dbg !1251
    #dbg_declare(ptr %18, !1254, !DIExpression(), !1255)
  %28 = load ptr, ptr %5, align 8, !dbg !1256
  %29 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %28, i32 0, i32 28, !dbg !1257
  %30 = load i32, ptr %29, align 8, !dbg !1257
  store i32 %30, ptr %18, align 4, !dbg !1255
  store i32 0, ptr %15, align 4, !dbg !1258
  br label %31, !dbg !1260

31:                                               ; preds = %83, %4
  %32 = load i32, ptr %15, align 4, !dbg !1261
  %33 = load i32, ptr %8, align 4, !dbg !1263
  %34 = icmp slt i32 %32, %33, !dbg !1264
  br i1 %34, label %35, label %86, !dbg !1265

35:                                               ; preds = %31
  %36 = load ptr, ptr %6, align 8, !dbg !1266
  %37 = load i32, ptr %15, align 4, !dbg !1268
  %38 = sext i32 %37 to i64, !dbg !1266
  %39 = getelementptr inbounds ptr, ptr %36, i64 %38, !dbg !1266
  %40 = load ptr, ptr %39, align 8, !dbg !1266
  store ptr %40, ptr %13, align 8, !dbg !1269
  %41 = load ptr, ptr %7, align 8, !dbg !1270
  %42 = load i32, ptr %15, align 4, !dbg !1271
  %43 = sext i32 %42 to i64, !dbg !1270
  %44 = getelementptr inbounds ptr, ptr %41, i64 %43, !dbg !1270
  %45 = load ptr, ptr %44, align 8, !dbg !1270
  store ptr %45, ptr %14, align 8, !dbg !1272
  %46 = load i32, ptr %17, align 4, !dbg !1273
  store i32 %46, ptr %16, align 4, !dbg !1275
  br label %47, !dbg !1276

47:                                               ; preds = %79, %35
  %48 = load i32, ptr %16, align 4, !dbg !1277
  %49 = icmp ugt i32 %48, 0, !dbg !1279
  br i1 %49, label %50, label %82, !dbg !1280

50:                                               ; preds = %47
  store i32 0, ptr %11, align 4, !dbg !1281
  store i32 0, ptr %12, align 4, !dbg !1283
  br label %51, !dbg !1285

51:                                               ; preds = %71, %50
  %52 = load i32, ptr %12, align 4, !dbg !1286
  %53 = load i32, ptr %18, align 4, !dbg !1288
  %54 = icmp slt i32 %52, %53, !dbg !1289
  br i1 %54, label %55, label %74, !dbg !1290

55:                                               ; preds = %51
  %56 = load ptr, ptr %10, align 8, !dbg !1291
  %57 = load i32, ptr %12, align 4, !dbg !1291
  %58 = sext i32 %57 to i64, !dbg !1291
  %59 = getelementptr inbounds ptr, ptr %56, i64 %58, !dbg !1291
  %60 = load ptr, ptr %59, align 8, !dbg !1291
  %61 = load ptr, ptr %13, align 8, !dbg !1291
  %62 = getelementptr inbounds nuw i8, ptr %61, i32 1, !dbg !1291
  store ptr %62, ptr %13, align 8, !dbg !1291
  %63 = load i8, ptr %61, align 1, !dbg !1291
  %64 = zext i8 %63 to i32, !dbg !1291
  %65 = sext i32 %64 to i64, !dbg !1291
  %66 = getelementptr inbounds i8, ptr %60, i64 %65, !dbg !1291
  %67 = load i8, ptr %66, align 1, !dbg !1291
  %68 = zext i8 %67 to i32, !dbg !1291
  %69 = load i32, ptr %11, align 4, !dbg !1293
  %70 = add nsw i32 %69, %68, !dbg !1293
  store i32 %70, ptr %11, align 4, !dbg !1293
  br label %71, !dbg !1294

71:                                               ; preds = %55
  %72 = load i32, ptr %12, align 4, !dbg !1295
  %73 = add nsw i32 %72, 1, !dbg !1295
  store i32 %73, ptr %12, align 4, !dbg !1295
  br label %51, !dbg !1296, !llvm.loop !1297

74:                                               ; preds = %51
  %75 = load i32, ptr %11, align 4, !dbg !1299
  %76 = trunc i32 %75 to i8, !dbg !1300
  %77 = load ptr, ptr %14, align 8, !dbg !1301
  %78 = getelementptr inbounds nuw i8, ptr %77, i32 1, !dbg !1301
  store ptr %78, ptr %14, align 8, !dbg !1301
  store i8 %76, ptr %77, align 1, !dbg !1302
  br label %79, !dbg !1303

79:                                               ; preds = %74
  %80 = load i32, ptr %16, align 4, !dbg !1304
  %81 = add i32 %80, -1, !dbg !1304
  store i32 %81, ptr %16, align 4, !dbg !1304
  br label %47, !dbg !1305, !llvm.loop !1306

82:                                               ; preds = %47
  br label %83, !dbg !1308

83:                                               ; preds = %82
  %84 = load i32, ptr %15, align 4, !dbg !1309
  %85 = add nsw i32 %84, 1, !dbg !1309
  store i32 %85, ptr %15, align 4, !dbg !1309
  br label %31, !dbg !1310, !llvm.loop !1311

86:                                               ; preds = %31
  ret void, !dbg !1313
}

; Function Attrs: noinline nounwind uwtable
define internal void @quantize3_ord_dither(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 !dbg !1314 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !1315, !DIExpression(), !1316)
  store ptr %1, ptr %6, align 8
    #dbg_declare(ptr %6, !1317, !DIExpression(), !1318)
  store ptr %2, ptr %7, align 8
    #dbg_declare(ptr %7, !1319, !DIExpression(), !1320)
  store i32 %3, ptr %8, align 4
    #dbg_declare(ptr %8, !1321, !DIExpression(), !1322)
    #dbg_declare(ptr %9, !1323, !DIExpression(), !1324)
  %24 = load ptr, ptr %5, align 8, !dbg !1325
  %25 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %24, i32 0, i32 83, !dbg !1326
  %26 = load ptr, ptr %25, align 8, !dbg !1326
  store ptr %26, ptr %9, align 8, !dbg !1324
    #dbg_declare(ptr %10, !1327, !DIExpression(), !1328)
    #dbg_declare(ptr %11, !1329, !DIExpression(), !1330)
    #dbg_declare(ptr %12, !1331, !DIExpression(), !1332)
    #dbg_declare(ptr %13, !1333, !DIExpression(), !1334)
  %27 = load ptr, ptr %9, align 8, !dbg !1335
  %28 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %27, i32 0, i32 3, !dbg !1336
  %29 = load ptr, ptr %28, align 8, !dbg !1336
  %30 = getelementptr inbounds ptr, ptr %29, i64 0, !dbg !1335
  %31 = load ptr, ptr %30, align 8, !dbg !1335
  store ptr %31, ptr %13, align 8, !dbg !1334
    #dbg_declare(ptr %14, !1337, !DIExpression(), !1338)
  %32 = load ptr, ptr %9, align 8, !dbg !1339
  %33 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %32, i32 0, i32 3, !dbg !1340
  %34 = load ptr, ptr %33, align 8, !dbg !1340
  %35 = getelementptr inbounds ptr, ptr %34, i64 1, !dbg !1339
  %36 = load ptr, ptr %35, align 8, !dbg !1339
  store ptr %36, ptr %14, align 8, !dbg !1338
    #dbg_declare(ptr %15, !1341, !DIExpression(), !1342)
  %37 = load ptr, ptr %9, align 8, !dbg !1343
  %38 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %37, i32 0, i32 3, !dbg !1344
  %39 = load ptr, ptr %38, align 8, !dbg !1344
  %40 = getelementptr inbounds ptr, ptr %39, i64 2, !dbg !1343
  %41 = load ptr, ptr %40, align 8, !dbg !1343
  store ptr %41, ptr %15, align 8, !dbg !1342
    #dbg_declare(ptr %16, !1345, !DIExpression(), !1346)
    #dbg_declare(ptr %17, !1347, !DIExpression(), !1348)
    #dbg_declare(ptr %18, !1349, !DIExpression(), !1350)
    #dbg_declare(ptr %19, !1351, !DIExpression(), !1352)
    #dbg_declare(ptr %20, !1353, !DIExpression(), !1354)
    #dbg_declare(ptr %21, !1355, !DIExpression(), !1356)
    #dbg_declare(ptr %22, !1357, !DIExpression(), !1358)
    #dbg_declare(ptr %23, !1359, !DIExpression(), !1360)
  %42 = load ptr, ptr %5, align 8, !dbg !1361
  %43 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %42, i32 0, i32 26, !dbg !1362
  %44 = load i32, ptr %43, align 8, !dbg !1362
  store i32 %44, ptr %23, align 4, !dbg !1360
  store i32 0, ptr %21, align 4, !dbg !1363
  br label %45, !dbg !1365

45:                                               ; preds = %158, %4
  %46 = load i32, ptr %21, align 4, !dbg !1366
  %47 = load i32, ptr %8, align 4, !dbg !1368
  %48 = icmp slt i32 %46, %47, !dbg !1369
  br i1 %48, label %49, label %161, !dbg !1370

49:                                               ; preds = %45
  %50 = load ptr, ptr %9, align 8, !dbg !1371
  %51 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %50, i32 0, i32 6, !dbg !1373
  %52 = load i32, ptr %51, align 4, !dbg !1373
  store i32 %52, ptr %19, align 4, !dbg !1374
  %53 = load ptr, ptr %6, align 8, !dbg !1375
  %54 = load i32, ptr %21, align 4, !dbg !1376
  %55 = sext i32 %54 to i64, !dbg !1375
  %56 = getelementptr inbounds ptr, ptr %53, i64 %55, !dbg !1375
  %57 = load ptr, ptr %56, align 8, !dbg !1375
  store ptr %57, ptr %11, align 8, !dbg !1377
  %58 = load ptr, ptr %7, align 8, !dbg !1378
  %59 = load i32, ptr %21, align 4, !dbg !1379
  %60 = sext i32 %59 to i64, !dbg !1378
  %61 = getelementptr inbounds ptr, ptr %58, i64 %60, !dbg !1378
  %62 = load ptr, ptr %61, align 8, !dbg !1378
  store ptr %62, ptr %12, align 8, !dbg !1380
  %63 = load ptr, ptr %9, align 8, !dbg !1381
  %64 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %63, i32 0, i32 7, !dbg !1382
  %65 = getelementptr inbounds [4 x ptr], ptr %64, i64 0, i64 0, !dbg !1381
  %66 = load ptr, ptr %65, align 8, !dbg !1381
  %67 = load i32, ptr %19, align 4, !dbg !1383
  %68 = sext i32 %67 to i64, !dbg !1381
  %69 = getelementptr inbounds [16 x i32], ptr %66, i64 %68, !dbg !1381
  %70 = getelementptr inbounds [16 x i32], ptr %69, i64 0, i64 0, !dbg !1381
  store ptr %70, ptr %16, align 8, !dbg !1384
  %71 = load ptr, ptr %9, align 8, !dbg !1385
  %72 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %71, i32 0, i32 7, !dbg !1386
  %73 = getelementptr inbounds [4 x ptr], ptr %72, i64 0, i64 1, !dbg !1385
  %74 = load ptr, ptr %73, align 8, !dbg !1385
  %75 = load i32, ptr %19, align 4, !dbg !1387
  %76 = sext i32 %75 to i64, !dbg !1385
  %77 = getelementptr inbounds [16 x i32], ptr %74, i64 %76, !dbg !1385
  %78 = getelementptr inbounds [16 x i32], ptr %77, i64 0, i64 0, !dbg !1385
  store ptr %78, ptr %17, align 8, !dbg !1388
  %79 = load ptr, ptr %9, align 8, !dbg !1389
  %80 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %79, i32 0, i32 7, !dbg !1390
  %81 = getelementptr inbounds [4 x ptr], ptr %80, i64 0, i64 2, !dbg !1389
  %82 = load ptr, ptr %81, align 8, !dbg !1389
  %83 = load i32, ptr %19, align 4, !dbg !1391
  %84 = sext i32 %83 to i64, !dbg !1389
  %85 = getelementptr inbounds [16 x i32], ptr %82, i64 %84, !dbg !1389
  %86 = getelementptr inbounds [16 x i32], ptr %85, i64 0, i64 0, !dbg !1389
  store ptr %86, ptr %18, align 8, !dbg !1392
  store i32 0, ptr %20, align 4, !dbg !1393
  %87 = load i32, ptr %23, align 4, !dbg !1394
  store i32 %87, ptr %22, align 4, !dbg !1396
  br label %88, !dbg !1397

88:                                               ; preds = %148, %49
  %89 = load i32, ptr %22, align 4, !dbg !1398
  %90 = icmp ugt i32 %89, 0, !dbg !1400
  br i1 %90, label %91, label %151, !dbg !1401

91:                                               ; preds = %88
  %92 = load ptr, ptr %13, align 8, !dbg !1402
  %93 = load ptr, ptr %11, align 8, !dbg !1402
  %94 = getelementptr inbounds nuw i8, ptr %93, i32 1, !dbg !1402
  store ptr %94, ptr %11, align 8, !dbg !1402
  %95 = load i8, ptr %93, align 1, !dbg !1402
  %96 = zext i8 %95 to i32, !dbg !1402
  %97 = load ptr, ptr %16, align 8, !dbg !1402
  %98 = load i32, ptr %20, align 4, !dbg !1402
  %99 = sext i32 %98 to i64, !dbg !1402
  %100 = getelementptr inbounds i32, ptr %97, i64 %99, !dbg !1402
  %101 = load i32, ptr %100, align 4, !dbg !1402
  %102 = add nsw i32 %96, %101, !dbg !1402
  %103 = sext i32 %102 to i64, !dbg !1402
  %104 = getelementptr inbounds i8, ptr %92, i64 %103, !dbg !1402
  %105 = load i8, ptr %104, align 1, !dbg !1402
  %106 = zext i8 %105 to i32, !dbg !1402
  store i32 %106, ptr %10, align 4, !dbg !1404
  %107 = load ptr, ptr %14, align 8, !dbg !1405
  %108 = load ptr, ptr %11, align 8, !dbg !1405
  %109 = getelementptr inbounds nuw i8, ptr %108, i32 1, !dbg !1405
  store ptr %109, ptr %11, align 8, !dbg !1405
  %110 = load i8, ptr %108, align 1, !dbg !1405
  %111 = zext i8 %110 to i32, !dbg !1405
  %112 = load ptr, ptr %17, align 8, !dbg !1405
  %113 = load i32, ptr %20, align 4, !dbg !1405
  %114 = sext i32 %113 to i64, !dbg !1405
  %115 = getelementptr inbounds i32, ptr %112, i64 %114, !dbg !1405
  %116 = load i32, ptr %115, align 4, !dbg !1405
  %117 = add nsw i32 %111, %116, !dbg !1405
  %118 = sext i32 %117 to i64, !dbg !1405
  %119 = getelementptr inbounds i8, ptr %107, i64 %118, !dbg !1405
  %120 = load i8, ptr %119, align 1, !dbg !1405
  %121 = zext i8 %120 to i32, !dbg !1405
  %122 = load i32, ptr %10, align 4, !dbg !1406
  %123 = add nsw i32 %122, %121, !dbg !1406
  store i32 %123, ptr %10, align 4, !dbg !1406
  %124 = load ptr, ptr %15, align 8, !dbg !1407
  %125 = load ptr, ptr %11, align 8, !dbg !1407
  %126 = getelementptr inbounds nuw i8, ptr %125, i32 1, !dbg !1407
  store ptr %126, ptr %11, align 8, !dbg !1407
  %127 = load i8, ptr %125, align 1, !dbg !1407
  %128 = zext i8 %127 to i32, !dbg !1407
  %129 = load ptr, ptr %18, align 8, !dbg !1407
  %130 = load i32, ptr %20, align 4, !dbg !1407
  %131 = sext i32 %130 to i64, !dbg !1407
  %132 = getelementptr inbounds i32, ptr %129, i64 %131, !dbg !1407
  %133 = load i32, ptr %132, align 4, !dbg !1407
  %134 = add nsw i32 %128, %133, !dbg !1407
  %135 = sext i32 %134 to i64, !dbg !1407
  %136 = getelementptr inbounds i8, ptr %124, i64 %135, !dbg !1407
  %137 = load i8, ptr %136, align 1, !dbg !1407
  %138 = zext i8 %137 to i32, !dbg !1407
  %139 = load i32, ptr %10, align 4, !dbg !1408
  %140 = add nsw i32 %139, %138, !dbg !1408
  store i32 %140, ptr %10, align 4, !dbg !1408
  %141 = load i32, ptr %10, align 4, !dbg !1409
  %142 = trunc i32 %141 to i8, !dbg !1410
  %143 = load ptr, ptr %12, align 8, !dbg !1411
  %144 = getelementptr inbounds nuw i8, ptr %143, i32 1, !dbg !1411
  store ptr %144, ptr %12, align 8, !dbg !1411
  store i8 %142, ptr %143, align 1, !dbg !1412
  %145 = load i32, ptr %20, align 4, !dbg !1413
  %146 = add nsw i32 %145, 1, !dbg !1414
  %147 = and i32 %146, 15, !dbg !1415
  store i32 %147, ptr %20, align 4, !dbg !1416
  br label %148, !dbg !1417

148:                                              ; preds = %91
  %149 = load i32, ptr %22, align 4, !dbg !1418
  %150 = add i32 %149, -1, !dbg !1418
  store i32 %150, ptr %22, align 4, !dbg !1418
  br label %88, !dbg !1419, !llvm.loop !1420

151:                                              ; preds = %88
  %152 = load i32, ptr %19, align 4, !dbg !1422
  %153 = add nsw i32 %152, 1, !dbg !1423
  %154 = and i32 %153, 15, !dbg !1424
  store i32 %154, ptr %19, align 4, !dbg !1425
  %155 = load i32, ptr %19, align 4, !dbg !1426
  %156 = load ptr, ptr %9, align 8, !dbg !1427
  %157 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %156, i32 0, i32 6, !dbg !1428
  store i32 %155, ptr %157, align 4, !dbg !1429
  br label %158, !dbg !1430

158:                                              ; preds = %151
  %159 = load i32, ptr %21, align 4, !dbg !1431
  %160 = add nsw i32 %159, 1, !dbg !1431
  store i32 %160, ptr %21, align 4, !dbg !1431
  br label %45, !dbg !1432, !llvm.loop !1433

161:                                              ; preds = %45
  ret void, !dbg !1435
}

; Function Attrs: noinline nounwind uwtable
define internal void @quantize_ord_dither(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 !dbg !1436 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !1437, !DIExpression(), !1438)
  store ptr %1, ptr %6, align 8
    #dbg_declare(ptr %6, !1439, !DIExpression(), !1440)
  store ptr %2, ptr %7, align 8
    #dbg_declare(ptr %7, !1441, !DIExpression(), !1442)
  store i32 %3, ptr %8, align 4
    #dbg_declare(ptr %8, !1443, !DIExpression(), !1444)
    #dbg_declare(ptr %9, !1445, !DIExpression(), !1446)
  %21 = load ptr, ptr %5, align 8, !dbg !1447
  %22 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %21, i32 0, i32 83, !dbg !1448
  %23 = load ptr, ptr %22, align 8, !dbg !1448
  store ptr %23, ptr %9, align 8, !dbg !1446
    #dbg_declare(ptr %10, !1449, !DIExpression(), !1450)
    #dbg_declare(ptr %11, !1451, !DIExpression(), !1452)
    #dbg_declare(ptr %12, !1453, !DIExpression(), !1454)
    #dbg_declare(ptr %13, !1455, !DIExpression(), !1456)
    #dbg_declare(ptr %14, !1457, !DIExpression(), !1458)
    #dbg_declare(ptr %15, !1459, !DIExpression(), !1460)
    #dbg_declare(ptr %16, !1461, !DIExpression(), !1462)
  %24 = load ptr, ptr %5, align 8, !dbg !1463
  %25 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %24, i32 0, i32 28, !dbg !1464
  %26 = load i32, ptr %25, align 8, !dbg !1464
  store i32 %26, ptr %16, align 4, !dbg !1462
    #dbg_declare(ptr %17, !1465, !DIExpression(), !1466)
    #dbg_declare(ptr %18, !1467, !DIExpression(), !1468)
    #dbg_declare(ptr %19, !1469, !DIExpression(), !1470)
    #dbg_declare(ptr %20, !1471, !DIExpression(), !1472)
  %27 = load ptr, ptr %5, align 8, !dbg !1473
  %28 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %27, i32 0, i32 26, !dbg !1474
  %29 = load i32, ptr %28, align 8, !dbg !1474
  store i32 %29, ptr %20, align 4, !dbg !1472
  store i32 0, ptr %18, align 4, !dbg !1475
  br label %30, !dbg !1477

30:                                               ; preds = %128, %4
  %31 = load i32, ptr %18, align 4, !dbg !1478
  %32 = load i32, ptr %8, align 4, !dbg !1480
  %33 = icmp slt i32 %31, %32, !dbg !1481
  br i1 %33, label %34, label %131, !dbg !1482

34:                                               ; preds = %30
  %35 = load ptr, ptr %7, align 8, !dbg !1483
  %36 = load i32, ptr %18, align 4, !dbg !1485
  %37 = sext i32 %36 to i64, !dbg !1483
  %38 = getelementptr inbounds ptr, ptr %35, i64 %37, !dbg !1483
  %39 = load ptr, ptr %38, align 8, !dbg !1483
  %40 = load i32, ptr %20, align 4, !dbg !1486
  %41 = zext i32 %40 to i64, !dbg !1486
  %42 = mul i64 %41, 1, !dbg !1487
  call void @jzero_far(ptr noundef %39, i64 noundef %42), !dbg !1488
  %43 = load ptr, ptr %9, align 8, !dbg !1489
  %44 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %43, i32 0, i32 6, !dbg !1490
  %45 = load i32, ptr %44, align 4, !dbg !1490
  store i32 %45, ptr %14, align 4, !dbg !1491
  store i32 0, ptr %17, align 4, !dbg !1492
  br label %46, !dbg !1494

46:                                               ; preds = %118, %34
  %47 = load i32, ptr %17, align 4, !dbg !1495
  %48 = load i32, ptr %16, align 4, !dbg !1497
  %49 = icmp slt i32 %47, %48, !dbg !1498
  br i1 %49, label %50, label %121, !dbg !1499

50:                                               ; preds = %46
  %51 = load ptr, ptr %6, align 8, !dbg !1500
  %52 = load i32, ptr %18, align 4, !dbg !1502
  %53 = sext i32 %52 to i64, !dbg !1500
  %54 = getelementptr inbounds ptr, ptr %51, i64 %53, !dbg !1500
  %55 = load ptr, ptr %54, align 8, !dbg !1500
  %56 = load i32, ptr %17, align 4, !dbg !1503
  %57 = sext i32 %56 to i64, !dbg !1504
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !1504
  store ptr %58, ptr %10, align 8, !dbg !1505
  %59 = load ptr, ptr %7, align 8, !dbg !1506
  %60 = load i32, ptr %18, align 4, !dbg !1507
  %61 = sext i32 %60 to i64, !dbg !1506
  %62 = getelementptr inbounds ptr, ptr %59, i64 %61, !dbg !1506
  %63 = load ptr, ptr %62, align 8, !dbg !1506
  store ptr %63, ptr %11, align 8, !dbg !1508
  %64 = load ptr, ptr %9, align 8, !dbg !1509
  %65 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %64, i32 0, i32 3, !dbg !1510
  %66 = load ptr, ptr %65, align 8, !dbg !1510
  %67 = load i32, ptr %17, align 4, !dbg !1511
  %68 = sext i32 %67 to i64, !dbg !1509
  %69 = getelementptr inbounds ptr, ptr %66, i64 %68, !dbg !1509
  %70 = load ptr, ptr %69, align 8, !dbg !1509
  store ptr %70, ptr %12, align 8, !dbg !1512
  %71 = load ptr, ptr %9, align 8, !dbg !1513
  %72 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %71, i32 0, i32 7, !dbg !1514
  %73 = load i32, ptr %17, align 4, !dbg !1515
  %74 = sext i32 %73 to i64, !dbg !1513
  %75 = getelementptr inbounds [4 x ptr], ptr %72, i64 0, i64 %74, !dbg !1513
  %76 = load ptr, ptr %75, align 8, !dbg !1513
  %77 = load i32, ptr %14, align 4, !dbg !1516
  %78 = sext i32 %77 to i64, !dbg !1513
  %79 = getelementptr inbounds [16 x i32], ptr %76, i64 %78, !dbg !1513
  %80 = getelementptr inbounds [16 x i32], ptr %79, i64 0, i64 0, !dbg !1513
  store ptr %80, ptr %13, align 8, !dbg !1517
  store i32 0, ptr %15, align 4, !dbg !1518
  %81 = load i32, ptr %20, align 4, !dbg !1519
  store i32 %81, ptr %19, align 4, !dbg !1521
  br label %82, !dbg !1522

82:                                               ; preds = %114, %50
  %83 = load i32, ptr %19, align 4, !dbg !1523
  %84 = icmp ugt i32 %83, 0, !dbg !1525
  br i1 %84, label %85, label %117, !dbg !1526

85:                                               ; preds = %82
  %86 = load ptr, ptr %12, align 8, !dbg !1527
  %87 = load ptr, ptr %10, align 8, !dbg !1529
  %88 = load i8, ptr %87, align 1, !dbg !1529
  %89 = zext i8 %88 to i32, !dbg !1529
  %90 = load ptr, ptr %13, align 8, !dbg !1530
  %91 = load i32, ptr %15, align 4, !dbg !1531
  %92 = sext i32 %91 to i64, !dbg !1530
  %93 = getelementptr inbounds i32, ptr %90, i64 %92, !dbg !1530
  %94 = load i32, ptr %93, align 4, !dbg !1530
  %95 = add nsw i32 %89, %94, !dbg !1532
  %96 = sext i32 %95 to i64, !dbg !1527
  %97 = getelementptr inbounds i8, ptr %86, i64 %96, !dbg !1527
  %98 = load i8, ptr %97, align 1, !dbg !1527
  %99 = zext i8 %98 to i32, !dbg !1527
  %100 = load ptr, ptr %11, align 8, !dbg !1533
  %101 = load i8, ptr %100, align 1, !dbg !1534
  %102 = zext i8 %101 to i32, !dbg !1534
  %103 = add nsw i32 %102, %99, !dbg !1534
  %104 = trunc i32 %103 to i8, !dbg !1534
  store i8 %104, ptr %100, align 1, !dbg !1534
  %105 = load i32, ptr %16, align 4, !dbg !1535
  %106 = load ptr, ptr %10, align 8, !dbg !1536
  %107 = sext i32 %105 to i64, !dbg !1536
  %108 = getelementptr inbounds i8, ptr %106, i64 %107, !dbg !1536
  store ptr %108, ptr %10, align 8, !dbg !1536
  %109 = load ptr, ptr %11, align 8, !dbg !1537
  %110 = getelementptr inbounds nuw i8, ptr %109, i32 1, !dbg !1537
  store ptr %110, ptr %11, align 8, !dbg !1537
  %111 = load i32, ptr %15, align 4, !dbg !1538
  %112 = add nsw i32 %111, 1, !dbg !1539
  %113 = and i32 %112, 15, !dbg !1540
  store i32 %113, ptr %15, align 4, !dbg !1541
  br label %114, !dbg !1542

114:                                              ; preds = %85
  %115 = load i32, ptr %19, align 4, !dbg !1543
  %116 = add i32 %115, -1, !dbg !1543
  store i32 %116, ptr %19, align 4, !dbg !1543
  br label %82, !dbg !1544, !llvm.loop !1545

117:                                              ; preds = %82
  br label %118, !dbg !1547

118:                                              ; preds = %117
  %119 = load i32, ptr %17, align 4, !dbg !1548
  %120 = add nsw i32 %119, 1, !dbg !1548
  store i32 %120, ptr %17, align 4, !dbg !1548
  br label %46, !dbg !1549, !llvm.loop !1550

121:                                              ; preds = %46
  %122 = load i32, ptr %14, align 4, !dbg !1552
  %123 = add nsw i32 %122, 1, !dbg !1553
  %124 = and i32 %123, 15, !dbg !1554
  store i32 %124, ptr %14, align 4, !dbg !1555
  %125 = load i32, ptr %14, align 4, !dbg !1556
  %126 = load ptr, ptr %9, align 8, !dbg !1557
  %127 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %126, i32 0, i32 6, !dbg !1558
  store i32 %125, ptr %127, align 4, !dbg !1559
  br label %128, !dbg !1560

128:                                              ; preds = %121
  %129 = load i32, ptr %18, align 4, !dbg !1561
  %130 = add nsw i32 %129, 1, !dbg !1561
  store i32 %130, ptr %18, align 4, !dbg !1561
  br label %30, !dbg !1562, !llvm.loop !1563

131:                                              ; preds = %30
  ret void, !dbg !1565
}

; Function Attrs: noinline nounwind uwtable
define internal void @create_odither_tables(ptr noundef %0) #0 !dbg !1566 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !1567, !DIExpression(), !1568)
    #dbg_declare(ptr %3, !1569, !DIExpression(), !1570)
  %8 = load ptr, ptr %2, align 8, !dbg !1571
  %9 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %8, i32 0, i32 83, !dbg !1572
  %10 = load ptr, ptr %9, align 8, !dbg !1572
  store ptr %10, ptr %3, align 8, !dbg !1570
    #dbg_declare(ptr %4, !1573, !DIExpression(), !1574)
    #dbg_declare(ptr %5, !1575, !DIExpression(), !1576)
    #dbg_declare(ptr %6, !1577, !DIExpression(), !1578)
    #dbg_declare(ptr %7, !1579, !DIExpression(), !1580)
  store i32 0, ptr %5, align 4, !dbg !1581
  br label %11, !dbg !1583

11:                                               ; preds = %62, %1
  %12 = load i32, ptr %5, align 4, !dbg !1584
  %13 = load ptr, ptr %2, align 8, !dbg !1586
  %14 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %13, i32 0, i32 28, !dbg !1587
  %15 = load i32, ptr %14, align 8, !dbg !1587
  %16 = icmp slt i32 %12, %15, !dbg !1588
  br i1 %16, label %17, label %65, !dbg !1589

17:                                               ; preds = %11
  %18 = load ptr, ptr %3, align 8, !dbg !1590
  %19 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %18, i32 0, i32 5, !dbg !1592
  %20 = load i32, ptr %5, align 4, !dbg !1593
  %21 = sext i32 %20 to i64, !dbg !1590
  %22 = getelementptr inbounds [4 x i32], ptr %19, i64 0, i64 %21, !dbg !1590
  %23 = load i32, ptr %22, align 4, !dbg !1590
  store i32 %23, ptr %7, align 4, !dbg !1594
  store ptr null, ptr %4, align 8, !dbg !1595
  store i32 0, ptr %6, align 4, !dbg !1596
  br label %24, !dbg !1598

24:                                               ; preds = %45, %17
  %25 = load i32, ptr %6, align 4, !dbg !1599
  %26 = load i32, ptr %5, align 4, !dbg !1601
  %27 = icmp slt i32 %25, %26, !dbg !1602
  br i1 %27, label %28, label %48, !dbg !1603

28:                                               ; preds = %24
  %29 = load i32, ptr %7, align 4, !dbg !1604
  %30 = load ptr, ptr %3, align 8, !dbg !1607
  %31 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %30, i32 0, i32 5, !dbg !1608
  %32 = load i32, ptr %6, align 4, !dbg !1609
  %33 = sext i32 %32 to i64, !dbg !1607
  %34 = getelementptr inbounds [4 x i32], ptr %31, i64 0, i64 %33, !dbg !1607
  %35 = load i32, ptr %34, align 4, !dbg !1607
  %36 = icmp eq i32 %29, %35, !dbg !1610
  br i1 %36, label %37, label %44, !dbg !1610

37:                                               ; preds = %28
  %38 = load ptr, ptr %3, align 8, !dbg !1611
  %39 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %38, i32 0, i32 7, !dbg !1613
  %40 = load i32, ptr %6, align 4, !dbg !1614
  %41 = sext i32 %40 to i64, !dbg !1611
  %42 = getelementptr inbounds [4 x ptr], ptr %39, i64 0, i64 %41, !dbg !1611
  %43 = load ptr, ptr %42, align 8, !dbg !1611
  store ptr %43, ptr %4, align 8, !dbg !1615
  br label %48, !dbg !1616

44:                                               ; preds = %28
  br label %45, !dbg !1617

45:                                               ; preds = %44
  %46 = load i32, ptr %6, align 4, !dbg !1618
  %47 = add nsw i32 %46, 1, !dbg !1618
  store i32 %47, ptr %6, align 4, !dbg !1618
  br label %24, !dbg !1619, !llvm.loop !1620

48:                                               ; preds = %37, %24
  %49 = load ptr, ptr %4, align 8, !dbg !1622
  %50 = icmp eq ptr %49, null, !dbg !1624
  br i1 %50, label %51, label %55, !dbg !1624

51:                                               ; preds = %48
  %52 = load ptr, ptr %2, align 8, !dbg !1625
  %53 = load i32, ptr %7, align 4, !dbg !1626
  %54 = call ptr @make_odither_array(ptr noundef %52, i32 noundef %53), !dbg !1627
  store ptr %54, ptr %4, align 8, !dbg !1628
  br label %55, !dbg !1629

55:                                               ; preds = %51, %48
  %56 = load ptr, ptr %4, align 8, !dbg !1630
  %57 = load ptr, ptr %3, align 8, !dbg !1631
  %58 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %57, i32 0, i32 7, !dbg !1632
  %59 = load i32, ptr %5, align 4, !dbg !1633
  %60 = sext i32 %59 to i64, !dbg !1631
  %61 = getelementptr inbounds [4 x ptr], ptr %58, i64 0, i64 %60, !dbg !1631
  store ptr %56, ptr %61, align 8, !dbg !1634
  br label %62, !dbg !1635

62:                                               ; preds = %55
  %63 = load i32, ptr %5, align 4, !dbg !1636
  %64 = add nsw i32 %63, 1, !dbg !1636
  store i32 %64, ptr %5, align 4, !dbg !1636
  br label %11, !dbg !1637, !llvm.loop !1638

65:                                               ; preds = %11
  ret void, !dbg !1640
}

; Function Attrs: noinline nounwind uwtable
define internal void @quantize_fs_dither(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 !dbg !1641 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !1642, !DIExpression(), !1643)
  store ptr %1, ptr %6, align 8
    #dbg_declare(ptr %6, !1644, !DIExpression(), !1645)
  store ptr %2, ptr %7, align 8
    #dbg_declare(ptr %7, !1646, !DIExpression(), !1647)
  store i32 %3, ptr %8, align 4
    #dbg_declare(ptr %8, !1648, !DIExpression(), !1649)
    #dbg_declare(ptr %9, !1650, !DIExpression(), !1651)
  %29 = load ptr, ptr %5, align 8, !dbg !1652
  %30 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %29, i32 0, i32 83, !dbg !1653
  %31 = load ptr, ptr %30, align 8, !dbg !1653
  store ptr %31, ptr %9, align 8, !dbg !1651
    #dbg_declare(ptr %10, !1654, !DIExpression(), !1656)
    #dbg_declare(ptr %11, !1657, !DIExpression(), !1658)
    #dbg_declare(ptr %12, !1659, !DIExpression(), !1660)
    #dbg_declare(ptr %13, !1661, !DIExpression(), !1662)
    #dbg_declare(ptr %14, !1663, !DIExpression(), !1664)
    #dbg_declare(ptr %15, !1665, !DIExpression(), !1666)
    #dbg_declare(ptr %16, !1667, !DIExpression(), !1668)
    #dbg_declare(ptr %17, !1669, !DIExpression(), !1670)
    #dbg_declare(ptr %18, !1671, !DIExpression(), !1672)
    #dbg_declare(ptr %19, !1673, !DIExpression(), !1674)
    #dbg_declare(ptr %20, !1675, !DIExpression(), !1676)
    #dbg_declare(ptr %21, !1677, !DIExpression(), !1678)
  %32 = load ptr, ptr %5, align 8, !dbg !1679
  %33 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %32, i32 0, i32 28, !dbg !1680
  %34 = load i32, ptr %33, align 8, !dbg !1680
  store i32 %34, ptr %21, align 4, !dbg !1678
    #dbg_declare(ptr %22, !1681, !DIExpression(), !1682)
    #dbg_declare(ptr %23, !1683, !DIExpression(), !1684)
    #dbg_declare(ptr %24, !1685, !DIExpression(), !1686)
    #dbg_declare(ptr %25, !1687, !DIExpression(), !1688)
    #dbg_declare(ptr %26, !1689, !DIExpression(), !1690)
    #dbg_declare(ptr %27, !1691, !DIExpression(), !1692)
  %35 = load ptr, ptr %5, align 8, !dbg !1693
  %36 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %35, i32 0, i32 26, !dbg !1694
  %37 = load i32, ptr %36, align 8, !dbg !1694
  store i32 %37, ptr %27, align 4, !dbg !1692
    #dbg_declare(ptr %28, !1695, !DIExpression(), !1696)
  %38 = load ptr, ptr %5, align 8, !dbg !1697
  %39 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %38, i32 0, i32 61, !dbg !1698
  %40 = load ptr, ptr %39, align 8, !dbg !1698
  store ptr %40, ptr %28, align 8, !dbg !1696
  store i32 0, ptr %25, align 4, !dbg !1699
  br label %41, !dbg !1701

41:                                               ; preds = %226, %4
  %42 = load i32, ptr %25, align 4, !dbg !1702
  %43 = load i32, ptr %8, align 4, !dbg !1704
  %44 = icmp slt i32 %42, %43, !dbg !1705
  br i1 %44, label %45, label %229, !dbg !1706

45:                                               ; preds = %41
  %46 = load ptr, ptr %7, align 8, !dbg !1707
  %47 = load i32, ptr %25, align 4, !dbg !1709
  %48 = sext i32 %47 to i64, !dbg !1707
  %49 = getelementptr inbounds ptr, ptr %46, i64 %48, !dbg !1707
  %50 = load ptr, ptr %49, align 8, !dbg !1707
  %51 = load i32, ptr %27, align 4, !dbg !1710
  %52 = zext i32 %51 to i64, !dbg !1710
  %53 = mul i64 %52, 1, !dbg !1711
  call void @jzero_far(ptr noundef %50, i64 noundef %53), !dbg !1712
  store i32 0, ptr %24, align 4, !dbg !1713
  br label %54, !dbg !1715

54:                                               ; preds = %214, %45
  %55 = load i32, ptr %24, align 4, !dbg !1716
  %56 = load i32, ptr %21, align 4, !dbg !1718
  %57 = icmp slt i32 %55, %56, !dbg !1719
  br i1 %57, label %58, label %217, !dbg !1720

58:                                               ; preds = %54
  %59 = load ptr, ptr %6, align 8, !dbg !1721
  %60 = load i32, ptr %25, align 4, !dbg !1723
  %61 = sext i32 %60 to i64, !dbg !1721
  %62 = getelementptr inbounds ptr, ptr %59, i64 %61, !dbg !1721
  %63 = load ptr, ptr %62, align 8, !dbg !1721
  %64 = load i32, ptr %24, align 4, !dbg !1724
  %65 = sext i32 %64 to i64, !dbg !1725
  %66 = getelementptr inbounds i8, ptr %63, i64 %65, !dbg !1725
  store ptr %66, ptr %16, align 8, !dbg !1726
  %67 = load ptr, ptr %7, align 8, !dbg !1727
  %68 = load i32, ptr %25, align 4, !dbg !1728
  %69 = sext i32 %68 to i64, !dbg !1727
  %70 = getelementptr inbounds ptr, ptr %67, i64 %69, !dbg !1727
  %71 = load ptr, ptr %70, align 8, !dbg !1727
  store ptr %71, ptr %17, align 8, !dbg !1729
  %72 = load ptr, ptr %9, align 8, !dbg !1730
  %73 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %72, i32 0, i32 9, !dbg !1732
  %74 = load i32, ptr %73, align 8, !dbg !1732
  %75 = icmp ne i32 %74, 0, !dbg !1730
  br i1 %75, label %76, label %101, !dbg !1730

76:                                               ; preds = %58
  %77 = load i32, ptr %27, align 4, !dbg !1733
  %78 = sub i32 %77, 1, !dbg !1735
  %79 = load i32, ptr %21, align 4, !dbg !1736
  %80 = mul i32 %78, %79, !dbg !1737
  %81 = load ptr, ptr %16, align 8, !dbg !1738
  %82 = zext i32 %80 to i64, !dbg !1738
  %83 = getelementptr inbounds nuw i8, ptr %81, i64 %82, !dbg !1738
  store ptr %83, ptr %16, align 8, !dbg !1738
  %84 = load i32, ptr %27, align 4, !dbg !1739
  %85 = sub i32 %84, 1, !dbg !1740
  %86 = load ptr, ptr %17, align 8, !dbg !1741
  %87 = zext i32 %85 to i64, !dbg !1741
  %88 = getelementptr inbounds nuw i8, ptr %86, i64 %87, !dbg !1741
  store ptr %88, ptr %17, align 8, !dbg !1741
  store i32 -1, ptr %22, align 4, !dbg !1742
  %89 = load i32, ptr %21, align 4, !dbg !1743
  %90 = sub nsw i32 0, %89, !dbg !1744
  store i32 %90, ptr %23, align 4, !dbg !1745
  %91 = load ptr, ptr %9, align 8, !dbg !1746
  %92 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %91, i32 0, i32 8, !dbg !1747
  %93 = load i32, ptr %24, align 4, !dbg !1748
  %94 = sext i32 %93 to i64, !dbg !1746
  %95 = getelementptr inbounds [4 x ptr], ptr %92, i64 0, i64 %94, !dbg !1746
  %96 = load ptr, ptr %95, align 8, !dbg !1746
  %97 = load i32, ptr %27, align 4, !dbg !1749
  %98 = add i32 %97, 1, !dbg !1750
  %99 = zext i32 %98 to i64, !dbg !1751
  %100 = getelementptr inbounds nuw i16, ptr %96, i64 %99, !dbg !1751
  store ptr %100, ptr %15, align 8, !dbg !1752
  br label %109, !dbg !1753

101:                                              ; preds = %58
  store i32 1, ptr %22, align 4, !dbg !1754
  %102 = load i32, ptr %21, align 4, !dbg !1756
  store i32 %102, ptr %23, align 4, !dbg !1757
  %103 = load ptr, ptr %9, align 8, !dbg !1758
  %104 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %103, i32 0, i32 8, !dbg !1759
  %105 = load i32, ptr %24, align 4, !dbg !1760
  %106 = sext i32 %105 to i64, !dbg !1758
  %107 = getelementptr inbounds [4 x ptr], ptr %104, i64 0, i64 %106, !dbg !1758
  %108 = load ptr, ptr %107, align 8, !dbg !1758
  store ptr %108, ptr %15, align 8, !dbg !1761
  br label %109

109:                                              ; preds = %101, %76
  %110 = load ptr, ptr %9, align 8, !dbg !1762
  %111 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %110, i32 0, i32 3, !dbg !1763
  %112 = load ptr, ptr %111, align 8, !dbg !1763
  %113 = load i32, ptr %24, align 4, !dbg !1764
  %114 = sext i32 %113 to i64, !dbg !1762
  %115 = getelementptr inbounds ptr, ptr %112, i64 %114, !dbg !1762
  %116 = load ptr, ptr %115, align 8, !dbg !1762
  store ptr %116, ptr %18, align 8, !dbg !1765
  %117 = load ptr, ptr %9, align 8, !dbg !1766
  %118 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %117, i32 0, i32 1, !dbg !1767
  %119 = load ptr, ptr %118, align 8, !dbg !1767
  %120 = load i32, ptr %24, align 4, !dbg !1768
  %121 = sext i32 %120 to i64, !dbg !1766
  %122 = getelementptr inbounds ptr, ptr %119, i64 %121, !dbg !1766
  %123 = load ptr, ptr %122, align 8, !dbg !1766
  store ptr %123, ptr %19, align 8, !dbg !1769
  store i32 0, ptr %10, align 4, !dbg !1770
  store i32 0, ptr %12, align 4, !dbg !1771
  store i32 0, ptr %11, align 4, !dbg !1772
  %124 = load i32, ptr %27, align 4, !dbg !1773
  store i32 %124, ptr %26, align 4, !dbg !1775
  br label %125, !dbg !1776

125:                                              ; preds = %206, %109
  %126 = load i32, ptr %26, align 4, !dbg !1777
  %127 = icmp ugt i32 %126, 0, !dbg !1779
  br i1 %127, label %128, label %209, !dbg !1780

128:                                              ; preds = %125
  %129 = load i32, ptr %10, align 4, !dbg !1781
  %130 = load ptr, ptr %15, align 8, !dbg !1781
  %131 = load i32, ptr %22, align 4, !dbg !1781
  %132 = sext i32 %131 to i64, !dbg !1781
  %133 = getelementptr inbounds i16, ptr %130, i64 %132, !dbg !1781
  %134 = load i16, ptr %133, align 2, !dbg !1781
  %135 = sext i16 %134 to i32, !dbg !1781
  %136 = add nsw i32 %129, %135, !dbg !1781
  %137 = add nsw i32 %136, 8, !dbg !1781
  %138 = ashr i32 %137, 4, !dbg !1781
  store i32 %138, ptr %10, align 4, !dbg !1783
  %139 = load ptr, ptr %16, align 8, !dbg !1784
  %140 = load i8, ptr %139, align 1, !dbg !1784
  %141 = zext i8 %140 to i32, !dbg !1784
  %142 = load i32, ptr %10, align 4, !dbg !1785
  %143 = add nsw i32 %142, %141, !dbg !1785
  store i32 %143, ptr %10, align 4, !dbg !1785
  %144 = load ptr, ptr %28, align 8, !dbg !1786
  %145 = load i32, ptr %10, align 4, !dbg !1786
  %146 = sext i32 %145 to i64, !dbg !1786
  %147 = getelementptr inbounds i8, ptr %144, i64 %146, !dbg !1786
  %148 = load i8, ptr %147, align 1, !dbg !1786
  %149 = zext i8 %148 to i32, !dbg !1786
  store i32 %149, ptr %10, align 4, !dbg !1787
  %150 = load ptr, ptr %18, align 8, !dbg !1788
  %151 = load i32, ptr %10, align 4, !dbg !1788
  %152 = sext i32 %151 to i64, !dbg !1788
  %153 = getelementptr inbounds i8, ptr %150, i64 %152, !dbg !1788
  %154 = load i8, ptr %153, align 1, !dbg !1788
  %155 = zext i8 %154 to i32, !dbg !1788
  store i32 %155, ptr %20, align 4, !dbg !1789
  %156 = load i32, ptr %20, align 4, !dbg !1790
  %157 = trunc i32 %156 to i8, !dbg !1791
  %158 = zext i8 %157 to i32, !dbg !1791
  %159 = load ptr, ptr %17, align 8, !dbg !1792
  %160 = load i8, ptr %159, align 1, !dbg !1793
  %161 = zext i8 %160 to i32, !dbg !1793
  %162 = add nsw i32 %161, %158, !dbg !1793
  %163 = trunc i32 %162 to i8, !dbg !1793
  store i8 %163, ptr %159, align 1, !dbg !1793
  %164 = load ptr, ptr %19, align 8, !dbg !1794
  %165 = load i32, ptr %20, align 4, !dbg !1794
  %166 = sext i32 %165 to i64, !dbg !1794
  %167 = getelementptr inbounds i8, ptr %164, i64 %166, !dbg !1794
  %168 = load i8, ptr %167, align 1, !dbg !1794
  %169 = zext i8 %168 to i32, !dbg !1794
  %170 = load i32, ptr %10, align 4, !dbg !1795
  %171 = sub nsw i32 %170, %169, !dbg !1795
  store i32 %171, ptr %10, align 4, !dbg !1795
  %172 = load i32, ptr %10, align 4, !dbg !1796
  store i32 %172, ptr %13, align 4, !dbg !1797
  %173 = load i32, ptr %10, align 4, !dbg !1798
  %174 = mul nsw i32 %173, 2, !dbg !1799
  store i32 %174, ptr %14, align 4, !dbg !1800
  %175 = load i32, ptr %14, align 4, !dbg !1801
  %176 = load i32, ptr %10, align 4, !dbg !1802
  %177 = add nsw i32 %176, %175, !dbg !1802
  store i32 %177, ptr %10, align 4, !dbg !1802
  %178 = load i32, ptr %12, align 4, !dbg !1803
  %179 = load i32, ptr %10, align 4, !dbg !1804
  %180 = add nsw i32 %178, %179, !dbg !1805
  %181 = trunc i32 %180 to i16, !dbg !1806
  %182 = load ptr, ptr %15, align 8, !dbg !1807
  %183 = getelementptr inbounds i16, ptr %182, i64 0, !dbg !1807
  store i16 %181, ptr %183, align 2, !dbg !1808
  %184 = load i32, ptr %14, align 4, !dbg !1809
  %185 = load i32, ptr %10, align 4, !dbg !1810
  %186 = add nsw i32 %185, %184, !dbg !1810
  store i32 %186, ptr %10, align 4, !dbg !1810
  %187 = load i32, ptr %11, align 4, !dbg !1811
  %188 = load i32, ptr %10, align 4, !dbg !1812
  %189 = add nsw i32 %187, %188, !dbg !1813
  store i32 %189, ptr %12, align 4, !dbg !1814
  %190 = load i32, ptr %13, align 4, !dbg !1815
  store i32 %190, ptr %11, align 4, !dbg !1816
  %191 = load i32, ptr %14, align 4, !dbg !1817
  %192 = load i32, ptr %10, align 4, !dbg !1818
  %193 = add nsw i32 %192, %191, !dbg !1818
  store i32 %193, ptr %10, align 4, !dbg !1818
  %194 = load i32, ptr %23, align 4, !dbg !1819
  %195 = load ptr, ptr %16, align 8, !dbg !1820
  %196 = sext i32 %194 to i64, !dbg !1820
  %197 = getelementptr inbounds i8, ptr %195, i64 %196, !dbg !1820
  store ptr %197, ptr %16, align 8, !dbg !1820
  %198 = load i32, ptr %22, align 4, !dbg !1821
  %199 = load ptr, ptr %17, align 8, !dbg !1822
  %200 = sext i32 %198 to i64, !dbg !1822
  %201 = getelementptr inbounds i8, ptr %199, i64 %200, !dbg !1822
  store ptr %201, ptr %17, align 8, !dbg !1822
  %202 = load i32, ptr %22, align 4, !dbg !1823
  %203 = load ptr, ptr %15, align 8, !dbg !1824
  %204 = sext i32 %202 to i64, !dbg !1824
  %205 = getelementptr inbounds i16, ptr %203, i64 %204, !dbg !1824
  store ptr %205, ptr %15, align 8, !dbg !1824
  br label %206, !dbg !1825

206:                                              ; preds = %128
  %207 = load i32, ptr %26, align 4, !dbg !1826
  %208 = add i32 %207, -1, !dbg !1826
  store i32 %208, ptr %26, align 4, !dbg !1826
  br label %125, !dbg !1827, !llvm.loop !1828

209:                                              ; preds = %125
  %210 = load i32, ptr %12, align 4, !dbg !1830
  %211 = trunc i32 %210 to i16, !dbg !1831
  %212 = load ptr, ptr %15, align 8, !dbg !1832
  %213 = getelementptr inbounds i16, ptr %212, i64 0, !dbg !1832
  store i16 %211, ptr %213, align 2, !dbg !1833
  br label %214, !dbg !1834

214:                                              ; preds = %209
  %215 = load i32, ptr %24, align 4, !dbg !1835
  %216 = add nsw i32 %215, 1, !dbg !1835
  store i32 %216, ptr %24, align 4, !dbg !1835
  br label %54, !dbg !1836, !llvm.loop !1837

217:                                              ; preds = %54
  %218 = load ptr, ptr %9, align 8, !dbg !1839
  %219 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %218, i32 0, i32 9, !dbg !1840
  %220 = load i32, ptr %219, align 8, !dbg !1840
  %221 = icmp ne i32 %220, 0, !dbg !1839
  %222 = zext i1 %221 to i64, !dbg !1839
  %223 = select i1 %221, i32 0, i32 1, !dbg !1839
  %224 = load ptr, ptr %9, align 8, !dbg !1841
  %225 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %224, i32 0, i32 9, !dbg !1842
  store i32 %223, ptr %225, align 8, !dbg !1843
  br label %226, !dbg !1844

226:                                              ; preds = %217
  %227 = load i32, ptr %25, align 4, !dbg !1845
  %228 = add nsw i32 %227, 1, !dbg !1845
  store i32 %228, ptr %25, align 4, !dbg !1845
  br label %41, !dbg !1846, !llvm.loop !1847

229:                                              ; preds = %41
  ret void, !dbg !1849
}

declare void @jzero_far(ptr noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal ptr @make_odither_array(ptr noundef %0, i32 noundef %1) #0 !dbg !1850 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1853, !DIExpression(), !1854)
  store i32 %1, ptr %4, align 4
    #dbg_declare(ptr %4, !1855, !DIExpression(), !1856)
    #dbg_declare(ptr %5, !1857, !DIExpression(), !1858)
    #dbg_declare(ptr %6, !1859, !DIExpression(), !1860)
    #dbg_declare(ptr %7, !1861, !DIExpression(), !1862)
    #dbg_declare(ptr %8, !1863, !DIExpression(), !1864)
    #dbg_declare(ptr %9, !1865, !DIExpression(), !1866)
  %10 = load ptr, ptr %3, align 8, !dbg !1867
  %11 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %10, i32 0, i32 1, !dbg !1868
  %12 = load ptr, ptr %11, align 8, !dbg !1868
  %13 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %12, i32 0, i32 0, !dbg !1869
  %14 = load ptr, ptr %13, align 8, !dbg !1869
  %15 = load ptr, ptr %3, align 8, !dbg !1870
  %16 = call ptr %14(ptr noundef %15, i32 noundef 1, i64 noundef 1024), !dbg !1871
  store ptr %16, ptr %5, align 8, !dbg !1872
  %17 = load i32, ptr %4, align 4, !dbg !1873
  %18 = sub nsw i32 %17, 1, !dbg !1874
  %19 = sext i32 %18 to i64, !dbg !1875
  %20 = mul nsw i64 512, %19, !dbg !1876
  store i64 %20, ptr %9, align 8, !dbg !1877
  store i32 0, ptr %6, align 4, !dbg !1878
  br label %21, !dbg !1880

21:                                               ; preds = %67, %2
  %22 = load i32, ptr %6, align 4, !dbg !1881
  %23 = icmp slt i32 %22, 16, !dbg !1883
  br i1 %23, label %24, label %70, !dbg !1884

24:                                               ; preds = %21
  store i32 0, ptr %7, align 4, !dbg !1885
  br label %25, !dbg !1888

25:                                               ; preds = %63, %24
  %26 = load i32, ptr %7, align 4, !dbg !1889
  %27 = icmp slt i32 %26, 16, !dbg !1891
  br i1 %27, label %28, label %66, !dbg !1892

28:                                               ; preds = %25
  %29 = load i32, ptr %6, align 4, !dbg !1893
  %30 = sext i32 %29 to i64, !dbg !1895
  %31 = getelementptr inbounds [16 x [16 x i8]], ptr @base_dither_matrix, i64 0, i64 %30, !dbg !1895
  %32 = load i32, ptr %7, align 4, !dbg !1896
  %33 = sext i32 %32 to i64, !dbg !1895
  %34 = getelementptr inbounds [16 x i8], ptr %31, i64 0, i64 %33, !dbg !1895
  %35 = load i8, ptr %34, align 1, !dbg !1895
  %36 = zext i8 %35 to i32, !dbg !1897
  %37 = mul nsw i32 2, %36, !dbg !1898
  %38 = sub nsw i32 255, %37, !dbg !1899
  %39 = sext i32 %38 to i64, !dbg !1900
  %40 = mul nsw i64 %39, 255, !dbg !1901
  store i64 %40, ptr %8, align 8, !dbg !1902
  %41 = load i64, ptr %8, align 8, !dbg !1903
  %42 = icmp slt i64 %41, 0, !dbg !1904
  br i1 %42, label %43, label %49, !dbg !1903

43:                                               ; preds = %28
  %44 = load i64, ptr %8, align 8, !dbg !1905
  %45 = sub nsw i64 0, %44, !dbg !1906
  %46 = load i64, ptr %9, align 8, !dbg !1907
  %47 = sdiv i64 %45, %46, !dbg !1908
  %48 = sub nsw i64 0, %47, !dbg !1909
  br label %53, !dbg !1903

49:                                               ; preds = %28
  %50 = load i64, ptr %8, align 8, !dbg !1910
  %51 = load i64, ptr %9, align 8, !dbg !1911
  %52 = sdiv i64 %50, %51, !dbg !1912
  br label %53, !dbg !1903

53:                                               ; preds = %49, %43
  %54 = phi i64 [ %48, %43 ], [ %52, %49 ], !dbg !1903
  %55 = trunc i64 %54 to i32, !dbg !1913
  %56 = load ptr, ptr %5, align 8, !dbg !1914
  %57 = load i32, ptr %6, align 4, !dbg !1915
  %58 = sext i32 %57 to i64, !dbg !1914
  %59 = getelementptr inbounds [16 x i32], ptr %56, i64 %58, !dbg !1914
  %60 = load i32, ptr %7, align 4, !dbg !1916
  %61 = sext i32 %60 to i64, !dbg !1914
  %62 = getelementptr inbounds [16 x i32], ptr %59, i64 0, i64 %61, !dbg !1914
  store i32 %55, ptr %62, align 4, !dbg !1917
  br label %63, !dbg !1918

63:                                               ; preds = %53
  %64 = load i32, ptr %7, align 4, !dbg !1919
  %65 = add nsw i32 %64, 1, !dbg !1919
  store i32 %65, ptr %7, align 4, !dbg !1919
  br label %25, !dbg !1920, !llvm.loop !1921

66:                                               ; preds = %25
  br label %67, !dbg !1923

67:                                               ; preds = %66
  %68 = load i32, ptr %6, align 4, !dbg !1924
  %69 = add nsw i32 %68, 1, !dbg !1924
  store i32 %69, ptr %6, align 4, !dbg !1924
  br label %21, !dbg !1925, !llvm.loop !1926

70:                                               ; preds = %21
  %71 = load ptr, ptr %5, align 8, !dbg !1928
  ret ptr %71, !dbg !1929
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @select_ncolors(ptr noundef %0, ptr noundef %1) #0 !dbg !604 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1930, !DIExpression(), !1931)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !1932, !DIExpression(), !1933)
    #dbg_declare(ptr %5, !1934, !DIExpression(), !1935)
  %13 = load ptr, ptr %3, align 8, !dbg !1936
  %14 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %13, i32 0, i32 28, !dbg !1937
  %15 = load i32, ptr %14, align 8, !dbg !1937
  store i32 %15, ptr %5, align 4, !dbg !1935
    #dbg_declare(ptr %6, !1938, !DIExpression(), !1939)
  %16 = load ptr, ptr %3, align 8, !dbg !1940
  %17 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %16, i32 0, i32 22, !dbg !1941
  %18 = load i32, ptr %17, align 8, !dbg !1941
  store i32 %18, ptr %6, align 4, !dbg !1939
    #dbg_declare(ptr %7, !1942, !DIExpression(), !1943)
    #dbg_declare(ptr %8, !1944, !DIExpression(), !1945)
    #dbg_declare(ptr %9, !1946, !DIExpression(), !1947)
    #dbg_declare(ptr %10, !1948, !DIExpression(), !1949)
    #dbg_declare(ptr %11, !1950, !DIExpression(), !1951)
    #dbg_declare(ptr %12, !1952, !DIExpression(), !1953)
  store i32 1, ptr %8, align 4, !dbg !1954
  br label %19, !dbg !1955

19:                                               ; preds = %37, %2
  %20 = load i32, ptr %8, align 4, !dbg !1956
  %21 = add nsw i32 %20, 1, !dbg !1956
  store i32 %21, ptr %8, align 4, !dbg !1956
  %22 = load i32, ptr %8, align 4, !dbg !1958
  %23 = sext i32 %22 to i64, !dbg !1958
  store i64 %23, ptr %12, align 8, !dbg !1959
  store i32 1, ptr %9, align 4, !dbg !1960
  br label %24, !dbg !1962

24:                                               ; preds = %33, %19
  %25 = load i32, ptr %9, align 4, !dbg !1963
  %26 = load i32, ptr %5, align 4, !dbg !1965
  %27 = icmp slt i32 %25, %26, !dbg !1966
  br i1 %27, label %28, label %36, !dbg !1967

28:                                               ; preds = %24
  %29 = load i32, ptr %8, align 4, !dbg !1968
  %30 = sext i32 %29 to i64, !dbg !1968
  %31 = load i64, ptr %12, align 8, !dbg !1969
  %32 = mul nsw i64 %31, %30, !dbg !1969
  store i64 %32, ptr %12, align 8, !dbg !1969
  br label %33, !dbg !1970

33:                                               ; preds = %28
  %34 = load i32, ptr %9, align 4, !dbg !1971
  %35 = add nsw i32 %34, 1, !dbg !1971
  store i32 %35, ptr %9, align 4, !dbg !1971
  br label %24, !dbg !1972, !llvm.loop !1973

36:                                               ; preds = %24
  br label %37, !dbg !1975

37:                                               ; preds = %36
  %38 = load i64, ptr %12, align 8, !dbg !1976
  %39 = load i32, ptr %6, align 4, !dbg !1977
  %40 = sext i32 %39 to i64, !dbg !1978
  %41 = icmp sle i64 %38, %40, !dbg !1979
  br i1 %41, label %19, label %42, !dbg !1975, !llvm.loop !1980

42:                                               ; preds = %37
  %43 = load i32, ptr %8, align 4, !dbg !1982
  %44 = add nsw i32 %43, -1, !dbg !1982
  store i32 %44, ptr %8, align 4, !dbg !1982
  %45 = load i32, ptr %8, align 4, !dbg !1983
  %46 = icmp slt i32 %45, 2, !dbg !1985
  br i1 %46, label %47, label %65, !dbg !1985

47:                                               ; preds = %42
  %48 = load ptr, ptr %3, align 8, !dbg !1986
  %49 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %48, i32 0, i32 0, !dbg !1986
  %50 = load ptr, ptr %49, align 8, !dbg !1986
  %51 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %50, i32 0, i32 5, !dbg !1986
  store i32 55, ptr %51, align 8, !dbg !1986
  %52 = load i64, ptr %12, align 8, !dbg !1986
  %53 = trunc i64 %52 to i32, !dbg !1986
  %54 = load ptr, ptr %3, align 8, !dbg !1986
  %55 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %54, i32 0, i32 0, !dbg !1986
  %56 = load ptr, ptr %55, align 8, !dbg !1986
  %57 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %56, i32 0, i32 6, !dbg !1986
  %58 = getelementptr inbounds [8 x i32], ptr %57, i64 0, i64 0, !dbg !1986
  store i32 %53, ptr %58, align 4, !dbg !1986
  %59 = load ptr, ptr %3, align 8, !dbg !1986
  %60 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %59, i32 0, i32 0, !dbg !1986
  %61 = load ptr, ptr %60, align 8, !dbg !1986
  %62 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %61, i32 0, i32 0, !dbg !1986
  %63 = load ptr, ptr %62, align 8, !dbg !1986
  %64 = load ptr, ptr %3, align 8, !dbg !1986
  call void %63(ptr noundef %64), !dbg !1986
  br label %65, !dbg !1986

65:                                               ; preds = %47, %42
  store i32 1, ptr %7, align 4, !dbg !1987
  store i32 0, ptr %9, align 4, !dbg !1988
  br label %66, !dbg !1990

66:                                               ; preds = %79, %65
  %67 = load i32, ptr %9, align 4, !dbg !1991
  %68 = load i32, ptr %5, align 4, !dbg !1993
  %69 = icmp slt i32 %67, %68, !dbg !1994
  br i1 %69, label %70, label %82, !dbg !1995

70:                                               ; preds = %66
  %71 = load i32, ptr %8, align 4, !dbg !1996
  %72 = load ptr, ptr %4, align 8, !dbg !1998
  %73 = load i32, ptr %9, align 4, !dbg !1999
  %74 = sext i32 %73 to i64, !dbg !1998
  %75 = getelementptr inbounds i32, ptr %72, i64 %74, !dbg !1998
  store i32 %71, ptr %75, align 4, !dbg !2000
  %76 = load i32, ptr %8, align 4, !dbg !2001
  %77 = load i32, ptr %7, align 4, !dbg !2002
  %78 = mul nsw i32 %77, %76, !dbg !2002
  store i32 %78, ptr %7, align 4, !dbg !2002
  br label %79, !dbg !2003

79:                                               ; preds = %70
  %80 = load i32, ptr %9, align 4, !dbg !2004
  %81 = add nsw i32 %80, 1, !dbg !2004
  store i32 %81, ptr %9, align 4, !dbg !2004
  br label %66, !dbg !2005, !llvm.loop !2006

82:                                               ; preds = %66
  br label %83, !dbg !2008

83:                                               ; preds = %137, %82
  store i32 0, ptr %11, align 4, !dbg !2009
  store i32 0, ptr %9, align 4, !dbg !2011
  br label %84, !dbg !2013

84:                                               ; preds = %133, %83
  %85 = load i32, ptr %9, align 4, !dbg !2014
  %86 = load i32, ptr %5, align 4, !dbg !2016
  %87 = icmp slt i32 %85, %86, !dbg !2017
  br i1 %87, label %88, label %136, !dbg !2018

88:                                               ; preds = %84
  %89 = load ptr, ptr %3, align 8, !dbg !2019
  %90 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %89, i32 0, i32 10, !dbg !2021
  %91 = load i32, ptr %90, align 8, !dbg !2021
  %92 = icmp eq i32 %91, 2, !dbg !2022
  br i1 %92, label %93, label %98, !dbg !2019

93:                                               ; preds = %88
  %94 = load i32, ptr %9, align 4, !dbg !2023
  %95 = sext i32 %94 to i64, !dbg !2024
  %96 = getelementptr inbounds [3 x i32], ptr @select_ncolors.RGB_order, i64 0, i64 %95, !dbg !2024
  %97 = load i32, ptr %96, align 4, !dbg !2024
  br label %100, !dbg !2019

98:                                               ; preds = %88
  %99 = load i32, ptr %9, align 4, !dbg !2025
  br label %100, !dbg !2019

100:                                              ; preds = %98, %93
  %101 = phi i32 [ %97, %93 ], [ %99, %98 ], !dbg !2019
  store i32 %101, ptr %10, align 4, !dbg !2026
  %102 = load i32, ptr %7, align 4, !dbg !2027
  %103 = load ptr, ptr %4, align 8, !dbg !2028
  %104 = load i32, ptr %10, align 4, !dbg !2029
  %105 = sext i32 %104 to i64, !dbg !2028
  %106 = getelementptr inbounds i32, ptr %103, i64 %105, !dbg !2028
  %107 = load i32, ptr %106, align 4, !dbg !2028
  %108 = sdiv i32 %102, %107, !dbg !2030
  %109 = sext i32 %108 to i64, !dbg !2027
  store i64 %109, ptr %12, align 8, !dbg !2031
  %110 = load ptr, ptr %4, align 8, !dbg !2032
  %111 = load i32, ptr %10, align 4, !dbg !2033
  %112 = sext i32 %111 to i64, !dbg !2032
  %113 = getelementptr inbounds i32, ptr %110, i64 %112, !dbg !2032
  %114 = load i32, ptr %113, align 4, !dbg !2032
  %115 = add nsw i32 %114, 1, !dbg !2034
  %116 = sext i32 %115 to i64, !dbg !2032
  %117 = load i64, ptr %12, align 8, !dbg !2035
  %118 = mul nsw i64 %117, %116, !dbg !2035
  store i64 %118, ptr %12, align 8, !dbg !2035
  %119 = load i64, ptr %12, align 8, !dbg !2036
  %120 = load i32, ptr %6, align 4, !dbg !2038
  %121 = sext i32 %120 to i64, !dbg !2039
  %122 = icmp sgt i64 %119, %121, !dbg !2040
  br i1 %122, label %123, label %124, !dbg !2040

123:                                              ; preds = %100
  br label %136, !dbg !2041

124:                                              ; preds = %100
  %125 = load ptr, ptr %4, align 8, !dbg !2042
  %126 = load i32, ptr %10, align 4, !dbg !2043
  %127 = sext i32 %126 to i64, !dbg !2042
  %128 = getelementptr inbounds i32, ptr %125, i64 %127, !dbg !2042
  %129 = load i32, ptr %128, align 4, !dbg !2044
  %130 = add nsw i32 %129, 1, !dbg !2044
  store i32 %130, ptr %128, align 4, !dbg !2044
  %131 = load i64, ptr %12, align 8, !dbg !2045
  %132 = trunc i64 %131 to i32, !dbg !2046
  store i32 %132, ptr %7, align 4, !dbg !2047
  store i32 1, ptr %11, align 4, !dbg !2048
  br label %133, !dbg !2049

133:                                              ; preds = %124
  %134 = load i32, ptr %9, align 4, !dbg !2050
  %135 = add nsw i32 %134, 1, !dbg !2050
  store i32 %135, ptr %9, align 4, !dbg !2050
  br label %84, !dbg !2051, !llvm.loop !2052

136:                                              ; preds = %123, %84
  br label %137, !dbg !2054

137:                                              ; preds = %136
  %138 = load i32, ptr %11, align 4, !dbg !2055
  %139 = icmp ne i32 %138, 0, !dbg !2054
  br i1 %139, label %83, label %140, !dbg !2054, !llvm.loop !2056

140:                                              ; preds = %137
  %141 = load i32, ptr %7, align 4, !dbg !2058
  ret i32 %141, !dbg !2059
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @output_value(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 !dbg !2060 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !2063, !DIExpression(), !2064)
  store i32 %1, ptr %6, align 4
    #dbg_declare(ptr %6, !2065, !DIExpression(), !2066)
  store i32 %2, ptr %7, align 4
    #dbg_declare(ptr %7, !2067, !DIExpression(), !2068)
  store i32 %3, ptr %8, align 4
    #dbg_declare(ptr %8, !2069, !DIExpression(), !2070)
  %9 = load i32, ptr %7, align 4, !dbg !2071
  %10 = sext i32 %9 to i64, !dbg !2072
  %11 = mul nsw i64 %10, 255, !dbg !2073
  %12 = load i32, ptr %8, align 4, !dbg !2074
  %13 = sdiv i32 %12, 2, !dbg !2075
  %14 = sext i32 %13 to i64, !dbg !2074
  %15 = add nsw i64 %11, %14, !dbg !2076
  %16 = load i32, ptr %8, align 4, !dbg !2077
  %17 = sext i32 %16 to i64, !dbg !2077
  %18 = sdiv i64 %15, %17, !dbg !2078
  %19 = trunc i64 %18 to i32, !dbg !2079
  ret i32 %19, !dbg !2080
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @largest_input_value(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 !dbg !2081 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !2082, !DIExpression(), !2083)
  store i32 %1, ptr %6, align 4
    #dbg_declare(ptr %6, !2084, !DIExpression(), !2085)
  store i32 %2, ptr %7, align 4
    #dbg_declare(ptr %7, !2086, !DIExpression(), !2087)
  store i32 %3, ptr %8, align 4
    #dbg_declare(ptr %8, !2088, !DIExpression(), !2089)
  %9 = load i32, ptr %7, align 4, !dbg !2090
  %10 = mul nsw i32 2, %9, !dbg !2091
  %11 = add nsw i32 %10, 1, !dbg !2092
  %12 = sext i32 %11 to i64, !dbg !2093
  %13 = mul nsw i64 %12, 255, !dbg !2094
  %14 = load i32, ptr %8, align 4, !dbg !2095
  %15 = sext i32 %14 to i64, !dbg !2095
  %16 = add nsw i64 %13, %15, !dbg !2096
  %17 = load i32, ptr %8, align 4, !dbg !2097
  %18 = mul nsw i32 2, %17, !dbg !2098
  %19 = sext i32 %18 to i64, !dbg !2099
  %20 = sdiv i64 %16, %19, !dbg !2100
  %21 = trunc i64 %20 to i32, !dbg !2101
  ret i32 %21, !dbg !2102
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!616, !617, !618, !619, !620, !621, !622}
!llvm.ident = !{!623}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "base_dither_matrix", scope: !2, file: !3, line: 79, type: !613, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !156, globals: !601, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jquant1.c", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "00c6590973efe2514d5d67526ac14fe1")
!4 = !{!5, !15, !20, !25, !32}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 194, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jpeglib.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "2a2b23235fe587b10147d741e3371e67")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14}
!9 = !DIEnumerator(name: "JCS_UNKNOWN", value: 0)
!10 = !DIEnumerator(name: "JCS_GRAYSCALE", value: 1)
!11 = !DIEnumerator(name: "JCS_RGB", value: 2)
!12 = !DIEnumerator(name: "JCS_YCbCr", value: 3)
!13 = !DIEnumerator(name: "JCS_CMYK", value: 4)
!14 = !DIEnumerator(name: "JCS_YCCK", value: 5)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 205, baseType: !7, size: 32, elements: !16)
!16 = !{!17, !18, !19}
!17 = !DIEnumerator(name: "JDCT_ISLOW", value: 0)
!18 = !DIEnumerator(name: "JDCT_IFAST", value: 1)
!19 = !DIEnumerator(name: "JDCT_FLOAT", value: 2)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 220, baseType: !7, size: 32, elements: !21)
!21 = !{!22, !23, !24}
!22 = !DIEnumerator(name: "JDITHER_NONE", value: 0)
!23 = !DIEnumerator(name: "JDITHER_ORDERED", value: 1)
!24 = !DIEnumerator(name: "JDITHER_FS", value: 2)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !26, line: 16, baseType: !7, size: 32, elements: !27)
!26 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jpegint.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "87e9869e13f29b8e74a9dee50528c6c5")
!27 = !{!28, !29, !30, !31}
!28 = !DIEnumerator(name: "JBUF_PASS_THRU", value: 0)
!29 = !DIEnumerator(name: "JBUF_SAVE_SOURCE", value: 1)
!30 = !DIEnumerator(name: "JBUF_CRANK_DEST", value: 2)
!31 = !DIEnumerator(name: "JBUF_SAVE_AND_PASS", value: 3)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !33, line: 33, baseType: !7, size: 32, elements: !34)
!33 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jerror.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "a232f2460ff0049c960896e323d8710b")
!34 = !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155}
!35 = !DIEnumerator(name: "JMSG_NOMESSAGE", value: 0)
!36 = !DIEnumerator(name: "JERR_ARITH_NOTIMPL", value: 1)
!37 = !DIEnumerator(name: "JERR_BAD_ALIGN_TYPE", value: 2)
!38 = !DIEnumerator(name: "JERR_BAD_ALLOC_CHUNK", value: 3)
!39 = !DIEnumerator(name: "JERR_BAD_BUFFER_MODE", value: 4)
!40 = !DIEnumerator(name: "JERR_BAD_COMPONENT_ID", value: 5)
!41 = !DIEnumerator(name: "JERR_BAD_DCTSIZE", value: 6)
!42 = !DIEnumerator(name: "JERR_BAD_IN_COLORSPACE", value: 7)
!43 = !DIEnumerator(name: "JERR_BAD_J_COLORSPACE", value: 8)
!44 = !DIEnumerator(name: "JERR_BAD_LENGTH", value: 9)
!45 = !DIEnumerator(name: "JERR_BAD_LIB_VERSION", value: 10)
!46 = !DIEnumerator(name: "JERR_BAD_MCU_SIZE", value: 11)
!47 = !DIEnumerator(name: "JERR_BAD_POOL_ID", value: 12)
!48 = !DIEnumerator(name: "JERR_BAD_PRECISION", value: 13)
!49 = !DIEnumerator(name: "JERR_BAD_PROGRESSION", value: 14)
!50 = !DIEnumerator(name: "JERR_BAD_PROG_SCRIPT", value: 15)
!51 = !DIEnumerator(name: "JERR_BAD_SAMPLING", value: 16)
!52 = !DIEnumerator(name: "JERR_BAD_SCAN_SCRIPT", value: 17)
!53 = !DIEnumerator(name: "JERR_BAD_STATE", value: 18)
!54 = !DIEnumerator(name: "JERR_BAD_STRUCT_SIZE", value: 19)
!55 = !DIEnumerator(name: "JERR_BAD_VIRTUAL_ACCESS", value: 20)
!56 = !DIEnumerator(name: "JERR_BUFFER_SIZE", value: 21)
!57 = !DIEnumerator(name: "JERR_CANT_SUSPEND", value: 22)
!58 = !DIEnumerator(name: "JERR_CCIR601_NOTIMPL", value: 23)
!59 = !DIEnumerator(name: "JERR_COMPONENT_COUNT", value: 24)
!60 = !DIEnumerator(name: "JERR_CONVERSION_NOTIMPL", value: 25)
!61 = !DIEnumerator(name: "JERR_DAC_INDEX", value: 26)
!62 = !DIEnumerator(name: "JERR_DAC_VALUE", value: 27)
!63 = !DIEnumerator(name: "JERR_DHT_COUNTS", value: 28)
!64 = !DIEnumerator(name: "JERR_DHT_INDEX", value: 29)
!65 = !DIEnumerator(name: "JERR_DQT_INDEX", value: 30)
!66 = !DIEnumerator(name: "JERR_EMPTY_IMAGE", value: 31)
!67 = !DIEnumerator(name: "JERR_EMS_READ", value: 32)
!68 = !DIEnumerator(name: "JERR_EMS_WRITE", value: 33)
!69 = !DIEnumerator(name: "JERR_EOI_EXPECTED", value: 34)
!70 = !DIEnumerator(name: "JERR_FILE_READ", value: 35)
!71 = !DIEnumerator(name: "JERR_FILE_WRITE", value: 36)
!72 = !DIEnumerator(name: "JERR_FRACT_SAMPLE_NOTIMPL", value: 37)
!73 = !DIEnumerator(name: "JERR_HUFF_CLEN_OVERFLOW", value: 38)
!74 = !DIEnumerator(name: "JERR_HUFF_MISSING_CODE", value: 39)
!75 = !DIEnumerator(name: "JERR_IMAGE_TOO_BIG", value: 40)
!76 = !DIEnumerator(name: "JERR_INPUT_EMPTY", value: 41)
!77 = !DIEnumerator(name: "JERR_INPUT_EOF", value: 42)
!78 = !DIEnumerator(name: "JERR_MISMATCHED_QUANT_TABLE", value: 43)
!79 = !DIEnumerator(name: "JERR_MISSING_DATA", value: 44)
!80 = !DIEnumerator(name: "JERR_MODE_CHANGE", value: 45)
!81 = !DIEnumerator(name: "JERR_NOTIMPL", value: 46)
!82 = !DIEnumerator(name: "JERR_NOT_COMPILED", value: 47)
!83 = !DIEnumerator(name: "JERR_NO_BACKING_STORE", value: 48)
!84 = !DIEnumerator(name: "JERR_NO_HUFF_TABLE", value: 49)
!85 = !DIEnumerator(name: "JERR_NO_IMAGE", value: 50)
!86 = !DIEnumerator(name: "JERR_NO_QUANT_TABLE", value: 51)
!87 = !DIEnumerator(name: "JERR_NO_SOI", value: 52)
!88 = !DIEnumerator(name: "JERR_OUT_OF_MEMORY", value: 53)
!89 = !DIEnumerator(name: "JERR_QUANT_COMPONENTS", value: 54)
!90 = !DIEnumerator(name: "JERR_QUANT_FEW_COLORS", value: 55)
!91 = !DIEnumerator(name: "JERR_QUANT_MANY_COLORS", value: 56)
!92 = !DIEnumerator(name: "JERR_SOF_DUPLICATE", value: 57)
!93 = !DIEnumerator(name: "JERR_SOF_NO_SOS", value: 58)
!94 = !DIEnumerator(name: "JERR_SOF_UNSUPPORTED", value: 59)
!95 = !DIEnumerator(name: "JERR_SOI_DUPLICATE", value: 60)
!96 = !DIEnumerator(name: "JERR_SOS_NO_SOF", value: 61)
!97 = !DIEnumerator(name: "JERR_TFILE_CREATE", value: 62)
!98 = !DIEnumerator(name: "JERR_TFILE_READ", value: 63)
!99 = !DIEnumerator(name: "JERR_TFILE_SEEK", value: 64)
!100 = !DIEnumerator(name: "JERR_TFILE_WRITE", value: 65)
!101 = !DIEnumerator(name: "JERR_TOO_LITTLE_DATA", value: 66)
!102 = !DIEnumerator(name: "JERR_UNKNOWN_MARKER", value: 67)
!103 = !DIEnumerator(name: "JERR_VIRTUAL_BUG", value: 68)
!104 = !DIEnumerator(name: "JERR_WIDTH_OVERFLOW", value: 69)
!105 = !DIEnumerator(name: "JERR_XMS_READ", value: 70)
!106 = !DIEnumerator(name: "JERR_XMS_WRITE", value: 71)
!107 = !DIEnumerator(name: "JMSG_COPYRIGHT", value: 72)
!108 = !DIEnumerator(name: "JMSG_VERSION", value: 73)
!109 = !DIEnumerator(name: "JTRC_16BIT_TABLES", value: 74)
!110 = !DIEnumerator(name: "JTRC_ADOBE", value: 75)
!111 = !DIEnumerator(name: "JTRC_APP0", value: 76)
!112 = !DIEnumerator(name: "JTRC_APP14", value: 77)
!113 = !DIEnumerator(name: "JTRC_DAC", value: 78)
!114 = !DIEnumerator(name: "JTRC_DHT", value: 79)
!115 = !DIEnumerator(name: "JTRC_DQT", value: 80)
!116 = !DIEnumerator(name: "JTRC_DRI", value: 81)
!117 = !DIEnumerator(name: "JTRC_EMS_CLOSE", value: 82)
!118 = !DIEnumerator(name: "JTRC_EMS_OPEN", value: 83)
!119 = !DIEnumerator(name: "JTRC_EOI", value: 84)
!120 = !DIEnumerator(name: "JTRC_HUFFBITS", value: 85)
!121 = !DIEnumerator(name: "JTRC_JFIF", value: 86)
!122 = !DIEnumerator(name: "JTRC_JFIF_BADTHUMBNAILSIZE", value: 87)
!123 = !DIEnumerator(name: "JTRC_JFIF_MINOR", value: 88)
!124 = !DIEnumerator(name: "JTRC_JFIF_THUMBNAIL", value: 89)
!125 = !DIEnumerator(name: "JTRC_MISC_MARKER", value: 90)
!126 = !DIEnumerator(name: "JTRC_PARMLESS_MARKER", value: 91)
!127 = !DIEnumerator(name: "JTRC_QUANTVALS", value: 92)
!128 = !DIEnumerator(name: "JTRC_QUANT_3_NCOLORS", value: 93)
!129 = !DIEnumerator(name: "JTRC_QUANT_NCOLORS", value: 94)
!130 = !DIEnumerator(name: "JTRC_QUANT_SELECTED", value: 95)
!131 = !DIEnumerator(name: "JTRC_RECOVERY_ACTION", value: 96)
!132 = !DIEnumerator(name: "JTRC_RST", value: 97)
!133 = !DIEnumerator(name: "JTRC_SMOOTH_NOTIMPL", value: 98)
!134 = !DIEnumerator(name: "JTRC_SOF", value: 99)
!135 = !DIEnumerator(name: "JTRC_SOF_COMPONENT", value: 100)
!136 = !DIEnumerator(name: "JTRC_SOI", value: 101)
!137 = !DIEnumerator(name: "JTRC_SOS", value: 102)
!138 = !DIEnumerator(name: "JTRC_SOS_COMPONENT", value: 103)
!139 = !DIEnumerator(name: "JTRC_SOS_PARAMS", value: 104)
!140 = !DIEnumerator(name: "JTRC_TFILE_CLOSE", value: 105)
!141 = !DIEnumerator(name: "JTRC_TFILE_OPEN", value: 106)
!142 = !DIEnumerator(name: "JTRC_UNKNOWN_IDS", value: 107)
!143 = !DIEnumerator(name: "JTRC_XMS_CLOSE", value: 108)
!144 = !DIEnumerator(name: "JTRC_XMS_OPEN", value: 109)
!145 = !DIEnumerator(name: "JWRN_ADOBE_XFORM", value: 110)
!146 = !DIEnumerator(name: "JWRN_BOGUS_PROGRESSION", value: 111)
!147 = !DIEnumerator(name: "JWRN_EXTRANEOUS_DATA", value: 112)
!148 = !DIEnumerator(name: "JWRN_HIT_MARKER", value: 113)
!149 = !DIEnumerator(name: "JWRN_HUFF_BAD_CODE", value: 114)
!150 = !DIEnumerator(name: "JWRN_JFIF_MAJOR", value: 115)
!151 = !DIEnumerator(name: "JWRN_JPEG_EOF", value: 116)
!152 = !DIEnumerator(name: "JWRN_MUST_RESYNC", value: 117)
!153 = !DIEnumerator(name: "JWRN_NOT_SEQUENTIAL", value: 118)
!154 = !DIEnumerator(name: "JWRN_TOO_MUCH_DATA", value: 119)
!155 = !DIEnumerator(name: "JMSG_LASTMSGCODE", value: 120)
!156 = !{!157, !181, !196, !574, !194, !195, !208, !590, !600, !597, !211, !256, !595}
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "my_cquantize_ptr", file: !3, line: 167, baseType: !158)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "my_cquantizer", file: !3, line: 165, baseType: !160)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 142, size: 1216, elements: !161)
!161 = !{!162, !581, !582, !583, !584, !585, !587, !588, !593, !599}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "pub", scope: !160, file: !3, line: 143, baseType: !163, size: 256)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_color_quantizer", file: !26, line: 252, size: 256, elements: !164)
!164 = !{!165, !575, !579, !580}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !163, file: !26, line: 253, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DISubroutineType(types: !168)
!168 = !{null, !169, !233}
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_decompress_ptr", file: !6, line: 250, baseType: !170)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_decompress_struct", file: !6, line: 394, size: 4928, elements: !172)
!172 = !{!173, !300, !301, !302, !303, !304, !330, !331, !332, !333, !335, !336, !337, !338, !340, !341, !342, !344, !345, !346, !347, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !369, !382, !398, !399, !400, !426, !427, !428, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !450, !451, !452, !453, !457, !458, !459, !460, !461, !462, !469, !483, !501, !510, !520, !535, !544, !557, !564, !573}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !171, file: !6, line: 395, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_error_mgr", file: !6, line: 618, size: 1344, elements: !176)
!176 = !{!177, !268, !269, !270, !276, !277, !278, !289, !290, !291, !296, !297, !298, !299}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "error_exit", scope: !175, file: !6, line: 620, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DISubroutineType(types: !180)
!180 = !{null, !181}
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_common_ptr", file: !6, line: 248, baseType: !182)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_common_struct", file: !6, line: 240, size: 256, elements: !184)
!184 = !{!185, !186, !257, !266, !267}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !183, file: !6, line: 241, baseType: !174, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !183, file: !6, line: 241, baseType: !187, size: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_memory_mgr", file: !6, line: 731, size: 768, elements: !189)
!189 = !{!190, !199, !200, !212, !226, !234, !241, !242, !246, !250, !254, !255}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_small", scope: !188, file: !6, line: 733, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DISubroutineType(types: !193)
!193 = !{!194, !181, !195, !196}
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!195 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !197, line: 18, baseType: !198)
!197 = !DIFile(filename: "/usr/local/lib/clang/20/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!198 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_large", scope: !188, file: !6, line: 735, baseType: !191, size: 64, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_sarray", scope: !188, file: !6, line: 737, baseType: !201, size: 64, offset: 128)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{!204, !181, !195, !211, !211}
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPARRAY", file: !6, line: 67, baseType: !205)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPROW", file: !6, line: 66, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPLE", file: !209, line: 59, baseType: !210)
!209 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jmorecfg.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "56a0eda58fafa6bdd5498f702a998c09")
!210 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "JDIMENSION", file: !209, line: 171, baseType: !7)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_barray", scope: !188, file: !6, line: 740, baseType: !213, size: 64, offset: 192)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{!216, !181, !195, !211, !211}
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCKARRAY", file: !6, line: 72, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCKROW", file: !6, line: 71, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCK", file: !6, line: 70, baseType: !221)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 1024, elements: !224)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "JCOEF", file: !209, line: 99, baseType: !223)
!223 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!224 = !{!225}
!225 = !DISubrange(count: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_sarray", scope: !188, file: !6, line: 743, baseType: !227, size: 64, offset: 256)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DISubroutineType(types: !229)
!229 = !{!230, !181, !195, !233, !211, !211, !211}
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_sarray_ptr", file: !6, line: 727, baseType: !231)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_sarray_control", file: !6, line: 727, flags: DIFlagFwdDecl)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "boolean", file: !209, line: 227, baseType: !195)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_barray", scope: !188, file: !6, line: 749, baseType: !235, size: 64, offset: 320)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DISubroutineType(types: !237)
!237 = !{!238, !181, !195, !233, !211, !211, !211}
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_barray_ptr", file: !6, line: 728, baseType: !239)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_barray_control", file: !6, line: 728, flags: DIFlagFwdDecl)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "realize_virt_arrays", scope: !188, file: !6, line: 755, baseType: !178, size: 64, offset: 384)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_sarray", scope: !188, file: !6, line: 756, baseType: !243, size: 64, offset: 448)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DISubroutineType(types: !245)
!245 = !{!204, !181, !230, !211, !211, !233}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_barray", scope: !188, file: !6, line: 761, baseType: !247, size: 64, offset: 512)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DISubroutineType(types: !249)
!249 = !{!216, !181, !238, !211, !211, !233}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "free_pool", scope: !188, file: !6, line: 766, baseType: !251, size: 64, offset: 576)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DISubroutineType(types: !253)
!253 = !{null, !181, !195}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "self_destruct", scope: !188, file: !6, line: 767, baseType: !178, size: 64, offset: 640)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "max_memory_to_use", scope: !188, file: !6, line: 774, baseType: !256, size: 64, offset: 704)
!256 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !183, file: !6, line: 241, baseType: !258, size: 64, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_progress_mgr", file: !6, line: 676, size: 256, elements: !260)
!260 = !{!261, !262, !263, !264, !265}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !259, file: !6, line: 677, baseType: !178, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "pass_counter", scope: !259, file: !6, line: 679, baseType: !256, size: 64, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "pass_limit", scope: !259, file: !6, line: 680, baseType: !256, size: 64, offset: 128)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "completed_passes", scope: !259, file: !6, line: 681, baseType: !195, size: 32, offset: 192)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "total_passes", scope: !259, file: !6, line: 682, baseType: !195, size: 32, offset: 224)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !183, file: !6, line: 241, baseType: !233, size: 32, offset: 192)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !183, file: !6, line: 241, baseType: !195, size: 32, offset: 224)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "emit_message", scope: !175, file: !6, line: 622, baseType: !251, size: 64, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "output_message", scope: !175, file: !6, line: 624, baseType: !178, size: 64, offset: 128)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "format_message", scope: !175, file: !6, line: 626, baseType: !271, size: 64, offset: 192)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{null, !181, !274}
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "reset_error_mgr", scope: !175, file: !6, line: 629, baseType: !178, size: 64, offset: 256)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "msg_code", scope: !175, file: !6, line: 634, baseType: !195, size: 32, offset: 320)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "msg_parm", scope: !175, file: !6, line: 639, baseType: !279, size: 640, offset: 352)
!279 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !175, file: !6, line: 636, size: 640, elements: !280)
!280 = !{!281, !285}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !279, file: !6, line: 637, baseType: !282, size: 256)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 256, elements: !283)
!283 = !{!284}
!284 = !DISubrange(count: 8)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !279, file: !6, line: 638, baseType: !286, size: 640)
!286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 640, elements: !287)
!287 = !{!288}
!288 = !DISubrange(count: 80)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "trace_level", scope: !175, file: !6, line: 643, baseType: !195, size: 32, offset: 992)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "num_warnings", scope: !175, file: !6, line: 651, baseType: !256, size: 64, offset: 1024)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_message_table", scope: !175, file: !6, line: 663, baseType: !292, size: 64, offset: 1088)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !294)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !275)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "last_jpeg_message", scope: !175, file: !6, line: 664, baseType: !195, size: 32, offset: 1152)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "addon_message_table", scope: !175, file: !6, line: 668, baseType: !292, size: 64, offset: 1216)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "first_addon_message", scope: !175, file: !6, line: 669, baseType: !195, size: 32, offset: 1280)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "last_addon_message", scope: !175, file: !6, line: 670, baseType: !195, size: 32, offset: 1312)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !171, file: !6, line: 395, baseType: !187, size: 64, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !171, file: !6, line: 395, baseType: !258, size: 64, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !171, file: !6, line: 395, baseType: !233, size: 32, offset: 192)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !171, file: !6, line: 395, baseType: !195, size: 32, offset: 224)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !171, file: !6, line: 398, baseType: !305, size: 64, offset: 256)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_source_mgr", file: !6, line: 700, size: 448, elements: !307)
!307 = !{!308, !312, !313, !317, !321, !325, !329}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "next_input_byte", scope: !306, file: !6, line: 701, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "JOCTET", file: !209, line: 110, baseType: !210)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_in_buffer", scope: !306, file: !6, line: 702, baseType: !196, size: 64, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "init_source", scope: !306, file: !6, line: 704, baseType: !314, size: 64, offset: 128)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DISubroutineType(types: !316)
!316 = !{null, !169}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "fill_input_buffer", scope: !306, file: !6, line: 705, baseType: !318, size: 64, offset: 192)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DISubroutineType(types: !320)
!320 = !{!233, !169}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "skip_input_data", scope: !306, file: !6, line: 706, baseType: !322, size: 64, offset: 256)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{null, !169, !256}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "resync_to_restart", scope: !306, file: !6, line: 707, baseType: !326, size: 64, offset: 320)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DISubroutineType(types: !328)
!328 = !{!233, !169, !195}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "term_source", scope: !306, file: !6, line: 708, baseType: !314, size: 64, offset: 384)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "image_width", scope: !171, file: !6, line: 403, baseType: !211, size: 32, offset: 320)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "image_height", scope: !171, file: !6, line: 404, baseType: !211, size: 32, offset: 352)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "num_components", scope: !171, file: !6, line: 405, baseType: !195, size: 32, offset: 384)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_color_space", scope: !171, file: !6, line: 406, baseType: !334, size: 32, offset: 416)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_COLOR_SPACE", file: !6, line: 201, baseType: !5)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "out_color_space", scope: !171, file: !6, line: 413, baseType: !334, size: 32, offset: 448)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "scale_num", scope: !171, file: !6, line: 415, baseType: !7, size: 32, offset: 480)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "scale_denom", scope: !171, file: !6, line: 415, baseType: !7, size: 32, offset: 512)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "output_gamma", scope: !171, file: !6, line: 417, baseType: !339, size: 64, offset: 576)
!339 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "buffered_image", scope: !171, file: !6, line: 419, baseType: !233, size: 32, offset: 640)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "raw_data_out", scope: !171, file: !6, line: 420, baseType: !233, size: 32, offset: 672)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "dct_method", scope: !171, file: !6, line: 422, baseType: !343, size: 32, offset: 704)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_DCT_METHOD", file: !6, line: 209, baseType: !15)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "do_fancy_upsampling", scope: !171, file: !6, line: 423, baseType: !233, size: 32, offset: 736)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "do_block_smoothing", scope: !171, file: !6, line: 424, baseType: !233, size: 32, offset: 768)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "quantize_colors", scope: !171, file: !6, line: 426, baseType: !233, size: 32, offset: 800)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "dither_mode", scope: !171, file: !6, line: 428, baseType: !348, size: 32, offset: 832)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_DITHER_MODE", file: !6, line: 224, baseType: !20)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "two_pass_quantize", scope: !171, file: !6, line: 429, baseType: !233, size: 32, offset: 864)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "desired_number_of_colors", scope: !171, file: !6, line: 430, baseType: !195, size: 32, offset: 896)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "enable_1pass_quant", scope: !171, file: !6, line: 432, baseType: !233, size: 32, offset: 928)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "enable_external_quant", scope: !171, file: !6, line: 433, baseType: !233, size: 32, offset: 960)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "enable_2pass_quant", scope: !171, file: !6, line: 434, baseType: !233, size: 32, offset: 992)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "output_width", scope: !171, file: !6, line: 442, baseType: !211, size: 32, offset: 1024)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "output_height", scope: !171, file: !6, line: 443, baseType: !211, size: 32, offset: 1056)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "out_color_components", scope: !171, file: !6, line: 444, baseType: !195, size: 32, offset: 1088)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "output_components", scope: !171, file: !6, line: 445, baseType: !195, size: 32, offset: 1120)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "rec_outbuf_height", scope: !171, file: !6, line: 449, baseType: !195, size: 32, offset: 1152)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "actual_number_of_colors", scope: !171, file: !6, line: 461, baseType: !195, size: 32, offset: 1184)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !171, file: !6, line: 462, baseType: !204, size: 64, offset: 1216)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "output_scanline", scope: !171, file: !6, line: 472, baseType: !211, size: 32, offset: 1280)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "input_scan_number", scope: !171, file: !6, line: 477, baseType: !195, size: 32, offset: 1312)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "input_iMCU_row", scope: !171, file: !6, line: 478, baseType: !211, size: 32, offset: 1344)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "output_scan_number", scope: !171, file: !6, line: 484, baseType: !195, size: 32, offset: 1376)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "output_iMCU_row", scope: !171, file: !6, line: 485, baseType: !211, size: 32, offset: 1408)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "coef_bits", scope: !171, file: !6, line: 494, baseType: !367, size: 64, offset: 1472)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 2048, elements: !224)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_ptrs", scope: !171, file: !6, line: 505, baseType: !370, size: 256, offset: 1536)
!370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 256, elements: !380)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "JQUANT_TBL", file: !6, line: 95, baseType: !373)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 83, size: 1056, elements: !374)
!374 = !{!375, !379}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "quantval", scope: !373, file: !6, line: 88, baseType: !376, size: 1024)
!376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !377, size: 1024, elements: !224)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !209, line: 147, baseType: !378)
!378 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !373, file: !6, line: 94, baseType: !233, size: 32, offset: 1024)
!380 = !{!381}
!381 = !DISubrange(count: 4)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "dc_huff_tbl_ptrs", scope: !171, file: !6, line: 508, baseType: !383, size: 256, offset: 1792)
!383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 256, elements: !380)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "JHUFF_TBL", file: !6, line: 111, baseType: !386)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 100, size: 2240, elements: !387)
!387 = !{!388, !393, !397}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !386, file: !6, line: 102, baseType: !389, size: 136)
!389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 136, elements: !391)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT8", file: !209, line: 135, baseType: !210)
!391 = !{!392}
!392 = !DISubrange(count: 17)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "huffval", scope: !386, file: !6, line: 104, baseType: !394, size: 2048, offset: 136)
!394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 2048, elements: !395)
!395 = !{!396}
!396 = !DISubrange(count: 256)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !386, file: !6, line: 110, baseType: !233, size: 32, offset: 2208)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "ac_huff_tbl_ptrs", scope: !171, file: !6, line: 509, baseType: !383, size: 256, offset: 2048)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "data_precision", scope: !171, file: !6, line: 516, baseType: !195, size: 32, offset: 2304)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "comp_info", scope: !171, file: !6, line: 518, baseType: !401, size: 64, offset: 2368)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_component_info", file: !6, line: 179, baseType: !403)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 116, size: 768, elements: !404)
!404 = !{!405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "component_id", scope: !403, file: !6, line: 120, baseType: !195, size: 32)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "component_index", scope: !403, file: !6, line: 121, baseType: !195, size: 32, offset: 32)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "h_samp_factor", scope: !403, file: !6, line: 122, baseType: !195, size: 32, offset: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "v_samp_factor", scope: !403, file: !6, line: 123, baseType: !195, size: 32, offset: 96)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_no", scope: !403, file: !6, line: 124, baseType: !195, size: 32, offset: 128)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "dc_tbl_no", scope: !403, file: !6, line: 129, baseType: !195, size: 32, offset: 160)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tbl_no", scope: !403, file: !6, line: 130, baseType: !195, size: 32, offset: 192)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "width_in_blocks", scope: !403, file: !6, line: 139, baseType: !211, size: 32, offset: 224)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "height_in_blocks", scope: !403, file: !6, line: 140, baseType: !211, size: 32, offset: 256)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "DCT_scaled_size", scope: !403, file: !6, line: 147, baseType: !195, size: 32, offset: 288)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_width", scope: !403, file: !6, line: 154, baseType: !211, size: 32, offset: 320)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_height", scope: !403, file: !6, line: 155, baseType: !211, size: 32, offset: 352)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "component_needed", scope: !403, file: !6, line: 160, baseType: !233, size: 32, offset: 384)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_width", scope: !403, file: !6, line: 164, baseType: !195, size: 32, offset: 416)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_height", scope: !403, file: !6, line: 165, baseType: !195, size: 32, offset: 448)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_blocks", scope: !403, file: !6, line: 166, baseType: !195, size: 32, offset: 480)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_sample_width", scope: !403, file: !6, line: 167, baseType: !195, size: 32, offset: 512)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "last_col_width", scope: !403, file: !6, line: 168, baseType: !195, size: 32, offset: 544)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "last_row_height", scope: !403, file: !6, line: 169, baseType: !195, size: 32, offset: 576)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "quant_table", scope: !403, file: !6, line: 175, baseType: !371, size: 64, offset: 640)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "dct_table", scope: !403, file: !6, line: 178, baseType: !194, size: 64, offset: 704)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "progressive_mode", scope: !171, file: !6, line: 521, baseType: !233, size: 32, offset: 2432)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "arith_code", scope: !171, file: !6, line: 522, baseType: !233, size: 32, offset: 2464)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_L", scope: !171, file: !6, line: 524, baseType: !429, size: 128, offset: 2496)
!429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 128, elements: !430)
!430 = !{!431}
!431 = !DISubrange(count: 16)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_U", scope: !171, file: !6, line: 525, baseType: !429, size: 128, offset: 2624)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "arith_ac_K", scope: !171, file: !6, line: 526, baseType: !429, size: 128, offset: 2752)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "restart_interval", scope: !171, file: !6, line: 528, baseType: !7, size: 32, offset: 2880)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "saw_JFIF_marker", scope: !171, file: !6, line: 533, baseType: !233, size: 32, offset: 2912)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "density_unit", scope: !171, file: !6, line: 535, baseType: !390, size: 8, offset: 2944)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "X_density", scope: !171, file: !6, line: 536, baseType: !377, size: 16, offset: 2960)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "Y_density", scope: !171, file: !6, line: 537, baseType: !377, size: 16, offset: 2976)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "saw_Adobe_marker", scope: !171, file: !6, line: 538, baseType: !233, size: 32, offset: 3008)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "Adobe_transform", scope: !171, file: !6, line: 539, baseType: !390, size: 8, offset: 3040)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "CCIR601_sampling", scope: !171, file: !6, line: 541, baseType: !233, size: 32, offset: 3072)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "max_h_samp_factor", scope: !171, file: !6, line: 550, baseType: !195, size: 32, offset: 3104)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "max_v_samp_factor", scope: !171, file: !6, line: 551, baseType: !195, size: 32, offset: 3136)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "min_DCT_scaled_size", scope: !171, file: !6, line: 553, baseType: !195, size: 32, offset: 3168)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "total_iMCU_rows", scope: !171, file: !6, line: 555, baseType: !211, size: 32, offset: 3200)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "sample_range_limit", scope: !171, file: !6, line: 564, baseType: !207, size: 64, offset: 3264)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "comps_in_scan", scope: !171, file: !6, line: 571, baseType: !195, size: 32, offset: 3328)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "cur_comp_info", scope: !171, file: !6, line: 572, baseType: !449, size: 256, offset: 3392)
!449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !401, size: 256, elements: !380)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "MCUs_per_row", scope: !171, file: !6, line: 575, baseType: !211, size: 32, offset: 3648)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_rows_in_scan", scope: !171, file: !6, line: 576, baseType: !211, size: 32, offset: 3680)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_in_MCU", scope: !171, file: !6, line: 578, baseType: !195, size: 32, offset: 3712)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_membership", scope: !171, file: !6, line: 579, baseType: !454, size: 320, offset: 3744)
!454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 320, elements: !455)
!455 = !{!456}
!456 = !DISubrange(count: 10)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "Ss", scope: !171, file: !6, line: 583, baseType: !195, size: 32, offset: 4064)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "Se", scope: !171, file: !6, line: 583, baseType: !195, size: 32, offset: 4096)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "Ah", scope: !171, file: !6, line: 583, baseType: !195, size: 32, offset: 4128)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "Al", scope: !171, file: !6, line: 583, baseType: !195, size: 32, offset: 4160)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "unread_marker", scope: !171, file: !6, line: 589, baseType: !195, size: 32, offset: 4192)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !171, file: !6, line: 594, baseType: !463, size: 64, offset: 4224)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_decomp_master", file: !26, line: 136, size: 192, elements: !465)
!465 = !{!466, !467, !468}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_for_output_pass", scope: !464, file: !26, line: 137, baseType: !314, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "finish_output_pass", scope: !464, file: !26, line: 138, baseType: !314, size: 64, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "is_dummy_pass", scope: !464, file: !26, line: 141, baseType: !233, size: 32, offset: 128)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "main", scope: !171, file: !6, line: 595, baseType: !470, size: 64, offset: 4288)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_d_main_controller", file: !26, line: 157, size: 128, elements: !472)
!472 = !{!473, !478}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !471, file: !26, line: 158, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DISubroutineType(types: !476)
!476 = !{null, !169, !477}
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_BUF_MODE", file: !26, line: 22, baseType: !25)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "process_data", scope: !471, file: !26, line: 159, baseType: !479, size: 64, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{null, !169, !204, !482, !211}
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "coef", scope: !171, file: !6, line: 596, baseType: !484, size: 64, offset: 4352)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_d_coef_controller", file: !26, line: 165, size: 320, elements: !486)
!486 = !{!487, !488, !492, !493, !499}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "start_input_pass", scope: !485, file: !26, line: 166, baseType: !314, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "consume_data", scope: !485, file: !26, line: 167, baseType: !489, size: 64, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DISubroutineType(types: !491)
!491 = !{!195, !169}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "start_output_pass", scope: !485, file: !26, line: 168, baseType: !314, size: 64, offset: 128)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "decompress_data", scope: !485, file: !26, line: 169, baseType: !494, size: 64, offset: 192)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DISubroutineType(types: !496)
!496 = !{!195, !169, !497}
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPIMAGE", file: !6, line: 68, baseType: !498)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "coef_arrays", scope: !485, file: !26, line: 172, baseType: !500, size: 64, offset: 256)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "post", scope: !171, file: !6, line: 597, baseType: !502, size: 64, offset: 4416)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_d_post_controller", file: !26, line: 176, size: 128, elements: !504)
!504 = !{!505, !506}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !503, file: !26, line: 177, baseType: !474, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "post_process_data", scope: !503, file: !26, line: 178, baseType: !507, size: 64, offset: 64)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DISubroutineType(types: !509)
!509 = !{null, !169, !497, !482, !211, !204, !482, !211}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "inputctl", scope: !171, file: !6, line: 598, baseType: !511, size: 64, offset: 4480)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_input_controller", file: !26, line: 145, size: 320, elements: !513)
!513 = !{!514, !515, !516, !517, !518, !519}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "consume_input", scope: !512, file: !26, line: 146, baseType: !489, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "reset_input_controller", scope: !512, file: !26, line: 147, baseType: !314, size: 64, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "start_input_pass", scope: !512, file: !26, line: 148, baseType: !314, size: 64, offset: 128)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "finish_input_pass", scope: !512, file: !26, line: 149, baseType: !314, size: 64, offset: 192)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "has_multiple_scans", scope: !512, file: !26, line: 152, baseType: !233, size: 32, offset: 256)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "eoi_reached", scope: !512, file: !26, line: 153, baseType: !233, size: 32, offset: 288)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "marker", scope: !171, file: !6, line: 599, baseType: !521, size: 64, offset: 4544)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_marker_reader", file: !26, line: 188, size: 1408, elements: !523)
!523 = !{!524, !525, !526, !528, !529, !531, !532, !533, !534}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "reset_marker_reader", scope: !522, file: !26, line: 189, baseType: !314, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "read_markers", scope: !522, file: !26, line: 194, baseType: !489, size: 64, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "read_restart_marker", scope: !522, file: !26, line: 196, baseType: !527, size: 64, offset: 128)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_marker_parser_method", file: !6, line: 781, baseType: !318)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "process_COM", scope: !522, file: !26, line: 198, baseType: !527, size: 64, offset: 192)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "process_APPn", scope: !522, file: !26, line: 199, baseType: !530, size: 1024, offset: 256)
!530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !527, size: 1024, elements: !430)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "saw_SOI", scope: !522, file: !26, line: 204, baseType: !233, size: 32, offset: 1280)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "saw_SOF", scope: !522, file: !26, line: 205, baseType: !233, size: 32, offset: 1312)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "next_restart_num", scope: !522, file: !26, line: 206, baseType: !195, size: 32, offset: 1344)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "discarded_bytes", scope: !522, file: !26, line: 207, baseType: !7, size: 32, offset: 1376)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "entropy", scope: !171, file: !6, line: 600, baseType: !536, size: 64, offset: 4608)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_entropy_decoder", file: !26, line: 211, size: 128, elements: !538)
!538 = !{!539, !540}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !537, file: !26, line: 212, baseType: !314, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "decode_mcu", scope: !537, file: !26, line: 213, baseType: !541, size: 64, offset: 64)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{!233, !169, !217}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "idct", scope: !171, file: !6, line: 601, baseType: !545, size: 64, offset: 4672)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_inverse_dct", file: !26, line: 223, size: 704, elements: !547)
!547 = !{!548, !549}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !546, file: !26, line: 224, baseType: !314, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "inverse_DCT", scope: !546, file: !26, line: 226, baseType: !550, size: 640, offset: 64)
!550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !551, size: 640, elements: !455)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "inverse_DCT_method_ptr", file: !26, line: 218, baseType: !552)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DISubroutineType(types: !554)
!554 = !{null, !169, !401, !555, !204, !211}
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "JCOEFPTR", file: !6, line: 75, baseType: !556)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "upsample", scope: !171, file: !6, line: 602, baseType: !558, size: 64, offset: 4736)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_upsampler", file: !26, line: 230, size: 192, elements: !560)
!560 = !{!561, !562, !563}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !559, file: !26, line: 231, baseType: !314, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "upsample", scope: !559, file: !26, line: 232, baseType: !507, size: 64, offset: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "need_context_rows", scope: !559, file: !26, line: 240, baseType: !233, size: 32, offset: 128)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "cconvert", scope: !171, file: !6, line: 603, baseType: !565, size: 64, offset: 4800)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_color_deconverter", file: !26, line: 244, size: 128, elements: !567)
!567 = !{!568, !569}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !566, file: !26, line: 245, baseType: !314, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "color_convert", scope: !566, file: !26, line: 246, baseType: !570, size: 64, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DISubroutineType(types: !572)
!572 = !{null, !169, !497, !211, !204, !195}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "cquantize", scope: !171, file: !6, line: 604, baseType: !574, size: 64, offset: 4864)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "color_quantize", scope: !163, file: !26, line: 254, baseType: !576, size: 64, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DISubroutineType(types: !578)
!578 = !{null, !169, !204, !204, !195}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "finish_pass", scope: !163, file: !26, line: 257, baseType: !314, size: 64, offset: 128)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "new_color_map", scope: !163, file: !26, line: 258, baseType: !314, size: 64, offset: 192)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "sv_colormap", scope: !160, file: !3, line: 146, baseType: !204, size: 64, offset: 256)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "sv_actual", scope: !160, file: !3, line: 147, baseType: !195, size: 32, offset: 320)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "colorindex", scope: !160, file: !3, line: 149, baseType: !204, size: 64, offset: 384)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "is_padded", scope: !160, file: !3, line: 154, baseType: !233, size: 32, offset: 448)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "Ncolors", scope: !160, file: !3, line: 156, baseType: !586, size: 128, offset: 480)
!586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 128, elements: !380)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "row_index", scope: !160, file: !3, line: 159, baseType: !195, size: 32, offset: 608)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "odither", scope: !160, file: !3, line: 160, baseType: !589, size: 256, offset: 640)
!589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !590, size: 256, elements: !380)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "ODITHER_MATRIX_PTR", file: !3, line: 77, baseType: !591)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 512, elements: !430)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "fserrors", scope: !160, file: !3, line: 163, baseType: !594, size: 256, offset: 896)
!594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !595, size: 256, elements: !380)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "FSERRPTR", file: !3, line: 135, baseType: !596)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "FSERROR", file: !3, line: 128, baseType: !598)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT16", file: !209, line: 155, baseType: !223)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "on_odd_row", scope: !160, file: !3, line: 164, baseType: !233, size: 32, offset: 1152)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT32", file: !209, line: 161, baseType: !256)
!601 = !{!0, !602}
!602 = !DIGlobalVariableExpression(var: !603, expr: !DIExpression())
!603 = distinct !DIGlobalVariable(name: "RGB_order", scope: !604, file: !3, line: 196, type: !609, isLocal: true, isDefinition: true)
!604 = distinct !DISubprogram(name: "select_ncolors", scope: !3, file: !3, line: 186, type: !605, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !608)
!605 = !DISubroutineType(types: !606)
!606 = !{!195, !169, !607}
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!608 = !{}
!609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !610, size: 96, elements: !611)
!610 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !195)
!611 = !{!612}
!612 = !DISubrange(count: 3)
!613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !614, size: 2048, elements: !615)
!614 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !390)
!615 = !{!431, !431}
!616 = !{i32 7, !"Dwarf Version", i32 5}
!617 = !{i32 2, !"Debug Info Version", i32 3}
!618 = !{i32 1, !"wchar_size", i32 4}
!619 = !{i32 8, !"PIC Level", i32 2}
!620 = !{i32 7, !"PIE Level", i32 2}
!621 = !{i32 7, !"uwtable", i32 2}
!622 = !{i32 7, !"frame-pointer", i32 2}
!623 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!624 = distinct !DISubprogram(name: "jinit_1pass_quantizer", scope: !3, file: !3, line: 821, type: !315, scopeLine: 822, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !608)
!625 = !DILocalVariable(name: "cinfo", arg: 1, scope: !624, file: !3, line: 821, type: !169)
!626 = !DILocation(line: 821, column: 41, scope: !624)
!627 = !DILocalVariable(name: "cquantize", scope: !624, file: !3, line: 823, type: !157)
!628 = !DILocation(line: 823, column: 20, scope: !624)
!629 = !DILocation(line: 826, column: 7, scope: !624)
!630 = !DILocation(line: 826, column: 14, scope: !624)
!631 = !DILocation(line: 826, column: 19, scope: !624)
!632 = !DILocation(line: 826, column: 48, scope: !624)
!633 = !DILocation(line: 826, column: 5, scope: !624)
!634 = !DILocation(line: 825, column: 13, scope: !624)
!635 = !DILocation(line: 828, column: 54, scope: !624)
!636 = !DILocation(line: 828, column: 3, scope: !624)
!637 = !DILocation(line: 828, column: 10, scope: !624)
!638 = !DILocation(line: 828, column: 20, scope: !624)
!639 = !DILocation(line: 829, column: 3, scope: !624)
!640 = !DILocation(line: 829, column: 14, scope: !624)
!641 = !DILocation(line: 829, column: 18, scope: !624)
!642 = !DILocation(line: 829, column: 29, scope: !624)
!643 = !DILocation(line: 830, column: 3, scope: !624)
!644 = !DILocation(line: 830, column: 14, scope: !624)
!645 = !DILocation(line: 830, column: 18, scope: !624)
!646 = !DILocation(line: 830, column: 30, scope: !624)
!647 = !DILocation(line: 831, column: 3, scope: !624)
!648 = !DILocation(line: 831, column: 14, scope: !624)
!649 = !DILocation(line: 831, column: 18, scope: !624)
!650 = !DILocation(line: 831, column: 32, scope: !624)
!651 = !DILocation(line: 832, column: 3, scope: !624)
!652 = !DILocation(line: 832, column: 14, scope: !624)
!653 = !DILocation(line: 832, column: 26, scope: !624)
!654 = !DILocation(line: 833, column: 3, scope: !624)
!655 = !DILocation(line: 833, column: 14, scope: !624)
!656 = !DILocation(line: 833, column: 25, scope: !624)
!657 = !DILocation(line: 836, column: 7, scope: !658)
!658 = distinct !DILexicalBlock(scope: !624, file: !3, line: 836, column: 7)
!659 = !DILocation(line: 836, column: 14, scope: !658)
!660 = !DILocation(line: 836, column: 35, scope: !658)
!661 = !DILocation(line: 837, column: 5, scope: !658)
!662 = !DILocation(line: 839, column: 7, scope: !663)
!663 = distinct !DILexicalBlock(scope: !624, file: !3, line: 839, column: 7)
!664 = !DILocation(line: 839, column: 14, scope: !663)
!665 = !DILocation(line: 839, column: 39, scope: !663)
!666 = !DILocation(line: 840, column: 5, scope: !663)
!667 = !DILocation(line: 843, column: 19, scope: !624)
!668 = !DILocation(line: 843, column: 3, scope: !624)
!669 = !DILocation(line: 844, column: 21, scope: !624)
!670 = !DILocation(line: 844, column: 3, scope: !624)
!671 = !DILocation(line: 852, column: 7, scope: !672)
!672 = distinct !DILexicalBlock(scope: !624, file: !3, line: 852, column: 7)
!673 = !DILocation(line: 852, column: 14, scope: !672)
!674 = !DILocation(line: 852, column: 26, scope: !672)
!675 = !DILocation(line: 853, column: 24, scope: !672)
!676 = !DILocation(line: 853, column: 5, scope: !672)
!677 = !DILocation(line: 854, column: 1, scope: !624)
!678 = distinct !DISubprogram(name: "start_pass_1_quant", scope: !3, file: !3, line: 741, type: !167, scopeLine: 742, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !608)
!679 = !DILocalVariable(name: "cinfo", arg: 1, scope: !678, file: !3, line: 741, type: !169)
!680 = !DILocation(line: 741, column: 38, scope: !678)
!681 = !DILocalVariable(name: "is_pre_scan", arg: 2, scope: !678, file: !3, line: 741, type: !233)
!682 = !DILocation(line: 741, column: 53, scope: !678)
!683 = !DILocalVariable(name: "cquantize", scope: !678, file: !3, line: 743, type: !157)
!684 = !DILocation(line: 743, column: 20, scope: !678)
!685 = !DILocation(line: 743, column: 51, scope: !678)
!686 = !DILocation(line: 743, column: 58, scope: !678)
!687 = !DILocalVariable(name: "arraysize", scope: !678, file: !3, line: 744, type: !196)
!688 = !DILocation(line: 744, column: 10, scope: !678)
!689 = !DILocalVariable(name: "i", scope: !678, file: !3, line: 745, type: !195)
!690 = !DILocation(line: 745, column: 7, scope: !678)
!691 = !DILocation(line: 748, column: 21, scope: !678)
!692 = !DILocation(line: 748, column: 32, scope: !678)
!693 = !DILocation(line: 748, column: 3, scope: !678)
!694 = !DILocation(line: 748, column: 10, scope: !678)
!695 = !DILocation(line: 748, column: 19, scope: !678)
!696 = !DILocation(line: 749, column: 36, scope: !678)
!697 = !DILocation(line: 749, column: 47, scope: !678)
!698 = !DILocation(line: 749, column: 3, scope: !678)
!699 = !DILocation(line: 749, column: 10, scope: !678)
!700 = !DILocation(line: 749, column: 34, scope: !678)
!701 = !DILocation(line: 752, column: 11, scope: !678)
!702 = !DILocation(line: 752, column: 18, scope: !678)
!703 = !DILocation(line: 752, column: 3, scope: !678)
!704 = !DILocation(line: 754, column: 9, scope: !705)
!705 = distinct !DILexicalBlock(scope: !706, file: !3, line: 754, column: 9)
!706 = distinct !DILexicalBlock(scope: !678, file: !3, line: 752, column: 31)
!707 = !DILocation(line: 754, column: 16, scope: !705)
!708 = !DILocation(line: 754, column: 37, scope: !705)
!709 = !DILocation(line: 755, column: 7, scope: !705)
!710 = !DILocation(line: 755, column: 18, scope: !705)
!711 = !DILocation(line: 755, column: 22, scope: !705)
!712 = !DILocation(line: 755, column: 37, scope: !705)
!713 = !DILocation(line: 757, column: 7, scope: !705)
!714 = !DILocation(line: 757, column: 18, scope: !705)
!715 = !DILocation(line: 757, column: 22, scope: !705)
!716 = !DILocation(line: 757, column: 37, scope: !705)
!717 = !DILocation(line: 758, column: 5, scope: !706)
!718 = !DILocation(line: 760, column: 9, scope: !719)
!719 = distinct !DILexicalBlock(scope: !706, file: !3, line: 760, column: 9)
!720 = !DILocation(line: 760, column: 16, scope: !719)
!721 = !DILocation(line: 760, column: 37, scope: !719)
!722 = !DILocation(line: 761, column: 7, scope: !719)
!723 = !DILocation(line: 761, column: 18, scope: !719)
!724 = !DILocation(line: 761, column: 22, scope: !719)
!725 = !DILocation(line: 761, column: 37, scope: !719)
!726 = !DILocation(line: 763, column: 7, scope: !719)
!727 = !DILocation(line: 763, column: 18, scope: !719)
!728 = !DILocation(line: 763, column: 22, scope: !719)
!729 = !DILocation(line: 763, column: 37, scope: !719)
!730 = !DILocation(line: 764, column: 5, scope: !706)
!731 = !DILocation(line: 764, column: 16, scope: !706)
!732 = !DILocation(line: 764, column: 26, scope: !706)
!733 = !DILocation(line: 769, column: 11, scope: !734)
!734 = distinct !DILexicalBlock(scope: !706, file: !3, line: 769, column: 9)
!735 = !DILocation(line: 769, column: 22, scope: !734)
!736 = !DILocation(line: 769, column: 9, scope: !734)
!737 = !DILocation(line: 770, column: 25, scope: !734)
!738 = !DILocation(line: 770, column: 7, scope: !734)
!739 = !DILocation(line: 772, column: 9, scope: !740)
!740 = distinct !DILexicalBlock(scope: !706, file: !3, line: 772, column: 9)
!741 = !DILocation(line: 772, column: 20, scope: !740)
!742 = !DILocation(line: 772, column: 31, scope: !740)
!743 = !DILocation(line: 773, column: 29, scope: !740)
!744 = !DILocation(line: 773, column: 7, scope: !740)
!745 = !DILocation(line: 774, column: 5, scope: !706)
!746 = !DILocation(line: 776, column: 5, scope: !706)
!747 = !DILocation(line: 776, column: 16, scope: !706)
!748 = !DILocation(line: 776, column: 20, scope: !706)
!749 = !DILocation(line: 776, column: 35, scope: !706)
!750 = !DILocation(line: 777, column: 5, scope: !706)
!751 = !DILocation(line: 777, column: 16, scope: !706)
!752 = !DILocation(line: 777, column: 27, scope: !706)
!753 = !DILocation(line: 779, column: 9, scope: !754)
!754 = distinct !DILexicalBlock(scope: !706, file: !3, line: 779, column: 9)
!755 = !DILocation(line: 779, column: 20, scope: !754)
!756 = !DILocation(line: 779, column: 32, scope: !754)
!757 = !DILocation(line: 780, column: 26, scope: !754)
!758 = !DILocation(line: 780, column: 7, scope: !754)
!759 = !DILocation(line: 782, column: 28, scope: !706)
!760 = !DILocation(line: 782, column: 35, scope: !706)
!761 = !DILocation(line: 782, column: 48, scope: !706)
!762 = !DILocation(line: 782, column: 27, scope: !706)
!763 = !DILocation(line: 782, column: 53, scope: !706)
!764 = !DILocation(line: 782, column: 15, scope: !706)
!765 = !DILocation(line: 783, column: 12, scope: !766)
!766 = distinct !DILexicalBlock(scope: !706, file: !3, line: 783, column: 5)
!767 = !DILocation(line: 783, column: 10, scope: !766)
!768 = !DILocation(line: 783, column: 17, scope: !769)
!769 = distinct !DILexicalBlock(scope: !766, file: !3, line: 783, column: 5)
!770 = !DILocation(line: 783, column: 21, scope: !769)
!771 = !DILocation(line: 783, column: 28, scope: !769)
!772 = !DILocation(line: 783, column: 19, scope: !769)
!773 = !DILocation(line: 783, column: 5, scope: !766)
!774 = !DILocation(line: 784, column: 30, scope: !769)
!775 = !DILocation(line: 784, column: 41, scope: !769)
!776 = !DILocation(line: 784, column: 50, scope: !769)
!777 = !DILocation(line: 784, column: 54, scope: !769)
!778 = !DILocation(line: 784, column: 7, scope: !769)
!779 = !DILocation(line: 783, column: 51, scope: !769)
!780 = !DILocation(line: 783, column: 5, scope: !769)
!781 = distinct !{!781, !773, !782, !783}
!782 = !DILocation(line: 784, column: 63, scope: !766)
!783 = !{!"llvm.loop.mustprogress"}
!784 = !DILocation(line: 785, column: 5, scope: !706)
!785 = !DILocation(line: 787, column: 5, scope: !706)
!786 = !DILocation(line: 788, column: 5, scope: !706)
!787 = !DILocation(line: 790, column: 1, scope: !678)
!788 = distinct !DISubprogram(name: "finish_pass_1_quant", scope: !3, file: !3, line: 798, type: !315, scopeLine: 799, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !608)
!789 = !DILocalVariable(name: "cinfo", arg: 1, scope: !788, file: !3, line: 798, type: !169)
!790 = !DILocation(line: 798, column: 39, scope: !788)
!791 = !DILocation(line: 801, column: 1, scope: !788)
!792 = distinct !DISubprogram(name: "new_color_map_1_quant", scope: !3, file: !3, line: 810, type: !315, scopeLine: 811, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !608)
!793 = !DILocalVariable(name: "cinfo", arg: 1, scope: !792, file: !3, line: 810, type: !169)
!794 = !DILocation(line: 810, column: 41, scope: !792)
!795 = !DILocation(line: 812, column: 3, scope: !792)
!796 = !DILocation(line: 813, column: 1, scope: !792)
!797 = distinct !DISubprogram(name: "create_colormap", scope: !3, file: !3, line: 273, type: !315, scopeLine: 274, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !608)
!798 = !DILocalVariable(name: "cinfo", arg: 1, scope: !797, file: !3, line: 273, type: !169)
!799 = !DILocation(line: 273, column: 35, scope: !797)
!800 = !DILocalVariable(name: "cquantize", scope: !797, file: !3, line: 275, type: !157)
!801 = !DILocation(line: 275, column: 20, scope: !797)
!802 = !DILocation(line: 275, column: 51, scope: !797)
!803 = !DILocation(line: 275, column: 58, scope: !797)
!804 = !DILocalVariable(name: "colormap", scope: !797, file: !3, line: 276, type: !204)
!805 = !DILocation(line: 276, column: 14, scope: !797)
!806 = !DILocalVariable(name: "total_colors", scope: !797, file: !3, line: 277, type: !195)
!807 = !DILocation(line: 277, column: 7, scope: !797)
!808 = !DILocalVariable(name: "i", scope: !797, file: !3, line: 278, type: !195)
!809 = !DILocation(line: 278, column: 7, scope: !797)
!810 = !DILocalVariable(name: "j", scope: !797, file: !3, line: 278, type: !195)
!811 = !DILocation(line: 278, column: 9, scope: !797)
!812 = !DILocalVariable(name: "k", scope: !797, file: !3, line: 278, type: !195)
!813 = !DILocation(line: 278, column: 11, scope: !797)
!814 = !DILocalVariable(name: "nci", scope: !797, file: !3, line: 278, type: !195)
!815 = !DILocation(line: 278, column: 14, scope: !797)
!816 = !DILocalVariable(name: "blksize", scope: !797, file: !3, line: 278, type: !195)
!817 = !DILocation(line: 278, column: 19, scope: !797)
!818 = !DILocalVariable(name: "blkdist", scope: !797, file: !3, line: 278, type: !195)
!819 = !DILocation(line: 278, column: 28, scope: !797)
!820 = !DILocalVariable(name: "ptr", scope: !797, file: !3, line: 278, type: !195)
!821 = !DILocation(line: 278, column: 37, scope: !797)
!822 = !DILocalVariable(name: "val", scope: !797, file: !3, line: 278, type: !195)
!823 = !DILocation(line: 278, column: 42, scope: !797)
!824 = !DILocation(line: 281, column: 33, scope: !797)
!825 = !DILocation(line: 281, column: 40, scope: !797)
!826 = !DILocation(line: 281, column: 51, scope: !797)
!827 = !DILocation(line: 281, column: 18, scope: !797)
!828 = !DILocation(line: 281, column: 16, scope: !797)
!829 = !DILocation(line: 284, column: 7, scope: !830)
!830 = distinct !DILexicalBlock(scope: !797, file: !3, line: 284, column: 7)
!831 = !DILocation(line: 284, column: 14, scope: !830)
!832 = !DILocation(line: 284, column: 35, scope: !830)
!833 = !DILocation(line: 285, column: 5, scope: !830)
!834 = !DILocalVariable(name: "_mp", scope: !835, file: !3, line: 285, type: !607)
!835 = distinct !DILexicalBlock(scope: !830, file: !3, line: 285, column: 5)
!836 = !DILocation(line: 285, column: 5, scope: !835)
!837 = !DILocation(line: 289, column: 5, scope: !830)
!838 = !DILocation(line: 295, column: 16, scope: !797)
!839 = !DILocation(line: 295, column: 23, scope: !797)
!840 = !DILocation(line: 295, column: 28, scope: !797)
!841 = !DILocation(line: 296, column: 21, scope: !797)
!842 = !DILocation(line: 297, column: 19, scope: !797)
!843 = !DILocation(line: 297, column: 46, scope: !797)
!844 = !DILocation(line: 297, column: 53, scope: !797)
!845 = !DILocation(line: 295, column: 14, scope: !797)
!846 = !DILocation(line: 295, column: 12, scope: !797)
!847 = !DILocation(line: 301, column: 13, scope: !797)
!848 = !DILocation(line: 301, column: 11, scope: !797)
!849 = !DILocation(line: 303, column: 10, scope: !850)
!850 = distinct !DILexicalBlock(scope: !797, file: !3, line: 303, column: 3)
!851 = !DILocation(line: 303, column: 8, scope: !850)
!852 = !DILocation(line: 303, column: 15, scope: !853)
!853 = distinct !DILexicalBlock(scope: !850, file: !3, line: 303, column: 3)
!854 = !DILocation(line: 303, column: 19, scope: !853)
!855 = !DILocation(line: 303, column: 26, scope: !853)
!856 = !DILocation(line: 303, column: 17, scope: !853)
!857 = !DILocation(line: 303, column: 3, scope: !850)
!858 = !DILocation(line: 305, column: 11, scope: !859)
!859 = distinct !DILexicalBlock(scope: !853, file: !3, line: 303, column: 53)
!860 = !DILocation(line: 305, column: 22, scope: !859)
!861 = !DILocation(line: 305, column: 30, scope: !859)
!862 = !DILocation(line: 305, column: 9, scope: !859)
!863 = !DILocation(line: 306, column: 15, scope: !859)
!864 = !DILocation(line: 306, column: 25, scope: !859)
!865 = !DILocation(line: 306, column: 23, scope: !859)
!866 = !DILocation(line: 306, column: 13, scope: !859)
!867 = !DILocation(line: 307, column: 12, scope: !868)
!868 = distinct !DILexicalBlock(scope: !859, file: !3, line: 307, column: 5)
!869 = !DILocation(line: 307, column: 10, scope: !868)
!870 = !DILocation(line: 307, column: 17, scope: !871)
!871 = distinct !DILexicalBlock(scope: !868, file: !3, line: 307, column: 5)
!872 = !DILocation(line: 307, column: 21, scope: !871)
!873 = !DILocation(line: 307, column: 19, scope: !871)
!874 = !DILocation(line: 307, column: 5, scope: !868)
!875 = !DILocation(line: 309, column: 26, scope: !876)
!876 = distinct !DILexicalBlock(scope: !871, file: !3, line: 307, column: 31)
!877 = !DILocation(line: 309, column: 33, scope: !876)
!878 = !DILocation(line: 309, column: 36, scope: !876)
!879 = !DILocation(line: 309, column: 39, scope: !876)
!880 = !DILocation(line: 309, column: 42, scope: !876)
!881 = !DILocation(line: 309, column: 13, scope: !876)
!882 = !DILocation(line: 309, column: 11, scope: !876)
!883 = !DILocation(line: 311, column: 18, scope: !884)
!884 = distinct !DILexicalBlock(scope: !876, file: !3, line: 311, column: 7)
!885 = !DILocation(line: 311, column: 22, scope: !884)
!886 = !DILocation(line: 311, column: 20, scope: !884)
!887 = !DILocation(line: 311, column: 16, scope: !884)
!888 = !DILocation(line: 311, column: 12, scope: !884)
!889 = !DILocation(line: 311, column: 31, scope: !890)
!890 = distinct !DILexicalBlock(scope: !884, file: !3, line: 311, column: 7)
!891 = !DILocation(line: 311, column: 37, scope: !890)
!892 = !DILocation(line: 311, column: 35, scope: !890)
!893 = !DILocation(line: 311, column: 7, scope: !884)
!894 = !DILocation(line: 313, column: 9, scope: !895)
!895 = distinct !DILexicalBlock(scope: !896, file: !3, line: 313, column: 2)
!896 = distinct !DILexicalBlock(scope: !890, file: !3, line: 311, column: 67)
!897 = !DILocation(line: 313, column: 7, scope: !895)
!898 = !DILocation(line: 313, column: 14, scope: !899)
!899 = distinct !DILexicalBlock(scope: !895, file: !3, line: 313, column: 2)
!900 = !DILocation(line: 313, column: 18, scope: !899)
!901 = !DILocation(line: 313, column: 16, scope: !899)
!902 = !DILocation(line: 313, column: 2, scope: !895)
!903 = !DILocation(line: 314, column: 35, scope: !899)
!904 = !DILocation(line: 314, column: 25, scope: !899)
!905 = !DILocation(line: 314, column: 4, scope: !899)
!906 = !DILocation(line: 314, column: 13, scope: !899)
!907 = !DILocation(line: 314, column: 16, scope: !899)
!908 = !DILocation(line: 314, column: 20, scope: !899)
!909 = !DILocation(line: 314, column: 19, scope: !899)
!910 = !DILocation(line: 314, column: 23, scope: !899)
!911 = !DILocation(line: 313, column: 28, scope: !899)
!912 = !DILocation(line: 313, column: 2, scope: !899)
!913 = distinct !{!913, !902, !914, !783}
!914 = !DILocation(line: 314, column: 35, scope: !895)
!915 = !DILocation(line: 315, column: 7, scope: !896)
!916 = !DILocation(line: 311, column: 58, scope: !890)
!917 = !DILocation(line: 311, column: 55, scope: !890)
!918 = !DILocation(line: 311, column: 7, scope: !890)
!919 = distinct !{!919, !893, !920, !783}
!920 = !DILocation(line: 315, column: 7, scope: !884)
!921 = !DILocation(line: 316, column: 5, scope: !876)
!922 = !DILocation(line: 307, column: 27, scope: !871)
!923 = !DILocation(line: 307, column: 5, scope: !871)
!924 = distinct !{!924, !874, !925, !783}
!925 = !DILocation(line: 316, column: 5, scope: !868)
!926 = !DILocation(line: 317, column: 15, scope: !859)
!927 = !DILocation(line: 317, column: 13, scope: !859)
!928 = !DILocation(line: 318, column: 3, scope: !859)
!929 = !DILocation(line: 303, column: 49, scope: !853)
!930 = !DILocation(line: 303, column: 3, scope: !853)
!931 = distinct !{!931, !857, !932, !783}
!932 = !DILocation(line: 318, column: 3, scope: !850)
!933 = !DILocation(line: 323, column: 28, scope: !797)
!934 = !DILocation(line: 323, column: 3, scope: !797)
!935 = !DILocation(line: 323, column: 14, scope: !797)
!936 = !DILocation(line: 323, column: 26, scope: !797)
!937 = !DILocation(line: 324, column: 26, scope: !797)
!938 = !DILocation(line: 324, column: 3, scope: !797)
!939 = !DILocation(line: 324, column: 14, scope: !797)
!940 = !DILocation(line: 324, column: 24, scope: !797)
!941 = !DILocation(line: 325, column: 1, scope: !797)
!942 = distinct !DISubprogram(name: "create_colorindex", scope: !3, file: !3, line: 333, type: !315, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !608)
!943 = !DILocalVariable(name: "cinfo", arg: 1, scope: !942, file: !3, line: 333, type: !169)
!944 = !DILocation(line: 333, column: 37, scope: !942)
!945 = !DILocalVariable(name: "cquantize", scope: !942, file: !3, line: 335, type: !157)
!946 = !DILocation(line: 335, column: 20, scope: !942)
!947 = !DILocation(line: 335, column: 51, scope: !942)
!948 = !DILocation(line: 335, column: 58, scope: !942)
!949 = !DILocalVariable(name: "indexptr", scope: !942, file: !3, line: 336, type: !206)
!950 = !DILocation(line: 336, column: 12, scope: !942)
!951 = !DILocalVariable(name: "i", scope: !942, file: !3, line: 337, type: !195)
!952 = !DILocation(line: 337, column: 7, scope: !942)
!953 = !DILocalVariable(name: "j", scope: !942, file: !3, line: 337, type: !195)
!954 = !DILocation(line: 337, column: 9, scope: !942)
!955 = !DILocalVariable(name: "k", scope: !942, file: !3, line: 337, type: !195)
!956 = !DILocation(line: 337, column: 11, scope: !942)
!957 = !DILocalVariable(name: "nci", scope: !942, file: !3, line: 337, type: !195)
!958 = !DILocation(line: 337, column: 14, scope: !942)
!959 = !DILocalVariable(name: "blksize", scope: !942, file: !3, line: 337, type: !195)
!960 = !DILocation(line: 337, column: 19, scope: !942)
!961 = !DILocalVariable(name: "val", scope: !942, file: !3, line: 337, type: !195)
!962 = !DILocation(line: 337, column: 28, scope: !942)
!963 = !DILocalVariable(name: "pad", scope: !942, file: !3, line: 337, type: !195)
!964 = !DILocation(line: 337, column: 33, scope: !942)
!965 = !DILocation(line: 344, column: 7, scope: !966)
!966 = distinct !DILexicalBlock(scope: !942, file: !3, line: 344, column: 7)
!967 = !DILocation(line: 344, column: 14, scope: !966)
!968 = !DILocation(line: 344, column: 26, scope: !966)
!969 = !DILocation(line: 345, column: 9, scope: !970)
!970 = distinct !DILexicalBlock(scope: !966, file: !3, line: 344, column: 46)
!971 = !DILocation(line: 346, column: 5, scope: !970)
!972 = !DILocation(line: 346, column: 16, scope: !970)
!973 = !DILocation(line: 346, column: 26, scope: !970)
!974 = !DILocation(line: 347, column: 3, scope: !970)
!975 = !DILocation(line: 348, column: 9, scope: !976)
!976 = distinct !DILexicalBlock(scope: !966, file: !3, line: 347, column: 10)
!977 = !DILocation(line: 349, column: 5, scope: !976)
!978 = !DILocation(line: 349, column: 16, scope: !976)
!979 = !DILocation(line: 349, column: 26, scope: !976)
!980 = !DILocation(line: 352, column: 29, scope: !942)
!981 = !DILocation(line: 352, column: 36, scope: !942)
!982 = !DILocation(line: 352, column: 41, scope: !942)
!983 = !DILocation(line: 353, column: 21, scope: !942)
!984 = !DILocation(line: 354, column: 35, scope: !942)
!985 = !DILocation(line: 354, column: 33, scope: !942)
!986 = !DILocation(line: 355, column: 19, scope: !942)
!987 = !DILocation(line: 355, column: 26, scope: !942)
!988 = !DILocation(line: 352, column: 27, scope: !942)
!989 = !DILocation(line: 352, column: 3, scope: !942)
!990 = !DILocation(line: 352, column: 14, scope: !942)
!991 = !DILocation(line: 352, column: 25, scope: !942)
!992 = !DILocation(line: 358, column: 13, scope: !942)
!993 = !DILocation(line: 358, column: 24, scope: !942)
!994 = !DILocation(line: 358, column: 11, scope: !942)
!995 = !DILocation(line: 360, column: 10, scope: !996)
!996 = distinct !DILexicalBlock(scope: !942, file: !3, line: 360, column: 3)
!997 = !DILocation(line: 360, column: 8, scope: !996)
!998 = !DILocation(line: 360, column: 15, scope: !999)
!999 = distinct !DILexicalBlock(scope: !996, file: !3, line: 360, column: 3)
!1000 = !DILocation(line: 360, column: 19, scope: !999)
!1001 = !DILocation(line: 360, column: 26, scope: !999)
!1002 = !DILocation(line: 360, column: 17, scope: !999)
!1003 = !DILocation(line: 360, column: 3, scope: !996)
!1004 = !DILocation(line: 362, column: 11, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !999, file: !3, line: 360, column: 53)
!1006 = !DILocation(line: 362, column: 22, scope: !1005)
!1007 = !DILocation(line: 362, column: 30, scope: !1005)
!1008 = !DILocation(line: 362, column: 9, scope: !1005)
!1009 = !DILocation(line: 363, column: 15, scope: !1005)
!1010 = !DILocation(line: 363, column: 25, scope: !1005)
!1011 = !DILocation(line: 363, column: 23, scope: !1005)
!1012 = !DILocation(line: 363, column: 13, scope: !1005)
!1013 = !DILocation(line: 366, column: 9, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 366, column: 9)
!1015 = !DILocation(line: 367, column: 7, scope: !1014)
!1016 = !DILocation(line: 367, column: 18, scope: !1014)
!1017 = !DILocation(line: 367, column: 29, scope: !1014)
!1018 = !DILocation(line: 367, column: 32, scope: !1014)
!1019 = !DILocation(line: 371, column: 16, scope: !1005)
!1020 = !DILocation(line: 371, column: 27, scope: !1005)
!1021 = !DILocation(line: 371, column: 38, scope: !1005)
!1022 = !DILocation(line: 371, column: 14, scope: !1005)
!1023 = !DILocation(line: 372, column: 9, scope: !1005)
!1024 = !DILocation(line: 373, column: 29, scope: !1005)
!1025 = !DILocation(line: 373, column: 36, scope: !1005)
!1026 = !DILocation(line: 373, column: 42, scope: !1005)
!1027 = !DILocation(line: 373, column: 45, scope: !1005)
!1028 = !DILocation(line: 373, column: 9, scope: !1005)
!1029 = !DILocation(line: 373, column: 7, scope: !1005)
!1030 = !DILocation(line: 374, column: 12, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 374, column: 5)
!1032 = !DILocation(line: 374, column: 10, scope: !1031)
!1033 = !DILocation(line: 374, column: 17, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 374, column: 5)
!1035 = !DILocation(line: 374, column: 19, scope: !1034)
!1036 = !DILocation(line: 374, column: 5, scope: !1031)
!1037 = !DILocation(line: 375, column: 7, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 374, column: 39)
!1039 = !DILocation(line: 375, column: 14, scope: !1038)
!1040 = !DILocation(line: 375, column: 18, scope: !1038)
!1041 = !DILocation(line: 375, column: 16, scope: !1038)
!1042 = !DILocation(line: 376, column: 26, scope: !1038)
!1043 = !DILocation(line: 376, column: 33, scope: !1038)
!1044 = !DILocation(line: 376, column: 36, scope: !1038)
!1045 = !DILocation(line: 376, column: 43, scope: !1038)
!1046 = !DILocation(line: 376, column: 46, scope: !1038)
!1047 = !DILocation(line: 376, column: 6, scope: !1038)
!1048 = !DILocation(line: 376, column: 4, scope: !1038)
!1049 = distinct !{!1049, !1037, !1050, !783}
!1050 = !DILocation(line: 376, column: 48, scope: !1038)
!1051 = !DILocation(line: 378, column: 32, scope: !1038)
!1052 = !DILocation(line: 378, column: 38, scope: !1038)
!1053 = !DILocation(line: 378, column: 36, scope: !1038)
!1054 = !DILocation(line: 378, column: 21, scope: !1038)
!1055 = !DILocation(line: 378, column: 7, scope: !1038)
!1056 = !DILocation(line: 378, column: 16, scope: !1038)
!1057 = !DILocation(line: 378, column: 19, scope: !1038)
!1058 = !DILocation(line: 379, column: 5, scope: !1038)
!1059 = !DILocation(line: 374, column: 35, scope: !1034)
!1060 = !DILocation(line: 374, column: 5, scope: !1034)
!1061 = distinct !{!1061, !1036, !1062, !783}
!1062 = !DILocation(line: 379, column: 5, scope: !1031)
!1063 = !DILocation(line: 381, column: 9, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 381, column: 9)
!1065 = !DILocation(line: 382, column: 14, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 382, column: 7)
!1067 = !DILocation(line: 382, column: 12, scope: !1066)
!1068 = !DILocation(line: 382, column: 19, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 382, column: 7)
!1070 = !DILocation(line: 382, column: 21, scope: !1069)
!1071 = !DILocation(line: 382, column: 7, scope: !1066)
!1072 = !DILocation(line: 383, column: 17, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 382, column: 41)
!1074 = !DILocation(line: 383, column: 2, scope: !1073)
!1075 = !DILocation(line: 383, column: 12, scope: !1073)
!1076 = !DILocation(line: 383, column: 11, scope: !1073)
!1077 = !DILocation(line: 383, column: 15, scope: !1073)
!1078 = !DILocation(line: 384, column: 27, scope: !1073)
!1079 = !DILocation(line: 384, column: 2, scope: !1073)
!1080 = !DILocation(line: 384, column: 22, scope: !1073)
!1081 = !DILocation(line: 384, column: 21, scope: !1073)
!1082 = !DILocation(line: 384, column: 25, scope: !1073)
!1083 = !DILocation(line: 385, column: 7, scope: !1073)
!1084 = !DILocation(line: 382, column: 37, scope: !1069)
!1085 = !DILocation(line: 382, column: 7, scope: !1069)
!1086 = distinct !{!1086, !1071, !1087, !783}
!1087 = !DILocation(line: 385, column: 7, scope: !1066)
!1088 = !DILocation(line: 386, column: 3, scope: !1005)
!1089 = !DILocation(line: 360, column: 49, scope: !999)
!1090 = !DILocation(line: 360, column: 3, scope: !999)
!1091 = distinct !{!1091, !1003, !1092, !783}
!1092 = !DILocation(line: 386, column: 3, scope: !996)
!1093 = !DILocation(line: 387, column: 1, scope: !942)
!1094 = distinct !DISubprogram(name: "alloc_fs_workspace", scope: !3, file: !3, line: 722, type: !315, scopeLine: 723, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !608)
!1095 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1094, file: !3, line: 722, type: !169)
!1096 = !DILocation(line: 722, column: 38, scope: !1094)
!1097 = !DILocalVariable(name: "cquantize", scope: !1094, file: !3, line: 724, type: !157)
!1098 = !DILocation(line: 724, column: 20, scope: !1094)
!1099 = !DILocation(line: 724, column: 51, scope: !1094)
!1100 = !DILocation(line: 724, column: 58, scope: !1094)
!1101 = !DILocalVariable(name: "arraysize", scope: !1094, file: !3, line: 725, type: !196)
!1102 = !DILocation(line: 725, column: 10, scope: !1094)
!1103 = !DILocalVariable(name: "i", scope: !1094, file: !3, line: 726, type: !195)
!1104 = !DILocation(line: 726, column: 7, scope: !1094)
!1105 = !DILocation(line: 728, column: 26, scope: !1094)
!1106 = !DILocation(line: 728, column: 33, scope: !1094)
!1107 = !DILocation(line: 728, column: 46, scope: !1094)
!1108 = !DILocation(line: 728, column: 25, scope: !1094)
!1109 = !DILocation(line: 728, column: 51, scope: !1094)
!1110 = !DILocation(line: 728, column: 13, scope: !1094)
!1111 = !DILocation(line: 729, column: 10, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1094, file: !3, line: 729, column: 3)
!1113 = !DILocation(line: 729, column: 8, scope: !1112)
!1114 = !DILocation(line: 729, column: 15, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 729, column: 3)
!1116 = !DILocation(line: 729, column: 19, scope: !1115)
!1117 = !DILocation(line: 729, column: 26, scope: !1115)
!1118 = !DILocation(line: 729, column: 17, scope: !1115)
!1119 = !DILocation(line: 729, column: 3, scope: !1112)
!1120 = !DILocation(line: 731, column: 9, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1115, file: !3, line: 729, column: 53)
!1122 = !DILocation(line: 731, column: 16, scope: !1121)
!1123 = !DILocation(line: 731, column: 21, scope: !1121)
!1124 = !DILocation(line: 731, column: 49, scope: !1121)
!1125 = !DILocation(line: 731, column: 69, scope: !1121)
!1126 = !DILocation(line: 731, column: 7, scope: !1121)
!1127 = !DILocation(line: 730, column: 5, scope: !1121)
!1128 = !DILocation(line: 730, column: 16, scope: !1121)
!1129 = !DILocation(line: 730, column: 25, scope: !1121)
!1130 = !DILocation(line: 730, column: 28, scope: !1121)
!1131 = !DILocation(line: 732, column: 3, scope: !1121)
!1132 = !DILocation(line: 729, column: 49, scope: !1115)
!1133 = !DILocation(line: 729, column: 3, scope: !1115)
!1134 = distinct !{!1134, !1119, !1135, !783}
!1135 = !DILocation(line: 732, column: 3, scope: !1112)
!1136 = !DILocation(line: 733, column: 1, scope: !1094)
!1137 = distinct !DISubprogram(name: "color_quantize3", scope: !3, file: !3, line: 487, type: !577, scopeLine: 490, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !608)
!1138 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1137, file: !3, line: 487, type: !169)
!1139 = !DILocation(line: 487, column: 35, scope: !1137)
!1140 = !DILocalVariable(name: "input_buf", arg: 2, scope: !1137, file: !3, line: 487, type: !204)
!1141 = !DILocation(line: 487, column: 53, scope: !1137)
!1142 = !DILocalVariable(name: "output_buf", arg: 3, scope: !1137, file: !3, line: 488, type: !204)
!1143 = !DILocation(line: 488, column: 15, scope: !1137)
!1144 = !DILocalVariable(name: "num_rows", arg: 4, scope: !1137, file: !3, line: 488, type: !195)
!1145 = !DILocation(line: 488, column: 31, scope: !1137)
!1146 = !DILocalVariable(name: "cquantize", scope: !1137, file: !3, line: 491, type: !157)
!1147 = !DILocation(line: 491, column: 20, scope: !1137)
!1148 = !DILocation(line: 491, column: 51, scope: !1137)
!1149 = !DILocation(line: 491, column: 58, scope: !1137)
!1150 = !DILocalVariable(name: "pixcode", scope: !1137, file: !3, line: 492, type: !195)
!1151 = !DILocation(line: 492, column: 16, scope: !1137)
!1152 = !DILocalVariable(name: "ptrin", scope: !1137, file: !3, line: 493, type: !206)
!1153 = !DILocation(line: 493, column: 21, scope: !1137)
!1154 = !DILocalVariable(name: "ptrout", scope: !1137, file: !3, line: 493, type: !206)
!1155 = !DILocation(line: 493, column: 28, scope: !1137)
!1156 = !DILocalVariable(name: "colorindex0", scope: !1137, file: !3, line: 494, type: !206)
!1157 = !DILocation(line: 494, column: 12, scope: !1137)
!1158 = !DILocation(line: 494, column: 26, scope: !1137)
!1159 = !DILocation(line: 494, column: 37, scope: !1137)
!1160 = !DILocalVariable(name: "colorindex1", scope: !1137, file: !3, line: 495, type: !206)
!1161 = !DILocation(line: 495, column: 12, scope: !1137)
!1162 = !DILocation(line: 495, column: 26, scope: !1137)
!1163 = !DILocation(line: 495, column: 37, scope: !1137)
!1164 = !DILocalVariable(name: "colorindex2", scope: !1137, file: !3, line: 496, type: !206)
!1165 = !DILocation(line: 496, column: 12, scope: !1137)
!1166 = !DILocation(line: 496, column: 26, scope: !1137)
!1167 = !DILocation(line: 496, column: 37, scope: !1137)
!1168 = !DILocalVariable(name: "row", scope: !1137, file: !3, line: 497, type: !195)
!1169 = !DILocation(line: 497, column: 7, scope: !1137)
!1170 = !DILocalVariable(name: "col", scope: !1137, file: !3, line: 498, type: !211)
!1171 = !DILocation(line: 498, column: 14, scope: !1137)
!1172 = !DILocalVariable(name: "width", scope: !1137, file: !3, line: 499, type: !211)
!1173 = !DILocation(line: 499, column: 14, scope: !1137)
!1174 = !DILocation(line: 499, column: 22, scope: !1137)
!1175 = !DILocation(line: 499, column: 29, scope: !1137)
!1176 = !DILocation(line: 501, column: 12, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 501, column: 3)
!1178 = !DILocation(line: 501, column: 8, scope: !1177)
!1179 = !DILocation(line: 501, column: 17, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1177, file: !3, line: 501, column: 3)
!1181 = !DILocation(line: 501, column: 23, scope: !1180)
!1182 = !DILocation(line: 501, column: 21, scope: !1180)
!1183 = !DILocation(line: 501, column: 3, scope: !1177)
!1184 = !DILocation(line: 502, column: 13, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 501, column: 40)
!1186 = !DILocation(line: 502, column: 23, scope: !1185)
!1187 = !DILocation(line: 502, column: 11, scope: !1185)
!1188 = !DILocation(line: 503, column: 14, scope: !1185)
!1189 = !DILocation(line: 503, column: 25, scope: !1185)
!1190 = !DILocation(line: 503, column: 12, scope: !1185)
!1191 = !DILocation(line: 504, column: 16, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 504, column: 5)
!1193 = !DILocation(line: 504, column: 14, scope: !1192)
!1194 = !DILocation(line: 504, column: 10, scope: !1192)
!1195 = !DILocation(line: 504, column: 23, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1192, file: !3, line: 504, column: 5)
!1197 = !DILocation(line: 504, column: 27, scope: !1196)
!1198 = !DILocation(line: 504, column: 5, scope: !1192)
!1199 = !DILocation(line: 505, column: 18, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 504, column: 39)
!1201 = !DILocation(line: 505, column: 16, scope: !1200)
!1202 = !DILocation(line: 506, column: 18, scope: !1200)
!1203 = !DILocation(line: 506, column: 15, scope: !1200)
!1204 = !DILocation(line: 507, column: 18, scope: !1200)
!1205 = !DILocation(line: 507, column: 15, scope: !1200)
!1206 = !DILocation(line: 508, column: 29, scope: !1200)
!1207 = !DILocation(line: 508, column: 19, scope: !1200)
!1208 = !DILocation(line: 508, column: 14, scope: !1200)
!1209 = !DILocation(line: 508, column: 17, scope: !1200)
!1210 = !DILocation(line: 509, column: 5, scope: !1200)
!1211 = !DILocation(line: 504, column: 35, scope: !1196)
!1212 = !DILocation(line: 504, column: 5, scope: !1196)
!1213 = distinct !{!1213, !1198, !1214, !783}
!1214 = !DILocation(line: 509, column: 5, scope: !1192)
!1215 = !DILocation(line: 510, column: 3, scope: !1185)
!1216 = !DILocation(line: 501, column: 36, scope: !1180)
!1217 = !DILocation(line: 501, column: 3, scope: !1180)
!1218 = distinct !{!1218, !1183, !1219, !783}
!1219 = !DILocation(line: 510, column: 3, scope: !1177)
!1220 = !DILocation(line: 511, column: 1, scope: !1137)
!1221 = distinct !DISubprogram(name: "color_quantize", scope: !3, file: !3, line: 459, type: !577, scopeLine: 462, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !608)
!1222 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1221, file: !3, line: 459, type: !169)
!1223 = !DILocation(line: 459, column: 34, scope: !1221)
!1224 = !DILocalVariable(name: "input_buf", arg: 2, scope: !1221, file: !3, line: 459, type: !204)
!1225 = !DILocation(line: 459, column: 52, scope: !1221)
!1226 = !DILocalVariable(name: "output_buf", arg: 3, scope: !1221, file: !3, line: 460, type: !204)
!1227 = !DILocation(line: 460, column: 14, scope: !1221)
!1228 = !DILocalVariable(name: "num_rows", arg: 4, scope: !1221, file: !3, line: 460, type: !195)
!1229 = !DILocation(line: 460, column: 30, scope: !1221)
!1230 = !DILocalVariable(name: "cquantize", scope: !1221, file: !3, line: 463, type: !157)
!1231 = !DILocation(line: 463, column: 20, scope: !1221)
!1232 = !DILocation(line: 463, column: 51, scope: !1221)
!1233 = !DILocation(line: 463, column: 58, scope: !1221)
!1234 = !DILocalVariable(name: "colorindex", scope: !1221, file: !3, line: 464, type: !204)
!1235 = !DILocation(line: 464, column: 14, scope: !1221)
!1236 = !DILocation(line: 464, column: 27, scope: !1221)
!1237 = !DILocation(line: 464, column: 38, scope: !1221)
!1238 = !DILocalVariable(name: "pixcode", scope: !1221, file: !3, line: 465, type: !195)
!1239 = !DILocation(line: 465, column: 16, scope: !1221)
!1240 = !DILocalVariable(name: "ci", scope: !1221, file: !3, line: 465, type: !195)
!1241 = !DILocation(line: 465, column: 25, scope: !1221)
!1242 = !DILocalVariable(name: "ptrin", scope: !1221, file: !3, line: 466, type: !206)
!1243 = !DILocation(line: 466, column: 21, scope: !1221)
!1244 = !DILocalVariable(name: "ptrout", scope: !1221, file: !3, line: 466, type: !206)
!1245 = !DILocation(line: 466, column: 28, scope: !1221)
!1246 = !DILocalVariable(name: "row", scope: !1221, file: !3, line: 467, type: !195)
!1247 = !DILocation(line: 467, column: 7, scope: !1221)
!1248 = !DILocalVariable(name: "col", scope: !1221, file: !3, line: 468, type: !211)
!1249 = !DILocation(line: 468, column: 14, scope: !1221)
!1250 = !DILocalVariable(name: "width", scope: !1221, file: !3, line: 469, type: !211)
!1251 = !DILocation(line: 469, column: 14, scope: !1221)
!1252 = !DILocation(line: 469, column: 22, scope: !1221)
!1253 = !DILocation(line: 469, column: 29, scope: !1221)
!1254 = !DILocalVariable(name: "nc", scope: !1221, file: !3, line: 470, type: !195)
!1255 = !DILocation(line: 470, column: 16, scope: !1221)
!1256 = !DILocation(line: 470, column: 21, scope: !1221)
!1257 = !DILocation(line: 470, column: 28, scope: !1221)
!1258 = !DILocation(line: 472, column: 12, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 472, column: 3)
!1260 = !DILocation(line: 472, column: 8, scope: !1259)
!1261 = !DILocation(line: 472, column: 17, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1259, file: !3, line: 472, column: 3)
!1263 = !DILocation(line: 472, column: 23, scope: !1262)
!1264 = !DILocation(line: 472, column: 21, scope: !1262)
!1265 = !DILocation(line: 472, column: 3, scope: !1259)
!1266 = !DILocation(line: 473, column: 13, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 472, column: 40)
!1268 = !DILocation(line: 473, column: 23, scope: !1267)
!1269 = !DILocation(line: 473, column: 11, scope: !1267)
!1270 = !DILocation(line: 474, column: 14, scope: !1267)
!1271 = !DILocation(line: 474, column: 25, scope: !1267)
!1272 = !DILocation(line: 474, column: 12, scope: !1267)
!1273 = !DILocation(line: 475, column: 16, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 475, column: 5)
!1275 = !DILocation(line: 475, column: 14, scope: !1274)
!1276 = !DILocation(line: 475, column: 10, scope: !1274)
!1277 = !DILocation(line: 475, column: 23, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 475, column: 5)
!1279 = !DILocation(line: 475, column: 27, scope: !1278)
!1280 = !DILocation(line: 475, column: 5, scope: !1274)
!1281 = !DILocation(line: 476, column: 15, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1278, file: !3, line: 475, column: 39)
!1283 = !DILocation(line: 477, column: 15, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1282, file: !3, line: 477, column: 7)
!1285 = !DILocation(line: 477, column: 12, scope: !1284)
!1286 = !DILocation(line: 477, column: 20, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 477, column: 7)
!1288 = !DILocation(line: 477, column: 25, scope: !1287)
!1289 = !DILocation(line: 477, column: 23, scope: !1287)
!1290 = !DILocation(line: 477, column: 7, scope: !1284)
!1291 = !DILocation(line: 478, column: 13, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1287, file: !3, line: 477, column: 35)
!1293 = !DILocation(line: 478, column: 10, scope: !1292)
!1294 = !DILocation(line: 479, column: 7, scope: !1292)
!1295 = !DILocation(line: 477, column: 31, scope: !1287)
!1296 = !DILocation(line: 477, column: 7, scope: !1287)
!1297 = distinct !{!1297, !1290, !1298, !783}
!1298 = !DILocation(line: 479, column: 7, scope: !1284)
!1299 = !DILocation(line: 480, column: 29, scope: !1282)
!1300 = !DILocation(line: 480, column: 19, scope: !1282)
!1301 = !DILocation(line: 480, column: 14, scope: !1282)
!1302 = !DILocation(line: 480, column: 17, scope: !1282)
!1303 = !DILocation(line: 481, column: 5, scope: !1282)
!1304 = !DILocation(line: 475, column: 35, scope: !1278)
!1305 = !DILocation(line: 475, column: 5, scope: !1278)
!1306 = distinct !{!1306, !1280, !1307, !783}
!1307 = !DILocation(line: 481, column: 5, scope: !1274)
!1308 = !DILocation(line: 482, column: 3, scope: !1267)
!1309 = !DILocation(line: 472, column: 36, scope: !1262)
!1310 = !DILocation(line: 472, column: 3, scope: !1262)
!1311 = distinct !{!1311, !1265, !1312, !783}
!1312 = !DILocation(line: 482, column: 3, scope: !1259)
!1313 = !DILocation(line: 483, column: 1, scope: !1221)
!1314 = distinct !DISubprogram(name: "quantize3_ord_dither", scope: !3, file: !3, line: 565, type: !577, scopeLine: 568, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !608)
!1315 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1314, file: !3, line: 565, type: !169)
!1316 = !DILocation(line: 565, column: 40, scope: !1314)
!1317 = !DILocalVariable(name: "input_buf", arg: 2, scope: !1314, file: !3, line: 565, type: !204)
!1318 = !DILocation(line: 565, column: 58, scope: !1314)
!1319 = !DILocalVariable(name: "output_buf", arg: 3, scope: !1314, file: !3, line: 566, type: !204)
!1320 = !DILocation(line: 566, column: 20, scope: !1314)
!1321 = !DILocalVariable(name: "num_rows", arg: 4, scope: !1314, file: !3, line: 566, type: !195)
!1322 = !DILocation(line: 566, column: 36, scope: !1314)
!1323 = !DILocalVariable(name: "cquantize", scope: !1314, file: !3, line: 569, type: !157)
!1324 = !DILocation(line: 569, column: 20, scope: !1314)
!1325 = !DILocation(line: 569, column: 51, scope: !1314)
!1326 = !DILocation(line: 569, column: 58, scope: !1314)
!1327 = !DILocalVariable(name: "pixcode", scope: !1314, file: !3, line: 570, type: !195)
!1328 = !DILocation(line: 570, column: 16, scope: !1314)
!1329 = !DILocalVariable(name: "input_ptr", scope: !1314, file: !3, line: 571, type: !206)
!1330 = !DILocation(line: 571, column: 21, scope: !1314)
!1331 = !DILocalVariable(name: "output_ptr", scope: !1314, file: !3, line: 572, type: !206)
!1332 = !DILocation(line: 572, column: 21, scope: !1314)
!1333 = !DILocalVariable(name: "colorindex0", scope: !1314, file: !3, line: 573, type: !206)
!1334 = !DILocation(line: 573, column: 12, scope: !1314)
!1335 = !DILocation(line: 573, column: 26, scope: !1314)
!1336 = !DILocation(line: 573, column: 37, scope: !1314)
!1337 = !DILocalVariable(name: "colorindex1", scope: !1314, file: !3, line: 574, type: !206)
!1338 = !DILocation(line: 574, column: 12, scope: !1314)
!1339 = !DILocation(line: 574, column: 26, scope: !1314)
!1340 = !DILocation(line: 574, column: 37, scope: !1314)
!1341 = !DILocalVariable(name: "colorindex2", scope: !1314, file: !3, line: 575, type: !206)
!1342 = !DILocation(line: 575, column: 12, scope: !1314)
!1343 = !DILocation(line: 575, column: 26, scope: !1314)
!1344 = !DILocation(line: 575, column: 37, scope: !1314)
!1345 = !DILocalVariable(name: "dither0", scope: !1314, file: !3, line: 576, type: !607)
!1346 = !DILocation(line: 576, column: 9, scope: !1314)
!1347 = !DILocalVariable(name: "dither1", scope: !1314, file: !3, line: 577, type: !607)
!1348 = !DILocation(line: 577, column: 9, scope: !1314)
!1349 = !DILocalVariable(name: "dither2", scope: !1314, file: !3, line: 578, type: !607)
!1350 = !DILocation(line: 578, column: 9, scope: !1314)
!1351 = !DILocalVariable(name: "row_index", scope: !1314, file: !3, line: 579, type: !195)
!1352 = !DILocation(line: 579, column: 7, scope: !1314)
!1353 = !DILocalVariable(name: "col_index", scope: !1314, file: !3, line: 579, type: !195)
!1354 = !DILocation(line: 579, column: 18, scope: !1314)
!1355 = !DILocalVariable(name: "row", scope: !1314, file: !3, line: 580, type: !195)
!1356 = !DILocation(line: 580, column: 7, scope: !1314)
!1357 = !DILocalVariable(name: "col", scope: !1314, file: !3, line: 581, type: !211)
!1358 = !DILocation(line: 581, column: 14, scope: !1314)
!1359 = !DILocalVariable(name: "width", scope: !1314, file: !3, line: 582, type: !211)
!1360 = !DILocation(line: 582, column: 14, scope: !1314)
!1361 = !DILocation(line: 582, column: 22, scope: !1314)
!1362 = !DILocation(line: 582, column: 29, scope: !1314)
!1363 = !DILocation(line: 584, column: 12, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 584, column: 3)
!1365 = !DILocation(line: 584, column: 8, scope: !1364)
!1366 = !DILocation(line: 584, column: 17, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1364, file: !3, line: 584, column: 3)
!1368 = !DILocation(line: 584, column: 23, scope: !1367)
!1369 = !DILocation(line: 584, column: 21, scope: !1367)
!1370 = !DILocation(line: 584, column: 3, scope: !1364)
!1371 = !DILocation(line: 585, column: 17, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1367, file: !3, line: 584, column: 40)
!1373 = !DILocation(line: 585, column: 28, scope: !1372)
!1374 = !DILocation(line: 585, column: 15, scope: !1372)
!1375 = !DILocation(line: 586, column: 17, scope: !1372)
!1376 = !DILocation(line: 586, column: 27, scope: !1372)
!1377 = !DILocation(line: 586, column: 15, scope: !1372)
!1378 = !DILocation(line: 587, column: 18, scope: !1372)
!1379 = !DILocation(line: 587, column: 29, scope: !1372)
!1380 = !DILocation(line: 587, column: 16, scope: !1372)
!1381 = !DILocation(line: 588, column: 15, scope: !1372)
!1382 = !DILocation(line: 588, column: 26, scope: !1372)
!1383 = !DILocation(line: 588, column: 37, scope: !1372)
!1384 = !DILocation(line: 588, column: 13, scope: !1372)
!1385 = !DILocation(line: 589, column: 15, scope: !1372)
!1386 = !DILocation(line: 589, column: 26, scope: !1372)
!1387 = !DILocation(line: 589, column: 37, scope: !1372)
!1388 = !DILocation(line: 589, column: 13, scope: !1372)
!1389 = !DILocation(line: 590, column: 15, scope: !1372)
!1390 = !DILocation(line: 590, column: 26, scope: !1372)
!1391 = !DILocation(line: 590, column: 37, scope: !1372)
!1392 = !DILocation(line: 590, column: 13, scope: !1372)
!1393 = !DILocation(line: 591, column: 15, scope: !1372)
!1394 = !DILocation(line: 593, column: 16, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1372, file: !3, line: 593, column: 5)
!1396 = !DILocation(line: 593, column: 14, scope: !1395)
!1397 = !DILocation(line: 593, column: 10, scope: !1395)
!1398 = !DILocation(line: 593, column: 23, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 593, column: 5)
!1400 = !DILocation(line: 593, column: 27, scope: !1399)
!1401 = !DILocation(line: 593, column: 5, scope: !1395)
!1402 = !DILocation(line: 594, column: 18, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1399, file: !3, line: 593, column: 39)
!1404 = !DILocation(line: 594, column: 16, scope: !1403)
!1405 = !DILocation(line: 596, column: 18, scope: !1403)
!1406 = !DILocation(line: 596, column: 15, scope: !1403)
!1407 = !DILocation(line: 598, column: 18, scope: !1403)
!1408 = !DILocation(line: 598, column: 15, scope: !1403)
!1409 = !DILocation(line: 600, column: 33, scope: !1403)
!1410 = !DILocation(line: 600, column: 23, scope: !1403)
!1411 = !DILocation(line: 600, column: 18, scope: !1403)
!1412 = !DILocation(line: 600, column: 21, scope: !1403)
!1413 = !DILocation(line: 601, column: 20, scope: !1403)
!1414 = !DILocation(line: 601, column: 30, scope: !1403)
!1415 = !DILocation(line: 601, column: 35, scope: !1403)
!1416 = !DILocation(line: 601, column: 17, scope: !1403)
!1417 = !DILocation(line: 602, column: 5, scope: !1403)
!1418 = !DILocation(line: 593, column: 35, scope: !1399)
!1419 = !DILocation(line: 593, column: 5, scope: !1399)
!1420 = distinct !{!1420, !1401, !1421, !783}
!1421 = !DILocation(line: 602, column: 5, scope: !1395)
!1422 = !DILocation(line: 603, column: 18, scope: !1372)
!1423 = !DILocation(line: 603, column: 28, scope: !1372)
!1424 = !DILocation(line: 603, column: 33, scope: !1372)
!1425 = !DILocation(line: 603, column: 15, scope: !1372)
!1426 = !DILocation(line: 604, column: 28, scope: !1372)
!1427 = !DILocation(line: 604, column: 5, scope: !1372)
!1428 = !DILocation(line: 604, column: 16, scope: !1372)
!1429 = !DILocation(line: 604, column: 26, scope: !1372)
!1430 = !DILocation(line: 605, column: 3, scope: !1372)
!1431 = !DILocation(line: 584, column: 36, scope: !1367)
!1432 = !DILocation(line: 584, column: 3, scope: !1367)
!1433 = distinct !{!1433, !1370, !1434, !783}
!1434 = !DILocation(line: 605, column: 3, scope: !1364)
!1435 = !DILocation(line: 606, column: 1, scope: !1314)
!1436 = distinct !DISubprogram(name: "quantize_ord_dither", scope: !3, file: !3, line: 515, type: !577, scopeLine: 518, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !608)
!1437 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1436, file: !3, line: 515, type: !169)
!1438 = !DILocation(line: 515, column: 39, scope: !1436)
!1439 = !DILocalVariable(name: "input_buf", arg: 2, scope: !1436, file: !3, line: 515, type: !204)
!1440 = !DILocation(line: 515, column: 57, scope: !1436)
!1441 = !DILocalVariable(name: "output_buf", arg: 3, scope: !1436, file: !3, line: 516, type: !204)
!1442 = !DILocation(line: 516, column: 19, scope: !1436)
!1443 = !DILocalVariable(name: "num_rows", arg: 4, scope: !1436, file: !3, line: 516, type: !195)
!1444 = !DILocation(line: 516, column: 35, scope: !1436)
!1445 = !DILocalVariable(name: "cquantize", scope: !1436, file: !3, line: 519, type: !157)
!1446 = !DILocation(line: 519, column: 20, scope: !1436)
!1447 = !DILocation(line: 519, column: 51, scope: !1436)
!1448 = !DILocation(line: 519, column: 58, scope: !1436)
!1449 = !DILocalVariable(name: "input_ptr", scope: !1436, file: !3, line: 520, type: !206)
!1450 = !DILocation(line: 520, column: 21, scope: !1436)
!1451 = !DILocalVariable(name: "output_ptr", scope: !1436, file: !3, line: 521, type: !206)
!1452 = !DILocation(line: 521, column: 21, scope: !1436)
!1453 = !DILocalVariable(name: "colorindex_ci", scope: !1436, file: !3, line: 522, type: !206)
!1454 = !DILocation(line: 522, column: 12, scope: !1436)
!1455 = !DILocalVariable(name: "dither", scope: !1436, file: !3, line: 523, type: !607)
!1456 = !DILocation(line: 523, column: 9, scope: !1436)
!1457 = !DILocalVariable(name: "row_index", scope: !1436, file: !3, line: 524, type: !195)
!1458 = !DILocation(line: 524, column: 7, scope: !1436)
!1459 = !DILocalVariable(name: "col_index", scope: !1436, file: !3, line: 524, type: !195)
!1460 = !DILocation(line: 524, column: 18, scope: !1436)
!1461 = !DILocalVariable(name: "nc", scope: !1436, file: !3, line: 525, type: !195)
!1462 = !DILocation(line: 525, column: 7, scope: !1436)
!1463 = !DILocation(line: 525, column: 12, scope: !1436)
!1464 = !DILocation(line: 525, column: 19, scope: !1436)
!1465 = !DILocalVariable(name: "ci", scope: !1436, file: !3, line: 526, type: !195)
!1466 = !DILocation(line: 526, column: 7, scope: !1436)
!1467 = !DILocalVariable(name: "row", scope: !1436, file: !3, line: 527, type: !195)
!1468 = !DILocation(line: 527, column: 7, scope: !1436)
!1469 = !DILocalVariable(name: "col", scope: !1436, file: !3, line: 528, type: !211)
!1470 = !DILocation(line: 528, column: 14, scope: !1436)
!1471 = !DILocalVariable(name: "width", scope: !1436, file: !3, line: 529, type: !211)
!1472 = !DILocation(line: 529, column: 14, scope: !1436)
!1473 = !DILocation(line: 529, column: 22, scope: !1436)
!1474 = !DILocation(line: 529, column: 29, scope: !1436)
!1475 = !DILocation(line: 531, column: 12, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1436, file: !3, line: 531, column: 3)
!1477 = !DILocation(line: 531, column: 8, scope: !1476)
!1478 = !DILocation(line: 531, column: 17, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1476, file: !3, line: 531, column: 3)
!1480 = !DILocation(line: 531, column: 23, scope: !1479)
!1481 = !DILocation(line: 531, column: 21, scope: !1479)
!1482 = !DILocation(line: 531, column: 3, scope: !1476)
!1483 = !DILocation(line: 533, column: 28, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1479, file: !3, line: 531, column: 40)
!1485 = !DILocation(line: 533, column: 39, scope: !1484)
!1486 = !DILocation(line: 534, column: 18, scope: !1484)
!1487 = !DILocation(line: 534, column: 24, scope: !1484)
!1488 = !DILocation(line: 533, column: 5, scope: !1484)
!1489 = !DILocation(line: 535, column: 17, scope: !1484)
!1490 = !DILocation(line: 535, column: 28, scope: !1484)
!1491 = !DILocation(line: 535, column: 15, scope: !1484)
!1492 = !DILocation(line: 536, column: 13, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1484, file: !3, line: 536, column: 5)
!1494 = !DILocation(line: 536, column: 10, scope: !1493)
!1495 = !DILocation(line: 536, column: 18, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1493, file: !3, line: 536, column: 5)
!1497 = !DILocation(line: 536, column: 23, scope: !1496)
!1498 = !DILocation(line: 536, column: 21, scope: !1496)
!1499 = !DILocation(line: 536, column: 5, scope: !1493)
!1500 = !DILocation(line: 537, column: 19, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1496, file: !3, line: 536, column: 33)
!1502 = !DILocation(line: 537, column: 29, scope: !1501)
!1503 = !DILocation(line: 537, column: 36, scope: !1501)
!1504 = !DILocation(line: 537, column: 34, scope: !1501)
!1505 = !DILocation(line: 537, column: 17, scope: !1501)
!1506 = !DILocation(line: 538, column: 20, scope: !1501)
!1507 = !DILocation(line: 538, column: 31, scope: !1501)
!1508 = !DILocation(line: 538, column: 18, scope: !1501)
!1509 = !DILocation(line: 539, column: 23, scope: !1501)
!1510 = !DILocation(line: 539, column: 34, scope: !1501)
!1511 = !DILocation(line: 539, column: 45, scope: !1501)
!1512 = !DILocation(line: 539, column: 21, scope: !1501)
!1513 = !DILocation(line: 540, column: 16, scope: !1501)
!1514 = !DILocation(line: 540, column: 27, scope: !1501)
!1515 = !DILocation(line: 540, column: 35, scope: !1501)
!1516 = !DILocation(line: 540, column: 39, scope: !1501)
!1517 = !DILocation(line: 540, column: 14, scope: !1501)
!1518 = !DILocation(line: 541, column: 17, scope: !1501)
!1519 = !DILocation(line: 543, column: 18, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1501, file: !3, line: 543, column: 7)
!1521 = !DILocation(line: 543, column: 16, scope: !1520)
!1522 = !DILocation(line: 543, column: 12, scope: !1520)
!1523 = !DILocation(line: 543, column: 25, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1520, file: !3, line: 543, column: 7)
!1525 = !DILocation(line: 543, column: 29, scope: !1524)
!1526 = !DILocation(line: 543, column: 7, scope: !1520)
!1527 = !DILocation(line: 551, column: 17, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1524, file: !3, line: 543, column: 41)
!1529 = !DILocation(line: 551, column: 31, scope: !1528)
!1530 = !DILocation(line: 551, column: 54, scope: !1528)
!1531 = !DILocation(line: 551, column: 61, scope: !1528)
!1532 = !DILocation(line: 551, column: 53, scope: !1528)
!1533 = !DILocation(line: 551, column: 3, scope: !1528)
!1534 = !DILocation(line: 551, column: 14, scope: !1528)
!1535 = !DILocation(line: 552, column: 15, scope: !1528)
!1536 = !DILocation(line: 552, column: 12, scope: !1528)
!1537 = !DILocation(line: 553, column: 12, scope: !1528)
!1538 = !DILocation(line: 554, column: 15, scope: !1528)
!1539 = !DILocation(line: 554, column: 25, scope: !1528)
!1540 = !DILocation(line: 554, column: 30, scope: !1528)
!1541 = !DILocation(line: 554, column: 12, scope: !1528)
!1542 = !DILocation(line: 555, column: 7, scope: !1528)
!1543 = !DILocation(line: 543, column: 37, scope: !1524)
!1544 = !DILocation(line: 543, column: 7, scope: !1524)
!1545 = distinct !{!1545, !1526, !1546, !783}
!1546 = !DILocation(line: 555, column: 7, scope: !1520)
!1547 = !DILocation(line: 556, column: 5, scope: !1501)
!1548 = !DILocation(line: 536, column: 29, scope: !1496)
!1549 = !DILocation(line: 536, column: 5, scope: !1496)
!1550 = distinct !{!1550, !1499, !1551, !783}
!1551 = !DILocation(line: 556, column: 5, scope: !1493)
!1552 = !DILocation(line: 558, column: 18, scope: !1484)
!1553 = !DILocation(line: 558, column: 28, scope: !1484)
!1554 = !DILocation(line: 558, column: 33, scope: !1484)
!1555 = !DILocation(line: 558, column: 15, scope: !1484)
!1556 = !DILocation(line: 559, column: 28, scope: !1484)
!1557 = !DILocation(line: 559, column: 5, scope: !1484)
!1558 = !DILocation(line: 559, column: 16, scope: !1484)
!1559 = !DILocation(line: 559, column: 26, scope: !1484)
!1560 = !DILocation(line: 560, column: 3, scope: !1484)
!1561 = !DILocation(line: 531, column: 36, scope: !1479)
!1562 = !DILocation(line: 531, column: 3, scope: !1479)
!1563 = distinct !{!1563, !1482, !1564, !783}
!1564 = !DILocation(line: 560, column: 3, scope: !1476)
!1565 = !DILocation(line: 561, column: 1, scope: !1436)
!1566 = distinct !DISubprogram(name: "create_odither_tables", scope: !3, file: !3, line: 432, type: !315, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !608)
!1567 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1566, file: !3, line: 432, type: !169)
!1568 = !DILocation(line: 432, column: 41, scope: !1566)
!1569 = !DILocalVariable(name: "cquantize", scope: !1566, file: !3, line: 434, type: !157)
!1570 = !DILocation(line: 434, column: 20, scope: !1566)
!1571 = !DILocation(line: 434, column: 51, scope: !1566)
!1572 = !DILocation(line: 434, column: 58, scope: !1566)
!1573 = !DILocalVariable(name: "odither", scope: !1566, file: !3, line: 435, type: !590)
!1574 = !DILocation(line: 435, column: 22, scope: !1566)
!1575 = !DILocalVariable(name: "i", scope: !1566, file: !3, line: 436, type: !195)
!1576 = !DILocation(line: 436, column: 7, scope: !1566)
!1577 = !DILocalVariable(name: "j", scope: !1566, file: !3, line: 436, type: !195)
!1578 = !DILocation(line: 436, column: 10, scope: !1566)
!1579 = !DILocalVariable(name: "nci", scope: !1566, file: !3, line: 436, type: !195)
!1580 = !DILocation(line: 436, column: 13, scope: !1566)
!1581 = !DILocation(line: 438, column: 10, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1566, file: !3, line: 438, column: 3)
!1583 = !DILocation(line: 438, column: 8, scope: !1582)
!1584 = !DILocation(line: 438, column: 15, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1582, file: !3, line: 438, column: 3)
!1586 = !DILocation(line: 438, column: 19, scope: !1585)
!1587 = !DILocation(line: 438, column: 26, scope: !1585)
!1588 = !DILocation(line: 438, column: 17, scope: !1585)
!1589 = !DILocation(line: 438, column: 3, scope: !1582)
!1590 = !DILocation(line: 439, column: 11, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1585, file: !3, line: 438, column: 53)
!1592 = !DILocation(line: 439, column: 22, scope: !1591)
!1593 = !DILocation(line: 439, column: 30, scope: !1591)
!1594 = !DILocation(line: 439, column: 9, scope: !1591)
!1595 = !DILocation(line: 440, column: 13, scope: !1591)
!1596 = !DILocation(line: 441, column: 12, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1591, file: !3, line: 441, column: 5)
!1598 = !DILocation(line: 441, column: 10, scope: !1597)
!1599 = !DILocation(line: 441, column: 17, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1597, file: !3, line: 441, column: 5)
!1601 = !DILocation(line: 441, column: 21, scope: !1600)
!1602 = !DILocation(line: 441, column: 19, scope: !1600)
!1603 = !DILocation(line: 441, column: 5, scope: !1597)
!1604 = !DILocation(line: 442, column: 11, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1606, file: !3, line: 442, column: 11)
!1606 = distinct !DILexicalBlock(scope: !1600, file: !3, line: 441, column: 29)
!1607 = !DILocation(line: 442, column: 18, scope: !1605)
!1608 = !DILocation(line: 442, column: 29, scope: !1605)
!1609 = !DILocation(line: 442, column: 37, scope: !1605)
!1610 = !DILocation(line: 442, column: 15, scope: !1605)
!1611 = !DILocation(line: 443, column: 12, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1605, file: !3, line: 442, column: 41)
!1613 = !DILocation(line: 443, column: 23, scope: !1612)
!1614 = !DILocation(line: 443, column: 31, scope: !1612)
!1615 = !DILocation(line: 443, column: 10, scope: !1612)
!1616 = !DILocation(line: 444, column: 2, scope: !1612)
!1617 = !DILocation(line: 446, column: 5, scope: !1606)
!1618 = !DILocation(line: 441, column: 25, scope: !1600)
!1619 = !DILocation(line: 441, column: 5, scope: !1600)
!1620 = distinct !{!1620, !1603, !1621, !783}
!1621 = !DILocation(line: 446, column: 5, scope: !1597)
!1622 = !DILocation(line: 447, column: 9, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1591, file: !3, line: 447, column: 9)
!1624 = !DILocation(line: 447, column: 17, scope: !1623)
!1625 = !DILocation(line: 448, column: 36, scope: !1623)
!1626 = !DILocation(line: 448, column: 43, scope: !1623)
!1627 = !DILocation(line: 448, column: 17, scope: !1623)
!1628 = !DILocation(line: 448, column: 15, scope: !1623)
!1629 = !DILocation(line: 448, column: 7, scope: !1623)
!1630 = !DILocation(line: 449, column: 29, scope: !1591)
!1631 = !DILocation(line: 449, column: 5, scope: !1591)
!1632 = !DILocation(line: 449, column: 16, scope: !1591)
!1633 = !DILocation(line: 449, column: 24, scope: !1591)
!1634 = !DILocation(line: 449, column: 27, scope: !1591)
!1635 = !DILocation(line: 450, column: 3, scope: !1591)
!1636 = !DILocation(line: 438, column: 49, scope: !1585)
!1637 = !DILocation(line: 438, column: 3, scope: !1585)
!1638 = distinct !{!1638, !1589, !1639, !783}
!1639 = !DILocation(line: 450, column: 3, scope: !1582)
!1640 = !DILocation(line: 451, column: 1, scope: !1566)
!1641 = distinct !DISubprogram(name: "quantize_fs_dither", scope: !3, file: !3, line: 610, type: !577, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !608)
!1642 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1641, file: !3, line: 610, type: !169)
!1643 = !DILocation(line: 610, column: 38, scope: !1641)
!1644 = !DILocalVariable(name: "input_buf", arg: 2, scope: !1641, file: !3, line: 610, type: !204)
!1645 = !DILocation(line: 610, column: 56, scope: !1641)
!1646 = !DILocalVariable(name: "output_buf", arg: 3, scope: !1641, file: !3, line: 611, type: !204)
!1647 = !DILocation(line: 611, column: 18, scope: !1641)
!1648 = !DILocalVariable(name: "num_rows", arg: 4, scope: !1641, file: !3, line: 611, type: !195)
!1649 = !DILocation(line: 611, column: 34, scope: !1641)
!1650 = !DILocalVariable(name: "cquantize", scope: !1641, file: !3, line: 614, type: !157)
!1651 = !DILocation(line: 614, column: 20, scope: !1641)
!1652 = !DILocation(line: 614, column: 51, scope: !1641)
!1653 = !DILocation(line: 614, column: 58, scope: !1641)
!1654 = !DILocalVariable(name: "cur", scope: !1641, file: !3, line: 615, type: !1655)
!1655 = !DIDerivedType(tag: DW_TAG_typedef, name: "LOCFSERROR", file: !3, line: 129, baseType: !195)
!1656 = !DILocation(line: 615, column: 23, scope: !1641)
!1657 = !DILocalVariable(name: "belowerr", scope: !1641, file: !3, line: 616, type: !1655)
!1658 = !DILocation(line: 616, column: 14, scope: !1641)
!1659 = !DILocalVariable(name: "bpreverr", scope: !1641, file: !3, line: 617, type: !1655)
!1660 = !DILocation(line: 617, column: 14, scope: !1641)
!1661 = !DILocalVariable(name: "bnexterr", scope: !1641, file: !3, line: 618, type: !1655)
!1662 = !DILocation(line: 618, column: 14, scope: !1641)
!1663 = !DILocalVariable(name: "delta", scope: !1641, file: !3, line: 619, type: !1655)
!1664 = !DILocation(line: 619, column: 14, scope: !1641)
!1665 = !DILocalVariable(name: "errorptr", scope: !1641, file: !3, line: 620, type: !595)
!1666 = !DILocation(line: 620, column: 21, scope: !1641)
!1667 = !DILocalVariable(name: "input_ptr", scope: !1641, file: !3, line: 621, type: !206)
!1668 = !DILocation(line: 621, column: 21, scope: !1641)
!1669 = !DILocalVariable(name: "output_ptr", scope: !1641, file: !3, line: 622, type: !206)
!1670 = !DILocation(line: 622, column: 21, scope: !1641)
!1671 = !DILocalVariable(name: "colorindex_ci", scope: !1641, file: !3, line: 623, type: !206)
!1672 = !DILocation(line: 623, column: 12, scope: !1641)
!1673 = !DILocalVariable(name: "colormap_ci", scope: !1641, file: !3, line: 624, type: !206)
!1674 = !DILocation(line: 624, column: 12, scope: !1641)
!1675 = !DILocalVariable(name: "pixcode", scope: !1641, file: !3, line: 625, type: !195)
!1676 = !DILocation(line: 625, column: 7, scope: !1641)
!1677 = !DILocalVariable(name: "nc", scope: !1641, file: !3, line: 626, type: !195)
!1678 = !DILocation(line: 626, column: 7, scope: !1641)
!1679 = !DILocation(line: 626, column: 12, scope: !1641)
!1680 = !DILocation(line: 626, column: 19, scope: !1641)
!1681 = !DILocalVariable(name: "dir", scope: !1641, file: !3, line: 627, type: !195)
!1682 = !DILocation(line: 627, column: 7, scope: !1641)
!1683 = !DILocalVariable(name: "dirnc", scope: !1641, file: !3, line: 628, type: !195)
!1684 = !DILocation(line: 628, column: 7, scope: !1641)
!1685 = !DILocalVariable(name: "ci", scope: !1641, file: !3, line: 629, type: !195)
!1686 = !DILocation(line: 629, column: 7, scope: !1641)
!1687 = !DILocalVariable(name: "row", scope: !1641, file: !3, line: 630, type: !195)
!1688 = !DILocation(line: 630, column: 7, scope: !1641)
!1689 = !DILocalVariable(name: "col", scope: !1641, file: !3, line: 631, type: !211)
!1690 = !DILocation(line: 631, column: 14, scope: !1641)
!1691 = !DILocalVariable(name: "width", scope: !1641, file: !3, line: 632, type: !211)
!1692 = !DILocation(line: 632, column: 14, scope: !1641)
!1693 = !DILocation(line: 632, column: 22, scope: !1641)
!1694 = !DILocation(line: 632, column: 29, scope: !1641)
!1695 = !DILocalVariable(name: "range_limit", scope: !1641, file: !3, line: 633, type: !207)
!1696 = !DILocation(line: 633, column: 12, scope: !1641)
!1697 = !DILocation(line: 633, column: 26, scope: !1641)
!1698 = !DILocation(line: 633, column: 33, scope: !1641)
!1699 = !DILocation(line: 636, column: 12, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1641, file: !3, line: 636, column: 3)
!1701 = !DILocation(line: 636, column: 8, scope: !1700)
!1702 = !DILocation(line: 636, column: 17, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1700, file: !3, line: 636, column: 3)
!1704 = !DILocation(line: 636, column: 23, scope: !1703)
!1705 = !DILocation(line: 636, column: 21, scope: !1703)
!1706 = !DILocation(line: 636, column: 3, scope: !1700)
!1707 = !DILocation(line: 638, column: 28, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1703, file: !3, line: 636, column: 40)
!1709 = !DILocation(line: 638, column: 39, scope: !1708)
!1710 = !DILocation(line: 639, column: 18, scope: !1708)
!1711 = !DILocation(line: 639, column: 24, scope: !1708)
!1712 = !DILocation(line: 638, column: 5, scope: !1708)
!1713 = !DILocation(line: 640, column: 13, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1708, file: !3, line: 640, column: 5)
!1715 = !DILocation(line: 640, column: 10, scope: !1714)
!1716 = !DILocation(line: 640, column: 18, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1714, file: !3, line: 640, column: 5)
!1718 = !DILocation(line: 640, column: 23, scope: !1717)
!1719 = !DILocation(line: 640, column: 21, scope: !1717)
!1720 = !DILocation(line: 640, column: 5, scope: !1714)
!1721 = !DILocation(line: 641, column: 19, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1717, file: !3, line: 640, column: 33)
!1723 = !DILocation(line: 641, column: 29, scope: !1722)
!1724 = !DILocation(line: 641, column: 36, scope: !1722)
!1725 = !DILocation(line: 641, column: 34, scope: !1722)
!1726 = !DILocation(line: 641, column: 17, scope: !1722)
!1727 = !DILocation(line: 642, column: 20, scope: !1722)
!1728 = !DILocation(line: 642, column: 31, scope: !1722)
!1729 = !DILocation(line: 642, column: 18, scope: !1722)
!1730 = !DILocation(line: 643, column: 11, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1722, file: !3, line: 643, column: 11)
!1732 = !DILocation(line: 643, column: 22, scope: !1731)
!1733 = !DILocation(line: 645, column: 16, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1731, file: !3, line: 643, column: 34)
!1735 = !DILocation(line: 645, column: 21, scope: !1734)
!1736 = !DILocation(line: 645, column: 27, scope: !1734)
!1737 = !DILocation(line: 645, column: 25, scope: !1734)
!1738 = !DILocation(line: 645, column: 12, scope: !1734)
!1739 = !DILocation(line: 646, column: 16, scope: !1734)
!1740 = !DILocation(line: 646, column: 21, scope: !1734)
!1741 = !DILocation(line: 646, column: 13, scope: !1734)
!1742 = !DILocation(line: 647, column: 6, scope: !1734)
!1743 = !DILocation(line: 648, column: 11, scope: !1734)
!1744 = !DILocation(line: 648, column: 10, scope: !1734)
!1745 = !DILocation(line: 648, column: 8, scope: !1734)
!1746 = !DILocation(line: 649, column: 13, scope: !1734)
!1747 = !DILocation(line: 649, column: 24, scope: !1734)
!1748 = !DILocation(line: 649, column: 33, scope: !1734)
!1749 = !DILocation(line: 649, column: 40, scope: !1734)
!1750 = !DILocation(line: 649, column: 45, scope: !1734)
!1751 = !DILocation(line: 649, column: 37, scope: !1734)
!1752 = !DILocation(line: 649, column: 11, scope: !1734)
!1753 = !DILocation(line: 650, column: 7, scope: !1734)
!1754 = !DILocation(line: 652, column: 6, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1731, file: !3, line: 650, column: 14)
!1756 = !DILocation(line: 653, column: 10, scope: !1755)
!1757 = !DILocation(line: 653, column: 8, scope: !1755)
!1758 = !DILocation(line: 654, column: 13, scope: !1755)
!1759 = !DILocation(line: 654, column: 24, scope: !1755)
!1760 = !DILocation(line: 654, column: 33, scope: !1755)
!1761 = !DILocation(line: 654, column: 11, scope: !1755)
!1762 = !DILocation(line: 656, column: 23, scope: !1722)
!1763 = !DILocation(line: 656, column: 34, scope: !1722)
!1764 = !DILocation(line: 656, column: 45, scope: !1722)
!1765 = !DILocation(line: 656, column: 21, scope: !1722)
!1766 = !DILocation(line: 657, column: 21, scope: !1722)
!1767 = !DILocation(line: 657, column: 32, scope: !1722)
!1768 = !DILocation(line: 657, column: 44, scope: !1722)
!1769 = !DILocation(line: 657, column: 19, scope: !1722)
!1770 = !DILocation(line: 659, column: 11, scope: !1722)
!1771 = !DILocation(line: 661, column: 27, scope: !1722)
!1772 = !DILocation(line: 661, column: 16, scope: !1722)
!1773 = !DILocation(line: 663, column: 18, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1722, file: !3, line: 663, column: 7)
!1775 = !DILocation(line: 663, column: 16, scope: !1774)
!1776 = !DILocation(line: 663, column: 12, scope: !1774)
!1777 = !DILocation(line: 663, column: 25, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1774, file: !3, line: 663, column: 7)
!1779 = !DILocation(line: 663, column: 29, scope: !1778)
!1780 = !DILocation(line: 663, column: 7, scope: !1774)
!1781 = !DILocation(line: 672, column: 8, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1778, file: !3, line: 663, column: 41)
!1783 = !DILocation(line: 672, column: 6, scope: !1782)
!1784 = !DILocation(line: 677, column: 9, scope: !1782)
!1785 = !DILocation(line: 677, column: 6, scope: !1782)
!1786 = !DILocation(line: 678, column: 8, scope: !1782)
!1787 = !DILocation(line: 678, column: 6, scope: !1782)
!1788 = !DILocation(line: 680, column: 12, scope: !1782)
!1789 = !DILocation(line: 680, column: 10, scope: !1782)
!1790 = !DILocation(line: 681, column: 27, scope: !1782)
!1791 = !DILocation(line: 681, column: 17, scope: !1782)
!1792 = !DILocation(line: 681, column: 3, scope: !1782)
!1793 = !DILocation(line: 681, column: 14, scope: !1782)
!1794 = !DILocation(line: 685, column: 9, scope: !1782)
!1795 = !DILocation(line: 685, column: 6, scope: !1782)
!1796 = !DILocation(line: 690, column: 13, scope: !1782)
!1797 = !DILocation(line: 690, column: 11, scope: !1782)
!1798 = !DILocation(line: 691, column: 10, scope: !1782)
!1799 = !DILocation(line: 691, column: 14, scope: !1782)
!1800 = !DILocation(line: 691, column: 8, scope: !1782)
!1801 = !DILocation(line: 692, column: 9, scope: !1782)
!1802 = !DILocation(line: 692, column: 6, scope: !1782)
!1803 = !DILocation(line: 693, column: 27, scope: !1782)
!1804 = !DILocation(line: 693, column: 38, scope: !1782)
!1805 = !DILocation(line: 693, column: 36, scope: !1782)
!1806 = !DILocation(line: 693, column: 16, scope: !1782)
!1807 = !DILocation(line: 693, column: 2, scope: !1782)
!1808 = !DILocation(line: 693, column: 14, scope: !1782)
!1809 = !DILocation(line: 694, column: 9, scope: !1782)
!1810 = !DILocation(line: 694, column: 6, scope: !1782)
!1811 = !DILocation(line: 695, column: 13, scope: !1782)
!1812 = !DILocation(line: 695, column: 24, scope: !1782)
!1813 = !DILocation(line: 695, column: 22, scope: !1782)
!1814 = !DILocation(line: 695, column: 11, scope: !1782)
!1815 = !DILocation(line: 696, column: 13, scope: !1782)
!1816 = !DILocation(line: 696, column: 11, scope: !1782)
!1817 = !DILocation(line: 697, column: 9, scope: !1782)
!1818 = !DILocation(line: 697, column: 6, scope: !1782)
!1819 = !DILocation(line: 702, column: 15, scope: !1782)
!1820 = !DILocation(line: 702, column: 12, scope: !1782)
!1821 = !DILocation(line: 703, column: 16, scope: !1782)
!1822 = !DILocation(line: 703, column: 13, scope: !1782)
!1823 = !DILocation(line: 704, column: 14, scope: !1782)
!1824 = !DILocation(line: 704, column: 11, scope: !1782)
!1825 = !DILocation(line: 705, column: 7, scope: !1782)
!1826 = !DILocation(line: 663, column: 37, scope: !1778)
!1827 = !DILocation(line: 663, column: 7, scope: !1778)
!1828 = distinct !{!1828, !1780, !1829, !783}
!1829 = !DILocation(line: 705, column: 7, scope: !1774)
!1830 = !DILocation(line: 710, column: 31, scope: !1722)
!1831 = !DILocation(line: 710, column: 21, scope: !1722)
!1832 = !DILocation(line: 710, column: 7, scope: !1722)
!1833 = !DILocation(line: 710, column: 19, scope: !1722)
!1834 = !DILocation(line: 711, column: 5, scope: !1722)
!1835 = !DILocation(line: 640, column: 29, scope: !1717)
!1836 = !DILocation(line: 640, column: 5, scope: !1717)
!1837 = distinct !{!1837, !1720, !1838, !783}
!1838 = !DILocation(line: 711, column: 5, scope: !1714)
!1839 = !DILocation(line: 712, column: 30, scope: !1708)
!1840 = !DILocation(line: 712, column: 41, scope: !1708)
!1841 = !DILocation(line: 712, column: 5, scope: !1708)
!1842 = !DILocation(line: 712, column: 16, scope: !1708)
!1843 = !DILocation(line: 712, column: 27, scope: !1708)
!1844 = !DILocation(line: 713, column: 3, scope: !1708)
!1845 = !DILocation(line: 636, column: 36, scope: !1703)
!1846 = !DILocation(line: 636, column: 3, scope: !1703)
!1847 = distinct !{!1847, !1706, !1848, !783}
!1848 = !DILocation(line: 713, column: 3, scope: !1700)
!1849 = !DILocation(line: 714, column: 1, scope: !1641)
!1850 = distinct !DISubprogram(name: "make_odither_array", scope: !3, file: !3, line: 396, type: !1851, scopeLine: 397, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !608)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{!590, !169, !195}
!1853 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1850, file: !3, line: 396, type: !169)
!1854 = !DILocation(line: 396, column: 38, scope: !1850)
!1855 = !DILocalVariable(name: "ncolors", arg: 2, scope: !1850, file: !3, line: 396, type: !195)
!1856 = !DILocation(line: 396, column: 49, scope: !1850)
!1857 = !DILocalVariable(name: "odither", scope: !1850, file: !3, line: 398, type: !590)
!1858 = !DILocation(line: 398, column: 22, scope: !1850)
!1859 = !DILocalVariable(name: "j", scope: !1850, file: !3, line: 399, type: !195)
!1860 = !DILocation(line: 399, column: 7, scope: !1850)
!1861 = !DILocalVariable(name: "k", scope: !1850, file: !3, line: 399, type: !195)
!1862 = !DILocation(line: 399, column: 9, scope: !1850)
!1863 = !DILocalVariable(name: "num", scope: !1850, file: !3, line: 400, type: !600)
!1864 = !DILocation(line: 400, column: 9, scope: !1850)
!1865 = !DILocalVariable(name: "den", scope: !1850, file: !3, line: 400, type: !600)
!1866 = !DILocation(line: 400, column: 13, scope: !1850)
!1867 = !DILocation(line: 403, column: 7, scope: !1850)
!1868 = !DILocation(line: 403, column: 14, scope: !1850)
!1869 = !DILocation(line: 403, column: 19, scope: !1850)
!1870 = !DILocation(line: 403, column: 48, scope: !1850)
!1871 = !DILocation(line: 403, column: 5, scope: !1850)
!1872 = !DILocation(line: 402, column: 11, scope: !1850)
!1873 = !DILocation(line: 410, column: 39, scope: !1850)
!1874 = !DILocation(line: 410, column: 47, scope: !1850)
!1875 = !DILocation(line: 410, column: 30, scope: !1850)
!1876 = !DILocation(line: 410, column: 27, scope: !1850)
!1877 = !DILocation(line: 410, column: 7, scope: !1850)
!1878 = !DILocation(line: 411, column: 10, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1850, file: !3, line: 411, column: 3)
!1880 = !DILocation(line: 411, column: 8, scope: !1879)
!1881 = !DILocation(line: 411, column: 15, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1879, file: !3, line: 411, column: 3)
!1883 = !DILocation(line: 411, column: 17, scope: !1882)
!1884 = !DILocation(line: 411, column: 3, scope: !1879)
!1885 = !DILocation(line: 412, column: 12, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1887, file: !3, line: 412, column: 5)
!1887 = distinct !DILexicalBlock(scope: !1882, file: !3, line: 411, column: 38)
!1888 = !DILocation(line: 412, column: 10, scope: !1886)
!1889 = !DILocation(line: 412, column: 17, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1886, file: !3, line: 412, column: 5)
!1891 = !DILocation(line: 412, column: 19, scope: !1890)
!1892 = !DILocation(line: 412, column: 5, scope: !1886)
!1893 = !DILocation(line: 413, column: 68, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1890, file: !3, line: 412, column: 40)
!1895 = !DILocation(line: 413, column: 49, scope: !1894)
!1896 = !DILocation(line: 413, column: 71, scope: !1894)
!1897 = !DILocation(line: 413, column: 44, scope: !1894)
!1898 = !DILocation(line: 413, column: 42, scope: !1894)
!1899 = !DILocation(line: 413, column: 39, scope: !1894)
!1900 = !DILocation(line: 413, column: 14, scope: !1894)
!1901 = !DILocation(line: 414, column: 6, scope: !1894)
!1902 = !DILocation(line: 413, column: 11, scope: !1894)
!1903 = !DILocation(line: 418, column: 30, scope: !1894)
!1904 = !DILocation(line: 418, column: 33, scope: !1894)
!1905 = !DILocation(line: 418, column: 42, scope: !1894)
!1906 = !DILocation(line: 418, column: 41, scope: !1894)
!1907 = !DILocation(line: 418, column: 47, scope: !1894)
!1908 = !DILocation(line: 418, column: 46, scope: !1894)
!1909 = !DILocation(line: 418, column: 38, scope: !1894)
!1910 = !DILocation(line: 418, column: 54, scope: !1894)
!1911 = !DILocation(line: 418, column: 58, scope: !1894)
!1912 = !DILocation(line: 418, column: 57, scope: !1894)
!1913 = !DILocation(line: 418, column: 23, scope: !1894)
!1914 = !DILocation(line: 418, column: 7, scope: !1894)
!1915 = !DILocation(line: 418, column: 15, scope: !1894)
!1916 = !DILocation(line: 418, column: 18, scope: !1894)
!1917 = !DILocation(line: 418, column: 21, scope: !1894)
!1918 = !DILocation(line: 419, column: 5, scope: !1894)
!1919 = !DILocation(line: 412, column: 36, scope: !1890)
!1920 = !DILocation(line: 412, column: 5, scope: !1890)
!1921 = distinct !{!1921, !1892, !1922, !783}
!1922 = !DILocation(line: 419, column: 5, scope: !1886)
!1923 = !DILocation(line: 420, column: 3, scope: !1887)
!1924 = !DILocation(line: 411, column: 34, scope: !1882)
!1925 = !DILocation(line: 411, column: 3, scope: !1882)
!1926 = distinct !{!1926, !1884, !1927, !783}
!1927 = !DILocation(line: 420, column: 3, scope: !1879)
!1928 = !DILocation(line: 421, column: 10, scope: !1850)
!1929 = !DILocation(line: 421, column: 3, scope: !1850)
!1930 = !DILocalVariable(name: "cinfo", arg: 1, scope: !604, file: !3, line: 186, type: !169)
!1931 = !DILocation(line: 186, column: 34, scope: !604)
!1932 = !DILocalVariable(name: "Ncolors", arg: 2, scope: !604, file: !3, line: 186, type: !607)
!1933 = !DILocation(line: 186, column: 45, scope: !604)
!1934 = !DILocalVariable(name: "nc", scope: !604, file: !3, line: 191, type: !195)
!1935 = !DILocation(line: 191, column: 7, scope: !604)
!1936 = !DILocation(line: 191, column: 12, scope: !604)
!1937 = !DILocation(line: 191, column: 19, scope: !604)
!1938 = !DILocalVariable(name: "max_colors", scope: !604, file: !3, line: 192, type: !195)
!1939 = !DILocation(line: 192, column: 7, scope: !604)
!1940 = !DILocation(line: 192, column: 20, scope: !604)
!1941 = !DILocation(line: 192, column: 27, scope: !604)
!1942 = !DILocalVariable(name: "total_colors", scope: !604, file: !3, line: 193, type: !195)
!1943 = !DILocation(line: 193, column: 7, scope: !604)
!1944 = !DILocalVariable(name: "iroot", scope: !604, file: !3, line: 193, type: !195)
!1945 = !DILocation(line: 193, column: 21, scope: !604)
!1946 = !DILocalVariable(name: "i", scope: !604, file: !3, line: 193, type: !195)
!1947 = !DILocation(line: 193, column: 28, scope: !604)
!1948 = !DILocalVariable(name: "j", scope: !604, file: !3, line: 193, type: !195)
!1949 = !DILocation(line: 193, column: 31, scope: !604)
!1950 = !DILocalVariable(name: "changed", scope: !604, file: !3, line: 194, type: !233)
!1951 = !DILocation(line: 194, column: 11, scope: !604)
!1952 = !DILocalVariable(name: "temp", scope: !604, file: !3, line: 195, type: !256)
!1953 = !DILocation(line: 195, column: 8, scope: !604)
!1954 = !DILocation(line: 200, column: 9, scope: !604)
!1955 = !DILocation(line: 201, column: 3, scope: !604)
!1956 = !DILocation(line: 202, column: 10, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !604, file: !3, line: 201, column: 6)
!1958 = !DILocation(line: 203, column: 12, scope: !1957)
!1959 = !DILocation(line: 203, column: 10, scope: !1957)
!1960 = !DILocation(line: 204, column: 12, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1957, file: !3, line: 204, column: 5)
!1962 = !DILocation(line: 204, column: 10, scope: !1961)
!1963 = !DILocation(line: 204, column: 17, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1961, file: !3, line: 204, column: 5)
!1965 = !DILocation(line: 204, column: 21, scope: !1964)
!1966 = !DILocation(line: 204, column: 19, scope: !1964)
!1967 = !DILocation(line: 204, column: 5, scope: !1961)
!1968 = !DILocation(line: 205, column: 15, scope: !1964)
!1969 = !DILocation(line: 205, column: 12, scope: !1964)
!1970 = !DILocation(line: 205, column: 7, scope: !1964)
!1971 = !DILocation(line: 204, column: 26, scope: !1964)
!1972 = !DILocation(line: 204, column: 5, scope: !1964)
!1973 = distinct !{!1973, !1967, !1974, !783}
!1974 = !DILocation(line: 205, column: 15, scope: !1961)
!1975 = !DILocation(line: 206, column: 3, scope: !1957)
!1976 = !DILocation(line: 206, column: 12, scope: !604)
!1977 = !DILocation(line: 206, column: 27, scope: !604)
!1978 = !DILocation(line: 206, column: 20, scope: !604)
!1979 = !DILocation(line: 206, column: 17, scope: !604)
!1980 = distinct !{!1980, !1955, !1981, !783}
!1981 = !DILocation(line: 206, column: 37, scope: !604)
!1982 = !DILocation(line: 207, column: 8, scope: !604)
!1983 = !DILocation(line: 210, column: 7, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !604, file: !3, line: 210, column: 7)
!1985 = !DILocation(line: 210, column: 13, scope: !1984)
!1986 = !DILocation(line: 211, column: 5, scope: !1984)
!1987 = !DILocation(line: 214, column: 16, scope: !604)
!1988 = !DILocation(line: 215, column: 10, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !604, file: !3, line: 215, column: 3)
!1990 = !DILocation(line: 215, column: 8, scope: !1989)
!1991 = !DILocation(line: 215, column: 15, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1989, file: !3, line: 215, column: 3)
!1993 = !DILocation(line: 215, column: 19, scope: !1992)
!1994 = !DILocation(line: 215, column: 17, scope: !1992)
!1995 = !DILocation(line: 215, column: 3, scope: !1989)
!1996 = !DILocation(line: 216, column: 18, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1992, file: !3, line: 215, column: 28)
!1998 = !DILocation(line: 216, column: 5, scope: !1997)
!1999 = !DILocation(line: 216, column: 13, scope: !1997)
!2000 = !DILocation(line: 216, column: 16, scope: !1997)
!2001 = !DILocation(line: 217, column: 21, scope: !1997)
!2002 = !DILocation(line: 217, column: 18, scope: !1997)
!2003 = !DILocation(line: 218, column: 3, scope: !1997)
!2004 = !DILocation(line: 215, column: 24, scope: !1992)
!2005 = !DILocation(line: 215, column: 3, scope: !1992)
!2006 = distinct !{!2006, !1995, !2007, !783}
!2007 = !DILocation(line: 218, column: 3, scope: !1989)
!2008 = !DILocation(line: 225, column: 3, scope: !604)
!2009 = !DILocation(line: 226, column: 13, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !604, file: !3, line: 225, column: 6)
!2011 = !DILocation(line: 227, column: 12, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2010, file: !3, line: 227, column: 5)
!2013 = !DILocation(line: 227, column: 10, scope: !2012)
!2014 = !DILocation(line: 227, column: 17, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !2012, file: !3, line: 227, column: 5)
!2016 = !DILocation(line: 227, column: 21, scope: !2015)
!2017 = !DILocation(line: 227, column: 19, scope: !2015)
!2018 = !DILocation(line: 227, column: 5, scope: !2012)
!2019 = !DILocation(line: 228, column: 12, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2015, file: !3, line: 227, column: 30)
!2021 = !DILocation(line: 228, column: 19, scope: !2020)
!2022 = !DILocation(line: 228, column: 35, scope: !2020)
!2023 = !DILocation(line: 228, column: 58, scope: !2020)
!2024 = !DILocation(line: 228, column: 48, scope: !2020)
!2025 = !DILocation(line: 228, column: 63, scope: !2020)
!2026 = !DILocation(line: 228, column: 9, scope: !2020)
!2027 = !DILocation(line: 230, column: 14, scope: !2020)
!2028 = !DILocation(line: 230, column: 29, scope: !2020)
!2029 = !DILocation(line: 230, column: 37, scope: !2020)
!2030 = !DILocation(line: 230, column: 27, scope: !2020)
!2031 = !DILocation(line: 230, column: 12, scope: !2020)
!2032 = !DILocation(line: 231, column: 15, scope: !2020)
!2033 = !DILocation(line: 231, column: 23, scope: !2020)
!2034 = !DILocation(line: 231, column: 25, scope: !2020)
!2035 = !DILocation(line: 231, column: 12, scope: !2020)
!2036 = !DILocation(line: 232, column: 11, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2020, file: !3, line: 232, column: 11)
!2038 = !DILocation(line: 232, column: 25, scope: !2037)
!2039 = !DILocation(line: 232, column: 18, scope: !2037)
!2040 = !DILocation(line: 232, column: 16, scope: !2037)
!2041 = !DILocation(line: 233, column: 2, scope: !2037)
!2042 = !DILocation(line: 234, column: 7, scope: !2020)
!2043 = !DILocation(line: 234, column: 15, scope: !2020)
!2044 = !DILocation(line: 234, column: 17, scope: !2020)
!2045 = !DILocation(line: 235, column: 28, scope: !2020)
!2046 = !DILocation(line: 235, column: 22, scope: !2020)
!2047 = !DILocation(line: 235, column: 20, scope: !2020)
!2048 = !DILocation(line: 236, column: 15, scope: !2020)
!2049 = !DILocation(line: 237, column: 5, scope: !2020)
!2050 = !DILocation(line: 227, column: 26, scope: !2015)
!2051 = !DILocation(line: 227, column: 5, scope: !2015)
!2052 = distinct !{!2052, !2018, !2053, !783}
!2053 = !DILocation(line: 237, column: 5, scope: !2012)
!2054 = !DILocation(line: 238, column: 3, scope: !2010)
!2055 = !DILocation(line: 238, column: 12, scope: !604)
!2056 = distinct !{!2056, !2008, !2057, !783}
!2057 = !DILocation(line: 238, column: 19, scope: !604)
!2058 = !DILocation(line: 240, column: 10, scope: !604)
!2059 = !DILocation(line: 240, column: 3, scope: !604)
!2060 = distinct !DISubprogram(name: "output_value", scope: !3, file: !3, line: 245, type: !2061, scopeLine: 248, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !608)
!2061 = !DISubroutineType(types: !2062)
!2062 = !{!195, !169, !195, !195, !195}
!2063 = !DILocalVariable(name: "cinfo", arg: 1, scope: !2060, file: !3, line: 245, type: !169)
!2064 = !DILocation(line: 245, column: 32, scope: !2060)
!2065 = !DILocalVariable(name: "ci", arg: 2, scope: !2060, file: !3, line: 245, type: !195)
!2066 = !DILocation(line: 245, column: 43, scope: !2060)
!2067 = !DILocalVariable(name: "j", arg: 3, scope: !2060, file: !3, line: 245, type: !195)
!2068 = !DILocation(line: 245, column: 51, scope: !2060)
!2069 = !DILocalVariable(name: "maxj", arg: 4, scope: !2060, file: !3, line: 245, type: !195)
!2070 = !DILocation(line: 245, column: 58, scope: !2060)
!2071 = !DILocation(line: 254, column: 26, scope: !2060)
!2072 = !DILocation(line: 254, column: 18, scope: !2060)
!2073 = !DILocation(line: 254, column: 28, scope: !2060)
!2074 = !DILocation(line: 254, column: 43, scope: !2060)
!2075 = !DILocation(line: 254, column: 47, scope: !2060)
!2076 = !DILocation(line: 254, column: 41, scope: !2060)
!2077 = !DILocation(line: 254, column: 53, scope: !2060)
!2078 = !DILocation(line: 254, column: 51, scope: !2060)
!2079 = !DILocation(line: 254, column: 10, scope: !2060)
!2080 = !DILocation(line: 254, column: 3, scope: !2060)
!2081 = distinct !DISubprogram(name: "largest_input_value", scope: !3, file: !3, line: 259, type: !2061, scopeLine: 262, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !608)
!2082 = !DILocalVariable(name: "cinfo", arg: 1, scope: !2081, file: !3, line: 259, type: !169)
!2083 = !DILocation(line: 259, column: 39, scope: !2081)
!2084 = !DILocalVariable(name: "ci", arg: 2, scope: !2081, file: !3, line: 259, type: !195)
!2085 = !DILocation(line: 259, column: 50, scope: !2081)
!2086 = !DILocalVariable(name: "j", arg: 3, scope: !2081, file: !3, line: 259, type: !195)
!2087 = !DILocation(line: 259, column: 58, scope: !2081)
!2088 = !DILocalVariable(name: "maxj", arg: 4, scope: !2081, file: !3, line: 259, type: !195)
!2089 = !DILocation(line: 259, column: 65, scope: !2081)
!2090 = !DILocation(line: 264, column: 29, scope: !2081)
!2091 = !DILocation(line: 264, column: 28, scope: !2081)
!2092 = !DILocation(line: 264, column: 31, scope: !2081)
!2093 = !DILocation(line: 264, column: 18, scope: !2081)
!2094 = !DILocation(line: 264, column: 36, scope: !2081)
!2095 = !DILocation(line: 264, column: 51, scope: !2081)
!2096 = !DILocation(line: 264, column: 49, scope: !2081)
!2097 = !DILocation(line: 264, column: 62, scope: !2081)
!2098 = !DILocation(line: 264, column: 61, scope: !2081)
!2099 = !DILocation(line: 264, column: 59, scope: !2081)
!2100 = !DILocation(line: 264, column: 57, scope: !2081)
!2101 = !DILocation(line: 264, column: 10, scope: !2081)
!2102 = !DILocation(line: 264, column: 3, scope: !2081)
