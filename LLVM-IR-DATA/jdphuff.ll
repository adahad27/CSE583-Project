; ModuleID = 'cBench/consumer_jpeg_c/src/jdphuff.c'
source_filename = "cBench/consumer_jpeg_c/src/jdphuff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.phuff_entropy_decoder = type { %struct.jpeg_entropy_decoder, %struct.bitread_perm_state, %struct.savable_state, i32, [4 x ptr], ptr }
%struct.jpeg_entropy_decoder = type { ptr, ptr }
%struct.bitread_perm_state = type { i64, i32, i32 }
%struct.savable_state = type { i32, [4 x i32] }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.bitread_working_state = type { ptr, i64, i32, i64, i32, ptr, ptr }
%struct.jpeg_source_mgr = type { ptr, i64, ptr, ptr, ptr, ptr, ptr }
%struct.d_derived_tbl = type { [17 x i64], [18 x i64], [17 x i32], ptr, [256 x i32], [256 x i8] }
%struct.jpeg_marker_reader = type { ptr, ptr, ptr, ptr, [16 x ptr], i32, i32, i32, i32 }

@extend_test = internal constant [16 x i32] [i32 0, i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024, i32 2048, i32 4096, i32 8192, i32 16384], align 16, !dbg !0
@extend_offset = internal constant [16 x i32] [i32 0, i32 -1, i32 -3, i32 -7, i32 -15, i32 -31, i32 -63, i32 -127, i32 -255, i32 -511, i32 -1023, i32 -2047, i32 -4095, i32 -8191, i32 -16383, i32 -32767], align 16, !dbg !619
@jpeg_natural_order = external constant [0 x i32], align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @jinit_phuff_decoder(ptr noundef %0) #0 !dbg !631 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !633, !DIExpression(), !634)
    #dbg_declare(ptr %3, !635, !DIExpression(), !636)
    #dbg_declare(ptr %4, !637, !DIExpression(), !639)
    #dbg_declare(ptr %5, !640, !DIExpression(), !641)
    #dbg_declare(ptr %6, !642, !DIExpression(), !643)
  %7 = load ptr, ptr %2, align 8, !dbg !644
  %8 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %7, i32 0, i32 1, !dbg !645
  %9 = load ptr, ptr %8, align 8, !dbg !645
  %10 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %9, i32 0, i32 0, !dbg !646
  %11 = load ptr, ptr %10, align 8, !dbg !646
  %12 = load ptr, ptr %2, align 8, !dbg !647
  %13 = call ptr %11(ptr noundef %12, i32 noundef 1, i64 noundef 96), !dbg !648
  store ptr %13, ptr %3, align 8, !dbg !649
  %14 = load ptr, ptr %3, align 8, !dbg !650
  %15 = load ptr, ptr %2, align 8, !dbg !651
  %16 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %15, i32 0, i32 79, !dbg !652
  store ptr %14, ptr %16, align 8, !dbg !653
  %17 = load ptr, ptr %3, align 8, !dbg !654
  %18 = getelementptr inbounds nuw %struct.phuff_entropy_decoder, ptr %17, i32 0, i32 0, !dbg !655
  %19 = getelementptr inbounds nuw %struct.jpeg_entropy_decoder, ptr %18, i32 0, i32 0, !dbg !656
  store ptr @start_pass_phuff_decoder, ptr %19, align 8, !dbg !657
  store i32 0, ptr %6, align 4, !dbg !658
  br label %20, !dbg !660

20:                                               ; preds = %29, %1
  %21 = load i32, ptr %6, align 4, !dbg !661
  %22 = icmp slt i32 %21, 4, !dbg !663
  br i1 %22, label %23, label %32, !dbg !664

23:                                               ; preds = %20
  %24 = load ptr, ptr %3, align 8, !dbg !665
  %25 = getelementptr inbounds nuw %struct.phuff_entropy_decoder, ptr %24, i32 0, i32 4, !dbg !667
  %26 = load i32, ptr %6, align 4, !dbg !668
  %27 = sext i32 %26 to i64, !dbg !665
  %28 = getelementptr inbounds [4 x ptr], ptr %25, i64 0, i64 %27, !dbg !665
  store ptr null, ptr %28, align 8, !dbg !669
  br label %29, !dbg !670

29:                                               ; preds = %23
  %30 = load i32, ptr %6, align 4, !dbg !671
  %31 = add nsw i32 %30, 1, !dbg !671
  store i32 %31, ptr %6, align 4, !dbg !671
  br label %20, !dbg !672, !llvm.loop !673

32:                                               ; preds = %20
  %33 = load ptr, ptr %2, align 8, !dbg !676
  %34 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %33, i32 0, i32 1, !dbg !677
  %35 = load ptr, ptr %34, align 8, !dbg !677
  %36 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %35, i32 0, i32 0, !dbg !678
  %37 = load ptr, ptr %36, align 8, !dbg !678
  %38 = load ptr, ptr %2, align 8, !dbg !679
  %39 = load ptr, ptr %2, align 8, !dbg !680
  %40 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %39, i32 0, i32 8, !dbg !681
  %41 = load i32, ptr %40, align 8, !dbg !681
  %42 = mul nsw i32 %41, 64, !dbg !682
  %43 = sext i32 %42 to i64, !dbg !680
  %44 = mul i64 %43, 4, !dbg !683
  %45 = call ptr %37(ptr noundef %38, i32 noundef 1, i64 noundef %44), !dbg !684
  %46 = load ptr, ptr %2, align 8, !dbg !685
  %47 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %46, i32 0, i32 38, !dbg !686
  store ptr %45, ptr %47, align 8, !dbg !687
  %48 = load ptr, ptr %2, align 8, !dbg !688
  %49 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %48, i32 0, i32 38, !dbg !689
  %50 = load ptr, ptr %49, align 8, !dbg !689
  %51 = getelementptr inbounds [64 x i32], ptr %50, i64 0, !dbg !688
  %52 = getelementptr inbounds [64 x i32], ptr %51, i64 0, i64 0, !dbg !688
  store ptr %52, ptr %4, align 8, !dbg !690
  store i32 0, ptr %5, align 4, !dbg !691
  br label %53, !dbg !693

53:                                               ; preds = %70, %32
  %54 = load i32, ptr %5, align 4, !dbg !694
  %55 = load ptr, ptr %2, align 8, !dbg !696
  %56 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %55, i32 0, i32 8, !dbg !697
  %57 = load i32, ptr %56, align 8, !dbg !697
  %58 = icmp slt i32 %54, %57, !dbg !698
  br i1 %58, label %59, label %73, !dbg !699

59:                                               ; preds = %53
  store i32 0, ptr %6, align 4, !dbg !700
  br label %60, !dbg !702

60:                                               ; preds = %66, %59
  %61 = load i32, ptr %6, align 4, !dbg !703
  %62 = icmp slt i32 %61, 64, !dbg !705
  br i1 %62, label %63, label %69, !dbg !706

63:                                               ; preds = %60
  %64 = load ptr, ptr %4, align 8, !dbg !707
  %65 = getelementptr inbounds nuw i32, ptr %64, i32 1, !dbg !707
  store ptr %65, ptr %4, align 8, !dbg !707
  store i32 -1, ptr %64, align 4, !dbg !708
  br label %66, !dbg !709

66:                                               ; preds = %63
  %67 = load i32, ptr %6, align 4, !dbg !710
  %68 = add nsw i32 %67, 1, !dbg !710
  store i32 %68, ptr %6, align 4, !dbg !710
  br label %60, !dbg !711, !llvm.loop !712

69:                                               ; preds = %60
  br label %70, !dbg !713

70:                                               ; preds = %69
  %71 = load i32, ptr %5, align 4, !dbg !714
  %72 = add nsw i32 %71, 1, !dbg !714
  store i32 %72, ptr %5, align 4, !dbg !714
  br label %53, !dbg !715, !llvm.loop !716

73:                                               ; preds = %53
  ret void, !dbg !718
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_pass_phuff_decoder(ptr noundef %0) #0 !dbg !719 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !720, !DIExpression(), !721)
    #dbg_declare(ptr %3, !722, !DIExpression(), !723)
  %13 = load ptr, ptr %2, align 8, !dbg !724
  %14 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %13, i32 0, i32 79, !dbg !725
  %15 = load ptr, ptr %14, align 8, !dbg !725
  store ptr %15, ptr %3, align 8, !dbg !723
    #dbg_declare(ptr %4, !726, !DIExpression(), !727)
    #dbg_declare(ptr %5, !728, !DIExpression(), !729)
    #dbg_declare(ptr %6, !730, !DIExpression(), !731)
    #dbg_declare(ptr %7, !732, !DIExpression(), !733)
    #dbg_declare(ptr %8, !734, !DIExpression(), !735)
    #dbg_declare(ptr %9, !736, !DIExpression(), !737)
    #dbg_declare(ptr %10, !738, !DIExpression(), !739)
  %16 = load ptr, ptr %2, align 8, !dbg !740
  %17 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %16, i32 0, i32 68, !dbg !741
  %18 = load i32, ptr %17, align 4, !dbg !741
  %19 = icmp eq i32 %18, 0, !dbg !742
  %20 = zext i1 %19 to i32, !dbg !742
  store i32 %20, ptr %4, align 4, !dbg !743
  store i32 0, ptr %5, align 4, !dbg !744
  %21 = load i32, ptr %4, align 4, !dbg !745
  %22 = icmp ne i32 %21, 0, !dbg !745
  br i1 %22, label %23, label %30, !dbg !745

23:                                               ; preds = %1
  %24 = load ptr, ptr %2, align 8, !dbg !747
  %25 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %24, i32 0, i32 69, !dbg !750
  %26 = load i32, ptr %25, align 8, !dbg !750
  %27 = icmp ne i32 %26, 0, !dbg !751
  br i1 %27, label %28, label %29, !dbg !751

28:                                               ; preds = %23
  store i32 1, ptr %5, align 4, !dbg !752
  br label %29, !dbg !753

29:                                               ; preds = %28, %23
  br label %51, !dbg !754

30:                                               ; preds = %1
  %31 = load ptr, ptr %2, align 8, !dbg !755
  %32 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %31, i32 0, i32 68, !dbg !758
  %33 = load i32, ptr %32, align 4, !dbg !758
  %34 = load ptr, ptr %2, align 8, !dbg !759
  %35 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %34, i32 0, i32 69, !dbg !760
  %36 = load i32, ptr %35, align 8, !dbg !760
  %37 = icmp sgt i32 %33, %36, !dbg !761
  br i1 %37, label %43, label %38, !dbg !762

38:                                               ; preds = %30
  %39 = load ptr, ptr %2, align 8, !dbg !763
  %40 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %39, i32 0, i32 69, !dbg !764
  %41 = load i32, ptr %40, align 8, !dbg !764
  %42 = icmp sge i32 %41, 64, !dbg !765
  br i1 %42, label %43, label %44, !dbg !762

43:                                               ; preds = %38, %30
  store i32 1, ptr %5, align 4, !dbg !766
  br label %44, !dbg !767

44:                                               ; preds = %43, %38
  %45 = load ptr, ptr %2, align 8, !dbg !768
  %46 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %45, i32 0, i32 62, !dbg !770
  %47 = load i32, ptr %46, align 8, !dbg !770
  %48 = icmp ne i32 %47, 1, !dbg !771
  br i1 %48, label %49, label %50, !dbg !771

49:                                               ; preds = %44
  store i32 1, ptr %5, align 4, !dbg !772
  br label %50, !dbg !773

50:                                               ; preds = %49, %44
  br label %51

51:                                               ; preds = %50, %29
  %52 = load ptr, ptr %2, align 8, !dbg !774
  %53 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %52, i32 0, i32 70, !dbg !776
  %54 = load i32, ptr %53, align 4, !dbg !776
  %55 = icmp ne i32 %54, 0, !dbg !777
  br i1 %55, label %56, label %67, !dbg !777

56:                                               ; preds = %51
  %57 = load ptr, ptr %2, align 8, !dbg !778
  %58 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %57, i32 0, i32 71, !dbg !781
  %59 = load i32, ptr %58, align 8, !dbg !781
  %60 = load ptr, ptr %2, align 8, !dbg !782
  %61 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %60, i32 0, i32 70, !dbg !783
  %62 = load i32, ptr %61, align 4, !dbg !783
  %63 = sub nsw i32 %62, 1, !dbg !784
  %64 = icmp ne i32 %59, %63, !dbg !785
  br i1 %64, label %65, label %66, !dbg !785

65:                                               ; preds = %56
  store i32 1, ptr %5, align 4, !dbg !786
  br label %66, !dbg !787

66:                                               ; preds = %65, %56
  br label %67, !dbg !788

67:                                               ; preds = %66, %51
  %68 = load ptr, ptr %2, align 8, !dbg !789
  %69 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %68, i32 0, i32 71, !dbg !791
  %70 = load i32, ptr %69, align 8, !dbg !791
  %71 = icmp sgt i32 %70, 13, !dbg !792
  br i1 %71, label %72, label %73, !dbg !792

72:                                               ; preds = %67
  store i32 1, ptr %5, align 4, !dbg !793
  br label %73, !dbg !794

73:                                               ; preds = %72, %67
  %74 = load i32, ptr %5, align 4, !dbg !795
  %75 = icmp ne i32 %74, 0, !dbg !795
  br i1 %75, label %76, label %119, !dbg !795

76:                                               ; preds = %73
  %77 = load ptr, ptr %2, align 8, !dbg !797
  %78 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %77, i32 0, i32 0, !dbg !797
  %79 = load ptr, ptr %78, align 8, !dbg !797
  %80 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %79, i32 0, i32 5, !dbg !797
  store i32 14, ptr %80, align 8, !dbg !797
  %81 = load ptr, ptr %2, align 8, !dbg !797
  %82 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %81, i32 0, i32 68, !dbg !797
  %83 = load i32, ptr %82, align 4, !dbg !797
  %84 = load ptr, ptr %2, align 8, !dbg !797
  %85 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %84, i32 0, i32 0, !dbg !797
  %86 = load ptr, ptr %85, align 8, !dbg !797
  %87 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %86, i32 0, i32 6, !dbg !797
  %88 = getelementptr inbounds [8 x i32], ptr %87, i64 0, i64 0, !dbg !797
  store i32 %83, ptr %88, align 4, !dbg !797
  %89 = load ptr, ptr %2, align 8, !dbg !797
  %90 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %89, i32 0, i32 69, !dbg !797
  %91 = load i32, ptr %90, align 8, !dbg !797
  %92 = load ptr, ptr %2, align 8, !dbg !797
  %93 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %92, i32 0, i32 0, !dbg !797
  %94 = load ptr, ptr %93, align 8, !dbg !797
  %95 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %94, i32 0, i32 6, !dbg !797
  %96 = getelementptr inbounds [8 x i32], ptr %95, i64 0, i64 1, !dbg !797
  store i32 %91, ptr %96, align 4, !dbg !797
  %97 = load ptr, ptr %2, align 8, !dbg !797
  %98 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %97, i32 0, i32 70, !dbg !797
  %99 = load i32, ptr %98, align 4, !dbg !797
  %100 = load ptr, ptr %2, align 8, !dbg !797
  %101 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %100, i32 0, i32 0, !dbg !797
  %102 = load ptr, ptr %101, align 8, !dbg !797
  %103 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %102, i32 0, i32 6, !dbg !797
  %104 = getelementptr inbounds [8 x i32], ptr %103, i64 0, i64 2, !dbg !797
  store i32 %99, ptr %104, align 4, !dbg !797
  %105 = load ptr, ptr %2, align 8, !dbg !797
  %106 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %105, i32 0, i32 71, !dbg !797
  %107 = load i32, ptr %106, align 8, !dbg !797
  %108 = load ptr, ptr %2, align 8, !dbg !797
  %109 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %108, i32 0, i32 0, !dbg !797
  %110 = load ptr, ptr %109, align 8, !dbg !797
  %111 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %110, i32 0, i32 6, !dbg !797
  %112 = getelementptr inbounds [8 x i32], ptr %111, i64 0, i64 3, !dbg !797
  store i32 %107, ptr %112, align 4, !dbg !797
  %113 = load ptr, ptr %2, align 8, !dbg !797
  %114 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %113, i32 0, i32 0, !dbg !797
  %115 = load ptr, ptr %114, align 8, !dbg !797
  %116 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %115, i32 0, i32 0, !dbg !797
  %117 = load ptr, ptr %116, align 8, !dbg !797
  %118 = load ptr, ptr %2, align 8, !dbg !797
  call void %117(ptr noundef %118), !dbg !797
  br label %119, !dbg !797

119:                                              ; preds = %76, %73
  store i32 0, ptr %6, align 4, !dbg !798
  br label %120, !dbg !800

120:                                              ; preds = %237, %119
  %121 = load i32, ptr %6, align 4, !dbg !801
  %122 = load ptr, ptr %2, align 8, !dbg !803
  %123 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %122, i32 0, i32 62, !dbg !804
  %124 = load i32, ptr %123, align 8, !dbg !804
  %125 = icmp slt i32 %121, %124, !dbg !805
  br i1 %125, label %126, label %240, !dbg !806

126:                                              ; preds = %120
    #dbg_declare(ptr %11, !807, !DIExpression(), !809)
  %127 = load ptr, ptr %2, align 8, !dbg !810
  %128 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %127, i32 0, i32 63, !dbg !811
  %129 = load i32, ptr %6, align 4, !dbg !812
  %130 = sext i32 %129 to i64, !dbg !810
  %131 = getelementptr inbounds [4 x ptr], ptr %128, i64 0, i64 %130, !dbg !810
  %132 = load ptr, ptr %131, align 8, !dbg !810
  %133 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %132, i32 0, i32 1, !dbg !813
  %134 = load i32, ptr %133, align 4, !dbg !813
  store i32 %134, ptr %11, align 4, !dbg !809
  %135 = load ptr, ptr %2, align 8, !dbg !814
  %136 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %135, i32 0, i32 38, !dbg !815
  %137 = load ptr, ptr %136, align 8, !dbg !815
  %138 = load i32, ptr %11, align 4, !dbg !816
  %139 = sext i32 %138 to i64, !dbg !814
  %140 = getelementptr inbounds [64 x i32], ptr %137, i64 %139, !dbg !814
  %141 = getelementptr inbounds [64 x i32], ptr %140, i64 0, i64 0, !dbg !814
  store ptr %141, ptr %9, align 8, !dbg !817
  %142 = load i32, ptr %4, align 4, !dbg !818
  %143 = icmp ne i32 %142, 0, !dbg !818
  br i1 %143, label %171, label %144, !dbg !820

144:                                              ; preds = %126
  %145 = load ptr, ptr %9, align 8, !dbg !821
  %146 = getelementptr inbounds i32, ptr %145, i64 0, !dbg !821
  %147 = load i32, ptr %146, align 4, !dbg !821
  %148 = icmp slt i32 %147, 0, !dbg !822
  br i1 %148, label %149, label %171, !dbg !820

149:                                              ; preds = %144
  %150 = load ptr, ptr %2, align 8, !dbg !823
  %151 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %150, i32 0, i32 0, !dbg !823
  %152 = load ptr, ptr %151, align 8, !dbg !823
  %153 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %152, i32 0, i32 5, !dbg !823
  store i32 111, ptr %153, align 8, !dbg !823
  %154 = load i32, ptr %11, align 4, !dbg !823
  %155 = load ptr, ptr %2, align 8, !dbg !823
  %156 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %155, i32 0, i32 0, !dbg !823
  %157 = load ptr, ptr %156, align 8, !dbg !823
  %158 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %157, i32 0, i32 6, !dbg !823
  %159 = getelementptr inbounds [8 x i32], ptr %158, i64 0, i64 0, !dbg !823
  store i32 %154, ptr %159, align 4, !dbg !823
  %160 = load ptr, ptr %2, align 8, !dbg !823
  %161 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %160, i32 0, i32 0, !dbg !823
  %162 = load ptr, ptr %161, align 8, !dbg !823
  %163 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %162, i32 0, i32 6, !dbg !823
  %164 = getelementptr inbounds [8 x i32], ptr %163, i64 0, i64 1, !dbg !823
  store i32 0, ptr %164, align 4, !dbg !823
  %165 = load ptr, ptr %2, align 8, !dbg !823
  %166 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %165, i32 0, i32 0, !dbg !823
  %167 = load ptr, ptr %166, align 8, !dbg !823
  %168 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %167, i32 0, i32 1, !dbg !823
  %169 = load ptr, ptr %168, align 8, !dbg !823
  %170 = load ptr, ptr %2, align 8, !dbg !823
  call void %169(ptr noundef %170, i32 noundef -1), !dbg !823
  br label %171, !dbg !823

171:                                              ; preds = %149, %144, %126
  %172 = load ptr, ptr %2, align 8, !dbg !824
  %173 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %172, i32 0, i32 68, !dbg !826
  %174 = load i32, ptr %173, align 4, !dbg !826
  store i32 %174, ptr %7, align 4, !dbg !827
  br label %175, !dbg !828

175:                                              ; preds = %233, %171
  %176 = load i32, ptr %7, align 4, !dbg !829
  %177 = load ptr, ptr %2, align 8, !dbg !831
  %178 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %177, i32 0, i32 69, !dbg !832
  %179 = load i32, ptr %178, align 8, !dbg !832
  %180 = icmp sle i32 %176, %179, !dbg !833
  br i1 %180, label %181, label %236, !dbg !834

181:                                              ; preds = %175
    #dbg_declare(ptr %12, !835, !DIExpression(), !837)
  %182 = load ptr, ptr %9, align 8, !dbg !838
  %183 = load i32, ptr %7, align 4, !dbg !839
  %184 = sext i32 %183 to i64, !dbg !838
  %185 = getelementptr inbounds i32, ptr %182, i64 %184, !dbg !838
  %186 = load i32, ptr %185, align 4, !dbg !838
  %187 = icmp slt i32 %186, 0, !dbg !840
  br i1 %187, label %188, label %189, !dbg !841

188:                                              ; preds = %181
  br label %195, !dbg !841

189:                                              ; preds = %181
  %190 = load ptr, ptr %9, align 8, !dbg !842
  %191 = load i32, ptr %7, align 4, !dbg !843
  %192 = sext i32 %191 to i64, !dbg !842
  %193 = getelementptr inbounds i32, ptr %190, i64 %192, !dbg !842
  %194 = load i32, ptr %193, align 4, !dbg !842
  br label %195, !dbg !841

195:                                              ; preds = %189, %188
  %196 = phi i32 [ 0, %188 ], [ %194, %189 ], !dbg !841
  store i32 %196, ptr %12, align 4, !dbg !837
  %197 = load ptr, ptr %2, align 8, !dbg !844
  %198 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %197, i32 0, i32 70, !dbg !846
  %199 = load i32, ptr %198, align 4, !dbg !846
  %200 = load i32, ptr %12, align 4, !dbg !847
  %201 = icmp ne i32 %199, %200, !dbg !848
  br i1 %201, label %202, label %225, !dbg !848

202:                                              ; preds = %195
  %203 = load ptr, ptr %2, align 8, !dbg !849
  %204 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %203, i32 0, i32 0, !dbg !849
  %205 = load ptr, ptr %204, align 8, !dbg !849
  %206 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %205, i32 0, i32 5, !dbg !849
  store i32 111, ptr %206, align 8, !dbg !849
  %207 = load i32, ptr %11, align 4, !dbg !849
  %208 = load ptr, ptr %2, align 8, !dbg !849
  %209 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %208, i32 0, i32 0, !dbg !849
  %210 = load ptr, ptr %209, align 8, !dbg !849
  %211 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %210, i32 0, i32 6, !dbg !849
  %212 = getelementptr inbounds [8 x i32], ptr %211, i64 0, i64 0, !dbg !849
  store i32 %207, ptr %212, align 4, !dbg !849
  %213 = load i32, ptr %7, align 4, !dbg !849
  %214 = load ptr, ptr %2, align 8, !dbg !849
  %215 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %214, i32 0, i32 0, !dbg !849
  %216 = load ptr, ptr %215, align 8, !dbg !849
  %217 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %216, i32 0, i32 6, !dbg !849
  %218 = getelementptr inbounds [8 x i32], ptr %217, i64 0, i64 1, !dbg !849
  store i32 %213, ptr %218, align 4, !dbg !849
  %219 = load ptr, ptr %2, align 8, !dbg !849
  %220 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %219, i32 0, i32 0, !dbg !849
  %221 = load ptr, ptr %220, align 8, !dbg !849
  %222 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %221, i32 0, i32 1, !dbg !849
  %223 = load ptr, ptr %222, align 8, !dbg !849
  %224 = load ptr, ptr %2, align 8, !dbg !849
  call void %223(ptr noundef %224, i32 noundef -1), !dbg !849
  br label %225, !dbg !849

225:                                              ; preds = %202, %195
  %226 = load ptr, ptr %2, align 8, !dbg !850
  %227 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %226, i32 0, i32 71, !dbg !851
  %228 = load i32, ptr %227, align 8, !dbg !851
  %229 = load ptr, ptr %9, align 8, !dbg !852
  %230 = load i32, ptr %7, align 4, !dbg !853
  %231 = sext i32 %230 to i64, !dbg !852
  %232 = getelementptr inbounds i32, ptr %229, i64 %231, !dbg !852
  store i32 %228, ptr %232, align 4, !dbg !854
  br label %233, !dbg !855

233:                                              ; preds = %225
  %234 = load i32, ptr %7, align 4, !dbg !856
  %235 = add nsw i32 %234, 1, !dbg !856
  store i32 %235, ptr %7, align 4, !dbg !856
  br label %175, !dbg !857, !llvm.loop !858

236:                                              ; preds = %175
  br label %237, !dbg !860

237:                                              ; preds = %236
  %238 = load i32, ptr %6, align 4, !dbg !861
  %239 = add nsw i32 %238, 1, !dbg !861
  store i32 %239, ptr %6, align 4, !dbg !861
  br label %120, !dbg !862, !llvm.loop !863

240:                                              ; preds = %120
  %241 = load ptr, ptr %2, align 8, !dbg !865
  %242 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %241, i32 0, i32 70, !dbg !867
  %243 = load i32, ptr %242, align 4, !dbg !867
  %244 = icmp eq i32 %243, 0, !dbg !868
  br i1 %244, label %245, label %257, !dbg !868

245:                                              ; preds = %240
  %246 = load i32, ptr %4, align 4, !dbg !869
  %247 = icmp ne i32 %246, 0, !dbg !869
  br i1 %247, label %248, label %252, !dbg !869

248:                                              ; preds = %245
  %249 = load ptr, ptr %3, align 8, !dbg !872
  %250 = getelementptr inbounds nuw %struct.phuff_entropy_decoder, ptr %249, i32 0, i32 0, !dbg !873
  %251 = getelementptr inbounds nuw %struct.jpeg_entropy_decoder, ptr %250, i32 0, i32 1, !dbg !874
  store ptr @decode_mcu_DC_first, ptr %251, align 8, !dbg !875
  br label %256, !dbg !872

252:                                              ; preds = %245
  %253 = load ptr, ptr %3, align 8, !dbg !876
  %254 = getelementptr inbounds nuw %struct.phuff_entropy_decoder, ptr %253, i32 0, i32 0, !dbg !877
  %255 = getelementptr inbounds nuw %struct.jpeg_entropy_decoder, ptr %254, i32 0, i32 1, !dbg !878
  store ptr @decode_mcu_AC_first, ptr %255, align 8, !dbg !879
  br label %256

256:                                              ; preds = %252, %248
  br label %269, !dbg !880

257:                                              ; preds = %240
  %258 = load i32, ptr %4, align 4, !dbg !881
  %259 = icmp ne i32 %258, 0, !dbg !881
  br i1 %259, label %260, label %264, !dbg !881

260:                                              ; preds = %257
  %261 = load ptr, ptr %3, align 8, !dbg !884
  %262 = getelementptr inbounds nuw %struct.phuff_entropy_decoder, ptr %261, i32 0, i32 0, !dbg !885
  %263 = getelementptr inbounds nuw %struct.jpeg_entropy_decoder, ptr %262, i32 0, i32 1, !dbg !886
  store ptr @decode_mcu_DC_refine, ptr %263, align 8, !dbg !887
  br label %268, !dbg !884

264:                                              ; preds = %257
  %265 = load ptr, ptr %3, align 8, !dbg !888
  %266 = getelementptr inbounds nuw %struct.phuff_entropy_decoder, ptr %265, i32 0, i32 0, !dbg !889
  %267 = getelementptr inbounds nuw %struct.jpeg_entropy_decoder, ptr %266, i32 0, i32 1, !dbg !890
  store ptr @decode_mcu_AC_refine, ptr %267, align 8, !dbg !891
  br label %268

268:                                              ; preds = %264, %260
  br label %269

269:                                              ; preds = %268, %256
  store i32 0, ptr %6, align 4, !dbg !892
  br label %270, !dbg !894

270:                                              ; preds = %400, %269
  %271 = load i32, ptr %6, align 4, !dbg !895
  %272 = load ptr, ptr %2, align 8, !dbg !897
  %273 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %272, i32 0, i32 62, !dbg !898
  %274 = load i32, ptr %273, align 8, !dbg !898
  %275 = icmp slt i32 %271, %274, !dbg !899
  br i1 %275, label %276, label %403, !dbg !900

276:                                              ; preds = %270
  %277 = load ptr, ptr %2, align 8, !dbg !901
  %278 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %277, i32 0, i32 63, !dbg !903
  %279 = load i32, ptr %6, align 4, !dbg !904
  %280 = sext i32 %279 to i64, !dbg !901
  %281 = getelementptr inbounds [4 x ptr], ptr %278, i64 0, i64 %280, !dbg !901
  %282 = load ptr, ptr %281, align 8, !dbg !901
  store ptr %282, ptr %10, align 8, !dbg !905
  %283 = load i32, ptr %4, align 4, !dbg !906
  %284 = icmp ne i32 %283, 0, !dbg !906
  br i1 %284, label %285, label %338, !dbg !906

285:                                              ; preds = %276
  %286 = load ptr, ptr %2, align 8, !dbg !908
  %287 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %286, i32 0, i32 70, !dbg !911
  %288 = load i32, ptr %287, align 4, !dbg !911
  %289 = icmp eq i32 %288, 0, !dbg !912
  br i1 %289, label %290, label %337, !dbg !912

290:                                              ; preds = %285
  %291 = load ptr, ptr %10, align 8, !dbg !913
  %292 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %291, i32 0, i32 5, !dbg !915
  %293 = load i32, ptr %292, align 4, !dbg !915
  store i32 %293, ptr %8, align 4, !dbg !916
  %294 = load i32, ptr %8, align 4, !dbg !917
  %295 = icmp slt i32 %294, 0, !dbg !919
  br i1 %295, label %307, label %296, !dbg !920

296:                                              ; preds = %290
  %297 = load i32, ptr %8, align 4, !dbg !921
  %298 = icmp sge i32 %297, 4, !dbg !922
  br i1 %298, label %307, label %299, !dbg !923

299:                                              ; preds = %296
  %300 = load ptr, ptr %2, align 8, !dbg !924
  %301 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %300, i32 0, i32 40, !dbg !925
  %302 = load i32, ptr %8, align 4, !dbg !926
  %303 = sext i32 %302 to i64, !dbg !924
  %304 = getelementptr inbounds [4 x ptr], ptr %301, i64 0, i64 %303, !dbg !924
  %305 = load ptr, ptr %304, align 8, !dbg !924
  %306 = icmp eq ptr %305, null, !dbg !927
  br i1 %306, label %307, label %324, !dbg !923

