; ModuleID = 'cBench/consumer_jpeg_c/src/jquant2.c'
source_filename = "cBench/consumer_jpeg_c/src/jquant2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.my_cquantizer = type { %struct.jpeg_color_quantizer, ptr, i32, ptr, i32, ptr, i32, ptr }
%struct.jpeg_color_quantizer = type { ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.box = type { i32, i32, i32, i32, i32, i32, i64, i64 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @jinit_2pass_quantizer(ptr noundef %0) #0 !dbg !622 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !624, !DIExpression(), !625)
    #dbg_declare(ptr %3, !626, !DIExpression(), !627)
    #dbg_declare(ptr %4, !628, !DIExpression(), !629)
  %6 = load ptr, ptr %2, align 8, !dbg !630
  %7 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %6, i32 0, i32 1, !dbg !631
  %8 = load ptr, ptr %7, align 8, !dbg !631
  %9 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %8, i32 0, i32 0, !dbg !632
  %10 = load ptr, ptr %9, align 8, !dbg !632
  %11 = load ptr, ptr %2, align 8, !dbg !633
  %12 = call ptr %10(ptr noundef %11, i32 noundef 1, i64 noundef 88), !dbg !634
  store ptr %12, ptr %3, align 8, !dbg !635
  %13 = load ptr, ptr %3, align 8, !dbg !636
  %14 = load ptr, ptr %2, align 8, !dbg !637
  %15 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %14, i32 0, i32 83, !dbg !638
  store ptr %13, ptr %15, align 8, !dbg !639
  %16 = load ptr, ptr %3, align 8, !dbg !640
  %17 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %16, i32 0, i32 0, !dbg !641
  %18 = getelementptr inbounds nuw %struct.jpeg_color_quantizer, ptr %17, i32 0, i32 0, !dbg !642
  store ptr @start_pass_2_quant, ptr %18, align 8, !dbg !643
  %19 = load ptr, ptr %3, align 8, !dbg !644
  %20 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %19, i32 0, i32 0, !dbg !645
  %21 = getelementptr inbounds nuw %struct.jpeg_color_quantizer, ptr %20, i32 0, i32 3, !dbg !646
  store ptr @new_color_map_2_quant, ptr %21, align 8, !dbg !647
  %22 = load ptr, ptr %3, align 8, !dbg !648
  %23 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %22, i32 0, i32 5, !dbg !649
  store ptr null, ptr %23, align 8, !dbg !650
  %24 = load ptr, ptr %3, align 8, !dbg !651
  %25 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %24, i32 0, i32 7, !dbg !652
  store ptr null, ptr %25, align 8, !dbg !653
  %26 = load ptr, ptr %2, align 8, !dbg !654
  %27 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %26, i32 0, i32 28, !dbg !656
  %28 = load i32, ptr %27, align 8, !dbg !656
  %29 = icmp ne i32 %28, 3, !dbg !657
  br i1 %29, label %30, label %41, !dbg !657

30:                                               ; preds = %1
  %31 = load ptr, ptr %2, align 8, !dbg !658
  %32 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %31, i32 0, i32 0, !dbg !658
  %33 = load ptr, ptr %32, align 8, !dbg !658
  %34 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %33, i32 0, i32 5, !dbg !658
  store i32 46, ptr %34, align 8, !dbg !658
  %35 = load ptr, ptr %2, align 8, !dbg !658
  %36 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %35, i32 0, i32 0, !dbg !658
  %37 = load ptr, ptr %36, align 8, !dbg !658
  %38 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %37, i32 0, i32 0, !dbg !658
  %39 = load ptr, ptr %38, align 8, !dbg !658
  %40 = load ptr, ptr %2, align 8, !dbg !658
  call void %39(ptr noundef %40), !dbg !658
  br label %41, !dbg !658

41:                                               ; preds = %30, %1
  %42 = load ptr, ptr %2, align 8, !dbg !659
  %43 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %42, i32 0, i32 1, !dbg !660
  %44 = load ptr, ptr %43, align 8, !dbg !660
  %45 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %44, i32 0, i32 0, !dbg !661
  %46 = load ptr, ptr %45, align 8, !dbg !661
  %47 = load ptr, ptr %2, align 8, !dbg !662
  %48 = call ptr %46(ptr noundef %47, i32 noundef 1, i64 noundef 256), !dbg !663
  %49 = load ptr, ptr %3, align 8, !dbg !664
  %50 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %49, i32 0, i32 3, !dbg !665
  store ptr %48, ptr %50, align 8, !dbg !666
  store i32 0, ptr %4, align 4, !dbg !667
  br label %51, !dbg !669

51:                                               ; preds = %68, %41
  %52 = load i32, ptr %4, align 4, !dbg !670
  %53 = icmp slt i32 %52, 32, !dbg !672
  br i1 %53, label %54, label %71, !dbg !673

54:                                               ; preds = %51
  %55 = load ptr, ptr %2, align 8, !dbg !674
  %56 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %55, i32 0, i32 1, !dbg !676
  %57 = load ptr, ptr %56, align 8, !dbg !676
  %58 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %57, i32 0, i32 1, !dbg !677
  %59 = load ptr, ptr %58, align 8, !dbg !677
  %60 = load ptr, ptr %2, align 8, !dbg !678
  %61 = call ptr %59(ptr noundef %60, i32 noundef 1, i64 noundef 4096), !dbg !679
  %62 = load ptr, ptr %3, align 8, !dbg !680
  %63 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %62, i32 0, i32 3, !dbg !681
  %64 = load ptr, ptr %63, align 8, !dbg !681
  %65 = load i32, ptr %4, align 4, !dbg !682
  %66 = sext i32 %65 to i64, !dbg !680
  %67 = getelementptr inbounds ptr, ptr %64, i64 %66, !dbg !680
  store ptr %61, ptr %67, align 8, !dbg !683
  br label %68, !dbg !684

68:                                               ; preds = %54
  %69 = load i32, ptr %4, align 4, !dbg !685
  %70 = add nsw i32 %69, 1, !dbg !685
  store i32 %70, ptr %4, align 4, !dbg !685
  br label %51, !dbg !686, !llvm.loop !687

71:                                               ; preds = %51
  %72 = load ptr, ptr %3, align 8, !dbg !690
  %73 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %72, i32 0, i32 4, !dbg !691
  store i32 1, ptr %73, align 8, !dbg !692
  %74 = load ptr, ptr %2, align 8, !dbg !693
  %75 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %74, i32 0, i32 25, !dbg !695
  %76 = load i32, ptr %75, align 4, !dbg !695
  %77 = icmp ne i32 %76, 0, !dbg !693
  br i1 %77, label %78, label %133, !dbg !693

78:                                               ; preds = %71
    #dbg_declare(ptr %5, !696, !DIExpression(), !698)
  %79 = load ptr, ptr %2, align 8, !dbg !699
  %80 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %79, i32 0, i32 22, !dbg !700
  %81 = load i32, ptr %80, align 8, !dbg !700
  store i32 %81, ptr %5, align 4, !dbg !698
  %82 = load i32, ptr %5, align 4, !dbg !701
  %83 = icmp slt i32 %82, 8, !dbg !703
  br i1 %83, label %84, label %100, !dbg !703

84:                                               ; preds = %78
  %85 = load ptr, ptr %2, align 8, !dbg !704
  %86 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %85, i32 0, i32 0, !dbg !704
  %87 = load ptr, ptr %86, align 8, !dbg !704
  %88 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %87, i32 0, i32 5, !dbg !704
  store i32 55, ptr %88, align 8, !dbg !704
  %89 = load ptr, ptr %2, align 8, !dbg !704
  %90 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %89, i32 0, i32 0, !dbg !704
  %91 = load ptr, ptr %90, align 8, !dbg !704
  %92 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %91, i32 0, i32 6, !dbg !704
  %93 = getelementptr inbounds [8 x i32], ptr %92, i64 0, i64 0, !dbg !704
  store i32 8, ptr %93, align 4, !dbg !704
  %94 = load ptr, ptr %2, align 8, !dbg !704
  %95 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %94, i32 0, i32 0, !dbg !704
  %96 = load ptr, ptr %95, align 8, !dbg !704
  %97 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %96, i32 0, i32 0, !dbg !704
  %98 = load ptr, ptr %97, align 8, !dbg !704
  %99 = load ptr, ptr %2, align 8, !dbg !704
  call void %98(ptr noundef %99), !dbg !704
  br label %100, !dbg !704

100:                                              ; preds = %84, %78
  %101 = load i32, ptr %5, align 4, !dbg !705
  %102 = icmp sgt i32 %101, 256, !dbg !707
  br i1 %102, label %103, label %119, !dbg !707

103:                                              ; preds = %100
  %104 = load ptr, ptr %2, align 8, !dbg !708
  %105 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %104, i32 0, i32 0, !dbg !708
  %106 = load ptr, ptr %105, align 8, !dbg !708
  %107 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %106, i32 0, i32 5, !dbg !708
  store i32 56, ptr %107, align 8, !dbg !708
  %108 = load ptr, ptr %2, align 8, !dbg !708
  %109 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %108, i32 0, i32 0, !dbg !708
  %110 = load ptr, ptr %109, align 8, !dbg !708
  %111 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %110, i32 0, i32 6, !dbg !708
  %112 = getelementptr inbounds [8 x i32], ptr %111, i64 0, i64 0, !dbg !708
  store i32 256, ptr %112, align 4, !dbg !708
  %113 = load ptr, ptr %2, align 8, !dbg !708
  %114 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %113, i32 0, i32 0, !dbg !708
  %115 = load ptr, ptr %114, align 8, !dbg !708
  %116 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %115, i32 0, i32 0, !dbg !708
  %117 = load ptr, ptr %116, align 8, !dbg !708
  %118 = load ptr, ptr %2, align 8, !dbg !708
  call void %117(ptr noundef %118), !dbg !708
  br label %119, !dbg !708

119:                                              ; preds = %103, %100
  %120 = load ptr, ptr %2, align 8, !dbg !709
  %121 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %120, i32 0, i32 1, !dbg !710
  %122 = load ptr, ptr %121, align 8, !dbg !710
  %123 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %122, i32 0, i32 2, !dbg !711
  %124 = load ptr, ptr %123, align 8, !dbg !711
  %125 = load ptr, ptr %2, align 8, !dbg !712
  %126 = load i32, ptr %5, align 4, !dbg !713
  %127 = call ptr %124(ptr noundef %125, i32 noundef 1, i32 noundef %126, i32 noundef 3), !dbg !714
  %128 = load ptr, ptr %3, align 8, !dbg !715
  %129 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %128, i32 0, i32 1, !dbg !716
  store ptr %127, ptr %129, align 8, !dbg !717
  %130 = load i32, ptr %5, align 4, !dbg !718
  %131 = load ptr, ptr %3, align 8, !dbg !719
  %132 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %131, i32 0, i32 2, !dbg !720
  store i32 %130, ptr %132, align 8, !dbg !721
  br label %136, !dbg !722

133:                                              ; preds = %71
  %134 = load ptr, ptr %3, align 8, !dbg !723
  %135 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %134, i32 0, i32 1, !dbg !724
  store ptr null, ptr %135, align 8, !dbg !725
  br label %136

136:                                              ; preds = %133, %119
  %137 = load ptr, ptr %2, align 8, !dbg !726
  %138 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %137, i32 0, i32 20, !dbg !728
  %139 = load i32, ptr %138, align 8, !dbg !728
  %140 = icmp ne i32 %139, 0, !dbg !729
  br i1 %140, label %141, label %144, !dbg !729

141:                                              ; preds = %136
  %142 = load ptr, ptr %2, align 8, !dbg !730
  %143 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %142, i32 0, i32 20, !dbg !731
  store i32 2, ptr %143, align 8, !dbg !732
  br label %144, !dbg !730

144:                                              ; preds = %141, %136
  %145 = load ptr, ptr %2, align 8, !dbg !733
  %146 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %145, i32 0, i32 20, !dbg !735
  %147 = load i32, ptr %146, align 8, !dbg !735
  %148 = icmp eq i32 %147, 2, !dbg !736
  br i1 %148, label %149, label %166, !dbg !736

149:                                              ; preds = %144
  %150 = load ptr, ptr %2, align 8, !dbg !737
  %151 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %150, i32 0, i32 1, !dbg !739
  %152 = load ptr, ptr %151, align 8, !dbg !739
  %153 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %152, i32 0, i32 1, !dbg !740
  %154 = load ptr, ptr %153, align 8, !dbg !740
  %155 = load ptr, ptr %2, align 8, !dbg !741
  %156 = load ptr, ptr %2, align 8, !dbg !742
  %157 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %156, i32 0, i32 26, !dbg !743
  %158 = load i32, ptr %157, align 8, !dbg !743
  %159 = add i32 %158, 2, !dbg !744
  %160 = zext i32 %159 to i64, !dbg !745
  %161 = mul i64 %160, 6, !dbg !746
  %162 = call ptr %154(ptr noundef %155, i32 noundef 1, i64 noundef %161), !dbg !747
  %163 = load ptr, ptr %3, align 8, !dbg !748
  %164 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %163, i32 0, i32 5, !dbg !749
  store ptr %162, ptr %164, align 8, !dbg !750
  %165 = load ptr, ptr %2, align 8, !dbg !751
  call void @init_error_limit(ptr noundef %165), !dbg !752
  br label %166, !dbg !753

166:                                              ; preds = %149, %144
  ret void, !dbg !754
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_pass_2_quant(ptr noundef %0, i32 noundef %1) #0 !dbg !755 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !756, !DIExpression(), !757)
  store i32 %1, ptr %4, align 4
    #dbg_declare(ptr %4, !758, !DIExpression(), !759)
    #dbg_declare(ptr %5, !760, !DIExpression(), !761)
  %9 = load ptr, ptr %3, align 8, !dbg !762
  %10 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %9, i32 0, i32 83, !dbg !763
  %11 = load ptr, ptr %10, align 8, !dbg !763
  store ptr %11, ptr %5, align 8, !dbg !761
    #dbg_declare(ptr %6, !764, !DIExpression(), !765)
  %12 = load ptr, ptr %5, align 8, !dbg !766
  %13 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %12, i32 0, i32 3, !dbg !767
  %14 = load ptr, ptr %13, align 8, !dbg !767
  store ptr %14, ptr %6, align 8, !dbg !765
    #dbg_declare(ptr %7, !768, !DIExpression(), !769)
  %15 = load ptr, ptr %3, align 8, !dbg !770
  %16 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %15, i32 0, i32 20, !dbg !772
  %17 = load i32, ptr %16, align 8, !dbg !772
  %18 = icmp ne i32 %17, 0, !dbg !773
  br i1 %18, label %19, label %22, !dbg !773

19:                                               ; preds = %2
  %20 = load ptr, ptr %3, align 8, !dbg !774
  %21 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %20, i32 0, i32 20, !dbg !775
  store i32 2, ptr %21, align 8, !dbg !776
  br label %22, !dbg !774

22:                                               ; preds = %19, %2
  %23 = load i32, ptr %4, align 4, !dbg !777
  %24 = icmp ne i32 %23, 0, !dbg !777
  br i1 %24, label %25, label %34, !dbg !777

25:                                               ; preds = %22
  %26 = load ptr, ptr %5, align 8, !dbg !779
  %27 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %26, i32 0, i32 0, !dbg !781
  %28 = getelementptr inbounds nuw %struct.jpeg_color_quantizer, ptr %27, i32 0, i32 1, !dbg !782
  store ptr @prescan_quantize, ptr %28, align 8, !dbg !783
  %29 = load ptr, ptr %5, align 8, !dbg !784
  %30 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %29, i32 0, i32 0, !dbg !785
  %31 = getelementptr inbounds nuw %struct.jpeg_color_quantizer, ptr %30, i32 0, i32 2, !dbg !786
  store ptr @finish_pass1, ptr %31, align 8, !dbg !787
  %32 = load ptr, ptr %5, align 8, !dbg !788
  %33 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %32, i32 0, i32 4, !dbg !789
  store i32 1, ptr %33, align 8, !dbg !790
  br label %133, !dbg !791

34:                                               ; preds = %22
  %35 = load ptr, ptr %3, align 8, !dbg !792
  %36 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %35, i32 0, i32 20, !dbg !795
  %37 = load i32, ptr %36, align 8, !dbg !795
  %38 = icmp eq i32 %37, 2, !dbg !796
  br i1 %38, label %39, label %43, !dbg !796

39:                                               ; preds = %34
  %40 = load ptr, ptr %5, align 8, !dbg !797
  %41 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %40, i32 0, i32 0, !dbg !798
  %42 = getelementptr inbounds nuw %struct.jpeg_color_quantizer, ptr %41, i32 0, i32 1, !dbg !799
  store ptr @pass2_fs_dither, ptr %42, align 8, !dbg !800
  br label %47, !dbg !797

43:                                               ; preds = %34
  %44 = load ptr, ptr %5, align 8, !dbg !801
  %45 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %44, i32 0, i32 0, !dbg !802
  %46 = getelementptr inbounds nuw %struct.jpeg_color_quantizer, ptr %45, i32 0, i32 1, !dbg !803
  store ptr @pass2_no_dither, ptr %46, align 8, !dbg !804
  br label %47

47:                                               ; preds = %43, %39
  %48 = load ptr, ptr %5, align 8, !dbg !805
  %49 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %48, i32 0, i32 0, !dbg !806
  %50 = getelementptr inbounds nuw %struct.jpeg_color_quantizer, ptr %49, i32 0, i32 2, !dbg !807
  store ptr @finish_pass2, ptr %50, align 8, !dbg !808
  %51 = load ptr, ptr %3, align 8, !dbg !809
  %52 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %51, i32 0, i32 31, !dbg !810
  %53 = load i32, ptr %52, align 4, !dbg !810
  store i32 %53, ptr %7, align 4, !dbg !811
  %54 = load i32, ptr %7, align 4, !dbg !812
  %55 = icmp slt i32 %54, 1, !dbg !814
  br i1 %55, label %56, label %72, !dbg !814

56:                                               ; preds = %47
  %57 = load ptr, ptr %3, align 8, !dbg !815
  %58 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %57, i32 0, i32 0, !dbg !815
  %59 = load ptr, ptr %58, align 8, !dbg !815
  %60 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %59, i32 0, i32 5, !dbg !815
  store i32 55, ptr %60, align 8, !dbg !815
  %61 = load ptr, ptr %3, align 8, !dbg !815
  %62 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %61, i32 0, i32 0, !dbg !815
  %63 = load ptr, ptr %62, align 8, !dbg !815
  %64 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %63, i32 0, i32 6, !dbg !815
  %65 = getelementptr inbounds [8 x i32], ptr %64, i64 0, i64 0, !dbg !815
  store i32 1, ptr %65, align 4, !dbg !815
  %66 = load ptr, ptr %3, align 8, !dbg !815
  %67 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %66, i32 0, i32 0, !dbg !815
  %68 = load ptr, ptr %67, align 8, !dbg !815
  %69 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %68, i32 0, i32 0, !dbg !815
  %70 = load ptr, ptr %69, align 8, !dbg !815
  %71 = load ptr, ptr %3, align 8, !dbg !815
  call void %70(ptr noundef %71), !dbg !815
  br label %72, !dbg !815

72:                                               ; preds = %56, %47
  %73 = load i32, ptr %7, align 4, !dbg !816
  %74 = icmp sgt i32 %73, 256, !dbg !818
  br i1 %74, label %75, label %91, !dbg !818

75:                                               ; preds = %72
  %76 = load ptr, ptr %3, align 8, !dbg !819
  %77 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %76, i32 0, i32 0, !dbg !819
  %78 = load ptr, ptr %77, align 8, !dbg !819
  %79 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %78, i32 0, i32 5, !dbg !819
  store i32 56, ptr %79, align 8, !dbg !819
  %80 = load ptr, ptr %3, align 8, !dbg !819
  %81 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %80, i32 0, i32 0, !dbg !819
  %82 = load ptr, ptr %81, align 8, !dbg !819
  %83 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %82, i32 0, i32 6, !dbg !819
  %84 = getelementptr inbounds [8 x i32], ptr %83, i64 0, i64 0, !dbg !819
  store i32 256, ptr %84, align 4, !dbg !819
  %85 = load ptr, ptr %3, align 8, !dbg !819
  %86 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %85, i32 0, i32 0, !dbg !819
  %87 = load ptr, ptr %86, align 8, !dbg !819
  %88 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %87, i32 0, i32 0, !dbg !819
  %89 = load ptr, ptr %88, align 8, !dbg !819
  %90 = load ptr, ptr %3, align 8, !dbg !819
  call void %89(ptr noundef %90), !dbg !819
  br label %91, !dbg !819

91:                                               ; preds = %75, %72
  %92 = load ptr, ptr %3, align 8, !dbg !820
  %93 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %92, i32 0, i32 20, !dbg !822
  %94 = load i32, ptr %93, align 8, !dbg !822
  %95 = icmp eq i32 %94, 2, !dbg !823
  br i1 %95, label %96, label %132, !dbg !823

96:                                               ; preds = %91
    #dbg_declare(ptr %8, !824, !DIExpression(), !826)
  %97 = load ptr, ptr %3, align 8, !dbg !827
  %98 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %97, i32 0, i32 26, !dbg !828
  %99 = load i32, ptr %98, align 8, !dbg !828
  %100 = add i32 %99, 2, !dbg !829
  %101 = zext i32 %100 to i64, !dbg !830
  %102 = mul i64 %101, 6, !dbg !831
  store i64 %102, ptr %8, align 8, !dbg !826
  %103 = load ptr, ptr %5, align 8, !dbg !832
  %104 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %103, i32 0, i32 5, !dbg !834
  %105 = load ptr, ptr %104, align 8, !dbg !834
  %106 = icmp eq ptr %105, null, !dbg !835
  br i1 %106, label %107, label %118, !dbg !835

107:                                              ; preds = %96
  %108 = load ptr, ptr %3, align 8, !dbg !836
  %109 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %108, i32 0, i32 1, !dbg !837
  %110 = load ptr, ptr %109, align 8, !dbg !837
  %111 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %110, i32 0, i32 1, !dbg !838
  %112 = load ptr, ptr %111, align 8, !dbg !838
  %113 = load ptr, ptr %3, align 8, !dbg !839
  %114 = load i64, ptr %8, align 8, !dbg !840
  %115 = call ptr %112(ptr noundef %113, i32 noundef 1, i64 noundef %114), !dbg !841
  %116 = load ptr, ptr %5, align 8, !dbg !842
  %117 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %116, i32 0, i32 5, !dbg !843
  store ptr %115, ptr %117, align 8, !dbg !844
  br label %118, !dbg !842

118:                                              ; preds = %107, %96
  %119 = load ptr, ptr %5, align 8, !dbg !845
  %120 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %119, i32 0, i32 5, !dbg !846
  %121 = load ptr, ptr %120, align 8, !dbg !846
  %122 = load i64, ptr %8, align 8, !dbg !847
  call void @jzero_far(ptr noundef %121, i64 noundef %122), !dbg !848
  %123 = load ptr, ptr %5, align 8, !dbg !849
  %124 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %123, i32 0, i32 7, !dbg !851
  %125 = load ptr, ptr %124, align 8, !dbg !851
  %126 = icmp eq ptr %125, null, !dbg !852
  br i1 %126, label %127, label %129, !dbg !852

127:                                              ; preds = %118
  %128 = load ptr, ptr %3, align 8, !dbg !853
  call void @init_error_limit(ptr noundef %128), !dbg !854
  br label %129, !dbg !854

129:                                              ; preds = %127, %118
  %130 = load ptr, ptr %5, align 8, !dbg !855
  %131 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %130, i32 0, i32 6, !dbg !856
  store i32 0, ptr %131, align 8, !dbg !857
  br label %132, !dbg !858

132:                                              ; preds = %129, %91
  br label %133

133:                                              ; preds = %132, %25
  %134 = load ptr, ptr %5, align 8, !dbg !859
  %135 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %134, i32 0, i32 4, !dbg !861
  %136 = load i32, ptr %135, align 8, !dbg !861
  %137 = icmp ne i32 %136, 0, !dbg !859
  br i1 %137, label %138, label %154, !dbg !859

138:                                              ; preds = %133
  store i32 0, ptr %7, align 4, !dbg !862
  br label %139, !dbg !865

139:                                              ; preds = %148, %138
  %140 = load i32, ptr %7, align 4, !dbg !866
  %141 = icmp slt i32 %140, 32, !dbg !868
  br i1 %141, label %142, label %151, !dbg !869

142:                                              ; preds = %139
  %143 = load ptr, ptr %6, align 8, !dbg !870
  %144 = load i32, ptr %7, align 4, !dbg !872
  %145 = sext i32 %144 to i64, !dbg !870
  %146 = getelementptr inbounds ptr, ptr %143, i64 %145, !dbg !870
  %147 = load ptr, ptr %146, align 8, !dbg !870
  call void @jzero_far(ptr noundef %147, i64 noundef 4096), !dbg !873
  br label %148, !dbg !874

148:                                              ; preds = %142
  %149 = load i32, ptr %7, align 4, !dbg !875
  %150 = add nsw i32 %149, 1, !dbg !875
  store i32 %150, ptr %7, align 4, !dbg !875
  br label %139, !dbg !876, !llvm.loop !877

151:                                              ; preds = %139
  %152 = load ptr, ptr %5, align 8, !dbg !879
  %153 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %152, i32 0, i32 4, !dbg !880
  store i32 0, ptr %153, align 8, !dbg !881
  br label %154, !dbg !882

154:                                              ; preds = %151, %133
  ret void, !dbg !883
}

; Function Attrs: noinline nounwind uwtable
define internal void @new_color_map_2_quant(ptr noundef %0) #0 !dbg !884 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !885, !DIExpression(), !886)
    #dbg_declare(ptr %3, !887, !DIExpression(), !888)
  %4 = load ptr, ptr %2, align 8, !dbg !889
  %5 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 83, !dbg !890
  %6 = load ptr, ptr %5, align 8, !dbg !890
  store ptr %6, ptr %3, align 8, !dbg !888
  %7 = load ptr, ptr %3, align 8, !dbg !891
  %8 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %7, i32 0, i32 4, !dbg !892
  store i32 1, ptr %8, align 8, !dbg !893
  ret void, !dbg !894
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_error_limit(ptr noundef %0) #0 !dbg !895 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !896, !DIExpression(), !897)
    #dbg_declare(ptr %3, !898, !DIExpression(), !899)
  %7 = load ptr, ptr %2, align 8, !dbg !900
  %8 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %7, i32 0, i32 83, !dbg !901
  %9 = load ptr, ptr %8, align 8, !dbg !901
  store ptr %9, ptr %3, align 8, !dbg !899
    #dbg_declare(ptr %4, !902, !DIExpression(), !903)
    #dbg_declare(ptr %5, !904, !DIExpression(), !905)
    #dbg_declare(ptr %6, !906, !DIExpression(), !907)
  %10 = load ptr, ptr %2, align 8, !dbg !908
  %11 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %10, i32 0, i32 1, !dbg !909
  %12 = load ptr, ptr %11, align 8, !dbg !909
  %13 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %12, i32 0, i32 0, !dbg !910
  %14 = load ptr, ptr %13, align 8, !dbg !910
  %15 = load ptr, ptr %2, align 8, !dbg !911
  %16 = call ptr %14(ptr noundef %15, i32 noundef 1, i64 noundef 2044), !dbg !912
  store ptr %16, ptr %4, align 8, !dbg !913
  %17 = load ptr, ptr %4, align 8, !dbg !914
  %18 = getelementptr inbounds i32, ptr %17, i64 255, !dbg !914
  store ptr %18, ptr %4, align 8, !dbg !914
  %19 = load ptr, ptr %4, align 8, !dbg !915
  %20 = load ptr, ptr %3, align 8, !dbg !916
  %21 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %20, i32 0, i32 7, !dbg !917
  store ptr %19, ptr %21, align 8, !dbg !918
  store i32 0, ptr %6, align 4, !dbg !919
  store i32 0, ptr %5, align 4, !dbg !920
  br label %22, !dbg !922

22:                                               ; preds = %38, %1
  %23 = load i32, ptr %5, align 4, !dbg !923
  %24 = icmp slt i32 %23, 16, !dbg !925
  br i1 %24, label %25, label %43, !dbg !926

25:                                               ; preds = %22
  %26 = load i32, ptr %6, align 4, !dbg !927
  %27 = load ptr, ptr %4, align 8, !dbg !929
  %28 = load i32, ptr %5, align 4, !dbg !930
  %29 = sext i32 %28 to i64, !dbg !929
  %30 = getelementptr inbounds i32, ptr %27, i64 %29, !dbg !929
  store i32 %26, ptr %30, align 4, !dbg !931
  %31 = load i32, ptr %6, align 4, !dbg !932
  %32 = sub nsw i32 0, %31, !dbg !933
  %33 = load ptr, ptr %4, align 8, !dbg !934
  %34 = load i32, ptr %5, align 4, !dbg !935
  %35 = sub nsw i32 0, %34, !dbg !936
  %36 = sext i32 %35 to i64, !dbg !934
  %37 = getelementptr inbounds i32, ptr %33, i64 %36, !dbg !934
  store i32 %32, ptr %37, align 4, !dbg !937
  br label %38, !dbg !938

38:                                               ; preds = %25
  %39 = load i32, ptr %5, align 4, !dbg !939
  %40 = add nsw i32 %39, 1, !dbg !939
  store i32 %40, ptr %5, align 4, !dbg !939
  %41 = load i32, ptr %6, align 4, !dbg !940
  %42 = add nsw i32 %41, 1, !dbg !940
  store i32 %42, ptr %6, align 4, !dbg !940
  br label %22, !dbg !941, !llvm.loop !942

43:                                               ; preds = %22
  br label %44, !dbg !944

44:                                               ; preds = %60, %43
  %45 = load i32, ptr %5, align 4, !dbg !945
  %46 = icmp slt i32 %45, 48, !dbg !948
  br i1 %46, label %47, label %70, !dbg !949

47:                                               ; preds = %44
  %48 = load i32, ptr %6, align 4, !dbg !950
  %49 = load ptr, ptr %4, align 8, !dbg !952
  %50 = load i32, ptr %5, align 4, !dbg !953
  %51 = sext i32 %50 to i64, !dbg !952
  %52 = getelementptr inbounds i32, ptr %49, i64 %51, !dbg !952
  store i32 %48, ptr %52, align 4, !dbg !954
  %53 = load i32, ptr %6, align 4, !dbg !955
  %54 = sub nsw i32 0, %53, !dbg !956
  %55 = load ptr, ptr %4, align 8, !dbg !957
  %56 = load i32, ptr %5, align 4, !dbg !958
  %57 = sub nsw i32 0, %56, !dbg !959
  %58 = sext i32 %57 to i64, !dbg !957
  %59 = getelementptr inbounds i32, ptr %55, i64 %58, !dbg !957
  store i32 %54, ptr %59, align 4, !dbg !960
  br label %60, !dbg !961

60:                                               ; preds = %47
  %61 = load i32, ptr %5, align 4, !dbg !962
  %62 = add nsw i32 %61, 1, !dbg !962
  store i32 %62, ptr %5, align 4, !dbg !962
  %63 = load i32, ptr %5, align 4, !dbg !963
  %64 = and i32 %63, 1, !dbg !964
  %65 = icmp ne i32 %64, 0, !dbg !965
  %66 = zext i1 %65 to i64, !dbg !965
  %67 = select i1 %65, i32 0, i32 1, !dbg !965
  %68 = load i32, ptr %6, align 4, !dbg !966
  %69 = add nsw i32 %68, %67, !dbg !966
  store i32 %69, ptr %6, align 4, !dbg !966
  br label %44, !dbg !967, !llvm.loop !968

70:                                               ; preds = %44
  br label %71, !dbg !970

71:                                               ; preds = %87, %70
  %72 = load i32, ptr %5, align 4, !dbg !971
  %73 = icmp sle i32 %72, 255, !dbg !974
  br i1 %73, label %74, label %90, !dbg !975

74:                                               ; preds = %71
  %75 = load i32, ptr %6, align 4, !dbg !976
  %76 = load ptr, ptr %4, align 8, !dbg !978
  %77 = load i32, ptr %5, align 4, !dbg !979
  %78 = sext i32 %77 to i64, !dbg !978
  %79 = getelementptr inbounds i32, ptr %76, i64 %78, !dbg !978
  store i32 %75, ptr %79, align 4, !dbg !980
  %80 = load i32, ptr %6, align 4, !dbg !981
  %81 = sub nsw i32 0, %80, !dbg !982
  %82 = load ptr, ptr %4, align 8, !dbg !983
  %83 = load i32, ptr %5, align 4, !dbg !984
  %84 = sub nsw i32 0, %83, !dbg !985
  %85 = sext i32 %84 to i64, !dbg !983
  %86 = getelementptr inbounds i32, ptr %82, i64 %85, !dbg !983
  store i32 %81, ptr %86, align 4, !dbg !986
  br label %87, !dbg !987

87:                                               ; preds = %74
  %88 = load i32, ptr %5, align 4, !dbg !988
  %89 = add nsw i32 %88, 1, !dbg !988
  store i32 %89, ptr %5, align 4, !dbg !988
  br label %71, !dbg !989, !llvm.loop !990

90:                                               ; preds = %71
  ret void, !dbg !992
}

; Function Attrs: noinline nounwind uwtable
define internal void @prescan_quantize(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 !dbg !993 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !994, !DIExpression(), !995)
  store ptr %1, ptr %6, align 8
    #dbg_declare(ptr %6, !996, !DIExpression(), !997)
  store ptr %2, ptr %7, align 8
    #dbg_declare(ptr %7, !998, !DIExpression(), !999)
  store i32 %3, ptr %8, align 4
    #dbg_declare(ptr %8, !1000, !DIExpression(), !1001)
    #dbg_declare(ptr %9, !1002, !DIExpression(), !1003)
  %16 = load ptr, ptr %5, align 8, !dbg !1004
  %17 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %16, i32 0, i32 83, !dbg !1005
  %18 = load ptr, ptr %17, align 8, !dbg !1005
  store ptr %18, ptr %9, align 8, !dbg !1003
    #dbg_declare(ptr %10, !1006, !DIExpression(), !1007)
    #dbg_declare(ptr %11, !1008, !DIExpression(), !1011)
    #dbg_declare(ptr %12, !1012, !DIExpression(), !1013)
  %19 = load ptr, ptr %9, align 8, !dbg !1014
  %20 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %19, i32 0, i32 3, !dbg !1015
  %21 = load ptr, ptr %20, align 8, !dbg !1015
  store ptr %21, ptr %12, align 8, !dbg !1013
    #dbg_declare(ptr %13, !1016, !DIExpression(), !1017)
    #dbg_declare(ptr %14, !1018, !DIExpression(), !1019)
    #dbg_declare(ptr %15, !1020, !DIExpression(), !1021)
  %22 = load ptr, ptr %5, align 8, !dbg !1022
  %23 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %22, i32 0, i32 26, !dbg !1023
  %24 = load i32, ptr %23, align 8, !dbg !1023
  store i32 %24, ptr %15, align 4, !dbg !1021
  store i32 0, ptr %13, align 4, !dbg !1024
  br label %25, !dbg !1026

25:                                               ; preds = %79, %4
  %26 = load i32, ptr %13, align 4, !dbg !1027
  %27 = load i32, ptr %8, align 4, !dbg !1029
  %28 = icmp slt i32 %26, %27, !dbg !1030
  br i1 %28, label %29, label %82, !dbg !1031

29:                                               ; preds = %25
  %30 = load ptr, ptr %6, align 8, !dbg !1032
  %31 = load i32, ptr %13, align 4, !dbg !1034
  %32 = sext i32 %31 to i64, !dbg !1032
  %33 = getelementptr inbounds ptr, ptr %30, i64 %32, !dbg !1032
  %34 = load ptr, ptr %33, align 8, !dbg !1032
  store ptr %34, ptr %10, align 8, !dbg !1035
  %35 = load i32, ptr %15, align 4, !dbg !1036
  store i32 %35, ptr %14, align 4, !dbg !1038
  br label %36, !dbg !1039

36:                                               ; preds = %75, %29
  %37 = load i32, ptr %14, align 4, !dbg !1040
  %38 = icmp ugt i32 %37, 0, !dbg !1042
  br i1 %38, label %39, label %78, !dbg !1043

39:                                               ; preds = %36
  %40 = load ptr, ptr %12, align 8, !dbg !1044
  %41 = load ptr, ptr %10, align 8, !dbg !1046
  %42 = getelementptr inbounds i8, ptr %41, i64 0, !dbg !1046
  %43 = load i8, ptr %42, align 1, !dbg !1046
  %44 = zext i8 %43 to i32, !dbg !1046
  %45 = ashr i32 %44, 3, !dbg !1047
  %46 = sext i32 %45 to i64, !dbg !1044
  %47 = getelementptr inbounds ptr, ptr %40, i64 %46, !dbg !1044
  %48 = load ptr, ptr %47, align 8, !dbg !1044
  %49 = load ptr, ptr %10, align 8, !dbg !1048
  %50 = getelementptr inbounds i8, ptr %49, i64 1, !dbg !1048
  %51 = load i8, ptr %50, align 1, !dbg !1048
  %52 = zext i8 %51 to i32, !dbg !1048
  %53 = ashr i32 %52, 2, !dbg !1049
  %54 = sext i32 %53 to i64, !dbg !1044
  %55 = getelementptr inbounds [32 x i16], ptr %48, i64 %54, !dbg !1044
  %56 = load ptr, ptr %10, align 8, !dbg !1050
  %57 = getelementptr inbounds i8, ptr %56, i64 2, !dbg !1050
  %58 = load i8, ptr %57, align 1, !dbg !1050
  %59 = zext i8 %58 to i32, !dbg !1050
  %60 = ashr i32 %59, 3, !dbg !1051
  %61 = sext i32 %60 to i64, !dbg !1044
  %62 = getelementptr inbounds [32 x i16], ptr %55, i64 0, i64 %61, !dbg !1044
  store ptr %62, ptr %11, align 8, !dbg !1052
  %63 = load ptr, ptr %11, align 8, !dbg !1053
  %64 = load i16, ptr %63, align 2, !dbg !1055
  %65 = add i16 %64, 1, !dbg !1055
  store i16 %65, ptr %63, align 2, !dbg !1055
  %66 = zext i16 %65 to i32, !dbg !1055
  %67 = icmp sle i32 %66, 0, !dbg !1056
  br i1 %67, label %68, label %72, !dbg !1056

68:                                               ; preds = %39
  %69 = load ptr, ptr %11, align 8, !dbg !1057
  %70 = load i16, ptr %69, align 2, !dbg !1058
  %71 = add i16 %70, -1, !dbg !1058
  store i16 %71, ptr %69, align 2, !dbg !1058
  br label %72, !dbg !1059

72:                                               ; preds = %68, %39
  %73 = load ptr, ptr %10, align 8, !dbg !1060
  %74 = getelementptr inbounds i8, ptr %73, i64 3, !dbg !1060
  store ptr %74, ptr %10, align 8, !dbg !1060
  br label %75, !dbg !1061

75:                                               ; preds = %72
  %76 = load i32, ptr %14, align 4, !dbg !1062
  %77 = add i32 %76, -1, !dbg !1062
  store i32 %77, ptr %14, align 4, !dbg !1062
  br label %36, !dbg !1063, !llvm.loop !1064

78:                                               ; preds = %36
  br label %79, !dbg !1066

79:                                               ; preds = %78
  %80 = load i32, ptr %13, align 4, !dbg !1067
  %81 = add nsw i32 %80, 1, !dbg !1067
  store i32 %81, ptr %13, align 4, !dbg !1067
  br label %25, !dbg !1068, !llvm.loop !1069

82:                                               ; preds = %25
  ret void, !dbg !1071
}

; Function Attrs: noinline nounwind uwtable
define internal void @finish_pass1(ptr noundef %0) #0 !dbg !1072 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !1073, !DIExpression(), !1074)
    #dbg_declare(ptr %3, !1075, !DIExpression(), !1076)
  %4 = load ptr, ptr %2, align 8, !dbg !1077
  %5 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 83, !dbg !1078
  %6 = load ptr, ptr %5, align 8, !dbg !1078
  store ptr %6, ptr %3, align 8, !dbg !1076
  %7 = load ptr, ptr %3, align 8, !dbg !1079
  %8 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %7, i32 0, i32 1, !dbg !1080
  %9 = load ptr, ptr %8, align 8, !dbg !1080
  %10 = load ptr, ptr %2, align 8, !dbg !1081
  %11 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %10, i32 0, i32 32, !dbg !1082
  store ptr %9, ptr %11, align 8, !dbg !1083
  %12 = load ptr, ptr %2, align 8, !dbg !1084
  %13 = load ptr, ptr %3, align 8, !dbg !1085
  %14 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %13, i32 0, i32 2, !dbg !1086
  %15 = load i32, ptr %14, align 8, !dbg !1086
  call void @select_colors(ptr noundef %12, i32 noundef %15), !dbg !1087
  %16 = load ptr, ptr %3, align 8, !dbg !1088
  %17 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %16, i32 0, i32 4, !dbg !1089
  store i32 1, ptr %17, align 8, !dbg !1090
  ret void, !dbg !1091
}

; Function Attrs: noinline nounwind uwtable
define internal void @pass2_fs_dither(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 !dbg !1092 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca ptr, align 8
  %23 = alloca ptr, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca ptr, align 8
  %30 = alloca ptr, align 8
  %31 = alloca ptr, align 8
  %32 = alloca ptr, align 8
  %33 = alloca ptr, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !1093, !DIExpression(), !1094)
  store ptr %1, ptr %6, align 8
    #dbg_declare(ptr %6, !1095, !DIExpression(), !1096)
  store ptr %2, ptr %7, align 8
    #dbg_declare(ptr %7, !1097, !DIExpression(), !1098)
  store i32 %3, ptr %8, align 4
    #dbg_declare(ptr %8, !1099, !DIExpression(), !1100)
    #dbg_declare(ptr %9, !1101, !DIExpression(), !1102)
  %37 = load ptr, ptr %5, align 8, !dbg !1103
  %38 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %37, i32 0, i32 83, !dbg !1104
  %39 = load ptr, ptr %38, align 8, !dbg !1104
  store ptr %39, ptr %9, align 8, !dbg !1102
    #dbg_declare(ptr %10, !1105, !DIExpression(), !1106)
  %40 = load ptr, ptr %9, align 8, !dbg !1107
  %41 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %40, i32 0, i32 3, !dbg !1108
  %42 = load ptr, ptr %41, align 8, !dbg !1108
  store ptr %42, ptr %10, align 8, !dbg !1106
    #dbg_declare(ptr %11, !1109, !DIExpression(), !1111)
    #dbg_declare(ptr %12, !1112, !DIExpression(), !1113)
    #dbg_declare(ptr %13, !1114, !DIExpression(), !1115)
    #dbg_declare(ptr %14, !1116, !DIExpression(), !1117)
    #dbg_declare(ptr %15, !1118, !DIExpression(), !1119)
    #dbg_declare(ptr %16, !1120, !DIExpression(), !1121)
    #dbg_declare(ptr %17, !1122, !DIExpression(), !1123)
    #dbg_declare(ptr %18, !1124, !DIExpression(), !1125)
    #dbg_declare(ptr %19, !1126, !DIExpression(), !1127)
    #dbg_declare(ptr %20, !1128, !DIExpression(), !1129)
    #dbg_declare(ptr %21, !1130, !DIExpression(), !1131)
    #dbg_declare(ptr %22, !1132, !DIExpression(), !1133)
    #dbg_declare(ptr %23, !1134, !DIExpression(), !1135)
    #dbg_declare(ptr %24, !1136, !DIExpression(), !1137)
    #dbg_declare(ptr %25, !1138, !DIExpression(), !1139)
    #dbg_declare(ptr %26, !1140, !DIExpression(), !1141)
    #dbg_declare(ptr %27, !1142, !DIExpression(), !1143)
    #dbg_declare(ptr %28, !1144, !DIExpression(), !1145)
  %43 = load ptr, ptr %5, align 8, !dbg !1146
  %44 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %43, i32 0, i32 26, !dbg !1147
  %45 = load i32, ptr %44, align 8, !dbg !1147
  store i32 %45, ptr %28, align 4, !dbg !1145
    #dbg_declare(ptr %29, !1148, !DIExpression(), !1149)
  %46 = load ptr, ptr %5, align 8, !dbg !1150
  %47 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %46, i32 0, i32 61, !dbg !1151
  %48 = load ptr, ptr %47, align 8, !dbg !1151
  store ptr %48, ptr %29, align 8, !dbg !1149
    #dbg_declare(ptr %30, !1152, !DIExpression(), !1153)
  %49 = load ptr, ptr %9, align 8, !dbg !1154
  %50 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %49, i32 0, i32 7, !dbg !1155
  %51 = load ptr, ptr %50, align 8, !dbg !1155
  store ptr %51, ptr %30, align 8, !dbg !1153
    #dbg_declare(ptr %31, !1156, !DIExpression(), !1157)
  %52 = load ptr, ptr %5, align 8, !dbg !1158
  %53 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %52, i32 0, i32 32, !dbg !1159
  %54 = load ptr, ptr %53, align 8, !dbg !1159
  %55 = getelementptr inbounds ptr, ptr %54, i64 0, !dbg !1158
  %56 = load ptr, ptr %55, align 8, !dbg !1158
  store ptr %56, ptr %31, align 8, !dbg !1157
    #dbg_declare(ptr %32, !1160, !DIExpression(), !1161)
  %57 = load ptr, ptr %5, align 8, !dbg !1162
  %58 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %57, i32 0, i32 32, !dbg !1163
  %59 = load ptr, ptr %58, align 8, !dbg !1163
  %60 = getelementptr inbounds ptr, ptr %59, i64 1, !dbg !1162
  %61 = load ptr, ptr %60, align 8, !dbg !1162
  store ptr %61, ptr %32, align 8, !dbg !1161
    #dbg_declare(ptr %33, !1164, !DIExpression(), !1165)
  %62 = load ptr, ptr %5, align 8, !dbg !1166
  %63 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %62, i32 0, i32 32, !dbg !1167
  %64 = load ptr, ptr %63, align 8, !dbg !1167
  %65 = getelementptr inbounds ptr, ptr %64, i64 2, !dbg !1166
  %66 = load ptr, ptr %65, align 8, !dbg !1166
  store ptr %66, ptr %33, align 8, !dbg !1165
  store i32 0, ptr %26, align 4, !dbg !1168
  br label %67, !dbg !1170

67:                                               ; preds = %356, %4
  %68 = load i32, ptr %26, align 4, !dbg !1171
  %69 = load i32, ptr %8, align 4, !dbg !1173
  %70 = icmp slt i32 %68, %69, !dbg !1174
  br i1 %70, label %71, label %359, !dbg !1175

71:                                               ; preds = %67
  %72 = load ptr, ptr %6, align 8, !dbg !1176
  %73 = load i32, ptr %26, align 4, !dbg !1178
  %74 = sext i32 %73 to i64, !dbg !1176
  %75 = getelementptr inbounds ptr, ptr %72, i64 %74, !dbg !1176
  %76 = load ptr, ptr %75, align 8, !dbg !1176
  store ptr %76, ptr %21, align 8, !dbg !1179
  %77 = load ptr, ptr %7, align 8, !dbg !1180
  %78 = load i32, ptr %26, align 4, !dbg !1181
  %79 = sext i32 %78 to i64, !dbg !1180
  %80 = getelementptr inbounds ptr, ptr %77, i64 %79, !dbg !1180
  %81 = load ptr, ptr %80, align 8, !dbg !1180
  store ptr %81, ptr %22, align 8, !dbg !1182
  %82 = load ptr, ptr %9, align 8, !dbg !1183
  %83 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %82, i32 0, i32 6, !dbg !1185
  %84 = load i32, ptr %83, align 8, !dbg !1185
  %85 = icmp ne i32 %84, 0, !dbg !1183
  br i1 %85, label %86, label %108, !dbg !1183

86:                                               ; preds = %71
  %87 = load i32, ptr %28, align 4, !dbg !1186
  %88 = sub i32 %87, 1, !dbg !1188
  %89 = mul i32 %88, 3, !dbg !1189
  %90 = load ptr, ptr %21, align 8, !dbg !1190
  %91 = zext i32 %89 to i64, !dbg !1190
  %92 = getelementptr inbounds nuw i8, ptr %90, i64 %91, !dbg !1190
  store ptr %92, ptr %21, align 8, !dbg !1190
  %93 = load i32, ptr %28, align 4, !dbg !1191
  %94 = sub i32 %93, 1, !dbg !1192
  %95 = load ptr, ptr %22, align 8, !dbg !1193
  %96 = zext i32 %94 to i64, !dbg !1193
  %97 = getelementptr inbounds nuw i8, ptr %95, i64 %96, !dbg !1193
  store ptr %97, ptr %22, align 8, !dbg !1193
  store i32 -1, ptr %24, align 4, !dbg !1194
  store i32 -3, ptr %25, align 4, !dbg !1195
  %98 = load ptr, ptr %9, align 8, !dbg !1196
  %99 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %98, i32 0, i32 5, !dbg !1197
  %100 = load ptr, ptr %99, align 8, !dbg !1197
  %101 = load i32, ptr %28, align 4, !dbg !1198
  %102 = add i32 %101, 1, !dbg !1199
  %103 = mul i32 %102, 3, !dbg !1200
  %104 = zext i32 %103 to i64, !dbg !1201
  %105 = getelementptr inbounds nuw i16, ptr %100, i64 %104, !dbg !1201
  store ptr %105, ptr %20, align 8, !dbg !1202
  %106 = load ptr, ptr %9, align 8, !dbg !1203
  %107 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %106, i32 0, i32 6, !dbg !1204
  store i32 0, ptr %107, align 8, !dbg !1205
  br label %114, !dbg !1206

108:                                              ; preds = %71
  store i32 1, ptr %24, align 4, !dbg !1207
  store i32 3, ptr %25, align 4, !dbg !1209
  %109 = load ptr, ptr %9, align 8, !dbg !1210
  %110 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %109, i32 0, i32 5, !dbg !1211
  %111 = load ptr, ptr %110, align 8, !dbg !1211
  store ptr %111, ptr %20, align 8, !dbg !1212
  %112 = load ptr, ptr %9, align 8, !dbg !1213
  %113 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %112, i32 0, i32 6, !dbg !1214
  store i32 1, ptr %113, align 8, !dbg !1215
  br label %114

114:                                              ; preds = %108, %86
  store i32 0, ptr %13, align 4, !dbg !1216
  store i32 0, ptr %12, align 4, !dbg !1217
  store i32 0, ptr %11, align 4, !dbg !1218
  store i32 0, ptr %16, align 4, !dbg !1219
  store i32 0, ptr %15, align 4, !dbg !1220
  store i32 0, ptr %14, align 4, !dbg !1221
  store i32 0, ptr %19, align 4, !dbg !1222
  store i32 0, ptr %18, align 4, !dbg !1223
  store i32 0, ptr %17, align 4, !dbg !1224
  %115 = load i32, ptr %28, align 4, !dbg !1225
  store i32 %115, ptr %27, align 4, !dbg !1227
  br label %116, !dbg !1228

116:                                              ; preds = %340, %114
  %117 = load i32, ptr %27, align 4, !dbg !1229
  %118 = icmp ugt i32 %117, 0, !dbg !1231
  br i1 %118, label %119, label %343, !dbg !1232

119:                                              ; preds = %116
  %120 = load i32, ptr %11, align 4, !dbg !1233
  %121 = load ptr, ptr %20, align 8, !dbg !1233
  %122 = load i32, ptr %25, align 4, !dbg !1233
  %123 = add nsw i32 %122, 0, !dbg !1233
  %124 = sext i32 %123 to i64, !dbg !1233
  %125 = getelementptr inbounds i16, ptr %121, i64 %124, !dbg !1233
  %126 = load i16, ptr %125, align 2, !dbg !1233
  %127 = sext i16 %126 to i32, !dbg !1233
  %128 = add nsw i32 %120, %127, !dbg !1233
  %129 = add nsw i32 %128, 8, !dbg !1233
  %130 = ashr i32 %129, 4, !dbg !1233
  store i32 %130, ptr %11, align 4, !dbg !1235
  %131 = load i32, ptr %12, align 4, !dbg !1236
  %132 = load ptr, ptr %20, align 8, !dbg !1236
  %133 = load i32, ptr %25, align 4, !dbg !1236
  %134 = add nsw i32 %133, 1, !dbg !1236
  %135 = sext i32 %134 to i64, !dbg !1236
  %136 = getelementptr inbounds i16, ptr %132, i64 %135, !dbg !1236
  %137 = load i16, ptr %136, align 2, !dbg !1236
  %138 = sext i16 %137 to i32, !dbg !1236
  %139 = add nsw i32 %131, %138, !dbg !1236
  %140 = add nsw i32 %139, 8, !dbg !1236
  %141 = ashr i32 %140, 4, !dbg !1236
  store i32 %141, ptr %12, align 4, !dbg !1237
  %142 = load i32, ptr %13, align 4, !dbg !1238
  %143 = load ptr, ptr %20, align 8, !dbg !1238
  %144 = load i32, ptr %25, align 4, !dbg !1238
  %145 = add nsw i32 %144, 2, !dbg !1238
  %146 = sext i32 %145 to i64, !dbg !1238
  %147 = getelementptr inbounds i16, ptr %143, i64 %146, !dbg !1238
  %148 = load i16, ptr %147, align 2, !dbg !1238
  %149 = sext i16 %148 to i32, !dbg !1238
  %150 = add nsw i32 %142, %149, !dbg !1238
  %151 = add nsw i32 %150, 8, !dbg !1238
  %152 = ashr i32 %151, 4, !dbg !1238
  store i32 %152, ptr %13, align 4, !dbg !1239
  %153 = load ptr, ptr %30, align 8, !dbg !1240
  %154 = load i32, ptr %11, align 4, !dbg !1241
  %155 = sext i32 %154 to i64, !dbg !1240
  %156 = getelementptr inbounds i32, ptr %153, i64 %155, !dbg !1240
  %157 = load i32, ptr %156, align 4, !dbg !1240
  store i32 %157, ptr %11, align 4, !dbg !1242
  %158 = load ptr, ptr %30, align 8, !dbg !1243
  %159 = load i32, ptr %12, align 4, !dbg !1244
  %160 = sext i32 %159 to i64, !dbg !1243
  %161 = getelementptr inbounds i32, ptr %158, i64 %160, !dbg !1243
  %162 = load i32, ptr %161, align 4, !dbg !1243
  store i32 %162, ptr %12, align 4, !dbg !1245
  %163 = load ptr, ptr %30, align 8, !dbg !1246
  %164 = load i32, ptr %13, align 4, !dbg !1247
  %165 = sext i32 %164 to i64, !dbg !1246
  %166 = getelementptr inbounds i32, ptr %163, i64 %165, !dbg !1246
  %167 = load i32, ptr %166, align 4, !dbg !1246
  store i32 %167, ptr %13, align 4, !dbg !1248
  %168 = load ptr, ptr %21, align 8, !dbg !1249
  %169 = getelementptr inbounds i8, ptr %168, i64 0, !dbg !1249
  %170 = load i8, ptr %169, align 1, !dbg !1249
  %171 = zext i8 %170 to i32, !dbg !1249
  %172 = load i32, ptr %11, align 4, !dbg !1250
  %173 = add nsw i32 %172, %171, !dbg !1250
  store i32 %173, ptr %11, align 4, !dbg !1250
  %174 = load ptr, ptr %21, align 8, !dbg !1251
  %175 = getelementptr inbounds i8, ptr %174, i64 1, !dbg !1251
  %176 = load i8, ptr %175, align 1, !dbg !1251
  %177 = zext i8 %176 to i32, !dbg !1251
  %178 = load i32, ptr %12, align 4, !dbg !1252
  %179 = add nsw i32 %178, %177, !dbg !1252
  store i32 %179, ptr %12, align 4, !dbg !1252
  %180 = load ptr, ptr %21, align 8, !dbg !1253
  %181 = getelementptr inbounds i8, ptr %180, i64 2, !dbg !1253
  %182 = load i8, ptr %181, align 1, !dbg !1253
  %183 = zext i8 %182 to i32, !dbg !1253
  %184 = load i32, ptr %13, align 4, !dbg !1254
  %185 = add nsw i32 %184, %183, !dbg !1254
  store i32 %185, ptr %13, align 4, !dbg !1254
  %186 = load ptr, ptr %29, align 8, !dbg !1255
  %187 = load i32, ptr %11, align 4, !dbg !1255
  %188 = sext i32 %187 to i64, !dbg !1255
  %189 = getelementptr inbounds i8, ptr %186, i64 %188, !dbg !1255
  %190 = load i8, ptr %189, align 1, !dbg !1255
  %191 = zext i8 %190 to i32, !dbg !1255
  store i32 %191, ptr %11, align 4, !dbg !1256
  %192 = load ptr, ptr %29, align 8, !dbg !1257
  %193 = load i32, ptr %12, align 4, !dbg !1257
  %194 = sext i32 %193 to i64, !dbg !1257
  %195 = getelementptr inbounds i8, ptr %192, i64 %194, !dbg !1257
  %196 = load i8, ptr %195, align 1, !dbg !1257
  %197 = zext i8 %196 to i32, !dbg !1257
  store i32 %197, ptr %12, align 4, !dbg !1258
  %198 = load ptr, ptr %29, align 8, !dbg !1259
  %199 = load i32, ptr %13, align 4, !dbg !1259
  %200 = sext i32 %199 to i64, !dbg !1259
  %201 = getelementptr inbounds i8, ptr %198, i64 %200, !dbg !1259
  %202 = load i8, ptr %201, align 1, !dbg !1259
  %203 = zext i8 %202 to i32, !dbg !1259
  store i32 %203, ptr %13, align 4, !dbg !1260
  %204 = load ptr, ptr %10, align 8, !dbg !1261
  %205 = load i32, ptr %11, align 4, !dbg !1262
  %206 = ashr i32 %205, 3, !dbg !1263
  %207 = sext i32 %206 to i64, !dbg !1261
  %208 = getelementptr inbounds ptr, ptr %204, i64 %207, !dbg !1261
  %209 = load ptr, ptr %208, align 8, !dbg !1261
  %210 = load i32, ptr %12, align 4, !dbg !1264
  %211 = ashr i32 %210, 2, !dbg !1265
  %212 = sext i32 %211 to i64, !dbg !1261
  %213 = getelementptr inbounds [32 x i16], ptr %209, i64 %212, !dbg !1261
  %214 = load i32, ptr %13, align 4, !dbg !1266
  %215 = ashr i32 %214, 3, !dbg !1267
  %216 = sext i32 %215 to i64, !dbg !1261
  %217 = getelementptr inbounds [32 x i16], ptr %213, i64 0, i64 %216, !dbg !1261
  store ptr %217, ptr %23, align 8, !dbg !1268
  %218 = load ptr, ptr %23, align 8, !dbg !1269
  %219 = load i16, ptr %218, align 2, !dbg !1271
  %220 = zext i16 %219 to i32, !dbg !1271
  %221 = icmp eq i32 %220, 0, !dbg !1272
  br i1 %221, label %222, label %230, !dbg !1272

222:                                              ; preds = %119
  %223 = load ptr, ptr %5, align 8, !dbg !1273
  %224 = load i32, ptr %11, align 4, !dbg !1274
  %225 = ashr i32 %224, 3, !dbg !1275
  %226 = load i32, ptr %12, align 4, !dbg !1276
  %227 = ashr i32 %226, 2, !dbg !1277
  %228 = load i32, ptr %13, align 4, !dbg !1278
  %229 = ashr i32 %228, 3, !dbg !1279
  call void @fill_inverse_cmap(ptr noundef %223, i32 noundef %225, i32 noundef %227, i32 noundef %229), !dbg !1280
  br label %230, !dbg !1280

230:                                              ; preds = %222, %119
    #dbg_declare(ptr %34, !1281, !DIExpression(), !1283)
  %231 = load ptr, ptr %23, align 8, !dbg !1284
  %232 = load i16, ptr %231, align 2, !dbg !1285
  %233 = zext i16 %232 to i32, !dbg !1285
  %234 = sub nsw i32 %233, 1, !dbg !1286
  store i32 %234, ptr %34, align 4, !dbg !1283
  %235 = load i32, ptr %34, align 4, !dbg !1287
  %236 = trunc i32 %235 to i8, !dbg !1288
  %237 = load ptr, ptr %22, align 8, !dbg !1289
  store i8 %236, ptr %237, align 1, !dbg !1290
  %238 = load ptr, ptr %31, align 8, !dbg !1291
  %239 = load i32, ptr %34, align 4, !dbg !1291
  %240 = sext i32 %239 to i64, !dbg !1291
  %241 = getelementptr inbounds i8, ptr %238, i64 %240, !dbg !1291
  %242 = load i8, ptr %241, align 1, !dbg !1291
  %243 = zext i8 %242 to i32, !dbg !1291
  %244 = load i32, ptr %11, align 4, !dbg !1292
  %245 = sub nsw i32 %244, %243, !dbg !1292
  store i32 %245, ptr %11, align 4, !dbg !1292
  %246 = load ptr, ptr %32, align 8, !dbg !1293
  %247 = load i32, ptr %34, align 4, !dbg !1293
  %248 = sext i32 %247 to i64, !dbg !1293
  %249 = getelementptr inbounds i8, ptr %246, i64 %248, !dbg !1293
  %250 = load i8, ptr %249, align 1, !dbg !1293
  %251 = zext i8 %250 to i32, !dbg !1293
  %252 = load i32, ptr %12, align 4, !dbg !1294
  %253 = sub nsw i32 %252, %251, !dbg !1294
  store i32 %253, ptr %12, align 4, !dbg !1294
  %254 = load ptr, ptr %33, align 8, !dbg !1295
  %255 = load i32, ptr %34, align 4, !dbg !1295
  %256 = sext i32 %255 to i64, !dbg !1295
  %257 = getelementptr inbounds i8, ptr %254, i64 %256, !dbg !1295
  %258 = load i8, ptr %257, align 1, !dbg !1295
  %259 = zext i8 %258 to i32, !dbg !1295
  %260 = load i32, ptr %13, align 4, !dbg !1296
  %261 = sub nsw i32 %260, %259, !dbg !1296
  store i32 %261, ptr %13, align 4, !dbg !1296
    #dbg_declare(ptr %35, !1297, !DIExpression(), !1299)
    #dbg_declare(ptr %36, !1300, !DIExpression(), !1301)
  %262 = load i32, ptr %11, align 4, !dbg !1302
  store i32 %262, ptr %35, align 4, !dbg !1303
  %263 = load i32, ptr %11, align 4, !dbg !1304
  %264 = mul nsw i32 %263, 2, !dbg !1305
  store i32 %264, ptr %36, align 4, !dbg !1306
  %265 = load i32, ptr %36, align 4, !dbg !1307
  %266 = load i32, ptr %11, align 4, !dbg !1308
  %267 = add nsw i32 %266, %265, !dbg !1308
  store i32 %267, ptr %11, align 4, !dbg !1308
  %268 = load i32, ptr %17, align 4, !dbg !1309
  %269 = load i32, ptr %11, align 4, !dbg !1310
  %270 = add nsw i32 %268, %269, !dbg !1311
  %271 = trunc i32 %270 to i16, !dbg !1312
  %272 = load ptr, ptr %20, align 8, !dbg !1313
  %273 = getelementptr inbounds i16, ptr %272, i64 0, !dbg !1313
  store i16 %271, ptr %273, align 2, !dbg !1314
  %274 = load i32, ptr %36, align 4, !dbg !1315
  %275 = load i32, ptr %11, align 4, !dbg !1316
  %276 = add nsw i32 %275, %274, !dbg !1316
  store i32 %276, ptr %11, align 4, !dbg !1316
  %277 = load i32, ptr %14, align 4, !dbg !1317
  %278 = load i32, ptr %11, align 4, !dbg !1318
  %279 = add nsw i32 %277, %278, !dbg !1319
  store i32 %279, ptr %17, align 4, !dbg !1320
  %280 = load i32, ptr %35, align 4, !dbg !1321
  store i32 %280, ptr %14, align 4, !dbg !1322
  %281 = load i32, ptr %36, align 4, !dbg !1323
  %282 = load i32, ptr %11, align 4, !dbg !1324
  %283 = add nsw i32 %282, %281, !dbg !1324
  store i32 %283, ptr %11, align 4, !dbg !1324
  %284 = load i32, ptr %12, align 4, !dbg !1325
  store i32 %284, ptr %35, align 4, !dbg !1326
  %285 = load i32, ptr %12, align 4, !dbg !1327
  %286 = mul nsw i32 %285, 2, !dbg !1328
  store i32 %286, ptr %36, align 4, !dbg !1329
  %287 = load i32, ptr %36, align 4, !dbg !1330
  %288 = load i32, ptr %12, align 4, !dbg !1331
  %289 = add nsw i32 %288, %287, !dbg !1331
  store i32 %289, ptr %12, align 4, !dbg !1331
  %290 = load i32, ptr %18, align 4, !dbg !1332
  %291 = load i32, ptr %12, align 4, !dbg !1333
  %292 = add nsw i32 %290, %291, !dbg !1334
  %293 = trunc i32 %292 to i16, !dbg !1335
  %294 = load ptr, ptr %20, align 8, !dbg !1336
  %295 = getelementptr inbounds i16, ptr %294, i64 1, !dbg !1336
  store i16 %293, ptr %295, align 2, !dbg !1337
  %296 = load i32, ptr %36, align 4, !dbg !1338
  %297 = load i32, ptr %12, align 4, !dbg !1339
  %298 = add nsw i32 %297, %296, !dbg !1339
  store i32 %298, ptr %12, align 4, !dbg !1339
  %299 = load i32, ptr %15, align 4, !dbg !1340
  %300 = load i32, ptr %12, align 4, !dbg !1341
  %301 = add nsw i32 %299, %300, !dbg !1342
  store i32 %301, ptr %18, align 4, !dbg !1343
  %302 = load i32, ptr %35, align 4, !dbg !1344
  store i32 %302, ptr %15, align 4, !dbg !1345
  %303 = load i32, ptr %36, align 4, !dbg !1346
  %304 = load i32, ptr %12, align 4, !dbg !1347
  %305 = add nsw i32 %304, %303, !dbg !1347
  store i32 %305, ptr %12, align 4, !dbg !1347
  %306 = load i32, ptr %13, align 4, !dbg !1348
  store i32 %306, ptr %35, align 4, !dbg !1349
  %307 = load i32, ptr %13, align 4, !dbg !1350
  %308 = mul nsw i32 %307, 2, !dbg !1351
  store i32 %308, ptr %36, align 4, !dbg !1352
  %309 = load i32, ptr %36, align 4, !dbg !1353
  %310 = load i32, ptr %13, align 4, !dbg !1354
  %311 = add nsw i32 %310, %309, !dbg !1354
  store i32 %311, ptr %13, align 4, !dbg !1354
  %312 = load i32, ptr %19, align 4, !dbg !1355
  %313 = load i32, ptr %13, align 4, !dbg !1356
  %314 = add nsw i32 %312, %313, !dbg !1357
  %315 = trunc i32 %314 to i16, !dbg !1358
  %316 = load ptr, ptr %20, align 8, !dbg !1359
  %317 = getelementptr inbounds i16, ptr %316, i64 2, !dbg !1359
  store i16 %315, ptr %317, align 2, !dbg !1360
  %318 = load i32, ptr %36, align 4, !dbg !1361
  %319 = load i32, ptr %13, align 4, !dbg !1362
  %320 = add nsw i32 %319, %318, !dbg !1362
  store i32 %320, ptr %13, align 4, !dbg !1362
  %321 = load i32, ptr %16, align 4, !dbg !1363
  %322 = load i32, ptr %13, align 4, !dbg !1364
  %323 = add nsw i32 %321, %322, !dbg !1365
  store i32 %323, ptr %19, align 4, !dbg !1366
  %324 = load i32, ptr %35, align 4, !dbg !1367
  store i32 %324, ptr %16, align 4, !dbg !1368
  %325 = load i32, ptr %36, align 4, !dbg !1369
  %326 = load i32, ptr %13, align 4, !dbg !1370
  %327 = add nsw i32 %326, %325, !dbg !1370
  store i32 %327, ptr %13, align 4, !dbg !1370
  %328 = load i32, ptr %25, align 4, !dbg !1371
  %329 = load ptr, ptr %21, align 8, !dbg !1372
  %330 = sext i32 %328 to i64, !dbg !1372
  %331 = getelementptr inbounds i8, ptr %329, i64 %330, !dbg !1372
  store ptr %331, ptr %21, align 8, !dbg !1372
  %332 = load i32, ptr %24, align 4, !dbg !1373
  %333 = load ptr, ptr %22, align 8, !dbg !1374
  %334 = sext i32 %332 to i64, !dbg !1374
  %335 = getelementptr inbounds i8, ptr %333, i64 %334, !dbg !1374
  store ptr %335, ptr %22, align 8, !dbg !1374
  %336 = load i32, ptr %25, align 4, !dbg !1375
  %337 = load ptr, ptr %20, align 8, !dbg !1376
  %338 = sext i32 %336 to i64, !dbg !1376
  %339 = getelementptr inbounds i16, ptr %337, i64 %338, !dbg !1376
  store ptr %339, ptr %20, align 8, !dbg !1376
  br label %340, !dbg !1377

340:                                              ; preds = %230
  %341 = load i32, ptr %27, align 4, !dbg !1378
  %342 = add i32 %341, -1, !dbg !1378
  store i32 %342, ptr %27, align 4, !dbg !1378
  br label %116, !dbg !1379, !llvm.loop !1380

343:                                              ; preds = %116
  %344 = load i32, ptr %17, align 4, !dbg !1382
  %345 = trunc i32 %344 to i16, !dbg !1383
  %346 = load ptr, ptr %20, align 8, !dbg !1384
  %347 = getelementptr inbounds i16, ptr %346, i64 0, !dbg !1384
  store i16 %345, ptr %347, align 2, !dbg !1385
  %348 = load i32, ptr %18, align 4, !dbg !1386
  %349 = trunc i32 %348 to i16, !dbg !1387
  %350 = load ptr, ptr %20, align 8, !dbg !1388
  %351 = getelementptr inbounds i16, ptr %350, i64 1, !dbg !1388
  store i16 %349, ptr %351, align 2, !dbg !1389
  %352 = load i32, ptr %19, align 4, !dbg !1390
  %353 = trunc i32 %352 to i16, !dbg !1391
  %354 = load ptr, ptr %20, align 8, !dbg !1392
  %355 = getelementptr inbounds i16, ptr %354, i64 2, !dbg !1392
  store i16 %353, ptr %355, align 2, !dbg !1393
  br label %356, !dbg !1394

356:                                              ; preds = %343
  %357 = load i32, ptr %26, align 4, !dbg !1395
  %358 = add nsw i32 %357, 1, !dbg !1395
  store i32 %358, ptr %26, align 4, !dbg !1395
  br label %67, !dbg !1396, !llvm.loop !1397

359:                                              ; preds = %67
  ret void, !dbg !1399
}

; Function Attrs: noinline nounwind uwtable
define internal void @pass2_no_dither(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 !dbg !1400 {
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
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !1401, !DIExpression(), !1402)
  store ptr %1, ptr %6, align 8
    #dbg_declare(ptr %6, !1403, !DIExpression(), !1404)
  store ptr %2, ptr %7, align 8
    #dbg_declare(ptr %7, !1405, !DIExpression(), !1406)
  store i32 %3, ptr %8, align 4
    #dbg_declare(ptr %8, !1407, !DIExpression(), !1408)
    #dbg_declare(ptr %9, !1409, !DIExpression(), !1410)
  %20 = load ptr, ptr %5, align 8, !dbg !1411
  %21 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %20, i32 0, i32 83, !dbg !1412
  %22 = load ptr, ptr %21, align 8, !dbg !1412
  store ptr %22, ptr %9, align 8, !dbg !1410
    #dbg_declare(ptr %10, !1413, !DIExpression(), !1414)
  %23 = load ptr, ptr %9, align 8, !dbg !1415
  %24 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %23, i32 0, i32 3, !dbg !1416
  %25 = load ptr, ptr %24, align 8, !dbg !1416
  store ptr %25, ptr %10, align 8, !dbg !1414
    #dbg_declare(ptr %11, !1417, !DIExpression(), !1418)
    #dbg_declare(ptr %12, !1419, !DIExpression(), !1420)
    #dbg_declare(ptr %13, !1421, !DIExpression(), !1422)
    #dbg_declare(ptr %14, !1423, !DIExpression(), !1424)
    #dbg_declare(ptr %15, !1425, !DIExpression(), !1426)
    #dbg_declare(ptr %16, !1427, !DIExpression(), !1428)
    #dbg_declare(ptr %17, !1429, !DIExpression(), !1430)
    #dbg_declare(ptr %18, !1431, !DIExpression(), !1432)
    #dbg_declare(ptr %19, !1433, !DIExpression(), !1434)
  %26 = load ptr, ptr %5, align 8, !dbg !1435
  %27 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %26, i32 0, i32 26, !dbg !1436
  %28 = load i32, ptr %27, align 8, !dbg !1436
  store i32 %28, ptr %19, align 4, !dbg !1434
  store i32 0, ptr %17, align 4, !dbg !1437
  br label %29, !dbg !1439

29:                                               ; preds = %96, %4
  %30 = load i32, ptr %17, align 4, !dbg !1440
  %31 = load i32, ptr %8, align 4, !dbg !1442
  %32 = icmp slt i32 %30, %31, !dbg !1443
  br i1 %32, label %33, label %99, !dbg !1444

33:                                               ; preds = %29
  %34 = load ptr, ptr %6, align 8, !dbg !1445
  %35 = load i32, ptr %17, align 4, !dbg !1447
  %36 = sext i32 %35 to i64, !dbg !1445
  %37 = getelementptr inbounds ptr, ptr %34, i64 %36, !dbg !1445
  %38 = load ptr, ptr %37, align 8, !dbg !1445
  store ptr %38, ptr %11, align 8, !dbg !1448
  %39 = load ptr, ptr %7, align 8, !dbg !1449
  %40 = load i32, ptr %17, align 4, !dbg !1450
  %41 = sext i32 %40 to i64, !dbg !1449
  %42 = getelementptr inbounds ptr, ptr %39, i64 %41, !dbg !1449
  %43 = load ptr, ptr %42, align 8, !dbg !1449
  store ptr %43, ptr %12, align 8, !dbg !1451
  %44 = load i32, ptr %19, align 4, !dbg !1452
  store i32 %44, ptr %18, align 4, !dbg !1454
  br label %45, !dbg !1455

45:                                               ; preds = %92, %33
  %46 = load i32, ptr %18, align 4, !dbg !1456
  %47 = icmp ugt i32 %46, 0, !dbg !1458
  br i1 %47, label %48, label %95, !dbg !1459

48:                                               ; preds = %45
  %49 = load ptr, ptr %11, align 8, !dbg !1460
  %50 = getelementptr inbounds nuw i8, ptr %49, i32 1, !dbg !1460
  store ptr %50, ptr %11, align 8, !dbg !1460
  %51 = load i8, ptr %49, align 1, !dbg !1460
  %52 = zext i8 %51 to i32, !dbg !1460
  %53 = ashr i32 %52, 3, !dbg !1462
  store i32 %53, ptr %14, align 4, !dbg !1463
  %54 = load ptr, ptr %11, align 8, !dbg !1464
  %55 = getelementptr inbounds nuw i8, ptr %54, i32 1, !dbg !1464
  store ptr %55, ptr %11, align 8, !dbg !1464
  %56 = load i8, ptr %54, align 1, !dbg !1464
  %57 = zext i8 %56 to i32, !dbg !1464
  %58 = ashr i32 %57, 2, !dbg !1465
  store i32 %58, ptr %15, align 4, !dbg !1466
  %59 = load ptr, ptr %11, align 8, !dbg !1467
  %60 = getelementptr inbounds nuw i8, ptr %59, i32 1, !dbg !1467
  store ptr %60, ptr %11, align 8, !dbg !1467
  %61 = load i8, ptr %59, align 1, !dbg !1467
  %62 = zext i8 %61 to i32, !dbg !1467
  %63 = ashr i32 %62, 3, !dbg !1468
  store i32 %63, ptr %16, align 4, !dbg !1469
  %64 = load ptr, ptr %10, align 8, !dbg !1470
  %65 = load i32, ptr %14, align 4, !dbg !1471
  %66 = sext i32 %65 to i64, !dbg !1470
  %67 = getelementptr inbounds ptr, ptr %64, i64 %66, !dbg !1470
  %68 = load ptr, ptr %67, align 8, !dbg !1470
  %69 = load i32, ptr %15, align 4, !dbg !1472
  %70 = sext i32 %69 to i64, !dbg !1470
  %71 = getelementptr inbounds [32 x i16], ptr %68, i64 %70, !dbg !1470
  %72 = load i32, ptr %16, align 4, !dbg !1473
  %73 = sext i32 %72 to i64, !dbg !1470
  %74 = getelementptr inbounds [32 x i16], ptr %71, i64 0, i64 %73, !dbg !1470
  store ptr %74, ptr %13, align 8, !dbg !1474
  %75 = load ptr, ptr %13, align 8, !dbg !1475
  %76 = load i16, ptr %75, align 2, !dbg !1477
  %77 = zext i16 %76 to i32, !dbg !1477
  %78 = icmp eq i32 %77, 0, !dbg !1478
  br i1 %78, label %79, label %84, !dbg !1478

79:                                               ; preds = %48
  %80 = load ptr, ptr %5, align 8, !dbg !1479
  %81 = load i32, ptr %14, align 4, !dbg !1480
  %82 = load i32, ptr %15, align 4, !dbg !1481
  %83 = load i32, ptr %16, align 4, !dbg !1482
  call void @fill_inverse_cmap(ptr noundef %80, i32 noundef %81, i32 noundef %82, i32 noundef %83), !dbg !1483
  br label %84, !dbg !1483

84:                                               ; preds = %79, %48
  %85 = load ptr, ptr %13, align 8, !dbg !1484
  %86 = load i16, ptr %85, align 2, !dbg !1485
  %87 = zext i16 %86 to i32, !dbg !1485
  %88 = sub nsw i32 %87, 1, !dbg !1486
  %89 = trunc i32 %88 to i8, !dbg !1487
  %90 = load ptr, ptr %12, align 8, !dbg !1488
  %91 = getelementptr inbounds nuw i8, ptr %90, i32 1, !dbg !1488
  store ptr %91, ptr %12, align 8, !dbg !1488
  store i8 %89, ptr %90, align 1, !dbg !1489
  br label %92, !dbg !1490

92:                                               ; preds = %84
  %93 = load i32, ptr %18, align 4, !dbg !1491
  %94 = add i32 %93, -1, !dbg !1491
  store i32 %94, ptr %18, align 4, !dbg !1491
  br label %45, !dbg !1492, !llvm.loop !1493

95:                                               ; preds = %45
  br label %96, !dbg !1495

96:                                               ; preds = %95
  %97 = load i32, ptr %17, align 4, !dbg !1496
  %98 = add nsw i32 %97, 1, !dbg !1496
  store i32 %98, ptr %17, align 4, !dbg !1496
  br label %29, !dbg !1497, !llvm.loop !1498

99:                                               ; preds = %29
  ret void, !dbg !1500
}

; Function Attrs: noinline nounwind uwtable
define internal void @finish_pass2(ptr noundef %0) #0 !dbg !1501 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !1502, !DIExpression(), !1503)
  ret void, !dbg !1504
}

declare void @jzero_far(ptr noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @select_colors(ptr noundef %0, i32 noundef %1) #0 !dbg !1505 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1508, !DIExpression(), !1509)
  store i32 %1, ptr %4, align 4
    #dbg_declare(ptr %4, !1510, !DIExpression(), !1511)
    #dbg_declare(ptr %5, !1512, !DIExpression(), !1513)
    #dbg_declare(ptr %6, !1514, !DIExpression(), !1515)
    #dbg_declare(ptr %7, !1516, !DIExpression(), !1517)
  %8 = load ptr, ptr %3, align 8, !dbg !1518
  %9 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %8, i32 0, i32 1, !dbg !1519
  %10 = load ptr, ptr %9, align 8, !dbg !1519
  %11 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %10, i32 0, i32 0, !dbg !1520
  %12 = load ptr, ptr %11, align 8, !dbg !1520
  %13 = load ptr, ptr %3, align 8, !dbg !1521
  %14 = load i32, ptr %4, align 4, !dbg !1522
  %15 = sext i32 %14 to i64, !dbg !1522
  %16 = mul i64 %15, 40, !dbg !1523
  %17 = call ptr %12(ptr noundef %13, i32 noundef 1, i64 noundef %16), !dbg !1524
  store ptr %17, ptr %5, align 8, !dbg !1525
  store i32 1, ptr %6, align 4, !dbg !1526
  %18 = load ptr, ptr %5, align 8, !dbg !1527
  %19 = getelementptr inbounds %struct.box, ptr %18, i64 0, !dbg !1527
  %20 = getelementptr inbounds nuw %struct.box, ptr %19, i32 0, i32 0, !dbg !1528
  store i32 0, ptr %20, align 8, !dbg !1529
  %21 = load ptr, ptr %5, align 8, !dbg !1530
  %22 = getelementptr inbounds %struct.box, ptr %21, i64 0, !dbg !1530
  %23 = getelementptr inbounds nuw %struct.box, ptr %22, i32 0, i32 1, !dbg !1531
  store i32 31, ptr %23, align 4, !dbg !1532
  %24 = load ptr, ptr %5, align 8, !dbg !1533
  %25 = getelementptr inbounds %struct.box, ptr %24, i64 0, !dbg !1533
  %26 = getelementptr inbounds nuw %struct.box, ptr %25, i32 0, i32 2, !dbg !1534
  store i32 0, ptr %26, align 8, !dbg !1535
  %27 = load ptr, ptr %5, align 8, !dbg !1536
  %28 = getelementptr inbounds %struct.box, ptr %27, i64 0, !dbg !1536
  %29 = getelementptr inbounds nuw %struct.box, ptr %28, i32 0, i32 3, !dbg !1537
  store i32 63, ptr %29, align 4, !dbg !1538
  %30 = load ptr, ptr %5, align 8, !dbg !1539
  %31 = getelementptr inbounds %struct.box, ptr %30, i64 0, !dbg !1539
  %32 = getelementptr inbounds nuw %struct.box, ptr %31, i32 0, i32 4, !dbg !1540
  store i32 0, ptr %32, align 8, !dbg !1541
  %33 = load ptr, ptr %5, align 8, !dbg !1542
  %34 = getelementptr inbounds %struct.box, ptr %33, i64 0, !dbg !1542
  %35 = getelementptr inbounds nuw %struct.box, ptr %34, i32 0, i32 5, !dbg !1543
  store i32 31, ptr %35, align 4, !dbg !1544
  %36 = load ptr, ptr %3, align 8, !dbg !1545
  %37 = load ptr, ptr %5, align 8, !dbg !1546
  %38 = getelementptr inbounds %struct.box, ptr %37, i64 0, !dbg !1546
  call void @update_box(ptr noundef %36, ptr noundef %38), !dbg !1547
  %39 = load ptr, ptr %3, align 8, !dbg !1548
  %40 = load ptr, ptr %5, align 8, !dbg !1549
  %41 = load i32, ptr %6, align 4, !dbg !1550
  %42 = load i32, ptr %4, align 4, !dbg !1551
  %43 = call i32 @median_cut(ptr noundef %39, ptr noundef %40, i32 noundef %41, i32 noundef %42), !dbg !1552
  store i32 %43, ptr %6, align 4, !dbg !1553
  store i32 0, ptr %7, align 4, !dbg !1554
  br label %44, !dbg !1556

44:                                               ; preds = %55, %2
  %45 = load i32, ptr %7, align 4, !dbg !1557
  %46 = load i32, ptr %6, align 4, !dbg !1559
  %47 = icmp slt i32 %45, %46, !dbg !1560
  br i1 %47, label %48, label %58, !dbg !1561

48:                                               ; preds = %44
  %49 = load ptr, ptr %3, align 8, !dbg !1562
  %50 = load ptr, ptr %5, align 8, !dbg !1563
  %51 = load i32, ptr %7, align 4, !dbg !1564
  %52 = sext i32 %51 to i64, !dbg !1563
  %53 = getelementptr inbounds %struct.box, ptr %50, i64 %52, !dbg !1563
  %54 = load i32, ptr %7, align 4, !dbg !1565
  call void @compute_color(ptr noundef %49, ptr noundef %53, i32 noundef %54), !dbg !1566
  br label %55, !dbg !1566

55:                                               ; preds = %48
  %56 = load i32, ptr %7, align 4, !dbg !1567
  %57 = add nsw i32 %56, 1, !dbg !1567
  store i32 %57, ptr %7, align 4, !dbg !1567
  br label %44, !dbg !1568, !llvm.loop !1569

58:                                               ; preds = %44
  %59 = load i32, ptr %6, align 4, !dbg !1571
  %60 = load ptr, ptr %3, align 8, !dbg !1572
  %61 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %60, i32 0, i32 31, !dbg !1573
  store i32 %59, ptr %61, align 4, !dbg !1574
  %62 = load ptr, ptr %3, align 8, !dbg !1575
  %63 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %62, i32 0, i32 0, !dbg !1575
  %64 = load ptr, ptr %63, align 8, !dbg !1575
  %65 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %64, i32 0, i32 5, !dbg !1575
  store i32 95, ptr %65, align 8, !dbg !1575
  %66 = load i32, ptr %6, align 4, !dbg !1575
  %67 = load ptr, ptr %3, align 8, !dbg !1575
  %68 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %67, i32 0, i32 0, !dbg !1575
  %69 = load ptr, ptr %68, align 8, !dbg !1575
  %70 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %69, i32 0, i32 6, !dbg !1575
  %71 = getelementptr inbounds [8 x i32], ptr %70, i64 0, i64 0, !dbg !1575
  store i32 %66, ptr %71, align 4, !dbg !1575
  %72 = load ptr, ptr %3, align 8, !dbg !1575
  %73 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %72, i32 0, i32 0, !dbg !1575
  %74 = load ptr, ptr %73, align 8, !dbg !1575
  %75 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %74, i32 0, i32 1, !dbg !1575
  %76 = load ptr, ptr %75, align 8, !dbg !1575
  %77 = load ptr, ptr %3, align 8, !dbg !1575
  call void %76(ptr noundef %77, i32 noundef 1), !dbg !1575
  ret void, !dbg !1576
}

; Function Attrs: noinline nounwind uwtable
define internal void @update_box(ptr noundef %0, ptr noundef %1) #0 !dbg !1577 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1580, !DIExpression(), !1581)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !1582, !DIExpression(), !1583)
    #dbg_declare(ptr %5, !1584, !DIExpression(), !1585)
  %21 = load ptr, ptr %3, align 8, !dbg !1586
  %22 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %21, i32 0, i32 83, !dbg !1587
  %23 = load ptr, ptr %22, align 8, !dbg !1587
  store ptr %23, ptr %5, align 8, !dbg !1585
    #dbg_declare(ptr %6, !1588, !DIExpression(), !1589)
  %24 = load ptr, ptr %5, align 8, !dbg !1590
  %25 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %24, i32 0, i32 3, !dbg !1591
  %26 = load ptr, ptr %25, align 8, !dbg !1591
  store ptr %26, ptr %6, align 8, !dbg !1589
    #dbg_declare(ptr %7, !1592, !DIExpression(), !1593)
    #dbg_declare(ptr %8, !1594, !DIExpression(), !1595)
    #dbg_declare(ptr %9, !1596, !DIExpression(), !1597)
    #dbg_declare(ptr %10, !1598, !DIExpression(), !1599)
    #dbg_declare(ptr %11, !1600, !DIExpression(), !1601)
    #dbg_declare(ptr %12, !1602, !DIExpression(), !1603)
    #dbg_declare(ptr %13, !1604, !DIExpression(), !1605)
    #dbg_declare(ptr %14, !1606, !DIExpression(), !1607)
    #dbg_declare(ptr %15, !1608, !DIExpression(), !1609)
    #dbg_declare(ptr %16, !1610, !DIExpression(), !1611)
    #dbg_declare(ptr %17, !1612, !DIExpression(), !1613)
    #dbg_declare(ptr %18, !1614, !DIExpression(), !1615)
    #dbg_declare(ptr %19, !1616, !DIExpression(), !1617)
    #dbg_declare(ptr %20, !1618, !DIExpression(), !1619)
  %27 = load ptr, ptr %4, align 8, !dbg !1620
  %28 = getelementptr inbounds nuw %struct.box, ptr %27, i32 0, i32 0, !dbg !1621
  %29 = load i32, ptr %28, align 8, !dbg !1621
  store i32 %29, ptr %11, align 4, !dbg !1622
  %30 = load ptr, ptr %4, align 8, !dbg !1623
  %31 = getelementptr inbounds nuw %struct.box, ptr %30, i32 0, i32 1, !dbg !1624
  %32 = load i32, ptr %31, align 4, !dbg !1624
  store i32 %32, ptr %12, align 4, !dbg !1625
  %33 = load ptr, ptr %4, align 8, !dbg !1626
  %34 = getelementptr inbounds nuw %struct.box, ptr %33, i32 0, i32 2, !dbg !1627
  %35 = load i32, ptr %34, align 8, !dbg !1627
  store i32 %35, ptr %13, align 4, !dbg !1628
  %36 = load ptr, ptr %4, align 8, !dbg !1629
  %37 = getelementptr inbounds nuw %struct.box, ptr %36, i32 0, i32 3, !dbg !1630
  %38 = load i32, ptr %37, align 4, !dbg !1630
  store i32 %38, ptr %14, align 4, !dbg !1631
  %39 = load ptr, ptr %4, align 8, !dbg !1632
  %40 = getelementptr inbounds nuw %struct.box, ptr %39, i32 0, i32 4, !dbg !1633
  %41 = load i32, ptr %40, align 8, !dbg !1633
  store i32 %41, ptr %15, align 4, !dbg !1634
  %42 = load ptr, ptr %4, align 8, !dbg !1635
  %43 = getelementptr inbounds nuw %struct.box, ptr %42, i32 0, i32 5, !dbg !1636
  %44 = load i32, ptr %43, align 4, !dbg !1636
  store i32 %44, ptr %16, align 4, !dbg !1637
  %45 = load i32, ptr %12, align 4, !dbg !1638
  %46 = load i32, ptr %11, align 4, !dbg !1640
  %47 = icmp sgt i32 %45, %46, !dbg !1641
  br i1 %47, label %48, label %100, !dbg !1641

48:                                               ; preds = %2
  %49 = load i32, ptr %11, align 4, !dbg !1642
  store i32 %49, ptr %8, align 4, !dbg !1644
  br label %50, !dbg !1645

50:                                               ; preds = %96, %48
  %51 = load i32, ptr %8, align 4, !dbg !1646
  %52 = load i32, ptr %12, align 4, !dbg !1648
  %53 = icmp sle i32 %51, %52, !dbg !1649
  br i1 %53, label %54, label %99, !dbg !1650

54:                                               ; preds = %50
  %55 = load i32, ptr %13, align 4, !dbg !1651
  store i32 %55, ptr %9, align 4, !dbg !1653
  br label %56, !dbg !1654

56:                                               ; preds = %92, %54
  %57 = load i32, ptr %9, align 4, !dbg !1655
  %58 = load i32, ptr %14, align 4, !dbg !1657
  %59 = icmp sle i32 %57, %58, !dbg !1658
  br i1 %59, label %60, label %95, !dbg !1659

60:                                               ; preds = %56
  %61 = load ptr, ptr %6, align 8, !dbg !1660
  %62 = load i32, ptr %8, align 4, !dbg !1662
  %63 = sext i32 %62 to i64, !dbg !1660
  %64 = getelementptr inbounds ptr, ptr %61, i64 %63, !dbg !1660
  %65 = load ptr, ptr %64, align 8, !dbg !1660
  %66 = load i32, ptr %9, align 4, !dbg !1663
  %67 = sext i32 %66 to i64, !dbg !1660
  %68 = getelementptr inbounds [32 x i16], ptr %65, i64 %67, !dbg !1660
  %69 = load i32, ptr %15, align 4, !dbg !1664
  %70 = sext i32 %69 to i64, !dbg !1660
  %71 = getelementptr inbounds [32 x i16], ptr %68, i64 0, i64 %70, !dbg !1660
  store ptr %71, ptr %7, align 8, !dbg !1665
  %72 = load i32, ptr %15, align 4, !dbg !1666
  store i32 %72, ptr %10, align 4, !dbg !1668
  br label %73, !dbg !1669

73:                                               ; preds = %88, %60
  %74 = load i32, ptr %10, align 4, !dbg !1670
  %75 = load i32, ptr %16, align 4, !dbg !1672
  %76 = icmp sle i32 %74, %75, !dbg !1673
  br i1 %76, label %77, label %91, !dbg !1674

77:                                               ; preds = %73
  %78 = load ptr, ptr %7, align 8, !dbg !1675
  %79 = getelementptr inbounds nuw i16, ptr %78, i32 1, !dbg !1675
  store ptr %79, ptr %7, align 8, !dbg !1675
  %80 = load i16, ptr %78, align 2, !dbg !1677
  %81 = zext i16 %80 to i32, !dbg !1677
  %82 = icmp ne i32 %81, 0, !dbg !1678
  br i1 %82, label %83, label %87, !dbg !1678

83:                                               ; preds = %77
  %84 = load i32, ptr %8, align 4, !dbg !1679
  store i32 %84, ptr %11, align 4, !dbg !1681
  %85 = load ptr, ptr %4, align 8, !dbg !1682
  %86 = getelementptr inbounds nuw %struct.box, ptr %85, i32 0, i32 0, !dbg !1683
  store i32 %84, ptr %86, align 8, !dbg !1684
  br label %101, !dbg !1685

87:                                               ; preds = %77
  br label %88, !dbg !1686

88:                                               ; preds = %87
  %89 = load i32, ptr %10, align 4, !dbg !1687
  %90 = add nsw i32 %89, 1, !dbg !1687
  store i32 %90, ptr %10, align 4, !dbg !1687
  br label %73, !dbg !1688, !llvm.loop !1689

91:                                               ; preds = %73
  br label %92, !dbg !1691

92:                                               ; preds = %91
  %93 = load i32, ptr %9, align 4, !dbg !1692
  %94 = add nsw i32 %93, 1, !dbg !1692
  store i32 %94, ptr %9, align 4, !dbg !1692
  br label %56, !dbg !1693, !llvm.loop !1694

95:                                               ; preds = %56
  br label %96, !dbg !1695

96:                                               ; preds = %95
  %97 = load i32, ptr %8, align 4, !dbg !1696
  %98 = add nsw i32 %97, 1, !dbg !1696
  store i32 %98, ptr %8, align 4, !dbg !1696
  br label %50, !dbg !1697, !llvm.loop !1698

99:                                               ; preds = %50
  br label %100, !dbg !1699

100:                                              ; preds = %99, %2
  br label %101, !dbg !1640

101:                                              ; preds = %100, %83
    #dbg_label(!1700, !1701)
  %102 = load i32, ptr %12, align 4, !dbg !1702
  %103 = load i32, ptr %11, align 4, !dbg !1704
  %104 = icmp sgt i32 %102, %103, !dbg !1705
  br i1 %104, label %105, label %157, !dbg !1705

105:                                              ; preds = %101
  %106 = load i32, ptr %12, align 4, !dbg !1706
  store i32 %106, ptr %8, align 4, !dbg !1708
  br label %107, !dbg !1709

107:                                              ; preds = %153, %105
  %108 = load i32, ptr %8, align 4, !dbg !1710
  %109 = load i32, ptr %11, align 4, !dbg !1712
  %110 = icmp sge i32 %108, %109, !dbg !1713
  br i1 %110, label %111, label %156, !dbg !1714

111:                                              ; preds = %107
  %112 = load i32, ptr %13, align 4, !dbg !1715
  store i32 %112, ptr %9, align 4, !dbg !1717
  br label %113, !dbg !1718

113:                                              ; preds = %149, %111
  %114 = load i32, ptr %9, align 4, !dbg !1719
  %115 = load i32, ptr %14, align 4, !dbg !1721
  %116 = icmp sle i32 %114, %115, !dbg !1722
  br i1 %116, label %117, label %152, !dbg !1723

117:                                              ; preds = %113
  %118 = load ptr, ptr %6, align 8, !dbg !1724
  %119 = load i32, ptr %8, align 4, !dbg !1726
  %120 = sext i32 %119 to i64, !dbg !1724
  %121 = getelementptr inbounds ptr, ptr %118, i64 %120, !dbg !1724
  %122 = load ptr, ptr %121, align 8, !dbg !1724
  %123 = load i32, ptr %9, align 4, !dbg !1727
  %124 = sext i32 %123 to i64, !dbg !1724
  %125 = getelementptr inbounds [32 x i16], ptr %122, i64 %124, !dbg !1724
  %126 = load i32, ptr %15, align 4, !dbg !1728
  %127 = sext i32 %126 to i64, !dbg !1724
  %128 = getelementptr inbounds [32 x i16], ptr %125, i64 0, i64 %127, !dbg !1724
  store ptr %128, ptr %7, align 8, !dbg !1729
  %129 = load i32, ptr %15, align 4, !dbg !1730
  store i32 %129, ptr %10, align 4, !dbg !1732
  br label %130, !dbg !1733

130:                                              ; preds = %145, %117
  %131 = load i32, ptr %10, align 4, !dbg !1734
  %132 = load i32, ptr %16, align 4, !dbg !1736
  %133 = icmp sle i32 %131, %132, !dbg !1737
  br i1 %133, label %134, label %148, !dbg !1738

134:                                              ; preds = %130
  %135 = load ptr, ptr %7, align 8, !dbg !1739
  %136 = getelementptr inbounds nuw i16, ptr %135, i32 1, !dbg !1739
  store ptr %136, ptr %7, align 8, !dbg !1739
  %137 = load i16, ptr %135, align 2, !dbg !1741
  %138 = zext i16 %137 to i32, !dbg !1741
  %139 = icmp ne i32 %138, 0, !dbg !1742
  br i1 %139, label %140, label %144, !dbg !1742

140:                                              ; preds = %134
  %141 = load i32, ptr %8, align 4, !dbg !1743
  store i32 %141, ptr %12, align 4, !dbg !1745
  %142 = load ptr, ptr %4, align 8, !dbg !1746
  %143 = getelementptr inbounds nuw %struct.box, ptr %142, i32 0, i32 1, !dbg !1747
  store i32 %141, ptr %143, align 4, !dbg !1748
  br label %158, !dbg !1749

144:                                              ; preds = %134
  br label %145, !dbg !1750

145:                                              ; preds = %144
  %146 = load i32, ptr %10, align 4, !dbg !1751
  %147 = add nsw i32 %146, 1, !dbg !1751
  store i32 %147, ptr %10, align 4, !dbg !1751
  br label %130, !dbg !1752, !llvm.loop !1753

148:                                              ; preds = %130
  br label %149, !dbg !1755

149:                                              ; preds = %148
  %150 = load i32, ptr %9, align 4, !dbg !1756
  %151 = add nsw i32 %150, 1, !dbg !1756
  store i32 %151, ptr %9, align 4, !dbg !1756
  br label %113, !dbg !1757, !llvm.loop !1758

152:                                              ; preds = %113
  br label %153, !dbg !1759

153:                                              ; preds = %152
  %154 = load i32, ptr %8, align 4, !dbg !1760
  %155 = add nsw i32 %154, -1, !dbg !1760
  store i32 %155, ptr %8, align 4, !dbg !1760
  br label %107, !dbg !1761, !llvm.loop !1762

156:                                              ; preds = %107
  br label %157, !dbg !1763

157:                                              ; preds = %156, %101
  br label %158, !dbg !1704

158:                                              ; preds = %157, %140
    #dbg_label(!1764, !1765)
  %159 = load i32, ptr %14, align 4, !dbg !1766
  %160 = load i32, ptr %13, align 4, !dbg !1768
  %161 = icmp sgt i32 %159, %160, !dbg !1769
  br i1 %161, label %162, label %214, !dbg !1769

162:                                              ; preds = %158
  %163 = load i32, ptr %13, align 4, !dbg !1770
  store i32 %163, ptr %9, align 4, !dbg !1772
  br label %164, !dbg !1773

164:                                              ; preds = %210, %162
  %165 = load i32, ptr %9, align 4, !dbg !1774
  %166 = load i32, ptr %14, align 4, !dbg !1776
  %167 = icmp sle i32 %165, %166, !dbg !1777
  br i1 %167, label %168, label %213, !dbg !1778

168:                                              ; preds = %164
  %169 = load i32, ptr %11, align 4, !dbg !1779
  store i32 %169, ptr %8, align 4, !dbg !1781
  br label %170, !dbg !1782

170:                                              ; preds = %206, %168
  %171 = load i32, ptr %8, align 4, !dbg !1783
  %172 = load i32, ptr %12, align 4, !dbg !1785
  %173 = icmp sle i32 %171, %172, !dbg !1786
  br i1 %173, label %174, label %209, !dbg !1787

174:                                              ; preds = %170
  %175 = load ptr, ptr %6, align 8, !dbg !1788
  %176 = load i32, ptr %8, align 4, !dbg !1790
  %177 = sext i32 %176 to i64, !dbg !1788
  %178 = getelementptr inbounds ptr, ptr %175, i64 %177, !dbg !1788
  %179 = load ptr, ptr %178, align 8, !dbg !1788
  %180 = load i32, ptr %9, align 4, !dbg !1791
  %181 = sext i32 %180 to i64, !dbg !1788
  %182 = getelementptr inbounds [32 x i16], ptr %179, i64 %181, !dbg !1788
  %183 = load i32, ptr %15, align 4, !dbg !1792
  %184 = sext i32 %183 to i64, !dbg !1788
  %185 = getelementptr inbounds [32 x i16], ptr %182, i64 0, i64 %184, !dbg !1788
  store ptr %185, ptr %7, align 8, !dbg !1793
  %186 = load i32, ptr %15, align 4, !dbg !1794
  store i32 %186, ptr %10, align 4, !dbg !1796
  br label %187, !dbg !1797

187:                                              ; preds = %202, %174
  %188 = load i32, ptr %10, align 4, !dbg !1798
  %189 = load i32, ptr %16, align 4, !dbg !1800
  %190 = icmp sle i32 %188, %189, !dbg !1801
  br i1 %190, label %191, label %205, !dbg !1802

191:                                              ; preds = %187
  %192 = load ptr, ptr %7, align 8, !dbg !1803
  %193 = getelementptr inbounds nuw i16, ptr %192, i32 1, !dbg !1803
  store ptr %193, ptr %7, align 8, !dbg !1803
  %194 = load i16, ptr %192, align 2, !dbg !1805
  %195 = zext i16 %194 to i32, !dbg !1805
  %196 = icmp ne i32 %195, 0, !dbg !1806
  br i1 %196, label %197, label %201, !dbg !1806

197:                                              ; preds = %191
  %198 = load i32, ptr %9, align 4, !dbg !1807
  store i32 %198, ptr %13, align 4, !dbg !1809
  %199 = load ptr, ptr %4, align 8, !dbg !1810
  %200 = getelementptr inbounds nuw %struct.box, ptr %199, i32 0, i32 2, !dbg !1811
  store i32 %198, ptr %200, align 8, !dbg !1812
  br label %215, !dbg !1813

201:                                              ; preds = %191
  br label %202, !dbg !1814

202:                                              ; preds = %201
  %203 = load i32, ptr %10, align 4, !dbg !1815
  %204 = add nsw i32 %203, 1, !dbg !1815
  store i32 %204, ptr %10, align 4, !dbg !1815
  br label %187, !dbg !1816, !llvm.loop !1817

205:                                              ; preds = %187
  br label %206, !dbg !1819

206:                                              ; preds = %205
  %207 = load i32, ptr %8, align 4, !dbg !1820
  %208 = add nsw i32 %207, 1, !dbg !1820
  store i32 %208, ptr %8, align 4, !dbg !1820
  br label %170, !dbg !1821, !llvm.loop !1822

209:                                              ; preds = %170
  br label %210, !dbg !1823

210:                                              ; preds = %209
  %211 = load i32, ptr %9, align 4, !dbg !1824
  %212 = add nsw i32 %211, 1, !dbg !1824
  store i32 %212, ptr %9, align 4, !dbg !1824
  br label %164, !dbg !1825, !llvm.loop !1826

213:                                              ; preds = %164
  br label %214, !dbg !1827

214:                                              ; preds = %213, %158
  br label %215, !dbg !1768

215:                                              ; preds = %214, %197
    #dbg_label(!1828, !1829)
  %216 = load i32, ptr %14, align 4, !dbg !1830
  %217 = load i32, ptr %13, align 4, !dbg !1832
  %218 = icmp sgt i32 %216, %217, !dbg !1833
  br i1 %218, label %219, label %271, !dbg !1833

219:                                              ; preds = %215
  %220 = load i32, ptr %14, align 4, !dbg !1834
  store i32 %220, ptr %9, align 4, !dbg !1836
  br label %221, !dbg !1837

221:                                              ; preds = %267, %219
  %222 = load i32, ptr %9, align 4, !dbg !1838
  %223 = load i32, ptr %13, align 4, !dbg !1840
  %224 = icmp sge i32 %222, %223, !dbg !1841
  br i1 %224, label %225, label %270, !dbg !1842

225:                                              ; preds = %221
  %226 = load i32, ptr %11, align 4, !dbg !1843
  store i32 %226, ptr %8, align 4, !dbg !1845
  br label %227, !dbg !1846

227:                                              ; preds = %263, %225
  %228 = load i32, ptr %8, align 4, !dbg !1847
  %229 = load i32, ptr %12, align 4, !dbg !1849
  %230 = icmp sle i32 %228, %229, !dbg !1850
  br i1 %230, label %231, label %266, !dbg !1851

231:                                              ; preds = %227
  %232 = load ptr, ptr %6, align 8, !dbg !1852
  %233 = load i32, ptr %8, align 4, !dbg !1854
  %234 = sext i32 %233 to i64, !dbg !1852
  %235 = getelementptr inbounds ptr, ptr %232, i64 %234, !dbg !1852
  %236 = load ptr, ptr %235, align 8, !dbg !1852
  %237 = load i32, ptr %9, align 4, !dbg !1855
  %238 = sext i32 %237 to i64, !dbg !1852
  %239 = getelementptr inbounds [32 x i16], ptr %236, i64 %238, !dbg !1852
  %240 = load i32, ptr %15, align 4, !dbg !1856
  %241 = sext i32 %240 to i64, !dbg !1852
  %242 = getelementptr inbounds [32 x i16], ptr %239, i64 0, i64 %241, !dbg !1852
  store ptr %242, ptr %7, align 8, !dbg !1857
  %243 = load i32, ptr %15, align 4, !dbg !1858
  store i32 %243, ptr %10, align 4, !dbg !1860
  br label %244, !dbg !1861

244:                                              ; preds = %259, %231
  %245 = load i32, ptr %10, align 4, !dbg !1862
  %246 = load i32, ptr %16, align 4, !dbg !1864
  %247 = icmp sle i32 %245, %246, !dbg !1865
  br i1 %247, label %248, label %262, !dbg !1866

248:                                              ; preds = %244
  %249 = load ptr, ptr %7, align 8, !dbg !1867
  %250 = getelementptr inbounds nuw i16, ptr %249, i32 1, !dbg !1867
  store ptr %250, ptr %7, align 8, !dbg !1867
  %251 = load i16, ptr %249, align 2, !dbg !1869
  %252 = zext i16 %251 to i32, !dbg !1869
  %253 = icmp ne i32 %252, 0, !dbg !1870
  br i1 %253, label %254, label %258, !dbg !1870

254:                                              ; preds = %248
  %255 = load i32, ptr %9, align 4, !dbg !1871
  store i32 %255, ptr %14, align 4, !dbg !1873
  %256 = load ptr, ptr %4, align 8, !dbg !1874
  %257 = getelementptr inbounds nuw %struct.box, ptr %256, i32 0, i32 3, !dbg !1875
  store i32 %255, ptr %257, align 4, !dbg !1876
  br label %272, !dbg !1877

258:                                              ; preds = %248
  br label %259, !dbg !1878

259:                                              ; preds = %258
  %260 = load i32, ptr %10, align 4, !dbg !1879
  %261 = add nsw i32 %260, 1, !dbg !1879
  store i32 %261, ptr %10, align 4, !dbg !1879
  br label %244, !dbg !1880, !llvm.loop !1881

262:                                              ; preds = %244
  br label %263, !dbg !1883

263:                                              ; preds = %262
  %264 = load i32, ptr %8, align 4, !dbg !1884
  %265 = add nsw i32 %264, 1, !dbg !1884
  store i32 %265, ptr %8, align 4, !dbg !1884
  br label %227, !dbg !1885, !llvm.loop !1886

266:                                              ; preds = %227
  br label %267, !dbg !1887

267:                                              ; preds = %266
  %268 = load i32, ptr %9, align 4, !dbg !1888
  %269 = add nsw i32 %268, -1, !dbg !1888
  store i32 %269, ptr %9, align 4, !dbg !1888
  br label %221, !dbg !1889, !llvm.loop !1890

270:                                              ; preds = %221
  br label %271, !dbg !1891

271:                                              ; preds = %270, %215
  br label %272, !dbg !1832

272:                                              ; preds = %271, %254
    #dbg_label(!1892, !1893)
  %273 = load i32, ptr %16, align 4, !dbg !1894
  %274 = load i32, ptr %15, align 4, !dbg !1896
  %275 = icmp sgt i32 %273, %274, !dbg !1897
  br i1 %275, label %276, label %329, !dbg !1897

276:                                              ; preds = %272
  %277 = load i32, ptr %15, align 4, !dbg !1898
  store i32 %277, ptr %10, align 4, !dbg !1900
  br label %278, !dbg !1901

278:                                              ; preds = %325, %276
  %279 = load i32, ptr %10, align 4, !dbg !1902
  %280 = load i32, ptr %16, align 4, !dbg !1904
  %281 = icmp sle i32 %279, %280, !dbg !1905
  br i1 %281, label %282, label %328, !dbg !1906

282:                                              ; preds = %278
  %283 = load i32, ptr %11, align 4, !dbg !1907
  store i32 %283, ptr %8, align 4, !dbg !1909
  br label %284, !dbg !1910

284:                                              ; preds = %321, %282
  %285 = load i32, ptr %8, align 4, !dbg !1911
  %286 = load i32, ptr %12, align 4, !dbg !1913
  %287 = icmp sle i32 %285, %286, !dbg !1914
  br i1 %287, label %288, label %324, !dbg !1915

288:                                              ; preds = %284
  %289 = load ptr, ptr %6, align 8, !dbg !1916
  %290 = load i32, ptr %8, align 4, !dbg !1918
  %291 = sext i32 %290 to i64, !dbg !1916
  %292 = getelementptr inbounds ptr, ptr %289, i64 %291, !dbg !1916
  %293 = load ptr, ptr %292, align 8, !dbg !1916
  %294 = load i32, ptr %13, align 4, !dbg !1919
  %295 = sext i32 %294 to i64, !dbg !1916
  %296 = getelementptr inbounds [32 x i16], ptr %293, i64 %295, !dbg !1916
  %297 = load i32, ptr %10, align 4, !dbg !1920
  %298 = sext i32 %297 to i64, !dbg !1916
  %299 = getelementptr inbounds [32 x i16], ptr %296, i64 0, i64 %298, !dbg !1916
  store ptr %299, ptr %7, align 8, !dbg !1921
  %300 = load i32, ptr %13, align 4, !dbg !1922
  store i32 %300, ptr %9, align 4, !dbg !1924
  br label %301, !dbg !1925

301:                                              ; preds = %315, %288
  %302 = load i32, ptr %9, align 4, !dbg !1926
  %303 = load i32, ptr %14, align 4, !dbg !1928
  %304 = icmp sle i32 %302, %303, !dbg !1929
  br i1 %304, label %305, label %320, !dbg !1930

305:                                              ; preds = %301
  %306 = load ptr, ptr %7, align 8, !dbg !1931
  %307 = load i16, ptr %306, align 2, !dbg !1933
  %308 = zext i16 %307 to i32, !dbg !1933
  %309 = icmp ne i32 %308, 0, !dbg !1934
  br i1 %309, label %310, label %314, !dbg !1934

310:                                              ; preds = %305
  %311 = load i32, ptr %10, align 4, !dbg !1935
  store i32 %311, ptr %15, align 4, !dbg !1937
  %312 = load ptr, ptr %4, align 8, !dbg !1938
  %313 = getelementptr inbounds nuw %struct.box, ptr %312, i32 0, i32 4, !dbg !1939
  store i32 %311, ptr %313, align 8, !dbg !1940
  br label %330, !dbg !1941

314:                                              ; preds = %305
  br label %315, !dbg !1942

315:                                              ; preds = %314
  %316 = load i32, ptr %9, align 4, !dbg !1943
  %317 = add nsw i32 %316, 1, !dbg !1943
  store i32 %317, ptr %9, align 4, !dbg !1943
  %318 = load ptr, ptr %7, align 8, !dbg !1944
  %319 = getelementptr inbounds i16, ptr %318, i64 32, !dbg !1944
  store ptr %319, ptr %7, align 8, !dbg !1944
  br label %301, !dbg !1945, !llvm.loop !1946

320:                                              ; preds = %301
  br label %321, !dbg !1948

321:                                              ; preds = %320
  %322 = load i32, ptr %8, align 4, !dbg !1949
  %323 = add nsw i32 %322, 1, !dbg !1949
  store i32 %323, ptr %8, align 4, !dbg !1949
  br label %284, !dbg !1950, !llvm.loop !1951

324:                                              ; preds = %284
  br label %325, !dbg !1952

325:                                              ; preds = %324
  %326 = load i32, ptr %10, align 4, !dbg !1953
  %327 = add nsw i32 %326, 1, !dbg !1953
  store i32 %327, ptr %10, align 4, !dbg !1953
  br label %278, !dbg !1954, !llvm.loop !1955

328:                                              ; preds = %278
  br label %329, !dbg !1956

329:                                              ; preds = %328, %272
  br label %330, !dbg !1896

330:                                              ; preds = %329, %310
    #dbg_label(!1957, !1958)
  %331 = load i32, ptr %16, align 4, !dbg !1959
  %332 = load i32, ptr %15, align 4, !dbg !1961
  %333 = icmp sgt i32 %331, %332, !dbg !1962
  br i1 %333, label %334, label %387, !dbg !1962

334:                                              ; preds = %330
  %335 = load i32, ptr %16, align 4, !dbg !1963
  store i32 %335, ptr %10, align 4, !dbg !1965
  br label %336, !dbg !1966

336:                                              ; preds = %383, %334
  %337 = load i32, ptr %10, align 4, !dbg !1967
  %338 = load i32, ptr %15, align 4, !dbg !1969
  %339 = icmp sge i32 %337, %338, !dbg !1970
  br i1 %339, label %340, label %386, !dbg !1971

340:                                              ; preds = %336
  %341 = load i32, ptr %11, align 4, !dbg !1972
  store i32 %341, ptr %8, align 4, !dbg !1974
  br label %342, !dbg !1975

342:                                              ; preds = %379, %340
  %343 = load i32, ptr %8, align 4, !dbg !1976
  %344 = load i32, ptr %12, align 4, !dbg !1978
  %345 = icmp sle i32 %343, %344, !dbg !1979
  br i1 %345, label %346, label %382, !dbg !1980

346:                                              ; preds = %342
  %347 = load ptr, ptr %6, align 8, !dbg !1981
  %348 = load i32, ptr %8, align 4, !dbg !1983
  %349 = sext i32 %348 to i64, !dbg !1981
  %350 = getelementptr inbounds ptr, ptr %347, i64 %349, !dbg !1981
  %351 = load ptr, ptr %350, align 8, !dbg !1981
  %352 = load i32, ptr %13, align 4, !dbg !1984
  %353 = sext i32 %352 to i64, !dbg !1981
  %354 = getelementptr inbounds [32 x i16], ptr %351, i64 %353, !dbg !1981
  %355 = load i32, ptr %10, align 4, !dbg !1985
  %356 = sext i32 %355 to i64, !dbg !1981
  %357 = getelementptr inbounds [32 x i16], ptr %354, i64 0, i64 %356, !dbg !1981
  store ptr %357, ptr %7, align 8, !dbg !1986
  %358 = load i32, ptr %13, align 4, !dbg !1987
  store i32 %358, ptr %9, align 4, !dbg !1989
  br label %359, !dbg !1990

359:                                              ; preds = %373, %346
  %360 = load i32, ptr %9, align 4, !dbg !1991
  %361 = load i32, ptr %14, align 4, !dbg !1993
  %362 = icmp sle i32 %360, %361, !dbg !1994
  br i1 %362, label %363, label %378, !dbg !1995

363:                                              ; preds = %359
  %364 = load ptr, ptr %7, align 8, !dbg !1996
  %365 = load i16, ptr %364, align 2, !dbg !1998
  %366 = zext i16 %365 to i32, !dbg !1998
  %367 = icmp ne i32 %366, 0, !dbg !1999
  br i1 %367, label %368, label %372, !dbg !1999

368:                                              ; preds = %363
  %369 = load i32, ptr %10, align 4, !dbg !2000
  store i32 %369, ptr %16, align 4, !dbg !2002
  %370 = load ptr, ptr %4, align 8, !dbg !2003
  %371 = getelementptr inbounds nuw %struct.box, ptr %370, i32 0, i32 5, !dbg !2004
  store i32 %369, ptr %371, align 4, !dbg !2005
  br label %388, !dbg !2006

372:                                              ; preds = %363
  br label %373, !dbg !2007

373:                                              ; preds = %372
  %374 = load i32, ptr %9, align 4, !dbg !2008
  %375 = add nsw i32 %374, 1, !dbg !2008
  store i32 %375, ptr %9, align 4, !dbg !2008
  %376 = load ptr, ptr %7, align 8, !dbg !2009
  %377 = getelementptr inbounds i16, ptr %376, i64 32, !dbg !2009
  store ptr %377, ptr %7, align 8, !dbg !2009
  br label %359, !dbg !2010, !llvm.loop !2011

378:                                              ; preds = %359
  br label %379, !dbg !2013

379:                                              ; preds = %378
  %380 = load i32, ptr %8, align 4, !dbg !2014
  %381 = add nsw i32 %380, 1, !dbg !2014
  store i32 %381, ptr %8, align 4, !dbg !2014
  br label %342, !dbg !2015, !llvm.loop !2016

382:                                              ; preds = %342
  br label %383, !dbg !2017

383:                                              ; preds = %382
  %384 = load i32, ptr %10, align 4, !dbg !2018
  %385 = add nsw i32 %384, -1, !dbg !2018
  store i32 %385, ptr %10, align 4, !dbg !2018
  br label %336, !dbg !2019, !llvm.loop !2020

386:                                              ; preds = %336
  br label %387, !dbg !2021

387:                                              ; preds = %386, %330
  br label %388, !dbg !1961

388:                                              ; preds = %387, %368
    #dbg_label(!2022, !2023)
  %389 = load i32, ptr %12, align 4, !dbg !2024
  %390 = load i32, ptr %11, align 4, !dbg !2025
  %391 = sub nsw i32 %389, %390, !dbg !2026
  %392 = shl i32 %391, 3, !dbg !2027
  %393 = mul nsw i32 %392, 2, !dbg !2028
  %394 = sext i32 %393 to i64, !dbg !2029
  store i64 %394, ptr %17, align 8, !dbg !2030
  %395 = load i32, ptr %14, align 4, !dbg !2031
  %396 = load i32, ptr %13, align 4, !dbg !2032
  %397 = sub nsw i32 %395, %396, !dbg !2033
  %398 = shl i32 %397, 2, !dbg !2034
  %399 = mul nsw i32 %398, 3, !dbg !2035
  %400 = sext i32 %399 to i64, !dbg !2036
  store i64 %400, ptr %18, align 8, !dbg !2037
  %401 = load i32, ptr %16, align 4, !dbg !2038
  %402 = load i32, ptr %15, align 4, !dbg !2039
  %403 = sub nsw i32 %401, %402, !dbg !2040
  %404 = shl i32 %403, 3, !dbg !2041
  %405 = mul nsw i32 %404, 1, !dbg !2042
  %406 = sext i32 %405 to i64, !dbg !2043
  store i64 %406, ptr %19, align 8, !dbg !2044
  %407 = load i64, ptr %17, align 8, !dbg !2045
  %408 = load i64, ptr %17, align 8, !dbg !2046
  %409 = mul nsw i64 %407, %408, !dbg !2047
  %410 = load i64, ptr %18, align 8, !dbg !2048
  %411 = load i64, ptr %18, align 8, !dbg !2049
  %412 = mul nsw i64 %410, %411, !dbg !2050
  %413 = add nsw i64 %409, %412, !dbg !2051
  %414 = load i64, ptr %19, align 8, !dbg !2052
  %415 = load i64, ptr %19, align 8, !dbg !2053
  %416 = mul nsw i64 %414, %415, !dbg !2054
  %417 = add nsw i64 %413, %416, !dbg !2055
  %418 = load ptr, ptr %4, align 8, !dbg !2056
  %419 = getelementptr inbounds nuw %struct.box, ptr %418, i32 0, i32 6, !dbg !2057
  store i64 %417, ptr %419, align 8, !dbg !2058
  store i64 0, ptr %20, align 8, !dbg !2059
  %420 = load i32, ptr %11, align 4, !dbg !2060
  store i32 %420, ptr %8, align 4, !dbg !2062
  br label %421, !dbg !2063

421:                                              ; preds = %467, %388
  %422 = load i32, ptr %8, align 4, !dbg !2064
  %423 = load i32, ptr %12, align 4, !dbg !2066
  %424 = icmp sle i32 %422, %423, !dbg !2067
  br i1 %424, label %425, label %470, !dbg !2068

425:                                              ; preds = %421
  %426 = load i32, ptr %13, align 4, !dbg !2069
  store i32 %426, ptr %9, align 4, !dbg !2071
  br label %427, !dbg !2072

427:                                              ; preds = %463, %425
  %428 = load i32, ptr %9, align 4, !dbg !2073
  %429 = load i32, ptr %14, align 4, !dbg !2075
  %430 = icmp sle i32 %428, %429, !dbg !2076
  br i1 %430, label %431, label %466, !dbg !2077

431:                                              ; preds = %427
  %432 = load ptr, ptr %6, align 8, !dbg !2078
  %433 = load i32, ptr %8, align 4, !dbg !2080
  %434 = sext i32 %433 to i64, !dbg !2078
  %435 = getelementptr inbounds ptr, ptr %432, i64 %434, !dbg !2078
  %436 = load ptr, ptr %435, align 8, !dbg !2078
  %437 = load i32, ptr %9, align 4, !dbg !2081
  %438 = sext i32 %437 to i64, !dbg !2078
  %439 = getelementptr inbounds [32 x i16], ptr %436, i64 %438, !dbg !2078
  %440 = load i32, ptr %15, align 4, !dbg !2082
  %441 = sext i32 %440 to i64, !dbg !2078
  %442 = getelementptr inbounds [32 x i16], ptr %439, i64 0, i64 %441, !dbg !2078
  store ptr %442, ptr %7, align 8, !dbg !2083
  %443 = load i32, ptr %15, align 4, !dbg !2084
  store i32 %443, ptr %10, align 4, !dbg !2086
  br label %444, !dbg !2087

444:                                              ; preds = %457, %431
  %445 = load i32, ptr %10, align 4, !dbg !2088
  %446 = load i32, ptr %16, align 4, !dbg !2090
  %447 = icmp sle i32 %445, %446, !dbg !2091
  br i1 %447, label %448, label %462, !dbg !2092

448:                                              ; preds = %444
  %449 = load ptr, ptr %7, align 8, !dbg !2093
  %450 = load i16, ptr %449, align 2, !dbg !2095
  %451 = zext i16 %450 to i32, !dbg !2095
  %452 = icmp ne i32 %451, 0, !dbg !2096
  br i1 %452, label %453, label %456, !dbg !2096

453:                                              ; preds = %448
  %454 = load i64, ptr %20, align 8, !dbg !2097
  %455 = add nsw i64 %454, 1, !dbg !2097
  store i64 %455, ptr %20, align 8, !dbg !2097
  br label %456, !dbg !2099

456:                                              ; preds = %453, %448
  br label %457, !dbg !2100

457:                                              ; preds = %456
  %458 = load i32, ptr %10, align 4, !dbg !2101
  %459 = add nsw i32 %458, 1, !dbg !2101
  store i32 %459, ptr %10, align 4, !dbg !2101
  %460 = load ptr, ptr %7, align 8, !dbg !2102
  %461 = getelementptr inbounds nuw i16, ptr %460, i32 1, !dbg !2102
  store ptr %461, ptr %7, align 8, !dbg !2102
  br label %444, !dbg !2103, !llvm.loop !2104

462:                                              ; preds = %444
  br label %463, !dbg !2106

463:                                              ; preds = %462
  %464 = load i32, ptr %9, align 4, !dbg !2107
  %465 = add nsw i32 %464, 1, !dbg !2107
  store i32 %465, ptr %9, align 4, !dbg !2107
  br label %427, !dbg !2108, !llvm.loop !2109

466:                                              ; preds = %427
  br label %467, !dbg !2110

467:                                              ; preds = %466
  %468 = load i32, ptr %8, align 4, !dbg !2111
  %469 = add nsw i32 %468, 1, !dbg !2111
  store i32 %469, ptr %8, align 4, !dbg !2111
  br label %421, !dbg !2112, !llvm.loop !2113

470:                                              ; preds = %421
  %471 = load i64, ptr %20, align 8, !dbg !2115
  %472 = load ptr, ptr %4, align 8, !dbg !2116
  %473 = getelementptr inbounds nuw %struct.box, ptr %472, i32 0, i32 7, !dbg !2117
  store i64 %471, ptr %473, align 8, !dbg !2118
  ret void, !dbg !2119
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @median_cut(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 !dbg !2120 {
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
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !2123, !DIExpression(), !2124)
  store ptr %1, ptr %6, align 8
    #dbg_declare(ptr %6, !2125, !DIExpression(), !2126)
  store i32 %2, ptr %7, align 4
    #dbg_declare(ptr %7, !2127, !DIExpression(), !2128)
  store i32 %3, ptr %8, align 4
    #dbg_declare(ptr %8, !2129, !DIExpression(), !2130)
    #dbg_declare(ptr %9, !2131, !DIExpression(), !2132)
    #dbg_declare(ptr %10, !2133, !DIExpression(), !2134)
    #dbg_declare(ptr %11, !2135, !DIExpression(), !2136)
    #dbg_declare(ptr %12, !2137, !DIExpression(), !2138)
    #dbg_declare(ptr %13, !2139, !DIExpression(), !2140)
    #dbg_declare(ptr %14, !2141, !DIExpression(), !2142)
    #dbg_declare(ptr %15, !2143, !DIExpression(), !2144)
    #dbg_declare(ptr %16, !2145, !DIExpression(), !2146)
  br label %17, !dbg !2147

17:                                               ; preds = %161, %4
  %18 = load i32, ptr %7, align 4, !dbg !2148
  %19 = load i32, ptr %8, align 4, !dbg !2149
  %20 = icmp slt i32 %18, %19, !dbg !2150
  br i1 %20, label %21, label %168, !dbg !2147

21:                                               ; preds = %17
  %22 = load i32, ptr %7, align 4, !dbg !2151
  %23 = mul nsw i32 %22, 2, !dbg !2154
  %24 = load i32, ptr %8, align 4, !dbg !2155
  %25 = icmp sle i32 %23, %24, !dbg !2156
  br i1 %25, label %26, label %30, !dbg !2156

26:                                               ; preds = %21
  %27 = load ptr, ptr %6, align 8, !dbg !2157
  %28 = load i32, ptr %7, align 4, !dbg !2159
  %29 = call ptr @find_biggest_color_pop(ptr noundef %27, i32 noundef %28), !dbg !2160
  store ptr %29, ptr %15, align 8, !dbg !2161
  br label %34, !dbg !2162

30:                                               ; preds = %21
  %31 = load ptr, ptr %6, align 8, !dbg !2163
  %32 = load i32, ptr %7, align 4, !dbg !2165
  %33 = call ptr @find_biggest_volume(ptr noundef %31, i32 noundef %32), !dbg !2166
  store ptr %33, ptr %15, align 8, !dbg !2167
  br label %34

34:                                               ; preds = %30, %26
  %35 = load ptr, ptr %15, align 8, !dbg !2168
  %36 = icmp eq ptr %35, null, !dbg !2170
  br i1 %36, label %37, label %38, !dbg !2170

37:                                               ; preds = %34
  br label %168, !dbg !2171

38:                                               ; preds = %34
  %39 = load ptr, ptr %6, align 8, !dbg !2172
  %40 = load i32, ptr %7, align 4, !dbg !2173
  %41 = sext i32 %40 to i64, !dbg !2172
  %42 = getelementptr inbounds %struct.box, ptr %39, i64 %41, !dbg !2172
  store ptr %42, ptr %16, align 8, !dbg !2174
  %43 = load ptr, ptr %15, align 8, !dbg !2175
  %44 = getelementptr inbounds nuw %struct.box, ptr %43, i32 0, i32 1, !dbg !2176
  %45 = load i32, ptr %44, align 4, !dbg !2176
  %46 = load ptr, ptr %16, align 8, !dbg !2177
  %47 = getelementptr inbounds nuw %struct.box, ptr %46, i32 0, i32 1, !dbg !2178
  store i32 %45, ptr %47, align 4, !dbg !2179
  %48 = load ptr, ptr %15, align 8, !dbg !2180
  %49 = getelementptr inbounds nuw %struct.box, ptr %48, i32 0, i32 3, !dbg !2181
  %50 = load i32, ptr %49, align 4, !dbg !2181
  %51 = load ptr, ptr %16, align 8, !dbg !2182
  %52 = getelementptr inbounds nuw %struct.box, ptr %51, i32 0, i32 3, !dbg !2183
  store i32 %50, ptr %52, align 4, !dbg !2184
  %53 = load ptr, ptr %15, align 8, !dbg !2185
  %54 = getelementptr inbounds nuw %struct.box, ptr %53, i32 0, i32 5, !dbg !2186
  %55 = load i32, ptr %54, align 4, !dbg !2186
  %56 = load ptr, ptr %16, align 8, !dbg !2187
  %57 = getelementptr inbounds nuw %struct.box, ptr %56, i32 0, i32 5, !dbg !2188
  store i32 %55, ptr %57, align 4, !dbg !2189
  %58 = load ptr, ptr %15, align 8, !dbg !2190
  %59 = getelementptr inbounds nuw %struct.box, ptr %58, i32 0, i32 0, !dbg !2191
  %60 = load i32, ptr %59, align 8, !dbg !2191
  %61 = load ptr, ptr %16, align 8, !dbg !2192
  %62 = getelementptr inbounds nuw %struct.box, ptr %61, i32 0, i32 0, !dbg !2193
  store i32 %60, ptr %62, align 8, !dbg !2194
  %63 = load ptr, ptr %15, align 8, !dbg !2195
  %64 = getelementptr inbounds nuw %struct.box, ptr %63, i32 0, i32 2, !dbg !2196
  %65 = load i32, ptr %64, align 8, !dbg !2196
  %66 = load ptr, ptr %16, align 8, !dbg !2197
  %67 = getelementptr inbounds nuw %struct.box, ptr %66, i32 0, i32 2, !dbg !2198
  store i32 %65, ptr %67, align 8, !dbg !2199
  %68 = load ptr, ptr %15, align 8, !dbg !2200
  %69 = getelementptr inbounds nuw %struct.box, ptr %68, i32 0, i32 4, !dbg !2201
  %70 = load i32, ptr %69, align 8, !dbg !2201
  %71 = load ptr, ptr %16, align 8, !dbg !2202
  %72 = getelementptr inbounds nuw %struct.box, ptr %71, i32 0, i32 4, !dbg !2203
  store i32 %70, ptr %72, align 8, !dbg !2204
  %73 = load ptr, ptr %15, align 8, !dbg !2205
  %74 = getelementptr inbounds nuw %struct.box, ptr %73, i32 0, i32 1, !dbg !2206
  %75 = load i32, ptr %74, align 4, !dbg !2206
  %76 = load ptr, ptr %15, align 8, !dbg !2207
  %77 = getelementptr inbounds nuw %struct.box, ptr %76, i32 0, i32 0, !dbg !2208
  %78 = load i32, ptr %77, align 8, !dbg !2208
  %79 = sub nsw i32 %75, %78, !dbg !2209
  %80 = shl i32 %79, 3, !dbg !2210
  %81 = mul nsw i32 %80, 2, !dbg !2211
  store i32 %81, ptr %11, align 4, !dbg !2212
  %82 = load ptr, ptr %15, align 8, !dbg !2213
  %83 = getelementptr inbounds nuw %struct.box, ptr %82, i32 0, i32 3, !dbg !2214
  %84 = load i32, ptr %83, align 4, !dbg !2214
  %85 = load ptr, ptr %15, align 8, !dbg !2215
  %86 = getelementptr inbounds nuw %struct.box, ptr %85, i32 0, i32 2, !dbg !2216
  %87 = load i32, ptr %86, align 8, !dbg !2216
  %88 = sub nsw i32 %84, %87, !dbg !2217
  %89 = shl i32 %88, 2, !dbg !2218
  %90 = mul nsw i32 %89, 3, !dbg !2219
  store i32 %90, ptr %12, align 4, !dbg !2220
  %91 = load ptr, ptr %15, align 8, !dbg !2221
  %92 = getelementptr inbounds nuw %struct.box, ptr %91, i32 0, i32 5, !dbg !2222
  %93 = load i32, ptr %92, align 4, !dbg !2222
  %94 = load ptr, ptr %15, align 8, !dbg !2223
  %95 = getelementptr inbounds nuw %struct.box, ptr %94, i32 0, i32 4, !dbg !2224
  %96 = load i32, ptr %95, align 8, !dbg !2224
  %97 = sub nsw i32 %93, %96, !dbg !2225
  %98 = shl i32 %97, 3, !dbg !2226
  %99 = mul nsw i32 %98, 1, !dbg !2227
  store i32 %99, ptr %13, align 4, !dbg !2228
  %100 = load i32, ptr %12, align 4, !dbg !2229
  store i32 %100, ptr %14, align 4, !dbg !2230
  store i32 1, ptr %9, align 4, !dbg !2231
  %101 = load i32, ptr %11, align 4, !dbg !2232
  %102 = load i32, ptr %14, align 4, !dbg !2234
  %103 = icmp sgt i32 %101, %102, !dbg !2235
  br i1 %103, label %104, label %106, !dbg !2235

104:                                              ; preds = %38
  %105 = load i32, ptr %11, align 4, !dbg !2236
  store i32 %105, ptr %14, align 4, !dbg !2238
  store i32 0, ptr %9, align 4, !dbg !2239
  br label %106, !dbg !2240

106:                                              ; preds = %104, %38
  %107 = load i32, ptr %13, align 4, !dbg !2241
  %108 = load i32, ptr %14, align 4, !dbg !2243
  %109 = icmp sgt i32 %107, %108, !dbg !2244
  br i1 %109, label %110, label %111, !dbg !2244

110:                                              ; preds = %106
  store i32 2, ptr %9, align 4, !dbg !2245
  br label %111, !dbg !2247

111:                                              ; preds = %110, %106
  %112 = load i32, ptr %9, align 4, !dbg !2248
  switch i32 %112, label %161 [
    i32 0, label %113
    i32 1, label %129
    i32 2, label %145
  ], !dbg !2249

113:                                              ; preds = %111
  %114 = load ptr, ptr %15, align 8, !dbg !2250
  %115 = getelementptr inbounds nuw %struct.box, ptr %114, i32 0, i32 1, !dbg !2252
  %116 = load i32, ptr %115, align 4, !dbg !2252
  %117 = load ptr, ptr %15, align 8, !dbg !2253
  %118 = getelementptr inbounds nuw %struct.box, ptr %117, i32 0, i32 0, !dbg !2254
  %119 = load i32, ptr %118, align 8, !dbg !2254
  %120 = add nsw i32 %116, %119, !dbg !2255
  %121 = sdiv i32 %120, 2, !dbg !2256
  store i32 %121, ptr %10, align 4, !dbg !2257
  %122 = load i32, ptr %10, align 4, !dbg !2258
  %123 = load ptr, ptr %15, align 8, !dbg !2259
  %124 = getelementptr inbounds nuw %struct.box, ptr %123, i32 0, i32 1, !dbg !2260
  store i32 %122, ptr %124, align 4, !dbg !2261
  %125 = load i32, ptr %10, align 4, !dbg !2262
  %126 = add nsw i32 %125, 1, !dbg !2263
  %127 = load ptr, ptr %16, align 8, !dbg !2264
  %128 = getelementptr inbounds nuw %struct.box, ptr %127, i32 0, i32 0, !dbg !2265
  store i32 %126, ptr %128, align 8, !dbg !2266
  br label %161, !dbg !2267

129:                                              ; preds = %111
  %130 = load ptr, ptr %15, align 8, !dbg !2268
  %131 = getelementptr inbounds nuw %struct.box, ptr %130, i32 0, i32 3, !dbg !2269
  %132 = load i32, ptr %131, align 4, !dbg !2269
  %133 = load ptr, ptr %15, align 8, !dbg !2270
  %134 = getelementptr inbounds nuw %struct.box, ptr %133, i32 0, i32 2, !dbg !2271
  %135 = load i32, ptr %134, align 8, !dbg !2271
  %136 = add nsw i32 %132, %135, !dbg !2272
  %137 = sdiv i32 %136, 2, !dbg !2273
  store i32 %137, ptr %10, align 4, !dbg !2274
  %138 = load i32, ptr %10, align 4, !dbg !2275
  %139 = load ptr, ptr %15, align 8, !dbg !2276
  %140 = getelementptr inbounds nuw %struct.box, ptr %139, i32 0, i32 3, !dbg !2277
  store i32 %138, ptr %140, align 4, !dbg !2278
  %141 = load i32, ptr %10, align 4, !dbg !2279
  %142 = add nsw i32 %141, 1, !dbg !2280
  %143 = load ptr, ptr %16, align 8, !dbg !2281
  %144 = getelementptr inbounds nuw %struct.box, ptr %143, i32 0, i32 2, !dbg !2282
  store i32 %142, ptr %144, align 8, !dbg !2283
  br label %161, !dbg !2284

145:                                              ; preds = %111
  %146 = load ptr, ptr %15, align 8, !dbg !2285
  %147 = getelementptr inbounds nuw %struct.box, ptr %146, i32 0, i32 5, !dbg !2286
  %148 = load i32, ptr %147, align 4, !dbg !2286
  %149 = load ptr, ptr %15, align 8, !dbg !2287
  %150 = getelementptr inbounds nuw %struct.box, ptr %149, i32 0, i32 4, !dbg !2288
  %151 = load i32, ptr %150, align 8, !dbg !2288
  %152 = add nsw i32 %148, %151, !dbg !2289
  %153 = sdiv i32 %152, 2, !dbg !2290
  store i32 %153, ptr %10, align 4, !dbg !2291
  %154 = load i32, ptr %10, align 4, !dbg !2292
  %155 = load ptr, ptr %15, align 8, !dbg !2293
  %156 = getelementptr inbounds nuw %struct.box, ptr %155, i32 0, i32 5, !dbg !2294
  store i32 %154, ptr %156, align 4, !dbg !2295
  %157 = load i32, ptr %10, align 4, !dbg !2296
  %158 = add nsw i32 %157, 1, !dbg !2297
  %159 = load ptr, ptr %16, align 8, !dbg !2298
  %160 = getelementptr inbounds nuw %struct.box, ptr %159, i32 0, i32 4, !dbg !2299
  store i32 %158, ptr %160, align 8, !dbg !2300
  br label %161, !dbg !2301

161:                                              ; preds = %111, %145, %129, %113
  %162 = load ptr, ptr %5, align 8, !dbg !2302
  %163 = load ptr, ptr %15, align 8, !dbg !2303
  call void @update_box(ptr noundef %162, ptr noundef %163), !dbg !2304
  %164 = load ptr, ptr %5, align 8, !dbg !2305
  %165 = load ptr, ptr %16, align 8, !dbg !2306
  call void @update_box(ptr noundef %164, ptr noundef %165), !dbg !2307
  %166 = load i32, ptr %7, align 4, !dbg !2308
  %167 = add nsw i32 %166, 1, !dbg !2308
  store i32 %167, ptr %7, align 4, !dbg !2308
  br label %17, !dbg !2147, !llvm.loop !2309

168:                                              ; preds = %37, %17
  %169 = load i32, ptr %7, align 4, !dbg !2311
  ret i32 %169, !dbg !2312
}

; Function Attrs: noinline nounwind uwtable
define internal void @compute_color(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !2313 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !2316, !DIExpression(), !2317)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !2318, !DIExpression(), !2319)
  store i32 %2, ptr %6, align 4
    #dbg_declare(ptr %6, !2320, !DIExpression(), !2321)
    #dbg_declare(ptr %7, !2322, !DIExpression(), !2323)
  %24 = load ptr, ptr %4, align 8, !dbg !2324
  %25 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %24, i32 0, i32 83, !dbg !2325
  %26 = load ptr, ptr %25, align 8, !dbg !2325
  store ptr %26, ptr %7, align 8, !dbg !2323
    #dbg_declare(ptr %8, !2326, !DIExpression(), !2327)
  %27 = load ptr, ptr %7, align 8, !dbg !2328
  %28 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %27, i32 0, i32 3, !dbg !2329
  %29 = load ptr, ptr %28, align 8, !dbg !2329
  store ptr %29, ptr %8, align 8, !dbg !2327
    #dbg_declare(ptr %9, !2330, !DIExpression(), !2331)
    #dbg_declare(ptr %10, !2332, !DIExpression(), !2333)
    #dbg_declare(ptr %11, !2334, !DIExpression(), !2335)
    #dbg_declare(ptr %12, !2336, !DIExpression(), !2337)
    #dbg_declare(ptr %13, !2338, !DIExpression(), !2339)
    #dbg_declare(ptr %14, !2340, !DIExpression(), !2341)
    #dbg_declare(ptr %15, !2342, !DIExpression(), !2343)
    #dbg_declare(ptr %16, !2344, !DIExpression(), !2345)
    #dbg_declare(ptr %17, !2346, !DIExpression(), !2347)
    #dbg_declare(ptr %18, !2348, !DIExpression(), !2349)
    #dbg_declare(ptr %19, !2350, !DIExpression(), !2351)
    #dbg_declare(ptr %20, !2352, !DIExpression(), !2353)
  store i64 0, ptr %20, align 8, !dbg !2353
    #dbg_declare(ptr %21, !2354, !DIExpression(), !2355)
  store i64 0, ptr %21, align 8, !dbg !2355
    #dbg_declare(ptr %22, !2356, !DIExpression(), !2357)
  store i64 0, ptr %22, align 8, !dbg !2357
    #dbg_declare(ptr %23, !2358, !DIExpression(), !2359)
  store i64 0, ptr %23, align 8, !dbg !2359
  %30 = load ptr, ptr %5, align 8, !dbg !2360
  %31 = getelementptr inbounds nuw %struct.box, ptr %30, i32 0, i32 0, !dbg !2361
  %32 = load i32, ptr %31, align 8, !dbg !2361
  store i32 %32, ptr %13, align 4, !dbg !2362
  %33 = load ptr, ptr %5, align 8, !dbg !2363
  %34 = getelementptr inbounds nuw %struct.box, ptr %33, i32 0, i32 1, !dbg !2364
  %35 = load i32, ptr %34, align 4, !dbg !2364
  store i32 %35, ptr %14, align 4, !dbg !2365
  %36 = load ptr, ptr %5, align 8, !dbg !2366
  %37 = getelementptr inbounds nuw %struct.box, ptr %36, i32 0, i32 2, !dbg !2367
  %38 = load i32, ptr %37, align 8, !dbg !2367
  store i32 %38, ptr %15, align 4, !dbg !2368
  %39 = load ptr, ptr %5, align 8, !dbg !2369
  %40 = getelementptr inbounds nuw %struct.box, ptr %39, i32 0, i32 3, !dbg !2370
  %41 = load i32, ptr %40, align 4, !dbg !2370
  store i32 %41, ptr %16, align 4, !dbg !2371
  %42 = load ptr, ptr %5, align 8, !dbg !2372
  %43 = getelementptr inbounds nuw %struct.box, ptr %42, i32 0, i32 4, !dbg !2373
  %44 = load i32, ptr %43, align 8, !dbg !2373
  store i32 %44, ptr %17, align 4, !dbg !2374
  %45 = load ptr, ptr %5, align 8, !dbg !2375
  %46 = getelementptr inbounds nuw %struct.box, ptr %45, i32 0, i32 5, !dbg !2376
  %47 = load i32, ptr %46, align 4, !dbg !2376
  store i32 %47, ptr %18, align 4, !dbg !2377
  %48 = load i32, ptr %13, align 4, !dbg !2378
  store i32 %48, ptr %10, align 4, !dbg !2380
  br label %49, !dbg !2381

49:                                               ; preds = %119, %3
  %50 = load i32, ptr %10, align 4, !dbg !2382
  %51 = load i32, ptr %14, align 4, !dbg !2384
  %52 = icmp sle i32 %50, %51, !dbg !2385
  br i1 %52, label %53, label %122, !dbg !2386

53:                                               ; preds = %49
  %54 = load i32, ptr %15, align 4, !dbg !2387
  store i32 %54, ptr %11, align 4, !dbg !2389
  br label %55, !dbg !2390

55:                                               ; preds = %115, %53
  %56 = load i32, ptr %11, align 4, !dbg !2391
  %57 = load i32, ptr %16, align 4, !dbg !2393
  %58 = icmp sle i32 %56, %57, !dbg !2394
  br i1 %58, label %59, label %118, !dbg !2395

59:                                               ; preds = %55
  %60 = load ptr, ptr %8, align 8, !dbg !2396
  %61 = load i32, ptr %10, align 4, !dbg !2398
  %62 = sext i32 %61 to i64, !dbg !2396
  %63 = getelementptr inbounds ptr, ptr %60, i64 %62, !dbg !2396
  %64 = load ptr, ptr %63, align 8, !dbg !2396
  %65 = load i32, ptr %11, align 4, !dbg !2399
  %66 = sext i32 %65 to i64, !dbg !2396
  %67 = getelementptr inbounds [32 x i16], ptr %64, i64 %66, !dbg !2396
  %68 = load i32, ptr %17, align 4, !dbg !2400
  %69 = sext i32 %68 to i64, !dbg !2396
  %70 = getelementptr inbounds [32 x i16], ptr %67, i64 0, i64 %69, !dbg !2396
  store ptr %70, ptr %9, align 8, !dbg !2401
  %71 = load i32, ptr %17, align 4, !dbg !2402
  store i32 %71, ptr %12, align 4, !dbg !2404
  br label %72, !dbg !2405

72:                                               ; preds = %111, %59
  %73 = load i32, ptr %12, align 4, !dbg !2406
  %74 = load i32, ptr %18, align 4, !dbg !2408
  %75 = icmp sle i32 %73, %74, !dbg !2409
  br i1 %75, label %76, label %114, !dbg !2410

76:                                               ; preds = %72
  %77 = load ptr, ptr %9, align 8, !dbg !2411
  %78 = getelementptr inbounds nuw i16, ptr %77, i32 1, !dbg !2411
  store ptr %78, ptr %9, align 8, !dbg !2411
  %79 = load i16, ptr %77, align 2, !dbg !2414
  %80 = zext i16 %79 to i64, !dbg !2414
  store i64 %80, ptr %19, align 8, !dbg !2415
  %81 = icmp ne i64 %80, 0, !dbg !2416
  br i1 %81, label %82, label %110, !dbg !2416

82:                                               ; preds = %76
  %83 = load i64, ptr %19, align 8, !dbg !2417
  %84 = load i64, ptr %20, align 8, !dbg !2419
  %85 = add nsw i64 %84, %83, !dbg !2419
  store i64 %85, ptr %20, align 8, !dbg !2419
  %86 = load i32, ptr %10, align 4, !dbg !2420
  %87 = shl i32 %86, 3, !dbg !2421
  %88 = add nsw i32 %87, 4, !dbg !2422
  %89 = sext i32 %88 to i64, !dbg !2423
  %90 = load i64, ptr %19, align 8, !dbg !2424
  %91 = mul nsw i64 %89, %90, !dbg !2425
  %92 = load i64, ptr %21, align 8, !dbg !2426
  %93 = add nsw i64 %92, %91, !dbg !2426
  store i64 %93, ptr %21, align 8, !dbg !2426
  %94 = load i32, ptr %11, align 4, !dbg !2427
  %95 = shl i32 %94, 2, !dbg !2428
  %96 = add nsw i32 %95, 2, !dbg !2429
  %97 = sext i32 %96 to i64, !dbg !2430
  %98 = load i64, ptr %19, align 8, !dbg !2431
  %99 = mul nsw i64 %97, %98, !dbg !2432
  %100 = load i64, ptr %22, align 8, !dbg !2433
  %101 = add nsw i64 %100, %99, !dbg !2433
  store i64 %101, ptr %22, align 8, !dbg !2433
  %102 = load i32, ptr %12, align 4, !dbg !2434
  %103 = shl i32 %102, 3, !dbg !2435
  %104 = add nsw i32 %103, 4, !dbg !2436
  %105 = sext i32 %104 to i64, !dbg !2437
  %106 = load i64, ptr %19, align 8, !dbg !2438
  %107 = mul nsw i64 %105, %106, !dbg !2439
  %108 = load i64, ptr %23, align 8, !dbg !2440
  %109 = add nsw i64 %108, %107, !dbg !2440
  store i64 %109, ptr %23, align 8, !dbg !2440
  br label %110, !dbg !2441

110:                                              ; preds = %82, %76
  br label %111, !dbg !2442

111:                                              ; preds = %110
  %112 = load i32, ptr %12, align 4, !dbg !2443
  %113 = add nsw i32 %112, 1, !dbg !2443
  store i32 %113, ptr %12, align 4, !dbg !2443
  br label %72, !dbg !2444, !llvm.loop !2445

114:                                              ; preds = %72
  br label %115, !dbg !2447

115:                                              ; preds = %114
  %116 = load i32, ptr %11, align 4, !dbg !2448
  %117 = add nsw i32 %116, 1, !dbg !2448
  store i32 %117, ptr %11, align 4, !dbg !2448
  br label %55, !dbg !2449, !llvm.loop !2450

118:                                              ; preds = %55
  br label %119, !dbg !2451

119:                                              ; preds = %118
  %120 = load i32, ptr %10, align 4, !dbg !2452
  %121 = add nsw i32 %120, 1, !dbg !2452
  store i32 %121, ptr %10, align 4, !dbg !2452
  br label %49, !dbg !2453, !llvm.loop !2454

122:                                              ; preds = %49
  %123 = load i64, ptr %21, align 8, !dbg !2456
  %124 = load i64, ptr %20, align 8, !dbg !2457
  %125 = ashr i64 %124, 1, !dbg !2458
  %126 = add nsw i64 %123, %125, !dbg !2459
  %127 = load i64, ptr %20, align 8, !dbg !2460
  %128 = sdiv i64 %126, %127, !dbg !2461
  %129 = trunc i64 %128 to i8, !dbg !2462
  %130 = load ptr, ptr %4, align 8, !dbg !2463
  %131 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %130, i32 0, i32 32, !dbg !2464
  %132 = load ptr, ptr %131, align 8, !dbg !2464
  %133 = getelementptr inbounds ptr, ptr %132, i64 0, !dbg !2463
  %134 = load ptr, ptr %133, align 8, !dbg !2463
  %135 = load i32, ptr %6, align 4, !dbg !2465
  %136 = sext i32 %135 to i64, !dbg !2463
  %137 = getelementptr inbounds i8, ptr %134, i64 %136, !dbg !2463
  store i8 %129, ptr %137, align 1, !dbg !2466
  %138 = load i64, ptr %22, align 8, !dbg !2467
  %139 = load i64, ptr %20, align 8, !dbg !2468
  %140 = ashr i64 %139, 1, !dbg !2469
  %141 = add nsw i64 %138, %140, !dbg !2470
  %142 = load i64, ptr %20, align 8, !dbg !2471
  %143 = sdiv i64 %141, %142, !dbg !2472
  %144 = trunc i64 %143 to i8, !dbg !2473
  %145 = load ptr, ptr %4, align 8, !dbg !2474
  %146 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %145, i32 0, i32 32, !dbg !2475
  %147 = load ptr, ptr %146, align 8, !dbg !2475
  %148 = getelementptr inbounds ptr, ptr %147, i64 1, !dbg !2474
  %149 = load ptr, ptr %148, align 8, !dbg !2474
  %150 = load i32, ptr %6, align 4, !dbg !2476
  %151 = sext i32 %150 to i64, !dbg !2474
  %152 = getelementptr inbounds i8, ptr %149, i64 %151, !dbg !2474
  store i8 %144, ptr %152, align 1, !dbg !2477
  %153 = load i64, ptr %23, align 8, !dbg !2478
  %154 = load i64, ptr %20, align 8, !dbg !2479
  %155 = ashr i64 %154, 1, !dbg !2480
  %156 = add nsw i64 %153, %155, !dbg !2481
  %157 = load i64, ptr %20, align 8, !dbg !2482
  %158 = sdiv i64 %156, %157, !dbg !2483
  %159 = trunc i64 %158 to i8, !dbg !2484
  %160 = load ptr, ptr %4, align 8, !dbg !2485
  %161 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %160, i32 0, i32 32, !dbg !2486
  %162 = load ptr, ptr %161, align 8, !dbg !2486
  %163 = getelementptr inbounds ptr, ptr %162, i64 2, !dbg !2485
  %164 = load ptr, ptr %163, align 8, !dbg !2485
  %165 = load i32, ptr %6, align 4, !dbg !2487
  %166 = sext i32 %165 to i64, !dbg !2485
  %167 = getelementptr inbounds i8, ptr %164, i64 %166, !dbg !2485
  store i8 %159, ptr %167, align 1, !dbg !2488
  ret void, !dbg !2489
}

; Function Attrs: noinline nounwind uwtable
define internal ptr @find_biggest_color_pop(ptr noundef %0, i32 noundef %1) #0 !dbg !2490 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !2493, !DIExpression(), !2494)
  store i32 %1, ptr %4, align 4
    #dbg_declare(ptr %4, !2495, !DIExpression(), !2496)
    #dbg_declare(ptr %5, !2497, !DIExpression(), !2498)
    #dbg_declare(ptr %6, !2499, !DIExpression(), !2500)
    #dbg_declare(ptr %7, !2501, !DIExpression(), !2502)
  store i64 0, ptr %7, align 8, !dbg !2502
    #dbg_declare(ptr %8, !2503, !DIExpression(), !2504)
  store ptr null, ptr %8, align 8, !dbg !2504
  store i32 0, ptr %6, align 4, !dbg !2505
  %9 = load ptr, ptr %3, align 8, !dbg !2507
  store ptr %9, ptr %5, align 8, !dbg !2508
  br label %10, !dbg !2509

10:                                               ; preds = %31, %2
  %11 = load i32, ptr %6, align 4, !dbg !2510
  %12 = load i32, ptr %4, align 4, !dbg !2512
  %13 = icmp slt i32 %11, %12, !dbg !2513
  br i1 %13, label %14, label %36, !dbg !2514

14:                                               ; preds = %10
  %15 = load ptr, ptr %5, align 8, !dbg !2515
  %16 = getelementptr inbounds nuw %struct.box, ptr %15, i32 0, i32 7, !dbg !2518
  %17 = load i64, ptr %16, align 8, !dbg !2518
  %18 = load i64, ptr %7, align 8, !dbg !2519
  %19 = icmp sgt i64 %17, %18, !dbg !2520
  br i1 %19, label %20, label %30, !dbg !2521

20:                                               ; preds = %14
  %21 = load ptr, ptr %5, align 8, !dbg !2522
  %22 = getelementptr inbounds nuw %struct.box, ptr %21, i32 0, i32 6, !dbg !2523
  %23 = load i64, ptr %22, align 8, !dbg !2523
  %24 = icmp sgt i64 %23, 0, !dbg !2524
  br i1 %24, label %25, label %30, !dbg !2521

25:                                               ; preds = %20
  %26 = load ptr, ptr %5, align 8, !dbg !2525
  store ptr %26, ptr %8, align 8, !dbg !2527
  %27 = load ptr, ptr %5, align 8, !dbg !2528
  %28 = getelementptr inbounds nuw %struct.box, ptr %27, i32 0, i32 7, !dbg !2529
  %29 = load i64, ptr %28, align 8, !dbg !2529
  store i64 %29, ptr %7, align 8, !dbg !2530
  br label %30, !dbg !2531

30:                                               ; preds = %25, %20, %14
  br label %31, !dbg !2532

31:                                               ; preds = %30
  %32 = load i32, ptr %6, align 4, !dbg !2533
  %33 = add nsw i32 %32, 1, !dbg !2533
  store i32 %33, ptr %6, align 4, !dbg !2533
  %34 = load ptr, ptr %5, align 8, !dbg !2534
  %35 = getelementptr inbounds nuw %struct.box, ptr %34, i32 1, !dbg !2534
  store ptr %35, ptr %5, align 8, !dbg !2534
  br label %10, !dbg !2535, !llvm.loop !2536

36:                                               ; preds = %10
  %37 = load ptr, ptr %8, align 8, !dbg !2538
  ret ptr %37, !dbg !2539
}

; Function Attrs: noinline nounwind uwtable
define internal ptr @find_biggest_volume(ptr noundef %0, i32 noundef %1) #0 !dbg !2540 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !2541, !DIExpression(), !2542)
  store i32 %1, ptr %4, align 4
    #dbg_declare(ptr %4, !2543, !DIExpression(), !2544)
    #dbg_declare(ptr %5, !2545, !DIExpression(), !2546)
    #dbg_declare(ptr %6, !2547, !DIExpression(), !2548)
    #dbg_declare(ptr %7, !2549, !DIExpression(), !2550)
  store i64 0, ptr %7, align 8, !dbg !2550
    #dbg_declare(ptr %8, !2551, !DIExpression(), !2552)
  store ptr null, ptr %8, align 8, !dbg !2552
  store i32 0, ptr %6, align 4, !dbg !2553
  %9 = load ptr, ptr %3, align 8, !dbg !2555
  store ptr %9, ptr %5, align 8, !dbg !2556
  br label %10, !dbg !2557

10:                                               ; preds = %26, %2
  %11 = load i32, ptr %6, align 4, !dbg !2558
  %12 = load i32, ptr %4, align 4, !dbg !2560
  %13 = icmp slt i32 %11, %12, !dbg !2561
  br i1 %13, label %14, label %31, !dbg !2562

14:                                               ; preds = %10
  %15 = load ptr, ptr %5, align 8, !dbg !2563
  %16 = getelementptr inbounds nuw %struct.box, ptr %15, i32 0, i32 6, !dbg !2566
  %17 = load i64, ptr %16, align 8, !dbg !2566
  %18 = load i64, ptr %7, align 8, !dbg !2567
  %19 = icmp sgt i64 %17, %18, !dbg !2568
  br i1 %19, label %20, label %25, !dbg !2568

20:                                               ; preds = %14
  %21 = load ptr, ptr %5, align 8, !dbg !2569
  store ptr %21, ptr %8, align 8, !dbg !2571
  %22 = load ptr, ptr %5, align 8, !dbg !2572
  %23 = getelementptr inbounds nuw %struct.box, ptr %22, i32 0, i32 6, !dbg !2573
  %24 = load i64, ptr %23, align 8, !dbg !2573
  store i64 %24, ptr %7, align 8, !dbg !2574
  br label %25, !dbg !2575

25:                                               ; preds = %20, %14
  br label %26, !dbg !2576

26:                                               ; preds = %25
  %27 = load i32, ptr %6, align 4, !dbg !2577
  %28 = add nsw i32 %27, 1, !dbg !2577
  store i32 %28, ptr %6, align 4, !dbg !2577
  %29 = load ptr, ptr %5, align 8, !dbg !2578
  %30 = getelementptr inbounds nuw %struct.box, ptr %29, i32 1, !dbg !2578
  store ptr %30, ptr %5, align 8, !dbg !2578
  br label %10, !dbg !2579, !llvm.loop !2580

31:                                               ; preds = %10
  %32 = load ptr, ptr %8, align 8, !dbg !2582
  ret ptr %32, !dbg !2583
}

; Function Attrs: noinline nounwind uwtable
define internal void @fill_inverse_cmap(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 !dbg !2584 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca [256 x i8], align 16
  %20 = alloca i32, align 4
  %21 = alloca [128 x i8], align 16
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !2587, !DIExpression(), !2588)
  store i32 %1, ptr %6, align 4
    #dbg_declare(ptr %6, !2589, !DIExpression(), !2590)
  store i32 %2, ptr %7, align 4
    #dbg_declare(ptr %7, !2591, !DIExpression(), !2592)
  store i32 %3, ptr %8, align 4
    #dbg_declare(ptr %8, !2593, !DIExpression(), !2594)
    #dbg_declare(ptr %9, !2595, !DIExpression(), !2596)
  %22 = load ptr, ptr %5, align 8, !dbg !2597
  %23 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %22, i32 0, i32 83, !dbg !2598
  %24 = load ptr, ptr %23, align 8, !dbg !2598
  store ptr %24, ptr %9, align 8, !dbg !2596
    #dbg_declare(ptr %10, !2599, !DIExpression(), !2600)
  %25 = load ptr, ptr %9, align 8, !dbg !2601
  %26 = getelementptr inbounds nuw %struct.my_cquantizer, ptr %25, i32 0, i32 3, !dbg !2602
  %27 = load ptr, ptr %26, align 8, !dbg !2602
  store ptr %27, ptr %10, align 8, !dbg !2600
    #dbg_declare(ptr %11, !2603, !DIExpression(), !2604)
    #dbg_declare(ptr %12, !2605, !DIExpression(), !2606)
    #dbg_declare(ptr %13, !2607, !DIExpression(), !2608)
    #dbg_declare(ptr %14, !2609, !DIExpression(), !2610)
    #dbg_declare(ptr %15, !2611, !DIExpression(), !2612)
    #dbg_declare(ptr %16, !2613, !DIExpression(), !2614)
    #dbg_declare(ptr %17, !2615, !DIExpression(), !2616)
    #dbg_declare(ptr %18, !2617, !DIExpression(), !2618)
    #dbg_declare(ptr %19, !2619, !DIExpression(), !2621)
    #dbg_declare(ptr %20, !2622, !DIExpression(), !2623)
    #dbg_declare(ptr %21, !2624, !DIExpression(), !2628)
  %28 = load i32, ptr %6, align 4, !dbg !2629
  %29 = ashr i32 %28, 2, !dbg !2629
  store i32 %29, ptr %6, align 4, !dbg !2629
  %30 = load i32, ptr %7, align 4, !dbg !2630
  %31 = ashr i32 %30, 3, !dbg !2630
  store i32 %31, ptr %7, align 4, !dbg !2630
  %32 = load i32, ptr %8, align 4, !dbg !2631
  %33 = ashr i32 %32, 2, !dbg !2631
  store i32 %33, ptr %8, align 4, !dbg !2631
  %34 = load i32, ptr %6, align 4, !dbg !2632
  %35 = shl i32 %34, 5, !dbg !2633
  %36 = add nsw i32 %35, 4, !dbg !2634
  store i32 %36, ptr %11, align 4, !dbg !2635
  %37 = load i32, ptr %7, align 4, !dbg !2636
  %38 = shl i32 %37, 5, !dbg !2637
  %39 = add nsw i32 %38, 2, !dbg !2638
  store i32 %39, ptr %12, align 4, !dbg !2639
  %40 = load i32, ptr %8, align 4, !dbg !2640
  %41 = shl i32 %40, 5, !dbg !2641
  %42 = add nsw i32 %41, 4, !dbg !2642
  store i32 %42, ptr %13, align 4, !dbg !2643
  %43 = load ptr, ptr %5, align 8, !dbg !2644
  %44 = load i32, ptr %11, align 4, !dbg !2645
  %45 = load i32, ptr %12, align 4, !dbg !2646
  %46 = load i32, ptr %13, align 4, !dbg !2647
  %47 = getelementptr inbounds [256 x i8], ptr %19, i64 0, i64 0, !dbg !2648
  %48 = call i32 @find_nearby_colors(ptr noundef %43, i32 noundef %44, i32 noundef %45, i32 noundef %46, ptr noundef %47), !dbg !2649
  store i32 %48, ptr %20, align 4, !dbg !2650
  %49 = load ptr, ptr %5, align 8, !dbg !2651
  %50 = load i32, ptr %11, align 4, !dbg !2652
  %51 = load i32, ptr %12, align 4, !dbg !2653
  %52 = load i32, ptr %13, align 4, !dbg !2654
  %53 = load i32, ptr %20, align 4, !dbg !2655
  %54 = getelementptr inbounds [256 x i8], ptr %19, i64 0, i64 0, !dbg !2656
  %55 = getelementptr inbounds [128 x i8], ptr %21, i64 0, i64 0, !dbg !2657
  call void @find_best_colors(ptr noundef %49, i32 noundef %50, i32 noundef %51, i32 noundef %52, i32 noundef %53, ptr noundef %54, ptr noundef %55), !dbg !2658
  %56 = load i32, ptr %6, align 4, !dbg !2659
  %57 = shl i32 %56, 2, !dbg !2659
  store i32 %57, ptr %6, align 4, !dbg !2659
  %58 = load i32, ptr %7, align 4, !dbg !2660
  %59 = shl i32 %58, 3, !dbg !2660
  store i32 %59, ptr %7, align 4, !dbg !2660
  %60 = load i32, ptr %8, align 4, !dbg !2661
  %61 = shl i32 %60, 2, !dbg !2661
  store i32 %61, ptr %8, align 4, !dbg !2661
  %62 = getelementptr inbounds [128 x i8], ptr %21, i64 0, i64 0, !dbg !2662
  store ptr %62, ptr %17, align 8, !dbg !2663
  store i32 0, ptr %14, align 4, !dbg !2664
  br label %63, !dbg !2666

63:                                               ; preds = %106, %4
  %64 = load i32, ptr %14, align 4, !dbg !2667
  %65 = icmp slt i32 %64, 4, !dbg !2669
  br i1 %65, label %66, label %109, !dbg !2670

66:                                               ; preds = %63
  store i32 0, ptr %15, align 4, !dbg !2671
  br label %67, !dbg !2674

67:                                               ; preds = %102, %66
  %68 = load i32, ptr %15, align 4, !dbg !2675
  %69 = icmp slt i32 %68, 8, !dbg !2677
  br i1 %69, label %70, label %105, !dbg !2678

70:                                               ; preds = %67
  %71 = load ptr, ptr %10, align 8, !dbg !2679
  %72 = load i32, ptr %6, align 4, !dbg !2681
  %73 = load i32, ptr %14, align 4, !dbg !2682
  %74 = add nsw i32 %72, %73, !dbg !2683
  %75 = sext i32 %74 to i64, !dbg !2679
  %76 = getelementptr inbounds ptr, ptr %71, i64 %75, !dbg !2679
  %77 = load ptr, ptr %76, align 8, !dbg !2679
  %78 = load i32, ptr %7, align 4, !dbg !2684
  %79 = load i32, ptr %15, align 4, !dbg !2685
  %80 = add nsw i32 %78, %79, !dbg !2686
  %81 = sext i32 %80 to i64, !dbg !2679
  %82 = getelementptr inbounds [32 x i16], ptr %77, i64 %81, !dbg !2679
  %83 = load i32, ptr %8, align 4, !dbg !2687
  %84 = sext i32 %83 to i64, !dbg !2679
  %85 = getelementptr inbounds [32 x i16], ptr %82, i64 0, i64 %84, !dbg !2679
  store ptr %85, ptr %18, align 8, !dbg !2688
  store i32 0, ptr %16, align 4, !dbg !2689
  br label %86, !dbg !2691

86:                                               ; preds = %98, %70
  %87 = load i32, ptr %16, align 4, !dbg !2692
  %88 = icmp slt i32 %87, 4, !dbg !2694
  br i1 %88, label %89, label %101, !dbg !2695

89:                                               ; preds = %86
  %90 = load ptr, ptr %17, align 8, !dbg !2696
  %91 = getelementptr inbounds nuw i8, ptr %90, i32 1, !dbg !2696
  store ptr %91, ptr %17, align 8, !dbg !2696
  %92 = load i8, ptr %90, align 1, !dbg !2696
  %93 = zext i8 %92 to i32, !dbg !2696
  %94 = add nsw i32 %93, 1, !dbg !2698
  %95 = trunc i32 %94 to i16, !dbg !2699
  %96 = load ptr, ptr %18, align 8, !dbg !2700
  %97 = getelementptr inbounds nuw i16, ptr %96, i32 1, !dbg !2700
  store ptr %97, ptr %18, align 8, !dbg !2700
  store i16 %95, ptr %96, align 2, !dbg !2701
  br label %98, !dbg !2702

98:                                               ; preds = %89
  %99 = load i32, ptr %16, align 4, !dbg !2703
  %100 = add nsw i32 %99, 1, !dbg !2703
  store i32 %100, ptr %16, align 4, !dbg !2703
  br label %86, !dbg !2704, !llvm.loop !2705

101:                                              ; preds = %86
  br label %102, !dbg !2707

102:                                              ; preds = %101
  %103 = load i32, ptr %15, align 4, !dbg !2708
  %104 = add nsw i32 %103, 1, !dbg !2708
  store i32 %104, ptr %15, align 4, !dbg !2708
  br label %67, !dbg !2709, !llvm.loop !2710

105:                                              ; preds = %67
  br label %106, !dbg !2712

106:                                              ; preds = %105
  %107 = load i32, ptr %14, align 4, !dbg !2713
  %108 = add nsw i32 %107, 1, !dbg !2713
  store i32 %108, ptr %14, align 4, !dbg !2713
  br label %63, !dbg !2714, !llvm.loop !2715

109:                                              ; preds = %63
  ret void, !dbg !2717
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @find_nearby_colors(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #0 !dbg !2718 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca [256 x i64], align 16
  store ptr %0, ptr %6, align 8
    #dbg_declare(ptr %6, !2721, !DIExpression(), !2722)
  store i32 %1, ptr %7, align 4
    #dbg_declare(ptr %7, !2723, !DIExpression(), !2724)
  store i32 %2, ptr %8, align 4
    #dbg_declare(ptr %8, !2725, !DIExpression(), !2726)
  store i32 %3, ptr %9, align 4
    #dbg_declare(ptr %9, !2727, !DIExpression(), !2728)
  store ptr %4, ptr %10, align 8
    #dbg_declare(ptr %10, !2729, !DIExpression(), !2730)
    #dbg_declare(ptr %11, !2731, !DIExpression(), !2732)
  %26 = load ptr, ptr %6, align 8, !dbg !2733
  %27 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %26, i32 0, i32 31, !dbg !2734
  %28 = load i32, ptr %27, align 4, !dbg !2734
  store i32 %28, ptr %11, align 4, !dbg !2732
    #dbg_declare(ptr %12, !2735, !DIExpression(), !2736)
    #dbg_declare(ptr %13, !2737, !DIExpression(), !2738)
    #dbg_declare(ptr %14, !2739, !DIExpression(), !2740)
    #dbg_declare(ptr %15, !2741, !DIExpression(), !2742)
    #dbg_declare(ptr %16, !2743, !DIExpression(), !2744)
    #dbg_declare(ptr %17, !2745, !DIExpression(), !2746)
    #dbg_declare(ptr %18, !2747, !DIExpression(), !2748)
    #dbg_declare(ptr %19, !2749, !DIExpression(), !2750)
    #dbg_declare(ptr %20, !2751, !DIExpression(), !2752)
    #dbg_declare(ptr %21, !2753, !DIExpression(), !2754)
    #dbg_declare(ptr %22, !2755, !DIExpression(), !2756)
    #dbg_declare(ptr %23, !2757, !DIExpression(), !2758)
    #dbg_declare(ptr %24, !2759, !DIExpression(), !2760)
    #dbg_declare(ptr %25, !2761, !DIExpression(), !2763)
  %29 = load i32, ptr %7, align 4, !dbg !2764
  %30 = add nsw i32 %29, 24, !dbg !2765
  store i32 %30, ptr %12, align 4, !dbg !2766
  %31 = load i32, ptr %7, align 4, !dbg !2767
  %32 = load i32, ptr %12, align 4, !dbg !2768
  %33 = add nsw i32 %31, %32, !dbg !2769
  %34 = ashr i32 %33, 1, !dbg !2770
  store i32 %34, ptr %15, align 4, !dbg !2771
  %35 = load i32, ptr %8, align 4, !dbg !2772
  %36 = add nsw i32 %35, 28, !dbg !2773
  store i32 %36, ptr %13, align 4, !dbg !2774
  %37 = load i32, ptr %8, align 4, !dbg !2775
  %38 = load i32, ptr %13, align 4, !dbg !2776
  %39 = add nsw i32 %37, %38, !dbg !2777
  %40 = ashr i32 %39, 1, !dbg !2778
  store i32 %40, ptr %16, align 4, !dbg !2779
  %41 = load i32, ptr %9, align 4, !dbg !2780
  %42 = add nsw i32 %41, 24, !dbg !2781
  store i32 %42, ptr %14, align 4, !dbg !2782
  %43 = load i32, ptr %9, align 4, !dbg !2783
  %44 = load i32, ptr %14, align 4, !dbg !2784
  %45 = add nsw i32 %43, %44, !dbg !2785
  %46 = ashr i32 %45, 1, !dbg !2786
  store i32 %46, ptr %17, align 4, !dbg !2787
  store i64 2147483647, ptr %21, align 8, !dbg !2788
  store i32 0, ptr %18, align 4, !dbg !2789
  br label %47, !dbg !2791

47:                                               ; preds = %314, %5
  %48 = load i32, ptr %18, align 4, !dbg !2792
  %49 = load i32, ptr %11, align 4, !dbg !2794
  %50 = icmp slt i32 %48, %49, !dbg !2795
  br i1 %50, label %51, label %317, !dbg !2796

51:                                               ; preds = %47
  %52 = load ptr, ptr %6, align 8, !dbg !2797
  %53 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %52, i32 0, i32 32, !dbg !2797
  %54 = load ptr, ptr %53, align 8, !dbg !2797
  %55 = getelementptr inbounds ptr, ptr %54, i64 0, !dbg !2797
  %56 = load ptr, ptr %55, align 8, !dbg !2797
  %57 = load i32, ptr %18, align 4, !dbg !2797
  %58 = sext i32 %57 to i64, !dbg !2797
  %59 = getelementptr inbounds i8, ptr %56, i64 %58, !dbg !2797
  %60 = load i8, ptr %59, align 1, !dbg !2797
  %61 = zext i8 %60 to i32, !dbg !2797
  store i32 %61, ptr %19, align 4, !dbg !2799
  %62 = load i32, ptr %19, align 4, !dbg !2800
  %63 = load i32, ptr %7, align 4, !dbg !2802
  %64 = icmp slt i32 %62, %63, !dbg !2803
  br i1 %64, label %65, label %82, !dbg !2803

65:                                               ; preds = %51
  %66 = load i32, ptr %19, align 4, !dbg !2804
  %67 = load i32, ptr %7, align 4, !dbg !2806
  %68 = sub nsw i32 %66, %67, !dbg !2807
  %69 = mul nsw i32 %68, 2, !dbg !2808
  %70 = sext i32 %69 to i64, !dbg !2809
  store i64 %70, ptr %24, align 8, !dbg !2810
  %71 = load i64, ptr %24, align 8, !dbg !2811
  %72 = load i64, ptr %24, align 8, !dbg !2812
  %73 = mul nsw i64 %71, %72, !dbg !2813
  store i64 %73, ptr %22, align 8, !dbg !2814
  %74 = load i32, ptr %19, align 4, !dbg !2815
  %75 = load i32, ptr %12, align 4, !dbg !2816
  %76 = sub nsw i32 %74, %75, !dbg !2817
  %77 = mul nsw i32 %76, 2, !dbg !2818
  %78 = sext i32 %77 to i64, !dbg !2819
  store i64 %78, ptr %24, align 8, !dbg !2820
  %79 = load i64, ptr %24, align 8, !dbg !2821
  %80 = load i64, ptr %24, align 8, !dbg !2822
  %81 = mul nsw i64 %79, %80, !dbg !2823
  store i64 %81, ptr %23, align 8, !dbg !2824
  br label %127, !dbg !2825

82:                                               ; preds = %51
  %83 = load i32, ptr %19, align 4, !dbg !2826
  %84 = load i32, ptr %12, align 4, !dbg !2828
  %85 = icmp sgt i32 %83, %84, !dbg !2829
  br i1 %85, label %86, label %103, !dbg !2829

86:                                               ; preds = %82
  %87 = load i32, ptr %19, align 4, !dbg !2830
  %88 = load i32, ptr %12, align 4, !dbg !2832
  %89 = sub nsw i32 %87, %88, !dbg !2833
  %90 = mul nsw i32 %89, 2, !dbg !2834
  %91 = sext i32 %90 to i64, !dbg !2835
  store i64 %91, ptr %24, align 8, !dbg !2836
  %92 = load i64, ptr %24, align 8, !dbg !2837
  %93 = load i64, ptr %24, align 8, !dbg !2838
  %94 = mul nsw i64 %92, %93, !dbg !2839
  store i64 %94, ptr %22, align 8, !dbg !2840
  %95 = load i32, ptr %19, align 4, !dbg !2841
  %96 = load i32, ptr %7, align 4, !dbg !2842
  %97 = sub nsw i32 %95, %96, !dbg !2843
  %98 = mul nsw i32 %97, 2, !dbg !2844
  %99 = sext i32 %98 to i64, !dbg !2845
  store i64 %99, ptr %24, align 8, !dbg !2846
  %100 = load i64, ptr %24, align 8, !dbg !2847
  %101 = load i64, ptr %24, align 8, !dbg !2848
  %102 = mul nsw i64 %100, %101, !dbg !2849
  store i64 %102, ptr %23, align 8, !dbg !2850
  br label %126, !dbg !2851

103:                                              ; preds = %82
  store i64 0, ptr %22, align 8, !dbg !2852
  %104 = load i32, ptr %19, align 4, !dbg !2854
  %105 = load i32, ptr %15, align 4, !dbg !2856
  %106 = icmp sle i32 %104, %105, !dbg !2857
  br i1 %106, label %107, label %116, !dbg !2857

107:                                              ; preds = %103
  %108 = load i32, ptr %19, align 4, !dbg !2858
  %109 = load i32, ptr %12, align 4, !dbg !2860
  %110 = sub nsw i32 %108, %109, !dbg !2861
  %111 = mul nsw i32 %110, 2, !dbg !2862
  %112 = sext i32 %111 to i64, !dbg !2863
  store i64 %112, ptr %24, align 8, !dbg !2864
  %113 = load i64, ptr %24, align 8, !dbg !2865
  %114 = load i64, ptr %24, align 8, !dbg !2866
  %115 = mul nsw i64 %113, %114, !dbg !2867
  store i64 %115, ptr %23, align 8, !dbg !2868
  br label %125, !dbg !2869

116:                                              ; preds = %103
  %117 = load i32, ptr %19, align 4, !dbg !2870
  %118 = load i32, ptr %7, align 4, !dbg !2872
  %119 = sub nsw i32 %117, %118, !dbg !2873
  %120 = mul nsw i32 %119, 2, !dbg !2874
  %121 = sext i32 %120 to i64, !dbg !2875
  store i64 %121, ptr %24, align 8, !dbg !2876
  %122 = load i64, ptr %24, align 8, !dbg !2877
  %123 = load i64, ptr %24, align 8, !dbg !2878
  %124 = mul nsw i64 %122, %123, !dbg !2879
  store i64 %124, ptr %23, align 8, !dbg !2880
  br label %125

125:                                              ; preds = %116, %107
  br label %126

126:                                              ; preds = %125, %86
  br label %127

127:                                              ; preds = %126, %65
  %128 = load ptr, ptr %6, align 8, !dbg !2881
  %129 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %128, i32 0, i32 32, !dbg !2881
  %130 = load ptr, ptr %129, align 8, !dbg !2881
  %131 = getelementptr inbounds ptr, ptr %130, i64 1, !dbg !2881
  %132 = load ptr, ptr %131, align 8, !dbg !2881
  %133 = load i32, ptr %18, align 4, !dbg !2881
  %134 = sext i32 %133 to i64, !dbg !2881
  %135 = getelementptr inbounds i8, ptr %132, i64 %134, !dbg !2881
  %136 = load i8, ptr %135, align 1, !dbg !2881
  %137 = zext i8 %136 to i32, !dbg !2881
  store i32 %137, ptr %19, align 4, !dbg !2882
  %138 = load i32, ptr %19, align 4, !dbg !2883
  %139 = load i32, ptr %8, align 4, !dbg !2885
  %140 = icmp slt i32 %138, %139, !dbg !2886
  br i1 %140, label %141, label %162, !dbg !2886

141:                                              ; preds = %127
  %142 = load i32, ptr %19, align 4, !dbg !2887
  %143 = load i32, ptr %8, align 4, !dbg !2889
  %144 = sub nsw i32 %142, %143, !dbg !2890
  %145 = mul nsw i32 %144, 3, !dbg !2891
  %146 = sext i32 %145 to i64, !dbg !2892
  store i64 %146, ptr %24, align 8, !dbg !2893
  %147 = load i64, ptr %24, align 8, !dbg !2894
  %148 = load i64, ptr %24, align 8, !dbg !2895
  %149 = mul nsw i64 %147, %148, !dbg !2896
  %150 = load i64, ptr %22, align 8, !dbg !2897
  %151 = add nsw i64 %150, %149, !dbg !2897
  store i64 %151, ptr %22, align 8, !dbg !2897
  %152 = load i32, ptr %19, align 4, !dbg !2898
  %153 = load i32, ptr %13, align 4, !dbg !2899
  %154 = sub nsw i32 %152, %153, !dbg !2900
  %155 = mul nsw i32 %154, 3, !dbg !2901
  %156 = sext i32 %155 to i64, !dbg !2902
  store i64 %156, ptr %24, align 8, !dbg !2903
  %157 = load i64, ptr %24, align 8, !dbg !2904
  %158 = load i64, ptr %24, align 8, !dbg !2905
  %159 = mul nsw i64 %157, %158, !dbg !2906
  %160 = load i64, ptr %23, align 8, !dbg !2907
  %161 = add nsw i64 %160, %159, !dbg !2907
  store i64 %161, ptr %23, align 8, !dbg !2907
  br label %215, !dbg !2908

162:                                              ; preds = %127
  %163 = load i32, ptr %19, align 4, !dbg !2909
  %164 = load i32, ptr %13, align 4, !dbg !2911
  %165 = icmp sgt i32 %163, %164, !dbg !2912
  br i1 %165, label %166, label %187, !dbg !2912

166:                                              ; preds = %162
  %167 = load i32, ptr %19, align 4, !dbg !2913
  %168 = load i32, ptr %13, align 4, !dbg !2915
  %169 = sub nsw i32 %167, %168, !dbg !2916
  %170 = mul nsw i32 %169, 3, !dbg !2917
  %171 = sext i32 %170 to i64, !dbg !2918
  store i64 %171, ptr %24, align 8, !dbg !2919
  %172 = load i64, ptr %24, align 8, !dbg !2920
  %173 = load i64, ptr %24, align 8, !dbg !2921
  %174 = mul nsw i64 %172, %173, !dbg !2922
  %175 = load i64, ptr %22, align 8, !dbg !2923
  %176 = add nsw i64 %175, %174, !dbg !2923
  store i64 %176, ptr %22, align 8, !dbg !2923
  %177 = load i32, ptr %19, align 4, !dbg !2924
  %178 = load i32, ptr %8, align 4, !dbg !2925
  %179 = sub nsw i32 %177, %178, !dbg !2926
  %180 = mul nsw i32 %179, 3, !dbg !2927
  %181 = sext i32 %180 to i64, !dbg !2928
  store i64 %181, ptr %24, align 8, !dbg !2929
  %182 = load i64, ptr %24, align 8, !dbg !2930
  %183 = load i64, ptr %24, align 8, !dbg !2931
  %184 = mul nsw i64 %182, %183, !dbg !2932
  %185 = load i64, ptr %23, align 8, !dbg !2933
  %186 = add nsw i64 %185, %184, !dbg !2933
  store i64 %186, ptr %23, align 8, !dbg !2933
  br label %214, !dbg !2934

187:                                              ; preds = %162
  %188 = load i32, ptr %19, align 4, !dbg !2935
  %189 = load i32, ptr %16, align 4, !dbg !2938
  %190 = icmp sle i32 %188, %189, !dbg !2939
  br i1 %190, label %191, label %202, !dbg !2939

191:                                              ; preds = %187
  %192 = load i32, ptr %19, align 4, !dbg !2940
  %193 = load i32, ptr %13, align 4, !dbg !2942
  %194 = sub nsw i32 %192, %193, !dbg !2943
  %195 = mul nsw i32 %194, 3, !dbg !2944
  %196 = sext i32 %195 to i64, !dbg !2945
  store i64 %196, ptr %24, align 8, !dbg !2946
  %197 = load i64, ptr %24, align 8, !dbg !2947
  %198 = load i64, ptr %24, align 8, !dbg !2948
  %199 = mul nsw i64 %197, %198, !dbg !2949
  %200 = load i64, ptr %23, align 8, !dbg !2950
  %201 = add nsw i64 %200, %199, !dbg !2950
  store i64 %201, ptr %23, align 8, !dbg !2950
  br label %213, !dbg !2951

202:                                              ; preds = %187
  %203 = load i32, ptr %19, align 4, !dbg !2952
  %204 = load i32, ptr %8, align 4, !dbg !2954
  %205 = sub nsw i32 %203, %204, !dbg !2955
  %206 = mul nsw i32 %205, 3, !dbg !2956
  %207 = sext i32 %206 to i64, !dbg !2957
  store i64 %207, ptr %24, align 8, !dbg !2958
  %208 = load i64, ptr %24, align 8, !dbg !2959
  %209 = load i64, ptr %24, align 8, !dbg !2960
  %210 = mul nsw i64 %208, %209, !dbg !2961
  %211 = load i64, ptr %23, align 8, !dbg !2962
  %212 = add nsw i64 %211, %210, !dbg !2962
  store i64 %212, ptr %23, align 8, !dbg !2962
  br label %213

213:                                              ; preds = %202, %191
  br label %214

214:                                              ; preds = %213, %166
  br label %215

215:                                              ; preds = %214, %141
  %216 = load ptr, ptr %6, align 8, !dbg !2963
  %217 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %216, i32 0, i32 32, !dbg !2963
  %218 = load ptr, ptr %217, align 8, !dbg !2963
  %219 = getelementptr inbounds ptr, ptr %218, i64 2, !dbg !2963
  %220 = load ptr, ptr %219, align 8, !dbg !2963
  %221 = load i32, ptr %18, align 4, !dbg !2963
  %222 = sext i32 %221 to i64, !dbg !2963
  %223 = getelementptr inbounds i8, ptr %220, i64 %222, !dbg !2963
  %224 = load i8, ptr %223, align 1, !dbg !2963
  %225 = zext i8 %224 to i32, !dbg !2963
  store i32 %225, ptr %19, align 4, !dbg !2964
  %226 = load i32, ptr %19, align 4, !dbg !2965
  %227 = load i32, ptr %9, align 4, !dbg !2967
  %228 = icmp slt i32 %226, %227, !dbg !2968
  br i1 %228, label %229, label %250, !dbg !2968

229:                                              ; preds = %215
  %230 = load i32, ptr %19, align 4, !dbg !2969
  %231 = load i32, ptr %9, align 4, !dbg !2971
  %232 = sub nsw i32 %230, %231, !dbg !2972
  %233 = mul nsw i32 %232, 1, !dbg !2973
  %234 = sext i32 %233 to i64, !dbg !2974
  store i64 %234, ptr %24, align 8, !dbg !2975
  %235 = load i64, ptr %24, align 8, !dbg !2976
  %236 = load i64, ptr %24, align 8, !dbg !2977
  %237 = mul nsw i64 %235, %236, !dbg !2978
  %238 = load i64, ptr %22, align 8, !dbg !2979
  %239 = add nsw i64 %238, %237, !dbg !2979
  store i64 %239, ptr %22, align 8, !dbg !2979
  %240 = load i32, ptr %19, align 4, !dbg !2980
  %241 = load i32, ptr %14, align 4, !dbg !2981
  %242 = sub nsw i32 %240, %241, !dbg !2982
  %243 = mul nsw i32 %242, 1, !dbg !2983
  %244 = sext i32 %243 to i64, !dbg !2984
  store i64 %244, ptr %24, align 8, !dbg !2985
  %245 = load i64, ptr %24, align 8, !dbg !2986
  %246 = load i64, ptr %24, align 8, !dbg !2987
  %247 = mul nsw i64 %245, %246, !dbg !2988
  %248 = load i64, ptr %23, align 8, !dbg !2989
  %249 = add nsw i64 %248, %247, !dbg !2989
  store i64 %249, ptr %23, align 8, !dbg !2989
  br label %303, !dbg !2990

250:                                              ; preds = %215
  %251 = load i32, ptr %19, align 4, !dbg !2991
  %252 = load i32, ptr %14, align 4, !dbg !2993
  %253 = icmp sgt i32 %251, %252, !dbg !2994
  br i1 %253, label %254, label %275, !dbg !2994

254:                                              ; preds = %250
  %255 = load i32, ptr %19, align 4, !dbg !2995
  %256 = load i32, ptr %14, align 4, !dbg !2997
  %257 = sub nsw i32 %255, %256, !dbg !2998
  %258 = mul nsw i32 %257, 1, !dbg !2999
  %259 = sext i32 %258 to i64, !dbg !3000
  store i64 %259, ptr %24, align 8, !dbg !3001
  %260 = load i64, ptr %24, align 8, !dbg !3002
  %261 = load i64, ptr %24, align 8, !dbg !3003
  %262 = mul nsw i64 %260, %261, !dbg !3004
  %263 = load i64, ptr %22, align 8, !dbg !3005
  %264 = add nsw i64 %263, %262, !dbg !3005
  store i64 %264, ptr %22, align 8, !dbg !3005
  %265 = load i32, ptr %19, align 4, !dbg !3006
  %266 = load i32, ptr %9, align 4, !dbg !3007
  %267 = sub nsw i32 %265, %266, !dbg !3008
  %268 = mul nsw i32 %267, 1, !dbg !3009
  %269 = sext i32 %268 to i64, !dbg !3010
  store i64 %269, ptr %24, align 8, !dbg !3011
  %270 = load i64, ptr %24, align 8, !dbg !3012
  %271 = load i64, ptr %24, align 8, !dbg !3013
  %272 = mul nsw i64 %270, %271, !dbg !3014
  %273 = load i64, ptr %23, align 8, !dbg !3015
  %274 = add nsw i64 %273, %272, !dbg !3015
  store i64 %274, ptr %23, align 8, !dbg !3015
  br label %302, !dbg !3016

275:                                              ; preds = %250
  %276 = load i32, ptr %19, align 4, !dbg !3017
  %277 = load i32, ptr %17, align 4, !dbg !3020
  %278 = icmp sle i32 %276, %277, !dbg !3021
  br i1 %278, label %279, label %290, !dbg !3021

279:                                              ; preds = %275
  %280 = load i32, ptr %19, align 4, !dbg !3022
  %281 = load i32, ptr %14, align 4, !dbg !3024
  %282 = sub nsw i32 %280, %281, !dbg !3025
  %283 = mul nsw i32 %282, 1, !dbg !3026
  %284 = sext i32 %283 to i64, !dbg !3027
  store i64 %284, ptr %24, align 8, !dbg !3028
  %285 = load i64, ptr %24, align 8, !dbg !3029
  %286 = load i64, ptr %24, align 8, !dbg !3030
  %287 = mul nsw i64 %285, %286, !dbg !3031
  %288 = load i64, ptr %23, align 8, !dbg !3032
  %289 = add nsw i64 %288, %287, !dbg !3032
  store i64 %289, ptr %23, align 8, !dbg !3032
  br label %301, !dbg !3033

290:                                              ; preds = %275
  %291 = load i32, ptr %19, align 4, !dbg !3034
  %292 = load i32, ptr %9, align 4, !dbg !3036
  %293 = sub nsw i32 %291, %292, !dbg !3037
  %294 = mul nsw i32 %293, 1, !dbg !3038
  %295 = sext i32 %294 to i64, !dbg !3039
  store i64 %295, ptr %24, align 8, !dbg !3040
  %296 = load i64, ptr %24, align 8, !dbg !3041
  %297 = load i64, ptr %24, align 8, !dbg !3042
  %298 = mul nsw i64 %296, %297, !dbg !3043
  %299 = load i64, ptr %23, align 8, !dbg !3044
  %300 = add nsw i64 %299, %298, !dbg !3044
  store i64 %300, ptr %23, align 8, !dbg !3044
  br label %301

301:                                              ; preds = %290, %279
  br label %302

302:                                              ; preds = %301, %254
  br label %303

303:                                              ; preds = %302, %229
  %304 = load i64, ptr %22, align 8, !dbg !3045
  %305 = load i32, ptr %18, align 4, !dbg !3046
  %306 = sext i32 %305 to i64, !dbg !3047
  %307 = getelementptr inbounds [256 x i64], ptr %25, i64 0, i64 %306, !dbg !3047
  store i64 %304, ptr %307, align 8, !dbg !3048
  %308 = load i64, ptr %23, align 8, !dbg !3049
  %309 = load i64, ptr %21, align 8, !dbg !3051
  %310 = icmp slt i64 %308, %309, !dbg !3052
  br i1 %310, label %311, label %313, !dbg !3052

311:                                              ; preds = %303
  %312 = load i64, ptr %23, align 8, !dbg !3053
  store i64 %312, ptr %21, align 8, !dbg !3054
  br label %313, !dbg !3055

313:                                              ; preds = %311, %303
  br label %314, !dbg !3056

314:                                              ; preds = %313
  %315 = load i32, ptr %18, align 4, !dbg !3057
  %316 = add nsw i32 %315, 1, !dbg !3057
  store i32 %316, ptr %18, align 4, !dbg !3057
  br label %47, !dbg !3058, !llvm.loop !3059

317:                                              ; preds = %47
  store i32 0, ptr %20, align 4, !dbg !3061
  store i32 0, ptr %18, align 4, !dbg !3062
  br label %318, !dbg !3064

318:                                              ; preds = %338, %317
  %319 = load i32, ptr %18, align 4, !dbg !3065
  %320 = load i32, ptr %11, align 4, !dbg !3067
  %321 = icmp slt i32 %319, %320, !dbg !3068
  br i1 %321, label %322, label %341, !dbg !3069

322:                                              ; preds = %318
  %323 = load i32, ptr %18, align 4, !dbg !3070
  %324 = sext i32 %323 to i64, !dbg !3073
  %325 = getelementptr inbounds [256 x i64], ptr %25, i64 0, i64 %324, !dbg !3073
  %326 = load i64, ptr %325, align 8, !dbg !3073
  %327 = load i64, ptr %21, align 8, !dbg !3074
  %328 = icmp sle i64 %326, %327, !dbg !3075
  br i1 %328, label %329, label %337, !dbg !3075

329:                                              ; preds = %322
  %330 = load i32, ptr %18, align 4, !dbg !3076
  %331 = trunc i32 %330 to i8, !dbg !3077
  %332 = load ptr, ptr %10, align 8, !dbg !3078
  %333 = load i32, ptr %20, align 4, !dbg !3079
  %334 = add nsw i32 %333, 1, !dbg !3079
  store i32 %334, ptr %20, align 4, !dbg !3079
  %335 = sext i32 %333 to i64, !dbg !3078
  %336 = getelementptr inbounds i8, ptr %332, i64 %335, !dbg !3078
  store i8 %331, ptr %336, align 1, !dbg !3080
  br label %337, !dbg !3078

337:                                              ; preds = %329, %322
  br label %338, !dbg !3081

338:                                              ; preds = %337
  %339 = load i32, ptr %18, align 4, !dbg !3082
  %340 = add nsw i32 %339, 1, !dbg !3082
  store i32 %340, ptr %18, align 4, !dbg !3082
  br label %318, !dbg !3083, !llvm.loop !3084

341:                                              ; preds = %318
  %342 = load i32, ptr %20, align 4, !dbg !3086
  ret i32 %342, !dbg !3087
}

; Function Attrs: noinline nounwind uwtable
define internal void @find_best_colors(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) #0 !dbg !3088 {
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca [128 x i64], align 16
  store ptr %0, ptr %8, align 8
    #dbg_declare(ptr %8, !3091, !DIExpression(), !3092)
  store i32 %1, ptr %9, align 4
    #dbg_declare(ptr %9, !3093, !DIExpression(), !3094)
  store i32 %2, ptr %10, align 4
    #dbg_declare(ptr %10, !3095, !DIExpression(), !3096)
  store i32 %3, ptr %11, align 4
    #dbg_declare(ptr %11, !3097, !DIExpression(), !3098)
  store i32 %4, ptr %12, align 4
    #dbg_declare(ptr %12, !3099, !DIExpression(), !3100)
  store ptr %5, ptr %13, align 8
    #dbg_declare(ptr %13, !3101, !DIExpression(), !3102)
  store ptr %6, ptr %14, align 8
    #dbg_declare(ptr %14, !3103, !DIExpression(), !3104)
    #dbg_declare(ptr %15, !3105, !DIExpression(), !3106)
    #dbg_declare(ptr %16, !3107, !DIExpression(), !3108)
    #dbg_declare(ptr %17, !3109, !DIExpression(), !3110)
    #dbg_declare(ptr %18, !3111, !DIExpression(), !3112)
    #dbg_declare(ptr %19, !3113, !DIExpression(), !3114)
    #dbg_declare(ptr %20, !3115, !DIExpression(), !3117)
    #dbg_declare(ptr %21, !3118, !DIExpression(), !3119)
    #dbg_declare(ptr %22, !3120, !DIExpression(), !3121)
    #dbg_declare(ptr %23, !3122, !DIExpression(), !3123)
    #dbg_declare(ptr %24, !3124, !DIExpression(), !3125)
    #dbg_declare(ptr %25, !3126, !DIExpression(), !3127)
    #dbg_declare(ptr %26, !3128, !DIExpression(), !3129)
    #dbg_declare(ptr %27, !3130, !DIExpression(), !3131)
    #dbg_declare(ptr %28, !3132, !DIExpression(), !3133)
    #dbg_declare(ptr %29, !3134, !DIExpression(), !3135)
    #dbg_declare(ptr %30, !3136, !DIExpression(), !3137)
    #dbg_declare(ptr %31, !3138, !DIExpression(), !3140)
  %32 = getelementptr inbounds [128 x i64], ptr %31, i64 0, i64 0, !dbg !3141
  store ptr %32, ptr %20, align 8, !dbg !3142
  store i32 127, ptr %18, align 4, !dbg !3143
  br label %33, !dbg !3145

33:                                               ; preds = %39, %7
  %34 = load i32, ptr %18, align 4, !dbg !3146
  %35 = icmp sge i32 %34, 0, !dbg !3148
  br i1 %35, label %36, label %42, !dbg !3149

36:                                               ; preds = %33
  %37 = load ptr, ptr %20, align 8, !dbg !3150
  %38 = getelementptr inbounds nuw i64, ptr %37, i32 1, !dbg !3150
  store ptr %38, ptr %20, align 8, !dbg !3150
  store i64 2147483647, ptr %37, align 8, !dbg !3151
  br label %39, !dbg !3152

39:                                               ; preds = %36
  %40 = load i32, ptr %18, align 4, !dbg !3153
  %41 = add nsw i32 %40, -1, !dbg !3153
  store i32 %41, ptr %18, align 4, !dbg !3153
  br label %33, !dbg !3154, !llvm.loop !3155

42:                                               ; preds = %33
  store i32 0, ptr %18, align 4, !dbg !3157
  br label %43, !dbg !3159

43:                                               ; preds = %179, %42
  %44 = load i32, ptr %18, align 4, !dbg !3160
  %45 = load i32, ptr %12, align 4, !dbg !3162
  %46 = icmp slt i32 %44, %45, !dbg !3163
  br i1 %46, label %47, label %182, !dbg !3164

47:                                               ; preds = %43
  %48 = load ptr, ptr %13, align 8, !dbg !3165
  %49 = load i32, ptr %18, align 4, !dbg !3165
  %50 = sext i32 %49 to i64, !dbg !3165
  %51 = getelementptr inbounds i8, ptr %48, i64 %50, !dbg !3165
  %52 = load i8, ptr %51, align 1, !dbg !3165
  %53 = zext i8 %52 to i32, !dbg !3165
  store i32 %53, ptr %19, align 4, !dbg !3167
  %54 = load i32, ptr %9, align 4, !dbg !3168
  %55 = load ptr, ptr %8, align 8, !dbg !3169
  %56 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %55, i32 0, i32 32, !dbg !3169
  %57 = load ptr, ptr %56, align 8, !dbg !3169
  %58 = getelementptr inbounds ptr, ptr %57, i64 0, !dbg !3169
  %59 = load ptr, ptr %58, align 8, !dbg !3169
  %60 = load i32, ptr %19, align 4, !dbg !3169
  %61 = sext i32 %60 to i64, !dbg !3169
  %62 = getelementptr inbounds i8, ptr %59, i64 %61, !dbg !3169
  %63 = load i8, ptr %62, align 1, !dbg !3169
  %64 = zext i8 %63 to i32, !dbg !3169
  %65 = sub nsw i32 %54, %64, !dbg !3170
  %66 = mul nsw i32 %65, 2, !dbg !3171
  %67 = sext i32 %66 to i64, !dbg !3172
  store i64 %67, ptr %28, align 8, !dbg !3173
  %68 = load i64, ptr %28, align 8, !dbg !3174
  %69 = load i64, ptr %28, align 8, !dbg !3175
  %70 = mul nsw i64 %68, %69, !dbg !3176
  store i64 %70, ptr %22, align 8, !dbg !3177
  %71 = load i32, ptr %10, align 4, !dbg !3178
  %72 = load ptr, ptr %8, align 8, !dbg !3179
  %73 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %72, i32 0, i32 32, !dbg !3179
  %74 = load ptr, ptr %73, align 8, !dbg !3179
  %75 = getelementptr inbounds ptr, ptr %74, i64 1, !dbg !3179
  %76 = load ptr, ptr %75, align 8, !dbg !3179
  %77 = load i32, ptr %19, align 4, !dbg !3179
  %78 = sext i32 %77 to i64, !dbg !3179
  %79 = getelementptr inbounds i8, ptr %76, i64 %78, !dbg !3179
  %80 = load i8, ptr %79, align 1, !dbg !3179
  %81 = zext i8 %80 to i32, !dbg !3179
  %82 = sub nsw i32 %71, %81, !dbg !3180
  %83 = mul nsw i32 %82, 3, !dbg !3181
  %84 = sext i32 %83 to i64, !dbg !3182
  store i64 %84, ptr %29, align 8, !dbg !3183
  %85 = load i64, ptr %29, align 8, !dbg !3184
  %86 = load i64, ptr %29, align 8, !dbg !3185
  %87 = mul nsw i64 %85, %86, !dbg !3186
  %88 = load i64, ptr %22, align 8, !dbg !3187
  %89 = add nsw i64 %88, %87, !dbg !3187
  store i64 %89, ptr %22, align 8, !dbg !3187
  %90 = load i32, ptr %11, align 4, !dbg !3188
  %91 = load ptr, ptr %8, align 8, !dbg !3189
  %92 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %91, i32 0, i32 32, !dbg !3189
  %93 = load ptr, ptr %92, align 8, !dbg !3189
  %94 = getelementptr inbounds ptr, ptr %93, i64 2, !dbg !3189
  %95 = load ptr, ptr %94, align 8, !dbg !3189
  %96 = load i32, ptr %19, align 4, !dbg !3189
  %97 = sext i32 %96 to i64, !dbg !3189
  %98 = getelementptr inbounds i8, ptr %95, i64 %97, !dbg !3189
  %99 = load i8, ptr %98, align 1, !dbg !3189
  %100 = zext i8 %99 to i32, !dbg !3189
  %101 = sub nsw i32 %90, %100, !dbg !3190
  %102 = mul nsw i32 %101, 1, !dbg !3191
  %103 = sext i32 %102 to i64, !dbg !3192
  store i64 %103, ptr %30, align 8, !dbg !3193
  %104 = load i64, ptr %30, align 8, !dbg !3194
  %105 = load i64, ptr %30, align 8, !dbg !3195
  %106 = mul nsw i64 %104, %105, !dbg !3196
  %107 = load i64, ptr %22, align 8, !dbg !3197
  %108 = add nsw i64 %107, %106, !dbg !3197
  store i64 %108, ptr %22, align 8, !dbg !3197
  %109 = load i64, ptr %28, align 8, !dbg !3198
  %110 = mul nsw i64 %109, 32, !dbg !3199
  %111 = add nsw i64 %110, 256, !dbg !3200
  store i64 %111, ptr %28, align 8, !dbg !3201
  %112 = load i64, ptr %29, align 8, !dbg !3202
  %113 = mul nsw i64 %112, 24, !dbg !3203
  %114 = add nsw i64 %113, 144, !dbg !3204
  store i64 %114, ptr %29, align 8, !dbg !3205
  %115 = load i64, ptr %30, align 8, !dbg !3206
  %116 = mul nsw i64 %115, 16, !dbg !3207
  %117 = add nsw i64 %116, 64, !dbg !3208
  store i64 %117, ptr %30, align 8, !dbg !3209
  %118 = getelementptr inbounds [128 x i64], ptr %31, i64 0, i64 0, !dbg !3210
  store ptr %118, ptr %20, align 8, !dbg !3211
  %119 = load ptr, ptr %14, align 8, !dbg !3212
  store ptr %119, ptr %21, align 8, !dbg !3213
  %120 = load i64, ptr %28, align 8, !dbg !3214
  store i64 %120, ptr %25, align 8, !dbg !3215
  store i32 3, ptr %15, align 4, !dbg !3216
  br label %121, !dbg !3218

121:                                              ; preds = %175, %47
  %122 = load i32, ptr %15, align 4, !dbg !3219
  %123 = icmp sge i32 %122, 0, !dbg !3221
  br i1 %123, label %124, label %178, !dbg !3222

124:                                              ; preds = %121
  %125 = load i64, ptr %22, align 8, !dbg !3223
  store i64 %125, ptr %23, align 8, !dbg !3225
  %126 = load i64, ptr %29, align 8, !dbg !3226
  store i64 %126, ptr %26, align 8, !dbg !3227
  store i32 7, ptr %16, align 4, !dbg !3228
  br label %127, !dbg !3230

127:                                              ; preds = %166, %124
  %128 = load i32, ptr %16, align 4, !dbg !3231
  %129 = icmp sge i32 %128, 0, !dbg !3233
  br i1 %129, label %130, label %169, !dbg !3234

130:                                              ; preds = %127
  %131 = load i64, ptr %23, align 8, !dbg !3235
  store i64 %131, ptr %24, align 8, !dbg !3237
  %132 = load i64, ptr %30, align 8, !dbg !3238
  store i64 %132, ptr %27, align 8, !dbg !3239
  store i32 3, ptr %17, align 4, !dbg !3240
  br label %133, !dbg !3242

133:                                              ; preds = %157, %130
  %134 = load i32, ptr %17, align 4, !dbg !3243
  %135 = icmp sge i32 %134, 0, !dbg !3245
  br i1 %135, label %136, label %160, !dbg !3246

136:                                              ; preds = %133
  %137 = load i64, ptr %24, align 8, !dbg !3247
  %138 = load ptr, ptr %20, align 8, !dbg !3250
  %139 = load i64, ptr %138, align 8, !dbg !3251
  %140 = icmp slt i64 %137, %139, !dbg !3252
  br i1 %140, label %141, label %147, !dbg !3252

141:                                              ; preds = %136
  %142 = load i64, ptr %24, align 8, !dbg !3253
  %143 = load ptr, ptr %20, align 8, !dbg !3255
  store i64 %142, ptr %143, align 8, !dbg !3256
  %144 = load i32, ptr %19, align 4, !dbg !3257
  %145 = trunc i32 %144 to i8, !dbg !3258
  %146 = load ptr, ptr %21, align 8, !dbg !3259
  store i8 %145, ptr %146, align 1, !dbg !3260
  br label %147, !dbg !3261

147:                                              ; preds = %141, %136
  %148 = load i64, ptr %27, align 8, !dbg !3262
  %149 = load i64, ptr %24, align 8, !dbg !3263
  %150 = add nsw i64 %149, %148, !dbg !3263
  store i64 %150, ptr %24, align 8, !dbg !3263
  %151 = load i64, ptr %27, align 8, !dbg !3264
  %152 = add nsw i64 %151, 128, !dbg !3264
  store i64 %152, ptr %27, align 8, !dbg !3264
  %153 = load ptr, ptr %20, align 8, !dbg !3265
  %154 = getelementptr inbounds nuw i64, ptr %153, i32 1, !dbg !3265
  store ptr %154, ptr %20, align 8, !dbg !3265
  %155 = load ptr, ptr %21, align 8, !dbg !3266
  %156 = getelementptr inbounds nuw i8, ptr %155, i32 1, !dbg !3266
  store ptr %156, ptr %21, align 8, !dbg !3266
  br label %157, !dbg !3267

157:                                              ; preds = %147
  %158 = load i32, ptr %17, align 4, !dbg !3268
  %159 = add nsw i32 %158, -1, !dbg !3268
  store i32 %159, ptr %17, align 4, !dbg !3268
  br label %133, !dbg !3269, !llvm.loop !3270

160:                                              ; preds = %133
  %161 = load i64, ptr %26, align 8, !dbg !3272
  %162 = load i64, ptr %23, align 8, !dbg !3273
  %163 = add nsw i64 %162, %161, !dbg !3273
  store i64 %163, ptr %23, align 8, !dbg !3273
  %164 = load i64, ptr %26, align 8, !dbg !3274
  %165 = add nsw i64 %164, 288, !dbg !3274
  store i64 %165, ptr %26, align 8, !dbg !3274
  br label %166, !dbg !3275

166:                                              ; preds = %160
  %167 = load i32, ptr %16, align 4, !dbg !3276
  %168 = add nsw i32 %167, -1, !dbg !3276
  store i32 %168, ptr %16, align 4, !dbg !3276
  br label %127, !dbg !3277, !llvm.loop !3278

169:                                              ; preds = %127
  %170 = load i64, ptr %25, align 8, !dbg !3280
  %171 = load i64, ptr %22, align 8, !dbg !3281
  %172 = add nsw i64 %171, %170, !dbg !3281
  store i64 %172, ptr %22, align 8, !dbg !3281
  %173 = load i64, ptr %25, align 8, !dbg !3282
  %174 = add nsw i64 %173, 512, !dbg !3282
  store i64 %174, ptr %25, align 8, !dbg !3282
  br label %175, !dbg !3283

175:                                              ; preds = %169
  %176 = load i32, ptr %15, align 4, !dbg !3284
  %177 = add nsw i32 %176, -1, !dbg !3284
  store i32 %177, ptr %15, align 4, !dbg !3284
  br label %121, !dbg !3285, !llvm.loop !3286

178:                                              ; preds = %121
  br label %179, !dbg !3288

179:                                              ; preds = %178
  %180 = load i32, ptr %18, align 4, !dbg !3289
  %181 = add nsw i32 %180, 1, !dbg !3289
  store i32 %181, ptr %18, align 4, !dbg !3289
  br label %43, !dbg !3290, !llvm.loop !3291

182:                                              ; preds = %43
  ret void, !dbg !3293
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!614, !615, !616, !617, !618, !619, !620}
!llvm.ident = !{!621}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !154, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jquant2.c", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "2cb32492e6ec440c1c5a9dc6d7209173")
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
!154 = !{!155, !179, !194, !572, !582, !584, !209, !593, !192, !193, !600, !206, !595, !588, !599}
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "my_cquantize_ptr", file: !1, line: 211, baseType: !156)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "my_cquantizer", file: !1, line: 209, baseType: !158)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 193, size: 704, elements: !159)
!159 = !{!160, !579, !580, !581, !591, !592, !597, !598}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "pub", scope: !158, file: !1, line: 194, baseType: !161, size: 256)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_color_quantizer", file: !24, line: 252, size: 256, elements: !162)
!162 = !{!163, !573, !577, !578}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !161, file: !24, line: 253, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DISubroutineType(types: !166)
!166 = !{null, !167, !231}
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_decompress_ptr", file: !4, line: 250, baseType: !168)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_decompress_struct", file: !4, line: 394, size: 4928, elements: !170)
!170 = !{!171, !298, !299, !300, !301, !302, !328, !329, !330, !331, !333, !334, !335, !336, !338, !339, !340, !342, !343, !344, !345, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !367, !380, !396, !397, !398, !424, !425, !426, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !448, !449, !450, !451, !455, !456, !457, !458, !459, !460, !467, !481, !499, !508, !518, !533, !542, !555, !562, !571}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !169, file: !4, line: 395, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_error_mgr", file: !4, line: 618, size: 1344, elements: !174)
!174 = !{!175, !266, !267, !268, !274, !275, !276, !287, !288, !289, !294, !295, !296, !297}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "error_exit", scope: !173, file: !4, line: 620, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DISubroutineType(types: !178)
!178 = !{null, !179}
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_common_ptr", file: !4, line: 248, baseType: !180)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_common_struct", file: !4, line: 240, size: 256, elements: !182)
!182 = !{!183, !184, !255, !264, !265}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !181, file: !4, line: 241, baseType: !172, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !181, file: !4, line: 241, baseType: !185, size: 64, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_memory_mgr", file: !4, line: 731, size: 768, elements: !187)
!187 = !{!188, !197, !198, !210, !224, !232, !239, !240, !244, !248, !252, !253}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_small", scope: !186, file: !4, line: 733, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{!192, !179, !193, !194}
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!193 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !195, line: 18, baseType: !196)
!195 = !DIFile(filename: "/usr/local/lib/clang/20/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!196 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_large", scope: !186, file: !4, line: 735, baseType: !189, size: 64, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_sarray", scope: !186, file: !4, line: 737, baseType: !199, size: 64, offset: 128)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DISubroutineType(types: !201)
!201 = !{!202, !179, !193, !209, !209}
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPARRAY", file: !4, line: 67, baseType: !203)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPROW", file: !4, line: 66, baseType: !205)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPLE", file: !207, line: 59, baseType: !208)
!207 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jmorecfg.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "56a0eda58fafa6bdd5498f702a998c09")
!208 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "JDIMENSION", file: !207, line: 171, baseType: !5)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_barray", scope: !186, file: !4, line: 740, baseType: !211, size: 64, offset: 192)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DISubroutineType(types: !213)
!213 = !{!214, !179, !193, !209, !209}
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCKARRAY", file: !4, line: 72, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCKROW", file: !4, line: 71, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCK", file: !4, line: 70, baseType: !219)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 1024, elements: !222)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "JCOEF", file: !207, line: 99, baseType: !221)
!221 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!222 = !{!223}
!223 = !DISubrange(count: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_sarray", scope: !186, file: !4, line: 743, baseType: !225, size: 64, offset: 256)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DISubroutineType(types: !227)
!227 = !{!228, !179, !193, !231, !209, !209, !209}
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_sarray_ptr", file: !4, line: 727, baseType: !229)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_sarray_control", file: !4, line: 727, flags: DIFlagFwdDecl)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "boolean", file: !207, line: 227, baseType: !193)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_barray", scope: !186, file: !4, line: 749, baseType: !233, size: 64, offset: 320)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{!236, !179, !193, !231, !209, !209, !209}
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_barray_ptr", file: !4, line: 728, baseType: !237)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_barray_control", file: !4, line: 728, flags: DIFlagFwdDecl)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "realize_virt_arrays", scope: !186, file: !4, line: 755, baseType: !176, size: 64, offset: 384)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_sarray", scope: !186, file: !4, line: 756, baseType: !241, size: 64, offset: 448)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DISubroutineType(types: !243)
!243 = !{!202, !179, !228, !209, !209, !231}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_barray", scope: !186, file: !4, line: 761, baseType: !245, size: 64, offset: 512)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DISubroutineType(types: !247)
!247 = !{!214, !179, !236, !209, !209, !231}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "free_pool", scope: !186, file: !4, line: 766, baseType: !249, size: 64, offset: 576)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DISubroutineType(types: !251)
!251 = !{null, !179, !193}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "self_destruct", scope: !186, file: !4, line: 767, baseType: !176, size: 64, offset: 640)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "max_memory_to_use", scope: !186, file: !4, line: 774, baseType: !254, size: 64, offset: 704)
!254 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !181, file: !4, line: 241, baseType: !256, size: 64, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_progress_mgr", file: !4, line: 676, size: 256, elements: !258)
!258 = !{!259, !260, !261, !262, !263}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !257, file: !4, line: 677, baseType: !176, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "pass_counter", scope: !257, file: !4, line: 679, baseType: !254, size: 64, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "pass_limit", scope: !257, file: !4, line: 680, baseType: !254, size: 64, offset: 128)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "completed_passes", scope: !257, file: !4, line: 681, baseType: !193, size: 32, offset: 192)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "total_passes", scope: !257, file: !4, line: 682, baseType: !193, size: 32, offset: 224)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !181, file: !4, line: 241, baseType: !231, size: 32, offset: 192)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !181, file: !4, line: 241, baseType: !193, size: 32, offset: 224)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "emit_message", scope: !173, file: !4, line: 622, baseType: !249, size: 64, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "output_message", scope: !173, file: !4, line: 624, baseType: !176, size: 64, offset: 128)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "format_message", scope: !173, file: !4, line: 626, baseType: !269, size: 64, offset: 192)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{null, !179, !272}
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "reset_error_mgr", scope: !173, file: !4, line: 629, baseType: !176, size: 64, offset: 256)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "msg_code", scope: !173, file: !4, line: 634, baseType: !193, size: 32, offset: 320)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "msg_parm", scope: !173, file: !4, line: 639, baseType: !277, size: 640, offset: 352)
!277 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !173, file: !4, line: 636, size: 640, elements: !278)
!278 = !{!279, !283}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !277, file: !4, line: 637, baseType: !280, size: 256)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 256, elements: !281)
!281 = !{!282}
!282 = !DISubrange(count: 8)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !277, file: !4, line: 638, baseType: !284, size: 640)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !273, size: 640, elements: !285)
!285 = !{!286}
!286 = !DISubrange(count: 80)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "trace_level", scope: !173, file: !4, line: 643, baseType: !193, size: 32, offset: 992)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "num_warnings", scope: !173, file: !4, line: 651, baseType: !254, size: 64, offset: 1024)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_message_table", scope: !173, file: !4, line: 663, baseType: !290, size: 64, offset: 1088)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !292)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !273)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "last_jpeg_message", scope: !173, file: !4, line: 664, baseType: !193, size: 32, offset: 1152)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "addon_message_table", scope: !173, file: !4, line: 668, baseType: !290, size: 64, offset: 1216)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "first_addon_message", scope: !173, file: !4, line: 669, baseType: !193, size: 32, offset: 1280)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "last_addon_message", scope: !173, file: !4, line: 670, baseType: !193, size: 32, offset: 1312)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !169, file: !4, line: 395, baseType: !185, size: 64, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !169, file: !4, line: 395, baseType: !256, size: 64, offset: 128)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !169, file: !4, line: 395, baseType: !231, size: 32, offset: 192)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !169, file: !4, line: 395, baseType: !193, size: 32, offset: 224)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !169, file: !4, line: 398, baseType: !303, size: 64, offset: 256)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_source_mgr", file: !4, line: 700, size: 448, elements: !305)
!305 = !{!306, !310, !311, !315, !319, !323, !327}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "next_input_byte", scope: !304, file: !4, line: 701, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !309)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "JOCTET", file: !207, line: 110, baseType: !208)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_in_buffer", scope: !304, file: !4, line: 702, baseType: !194, size: 64, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "init_source", scope: !304, file: !4, line: 704, baseType: !312, size: 64, offset: 128)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DISubroutineType(types: !314)
!314 = !{null, !167}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "fill_input_buffer", scope: !304, file: !4, line: 705, baseType: !316, size: 64, offset: 192)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DISubroutineType(types: !318)
!318 = !{!231, !167}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "skip_input_data", scope: !304, file: !4, line: 706, baseType: !320, size: 64, offset: 256)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{null, !167, !254}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "resync_to_restart", scope: !304, file: !4, line: 707, baseType: !324, size: 64, offset: 320)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{!231, !167, !193}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "term_source", scope: !304, file: !4, line: 708, baseType: !312, size: 64, offset: 384)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "image_width", scope: !169, file: !4, line: 403, baseType: !209, size: 32, offset: 320)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "image_height", scope: !169, file: !4, line: 404, baseType: !209, size: 32, offset: 352)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "num_components", scope: !169, file: !4, line: 405, baseType: !193, size: 32, offset: 384)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_color_space", scope: !169, file: !4, line: 406, baseType: !332, size: 32, offset: 416)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_COLOR_SPACE", file: !4, line: 201, baseType: !3)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "out_color_space", scope: !169, file: !4, line: 413, baseType: !332, size: 32, offset: 448)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "scale_num", scope: !169, file: !4, line: 415, baseType: !5, size: 32, offset: 480)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "scale_denom", scope: !169, file: !4, line: 415, baseType: !5, size: 32, offset: 512)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "output_gamma", scope: !169, file: !4, line: 417, baseType: !337, size: 64, offset: 576)
!337 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "buffered_image", scope: !169, file: !4, line: 419, baseType: !231, size: 32, offset: 640)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "raw_data_out", scope: !169, file: !4, line: 420, baseType: !231, size: 32, offset: 672)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "dct_method", scope: !169, file: !4, line: 422, baseType: !341, size: 32, offset: 704)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_DCT_METHOD", file: !4, line: 209, baseType: !13)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "do_fancy_upsampling", scope: !169, file: !4, line: 423, baseType: !231, size: 32, offset: 736)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "do_block_smoothing", scope: !169, file: !4, line: 424, baseType: !231, size: 32, offset: 768)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "quantize_colors", scope: !169, file: !4, line: 426, baseType: !231, size: 32, offset: 800)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "dither_mode", scope: !169, file: !4, line: 428, baseType: !346, size: 32, offset: 832)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_DITHER_MODE", file: !4, line: 224, baseType: !18)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "two_pass_quantize", scope: !169, file: !4, line: 429, baseType: !231, size: 32, offset: 864)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "desired_number_of_colors", scope: !169, file: !4, line: 430, baseType: !193, size: 32, offset: 896)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "enable_1pass_quant", scope: !169, file: !4, line: 432, baseType: !231, size: 32, offset: 928)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "enable_external_quant", scope: !169, file: !4, line: 433, baseType: !231, size: 32, offset: 960)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "enable_2pass_quant", scope: !169, file: !4, line: 434, baseType: !231, size: 32, offset: 992)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "output_width", scope: !169, file: !4, line: 442, baseType: !209, size: 32, offset: 1024)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "output_height", scope: !169, file: !4, line: 443, baseType: !209, size: 32, offset: 1056)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "out_color_components", scope: !169, file: !4, line: 444, baseType: !193, size: 32, offset: 1088)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "output_components", scope: !169, file: !4, line: 445, baseType: !193, size: 32, offset: 1120)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "rec_outbuf_height", scope: !169, file: !4, line: 449, baseType: !193, size: 32, offset: 1152)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "actual_number_of_colors", scope: !169, file: !4, line: 461, baseType: !193, size: 32, offset: 1184)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !169, file: !4, line: 462, baseType: !202, size: 64, offset: 1216)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "output_scanline", scope: !169, file: !4, line: 472, baseType: !209, size: 32, offset: 1280)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "input_scan_number", scope: !169, file: !4, line: 477, baseType: !193, size: 32, offset: 1312)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "input_iMCU_row", scope: !169, file: !4, line: 478, baseType: !209, size: 32, offset: 1344)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "output_scan_number", scope: !169, file: !4, line: 484, baseType: !193, size: 32, offset: 1376)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "output_iMCU_row", scope: !169, file: !4, line: 485, baseType: !209, size: 32, offset: 1408)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "coef_bits", scope: !169, file: !4, line: 494, baseType: !365, size: 64, offset: 1472)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 2048, elements: !222)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_ptrs", scope: !169, file: !4, line: 505, baseType: !368, size: 256, offset: 1536)
!368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !369, size: 256, elements: !378)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "JQUANT_TBL", file: !4, line: 95, baseType: !371)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 83, size: 1056, elements: !372)
!372 = !{!373, !377}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "quantval", scope: !371, file: !4, line: 88, baseType: !374, size: 1024)
!374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !375, size: 1024, elements: !222)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !207, line: 147, baseType: !376)
!376 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !371, file: !4, line: 94, baseType: !231, size: 32, offset: 1024)
!378 = !{!379}
!379 = !DISubrange(count: 4)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "dc_huff_tbl_ptrs", scope: !169, file: !4, line: 508, baseType: !381, size: 256, offset: 1792)
!381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !382, size: 256, elements: !378)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "JHUFF_TBL", file: !4, line: 111, baseType: !384)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 100, size: 2240, elements: !385)
!385 = !{!386, !391, !395}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !384, file: !4, line: 102, baseType: !387, size: 136)
!387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 136, elements: !389)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT8", file: !207, line: 135, baseType: !208)
!389 = !{!390}
!390 = !DISubrange(count: 17)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "huffval", scope: !384, file: !4, line: 104, baseType: !392, size: 2048, offset: 136)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 2048, elements: !393)
!393 = !{!394}
!394 = !DISubrange(count: 256)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !384, file: !4, line: 110, baseType: !231, size: 32, offset: 2208)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "ac_huff_tbl_ptrs", scope: !169, file: !4, line: 509, baseType: !381, size: 256, offset: 2048)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "data_precision", scope: !169, file: !4, line: 516, baseType: !193, size: 32, offset: 2304)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "comp_info", scope: !169, file: !4, line: 518, baseType: !399, size: 64, offset: 2368)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_component_info", file: !4, line: 179, baseType: !401)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 116, size: 768, elements: !402)
!402 = !{!403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "component_id", scope: !401, file: !4, line: 120, baseType: !193, size: 32)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "component_index", scope: !401, file: !4, line: 121, baseType: !193, size: 32, offset: 32)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "h_samp_factor", scope: !401, file: !4, line: 122, baseType: !193, size: 32, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "v_samp_factor", scope: !401, file: !4, line: 123, baseType: !193, size: 32, offset: 96)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_no", scope: !401, file: !4, line: 124, baseType: !193, size: 32, offset: 128)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "dc_tbl_no", scope: !401, file: !4, line: 129, baseType: !193, size: 32, offset: 160)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tbl_no", scope: !401, file: !4, line: 130, baseType: !193, size: 32, offset: 192)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "width_in_blocks", scope: !401, file: !4, line: 139, baseType: !209, size: 32, offset: 224)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "height_in_blocks", scope: !401, file: !4, line: 140, baseType: !209, size: 32, offset: 256)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "DCT_scaled_size", scope: !401, file: !4, line: 147, baseType: !193, size: 32, offset: 288)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_width", scope: !401, file: !4, line: 154, baseType: !209, size: 32, offset: 320)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_height", scope: !401, file: !4, line: 155, baseType: !209, size: 32, offset: 352)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "component_needed", scope: !401, file: !4, line: 160, baseType: !231, size: 32, offset: 384)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_width", scope: !401, file: !4, line: 164, baseType: !193, size: 32, offset: 416)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_height", scope: !401, file: !4, line: 165, baseType: !193, size: 32, offset: 448)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_blocks", scope: !401, file: !4, line: 166, baseType: !193, size: 32, offset: 480)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_sample_width", scope: !401, file: !4, line: 167, baseType: !193, size: 32, offset: 512)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "last_col_width", scope: !401, file: !4, line: 168, baseType: !193, size: 32, offset: 544)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "last_row_height", scope: !401, file: !4, line: 169, baseType: !193, size: 32, offset: 576)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "quant_table", scope: !401, file: !4, line: 175, baseType: !369, size: 64, offset: 640)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "dct_table", scope: !401, file: !4, line: 178, baseType: !192, size: 64, offset: 704)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "progressive_mode", scope: !169, file: !4, line: 521, baseType: !231, size: 32, offset: 2432)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "arith_code", scope: !169, file: !4, line: 522, baseType: !231, size: 32, offset: 2464)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_L", scope: !169, file: !4, line: 524, baseType: !427, size: 128, offset: 2496)
!427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 128, elements: !428)
!428 = !{!429}
!429 = !DISubrange(count: 16)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_U", scope: !169, file: !4, line: 525, baseType: !427, size: 128, offset: 2624)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "arith_ac_K", scope: !169, file: !4, line: 526, baseType: !427, size: 128, offset: 2752)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "restart_interval", scope: !169, file: !4, line: 528, baseType: !5, size: 32, offset: 2880)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "saw_JFIF_marker", scope: !169, file: !4, line: 533, baseType: !231, size: 32, offset: 2912)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "density_unit", scope: !169, file: !4, line: 535, baseType: !388, size: 8, offset: 2944)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "X_density", scope: !169, file: !4, line: 536, baseType: !375, size: 16, offset: 2960)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "Y_density", scope: !169, file: !4, line: 537, baseType: !375, size: 16, offset: 2976)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "saw_Adobe_marker", scope: !169, file: !4, line: 538, baseType: !231, size: 32, offset: 3008)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "Adobe_transform", scope: !169, file: !4, line: 539, baseType: !388, size: 8, offset: 3040)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "CCIR601_sampling", scope: !169, file: !4, line: 541, baseType: !231, size: 32, offset: 3072)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "max_h_samp_factor", scope: !169, file: !4, line: 550, baseType: !193, size: 32, offset: 3104)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "max_v_samp_factor", scope: !169, file: !4, line: 551, baseType: !193, size: 32, offset: 3136)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "min_DCT_scaled_size", scope: !169, file: !4, line: 553, baseType: !193, size: 32, offset: 3168)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "total_iMCU_rows", scope: !169, file: !4, line: 555, baseType: !209, size: 32, offset: 3200)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "sample_range_limit", scope: !169, file: !4, line: 564, baseType: !205, size: 64, offset: 3264)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "comps_in_scan", scope: !169, file: !4, line: 571, baseType: !193, size: 32, offset: 3328)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "cur_comp_info", scope: !169, file: !4, line: 572, baseType: !447, size: 256, offset: 3392)
!447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 256, elements: !378)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "MCUs_per_row", scope: !169, file: !4, line: 575, baseType: !209, size: 32, offset: 3648)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_rows_in_scan", scope: !169, file: !4, line: 576, baseType: !209, size: 32, offset: 3680)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_in_MCU", scope: !169, file: !4, line: 578, baseType: !193, size: 32, offset: 3712)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_membership", scope: !169, file: !4, line: 579, baseType: !452, size: 320, offset: 3744)
!452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 320, elements: !453)
!453 = !{!454}
!454 = !DISubrange(count: 10)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "Ss", scope: !169, file: !4, line: 583, baseType: !193, size: 32, offset: 4064)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "Se", scope: !169, file: !4, line: 583, baseType: !193, size: 32, offset: 4096)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "Ah", scope: !169, file: !4, line: 583, baseType: !193, size: 32, offset: 4128)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "Al", scope: !169, file: !4, line: 583, baseType: !193, size: 32, offset: 4160)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "unread_marker", scope: !169, file: !4, line: 589, baseType: !193, size: 32, offset: 4192)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !169, file: !4, line: 594, baseType: !461, size: 64, offset: 4224)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_decomp_master", file: !24, line: 136, size: 192, elements: !463)
!463 = !{!464, !465, !466}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_for_output_pass", scope: !462, file: !24, line: 137, baseType: !312, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "finish_output_pass", scope: !462, file: !24, line: 138, baseType: !312, size: 64, offset: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "is_dummy_pass", scope: !462, file: !24, line: 141, baseType: !231, size: 32, offset: 128)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "main", scope: !169, file: !4, line: 595, baseType: !468, size: 64, offset: 4288)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_d_main_controller", file: !24, line: 157, size: 128, elements: !470)
!470 = !{!471, !476}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !469, file: !24, line: 158, baseType: !472, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{null, !167, !475}
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_BUF_MODE", file: !24, line: 22, baseType: !23)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "process_data", scope: !469, file: !24, line: 159, baseType: !477, size: 64, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DISubroutineType(types: !479)
!479 = !{null, !167, !202, !480, !209}
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "coef", scope: !169, file: !4, line: 596, baseType: !482, size: 64, offset: 4352)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_d_coef_controller", file: !24, line: 165, size: 320, elements: !484)
!484 = !{!485, !486, !490, !491, !497}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "start_input_pass", scope: !483, file: !24, line: 166, baseType: !312, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "consume_data", scope: !483, file: !24, line: 167, baseType: !487, size: 64, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{!193, !167}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "start_output_pass", scope: !483, file: !24, line: 168, baseType: !312, size: 64, offset: 128)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "decompress_data", scope: !483, file: !24, line: 169, baseType: !492, size: 64, offset: 192)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DISubroutineType(types: !494)
!494 = !{!193, !167, !495}
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPIMAGE", file: !4, line: 68, baseType: !496)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "coef_arrays", scope: !483, file: !24, line: 172, baseType: !498, size: 64, offset: 256)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "post", scope: !169, file: !4, line: 597, baseType: !500, size: 64, offset: 4416)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_d_post_controller", file: !24, line: 176, size: 128, elements: !502)
!502 = !{!503, !504}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !501, file: !24, line: 177, baseType: !472, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "post_process_data", scope: !501, file: !24, line: 178, baseType: !505, size: 64, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DISubroutineType(types: !507)
!507 = !{null, !167, !495, !480, !209, !202, !480, !209}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "inputctl", scope: !169, file: !4, line: 598, baseType: !509, size: 64, offset: 4480)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_input_controller", file: !24, line: 145, size: 320, elements: !511)
!511 = !{!512, !513, !514, !515, !516, !517}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "consume_input", scope: !510, file: !24, line: 146, baseType: !487, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "reset_input_controller", scope: !510, file: !24, line: 147, baseType: !312, size: 64, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "start_input_pass", scope: !510, file: !24, line: 148, baseType: !312, size: 64, offset: 128)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "finish_input_pass", scope: !510, file: !24, line: 149, baseType: !312, size: 64, offset: 192)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "has_multiple_scans", scope: !510, file: !24, line: 152, baseType: !231, size: 32, offset: 256)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "eoi_reached", scope: !510, file: !24, line: 153, baseType: !231, size: 32, offset: 288)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "marker", scope: !169, file: !4, line: 599, baseType: !519, size: 64, offset: 4544)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_marker_reader", file: !24, line: 188, size: 1408, elements: !521)
!521 = !{!522, !523, !524, !526, !527, !529, !530, !531, !532}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "reset_marker_reader", scope: !520, file: !24, line: 189, baseType: !312, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "read_markers", scope: !520, file: !24, line: 194, baseType: !487, size: 64, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "read_restart_marker", scope: !520, file: !24, line: 196, baseType: !525, size: 64, offset: 128)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_marker_parser_method", file: !4, line: 781, baseType: !316)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "process_COM", scope: !520, file: !24, line: 198, baseType: !525, size: 64, offset: 192)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "process_APPn", scope: !520, file: !24, line: 199, baseType: !528, size: 1024, offset: 256)
!528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !525, size: 1024, elements: !428)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "saw_SOI", scope: !520, file: !24, line: 204, baseType: !231, size: 32, offset: 1280)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "saw_SOF", scope: !520, file: !24, line: 205, baseType: !231, size: 32, offset: 1312)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "next_restart_num", scope: !520, file: !24, line: 206, baseType: !193, size: 32, offset: 1344)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "discarded_bytes", scope: !520, file: !24, line: 207, baseType: !5, size: 32, offset: 1376)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "entropy", scope: !169, file: !4, line: 600, baseType: !534, size: 64, offset: 4608)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_entropy_decoder", file: !24, line: 211, size: 128, elements: !536)
!536 = !{!537, !538}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !535, file: !24, line: 212, baseType: !312, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "decode_mcu", scope: !535, file: !24, line: 213, baseType: !539, size: 64, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DISubroutineType(types: !541)
!541 = !{!231, !167, !215}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "idct", scope: !169, file: !4, line: 601, baseType: !543, size: 64, offset: 4672)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_inverse_dct", file: !24, line: 223, size: 704, elements: !545)
!545 = !{!546, !547}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !544, file: !24, line: 224, baseType: !312, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "inverse_DCT", scope: !544, file: !24, line: 226, baseType: !548, size: 640, offset: 64)
!548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !549, size: 640, elements: !453)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "inverse_DCT_method_ptr", file: !24, line: 218, baseType: !550)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DISubroutineType(types: !552)
!552 = !{null, !167, !399, !553, !202, !209}
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "JCOEFPTR", file: !4, line: 75, baseType: !554)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "upsample", scope: !169, file: !4, line: 602, baseType: !556, size: 64, offset: 4736)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_upsampler", file: !24, line: 230, size: 192, elements: !558)
!558 = !{!559, !560, !561}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !557, file: !24, line: 231, baseType: !312, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "upsample", scope: !557, file: !24, line: 232, baseType: !505, size: 64, offset: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "need_context_rows", scope: !557, file: !24, line: 240, baseType: !231, size: 32, offset: 128)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "cconvert", scope: !169, file: !4, line: 603, baseType: !563, size: 64, offset: 4800)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_color_deconverter", file: !24, line: 244, size: 128, elements: !565)
!565 = !{!566, !567}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !564, file: !24, line: 245, baseType: !312, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "color_convert", scope: !564, file: !24, line: 246, baseType: !568, size: 64, offset: 64)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{null, !167, !495, !209, !202, !193}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "cquantize", scope: !169, file: !4, line: 604, baseType: !572, size: 64, offset: 4864)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "color_quantize", scope: !161, file: !24, line: 254, baseType: !574, size: 64, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DISubroutineType(types: !576)
!576 = !{null, !167, !202, !202, !193}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "finish_pass", scope: !161, file: !24, line: 257, baseType: !312, size: 64, offset: 128)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "new_color_map", scope: !161, file: !24, line: 258, baseType: !312, size: 64, offset: 192)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "sv_colormap", scope: !158, file: !1, line: 197, baseType: !202, size: 64, offset: 256)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "desired", scope: !158, file: !1, line: 198, baseType: !193, size: 32, offset: 320)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "histogram", scope: !158, file: !1, line: 201, baseType: !582, size: 64, offset: 384)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "hist3d", file: !1, line: 153, baseType: !583)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "hist2d", file: !1, line: 152, baseType: !585)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "hist1d", file: !1, line: 151, baseType: !587)
!587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !588, size: 512, elements: !589)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "histcell", file: !1, line: 147, baseType: !375)
!589 = !{!590}
!590 = !DISubrange(count: 32)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "needs_zeroed", scope: !158, file: !1, line: 203, baseType: !231, size: 32, offset: 448)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "fserrors", scope: !158, file: !1, line: 206, baseType: !593, size: 64, offset: 512)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "FSERRPTR", file: !1, line: 188, baseType: !594)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "FSERROR", file: !1, line: 181, baseType: !596)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT16", file: !207, line: 155, baseType: !221)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "on_odd_row", scope: !158, file: !1, line: 207, baseType: !231, size: 32, offset: 576)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "error_limiter", scope: !158, file: !1, line: 208, baseType: !599, size: 64, offset: 640)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "boxptr", file: !1, line: 269, baseType: !601)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "box", file: !1, line: 267, baseType: !603)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 258, size: 320, elements: !604)
!604 = !{!605, !606, !607, !608, !609, !610, !611, !613}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "c0min", scope: !603, file: !1, line: 260, baseType: !193, size: 32)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "c0max", scope: !603, file: !1, line: 260, baseType: !193, size: 32, offset: 32)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "c1min", scope: !603, file: !1, line: 261, baseType: !193, size: 32, offset: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "c1max", scope: !603, file: !1, line: 261, baseType: !193, size: 32, offset: 96)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "c2min", scope: !603, file: !1, line: 262, baseType: !193, size: 32, offset: 128)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "c2max", scope: !603, file: !1, line: 262, baseType: !193, size: 32, offset: 160)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "volume", scope: !603, file: !1, line: 264, baseType: !612, size: 64, offset: 192)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT32", file: !207, line: 161, baseType: !254)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "colorcount", scope: !603, file: !1, line: 266, baseType: !254, size: 64, offset: 256)
!614 = !{i32 7, !"Dwarf Version", i32 5}
!615 = !{i32 2, !"Debug Info Version", i32 3}
!616 = !{i32 1, !"wchar_size", i32 4}
!617 = !{i32 8, !"PIC Level", i32 2}
!618 = !{i32 7, !"PIE Level", i32 2}
!619 = !{i32 7, !"uwtable", i32 2}
!620 = !{i32 7, !"frame-pointer", i32 2}
!621 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!622 = distinct !DISubprogram(name: "jinit_2pass_quantizer", scope: !1, file: !1, line: 1244, type: !313, scopeLine: 1245, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !623)
!623 = !{}
!624 = !DILocalVariable(name: "cinfo", arg: 1, scope: !622, file: !1, line: 1244, type: !167)
!625 = !DILocation(line: 1244, column: 41, scope: !622)
!626 = !DILocalVariable(name: "cquantize", scope: !622, file: !1, line: 1246, type: !155)
!627 = !DILocation(line: 1246, column: 20, scope: !622)
!628 = !DILocalVariable(name: "i", scope: !622, file: !1, line: 1247, type: !193)
!629 = !DILocation(line: 1247, column: 7, scope: !622)
!630 = !DILocation(line: 1250, column: 7, scope: !622)
!631 = !DILocation(line: 1250, column: 14, scope: !622)
!632 = !DILocation(line: 1250, column: 19, scope: !622)
!633 = !DILocation(line: 1250, column: 48, scope: !622)
!634 = !DILocation(line: 1250, column: 5, scope: !622)
!635 = !DILocation(line: 1249, column: 13, scope: !622)
!636 = !DILocation(line: 1252, column: 54, scope: !622)
!637 = !DILocation(line: 1252, column: 3, scope: !622)
!638 = !DILocation(line: 1252, column: 10, scope: !622)
!639 = !DILocation(line: 1252, column: 20, scope: !622)
!640 = !DILocation(line: 1253, column: 3, scope: !622)
!641 = !DILocation(line: 1253, column: 14, scope: !622)
!642 = !DILocation(line: 1253, column: 18, scope: !622)
!643 = !DILocation(line: 1253, column: 29, scope: !622)
!644 = !DILocation(line: 1254, column: 3, scope: !622)
!645 = !DILocation(line: 1254, column: 14, scope: !622)
!646 = !DILocation(line: 1254, column: 18, scope: !622)
!647 = !DILocation(line: 1254, column: 32, scope: !622)
!648 = !DILocation(line: 1255, column: 3, scope: !622)
!649 = !DILocation(line: 1255, column: 14, scope: !622)
!650 = !DILocation(line: 1255, column: 23, scope: !622)
!651 = !DILocation(line: 1256, column: 3, scope: !622)
!652 = !DILocation(line: 1256, column: 14, scope: !622)
!653 = !DILocation(line: 1256, column: 28, scope: !622)
!654 = !DILocation(line: 1259, column: 7, scope: !655)
!655 = distinct !DILexicalBlock(scope: !622, file: !1, line: 1259, column: 7)
!656 = !DILocation(line: 1259, column: 14, scope: !655)
!657 = !DILocation(line: 1259, column: 35, scope: !655)
!658 = !DILocation(line: 1260, column: 5, scope: !655)
!659 = !DILocation(line: 1263, column: 37, scope: !622)
!660 = !DILocation(line: 1263, column: 44, scope: !622)
!661 = !DILocation(line: 1263, column: 49, scope: !622)
!662 = !DILocation(line: 1264, column: 21, scope: !622)
!663 = !DILocation(line: 1263, column: 35, scope: !622)
!664 = !DILocation(line: 1263, column: 3, scope: !622)
!665 = !DILocation(line: 1263, column: 14, scope: !622)
!666 = !DILocation(line: 1263, column: 24, scope: !622)
!667 = !DILocation(line: 1265, column: 10, scope: !668)
!668 = distinct !DILexicalBlock(scope: !622, file: !1, line: 1265, column: 3)
!669 = !DILocation(line: 1265, column: 8, scope: !668)
!670 = !DILocation(line: 1265, column: 15, scope: !671)
!671 = distinct !DILexicalBlock(scope: !668, file: !1, line: 1265, column: 3)
!672 = !DILocation(line: 1265, column: 17, scope: !671)
!673 = !DILocation(line: 1265, column: 3, scope: !668)
!674 = !DILocation(line: 1266, column: 42, scope: !675)
!675 = distinct !DILexicalBlock(scope: !671, file: !1, line: 1265, column: 39)
!676 = !DILocation(line: 1266, column: 49, scope: !675)
!677 = !DILocation(line: 1266, column: 54, scope: !675)
!678 = !DILocation(line: 1267, column: 23, scope: !675)
!679 = !DILocation(line: 1266, column: 40, scope: !675)
!680 = !DILocation(line: 1266, column: 5, scope: !675)
!681 = !DILocation(line: 1266, column: 16, scope: !675)
!682 = !DILocation(line: 1266, column: 26, scope: !675)
!683 = !DILocation(line: 1266, column: 29, scope: !675)
!684 = !DILocation(line: 1269, column: 3, scope: !675)
!685 = !DILocation(line: 1265, column: 35, scope: !671)
!686 = !DILocation(line: 1265, column: 3, scope: !671)
!687 = distinct !{!687, !673, !688, !689}
!688 = !DILocation(line: 1269, column: 3, scope: !668)
!689 = !{!"llvm.loop.mustprogress"}
!690 = !DILocation(line: 1270, column: 3, scope: !622)
!691 = !DILocation(line: 1270, column: 14, scope: !622)
!692 = !DILocation(line: 1270, column: 27, scope: !622)
!693 = !DILocation(line: 1276, column: 7, scope: !694)
!694 = distinct !DILexicalBlock(scope: !622, file: !1, line: 1276, column: 7)
!695 = !DILocation(line: 1276, column: 14, scope: !694)
!696 = !DILocalVariable(name: "desired", scope: !697, file: !1, line: 1278, type: !193)
!697 = distinct !DILexicalBlock(scope: !694, file: !1, line: 1276, column: 34)
!698 = !DILocation(line: 1278, column: 9, scope: !697)
!699 = !DILocation(line: 1278, column: 19, scope: !697)
!700 = !DILocation(line: 1278, column: 26, scope: !697)
!701 = !DILocation(line: 1280, column: 9, scope: !702)
!702 = distinct !DILexicalBlock(scope: !697, file: !1, line: 1280, column: 9)
!703 = !DILocation(line: 1280, column: 17, scope: !702)
!704 = !DILocation(line: 1281, column: 7, scope: !702)
!705 = !DILocation(line: 1283, column: 9, scope: !706)
!706 = distinct !DILexicalBlock(scope: !697, file: !1, line: 1283, column: 9)
!707 = !DILocation(line: 1283, column: 17, scope: !706)
!708 = !DILocation(line: 1284, column: 7, scope: !706)
!709 = !DILocation(line: 1285, column: 32, scope: !697)
!710 = !DILocation(line: 1285, column: 39, scope: !697)
!711 = !DILocation(line: 1285, column: 44, scope: !697)
!712 = !DILocation(line: 1286, column: 23, scope: !697)
!713 = !DILocation(line: 1286, column: 55, scope: !697)
!714 = !DILocation(line: 1285, column: 30, scope: !697)
!715 = !DILocation(line: 1285, column: 5, scope: !697)
!716 = !DILocation(line: 1285, column: 16, scope: !697)
!717 = !DILocation(line: 1285, column: 28, scope: !697)
!718 = !DILocation(line: 1287, column: 26, scope: !697)
!719 = !DILocation(line: 1287, column: 5, scope: !697)
!720 = !DILocation(line: 1287, column: 16, scope: !697)
!721 = !DILocation(line: 1287, column: 24, scope: !697)
!722 = !DILocation(line: 1288, column: 3, scope: !697)
!723 = !DILocation(line: 1289, column: 5, scope: !694)
!724 = !DILocation(line: 1289, column: 16, scope: !694)
!725 = !DILocation(line: 1289, column: 28, scope: !694)
!726 = !DILocation(line: 1293, column: 7, scope: !727)
!727 = distinct !DILexicalBlock(scope: !622, file: !1, line: 1293, column: 7)
!728 = !DILocation(line: 1293, column: 14, scope: !727)
!729 = !DILocation(line: 1293, column: 26, scope: !727)
!730 = !DILocation(line: 1294, column: 5, scope: !727)
!731 = !DILocation(line: 1294, column: 12, scope: !727)
!732 = !DILocation(line: 1294, column: 24, scope: !727)
!733 = !DILocation(line: 1301, column: 7, scope: !734)
!734 = distinct !DILexicalBlock(scope: !622, file: !1, line: 1301, column: 7)
!735 = !DILocation(line: 1301, column: 14, scope: !734)
!736 = !DILocation(line: 1301, column: 26, scope: !734)
!737 = !DILocation(line: 1302, column: 40, scope: !738)
!738 = distinct !DILexicalBlock(scope: !734, file: !1, line: 1301, column: 41)
!739 = !DILocation(line: 1302, column: 47, scope: !738)
!740 = !DILocation(line: 1302, column: 52, scope: !738)
!741 = !DILocation(line: 1303, column: 23, scope: !738)
!742 = !DILocation(line: 1304, column: 19, scope: !738)
!743 = !DILocation(line: 1304, column: 26, scope: !738)
!744 = !DILocation(line: 1304, column: 39, scope: !738)
!745 = !DILocation(line: 1304, column: 18, scope: !738)
!746 = !DILocation(line: 1304, column: 44, scope: !738)
!747 = !DILocation(line: 1302, column: 38, scope: !738)
!748 = !DILocation(line: 1302, column: 5, scope: !738)
!749 = !DILocation(line: 1302, column: 16, scope: !738)
!750 = !DILocation(line: 1302, column: 25, scope: !738)
!751 = !DILocation(line: 1306, column: 22, scope: !738)
!752 = !DILocation(line: 1306, column: 5, scope: !738)
!753 = !DILocation(line: 1307, column: 3, scope: !738)
!754 = !DILocation(line: 1308, column: 1, scope: !622)
!755 = distinct !DISubprogram(name: "start_pass_2_quant", scope: !1, file: !1, line: 1167, type: !165, scopeLine: 1168, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !623)
!756 = !DILocalVariable(name: "cinfo", arg: 1, scope: !755, file: !1, line: 1167, type: !167)
!757 = !DILocation(line: 1167, column: 38, scope: !755)
!758 = !DILocalVariable(name: "is_pre_scan", arg: 2, scope: !755, file: !1, line: 1167, type: !231)
!759 = !DILocation(line: 1167, column: 53, scope: !755)
!760 = !DILocalVariable(name: "cquantize", scope: !755, file: !1, line: 1169, type: !155)
!761 = !DILocation(line: 1169, column: 20, scope: !755)
!762 = !DILocation(line: 1169, column: 51, scope: !755)
!763 = !DILocation(line: 1169, column: 58, scope: !755)
!764 = !DILocalVariable(name: "histogram", scope: !755, file: !1, line: 1170, type: !582)
!765 = !DILocation(line: 1170, column: 10, scope: !755)
!766 = !DILocation(line: 1170, column: 22, scope: !755)
!767 = !DILocation(line: 1170, column: 33, scope: !755)
!768 = !DILocalVariable(name: "i", scope: !755, file: !1, line: 1171, type: !193)
!769 = !DILocation(line: 1171, column: 7, scope: !755)
!770 = !DILocation(line: 1175, column: 7, scope: !771)
!771 = distinct !DILexicalBlock(scope: !755, file: !1, line: 1175, column: 7)
!772 = !DILocation(line: 1175, column: 14, scope: !771)
!773 = !DILocation(line: 1175, column: 26, scope: !771)
!774 = !DILocation(line: 1176, column: 5, scope: !771)
!775 = !DILocation(line: 1176, column: 12, scope: !771)
!776 = !DILocation(line: 1176, column: 24, scope: !771)
!777 = !DILocation(line: 1178, column: 7, scope: !778)
!778 = distinct !DILexicalBlock(scope: !755, file: !1, line: 1178, column: 7)
!779 = !DILocation(line: 1180, column: 5, scope: !780)
!780 = distinct !DILexicalBlock(scope: !778, file: !1, line: 1178, column: 20)
!781 = !DILocation(line: 1180, column: 16, scope: !780)
!782 = !DILocation(line: 1180, column: 20, scope: !780)
!783 = !DILocation(line: 1180, column: 35, scope: !780)
!784 = !DILocation(line: 1181, column: 5, scope: !780)
!785 = !DILocation(line: 1181, column: 16, scope: !780)
!786 = !DILocation(line: 1181, column: 20, scope: !780)
!787 = !DILocation(line: 1181, column: 32, scope: !780)
!788 = !DILocation(line: 1182, column: 5, scope: !780)
!789 = !DILocation(line: 1182, column: 16, scope: !780)
!790 = !DILocation(line: 1182, column: 29, scope: !780)
!791 = !DILocation(line: 1183, column: 3, scope: !780)
!792 = !DILocation(line: 1185, column: 9, scope: !793)
!793 = distinct !DILexicalBlock(scope: !794, file: !1, line: 1185, column: 9)
!794 = distinct !DILexicalBlock(scope: !778, file: !1, line: 1183, column: 10)
!795 = !DILocation(line: 1185, column: 16, scope: !793)
!796 = !DILocation(line: 1185, column: 28, scope: !793)
!797 = !DILocation(line: 1186, column: 7, scope: !793)
!798 = !DILocation(line: 1186, column: 18, scope: !793)
!799 = !DILocation(line: 1186, column: 22, scope: !793)
!800 = !DILocation(line: 1186, column: 37, scope: !793)
!801 = !DILocation(line: 1188, column: 7, scope: !793)
!802 = !DILocation(line: 1188, column: 18, scope: !793)
!803 = !DILocation(line: 1188, column: 22, scope: !793)
!804 = !DILocation(line: 1188, column: 37, scope: !793)
!805 = !DILocation(line: 1189, column: 5, scope: !794)
!806 = !DILocation(line: 1189, column: 16, scope: !794)
!807 = !DILocation(line: 1189, column: 20, scope: !794)
!808 = !DILocation(line: 1189, column: 32, scope: !794)
!809 = !DILocation(line: 1192, column: 9, scope: !794)
!810 = !DILocation(line: 1192, column: 16, scope: !794)
!811 = !DILocation(line: 1192, column: 7, scope: !794)
!812 = !DILocation(line: 1193, column: 9, scope: !813)
!813 = distinct !DILexicalBlock(scope: !794, file: !1, line: 1193, column: 9)
!814 = !DILocation(line: 1193, column: 11, scope: !813)
!815 = !DILocation(line: 1194, column: 7, scope: !813)
!816 = !DILocation(line: 1195, column: 9, scope: !817)
!817 = distinct !DILexicalBlock(scope: !794, file: !1, line: 1195, column: 9)
!818 = !DILocation(line: 1195, column: 11, scope: !817)
!819 = !DILocation(line: 1196, column: 7, scope: !817)
!820 = !DILocation(line: 1198, column: 9, scope: !821)
!821 = distinct !DILexicalBlock(scope: !794, file: !1, line: 1198, column: 9)
!822 = !DILocation(line: 1198, column: 16, scope: !821)
!823 = !DILocation(line: 1198, column: 28, scope: !821)
!824 = !DILocalVariable(name: "arraysize", scope: !825, file: !1, line: 1199, type: !194)
!825 = distinct !DILexicalBlock(scope: !821, file: !1, line: 1198, column: 43)
!826 = !DILocation(line: 1199, column: 14, scope: !825)
!827 = !DILocation(line: 1199, column: 37, scope: !825)
!828 = !DILocation(line: 1199, column: 44, scope: !825)
!829 = !DILocation(line: 1199, column: 57, scope: !825)
!830 = !DILocation(line: 1199, column: 36, scope: !825)
!831 = !DILocation(line: 1199, column: 62, scope: !825)
!832 = !DILocation(line: 1202, column: 11, scope: !833)
!833 = distinct !DILexicalBlock(scope: !825, file: !1, line: 1202, column: 11)
!834 = !DILocation(line: 1202, column: 22, scope: !833)
!835 = !DILocation(line: 1202, column: 31, scope: !833)
!836 = !DILocation(line: 1203, column: 37, scope: !833)
!837 = !DILocation(line: 1203, column: 44, scope: !833)
!838 = !DILocation(line: 1203, column: 49, scope: !833)
!839 = !DILocation(line: 1204, column: 20, scope: !833)
!840 = !DILocation(line: 1204, column: 40, scope: !833)
!841 = !DILocation(line: 1203, column: 35, scope: !833)
!842 = !DILocation(line: 1203, column: 2, scope: !833)
!843 = !DILocation(line: 1203, column: 13, scope: !833)
!844 = !DILocation(line: 1203, column: 22, scope: !833)
!845 = !DILocation(line: 1206, column: 30, scope: !825)
!846 = !DILocation(line: 1206, column: 41, scope: !825)
!847 = !DILocation(line: 1206, column: 51, scope: !825)
!848 = !DILocation(line: 1206, column: 7, scope: !825)
!849 = !DILocation(line: 1208, column: 11, scope: !850)
!850 = distinct !DILexicalBlock(scope: !825, file: !1, line: 1208, column: 11)
!851 = !DILocation(line: 1208, column: 22, scope: !850)
!852 = !DILocation(line: 1208, column: 36, scope: !850)
!853 = !DILocation(line: 1209, column: 19, scope: !850)
!854 = !DILocation(line: 1209, column: 2, scope: !850)
!855 = !DILocation(line: 1210, column: 7, scope: !825)
!856 = !DILocation(line: 1210, column: 18, scope: !825)
!857 = !DILocation(line: 1210, column: 29, scope: !825)
!858 = !DILocation(line: 1211, column: 5, scope: !825)
!859 = !DILocation(line: 1215, column: 7, scope: !860)
!860 = distinct !DILexicalBlock(scope: !755, file: !1, line: 1215, column: 7)
!861 = !DILocation(line: 1215, column: 18, scope: !860)
!862 = !DILocation(line: 1216, column: 12, scope: !863)
!863 = distinct !DILexicalBlock(scope: !864, file: !1, line: 1216, column: 5)
!864 = distinct !DILexicalBlock(scope: !860, file: !1, line: 1215, column: 32)
!865 = !DILocation(line: 1216, column: 10, scope: !863)
!866 = !DILocation(line: 1216, column: 17, scope: !867)
!867 = distinct !DILexicalBlock(scope: !863, file: !1, line: 1216, column: 5)
!868 = !DILocation(line: 1216, column: 19, scope: !867)
!869 = !DILocation(line: 1216, column: 5, scope: !863)
!870 = !DILocation(line: 1217, column: 30, scope: !871)
!871 = distinct !DILexicalBlock(scope: !867, file: !1, line: 1216, column: 41)
!872 = !DILocation(line: 1217, column: 40, scope: !871)
!873 = !DILocation(line: 1217, column: 7, scope: !871)
!874 = !DILocation(line: 1219, column: 5, scope: !871)
!875 = !DILocation(line: 1216, column: 37, scope: !867)
!876 = !DILocation(line: 1216, column: 5, scope: !867)
!877 = distinct !{!877, !869, !878, !689}
!878 = !DILocation(line: 1219, column: 5, scope: !863)
!879 = !DILocation(line: 1220, column: 5, scope: !864)
!880 = !DILocation(line: 1220, column: 16, scope: !864)
!881 = !DILocation(line: 1220, column: 29, scope: !864)
!882 = !DILocation(line: 1221, column: 3, scope: !864)
!883 = !DILocation(line: 1222, column: 1, scope: !755)
!884 = distinct !DISubprogram(name: "new_color_map_2_quant", scope: !1, file: !1, line: 1230, type: !313, scopeLine: 1231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !623)
!885 = !DILocalVariable(name: "cinfo", arg: 1, scope: !884, file: !1, line: 1230, type: !167)
!886 = !DILocation(line: 1230, column: 41, scope: !884)
!887 = !DILocalVariable(name: "cquantize", scope: !884, file: !1, line: 1232, type: !155)
!888 = !DILocation(line: 1232, column: 20, scope: !884)
!889 = !DILocation(line: 1232, column: 51, scope: !884)
!890 = !DILocation(line: 1232, column: 58, scope: !884)
!891 = !DILocation(line: 1235, column: 3, scope: !884)
!892 = !DILocation(line: 1235, column: 14, scope: !884)
!893 = !DILocation(line: 1235, column: 27, scope: !884)
!894 = !DILocation(line: 1236, column: 1, scope: !884)
!895 = distinct !DISubprogram(name: "init_error_limit", scope: !1, file: !1, line: 1108, type: !313, scopeLine: 1110, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !623)
!896 = !DILocalVariable(name: "cinfo", arg: 1, scope: !895, file: !1, line: 1108, type: !167)
!897 = !DILocation(line: 1108, column: 36, scope: !895)
!898 = !DILocalVariable(name: "cquantize", scope: !895, file: !1, line: 1111, type: !155)
!899 = !DILocation(line: 1111, column: 20, scope: !895)
!900 = !DILocation(line: 1111, column: 51, scope: !895)
!901 = !DILocation(line: 1111, column: 58, scope: !895)
!902 = !DILocalVariable(name: "table", scope: !895, file: !1, line: 1112, type: !599)
!903 = !DILocation(line: 1112, column: 9, scope: !895)
!904 = !DILocalVariable(name: "in", scope: !895, file: !1, line: 1113, type: !193)
!905 = !DILocation(line: 1113, column: 7, scope: !895)
!906 = !DILocalVariable(name: "out", scope: !895, file: !1, line: 1113, type: !193)
!907 = !DILocation(line: 1113, column: 11, scope: !895)
!908 = !DILocation(line: 1115, column: 21, scope: !895)
!909 = !DILocation(line: 1115, column: 28, scope: !895)
!910 = !DILocation(line: 1115, column: 33, scope: !895)
!911 = !DILocation(line: 1116, column: 21, scope: !895)
!912 = !DILocation(line: 1115, column: 19, scope: !895)
!913 = !DILocation(line: 1115, column: 9, scope: !895)
!914 = !DILocation(line: 1117, column: 9, scope: !895)
!915 = !DILocation(line: 1118, column: 30, scope: !895)
!916 = !DILocation(line: 1118, column: 3, scope: !895)
!917 = !DILocation(line: 1118, column: 14, scope: !895)
!918 = !DILocation(line: 1118, column: 28, scope: !895)
!919 = !DILocation(line: 1122, column: 7, scope: !895)
!920 = !DILocation(line: 1123, column: 11, scope: !921)
!921 = distinct !DILexicalBlock(scope: !895, file: !1, line: 1123, column: 3)
!922 = !DILocation(line: 1123, column: 8, scope: !921)
!923 = !DILocation(line: 1123, column: 16, scope: !924)
!924 = distinct !DILexicalBlock(scope: !921, file: !1, line: 1123, column: 3)
!925 = !DILocation(line: 1123, column: 19, scope: !924)
!926 = !DILocation(line: 1123, column: 3, scope: !921)
!927 = !DILocation(line: 1124, column: 17, scope: !928)
!928 = distinct !DILexicalBlock(scope: !924, file: !1, line: 1123, column: 44)
!929 = !DILocation(line: 1124, column: 5, scope: !928)
!930 = !DILocation(line: 1124, column: 11, scope: !928)
!931 = !DILocation(line: 1124, column: 15, scope: !928)
!932 = !DILocation(line: 1124, column: 36, scope: !928)
!933 = !DILocation(line: 1124, column: 35, scope: !928)
!934 = !DILocation(line: 1124, column: 22, scope: !928)
!935 = !DILocation(line: 1124, column: 29, scope: !928)
!936 = !DILocation(line: 1124, column: 28, scope: !928)
!937 = !DILocation(line: 1124, column: 33, scope: !928)
!938 = !DILocation(line: 1125, column: 3, scope: !928)
!939 = !DILocation(line: 1123, column: 33, scope: !924)
!940 = !DILocation(line: 1123, column: 40, scope: !924)
!941 = !DILocation(line: 1123, column: 3, scope: !924)
!942 = distinct !{!942, !926, !943, !689}
!943 = !DILocation(line: 1125, column: 3, scope: !921)
!944 = !DILocation(line: 1127, column: 3, scope: !895)
!945 = !DILocation(line: 1127, column: 10, scope: !946)
!946 = distinct !DILexicalBlock(scope: !947, file: !1, line: 1127, column: 3)
!947 = distinct !DILexicalBlock(scope: !895, file: !1, line: 1127, column: 3)
!948 = !DILocation(line: 1127, column: 13, scope: !946)
!949 = !DILocation(line: 1127, column: 3, scope: !947)
!950 = !DILocation(line: 1128, column: 17, scope: !951)
!951 = distinct !DILexicalBlock(scope: !946, file: !1, line: 1127, column: 56)
!952 = !DILocation(line: 1128, column: 5, scope: !951)
!953 = !DILocation(line: 1128, column: 11, scope: !951)
!954 = !DILocation(line: 1128, column: 15, scope: !951)
!955 = !DILocation(line: 1128, column: 36, scope: !951)
!956 = !DILocation(line: 1128, column: 35, scope: !951)
!957 = !DILocation(line: 1128, column: 22, scope: !951)
!958 = !DILocation(line: 1128, column: 29, scope: !951)
!959 = !DILocation(line: 1128, column: 28, scope: !951)
!960 = !DILocation(line: 1128, column: 33, scope: !951)
!961 = !DILocation(line: 1129, column: 3, scope: !951)
!962 = !DILocation(line: 1127, column: 29, scope: !946)
!963 = !DILocation(line: 1127, column: 41, scope: !946)
!964 = !DILocation(line: 1127, column: 43, scope: !946)
!965 = !DILocation(line: 1127, column: 40, scope: !946)
!966 = !DILocation(line: 1127, column: 37, scope: !946)
!967 = !DILocation(line: 1127, column: 3, scope: !946)
!968 = distinct !{!968, !949, !969, !689}
!969 = !DILocation(line: 1129, column: 3, scope: !947)
!970 = !DILocation(line: 1131, column: 3, scope: !895)
!971 = !DILocation(line: 1131, column: 10, scope: !972)
!972 = distinct !DILexicalBlock(scope: !973, file: !1, line: 1131, column: 3)
!973 = distinct !DILexicalBlock(scope: !895, file: !1, line: 1131, column: 3)
!974 = !DILocation(line: 1131, column: 13, scope: !972)
!975 = !DILocation(line: 1131, column: 3, scope: !973)
!976 = !DILocation(line: 1132, column: 17, scope: !977)
!977 = distinct !DILexicalBlock(scope: !972, file: !1, line: 1131, column: 34)
!978 = !DILocation(line: 1132, column: 5, scope: !977)
!979 = !DILocation(line: 1132, column: 11, scope: !977)
!980 = !DILocation(line: 1132, column: 15, scope: !977)
!981 = !DILocation(line: 1132, column: 36, scope: !977)
!982 = !DILocation(line: 1132, column: 35, scope: !977)
!983 = !DILocation(line: 1132, column: 22, scope: !977)
!984 = !DILocation(line: 1132, column: 29, scope: !977)
!985 = !DILocation(line: 1132, column: 28, scope: !977)
!986 = !DILocation(line: 1132, column: 33, scope: !977)
!987 = !DILocation(line: 1133, column: 3, scope: !977)
!988 = !DILocation(line: 1131, column: 30, scope: !972)
!989 = !DILocation(line: 1131, column: 3, scope: !972)
!990 = distinct !{!990, !975, !991, !689}
!991 = !DILocation(line: 1133, column: 3, scope: !973)
!992 = !DILocation(line: 1135, column: 1, scope: !895)
!993 = distinct !DISubprogram(name: "prescan_quantize", scope: !1, file: !1, line: 224, type: !575, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !623)
!994 = !DILocalVariable(name: "cinfo", arg: 1, scope: !993, file: !1, line: 224, type: !167)
!995 = !DILocation(line: 224, column: 36, scope: !993)
!996 = !DILocalVariable(name: "input_buf", arg: 2, scope: !993, file: !1, line: 224, type: !202)
!997 = !DILocation(line: 224, column: 54, scope: !993)
!998 = !DILocalVariable(name: "output_buf", arg: 3, scope: !993, file: !1, line: 225, type: !202)
!999 = !DILocation(line: 225, column: 16, scope: !993)
!1000 = !DILocalVariable(name: "num_rows", arg: 4, scope: !993, file: !1, line: 225, type: !193)
!1001 = !DILocation(line: 225, column: 32, scope: !993)
!1002 = !DILocalVariable(name: "cquantize", scope: !993, file: !1, line: 227, type: !155)
!1003 = !DILocation(line: 227, column: 20, scope: !993)
!1004 = !DILocation(line: 227, column: 51, scope: !993)
!1005 = !DILocation(line: 227, column: 58, scope: !993)
!1006 = !DILocalVariable(name: "ptr", scope: !993, file: !1, line: 228, type: !204)
!1007 = !DILocation(line: 228, column: 21, scope: !993)
!1008 = !DILocalVariable(name: "histp", scope: !993, file: !1, line: 229, type: !1009)
!1009 = !DIDerivedType(tag: DW_TAG_typedef, name: "histptr", file: !1, line: 149, baseType: !1010)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!1011 = !DILocation(line: 229, column: 20, scope: !993)
!1012 = !DILocalVariable(name: "histogram", scope: !993, file: !1, line: 230, type: !582)
!1013 = !DILocation(line: 230, column: 19, scope: !993)
!1014 = !DILocation(line: 230, column: 31, scope: !993)
!1015 = !DILocation(line: 230, column: 42, scope: !993)
!1016 = !DILocalVariable(name: "row", scope: !993, file: !1, line: 231, type: !193)
!1017 = !DILocation(line: 231, column: 7, scope: !993)
!1018 = !DILocalVariable(name: "col", scope: !993, file: !1, line: 232, type: !209)
!1019 = !DILocation(line: 232, column: 14, scope: !993)
!1020 = !DILocalVariable(name: "width", scope: !993, file: !1, line: 233, type: !209)
!1021 = !DILocation(line: 233, column: 14, scope: !993)
!1022 = !DILocation(line: 233, column: 22, scope: !993)
!1023 = !DILocation(line: 233, column: 29, scope: !993)
!1024 = !DILocation(line: 235, column: 12, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !993, file: !1, line: 235, column: 3)
!1026 = !DILocation(line: 235, column: 8, scope: !1025)
!1027 = !DILocation(line: 235, column: 17, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1025, file: !1, line: 235, column: 3)
!1029 = !DILocation(line: 235, column: 23, scope: !1028)
!1030 = !DILocation(line: 235, column: 21, scope: !1028)
!1031 = !DILocation(line: 235, column: 3, scope: !1025)
!1032 = !DILocation(line: 236, column: 11, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1028, file: !1, line: 235, column: 40)
!1034 = !DILocation(line: 236, column: 21, scope: !1033)
!1035 = !DILocation(line: 236, column: 9, scope: !1033)
!1036 = !DILocation(line: 237, column: 16, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1033, file: !1, line: 237, column: 5)
!1038 = !DILocation(line: 237, column: 14, scope: !1037)
!1039 = !DILocation(line: 237, column: 10, scope: !1037)
!1040 = !DILocation(line: 237, column: 23, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1037, file: !1, line: 237, column: 5)
!1042 = !DILocation(line: 237, column: 27, scope: !1041)
!1043 = !DILocation(line: 237, column: 5, scope: !1037)
!1044 = !DILocation(line: 239, column: 17, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1041, file: !1, line: 237, column: 39)
!1046 = !DILocation(line: 239, column: 27, scope: !1045)
!1047 = !DILocation(line: 239, column: 46, scope: !1045)
!1048 = !DILocation(line: 240, column: 6, scope: !1045)
!1049 = !DILocation(line: 240, column: 25, scope: !1045)
!1050 = !DILocation(line: 241, column: 6, scope: !1045)
!1051 = !DILocation(line: 241, column: 25, scope: !1045)
!1052 = !DILocation(line: 239, column: 13, scope: !1045)
!1053 = !DILocation(line: 243, column: 15, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1045, file: !1, line: 243, column: 11)
!1055 = !DILocation(line: 243, column: 11, scope: !1054)
!1056 = !DILocation(line: 243, column: 22, scope: !1054)
!1057 = !DILocation(line: 244, column: 4, scope: !1054)
!1058 = !DILocation(line: 244, column: 10, scope: !1054)
!1059 = !DILocation(line: 244, column: 2, scope: !1054)
!1060 = !DILocation(line: 245, column: 11, scope: !1045)
!1061 = !DILocation(line: 246, column: 5, scope: !1045)
!1062 = !DILocation(line: 237, column: 35, scope: !1041)
!1063 = !DILocation(line: 237, column: 5, scope: !1041)
!1064 = distinct !{!1064, !1043, !1065, !689}
!1065 = !DILocation(line: 246, column: 5, scope: !1037)
!1066 = !DILocation(line: 247, column: 3, scope: !1033)
!1067 = !DILocation(line: 235, column: 36, scope: !1028)
!1068 = !DILocation(line: 235, column: 3, scope: !1028)
!1069 = distinct !{!1069, !1031, !1070, !689}
!1070 = !DILocation(line: 247, column: 3, scope: !1025)
!1071 = !DILocation(line: 248, column: 1, scope: !993)
!1072 = distinct !DISubprogram(name: "finish_pass1", scope: !1, file: !1, line: 1143, type: !313, scopeLine: 1144, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !623)
!1073 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1072, file: !1, line: 1143, type: !167)
!1074 = !DILocation(line: 1143, column: 32, scope: !1072)
!1075 = !DILocalVariable(name: "cquantize", scope: !1072, file: !1, line: 1145, type: !155)
!1076 = !DILocation(line: 1145, column: 20, scope: !1072)
!1077 = !DILocation(line: 1145, column: 51, scope: !1072)
!1078 = !DILocation(line: 1145, column: 58, scope: !1072)
!1079 = !DILocation(line: 1148, column: 21, scope: !1072)
!1080 = !DILocation(line: 1148, column: 32, scope: !1072)
!1081 = !DILocation(line: 1148, column: 3, scope: !1072)
!1082 = !DILocation(line: 1148, column: 10, scope: !1072)
!1083 = !DILocation(line: 1148, column: 19, scope: !1072)
!1084 = !DILocation(line: 1149, column: 17, scope: !1072)
!1085 = !DILocation(line: 1149, column: 24, scope: !1072)
!1086 = !DILocation(line: 1149, column: 35, scope: !1072)
!1087 = !DILocation(line: 1149, column: 3, scope: !1072)
!1088 = !DILocation(line: 1151, column: 3, scope: !1072)
!1089 = !DILocation(line: 1151, column: 14, scope: !1072)
!1090 = !DILocation(line: 1151, column: 27, scope: !1072)
!1091 = !DILocation(line: 1152, column: 1, scope: !1072)
!1092 = distinct !DISubprogram(name: "pass2_fs_dither", scope: !1, file: !1, line: 949, type: !575, scopeLine: 952, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !623)
!1093 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1092, file: !1, line: 949, type: !167)
!1094 = !DILocation(line: 949, column: 35, scope: !1092)
!1095 = !DILocalVariable(name: "input_buf", arg: 2, scope: !1092, file: !1, line: 950, type: !202)
!1096 = !DILocation(line: 950, column: 15, scope: !1092)
!1097 = !DILocalVariable(name: "output_buf", arg: 3, scope: !1092, file: !1, line: 950, type: !202)
!1098 = !DILocation(line: 950, column: 37, scope: !1092)
!1099 = !DILocalVariable(name: "num_rows", arg: 4, scope: !1092, file: !1, line: 950, type: !193)
!1100 = !DILocation(line: 950, column: 53, scope: !1092)
!1101 = !DILocalVariable(name: "cquantize", scope: !1092, file: !1, line: 953, type: !155)
!1102 = !DILocation(line: 953, column: 20, scope: !1092)
!1103 = !DILocation(line: 953, column: 51, scope: !1092)
!1104 = !DILocation(line: 953, column: 58, scope: !1092)
!1105 = !DILocalVariable(name: "histogram", scope: !1092, file: !1, line: 954, type: !582)
!1106 = !DILocation(line: 954, column: 10, scope: !1092)
!1107 = !DILocation(line: 954, column: 22, scope: !1092)
!1108 = !DILocation(line: 954, column: 33, scope: !1092)
!1109 = !DILocalVariable(name: "cur0", scope: !1092, file: !1, line: 955, type: !1110)
!1110 = !DIDerivedType(tag: DW_TAG_typedef, name: "LOCFSERROR", file: !1, line: 182, baseType: !193)
!1111 = !DILocation(line: 955, column: 23, scope: !1092)
!1112 = !DILocalVariable(name: "cur1", scope: !1092, file: !1, line: 955, type: !1110)
!1113 = !DILocation(line: 955, column: 29, scope: !1092)
!1114 = !DILocalVariable(name: "cur2", scope: !1092, file: !1, line: 955, type: !1110)
!1115 = !DILocation(line: 955, column: 35, scope: !1092)
!1116 = !DILocalVariable(name: "belowerr0", scope: !1092, file: !1, line: 956, type: !1110)
!1117 = !DILocation(line: 956, column: 14, scope: !1092)
!1118 = !DILocalVariable(name: "belowerr1", scope: !1092, file: !1, line: 956, type: !1110)
!1119 = !DILocation(line: 956, column: 25, scope: !1092)
!1120 = !DILocalVariable(name: "belowerr2", scope: !1092, file: !1, line: 956, type: !1110)
!1121 = !DILocation(line: 956, column: 36, scope: !1092)
!1122 = !DILocalVariable(name: "bpreverr0", scope: !1092, file: !1, line: 957, type: !1110)
!1123 = !DILocation(line: 957, column: 14, scope: !1092)
!1124 = !DILocalVariable(name: "bpreverr1", scope: !1092, file: !1, line: 957, type: !1110)
!1125 = !DILocation(line: 957, column: 25, scope: !1092)
!1126 = !DILocalVariable(name: "bpreverr2", scope: !1092, file: !1, line: 957, type: !1110)
!1127 = !DILocation(line: 957, column: 36, scope: !1092)
!1128 = !DILocalVariable(name: "errorptr", scope: !1092, file: !1, line: 958, type: !593)
!1129 = !DILocation(line: 958, column: 21, scope: !1092)
!1130 = !DILocalVariable(name: "inptr", scope: !1092, file: !1, line: 959, type: !204)
!1131 = !DILocation(line: 959, column: 12, scope: !1092)
!1132 = !DILocalVariable(name: "outptr", scope: !1092, file: !1, line: 960, type: !204)
!1133 = !DILocation(line: 960, column: 12, scope: !1092)
!1134 = !DILocalVariable(name: "cachep", scope: !1092, file: !1, line: 961, type: !1009)
!1135 = !DILocation(line: 961, column: 11, scope: !1092)
!1136 = !DILocalVariable(name: "dir", scope: !1092, file: !1, line: 962, type: !193)
!1137 = !DILocation(line: 962, column: 7, scope: !1092)
!1138 = !DILocalVariable(name: "dir3", scope: !1092, file: !1, line: 963, type: !193)
!1139 = !DILocation(line: 963, column: 7, scope: !1092)
!1140 = !DILocalVariable(name: "row", scope: !1092, file: !1, line: 964, type: !193)
!1141 = !DILocation(line: 964, column: 7, scope: !1092)
!1142 = !DILocalVariable(name: "col", scope: !1092, file: !1, line: 965, type: !209)
!1143 = !DILocation(line: 965, column: 14, scope: !1092)
!1144 = !DILocalVariable(name: "width", scope: !1092, file: !1, line: 966, type: !209)
!1145 = !DILocation(line: 966, column: 14, scope: !1092)
!1146 = !DILocation(line: 966, column: 22, scope: !1092)
!1147 = !DILocation(line: 966, column: 29, scope: !1092)
!1148 = !DILocalVariable(name: "range_limit", scope: !1092, file: !1, line: 967, type: !205)
!1149 = !DILocation(line: 967, column: 12, scope: !1092)
!1150 = !DILocation(line: 967, column: 26, scope: !1092)
!1151 = !DILocation(line: 967, column: 33, scope: !1092)
!1152 = !DILocalVariable(name: "error_limit", scope: !1092, file: !1, line: 968, type: !599)
!1153 = !DILocation(line: 968, column: 8, scope: !1092)
!1154 = !DILocation(line: 968, column: 22, scope: !1092)
!1155 = !DILocation(line: 968, column: 33, scope: !1092)
!1156 = !DILocalVariable(name: "colormap0", scope: !1092, file: !1, line: 969, type: !204)
!1157 = !DILocation(line: 969, column: 12, scope: !1092)
!1158 = !DILocation(line: 969, column: 24, scope: !1092)
!1159 = !DILocation(line: 969, column: 31, scope: !1092)
!1160 = !DILocalVariable(name: "colormap1", scope: !1092, file: !1, line: 970, type: !204)
!1161 = !DILocation(line: 970, column: 12, scope: !1092)
!1162 = !DILocation(line: 970, column: 24, scope: !1092)
!1163 = !DILocation(line: 970, column: 31, scope: !1092)
!1164 = !DILocalVariable(name: "colormap2", scope: !1092, file: !1, line: 971, type: !204)
!1165 = !DILocation(line: 971, column: 12, scope: !1092)
!1166 = !DILocation(line: 971, column: 24, scope: !1092)
!1167 = !DILocation(line: 971, column: 31, scope: !1092)
!1168 = !DILocation(line: 974, column: 12, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1092, file: !1, line: 974, column: 3)
!1170 = !DILocation(line: 974, column: 8, scope: !1169)
!1171 = !DILocation(line: 974, column: 17, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1169, file: !1, line: 974, column: 3)
!1173 = !DILocation(line: 974, column: 23, scope: !1172)
!1174 = !DILocation(line: 974, column: 21, scope: !1172)
!1175 = !DILocation(line: 974, column: 3, scope: !1169)
!1176 = !DILocation(line: 975, column: 13, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1172, file: !1, line: 974, column: 40)
!1178 = !DILocation(line: 975, column: 23, scope: !1177)
!1179 = !DILocation(line: 975, column: 11, scope: !1177)
!1180 = !DILocation(line: 976, column: 14, scope: !1177)
!1181 = !DILocation(line: 976, column: 25, scope: !1177)
!1182 = !DILocation(line: 976, column: 12, scope: !1177)
!1183 = !DILocation(line: 977, column: 9, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1177, file: !1, line: 977, column: 9)
!1185 = !DILocation(line: 977, column: 20, scope: !1184)
!1186 = !DILocation(line: 979, column: 17, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1184, file: !1, line: 977, column: 32)
!1188 = !DILocation(line: 979, column: 22, scope: !1187)
!1189 = !DILocation(line: 979, column: 26, scope: !1187)
!1190 = !DILocation(line: 979, column: 13, scope: !1187)
!1191 = !DILocation(line: 980, column: 17, scope: !1187)
!1192 = !DILocation(line: 980, column: 22, scope: !1187)
!1193 = !DILocation(line: 980, column: 14, scope: !1187)
!1194 = !DILocation(line: 981, column: 11, scope: !1187)
!1195 = !DILocation(line: 982, column: 12, scope: !1187)
!1196 = !DILocation(line: 983, column: 18, scope: !1187)
!1197 = !DILocation(line: 983, column: 29, scope: !1187)
!1198 = !DILocation(line: 983, column: 41, scope: !1187)
!1199 = !DILocation(line: 983, column: 46, scope: !1187)
!1200 = !DILocation(line: 983, column: 49, scope: !1187)
!1201 = !DILocation(line: 983, column: 38, scope: !1187)
!1202 = !DILocation(line: 983, column: 16, scope: !1187)
!1203 = !DILocation(line: 984, column: 7, scope: !1187)
!1204 = !DILocation(line: 984, column: 18, scope: !1187)
!1205 = !DILocation(line: 984, column: 29, scope: !1187)
!1206 = !DILocation(line: 985, column: 5, scope: !1187)
!1207 = !DILocation(line: 987, column: 11, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1184, file: !1, line: 985, column: 12)
!1209 = !DILocation(line: 988, column: 12, scope: !1208)
!1210 = !DILocation(line: 989, column: 18, scope: !1208)
!1211 = !DILocation(line: 989, column: 29, scope: !1208)
!1212 = !DILocation(line: 989, column: 16, scope: !1208)
!1213 = !DILocation(line: 990, column: 7, scope: !1208)
!1214 = !DILocation(line: 990, column: 18, scope: !1208)
!1215 = !DILocation(line: 990, column: 29, scope: !1208)
!1216 = !DILocation(line: 993, column: 24, scope: !1177)
!1217 = !DILocation(line: 993, column: 17, scope: !1177)
!1218 = !DILocation(line: 993, column: 10, scope: !1177)
!1219 = !DILocation(line: 995, column: 39, scope: !1177)
!1220 = !DILocation(line: 995, column: 27, scope: !1177)
!1221 = !DILocation(line: 995, column: 15, scope: !1177)
!1222 = !DILocation(line: 996, column: 39, scope: !1177)
!1223 = !DILocation(line: 996, column: 27, scope: !1177)
!1224 = !DILocation(line: 996, column: 15, scope: !1177)
!1225 = !DILocation(line: 998, column: 16, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1177, file: !1, line: 998, column: 5)
!1227 = !DILocation(line: 998, column: 14, scope: !1226)
!1228 = !DILocation(line: 998, column: 10, scope: !1226)
!1229 = !DILocation(line: 998, column: 23, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1226, file: !1, line: 998, column: 5)
!1231 = !DILocation(line: 998, column: 27, scope: !1230)
!1232 = !DILocation(line: 998, column: 5, scope: !1226)
!1233 = !DILocation(line: 1007, column: 14, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1230, file: !1, line: 998, column: 39)
!1235 = !DILocation(line: 1007, column: 12, scope: !1234)
!1236 = !DILocation(line: 1008, column: 14, scope: !1234)
!1237 = !DILocation(line: 1008, column: 12, scope: !1234)
!1238 = !DILocation(line: 1009, column: 14, scope: !1234)
!1239 = !DILocation(line: 1009, column: 12, scope: !1234)
!1240 = !DILocation(line: 1013, column: 14, scope: !1234)
!1241 = !DILocation(line: 1013, column: 26, scope: !1234)
!1242 = !DILocation(line: 1013, column: 12, scope: !1234)
!1243 = !DILocation(line: 1014, column: 14, scope: !1234)
!1244 = !DILocation(line: 1014, column: 26, scope: !1234)
!1245 = !DILocation(line: 1014, column: 12, scope: !1234)
!1246 = !DILocation(line: 1015, column: 14, scope: !1234)
!1247 = !DILocation(line: 1015, column: 26, scope: !1234)
!1248 = !DILocation(line: 1015, column: 12, scope: !1234)
!1249 = !DILocation(line: 1020, column: 15, scope: !1234)
!1250 = !DILocation(line: 1020, column: 12, scope: !1234)
!1251 = !DILocation(line: 1021, column: 15, scope: !1234)
!1252 = !DILocation(line: 1021, column: 12, scope: !1234)
!1253 = !DILocation(line: 1022, column: 15, scope: !1234)
!1254 = !DILocation(line: 1022, column: 12, scope: !1234)
!1255 = !DILocation(line: 1023, column: 14, scope: !1234)
!1256 = !DILocation(line: 1023, column: 12, scope: !1234)
!1257 = !DILocation(line: 1024, column: 14, scope: !1234)
!1258 = !DILocation(line: 1024, column: 12, scope: !1234)
!1259 = !DILocation(line: 1025, column: 14, scope: !1234)
!1260 = !DILocation(line: 1025, column: 12, scope: !1234)
!1261 = !DILocation(line: 1027, column: 18, scope: !1234)
!1262 = !DILocation(line: 1027, column: 28, scope: !1234)
!1263 = !DILocation(line: 1027, column: 32, scope: !1234)
!1264 = !DILocation(line: 1027, column: 44, scope: !1234)
!1265 = !DILocation(line: 1027, column: 48, scope: !1234)
!1266 = !DILocation(line: 1027, column: 60, scope: !1234)
!1267 = !DILocation(line: 1027, column: 64, scope: !1234)
!1268 = !DILocation(line: 1027, column: 14, scope: !1234)
!1269 = !DILocation(line: 1030, column: 12, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1234, file: !1, line: 1030, column: 11)
!1271 = !DILocation(line: 1030, column: 11, scope: !1270)
!1272 = !DILocation(line: 1030, column: 19, scope: !1270)
!1273 = !DILocation(line: 1031, column: 20, scope: !1270)
!1274 = !DILocation(line: 1031, column: 27, scope: !1270)
!1275 = !DILocation(line: 1031, column: 31, scope: !1270)
!1276 = !DILocation(line: 1031, column: 42, scope: !1270)
!1277 = !DILocation(line: 1031, column: 46, scope: !1270)
!1278 = !DILocation(line: 1031, column: 57, scope: !1270)
!1279 = !DILocation(line: 1031, column: 61, scope: !1270)
!1280 = !DILocation(line: 1031, column: 2, scope: !1270)
!1281 = !DILocalVariable(name: "pixcode", scope: !1282, file: !1, line: 1033, type: !193)
!1282 = distinct !DILexicalBlock(scope: !1234, file: !1, line: 1033, column: 7)
!1283 = !DILocation(line: 1033, column: 22, scope: !1282)
!1284 = !DILocation(line: 1033, column: 33, scope: !1282)
!1285 = !DILocation(line: 1033, column: 32, scope: !1282)
!1286 = !DILocation(line: 1033, column: 40, scope: !1282)
!1287 = !DILocation(line: 1034, column: 22, scope: !1282)
!1288 = !DILocation(line: 1034, column: 12, scope: !1282)
!1289 = !DILocation(line: 1034, column: 3, scope: !1282)
!1290 = !DILocation(line: 1034, column: 10, scope: !1282)
!1291 = !DILocation(line: 1036, column: 10, scope: !1282)
!1292 = !DILocation(line: 1036, column: 7, scope: !1282)
!1293 = !DILocation(line: 1037, column: 10, scope: !1282)
!1294 = !DILocation(line: 1037, column: 7, scope: !1282)
!1295 = !DILocation(line: 1038, column: 10, scope: !1282)
!1296 = !DILocation(line: 1038, column: 7, scope: !1282)
!1297 = !DILocalVariable(name: "bnexterr", scope: !1298, file: !1, line: 1044, type: !1110)
!1298 = distinct !DILexicalBlock(scope: !1234, file: !1, line: 1044, column: 7)
!1299 = !DILocation(line: 1044, column: 29, scope: !1298)
!1300 = !DILocalVariable(name: "delta", scope: !1298, file: !1, line: 1044, type: !1110)
!1301 = !DILocation(line: 1044, column: 39, scope: !1298)
!1302 = !DILocation(line: 1046, column: 13, scope: !1298)
!1303 = !DILocation(line: 1046, column: 11, scope: !1298)
!1304 = !DILocation(line: 1047, column: 10, scope: !1298)
!1305 = !DILocation(line: 1047, column: 15, scope: !1298)
!1306 = !DILocation(line: 1047, column: 8, scope: !1298)
!1307 = !DILocation(line: 1048, column: 10, scope: !1298)
!1308 = !DILocation(line: 1048, column: 7, scope: !1298)
!1309 = !DILocation(line: 1049, column: 27, scope: !1298)
!1310 = !DILocation(line: 1049, column: 39, scope: !1298)
!1311 = !DILocation(line: 1049, column: 37, scope: !1298)
!1312 = !DILocation(line: 1049, column: 16, scope: !1298)
!1313 = !DILocation(line: 1049, column: 2, scope: !1298)
!1314 = !DILocation(line: 1049, column: 14, scope: !1298)
!1315 = !DILocation(line: 1050, column: 10, scope: !1298)
!1316 = !DILocation(line: 1050, column: 7, scope: !1298)
!1317 = !DILocation(line: 1051, column: 14, scope: !1298)
!1318 = !DILocation(line: 1051, column: 26, scope: !1298)
!1319 = !DILocation(line: 1051, column: 24, scope: !1298)
!1320 = !DILocation(line: 1051, column: 12, scope: !1298)
!1321 = !DILocation(line: 1052, column: 14, scope: !1298)
!1322 = !DILocation(line: 1052, column: 12, scope: !1298)
!1323 = !DILocation(line: 1053, column: 10, scope: !1298)
!1324 = !DILocation(line: 1053, column: 7, scope: !1298)
!1325 = !DILocation(line: 1054, column: 13, scope: !1298)
!1326 = !DILocation(line: 1054, column: 11, scope: !1298)
!1327 = !DILocation(line: 1055, column: 10, scope: !1298)
!1328 = !DILocation(line: 1055, column: 15, scope: !1298)
!1329 = !DILocation(line: 1055, column: 8, scope: !1298)
!1330 = !DILocation(line: 1056, column: 10, scope: !1298)
!1331 = !DILocation(line: 1056, column: 7, scope: !1298)
!1332 = !DILocation(line: 1057, column: 27, scope: !1298)
!1333 = !DILocation(line: 1057, column: 39, scope: !1298)
!1334 = !DILocation(line: 1057, column: 37, scope: !1298)
!1335 = !DILocation(line: 1057, column: 16, scope: !1298)
!1336 = !DILocation(line: 1057, column: 2, scope: !1298)
!1337 = !DILocation(line: 1057, column: 14, scope: !1298)
!1338 = !DILocation(line: 1058, column: 10, scope: !1298)
!1339 = !DILocation(line: 1058, column: 7, scope: !1298)
!1340 = !DILocation(line: 1059, column: 14, scope: !1298)
!1341 = !DILocation(line: 1059, column: 26, scope: !1298)
!1342 = !DILocation(line: 1059, column: 24, scope: !1298)
!1343 = !DILocation(line: 1059, column: 12, scope: !1298)
!1344 = !DILocation(line: 1060, column: 14, scope: !1298)
!1345 = !DILocation(line: 1060, column: 12, scope: !1298)
!1346 = !DILocation(line: 1061, column: 10, scope: !1298)
!1347 = !DILocation(line: 1061, column: 7, scope: !1298)
!1348 = !DILocation(line: 1062, column: 13, scope: !1298)
!1349 = !DILocation(line: 1062, column: 11, scope: !1298)
!1350 = !DILocation(line: 1063, column: 10, scope: !1298)
!1351 = !DILocation(line: 1063, column: 15, scope: !1298)
!1352 = !DILocation(line: 1063, column: 8, scope: !1298)
!1353 = !DILocation(line: 1064, column: 10, scope: !1298)
!1354 = !DILocation(line: 1064, column: 7, scope: !1298)
!1355 = !DILocation(line: 1065, column: 27, scope: !1298)
!1356 = !DILocation(line: 1065, column: 39, scope: !1298)
!1357 = !DILocation(line: 1065, column: 37, scope: !1298)
!1358 = !DILocation(line: 1065, column: 16, scope: !1298)
!1359 = !DILocation(line: 1065, column: 2, scope: !1298)
!1360 = !DILocation(line: 1065, column: 14, scope: !1298)
!1361 = !DILocation(line: 1066, column: 10, scope: !1298)
!1362 = !DILocation(line: 1066, column: 7, scope: !1298)
!1363 = !DILocation(line: 1067, column: 14, scope: !1298)
!1364 = !DILocation(line: 1067, column: 26, scope: !1298)
!1365 = !DILocation(line: 1067, column: 24, scope: !1298)
!1366 = !DILocation(line: 1067, column: 12, scope: !1298)
!1367 = !DILocation(line: 1068, column: 14, scope: !1298)
!1368 = !DILocation(line: 1068, column: 12, scope: !1298)
!1369 = !DILocation(line: 1069, column: 10, scope: !1298)
!1370 = !DILocation(line: 1069, column: 7, scope: !1298)
!1371 = !DILocation(line: 1075, column: 16, scope: !1234)
!1372 = !DILocation(line: 1075, column: 13, scope: !1234)
!1373 = !DILocation(line: 1076, column: 17, scope: !1234)
!1374 = !DILocation(line: 1076, column: 14, scope: !1234)
!1375 = !DILocation(line: 1077, column: 19, scope: !1234)
!1376 = !DILocation(line: 1077, column: 16, scope: !1234)
!1377 = !DILocation(line: 1078, column: 5, scope: !1234)
!1378 = !DILocation(line: 998, column: 35, scope: !1230)
!1379 = !DILocation(line: 998, column: 5, scope: !1230)
!1380 = distinct !{!1380, !1232, !1381, !689}
!1381 = !DILocation(line: 1078, column: 5, scope: !1226)
!1382 = !DILocation(line: 1083, column: 29, scope: !1177)
!1383 = !DILocation(line: 1083, column: 19, scope: !1177)
!1384 = !DILocation(line: 1083, column: 5, scope: !1177)
!1385 = !DILocation(line: 1083, column: 17, scope: !1177)
!1386 = !DILocation(line: 1084, column: 29, scope: !1177)
!1387 = !DILocation(line: 1084, column: 19, scope: !1177)
!1388 = !DILocation(line: 1084, column: 5, scope: !1177)
!1389 = !DILocation(line: 1084, column: 17, scope: !1177)
!1390 = !DILocation(line: 1085, column: 29, scope: !1177)
!1391 = !DILocation(line: 1085, column: 19, scope: !1177)
!1392 = !DILocation(line: 1085, column: 5, scope: !1177)
!1393 = !DILocation(line: 1085, column: 17, scope: !1177)
!1394 = !DILocation(line: 1086, column: 3, scope: !1177)
!1395 = !DILocation(line: 974, column: 36, scope: !1172)
!1396 = !DILocation(line: 974, column: 3, scope: !1172)
!1397 = distinct !{!1397, !1175, !1398, !689}
!1398 = !DILocation(line: 1086, column: 3, scope: !1169)
!1399 = !DILocation(line: 1087, column: 1, scope: !1092)
!1400 = distinct !DISubprogram(name: "pass2_no_dither", scope: !1, file: !1, line: 915, type: !575, scopeLine: 918, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !623)
!1401 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1400, file: !1, line: 915, type: !167)
!1402 = !DILocation(line: 915, column: 35, scope: !1400)
!1403 = !DILocalVariable(name: "input_buf", arg: 2, scope: !1400, file: !1, line: 916, type: !202)
!1404 = !DILocation(line: 916, column: 15, scope: !1400)
!1405 = !DILocalVariable(name: "output_buf", arg: 3, scope: !1400, file: !1, line: 916, type: !202)
!1406 = !DILocation(line: 916, column: 37, scope: !1400)
!1407 = !DILocalVariable(name: "num_rows", arg: 4, scope: !1400, file: !1, line: 916, type: !193)
!1408 = !DILocation(line: 916, column: 53, scope: !1400)
!1409 = !DILocalVariable(name: "cquantize", scope: !1400, file: !1, line: 919, type: !155)
!1410 = !DILocation(line: 919, column: 20, scope: !1400)
!1411 = !DILocation(line: 919, column: 51, scope: !1400)
!1412 = !DILocation(line: 919, column: 58, scope: !1400)
!1413 = !DILocalVariable(name: "histogram", scope: !1400, file: !1, line: 920, type: !582)
!1414 = !DILocation(line: 920, column: 10, scope: !1400)
!1415 = !DILocation(line: 920, column: 22, scope: !1400)
!1416 = !DILocation(line: 920, column: 33, scope: !1400)
!1417 = !DILocalVariable(name: "inptr", scope: !1400, file: !1, line: 921, type: !204)
!1418 = !DILocation(line: 921, column: 21, scope: !1400)
!1419 = !DILocalVariable(name: "outptr", scope: !1400, file: !1, line: 921, type: !204)
!1420 = !DILocation(line: 921, column: 28, scope: !1400)
!1421 = !DILocalVariable(name: "cachep", scope: !1400, file: !1, line: 922, type: !1009)
!1422 = !DILocation(line: 922, column: 20, scope: !1400)
!1423 = !DILocalVariable(name: "c0", scope: !1400, file: !1, line: 923, type: !193)
!1424 = !DILocation(line: 923, column: 16, scope: !1400)
!1425 = !DILocalVariable(name: "c1", scope: !1400, file: !1, line: 923, type: !193)
!1426 = !DILocation(line: 923, column: 20, scope: !1400)
!1427 = !DILocalVariable(name: "c2", scope: !1400, file: !1, line: 923, type: !193)
!1428 = !DILocation(line: 923, column: 24, scope: !1400)
!1429 = !DILocalVariable(name: "row", scope: !1400, file: !1, line: 924, type: !193)
!1430 = !DILocation(line: 924, column: 7, scope: !1400)
!1431 = !DILocalVariable(name: "col", scope: !1400, file: !1, line: 925, type: !209)
!1432 = !DILocation(line: 925, column: 14, scope: !1400)
!1433 = !DILocalVariable(name: "width", scope: !1400, file: !1, line: 926, type: !209)
!1434 = !DILocation(line: 926, column: 14, scope: !1400)
!1435 = !DILocation(line: 926, column: 22, scope: !1400)
!1436 = !DILocation(line: 926, column: 29, scope: !1400)
!1437 = !DILocation(line: 928, column: 12, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1400, file: !1, line: 928, column: 3)
!1439 = !DILocation(line: 928, column: 8, scope: !1438)
!1440 = !DILocation(line: 928, column: 17, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1438, file: !1, line: 928, column: 3)
!1442 = !DILocation(line: 928, column: 23, scope: !1441)
!1443 = !DILocation(line: 928, column: 21, scope: !1441)
!1444 = !DILocation(line: 928, column: 3, scope: !1438)
!1445 = !DILocation(line: 929, column: 13, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1441, file: !1, line: 928, column: 40)
!1447 = !DILocation(line: 929, column: 23, scope: !1446)
!1448 = !DILocation(line: 929, column: 11, scope: !1446)
!1449 = !DILocation(line: 930, column: 14, scope: !1446)
!1450 = !DILocation(line: 930, column: 25, scope: !1446)
!1451 = !DILocation(line: 930, column: 12, scope: !1446)
!1452 = !DILocation(line: 931, column: 16, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1446, file: !1, line: 931, column: 5)
!1454 = !DILocation(line: 931, column: 14, scope: !1453)
!1455 = !DILocation(line: 931, column: 10, scope: !1453)
!1456 = !DILocation(line: 931, column: 23, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1453, file: !1, line: 931, column: 5)
!1458 = !DILocation(line: 931, column: 27, scope: !1457)
!1459 = !DILocation(line: 931, column: 5, scope: !1453)
!1460 = !DILocation(line: 933, column: 12, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1457, file: !1, line: 931, column: 39)
!1462 = !DILocation(line: 933, column: 33, scope: !1461)
!1463 = !DILocation(line: 933, column: 10, scope: !1461)
!1464 = !DILocation(line: 934, column: 12, scope: !1461)
!1465 = !DILocation(line: 934, column: 33, scope: !1461)
!1466 = !DILocation(line: 934, column: 10, scope: !1461)
!1467 = !DILocation(line: 935, column: 12, scope: !1461)
!1468 = !DILocation(line: 935, column: 33, scope: !1461)
!1469 = !DILocation(line: 935, column: 10, scope: !1461)
!1470 = !DILocation(line: 936, column: 18, scope: !1461)
!1471 = !DILocation(line: 936, column: 28, scope: !1461)
!1472 = !DILocation(line: 936, column: 32, scope: !1461)
!1473 = !DILocation(line: 936, column: 36, scope: !1461)
!1474 = !DILocation(line: 936, column: 14, scope: !1461)
!1475 = !DILocation(line: 939, column: 12, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1461, file: !1, line: 939, column: 11)
!1477 = !DILocation(line: 939, column: 11, scope: !1476)
!1478 = !DILocation(line: 939, column: 19, scope: !1476)
!1479 = !DILocation(line: 940, column: 20, scope: !1476)
!1480 = !DILocation(line: 940, column: 27, scope: !1476)
!1481 = !DILocation(line: 940, column: 30, scope: !1476)
!1482 = !DILocation(line: 940, column: 33, scope: !1476)
!1483 = !DILocation(line: 940, column: 2, scope: !1476)
!1484 = !DILocation(line: 942, column: 31, scope: !1461)
!1485 = !DILocation(line: 942, column: 30, scope: !1461)
!1486 = !DILocation(line: 942, column: 38, scope: !1461)
!1487 = !DILocation(line: 942, column: 19, scope: !1461)
!1488 = !DILocation(line: 942, column: 14, scope: !1461)
!1489 = !DILocation(line: 942, column: 17, scope: !1461)
!1490 = !DILocation(line: 943, column: 5, scope: !1461)
!1491 = !DILocation(line: 931, column: 35, scope: !1457)
!1492 = !DILocation(line: 931, column: 5, scope: !1457)
!1493 = distinct !{!1493, !1459, !1494, !689}
!1494 = !DILocation(line: 943, column: 5, scope: !1453)
!1495 = !DILocation(line: 944, column: 3, scope: !1446)
!1496 = !DILocation(line: 928, column: 36, scope: !1441)
!1497 = !DILocation(line: 928, column: 3, scope: !1441)
!1498 = distinct !{!1498, !1444, !1499, !689}
!1499 = !DILocation(line: 944, column: 3, scope: !1438)
!1500 = !DILocation(line: 945, column: 1, scope: !1400)
!1501 = distinct !DISubprogram(name: "finish_pass2", scope: !1, file: !1, line: 1156, type: !313, scopeLine: 1157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !623)
!1502 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1501, file: !1, line: 1156, type: !167)
!1503 = !DILocation(line: 1156, column: 32, scope: !1501)
!1504 = !DILocation(line: 1159, column: 1, scope: !1501)
!1505 = distinct !DISubprogram(name: "select_colors", scope: !1, file: !1, line: 539, type: !1506, scopeLine: 541, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !623)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{null, !167, !193}
!1508 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1505, file: !1, line: 539, type: !167)
!1509 = !DILocation(line: 539, column: 33, scope: !1505)
!1510 = !DILocalVariable(name: "desired_colors", arg: 2, scope: !1505, file: !1, line: 539, type: !193)
!1511 = !DILocation(line: 539, column: 44, scope: !1505)
!1512 = !DILocalVariable(name: "boxlist", scope: !1505, file: !1, line: 542, type: !600)
!1513 = !DILocation(line: 542, column: 10, scope: !1505)
!1514 = !DILocalVariable(name: "numboxes", scope: !1505, file: !1, line: 543, type: !193)
!1515 = !DILocation(line: 543, column: 7, scope: !1505)
!1516 = !DILocalVariable(name: "i", scope: !1505, file: !1, line: 544, type: !193)
!1517 = !DILocation(line: 544, column: 7, scope: !1505)
!1518 = !DILocation(line: 547, column: 24, scope: !1505)
!1519 = !DILocation(line: 547, column: 31, scope: !1505)
!1520 = !DILocation(line: 547, column: 36, scope: !1505)
!1521 = !DILocation(line: 548, column: 21, scope: !1505)
!1522 = !DILocation(line: 548, column: 41, scope: !1505)
!1523 = !DILocation(line: 548, column: 56, scope: !1505)
!1524 = !DILocation(line: 547, column: 22, scope: !1505)
!1525 = !DILocation(line: 547, column: 11, scope: !1505)
!1526 = !DILocation(line: 550, column: 12, scope: !1505)
!1527 = !DILocation(line: 551, column: 3, scope: !1505)
!1528 = !DILocation(line: 551, column: 14, scope: !1505)
!1529 = !DILocation(line: 551, column: 20, scope: !1505)
!1530 = !DILocation(line: 552, column: 3, scope: !1505)
!1531 = !DILocation(line: 552, column: 14, scope: !1505)
!1532 = !DILocation(line: 552, column: 20, scope: !1505)
!1533 = !DILocation(line: 553, column: 3, scope: !1505)
!1534 = !DILocation(line: 553, column: 14, scope: !1505)
!1535 = !DILocation(line: 553, column: 20, scope: !1505)
!1536 = !DILocation(line: 554, column: 3, scope: !1505)
!1537 = !DILocation(line: 554, column: 14, scope: !1505)
!1538 = !DILocation(line: 554, column: 20, scope: !1505)
!1539 = !DILocation(line: 555, column: 3, scope: !1505)
!1540 = !DILocation(line: 555, column: 14, scope: !1505)
!1541 = !DILocation(line: 555, column: 20, scope: !1505)
!1542 = !DILocation(line: 556, column: 3, scope: !1505)
!1543 = !DILocation(line: 556, column: 14, scope: !1505)
!1544 = !DILocation(line: 556, column: 20, scope: !1505)
!1545 = !DILocation(line: 558, column: 14, scope: !1505)
!1546 = !DILocation(line: 558, column: 23, scope: !1505)
!1547 = !DILocation(line: 558, column: 3, scope: !1505)
!1548 = !DILocation(line: 560, column: 25, scope: !1505)
!1549 = !DILocation(line: 560, column: 32, scope: !1505)
!1550 = !DILocation(line: 560, column: 41, scope: !1505)
!1551 = !DILocation(line: 560, column: 51, scope: !1505)
!1552 = !DILocation(line: 560, column: 14, scope: !1505)
!1553 = !DILocation(line: 560, column: 12, scope: !1505)
!1554 = !DILocation(line: 562, column: 10, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1505, file: !1, line: 562, column: 3)
!1556 = !DILocation(line: 562, column: 8, scope: !1555)
!1557 = !DILocation(line: 562, column: 15, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1555, file: !1, line: 562, column: 3)
!1559 = !DILocation(line: 562, column: 19, scope: !1558)
!1560 = !DILocation(line: 562, column: 17, scope: !1558)
!1561 = !DILocation(line: 562, column: 3, scope: !1555)
!1562 = !DILocation(line: 563, column: 19, scope: !1558)
!1563 = !DILocation(line: 563, column: 28, scope: !1558)
!1564 = !DILocation(line: 563, column: 36, scope: !1558)
!1565 = !DILocation(line: 563, column: 40, scope: !1558)
!1566 = !DILocation(line: 563, column: 5, scope: !1558)
!1567 = !DILocation(line: 562, column: 30, scope: !1558)
!1568 = !DILocation(line: 562, column: 3, scope: !1558)
!1569 = distinct !{!1569, !1561, !1570, !689}
!1570 = !DILocation(line: 563, column: 41, scope: !1555)
!1571 = !DILocation(line: 564, column: 36, scope: !1505)
!1572 = !DILocation(line: 564, column: 3, scope: !1505)
!1573 = !DILocation(line: 564, column: 10, scope: !1505)
!1574 = !DILocation(line: 564, column: 34, scope: !1505)
!1575 = !DILocation(line: 565, column: 3, scope: !1505)
!1576 = !DILocation(line: 566, column: 1, scope: !1505)
!1577 = distinct !DISubprogram(name: "update_box", scope: !1, file: !1, line: 313, type: !1578, scopeLine: 316, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !623)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{null, !167, !600}
!1580 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1577, file: !1, line: 313, type: !167)
!1581 = !DILocation(line: 313, column: 30, scope: !1577)
!1582 = !DILocalVariable(name: "boxp", arg: 2, scope: !1577, file: !1, line: 313, type: !600)
!1583 = !DILocation(line: 313, column: 44, scope: !1577)
!1584 = !DILocalVariable(name: "cquantize", scope: !1577, file: !1, line: 317, type: !155)
!1585 = !DILocation(line: 317, column: 20, scope: !1577)
!1586 = !DILocation(line: 317, column: 51, scope: !1577)
!1587 = !DILocation(line: 317, column: 58, scope: !1577)
!1588 = !DILocalVariable(name: "histogram", scope: !1577, file: !1, line: 318, type: !582)
!1589 = !DILocation(line: 318, column: 10, scope: !1577)
!1590 = !DILocation(line: 318, column: 22, scope: !1577)
!1591 = !DILocation(line: 318, column: 33, scope: !1577)
!1592 = !DILocalVariable(name: "histp", scope: !1577, file: !1, line: 319, type: !1009)
!1593 = !DILocation(line: 319, column: 11, scope: !1577)
!1594 = !DILocalVariable(name: "c0", scope: !1577, file: !1, line: 320, type: !193)
!1595 = !DILocation(line: 320, column: 7, scope: !1577)
!1596 = !DILocalVariable(name: "c1", scope: !1577, file: !1, line: 320, type: !193)
!1597 = !DILocation(line: 320, column: 10, scope: !1577)
!1598 = !DILocalVariable(name: "c2", scope: !1577, file: !1, line: 320, type: !193)
!1599 = !DILocation(line: 320, column: 13, scope: !1577)
!1600 = !DILocalVariable(name: "c0min", scope: !1577, file: !1, line: 321, type: !193)
!1601 = !DILocation(line: 321, column: 7, scope: !1577)
!1602 = !DILocalVariable(name: "c0max", scope: !1577, file: !1, line: 321, type: !193)
!1603 = !DILocation(line: 321, column: 13, scope: !1577)
!1604 = !DILocalVariable(name: "c1min", scope: !1577, file: !1, line: 321, type: !193)
!1605 = !DILocation(line: 321, column: 19, scope: !1577)
!1606 = !DILocalVariable(name: "c1max", scope: !1577, file: !1, line: 321, type: !193)
!1607 = !DILocation(line: 321, column: 25, scope: !1577)
!1608 = !DILocalVariable(name: "c2min", scope: !1577, file: !1, line: 321, type: !193)
!1609 = !DILocation(line: 321, column: 31, scope: !1577)
!1610 = !DILocalVariable(name: "c2max", scope: !1577, file: !1, line: 321, type: !193)
!1611 = !DILocation(line: 321, column: 37, scope: !1577)
!1612 = !DILocalVariable(name: "dist0", scope: !1577, file: !1, line: 322, type: !612)
!1613 = !DILocation(line: 322, column: 9, scope: !1577)
!1614 = !DILocalVariable(name: "dist1", scope: !1577, file: !1, line: 322, type: !612)
!1615 = !DILocation(line: 322, column: 15, scope: !1577)
!1616 = !DILocalVariable(name: "dist2", scope: !1577, file: !1, line: 322, type: !612)
!1617 = !DILocation(line: 322, column: 21, scope: !1577)
!1618 = !DILocalVariable(name: "ccount", scope: !1577, file: !1, line: 323, type: !254)
!1619 = !DILocation(line: 323, column: 8, scope: !1577)
!1620 = !DILocation(line: 325, column: 11, scope: !1577)
!1621 = !DILocation(line: 325, column: 17, scope: !1577)
!1622 = !DILocation(line: 325, column: 9, scope: !1577)
!1623 = !DILocation(line: 325, column: 33, scope: !1577)
!1624 = !DILocation(line: 325, column: 39, scope: !1577)
!1625 = !DILocation(line: 325, column: 31, scope: !1577)
!1626 = !DILocation(line: 326, column: 11, scope: !1577)
!1627 = !DILocation(line: 326, column: 17, scope: !1577)
!1628 = !DILocation(line: 326, column: 9, scope: !1577)
!1629 = !DILocation(line: 326, column: 33, scope: !1577)
!1630 = !DILocation(line: 326, column: 39, scope: !1577)
!1631 = !DILocation(line: 326, column: 31, scope: !1577)
!1632 = !DILocation(line: 327, column: 11, scope: !1577)
!1633 = !DILocation(line: 327, column: 17, scope: !1577)
!1634 = !DILocation(line: 327, column: 9, scope: !1577)
!1635 = !DILocation(line: 327, column: 33, scope: !1577)
!1636 = !DILocation(line: 327, column: 39, scope: !1577)
!1637 = !DILocation(line: 327, column: 31, scope: !1577)
!1638 = !DILocation(line: 329, column: 7, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1577, file: !1, line: 329, column: 7)
!1640 = !DILocation(line: 329, column: 15, scope: !1639)
!1641 = !DILocation(line: 329, column: 13, scope: !1639)
!1642 = !DILocation(line: 330, column: 15, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1639, file: !1, line: 330, column: 5)
!1644 = !DILocation(line: 330, column: 13, scope: !1643)
!1645 = !DILocation(line: 330, column: 10, scope: !1643)
!1646 = !DILocation(line: 330, column: 22, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1643, file: !1, line: 330, column: 5)
!1648 = !DILocation(line: 330, column: 28, scope: !1647)
!1649 = !DILocation(line: 330, column: 25, scope: !1647)
!1650 = !DILocation(line: 330, column: 5, scope: !1643)
!1651 = !DILocation(line: 331, column: 17, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1647, file: !1, line: 331, column: 7)
!1653 = !DILocation(line: 331, column: 15, scope: !1652)
!1654 = !DILocation(line: 331, column: 12, scope: !1652)
!1655 = !DILocation(line: 331, column: 24, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1652, file: !1, line: 331, column: 7)
!1657 = !DILocation(line: 331, column: 30, scope: !1656)
!1658 = !DILocation(line: 331, column: 27, scope: !1656)
!1659 = !DILocation(line: 331, column: 7, scope: !1652)
!1660 = !DILocation(line: 332, column: 12, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1656, file: !1, line: 331, column: 43)
!1662 = !DILocation(line: 332, column: 22, scope: !1661)
!1663 = !DILocation(line: 332, column: 26, scope: !1661)
!1664 = !DILocation(line: 332, column: 30, scope: !1661)
!1665 = !DILocation(line: 332, column: 8, scope: !1661)
!1666 = !DILocation(line: 333, column: 12, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1661, file: !1, line: 333, column: 2)
!1668 = !DILocation(line: 333, column: 10, scope: !1667)
!1669 = !DILocation(line: 333, column: 7, scope: !1667)
!1670 = !DILocation(line: 333, column: 19, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1667, file: !1, line: 333, column: 2)
!1672 = !DILocation(line: 333, column: 25, scope: !1671)
!1673 = !DILocation(line: 333, column: 22, scope: !1671)
!1674 = !DILocation(line: 333, column: 2, scope: !1667)
!1675 = !DILocation(line: 334, column: 14, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1671, file: !1, line: 334, column: 8)
!1677 = !DILocation(line: 334, column: 8, scope: !1676)
!1678 = !DILocation(line: 334, column: 17, scope: !1676)
!1679 = !DILocation(line: 335, column: 28, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1676, file: !1, line: 334, column: 23)
!1681 = !DILocation(line: 335, column: 26, scope: !1680)
!1682 = !DILocation(line: 335, column: 6, scope: !1680)
!1683 = !DILocation(line: 335, column: 12, scope: !1680)
!1684 = !DILocation(line: 335, column: 18, scope: !1680)
!1685 = !DILocation(line: 336, column: 6, scope: !1680)
!1686 = !DILocation(line: 334, column: 20, scope: !1676)
!1687 = !DILocation(line: 333, column: 34, scope: !1671)
!1688 = !DILocation(line: 333, column: 2, scope: !1671)
!1689 = distinct !{!1689, !1674, !1690, !689}
!1690 = !DILocation(line: 337, column: 4, scope: !1667)
!1691 = !DILocation(line: 338, column: 7, scope: !1661)
!1692 = !DILocation(line: 331, column: 39, scope: !1656)
!1693 = !DILocation(line: 331, column: 7, scope: !1656)
!1694 = distinct !{!1694, !1659, !1695, !689}
!1695 = !DILocation(line: 338, column: 7, scope: !1652)
!1696 = !DILocation(line: 330, column: 37, scope: !1647)
!1697 = !DILocation(line: 330, column: 5, scope: !1647)
!1698 = distinct !{!1698, !1650, !1699, !689}
!1699 = !DILocation(line: 338, column: 7, scope: !1643)
!1700 = !DILabel(scope: !1577, name: "have_c0min", file: !1, line: 339)
!1701 = !DILocation(line: 339, column: 2, scope: !1577)
!1702 = !DILocation(line: 340, column: 7, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1577, file: !1, line: 340, column: 7)
!1704 = !DILocation(line: 340, column: 15, scope: !1703)
!1705 = !DILocation(line: 340, column: 13, scope: !1703)
!1706 = !DILocation(line: 341, column: 15, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1703, file: !1, line: 341, column: 5)
!1708 = !DILocation(line: 341, column: 13, scope: !1707)
!1709 = !DILocation(line: 341, column: 10, scope: !1707)
!1710 = !DILocation(line: 341, column: 22, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1707, file: !1, line: 341, column: 5)
!1712 = !DILocation(line: 341, column: 28, scope: !1711)
!1713 = !DILocation(line: 341, column: 25, scope: !1711)
!1714 = !DILocation(line: 341, column: 5, scope: !1707)
!1715 = !DILocation(line: 342, column: 17, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1711, file: !1, line: 342, column: 7)
!1717 = !DILocation(line: 342, column: 15, scope: !1716)
!1718 = !DILocation(line: 342, column: 12, scope: !1716)
!1719 = !DILocation(line: 342, column: 24, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1716, file: !1, line: 342, column: 7)
!1721 = !DILocation(line: 342, column: 30, scope: !1720)
!1722 = !DILocation(line: 342, column: 27, scope: !1720)
!1723 = !DILocation(line: 342, column: 7, scope: !1716)
!1724 = !DILocation(line: 343, column: 12, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1720, file: !1, line: 342, column: 43)
!1726 = !DILocation(line: 343, column: 22, scope: !1725)
!1727 = !DILocation(line: 343, column: 26, scope: !1725)
!1728 = !DILocation(line: 343, column: 30, scope: !1725)
!1729 = !DILocation(line: 343, column: 8, scope: !1725)
!1730 = !DILocation(line: 344, column: 12, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1725, file: !1, line: 344, column: 2)
!1732 = !DILocation(line: 344, column: 10, scope: !1731)
!1733 = !DILocation(line: 344, column: 7, scope: !1731)
!1734 = !DILocation(line: 344, column: 19, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1731, file: !1, line: 344, column: 2)
!1736 = !DILocation(line: 344, column: 25, scope: !1735)
!1737 = !DILocation(line: 344, column: 22, scope: !1735)
!1738 = !DILocation(line: 344, column: 2, scope: !1731)
!1739 = !DILocation(line: 345, column: 14, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1735, file: !1, line: 345, column: 8)
!1741 = !DILocation(line: 345, column: 8, scope: !1740)
!1742 = !DILocation(line: 345, column: 17, scope: !1740)
!1743 = !DILocation(line: 346, column: 28, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1740, file: !1, line: 345, column: 23)
!1745 = !DILocation(line: 346, column: 26, scope: !1744)
!1746 = !DILocation(line: 346, column: 6, scope: !1744)
!1747 = !DILocation(line: 346, column: 12, scope: !1744)
!1748 = !DILocation(line: 346, column: 18, scope: !1744)
!1749 = !DILocation(line: 347, column: 6, scope: !1744)
!1750 = !DILocation(line: 345, column: 20, scope: !1740)
!1751 = !DILocation(line: 344, column: 34, scope: !1735)
!1752 = !DILocation(line: 344, column: 2, scope: !1735)
!1753 = distinct !{!1753, !1738, !1754, !689}
!1754 = !DILocation(line: 348, column: 4, scope: !1731)
!1755 = !DILocation(line: 349, column: 7, scope: !1725)
!1756 = !DILocation(line: 342, column: 39, scope: !1720)
!1757 = !DILocation(line: 342, column: 7, scope: !1720)
!1758 = distinct !{!1758, !1723, !1759, !689}
!1759 = !DILocation(line: 349, column: 7, scope: !1716)
!1760 = !DILocation(line: 341, column: 37, scope: !1711)
!1761 = !DILocation(line: 341, column: 5, scope: !1711)
!1762 = distinct !{!1762, !1714, !1763, !689}
!1763 = !DILocation(line: 349, column: 7, scope: !1707)
!1764 = !DILabel(scope: !1577, name: "have_c0max", file: !1, line: 350)
!1765 = !DILocation(line: 350, column: 2, scope: !1577)
!1766 = !DILocation(line: 351, column: 7, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1577, file: !1, line: 351, column: 7)
!1768 = !DILocation(line: 351, column: 15, scope: !1767)
!1769 = !DILocation(line: 351, column: 13, scope: !1767)
!1770 = !DILocation(line: 352, column: 15, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1767, file: !1, line: 352, column: 5)
!1772 = !DILocation(line: 352, column: 13, scope: !1771)
!1773 = !DILocation(line: 352, column: 10, scope: !1771)
!1774 = !DILocation(line: 352, column: 22, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1771, file: !1, line: 352, column: 5)
!1776 = !DILocation(line: 352, column: 28, scope: !1775)
!1777 = !DILocation(line: 352, column: 25, scope: !1775)
!1778 = !DILocation(line: 352, column: 5, scope: !1771)
!1779 = !DILocation(line: 353, column: 17, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1775, file: !1, line: 353, column: 7)
!1781 = !DILocation(line: 353, column: 15, scope: !1780)
!1782 = !DILocation(line: 353, column: 12, scope: !1780)
!1783 = !DILocation(line: 353, column: 24, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1780, file: !1, line: 353, column: 7)
!1785 = !DILocation(line: 353, column: 30, scope: !1784)
!1786 = !DILocation(line: 353, column: 27, scope: !1784)
!1787 = !DILocation(line: 353, column: 7, scope: !1780)
!1788 = !DILocation(line: 354, column: 12, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1784, file: !1, line: 353, column: 43)
!1790 = !DILocation(line: 354, column: 22, scope: !1789)
!1791 = !DILocation(line: 354, column: 26, scope: !1789)
!1792 = !DILocation(line: 354, column: 30, scope: !1789)
!1793 = !DILocation(line: 354, column: 8, scope: !1789)
!1794 = !DILocation(line: 355, column: 12, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1789, file: !1, line: 355, column: 2)
!1796 = !DILocation(line: 355, column: 10, scope: !1795)
!1797 = !DILocation(line: 355, column: 7, scope: !1795)
!1798 = !DILocation(line: 355, column: 19, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1795, file: !1, line: 355, column: 2)
!1800 = !DILocation(line: 355, column: 25, scope: !1799)
!1801 = !DILocation(line: 355, column: 22, scope: !1799)
!1802 = !DILocation(line: 355, column: 2, scope: !1795)
!1803 = !DILocation(line: 356, column: 14, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1799, file: !1, line: 356, column: 8)
!1805 = !DILocation(line: 356, column: 8, scope: !1804)
!1806 = !DILocation(line: 356, column: 17, scope: !1804)
!1807 = !DILocation(line: 357, column: 28, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1804, file: !1, line: 356, column: 23)
!1809 = !DILocation(line: 357, column: 26, scope: !1808)
!1810 = !DILocation(line: 357, column: 6, scope: !1808)
!1811 = !DILocation(line: 357, column: 12, scope: !1808)
!1812 = !DILocation(line: 357, column: 18, scope: !1808)
!1813 = !DILocation(line: 358, column: 6, scope: !1808)
!1814 = !DILocation(line: 356, column: 20, scope: !1804)
!1815 = !DILocation(line: 355, column: 34, scope: !1799)
!1816 = !DILocation(line: 355, column: 2, scope: !1799)
!1817 = distinct !{!1817, !1802, !1818, !689}
!1818 = !DILocation(line: 359, column: 4, scope: !1795)
!1819 = !DILocation(line: 360, column: 7, scope: !1789)
!1820 = !DILocation(line: 353, column: 39, scope: !1784)
!1821 = !DILocation(line: 353, column: 7, scope: !1784)
!1822 = distinct !{!1822, !1787, !1823, !689}
!1823 = !DILocation(line: 360, column: 7, scope: !1780)
!1824 = !DILocation(line: 352, column: 37, scope: !1775)
!1825 = !DILocation(line: 352, column: 5, scope: !1775)
!1826 = distinct !{!1826, !1778, !1827, !689}
!1827 = !DILocation(line: 360, column: 7, scope: !1771)
!1828 = !DILabel(scope: !1577, name: "have_c1min", file: !1, line: 361)
!1829 = !DILocation(line: 361, column: 2, scope: !1577)
!1830 = !DILocation(line: 362, column: 7, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1577, file: !1, line: 362, column: 7)
!1832 = !DILocation(line: 362, column: 15, scope: !1831)
!1833 = !DILocation(line: 362, column: 13, scope: !1831)
!1834 = !DILocation(line: 363, column: 15, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1831, file: !1, line: 363, column: 5)
!1836 = !DILocation(line: 363, column: 13, scope: !1835)
!1837 = !DILocation(line: 363, column: 10, scope: !1835)
!1838 = !DILocation(line: 363, column: 22, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1835, file: !1, line: 363, column: 5)
!1840 = !DILocation(line: 363, column: 28, scope: !1839)
!1841 = !DILocation(line: 363, column: 25, scope: !1839)
!1842 = !DILocation(line: 363, column: 5, scope: !1835)
!1843 = !DILocation(line: 364, column: 17, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1839, file: !1, line: 364, column: 7)
!1845 = !DILocation(line: 364, column: 15, scope: !1844)
!1846 = !DILocation(line: 364, column: 12, scope: !1844)
!1847 = !DILocation(line: 364, column: 24, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1844, file: !1, line: 364, column: 7)
!1849 = !DILocation(line: 364, column: 30, scope: !1848)
!1850 = !DILocation(line: 364, column: 27, scope: !1848)
!1851 = !DILocation(line: 364, column: 7, scope: !1844)
!1852 = !DILocation(line: 365, column: 12, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1848, file: !1, line: 364, column: 43)
!1854 = !DILocation(line: 365, column: 22, scope: !1853)
!1855 = !DILocation(line: 365, column: 26, scope: !1853)
!1856 = !DILocation(line: 365, column: 30, scope: !1853)
!1857 = !DILocation(line: 365, column: 8, scope: !1853)
!1858 = !DILocation(line: 366, column: 12, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1853, file: !1, line: 366, column: 2)
!1860 = !DILocation(line: 366, column: 10, scope: !1859)
!1861 = !DILocation(line: 366, column: 7, scope: !1859)
!1862 = !DILocation(line: 366, column: 19, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1859, file: !1, line: 366, column: 2)
!1864 = !DILocation(line: 366, column: 25, scope: !1863)
!1865 = !DILocation(line: 366, column: 22, scope: !1863)
!1866 = !DILocation(line: 366, column: 2, scope: !1859)
!1867 = !DILocation(line: 367, column: 14, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1863, file: !1, line: 367, column: 8)
!1869 = !DILocation(line: 367, column: 8, scope: !1868)
!1870 = !DILocation(line: 367, column: 17, scope: !1868)
!1871 = !DILocation(line: 368, column: 28, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1868, file: !1, line: 367, column: 23)
!1873 = !DILocation(line: 368, column: 26, scope: !1872)
!1874 = !DILocation(line: 368, column: 6, scope: !1872)
!1875 = !DILocation(line: 368, column: 12, scope: !1872)
!1876 = !DILocation(line: 368, column: 18, scope: !1872)
!1877 = !DILocation(line: 369, column: 6, scope: !1872)
!1878 = !DILocation(line: 367, column: 20, scope: !1868)
!1879 = !DILocation(line: 366, column: 34, scope: !1863)
!1880 = !DILocation(line: 366, column: 2, scope: !1863)
!1881 = distinct !{!1881, !1866, !1882, !689}
!1882 = !DILocation(line: 370, column: 4, scope: !1859)
!1883 = !DILocation(line: 371, column: 7, scope: !1853)
!1884 = !DILocation(line: 364, column: 39, scope: !1848)
!1885 = !DILocation(line: 364, column: 7, scope: !1848)
!1886 = distinct !{!1886, !1851, !1887, !689}
!1887 = !DILocation(line: 371, column: 7, scope: !1844)
!1888 = !DILocation(line: 363, column: 37, scope: !1839)
!1889 = !DILocation(line: 363, column: 5, scope: !1839)
!1890 = distinct !{!1890, !1842, !1891, !689}
!1891 = !DILocation(line: 371, column: 7, scope: !1835)
!1892 = !DILabel(scope: !1577, name: "have_c1max", file: !1, line: 372)
!1893 = !DILocation(line: 372, column: 2, scope: !1577)
!1894 = !DILocation(line: 373, column: 7, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1577, file: !1, line: 373, column: 7)
!1896 = !DILocation(line: 373, column: 15, scope: !1895)
!1897 = !DILocation(line: 373, column: 13, scope: !1895)
!1898 = !DILocation(line: 374, column: 15, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1895, file: !1, line: 374, column: 5)
!1900 = !DILocation(line: 374, column: 13, scope: !1899)
!1901 = !DILocation(line: 374, column: 10, scope: !1899)
!1902 = !DILocation(line: 374, column: 22, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1899, file: !1, line: 374, column: 5)
!1904 = !DILocation(line: 374, column: 28, scope: !1903)
!1905 = !DILocation(line: 374, column: 25, scope: !1903)
!1906 = !DILocation(line: 374, column: 5, scope: !1899)
!1907 = !DILocation(line: 375, column: 17, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1903, file: !1, line: 375, column: 7)
!1909 = !DILocation(line: 375, column: 15, scope: !1908)
!1910 = !DILocation(line: 375, column: 12, scope: !1908)
!1911 = !DILocation(line: 375, column: 24, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1908, file: !1, line: 375, column: 7)
!1913 = !DILocation(line: 375, column: 30, scope: !1912)
!1914 = !DILocation(line: 375, column: 27, scope: !1912)
!1915 = !DILocation(line: 375, column: 7, scope: !1908)
!1916 = !DILocation(line: 376, column: 12, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1912, file: !1, line: 375, column: 43)
!1918 = !DILocation(line: 376, column: 22, scope: !1917)
!1919 = !DILocation(line: 376, column: 26, scope: !1917)
!1920 = !DILocation(line: 376, column: 33, scope: !1917)
!1921 = !DILocation(line: 376, column: 8, scope: !1917)
!1922 = !DILocation(line: 377, column: 12, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1917, file: !1, line: 377, column: 2)
!1924 = !DILocation(line: 377, column: 10, scope: !1923)
!1925 = !DILocation(line: 377, column: 7, scope: !1923)
!1926 = !DILocation(line: 377, column: 19, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1923, file: !1, line: 377, column: 2)
!1928 = !DILocation(line: 377, column: 25, scope: !1927)
!1929 = !DILocation(line: 377, column: 22, scope: !1927)
!1930 = !DILocation(line: 377, column: 2, scope: !1923)
!1931 = !DILocation(line: 378, column: 9, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1927, file: !1, line: 378, column: 8)
!1933 = !DILocation(line: 378, column: 8, scope: !1932)
!1934 = !DILocation(line: 378, column: 15, scope: !1932)
!1935 = !DILocation(line: 379, column: 28, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1932, file: !1, line: 378, column: 21)
!1937 = !DILocation(line: 379, column: 26, scope: !1936)
!1938 = !DILocation(line: 379, column: 6, scope: !1936)
!1939 = !DILocation(line: 379, column: 12, scope: !1936)
!1940 = !DILocation(line: 379, column: 18, scope: !1936)
!1941 = !DILocation(line: 380, column: 6, scope: !1936)
!1942 = !DILocation(line: 378, column: 18, scope: !1932)
!1943 = !DILocation(line: 377, column: 34, scope: !1927)
!1944 = !DILocation(line: 377, column: 44, scope: !1927)
!1945 = !DILocation(line: 377, column: 2, scope: !1927)
!1946 = distinct !{!1946, !1930, !1947, !689}
!1947 = !DILocation(line: 381, column: 4, scope: !1923)
!1948 = !DILocation(line: 382, column: 7, scope: !1917)
!1949 = !DILocation(line: 375, column: 39, scope: !1912)
!1950 = !DILocation(line: 375, column: 7, scope: !1912)
!1951 = distinct !{!1951, !1915, !1952, !689}
!1952 = !DILocation(line: 382, column: 7, scope: !1908)
!1953 = !DILocation(line: 374, column: 37, scope: !1903)
!1954 = !DILocation(line: 374, column: 5, scope: !1903)
!1955 = distinct !{!1955, !1906, !1956, !689}
!1956 = !DILocation(line: 382, column: 7, scope: !1899)
!1957 = !DILabel(scope: !1577, name: "have_c2min", file: !1, line: 383)
!1958 = !DILocation(line: 383, column: 2, scope: !1577)
!1959 = !DILocation(line: 384, column: 7, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1577, file: !1, line: 384, column: 7)
!1961 = !DILocation(line: 384, column: 15, scope: !1960)
!1962 = !DILocation(line: 384, column: 13, scope: !1960)
!1963 = !DILocation(line: 385, column: 15, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1960, file: !1, line: 385, column: 5)
!1965 = !DILocation(line: 385, column: 13, scope: !1964)
!1966 = !DILocation(line: 385, column: 10, scope: !1964)
!1967 = !DILocation(line: 385, column: 22, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1964, file: !1, line: 385, column: 5)
!1969 = !DILocation(line: 385, column: 28, scope: !1968)
!1970 = !DILocation(line: 385, column: 25, scope: !1968)
!1971 = !DILocation(line: 385, column: 5, scope: !1964)
!1972 = !DILocation(line: 386, column: 17, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1968, file: !1, line: 386, column: 7)
!1974 = !DILocation(line: 386, column: 15, scope: !1973)
!1975 = !DILocation(line: 386, column: 12, scope: !1973)
!1976 = !DILocation(line: 386, column: 24, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1973, file: !1, line: 386, column: 7)
!1978 = !DILocation(line: 386, column: 30, scope: !1977)
!1979 = !DILocation(line: 386, column: 27, scope: !1977)
!1980 = !DILocation(line: 386, column: 7, scope: !1973)
!1981 = !DILocation(line: 387, column: 12, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1977, file: !1, line: 386, column: 43)
!1983 = !DILocation(line: 387, column: 22, scope: !1982)
!1984 = !DILocation(line: 387, column: 26, scope: !1982)
!1985 = !DILocation(line: 387, column: 33, scope: !1982)
!1986 = !DILocation(line: 387, column: 8, scope: !1982)
!1987 = !DILocation(line: 388, column: 12, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1982, file: !1, line: 388, column: 2)
!1989 = !DILocation(line: 388, column: 10, scope: !1988)
!1990 = !DILocation(line: 388, column: 7, scope: !1988)
!1991 = !DILocation(line: 388, column: 19, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1988, file: !1, line: 388, column: 2)
!1993 = !DILocation(line: 388, column: 25, scope: !1992)
!1994 = !DILocation(line: 388, column: 22, scope: !1992)
!1995 = !DILocation(line: 388, column: 2, scope: !1988)
!1996 = !DILocation(line: 389, column: 9, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1992, file: !1, line: 389, column: 8)
!1998 = !DILocation(line: 389, column: 8, scope: !1997)
!1999 = !DILocation(line: 389, column: 15, scope: !1997)
!2000 = !DILocation(line: 390, column: 28, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1997, file: !1, line: 389, column: 21)
!2002 = !DILocation(line: 390, column: 26, scope: !2001)
!2003 = !DILocation(line: 390, column: 6, scope: !2001)
!2004 = !DILocation(line: 390, column: 12, scope: !2001)
!2005 = !DILocation(line: 390, column: 18, scope: !2001)
!2006 = !DILocation(line: 391, column: 6, scope: !2001)
!2007 = !DILocation(line: 389, column: 18, scope: !1997)
!2008 = !DILocation(line: 388, column: 34, scope: !1992)
!2009 = !DILocation(line: 388, column: 44, scope: !1992)
!2010 = !DILocation(line: 388, column: 2, scope: !1992)
!2011 = distinct !{!2011, !1995, !2012, !689}
!2012 = !DILocation(line: 392, column: 4, scope: !1988)
!2013 = !DILocation(line: 393, column: 7, scope: !1982)
!2014 = !DILocation(line: 386, column: 39, scope: !1977)
!2015 = !DILocation(line: 386, column: 7, scope: !1977)
!2016 = distinct !{!2016, !1980, !2017, !689}
!2017 = !DILocation(line: 393, column: 7, scope: !1973)
!2018 = !DILocation(line: 385, column: 37, scope: !1968)
!2019 = !DILocation(line: 385, column: 5, scope: !1968)
!2020 = distinct !{!2020, !1971, !2021, !689}
!2021 = !DILocation(line: 393, column: 7, scope: !1964)
!2022 = !DILabel(scope: !1577, name: "have_c2max", file: !1, line: 394)
!2023 = !DILocation(line: 394, column: 2, scope: !1577)
!2024 = !DILocation(line: 404, column: 13, scope: !1577)
!2025 = !DILocation(line: 404, column: 21, scope: !1577)
!2026 = !DILocation(line: 404, column: 19, scope: !1577)
!2027 = !DILocation(line: 404, column: 28, scope: !1577)
!2028 = !DILocation(line: 404, column: 41, scope: !1577)
!2029 = !DILocation(line: 404, column: 11, scope: !1577)
!2030 = !DILocation(line: 404, column: 9, scope: !1577)
!2031 = !DILocation(line: 405, column: 13, scope: !1577)
!2032 = !DILocation(line: 405, column: 21, scope: !1577)
!2033 = !DILocation(line: 405, column: 19, scope: !1577)
!2034 = !DILocation(line: 405, column: 28, scope: !1577)
!2035 = !DILocation(line: 405, column: 41, scope: !1577)
!2036 = !DILocation(line: 405, column: 11, scope: !1577)
!2037 = !DILocation(line: 405, column: 9, scope: !1577)
!2038 = !DILocation(line: 406, column: 13, scope: !1577)
!2039 = !DILocation(line: 406, column: 21, scope: !1577)
!2040 = !DILocation(line: 406, column: 19, scope: !1577)
!2041 = !DILocation(line: 406, column: 28, scope: !1577)
!2042 = !DILocation(line: 406, column: 41, scope: !1577)
!2043 = !DILocation(line: 406, column: 11, scope: !1577)
!2044 = !DILocation(line: 406, column: 9, scope: !1577)
!2045 = !DILocation(line: 407, column: 18, scope: !1577)
!2046 = !DILocation(line: 407, column: 24, scope: !1577)
!2047 = !DILocation(line: 407, column: 23, scope: !1577)
!2048 = !DILocation(line: 407, column: 32, scope: !1577)
!2049 = !DILocation(line: 407, column: 38, scope: !1577)
!2050 = !DILocation(line: 407, column: 37, scope: !1577)
!2051 = !DILocation(line: 407, column: 30, scope: !1577)
!2052 = !DILocation(line: 407, column: 46, scope: !1577)
!2053 = !DILocation(line: 407, column: 52, scope: !1577)
!2054 = !DILocation(line: 407, column: 51, scope: !1577)
!2055 = !DILocation(line: 407, column: 44, scope: !1577)
!2056 = !DILocation(line: 407, column: 3, scope: !1577)
!2057 = !DILocation(line: 407, column: 9, scope: !1577)
!2058 = !DILocation(line: 407, column: 16, scope: !1577)
!2059 = !DILocation(line: 410, column: 10, scope: !1577)
!2060 = !DILocation(line: 411, column: 13, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !1577, file: !1, line: 411, column: 3)
!2062 = !DILocation(line: 411, column: 11, scope: !2061)
!2063 = !DILocation(line: 411, column: 8, scope: !2061)
!2064 = !DILocation(line: 411, column: 20, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2061, file: !1, line: 411, column: 3)
!2066 = !DILocation(line: 411, column: 26, scope: !2065)
!2067 = !DILocation(line: 411, column: 23, scope: !2065)
!2068 = !DILocation(line: 411, column: 3, scope: !2061)
!2069 = !DILocation(line: 412, column: 15, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2065, file: !1, line: 412, column: 5)
!2071 = !DILocation(line: 412, column: 13, scope: !2070)
!2072 = !DILocation(line: 412, column: 10, scope: !2070)
!2073 = !DILocation(line: 412, column: 22, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2070, file: !1, line: 412, column: 5)
!2075 = !DILocation(line: 412, column: 28, scope: !2074)
!2076 = !DILocation(line: 412, column: 25, scope: !2074)
!2077 = !DILocation(line: 412, column: 5, scope: !2070)
!2078 = !DILocation(line: 413, column: 17, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2074, file: !1, line: 412, column: 41)
!2080 = !DILocation(line: 413, column: 27, scope: !2079)
!2081 = !DILocation(line: 413, column: 31, scope: !2079)
!2082 = !DILocation(line: 413, column: 35, scope: !2079)
!2083 = !DILocation(line: 413, column: 13, scope: !2079)
!2084 = !DILocation(line: 414, column: 17, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2079, file: !1, line: 414, column: 7)
!2086 = !DILocation(line: 414, column: 15, scope: !2085)
!2087 = !DILocation(line: 414, column: 12, scope: !2085)
!2088 = !DILocation(line: 414, column: 24, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2085, file: !1, line: 414, column: 7)
!2090 = !DILocation(line: 414, column: 30, scope: !2089)
!2091 = !DILocation(line: 414, column: 27, scope: !2089)
!2092 = !DILocation(line: 414, column: 7, scope: !2085)
!2093 = !DILocation(line: 415, column: 7, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2089, file: !1, line: 415, column: 6)
!2095 = !DILocation(line: 415, column: 6, scope: !2094)
!2096 = !DILocation(line: 415, column: 13, scope: !2094)
!2097 = !DILocation(line: 416, column: 10, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2094, file: !1, line: 415, column: 19)
!2099 = !DILocation(line: 417, column: 2, scope: !2098)
!2100 = !DILocation(line: 415, column: 16, scope: !2094)
!2101 = !DILocation(line: 414, column: 39, scope: !2089)
!2102 = !DILocation(line: 414, column: 48, scope: !2089)
!2103 = !DILocation(line: 414, column: 7, scope: !2089)
!2104 = distinct !{!2104, !2092, !2105, !689}
!2105 = !DILocation(line: 417, column: 2, scope: !2085)
!2106 = !DILocation(line: 418, column: 5, scope: !2079)
!2107 = !DILocation(line: 412, column: 37, scope: !2074)
!2108 = !DILocation(line: 412, column: 5, scope: !2074)
!2109 = distinct !{!2109, !2077, !2110, !689}
!2110 = !DILocation(line: 418, column: 5, scope: !2070)
!2111 = !DILocation(line: 411, column: 35, scope: !2065)
!2112 = !DILocation(line: 411, column: 3, scope: !2065)
!2113 = distinct !{!2113, !2068, !2114, !689}
!2114 = !DILocation(line: 418, column: 5, scope: !2061)
!2115 = !DILocation(line: 419, column: 22, scope: !1577)
!2116 = !DILocation(line: 419, column: 3, scope: !1577)
!2117 = !DILocation(line: 419, column: 9, scope: !1577)
!2118 = !DILocation(line: 419, column: 20, scope: !1577)
!2119 = !DILocation(line: 420, column: 1, scope: !1577)
!2120 = distinct !DISubprogram(name: "median_cut", scope: !1, file: !1, line: 424, type: !2121, scopeLine: 427, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !623)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!193, !167, !600, !193, !193}
!2123 = !DILocalVariable(name: "cinfo", arg: 1, scope: !2120, file: !1, line: 424, type: !167)
!2124 = !DILocation(line: 424, column: 30, scope: !2120)
!2125 = !DILocalVariable(name: "boxlist", arg: 2, scope: !2120, file: !1, line: 424, type: !600)
!2126 = !DILocation(line: 424, column: 44, scope: !2120)
!2127 = !DILocalVariable(name: "numboxes", arg: 3, scope: !2120, file: !1, line: 424, type: !193)
!2128 = !DILocation(line: 424, column: 57, scope: !2120)
!2129 = !DILocalVariable(name: "desired_colors", arg: 4, scope: !2120, file: !1, line: 425, type: !193)
!2130 = !DILocation(line: 425, column: 10, scope: !2120)
!2131 = !DILocalVariable(name: "n", scope: !2120, file: !1, line: 428, type: !193)
!2132 = !DILocation(line: 428, column: 7, scope: !2120)
!2133 = !DILocalVariable(name: "lb", scope: !2120, file: !1, line: 428, type: !193)
!2134 = !DILocation(line: 428, column: 9, scope: !2120)
!2135 = !DILocalVariable(name: "c0", scope: !2120, file: !1, line: 429, type: !193)
!2136 = !DILocation(line: 429, column: 7, scope: !2120)
!2137 = !DILocalVariable(name: "c1", scope: !2120, file: !1, line: 429, type: !193)
!2138 = !DILocation(line: 429, column: 10, scope: !2120)
!2139 = !DILocalVariable(name: "c2", scope: !2120, file: !1, line: 429, type: !193)
!2140 = !DILocation(line: 429, column: 13, scope: !2120)
!2141 = !DILocalVariable(name: "cmax", scope: !2120, file: !1, line: 429, type: !193)
!2142 = !DILocation(line: 429, column: 16, scope: !2120)
!2143 = !DILocalVariable(name: "b1", scope: !2120, file: !1, line: 430, type: !600)
!2144 = !DILocation(line: 430, column: 19, scope: !2120)
!2145 = !DILocalVariable(name: "b2", scope: !2120, file: !1, line: 430, type: !600)
!2146 = !DILocation(line: 430, column: 22, scope: !2120)
!2147 = !DILocation(line: 432, column: 3, scope: !2120)
!2148 = !DILocation(line: 432, column: 10, scope: !2120)
!2149 = !DILocation(line: 432, column: 21, scope: !2120)
!2150 = !DILocation(line: 432, column: 19, scope: !2120)
!2151 = !DILocation(line: 436, column: 9, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2153, file: !1, line: 436, column: 9)
!2153 = distinct !DILexicalBlock(scope: !2120, file: !1, line: 432, column: 37)
!2154 = !DILocation(line: 436, column: 17, scope: !2152)
!2155 = !DILocation(line: 436, column: 23, scope: !2152)
!2156 = !DILocation(line: 436, column: 20, scope: !2152)
!2157 = !DILocation(line: 437, column: 35, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2152, file: !1, line: 436, column: 39)
!2159 = !DILocation(line: 437, column: 44, scope: !2158)
!2160 = !DILocation(line: 437, column: 12, scope: !2158)
!2161 = !DILocation(line: 437, column: 10, scope: !2158)
!2162 = !DILocation(line: 438, column: 5, scope: !2158)
!2163 = !DILocation(line: 439, column: 32, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2152, file: !1, line: 438, column: 12)
!2165 = !DILocation(line: 439, column: 41, scope: !2164)
!2166 = !DILocation(line: 439, column: 12, scope: !2164)
!2167 = !DILocation(line: 439, column: 10, scope: !2164)
!2168 = !DILocation(line: 441, column: 9, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2153, file: !1, line: 441, column: 9)
!2170 = !DILocation(line: 441, column: 12, scope: !2169)
!2171 = !DILocation(line: 442, column: 7, scope: !2169)
!2172 = !DILocation(line: 443, column: 11, scope: !2153)
!2173 = !DILocation(line: 443, column: 19, scope: !2153)
!2174 = !DILocation(line: 443, column: 8, scope: !2153)
!2175 = !DILocation(line: 445, column: 17, scope: !2153)
!2176 = !DILocation(line: 445, column: 21, scope: !2153)
!2177 = !DILocation(line: 445, column: 5, scope: !2153)
!2178 = !DILocation(line: 445, column: 9, scope: !2153)
!2179 = !DILocation(line: 445, column: 15, scope: !2153)
!2180 = !DILocation(line: 445, column: 40, scope: !2153)
!2181 = !DILocation(line: 445, column: 44, scope: !2153)
!2182 = !DILocation(line: 445, column: 28, scope: !2153)
!2183 = !DILocation(line: 445, column: 32, scope: !2153)
!2184 = !DILocation(line: 445, column: 38, scope: !2153)
!2185 = !DILocation(line: 445, column: 63, scope: !2153)
!2186 = !DILocation(line: 445, column: 67, scope: !2153)
!2187 = !DILocation(line: 445, column: 51, scope: !2153)
!2188 = !DILocation(line: 445, column: 55, scope: !2153)
!2189 = !DILocation(line: 445, column: 61, scope: !2153)
!2190 = !DILocation(line: 446, column: 17, scope: !2153)
!2191 = !DILocation(line: 446, column: 21, scope: !2153)
!2192 = !DILocation(line: 446, column: 5, scope: !2153)
!2193 = !DILocation(line: 446, column: 9, scope: !2153)
!2194 = !DILocation(line: 446, column: 15, scope: !2153)
!2195 = !DILocation(line: 446, column: 40, scope: !2153)
!2196 = !DILocation(line: 446, column: 44, scope: !2153)
!2197 = !DILocation(line: 446, column: 28, scope: !2153)
!2198 = !DILocation(line: 446, column: 32, scope: !2153)
!2199 = !DILocation(line: 446, column: 38, scope: !2153)
!2200 = !DILocation(line: 446, column: 63, scope: !2153)
!2201 = !DILocation(line: 446, column: 67, scope: !2153)
!2202 = !DILocation(line: 446, column: 51, scope: !2153)
!2203 = !DILocation(line: 446, column: 55, scope: !2153)
!2204 = !DILocation(line: 446, column: 61, scope: !2153)
!2205 = !DILocation(line: 451, column: 12, scope: !2153)
!2206 = !DILocation(line: 451, column: 16, scope: !2153)
!2207 = !DILocation(line: 451, column: 24, scope: !2153)
!2208 = !DILocation(line: 451, column: 28, scope: !2153)
!2209 = !DILocation(line: 451, column: 22, scope: !2153)
!2210 = !DILocation(line: 451, column: 35, scope: !2153)
!2211 = !DILocation(line: 451, column: 48, scope: !2153)
!2212 = !DILocation(line: 451, column: 8, scope: !2153)
!2213 = !DILocation(line: 452, column: 12, scope: !2153)
!2214 = !DILocation(line: 452, column: 16, scope: !2153)
!2215 = !DILocation(line: 452, column: 24, scope: !2153)
!2216 = !DILocation(line: 452, column: 28, scope: !2153)
!2217 = !DILocation(line: 452, column: 22, scope: !2153)
!2218 = !DILocation(line: 452, column: 35, scope: !2153)
!2219 = !DILocation(line: 452, column: 48, scope: !2153)
!2220 = !DILocation(line: 452, column: 8, scope: !2153)
!2221 = !DILocation(line: 453, column: 12, scope: !2153)
!2222 = !DILocation(line: 453, column: 16, scope: !2153)
!2223 = !DILocation(line: 453, column: 24, scope: !2153)
!2224 = !DILocation(line: 453, column: 28, scope: !2153)
!2225 = !DILocation(line: 453, column: 22, scope: !2153)
!2226 = !DILocation(line: 453, column: 35, scope: !2153)
!2227 = !DILocation(line: 453, column: 48, scope: !2153)
!2228 = !DILocation(line: 453, column: 8, scope: !2153)
!2229 = !DILocation(line: 458, column: 12, scope: !2153)
!2230 = !DILocation(line: 458, column: 10, scope: !2153)
!2231 = !DILocation(line: 458, column: 18, scope: !2153)
!2232 = !DILocation(line: 459, column: 9, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2153, file: !1, line: 459, column: 9)
!2234 = !DILocation(line: 459, column: 14, scope: !2233)
!2235 = !DILocation(line: 459, column: 12, scope: !2233)
!2236 = !DILocation(line: 459, column: 29, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2233, file: !1, line: 459, column: 20)
!2238 = !DILocation(line: 459, column: 27, scope: !2237)
!2239 = !DILocation(line: 459, column: 35, scope: !2237)
!2240 = !DILocation(line: 459, column: 40, scope: !2237)
!2241 = !DILocation(line: 460, column: 9, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2153, file: !1, line: 460, column: 9)
!2243 = !DILocation(line: 460, column: 14, scope: !2242)
!2244 = !DILocation(line: 460, column: 12, scope: !2242)
!2245 = !DILocation(line: 460, column: 24, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2242, file: !1, line: 460, column: 20)
!2247 = !DILocation(line: 460, column: 29, scope: !2246)
!2248 = !DILocation(line: 472, column: 13, scope: !2153)
!2249 = !DILocation(line: 472, column: 5, scope: !2153)
!2250 = !DILocation(line: 474, column: 13, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2153, file: !1, line: 472, column: 16)
!2252 = !DILocation(line: 474, column: 17, scope: !2251)
!2253 = !DILocation(line: 474, column: 25, scope: !2251)
!2254 = !DILocation(line: 474, column: 29, scope: !2251)
!2255 = !DILocation(line: 474, column: 23, scope: !2251)
!2256 = !DILocation(line: 474, column: 36, scope: !2251)
!2257 = !DILocation(line: 474, column: 10, scope: !2251)
!2258 = !DILocation(line: 475, column: 19, scope: !2251)
!2259 = !DILocation(line: 475, column: 7, scope: !2251)
!2260 = !DILocation(line: 475, column: 11, scope: !2251)
!2261 = !DILocation(line: 475, column: 17, scope: !2251)
!2262 = !DILocation(line: 476, column: 19, scope: !2251)
!2263 = !DILocation(line: 476, column: 21, scope: !2251)
!2264 = !DILocation(line: 476, column: 7, scope: !2251)
!2265 = !DILocation(line: 476, column: 11, scope: !2251)
!2266 = !DILocation(line: 476, column: 17, scope: !2251)
!2267 = !DILocation(line: 477, column: 7, scope: !2251)
!2268 = !DILocation(line: 479, column: 13, scope: !2251)
!2269 = !DILocation(line: 479, column: 17, scope: !2251)
!2270 = !DILocation(line: 479, column: 25, scope: !2251)
!2271 = !DILocation(line: 479, column: 29, scope: !2251)
!2272 = !DILocation(line: 479, column: 23, scope: !2251)
!2273 = !DILocation(line: 479, column: 36, scope: !2251)
!2274 = !DILocation(line: 479, column: 10, scope: !2251)
!2275 = !DILocation(line: 480, column: 19, scope: !2251)
!2276 = !DILocation(line: 480, column: 7, scope: !2251)
!2277 = !DILocation(line: 480, column: 11, scope: !2251)
!2278 = !DILocation(line: 480, column: 17, scope: !2251)
!2279 = !DILocation(line: 481, column: 19, scope: !2251)
!2280 = !DILocation(line: 481, column: 21, scope: !2251)
!2281 = !DILocation(line: 481, column: 7, scope: !2251)
!2282 = !DILocation(line: 481, column: 11, scope: !2251)
!2283 = !DILocation(line: 481, column: 17, scope: !2251)
!2284 = !DILocation(line: 482, column: 7, scope: !2251)
!2285 = !DILocation(line: 484, column: 13, scope: !2251)
!2286 = !DILocation(line: 484, column: 17, scope: !2251)
!2287 = !DILocation(line: 484, column: 25, scope: !2251)
!2288 = !DILocation(line: 484, column: 29, scope: !2251)
!2289 = !DILocation(line: 484, column: 23, scope: !2251)
!2290 = !DILocation(line: 484, column: 36, scope: !2251)
!2291 = !DILocation(line: 484, column: 10, scope: !2251)
!2292 = !DILocation(line: 485, column: 19, scope: !2251)
!2293 = !DILocation(line: 485, column: 7, scope: !2251)
!2294 = !DILocation(line: 485, column: 11, scope: !2251)
!2295 = !DILocation(line: 485, column: 17, scope: !2251)
!2296 = !DILocation(line: 486, column: 19, scope: !2251)
!2297 = !DILocation(line: 486, column: 21, scope: !2251)
!2298 = !DILocation(line: 486, column: 7, scope: !2251)
!2299 = !DILocation(line: 486, column: 11, scope: !2251)
!2300 = !DILocation(line: 486, column: 17, scope: !2251)
!2301 = !DILocation(line: 487, column: 7, scope: !2251)
!2302 = !DILocation(line: 490, column: 16, scope: !2153)
!2303 = !DILocation(line: 490, column: 23, scope: !2153)
!2304 = !DILocation(line: 490, column: 5, scope: !2153)
!2305 = !DILocation(line: 491, column: 16, scope: !2153)
!2306 = !DILocation(line: 491, column: 23, scope: !2153)
!2307 = !DILocation(line: 491, column: 5, scope: !2153)
!2308 = !DILocation(line: 492, column: 13, scope: !2153)
!2309 = distinct !{!2309, !2147, !2310, !689}
!2310 = !DILocation(line: 493, column: 3, scope: !2120)
!2311 = !DILocation(line: 494, column: 10, scope: !2120)
!2312 = !DILocation(line: 494, column: 3, scope: !2120)
!2313 = distinct !DISubprogram(name: "compute_color", scope: !1, file: !1, line: 499, type: !2314, scopeLine: 501, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !623)
!2314 = !DISubroutineType(types: !2315)
!2315 = !{null, !167, !600, !193}
!2316 = !DILocalVariable(name: "cinfo", arg: 1, scope: !2313, file: !1, line: 499, type: !167)
!2317 = !DILocation(line: 499, column: 33, scope: !2313)
!2318 = !DILocalVariable(name: "boxp", arg: 2, scope: !2313, file: !1, line: 499, type: !600)
!2319 = !DILocation(line: 499, column: 47, scope: !2313)
!2320 = !DILocalVariable(name: "icolor", arg: 3, scope: !2313, file: !1, line: 499, type: !193)
!2321 = !DILocation(line: 499, column: 57, scope: !2313)
!2322 = !DILocalVariable(name: "cquantize", scope: !2313, file: !1, line: 504, type: !155)
!2323 = !DILocation(line: 504, column: 20, scope: !2313)
!2324 = !DILocation(line: 504, column: 51, scope: !2313)
!2325 = !DILocation(line: 504, column: 58, scope: !2313)
!2326 = !DILocalVariable(name: "histogram", scope: !2313, file: !1, line: 505, type: !582)
!2327 = !DILocation(line: 505, column: 10, scope: !2313)
!2328 = !DILocation(line: 505, column: 22, scope: !2313)
!2329 = !DILocation(line: 505, column: 33, scope: !2313)
!2330 = !DILocalVariable(name: "histp", scope: !2313, file: !1, line: 506, type: !1009)
!2331 = !DILocation(line: 506, column: 11, scope: !2313)
!2332 = !DILocalVariable(name: "c0", scope: !2313, file: !1, line: 507, type: !193)
!2333 = !DILocation(line: 507, column: 7, scope: !2313)
!2334 = !DILocalVariable(name: "c1", scope: !2313, file: !1, line: 507, type: !193)
!2335 = !DILocation(line: 507, column: 10, scope: !2313)
!2336 = !DILocalVariable(name: "c2", scope: !2313, file: !1, line: 507, type: !193)
!2337 = !DILocation(line: 507, column: 13, scope: !2313)
!2338 = !DILocalVariable(name: "c0min", scope: !2313, file: !1, line: 508, type: !193)
!2339 = !DILocation(line: 508, column: 7, scope: !2313)
!2340 = !DILocalVariable(name: "c0max", scope: !2313, file: !1, line: 508, type: !193)
!2341 = !DILocation(line: 508, column: 13, scope: !2313)
!2342 = !DILocalVariable(name: "c1min", scope: !2313, file: !1, line: 508, type: !193)
!2343 = !DILocation(line: 508, column: 19, scope: !2313)
!2344 = !DILocalVariable(name: "c1max", scope: !2313, file: !1, line: 508, type: !193)
!2345 = !DILocation(line: 508, column: 25, scope: !2313)
!2346 = !DILocalVariable(name: "c2min", scope: !2313, file: !1, line: 508, type: !193)
!2347 = !DILocation(line: 508, column: 31, scope: !2313)
!2348 = !DILocalVariable(name: "c2max", scope: !2313, file: !1, line: 508, type: !193)
!2349 = !DILocation(line: 508, column: 37, scope: !2313)
!2350 = !DILocalVariable(name: "count", scope: !2313, file: !1, line: 509, type: !254)
!2351 = !DILocation(line: 509, column: 8, scope: !2313)
!2352 = !DILocalVariable(name: "total", scope: !2313, file: !1, line: 510, type: !254)
!2353 = !DILocation(line: 510, column: 8, scope: !2313)
!2354 = !DILocalVariable(name: "c0total", scope: !2313, file: !1, line: 511, type: !254)
!2355 = !DILocation(line: 511, column: 8, scope: !2313)
!2356 = !DILocalVariable(name: "c1total", scope: !2313, file: !1, line: 512, type: !254)
!2357 = !DILocation(line: 512, column: 8, scope: !2313)
!2358 = !DILocalVariable(name: "c2total", scope: !2313, file: !1, line: 513, type: !254)
!2359 = !DILocation(line: 513, column: 8, scope: !2313)
!2360 = !DILocation(line: 515, column: 11, scope: !2313)
!2361 = !DILocation(line: 515, column: 17, scope: !2313)
!2362 = !DILocation(line: 515, column: 9, scope: !2313)
!2363 = !DILocation(line: 515, column: 33, scope: !2313)
!2364 = !DILocation(line: 515, column: 39, scope: !2313)
!2365 = !DILocation(line: 515, column: 31, scope: !2313)
!2366 = !DILocation(line: 516, column: 11, scope: !2313)
!2367 = !DILocation(line: 516, column: 17, scope: !2313)
!2368 = !DILocation(line: 516, column: 9, scope: !2313)
!2369 = !DILocation(line: 516, column: 33, scope: !2313)
!2370 = !DILocation(line: 516, column: 39, scope: !2313)
!2371 = !DILocation(line: 516, column: 31, scope: !2313)
!2372 = !DILocation(line: 517, column: 11, scope: !2313)
!2373 = !DILocation(line: 517, column: 17, scope: !2313)
!2374 = !DILocation(line: 517, column: 9, scope: !2313)
!2375 = !DILocation(line: 517, column: 33, scope: !2313)
!2376 = !DILocation(line: 517, column: 39, scope: !2313)
!2377 = !DILocation(line: 517, column: 31, scope: !2313)
!2378 = !DILocation(line: 519, column: 13, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2313, file: !1, line: 519, column: 3)
!2380 = !DILocation(line: 519, column: 11, scope: !2379)
!2381 = !DILocation(line: 519, column: 8, scope: !2379)
!2382 = !DILocation(line: 519, column: 20, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2379, file: !1, line: 519, column: 3)
!2384 = !DILocation(line: 519, column: 26, scope: !2383)
!2385 = !DILocation(line: 519, column: 23, scope: !2383)
!2386 = !DILocation(line: 519, column: 3, scope: !2379)
!2387 = !DILocation(line: 520, column: 15, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2383, file: !1, line: 520, column: 5)
!2389 = !DILocation(line: 520, column: 13, scope: !2388)
!2390 = !DILocation(line: 520, column: 10, scope: !2388)
!2391 = !DILocation(line: 520, column: 22, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2388, file: !1, line: 520, column: 5)
!2393 = !DILocation(line: 520, column: 28, scope: !2392)
!2394 = !DILocation(line: 520, column: 25, scope: !2392)
!2395 = !DILocation(line: 520, column: 5, scope: !2388)
!2396 = !DILocation(line: 521, column: 17, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2392, file: !1, line: 520, column: 41)
!2398 = !DILocation(line: 521, column: 27, scope: !2397)
!2399 = !DILocation(line: 521, column: 31, scope: !2397)
!2400 = !DILocation(line: 521, column: 35, scope: !2397)
!2401 = !DILocation(line: 521, column: 13, scope: !2397)
!2402 = !DILocation(line: 522, column: 17, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2397, file: !1, line: 522, column: 7)
!2404 = !DILocation(line: 522, column: 15, scope: !2403)
!2405 = !DILocation(line: 522, column: 12, scope: !2403)
!2406 = !DILocation(line: 522, column: 24, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2403, file: !1, line: 522, column: 7)
!2408 = !DILocation(line: 522, column: 30, scope: !2407)
!2409 = !DILocation(line: 522, column: 27, scope: !2407)
!2410 = !DILocation(line: 522, column: 7, scope: !2403)
!2411 = !DILocation(line: 523, column: 21, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2413, file: !1, line: 523, column: 6)
!2413 = distinct !DILexicalBlock(scope: !2407, file: !1, line: 522, column: 43)
!2414 = !DILocation(line: 523, column: 15, scope: !2412)
!2415 = !DILocation(line: 523, column: 13, scope: !2412)
!2416 = !DILocation(line: 523, column: 25, scope: !2412)
!2417 = !DILocation(line: 524, column: 13, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2412, file: !1, line: 523, column: 31)
!2419 = !DILocation(line: 524, column: 10, scope: !2418)
!2420 = !DILocation(line: 525, column: 17, scope: !2418)
!2421 = !DILocation(line: 525, column: 20, scope: !2418)
!2422 = !DILocation(line: 525, column: 33, scope: !2418)
!2423 = !DILocation(line: 525, column: 15, scope: !2418)
!2424 = !DILocation(line: 525, column: 57, scope: !2418)
!2425 = !DILocation(line: 525, column: 55, scope: !2418)
!2426 = !DILocation(line: 525, column: 12, scope: !2418)
!2427 = !DILocation(line: 526, column: 17, scope: !2418)
!2428 = !DILocation(line: 526, column: 20, scope: !2418)
!2429 = !DILocation(line: 526, column: 33, scope: !2418)
!2430 = !DILocation(line: 526, column: 15, scope: !2418)
!2431 = !DILocation(line: 526, column: 57, scope: !2418)
!2432 = !DILocation(line: 526, column: 55, scope: !2418)
!2433 = !DILocation(line: 526, column: 12, scope: !2418)
!2434 = !DILocation(line: 527, column: 17, scope: !2418)
!2435 = !DILocation(line: 527, column: 20, scope: !2418)
!2436 = !DILocation(line: 527, column: 33, scope: !2418)
!2437 = !DILocation(line: 527, column: 15, scope: !2418)
!2438 = !DILocation(line: 527, column: 57, scope: !2418)
!2439 = !DILocation(line: 527, column: 55, scope: !2418)
!2440 = !DILocation(line: 527, column: 12, scope: !2418)
!2441 = !DILocation(line: 528, column: 2, scope: !2418)
!2442 = !DILocation(line: 529, column: 7, scope: !2413)
!2443 = !DILocation(line: 522, column: 39, scope: !2407)
!2444 = !DILocation(line: 522, column: 7, scope: !2407)
!2445 = distinct !{!2445, !2410, !2446, !689}
!2446 = !DILocation(line: 529, column: 7, scope: !2403)
!2447 = !DILocation(line: 530, column: 5, scope: !2397)
!2448 = !DILocation(line: 520, column: 37, scope: !2392)
!2449 = !DILocation(line: 520, column: 5, scope: !2392)
!2450 = distinct !{!2450, !2395, !2451, !689}
!2451 = !DILocation(line: 530, column: 5, scope: !2388)
!2452 = !DILocation(line: 519, column: 35, scope: !2383)
!2453 = !DILocation(line: 519, column: 3, scope: !2383)
!2454 = distinct !{!2454, !2386, !2455, !689}
!2455 = !DILocation(line: 530, column: 5, scope: !2379)
!2456 = !DILocation(line: 532, column: 44, scope: !2313)
!2457 = !DILocation(line: 532, column: 55, scope: !2313)
!2458 = !DILocation(line: 532, column: 60, scope: !2313)
!2459 = !DILocation(line: 532, column: 52, scope: !2313)
!2460 = !DILocation(line: 532, column: 68, scope: !2313)
!2461 = !DILocation(line: 532, column: 66, scope: !2313)
!2462 = !DILocation(line: 532, column: 32, scope: !2313)
!2463 = !DILocation(line: 532, column: 3, scope: !2313)
!2464 = !DILocation(line: 532, column: 10, scope: !2313)
!2465 = !DILocation(line: 532, column: 22, scope: !2313)
!2466 = !DILocation(line: 532, column: 30, scope: !2313)
!2467 = !DILocation(line: 533, column: 44, scope: !2313)
!2468 = !DILocation(line: 533, column: 55, scope: !2313)
!2469 = !DILocation(line: 533, column: 60, scope: !2313)
!2470 = !DILocation(line: 533, column: 52, scope: !2313)
!2471 = !DILocation(line: 533, column: 68, scope: !2313)
!2472 = !DILocation(line: 533, column: 66, scope: !2313)
!2473 = !DILocation(line: 533, column: 32, scope: !2313)
!2474 = !DILocation(line: 533, column: 3, scope: !2313)
!2475 = !DILocation(line: 533, column: 10, scope: !2313)
!2476 = !DILocation(line: 533, column: 22, scope: !2313)
!2477 = !DILocation(line: 533, column: 30, scope: !2313)
!2478 = !DILocation(line: 534, column: 44, scope: !2313)
!2479 = !DILocation(line: 534, column: 55, scope: !2313)
!2480 = !DILocation(line: 534, column: 60, scope: !2313)
!2481 = !DILocation(line: 534, column: 52, scope: !2313)
!2482 = !DILocation(line: 534, column: 68, scope: !2313)
!2483 = !DILocation(line: 534, column: 66, scope: !2313)
!2484 = !DILocation(line: 534, column: 32, scope: !2313)
!2485 = !DILocation(line: 534, column: 3, scope: !2313)
!2486 = !DILocation(line: 534, column: 10, scope: !2313)
!2487 = !DILocation(line: 534, column: 22, scope: !2313)
!2488 = !DILocation(line: 534, column: 30, scope: !2313)
!2489 = !DILocation(line: 535, column: 1, scope: !2313)
!2490 = distinct !DISubprogram(name: "find_biggest_color_pop", scope: !1, file: !1, line: 273, type: !2491, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !623)
!2491 = !DISubroutineType(types: !2492)
!2492 = !{!600, !600, !193}
!2493 = !DILocalVariable(name: "boxlist", arg: 1, scope: !2490, file: !1, line: 273, type: !600)
!2494 = !DILocation(line: 273, column: 32, scope: !2490)
!2495 = !DILocalVariable(name: "numboxes", arg: 2, scope: !2490, file: !1, line: 273, type: !193)
!2496 = !DILocation(line: 273, column: 45, scope: !2490)
!2497 = !DILocalVariable(name: "boxp", scope: !2490, file: !1, line: 277, type: !600)
!2498 = !DILocation(line: 277, column: 19, scope: !2490)
!2499 = !DILocalVariable(name: "i", scope: !2490, file: !1, line: 278, type: !193)
!2500 = !DILocation(line: 278, column: 16, scope: !2490)
!2501 = !DILocalVariable(name: "maxc", scope: !2490, file: !1, line: 279, type: !254)
!2502 = !DILocation(line: 279, column: 17, scope: !2490)
!2503 = !DILocalVariable(name: "which", scope: !2490, file: !1, line: 280, type: !600)
!2504 = !DILocation(line: 280, column: 10, scope: !2490)
!2505 = !DILocation(line: 282, column: 10, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2490, file: !1, line: 282, column: 3)
!2507 = !DILocation(line: 282, column: 22, scope: !2506)
!2508 = !DILocation(line: 282, column: 20, scope: !2506)
!2509 = !DILocation(line: 282, column: 8, scope: !2506)
!2510 = !DILocation(line: 282, column: 31, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2506, file: !1, line: 282, column: 3)
!2512 = !DILocation(line: 282, column: 35, scope: !2511)
!2513 = !DILocation(line: 282, column: 33, scope: !2511)
!2514 = !DILocation(line: 282, column: 3, scope: !2506)
!2515 = !DILocation(line: 283, column: 9, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2517, file: !1, line: 283, column: 9)
!2517 = distinct !DILexicalBlock(scope: !2511, file: !1, line: 282, column: 58)
!2518 = !DILocation(line: 283, column: 15, scope: !2516)
!2519 = !DILocation(line: 283, column: 28, scope: !2516)
!2520 = !DILocation(line: 283, column: 26, scope: !2516)
!2521 = !DILocation(line: 283, column: 33, scope: !2516)
!2522 = !DILocation(line: 283, column: 36, scope: !2516)
!2523 = !DILocation(line: 283, column: 42, scope: !2516)
!2524 = !DILocation(line: 283, column: 49, scope: !2516)
!2525 = !DILocation(line: 284, column: 15, scope: !2526)
!2526 = distinct !DILexicalBlock(scope: !2516, file: !1, line: 283, column: 54)
!2527 = !DILocation(line: 284, column: 13, scope: !2526)
!2528 = !DILocation(line: 285, column: 14, scope: !2526)
!2529 = !DILocation(line: 285, column: 20, scope: !2526)
!2530 = !DILocation(line: 285, column: 12, scope: !2526)
!2531 = !DILocation(line: 286, column: 5, scope: !2526)
!2532 = !DILocation(line: 287, column: 3, scope: !2517)
!2533 = !DILocation(line: 282, column: 46, scope: !2511)
!2534 = !DILocation(line: 282, column: 54, scope: !2511)
!2535 = !DILocation(line: 282, column: 3, scope: !2511)
!2536 = distinct !{!2536, !2514, !2537, !689}
!2537 = !DILocation(line: 287, column: 3, scope: !2506)
!2538 = !DILocation(line: 288, column: 10, scope: !2490)
!2539 = !DILocation(line: 288, column: 3, scope: !2490)
!2540 = distinct !DISubprogram(name: "find_biggest_volume", scope: !1, file: !1, line: 293, type: !2491, scopeLine: 296, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !623)
!2541 = !DILocalVariable(name: "boxlist", arg: 1, scope: !2540, file: !1, line: 293, type: !600)
!2542 = !DILocation(line: 293, column: 29, scope: !2540)
!2543 = !DILocalVariable(name: "numboxes", arg: 2, scope: !2540, file: !1, line: 293, type: !193)
!2544 = !DILocation(line: 293, column: 42, scope: !2540)
!2545 = !DILocalVariable(name: "boxp", scope: !2540, file: !1, line: 297, type: !600)
!2546 = !DILocation(line: 297, column: 19, scope: !2540)
!2547 = !DILocalVariable(name: "i", scope: !2540, file: !1, line: 298, type: !193)
!2548 = !DILocation(line: 298, column: 16, scope: !2540)
!2549 = !DILocalVariable(name: "maxv", scope: !2540, file: !1, line: 299, type: !612)
!2550 = !DILocation(line: 299, column: 18, scope: !2540)
!2551 = !DILocalVariable(name: "which", scope: !2540, file: !1, line: 300, type: !600)
!2552 = !DILocation(line: 300, column: 10, scope: !2540)
!2553 = !DILocation(line: 302, column: 10, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2540, file: !1, line: 302, column: 3)
!2555 = !DILocation(line: 302, column: 22, scope: !2554)
!2556 = !DILocation(line: 302, column: 20, scope: !2554)
!2557 = !DILocation(line: 302, column: 8, scope: !2554)
!2558 = !DILocation(line: 302, column: 31, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2554, file: !1, line: 302, column: 3)
!2560 = !DILocation(line: 302, column: 35, scope: !2559)
!2561 = !DILocation(line: 302, column: 33, scope: !2559)
!2562 = !DILocation(line: 302, column: 3, scope: !2554)
!2563 = !DILocation(line: 303, column: 9, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2565, file: !1, line: 303, column: 9)
!2565 = distinct !DILexicalBlock(scope: !2559, file: !1, line: 302, column: 58)
!2566 = !DILocation(line: 303, column: 15, scope: !2564)
!2567 = !DILocation(line: 303, column: 24, scope: !2564)
!2568 = !DILocation(line: 303, column: 22, scope: !2564)
!2569 = !DILocation(line: 304, column: 15, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2564, file: !1, line: 303, column: 30)
!2571 = !DILocation(line: 304, column: 13, scope: !2570)
!2572 = !DILocation(line: 305, column: 14, scope: !2570)
!2573 = !DILocation(line: 305, column: 20, scope: !2570)
!2574 = !DILocation(line: 305, column: 12, scope: !2570)
!2575 = !DILocation(line: 306, column: 5, scope: !2570)
!2576 = !DILocation(line: 307, column: 3, scope: !2565)
!2577 = !DILocation(line: 302, column: 46, scope: !2559)
!2578 = !DILocation(line: 302, column: 54, scope: !2559)
!2579 = !DILocation(line: 302, column: 3, scope: !2559)
!2580 = distinct !{!2580, !2562, !2581, !689}
!2581 = !DILocation(line: 307, column: 3, scope: !2554)
!2582 = !DILocation(line: 308, column: 10, scope: !2540)
!2583 = !DILocation(line: 308, column: 3, scope: !2540)
!2584 = distinct !DISubprogram(name: "fill_inverse_cmap", scope: !1, file: !1, line: 855, type: !2585, scopeLine: 859, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !623)
!2585 = !DISubroutineType(types: !2586)
!2586 = !{null, !167, !193, !193, !193}
!2587 = !DILocalVariable(name: "cinfo", arg: 1, scope: !2584, file: !1, line: 855, type: !167)
!2588 = !DILocation(line: 855, column: 37, scope: !2584)
!2589 = !DILocalVariable(name: "c0", arg: 2, scope: !2584, file: !1, line: 855, type: !193)
!2590 = !DILocation(line: 855, column: 48, scope: !2584)
!2591 = !DILocalVariable(name: "c1", arg: 3, scope: !2584, file: !1, line: 855, type: !193)
!2592 = !DILocation(line: 855, column: 56, scope: !2584)
!2593 = !DILocalVariable(name: "c2", arg: 4, scope: !2584, file: !1, line: 855, type: !193)
!2594 = !DILocation(line: 855, column: 64, scope: !2584)
!2595 = !DILocalVariable(name: "cquantize", scope: !2584, file: !1, line: 860, type: !155)
!2596 = !DILocation(line: 860, column: 20, scope: !2584)
!2597 = !DILocation(line: 860, column: 51, scope: !2584)
!2598 = !DILocation(line: 860, column: 58, scope: !2584)
!2599 = !DILocalVariable(name: "histogram", scope: !2584, file: !1, line: 861, type: !582)
!2600 = !DILocation(line: 861, column: 10, scope: !2584)
!2601 = !DILocation(line: 861, column: 22, scope: !2584)
!2602 = !DILocation(line: 861, column: 33, scope: !2584)
!2603 = !DILocalVariable(name: "minc0", scope: !2584, file: !1, line: 862, type: !193)
!2604 = !DILocation(line: 862, column: 7, scope: !2584)
!2605 = !DILocalVariable(name: "minc1", scope: !2584, file: !1, line: 862, type: !193)
!2606 = !DILocation(line: 862, column: 14, scope: !2584)
!2607 = !DILocalVariable(name: "minc2", scope: !2584, file: !1, line: 862, type: !193)
!2608 = !DILocation(line: 862, column: 21, scope: !2584)
!2609 = !DILocalVariable(name: "ic0", scope: !2584, file: !1, line: 863, type: !193)
!2610 = !DILocation(line: 863, column: 7, scope: !2584)
!2611 = !DILocalVariable(name: "ic1", scope: !2584, file: !1, line: 863, type: !193)
!2612 = !DILocation(line: 863, column: 12, scope: !2584)
!2613 = !DILocalVariable(name: "ic2", scope: !2584, file: !1, line: 863, type: !193)
!2614 = !DILocation(line: 863, column: 17, scope: !2584)
!2615 = !DILocalVariable(name: "cptr", scope: !2584, file: !1, line: 864, type: !205)
!2616 = !DILocation(line: 864, column: 22, scope: !2584)
!2617 = !DILocalVariable(name: "cachep", scope: !2584, file: !1, line: 865, type: !1009)
!2618 = !DILocation(line: 865, column: 20, scope: !2584)
!2619 = !DILocalVariable(name: "colorlist", scope: !2584, file: !1, line: 867, type: !2620)
!2620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 2048, elements: !393)
!2621 = !DILocation(line: 867, column: 11, scope: !2584)
!2622 = !DILocalVariable(name: "numcolors", scope: !2584, file: !1, line: 868, type: !193)
!2623 = !DILocation(line: 868, column: 7, scope: !2584)
!2624 = !DILocalVariable(name: "bestcolor", scope: !2584, file: !1, line: 870, type: !2625)
!2625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 1024, elements: !2626)
!2626 = !{!2627}
!2627 = !DISubrange(count: 128)
!2628 = !DILocation(line: 870, column: 11, scope: !2584)
!2629 = !DILocation(line: 873, column: 6, scope: !2584)
!2630 = !DILocation(line: 874, column: 6, scope: !2584)
!2631 = !DILocation(line: 875, column: 6, scope: !2584)
!2632 = !DILocation(line: 881, column: 12, scope: !2584)
!2633 = !DILocation(line: 881, column: 15, scope: !2584)
!2634 = !DILocation(line: 881, column: 32, scope: !2584)
!2635 = !DILocation(line: 881, column: 9, scope: !2584)
!2636 = !DILocation(line: 882, column: 12, scope: !2584)
!2637 = !DILocation(line: 882, column: 15, scope: !2584)
!2638 = !DILocation(line: 882, column: 32, scope: !2584)
!2639 = !DILocation(line: 882, column: 9, scope: !2584)
!2640 = !DILocation(line: 883, column: 12, scope: !2584)
!2641 = !DILocation(line: 883, column: 15, scope: !2584)
!2642 = !DILocation(line: 883, column: 32, scope: !2584)
!2643 = !DILocation(line: 883, column: 9, scope: !2584)
!2644 = !DILocation(line: 888, column: 34, scope: !2584)
!2645 = !DILocation(line: 888, column: 41, scope: !2584)
!2646 = !DILocation(line: 888, column: 48, scope: !2584)
!2647 = !DILocation(line: 888, column: 55, scope: !2584)
!2648 = !DILocation(line: 888, column: 62, scope: !2584)
!2649 = !DILocation(line: 888, column: 15, scope: !2584)
!2650 = !DILocation(line: 888, column: 13, scope: !2584)
!2651 = !DILocation(line: 891, column: 20, scope: !2584)
!2652 = !DILocation(line: 891, column: 27, scope: !2584)
!2653 = !DILocation(line: 891, column: 34, scope: !2584)
!2654 = !DILocation(line: 891, column: 41, scope: !2584)
!2655 = !DILocation(line: 891, column: 48, scope: !2584)
!2656 = !DILocation(line: 891, column: 59, scope: !2584)
!2657 = !DILocation(line: 892, column: 6, scope: !2584)
!2658 = !DILocation(line: 891, column: 3, scope: !2584)
!2659 = !DILocation(line: 895, column: 6, scope: !2584)
!2660 = !DILocation(line: 896, column: 6, scope: !2584)
!2661 = !DILocation(line: 897, column: 6, scope: !2584)
!2662 = !DILocation(line: 898, column: 10, scope: !2584)
!2663 = !DILocation(line: 898, column: 8, scope: !2584)
!2664 = !DILocation(line: 899, column: 12, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2584, file: !1, line: 899, column: 3)
!2666 = !DILocation(line: 899, column: 8, scope: !2665)
!2667 = !DILocation(line: 899, column: 17, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2665, file: !1, line: 899, column: 3)
!2669 = !DILocation(line: 899, column: 21, scope: !2668)
!2670 = !DILocation(line: 899, column: 3, scope: !2665)
!2671 = !DILocation(line: 900, column: 14, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2673, file: !1, line: 900, column: 5)
!2673 = distinct !DILexicalBlock(scope: !2668, file: !1, line: 899, column: 44)
!2674 = !DILocation(line: 900, column: 10, scope: !2672)
!2675 = !DILocation(line: 900, column: 19, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2672, file: !1, line: 900, column: 5)
!2677 = !DILocation(line: 900, column: 23, scope: !2676)
!2678 = !DILocation(line: 900, column: 5, scope: !2672)
!2679 = !DILocation(line: 901, column: 18, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2676, file: !1, line: 900, column: 46)
!2681 = !DILocation(line: 901, column: 28, scope: !2680)
!2682 = !DILocation(line: 901, column: 31, scope: !2680)
!2683 = !DILocation(line: 901, column: 30, scope: !2680)
!2684 = !DILocation(line: 901, column: 36, scope: !2680)
!2685 = !DILocation(line: 901, column: 39, scope: !2680)
!2686 = !DILocation(line: 901, column: 38, scope: !2680)
!2687 = !DILocation(line: 901, column: 44, scope: !2680)
!2688 = !DILocation(line: 901, column: 14, scope: !2680)
!2689 = !DILocation(line: 902, column: 16, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2680, file: !1, line: 902, column: 7)
!2691 = !DILocation(line: 902, column: 12, scope: !2690)
!2692 = !DILocation(line: 902, column: 21, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2690, file: !1, line: 902, column: 7)
!2694 = !DILocation(line: 902, column: 25, scope: !2693)
!2695 = !DILocation(line: 902, column: 7, scope: !2690)
!2696 = !DILocation(line: 903, column: 26, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2693, file: !1, line: 902, column: 48)
!2698 = !DILocation(line: 903, column: 46, scope: !2697)
!2699 = !DILocation(line: 903, column: 14, scope: !2697)
!2700 = !DILocation(line: 903, column: 9, scope: !2697)
!2701 = !DILocation(line: 903, column: 12, scope: !2697)
!2702 = !DILocation(line: 904, column: 7, scope: !2697)
!2703 = !DILocation(line: 902, column: 44, scope: !2693)
!2704 = !DILocation(line: 902, column: 7, scope: !2693)
!2705 = distinct !{!2705, !2695, !2706, !689}
!2706 = !DILocation(line: 904, column: 7, scope: !2690)
!2707 = !DILocation(line: 905, column: 5, scope: !2680)
!2708 = !DILocation(line: 900, column: 42, scope: !2676)
!2709 = !DILocation(line: 900, column: 5, scope: !2676)
!2710 = distinct !{!2710, !2678, !2711, !689}
!2711 = !DILocation(line: 905, column: 5, scope: !2672)
!2712 = !DILocation(line: 906, column: 3, scope: !2673)
!2713 = !DILocation(line: 899, column: 40, scope: !2668)
!2714 = !DILocation(line: 899, column: 3, scope: !2668)
!2715 = distinct !{!2715, !2670, !2716, !689}
!2716 = !DILocation(line: 906, column: 3, scope: !2665)
!2717 = !DILocation(line: 907, column: 1, scope: !2584)
!2718 = distinct !DISubprogram(name: "find_nearby_colors", scope: !1, file: !1, line: 646, type: !2719, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !623)
!2719 = !DISubroutineType(types: !2720)
!2720 = !{!193, !167, !193, !193, !193, !205}
!2721 = !DILocalVariable(name: "cinfo", arg: 1, scope: !2718, file: !1, line: 646, type: !167)
!2722 = !DILocation(line: 646, column: 38, scope: !2718)
!2723 = !DILocalVariable(name: "minc0", arg: 2, scope: !2718, file: !1, line: 646, type: !193)
!2724 = !DILocation(line: 646, column: 49, scope: !2718)
!2725 = !DILocalVariable(name: "minc1", arg: 3, scope: !2718, file: !1, line: 646, type: !193)
!2726 = !DILocation(line: 646, column: 60, scope: !2718)
!2727 = !DILocalVariable(name: "minc2", arg: 4, scope: !2718, file: !1, line: 646, type: !193)
!2728 = !DILocation(line: 646, column: 71, scope: !2718)
!2729 = !DILocalVariable(name: "colorlist", arg: 5, scope: !2718, file: !1, line: 647, type: !205)
!2730 = !DILocation(line: 647, column: 15, scope: !2718)
!2731 = !DILocalVariable(name: "numcolors", scope: !2718, file: !1, line: 657, type: !193)
!2732 = !DILocation(line: 657, column: 7, scope: !2718)
!2733 = !DILocation(line: 657, column: 19, scope: !2718)
!2734 = !DILocation(line: 657, column: 26, scope: !2718)
!2735 = !DILocalVariable(name: "maxc0", scope: !2718, file: !1, line: 658, type: !193)
!2736 = !DILocation(line: 658, column: 7, scope: !2718)
!2737 = !DILocalVariable(name: "maxc1", scope: !2718, file: !1, line: 658, type: !193)
!2738 = !DILocation(line: 658, column: 14, scope: !2718)
!2739 = !DILocalVariable(name: "maxc2", scope: !2718, file: !1, line: 658, type: !193)
!2740 = !DILocation(line: 658, column: 21, scope: !2718)
!2741 = !DILocalVariable(name: "centerc0", scope: !2718, file: !1, line: 659, type: !193)
!2742 = !DILocation(line: 659, column: 7, scope: !2718)
!2743 = !DILocalVariable(name: "centerc1", scope: !2718, file: !1, line: 659, type: !193)
!2744 = !DILocation(line: 659, column: 17, scope: !2718)
!2745 = !DILocalVariable(name: "centerc2", scope: !2718, file: !1, line: 659, type: !193)
!2746 = !DILocation(line: 659, column: 27, scope: !2718)
!2747 = !DILocalVariable(name: "i", scope: !2718, file: !1, line: 660, type: !193)
!2748 = !DILocation(line: 660, column: 7, scope: !2718)
!2749 = !DILocalVariable(name: "x", scope: !2718, file: !1, line: 660, type: !193)
!2750 = !DILocation(line: 660, column: 10, scope: !2718)
!2751 = !DILocalVariable(name: "ncolors", scope: !2718, file: !1, line: 660, type: !193)
!2752 = !DILocation(line: 660, column: 13, scope: !2718)
!2753 = !DILocalVariable(name: "minmaxdist", scope: !2718, file: !1, line: 661, type: !612)
!2754 = !DILocation(line: 661, column: 9, scope: !2718)
!2755 = !DILocalVariable(name: "min_dist", scope: !2718, file: !1, line: 661, type: !612)
!2756 = !DILocation(line: 661, column: 21, scope: !2718)
!2757 = !DILocalVariable(name: "max_dist", scope: !2718, file: !1, line: 661, type: !612)
!2758 = !DILocation(line: 661, column: 31, scope: !2718)
!2759 = !DILocalVariable(name: "tdist", scope: !2718, file: !1, line: 661, type: !612)
!2760 = !DILocation(line: 661, column: 41, scope: !2718)
!2761 = !DILocalVariable(name: "mindist", scope: !2718, file: !1, line: 662, type: !2762)
!2762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !612, size: 16384, elements: !393)
!2763 = !DILocation(line: 662, column: 9, scope: !2718)
!2764 = !DILocation(line: 670, column: 11, scope: !2718)
!2765 = !DILocation(line: 670, column: 17, scope: !2718)
!2766 = !DILocation(line: 670, column: 9, scope: !2718)
!2767 = !DILocation(line: 671, column: 15, scope: !2718)
!2768 = !DILocation(line: 671, column: 23, scope: !2718)
!2769 = !DILocation(line: 671, column: 21, scope: !2718)
!2770 = !DILocation(line: 671, column: 30, scope: !2718)
!2771 = !DILocation(line: 671, column: 12, scope: !2718)
!2772 = !DILocation(line: 672, column: 11, scope: !2718)
!2773 = !DILocation(line: 672, column: 17, scope: !2718)
!2774 = !DILocation(line: 672, column: 9, scope: !2718)
!2775 = !DILocation(line: 673, column: 15, scope: !2718)
!2776 = !DILocation(line: 673, column: 23, scope: !2718)
!2777 = !DILocation(line: 673, column: 21, scope: !2718)
!2778 = !DILocation(line: 673, column: 30, scope: !2718)
!2779 = !DILocation(line: 673, column: 12, scope: !2718)
!2780 = !DILocation(line: 674, column: 11, scope: !2718)
!2781 = !DILocation(line: 674, column: 17, scope: !2718)
!2782 = !DILocation(line: 674, column: 9, scope: !2718)
!2783 = !DILocation(line: 675, column: 15, scope: !2718)
!2784 = !DILocation(line: 675, column: 23, scope: !2718)
!2785 = !DILocation(line: 675, column: 21, scope: !2718)
!2786 = !DILocation(line: 675, column: 30, scope: !2718)
!2787 = !DILocation(line: 675, column: 12, scope: !2718)
!2788 = !DILocation(line: 685, column: 14, scope: !2718)
!2789 = !DILocation(line: 687, column: 10, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2718, file: !1, line: 687, column: 3)
!2791 = !DILocation(line: 687, column: 8, scope: !2790)
!2792 = !DILocation(line: 687, column: 15, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2790, file: !1, line: 687, column: 3)
!2794 = !DILocation(line: 687, column: 19, scope: !2793)
!2795 = !DILocation(line: 687, column: 17, scope: !2793)
!2796 = !DILocation(line: 687, column: 3, scope: !2790)
!2797 = !DILocation(line: 689, column: 9, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2793, file: !1, line: 687, column: 35)
!2799 = !DILocation(line: 689, column: 7, scope: !2798)
!2800 = !DILocation(line: 690, column: 9, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2798, file: !1, line: 690, column: 9)
!2802 = !DILocation(line: 690, column: 13, scope: !2801)
!2803 = !DILocation(line: 690, column: 11, scope: !2801)
!2804 = !DILocation(line: 691, column: 16, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2801, file: !1, line: 690, column: 20)
!2806 = !DILocation(line: 691, column: 20, scope: !2805)
!2807 = !DILocation(line: 691, column: 18, scope: !2805)
!2808 = !DILocation(line: 691, column: 27, scope: !2805)
!2809 = !DILocation(line: 691, column: 15, scope: !2805)
!2810 = !DILocation(line: 691, column: 13, scope: !2805)
!2811 = !DILocation(line: 692, column: 18, scope: !2805)
!2812 = !DILocation(line: 692, column: 24, scope: !2805)
!2813 = !DILocation(line: 692, column: 23, scope: !2805)
!2814 = !DILocation(line: 692, column: 16, scope: !2805)
!2815 = !DILocation(line: 693, column: 16, scope: !2805)
!2816 = !DILocation(line: 693, column: 20, scope: !2805)
!2817 = !DILocation(line: 693, column: 18, scope: !2805)
!2818 = !DILocation(line: 693, column: 27, scope: !2805)
!2819 = !DILocation(line: 693, column: 15, scope: !2805)
!2820 = !DILocation(line: 693, column: 13, scope: !2805)
!2821 = !DILocation(line: 694, column: 18, scope: !2805)
!2822 = !DILocation(line: 694, column: 24, scope: !2805)
!2823 = !DILocation(line: 694, column: 23, scope: !2805)
!2824 = !DILocation(line: 694, column: 16, scope: !2805)
!2825 = !DILocation(line: 695, column: 5, scope: !2805)
!2826 = !DILocation(line: 695, column: 16, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2801, file: !1, line: 695, column: 16)
!2828 = !DILocation(line: 695, column: 20, scope: !2827)
!2829 = !DILocation(line: 695, column: 18, scope: !2827)
!2830 = !DILocation(line: 696, column: 16, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2827, file: !1, line: 695, column: 27)
!2832 = !DILocation(line: 696, column: 20, scope: !2831)
!2833 = !DILocation(line: 696, column: 18, scope: !2831)
!2834 = !DILocation(line: 696, column: 27, scope: !2831)
!2835 = !DILocation(line: 696, column: 15, scope: !2831)
!2836 = !DILocation(line: 696, column: 13, scope: !2831)
!2837 = !DILocation(line: 697, column: 18, scope: !2831)
!2838 = !DILocation(line: 697, column: 24, scope: !2831)
!2839 = !DILocation(line: 697, column: 23, scope: !2831)
!2840 = !DILocation(line: 697, column: 16, scope: !2831)
!2841 = !DILocation(line: 698, column: 16, scope: !2831)
!2842 = !DILocation(line: 698, column: 20, scope: !2831)
!2843 = !DILocation(line: 698, column: 18, scope: !2831)
!2844 = !DILocation(line: 698, column: 27, scope: !2831)
!2845 = !DILocation(line: 698, column: 15, scope: !2831)
!2846 = !DILocation(line: 698, column: 13, scope: !2831)
!2847 = !DILocation(line: 699, column: 18, scope: !2831)
!2848 = !DILocation(line: 699, column: 24, scope: !2831)
!2849 = !DILocation(line: 699, column: 23, scope: !2831)
!2850 = !DILocation(line: 699, column: 16, scope: !2831)
!2851 = !DILocation(line: 700, column: 5, scope: !2831)
!2852 = !DILocation(line: 702, column: 16, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2827, file: !1, line: 700, column: 12)
!2854 = !DILocation(line: 703, column: 11, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2853, file: !1, line: 703, column: 11)
!2856 = !DILocation(line: 703, column: 16, scope: !2855)
!2857 = !DILocation(line: 703, column: 13, scope: !2855)
!2858 = !DILocation(line: 704, column: 11, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2855, file: !1, line: 703, column: 26)
!2860 = !DILocation(line: 704, column: 15, scope: !2859)
!2861 = !DILocation(line: 704, column: 13, scope: !2859)
!2862 = !DILocation(line: 704, column: 22, scope: !2859)
!2863 = !DILocation(line: 704, column: 10, scope: !2859)
!2864 = !DILocation(line: 704, column: 8, scope: !2859)
!2865 = !DILocation(line: 705, column: 13, scope: !2859)
!2866 = !DILocation(line: 705, column: 19, scope: !2859)
!2867 = !DILocation(line: 705, column: 18, scope: !2859)
!2868 = !DILocation(line: 705, column: 11, scope: !2859)
!2869 = !DILocation(line: 706, column: 7, scope: !2859)
!2870 = !DILocation(line: 707, column: 11, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2855, file: !1, line: 706, column: 14)
!2872 = !DILocation(line: 707, column: 15, scope: !2871)
!2873 = !DILocation(line: 707, column: 13, scope: !2871)
!2874 = !DILocation(line: 707, column: 22, scope: !2871)
!2875 = !DILocation(line: 707, column: 10, scope: !2871)
!2876 = !DILocation(line: 707, column: 8, scope: !2871)
!2877 = !DILocation(line: 708, column: 13, scope: !2871)
!2878 = !DILocation(line: 708, column: 19, scope: !2871)
!2879 = !DILocation(line: 708, column: 18, scope: !2871)
!2880 = !DILocation(line: 708, column: 11, scope: !2871)
!2881 = !DILocation(line: 712, column: 9, scope: !2798)
!2882 = !DILocation(line: 712, column: 7, scope: !2798)
!2883 = !DILocation(line: 713, column: 9, scope: !2884)
!2884 = distinct !DILexicalBlock(scope: !2798, file: !1, line: 713, column: 9)
!2885 = !DILocation(line: 713, column: 13, scope: !2884)
!2886 = !DILocation(line: 713, column: 11, scope: !2884)
!2887 = !DILocation(line: 714, column: 16, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2884, file: !1, line: 713, column: 20)
!2889 = !DILocation(line: 714, column: 20, scope: !2888)
!2890 = !DILocation(line: 714, column: 18, scope: !2888)
!2891 = !DILocation(line: 714, column: 27, scope: !2888)
!2892 = !DILocation(line: 714, column: 15, scope: !2888)
!2893 = !DILocation(line: 714, column: 13, scope: !2888)
!2894 = !DILocation(line: 715, column: 19, scope: !2888)
!2895 = !DILocation(line: 715, column: 25, scope: !2888)
!2896 = !DILocation(line: 715, column: 24, scope: !2888)
!2897 = !DILocation(line: 715, column: 16, scope: !2888)
!2898 = !DILocation(line: 716, column: 16, scope: !2888)
!2899 = !DILocation(line: 716, column: 20, scope: !2888)
!2900 = !DILocation(line: 716, column: 18, scope: !2888)
!2901 = !DILocation(line: 716, column: 27, scope: !2888)
!2902 = !DILocation(line: 716, column: 15, scope: !2888)
!2903 = !DILocation(line: 716, column: 13, scope: !2888)
!2904 = !DILocation(line: 717, column: 19, scope: !2888)
!2905 = !DILocation(line: 717, column: 25, scope: !2888)
!2906 = !DILocation(line: 717, column: 24, scope: !2888)
!2907 = !DILocation(line: 717, column: 16, scope: !2888)
!2908 = !DILocation(line: 718, column: 5, scope: !2888)
!2909 = !DILocation(line: 718, column: 16, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2884, file: !1, line: 718, column: 16)
!2911 = !DILocation(line: 718, column: 20, scope: !2910)
!2912 = !DILocation(line: 718, column: 18, scope: !2910)
!2913 = !DILocation(line: 719, column: 16, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2910, file: !1, line: 718, column: 27)
!2915 = !DILocation(line: 719, column: 20, scope: !2914)
!2916 = !DILocation(line: 719, column: 18, scope: !2914)
!2917 = !DILocation(line: 719, column: 27, scope: !2914)
!2918 = !DILocation(line: 719, column: 15, scope: !2914)
!2919 = !DILocation(line: 719, column: 13, scope: !2914)
!2920 = !DILocation(line: 720, column: 19, scope: !2914)
!2921 = !DILocation(line: 720, column: 25, scope: !2914)
!2922 = !DILocation(line: 720, column: 24, scope: !2914)
!2923 = !DILocation(line: 720, column: 16, scope: !2914)
!2924 = !DILocation(line: 721, column: 16, scope: !2914)
!2925 = !DILocation(line: 721, column: 20, scope: !2914)
!2926 = !DILocation(line: 721, column: 18, scope: !2914)
!2927 = !DILocation(line: 721, column: 27, scope: !2914)
!2928 = !DILocation(line: 721, column: 15, scope: !2914)
!2929 = !DILocation(line: 721, column: 13, scope: !2914)
!2930 = !DILocation(line: 722, column: 19, scope: !2914)
!2931 = !DILocation(line: 722, column: 25, scope: !2914)
!2932 = !DILocation(line: 722, column: 24, scope: !2914)
!2933 = !DILocation(line: 722, column: 16, scope: !2914)
!2934 = !DILocation(line: 723, column: 5, scope: !2914)
!2935 = !DILocation(line: 725, column: 11, scope: !2936)
!2936 = distinct !DILexicalBlock(scope: !2937, file: !1, line: 725, column: 11)
!2937 = distinct !DILexicalBlock(scope: !2910, file: !1, line: 723, column: 12)
!2938 = !DILocation(line: 725, column: 16, scope: !2936)
!2939 = !DILocation(line: 725, column: 13, scope: !2936)
!2940 = !DILocation(line: 726, column: 11, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2936, file: !1, line: 725, column: 26)
!2942 = !DILocation(line: 726, column: 15, scope: !2941)
!2943 = !DILocation(line: 726, column: 13, scope: !2941)
!2944 = !DILocation(line: 726, column: 22, scope: !2941)
!2945 = !DILocation(line: 726, column: 10, scope: !2941)
!2946 = !DILocation(line: 726, column: 8, scope: !2941)
!2947 = !DILocation(line: 727, column: 14, scope: !2941)
!2948 = !DILocation(line: 727, column: 20, scope: !2941)
!2949 = !DILocation(line: 727, column: 19, scope: !2941)
!2950 = !DILocation(line: 727, column: 11, scope: !2941)
!2951 = !DILocation(line: 728, column: 7, scope: !2941)
!2952 = !DILocation(line: 729, column: 11, scope: !2953)
!2953 = distinct !DILexicalBlock(scope: !2936, file: !1, line: 728, column: 14)
!2954 = !DILocation(line: 729, column: 15, scope: !2953)
!2955 = !DILocation(line: 729, column: 13, scope: !2953)
!2956 = !DILocation(line: 729, column: 22, scope: !2953)
!2957 = !DILocation(line: 729, column: 10, scope: !2953)
!2958 = !DILocation(line: 729, column: 8, scope: !2953)
!2959 = !DILocation(line: 730, column: 14, scope: !2953)
!2960 = !DILocation(line: 730, column: 20, scope: !2953)
!2961 = !DILocation(line: 730, column: 19, scope: !2953)
!2962 = !DILocation(line: 730, column: 11, scope: !2953)
!2963 = !DILocation(line: 734, column: 9, scope: !2798)
!2964 = !DILocation(line: 734, column: 7, scope: !2798)
!2965 = !DILocation(line: 735, column: 9, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2798, file: !1, line: 735, column: 9)
!2967 = !DILocation(line: 735, column: 13, scope: !2966)
!2968 = !DILocation(line: 735, column: 11, scope: !2966)
!2969 = !DILocation(line: 736, column: 16, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2966, file: !1, line: 735, column: 20)
!2971 = !DILocation(line: 736, column: 20, scope: !2970)
!2972 = !DILocation(line: 736, column: 18, scope: !2970)
!2973 = !DILocation(line: 736, column: 27, scope: !2970)
!2974 = !DILocation(line: 736, column: 15, scope: !2970)
!2975 = !DILocation(line: 736, column: 13, scope: !2970)
!2976 = !DILocation(line: 737, column: 19, scope: !2970)
!2977 = !DILocation(line: 737, column: 25, scope: !2970)
!2978 = !DILocation(line: 737, column: 24, scope: !2970)
!2979 = !DILocation(line: 737, column: 16, scope: !2970)
!2980 = !DILocation(line: 738, column: 16, scope: !2970)
!2981 = !DILocation(line: 738, column: 20, scope: !2970)
!2982 = !DILocation(line: 738, column: 18, scope: !2970)
!2983 = !DILocation(line: 738, column: 27, scope: !2970)
!2984 = !DILocation(line: 738, column: 15, scope: !2970)
!2985 = !DILocation(line: 738, column: 13, scope: !2970)
!2986 = !DILocation(line: 739, column: 19, scope: !2970)
!2987 = !DILocation(line: 739, column: 25, scope: !2970)
!2988 = !DILocation(line: 739, column: 24, scope: !2970)
!2989 = !DILocation(line: 739, column: 16, scope: !2970)
!2990 = !DILocation(line: 740, column: 5, scope: !2970)
!2991 = !DILocation(line: 740, column: 16, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2966, file: !1, line: 740, column: 16)
!2993 = !DILocation(line: 740, column: 20, scope: !2992)
!2994 = !DILocation(line: 740, column: 18, scope: !2992)
!2995 = !DILocation(line: 741, column: 16, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2992, file: !1, line: 740, column: 27)
!2997 = !DILocation(line: 741, column: 20, scope: !2996)
!2998 = !DILocation(line: 741, column: 18, scope: !2996)
!2999 = !DILocation(line: 741, column: 27, scope: !2996)
!3000 = !DILocation(line: 741, column: 15, scope: !2996)
!3001 = !DILocation(line: 741, column: 13, scope: !2996)
!3002 = !DILocation(line: 742, column: 19, scope: !2996)
!3003 = !DILocation(line: 742, column: 25, scope: !2996)
!3004 = !DILocation(line: 742, column: 24, scope: !2996)
!3005 = !DILocation(line: 742, column: 16, scope: !2996)
!3006 = !DILocation(line: 743, column: 16, scope: !2996)
!3007 = !DILocation(line: 743, column: 20, scope: !2996)
!3008 = !DILocation(line: 743, column: 18, scope: !2996)
!3009 = !DILocation(line: 743, column: 27, scope: !2996)
!3010 = !DILocation(line: 743, column: 15, scope: !2996)
!3011 = !DILocation(line: 743, column: 13, scope: !2996)
!3012 = !DILocation(line: 744, column: 19, scope: !2996)
!3013 = !DILocation(line: 744, column: 25, scope: !2996)
!3014 = !DILocation(line: 744, column: 24, scope: !2996)
!3015 = !DILocation(line: 744, column: 16, scope: !2996)
!3016 = !DILocation(line: 745, column: 5, scope: !2996)
!3017 = !DILocation(line: 747, column: 11, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !3019, file: !1, line: 747, column: 11)
!3019 = distinct !DILexicalBlock(scope: !2992, file: !1, line: 745, column: 12)
!3020 = !DILocation(line: 747, column: 16, scope: !3018)
!3021 = !DILocation(line: 747, column: 13, scope: !3018)
!3022 = !DILocation(line: 748, column: 11, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !3018, file: !1, line: 747, column: 26)
!3024 = !DILocation(line: 748, column: 15, scope: !3023)
!3025 = !DILocation(line: 748, column: 13, scope: !3023)
!3026 = !DILocation(line: 748, column: 22, scope: !3023)
!3027 = !DILocation(line: 748, column: 10, scope: !3023)
!3028 = !DILocation(line: 748, column: 8, scope: !3023)
!3029 = !DILocation(line: 749, column: 14, scope: !3023)
!3030 = !DILocation(line: 749, column: 20, scope: !3023)
!3031 = !DILocation(line: 749, column: 19, scope: !3023)
!3032 = !DILocation(line: 749, column: 11, scope: !3023)
!3033 = !DILocation(line: 750, column: 7, scope: !3023)
!3034 = !DILocation(line: 751, column: 11, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !3018, file: !1, line: 750, column: 14)
!3036 = !DILocation(line: 751, column: 15, scope: !3035)
!3037 = !DILocation(line: 751, column: 13, scope: !3035)
!3038 = !DILocation(line: 751, column: 22, scope: !3035)
!3039 = !DILocation(line: 751, column: 10, scope: !3035)
!3040 = !DILocation(line: 751, column: 8, scope: !3035)
!3041 = !DILocation(line: 752, column: 14, scope: !3035)
!3042 = !DILocation(line: 752, column: 20, scope: !3035)
!3043 = !DILocation(line: 752, column: 19, scope: !3035)
!3044 = !DILocation(line: 752, column: 11, scope: !3035)
!3045 = !DILocation(line: 756, column: 18, scope: !2798)
!3046 = !DILocation(line: 756, column: 13, scope: !2798)
!3047 = !DILocation(line: 756, column: 5, scope: !2798)
!3048 = !DILocation(line: 756, column: 16, scope: !2798)
!3049 = !DILocation(line: 757, column: 9, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !2798, file: !1, line: 757, column: 9)
!3051 = !DILocation(line: 757, column: 20, scope: !3050)
!3052 = !DILocation(line: 757, column: 18, scope: !3050)
!3053 = !DILocation(line: 758, column: 20, scope: !3050)
!3054 = !DILocation(line: 758, column: 18, scope: !3050)
!3055 = !DILocation(line: 758, column: 7, scope: !3050)
!3056 = !DILocation(line: 759, column: 3, scope: !2798)
!3057 = !DILocation(line: 687, column: 31, scope: !2793)
!3058 = !DILocation(line: 687, column: 3, scope: !2793)
!3059 = distinct !{!3059, !2796, !3060, !689}
!3060 = !DILocation(line: 759, column: 3, scope: !2790)
!3061 = !DILocation(line: 765, column: 11, scope: !2718)
!3062 = !DILocation(line: 766, column: 10, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !2718, file: !1, line: 766, column: 3)
!3064 = !DILocation(line: 766, column: 8, scope: !3063)
!3065 = !DILocation(line: 766, column: 15, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3063, file: !1, line: 766, column: 3)
!3067 = !DILocation(line: 766, column: 19, scope: !3066)
!3068 = !DILocation(line: 766, column: 17, scope: !3066)
!3069 = !DILocation(line: 766, column: 3, scope: !3063)
!3070 = !DILocation(line: 767, column: 17, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3072, file: !1, line: 767, column: 9)
!3072 = distinct !DILexicalBlock(scope: !3066, file: !1, line: 766, column: 35)
!3073 = !DILocation(line: 767, column: 9, scope: !3071)
!3074 = !DILocation(line: 767, column: 23, scope: !3071)
!3075 = !DILocation(line: 767, column: 20, scope: !3071)
!3076 = !DILocation(line: 768, column: 40, scope: !3071)
!3077 = !DILocation(line: 768, column: 30, scope: !3071)
!3078 = !DILocation(line: 768, column: 7, scope: !3071)
!3079 = !DILocation(line: 768, column: 24, scope: !3071)
!3080 = !DILocation(line: 768, column: 28, scope: !3071)
!3081 = !DILocation(line: 769, column: 3, scope: !3072)
!3082 = !DILocation(line: 766, column: 31, scope: !3066)
!3083 = !DILocation(line: 766, column: 3, scope: !3066)
!3084 = distinct !{!3084, !3069, !3085, !689}
!3085 = !DILocation(line: 769, column: 3, scope: !3063)
!3086 = !DILocation(line: 770, column: 10, scope: !2718)
!3087 = !DILocation(line: 770, column: 3, scope: !2718)
!3088 = distinct !DISubprogram(name: "find_best_colors", scope: !1, file: !1, line: 775, type: !3089, scopeLine: 783, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !623)
!3089 = !DISubroutineType(types: !3090)
!3090 = !{null, !167, !193, !193, !193, !193, !205, !205}
!3091 = !DILocalVariable(name: "cinfo", arg: 1, scope: !3088, file: !1, line: 775, type: !167)
!3092 = !DILocation(line: 775, column: 36, scope: !3088)
!3093 = !DILocalVariable(name: "minc0", arg: 2, scope: !3088, file: !1, line: 775, type: !193)
!3094 = !DILocation(line: 775, column: 47, scope: !3088)
!3095 = !DILocalVariable(name: "minc1", arg: 3, scope: !3088, file: !1, line: 775, type: !193)
!3096 = !DILocation(line: 775, column: 58, scope: !3088)
!3097 = !DILocalVariable(name: "minc2", arg: 4, scope: !3088, file: !1, line: 775, type: !193)
!3098 = !DILocation(line: 775, column: 69, scope: !3088)
!3099 = !DILocalVariable(name: "numcolors", arg: 5, scope: !3088, file: !1, line: 776, type: !193)
!3100 = !DILocation(line: 776, column: 9, scope: !3088)
!3101 = !DILocalVariable(name: "colorlist", arg: 6, scope: !3088, file: !1, line: 776, type: !205)
!3102 = !DILocation(line: 776, column: 28, scope: !3088)
!3103 = !DILocalVariable(name: "bestcolor", arg: 7, scope: !3088, file: !1, line: 776, type: !205)
!3104 = !DILocation(line: 776, column: 49, scope: !3088)
!3105 = !DILocalVariable(name: "ic0", scope: !3088, file: !1, line: 784, type: !193)
!3106 = !DILocation(line: 784, column: 7, scope: !3088)
!3107 = !DILocalVariable(name: "ic1", scope: !3088, file: !1, line: 784, type: !193)
!3108 = !DILocation(line: 784, column: 12, scope: !3088)
!3109 = !DILocalVariable(name: "ic2", scope: !3088, file: !1, line: 784, type: !193)
!3110 = !DILocation(line: 784, column: 17, scope: !3088)
!3111 = !DILocalVariable(name: "i", scope: !3088, file: !1, line: 785, type: !193)
!3112 = !DILocation(line: 785, column: 7, scope: !3088)
!3113 = !DILocalVariable(name: "icolor", scope: !3088, file: !1, line: 785, type: !193)
!3114 = !DILocation(line: 785, column: 10, scope: !3088)
!3115 = !DILocalVariable(name: "bptr", scope: !3088, file: !1, line: 786, type: !3116)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!3117 = !DILocation(line: 786, column: 20, scope: !3088)
!3118 = !DILocalVariable(name: "cptr", scope: !3088, file: !1, line: 787, type: !205)
!3119 = !DILocation(line: 787, column: 13, scope: !3088)
!3120 = !DILocalVariable(name: "dist0", scope: !3088, file: !1, line: 788, type: !612)
!3121 = !DILocation(line: 788, column: 9, scope: !3088)
!3122 = !DILocalVariable(name: "dist1", scope: !3088, file: !1, line: 788, type: !612)
!3123 = !DILocation(line: 788, column: 16, scope: !3088)
!3124 = !DILocalVariable(name: "dist2", scope: !3088, file: !1, line: 789, type: !612)
!3125 = !DILocation(line: 789, column: 18, scope: !3088)
!3126 = !DILocalVariable(name: "xx0", scope: !3088, file: !1, line: 790, type: !612)
!3127 = !DILocation(line: 790, column: 9, scope: !3088)
!3128 = !DILocalVariable(name: "xx1", scope: !3088, file: !1, line: 790, type: !612)
!3129 = !DILocation(line: 790, column: 14, scope: !3088)
!3130 = !DILocalVariable(name: "xx2", scope: !3088, file: !1, line: 791, type: !612)
!3131 = !DILocation(line: 791, column: 18, scope: !3088)
!3132 = !DILocalVariable(name: "inc0", scope: !3088, file: !1, line: 792, type: !612)
!3133 = !DILocation(line: 792, column: 9, scope: !3088)
!3134 = !DILocalVariable(name: "inc1", scope: !3088, file: !1, line: 792, type: !612)
!3135 = !DILocation(line: 792, column: 15, scope: !3088)
!3136 = !DILocalVariable(name: "inc2", scope: !3088, file: !1, line: 792, type: !612)
!3137 = !DILocation(line: 792, column: 21, scope: !3088)
!3138 = !DILocalVariable(name: "bestdist", scope: !3088, file: !1, line: 794, type: !3139)
!3139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !612, size: 8192, elements: !2626)
!3140 = !DILocation(line: 794, column: 9, scope: !3088)
!3141 = !DILocation(line: 797, column: 10, scope: !3088)
!3142 = !DILocation(line: 797, column: 8, scope: !3088)
!3143 = !DILocation(line: 798, column: 10, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3088, file: !1, line: 798, column: 3)
!3145 = !DILocation(line: 798, column: 8, scope: !3144)
!3146 = !DILocation(line: 798, column: 54, scope: !3147)
!3147 = distinct !DILexicalBlock(scope: !3144, file: !1, line: 798, column: 3)
!3148 = !DILocation(line: 798, column: 56, scope: !3147)
!3149 = !DILocation(line: 798, column: 3, scope: !3144)
!3150 = !DILocation(line: 799, column: 10, scope: !3147)
!3151 = !DILocation(line: 799, column: 13, scope: !3147)
!3152 = !DILocation(line: 799, column: 5, scope: !3147)
!3153 = !DILocation(line: 798, column: 63, scope: !3147)
!3154 = !DILocation(line: 798, column: 3, scope: !3147)
!3155 = distinct !{!3155, !3149, !3156, !689}
!3156 = !DILocation(line: 799, column: 15, scope: !3144)
!3157 = !DILocation(line: 811, column: 10, scope: !3158)
!3158 = distinct !DILexicalBlock(scope: !3088, file: !1, line: 811, column: 3)
!3159 = !DILocation(line: 811, column: 8, scope: !3158)
!3160 = !DILocation(line: 811, column: 15, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3158, file: !1, line: 811, column: 3)
!3162 = !DILocation(line: 811, column: 19, scope: !3161)
!3163 = !DILocation(line: 811, column: 17, scope: !3161)
!3164 = !DILocation(line: 811, column: 3, scope: !3158)
!3165 = !DILocation(line: 812, column: 14, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !3161, file: !1, line: 811, column: 35)
!3167 = !DILocation(line: 812, column: 12, scope: !3166)
!3168 = !DILocation(line: 814, column: 13, scope: !3166)
!3169 = !DILocation(line: 814, column: 21, scope: !3166)
!3170 = !DILocation(line: 814, column: 19, scope: !3166)
!3171 = !DILocation(line: 814, column: 61, scope: !3166)
!3172 = !DILocation(line: 814, column: 12, scope: !3166)
!3173 = !DILocation(line: 814, column: 10, scope: !3166)
!3174 = !DILocation(line: 815, column: 13, scope: !3166)
!3175 = !DILocation(line: 815, column: 18, scope: !3166)
!3176 = !DILocation(line: 815, column: 17, scope: !3166)
!3177 = !DILocation(line: 815, column: 11, scope: !3166)
!3178 = !DILocation(line: 816, column: 13, scope: !3166)
!3179 = !DILocation(line: 816, column: 21, scope: !3166)
!3180 = !DILocation(line: 816, column: 19, scope: !3166)
!3181 = !DILocation(line: 816, column: 61, scope: !3166)
!3182 = !DILocation(line: 816, column: 12, scope: !3166)
!3183 = !DILocation(line: 816, column: 10, scope: !3166)
!3184 = !DILocation(line: 817, column: 14, scope: !3166)
!3185 = !DILocation(line: 817, column: 19, scope: !3166)
!3186 = !DILocation(line: 817, column: 18, scope: !3166)
!3187 = !DILocation(line: 817, column: 11, scope: !3166)
!3188 = !DILocation(line: 818, column: 13, scope: !3166)
!3189 = !DILocation(line: 818, column: 21, scope: !3166)
!3190 = !DILocation(line: 818, column: 19, scope: !3166)
!3191 = !DILocation(line: 818, column: 61, scope: !3166)
!3192 = !DILocation(line: 818, column: 12, scope: !3166)
!3193 = !DILocation(line: 818, column: 10, scope: !3166)
!3194 = !DILocation(line: 819, column: 14, scope: !3166)
!3195 = !DILocation(line: 819, column: 19, scope: !3166)
!3196 = !DILocation(line: 819, column: 18, scope: !3166)
!3197 = !DILocation(line: 819, column: 11, scope: !3166)
!3198 = !DILocation(line: 821, column: 12, scope: !3166)
!3199 = !DILocation(line: 821, column: 17, scope: !3166)
!3200 = !DILocation(line: 821, column: 33, scope: !3166)
!3201 = !DILocation(line: 821, column: 10, scope: !3166)
!3202 = !DILocation(line: 822, column: 12, scope: !3166)
!3203 = !DILocation(line: 822, column: 17, scope: !3166)
!3204 = !DILocation(line: 822, column: 33, scope: !3166)
!3205 = !DILocation(line: 822, column: 10, scope: !3166)
!3206 = !DILocation(line: 823, column: 12, scope: !3166)
!3207 = !DILocation(line: 823, column: 17, scope: !3166)
!3208 = !DILocation(line: 823, column: 33, scope: !3166)
!3209 = !DILocation(line: 823, column: 10, scope: !3166)
!3210 = !DILocation(line: 825, column: 12, scope: !3166)
!3211 = !DILocation(line: 825, column: 10, scope: !3166)
!3212 = !DILocation(line: 826, column: 12, scope: !3166)
!3213 = !DILocation(line: 826, column: 10, scope: !3166)
!3214 = !DILocation(line: 827, column: 11, scope: !3166)
!3215 = !DILocation(line: 827, column: 9, scope: !3166)
!3216 = !DILocation(line: 828, column: 14, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3166, file: !1, line: 828, column: 5)
!3218 = !DILocation(line: 828, column: 10, scope: !3217)
!3219 = !DILocation(line: 828, column: 32, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !3217, file: !1, line: 828, column: 5)
!3221 = !DILocation(line: 828, column: 36, scope: !3220)
!3222 = !DILocation(line: 828, column: 5, scope: !3217)
!3223 = !DILocation(line: 829, column: 15, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3220, file: !1, line: 828, column: 49)
!3225 = !DILocation(line: 829, column: 13, scope: !3224)
!3226 = !DILocation(line: 830, column: 13, scope: !3224)
!3227 = !DILocation(line: 830, column: 11, scope: !3224)
!3228 = !DILocation(line: 831, column: 16, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !3224, file: !1, line: 831, column: 7)
!3230 = !DILocation(line: 831, column: 12, scope: !3229)
!3231 = !DILocation(line: 831, column: 34, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3229, file: !1, line: 831, column: 7)
!3233 = !DILocation(line: 831, column: 38, scope: !3232)
!3234 = !DILocation(line: 831, column: 7, scope: !3229)
!3235 = !DILocation(line: 832, column: 10, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3232, file: !1, line: 831, column: 51)
!3237 = !DILocation(line: 832, column: 8, scope: !3236)
!3238 = !DILocation(line: 833, column: 8, scope: !3236)
!3239 = !DILocation(line: 833, column: 6, scope: !3236)
!3240 = !DILocation(line: 834, column: 11, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !3236, file: !1, line: 834, column: 2)
!3242 = !DILocation(line: 834, column: 7, scope: !3241)
!3243 = !DILocation(line: 834, column: 29, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3241, file: !1, line: 834, column: 2)
!3245 = !DILocation(line: 834, column: 33, scope: !3244)
!3246 = !DILocation(line: 834, column: 2, scope: !3241)
!3247 = !DILocation(line: 835, column: 8, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !3249, file: !1, line: 835, column: 8)
!3249 = distinct !DILexicalBlock(scope: !3244, file: !1, line: 834, column: 46)
!3250 = !DILocation(line: 835, column: 17, scope: !3248)
!3251 = !DILocation(line: 835, column: 16, scope: !3248)
!3252 = !DILocation(line: 835, column: 14, scope: !3248)
!3253 = !DILocation(line: 836, column: 14, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !3248, file: !1, line: 835, column: 23)
!3255 = !DILocation(line: 836, column: 7, scope: !3254)
!3256 = !DILocation(line: 836, column: 12, scope: !3254)
!3257 = !DILocation(line: 837, column: 24, scope: !3254)
!3258 = !DILocation(line: 837, column: 14, scope: !3254)
!3259 = !DILocation(line: 837, column: 7, scope: !3254)
!3260 = !DILocation(line: 837, column: 12, scope: !3254)
!3261 = !DILocation(line: 838, column: 4, scope: !3254)
!3262 = !DILocation(line: 839, column: 13, scope: !3249)
!3263 = !DILocation(line: 839, column: 10, scope: !3249)
!3264 = !DILocation(line: 840, column: 8, scope: !3249)
!3265 = !DILocation(line: 841, column: 8, scope: !3249)
!3266 = !DILocation(line: 842, column: 8, scope: !3249)
!3267 = !DILocation(line: 843, column: 2, scope: !3249)
!3268 = !DILocation(line: 834, column: 42, scope: !3244)
!3269 = !DILocation(line: 834, column: 2, scope: !3244)
!3270 = distinct !{!3270, !3246, !3271, !689}
!3271 = !DILocation(line: 843, column: 2, scope: !3241)
!3272 = !DILocation(line: 844, column: 11, scope: !3236)
!3273 = !DILocation(line: 844, column: 8, scope: !3236)
!3274 = !DILocation(line: 845, column: 6, scope: !3236)
!3275 = !DILocation(line: 846, column: 7, scope: !3236)
!3276 = !DILocation(line: 831, column: 47, scope: !3232)
!3277 = !DILocation(line: 831, column: 7, scope: !3232)
!3278 = distinct !{!3278, !3234, !3279, !689}
!3279 = !DILocation(line: 846, column: 7, scope: !3229)
!3280 = !DILocation(line: 847, column: 16, scope: !3224)
!3281 = !DILocation(line: 847, column: 13, scope: !3224)
!3282 = !DILocation(line: 848, column: 11, scope: !3224)
!3283 = !DILocation(line: 849, column: 5, scope: !3224)
!3284 = !DILocation(line: 828, column: 45, scope: !3220)
!3285 = !DILocation(line: 828, column: 5, scope: !3220)
!3286 = distinct !{!3286, !3222, !3287, !689}
!3287 = !DILocation(line: 849, column: 5, scope: !3217)
!3288 = !DILocation(line: 850, column: 3, scope: !3166)
!3289 = !DILocation(line: 811, column: 31, scope: !3161)
!3290 = !DILocation(line: 811, column: 3, scope: !3161)
!3291 = distinct !{!3291, !3164, !3292, !689}
!3292 = !DILocation(line: 850, column: 3, scope: !3158)
!3293 = !DILocation(line: 851, column: 1, scope: !3088)