307:                                              ; preds = %299, %296, %290
  %308 = load ptr, ptr %2, align 8, !dbg !928
  %309 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %308, i32 0, i32 0, !dbg !928
  %310 = load ptr, ptr %309, align 8, !dbg !928
  %311 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %310, i32 0, i32 5, !dbg !928
  store i32 49, ptr %311, align 8, !dbg !928
  %312 = load i32, ptr %8, align 4, !dbg !928
  %313 = load ptr, ptr %2, align 8, !dbg !928
  %314 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %313, i32 0, i32 0, !dbg !928
  %315 = load ptr, ptr %314, align 8, !dbg !928
  %316 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %315, i32 0, i32 6, !dbg !928
  %317 = getelementptr inbounds [8 x i32], ptr %316, i64 0, i64 0, !dbg !928
  store i32 %312, ptr %317, align 4, !dbg !928
  %318 = load ptr, ptr %2, align 8, !dbg !928
  %319 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %318, i32 0, i32 0, !dbg !928
  %320 = load ptr, ptr %319, align 8, !dbg !928
  %321 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %320, i32 0, i32 0, !dbg !928
  %322 = load ptr, ptr %321, align 8, !dbg !928
  %323 = load ptr, ptr %2, align 8, !dbg !928
  call void %322(ptr noundef %323), !dbg !928
  br label %324, !dbg !928

324:                                              ; preds = %307, %299
  %325 = load ptr, ptr %2, align 8, !dbg !929
  %326 = load ptr, ptr %2, align 8, !dbg !930
  %327 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %326, i32 0, i32 40, !dbg !931
  %328 = load i32, ptr %8, align 4, !dbg !932
  %329 = sext i32 %328 to i64, !dbg !930
  %330 = getelementptr inbounds [4 x ptr], ptr %327, i64 0, i64 %329, !dbg !930
  %331 = load ptr, ptr %330, align 8, !dbg !930
  %332 = load ptr, ptr %3, align 8, !dbg !933
  %333 = getelementptr inbounds nuw %struct.phuff_entropy_decoder, ptr %332, i32 0, i32 4, !dbg !934
  %334 = load i32, ptr %8, align 4, !dbg !935
  %335 = sext i32 %334 to i64, !dbg !933
  %336 = getelementptr inbounds [4 x ptr], ptr %333, i64 0, i64 %335, !dbg !933
  call void @jpeg_make_d_derived_tbl(ptr noundef %325, ptr noundef %331, ptr noundef %336), !dbg !936
  br label %337, !dbg !937

337:                                              ; preds = %324, %285
  br label %393, !dbg !938

338:                                              ; preds = %276
  %339 = load ptr, ptr %10, align 8, !dbg !939
  %340 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %339, i32 0, i32 6, !dbg !941
  %341 = load i32, ptr %340, align 8, !dbg !941
  store i32 %341, ptr %8, align 4, !dbg !942
  %342 = load i32, ptr %8, align 4, !dbg !943
  %343 = icmp slt i32 %342, 0, !dbg !945
  br i1 %343, label %355, label %344, !dbg !946

344:                                              ; preds = %338
  %345 = load i32, ptr %8, align 4, !dbg !947
  %346 = icmp sge i32 %345, 4, !dbg !948
  br i1 %346, label %355, label %347, !dbg !949

347:                                              ; preds = %344
  %348 = load ptr, ptr %2, align 8, !dbg !950
  %349 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %348, i32 0, i32 41, !dbg !951
  %350 = load i32, ptr %8, align 4, !dbg !952
  %351 = sext i32 %350 to i64, !dbg !950
  %352 = getelementptr inbounds [4 x ptr], ptr %349, i64 0, i64 %351, !dbg !950
  %353 = load ptr, ptr %352, align 8, !dbg !950
  %354 = icmp eq ptr %353, null, !dbg !953
  br i1 %354, label %355, label %372, !dbg !949

355:                                              ; preds = %347, %344, %338
  %356 = load ptr, ptr %2, align 8, !dbg !954
  %357 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %356, i32 0, i32 0, !dbg !954
  %358 = load ptr, ptr %357, align 8, !dbg !954
  %359 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %358, i32 0, i32 5, !dbg !954
  store i32 49, ptr %359, align 8, !dbg !954
  %360 = load i32, ptr %8, align 4, !dbg !954
  %361 = load ptr, ptr %2, align 8, !dbg !954
  %362 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %361, i32 0, i32 0, !dbg !954
  %363 = load ptr, ptr %362, align 8, !dbg !954
  %364 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %363, i32 0, i32 6, !dbg !954
  %365 = getelementptr inbounds [8 x i32], ptr %364, i64 0, i64 0, !dbg !954
  store i32 %360, ptr %365, align 4, !dbg !954
  %366 = load ptr, ptr %2, align 8, !dbg !954
  %367 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %366, i32 0, i32 0, !dbg !954
  %368 = load ptr, ptr %367, align 8, !dbg !954
  %369 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %368, i32 0, i32 0, !dbg !954
  %370 = load ptr, ptr %369, align 8, !dbg !954
  %371 = load ptr, ptr %2, align 8, !dbg !954
  call void %370(ptr noundef %371), !dbg !954
  br label %372, !dbg !954

372:                                              ; preds = %355, %347
  %373 = load ptr, ptr %2, align 8, !dbg !955
  %374 = load ptr, ptr %2, align 8, !dbg !956
  %375 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %374, i32 0, i32 41, !dbg !957
  %376 = load i32, ptr %8, align 4, !dbg !958
  %377 = sext i32 %376 to i64, !dbg !956
  %378 = getelementptr inbounds [4 x ptr], ptr %375, i64 0, i64 %377, !dbg !956
  %379 = load ptr, ptr %378, align 8, !dbg !956
  %380 = load ptr, ptr %3, align 8, !dbg !959
  %381 = getelementptr inbounds nuw %struct.phuff_entropy_decoder, ptr %380, i32 0, i32 4, !dbg !960
  %382 = load i32, ptr %8, align 4, !dbg !961
  %383 = sext i32 %382 to i64, !dbg !959
  %384 = getelementptr inbounds [4 x ptr], ptr %381, i64 0, i64 %383, !dbg !959
  call void @jpeg_make_d_derived_tbl(ptr noundef %373, ptr noundef %379, ptr noundef %384), !dbg !962
  %385 = load ptr, ptr %3, align 8, !dbg !963
  %386 = getelementptr inbounds nuw %struct.phuff_entropy_decoder, ptr %385, i32 0, i32 4, !dbg !964
  %387 = load i32, ptr %8, align 4, !dbg !965
  %388 = sext i32 %387 to i64, !dbg !963
  %389 = getelementptr inbounds [4 x ptr], ptr %386, i64 0, i64 %388, !dbg !963
  %390 = load ptr, ptr %389, align 8, !dbg !963
  %391 = load ptr, ptr %3, align 8, !dbg !966
  %392 = getelementptr inbounds nuw %struct.phuff_entropy_decoder, ptr %391, i32 0, i32 5, !dbg !967
  store ptr %390, ptr %392, align 8, !dbg !968
  br label %393

393:                                              ; preds = %372, %337
  %394 = load ptr, ptr %3, align 8, !dbg !969
  %395 = getelementptr inbounds nuw %struct.phuff_entropy_decoder, ptr %394, i32 0, i32 2, !dbg !970
  %396 = getelementptr inbounds nuw %struct.savable_state, ptr %395, i32 0, i32 1, !dbg !971
  %397 = load i32, ptr %6, align 4, !dbg !972
  %398 = sext i32 %397 to i64, !dbg !969
  %399 = getelementptr inbounds [4 x i32], ptr %396, i64 0, i64 %398, !dbg !969
  store i32 0, ptr %399, align 4, !dbg !973
  br label %400, !dbg !974

400:                                              ; preds = %393
  %401 = load i32, ptr %6, align 4, !dbg !975
  %402 = add nsw i32 %401, 1, !dbg !975
  store i32 %402, ptr %6, align 4, !dbg !975
  br label %270, !dbg !976, !llvm.loop !977

403:                                              ; preds = %270
  %404 = load ptr, ptr %3, align 8, !dbg !979
  %405 = getelementptr inbounds nuw %struct.phuff_entropy_decoder, ptr %404, i32 0, i32 1, !dbg !980
  %406 = getelementptr inbounds nuw %struct.bitread_perm_state, ptr %405, i32 0, i32 1, !dbg !981
  store i32 0, ptr %406, align 8, !dbg !982
  %407 = load ptr, ptr %3, align 8, !dbg !983
  %408 = getelementptr inbounds nuw %struct.phuff_entropy_decoder, ptr %407, i32 0, i32 1, !dbg !984
  %409 = getelementptr inbounds nuw %struct.bitread_perm_state, ptr %408, i32 0, i32 0, !dbg !985
  store i64 0, ptr %409, align 8, !dbg !986
  %410 = load ptr, ptr %3, align 8, !dbg !987
  %411 = getelementptr inbounds nuw %struct.phuff_entropy_decoder, ptr %410, i32 0, i32 1, !dbg !988
  %412 = getelementptr inbounds nuw %struct.bitread_perm_state, ptr %411, i32 0, i32 2, !dbg !989
  store i32 0, ptr %412, align 4, !dbg !990
  %413 = load ptr, ptr %3, align 8, !dbg !991
  %414 = getelementptr inbounds nuw %struct.phuff_entropy_decoder, ptr %413, i32 0, i32 2, !dbg !992
  %415 = getelementptr inbounds nuw %struct.savable_state, ptr %414, i32 0, i32 0, !dbg !993
  store i32 0, ptr %415, align 8, !dbg !994
  %416 = load ptr, ptr %2, align 8, !dbg !995
  %417 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %416, i32 0, i32 49, !dbg !996
  %418 = load i32, ptr %417, align 8, !dbg !996
  %419 = load ptr, ptr %3, align 8, !dbg !997
  %420 = getelementptr inbounds nuw %struct.phuff_entropy_decoder, ptr %419, i32 0, i32 3, !dbg !998
  store i32 %418, ptr %420, align 4, !dbg !999
  ret void, !dbg !1000
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @decode_mcu_DC_first(ptr noundef %0, ptr noundef %1) #0 !dbg !1001 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.bitread_working_state, align 8
  %16 = alloca %struct.savable_state, align 4
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !1002, !DIExpression(), !1003)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !1004, !DIExpression(), !1005)
    #dbg_declare(ptr %6, !1006, !DIExpression(), !1007)
  %21 = load ptr, ptr %4, align 8, !dbg !1008
  %22 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %21, i32 0, i32 79, !dbg !1009
  %23 = load ptr, ptr %22, align 8, !dbg !1009
  store ptr %23, ptr %6, align 8, !dbg !1007
    #dbg_declare(ptr %7, !1010, !DIExpression(), !1011)
  %24 = load ptr, ptr %4, align 8, !dbg !1012
  %25 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %24, i32 0, i32 71, !dbg !1013
  %26 = load i32, ptr %25, align 8, !dbg !1013
  store i32 %26, ptr %7, align 4, !dbg !1011
    #dbg_declare(ptr %8, !1014, !DIExpression(), !1015)
    #dbg_declare(ptr %9, !1016, !DIExpression(), !1017)
    #dbg_declare(ptr %10, !1018, !DIExpression(), !1019)
    #dbg_declare(ptr %11, !1020, !DIExpression(), !1021)
    #dbg_declare(ptr %12, !1022, !DIExpression(), !1023)
    #dbg_declare(ptr %13, !1024, !DIExpression(), !1025)
    #dbg_declare(ptr %14, !1026, !DIExpression(), !1025)
    #dbg_declare(ptr %15, !1027, !DIExpression(), !1025)
    #dbg_declare(ptr %16, !1039, !DIExpression(), !1040)
    #dbg_declare(ptr %17, !1041, !DIExpression(), !1042)
    #dbg_declare(ptr %18, !1043, !DIExpression(), !1044)
  %27 = load ptr, ptr %4, align 8, !dbg !1045
  %28 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %27, i32 0, i32 49, !dbg !1047
  %29 = load i32, ptr %28, align 8, !dbg !1047
  %30 = icmp ne i32 %29, 0, !dbg !1045
  br i1 %30, label %31, label %43, !dbg !1045

31:                                               ; preds = %2
  %32 = load ptr, ptr %6, align 8, !dbg !1048
  %33 = getelementptr inbounds nuw %struct.phuff_entropy_decoder, ptr %32, i32 0, i32 3, !dbg !1051
  %34 = load i32, ptr %33, align 4, !dbg !1051
  %35 = icmp eq i32 %34, 0, !dbg !1052
  br i1 %35, label %36, label %42, !dbg !1052

36:                                               ; preds = %31
  %37 = load ptr, ptr %4, align 8, !dbg !1053
  %38 = call i32 @process_restart(ptr noundef %37), !dbg !1055
  %39 = icmp ne i32 %38, 0, !dbg !1055
  br i1 %39, label %41, label %40, !dbg !1056

40:                                               ; preds = %36
  store i32 0, ptr %3, align 4, !dbg !1057
  br label %266, !dbg !1057

41:                                               ; preds = %36
  br label %42, !dbg !1058

42:                                               ; preds = %41, %31
  br label %43, !dbg !1059

43:                                               ; preds = %42, %2
  %44 = load ptr, ptr %4, align 8, !dbg !1060
  %45 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %15, i32 0, i32 5, !dbg !1060
  store ptr %44, ptr %45, align 8, !dbg !1060
  %46 = load ptr, ptr %4, align 8, !dbg !1060
  %47 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %46, i32 0, i32 5, !dbg !1060
  %48 = load ptr, ptr %47, align 8, !dbg !1060
  %49 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %48, i32 0, i32 0, !dbg !1060
  %50 = load ptr, ptr %49, align 8, !dbg !1060
  %51 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %15, i32 0, i32 0, !dbg !1060
  store ptr %50, ptr %51, align 8, !dbg !1060
  %52 = load ptr, ptr %4, align 8, !dbg !1060
  %53 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %52, i32 0, i32 5, !dbg !1060
  %54 = load ptr, ptr %53, align 8, !dbg !1060
  %55 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %54, i32 0, i32 1, !dbg !1060
  %56 = load i64, ptr %55, align 8, !dbg !1060
  %57 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %15, i32 0, i32 1, !dbg !1060
  store i64 %56, ptr %57, align 8, !dbg !1060
  %58 = load ptr, ptr %4, align 8, !dbg !1060
  %59 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %58, i32 0, i32 72, !dbg !1060
  %60 = load i32, ptr %59, align 4, !dbg !1060
  %61 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %15, i32 0, i32 2, !dbg !1060
  store i32 %60, ptr %61, align 8, !dbg !1060
  %62 = load ptr, ptr %6, align 8, !dbg !1060
  %63 = getelementptr inbounds nuw %struct.phuff_entropy_decoder, ptr %62, i32 0, i32 1, !dbg !1060
  %64 = getelementptr inbounds nuw %struct.bitread_perm_state, ptr %63, i32 0, i32 0, !dbg !1060
  %65 = load i64, ptr %64, align 8, !dbg !1060
  store i64 %65, ptr %13, align 8, !dbg !1060
  %66 = load ptr, ptr %6, align 8, !dbg !1060
  %67 = getelementptr inbounds nuw %struct.phuff_entropy_decoder, ptr %66, i32 0, i32 1, !dbg !1060
  %68 = getelementptr inbounds nuw %struct.bitread_perm_state, ptr %67, i32 0, i32 1, !dbg !1060
  %69 = load i32, ptr %68, align 8, !dbg !1060
  store i32 %69, ptr %14, align 4, !dbg !1060
  %70 = load ptr, ptr %6, align 8, !dbg !1060
  %71 = getelementptr inbounds nuw %struct.phuff_entropy_decoder, ptr %70, i32 0, i32 1, !dbg !1060
  %72 = getelementptr inbounds nuw %struct.bitread_perm_state, ptr %71, i32 0, i32 2, !dbg !1060
  %73 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %15, i32 0, i32 6, !dbg !1060
  store ptr %72, ptr %73, align 8, !dbg !1060
  %74 = load ptr, ptr %6, align 8, !dbg !1061
  %75 = getelementptr inbounds nuw %struct.phuff_entropy_decoder, ptr %74, i32 0, i32 2, !dbg !1061
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %16, ptr align 8 %75, i64 20, i1 false), !dbg !1061
  store i32 0, ptr %10, align 4, !dbg !1062
  br label %76, !dbg !1064

76:                                               ; preds = %232, %43
  %77 = load i32, ptr %10, align 4, !dbg !1065
  %78 = load ptr, ptr %4, align 8, !dbg !1067
  %79 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %78, i32 0, i32 66, !dbg !1068
  %80 = load i32, ptr %79, align 8, !dbg !1068
  %81 = icmp slt i32 %77, %80, !dbg !1069
  br i1 %81, label %82, label %235, !dbg !1070

82:                                               ; preds = %76
  %83 = load ptr, ptr %5, align 8, !dbg !1071
  %84 = load i32, ptr %10, align 4, !dbg !1073
  %85 = sext i32 %84 to i64, !dbg !1071
  %86 = getelementptr inbounds ptr, ptr %83, i64 %85, !dbg !1071
  %87 = load ptr, ptr %86, align 8, !dbg !1071
  store ptr %87, ptr %12, align 8, !dbg !1074
  %88 = load ptr, ptr %4, align 8, !dbg !1075
  %89 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %88, i32 0, i32 67, !dbg !1076
  %90 = load i32, ptr %10, align 4, !dbg !1077
  %91 = sext i32 %90 to i64, !dbg !1075
  %92 = getelementptr inbounds [10 x i32], ptr %89, i64 0, i64 %91, !dbg !1075
  %93 = load i32, ptr %92, align 4, !dbg !1075
  store i32 %93, ptr %11, align 4, !dbg !1078
  %94 = load ptr, ptr %4, align 8, !dbg !1079
  %95 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %94, i32 0, i32 63, !dbg !1080
  %96 = load i32, ptr %11, align 4, !dbg !1081
  %97 = sext i32 %96 to i64, !dbg !1079
  %98 = getelementptr inbounds [4 x ptr], ptr %95, i64 0, i64 %97, !dbg !1079
  %99 = load ptr, ptr %98, align 8, !dbg !1079
  store ptr %99, ptr %18, align 8, !dbg !1082
  %100 = load ptr, ptr %6, align 8, !dbg !1083
  %101 = getelementptr inbounds nuw %struct.phuff_entropy_decoder, ptr %100, i32 0, i32 4, !dbg !1084
  %102 = load ptr, ptr %18, align 8, !dbg !1085
  %103 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %102, i32 0, i32 5, !dbg !1086
  %104 = load i32, ptr %103, align 4, !dbg !1086
  %105 = sext i32 %104 to i64, !dbg !1083
  %106 = getelementptr inbounds [4 x ptr], ptr %101, i64 0, i64 %105, !dbg !1083
  %107 = load ptr, ptr %106, align 8, !dbg !1083
  store ptr %107, ptr %17, align 8, !dbg !1087
    #dbg_declare(ptr %19, !1088, !DIExpression(), !1090)
    #dbg_declare(ptr %20, !1091, !DIExpression(), !1090)
  %108 = load i32, ptr %14, align 4, !dbg !1092
  %109 = icmp slt i32 %108, 8, !dbg !1092
  br i1 %109, label %110, label %125, !dbg !1092

110:                                              ; preds = %82
  %111 = load i64, ptr %13, align 8, !dbg !1094
  %112 = load i32, ptr %14, align 4, !dbg !1094
  %113 = call i32 @jpeg_fill_bit_buffer(ptr noundef %15, i64 noundef %111, i32 noundef %112, i32 noundef 0), !dbg !1094
  %114 = icmp ne i32 %113, 0, !dbg !1094
  br i1 %114, label %116, label %115, !dbg !1094

115:                                              ; preds = %110
  store i32 0, ptr %3, align 4, !dbg !1097
  br label %266, !dbg !1097

116:                                              ; preds = %110
  %117 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %15, i32 0, i32 3, !dbg !1099
  %118 = load i64, ptr %117, align 8, !dbg !1099
  store i64 %118, ptr %13, align 8, !dbg !1099
  %119 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %15, i32 0, i32 4, !dbg !1099
  %120 = load i32, ptr %119, align 8, !dbg !1099
  store i32 %120, ptr %14, align 4, !dbg !1099
  %121 = load i32, ptr %14, align 4, !dbg !1100
  %122 = icmp slt i32 %121, 8, !dbg !1100
  br i1 %122, label %123, label %124, !dbg !1100

123:                                              ; preds = %116
  store i32 1, ptr %19, align 4, !dbg !1102
  br label %152, !dbg !1102

124:                                              ; preds = %116
  br label %125, !dbg !1099

125:                                              ; preds = %124, %82
  %126 = load i64, ptr %13, align 8, !dbg !1090
  %127 = load i32, ptr %14, align 4, !dbg !1090
  %128 = sub nsw i32 %127, 8, !dbg !1090
  %129 = zext i32 %128 to i64, !dbg !1090
  %130 = ashr i64 %126, %129, !dbg !1090
  %131 = trunc i64 %130 to i32, !dbg !1090
  %132 = and i32 %131, 255, !dbg !1090
  store i32 %132, ptr %20, align 4, !dbg !1090
  %133 = load ptr, ptr %17, align 8, !dbg !1104
  %134 = getelementptr inbounds nuw %struct.d_derived_tbl, ptr %133, i32 0, i32 4, !dbg !1104
  %135 = load i32, ptr %20, align 4, !dbg !1104
  %136 = sext i32 %135 to i64, !dbg !1104
  %137 = getelementptr inbounds [256 x i32], ptr %134, i64 0, i64 %136, !dbg !1104
  %138 = load i32, ptr %137, align 4, !dbg !1104
  store i32 %138, ptr %19, align 4, !dbg !1104
  %139 = icmp ne i32 %138, 0, !dbg !1104
  br i1 %139, label %140, label %151, !dbg !1104

140:                                              ; preds = %125
  %141 = load i32, ptr %19, align 4, !dbg !1106
  %142 = load i32, ptr %14, align 4, !dbg !1106
  %143 = sub nsw i32 %142, %141, !dbg !1106
  store i32 %143, ptr %14, align 4, !dbg !1106
  %144 = load ptr, ptr %17, align 8, !dbg !1106
  %145 = getelementptr inbounds nuw %struct.d_derived_tbl, ptr %144, i32 0, i32 5, !dbg !1106
  %146 = load i32, ptr %20, align 4, !dbg !1106
  %147 = sext i32 %146 to i64, !dbg !1106
  %148 = getelementptr inbounds [256 x i8], ptr %145, i64 0, i64 %147, !dbg !1106
  %149 = load i8, ptr %148, align 1, !dbg !1106
  %150 = zext i8 %149 to i32, !dbg !1106
  store i32 %150, ptr %8, align 4, !dbg !1106
  br label %165, !dbg !1106

151:                                              ; preds = %125
  store i32 9, ptr %19, align 4, !dbg !1108
  br label %152, !dbg !1108

152:                                              ; preds = %151, %123
    #dbg_label(!1110, !1108)
  %153 = load i64, ptr %13, align 8, !dbg !1111
  %154 = load i32, ptr %14, align 4, !dbg !1111
  %155 = load ptr, ptr %17, align 8, !dbg !1111
  %156 = load i32, ptr %19, align 4, !dbg !1111
  %157 = call i32 @jpeg_huff_decode(ptr noundef %15, i64 noundef %153, i32 noundef %154, ptr noundef %155, i32 noundef %156), !dbg !1111
  store i32 %157, ptr %8, align 4, !dbg !1111
  %158 = icmp slt i32 %157, 0, !dbg !1111
  br i1 %158, label %159, label %160, !dbg !1111

159:                                              ; preds = %152
  store i32 0, ptr %3, align 4, !dbg !1113
  br label %266, !dbg !1113

160:                                              ; preds = %152
  %161 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %15, i32 0, i32 3, !dbg !1108
  %162 = load i64, ptr %161, align 8, !dbg !1108
  store i64 %162, ptr %13, align 8, !dbg !1108
  %163 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %15, i32 0, i32 4, !dbg !1108
  %164 = load i32, ptr %163, align 8, !dbg !1108
  store i32 %164, ptr %14, align 4, !dbg !1108
  br label %165

165:                                              ; preds = %160, %140
  %166 = load i32, ptr %8, align 4, !dbg !1115
  %167 = icmp ne i32 %166, 0, !dbg !1115
  br i1 %167, label %168, label %213, !dbg !1115

168:                                              ; preds = %165
  %169 = load i32, ptr %14, align 4, !dbg !1117
  %170 = load i32, ptr %8, align 4, !dbg !1117
  %171 = icmp slt i32 %169, %170, !dbg !1117
  br i1 %171, label %172, label %184, !dbg !1117

172:                                              ; preds = %168
  %173 = load i64, ptr %13, align 8, !dbg !1121
  %174 = load i32, ptr %14, align 4, !dbg !1121
  %175 = load i32, ptr %8, align 4, !dbg !1121
  %176 = call i32 @jpeg_fill_bit_buffer(ptr noundef %15, i64 noundef %173, i32 noundef %174, i32 noundef %175), !dbg !1121
  %177 = icmp ne i32 %176, 0, !dbg !1121
  br i1 %177, label %179, label %178, !dbg !1121

178:                                              ; preds = %172
  store i32 0, ptr %3, align 4, !dbg !1124
  br label %266, !dbg !1124

179:                                              ; preds = %172
  %180 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %15, i32 0, i32 3, !dbg !1126
  %181 = load i64, ptr %180, align 8, !dbg !1126
  store i64 %181, ptr %13, align 8, !dbg !1126
  %182 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %15, i32 0, i32 4, !dbg !1126
  %183 = load i32, ptr %182, align 8, !dbg !1126
  store i32 %183, ptr %14, align 4, !dbg !1126
  br label %184, !dbg !1126

184:                                              ; preds = %179, %168
  %185 = load i64, ptr %13, align 8, !dbg !1127
  %186 = load i32, ptr %8, align 4, !dbg !1127
  %187 = load i32, ptr %14, align 4, !dbg !1127
  %188 = sub nsw i32 %187, %186, !dbg !1127
  store i32 %188, ptr %14, align 4, !dbg !1127
  %189 = zext i32 %188 to i64, !dbg !1127
  %190 = ashr i64 %185, %189, !dbg !1127
  %191 = trunc i64 %190 to i32, !dbg !1127
  %192 = load i32, ptr %8, align 4, !dbg !1127
  %193 = shl i32 1, %192, !dbg !1127
  %194 = sub nsw i32 %193, 1, !dbg !1127
  %195 = and i32 %191, %194, !dbg !1127
  store i32 %195, ptr %9, align 4, !dbg !1128
  %196 = load i32, ptr %9, align 4, !dbg !1129
  %197 = load i32, ptr %8, align 4, !dbg !1129
  %198 = sext i32 %197 to i64, !dbg !1129
  %199 = getelementptr inbounds [16 x i32], ptr @extend_test, i64 0, i64 %198, !dbg !1129
  %200 = load i32, ptr %199, align 4, !dbg !1129
  %201 = icmp slt i32 %196, %200, !dbg !1129
  br i1 %201, label %202, label %209, !dbg !1129

202:                                              ; preds = %184
  %203 = load i32, ptr %9, align 4, !dbg !1129
  %204 = load i32, ptr %8, align 4, !dbg !1129
  %205 = sext i32 %204 to i64, !dbg !1129
  %206 = getelementptr inbounds [16 x i32], ptr @extend_offset, i64 0, i64 %205, !dbg !1129
  %207 = load i32, ptr %206, align 4, !dbg !1129
  %208 = add nsw i32 %203, %207, !dbg !1129
  br label %211, !dbg !1129

209:                                              ; preds = %184
  %210 = load i32, ptr %9, align 4, !dbg !1129
  br label %211, !dbg !1129

211:                                              ; preds = %209, %202
  %212 = phi i32 [ %208, %202 ], [ %210, %209 ], !dbg !1129
  store i32 %212, ptr %8, align 4, !dbg !1130
  br label %213, !dbg !1131

213:                                              ; preds = %211, %165
  %214 = getelementptr inbounds nuw %struct.savable_state, ptr %16, i32 0, i32 1, !dbg !1132
  %215 = load i32, ptr %11, align 4, !dbg !1133
  %216 = sext i32 %215 to i64, !dbg !1134
  %217 = getelementptr inbounds [4 x i32], ptr %214, i64 0, i64 %216, !dbg !1134
  %218 = load i32, ptr %217, align 4, !dbg !1134
  %219 = load i32, ptr %8, align 4, !dbg !1135
  %220 = add nsw i32 %219, %218, !dbg !1135
  store i32 %220, ptr %8, align 4, !dbg !1135
  %221 = load i32, ptr %8, align 4, !dbg !1136
  %222 = getelementptr inbounds nuw %struct.savable_state, ptr %16, i32 0, i32 1, !dbg !1137
  %223 = load i32, ptr %11, align 4, !dbg !1138
  %224 = sext i32 %223 to i64, !dbg !1139
  %225 = getelementptr inbounds [4 x i32], ptr %222, i64 0, i64 %224, !dbg !1139
  store i32 %221, ptr %225, align 4, !dbg !1140
  %226 = load i32, ptr %8, align 4, !dbg !1141
  %227 = load i32, ptr %7, align 4, !dbg !1142
  %228 = shl i32 %226, %227, !dbg !1143
  %229 = trunc i32 %228 to i16, !dbg !1144
  %230 = load ptr, ptr %12, align 8, !dbg !1145
  %231 = getelementptr inbounds [64 x i16], ptr %230, i64 0, i64 0, !dbg !1146
  store i16 %229, ptr %231, align 2, !dbg !1147
  br label %232, !dbg !1148

232:                                              ; preds = %213
  %233 = load i32, ptr %10, align 4, !dbg !1149
  %234 = add nsw i32 %233, 1, !dbg !1149
  store i32 %234, ptr %10, align 4, !dbg !1149
  br label %76, !dbg !1150, !llvm.loop !1151

235:                                              ; preds = %76
  %236 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %15, i32 0, i32 0, !dbg !1153
  %237 = load ptr, ptr %236, align 8, !dbg !1153
  %238 = load ptr, ptr %4, align 8, !dbg !1153
  %239 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %238, i32 0, i32 5, !dbg !1153
  %240 = load ptr, ptr %239, align 8, !dbg !1153
  %241 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %240, i32 0, i32 0, !dbg !1153
  store ptr %237, ptr %241, align 8, !dbg !1153
  %242 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %15, i32 0, i32 1, !dbg !1153
  %243 = load i64, ptr %242, align 8, !dbg !1153
  %244 = load ptr, ptr %4, align 8, !dbg !1153
  %245 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %244, i32 0, i32 5, !dbg !1153
  %246 = load ptr, ptr %245, align 8, !dbg !1153
  %247 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %246, i32 0, i32 1, !dbg !1153
  store i64 %243, ptr %247, align 8, !dbg !1153
  %248 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %15, i32 0, i32 2, !dbg !1153
  %249 = load i32, ptr %248, align 8, !dbg !1153
  %250 = load ptr, ptr %4, align 8, !dbg !1153
  %251 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %250, i32 0, i32 72, !dbg !1153
  store i32 %249, ptr %251, align 4, !dbg !1153
  %252 = load i64, ptr %13, align 8, !dbg !1153
  %253 = load ptr, ptr %6, align 8, !dbg !1153
  %254 = getelementptr inbounds nuw %struct.phuff_entropy_decoder, ptr %253, i32 0, i32 1, !dbg !1153
  %255 = getelementptr inbounds nuw %struct.bitread_perm_state, ptr %254, i32 0, i32 0, !dbg !1153
  store i64 %252, ptr %255, align 8, !dbg !1153
  %256 = load i32, ptr %14, align 4, !dbg !1153
  %257 = load ptr, ptr %6, align 8, !dbg !1153
  %258 = getelementptr inbounds nuw %struct.phuff_entropy_decoder, ptr %257, i32 0, i32 1, !dbg !1153
  %259 = getelementptr inbounds nuw %struct.bitread_perm_state, ptr %258, i32 0, i32 1, !dbg !1153
  store i32 %256, ptr %259, align 8, !dbg !1153
  %260 = load ptr, ptr %6, align 8, !dbg !1154
  %261 = getelementptr inbounds nuw %struct.phuff_entropy_decoder, ptr %260, i32 0, i32 2, !dbg !1154
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %261, ptr align 4 %16, i64 20, i1 false), !dbg !1154
  %262 = load ptr, ptr %6, align 8, !dbg !1155
  %263 = getelementptr inbounds nuw %struct.phuff_entropy_decoder, ptr %262, i32 0, i32 3, !dbg !1156
  %264 = load i32, ptr %263, align 4, !dbg !1157
  %265 = add i32 %264, -1, !dbg !1157
  store i32 %265, ptr %263, align 4, !dbg !1157
  store i32 1, ptr %3, align 4, !dbg !1158
  br label %266, !dbg !1158

266:                                              ; preds = %235, %178, %159, %115, %40
  %267 = load i32, ptr %3, align 4, !dbg !1159
  ret i32 %267, !dbg !1159
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @decode_mcu_AC_first(ptr noundef %0, ptr noundef %1) #0 !dbg !1160 {
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
  %13 = alloca ptr, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.bitread_working_state, align 8
  %17 = alloca ptr, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !1161, !DIExpression(), !1162)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !1163, !DIExpression(), !1164)
    #dbg_declare(ptr %6, !1165, !DIExpression(), !1166)
  %20 = load ptr, ptr %4, align 8, !dbg !1167
  %21 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %20, i32 0, i32 79, !dbg !1168
  %22 = load ptr, ptr %21, align 8, !dbg !1168
  store ptr %22, ptr %6, align 8, !dbg !1166
    #dbg_declare(ptr %7, !1169, !DIExpression(), !1170)
  %23 = load ptr, ptr %4, align 8, !dbg !1171
  %24 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %23, i32 0, i32 69, !dbg !1172
  %25 = load i32, ptr %24, align 8, !dbg !1172
  store i32 %25, ptr %7, align 4, !dbg !1170
    #dbg_declare(ptr %8, !1173, !DIExpression(), !1174)
  %26 = load ptr, ptr %4, align 8, !dbg !1175
  %27 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %26, i32 0, i32 71, !dbg !1176
  %28 = load i32, ptr %27, align 8, !dbg !1176
  store i32 %28, ptr %8, align 4, !dbg !1174
    #dbg_declare(ptr %9, !1177, !DIExpression(), !1178)
    #dbg_declare(ptr %10, !1179, !DIExpression(), !1180)
    #dbg_declare(ptr %11, !1181, !DIExpression(), !1182)
    #dbg_declare(ptr %12, !1183, !DIExpression(), !1184)
    #dbg_declare(ptr %13, !1185, !DIExpression(), !1186)
    #dbg_declare(ptr %14, !1187, !DIExpression(), !1188)
    #dbg_declare(ptr %15, !1189, !DIExpression(), !1188)
    #dbg_declare(ptr %16, !1190, !DIExpression(), !1188)
    #dbg_declare(ptr %17, !1191, !DIExpression(), !1192)
  %29 = load ptr, ptr %4, align 8, !dbg !1193
  %30 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %29, i32 0, i32 49, !dbg !1195
  %31 = load i32, ptr %30, align 8, !dbg !1195
  %32 = icmp ne i32 %31, 0, !dbg !1193
  br i1 %32, label %33, label %45, !dbg !1193

33:                                               ; preds = %2
  %34 = load ptr, ptr %6, align 8, !dbg !1196
  %35 = getelementptr inbounds nuw %struct.phuff_entropy_decoder, ptr %34, i32 0, i32 3, !dbg !1199
  %36 = load i32, ptr %35, align 4, !dbg !1199
  %37 = icmp eq i32 %36, 0, !dbg !1200
  br i1 %37, label %38, label %44, !dbg !1200

38:                                               ; preds = %33
  %39 = load ptr, ptr %4, align 8, !dbg !1201
  %40 = call i32 @process_restart(ptr noundef %39), !dbg !1203
  %41 = icmp ne i32 %40, 0, !dbg !1203
  br i1 %41, label %43, label %42, !dbg !1204

42:                                               ; preds = %38
  store i32 0, ptr %3, align 4, !dbg !1205
  br label %307, !dbg !1205

43:                                               ; preds = %38
  br label %44, !dbg !1206

44:                                               ; preds = %43, %33
  br label %45, !dbg !1207

45:                                               ; preds = %44, %2
  %46 = load ptr, ptr %6, align 8, !dbg !1208
  %47 = getelementptr inbounds nuw %struct.phuff_entropy_decoder, ptr %46, i32 0, i32 2, !dbg !1209
  %48 = getelementptr inbounds nuw %struct.savable_state, ptr %47, i32 0, i32 0, !dbg !1210
  %49 = load i32, ptr %48, align 8, !dbg !1210
  store i32 %49, ptr %12, align 4, !dbg !1211
  %50 = load i32, ptr %12, align 4, !dbg !1212
  %51 = icmp ugt i32 %50, 0, !dbg !1214
  br i1 %51, label %52, label %55, !dbg !1214

52:                                               ; preds = %45
  %53 = load i32, ptr %12, align 4, !dbg !1215
  %54 = add i32 %53, -1, !dbg !1215
  store i32 %54, ptr %12, align 4, !dbg !1215
  br label %298, !dbg !1216

55:                                               ; preds = %45
  %56 = load ptr, ptr %4, align 8, !dbg !1217
  %57 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %16, i32 0, i32 5, !dbg !1217
  store ptr %56, ptr %57, align 8, !dbg !1217
  %58 = load ptr, ptr %4, align 8, !dbg !1217
  %59 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %58, i32 0, i32 5, !dbg !1217
  %60 = load ptr, ptr %59, align 8, !dbg !1217
  %61 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %60, i32 0, i32 0, !dbg !1217
  %62 = load ptr, ptr %61, align 8, !dbg !1217
  %63 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %16, i32 0, i32 0, !dbg !1217
  store ptr %62, ptr %63, align 8, !dbg !1217
  %64 = load ptr, ptr %4, align 8, !dbg !1217
  %65 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %64, i32 0, i32 5, !dbg !1217
  %66 = load ptr, ptr %65, align 8, !dbg !1217
  %67 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %66, i32 0, i32 1, !dbg !1217
  %68 = load i64, ptr %67, align 8, !dbg !1217
  %69 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %16, i32 0, i32 1, !dbg !1217
  store i64 %68, ptr %69, align 8, !dbg !1217
  %70 = load ptr, ptr %4, align 8, !dbg !1217
  %71 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %70, i32 0, i32 72, !dbg !1217
  %72 = load i32, ptr %71, align 4, !dbg !1217
  %73 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %16, i32 0, i32 2, !dbg !1217
  store i32 %72, ptr %73, align 8, !dbg !1217
  %74 = load ptr, ptr %6, align 8, !dbg !1217
  %75 = getelementptr inbounds nuw %struct.phuff_entropy_decoder, ptr %74, i32 0, i32 1, !dbg !1217
  %76 = getelementptr inbounds nuw %struct.bitread_perm_state, ptr %75, i32 0, i32 0, !dbg !1217
  %77 = load i64, ptr %76, align 8, !dbg !1217
  store i64 %77, ptr %14, align 8, !dbg !1217
  %78 = load ptr, ptr %6, align 8, !dbg !1217
  %79 = getelementptr inbounds nuw %struct.phuff_entropy_decoder, ptr %78, i32 0, i32 1, !dbg !1217
  %80 = getelementptr inbounds nuw %struct.bitread_perm_state, ptr %79, i32 0, i32 1, !dbg !1217
  %81 = load i32, ptr %80, align 8, !dbg !1217
  store i32 %81, ptr %15, align 4, !dbg !1217
  %82 = load ptr, ptr %6, align 8, !dbg !1217
  %83 = getelementptr inbounds nuw %struct.phuff_entropy_decoder, ptr %82, i32 0, i32 1, !dbg !1217
  %84 = getelementptr inbounds nuw %struct.bitread_perm_state, ptr %83, i32 0, i32 2, !dbg !1217
  %85 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %16, i32 0, i32 6, !dbg !1217
  store ptr %84, ptr %85, align 8, !dbg !1217
  %86 = load ptr, ptr %5, align 8, !dbg !1219
  %87 = getelementptr inbounds ptr, ptr %86, i64 0, !dbg !1219
  %88 = load ptr, ptr %87, align 8, !dbg !1219
  store ptr %88, ptr %13, align 8, !dbg !1220
  %89 = load ptr, ptr %6, align 8, !dbg !1221
  %90 = getelementptr inbounds nuw %struct.phuff_entropy_decoder, ptr %89, i32 0, i32 5, !dbg !1222
  %91 = load ptr, ptr %90, align 8, !dbg !1222
  store ptr %91, ptr %17, align 8, !dbg !1223
  %92 = load ptr, ptr %4, align 8, !dbg !1224
  %93 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %92, i32 0, i32 68, !dbg !1226
  %94 = load i32, ptr %93, align 4, !dbg !1226
  store i32 %94, ptr %10, align 4, !dbg !1227
  br label %95, !dbg !1228

95:                                               ; preds = %270, %55
  %96 = load i32, ptr %10, align 4, !dbg !1229
  %97 = load i32, ptr %7, align 4, !dbg !1231
  %98 = icmp sle i32 %96, %97, !dbg !1232
  br i1 %98, label %99, label %273, !dbg !1233

99:                                               ; preds = %95
    #dbg_declare(ptr %18, !1234, !DIExpression(), !1237)
    #dbg_declare(ptr %19, !1238, !DIExpression(), !1237)
  %100 = load i32, ptr %15, align 4, !dbg !1239
  %101 = icmp slt i32 %100, 8, !dbg !1239
  br i1 %101, label %102, label %117, !dbg !1239

102:                                              ; preds = %99
  %103 = load i64, ptr %14, align 8, !dbg !1241
  %104 = load i32, ptr %15, align 4, !dbg !1241
  %105 = call i32 @jpeg_fill_bit_buffer(ptr noundef %16, i64 noundef %103, i32 noundef %104, i32 noundef 0), !dbg !1241
  %106 = icmp ne i32 %105, 0, !dbg !1241
  br i1 %106, label %108, label %107, !dbg !1241

107:                                              ; preds = %102
  store i32 0, ptr %3, align 4, !dbg !1244
  br label %307, !dbg !1244

108:                                              ; preds = %102
  %109 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %16, i32 0, i32 3, !dbg !1246
  %110 = load i64, ptr %109, align 8, !dbg !1246
  store i64 %110, ptr %14, align 8, !dbg !1246
  %111 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %16, i32 0, i32 4, !dbg !1246
  %112 = load i32, ptr %111, align 8, !dbg !1246
  store i32 %112, ptr %15, align 4, !dbg !1246
  %113 = load i32, ptr %15, align 4, !dbg !1247
  %114 = icmp slt i32 %113, 8, !dbg !1247
  br i1 %114, label %115, label %116, !dbg !1247

115:                                              ; preds = %108
  store i32 1, ptr %18, align 4, !dbg !1249
  br label %144, !dbg !1249

116:                                              ; preds = %108
  br label %117, !dbg !1246

117:                                              ; preds = %116, %99
  %118 = load i64, ptr %14, align 8, !dbg !1237
  %119 = load i32, ptr %15, align 4, !dbg !1237
  %120 = sub nsw i32 %119, 8, !dbg !1237
  %121 = zext i32 %120 to i64, !dbg !1237
  %122 = ashr i64 %118, %121, !dbg !1237
  %123 = trunc i64 %122 to i32, !dbg !1237
  %124 = and i32 %123, 255, !dbg !1237
  store i32 %124, ptr %19, align 4, !dbg !1237
  %125 = load ptr, ptr %17, align 8, !dbg !1251
  %126 = getelementptr inbounds nuw %struct.d_derived_tbl, ptr %125, i32 0, i32 4, !dbg !1251
  %127 = load i32, ptr %19, align 4, !dbg !1251
  %128 = sext i32 %127 to i64, !dbg !1251
  %129 = getelementptr inbounds [256 x i32], ptr %126, i64 0, i64 %128, !dbg !1251
  %130 = load i32, ptr %129, align 4, !dbg !1251
  store i32 %130, ptr %18, align 4, !dbg !1251
  %131 = icmp ne i32 %130, 0, !dbg !1251
  br i1 %131, label %132, label %143, !dbg !1251

132:                                              ; preds = %117
  %133 = load i32, ptr %18, align 4, !dbg !1253
  %134 = load i32, ptr %15, align 4, !dbg !1253
  %135 = sub nsw i32 %134, %133, !dbg !1253
  store i32 %135, ptr %15, align 4, !dbg !1253
  %136 = load ptr, ptr %17, align 8, !dbg !1253
  %137 = getelementptr inbounds nuw %struct.d_derived_tbl, ptr %136, i32 0, i32 5, !dbg !1253
  %138 = load i32, ptr %19, align 4, !dbg !1253
  %139 = sext i32 %138 to i64, !dbg !1253
  %140 = getelementptr inbounds [256 x i8], ptr %137, i64 0, i64 %139, !dbg !1253
  %141 = load i8, ptr %140, align 1, !dbg !1253
  %142 = zext i8 %141 to i32, !dbg !1253
  store i32 %142, ptr %9, align 4, !dbg !1253
  br label %157, !dbg !1253

143:                                              ; preds = %117
  store i32 9, ptr %18, align 4, !dbg !1255
  br label %144, !dbg !1255

144:                                              ; preds = %143, %115
    #dbg_label(!1257, !1255)
  %145 = load i64, ptr %14, align 8, !dbg !1258
  %146 = load i32, ptr %15, align 4, !dbg !1258
  %147 = load ptr, ptr %17, align 8, !dbg !1258
  %148 = load i32, ptr %18, align 4, !dbg !1258
  %149 = call i32 @jpeg_huff_decode(ptr noundef %16, i64 noundef %145, i32 noundef %146, ptr noundef %147, i32 noundef %148), !dbg !1258
  store i32 %149, ptr %9, align 4, !dbg !1258
  %150 = icmp slt i32 %149, 0, !dbg !1258
  br i1 %150, label %151, label %152, !dbg !1258

151:                                              ; preds = %144
  store i32 0, ptr %3, align 4, !dbg !1260
  br label %307, !dbg !1260

152:                                              ; preds = %144
  %153 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %16, i32 0, i32 3, !dbg !1255
  %154 = load i64, ptr %153, align 8, !dbg !1255
  store i64 %154, ptr %14, align 8, !dbg !1255
  %155 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %16, i32 0, i32 4, !dbg !1255
  %156 = load i32, ptr %155, align 8, !dbg !1255
  store i32 %156, ptr %15, align 4, !dbg !1255
  br label %157

157:                                              ; preds = %152, %132
  %158 = load i32, ptr %9, align 4, !dbg !1262
  %159 = ashr i32 %158, 4, !dbg !1263
  store i32 %159, ptr %11, align 4, !dbg !1264
  %160 = load i32, ptr %9, align 4, !dbg !1265
  %161 = and i32 %160, 15, !dbg !1265
  store i32 %161, ptr %9, align 4, !dbg !1265
  %162 = load i32, ptr %9, align 4, !dbg !1266
  %163 = icmp ne i32 %162, 0, !dbg !1266
  br i1 %163, label %164, label %223, !dbg !1266

164:                                              ; preds = %157
  %165 = load i32, ptr %11, align 4, !dbg !1268
  %166 = load i32, ptr %10, align 4, !dbg !1270
  %167 = add nsw i32 %166, %165, !dbg !1270
  store i32 %167, ptr %10, align 4, !dbg !1270
  %168 = load i32, ptr %15, align 4, !dbg !1271
  %169 = load i32, ptr %9, align 4, !dbg !1271
  %170 = icmp slt i32 %168, %169, !dbg !1271
  br i1 %170, label %171, label %183, !dbg !1271

171:                                              ; preds = %164
  %172 = load i64, ptr %14, align 8, !dbg !1274
  %173 = load i32, ptr %15, align 4, !dbg !1274
  %174 = load i32, ptr %9, align 4, !dbg !1274
  %175 = call i32 @jpeg_fill_bit_buffer(ptr noundef %16, i64 noundef %172, i32 noundef %173, i32 noundef %174), !dbg !1274
  %176 = icmp ne i32 %175, 0, !dbg !1274
  br i1 %176, label %178, label %177, !dbg !1274

177:                                              ; preds = %171
  store i32 0, ptr %3, align 4, !dbg !1277
  br label %307, !dbg !1277

178:                                              ; preds = %171
  %179 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %16, i32 0, i32 3, !dbg !1279
  %180 = load i64, ptr %179, align 8, !dbg !1279
  store i64 %180, ptr %14, align 8, !dbg !1279
  %181 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %16, i32 0, i32 4, !dbg !1279
  %182 = load i32, ptr %181, align 8, !dbg !1279
  store i32 %182, ptr %15, align 4, !dbg !1279
  br label %183, !dbg !1279

183:                                              ; preds = %178, %164
  %184 = load i64, ptr %14, align 8, !dbg !1280
  %185 = load i32, ptr %9, align 4, !dbg !1280
  %186 = load i32, ptr %15, align 4, !dbg !1280
  %187 = sub nsw i32 %186, %185, !dbg !1280
  store i32 %187, ptr %15, align 4, !dbg !1280
  %188 = zext i32 %187 to i64, !dbg !1280
  %189 = ashr i64 %184, %188, !dbg !1280
  %190 = trunc i64 %189 to i32, !dbg !1280
  %191 = load i32, ptr %9, align 4, !dbg !1280
  %192 = shl i32 1, %191, !dbg !1280
  %193 = sub nsw i32 %192, 1, !dbg !1280
  %194 = and i32 %190, %193, !dbg !1280
  store i32 %194, ptr %11, align 4, !dbg !1281
  %195 = load i32, ptr %11, align 4, !dbg !1282
  %196 = load i32, ptr %9, align 4, !dbg !1282
  %197 = sext i32 %196 to i64, !dbg !1282
  %198 = getelementptr inbounds [16 x i32], ptr @extend_test, i64 0, i64 %197, !dbg !1282
  %199 = load i32, ptr %198, align 4, !dbg !1282
  %200 = icmp slt i32 %195, %199, !dbg !1282
  br i1 %200, label %201, label %208, !dbg !1282

201:                                              ; preds = %183
  %202 = load i32, ptr %11, align 4, !dbg !1282
  %203 = load i32, ptr %9, align 4, !dbg !1282
  %204 = sext i32 %203 to i64, !dbg !1282
  %205 = getelementptr inbounds [16 x i32], ptr @extend_offset, i64 0, i64 %204, !dbg !1282
  %206 = load i32, ptr %205, align 4, !dbg !1282
  %207 = add nsw i32 %202, %206, !dbg !1282
  br label %210, !dbg !1282

208:                                              ; preds = %183
  %209 = load i32, ptr %11, align 4, !dbg !1282
  br label %210, !dbg !1282

210:                                              ; preds = %208, %201
  %211 = phi i32 [ %207, %201 ], [ %209, %208 ], !dbg !1282
  store i32 %211, ptr %9, align 4, !dbg !1283
  %212 = load i32, ptr %9, align 4, !dbg !1284
  %213 = load i32, ptr %8, align 4, !dbg !1285
  %214 = shl i32 %212, %213, !dbg !1286
  %215 = trunc i32 %214 to i16, !dbg !1287
  %216 = load ptr, ptr %13, align 8, !dbg !1288
  %217 = load i32, ptr %10, align 4, !dbg !1289
  %218 = sext i32 %217 to i64, !dbg !1290
  %219 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %218, !dbg !1290
  %220 = load i32, ptr %219, align 4, !dbg !1290
  %221 = sext i32 %220 to i64, !dbg !1291
  %222 = getelementptr inbounds [64 x i16], ptr %216, i64 0, i64 %221, !dbg !1291
  store i16 %215, ptr %222, align 2, !dbg !1292
  br label %269, !dbg !1293

223:                                              ; preds = %157
  %224 = load i32, ptr %11, align 4, !dbg !1294
  %225 = icmp eq i32 %224, 15, !dbg !1297
  br i1 %225, label %226, label %229, !dbg !1297

226:                                              ; preds = %223
  %227 = load i32, ptr %10, align 4, !dbg !1298
  %228 = add nsw i32 %227, 15, !dbg !1298
  store i32 %228, ptr %10, align 4, !dbg !1298
  br label %268, !dbg !1300

229:                                              ; preds = %223
  %230 = load i32, ptr %11, align 4, !dbg !1301
  %231 = shl i32 1, %230, !dbg !1303
  store i32 %231, ptr %12, align 4, !dbg !1304
  %232 = load i32, ptr %11, align 4, !dbg !1305
  %233 = icmp ne i32 %232, 0, !dbg !1305
  br i1 %233, label %234, label %265, !dbg !1305

234:                                              ; preds = %229
  %235 = load i32, ptr %15, align 4, !dbg !1307
  %236 = load i32, ptr %11, align 4, !dbg !1307
  %237 = icmp slt i32 %235, %236, !dbg !1307
  br i1 %237, label %238, label %250, !dbg !1307

238:                                              ; preds = %234
  %239 = load i64, ptr %14, align 8, !dbg !1311
  %240 = load i32, ptr %15, align 4, !dbg !1311
  %241 = load i32, ptr %11, align 4, !dbg !1311
  %242 = call i32 @jpeg_fill_bit_buffer(ptr noundef %16, i64 noundef %239, i32 noundef %240, i32 noundef %241), !dbg !1311
  %243 = icmp ne i32 %242, 0, !dbg !1311
  br i1 %243, label %245, label %244, !dbg !1311

244:                                              ; preds = %238
  store i32 0, ptr %3, align 4, !dbg !1314
  br label %307, !dbg !1314

245:                                              ; preds = %238
  %246 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %16, i32 0, i32 3, !dbg !1316
  %247 = load i64, ptr %246, align 8, !dbg !1316
  store i64 %247, ptr %14, align 8, !dbg !1316
  %248 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %16, i32 0, i32 4, !dbg !1316
  %249 = load i32, ptr %248, align 8, !dbg !1316
  store i32 %249, ptr %15, align 4, !dbg !1316
  br label %250, !dbg !1316

250:                                              ; preds = %245, %234
  %251 = load i64, ptr %14, align 8, !dbg !1317
  %252 = load i32, ptr %11, align 4, !dbg !1317
  %253 = load i32, ptr %15, align 4, !dbg !1317
  %254 = sub nsw i32 %253, %252, !dbg !1317
  store i32 %254, ptr %15, align 4, !dbg !1317
  %255 = zext i32 %254 to i64, !dbg !1317
  %256 = ashr i64 %251, %255, !dbg !1317
  %257 = trunc i64 %256 to i32, !dbg !1317
  %258 = load i32, ptr %11, align 4, !dbg !1317
  %259 = shl i32 1, %258, !dbg !1317
  %260 = sub nsw i32 %259, 1, !dbg !1317
  %261 = and i32 %257, %260, !dbg !1317
  store i32 %261, ptr %11, align 4, !dbg !1318
  %262 = load i32, ptr %11, align 4, !dbg !1319
  %263 = load i32, ptr %12, align 4, !dbg !1320
  %264 = add i32 %263, %262, !dbg !1320
  store i32 %264, ptr %12, align 4, !dbg !1320
  br label %265, !dbg !1321

265:                                              ; preds = %250, %229
  %266 = load i32, ptr %12, align 4, !dbg !1322
  %267 = add i32 %266, -1, !dbg !1322
  store i32 %267, ptr %12, align 4, !dbg !1322
  br label %273, !dbg !1323

268:                                              ; preds = %226
  br label %269

269:                                              ; preds = %268, %210
  br label %270, !dbg !1324

270:                                              ; preds = %269
  %271 = load i32, ptr %10, align 4, !dbg !1325
  %272 = add nsw i32 %271, 1, !dbg !1325
  store i32 %272, ptr %10, align 4, !dbg !1325
  br label %95, !dbg !1326, !llvm.loop !1327

273:                                              ; preds = %265, %95
  %274 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %16, i32 0, i32 0, !dbg !1329
  %275 = load ptr, ptr %274, align 8, !dbg !1329
  %276 = load ptr, ptr %4, align 8, !dbg !1329
  %277 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %276, i32 0, i32 5, !dbg !1329
  %278 = load ptr, ptr %277, align 8, !dbg !1329
  %279 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %278, i32 0, i32 0, !dbg !1329
  store ptr %275, ptr %279, align 8, !dbg !1329
  %280 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %16, i32 0, i32 1, !dbg !1329
  %281 = load i64, ptr %280, align 8, !dbg !1329
  %282 = load ptr, ptr %4, align 8, !dbg !1329
  %283 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %282, i32 0, i32 5, !dbg !1329
  %284 = load ptr, ptr %283, align 8, !dbg !1329
  %285 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %284, i32 0, i32 1, !dbg !1329
  store i64 %281, ptr %285, align 8, !dbg !1329
  %286 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %16, i32 0, i32 2, !dbg !1329
  %287 = load i32, ptr %286, align 8, !dbg !1329
  %288 = load ptr, ptr %4, align 8, !dbg !1329
  %289 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %288, i32 0, i32 72, !dbg !1329
  store i32 %287, ptr %289, align 4, !dbg !1329
  %290 = load i64, ptr %14, align 8, !dbg !1329
  %291 = load ptr, ptr %6, align 8, !dbg !1329
  %292 = getelementptr inbounds nuw %struct.phuff_entropy_decoder, ptr %291, i32 0, i32 1, !dbg !1329
  %293 = getelementptr inbounds nuw %struct.bitread_perm_state, ptr %292, i32 0, i32 0, !dbg !1329
  store i64 %290, ptr %293, align 8, !dbg !1329
  %294 = load i32, ptr %15, align 4, !dbg !1329
  %295 = load ptr, ptr %6, align 8, !dbg !1329
  %296 = getelementptr inbounds nuw %struct.phuff_entropy_decoder, ptr %295, i32 0, i32 1, !dbg !1329
  %297 = getelementptr inbounds nuw %struct.bitread_perm_state, ptr %296, i32 0, i32 1, !dbg !1329
  store i32 %294, ptr %297, align 8, !dbg !1329
  br label %298

298:                                              ; preds = %273, %52
  %299 = load i32, ptr %12, align 4, !dbg !1330
  %300 = load ptr, ptr %6, align 8, !dbg !1331
  %301 = getelementptr inbounds nuw %struct.phuff_entropy_decoder, ptr %300, i32 0, i32 2, !dbg !1332
  %302 = getelementptr inbounds nuw %struct.savable_state, ptr %301, i32 0, i32 0, !dbg !1333
  store i32 %299, ptr %302, align 8, !dbg !1334
  %303 = load ptr, ptr %6, align 8, !dbg !1335
  %304 = getelementptr inbounds nuw %struct.phuff_entropy_decoder, ptr %303, i32 0, i32 3, !dbg !1336
  %305 = load i32, ptr %304, align 4, !dbg !1337
  %306 = add i32 %305, -1, !dbg !1337
  store i32 %306, ptr %304, align 4, !dbg !1337
  store i32 1, ptr %3, align 4, !dbg !1338
  br label %307, !dbg !1338

307:                                              ; preds = %298, %244, %177, %151, %107, %42
  %308 = load i32, ptr %3, align 4, !dbg !1339
  ret i32 %308, !dbg !1339
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @decode_mcu_DC_refine(ptr noundef %0, ptr noundef %1) #0 !dbg !1340 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.bitread_working_state, align 8
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !1341, !DIExpression(), !1342)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !1343, !DIExpression(), !1344)
    #dbg_declare(ptr %6, !1345, !DIExpression(), !1346)
  %13 = load ptr, ptr %4, align 8, !dbg !1347
  %14 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %13, i32 0, i32 79, !dbg !1348
  %15 = load ptr, ptr %14, align 8, !dbg !1348
  store ptr %15, ptr %6, align 8, !dbg !1346
    #dbg_declare(ptr %7, !1349, !DIExpression(), !1350)
  %16 = load ptr, ptr %4, align 8, !dbg !1351
  %17 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %16, i32 0, i32 71, !dbg !1352
  %18 = load i32, ptr %17, align 8, !dbg !1352
  %19 = shl i32 1, %18, !dbg !1353
  store i32 %19, ptr %7, align 4, !dbg !1350
    #dbg_declare(ptr %8, !1354, !DIExpression(), !1355)
    #dbg_declare(ptr %9, !1356, !DIExpression(), !1357)
    #dbg_declare(ptr %10, !1358, !DIExpression(), !1359)
    #dbg_declare(ptr %11, !1360, !DIExpression(), !1359)
    #dbg_declare(ptr %12, !1361, !DIExpression(), !1359)
  %20 = load ptr, ptr %4, align 8, !dbg !1362
  %21 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %20, i32 0, i32 49, !dbg !1364
  %22 = load i32, ptr %21, align 8, !dbg !1364
  %23 = icmp ne i32 %22, 0, !dbg !1362
  br i1 %23, label %24, label %36, !dbg !1362

24:                                               ; preds = %2
  %25 = load ptr, ptr %6, align 8, !dbg !1365
  %26 = getelementptr inbounds nuw %struct.phuff_entropy_decoder, ptr %25, i32 0, i32 3, !dbg !1368
  %27 = load i32, ptr %26, align 4, !dbg !1368
  %28 = icmp eq i32 %27, 0, !dbg !1369
  br i1 %28, label %29, label %35, !dbg !1369

29:                                               ; preds = %24
  %30 = load ptr, ptr %4, align 8, !dbg !1370
  %31 = call i32 @process_restart(ptr noundef %30), !dbg !1372
  %32 = icmp ne i32 %31, 0, !dbg !1372
  br i1 %32, label %34, label %33, !dbg !1373

33:                                               ; preds = %29
  store i32 0, ptr %3, align 4, !dbg !1374
  br label %142, !dbg !1374

34:                                               ; preds = %29
  br label %35, !dbg !1375

35:                                               ; preds = %34, %24
  br label %36, !dbg !1376

36:                                               ; preds = %35, %2
  %37 = load ptr, ptr %4, align 8, !dbg !1377
  %38 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %12, i32 0, i32 5, !dbg !1377
  store ptr %37, ptr %38, align 8, !dbg !1377
  %39 = load ptr, ptr %4, align 8, !dbg !1377
  %40 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %39, i32 0, i32 5, !dbg !1377
  %41 = load ptr, ptr %40, align 8, !dbg !1377
  %42 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %41, i32 0, i32 0, !dbg !1377
  %43 = load ptr, ptr %42, align 8, !dbg !1377
  %44 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %12, i32 0, i32 0, !dbg !1377
  store ptr %43, ptr %44, align 8, !dbg !1377
  %45 = load ptr, ptr %4, align 8, !dbg !1377
  %46 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %45, i32 0, i32 5, !dbg !1377
  %47 = load ptr, ptr %46, align 8, !dbg !1377
  %48 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %47, i32 0, i32 1, !dbg !1377
  %49 = load i64, ptr %48, align 8, !dbg !1377
  %50 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %12, i32 0, i32 1, !dbg !1377
  store i64 %49, ptr %50, align 8, !dbg !1377
  %51 = load ptr, ptr %4, align 8, !dbg !1377
  %52 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %51, i32 0, i32 72, !dbg !1377
  %53 = load i32, ptr %52, align 4, !dbg !1377
  %54 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %12, i32 0, i32 2, !dbg !1377
  store i32 %53, ptr %54, align 8, !dbg !1377
  %55 = load ptr, ptr %6, align 8, !dbg !1377
  %56 = getelementptr inbounds nuw %struct.phuff_entropy_decoder, ptr %55, i32 0, i32 1, !dbg !1377
  %57 = getelementptr inbounds nuw %struct.bitread_perm_state, ptr %56, i32 0, i32 0, !dbg !1377
  %58 = load i64, ptr %57, align 8, !dbg !1377
  store i64 %58, ptr %10, align 8, !dbg !1377
  %59 = load ptr, ptr %6, align 8, !dbg !1377
  %60 = getelementptr inbounds nuw %struct.phuff_entropy_decoder, ptr %59, i32 0, i32 1, !dbg !1377
  %61 = getelementptr inbounds nuw %struct.bitread_perm_state, ptr %60, i32 0, i32 1, !dbg !1377
  %62 = load i32, ptr %61, align 8, !dbg !1377
  store i32 %62, ptr %11, align 4, !dbg !1377
  %63 = load ptr, ptr %6, align 8, !dbg !1377
  %64 = getelementptr inbounds nuw %struct.phuff_entropy_decoder, ptr %63, i32 0, i32 1, !dbg !1377
  %65 = getelementptr inbounds nuw %struct.bitread_perm_state, ptr %64, i32 0, i32 2, !dbg !1377
  %66 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %12, i32 0, i32 6, !dbg !1377
  store ptr %65, ptr %66, align 8, !dbg !1377
  store i32 0, ptr %8, align 4, !dbg !1378
  br label %67, !dbg !1380

67:                                               ; preds = %110, %36
  %68 = load i32, ptr %8, align 4, !dbg !1381
  %69 = load ptr, ptr %4, align 8, !dbg !1383
  %70 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %69, i32 0, i32 66, !dbg !1384
  %71 = load i32, ptr %70, align 8, !dbg !1384
  %72 = icmp slt i32 %68, %71, !dbg !1385
  br i1 %72, label %73, label %113, !dbg !1386

73:                                               ; preds = %67
  %74 = load ptr, ptr %5, align 8, !dbg !1387
  %75 = load i32, ptr %8, align 4, !dbg !1389
  %76 = sext i32 %75 to i64, !dbg !1387
  %77 = getelementptr inbounds ptr, ptr %74, i64 %76, !dbg !1387
  %78 = load ptr, ptr %77, align 8, !dbg !1387
  store ptr %78, ptr %9, align 8, !dbg !1390
  %79 = load i32, ptr %11, align 4, !dbg !1391
  %80 = icmp slt i32 %79, 1, !dbg !1391
  br i1 %80, label %81, label %92, !dbg !1391

81:                                               ; preds = %73
  %82 = load i64, ptr %10, align 8, !dbg !1394
  %83 = load i32, ptr %11, align 4, !dbg !1394
  %84 = call i32 @jpeg_fill_bit_buffer(ptr noundef %12, i64 noundef %82, i32 noundef %83, i32 noundef 1), !dbg !1394
  %85 = icmp ne i32 %84, 0, !dbg !1394
  br i1 %85, label %87, label %86, !dbg !1394

86:                                               ; preds = %81
  store i32 0, ptr %3, align 4, !dbg !1397
  br label %142, !dbg !1397

87:                                               ; preds = %81
  %88 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %12, i32 0, i32 3, !dbg !1399
  %89 = load i64, ptr %88, align 8, !dbg !1399
  store i64 %89, ptr %10, align 8, !dbg !1399
  %90 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %12, i32 0, i32 4, !dbg !1399
  %91 = load i32, ptr %90, align 8, !dbg !1399
  store i32 %91, ptr %11, align 4, !dbg !1399
  br label %92, !dbg !1399

92:                                               ; preds = %87, %73
  %93 = load i64, ptr %10, align 8, !dbg !1400
  %94 = load i32, ptr %11, align 4, !dbg !1400
  %95 = sub nsw i32 %94, 1, !dbg !1400
  store i32 %95, ptr %11, align 4, !dbg !1400
  %96 = zext i32 %95 to i64, !dbg !1400
  %97 = ashr i64 %93, %96, !dbg !1400
  %98 = trunc i64 %97 to i32, !dbg !1400
  %99 = and i32 %98, 1, !dbg !1400
  %100 = icmp ne i32 %99, 0, !dbg !1400
  br i1 %100, label %101, label %109, !dbg !1400

101:                                              ; preds = %92
  %102 = load i32, ptr %7, align 4, !dbg !1402
  %103 = load ptr, ptr %9, align 8, !dbg !1403
  %104 = getelementptr inbounds [64 x i16], ptr %103, i64 0, i64 0, !dbg !1404
  %105 = load i16, ptr %104, align 2, !dbg !1405
  %106 = sext i16 %105 to i32, !dbg !1405
  %107 = or i32 %106, %102, !dbg !1405
  %108 = trunc i32 %107 to i16, !dbg !1405
  store i16 %108, ptr %104, align 2, !dbg !1405
  br label %109, !dbg !1404

109:                                              ; preds = %101, %92
  br label %110, !dbg !1406

110:                                              ; preds = %109
  %111 = load i32, ptr %8, align 4, !dbg !1407
  %112 = add nsw i32 %111, 1, !dbg !1407
  store i32 %112, ptr %8, align 4, !dbg !1407
  br label %67, !dbg !1408, !llvm.loop !1409

113:                                              ; preds = %67
  %114 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %12, i32 0, i32 0, !dbg !1411
  %115 = load ptr, ptr %114, align 8, !dbg !1411
  %116 = load ptr, ptr %4, align 8, !dbg !1411
  %117 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %116, i32 0, i32 5, !dbg !1411
  %118 = load ptr, ptr %117, align 8, !dbg !1411
  %119 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %118, i32 0, i32 0, !dbg !1411
  store ptr %115, ptr %119, align 8, !dbg !1411
  %120 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %12, i32 0, i32 1, !dbg !1411
  %121 = load i64, ptr %120, align 8, !dbg !1411
  %122 = load ptr, ptr %4, align 8, !dbg !1411
  %123 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %122, i32 0, i32 5, !dbg !1411
  %124 = load ptr, ptr %123, align 8, !dbg !1411
  %125 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %124, i32 0, i32 1, !dbg !1411
  store i64 %121, ptr %125, align 8, !dbg !1411
  %126 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %12, i32 0, i32 2, !dbg !1411
  %127 = load i32, ptr %126, align 8, !dbg !1411
  %128 = load ptr, ptr %4, align 8, !dbg !1411
  %129 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %128, i32 0, i32 72, !dbg !1411
  store i32 %127, ptr %129, align 4, !dbg !1411
  %130 = load i64, ptr %10, align 8, !dbg !1411
  %131 = load ptr, ptr %6, align 8, !dbg !1411
  %132 = getelementptr inbounds nuw %struct.phuff_entropy_decoder, ptr %131, i32 0, i32 1, !dbg !1411
  %133 = getelementptr inbounds nuw %struct.bitread_perm_state, ptr %132, i32 0, i32 0, !dbg !1411
  store i64 %130, ptr %133, align 8, !dbg !1411
  %134 = load i32, ptr %11, align 4, !dbg !1411
  %135 = load ptr, ptr %6, align 8, !dbg !1411
  %136 = getelementptr inbounds nuw %struct.phuff_entropy_decoder, ptr %135, i32 0, i32 1, !dbg !1411
  %137 = getelementptr inbounds nuw %struct.bitread_perm_state, ptr %136, i32 0, i32 1, !dbg !1411
  store i32 %134, ptr %137, align 8, !dbg !1411
  %138 = load ptr, ptr %6, align 8, !dbg !1412
  %139 = getelementptr inbounds nuw %struct.phuff_entropy_decoder, ptr %138, i32 0, i32 3, !dbg !1413
  %140 = load i32, ptr %139, align 4, !dbg !1414
  %141 = add i32 %140, -1, !dbg !1414
  store i32 %141, ptr %139, align 4, !dbg !1414
  store i32 1, ptr %3, align 4, !dbg !1415
  br label %142, !dbg !1415

142:                                              ; preds = %113, %86, %33
  %143 = load i32, ptr %3, align 4, !dbg !1416
  ret i32 %143, !dbg !1416
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @decode_mcu_AC_refine(ptr noundef %0, ptr noundef %1) #0 !dbg !1417 {
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
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.bitread_working_state, align 8
  %19 = alloca ptr, align 8
  %20 = alloca i32, align 4
  %21 = alloca [64 x i32], align 16
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !1418, !DIExpression(), !1419)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !1420, !DIExpression(), !1421)
    #dbg_declare(ptr %6, !1422, !DIExpression(), !1423)
  %25 = load ptr, ptr %4, align 8, !dbg !1424
  %26 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %25, i32 0, i32 79, !dbg !1425
  %27 = load ptr, ptr %26, align 8, !dbg !1425
  store ptr %27, ptr %6, align 8, !dbg !1423
    #dbg_declare(ptr %7, !1426, !DIExpression(), !1427)
  %28 = load ptr, ptr %4, align 8, !dbg !1428
  %29 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %28, i32 0, i32 69, !dbg !1429
  %30 = load i32, ptr %29, align 8, !dbg !1429
  store i32 %30, ptr %7, align 4, !dbg !1427
    #dbg_declare(ptr %8, !1430, !DIExpression(), !1431)
  %31 = load ptr, ptr %4, align 8, !dbg !1432
  %32 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %31, i32 0, i32 71, !dbg !1433
  %33 = load i32, ptr %32, align 8, !dbg !1433
  %34 = shl i32 1, %33, !dbg !1434
  store i32 %34, ptr %8, align 4, !dbg !1431
    #dbg_declare(ptr %9, !1435, !DIExpression(), !1436)
  %35 = load ptr, ptr %4, align 8, !dbg !1437
  %36 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %35, i32 0, i32 71, !dbg !1438
  %37 = load i32, ptr %36, align 8, !dbg !1438
  %38 = shl i32 -1, %37, !dbg !1439
  store i32 %38, ptr %9, align 4, !dbg !1436
    #dbg_declare(ptr %10, !1440, !DIExpression(), !1441)
    #dbg_declare(ptr %11, !1442, !DIExpression(), !1443)
    #dbg_declare(ptr %12, !1444, !DIExpression(), !1445)
    #dbg_declare(ptr %13, !1446, !DIExpression(), !1447)
    #dbg_declare(ptr %14, !1448, !DIExpression(), !1449)
    #dbg_declare(ptr %15, !1450, !DIExpression(), !1451)
    #dbg_declare(ptr %16, !1452, !DIExpression(), !1453)
    #dbg_declare(ptr %17, !1454, !DIExpression(), !1453)
    #dbg_declare(ptr %18, !1455, !DIExpression(), !1453)
    #dbg_declare(ptr %19, !1456, !DIExpression(), !1457)
    #dbg_declare(ptr %20, !1458, !DIExpression(), !1459)
    #dbg_declare(ptr %21, !1460, !DIExpression(), !1461)
  %39 = load ptr, ptr %4, align 8, !dbg !1462
  %40 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %39, i32 0, i32 49, !dbg !1464
  %41 = load i32, ptr %40, align 8, !dbg !1464
  %42 = icmp ne i32 %41, 0, !dbg !1462
  br i1 %42, label %43, label %55, !dbg !1462

43:                                               ; preds = %2
  %44 = load ptr, ptr %6, align 8, !dbg !1465
  %45 = getelementptr inbounds nuw %struct.phuff_entropy_decoder, ptr %44, i32 0, i32 3, !dbg !1468
  %46 = load i32, ptr %45, align 4, !dbg !1468
  %47 = icmp eq i32 %46, 0, !dbg !1469
  br i1 %47, label %48, label %54, !dbg !1469

48:                                               ; preds = %43
  %49 = load ptr, ptr %4, align 8, !dbg !1470
  %50 = call i32 @process_restart(ptr noundef %49), !dbg !1472
  %51 = icmp ne i32 %50, 0, !dbg !1472
  br i1 %51, label %53, label %52, !dbg !1473

52:                                               ; preds = %48
  store i32 0, ptr %3, align 4, !dbg !1474
  br label %484, !dbg !1474

53:                                               ; preds = %48
  br label %54, !dbg !1475

54:                                               ; preds = %53, %43
  br label %55, !dbg !1476

55:                                               ; preds = %54, %2
  %56 = load ptr, ptr %4, align 8, !dbg !1477
  %57 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %18, i32 0, i32 5, !dbg !1477
  store ptr %56, ptr %57, align 8, !dbg !1477
  %58 = load ptr, ptr %4, align 8, !dbg !1477
  %59 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %58, i32 0, i32 5, !dbg !1477
  %60 = load ptr, ptr %59, align 8, !dbg !1477
  %61 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %60, i32 0, i32 0, !dbg !1477
  %62 = load ptr, ptr %61, align 8, !dbg !1477
  %63 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %18, i32 0, i32 0, !dbg !1477
  store ptr %62, ptr %63, align 8, !dbg !1477
  %64 = load ptr, ptr %4, align 8, !dbg !1477
  %65 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %64, i32 0, i32 5, !dbg !1477
  %66 = load ptr, ptr %65, align 8, !dbg !1477
  %67 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %66, i32 0, i32 1, !dbg !1477
  %68 = load i64, ptr %67, align 8, !dbg !1477
  %69 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %18, i32 0, i32 1, !dbg !1477
  store i64 %68, ptr %69, align 8, !dbg !1477
  %70 = load ptr, ptr %4, align 8, !dbg !1477
  %71 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %70, i32 0, i32 72, !dbg !1477
  %72 = load i32, ptr %71, align 4, !dbg !1477
  %73 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %18, i32 0, i32 2, !dbg !1477
  store i32 %72, ptr %73, align 8, !dbg !1477
  %74 = load ptr, ptr %6, align 8, !dbg !1477
  %75 = getelementptr inbounds nuw %struct.phuff_entropy_decoder, ptr %74, i32 0, i32 1, !dbg !1477
  %76 = getelementptr inbounds nuw %struct.bitread_perm_state, ptr %75, i32 0, i32 0, !dbg !1477
  %77 = load i64, ptr %76, align 8, !dbg !1477
  store i64 %77, ptr %16, align 8, !dbg !1477
  %78 = load ptr, ptr %6, align 8, !dbg !1477
  %79 = getelementptr inbounds nuw %struct.phuff_entropy_decoder, ptr %78, i32 0, i32 1, !dbg !1477
  %80 = getelementptr inbounds nuw %struct.bitread_perm_state, ptr %79, i32 0, i32 1, !dbg !1477
  %81 = load i32, ptr %80, align 8, !dbg !1477
  store i32 %81, ptr %17, align 4, !dbg !1477
  %82 = load ptr, ptr %6, align 8, !dbg !1477
  %83 = getelementptr inbounds nuw %struct.phuff_entropy_decoder, ptr %82, i32 0, i32 1, !dbg !1477
  %84 = getelementptr inbounds nuw %struct.bitread_perm_state, ptr %83, i32 0, i32 2, !dbg !1477
  %85 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %18, i32 0, i32 6, !dbg !1477
  store ptr %84, ptr %85, align 8, !dbg !1477
  %86 = load ptr, ptr %6, align 8, !dbg !1478
  %87 = getelementptr inbounds nuw %struct.phuff_entropy_decoder, ptr %86, i32 0, i32 2, !dbg !1479
  %88 = getelementptr inbounds nuw %struct.savable_state, ptr %87, i32 0, i32 0, !dbg !1480
  %89 = load i32, ptr %88, align 8, !dbg !1480
  store i32 %89, ptr %13, align 4, !dbg !1481
  %90 = load ptr, ptr %5, align 8, !dbg !1482
  %91 = getelementptr inbounds ptr, ptr %90, i64 0, !dbg !1482
  %92 = load ptr, ptr %91, align 8, !dbg !1482
  store ptr %92, ptr %14, align 8, !dbg !1483
  %93 = load ptr, ptr %6, align 8, !dbg !1484
  %94 = getelementptr inbounds nuw %struct.phuff_entropy_decoder, ptr %93, i32 0, i32 5, !dbg !1485
  %95 = load ptr, ptr %94, align 8, !dbg !1485
  store ptr %95, ptr %19, align 8, !dbg !1486
  store i32 0, ptr %20, align 4, !dbg !1487
  %96 = load ptr, ptr %4, align 8, !dbg !1488
  %97 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %96, i32 0, i32 68, !dbg !1489
  %98 = load i32, ptr %97, align 4, !dbg !1489
  store i32 %98, ptr %11, align 4, !dbg !1490
  %99 = load i32, ptr %13, align 4, !dbg !1491
  %100 = icmp eq i32 %99, 0, !dbg !1493
  br i1 %100, label %101, label %357, !dbg !1493

101:                                              ; preds = %55
  br label %102, !dbg !1494

102:                                              ; preds = %353, %101
  %103 = load i32, ptr %11, align 4, !dbg !1496
  %104 = load i32, ptr %7, align 4, !dbg !1499
  %105 = icmp sle i32 %103, %104, !dbg !1500
  br i1 %105, label %106, label %356, !dbg !1501

106:                                              ; preds = %102
    #dbg_declare(ptr %22, !1502, !DIExpression(), !1505)
    #dbg_declare(ptr %23, !1506, !DIExpression(), !1505)
  %107 = load i32, ptr %17, align 4, !dbg !1507
  %108 = icmp slt i32 %107, 8, !dbg !1507
  br i1 %108, label %109, label %124, !dbg !1507

109:                                              ; preds = %106
  %110 = load i64, ptr %16, align 8, !dbg !1509
  %111 = load i32, ptr %17, align 4, !dbg !1509
  %112 = call i32 @jpeg_fill_bit_buffer(ptr noundef %18, i64 noundef %110, i32 noundef %111, i32 noundef 0), !dbg !1509
  %113 = icmp ne i32 %112, 0, !dbg !1509
  br i1 %113, label %115, label %114, !dbg !1509

114:                                              ; preds = %109
  br label %470, !dbg !1512

115:                                              ; preds = %109
  %116 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %18, i32 0, i32 3, !dbg !1514
  %117 = load i64, ptr %116, align 8, !dbg !1514
  store i64 %117, ptr %16, align 8, !dbg !1514
  %118 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %18, i32 0, i32 4, !dbg !1514
  %119 = load i32, ptr %118, align 8, !dbg !1514
  store i32 %119, ptr %17, align 4, !dbg !1514
  %120 = load i32, ptr %17, align 4, !dbg !1515
  %121 = icmp slt i32 %120, 8, !dbg !1515
  br i1 %121, label %122, label %123, !dbg !1515

122:                                              ; preds = %115
  store i32 1, ptr %22, align 4, !dbg !1517
  br label %151, !dbg !1517

123:                                              ; preds = %115
  br label %124, !dbg !1514

124:                                              ; preds = %123, %106
  %125 = load i64, ptr %16, align 8, !dbg !1505
  %126 = load i32, ptr %17, align 4, !dbg !1505
  %127 = sub nsw i32 %126, 8, !dbg !1505
  %128 = zext i32 %127 to i64, !dbg !1505
  %129 = ashr i64 %125, %128, !dbg !1505
  %130 = trunc i64 %129 to i32, !dbg !1505
  %131 = and i32 %130, 255, !dbg !1505
  store i32 %131, ptr %23, align 4, !dbg !1505
  %132 = load ptr, ptr %19, align 8, !dbg !1519
  %133 = getelementptr inbounds nuw %struct.d_derived_tbl, ptr %132, i32 0, i32 4, !dbg !1519
  %134 = load i32, ptr %23, align 4, !dbg !1519
  %135 = sext i32 %134 to i64, !dbg !1519
  %136 = getelementptr inbounds [256 x i32], ptr %133, i64 0, i64 %135, !dbg !1519
  %137 = load i32, ptr %136, align 4, !dbg !1519
  store i32 %137, ptr %22, align 4, !dbg !1519
  %138 = icmp ne i32 %137, 0, !dbg !1519
  br i1 %138, label %139, label %150, !dbg !1519

139:                                              ; preds = %124
  %140 = load i32, ptr %22, align 4, !dbg !1521
  %141 = load i32, ptr %17, align 4, !dbg !1521
  %142 = sub nsw i32 %141, %140, !dbg !1521
  store i32 %142, ptr %17, align 4, !dbg !1521
  %143 = load ptr, ptr %19, align 8, !dbg !1521
  %144 = getelementptr inbounds nuw %struct.d_derived_tbl, ptr %143, i32 0, i32 5, !dbg !1521
  %145 = load i32, ptr %23, align 4, !dbg !1521
  %146 = sext i32 %145 to i64, !dbg !1521
  %147 = getelementptr inbounds [256 x i8], ptr %144, i64 0, i64 %146, !dbg !1521
  %148 = load i8, ptr %147, align 1, !dbg !1521
  %149 = zext i8 %148 to i32, !dbg !1521
  store i32 %149, ptr %10, align 4, !dbg !1521
  br label %164, !dbg !1521

150:                                              ; preds = %124
  store i32 9, ptr %22, align 4, !dbg !1523
  br label %151, !dbg !1523

151:                                              ; preds = %150, %122
    #dbg_label(!1525, !1523)
  %152 = load i64, ptr %16, align 8, !dbg !1526
  %153 = load i32, ptr %17, align 4, !dbg !1526
  %154 = load ptr, ptr %19, align 8, !dbg !1526
  %155 = load i32, ptr %22, align 4, !dbg !1526
  %156 = call i32 @jpeg_huff_decode(ptr noundef %18, i64 noundef %152, i32 noundef %153, ptr noundef %154, i32 noundef %155), !dbg !1526
  store i32 %156, ptr %10, align 4, !dbg !1526
  %157 = icmp slt i32 %156, 0, !dbg !1526
  br i1 %157, label %158, label %159, !dbg !1526

158:                                              ; preds = %151
  br label %470, !dbg !1528

159:                                              ; preds = %151
  %160 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %18, i32 0, i32 3, !dbg !1523
  %161 = load i64, ptr %160, align 8, !dbg !1523
  store i64 %161, ptr %16, align 8, !dbg !1523
  %162 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %18, i32 0, i32 4, !dbg !1523
  %163 = load i32, ptr %162, align 8, !dbg !1523
  store i32 %163, ptr %17, align 4, !dbg !1523
  br label %164

164:                                              ; preds = %159, %139
  %165 = load i32, ptr %10, align 4, !dbg !1530
  %166 = ashr i32 %165, 4, !dbg !1531
  store i32 %166, ptr %12, align 4, !dbg !1532
  %167 = load i32, ptr %10, align 4, !dbg !1533
  %168 = and i32 %167, 15, !dbg !1533
  store i32 %168, ptr %10, align 4, !dbg !1533
  %169 = load i32, ptr %10, align 4, !dbg !1534
  %170 = icmp ne i32 %169, 0, !dbg !1534
  br i1 %170, label %171, label %213, !dbg !1534

171:                                              ; preds = %164
  %172 = load i32, ptr %10, align 4, !dbg !1536
  %173 = icmp ne i32 %172, 1, !dbg !1539
  br i1 %173, label %174, label %185, !dbg !1539

174:                                              ; preds = %171
  %175 = load ptr, ptr %4, align 8, !dbg !1540
  %176 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %175, i32 0, i32 0, !dbg !1540
  %177 = load ptr, ptr %176, align 8, !dbg !1540
  %178 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %177, i32 0, i32 5, !dbg !1540
  store i32 114, ptr %178, align 8, !dbg !1540
  %179 = load ptr, ptr %4, align 8, !dbg !1540
  %180 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %179, i32 0, i32 0, !dbg !1540
  %181 = load ptr, ptr %180, align 8, !dbg !1540
  %182 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %181, i32 0, i32 1, !dbg !1540
  %183 = load ptr, ptr %182, align 8, !dbg !1540
  %184 = load ptr, ptr %4, align 8, !dbg !1540
  call void %183(ptr noundef %184, i32 noundef -1), !dbg !1540
  br label %185, !dbg !1540

185:                                              ; preds = %174, %171
  %186 = load i32, ptr %17, align 4, !dbg !1541
  %187 = icmp slt i32 %186, 1, !dbg !1541
  br i1 %187, label %188, label %199, !dbg !1541

188:                                              ; preds = %185
  %189 = load i64, ptr %16, align 8, !dbg !1544
  %190 = load i32, ptr %17, align 4, !dbg !1544
  %191 = call i32 @jpeg_fill_bit_buffer(ptr noundef %18, i64 noundef %189, i32 noundef %190, i32 noundef 1), !dbg !1544
  %192 = icmp ne i32 %191, 0, !dbg !1544
  br i1 %192, label %194, label %193, !dbg !1544

193:                                              ; preds = %188
  br label %470, !dbg !1547

194:                                              ; preds = %188
  %195 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %18, i32 0, i32 3, !dbg !1549
  %196 = load i64, ptr %195, align 8, !dbg !1549
  store i64 %196, ptr %16, align 8, !dbg !1549
  %197 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %18, i32 0, i32 4, !dbg !1549
  %198 = load i32, ptr %197, align 8, !dbg !1549
  store i32 %198, ptr %17, align 4, !dbg !1549
  br label %199, !dbg !1549

199:                                              ; preds = %194, %185
  %200 = load i64, ptr %16, align 8, !dbg !1550
  %201 = load i32, ptr %17, align 4, !dbg !1550
  %202 = sub nsw i32 %201, 1, !dbg !1550
  store i32 %202, ptr %17, align 4, !dbg !1550
  %203 = zext i32 %202 to i64, !dbg !1550
  %204 = ashr i64 %200, %203, !dbg !1550
  %205 = trunc i64 %204 to i32, !dbg !1550
  %206 = and i32 %205, 1, !dbg !1550
  %207 = icmp ne i32 %206, 0, !dbg !1550
  br i1 %207, label %208, label %210, !dbg !1550

208:                                              ; preds = %199
  %209 = load i32, ptr %8, align 4, !dbg !1552
  store i32 %209, ptr %10, align 4, !dbg !1553
  br label %212, !dbg !1554

210:                                              ; preds = %199
  %211 = load i32, ptr %9, align 4, !dbg !1555
  store i32 %211, ptr %10, align 4, !dbg !1556
  br label %212

212:                                              ; preds = %210, %208
  br label %254, !dbg !1557

213:                                              ; preds = %164
  %214 = load i32, ptr %12, align 4, !dbg !1558
  %215 = icmp ne i32 %214, 15, !dbg !1561
  br i1 %215, label %216, label %253, !dbg !1561

216:                                              ; preds = %213
  %217 = load i32, ptr %12, align 4, !dbg !1562
  %218 = shl i32 1, %217, !dbg !1564
  store i32 %218, ptr %13, align 4, !dbg !1565
  %219 = load i32, ptr %12, align 4, !dbg !1566
  %220 = icmp ne i32 %219, 0, !dbg !1566
  br i1 %220, label %221, label %252, !dbg !1566

221:                                              ; preds = %216
  %222 = load i32, ptr %17, align 4, !dbg !1568
  %223 = load i32, ptr %12, align 4, !dbg !1568
  %224 = icmp slt i32 %222, %223, !dbg !1568
  br i1 %224, label %225, label %237, !dbg !1568

225:                                              ; preds = %221
  %226 = load i64, ptr %16, align 8, !dbg !1572
  %227 = load i32, ptr %17, align 4, !dbg !1572
  %228 = load i32, ptr %12, align 4, !dbg !1572
  %229 = call i32 @jpeg_fill_bit_buffer(ptr noundef %18, i64 noundef %226, i32 noundef %227, i32 noundef %228), !dbg !1572
  %230 = icmp ne i32 %229, 0, !dbg !1572
  br i1 %230, label %232, label %231, !dbg !1572

231:                                              ; preds = %225
  br label %470, !dbg !1575

232:                                              ; preds = %225
  %233 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %18, i32 0, i32 3, !dbg !1577
  %234 = load i64, ptr %233, align 8, !dbg !1577
  store i64 %234, ptr %16, align 8, !dbg !1577
  %235 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %18, i32 0, i32 4, !dbg !1577
  %236 = load i32, ptr %235, align 8, !dbg !1577
  store i32 %236, ptr %17, align 4, !dbg !1577
  br label %237, !dbg !1577

237:                                              ; preds = %232, %221
  %238 = load i64, ptr %16, align 8, !dbg !1578
  %239 = load i32, ptr %12, align 4, !dbg !1578
  %240 = load i32, ptr %17, align 4, !dbg !1578
  %241 = sub nsw i32 %240, %239, !dbg !1578
  store i32 %241, ptr %17, align 4, !dbg !1578
  %242 = zext i32 %241 to i64, !dbg !1578
  %243 = ashr i64 %238, %242, !dbg !1578
  %244 = trunc i64 %243 to i32, !dbg !1578
  %245 = load i32, ptr %12, align 4, !dbg !1578
  %246 = shl i32 1, %245, !dbg !1578
  %247 = sub nsw i32 %246, 1, !dbg !1578
  %248 = and i32 %244, %247, !dbg !1578
  store i32 %248, ptr %12, align 4, !dbg !1579
  %249 = load i32, ptr %12, align 4, !dbg !1580
  %250 = load i32, ptr %13, align 4, !dbg !1581
  %251 = add i32 %250, %249, !dbg !1581
  store i32 %251, ptr %13, align 4, !dbg !1581
  br label %252, !dbg !1582

252:                                              ; preds = %237, %216
  br label %356, !dbg !1583

253:                                              ; preds = %213
  br label %254

254:                                              ; preds = %253, %212
  br label %255, !dbg !1584

255:                                              ; preds = %329, %254
  %256 = load ptr, ptr %14, align 8, !dbg !1585
  %257 = getelementptr inbounds [64 x i16], ptr %256, i64 0, i64 0, !dbg !1587
  %258 = load i32, ptr %11, align 4, !dbg !1588
  %259 = sext i32 %258 to i64, !dbg !1589
  %260 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %259, !dbg !1589
  %261 = load i32, ptr %260, align 4, !dbg !1589
  %262 = sext i32 %261 to i64, !dbg !1590
  %263 = getelementptr inbounds i16, ptr %257, i64 %262, !dbg !1590
  store ptr %263, ptr %15, align 8, !dbg !1591
  %264 = load ptr, ptr %15, align 8, !dbg !1592
  %265 = load i16, ptr %264, align 2, !dbg !1594
  %266 = sext i16 %265 to i32, !dbg !1594
  %267 = icmp ne i32 %266, 0, !dbg !1595
  br i1 %267, label %268, label %320, !dbg !1595

268:                                              ; preds = %255
  %269 = load i32, ptr %17, align 4, !dbg !1596
  %270 = icmp slt i32 %269, 1, !dbg !1596
  br i1 %270, label %271, label %282, !dbg !1596

271:                                              ; preds = %268
  %272 = load i64, ptr %16, align 8, !dbg !1600
  %273 = load i32, ptr %17, align 4, !dbg !1600
  %274 = call i32 @jpeg_fill_bit_buffer(ptr noundef %18, i64 noundef %272, i32 noundef %273, i32 noundef 1), !dbg !1600
  %275 = icmp ne i32 %274, 0, !dbg !1600
  br i1 %275, label %277, label %276, !dbg !1600

276:                                              ; preds = %271
  br label %470, !dbg !1603

277:                                              ; preds = %271
  %278 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %18, i32 0, i32 3, !dbg !1605
  %279 = load i64, ptr %278, align 8, !dbg !1605
  store i64 %279, ptr %16, align 8, !dbg !1605
  %280 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %18, i32 0, i32 4, !dbg !1605
  %281 = load i32, ptr %280, align 8, !dbg !1605
  store i32 %281, ptr %17, align 4, !dbg !1605
  br label %282, !dbg !1605

282:                                              ; preds = %277, %268
  %283 = load i64, ptr %16, align 8, !dbg !1606
  %284 = load i32, ptr %17, align 4, !dbg !1606
  %285 = sub nsw i32 %284, 1, !dbg !1606
  store i32 %285, ptr %17, align 4, !dbg !1606
  %286 = zext i32 %285 to i64, !dbg !1606
  %287 = ashr i64 %283, %286, !dbg !1606
  %288 = trunc i64 %287 to i32, !dbg !1606
  %289 = and i32 %288, 1, !dbg !1606
  %290 = icmp ne i32 %289, 0, !dbg !1606
  br i1 %290, label %291, label %319, !dbg !1606

291:                                              ; preds = %282
  %292 = load ptr, ptr %15, align 8, !dbg !1608
  %293 = load i16, ptr %292, align 2, !dbg !1611
  %294 = sext i16 %293 to i32, !dbg !1611
  %295 = load i32, ptr %8, align 4, !dbg !1612
  %296 = and i32 %294, %295, !dbg !1613
  %297 = icmp eq i32 %296, 0, !dbg !1614
  br i1 %297, label %298, label %318, !dbg !1614

298:                                              ; preds = %291
  %299 = load ptr, ptr %15, align 8, !dbg !1615
  %300 = load i16, ptr %299, align 2, !dbg !1618
  %301 = sext i16 %300 to i32, !dbg !1618
  %302 = icmp sge i32 %301, 0, !dbg !1619
  br i1 %302, label %303, label %310, !dbg !1619

303:                                              ; preds = %298
  %304 = load i32, ptr %8, align 4, !dbg !1620
  %305 = load ptr, ptr %15, align 8, !dbg !1621
  %306 = load i16, ptr %305, align 2, !dbg !1622
  %307 = sext i16 %306 to i32, !dbg !1622
  %308 = add nsw i32 %307, %304, !dbg !1622
  %309 = trunc i32 %308 to i16, !dbg !1622
  store i16 %309, ptr %305, align 2, !dbg !1622
  br label %317, !dbg !1623

310:                                              ; preds = %298
  %311 = load i32, ptr %9, align 4, !dbg !1624
  %312 = load ptr, ptr %15, align 8, !dbg !1625
  %313 = load i16, ptr %312, align 2, !dbg !1626
  %314 = sext i16 %313 to i32, !dbg !1626
  %315 = add nsw i32 %314, %311, !dbg !1626
  %316 = trunc i32 %315 to i16, !dbg !1626
  store i16 %316, ptr %312, align 2, !dbg !1626
  br label %317

317:                                              ; preds = %310, %303
  br label %318, !dbg !1627

318:                                              ; preds = %317, %291
  br label %319, !dbg !1628

319:                                              ; preds = %318, %282
  br label %326, !dbg !1629

320:                                              ; preds = %255
  %321 = load i32, ptr %12, align 4, !dbg !1630
  %322 = add nsw i32 %321, -1, !dbg !1630
  store i32 %322, ptr %12, align 4, !dbg !1630
  %323 = icmp slt i32 %322, 0, !dbg !1633
  br i1 %323, label %324, label %325, !dbg !1633

324:                                              ; preds = %320
  br label %333, !dbg !1634

325:                                              ; preds = %320
  br label %326

326:                                              ; preds = %325, %319
  %327 = load i32, ptr %11, align 4, !dbg !1635
  %328 = add nsw i32 %327, 1, !dbg !1635
  store i32 %328, ptr %11, align 4, !dbg !1635
  br label %329, !dbg !1636

329:                                              ; preds = %326
  %330 = load i32, ptr %11, align 4, !dbg !1637
  %331 = load i32, ptr %7, align 4, !dbg !1638
  %332 = icmp sle i32 %330, %331, !dbg !1639
  br i1 %332, label %255, label %333, !dbg !1636, !llvm.loop !1640

333:                                              ; preds = %329, %324
  %334 = load i32, ptr %10, align 4, !dbg !1642
  %335 = icmp ne i32 %334, 0, !dbg !1642
  br i1 %335, label %336, label %352, !dbg !1642

336:                                              ; preds = %333
    #dbg_declare(ptr %24, !1644, !DIExpression(), !1646)
  %337 = load i32, ptr %11, align 4, !dbg !1647
  %338 = sext i32 %337 to i64, !dbg !1648
  %339 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %338, !dbg !1648
  %340 = load i32, ptr %339, align 4, !dbg !1648
  store i32 %340, ptr %24, align 4, !dbg !1646
  %341 = load i32, ptr %10, align 4, !dbg !1649
  %342 = trunc i32 %341 to i16, !dbg !1650
  %343 = load ptr, ptr %14, align 8, !dbg !1651
  %344 = load i32, ptr %24, align 4, !dbg !1652
  %345 = sext i32 %344 to i64, !dbg !1653
  %346 = getelementptr inbounds [64 x i16], ptr %343, i64 0, i64 %345, !dbg !1653
  store i16 %342, ptr %346, align 2, !dbg !1654
  %347 = load i32, ptr %24, align 4, !dbg !1655
  %348 = load i32, ptr %20, align 4, !dbg !1656
  %349 = add nsw i32 %348, 1, !dbg !1656
  store i32 %349, ptr %20, align 4, !dbg !1656
  %350 = sext i32 %348 to i64, !dbg !1657
  %351 = getelementptr inbounds [64 x i32], ptr %21, i64 0, i64 %350, !dbg !1657
  store i32 %347, ptr %351, align 4, !dbg !1658
  br label %352, !dbg !1659

352:                                              ; preds = %336, %333
  br label %353, !dbg !1660

353:                                              ; preds = %352
  %354 = load i32, ptr %11, align 4, !dbg !1661
  %355 = add nsw i32 %354, 1, !dbg !1661
  store i32 %355, ptr %11, align 4, !dbg !1661
  br label %102, !dbg !1662, !llvm.loop !1663

356:                                              ; preds = %252, %102
  br label %357, !dbg !1665

357:                                              ; preds = %356, %55
  %358 = load i32, ptr %13, align 4, !dbg !1666
  %359 = icmp ugt i32 %358, 0, !dbg !1668
  br i1 %359, label %360, label %437, !dbg !1668

360:                                              ; preds = %357
  br label %361, !dbg !1669

361:                                              ; preds = %431, %360
  %362 = load i32, ptr %11, align 4, !dbg !1671
  %363 = load i32, ptr %7, align 4, !dbg !1674
  %364 = icmp sle i32 %362, %363, !dbg !1675
  br i1 %364, label %365, label %434, !dbg !1676

365:                                              ; preds = %361
  %366 = load ptr, ptr %14, align 8, !dbg !1677
  %367 = getelementptr inbounds [64 x i16], ptr %366, i64 0, i64 0, !dbg !1679
  %368 = load i32, ptr %11, align 4, !dbg !1680
  %369 = sext i32 %368 to i64, !dbg !1681
  %370 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %369, !dbg !1681
  %371 = load i32, ptr %370, align 4, !dbg !1681
  %372 = sext i32 %371 to i64, !dbg !1682
  %373 = getelementptr inbounds i16, ptr %367, i64 %372, !dbg !1682
  store ptr %373, ptr %15, align 8, !dbg !1683
  %374 = load ptr, ptr %15, align 8, !dbg !1684
  %375 = load i16, ptr %374, align 2, !dbg !1686
  %376 = sext i16 %375 to i32, !dbg !1686
  %377 = icmp ne i32 %376, 0, !dbg !1687
  br i1 %377, label %378, label %430, !dbg !1687

378:                                              ; preds = %365
  %379 = load i32, ptr %17, align 4, !dbg !1688
  %380 = icmp slt i32 %379, 1, !dbg !1688
  br i1 %380, label %381, label %392, !dbg !1688

381:                                              ; preds = %378
  %382 = load i64, ptr %16, align 8, !dbg !1692
  %383 = load i32, ptr %17, align 4, !dbg !1692
  %384 = call i32 @jpeg_fill_bit_buffer(ptr noundef %18, i64 noundef %382, i32 noundef %383, i32 noundef 1), !dbg !1692
  %385 = icmp ne i32 %384, 0, !dbg !1692
  br i1 %385, label %387, label %386, !dbg !1692

386:                                              ; preds = %381
  br label %470, !dbg !1695

387:                                              ; preds = %381
  %388 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %18, i32 0, i32 3, !dbg !1697
  %389 = load i64, ptr %388, align 8, !dbg !1697
  store i64 %389, ptr %16, align 8, !dbg !1697
  %390 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %18, i32 0, i32 4, !dbg !1697
  %391 = load i32, ptr %390, align 8, !dbg !1697
  store i32 %391, ptr %17, align 4, !dbg !1697
  br label %392, !dbg !1697

392:                                              ; preds = %387, %378
  %393 = load i64, ptr %16, align 8, !dbg !1698
  %394 = load i32, ptr %17, align 4, !dbg !1698
  %395 = sub nsw i32 %394, 1, !dbg !1698
  store i32 %395, ptr %17, align 4, !dbg !1698
  %396 = zext i32 %395 to i64, !dbg !1698
  %397 = ashr i64 %393, %396, !dbg !1698
  %398 = trunc i64 %397 to i32, !dbg !1698
  %399 = and i32 %398, 1, !dbg !1698
  %400 = icmp ne i32 %399, 0, !dbg !1698
  br i1 %400, label %401, label %429, !dbg !1698

401:                                              ; preds = %392
  %402 = load ptr, ptr %15, align 8, !dbg !1700
  %403 = load i16, ptr %402, align 2, !dbg !1703
  %404 = sext i16 %403 to i32, !dbg !1703
  %405 = load i32, ptr %8, align 4, !dbg !1704
  %406 = and i32 %404, %405, !dbg !1705
  %407 = icmp eq i32 %406, 0, !dbg !1706
  br i1 %407, label %408, label %428, !dbg !1706

408:                                              ; preds = %401
  %409 = load ptr, ptr %15, align 8, !dbg !1707
  %410 = load i16, ptr %409, align 2, !dbg !1710
  %411 = sext i16 %410 to i32, !dbg !1710
  %412 = icmp sge i32 %411, 0, !dbg !1711
  br i1 %412, label %413, label %420, !dbg !1711

413:                                              ; preds = %408
  %414 = load i32, ptr %8, align 4, !dbg !1712
  %415 = load ptr, ptr %15, align 8, !dbg !1713
  %416 = load i16, ptr %415, align 2, !dbg !1714
  %417 = sext i16 %416 to i32, !dbg !1714
  %418 = add nsw i32 %417, %414, !dbg !1714
  %419 = trunc i32 %418 to i16, !dbg !1714
  store i16 %419, ptr %415, align 2, !dbg !1714
  br label %427, !dbg !1715

420:                                              ; preds = %408
  %421 = load i32, ptr %9, align 4, !dbg !1716
  %422 = load ptr, ptr %15, align 8, !dbg !1717
  %423 = load i16, ptr %422, align 2, !dbg !1718
  %424 = sext i16 %423 to i32, !dbg !1718
  %425 = add nsw i32 %424, %421, !dbg !1718
  %426 = trunc i32 %425 to i16, !dbg !1718
  store i16 %426, ptr %422, align 2, !dbg !1718
  br label %427

427:                                              ; preds = %420, %413
  br label %428, !dbg !1719

428:                                              ; preds = %427, %401
  br label %429, !dbg !1720

429:                                              ; preds = %428, %392
  br label %430, !dbg !1721

430:                                              ; preds = %429, %365
  br label %431, !dbg !1722

431:                                              ; preds = %430
  %432 = load i32, ptr %11, align 4, !dbg !1723
  %433 = add nsw i32 %432, 1, !dbg !1723
  store i32 %433, ptr %11, align 4, !dbg !1723
  br label %361, !dbg !1724, !llvm.loop !1725

434:                                              ; preds = %361
  %435 = load i32, ptr %13, align 4, !dbg !1727
  %436 = add i32 %435, -1, !dbg !1727
  store i32 %436, ptr %13, align 4, !dbg !1727
  br label %437, !dbg !1728

437:                                              ; preds = %434, %357
  %438 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %18, i32 0, i32 0, !dbg !1729
  %439 = load ptr, ptr %438, align 8, !dbg !1729
  %440 = load ptr, ptr %4, align 8, !dbg !1729
  %441 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %440, i32 0, i32 5, !dbg !1729
  %442 = load ptr, ptr %441, align 8, !dbg !1729
  %443 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %442, i32 0, i32 0, !dbg !1729
  store ptr %439, ptr %443, align 8, !dbg !1729
  %444 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %18, i32 0, i32 1, !dbg !1729
  %445 = load i64, ptr %444, align 8, !dbg !1729
  %446 = load ptr, ptr %4, align 8, !dbg !1729
  %447 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %446, i32 0, i32 5, !dbg !1729
  %448 = load ptr, ptr %447, align 8, !dbg !1729
  %449 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %448, i32 0, i32 1, !dbg !1729
  store i64 %445, ptr %449, align 8, !dbg !1729
  %450 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %18, i32 0, i32 2, !dbg !1729
  %451 = load i32, ptr %450, align 8, !dbg !1729
  %452 = load ptr, ptr %4, align 8, !dbg !1729
  %453 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %452, i32 0, i32 72, !dbg !1729
  store i32 %451, ptr %453, align 4, !dbg !1729
  %454 = load i64, ptr %16, align 8, !dbg !1729
  %455 = load ptr, ptr %6, align 8, !dbg !1729
  %456 = getelementptr inbounds nuw %struct.phuff_entropy_decoder, ptr %455, i32 0, i32 1, !dbg !1729
  %457 = getelementptr inbounds nuw %struct.bitread_perm_state, ptr %456, i32 0, i32 0, !dbg !1729
  store i64 %454, ptr %457, align 8, !dbg !1729
  %458 = load i32, ptr %17, align 4, !dbg !1729
  %459 = load ptr, ptr %6, align 8, !dbg !1729
  %460 = getelementptr inbounds nuw %struct.phuff_entropy_decoder, ptr %459, i32 0, i32 1, !dbg !1729
  %461 = getelementptr inbounds nuw %struct.bitread_perm_state, ptr %460, i32 0, i32 1, !dbg !1729
  store i32 %458, ptr %461, align 8, !dbg !1729
  %462 = load i32, ptr %13, align 4, !dbg !1730
  %463 = load ptr, ptr %6, align 8, !dbg !1731
  %464 = getelementptr inbounds nuw %struct.phuff_entropy_decoder, ptr %463, i32 0, i32 2, !dbg !1732
  %465 = getelementptr inbounds nuw %struct.savable_state, ptr %464, i32 0, i32 0, !dbg !1733
  store i32 %462, ptr %465, align 8, !dbg !1734
  %466 = load ptr, ptr %6, align 8, !dbg !1735
  %467 = getelementptr inbounds nuw %struct.phuff_entropy_decoder, ptr %466, i32 0, i32 3, !dbg !1736
  %468 = load i32, ptr %467, align 4, !dbg !1737
  %469 = add i32 %468, -1, !dbg !1737
  store i32 %469, ptr %467, align 4, !dbg !1737
  store i32 1, ptr %3, align 4, !dbg !1738
  br label %484, !dbg !1738

470:                                              ; preds = %386, %276, %231, %193, %158, %114
    #dbg_label(!1739, !1740)
  br label %471, !dbg !1741

471:                                              ; preds = %474, %470
  %472 = load i32, ptr %20, align 4, !dbg !1742
  %473 = icmp sgt i32 %472, 0, !dbg !1743
  br i1 %473, label %474, label %483, !dbg !1741

474:                                              ; preds = %471
  %475 = load ptr, ptr %14, align 8, !dbg !1744
  %476 = load i32, ptr %20, align 4, !dbg !1745
  %477 = add nsw i32 %476, -1, !dbg !1745
  store i32 %477, ptr %20, align 4, !dbg !1745
  %478 = sext i32 %477 to i64, !dbg !1746
  %479 = getelementptr inbounds [64 x i32], ptr %21, i64 0, i64 %478, !dbg !1746
  %480 = load i32, ptr %479, align 4, !dbg !1746
  %481 = sext i32 %480 to i64, !dbg !1747
  %482 = getelementptr inbounds [64 x i16], ptr %475, i64 0, i64 %481, !dbg !1747
  store i16 0, ptr %482, align 2, !dbg !1748
  br label %471, !dbg !1741, !llvm.loop !1749

483:                                              ; preds = %471
  store i32 0, ptr %3, align 4, !dbg !1751
  br label %484, !dbg !1751

484:                                              ; preds = %483, %437, %52
  %485 = load i32, ptr %3, align 4, !dbg !1752
  ret i32 %485, !dbg !1752
}

declare void @jpeg_make_d_derived_tbl(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @process_restart(ptr noundef %0) #0 !dbg !1753 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1754, !DIExpression(), !1755)
    #dbg_declare(ptr %4, !1756, !DIExpression(), !1757)
  %6 = load ptr, ptr %3, align 8, !dbg !1758
  %7 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %6, i32 0, i32 79, !dbg !1759
  %8 = load ptr, ptr %7, align 8, !dbg !1759
  store ptr %8, ptr %4, align 8, !dbg !1757
    #dbg_declare(ptr %5, !1760, !DIExpression(), !1761)
  %9 = load ptr, ptr %4, align 8, !dbg !1762
  %10 = getelementptr inbounds nuw %struct.phuff_entropy_decoder, ptr %9, i32 0, i32 1, !dbg !1763
  %11 = getelementptr inbounds nuw %struct.bitread_perm_state, ptr %10, i32 0, i32 1, !dbg !1764
  %12 = load i32, ptr %11, align 8, !dbg !1764
  %13 = sdiv i32 %12, 8, !dbg !1765
  %14 = load ptr, ptr %3, align 8, !dbg !1766
  %15 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %14, i32 0, i32 78, !dbg !1767
  %16 = load ptr, ptr %15, align 8, !dbg !1767
  %17 = getelementptr inbounds nuw %struct.jpeg_marker_reader, ptr %16, i32 0, i32 8, !dbg !1768
  %18 = load i32, ptr %17, align 4, !dbg !1769
  %19 = add i32 %18, %13, !dbg !1769
  store i32 %19, ptr %17, align 4, !dbg !1769
  %20 = load ptr, ptr %4, align 8, !dbg !1770
  %21 = getelementptr inbounds nuw %struct.phuff_entropy_decoder, ptr %20, i32 0, i32 1, !dbg !1771
  %22 = getelementptr inbounds nuw %struct.bitread_perm_state, ptr %21, i32 0, i32 1, !dbg !1772
  store i32 0, ptr %22, align 8, !dbg !1773
  %23 = load ptr, ptr %3, align 8, !dbg !1774
  %24 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %23, i32 0, i32 78, !dbg !1776
  %25 = load ptr, ptr %24, align 8, !dbg !1776
  %26 = getelementptr inbounds nuw %struct.jpeg_marker_reader, ptr %25, i32 0, i32 2, !dbg !1777
  %27 = load ptr, ptr %26, align 8, !dbg !1777
  %28 = load ptr, ptr %3, align 8, !dbg !1778
  %29 = call i32 %27(ptr noundef %28), !dbg !1779
  %30 = icmp ne i32 %29, 0, !dbg !1779
  br i1 %30, label %32, label %31, !dbg !1780

31:                                               ; preds = %1
  store i32 0, ptr %2, align 4, !dbg !1781
  br label %61, !dbg !1781

32:                                               ; preds = %1
  store i32 0, ptr %5, align 4, !dbg !1782
  br label %33, !dbg !1784

33:                                               ; preds = %46, %32
  %34 = load i32, ptr %5, align 4, !dbg !1785
  %35 = load ptr, ptr %3, align 8, !dbg !1787
  %36 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %35, i32 0, i32 62, !dbg !1788
  %37 = load i32, ptr %36, align 8, !dbg !1788
  %38 = icmp slt i32 %34, %37, !dbg !1789
  br i1 %38, label %39, label %49, !dbg !1790

39:                                               ; preds = %33
  %40 = load ptr, ptr %4, align 8, !dbg !1791
  %41 = getelementptr inbounds nuw %struct.phuff_entropy_decoder, ptr %40, i32 0, i32 2, !dbg !1792
  %42 = getelementptr inbounds nuw %struct.savable_state, ptr %41, i32 0, i32 1, !dbg !1793
  %43 = load i32, ptr %5, align 4, !dbg !1794
  %44 = sext i32 %43 to i64, !dbg !1791
  %45 = getelementptr inbounds [4 x i32], ptr %42, i64 0, i64 %44, !dbg !1791
  store i32 0, ptr %45, align 4, !dbg !1795
  br label %46, !dbg !1791

46:                                               ; preds = %39
  %47 = load i32, ptr %5, align 4, !dbg !1796
  %48 = add nsw i32 %47, 1, !dbg !1796
  store i32 %48, ptr %5, align 4, !dbg !1796
  br label %33, !dbg !1797, !llvm.loop !1798

49:                                               ; preds = %33
  %50 = load ptr, ptr %4, align 8, !dbg !1800
  %51 = getelementptr inbounds nuw %struct.phuff_entropy_decoder, ptr %50, i32 0, i32 2, !dbg !1801
  %52 = getelementptr inbounds nuw %struct.savable_state, ptr %51, i32 0, i32 0, !dbg !1802
  store i32 0, ptr %52, align 8, !dbg !1803
  %53 = load ptr, ptr %3, align 8, !dbg !1804
  %54 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %53, i32 0, i32 49, !dbg !1805
  %55 = load i32, ptr %54, align 8, !dbg !1805
  %56 = load ptr, ptr %4, align 8, !dbg !1806
  %57 = getelementptr inbounds nuw %struct.phuff_entropy_decoder, ptr %56, i32 0, i32 3, !dbg !1807
  store i32 %55, ptr %57, align 4, !dbg !1808
  %58 = load ptr, ptr %4, align 8, !dbg !1809
  %59 = getelementptr inbounds nuw %struct.phuff_entropy_decoder, ptr %58, i32 0, i32 1, !dbg !1810
  %60 = getelementptr inbounds nuw %struct.bitread_perm_state, ptr %59, i32 0, i32 2, !dbg !1811
  store i32 0, ptr %60, align 4, !dbg !1812
  store i32 1, ptr %2, align 4, !dbg !1813
  br label %61, !dbg !1813

61:                                               ; preds = %49, %31
  %62 = load i32, ptr %2, align 4, !dbg !1814
  ret i32 %62, !dbg !1814
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare i32 @jpeg_fill_bit_buffer(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #1

declare i32 @jpeg_huff_decode(ptr noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!623, !624, !625, !626, !627, !628, !629}
!llvm.ident = !{!630}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "extend_test", scope: !2, file: !3, line: 209, type: !621, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !156, globals: !618, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jdphuff.c", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "40b9a64506a278e1bd8bcf6bae68e93a")
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
!156 = !{!157, !181, !196, !533, !364, !194, !195, !222}
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "phuff_entropy_ptr", file: !3, line: 74, baseType: !158)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "phuff_entropy_decoder", file: !3, line: 72, baseType: !160)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 56, size: 768, elements: !161)
!161 = !{!162, !581, !591, !598, !599, !617}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "pub", scope: !160, file: !3, line: 57, baseType: !163, size: 128)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_entropy_decoder", file: !26, line: 211, size: 128, elements: !164)
!164 = !{!165, !577}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !163, file: !26, line: 212, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DISubroutineType(types: !168)
!168 = !{null, !169}
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_decompress_ptr", file: !6, line: 250, baseType: !170)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_decompress_struct", file: !6, line: 394, size: 4928, elements: !172)
!172 = !{!173, !300, !301, !302, !303, !304, !327, !328, !329, !330, !332, !333, !334, !335, !337, !338, !339, !341, !342, !343, !344, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !366, !379, !395, !396, !397, !423, !424, !425, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !447, !448, !449, !450, !454, !455, !456, !457, !458, !459, !466, !480, !498, !507, !517, !532, !534, !547, !554, !563}
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
!307 = !{!308, !312, !313, !314, !318, !322, !326}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "next_input_byte", scope: !306, file: !6, line: 701, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "JOCTET", file: !209, line: 110, baseType: !210)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_in_buffer", scope: !306, file: !6, line: 702, baseType: !196, size: 64, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "init_source", scope: !306, file: !6, line: 704, baseType: !166, size: 64, offset: 128)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "fill_input_buffer", scope: !306, file: !6, line: 705, baseType: !315, size: 64, offset: 192)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DISubroutineType(types: !317)
!317 = !{!233, !169}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "skip_input_data", scope: !306, file: !6, line: 706, baseType: !319, size: 64, offset: 256)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DISubroutineType(types: !321)
!321 = !{null, !169, !256}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "resync_to_restart", scope: !306, file: !6, line: 707, baseType: !323, size: 64, offset: 320)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{!233, !169, !195}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "term_source", scope: !306, file: !6, line: 708, baseType: !166, size: 64, offset: 384)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "image_width", scope: !171, file: !6, line: 403, baseType: !211, size: 32, offset: 320)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "image_height", scope: !171, file: !6, line: 404, baseType: !211, size: 32, offset: 352)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "num_components", scope: !171, file: !6, line: 405, baseType: !195, size: 32, offset: 384)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_color_space", scope: !171, file: !6, line: 406, baseType: !331, size: 32, offset: 416)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_COLOR_SPACE", file: !6, line: 201, baseType: !5)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "out_color_space", scope: !171, file: !6, line: 413, baseType: !331, size: 32, offset: 448)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "scale_num", scope: !171, file: !6, line: 415, baseType: !7, size: 32, offset: 480)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "scale_denom", scope: !171, file: !6, line: 415, baseType: !7, size: 32, offset: 512)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "output_gamma", scope: !171, file: !6, line: 417, baseType: !336, size: 64, offset: 576)
!336 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "buffered_image", scope: !171, file: !6, line: 419, baseType: !233, size: 32, offset: 640)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "raw_data_out", scope: !171, file: !6, line: 420, baseType: !233, size: 32, offset: 672)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "dct_method", scope: !171, file: !6, line: 422, baseType: !340, size: 32, offset: 704)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_DCT_METHOD", file: !6, line: 209, baseType: !15)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "do_fancy_upsampling", scope: !171, file: !6, line: 423, baseType: !233, size: 32, offset: 736)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "do_block_smoothing", scope: !171, file: !6, line: 424, baseType: !233, size: 32, offset: 768)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "quantize_colors", scope: !171, file: !6, line: 426, baseType: !233, size: 32, offset: 800)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "dither_mode", scope: !171, file: !6, line: 428, baseType: !345, size: 32, offset: 832)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_DITHER_MODE", file: !6, line: 224, baseType: !20)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "two_pass_quantize", scope: !171, file: !6, line: 429, baseType: !233, size: 32, offset: 864)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "desired_number_of_colors", scope: !171, file: !6, line: 430, baseType: !195, size: 32, offset: 896)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "enable_1pass_quant", scope: !171, file: !6, line: 432, baseType: !233, size: 32, offset: 928)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "enable_external_quant", scope: !171, file: !6, line: 433, baseType: !233, size: 32, offset: 960)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "enable_2pass_quant", scope: !171, file: !6, line: 434, baseType: !233, size: 32, offset: 992)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "output_width", scope: !171, file: !6, line: 442, baseType: !211, size: 32, offset: 1024)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "output_height", scope: !171, file: !6, line: 443, baseType: !211, size: 32, offset: 1056)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "out_color_components", scope: !171, file: !6, line: 444, baseType: !195, size: 32, offset: 1088)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "output_components", scope: !171, file: !6, line: 445, baseType: !195, size: 32, offset: 1120)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "rec_outbuf_height", scope: !171, file: !6, line: 449, baseType: !195, size: 32, offset: 1152)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "actual_number_of_colors", scope: !171, file: !6, line: 461, baseType: !195, size: 32, offset: 1184)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !171, file: !6, line: 462, baseType: !204, size: 64, offset: 1216)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "output_scanline", scope: !171, file: !6, line: 472, baseType: !211, size: 32, offset: 1280)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "input_scan_number", scope: !171, file: !6, line: 477, baseType: !195, size: 32, offset: 1312)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "input_iMCU_row", scope: !171, file: !6, line: 478, baseType: !211, size: 32, offset: 1344)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "output_scan_number", scope: !171, file: !6, line: 484, baseType: !195, size: 32, offset: 1376)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "output_iMCU_row", scope: !171, file: !6, line: 485, baseType: !211, size: 32, offset: 1408)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "coef_bits", scope: !171, file: !6, line: 494, baseType: !364, size: 64, offset: 1472)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 2048, elements: !224)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_ptrs", scope: !171, file: !6, line: 505, baseType: !367, size: 256, offset: 1536)
!367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 256, elements: !377)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "JQUANT_TBL", file: !6, line: 95, baseType: !370)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 83, size: 1056, elements: !371)
!371 = !{!372, !376}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "quantval", scope: !370, file: !6, line: 88, baseType: !373, size: 1024)
!373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !374, size: 1024, elements: !224)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !209, line: 147, baseType: !375)
!375 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !370, file: !6, line: 94, baseType: !233, size: 32, offset: 1024)
!377 = !{!378}
!378 = !DISubrange(count: 4)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "dc_huff_tbl_ptrs", scope: !171, file: !6, line: 508, baseType: !380, size: 256, offset: 1792)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 256, elements: !377)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "JHUFF_TBL", file: !6, line: 111, baseType: !383)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 100, size: 2240, elements: !384)
!384 = !{!385, !390, !394}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !383, file: !6, line: 102, baseType: !386, size: 136)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 136, elements: !388)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT8", file: !209, line: 135, baseType: !210)
!388 = !{!389}
!389 = !DISubrange(count: 17)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "huffval", scope: !383, file: !6, line: 104, baseType: !391, size: 2048, offset: 136)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 2048, elements: !392)
!392 = !{!393}
!393 = !DISubrange(count: 256)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !383, file: !6, line: 110, baseType: !233, size: 32, offset: 2208)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "ac_huff_tbl_ptrs", scope: !171, file: !6, line: 509, baseType: !380, size: 256, offset: 2048)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "data_precision", scope: !171, file: !6, line: 516, baseType: !195, size: 32, offset: 2304)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "comp_info", scope: !171, file: !6, line: 518, baseType: !398, size: 64, offset: 2368)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_component_info", file: !6, line: 179, baseType: !400)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 116, size: 768, elements: !401)
!401 = !{!402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "component_id", scope: !400, file: !6, line: 120, baseType: !195, size: 32)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "component_index", scope: !400, file: !6, line: 121, baseType: !195, size: 32, offset: 32)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "h_samp_factor", scope: !400, file: !6, line: 122, baseType: !195, size: 32, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "v_samp_factor", scope: !400, file: !6, line: 123, baseType: !195, size: 32, offset: 96)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_no", scope: !400, file: !6, line: 124, baseType: !195, size: 32, offset: 128)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "dc_tbl_no", scope: !400, file: !6, line: 129, baseType: !195, size: 32, offset: 160)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tbl_no", scope: !400, file: !6, line: 130, baseType: !195, size: 32, offset: 192)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "width_in_blocks", scope: !400, file: !6, line: 139, baseType: !211, size: 32, offset: 224)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "height_in_blocks", scope: !400, file: !6, line: 140, baseType: !211, size: 32, offset: 256)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "DCT_scaled_size", scope: !400, file: !6, line: 147, baseType: !195, size: 32, offset: 288)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_width", scope: !400, file: !6, line: 154, baseType: !211, size: 32, offset: 320)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_height", scope: !400, file: !6, line: 155, baseType: !211, size: 32, offset: 352)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "component_needed", scope: !400, file: !6, line: 160, baseType: !233, size: 32, offset: 384)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_width", scope: !400, file: !6, line: 164, baseType: !195, size: 32, offset: 416)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_height", scope: !400, file: !6, line: 165, baseType: !195, size: 32, offset: 448)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_blocks", scope: !400, file: !6, line: 166, baseType: !195, size: 32, offset: 480)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_sample_width", scope: !400, file: !6, line: 167, baseType: !195, size: 32, offset: 512)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "last_col_width", scope: !400, file: !6, line: 168, baseType: !195, size: 32, offset: 544)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "last_row_height", scope: !400, file: !6, line: 169, baseType: !195, size: 32, offset: 576)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "quant_table", scope: !400, file: !6, line: 175, baseType: !368, size: 64, offset: 640)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "dct_table", scope: !400, file: !6, line: 178, baseType: !194, size: 64, offset: 704)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "progressive_mode", scope: !171, file: !6, line: 521, baseType: !233, size: 32, offset: 2432)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "arith_code", scope: !171, file: !6, line: 522, baseType: !233, size: 32, offset: 2464)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_L", scope: !171, file: !6, line: 524, baseType: !426, size: 128, offset: 2496)
!426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 128, elements: !427)
!427 = !{!428}
!428 = !DISubrange(count: 16)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_U", scope: !171, file: !6, line: 525, baseType: !426, size: 128, offset: 2624)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "arith_ac_K", scope: !171, file: !6, line: 526, baseType: !426, size: 128, offset: 2752)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "restart_interval", scope: !171, file: !6, line: 528, baseType: !7, size: 32, offset: 2880)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "saw_JFIF_marker", scope: !171, file: !6, line: 533, baseType: !233, size: 32, offset: 2912)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "density_unit", scope: !171, file: !6, line: 535, baseType: !387, size: 8, offset: 2944)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "X_density", scope: !171, file: !6, line: 536, baseType: !374, size: 16, offset: 2960)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "Y_density", scope: !171, file: !6, line: 537, baseType: !374, size: 16, offset: 2976)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "saw_Adobe_marker", scope: !171, file: !6, line: 538, baseType: !233, size: 32, offset: 3008)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "Adobe_transform", scope: !171, file: !6, line: 539, baseType: !387, size: 8, offset: 3040)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "CCIR601_sampling", scope: !171, file: !6, line: 541, baseType: !233, size: 32, offset: 3072)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "max_h_samp_factor", scope: !171, file: !6, line: 550, baseType: !195, size: 32, offset: 3104)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "max_v_samp_factor", scope: !171, file: !6, line: 551, baseType: !195, size: 32, offset: 3136)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "min_DCT_scaled_size", scope: !171, file: !6, line: 553, baseType: !195, size: 32, offset: 3168)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "total_iMCU_rows", scope: !171, file: !6, line: 555, baseType: !211, size: 32, offset: 3200)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "sample_range_limit", scope: !171, file: !6, line: 564, baseType: !207, size: 64, offset: 3264)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "comps_in_scan", scope: !171, file: !6, line: 571, baseType: !195, size: 32, offset: 3328)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "cur_comp_info", scope: !171, file: !6, line: 572, baseType: !446, size: 256, offset: 3392)
!446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 256, elements: !377)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "MCUs_per_row", scope: !171, file: !6, line: 575, baseType: !211, size: 32, offset: 3648)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_rows_in_scan", scope: !171, file: !6, line: 576, baseType: !211, size: 32, offset: 3680)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_in_MCU", scope: !171, file: !6, line: 578, baseType: !195, size: 32, offset: 3712)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_membership", scope: !171, file: !6, line: 579, baseType: !451, size: 320, offset: 3744)
!451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 320, elements: !452)
!452 = !{!453}
!453 = !DISubrange(count: 10)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "Ss", scope: !171, file: !6, line: 583, baseType: !195, size: 32, offset: 4064)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "Se", scope: !171, file: !6, line: 583, baseType: !195, size: 32, offset: 4096)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "Ah", scope: !171, file: !6, line: 583, baseType: !195, size: 32, offset: 4128)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "Al", scope: !171, file: !6, line: 583, baseType: !195, size: 32, offset: 4160)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "unread_marker", scope: !171, file: !6, line: 589, baseType: !195, size: 32, offset: 4192)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !171, file: !6, line: 594, baseType: !460, size: 64, offset: 4224)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_decomp_master", file: !26, line: 136, size: 192, elements: !462)
!462 = !{!463, !464, !465}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_for_output_pass", scope: !461, file: !26, line: 137, baseType: !166, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "finish_output_pass", scope: !461, file: !26, line: 138, baseType: !166, size: 64, offset: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "is_dummy_pass", scope: !461, file: !26, line: 141, baseType: !233, size: 32, offset: 128)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "main", scope: !171, file: !6, line: 595, baseType: !467, size: 64, offset: 4288)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_d_main_controller", file: !26, line: 157, size: 128, elements: !469)
!469 = !{!470, !475}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !468, file: !26, line: 158, baseType: !471, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DISubroutineType(types: !473)
!473 = !{null, !169, !474}
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_BUF_MODE", file: !26, line: 22, baseType: !25)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "process_data", scope: !468, file: !26, line: 159, baseType: !476, size: 64, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{null, !169, !204, !479, !211}
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "coef", scope: !171, file: !6, line: 596, baseType: !481, size: 64, offset: 4352)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_d_coef_controller", file: !26, line: 165, size: 320, elements: !483)
!483 = !{!484, !485, !489, !490, !496}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "start_input_pass", scope: !482, file: !26, line: 166, baseType: !166, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "consume_data", scope: !482, file: !26, line: 167, baseType: !486, size: 64, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{!195, !169}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "start_output_pass", scope: !482, file: !26, line: 168, baseType: !166, size: 64, offset: 128)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "decompress_data", scope: !482, file: !26, line: 169, baseType: !491, size: 64, offset: 192)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DISubroutineType(types: !493)
!493 = !{!195, !169, !494}
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPIMAGE", file: !6, line: 68, baseType: !495)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "coef_arrays", scope: !482, file: !26, line: 172, baseType: !497, size: 64, offset: 256)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "post", scope: !171, file: !6, line: 597, baseType: !499, size: 64, offset: 4416)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_d_post_controller", file: !26, line: 176, size: 128, elements: !501)
!501 = !{!502, !503}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !500, file: !26, line: 177, baseType: !471, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "post_process_data", scope: !500, file: !26, line: 178, baseType: !504, size: 64, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{null, !169, !494, !479, !211, !204, !479, !211}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "inputctl", scope: !171, file: !6, line: 598, baseType: !508, size: 64, offset: 4480)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_input_controller", file: !26, line: 145, size: 320, elements: !510)
!510 = !{!511, !512, !513, !514, !515, !516}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "consume_input", scope: !509, file: !26, line: 146, baseType: !486, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "reset_input_controller", scope: !509, file: !26, line: 147, baseType: !166, size: 64, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "start_input_pass", scope: !509, file: !26, line: 148, baseType: !166, size: 64, offset: 128)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "finish_input_pass", scope: !509, file: !26, line: 149, baseType: !166, size: 64, offset: 192)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "has_multiple_scans", scope: !509, file: !26, line: 152, baseType: !233, size: 32, offset: 256)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "eoi_reached", scope: !509, file: !26, line: 153, baseType: !233, size: 32, offset: 288)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "marker", scope: !171, file: !6, line: 599, baseType: !518, size: 64, offset: 4544)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_marker_reader", file: !26, line: 188, size: 1408, elements: !520)
!520 = !{!521, !522, !523, !525, !526, !528, !529, !530, !531}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "reset_marker_reader", scope: !519, file: !26, line: 189, baseType: !166, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "read_markers", scope: !519, file: !26, line: 194, baseType: !486, size: 64, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "read_restart_marker", scope: !519, file: !26, line: 196, baseType: !524, size: 64, offset: 128)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_marker_parser_method", file: !6, line: 781, baseType: !315)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "process_COM", scope: !519, file: !26, line: 198, baseType: !524, size: 64, offset: 192)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "process_APPn", scope: !519, file: !26, line: 199, baseType: !527, size: 1024, offset: 256)
!527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !524, size: 1024, elements: !427)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "saw_SOI", scope: !519, file: !26, line: 204, baseType: !233, size: 32, offset: 1280)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "saw_SOF", scope: !519, file: !26, line: 205, baseType: !233, size: 32, offset: 1312)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "next_restart_num", scope: !519, file: !26, line: 206, baseType: !195, size: 32, offset: 1344)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "discarded_bytes", scope: !519, file: !26, line: 207, baseType: !7, size: 32, offset: 1376)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "entropy", scope: !171, file: !6, line: 600, baseType: !533, size: 64, offset: 4608)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "idct", scope: !171, file: !6, line: 601, baseType: !535, size: 64, offset: 4672)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_inverse_dct", file: !26, line: 223, size: 704, elements: !537)
!537 = !{!538, !539}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !536, file: !26, line: 224, baseType: !166, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "inverse_DCT", scope: !536, file: !26, line: 226, baseType: !540, size: 640, offset: 64)
!540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !541, size: 640, elements: !452)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "inverse_DCT_method_ptr", file: !26, line: 218, baseType: !542)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DISubroutineType(types: !544)
!544 = !{null, !169, !398, !545, !204, !211}
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "JCOEFPTR", file: !6, line: 75, baseType: !546)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "upsample", scope: !171, file: !6, line: 602, baseType: !548, size: 64, offset: 4736)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_upsampler", file: !26, line: 230, size: 192, elements: !550)
!550 = !{!551, !552, !553}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !549, file: !26, line: 231, baseType: !166, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "upsample", scope: !549, file: !26, line: 232, baseType: !504, size: 64, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "need_context_rows", scope: !549, file: !26, line: 240, baseType: !233, size: 32, offset: 128)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "cconvert", scope: !171, file: !6, line: 603, baseType: !555, size: 64, offset: 4800)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_color_deconverter", file: !26, line: 244, size: 128, elements: !557)
!557 = !{!558, !559}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !556, file: !26, line: 245, baseType: !166, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "color_convert", scope: !556, file: !26, line: 246, baseType: !560, size: 64, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DISubroutineType(types: !562)
!562 = !{null, !169, !494, !211, !204, !195}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "cquantize", scope: !171, file: !6, line: 604, baseType: !564, size: 64, offset: 4864)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_color_quantizer", file: !26, line: 252, size: 256, elements: !566)
!566 = !{!567, !571, !575, !576}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !565, file: !26, line: 253, baseType: !568, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{null, !169, !233}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "color_quantize", scope: !565, file: !26, line: 254, baseType: !572, size: 64, offset: 64)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{null, !169, !204, !204, !195}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "finish_pass", scope: !565, file: !26, line: 257, baseType: !166, size: 64, offset: 128)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "new_color_map", scope: !565, file: !26, line: 258, baseType: !166, size: 64, offset: 192)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "decode_mcu", scope: !163, file: !26, line: 213, baseType: !578, size: 64, offset: 64)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DISubroutineType(types: !580)
!580 = !{!233, !169, !217}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "bitstate", scope: !160, file: !3, line: 62, baseType: !582, size: 128, offset: 128)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitread_perm_state", file: !583, line: 82, baseType: !584)
!583 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jdhuff.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "ae4ee10e9000ceb58d3d7f8a964b87b0")
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !583, line: 78, size: 128, elements: !585)
!585 = !{!586, !589, !590}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "get_buffer", scope: !584, file: !583, line: 79, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "bit_buf_type", file: !583, line: 68, baseType: !588)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT32", file: !209, line: 161, baseType: !256)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "bits_left", scope: !584, file: !583, line: 80, baseType: !195, size: 32, offset: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "printed_eod", scope: !584, file: !583, line: 81, baseType: !233, size: 32, offset: 96)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "saved", scope: !160, file: !3, line: 63, baseType: !592, size: 160, offset: 256)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "savable_state", file: !3, line: 35, baseType: !593)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 32, size: 160, elements: !594)
!594 = !{!595, !596}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "EOBRUN", scope: !593, file: !3, line: 33, baseType: !7, size: 32)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "last_dc_val", scope: !593, file: !3, line: 34, baseType: !597, size: 128, offset: 32)
!597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 128, elements: !377)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "restarts_to_go", scope: !160, file: !3, line: 66, baseType: !7, size: 32, offset: 416)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "derived_tbls", scope: !160, file: !3, line: 69, baseType: !600, size: 256, offset: 448)
!600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !601, size: 256, elements: !377)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "d_derived_tbl", file: !583, line: 43, baseType: !603)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !583, line: 26, size: 13120, elements: !604)
!604 = !{!605, !607, !611, !613, !614, !616}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "mincode", scope: !603, file: !583, line: 28, baseType: !606, size: 1088)
!606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !588, size: 1088, elements: !388)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "maxcode", scope: !603, file: !583, line: 29, baseType: !608, size: 1152, offset: 1088)
!608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !588, size: 1152, elements: !609)
!609 = !{!610}
!610 = !DISubrange(count: 18)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "valptr", scope: !603, file: !583, line: 31, baseType: !612, size: 544, offset: 2240)
!612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 544, elements: !388)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "pub", scope: !603, file: !583, line: 34, baseType: !381, size: 64, offset: 2816)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "look_nbits", scope: !603, file: !583, line: 41, baseType: !615, size: 8192, offset: 2880)
!615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 8192, elements: !392)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "look_sym", scope: !603, file: !583, line: 42, baseType: !391, size: 2048, offset: 11072)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "ac_derived_tbl", scope: !160, file: !3, line: 71, baseType: !601, size: 64, offset: 704)
!618 = !{!0, !619}
!619 = !DIGlobalVariableExpression(var: !620, expr: !DIExpression())
!620 = distinct !DIGlobalVariable(name: "extend_offset", scope: !2, file: !3, line: 213, type: !621, isLocal: true, isDefinition: true)
!621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !622, size: 512, elements: !427)
!622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !195)
!623 = !{i32 7, !"Dwarf Version", i32 5}
!624 = !{i32 2, !"Debug Info Version", i32 3}
!625 = !{i32 1, !"wchar_size", i32 4}
!626 = !{i32 8, !"PIC Level", i32 2}
!627 = !{i32 7, !"PIE Level", i32 2}
!628 = !{i32 7, !"uwtable", i32 2}
!629 = !{i32 7, !"frame-pointer", i32 2}
!630 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!631 = distinct !DISubprogram(name: "jinit_phuff_decoder", scope: !3, file: !3, line: 615, type: !167, scopeLine: 616, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !632)
!632 = !{}
!633 = !DILocalVariable(name: "cinfo", arg: 1, scope: !631, file: !3, line: 615, type: !169)
!634 = !DILocation(line: 615, column: 39, scope: !631)
!635 = !DILocalVariable(name: "entropy", scope: !631, file: !3, line: 617, type: !157)
!636 = !DILocation(line: 617, column: 21, scope: !631)
!637 = !DILocalVariable(name: "coef_bit_ptr", scope: !631, file: !3, line: 618, type: !638)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!639 = !DILocation(line: 618, column: 8, scope: !631)
!640 = !DILocalVariable(name: "ci", scope: !631, file: !3, line: 619, type: !195)
!641 = !DILocation(line: 619, column: 7, scope: !631)
!642 = !DILocalVariable(name: "i", scope: !631, file: !3, line: 619, type: !195)
!643 = !DILocation(line: 619, column: 11, scope: !631)
!644 = !DILocation(line: 622, column: 7, scope: !631)
!645 = !DILocation(line: 622, column: 14, scope: !631)
!646 = !DILocation(line: 622, column: 19, scope: !631)
!647 = !DILocation(line: 622, column: 48, scope: !631)
!648 = !DILocation(line: 622, column: 5, scope: !631)
!649 = !DILocation(line: 621, column: 11, scope: !631)
!650 = !DILocation(line: 624, column: 52, scope: !631)
!651 = !DILocation(line: 624, column: 3, scope: !631)
!652 = !DILocation(line: 624, column: 10, scope: !631)
!653 = !DILocation(line: 624, column: 18, scope: !631)
!654 = !DILocation(line: 625, column: 3, scope: !631)
!655 = !DILocation(line: 625, column: 12, scope: !631)
!656 = !DILocation(line: 625, column: 16, scope: !631)
!657 = !DILocation(line: 625, column: 27, scope: !631)
!658 = !DILocation(line: 628, column: 10, scope: !659)
!659 = distinct !DILexicalBlock(scope: !631, file: !3, line: 628, column: 3)
!660 = !DILocation(line: 628, column: 8, scope: !659)
!661 = !DILocation(line: 628, column: 15, scope: !662)
!662 = distinct !DILexicalBlock(scope: !659, file: !3, line: 628, column: 3)
!663 = !DILocation(line: 628, column: 17, scope: !662)
!664 = !DILocation(line: 628, column: 3, scope: !659)
!665 = !DILocation(line: 629, column: 5, scope: !666)
!666 = distinct !DILexicalBlock(scope: !662, file: !3, line: 628, column: 39)
!667 = !DILocation(line: 629, column: 14, scope: !666)
!668 = !DILocation(line: 629, column: 27, scope: !666)
!669 = !DILocation(line: 629, column: 30, scope: !666)
!670 = !DILocation(line: 630, column: 3, scope: !666)
!671 = !DILocation(line: 628, column: 35, scope: !662)
!672 = !DILocation(line: 628, column: 3, scope: !662)
!673 = distinct !{!673, !664, !674, !675}
!674 = !DILocation(line: 630, column: 3, scope: !659)
!675 = !{!"llvm.loop.mustprogress"}
!676 = !DILocation(line: 634, column: 7, scope: !631)
!677 = !DILocation(line: 634, column: 14, scope: !631)
!678 = !DILocation(line: 634, column: 19, scope: !631)
!679 = !DILocation(line: 634, column: 48, scope: !631)
!680 = !DILocation(line: 635, column: 5, scope: !631)
!681 = !DILocation(line: 635, column: 12, scope: !631)
!682 = !DILocation(line: 635, column: 26, scope: !631)
!683 = !DILocation(line: 635, column: 35, scope: !631)
!684 = !DILocation(line: 634, column: 5, scope: !631)
!685 = !DILocation(line: 633, column: 3, scope: !631)
!686 = !DILocation(line: 633, column: 10, scope: !631)
!687 = !DILocation(line: 633, column: 20, scope: !631)
!688 = !DILocation(line: 636, column: 20, scope: !631)
!689 = !DILocation(line: 636, column: 27, scope: !631)
!690 = !DILocation(line: 636, column: 16, scope: !631)
!691 = !DILocation(line: 637, column: 11, scope: !692)
!692 = distinct !DILexicalBlock(scope: !631, file: !3, line: 637, column: 3)
!693 = !DILocation(line: 637, column: 8, scope: !692)
!694 = !DILocation(line: 637, column: 16, scope: !695)
!695 = distinct !DILexicalBlock(scope: !692, file: !3, line: 637, column: 3)
!696 = !DILocation(line: 637, column: 21, scope: !695)
!697 = !DILocation(line: 637, column: 28, scope: !695)
!698 = !DILocation(line: 637, column: 19, scope: !695)
!699 = !DILocation(line: 637, column: 3, scope: !692)
!700 = !DILocation(line: 638, column: 12, scope: !701)
!701 = distinct !DILexicalBlock(scope: !695, file: !3, line: 638, column: 5)
!702 = !DILocation(line: 638, column: 10, scope: !701)
!703 = !DILocation(line: 638, column: 17, scope: !704)
!704 = distinct !DILexicalBlock(scope: !701, file: !3, line: 638, column: 5)
!705 = !DILocation(line: 638, column: 19, scope: !704)
!706 = !DILocation(line: 638, column: 5, scope: !701)
!707 = !DILocation(line: 639, column: 20, scope: !704)
!708 = !DILocation(line: 639, column: 23, scope: !704)
!709 = !DILocation(line: 639, column: 7, scope: !704)
!710 = !DILocation(line: 638, column: 32, scope: !704)
!711 = !DILocation(line: 638, column: 5, scope: !704)
!712 = distinct !{!712, !706, !713, !675}
!713 = !DILocation(line: 639, column: 26, scope: !701)
!714 = !DILocation(line: 637, column: 46, scope: !695)
!715 = !DILocation(line: 637, column: 3, scope: !695)
!716 = distinct !{!716, !699, !717, !675}
!717 = !DILocation(line: 639, column: 26, scope: !692)
!718 = !DILocation(line: 640, column: 1, scope: !631)
!719 = distinct !DISubprogram(name: "start_pass_phuff_decoder", scope: !3, file: !3, line: 92, type: !167, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !632)
!720 = !DILocalVariable(name: "cinfo", arg: 1, scope: !719, file: !3, line: 92, type: !169)
!721 = !DILocation(line: 92, column: 44, scope: !719)
!722 = !DILocalVariable(name: "entropy", scope: !719, file: !3, line: 94, type: !157)
!723 = !DILocation(line: 94, column: 21, scope: !719)
!724 = !DILocation(line: 94, column: 51, scope: !719)
!725 = !DILocation(line: 94, column: 58, scope: !719)
!726 = !DILocalVariable(name: "is_DC_band", scope: !719, file: !3, line: 95, type: !233)
!727 = !DILocation(line: 95, column: 11, scope: !719)
!728 = !DILocalVariable(name: "bad", scope: !719, file: !3, line: 95, type: !233)
!729 = !DILocation(line: 95, column: 23, scope: !719)
!730 = !DILocalVariable(name: "ci", scope: !719, file: !3, line: 96, type: !195)
!731 = !DILocation(line: 96, column: 7, scope: !719)
!732 = !DILocalVariable(name: "coefi", scope: !719, file: !3, line: 96, type: !195)
!733 = !DILocation(line: 96, column: 11, scope: !719)
!734 = !DILocalVariable(name: "tbl", scope: !719, file: !3, line: 96, type: !195)
!735 = !DILocation(line: 96, column: 18, scope: !719)
!736 = !DILocalVariable(name: "coef_bit_ptr", scope: !719, file: !3, line: 97, type: !638)
!737 = !DILocation(line: 97, column: 8, scope: !719)
!738 = !DILocalVariable(name: "compptr", scope: !719, file: !3, line: 98, type: !398)
!739 = !DILocation(line: 98, column: 25, scope: !719)
!740 = !DILocation(line: 100, column: 17, scope: !719)
!741 = !DILocation(line: 100, column: 24, scope: !719)
!742 = !DILocation(line: 100, column: 27, scope: !719)
!743 = !DILocation(line: 100, column: 14, scope: !719)
!744 = !DILocation(line: 103, column: 7, scope: !719)
!745 = !DILocation(line: 104, column: 7, scope: !746)
!746 = distinct !DILexicalBlock(scope: !719, file: !3, line: 104, column: 7)
!747 = !DILocation(line: 105, column: 9, scope: !748)
!748 = distinct !DILexicalBlock(scope: !749, file: !3, line: 105, column: 9)
!749 = distinct !DILexicalBlock(scope: !746, file: !3, line: 104, column: 19)
!750 = !DILocation(line: 105, column: 16, scope: !748)
!751 = !DILocation(line: 105, column: 19, scope: !748)
!752 = !DILocation(line: 106, column: 11, scope: !748)
!753 = !DILocation(line: 106, column: 7, scope: !748)
!754 = !DILocation(line: 107, column: 3, scope: !749)
!755 = !DILocation(line: 109, column: 9, scope: !756)
!756 = distinct !DILexicalBlock(scope: !757, file: !3, line: 109, column: 9)
!757 = distinct !DILexicalBlock(scope: !746, file: !3, line: 107, column: 10)
!758 = !DILocation(line: 109, column: 16, scope: !756)
!759 = !DILocation(line: 109, column: 21, scope: !756)
!760 = !DILocation(line: 109, column: 28, scope: !756)
!761 = !DILocation(line: 109, column: 19, scope: !756)
!762 = !DILocation(line: 109, column: 31, scope: !756)
!763 = !DILocation(line: 109, column: 34, scope: !756)
!764 = !DILocation(line: 109, column: 41, scope: !756)
!765 = !DILocation(line: 109, column: 44, scope: !756)
!766 = !DILocation(line: 110, column: 11, scope: !756)
!767 = !DILocation(line: 110, column: 7, scope: !756)
!768 = !DILocation(line: 112, column: 9, scope: !769)
!769 = distinct !DILexicalBlock(scope: !757, file: !3, line: 112, column: 9)
!770 = !DILocation(line: 112, column: 16, scope: !769)
!771 = !DILocation(line: 112, column: 30, scope: !769)
!772 = !DILocation(line: 113, column: 11, scope: !769)
!773 = !DILocation(line: 113, column: 7, scope: !769)
!774 = !DILocation(line: 115, column: 7, scope: !775)
!775 = distinct !DILexicalBlock(scope: !719, file: !3, line: 115, column: 7)
!776 = !DILocation(line: 115, column: 14, scope: !775)
!777 = !DILocation(line: 115, column: 17, scope: !775)
!778 = !DILocation(line: 117, column: 9, scope: !779)
!779 = distinct !DILexicalBlock(scope: !780, file: !3, line: 117, column: 9)
!780 = distinct !DILexicalBlock(scope: !775, file: !3, line: 115, column: 23)
!781 = !DILocation(line: 117, column: 16, scope: !779)
!782 = !DILocation(line: 117, column: 22, scope: !779)
!783 = !DILocation(line: 117, column: 29, scope: !779)
!784 = !DILocation(line: 117, column: 31, scope: !779)
!785 = !DILocation(line: 117, column: 19, scope: !779)
!786 = !DILocation(line: 118, column: 11, scope: !779)
!787 = !DILocation(line: 118, column: 7, scope: !779)
!788 = !DILocation(line: 119, column: 3, scope: !780)
!789 = !DILocation(line: 120, column: 7, scope: !790)
!790 = distinct !DILexicalBlock(scope: !719, file: !3, line: 120, column: 7)
!791 = !DILocation(line: 120, column: 14, scope: !790)
!792 = !DILocation(line: 120, column: 17, scope: !790)
!793 = !DILocation(line: 121, column: 9, scope: !790)
!794 = !DILocation(line: 121, column: 5, scope: !790)
!795 = !DILocation(line: 122, column: 7, scope: !796)
!796 = distinct !DILexicalBlock(scope: !719, file: !3, line: 122, column: 7)
!797 = !DILocation(line: 123, column: 5, scope: !796)
!798 = !DILocation(line: 129, column: 11, scope: !799)
!799 = distinct !DILexicalBlock(scope: !719, file: !3, line: 129, column: 3)
!800 = !DILocation(line: 129, column: 8, scope: !799)
!801 = !DILocation(line: 129, column: 16, scope: !802)
!802 = distinct !DILexicalBlock(scope: !799, file: !3, line: 129, column: 3)
!803 = !DILocation(line: 129, column: 21, scope: !802)
!804 = !DILocation(line: 129, column: 28, scope: !802)
!805 = !DILocation(line: 129, column: 19, scope: !802)
!806 = !DILocation(line: 129, column: 3, scope: !799)
!807 = !DILocalVariable(name: "cindex", scope: !808, file: !3, line: 130, type: !195)
!808 = distinct !DILexicalBlock(scope: !802, file: !3, line: 129, column: 49)
!809 = !DILocation(line: 130, column: 9, scope: !808)
!810 = !DILocation(line: 130, column: 18, scope: !808)
!811 = !DILocation(line: 130, column: 25, scope: !808)
!812 = !DILocation(line: 130, column: 39, scope: !808)
!813 = !DILocation(line: 130, column: 44, scope: !808)
!814 = !DILocation(line: 131, column: 22, scope: !808)
!815 = !DILocation(line: 131, column: 29, scope: !808)
!816 = !DILocation(line: 131, column: 39, scope: !808)
!817 = !DILocation(line: 131, column: 18, scope: !808)
!818 = !DILocation(line: 132, column: 10, scope: !819)
!819 = distinct !DILexicalBlock(scope: !808, file: !3, line: 132, column: 9)
!820 = !DILocation(line: 132, column: 21, scope: !819)
!821 = !DILocation(line: 132, column: 24, scope: !819)
!822 = !DILocation(line: 132, column: 40, scope: !819)
!823 = !DILocation(line: 133, column: 7, scope: !819)
!824 = !DILocation(line: 134, column: 18, scope: !825)
!825 = distinct !DILexicalBlock(scope: !808, file: !3, line: 134, column: 5)
!826 = !DILocation(line: 134, column: 25, scope: !825)
!827 = !DILocation(line: 134, column: 16, scope: !825)
!828 = !DILocation(line: 134, column: 10, scope: !825)
!829 = !DILocation(line: 134, column: 29, scope: !830)
!830 = distinct !DILexicalBlock(scope: !825, file: !3, line: 134, column: 5)
!831 = !DILocation(line: 134, column: 38, scope: !830)
!832 = !DILocation(line: 134, column: 45, scope: !830)
!833 = !DILocation(line: 134, column: 35, scope: !830)
!834 = !DILocation(line: 134, column: 5, scope: !825)
!835 = !DILocalVariable(name: "expected", scope: !836, file: !3, line: 135, type: !195)
!836 = distinct !DILexicalBlock(scope: !830, file: !3, line: 134, column: 58)
!837 = !DILocation(line: 135, column: 11, scope: !836)
!838 = !DILocation(line: 135, column: 23, scope: !836)
!839 = !DILocation(line: 135, column: 36, scope: !836)
!840 = !DILocation(line: 135, column: 43, scope: !836)
!841 = !DILocation(line: 135, column: 22, scope: !836)
!842 = !DILocation(line: 135, column: 54, scope: !836)
!843 = !DILocation(line: 135, column: 67, scope: !836)
!844 = !DILocation(line: 136, column: 11, scope: !845)
!845 = distinct !DILexicalBlock(scope: !836, file: !3, line: 136, column: 11)
!846 = !DILocation(line: 136, column: 18, scope: !845)
!847 = !DILocation(line: 136, column: 24, scope: !845)
!848 = !DILocation(line: 136, column: 21, scope: !845)
!849 = !DILocation(line: 137, column: 2, scope: !845)
!850 = !DILocation(line: 138, column: 29, scope: !836)
!851 = !DILocation(line: 138, column: 36, scope: !836)
!852 = !DILocation(line: 138, column: 7, scope: !836)
!853 = !DILocation(line: 138, column: 20, scope: !836)
!854 = !DILocation(line: 138, column: 27, scope: !836)
!855 = !DILocation(line: 139, column: 5, scope: !836)
!856 = !DILocation(line: 134, column: 54, scope: !830)
!857 = !DILocation(line: 134, column: 5, scope: !830)
!858 = distinct !{!858, !834, !859, !675}
!859 = !DILocation(line: 139, column: 5, scope: !825)
!860 = !DILocation(line: 140, column: 3, scope: !808)
!861 = !DILocation(line: 129, column: 45, scope: !802)
!862 = !DILocation(line: 129, column: 3, scope: !802)
!863 = distinct !{!863, !806, !864, !675}
!864 = !DILocation(line: 140, column: 3, scope: !799)
!865 = !DILocation(line: 143, column: 7, scope: !866)
!866 = distinct !DILexicalBlock(scope: !719, file: !3, line: 143, column: 7)
!867 = !DILocation(line: 143, column: 14, scope: !866)
!868 = !DILocation(line: 143, column: 17, scope: !866)
!869 = !DILocation(line: 144, column: 9, scope: !870)
!870 = distinct !DILexicalBlock(scope: !871, file: !3, line: 144, column: 9)
!871 = distinct !DILexicalBlock(scope: !866, file: !3, line: 143, column: 23)
!872 = !DILocation(line: 145, column: 7, scope: !870)
!873 = !DILocation(line: 145, column: 16, scope: !870)
!874 = !DILocation(line: 145, column: 20, scope: !870)
!875 = !DILocation(line: 145, column: 31, scope: !870)
!876 = !DILocation(line: 147, column: 7, scope: !870)
!877 = !DILocation(line: 147, column: 16, scope: !870)
!878 = !DILocation(line: 147, column: 20, scope: !870)
!879 = !DILocation(line: 147, column: 31, scope: !870)
!880 = !DILocation(line: 148, column: 3, scope: !871)
!881 = !DILocation(line: 149, column: 9, scope: !882)
!882 = distinct !DILexicalBlock(scope: !883, file: !3, line: 149, column: 9)
!883 = distinct !DILexicalBlock(scope: !866, file: !3, line: 148, column: 10)
!884 = !DILocation(line: 150, column: 7, scope: !882)
!885 = !DILocation(line: 150, column: 16, scope: !882)
!886 = !DILocation(line: 150, column: 20, scope: !882)
!887 = !DILocation(line: 150, column: 31, scope: !882)
!888 = !DILocation(line: 152, column: 7, scope: !882)
!889 = !DILocation(line: 152, column: 16, scope: !882)
!890 = !DILocation(line: 152, column: 20, scope: !882)
!891 = !DILocation(line: 152, column: 31, scope: !882)
!892 = !DILocation(line: 155, column: 11, scope: !893)
!893 = distinct !DILexicalBlock(scope: !719, file: !3, line: 155, column: 3)
!894 = !DILocation(line: 155, column: 8, scope: !893)
!895 = !DILocation(line: 155, column: 16, scope: !896)
!896 = distinct !DILexicalBlock(scope: !893, file: !3, line: 155, column: 3)
!897 = !DILocation(line: 155, column: 21, scope: !896)
!898 = !DILocation(line: 155, column: 28, scope: !896)
!899 = !DILocation(line: 155, column: 19, scope: !896)
!900 = !DILocation(line: 155, column: 3, scope: !893)
!901 = !DILocation(line: 156, column: 15, scope: !902)
!902 = distinct !DILexicalBlock(scope: !896, file: !3, line: 155, column: 49)
!903 = !DILocation(line: 156, column: 22, scope: !902)
!904 = !DILocation(line: 156, column: 36, scope: !902)
!905 = !DILocation(line: 156, column: 13, scope: !902)
!906 = !DILocation(line: 160, column: 9, scope: !907)
!907 = distinct !DILexicalBlock(scope: !902, file: !3, line: 160, column: 9)
!908 = !DILocation(line: 161, column: 11, scope: !909)
!909 = distinct !DILexicalBlock(scope: !910, file: !3, line: 161, column: 11)
!910 = distinct !DILexicalBlock(scope: !907, file: !3, line: 160, column: 21)
!911 = !DILocation(line: 161, column: 18, scope: !909)
!912 = !DILocation(line: 161, column: 21, scope: !909)
!913 = !DILocation(line: 162, column: 8, scope: !914)
!914 = distinct !DILexicalBlock(scope: !909, file: !3, line: 161, column: 27)
!915 = !DILocation(line: 162, column: 17, scope: !914)
!916 = !DILocation(line: 162, column: 6, scope: !914)
!917 = !DILocation(line: 163, column: 6, scope: !918)
!918 = distinct !DILexicalBlock(scope: !914, file: !3, line: 163, column: 6)
!919 = !DILocation(line: 163, column: 10, scope: !918)
!920 = !DILocation(line: 163, column: 14, scope: !918)
!921 = !DILocation(line: 163, column: 17, scope: !918)
!922 = !DILocation(line: 163, column: 21, scope: !918)
!923 = !DILocation(line: 163, column: 38, scope: !918)
!924 = !DILocation(line: 164, column: 6, scope: !918)
!925 = !DILocation(line: 164, column: 13, scope: !918)
!926 = !DILocation(line: 164, column: 30, scope: !918)
!927 = !DILocation(line: 164, column: 35, scope: !918)
!928 = !DILocation(line: 165, column: 4, scope: !918)
!929 = !DILocation(line: 166, column: 26, scope: !914)
!930 = !DILocation(line: 166, column: 33, scope: !914)
!931 = !DILocation(line: 166, column: 40, scope: !914)
!932 = !DILocation(line: 166, column: 57, scope: !914)
!933 = !DILocation(line: 167, column: 7, scope: !914)
!934 = !DILocation(line: 167, column: 16, scope: !914)
!935 = !DILocation(line: 167, column: 29, scope: !914)
!936 = !DILocation(line: 166, column: 2, scope: !914)
!937 = !DILocation(line: 168, column: 7, scope: !914)
!938 = !DILocation(line: 169, column: 5, scope: !910)
!939 = !DILocation(line: 170, column: 13, scope: !940)
!940 = distinct !DILexicalBlock(scope: !907, file: !3, line: 169, column: 12)
!941 = !DILocation(line: 170, column: 22, scope: !940)
!942 = !DILocation(line: 170, column: 11, scope: !940)
!943 = !DILocation(line: 171, column: 11, scope: !944)
!944 = distinct !DILexicalBlock(scope: !940, file: !3, line: 171, column: 11)
!945 = !DILocation(line: 171, column: 15, scope: !944)
!946 = !DILocation(line: 171, column: 19, scope: !944)
!947 = !DILocation(line: 171, column: 22, scope: !944)
!948 = !DILocation(line: 171, column: 26, scope: !944)
!949 = !DILocation(line: 171, column: 43, scope: !944)
!950 = !DILocation(line: 172, column: 11, scope: !944)
!951 = !DILocation(line: 172, column: 18, scope: !944)
!952 = !DILocation(line: 172, column: 35, scope: !944)
!953 = !DILocation(line: 172, column: 40, scope: !944)
!954 = !DILocation(line: 173, column: 9, scope: !944)
!955 = !DILocation(line: 174, column: 31, scope: !940)
!956 = !DILocation(line: 174, column: 38, scope: !940)
!957 = !DILocation(line: 174, column: 45, scope: !940)
!958 = !DILocation(line: 174, column: 62, scope: !940)
!959 = !DILocation(line: 175, column: 12, scope: !940)
!960 = !DILocation(line: 175, column: 21, scope: !940)
!961 = !DILocation(line: 175, column: 34, scope: !940)
!962 = !DILocation(line: 174, column: 7, scope: !940)
!963 = !DILocation(line: 177, column: 33, scope: !940)
!964 = !DILocation(line: 177, column: 42, scope: !940)
!965 = !DILocation(line: 177, column: 55, scope: !940)
!966 = !DILocation(line: 177, column: 7, scope: !940)
!967 = !DILocation(line: 177, column: 16, scope: !940)
!968 = !DILocation(line: 177, column: 31, scope: !940)
!969 = !DILocation(line: 180, column: 5, scope: !902)
!970 = !DILocation(line: 180, column: 14, scope: !902)
!971 = !DILocation(line: 180, column: 20, scope: !902)
!972 = !DILocation(line: 180, column: 32, scope: !902)
!973 = !DILocation(line: 180, column: 36, scope: !902)
!974 = !DILocation(line: 181, column: 3, scope: !902)
!975 = !DILocation(line: 155, column: 45, scope: !896)
!976 = !DILocation(line: 155, column: 3, scope: !896)
!977 = distinct !{!977, !900, !978, !675}
!978 = !DILocation(line: 181, column: 3, scope: !893)
!979 = !DILocation(line: 184, column: 3, scope: !719)
!980 = !DILocation(line: 184, column: 12, scope: !719)
!981 = !DILocation(line: 184, column: 21, scope: !719)
!982 = !DILocation(line: 184, column: 31, scope: !719)
!983 = !DILocation(line: 185, column: 3, scope: !719)
!984 = !DILocation(line: 185, column: 12, scope: !719)
!985 = !DILocation(line: 185, column: 21, scope: !719)
!986 = !DILocation(line: 185, column: 32, scope: !719)
!987 = !DILocation(line: 186, column: 3, scope: !719)
!988 = !DILocation(line: 186, column: 12, scope: !719)
!989 = !DILocation(line: 186, column: 21, scope: !719)
!990 = !DILocation(line: 186, column: 33, scope: !719)
!991 = !DILocation(line: 189, column: 3, scope: !719)
!992 = !DILocation(line: 189, column: 12, scope: !719)
!993 = !DILocation(line: 189, column: 18, scope: !719)
!994 = !DILocation(line: 189, column: 25, scope: !719)
!995 = !DILocation(line: 192, column: 29, scope: !719)
!996 = !DILocation(line: 192, column: 36, scope: !719)
!997 = !DILocation(line: 192, column: 3, scope: !719)
!998 = !DILocation(line: 192, column: 12, scope: !719)
!999 = !DILocation(line: 192, column: 27, scope: !719)
!1000 = !DILocation(line: 193, column: 1, scope: !719)
!1001 = distinct !DISubprogram(name: "decode_mcu_DC_first", scope: !3, file: !3, line: 281, type: !579, scopeLine: 282, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !632)
!1002 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1001, file: !3, line: 281, type: !169)
!1003 = !DILocation(line: 281, column: 39, scope: !1001)
!1004 = !DILocalVariable(name: "MCU_data", arg: 2, scope: !1001, file: !3, line: 281, type: !217)
!1005 = !DILocation(line: 281, column: 57, scope: !1001)
!1006 = !DILocalVariable(name: "entropy", scope: !1001, file: !3, line: 283, type: !157)
!1007 = !DILocation(line: 283, column: 21, scope: !1001)
!1008 = !DILocation(line: 283, column: 51, scope: !1001)
!1009 = !DILocation(line: 283, column: 58, scope: !1001)
!1010 = !DILocalVariable(name: "Al", scope: !1001, file: !3, line: 284, type: !195)
!1011 = !DILocation(line: 284, column: 7, scope: !1001)
!1012 = !DILocation(line: 284, column: 12, scope: !1001)
!1013 = !DILocation(line: 284, column: 19, scope: !1001)
!1014 = !DILocalVariable(name: "s", scope: !1001, file: !3, line: 285, type: !195)
!1015 = !DILocation(line: 285, column: 16, scope: !1001)
!1016 = !DILocalVariable(name: "r", scope: !1001, file: !3, line: 285, type: !195)
!1017 = !DILocation(line: 285, column: 19, scope: !1001)
!1018 = !DILocalVariable(name: "blkn", scope: !1001, file: !3, line: 286, type: !195)
!1019 = !DILocation(line: 286, column: 7, scope: !1001)
!1020 = !DILocalVariable(name: "ci", scope: !1001, file: !3, line: 286, type: !195)
!1021 = !DILocation(line: 286, column: 13, scope: !1001)
!1022 = !DILocalVariable(name: "block", scope: !1001, file: !3, line: 287, type: !218)
!1023 = !DILocation(line: 287, column: 13, scope: !1001)
!1024 = !DILocalVariable(name: "get_buffer", scope: !1001, file: !3, line: 288, type: !587)
!1025 = !DILocation(line: 288, column: 3, scope: !1001)
!1026 = !DILocalVariable(name: "bits_left", scope: !1001, file: !3, line: 288, type: !195)
!1027 = !DILocalVariable(name: "br_state", scope: !1001, file: !3, line: 288, type: !1028)
!1028 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitread_working_state", file: !583, line: 97, baseType: !1029)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !583, line: 84, size: 448, elements: !1030)
!1030 = !{!1031, !1032, !1033, !1034, !1035, !1036, !1037}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "next_input_byte", scope: !1029, file: !583, line: 86, baseType: !309, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_in_buffer", scope: !1029, file: !583, line: 87, baseType: !196, size: 64, offset: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "unread_marker", scope: !1029, file: !583, line: 88, baseType: !195, size: 32, offset: 128)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "get_buffer", scope: !1029, file: !583, line: 92, baseType: !587, size: 64, offset: 192)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "bits_left", scope: !1029, file: !583, line: 93, baseType: !195, size: 32, offset: 256)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "cinfo", scope: !1029, file: !583, line: 95, baseType: !169, size: 64, offset: 320)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "printed_eod_ptr", scope: !1029, file: !583, line: 96, baseType: !1038, size: 64, offset: 384)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!1039 = !DILocalVariable(name: "state", scope: !1001, file: !3, line: 289, type: !592)
!1040 = !DILocation(line: 289, column: 17, scope: !1001)
!1041 = !DILocalVariable(name: "tbl", scope: !1001, file: !3, line: 290, type: !601)
!1042 = !DILocation(line: 290, column: 19, scope: !1001)
!1043 = !DILocalVariable(name: "compptr", scope: !1001, file: !3, line: 291, type: !398)
!1044 = !DILocation(line: 291, column: 25, scope: !1001)
!1045 = !DILocation(line: 294, column: 7, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 294, column: 7)
!1047 = !DILocation(line: 294, column: 14, scope: !1046)
!1048 = !DILocation(line: 295, column: 9, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 295, column: 9)
!1050 = distinct !DILexicalBlock(scope: !1046, file: !3, line: 294, column: 32)
!1051 = !DILocation(line: 295, column: 18, scope: !1049)
!1052 = !DILocation(line: 295, column: 33, scope: !1049)
!1053 = !DILocation(line: 296, column: 29, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 296, column: 11)
!1055 = !DILocation(line: 296, column: 13, scope: !1054)
!1056 = !DILocation(line: 296, column: 11, scope: !1054)
!1057 = !DILocation(line: 297, column: 2, scope: !1054)
!1058 = !DILocation(line: 296, column: 34, scope: !1054)
!1059 = !DILocation(line: 298, column: 3, scope: !1050)
!1060 = !DILocation(line: 301, column: 3, scope: !1001)
!1061 = !DILocation(line: 302, column: 3, scope: !1001)
!1062 = !DILocation(line: 306, column: 13, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 306, column: 3)
!1064 = !DILocation(line: 306, column: 8, scope: !1063)
!1065 = !DILocation(line: 306, column: 18, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1063, file: !3, line: 306, column: 3)
!1067 = !DILocation(line: 306, column: 25, scope: !1066)
!1068 = !DILocation(line: 306, column: 32, scope: !1066)
!1069 = !DILocation(line: 306, column: 23, scope: !1066)
!1070 = !DILocation(line: 306, column: 3, scope: !1063)
!1071 = !DILocation(line: 307, column: 13, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 306, column: 55)
!1073 = !DILocation(line: 307, column: 22, scope: !1072)
!1074 = !DILocation(line: 307, column: 11, scope: !1072)
!1075 = !DILocation(line: 308, column: 10, scope: !1072)
!1076 = !DILocation(line: 308, column: 17, scope: !1072)
!1077 = !DILocation(line: 308, column: 32, scope: !1072)
!1078 = !DILocation(line: 308, column: 8, scope: !1072)
!1079 = !DILocation(line: 309, column: 15, scope: !1072)
!1080 = !DILocation(line: 309, column: 22, scope: !1072)
!1081 = !DILocation(line: 309, column: 36, scope: !1072)
!1082 = !DILocation(line: 309, column: 13, scope: !1072)
!1083 = !DILocation(line: 310, column: 11, scope: !1072)
!1084 = !DILocation(line: 310, column: 20, scope: !1072)
!1085 = !DILocation(line: 310, column: 33, scope: !1072)
!1086 = !DILocation(line: 310, column: 42, scope: !1072)
!1087 = !DILocation(line: 310, column: 9, scope: !1072)
!1088 = !DILocalVariable(name: "nb", scope: !1089, file: !3, line: 315, type: !195)
!1089 = distinct !DILexicalBlock(scope: !1072, file: !3, line: 315, column: 5)
!1090 = !DILocation(line: 315, column: 5, scope: !1089)
!1091 = !DILocalVariable(name: "look", scope: !1089, file: !3, line: 315, type: !195)
!1092 = !DILocation(line: 315, column: 5, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1089, file: !3, line: 315, column: 5)
!1094 = !DILocation(line: 315, column: 5, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 315, column: 5)
!1096 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 315, column: 5)
!1097 = !DILocation(line: 315, column: 5, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 315, column: 5)
!1099 = !DILocation(line: 315, column: 5, scope: !1096)
!1100 = !DILocation(line: 315, column: 5, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 315, column: 5)
!1102 = !DILocation(line: 315, column: 5, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 315, column: 5)
!1104 = !DILocation(line: 315, column: 5, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1089, file: !3, line: 315, column: 5)
!1106 = !DILocation(line: 315, column: 5, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 315, column: 5)
!1108 = !DILocation(line: 315, column: 5, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 315, column: 5)
!1110 = !DILabel(scope: !1109, name: "label1", file: !3, line: 315)
!1111 = !DILocation(line: 315, column: 5, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 315, column: 5)
!1113 = !DILocation(line: 315, column: 5, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 315, column: 5)
!1115 = !DILocation(line: 316, column: 9, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1072, file: !3, line: 316, column: 9)
!1117 = !DILocation(line: 317, column: 7, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 317, column: 7)
!1119 = distinct !DILexicalBlock(scope: !1120, file: !3, line: 317, column: 7)
!1120 = distinct !DILexicalBlock(scope: !1116, file: !3, line: 316, column: 12)
!1121 = !DILocation(line: 317, column: 7, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 317, column: 7)
!1123 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 317, column: 7)
!1124 = !DILocation(line: 317, column: 7, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 317, column: 7)
!1126 = !DILocation(line: 317, column: 7, scope: !1123)
!1127 = !DILocation(line: 318, column: 11, scope: !1120)
!1128 = !DILocation(line: 318, column: 9, scope: !1120)
!1129 = !DILocation(line: 319, column: 11, scope: !1120)
!1130 = !DILocation(line: 319, column: 9, scope: !1120)
!1131 = !DILocation(line: 320, column: 5, scope: !1120)
!1132 = !DILocation(line: 323, column: 16, scope: !1072)
!1133 = !DILocation(line: 323, column: 28, scope: !1072)
!1134 = !DILocation(line: 323, column: 10, scope: !1072)
!1135 = !DILocation(line: 323, column: 7, scope: !1072)
!1136 = !DILocation(line: 324, column: 29, scope: !1072)
!1137 = !DILocation(line: 324, column: 11, scope: !1072)
!1138 = !DILocation(line: 324, column: 23, scope: !1072)
!1139 = !DILocation(line: 324, column: 5, scope: !1072)
!1140 = !DILocation(line: 324, column: 27, scope: !1072)
!1141 = !DILocation(line: 326, column: 28, scope: !1072)
!1142 = !DILocation(line: 326, column: 33, scope: !1072)
!1143 = !DILocation(line: 326, column: 30, scope: !1072)
!1144 = !DILocation(line: 326, column: 19, scope: !1072)
!1145 = !DILocation(line: 326, column: 7, scope: !1072)
!1146 = !DILocation(line: 326, column: 5, scope: !1072)
!1147 = !DILocation(line: 326, column: 17, scope: !1072)
!1148 = !DILocation(line: 327, column: 3, scope: !1072)
!1149 = !DILocation(line: 306, column: 51, scope: !1066)
!1150 = !DILocation(line: 306, column: 3, scope: !1066)
!1151 = distinct !{!1151, !1070, !1152, !675}
!1152 = !DILocation(line: 327, column: 3, scope: !1063)
!1153 = !DILocation(line: 330, column: 3, scope: !1001)
!1154 = !DILocation(line: 331, column: 3, scope: !1001)
!1155 = !DILocation(line: 334, column: 3, scope: !1001)
!1156 = !DILocation(line: 334, column: 12, scope: !1001)
!1157 = !DILocation(line: 334, column: 26, scope: !1001)
!1158 = !DILocation(line: 336, column: 3, scope: !1001)
!1159 = !DILocation(line: 337, column: 1, scope: !1001)
!1160 = distinct !DISubprogram(name: "decode_mcu_AC_first", scope: !3, file: !3, line: 346, type: !579, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !632)
!1161 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1160, file: !3, line: 346, type: !169)
!1162 = !DILocation(line: 346, column: 39, scope: !1160)
!1163 = !DILocalVariable(name: "MCU_data", arg: 2, scope: !1160, file: !3, line: 346, type: !217)
!1164 = !DILocation(line: 346, column: 57, scope: !1160)
!1165 = !DILocalVariable(name: "entropy", scope: !1160, file: !3, line: 348, type: !157)
!1166 = !DILocation(line: 348, column: 21, scope: !1160)
!1167 = !DILocation(line: 348, column: 51, scope: !1160)
!1168 = !DILocation(line: 348, column: 58, scope: !1160)
!1169 = !DILocalVariable(name: "Se", scope: !1160, file: !3, line: 349, type: !195)
!1170 = !DILocation(line: 349, column: 7, scope: !1160)
!1171 = !DILocation(line: 349, column: 12, scope: !1160)
!1172 = !DILocation(line: 349, column: 19, scope: !1160)
!1173 = !DILocalVariable(name: "Al", scope: !1160, file: !3, line: 350, type: !195)
!1174 = !DILocation(line: 350, column: 7, scope: !1160)
!1175 = !DILocation(line: 350, column: 12, scope: !1160)
!1176 = !DILocation(line: 350, column: 19, scope: !1160)
!1177 = !DILocalVariable(name: "s", scope: !1160, file: !3, line: 351, type: !195)
!1178 = !DILocation(line: 351, column: 16, scope: !1160)
!1179 = !DILocalVariable(name: "k", scope: !1160, file: !3, line: 351, type: !195)
!1180 = !DILocation(line: 351, column: 19, scope: !1160)
!1181 = !DILocalVariable(name: "r", scope: !1160, file: !3, line: 351, type: !195)
!1182 = !DILocation(line: 351, column: 22, scope: !1160)
!1183 = !DILocalVariable(name: "EOBRUN", scope: !1160, file: !3, line: 352, type: !7)
!1184 = !DILocation(line: 352, column: 16, scope: !1160)
!1185 = !DILocalVariable(name: "block", scope: !1160, file: !3, line: 353, type: !218)
!1186 = !DILocation(line: 353, column: 13, scope: !1160)
!1187 = !DILocalVariable(name: "get_buffer", scope: !1160, file: !3, line: 354, type: !587)
!1188 = !DILocation(line: 354, column: 3, scope: !1160)
!1189 = !DILocalVariable(name: "bits_left", scope: !1160, file: !3, line: 354, type: !195)
!1190 = !DILocalVariable(name: "br_state", scope: !1160, file: !3, line: 354, type: !1028)
!1191 = !DILocalVariable(name: "tbl", scope: !1160, file: !3, line: 355, type: !601)
!1192 = !DILocation(line: 355, column: 19, scope: !1160)
!1193 = !DILocation(line: 358, column: 7, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1160, file: !3, line: 358, column: 7)
!1195 = !DILocation(line: 358, column: 14, scope: !1194)
!1196 = !DILocation(line: 359, column: 9, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 359, column: 9)
!1198 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 358, column: 32)
!1199 = !DILocation(line: 359, column: 18, scope: !1197)
!1200 = !DILocation(line: 359, column: 33, scope: !1197)
!1201 = !DILocation(line: 360, column: 29, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 360, column: 11)
!1203 = !DILocation(line: 360, column: 13, scope: !1202)
!1204 = !DILocation(line: 360, column: 11, scope: !1202)
!1205 = !DILocation(line: 361, column: 2, scope: !1202)
!1206 = !DILocation(line: 360, column: 34, scope: !1202)
!1207 = !DILocation(line: 362, column: 3, scope: !1198)
!1208 = !DILocation(line: 367, column: 12, scope: !1160)
!1209 = !DILocation(line: 367, column: 21, scope: !1160)
!1210 = !DILocation(line: 367, column: 27, scope: !1160)
!1211 = !DILocation(line: 367, column: 10, scope: !1160)
!1212 = !DILocation(line: 371, column: 7, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1160, file: !3, line: 371, column: 7)
!1214 = !DILocation(line: 371, column: 14, scope: !1213)
!1215 = !DILocation(line: 372, column: 11, scope: !1213)
!1216 = !DILocation(line: 372, column: 5, scope: !1213)
!1217 = !DILocation(line: 374, column: 5, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 373, column: 8)
!1219 = !DILocation(line: 375, column: 13, scope: !1218)
!1220 = !DILocation(line: 375, column: 11, scope: !1218)
!1221 = !DILocation(line: 376, column: 11, scope: !1218)
!1222 = !DILocation(line: 376, column: 20, scope: !1218)
!1223 = !DILocation(line: 376, column: 9, scope: !1218)
!1224 = !DILocation(line: 378, column: 14, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 378, column: 5)
!1226 = !DILocation(line: 378, column: 21, scope: !1225)
!1227 = !DILocation(line: 378, column: 12, scope: !1225)
!1228 = !DILocation(line: 378, column: 10, scope: !1225)
!1229 = !DILocation(line: 378, column: 25, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 378, column: 5)
!1231 = !DILocation(line: 378, column: 30, scope: !1230)
!1232 = !DILocation(line: 378, column: 27, scope: !1230)
!1233 = !DILocation(line: 378, column: 5, scope: !1225)
!1234 = !DILocalVariable(name: "nb", scope: !1235, file: !3, line: 379, type: !195)
!1235 = distinct !DILexicalBlock(scope: !1236, file: !3, line: 379, column: 7)
!1236 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 378, column: 39)
!1237 = !DILocation(line: 379, column: 7, scope: !1235)
!1238 = !DILocalVariable(name: "look", scope: !1235, file: !3, line: 379, type: !195)
!1239 = !DILocation(line: 379, column: 7, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 379, column: 7)
!1241 = !DILocation(line: 379, column: 7, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 379, column: 7)
!1243 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 379, column: 7)
!1244 = !DILocation(line: 379, column: 7, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 379, column: 7)
!1246 = !DILocation(line: 379, column: 7, scope: !1243)
!1247 = !DILocation(line: 379, column: 7, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 379, column: 7)
!1249 = !DILocation(line: 379, column: 7, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 379, column: 7)
!1251 = !DILocation(line: 379, column: 7, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 379, column: 7)
!1253 = !DILocation(line: 379, column: 7, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 379, column: 7)
!1255 = !DILocation(line: 379, column: 7, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 379, column: 7)
!1257 = !DILabel(scope: !1256, name: "label2", file: !3, line: 379)
!1258 = !DILocation(line: 379, column: 7, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 379, column: 7)
!1260 = !DILocation(line: 379, column: 7, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1259, file: !3, line: 379, column: 7)
!1262 = !DILocation(line: 380, column: 11, scope: !1236)
!1263 = !DILocation(line: 380, column: 13, scope: !1236)
!1264 = !DILocation(line: 380, column: 9, scope: !1236)
!1265 = !DILocation(line: 381, column: 9, scope: !1236)
!1266 = !DILocation(line: 382, column: 11, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1236, file: !3, line: 382, column: 11)
!1268 = !DILocation(line: 383, column: 14, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 382, column: 14)
!1270 = !DILocation(line: 383, column: 11, scope: !1269)
!1271 = !DILocation(line: 384, column: 9, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 384, column: 9)
!1273 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 384, column: 9)
!1274 = !DILocation(line: 384, column: 9, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 384, column: 9)
!1276 = distinct !DILexicalBlock(scope: !1272, file: !3, line: 384, column: 9)
!1277 = !DILocation(line: 384, column: 9, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 384, column: 9)
!1279 = !DILocation(line: 384, column: 9, scope: !1276)
!1280 = !DILocation(line: 385, column: 13, scope: !1269)
!1281 = !DILocation(line: 385, column: 11, scope: !1269)
!1282 = !DILocation(line: 386, column: 13, scope: !1269)
!1283 = !DILocation(line: 386, column: 11, scope: !1269)
!1284 = !DILocation(line: 388, column: 52, scope: !1269)
!1285 = !DILocation(line: 388, column: 57, scope: !1269)
!1286 = !DILocation(line: 388, column: 54, scope: !1269)
!1287 = !DILocation(line: 388, column: 43, scope: !1269)
!1288 = !DILocation(line: 388, column: 11, scope: !1269)
!1289 = !DILocation(line: 388, column: 37, scope: !1269)
!1290 = !DILocation(line: 388, column: 18, scope: !1269)
!1291 = !DILocation(line: 388, column: 9, scope: !1269)
!1292 = !DILocation(line: 388, column: 41, scope: !1269)
!1293 = !DILocation(line: 389, column: 7, scope: !1269)
!1294 = !DILocation(line: 390, column: 13, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 390, column: 13)
!1296 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 389, column: 14)
!1297 = !DILocation(line: 390, column: 15, scope: !1295)
!1298 = !DILocation(line: 391, column: 13, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1295, file: !3, line: 390, column: 22)
!1300 = !DILocation(line: 392, column: 9, scope: !1299)
!1301 = !DILocation(line: 393, column: 25, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1295, file: !3, line: 392, column: 16)
!1303 = !DILocation(line: 393, column: 22, scope: !1302)
!1304 = !DILocation(line: 393, column: 18, scope: !1302)
!1305 = !DILocation(line: 394, column: 15, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1302, file: !3, line: 394, column: 15)
!1307 = !DILocation(line: 395, column: 6, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 395, column: 6)
!1309 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 395, column: 6)
!1310 = distinct !DILexicalBlock(scope: !1306, file: !3, line: 394, column: 18)
!1311 = !DILocation(line: 395, column: 6, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 395, column: 6)
!1313 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 395, column: 6)
!1314 = !DILocation(line: 395, column: 6, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1312, file: !3, line: 395, column: 6)
!1316 = !DILocation(line: 395, column: 6, scope: !1313)
!1317 = !DILocation(line: 396, column: 17, scope: !1310)
!1318 = !DILocation(line: 396, column: 15, scope: !1310)
!1319 = !DILocation(line: 397, column: 23, scope: !1310)
!1320 = !DILocation(line: 397, column: 20, scope: !1310)
!1321 = !DILocation(line: 398, column: 11, scope: !1310)
!1322 = !DILocation(line: 399, column: 10, scope: !1302)
!1323 = !DILocation(line: 400, column: 4, scope: !1302)
!1324 = !DILocation(line: 403, column: 5, scope: !1236)
!1325 = !DILocation(line: 378, column: 35, scope: !1230)
!1326 = !DILocation(line: 378, column: 5, scope: !1230)
!1327 = distinct !{!1327, !1233, !1328, !675}
!1328 = !DILocation(line: 403, column: 5, scope: !1225)
!1329 = !DILocation(line: 405, column: 5, scope: !1218)
!1330 = !DILocation(line: 409, column: 27, scope: !1160)
!1331 = !DILocation(line: 409, column: 3, scope: !1160)
!1332 = !DILocation(line: 409, column: 12, scope: !1160)
!1333 = !DILocation(line: 409, column: 18, scope: !1160)
!1334 = !DILocation(line: 409, column: 25, scope: !1160)
!1335 = !DILocation(line: 412, column: 3, scope: !1160)
!1336 = !DILocation(line: 412, column: 12, scope: !1160)
!1337 = !DILocation(line: 412, column: 26, scope: !1160)
!1338 = !DILocation(line: 414, column: 3, scope: !1160)
!1339 = !DILocation(line: 415, column: 1, scope: !1160)
!1340 = distinct !DISubprogram(name: "decode_mcu_DC_refine", scope: !3, file: !3, line: 425, type: !579, scopeLine: 426, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !632)
!1341 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1340, file: !3, line: 425, type: !169)
!1342 = !DILocation(line: 425, column: 40, scope: !1340)
!1343 = !DILocalVariable(name: "MCU_data", arg: 2, scope: !1340, file: !3, line: 425, type: !217)
!1344 = !DILocation(line: 425, column: 58, scope: !1340)
!1345 = !DILocalVariable(name: "entropy", scope: !1340, file: !3, line: 427, type: !157)
!1346 = !DILocation(line: 427, column: 21, scope: !1340)
!1347 = !DILocation(line: 427, column: 51, scope: !1340)
!1348 = !DILocation(line: 427, column: 58, scope: !1340)
!1349 = !DILocalVariable(name: "p1", scope: !1340, file: !3, line: 428, type: !195)
!1350 = !DILocation(line: 428, column: 7, scope: !1340)
!1351 = !DILocation(line: 428, column: 17, scope: !1340)
!1352 = !DILocation(line: 428, column: 24, scope: !1340)
!1353 = !DILocation(line: 428, column: 14, scope: !1340)
!1354 = !DILocalVariable(name: "blkn", scope: !1340, file: !3, line: 429, type: !195)
!1355 = !DILocation(line: 429, column: 7, scope: !1340)
!1356 = !DILocalVariable(name: "block", scope: !1340, file: !3, line: 430, type: !218)
!1357 = !DILocation(line: 430, column: 13, scope: !1340)
!1358 = !DILocalVariable(name: "get_buffer", scope: !1340, file: !3, line: 431, type: !587)
!1359 = !DILocation(line: 431, column: 3, scope: !1340)
!1360 = !DILocalVariable(name: "bits_left", scope: !1340, file: !3, line: 431, type: !195)
!1361 = !DILocalVariable(name: "br_state", scope: !1340, file: !3, line: 431, type: !1028)
!1362 = !DILocation(line: 434, column: 7, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1340, file: !3, line: 434, column: 7)
!1364 = !DILocation(line: 434, column: 14, scope: !1363)
!1365 = !DILocation(line: 435, column: 9, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1367, file: !3, line: 435, column: 9)
!1367 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 434, column: 32)
!1368 = !DILocation(line: 435, column: 18, scope: !1366)
!1369 = !DILocation(line: 435, column: 33, scope: !1366)
!1370 = !DILocation(line: 436, column: 29, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1366, file: !3, line: 436, column: 11)
!1372 = !DILocation(line: 436, column: 13, scope: !1371)
!1373 = !DILocation(line: 436, column: 11, scope: !1371)
!1374 = !DILocation(line: 437, column: 2, scope: !1371)
!1375 = !DILocation(line: 436, column: 34, scope: !1371)
!1376 = !DILocation(line: 438, column: 3, scope: !1367)
!1377 = !DILocation(line: 441, column: 3, scope: !1340)
!1378 = !DILocation(line: 445, column: 13, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1340, file: !3, line: 445, column: 3)
!1380 = !DILocation(line: 445, column: 8, scope: !1379)
!1381 = !DILocation(line: 445, column: 18, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 445, column: 3)
!1383 = !DILocation(line: 445, column: 25, scope: !1382)
!1384 = !DILocation(line: 445, column: 32, scope: !1382)
!1385 = !DILocation(line: 445, column: 23, scope: !1382)
!1386 = !DILocation(line: 445, column: 3, scope: !1379)
!1387 = !DILocation(line: 446, column: 13, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1382, file: !3, line: 445, column: 55)
!1389 = !DILocation(line: 446, column: 22, scope: !1388)
!1390 = !DILocation(line: 446, column: 11, scope: !1388)
!1391 = !DILocation(line: 449, column: 5, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1393, file: !3, line: 449, column: 5)
!1393 = distinct !DILexicalBlock(scope: !1388, file: !3, line: 449, column: 5)
!1394 = !DILocation(line: 449, column: 5, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1396, file: !3, line: 449, column: 5)
!1396 = distinct !DILexicalBlock(scope: !1392, file: !3, line: 449, column: 5)
!1397 = !DILocation(line: 449, column: 5, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 449, column: 5)
!1399 = !DILocation(line: 449, column: 5, scope: !1396)
!1400 = !DILocation(line: 450, column: 9, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1388, file: !3, line: 450, column: 9)
!1402 = !DILocation(line: 451, column: 22, scope: !1401)
!1403 = !DILocation(line: 451, column: 9, scope: !1401)
!1404 = !DILocation(line: 451, column: 7, scope: !1401)
!1405 = !DILocation(line: 451, column: 19, scope: !1401)
!1406 = !DILocation(line: 453, column: 3, scope: !1388)
!1407 = !DILocation(line: 445, column: 51, scope: !1382)
!1408 = !DILocation(line: 445, column: 3, scope: !1382)
!1409 = distinct !{!1409, !1386, !1410, !675}
!1410 = !DILocation(line: 453, column: 3, scope: !1379)
!1411 = !DILocation(line: 456, column: 3, scope: !1340)
!1412 = !DILocation(line: 459, column: 3, scope: !1340)
!1413 = !DILocation(line: 459, column: 12, scope: !1340)
!1414 = !DILocation(line: 459, column: 26, scope: !1340)
!1415 = !DILocation(line: 461, column: 3, scope: !1340)
!1416 = !DILocation(line: 462, column: 1, scope: !1340)
!1417 = distinct !DISubprogram(name: "decode_mcu_AC_refine", scope: !3, file: !3, line: 470, type: !579, scopeLine: 471, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !632)
!1418 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1417, file: !3, line: 470, type: !169)
!1419 = !DILocation(line: 470, column: 40, scope: !1417)
!1420 = !DILocalVariable(name: "MCU_data", arg: 2, scope: !1417, file: !3, line: 470, type: !217)
!1421 = !DILocation(line: 470, column: 58, scope: !1417)
!1422 = !DILocalVariable(name: "entropy", scope: !1417, file: !3, line: 472, type: !157)
!1423 = !DILocation(line: 472, column: 21, scope: !1417)
!1424 = !DILocation(line: 472, column: 51, scope: !1417)
!1425 = !DILocation(line: 472, column: 58, scope: !1417)
!1426 = !DILocalVariable(name: "Se", scope: !1417, file: !3, line: 473, type: !195)
!1427 = !DILocation(line: 473, column: 7, scope: !1417)
!1428 = !DILocation(line: 473, column: 12, scope: !1417)
!1429 = !DILocation(line: 473, column: 19, scope: !1417)
!1430 = !DILocalVariable(name: "p1", scope: !1417, file: !3, line: 474, type: !195)
!1431 = !DILocation(line: 474, column: 7, scope: !1417)
!1432 = !DILocation(line: 474, column: 17, scope: !1417)
!1433 = !DILocation(line: 474, column: 24, scope: !1417)
!1434 = !DILocation(line: 474, column: 14, scope: !1417)
!1435 = !DILocalVariable(name: "m1", scope: !1417, file: !3, line: 475, type: !195)
!1436 = !DILocation(line: 475, column: 7, scope: !1417)
!1437 = !DILocation(line: 475, column: 20, scope: !1417)
!1438 = !DILocation(line: 475, column: 27, scope: !1417)
!1439 = !DILocation(line: 475, column: 17, scope: !1417)
!1440 = !DILocalVariable(name: "s", scope: !1417, file: !3, line: 476, type: !195)
!1441 = !DILocation(line: 476, column: 16, scope: !1417)
!1442 = !DILocalVariable(name: "k", scope: !1417, file: !3, line: 476, type: !195)
!1443 = !DILocation(line: 476, column: 19, scope: !1417)
!1444 = !DILocalVariable(name: "r", scope: !1417, file: !3, line: 476, type: !195)
!1445 = !DILocation(line: 476, column: 22, scope: !1417)
!1446 = !DILocalVariable(name: "EOBRUN", scope: !1417, file: !3, line: 477, type: !7)
!1447 = !DILocation(line: 477, column: 16, scope: !1417)
!1448 = !DILocalVariable(name: "block", scope: !1417, file: !3, line: 478, type: !218)
!1449 = !DILocation(line: 478, column: 13, scope: !1417)
!1450 = !DILocalVariable(name: "thiscoef", scope: !1417, file: !3, line: 479, type: !545)
!1451 = !DILocation(line: 479, column: 12, scope: !1417)
!1452 = !DILocalVariable(name: "get_buffer", scope: !1417, file: !3, line: 480, type: !587)
!1453 = !DILocation(line: 480, column: 3, scope: !1417)
!1454 = !DILocalVariable(name: "bits_left", scope: !1417, file: !3, line: 480, type: !195)
!1455 = !DILocalVariable(name: "br_state", scope: !1417, file: !3, line: 480, type: !1028)
!1456 = !DILocalVariable(name: "tbl", scope: !1417, file: !3, line: 481, type: !601)
!1457 = !DILocation(line: 481, column: 19, scope: !1417)
!1458 = !DILocalVariable(name: "num_newnz", scope: !1417, file: !3, line: 482, type: !195)
!1459 = !DILocation(line: 482, column: 7, scope: !1417)
!1460 = !DILocalVariable(name: "newnz_pos", scope: !1417, file: !3, line: 483, type: !365)
!1461 = !DILocation(line: 483, column: 7, scope: !1417)
!1462 = !DILocation(line: 486, column: 7, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1417, file: !3, line: 486, column: 7)
!1464 = !DILocation(line: 486, column: 14, scope: !1463)
!1465 = !DILocation(line: 487, column: 9, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1467, file: !3, line: 487, column: 9)
!1467 = distinct !DILexicalBlock(scope: !1463, file: !3, line: 486, column: 32)
!1468 = !DILocation(line: 487, column: 18, scope: !1466)
!1469 = !DILocation(line: 487, column: 33, scope: !1466)
!1470 = !DILocation(line: 488, column: 29, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1466, file: !3, line: 488, column: 11)
!1472 = !DILocation(line: 488, column: 13, scope: !1471)
!1473 = !DILocation(line: 488, column: 11, scope: !1471)
!1474 = !DILocation(line: 489, column: 2, scope: !1471)
!1475 = !DILocation(line: 488, column: 34, scope: !1471)
!1476 = !DILocation(line: 490, column: 3, scope: !1467)
!1477 = !DILocation(line: 493, column: 3, scope: !1417)
!1478 = !DILocation(line: 494, column: 12, scope: !1417)
!1479 = !DILocation(line: 494, column: 21, scope: !1417)
!1480 = !DILocation(line: 494, column: 27, scope: !1417)
!1481 = !DILocation(line: 494, column: 10, scope: !1417)
!1482 = !DILocation(line: 497, column: 11, scope: !1417)
!1483 = !DILocation(line: 497, column: 9, scope: !1417)
!1484 = !DILocation(line: 498, column: 9, scope: !1417)
!1485 = !DILocation(line: 498, column: 18, scope: !1417)
!1486 = !DILocation(line: 498, column: 7, scope: !1417)
!1487 = !DILocation(line: 506, column: 13, scope: !1417)
!1488 = !DILocation(line: 509, column: 7, scope: !1417)
!1489 = !DILocation(line: 509, column: 14, scope: !1417)
!1490 = !DILocation(line: 509, column: 5, scope: !1417)
!1491 = !DILocation(line: 511, column: 7, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1417, file: !3, line: 511, column: 7)
!1493 = !DILocation(line: 511, column: 14, scope: !1492)
!1494 = !DILocation(line: 512, column: 5, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1492, file: !3, line: 511, column: 20)
!1496 = !DILocation(line: 512, column: 12, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 512, column: 5)
!1498 = distinct !DILexicalBlock(scope: !1495, file: !3, line: 512, column: 5)
!1499 = !DILocation(line: 512, column: 17, scope: !1497)
!1500 = !DILocation(line: 512, column: 14, scope: !1497)
!1501 = !DILocation(line: 512, column: 5, scope: !1498)
!1502 = !DILocalVariable(name: "nb", scope: !1503, file: !3, line: 513, type: !195)
!1503 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 513, column: 7)
!1504 = distinct !DILexicalBlock(scope: !1497, file: !3, line: 512, column: 26)
!1505 = !DILocation(line: 513, column: 7, scope: !1503)
!1506 = !DILocalVariable(name: "look", scope: !1503, file: !3, line: 513, type: !195)
!1507 = !DILocation(line: 513, column: 7, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1503, file: !3, line: 513, column: 7)
!1509 = !DILocation(line: 513, column: 7, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !3, line: 513, column: 7)
!1511 = distinct !DILexicalBlock(scope: !1508, file: !3, line: 513, column: 7)
!1512 = !DILocation(line: 513, column: 7, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 513, column: 7)
!1514 = !DILocation(line: 513, column: 7, scope: !1511)
!1515 = !DILocation(line: 513, column: 7, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1511, file: !3, line: 513, column: 7)
!1517 = !DILocation(line: 513, column: 7, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1516, file: !3, line: 513, column: 7)
!1519 = !DILocation(line: 513, column: 7, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1503, file: !3, line: 513, column: 7)
!1521 = !DILocation(line: 513, column: 7, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1520, file: !3, line: 513, column: 7)
!1523 = !DILocation(line: 513, column: 7, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1520, file: !3, line: 513, column: 7)
!1525 = !DILabel(scope: !1524, name: "label3", file: !3, line: 513)
!1526 = !DILocation(line: 513, column: 7, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1524, file: !3, line: 513, column: 7)
!1528 = !DILocation(line: 513, column: 7, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1527, file: !3, line: 513, column: 7)
!1530 = !DILocation(line: 514, column: 11, scope: !1504)
!1531 = !DILocation(line: 514, column: 13, scope: !1504)
!1532 = !DILocation(line: 514, column: 9, scope: !1504)
!1533 = !DILocation(line: 515, column: 9, scope: !1504)
!1534 = !DILocation(line: 516, column: 11, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 516, column: 11)
!1536 = !DILocation(line: 517, column: 6, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1538, file: !3, line: 517, column: 6)
!1538 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 516, column: 14)
!1539 = !DILocation(line: 517, column: 8, scope: !1537)
!1540 = !DILocation(line: 518, column: 4, scope: !1537)
!1541 = !DILocation(line: 519, column: 9, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1543, file: !3, line: 519, column: 9)
!1543 = distinct !DILexicalBlock(scope: !1538, file: !3, line: 519, column: 9)
!1544 = !DILocation(line: 519, column: 9, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !3, line: 519, column: 9)
!1546 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 519, column: 9)
!1547 = !DILocation(line: 519, column: 9, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1545, file: !3, line: 519, column: 9)
!1549 = !DILocation(line: 519, column: 9, scope: !1546)
!1550 = !DILocation(line: 520, column: 13, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1538, file: !3, line: 520, column: 13)
!1552 = !DILocation(line: 521, column: 8, scope: !1551)
!1553 = !DILocation(line: 521, column: 6, scope: !1551)
!1554 = !DILocation(line: 521, column: 4, scope: !1551)
!1555 = !DILocation(line: 523, column: 8, scope: !1551)
!1556 = !DILocation(line: 523, column: 6, scope: !1551)
!1557 = !DILocation(line: 524, column: 7, scope: !1538)
!1558 = !DILocation(line: 525, column: 6, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1560, file: !3, line: 525, column: 6)
!1560 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 524, column: 14)
!1561 = !DILocation(line: 525, column: 8, scope: !1559)
!1562 = !DILocation(line: 526, column: 18, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1559, file: !3, line: 525, column: 15)
!1564 = !DILocation(line: 526, column: 15, scope: !1563)
!1565 = !DILocation(line: 526, column: 11, scope: !1563)
!1566 = !DILocation(line: 527, column: 8, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1563, file: !3, line: 527, column: 8)
!1568 = !DILocation(line: 528, column: 6, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1570, file: !3, line: 528, column: 6)
!1570 = distinct !DILexicalBlock(scope: !1571, file: !3, line: 528, column: 6)
!1571 = distinct !DILexicalBlock(scope: !1567, file: !3, line: 527, column: 11)
!1572 = !DILocation(line: 528, column: 6, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1574, file: !3, line: 528, column: 6)
!1574 = distinct !DILexicalBlock(scope: !1569, file: !3, line: 528, column: 6)
!1575 = !DILocation(line: 528, column: 6, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1573, file: !3, line: 528, column: 6)
!1577 = !DILocation(line: 528, column: 6, scope: !1574)
!1578 = !DILocation(line: 529, column: 10, scope: !1571)
!1579 = !DILocation(line: 529, column: 8, scope: !1571)
!1580 = !DILocation(line: 530, column: 16, scope: !1571)
!1581 = !DILocation(line: 530, column: 13, scope: !1571)
!1582 = !DILocation(line: 531, column: 4, scope: !1571)
!1583 = !DILocation(line: 532, column: 4, scope: !1563)
!1584 = !DILocation(line: 540, column: 7, scope: !1504)
!1585 = !DILocation(line: 541, column: 14, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 540, column: 10)
!1587 = !DILocation(line: 541, column: 13, scope: !1586)
!1588 = !DILocation(line: 541, column: 41, scope: !1586)
!1589 = !DILocation(line: 541, column: 22, scope: !1586)
!1590 = !DILocation(line: 541, column: 20, scope: !1586)
!1591 = !DILocation(line: 541, column: 11, scope: !1586)
!1592 = !DILocation(line: 542, column: 7, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1586, file: !3, line: 542, column: 6)
!1594 = !DILocation(line: 542, column: 6, scope: !1593)
!1595 = !DILocation(line: 542, column: 16, scope: !1593)
!1596 = !DILocation(line: 543, column: 4, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1598, file: !3, line: 543, column: 4)
!1598 = distinct !DILexicalBlock(scope: !1599, file: !3, line: 543, column: 4)
!1599 = distinct !DILexicalBlock(scope: !1593, file: !3, line: 542, column: 22)
!1600 = !DILocation(line: 543, column: 4, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !3, line: 543, column: 4)
!1602 = distinct !DILexicalBlock(scope: !1597, file: !3, line: 543, column: 4)
!1603 = !DILocation(line: 543, column: 4, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1601, file: !3, line: 543, column: 4)
!1605 = !DILocation(line: 543, column: 4, scope: !1602)
!1606 = !DILocation(line: 544, column: 8, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1599, file: !3, line: 544, column: 8)
!1608 = !DILocation(line: 545, column: 12, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1610, file: !3, line: 545, column: 10)
!1610 = distinct !DILexicalBlock(scope: !1607, file: !3, line: 544, column: 21)
!1611 = !DILocation(line: 545, column: 11, scope: !1609)
!1612 = !DILocation(line: 545, column: 23, scope: !1609)
!1613 = !DILocation(line: 545, column: 21, scope: !1609)
!1614 = !DILocation(line: 545, column: 27, scope: !1609)
!1615 = !DILocation(line: 546, column: 13, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1617, file: !3, line: 546, column: 12)
!1617 = distinct !DILexicalBlock(scope: !1609, file: !3, line: 545, column: 33)
!1618 = !DILocation(line: 546, column: 12, scope: !1616)
!1619 = !DILocation(line: 546, column: 22, scope: !1616)
!1620 = !DILocation(line: 547, column: 16, scope: !1616)
!1621 = !DILocation(line: 547, column: 4, scope: !1616)
!1622 = !DILocation(line: 547, column: 13, scope: !1616)
!1623 = !DILocation(line: 547, column: 3, scope: !1616)
!1624 = !DILocation(line: 549, column: 16, scope: !1616)
!1625 = !DILocation(line: 549, column: 4, scope: !1616)
!1626 = !DILocation(line: 549, column: 13, scope: !1616)
!1627 = !DILocation(line: 550, column: 6, scope: !1617)
!1628 = !DILocation(line: 551, column: 4, scope: !1610)
!1629 = !DILocation(line: 552, column: 2, scope: !1599)
!1630 = !DILocation(line: 553, column: 8, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1632, file: !3, line: 553, column: 8)
!1632 = distinct !DILexicalBlock(scope: !1593, file: !3, line: 552, column: 9)
!1633 = !DILocation(line: 553, column: 12, scope: !1631)
!1634 = !DILocation(line: 554, column: 6, scope: !1631)
!1635 = !DILocation(line: 556, column: 3, scope: !1586)
!1636 = !DILocation(line: 557, column: 7, scope: !1586)
!1637 = !DILocation(line: 557, column: 16, scope: !1504)
!1638 = !DILocation(line: 557, column: 21, scope: !1504)
!1639 = !DILocation(line: 557, column: 18, scope: !1504)
!1640 = distinct !{!1640, !1584, !1641, !675}
!1641 = !DILocation(line: 557, column: 23, scope: !1504)
!1642 = !DILocation(line: 558, column: 11, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 558, column: 11)
!1644 = !DILocalVariable(name: "pos", scope: !1645, file: !3, line: 559, type: !195)
!1645 = distinct !DILexicalBlock(scope: !1643, file: !3, line: 558, column: 14)
!1646 = !DILocation(line: 559, column: 6, scope: !1645)
!1647 = !DILocation(line: 559, column: 31, scope: !1645)
!1648 = !DILocation(line: 559, column: 12, scope: !1645)
!1649 = !DILocation(line: 561, column: 26, scope: !1645)
!1650 = !DILocation(line: 561, column: 18, scope: !1645)
!1651 = !DILocation(line: 561, column: 4, scope: !1645)
!1652 = !DILocation(line: 561, column: 11, scope: !1645)
!1653 = !DILocation(line: 561, column: 2, scope: !1645)
!1654 = !DILocation(line: 561, column: 16, scope: !1645)
!1655 = !DILocation(line: 563, column: 27, scope: !1645)
!1656 = !DILocation(line: 563, column: 21, scope: !1645)
!1657 = !DILocation(line: 563, column: 2, scope: !1645)
!1658 = !DILocation(line: 563, column: 25, scope: !1645)
!1659 = !DILocation(line: 564, column: 7, scope: !1645)
!1660 = !DILocation(line: 565, column: 5, scope: !1504)
!1661 = !DILocation(line: 512, column: 22, scope: !1497)
!1662 = !DILocation(line: 512, column: 5, scope: !1497)
!1663 = distinct !{!1663, !1501, !1664, !675}
!1664 = !DILocation(line: 565, column: 5, scope: !1498)
!1665 = !DILocation(line: 566, column: 3, scope: !1495)
!1666 = !DILocation(line: 568, column: 7, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1417, file: !3, line: 568, column: 7)
!1668 = !DILocation(line: 568, column: 14, scope: !1667)
!1669 = !DILocation(line: 574, column: 5, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1667, file: !3, line: 568, column: 19)
!1671 = !DILocation(line: 574, column: 12, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1673, file: !3, line: 574, column: 5)
!1673 = distinct !DILexicalBlock(scope: !1670, file: !3, line: 574, column: 5)
!1674 = !DILocation(line: 574, column: 17, scope: !1672)
!1675 = !DILocation(line: 574, column: 14, scope: !1672)
!1676 = !DILocation(line: 574, column: 5, scope: !1673)
!1677 = !DILocation(line: 575, column: 19, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1672, file: !3, line: 574, column: 26)
!1679 = !DILocation(line: 575, column: 18, scope: !1678)
!1680 = !DILocation(line: 575, column: 46, scope: !1678)
!1681 = !DILocation(line: 575, column: 27, scope: !1678)
!1682 = !DILocation(line: 575, column: 25, scope: !1678)
!1683 = !DILocation(line: 575, column: 16, scope: !1678)
!1684 = !DILocation(line: 576, column: 12, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1678, file: !3, line: 576, column: 11)
!1686 = !DILocation(line: 576, column: 11, scope: !1685)
!1687 = !DILocation(line: 576, column: 21, scope: !1685)
!1688 = !DILocation(line: 577, column: 2, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1690, file: !3, line: 577, column: 2)
!1690 = distinct !DILexicalBlock(scope: !1691, file: !3, line: 577, column: 2)
!1691 = distinct !DILexicalBlock(scope: !1685, file: !3, line: 576, column: 27)
!1692 = !DILocation(line: 577, column: 2, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1694, file: !3, line: 577, column: 2)
!1694 = distinct !DILexicalBlock(scope: !1689, file: !3, line: 577, column: 2)
!1695 = !DILocation(line: 577, column: 2, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1693, file: !3, line: 577, column: 2)
!1697 = !DILocation(line: 577, column: 2, scope: !1694)
!1698 = !DILocation(line: 578, column: 6, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1691, file: !3, line: 578, column: 6)
!1700 = !DILocation(line: 579, column: 10, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1702, file: !3, line: 579, column: 8)
!1702 = distinct !DILexicalBlock(scope: !1699, file: !3, line: 578, column: 19)
!1703 = !DILocation(line: 579, column: 9, scope: !1701)
!1704 = !DILocation(line: 579, column: 21, scope: !1701)
!1705 = !DILocation(line: 579, column: 19, scope: !1701)
!1706 = !DILocation(line: 579, column: 25, scope: !1701)
!1707 = !DILocation(line: 580, column: 11, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1709, file: !3, line: 580, column: 10)
!1709 = distinct !DILexicalBlock(scope: !1701, file: !3, line: 579, column: 31)
!1710 = !DILocation(line: 580, column: 10, scope: !1708)
!1711 = !DILocation(line: 580, column: 20, scope: !1708)
!1712 = !DILocation(line: 581, column: 21, scope: !1708)
!1713 = !DILocation(line: 581, column: 9, scope: !1708)
!1714 = !DILocation(line: 581, column: 18, scope: !1708)
!1715 = !DILocation(line: 581, column: 8, scope: !1708)
!1716 = !DILocation(line: 583, column: 21, scope: !1708)
!1717 = !DILocation(line: 583, column: 9, scope: !1708)
!1718 = !DILocation(line: 583, column: 18, scope: !1708)
!1719 = !DILocation(line: 584, column: 4, scope: !1709)
!1720 = !DILocation(line: 585, column: 2, scope: !1702)
!1721 = !DILocation(line: 586, column: 7, scope: !1691)
!1722 = !DILocation(line: 587, column: 5, scope: !1678)
!1723 = !DILocation(line: 574, column: 22, scope: !1672)
!1724 = !DILocation(line: 574, column: 5, scope: !1672)
!1725 = distinct !{!1725, !1676, !1726, !675}
!1726 = !DILocation(line: 587, column: 5, scope: !1673)
!1727 = !DILocation(line: 589, column: 11, scope: !1670)
!1728 = !DILocation(line: 590, column: 3, scope: !1670)
!1729 = !DILocation(line: 593, column: 3, scope: !1417)
!1730 = !DILocation(line: 594, column: 27, scope: !1417)
!1731 = !DILocation(line: 594, column: 3, scope: !1417)
!1732 = !DILocation(line: 594, column: 12, scope: !1417)
!1733 = !DILocation(line: 594, column: 18, scope: !1417)
!1734 = !DILocation(line: 594, column: 25, scope: !1417)
!1735 = !DILocation(line: 597, column: 3, scope: !1417)
!1736 = !DILocation(line: 597, column: 12, scope: !1417)
!1737 = !DILocation(line: 597, column: 26, scope: !1417)
!1738 = !DILocation(line: 599, column: 3, scope: !1417)
!1739 = !DILabel(scope: !1417, name: "undoit", file: !3, line: 601)
!1740 = !DILocation(line: 601, column: 1, scope: !1417)
!1741 = !DILocation(line: 603, column: 3, scope: !1417)
!1742 = !DILocation(line: 603, column: 10, scope: !1417)
!1743 = !DILocation(line: 603, column: 20, scope: !1417)
!1744 = !DILocation(line: 604, column: 7, scope: !1417)
!1745 = !DILocation(line: 604, column: 24, scope: !1417)
!1746 = !DILocation(line: 604, column: 14, scope: !1417)
!1747 = !DILocation(line: 604, column: 5, scope: !1417)
!1748 = !DILocation(line: 604, column: 38, scope: !1417)
!1749 = distinct !{!1749, !1741, !1750, !675}
!1750 = !DILocation(line: 604, column: 40, scope: !1417)
!1751 = !DILocation(line: 606, column: 3, scope: !1417)
!1752 = !DILocation(line: 607, column: 1, scope: !1417)
!1753 = distinct !DISubprogram(name: "process_restart", scope: !3, file: !3, line: 228, type: !316, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !632)
!1754 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1753, file: !3, line: 228, type: !169)
!1755 = !DILocation(line: 228, column: 35, scope: !1753)
!1756 = !DILocalVariable(name: "entropy", scope: !1753, file: !3, line: 230, type: !157)
!1757 = !DILocation(line: 230, column: 21, scope: !1753)
!1758 = !DILocation(line: 230, column: 51, scope: !1753)
!1759 = !DILocation(line: 230, column: 58, scope: !1753)
!1760 = !DILocalVariable(name: "ci", scope: !1753, file: !3, line: 231, type: !195)
!1761 = !DILocation(line: 231, column: 7, scope: !1753)
!1762 = !DILocation(line: 235, column: 37, scope: !1753)
!1763 = !DILocation(line: 235, column: 46, scope: !1753)
!1764 = !DILocation(line: 235, column: 55, scope: !1753)
!1765 = !DILocation(line: 235, column: 65, scope: !1753)
!1766 = !DILocation(line: 235, column: 3, scope: !1753)
!1767 = !DILocation(line: 235, column: 10, scope: !1753)
!1768 = !DILocation(line: 235, column: 18, scope: !1753)
!1769 = !DILocation(line: 235, column: 34, scope: !1753)
!1770 = !DILocation(line: 236, column: 3, scope: !1753)
!1771 = !DILocation(line: 236, column: 12, scope: !1753)
!1772 = !DILocation(line: 236, column: 21, scope: !1753)
!1773 = !DILocation(line: 236, column: 31, scope: !1753)
!1774 = !DILocation(line: 239, column: 11, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1753, file: !3, line: 239, column: 7)
!1776 = !DILocation(line: 239, column: 18, scope: !1775)
!1777 = !DILocation(line: 239, column: 26, scope: !1775)
!1778 = !DILocation(line: 239, column: 48, scope: !1775)
!1779 = !DILocation(line: 239, column: 9, scope: !1775)
!1780 = !DILocation(line: 239, column: 7, scope: !1775)
!1781 = !DILocation(line: 240, column: 5, scope: !1775)
!1782 = !DILocation(line: 243, column: 11, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1753, file: !3, line: 243, column: 3)
!1784 = !DILocation(line: 243, column: 8, scope: !1783)
!1785 = !DILocation(line: 243, column: 16, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1783, file: !3, line: 243, column: 3)
!1787 = !DILocation(line: 243, column: 21, scope: !1786)
!1788 = !DILocation(line: 243, column: 28, scope: !1786)
!1789 = !DILocation(line: 243, column: 19, scope: !1786)
!1790 = !DILocation(line: 243, column: 3, scope: !1783)
!1791 = !DILocation(line: 244, column: 5, scope: !1786)
!1792 = !DILocation(line: 244, column: 14, scope: !1786)
!1793 = !DILocation(line: 244, column: 20, scope: !1786)
!1794 = !DILocation(line: 244, column: 32, scope: !1786)
!1795 = !DILocation(line: 244, column: 36, scope: !1786)
!1796 = !DILocation(line: 243, column: 45, scope: !1786)
!1797 = !DILocation(line: 243, column: 3, scope: !1786)
!1798 = distinct !{!1798, !1790, !1799, !675}
!1799 = !DILocation(line: 244, column: 38, scope: !1783)
!1800 = !DILocation(line: 246, column: 3, scope: !1753)
!1801 = !DILocation(line: 246, column: 12, scope: !1753)
!1802 = !DILocation(line: 246, column: 18, scope: !1753)
!1803 = !DILocation(line: 246, column: 25, scope: !1753)
!1804 = !DILocation(line: 249, column: 29, scope: !1753)
!1805 = !DILocation(line: 249, column: 36, scope: !1753)
!1806 = !DILocation(line: 249, column: 3, scope: !1753)
!1807 = !DILocation(line: 249, column: 12, scope: !1753)
!1808 = !DILocation(line: 249, column: 27, scope: !1753)
!1809 = !DILocation(line: 252, column: 3, scope: !1753)
!1810 = !DILocation(line: 252, column: 12, scope: !1753)
!1811 = !DILocation(line: 252, column: 21, scope: !1753)
!1812 = !DILocation(line: 252, column: 33, scope: !1753)
!1813 = !DILocation(line: 254, column: 3, scope: !1753)
!1814 = !DILocation(line: 255, column: 1, scope: !1753)
