; ModuleID = 'cBench/consumer_jpeg_c/src/jdmarker.c'
source_filename = "cBench/consumer_jpeg_c/src/jdmarker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_source_mgr = type { ptr, i64, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_marker_reader = type { ptr, ptr, ptr, ptr, [16 x ptr], i32, i32, i32, i32 }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.JQUANT_TBL = type { [64 x i16], i32 }

@jpeg_natural_order = external constant [0 x i32], align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @jpeg_resync_to_restart(ptr noundef %0, i32 noundef %1) #0 !dbg !639 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !641, !DIExpression(), !642)
  store i32 %1, ptr %5, align 4
    #dbg_declare(ptr %5, !643, !DIExpression(), !644)
    #dbg_declare(ptr %6, !645, !DIExpression(), !646)
  %8 = load ptr, ptr %4, align 8, !dbg !647
  %9 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %8, i32 0, i32 72, !dbg !648
  %10 = load i32, ptr %9, align 4, !dbg !648
  store i32 %10, ptr %6, align 4, !dbg !646
    #dbg_declare(ptr %7, !649, !DIExpression(), !650)
  store i32 1, ptr %7, align 4, !dbg !650
  %11 = load ptr, ptr %4, align 8, !dbg !651
  %12 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %11, i32 0, i32 0, !dbg !651
  %13 = load ptr, ptr %12, align 8, !dbg !651
  %14 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %13, i32 0, i32 5, !dbg !651
  store i32 117, ptr %14, align 8, !dbg !651
  %15 = load i32, ptr %6, align 4, !dbg !651
  %16 = load ptr, ptr %4, align 8, !dbg !651
  %17 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %16, i32 0, i32 0, !dbg !651
  %18 = load ptr, ptr %17, align 8, !dbg !651
  %19 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %18, i32 0, i32 6, !dbg !651
  %20 = getelementptr inbounds [8 x i32], ptr %19, i64 0, i64 0, !dbg !651
  store i32 %15, ptr %20, align 4, !dbg !651
  %21 = load i32, ptr %5, align 4, !dbg !651
  %22 = load ptr, ptr %4, align 8, !dbg !651
  %23 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %22, i32 0, i32 0, !dbg !651
  %24 = load ptr, ptr %23, align 8, !dbg !651
  %25 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %24, i32 0, i32 6, !dbg !651
  %26 = getelementptr inbounds [8 x i32], ptr %25, i64 0, i64 1, !dbg !651
  store i32 %21, ptr %26, align 4, !dbg !651
  %27 = load ptr, ptr %4, align 8, !dbg !651
  %28 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %27, i32 0, i32 0, !dbg !651
  %29 = load ptr, ptr %28, align 8, !dbg !651
  %30 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %29, i32 0, i32 1, !dbg !651
  %31 = load ptr, ptr %30, align 8, !dbg !651
  %32 = load ptr, ptr %4, align 8, !dbg !651
  call void %31(ptr noundef %32, i32 noundef -1), !dbg !651
  br label %33, !dbg !652

33:                                               ; preds = %115, %2
  %34 = load i32, ptr %6, align 4, !dbg !653
  %35 = icmp slt i32 %34, 192, !dbg !658
  br i1 %35, label %36, label %37, !dbg !658

36:                                               ; preds = %33
  store i32 2, ptr %7, align 4, !dbg !659
  br label %78, !dbg !660

37:                                               ; preds = %33
  %38 = load i32, ptr %6, align 4, !dbg !661
  %39 = icmp slt i32 %38, 208, !dbg !663
  br i1 %39, label %43, label %40, !dbg !664

40:                                               ; preds = %37
  %41 = load i32, ptr %6, align 4, !dbg !665
  %42 = icmp sgt i32 %41, 215, !dbg !666
  br i1 %42, label %43, label %44, !dbg !664

43:                                               ; preds = %40, %37
  store i32 3, ptr %7, align 4, !dbg !667
  br label %77, !dbg !668

44:                                               ; preds = %40
  %45 = load i32, ptr %6, align 4, !dbg !669
  %46 = load i32, ptr %5, align 4, !dbg !672
  %47 = add nsw i32 %46, 1, !dbg !673
  %48 = and i32 %47, 7, !dbg !674
  %49 = add nsw i32 208, %48, !dbg !675
  %50 = icmp eq i32 %45, %49, !dbg !676
  br i1 %50, label %58, label %51, !dbg !677

51:                                               ; preds = %44
  %52 = load i32, ptr %6, align 4, !dbg !678
  %53 = load i32, ptr %5, align 4, !dbg !679
  %54 = add nsw i32 %53, 2, !dbg !680
  %55 = and i32 %54, 7, !dbg !681
  %56 = add nsw i32 208, %55, !dbg !682
  %57 = icmp eq i32 %52, %56, !dbg !683
  br i1 %57, label %58, label %59, !dbg !677

58:                                               ; preds = %51, %44
  store i32 3, ptr %7, align 4, !dbg !684
  br label %76, !dbg !685

59:                                               ; preds = %51
  %60 = load i32, ptr %6, align 4, !dbg !686
  %61 = load i32, ptr %5, align 4, !dbg !688
  %62 = sub nsw i32 %61, 1, !dbg !689
  %63 = and i32 %62, 7, !dbg !690
  %64 = add nsw i32 208, %63, !dbg !691
  %65 = icmp eq i32 %60, %64, !dbg !692
  br i1 %65, label %73, label %66, !dbg !693

66:                                               ; preds = %59
  %67 = load i32, ptr %6, align 4, !dbg !694
  %68 = load i32, ptr %5, align 4, !dbg !695
  %69 = sub nsw i32 %68, 2, !dbg !696
  %70 = and i32 %69, 7, !dbg !697
  %71 = add nsw i32 208, %70, !dbg !698
  %72 = icmp eq i32 %67, %71, !dbg !699
  br i1 %72, label %73, label %74, !dbg !693

73:                                               ; preds = %66, %59
  store i32 2, ptr %7, align 4, !dbg !700
  br label %75, !dbg !701

74:                                               ; preds = %66
  store i32 1, ptr %7, align 4, !dbg !702
  br label %75

75:                                               ; preds = %74, %73
  br label %76

76:                                               ; preds = %75, %58
  br label %77

77:                                               ; preds = %76, %43
  br label %78

78:                                               ; preds = %77, %36
  %79 = load ptr, ptr %4, align 8, !dbg !703
  %80 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %79, i32 0, i32 0, !dbg !703
  %81 = load ptr, ptr %80, align 8, !dbg !703
  %82 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %81, i32 0, i32 5, !dbg !703
  store i32 96, ptr %82, align 8, !dbg !703
  %83 = load i32, ptr %6, align 4, !dbg !703
  %84 = load ptr, ptr %4, align 8, !dbg !703
  %85 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %84, i32 0, i32 0, !dbg !703
  %86 = load ptr, ptr %85, align 8, !dbg !703
  %87 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %86, i32 0, i32 6, !dbg !703
  %88 = getelementptr inbounds [8 x i32], ptr %87, i64 0, i64 0, !dbg !703
  store i32 %83, ptr %88, align 4, !dbg !703
  %89 = load i32, ptr %7, align 4, !dbg !703
  %90 = load ptr, ptr %4, align 8, !dbg !703
  %91 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %90, i32 0, i32 0, !dbg !703
  %92 = load ptr, ptr %91, align 8, !dbg !703
  %93 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %92, i32 0, i32 6, !dbg !703
  %94 = getelementptr inbounds [8 x i32], ptr %93, i64 0, i64 1, !dbg !703
  store i32 %89, ptr %94, align 4, !dbg !703
  %95 = load ptr, ptr %4, align 8, !dbg !703
  %96 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %95, i32 0, i32 0, !dbg !703
  %97 = load ptr, ptr %96, align 8, !dbg !703
  %98 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %97, i32 0, i32 1, !dbg !703
  %99 = load ptr, ptr %98, align 8, !dbg !703
  %100 = load ptr, ptr %4, align 8, !dbg !703
  call void %99(ptr noundef %100, i32 noundef 4), !dbg !703
  %101 = load i32, ptr %7, align 4, !dbg !704
  switch i32 %101, label %115 [
    i32 1, label %102
    i32 2, label %105
    i32 3, label %114
  ], !dbg !705

102:                                              ; preds = %78
  %103 = load ptr, ptr %4, align 8, !dbg !706
  %104 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %103, i32 0, i32 72, !dbg !708
  store i32 0, ptr %104, align 4, !dbg !709
  store i32 1, ptr %3, align 4, !dbg !710
  br label %116, !dbg !710

105:                                              ; preds = %78
  %106 = load ptr, ptr %4, align 8, !dbg !711
  %107 = call i32 @next_marker(ptr noundef %106), !dbg !713
  %108 = icmp ne i32 %107, 0, !dbg !713
  br i1 %108, label %110, label %109, !dbg !714

109:                                              ; preds = %105
  store i32 0, ptr %3, align 4, !dbg !715
  br label %116, !dbg !715

110:                                              ; preds = %105
  %111 = load ptr, ptr %4, align 8, !dbg !716
  %112 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %111, i32 0, i32 72, !dbg !717
  %113 = load i32, ptr %112, align 4, !dbg !717
  store i32 %113, ptr %6, align 4, !dbg !718
  br label %115, !dbg !719

114:                                              ; preds = %78
  store i32 1, ptr %3, align 4, !dbg !720
  br label %116, !dbg !720

115:                                              ; preds = %78, %110
  br label %33, !dbg !721, !llvm.loop !722

116:                                              ; preds = %114, %109, %102
  %117 = load i32, ptr %3, align 4, !dbg !725
  ret i32 %117, !dbg !725
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @next_marker(ptr noundef %0) #0 !dbg !726 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !727, !DIExpression(), !728)
    #dbg_declare(ptr %4, !729, !DIExpression(), !730)
    #dbg_declare(ptr %5, !731, !DIExpression(), !732)
  %8 = load ptr, ptr %3, align 8, !dbg !732
  %9 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %8, i32 0, i32 5, !dbg !732
  %10 = load ptr, ptr %9, align 8, !dbg !732
  store ptr %10, ptr %5, align 8, !dbg !732
    #dbg_declare(ptr %6, !733, !DIExpression(), !732)
  %11 = load ptr, ptr %5, align 8, !dbg !732
  %12 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %11, i32 0, i32 0, !dbg !732
  %13 = load ptr, ptr %12, align 8, !dbg !732
  store ptr %13, ptr %6, align 8, !dbg !732
    #dbg_declare(ptr %7, !734, !DIExpression(), !732)
  %14 = load ptr, ptr %5, align 8, !dbg !732
  %15 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %14, i32 0, i32 1, !dbg !732
  %16 = load i64, ptr %15, align 8, !dbg !732
  store i64 %16, ptr %7, align 8, !dbg !732
  br label %17, !dbg !735

17:                                               ; preds = %121, %1
  br label %18, !dbg !736

18:                                               ; preds = %17
  %19 = load i64, ptr %7, align 8, !dbg !740
  %20 = icmp eq i64 %19, 0, !dbg !740
  br i1 %20, label %21, label %36, !dbg !740

21:                                               ; preds = %18
  %22 = load ptr, ptr %5, align 8, !dbg !743
  %23 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %22, i32 0, i32 3, !dbg !743
  %24 = load ptr, ptr %23, align 8, !dbg !743
  %25 = load ptr, ptr %3, align 8, !dbg !743
  %26 = call i32 %24(ptr noundef %25), !dbg !743
  %27 = icmp ne i32 %26, 0, !dbg !743
  br i1 %27, label %29, label %28, !dbg !743

28:                                               ; preds = %21
  store i32 0, ptr %2, align 4, !dbg !746
  br label %182, !dbg !746

29:                                               ; preds = %21
  %30 = load ptr, ptr %5, align 8, !dbg !748
  %31 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %30, i32 0, i32 0, !dbg !748
  %32 = load ptr, ptr %31, align 8, !dbg !748
  store ptr %32, ptr %6, align 8, !dbg !748
  %33 = load ptr, ptr %5, align 8, !dbg !748
  %34 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %33, i32 0, i32 1, !dbg !748
  %35 = load i64, ptr %34, align 8, !dbg !748
  store i64 %35, ptr %7, align 8, !dbg !748
  br label %36, !dbg !748

36:                                               ; preds = %29, %18
  %37 = load i64, ptr %7, align 8, !dbg !749
  %38 = add i64 %37, -1, !dbg !749
  store i64 %38, ptr %7, align 8, !dbg !749
  %39 = load ptr, ptr %6, align 8, !dbg !749
  %40 = getelementptr inbounds nuw i8, ptr %39, i32 1, !dbg !749
  store ptr %40, ptr %6, align 8, !dbg !749
  %41 = load i8, ptr %39, align 1, !dbg !749
  %42 = zext i8 %41 to i32, !dbg !749
  store i32 %42, ptr %4, align 4, !dbg !749
  br label %43, !dbg !749

43:                                               ; preds = %36
  br label %44, !dbg !750

44:                                               ; preds = %85, %43
  %45 = load i32, ptr %4, align 4, !dbg !751
  %46 = icmp ne i32 %45, 255, !dbg !752
  br i1 %46, label %47, label %86, !dbg !750

47:                                               ; preds = %44
  %48 = load ptr, ptr %3, align 8, !dbg !753
  %49 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %48, i32 0, i32 78, !dbg !755
  %50 = load ptr, ptr %49, align 8, !dbg !755
  %51 = getelementptr inbounds nuw %struct.jpeg_marker_reader, ptr %50, i32 0, i32 8, !dbg !756
  %52 = load i32, ptr %51, align 4, !dbg !757
  %53 = add i32 %52, 1, !dbg !757
  store i32 %53, ptr %51, align 4, !dbg !757
  %54 = load ptr, ptr %6, align 8, !dbg !758
  %55 = load ptr, ptr %5, align 8, !dbg !758
  %56 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %55, i32 0, i32 0, !dbg !758
  store ptr %54, ptr %56, align 8, !dbg !758
  %57 = load i64, ptr %7, align 8, !dbg !758
  %58 = load ptr, ptr %5, align 8, !dbg !758
  %59 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %58, i32 0, i32 1, !dbg !758
  store i64 %57, ptr %59, align 8, !dbg !758
  br label %60, !dbg !759

60:                                               ; preds = %47
  %61 = load i64, ptr %7, align 8, !dbg !760
  %62 = icmp eq i64 %61, 0, !dbg !760
  br i1 %62, label %63, label %78, !dbg !760

63:                                               ; preds = %60
  %64 = load ptr, ptr %5, align 8, !dbg !763
  %65 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %64, i32 0, i32 3, !dbg !763
  %66 = load ptr, ptr %65, align 8, !dbg !763
  %67 = load ptr, ptr %3, align 8, !dbg !763
  %68 = call i32 %66(ptr noundef %67), !dbg !763
  %69 = icmp ne i32 %68, 0, !dbg !763
  br i1 %69, label %71, label %70, !dbg !763

70:                                               ; preds = %63
  store i32 0, ptr %2, align 4, !dbg !766
  br label %182, !dbg !766

71:                                               ; preds = %63
  %72 = load ptr, ptr %5, align 8, !dbg !768
  %73 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %72, i32 0, i32 0, !dbg !768
  %74 = load ptr, ptr %73, align 8, !dbg !768
  store ptr %74, ptr %6, align 8, !dbg !768
  %75 = load ptr, ptr %5, align 8, !dbg !768
  %76 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %75, i32 0, i32 1, !dbg !768
  %77 = load i64, ptr %76, align 8, !dbg !768
  store i64 %77, ptr %7, align 8, !dbg !768
  br label %78, !dbg !768

78:                                               ; preds = %71, %60
  %79 = load i64, ptr %7, align 8, !dbg !769
  %80 = add i64 %79, -1, !dbg !769
  store i64 %80, ptr %7, align 8, !dbg !769
  %81 = load ptr, ptr %6, align 8, !dbg !769
  %82 = getelementptr inbounds nuw i8, ptr %81, i32 1, !dbg !769
  store ptr %82, ptr %6, align 8, !dbg !769
  %83 = load i8, ptr %81, align 1, !dbg !769
  %84 = zext i8 %83 to i32, !dbg !769
  store i32 %84, ptr %4, align 4, !dbg !769
  br label %85, !dbg !769

85:                                               ; preds = %78
  br label %44, !dbg !750, !llvm.loop !770

86:                                               ; preds = %44
  br label %87, !dbg !773

87:                                               ; preds = %114, %86
  br label %88, !dbg !774

88:                                               ; preds = %87
  %89 = load i64, ptr %7, align 8, !dbg !776
  %90 = icmp eq i64 %89, 0, !dbg !776
  br i1 %90, label %91, label %106, !dbg !776

91:                                               ; preds = %88
  %92 = load ptr, ptr %5, align 8, !dbg !779
  %93 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %92, i32 0, i32 3, !dbg !779
  %94 = load ptr, ptr %93, align 8, !dbg !779
  %95 = load ptr, ptr %3, align 8, !dbg !779
  %96 = call i32 %94(ptr noundef %95), !dbg !779
  %97 = icmp ne i32 %96, 0, !dbg !779
  br i1 %97, label %99, label %98, !dbg !779

98:                                               ; preds = %91
  store i32 0, ptr %2, align 4, !dbg !782
  br label %182, !dbg !782

99:                                               ; preds = %91
  %100 = load ptr, ptr %5, align 8, !dbg !784
  %101 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %100, i32 0, i32 0, !dbg !784
  %102 = load ptr, ptr %101, align 8, !dbg !784
  store ptr %102, ptr %6, align 8, !dbg !784
  %103 = load ptr, ptr %5, align 8, !dbg !784
  %104 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %103, i32 0, i32 1, !dbg !784
  %105 = load i64, ptr %104, align 8, !dbg !784
  store i64 %105, ptr %7, align 8, !dbg !784
  br label %106, !dbg !784

106:                                              ; preds = %99, %88
  %107 = load i64, ptr %7, align 8, !dbg !785
  %108 = add i64 %107, -1, !dbg !785
  store i64 %108, ptr %7, align 8, !dbg !785
  %109 = load ptr, ptr %6, align 8, !dbg !785
  %110 = getelementptr inbounds nuw i8, ptr %109, i32 1, !dbg !785
  store ptr %110, ptr %6, align 8, !dbg !785
  %111 = load i8, ptr %109, align 1, !dbg !785
  %112 = zext i8 %111 to i32, !dbg !785
  store i32 %112, ptr %4, align 4, !dbg !785
  br label %113, !dbg !785

113:                                              ; preds = %106
  br label %114, !dbg !786

114:                                              ; preds = %113
  %115 = load i32, ptr %4, align 4, !dbg !787
  %116 = icmp eq i32 %115, 255, !dbg !788
  br i1 %116, label %87, label %117, !dbg !786, !llvm.loop !789

117:                                              ; preds = %114
  %118 = load i32, ptr %4, align 4, !dbg !791
  %119 = icmp ne i32 %118, 0, !dbg !793
  br i1 %119, label %120, label %121, !dbg !793

120:                                              ; preds = %117
  br label %134, !dbg !794

121:                                              ; preds = %117
  %122 = load ptr, ptr %3, align 8, !dbg !795
  %123 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %122, i32 0, i32 78, !dbg !796
  %124 = load ptr, ptr %123, align 8, !dbg !796
  %125 = getelementptr inbounds nuw %struct.jpeg_marker_reader, ptr %124, i32 0, i32 8, !dbg !797
  %126 = load i32, ptr %125, align 4, !dbg !798
  %127 = add i32 %126, 2, !dbg !798
  store i32 %127, ptr %125, align 4, !dbg !798
  %128 = load ptr, ptr %6, align 8, !dbg !799
  %129 = load ptr, ptr %5, align 8, !dbg !799
  %130 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %129, i32 0, i32 0, !dbg !799
  store ptr %128, ptr %130, align 8, !dbg !799
  %131 = load i64, ptr %7, align 8, !dbg !799
  %132 = load ptr, ptr %5, align 8, !dbg !799
  %133 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %132, i32 0, i32 1, !dbg !799
  store i64 %131, ptr %133, align 8, !dbg !799
  br label %17, !dbg !800, !llvm.loop !801

134:                                              ; preds = %120
  %135 = load ptr, ptr %3, align 8, !dbg !804
  %136 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %135, i32 0, i32 78, !dbg !806
  %137 = load ptr, ptr %136, align 8, !dbg !806
  %138 = getelementptr inbounds nuw %struct.jpeg_marker_reader, ptr %137, i32 0, i32 8, !dbg !807
  %139 = load i32, ptr %138, align 4, !dbg !807
  %140 = icmp ne i32 %139, 0, !dbg !808
  br i1 %140, label %141, label %172, !dbg !808

141:                                              ; preds = %134
  %142 = load ptr, ptr %3, align 8, !dbg !809
  %143 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %142, i32 0, i32 0, !dbg !809
  %144 = load ptr, ptr %143, align 8, !dbg !809
  %145 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %144, i32 0, i32 5, !dbg !809
  store i32 112, ptr %145, align 8, !dbg !809
  %146 = load ptr, ptr %3, align 8, !dbg !809
  %147 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %146, i32 0, i32 78, !dbg !809
  %148 = load ptr, ptr %147, align 8, !dbg !809
  %149 = getelementptr inbounds nuw %struct.jpeg_marker_reader, ptr %148, i32 0, i32 8, !dbg !809
  %150 = load i32, ptr %149, align 4, !dbg !809
  %151 = load ptr, ptr %3, align 8, !dbg !809
  %152 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %151, i32 0, i32 0, !dbg !809
  %153 = load ptr, ptr %152, align 8, !dbg !809
  %154 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %153, i32 0, i32 6, !dbg !809
  %155 = getelementptr inbounds [8 x i32], ptr %154, i64 0, i64 0, !dbg !809
  store i32 %150, ptr %155, align 4, !dbg !809
  %156 = load i32, ptr %4, align 4, !dbg !809
  %157 = load ptr, ptr %3, align 8, !dbg !809
  %158 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %157, i32 0, i32 0, !dbg !809
  %159 = load ptr, ptr %158, align 8, !dbg !809
  %160 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %159, i32 0, i32 6, !dbg !809
  %161 = getelementptr inbounds [8 x i32], ptr %160, i64 0, i64 1, !dbg !809
  store i32 %156, ptr %161, align 4, !dbg !809
  %162 = load ptr, ptr %3, align 8, !dbg !809
  %163 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %162, i32 0, i32 0, !dbg !809
  %164 = load ptr, ptr %163, align 8, !dbg !809
  %165 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %164, i32 0, i32 1, !dbg !809
  %166 = load ptr, ptr %165, align 8, !dbg !809
  %167 = load ptr, ptr %3, align 8, !dbg !809
  call void %166(ptr noundef %167, i32 noundef -1), !dbg !809
  %168 = load ptr, ptr %3, align 8, !dbg !811
  %169 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %168, i32 0, i32 78, !dbg !812
  %170 = load ptr, ptr %169, align 8, !dbg !812
  %171 = getelementptr inbounds nuw %struct.jpeg_marker_reader, ptr %170, i32 0, i32 8, !dbg !813
  store i32 0, ptr %171, align 4, !dbg !814
  br label %172, !dbg !815

172:                                              ; preds = %141, %134
  %173 = load i32, ptr %4, align 4, !dbg !816
  %174 = load ptr, ptr %3, align 8, !dbg !817
  %175 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %174, i32 0, i32 72, !dbg !818
  store i32 %173, ptr %175, align 4, !dbg !819
  %176 = load ptr, ptr %6, align 8, !dbg !820
  %177 = load ptr, ptr %5, align 8, !dbg !820
  %178 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %177, i32 0, i32 0, !dbg !820
  store ptr %176, ptr %178, align 8, !dbg !820
  %179 = load i64, ptr %7, align 8, !dbg !820
  %180 = load ptr, ptr %5, align 8, !dbg !820
  %181 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %180, i32 0, i32 1, !dbg !820
  store i64 %179, ptr %181, align 8, !dbg !820
  store i32 1, ptr %2, align 4, !dbg !821
  br label %182, !dbg !821

182:                                              ; preds = %172, %98, %70, %28
  %183 = load i32, ptr %2, align 4, !dbg !822
  ret i32 %183, !dbg !822
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @jinit_marker_reader(ptr noundef %0) #0 !dbg !823 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !824, !DIExpression(), !825)
    #dbg_declare(ptr %3, !826, !DIExpression(), !827)
  %4 = load ptr, ptr %2, align 8, !dbg !828
  %5 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 1, !dbg !829
  %6 = load ptr, ptr %5, align 8, !dbg !829
  %7 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %6, i32 0, i32 0, !dbg !830
  %8 = load ptr, ptr %7, align 8, !dbg !830
  %9 = load ptr, ptr %2, align 8, !dbg !831
  %10 = call ptr %8(ptr noundef %9, i32 noundef 0, i64 noundef 176), !dbg !832
  %11 = load ptr, ptr %2, align 8, !dbg !833
  %12 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %11, i32 0, i32 78, !dbg !834
  store ptr %10, ptr %12, align 8, !dbg !835
  %13 = load ptr, ptr %2, align 8, !dbg !836
  %14 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %13, i32 0, i32 78, !dbg !837
  %15 = load ptr, ptr %14, align 8, !dbg !837
  %16 = getelementptr inbounds nuw %struct.jpeg_marker_reader, ptr %15, i32 0, i32 0, !dbg !838
  store ptr @reset_marker_reader, ptr %16, align 8, !dbg !839
  %17 = load ptr, ptr %2, align 8, !dbg !840
  %18 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %17, i32 0, i32 78, !dbg !841
  %19 = load ptr, ptr %18, align 8, !dbg !841
  %20 = getelementptr inbounds nuw %struct.jpeg_marker_reader, ptr %19, i32 0, i32 1, !dbg !842
  store ptr @read_markers, ptr %20, align 8, !dbg !843
  %21 = load ptr, ptr %2, align 8, !dbg !844
  %22 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %21, i32 0, i32 78, !dbg !845
  %23 = load ptr, ptr %22, align 8, !dbg !845
  %24 = getelementptr inbounds nuw %struct.jpeg_marker_reader, ptr %23, i32 0, i32 2, !dbg !846
  store ptr @read_restart_marker, ptr %24, align 8, !dbg !847
  %25 = load ptr, ptr %2, align 8, !dbg !848
  %26 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %25, i32 0, i32 78, !dbg !849
  %27 = load ptr, ptr %26, align 8, !dbg !849
  %28 = getelementptr inbounds nuw %struct.jpeg_marker_reader, ptr %27, i32 0, i32 3, !dbg !850
  store ptr @skip_variable, ptr %28, align 8, !dbg !851
  store i32 0, ptr %3, align 4, !dbg !852
  br label %29, !dbg !854

29:                                               ; preds = %40, %1
  %30 = load i32, ptr %3, align 4, !dbg !855
  %31 = icmp slt i32 %30, 16, !dbg !857
  br i1 %31, label %32, label %43, !dbg !858

32:                                               ; preds = %29
  %33 = load ptr, ptr %2, align 8, !dbg !859
  %34 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %33, i32 0, i32 78, !dbg !860
  %35 = load ptr, ptr %34, align 8, !dbg !860
  %36 = getelementptr inbounds nuw %struct.jpeg_marker_reader, ptr %35, i32 0, i32 4, !dbg !861
  %37 = load i32, ptr %3, align 4, !dbg !862
  %38 = sext i32 %37 to i64, !dbg !859
  %39 = getelementptr inbounds [16 x ptr], ptr %36, i64 0, i64 %38, !dbg !859
  store ptr @skip_variable, ptr %39, align 8, !dbg !863
  br label %40, !dbg !859

40:                                               ; preds = %32
  %41 = load i32, ptr %3, align 4, !dbg !864
  %42 = add nsw i32 %41, 1, !dbg !864
  store i32 %42, ptr %3, align 4, !dbg !864
  br label %29, !dbg !865, !llvm.loop !866

43:                                               ; preds = %29
  %44 = load ptr, ptr %2, align 8, !dbg !868
  %45 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %44, i32 0, i32 78, !dbg !869
  %46 = load ptr, ptr %45, align 8, !dbg !869
  %47 = getelementptr inbounds nuw %struct.jpeg_marker_reader, ptr %46, i32 0, i32 4, !dbg !870
  %48 = getelementptr inbounds [16 x ptr], ptr %47, i64 0, i64 0, !dbg !868
  store ptr @get_app0, ptr %48, align 8, !dbg !871
  %49 = load ptr, ptr %2, align 8, !dbg !872
  %50 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %49, i32 0, i32 78, !dbg !873
  %51 = load ptr, ptr %50, align 8, !dbg !873
  %52 = getelementptr inbounds nuw %struct.jpeg_marker_reader, ptr %51, i32 0, i32 4, !dbg !874
  %53 = getelementptr inbounds [16 x ptr], ptr %52, i64 0, i64 14, !dbg !872
  store ptr @get_app14, ptr %53, align 8, !dbg !875
  %54 = load ptr, ptr %2, align 8, !dbg !876
  call void @reset_marker_reader(ptr noundef %54), !dbg !877
  ret void, !dbg !878
}

; Function Attrs: noinline nounwind uwtable
define internal void @reset_marker_reader(ptr noundef %0) #0 !dbg !879 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !880, !DIExpression(), !881)
  %3 = load ptr, ptr %2, align 8, !dbg !882
  %4 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %3, i32 0, i32 43, !dbg !883
  store ptr null, ptr %4, align 8, !dbg !884
  %5 = load ptr, ptr %2, align 8, !dbg !885
  %6 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %5, i32 0, i32 34, !dbg !886
  store i32 0, ptr %6, align 4, !dbg !887
  %7 = load ptr, ptr %2, align 8, !dbg !888
  %8 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %7, i32 0, i32 72, !dbg !889
  store i32 0, ptr %8, align 4, !dbg !890
  %9 = load ptr, ptr %2, align 8, !dbg !891
  %10 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %9, i32 0, i32 78, !dbg !892
  %11 = load ptr, ptr %10, align 8, !dbg !892
  %12 = getelementptr inbounds nuw %struct.jpeg_marker_reader, ptr %11, i32 0, i32 5, !dbg !893
  store i32 0, ptr %12, align 8, !dbg !894
  %13 = load ptr, ptr %2, align 8, !dbg !895
  %14 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %13, i32 0, i32 78, !dbg !896
  %15 = load ptr, ptr %14, align 8, !dbg !896
  %16 = getelementptr inbounds nuw %struct.jpeg_marker_reader, ptr %15, i32 0, i32 6, !dbg !897
  store i32 0, ptr %16, align 4, !dbg !898
  %17 = load ptr, ptr %2, align 8, !dbg !899
  %18 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %17, i32 0, i32 78, !dbg !900
  %19 = load ptr, ptr %18, align 8, !dbg !900
  %20 = getelementptr inbounds nuw %struct.jpeg_marker_reader, ptr %19, i32 0, i32 8, !dbg !901
  store i32 0, ptr %20, align 4, !dbg !902
  ret void, !dbg !903
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @read_markers(ptr noundef %0) #0 !dbg !904 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !905, !DIExpression(), !906)
  br label %4, !dbg !907

4:                                                ; preds = %199, %1
  %5 = load ptr, ptr %3, align 8, !dbg !908
  %6 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %5, i32 0, i32 72, !dbg !913
  %7 = load i32, ptr %6, align 4, !dbg !913
  %8 = icmp eq i32 %7, 0, !dbg !914
  br i1 %8, label %9, label %29, !dbg !914

9:                                                ; preds = %4
  %10 = load ptr, ptr %3, align 8, !dbg !915
  %11 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %10, i32 0, i32 78, !dbg !918
  %12 = load ptr, ptr %11, align 8, !dbg !918
  %13 = getelementptr inbounds nuw %struct.jpeg_marker_reader, ptr %12, i32 0, i32 5, !dbg !919
  %14 = load i32, ptr %13, align 8, !dbg !919
  %15 = icmp ne i32 %14, 0, !dbg !915
  br i1 %15, label %22, label %16, !dbg !920

16:                                               ; preds = %9
  %17 = load ptr, ptr %3, align 8, !dbg !921
  %18 = call i32 @first_marker(ptr noundef %17), !dbg !924
  %19 = icmp ne i32 %18, 0, !dbg !924
  br i1 %19, label %21, label %20, !dbg !925

20:                                               ; preds = %16
  store i32 0, ptr %2, align 4, !dbg !926
  br label %202, !dbg !926

21:                                               ; preds = %16
  br label %28, !dbg !927

22:                                               ; preds = %9
  %23 = load ptr, ptr %3, align 8, !dbg !928
  %24 = call i32 @next_marker(ptr noundef %23), !dbg !931
  %25 = icmp ne i32 %24, 0, !dbg !931
  br i1 %25, label %27, label %26, !dbg !932

26:                                               ; preds = %22
  store i32 0, ptr %2, align 4, !dbg !933
  br label %202, !dbg !933

27:                                               ; preds = %22
  br label %28

28:                                               ; preds = %27, %21
  br label %29, !dbg !934

29:                                               ; preds = %28, %4
  %30 = load ptr, ptr %3, align 8, !dbg !935
  %31 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %30, i32 0, i32 72, !dbg !936
  %32 = load i32, ptr %31, align 4, !dbg !936
  switch i32 %32, label %180 [
    i32 216, label %33
    i32 192, label %39
    i32 193, label %39
    i32 194, label %45
    i32 201, label %51
    i32 202, label %57
    i32 195, label %63
    i32 197, label %63
    i32 198, label %63
    i32 199, label %63
    i32 200, label %63
    i32 203, label %63
    i32 205, label %63
    i32 206, label %63
    i32 207, label %63
    i32 218, label %82
    i32 217, label %90
    i32 204, label %103
    i32 196, label %109
    i32 219, label %115
    i32 221, label %121
    i32 224, label %127
    i32 225, label %127
    i32 226, label %127
    i32 227, label %127
    i32 228, label %127
    i32 229, label %127
    i32 230, label %127
    i32 231, label %127
    i32 232, label %127
    i32 233, label %127
    i32 234, label %127
    i32 235, label %127
    i32 236, label %127
    i32 237, label %127
    i32 238, label %127
    i32 239, label %127
    i32 254, label %144
    i32 208, label %155
    i32 209, label %155
    i32 210, label %155
    i32 211, label %155
    i32 212, label %155
    i32 213, label %155
    i32 214, label %155
    i32 215, label %155
    i32 1, label %155
    i32 220, label %174
  ], !dbg !937

33:                                               ; preds = %29
  %34 = load ptr, ptr %3, align 8, !dbg !938
  %35 = call i32 @get_soi(ptr noundef %34), !dbg !941
  %36 = icmp ne i32 %35, 0, !dbg !941
  br i1 %36, label %38, label %37, !dbg !942

37:                                               ; preds = %33
  store i32 0, ptr %2, align 4, !dbg !943
  br label %202, !dbg !943

38:                                               ; preds = %33
  br label %199, !dbg !944

39:                                               ; preds = %29, %29
  %40 = load ptr, ptr %3, align 8, !dbg !945
  %41 = call i32 @get_sof(ptr noundef %40, i32 noundef 0, i32 noundef 0), !dbg !947
  %42 = icmp ne i32 %41, 0, !dbg !947
  br i1 %42, label %44, label %43, !dbg !948

43:                                               ; preds = %39
  store i32 0, ptr %2, align 4, !dbg !949
  br label %202, !dbg !949

44:                                               ; preds = %39
  br label %199, !dbg !950

45:                                               ; preds = %29
  %46 = load ptr, ptr %3, align 8, !dbg !951
  %47 = call i32 @get_sof(ptr noundef %46, i32 noundef 1, i32 noundef 0), !dbg !953
  %48 = icmp ne i32 %47, 0, !dbg !953
  br i1 %48, label %50, label %49, !dbg !954

49:                                               ; preds = %45
  store i32 0, ptr %2, align 4, !dbg !955
  br label %202, !dbg !955

50:                                               ; preds = %45
  br label %199, !dbg !956

51:                                               ; preds = %29
  %52 = load ptr, ptr %3, align 8, !dbg !957
  %53 = call i32 @get_sof(ptr noundef %52, i32 noundef 0, i32 noundef 1), !dbg !959
  %54 = icmp ne i32 %53, 0, !dbg !959
  br i1 %54, label %56, label %55, !dbg !960

55:                                               ; preds = %51
  store i32 0, ptr %2, align 4, !dbg !961
  br label %202, !dbg !961

56:                                               ; preds = %51
  br label %199, !dbg !962

57:                                               ; preds = %29
  %58 = load ptr, ptr %3, align 8, !dbg !963
  %59 = call i32 @get_sof(ptr noundef %58, i32 noundef 1, i32 noundef 1), !dbg !965
  %60 = icmp ne i32 %59, 0, !dbg !965
  br i1 %60, label %62, label %61, !dbg !966

61:                                               ; preds = %57
  store i32 0, ptr %2, align 4, !dbg !967
  br label %202, !dbg !967

62:                                               ; preds = %57
  br label %199, !dbg !968

63:                                               ; preds = %29, %29, %29, %29, %29, %29, %29, %29, %29
  %64 = load ptr, ptr %3, align 8, !dbg !969
  %65 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %64, i32 0, i32 0, !dbg !969
  %66 = load ptr, ptr %65, align 8, !dbg !969
  %67 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %66, i32 0, i32 5, !dbg !969
  store i32 59, ptr %67, align 8, !dbg !969
  %68 = load ptr, ptr %3, align 8, !dbg !969
  %69 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %68, i32 0, i32 72, !dbg !969
  %70 = load i32, ptr %69, align 4, !dbg !969
  %71 = load ptr, ptr %3, align 8, !dbg !969
  %72 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %71, i32 0, i32 0, !dbg !969
  %73 = load ptr, ptr %72, align 8, !dbg !969
  %74 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %73, i32 0, i32 6, !dbg !969
  %75 = getelementptr inbounds [8 x i32], ptr %74, i64 0, i64 0, !dbg !969
  store i32 %70, ptr %75, align 4, !dbg !969
  %76 = load ptr, ptr %3, align 8, !dbg !969
  %77 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %76, i32 0, i32 0, !dbg !969
  %78 = load ptr, ptr %77, align 8, !dbg !969
  %79 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %78, i32 0, i32 0, !dbg !969
  %80 = load ptr, ptr %79, align 8, !dbg !969
  %81 = load ptr, ptr %3, align 8, !dbg !969
  call void %80(ptr noundef %81), !dbg !969
  br label %199, !dbg !970

82:                                               ; preds = %29
  %83 = load ptr, ptr %3, align 8, !dbg !971
  %84 = call i32 @get_sos(ptr noundef %83), !dbg !973
  %85 = icmp ne i32 %84, 0, !dbg !973
  br i1 %85, label %87, label %86, !dbg !974

86:                                               ; preds = %82
  store i32 0, ptr %2, align 4, !dbg !975
  br label %202, !dbg !975

87:                                               ; preds = %82
  %88 = load ptr, ptr %3, align 8, !dbg !976
  %89 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %88, i32 0, i32 72, !dbg !977
  store i32 0, ptr %89, align 4, !dbg !978
  store i32 1, ptr %2, align 4, !dbg !979
  br label %202, !dbg !979

90:                                               ; preds = %29
  %91 = load ptr, ptr %3, align 8, !dbg !980
  %92 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %91, i32 0, i32 0, !dbg !980
  %93 = load ptr, ptr %92, align 8, !dbg !980
  %94 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %93, i32 0, i32 5, !dbg !980
  store i32 84, ptr %94, align 8, !dbg !980
  %95 = load ptr, ptr %3, align 8, !dbg !980
  %96 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %95, i32 0, i32 0, !dbg !980
  %97 = load ptr, ptr %96, align 8, !dbg !980
  %98 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %97, i32 0, i32 1, !dbg !980
  %99 = load ptr, ptr %98, align 8, !dbg !980
  %100 = load ptr, ptr %3, align 8, !dbg !980
  call void %99(ptr noundef %100, i32 noundef 1), !dbg !980
  %101 = load ptr, ptr %3, align 8, !dbg !981
  %102 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %101, i32 0, i32 72, !dbg !982
  store i32 0, ptr %102, align 4, !dbg !983
  store i32 2, ptr %2, align 4, !dbg !984
  br label %202, !dbg !984

103:                                              ; preds = %29
  %104 = load ptr, ptr %3, align 8, !dbg !985
  %105 = call i32 @get_dac(ptr noundef %104), !dbg !987
  %106 = icmp ne i32 %105, 0, !dbg !987
  br i1 %106, label %108, label %107, !dbg !988

107:                                              ; preds = %103
  store i32 0, ptr %2, align 4, !dbg !989
  br label %202, !dbg !989

108:                                              ; preds = %103
  br label %199, !dbg !990

109:                                              ; preds = %29
  %110 = load ptr, ptr %3, align 8, !dbg !991
  %111 = call i32 @get_dht(ptr noundef %110), !dbg !993
  %112 = icmp ne i32 %111, 0, !dbg !993
  br i1 %112, label %114, label %113, !dbg !994

113:                                              ; preds = %109
  store i32 0, ptr %2, align 4, !dbg !995
  br label %202, !dbg !995

114:                                              ; preds = %109
  br label %199, !dbg !996

115:                                              ; preds = %29
  %116 = load ptr, ptr %3, align 8, !dbg !997
  %117 = call i32 @get_dqt(ptr noundef %116), !dbg !999
  %118 = icmp ne i32 %117, 0, !dbg !999
  br i1 %118, label %120, label %119, !dbg !1000

119:                                              ; preds = %115
  store i32 0, ptr %2, align 4, !dbg !1001
  br label %202, !dbg !1001

120:                                              ; preds = %115
  br label %199, !dbg !1002

121:                                              ; preds = %29
  %122 = load ptr, ptr %3, align 8, !dbg !1003
  %123 = call i32 @get_dri(ptr noundef %122), !dbg !1005
  %124 = icmp ne i32 %123, 0, !dbg !1005
  br i1 %124, label %126, label %125, !dbg !1006

125:                                              ; preds = %121
  store i32 0, ptr %2, align 4, !dbg !1007
  br label %202, !dbg !1007

126:                                              ; preds = %121
  br label %199, !dbg !1008

127:                                              ; preds = %29, %29, %29, %29, %29, %29, %29, %29, %29, %29, %29, %29, %29, %29, %29, %29
  %128 = load ptr, ptr %3, align 8, !dbg !1009
  %129 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %128, i32 0, i32 78, !dbg !1011
  %130 = load ptr, ptr %129, align 8, !dbg !1011
  %131 = getelementptr inbounds nuw %struct.jpeg_marker_reader, ptr %130, i32 0, i32 4, !dbg !1012
  %132 = load ptr, ptr %3, align 8, !dbg !1013
  %133 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %132, i32 0, i32 72, !dbg !1014
  %134 = load i32, ptr %133, align 4, !dbg !1014
  %135 = sub nsw i32 %134, 224, !dbg !1015
  %136 = sext i32 %135 to i64, !dbg !1009
  %137 = getelementptr inbounds [16 x ptr], ptr %131, i64 0, i64 %136, !dbg !1009
  %138 = load ptr, ptr %137, align 8, !dbg !1009
  %139 = load ptr, ptr %3, align 8, !dbg !1016
  %140 = call i32 %138(ptr noundef %139), !dbg !1017
  %141 = icmp ne i32 %140, 0, !dbg !1017
  br i1 %141, label %143, label %142, !dbg !1018

142:                                              ; preds = %127
  store i32 0, ptr %2, align 4, !dbg !1019
  br label %202, !dbg !1019

143:                                              ; preds = %127
  br label %199, !dbg !1020

144:                                              ; preds = %29
  %145 = load ptr, ptr %3, align 8, !dbg !1021
  %146 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %145, i32 0, i32 78, !dbg !1023
  %147 = load ptr, ptr %146, align 8, !dbg !1023
  %148 = getelementptr inbounds nuw %struct.jpeg_marker_reader, ptr %147, i32 0, i32 3, !dbg !1024
  %149 = load ptr, ptr %148, align 8, !dbg !1024
  %150 = load ptr, ptr %3, align 8, !dbg !1025
  %151 = call i32 %149(ptr noundef %150), !dbg !1026
  %152 = icmp ne i32 %151, 0, !dbg !1026
  br i1 %152, label %154, label %153, !dbg !1027

153:                                              ; preds = %144
  store i32 0, ptr %2, align 4, !dbg !1028
  br label %202, !dbg !1028

154:                                              ; preds = %144
  br label %199, !dbg !1029

155:                                              ; preds = %29, %29, %29, %29, %29, %29, %29, %29, %29
  %156 = load ptr, ptr %3, align 8, !dbg !1030
  %157 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %156, i32 0, i32 0, !dbg !1030
  %158 = load ptr, ptr %157, align 8, !dbg !1030
  %159 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %158, i32 0, i32 5, !dbg !1030
  store i32 91, ptr %159, align 8, !dbg !1030
  %160 = load ptr, ptr %3, align 8, !dbg !1030
  %161 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %160, i32 0, i32 72, !dbg !1030
  %162 = load i32, ptr %161, align 4, !dbg !1030
  %163 = load ptr, ptr %3, align 8, !dbg !1030
  %164 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %163, i32 0, i32 0, !dbg !1030
  %165 = load ptr, ptr %164, align 8, !dbg !1030
  %166 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %165, i32 0, i32 6, !dbg !1030
  %167 = getelementptr inbounds [8 x i32], ptr %166, i64 0, i64 0, !dbg !1030
  store i32 %162, ptr %167, align 4, !dbg !1030
  %168 = load ptr, ptr %3, align 8, !dbg !1030
  %169 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %168, i32 0, i32 0, !dbg !1030
  %170 = load ptr, ptr %169, align 8, !dbg !1030
  %171 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %170, i32 0, i32 1, !dbg !1030
  %172 = load ptr, ptr %171, align 8, !dbg !1030
  %173 = load ptr, ptr %3, align 8, !dbg !1030
  call void %172(ptr noundef %173, i32 noundef 1), !dbg !1030
  br label %199, !dbg !1031

174:                                              ; preds = %29
  %175 = load ptr, ptr %3, align 8, !dbg !1032
  %176 = call i32 @skip_variable(ptr noundef %175), !dbg !1034
  %177 = icmp ne i32 %176, 0, !dbg !1034
  br i1 %177, label %179, label %178, !dbg !1035

178:                                              ; preds = %174
  store i32 0, ptr %2, align 4, !dbg !1036
  br label %202, !dbg !1036

179:                                              ; preds = %174
  br label %199, !dbg !1037

180:                                              ; preds = %29
  %181 = load ptr, ptr %3, align 8, !dbg !1038
  %182 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %181, i32 0, i32 0, !dbg !1038
  %183 = load ptr, ptr %182, align 8, !dbg !1038
  %184 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %183, i32 0, i32 5, !dbg !1038
  store i32 67, ptr %184, align 8, !dbg !1038
  %185 = load ptr, ptr %3, align 8, !dbg !1038
  %186 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %185, i32 0, i32 72, !dbg !1038
  %187 = load i32, ptr %186, align 4, !dbg !1038
  %188 = load ptr, ptr %3, align 8, !dbg !1038
  %189 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %188, i32 0, i32 0, !dbg !1038
  %190 = load ptr, ptr %189, align 8, !dbg !1038
  %191 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %190, i32 0, i32 6, !dbg !1038
  %192 = getelementptr inbounds [8 x i32], ptr %191, i64 0, i64 0, !dbg !1038
  store i32 %187, ptr %192, align 4, !dbg !1038
  %193 = load ptr, ptr %3, align 8, !dbg !1038
  %194 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %193, i32 0, i32 0, !dbg !1038
  %195 = load ptr, ptr %194, align 8, !dbg !1038
  %196 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %195, i32 0, i32 0, !dbg !1038
  %197 = load ptr, ptr %196, align 8, !dbg !1038
  %198 = load ptr, ptr %3, align 8, !dbg !1038
  call void %197(ptr noundef %198), !dbg !1038
  br label %199, !dbg !1039

199:                                              ; preds = %180, %179, %155, %154, %143, %126, %120, %114, %108, %63, %62, %56, %50, %44, %38
  %200 = load ptr, ptr %3, align 8, !dbg !1040
  %201 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %200, i32 0, i32 72, !dbg !1041
  store i32 0, ptr %201, align 4, !dbg !1042
  br label %4, !dbg !1043, !llvm.loop !1044

202:                                              ; preds = %178, %153, %142, %125, %119, %113, %107, %90, %87, %86, %61, %55, %49, %43, %37, %26, %20
  %203 = load i32, ptr %2, align 4, !dbg !1047
  ret i32 %203, !dbg !1047
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @read_restart_marker(ptr noundef %0) #0 !dbg !1048 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1049, !DIExpression(), !1050)
  %4 = load ptr, ptr %3, align 8, !dbg !1051
  %5 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 72, !dbg !1053
  %6 = load i32, ptr %5, align 4, !dbg !1053
  %7 = icmp eq i32 %6, 0, !dbg !1054
  br i1 %7, label %8, label %14, !dbg !1054

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 8, !dbg !1055
  %10 = call i32 @next_marker(ptr noundef %9), !dbg !1058
  %11 = icmp ne i32 %10, 0, !dbg !1058
  br i1 %11, label %13, label %12, !dbg !1059

12:                                               ; preds = %8
  store i32 0, ptr %2, align 4, !dbg !1060
  br label %76, !dbg !1060

13:                                               ; preds = %8
  br label %14, !dbg !1061

14:                                               ; preds = %13, %1
  %15 = load ptr, ptr %3, align 8, !dbg !1062
  %16 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %15, i32 0, i32 72, !dbg !1064
  %17 = load i32, ptr %16, align 4, !dbg !1064
  %18 = load ptr, ptr %3, align 8, !dbg !1065
  %19 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %18, i32 0, i32 78, !dbg !1066
  %20 = load ptr, ptr %19, align 8, !dbg !1066
  %21 = getelementptr inbounds nuw %struct.jpeg_marker_reader, ptr %20, i32 0, i32 7, !dbg !1067
  %22 = load i32, ptr %21, align 8, !dbg !1067
  %23 = add nsw i32 208, %22, !dbg !1068
  %24 = icmp eq i32 %17, %23, !dbg !1069
  br i1 %24, label %25, label %48, !dbg !1069

25:                                               ; preds = %14
  %26 = load ptr, ptr %3, align 8, !dbg !1070
  %27 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %26, i32 0, i32 0, !dbg !1070
  %28 = load ptr, ptr %27, align 8, !dbg !1070
  %29 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %28, i32 0, i32 5, !dbg !1070
  store i32 97, ptr %29, align 8, !dbg !1070
  %30 = load ptr, ptr %3, align 8, !dbg !1070
  %31 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %30, i32 0, i32 78, !dbg !1070
  %32 = load ptr, ptr %31, align 8, !dbg !1070
  %33 = getelementptr inbounds nuw %struct.jpeg_marker_reader, ptr %32, i32 0, i32 7, !dbg !1070
  %34 = load i32, ptr %33, align 8, !dbg !1070
  %35 = load ptr, ptr %3, align 8, !dbg !1070
  %36 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %35, i32 0, i32 0, !dbg !1070
  %37 = load ptr, ptr %36, align 8, !dbg !1070
  %38 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %37, i32 0, i32 6, !dbg !1070
  %39 = getelementptr inbounds [8 x i32], ptr %38, i64 0, i64 0, !dbg !1070
  store i32 %34, ptr %39, align 4, !dbg !1070
  %40 = load ptr, ptr %3, align 8, !dbg !1070
  %41 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %40, i32 0, i32 0, !dbg !1070
  %42 = load ptr, ptr %41, align 8, !dbg !1070
  %43 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %42, i32 0, i32 1, !dbg !1070
  %44 = load ptr, ptr %43, align 8, !dbg !1070
  %45 = load ptr, ptr %3, align 8, !dbg !1070
  call void %44(ptr noundef %45, i32 noundef 3), !dbg !1070
  %46 = load ptr, ptr %3, align 8, !dbg !1072
  %47 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %46, i32 0, i32 72, !dbg !1073
  store i32 0, ptr %47, align 4, !dbg !1074
  br label %64, !dbg !1075

48:                                               ; preds = %14
  %49 = load ptr, ptr %3, align 8, !dbg !1076
  %50 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %49, i32 0, i32 5, !dbg !1079
  %51 = load ptr, ptr %50, align 8, !dbg !1079
  %52 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %51, i32 0, i32 5, !dbg !1080
  %53 = load ptr, ptr %52, align 8, !dbg !1080
  %54 = load ptr, ptr %3, align 8, !dbg !1081
  %55 = load ptr, ptr %3, align 8, !dbg !1082
  %56 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %55, i32 0, i32 78, !dbg !1083
  %57 = load ptr, ptr %56, align 8, !dbg !1083
  %58 = getelementptr inbounds nuw %struct.jpeg_marker_reader, ptr %57, i32 0, i32 7, !dbg !1084
  %59 = load i32, ptr %58, align 8, !dbg !1084
  %60 = call i32 %53(ptr noundef %54, i32 noundef %59), !dbg !1085
  %61 = icmp ne i32 %60, 0, !dbg !1085
  br i1 %61, label %63, label %62, !dbg !1086

62:                                               ; preds = %48
  store i32 0, ptr %2, align 4, !dbg !1087
  br label %76, !dbg !1087

63:                                               ; preds = %48
  br label %64

64:                                               ; preds = %63, %25
  %65 = load ptr, ptr %3, align 8, !dbg !1088
  %66 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %65, i32 0, i32 78, !dbg !1089
  %67 = load ptr, ptr %66, align 8, !dbg !1089
  %68 = getelementptr inbounds nuw %struct.jpeg_marker_reader, ptr %67, i32 0, i32 7, !dbg !1090
  %69 = load i32, ptr %68, align 8, !dbg !1090
  %70 = add nsw i32 %69, 1, !dbg !1091
  %71 = and i32 %70, 7, !dbg !1092
  %72 = load ptr, ptr %3, align 8, !dbg !1093
  %73 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %72, i32 0, i32 78, !dbg !1094
  %74 = load ptr, ptr %73, align 8, !dbg !1094
  %75 = getelementptr inbounds nuw %struct.jpeg_marker_reader, ptr %74, i32 0, i32 7, !dbg !1095
  store i32 %71, ptr %75, align 8, !dbg !1096
  store i32 1, ptr %2, align 4, !dbg !1097
  br label %76, !dbg !1097

76:                                               ; preds = %64, %62, %12
  %77 = load i32, ptr %2, align 4, !dbg !1098
  ret i32 %77, !dbg !1098
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @skip_variable(ptr noundef %0) #0 !dbg !1099 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1100, !DIExpression(), !1101)
    #dbg_declare(ptr %4, !1102, !DIExpression(), !1103)
    #dbg_declare(ptr %5, !1104, !DIExpression(), !1105)
  %8 = load ptr, ptr %3, align 8, !dbg !1105
  %9 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %8, i32 0, i32 5, !dbg !1105
  %10 = load ptr, ptr %9, align 8, !dbg !1105
  store ptr %10, ptr %5, align 8, !dbg !1105
    #dbg_declare(ptr %6, !1106, !DIExpression(), !1105)
  %11 = load ptr, ptr %5, align 8, !dbg !1105
  %12 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %11, i32 0, i32 0, !dbg !1105
  %13 = load ptr, ptr %12, align 8, !dbg !1105
  store ptr %13, ptr %6, align 8, !dbg !1105
    #dbg_declare(ptr %7, !1107, !DIExpression(), !1105)
  %14 = load ptr, ptr %5, align 8, !dbg !1105
  %15 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %14, i32 0, i32 1, !dbg !1105
  %16 = load i64, ptr %15, align 8, !dbg !1105
  store i64 %16, ptr %7, align 8, !dbg !1105
  br label %17, !dbg !1108

17:                                               ; preds = %1
  %18 = load i64, ptr %7, align 8, !dbg !1109
  %19 = icmp eq i64 %18, 0, !dbg !1109
  br i1 %19, label %20, label %35, !dbg !1109

20:                                               ; preds = %17
  %21 = load ptr, ptr %5, align 8, !dbg !1112
  %22 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %21, i32 0, i32 3, !dbg !1112
  %23 = load ptr, ptr %22, align 8, !dbg !1112
  %24 = load ptr, ptr %3, align 8, !dbg !1112
  %25 = call i32 %23(ptr noundef %24), !dbg !1112
  %26 = icmp ne i32 %25, 0, !dbg !1112
  br i1 %26, label %28, label %27, !dbg !1112

27:                                               ; preds = %20
  store i32 0, ptr %2, align 4, !dbg !1115
  br label %110, !dbg !1115

28:                                               ; preds = %20
  %29 = load ptr, ptr %5, align 8, !dbg !1117
  %30 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %29, i32 0, i32 0, !dbg !1117
  %31 = load ptr, ptr %30, align 8, !dbg !1117
  store ptr %31, ptr %6, align 8, !dbg !1117
  %32 = load ptr, ptr %5, align 8, !dbg !1117
  %33 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %32, i32 0, i32 1, !dbg !1117
  %34 = load i64, ptr %33, align 8, !dbg !1117
  store i64 %34, ptr %7, align 8, !dbg !1117
  br label %35, !dbg !1117

35:                                               ; preds = %28, %17
  %36 = load i64, ptr %7, align 8, !dbg !1118
  %37 = add i64 %36, -1, !dbg !1118
  store i64 %37, ptr %7, align 8, !dbg !1118
  %38 = load ptr, ptr %6, align 8, !dbg !1118
  %39 = getelementptr inbounds nuw i8, ptr %38, i32 1, !dbg !1118
  store ptr %39, ptr %6, align 8, !dbg !1118
  %40 = load i8, ptr %38, align 1, !dbg !1118
  %41 = zext i8 %40 to i32, !dbg !1118
  %42 = shl i32 %41, 8, !dbg !1118
  %43 = zext i32 %42 to i64, !dbg !1118
  store i64 %43, ptr %4, align 8, !dbg !1118
  %44 = load i64, ptr %7, align 8, !dbg !1119
  %45 = icmp eq i64 %44, 0, !dbg !1119
  br i1 %45, label %46, label %61, !dbg !1119

46:                                               ; preds = %35
  %47 = load ptr, ptr %5, align 8, !dbg !1121
  %48 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %47, i32 0, i32 3, !dbg !1121
  %49 = load ptr, ptr %48, align 8, !dbg !1121
  %50 = load ptr, ptr %3, align 8, !dbg !1121
  %51 = call i32 %49(ptr noundef %50), !dbg !1121
  %52 = icmp ne i32 %51, 0, !dbg !1121
  br i1 %52, label %54, label %53, !dbg !1121

53:                                               ; preds = %46
  store i32 0, ptr %2, align 4, !dbg !1124
  br label %110, !dbg !1124

54:                                               ; preds = %46
  %55 = load ptr, ptr %5, align 8, !dbg !1126
  %56 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %55, i32 0, i32 0, !dbg !1126
  %57 = load ptr, ptr %56, align 8, !dbg !1126
  store ptr %57, ptr %6, align 8, !dbg !1126
  %58 = load ptr, ptr %5, align 8, !dbg !1126
  %59 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %58, i32 0, i32 1, !dbg !1126
  %60 = load i64, ptr %59, align 8, !dbg !1126
  store i64 %60, ptr %7, align 8, !dbg !1126
  br label %61, !dbg !1126

61:                                               ; preds = %54, %35
  %62 = load i64, ptr %7, align 8, !dbg !1118
  %63 = add i64 %62, -1, !dbg !1118
  store i64 %63, ptr %7, align 8, !dbg !1118
  %64 = load ptr, ptr %6, align 8, !dbg !1118
  %65 = getelementptr inbounds nuw i8, ptr %64, i32 1, !dbg !1118
  store ptr %65, ptr %6, align 8, !dbg !1118
  %66 = load i8, ptr %64, align 1, !dbg !1118
  %67 = zext i8 %66 to i64, !dbg !1118
  %68 = load i64, ptr %4, align 8, !dbg !1118
  %69 = add nsw i64 %68, %67, !dbg !1118
  store i64 %69, ptr %4, align 8, !dbg !1118
  br label %70, !dbg !1118

70:                                               ; preds = %61
  %71 = load ptr, ptr %3, align 8, !dbg !1127
  %72 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %71, i32 0, i32 0, !dbg !1127
  %73 = load ptr, ptr %72, align 8, !dbg !1127
  %74 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %73, i32 0, i32 5, !dbg !1127
  store i32 90, ptr %74, align 8, !dbg !1127
  %75 = load ptr, ptr %3, align 8, !dbg !1127
  %76 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %75, i32 0, i32 72, !dbg !1127
  %77 = load i32, ptr %76, align 4, !dbg !1127
  %78 = load ptr, ptr %3, align 8, !dbg !1127
  %79 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %78, i32 0, i32 0, !dbg !1127
  %80 = load ptr, ptr %79, align 8, !dbg !1127
  %81 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %80, i32 0, i32 6, !dbg !1127
  %82 = getelementptr inbounds [8 x i32], ptr %81, i64 0, i64 0, !dbg !1127
  store i32 %77, ptr %82, align 4, !dbg !1127
  %83 = load i64, ptr %4, align 8, !dbg !1127
  %84 = trunc i64 %83 to i32, !dbg !1127
  %85 = load ptr, ptr %3, align 8, !dbg !1127
  %86 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %85, i32 0, i32 0, !dbg !1127
  %87 = load ptr, ptr %86, align 8, !dbg !1127
  %88 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %87, i32 0, i32 6, !dbg !1127
  %89 = getelementptr inbounds [8 x i32], ptr %88, i64 0, i64 1, !dbg !1127
  store i32 %84, ptr %89, align 4, !dbg !1127
  %90 = load ptr, ptr %3, align 8, !dbg !1127
  %91 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %90, i32 0, i32 0, !dbg !1127
  %92 = load ptr, ptr %91, align 8, !dbg !1127
  %93 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %92, i32 0, i32 1, !dbg !1127
  %94 = load ptr, ptr %93, align 8, !dbg !1127
  %95 = load ptr, ptr %3, align 8, !dbg !1127
  call void %94(ptr noundef %95, i32 noundef 1), !dbg !1127
  %96 = load ptr, ptr %6, align 8, !dbg !1128
  %97 = load ptr, ptr %5, align 8, !dbg !1128
  %98 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %97, i32 0, i32 0, !dbg !1128
  store ptr %96, ptr %98, align 8, !dbg !1128
  %99 = load i64, ptr %7, align 8, !dbg !1128
  %100 = load ptr, ptr %5, align 8, !dbg !1128
  %101 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %100, i32 0, i32 1, !dbg !1128
  store i64 %99, ptr %101, align 8, !dbg !1128
  %102 = load ptr, ptr %3, align 8, !dbg !1129
  %103 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %102, i32 0, i32 5, !dbg !1130
  %104 = load ptr, ptr %103, align 8, !dbg !1130
  %105 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %104, i32 0, i32 4, !dbg !1131
  %106 = load ptr, ptr %105, align 8, !dbg !1131
  %107 = load ptr, ptr %3, align 8, !dbg !1132
  %108 = load i64, ptr %4, align 8, !dbg !1133
  %109 = sub nsw i64 %108, 2, !dbg !1134
  call void %106(ptr noundef %107, i64 noundef %109), !dbg !1135
  store i32 1, ptr %2, align 4, !dbg !1136
  br label %110, !dbg !1136

110:                                              ; preds = %70, %53, %27
  %111 = load i32, ptr %2, align 4, !dbg !1137
  ret i32 %111, !dbg !1137
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_app0(ptr noundef %0) #0 !dbg !1138 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca [14 x i8], align 1
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1139, !DIExpression(), !1140)
    #dbg_declare(ptr %4, !1141, !DIExpression(), !1142)
    #dbg_declare(ptr %5, !1143, !DIExpression(), !1147)
    #dbg_declare(ptr %6, !1148, !DIExpression(), !1149)
    #dbg_declare(ptr %7, !1150, !DIExpression(), !1151)
  %11 = load ptr, ptr %3, align 8, !dbg !1151
  %12 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %11, i32 0, i32 5, !dbg !1151
  %13 = load ptr, ptr %12, align 8, !dbg !1151
  store ptr %13, ptr %7, align 8, !dbg !1151
    #dbg_declare(ptr %8, !1152, !DIExpression(), !1151)
  %14 = load ptr, ptr %7, align 8, !dbg !1151
  %15 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %14, i32 0, i32 0, !dbg !1151
  %16 = load ptr, ptr %15, align 8, !dbg !1151
  store ptr %16, ptr %8, align 8, !dbg !1151
    #dbg_declare(ptr %9, !1153, !DIExpression(), !1151)
  %17 = load ptr, ptr %7, align 8, !dbg !1151
  %18 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %17, i32 0, i32 1, !dbg !1151
  %19 = load i64, ptr %18, align 8, !dbg !1151
  store i64 %19, ptr %9, align 8, !dbg !1151
  br label %20, !dbg !1154

20:                                               ; preds = %1
  %21 = load i64, ptr %9, align 8, !dbg !1155
  %22 = icmp eq i64 %21, 0, !dbg !1155
  br i1 %22, label %23, label %38, !dbg !1155

23:                                               ; preds = %20
  %24 = load ptr, ptr %7, align 8, !dbg !1158
  %25 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %24, i32 0, i32 3, !dbg !1158
  %26 = load ptr, ptr %25, align 8, !dbg !1158
  %27 = load ptr, ptr %3, align 8, !dbg !1158
  %28 = call i32 %26(ptr noundef %27), !dbg !1158
  %29 = icmp ne i32 %28, 0, !dbg !1158
  br i1 %29, label %31, label %30, !dbg !1158

30:                                               ; preds = %23
  store i32 0, ptr %2, align 4, !dbg !1161
  br label %391, !dbg !1161

31:                                               ; preds = %23
  %32 = load ptr, ptr %7, align 8, !dbg !1163
  %33 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %32, i32 0, i32 0, !dbg !1163
  %34 = load ptr, ptr %33, align 8, !dbg !1163
  store ptr %34, ptr %8, align 8, !dbg !1163
  %35 = load ptr, ptr %7, align 8, !dbg !1163
  %36 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %35, i32 0, i32 1, !dbg !1163
  %37 = load i64, ptr %36, align 8, !dbg !1163
  store i64 %37, ptr %9, align 8, !dbg !1163
  br label %38, !dbg !1163

38:                                               ; preds = %31, %20
  %39 = load i64, ptr %9, align 8, !dbg !1164
  %40 = add i64 %39, -1, !dbg !1164
  store i64 %40, ptr %9, align 8, !dbg !1164
  %41 = load ptr, ptr %8, align 8, !dbg !1164
  %42 = getelementptr inbounds nuw i8, ptr %41, i32 1, !dbg !1164
  store ptr %42, ptr %8, align 8, !dbg !1164
  %43 = load i8, ptr %41, align 1, !dbg !1164
  %44 = zext i8 %43 to i32, !dbg !1164
  %45 = shl i32 %44, 8, !dbg !1164
  %46 = zext i32 %45 to i64, !dbg !1164
  store i64 %46, ptr %4, align 8, !dbg !1164
  %47 = load i64, ptr %9, align 8, !dbg !1165
  %48 = icmp eq i64 %47, 0, !dbg !1165
  br i1 %48, label %49, label %64, !dbg !1165

49:                                               ; preds = %38
  %50 = load ptr, ptr %7, align 8, !dbg !1167
  %51 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %50, i32 0, i32 3, !dbg !1167
  %52 = load ptr, ptr %51, align 8, !dbg !1167
  %53 = load ptr, ptr %3, align 8, !dbg !1167
  %54 = call i32 %52(ptr noundef %53), !dbg !1167
  %55 = icmp ne i32 %54, 0, !dbg !1167
  br i1 %55, label %57, label %56, !dbg !1167

56:                                               ; preds = %49
  store i32 0, ptr %2, align 4, !dbg !1170
  br label %391, !dbg !1170

57:                                               ; preds = %49
  %58 = load ptr, ptr %7, align 8, !dbg !1172
  %59 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %58, i32 0, i32 0, !dbg !1172
  %60 = load ptr, ptr %59, align 8, !dbg !1172
  store ptr %60, ptr %8, align 8, !dbg !1172
  %61 = load ptr, ptr %7, align 8, !dbg !1172
  %62 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %61, i32 0, i32 1, !dbg !1172
  %63 = load i64, ptr %62, align 8, !dbg !1172
  store i64 %63, ptr %9, align 8, !dbg !1172
  br label %64, !dbg !1172

64:                                               ; preds = %57, %38
  %65 = load i64, ptr %9, align 8, !dbg !1164
  %66 = add i64 %65, -1, !dbg !1164
  store i64 %66, ptr %9, align 8, !dbg !1164
  %67 = load ptr, ptr %8, align 8, !dbg !1164
  %68 = getelementptr inbounds nuw i8, ptr %67, i32 1, !dbg !1164
  store ptr %68, ptr %8, align 8, !dbg !1164
  %69 = load i8, ptr %67, align 1, !dbg !1164
  %70 = zext i8 %69 to i64, !dbg !1164
  %71 = load i64, ptr %4, align 8, !dbg !1164
  %72 = add nsw i64 %71, %70, !dbg !1164
  store i64 %72, ptr %4, align 8, !dbg !1164
  br label %73, !dbg !1164

73:                                               ; preds = %64
  %74 = load i64, ptr %4, align 8, !dbg !1173
  %75 = sub nsw i64 %74, 2, !dbg !1173
  store i64 %75, ptr %4, align 8, !dbg !1173
  %76 = load i64, ptr %4, align 8, !dbg !1174
  %77 = icmp sge i64 %76, 14, !dbg !1176
  br i1 %77, label %78, label %355, !dbg !1176

78:                                               ; preds = %73
  store i32 0, ptr %6, align 4, !dbg !1177
  br label %79, !dbg !1180

79:                                               ; preds = %111, %78
  %80 = load i32, ptr %6, align 4, !dbg !1181
  %81 = icmp slt i32 %80, 14, !dbg !1183
  br i1 %81, label %82, label %114, !dbg !1184

82:                                               ; preds = %79
  br label %83, !dbg !1185

83:                                               ; preds = %82
  %84 = load i64, ptr %9, align 8, !dbg !1186
  %85 = icmp eq i64 %84, 0, !dbg !1186
  br i1 %85, label %86, label %101, !dbg !1186

86:                                               ; preds = %83
  %87 = load ptr, ptr %7, align 8, !dbg !1189
  %88 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %87, i32 0, i32 3, !dbg !1189
  %89 = load ptr, ptr %88, align 8, !dbg !1189
  %90 = load ptr, ptr %3, align 8, !dbg !1189
  %91 = call i32 %89(ptr noundef %90), !dbg !1189
  %92 = icmp ne i32 %91, 0, !dbg !1189
  br i1 %92, label %94, label %93, !dbg !1189

93:                                               ; preds = %86
  store i32 0, ptr %2, align 4, !dbg !1192
  br label %391, !dbg !1192

94:                                               ; preds = %86
  %95 = load ptr, ptr %7, align 8, !dbg !1194
  %96 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %95, i32 0, i32 0, !dbg !1194
  %97 = load ptr, ptr %96, align 8, !dbg !1194
  store ptr %97, ptr %8, align 8, !dbg !1194
  %98 = load ptr, ptr %7, align 8, !dbg !1194
  %99 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %98, i32 0, i32 1, !dbg !1194
  %100 = load i64, ptr %99, align 8, !dbg !1194
  store i64 %100, ptr %9, align 8, !dbg !1194
  br label %101, !dbg !1194

101:                                              ; preds = %94, %83
  %102 = load i64, ptr %9, align 8, !dbg !1195
  %103 = add i64 %102, -1, !dbg !1195
  store i64 %103, ptr %9, align 8, !dbg !1195
  %104 = load ptr, ptr %8, align 8, !dbg !1195
  %105 = getelementptr inbounds nuw i8, ptr %104, i32 1, !dbg !1195
  store ptr %105, ptr %8, align 8, !dbg !1195
  %106 = load i8, ptr %104, align 1, !dbg !1195
  %107 = load i32, ptr %6, align 4, !dbg !1195
  %108 = sext i32 %107 to i64, !dbg !1195
  %109 = getelementptr inbounds [14 x i8], ptr %5, i64 0, i64 %108, !dbg !1195
  store i8 %106, ptr %109, align 1, !dbg !1195
  br label %110, !dbg !1195

110:                                              ; preds = %101
  br label %111, !dbg !1195

111:                                              ; preds = %110
  %112 = load i32, ptr %6, align 4, !dbg !1196
  %113 = add nsw i32 %112, 1, !dbg !1196
  store i32 %113, ptr %6, align 4, !dbg !1196
  br label %79, !dbg !1197, !llvm.loop !1198

114:                                              ; preds = %79
  %115 = load i64, ptr %4, align 8, !dbg !1200
  %116 = sub nsw i64 %115, 14, !dbg !1200
  store i64 %116, ptr %4, align 8, !dbg !1200
  %117 = getelementptr inbounds [14 x i8], ptr %5, i64 0, i64 0, !dbg !1201
  %118 = load i8, ptr %117, align 1, !dbg !1201
  %119 = zext i8 %118 to i32, !dbg !1201
  %120 = icmp eq i32 %119, 74, !dbg !1203
  br i1 %120, label %121, label %335, !dbg !1204

121:                                              ; preds = %114
  %122 = getelementptr inbounds [14 x i8], ptr %5, i64 0, i64 1, !dbg !1205
  %123 = load i8, ptr %122, align 1, !dbg !1205
  %124 = zext i8 %123 to i32, !dbg !1205
  %125 = icmp eq i32 %124, 70, !dbg !1206
  br i1 %125, label %126, label %335, !dbg !1207

126:                                              ; preds = %121
  %127 = getelementptr inbounds [14 x i8], ptr %5, i64 0, i64 2, !dbg !1208
  %128 = load i8, ptr %127, align 1, !dbg !1208
  %129 = zext i8 %128 to i32, !dbg !1208
  %130 = icmp eq i32 %129, 73, !dbg !1209
  br i1 %130, label %131, label %335, !dbg !1210

131:                                              ; preds = %126
  %132 = getelementptr inbounds [14 x i8], ptr %5, i64 0, i64 3, !dbg !1211
  %133 = load i8, ptr %132, align 1, !dbg !1211
  %134 = zext i8 %133 to i32, !dbg !1211
  %135 = icmp eq i32 %134, 70, !dbg !1212
  br i1 %135, label %136, label %335, !dbg !1213

136:                                              ; preds = %131
  %137 = getelementptr inbounds [14 x i8], ptr %5, i64 0, i64 4, !dbg !1214
  %138 = load i8, ptr %137, align 1, !dbg !1214
  %139 = zext i8 %138 to i32, !dbg !1214
  %140 = icmp eq i32 %139, 0, !dbg !1215
  br i1 %140, label %141, label %335, !dbg !1213

141:                                              ; preds = %136
  %142 = getelementptr inbounds [14 x i8], ptr %5, i64 0, i64 5, !dbg !1216
  %143 = load i8, ptr %142, align 1, !dbg !1216
  %144 = zext i8 %143 to i32, !dbg !1216
  %145 = icmp ne i32 %144, 1, !dbg !1219
  br i1 %145, label %146, label %173, !dbg !1219

146:                                              ; preds = %141
  %147 = load ptr, ptr %3, align 8, !dbg !1220
  %148 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %147, i32 0, i32 0, !dbg !1220
  %149 = load ptr, ptr %148, align 8, !dbg !1220
  %150 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %149, i32 0, i32 5, !dbg !1220
  store i32 115, ptr %150, align 8, !dbg !1220
  %151 = getelementptr inbounds [14 x i8], ptr %5, i64 0, i64 5, !dbg !1220
  %152 = load i8, ptr %151, align 1, !dbg !1220
  %153 = zext i8 %152 to i32, !dbg !1220
  %154 = load ptr, ptr %3, align 8, !dbg !1220
  %155 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %154, i32 0, i32 0, !dbg !1220
  %156 = load ptr, ptr %155, align 8, !dbg !1220
  %157 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %156, i32 0, i32 6, !dbg !1220
  %158 = getelementptr inbounds [8 x i32], ptr %157, i64 0, i64 0, !dbg !1220
  store i32 %153, ptr %158, align 4, !dbg !1220
  %159 = getelementptr inbounds [14 x i8], ptr %5, i64 0, i64 6, !dbg !1220
  %160 = load i8, ptr %159, align 1, !dbg !1220
  %161 = zext i8 %160 to i32, !dbg !1220
  %162 = load ptr, ptr %3, align 8, !dbg !1220
  %163 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %162, i32 0, i32 0, !dbg !1220
  %164 = load ptr, ptr %163, align 8, !dbg !1220
  %165 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %164, i32 0, i32 6, !dbg !1220
  %166 = getelementptr inbounds [8 x i32], ptr %165, i64 0, i64 1, !dbg !1220
  store i32 %161, ptr %166, align 4, !dbg !1220
  %167 = load ptr, ptr %3, align 8, !dbg !1220
  %168 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %167, i32 0, i32 0, !dbg !1220
  %169 = load ptr, ptr %168, align 8, !dbg !1220
  %170 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %169, i32 0, i32 1, !dbg !1220
  %171 = load ptr, ptr %170, align 8, !dbg !1220
  %172 = load ptr, ptr %3, align 8, !dbg !1220
  call void %171(ptr noundef %172, i32 noundef -1), !dbg !1220
  br label %206, !dbg !1220

173:                                              ; preds = %141
  %174 = getelementptr inbounds [14 x i8], ptr %5, i64 0, i64 6, !dbg !1221
  %175 = load i8, ptr %174, align 1, !dbg !1221
  %176 = zext i8 %175 to i32, !dbg !1221
  %177 = icmp sgt i32 %176, 2, !dbg !1223
  br i1 %177, label %178, label %205, !dbg !1223

178:                                              ; preds = %173
  %179 = load ptr, ptr %3, align 8, !dbg !1224
  %180 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %179, i32 0, i32 0, !dbg !1224
  %181 = load ptr, ptr %180, align 8, !dbg !1224
  %182 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %181, i32 0, i32 5, !dbg !1224
  store i32 88, ptr %182, align 8, !dbg !1224
  %183 = getelementptr inbounds [14 x i8], ptr %5, i64 0, i64 5, !dbg !1224
  %184 = load i8, ptr %183, align 1, !dbg !1224
  %185 = zext i8 %184 to i32, !dbg !1224
  %186 = load ptr, ptr %3, align 8, !dbg !1224
  %187 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %186, i32 0, i32 0, !dbg !1224
  %188 = load ptr, ptr %187, align 8, !dbg !1224
  %189 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %188, i32 0, i32 6, !dbg !1224
  %190 = getelementptr inbounds [8 x i32], ptr %189, i64 0, i64 0, !dbg !1224
  store i32 %185, ptr %190, align 4, !dbg !1224
  %191 = getelementptr inbounds [14 x i8], ptr %5, i64 0, i64 6, !dbg !1224
  %192 = load i8, ptr %191, align 1, !dbg !1224
  %193 = zext i8 %192 to i32, !dbg !1224
  %194 = load ptr, ptr %3, align 8, !dbg !1224
  %195 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %194, i32 0, i32 0, !dbg !1224
  %196 = load ptr, ptr %195, align 8, !dbg !1224
  %197 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %196, i32 0, i32 6, !dbg !1224
  %198 = getelementptr inbounds [8 x i32], ptr %197, i64 0, i64 1, !dbg !1224
  store i32 %193, ptr %198, align 4, !dbg !1224
  %199 = load ptr, ptr %3, align 8, !dbg !1224
  %200 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %199, i32 0, i32 0, !dbg !1224
  %201 = load ptr, ptr %200, align 8, !dbg !1224
  %202 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %201, i32 0, i32 1, !dbg !1224
  %203 = load ptr, ptr %202, align 8, !dbg !1224
  %204 = load ptr, ptr %3, align 8, !dbg !1224
  call void %203(ptr noundef %204, i32 noundef 1), !dbg !1224
  br label %205, !dbg !1224

205:                                              ; preds = %178, %173
  br label %206

206:                                              ; preds = %205, %146
  %207 = load ptr, ptr %3, align 8, !dbg !1225
  %208 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %207, i32 0, i32 50, !dbg !1226
  store i32 1, ptr %208, align 4, !dbg !1227
  %209 = getelementptr inbounds [14 x i8], ptr %5, i64 0, i64 7, !dbg !1228
  %210 = load i8, ptr %209, align 1, !dbg !1228
  %211 = load ptr, ptr %3, align 8, !dbg !1229
  %212 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %211, i32 0, i32 51, !dbg !1230
  store i8 %210, ptr %212, align 8, !dbg !1231
  %213 = getelementptr inbounds [14 x i8], ptr %5, i64 0, i64 8, !dbg !1232
  %214 = load i8, ptr %213, align 1, !dbg !1232
  %215 = zext i8 %214 to i32, !dbg !1232
  %216 = shl i32 %215, 8, !dbg !1233
  %217 = getelementptr inbounds [14 x i8], ptr %5, i64 0, i64 9, !dbg !1234
  %218 = load i8, ptr %217, align 1, !dbg !1234
  %219 = zext i8 %218 to i32, !dbg !1234
  %220 = add nsw i32 %216, %219, !dbg !1235
  %221 = trunc i32 %220 to i16, !dbg !1236
  %222 = load ptr, ptr %3, align 8, !dbg !1237
  %223 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %222, i32 0, i32 52, !dbg !1238
  store i16 %221, ptr %223, align 2, !dbg !1239
  %224 = getelementptr inbounds [14 x i8], ptr %5, i64 0, i64 10, !dbg !1240
  %225 = load i8, ptr %224, align 1, !dbg !1240
  %226 = zext i8 %225 to i32, !dbg !1240
  %227 = shl i32 %226, 8, !dbg !1241
  %228 = getelementptr inbounds [14 x i8], ptr %5, i64 0, i64 11, !dbg !1242
  %229 = load i8, ptr %228, align 1, !dbg !1242
  %230 = zext i8 %229 to i32, !dbg !1242
  %231 = add nsw i32 %227, %230, !dbg !1243
  %232 = trunc i32 %231 to i16, !dbg !1244
  %233 = load ptr, ptr %3, align 8, !dbg !1245
  %234 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %233, i32 0, i32 53, !dbg !1246
  store i16 %232, ptr %234, align 4, !dbg !1247
  br label %235, !dbg !1248

235:                                              ; preds = %206
    #dbg_declare(ptr %10, !1249, !DIExpression(), !1252)
  %236 = load ptr, ptr %3, align 8, !dbg !1252
  %237 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %236, i32 0, i32 0, !dbg !1252
  %238 = load ptr, ptr %237, align 8, !dbg !1252
  %239 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %238, i32 0, i32 6, !dbg !1252
  %240 = getelementptr inbounds [8 x i32], ptr %239, i64 0, i64 0, !dbg !1252
  store ptr %240, ptr %10, align 8, !dbg !1252
  %241 = load ptr, ptr %3, align 8, !dbg !1252
  %242 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %241, i32 0, i32 52, !dbg !1252
  %243 = load i16, ptr %242, align 2, !dbg !1252
  %244 = zext i16 %243 to i32, !dbg !1252
  %245 = load ptr, ptr %10, align 8, !dbg !1252
  %246 = getelementptr inbounds i32, ptr %245, i64 0, !dbg !1252
  store i32 %244, ptr %246, align 4, !dbg !1252
  %247 = load ptr, ptr %3, align 8, !dbg !1252
  %248 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %247, i32 0, i32 53, !dbg !1252
  %249 = load i16, ptr %248, align 4, !dbg !1252
  %250 = zext i16 %249 to i32, !dbg !1252
  %251 = load ptr, ptr %10, align 8, !dbg !1252
  %252 = getelementptr inbounds i32, ptr %251, i64 1, !dbg !1252
  store i32 %250, ptr %252, align 4, !dbg !1252
  %253 = load ptr, ptr %3, align 8, !dbg !1252
  %254 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %253, i32 0, i32 51, !dbg !1252
  %255 = load i8, ptr %254, align 8, !dbg !1252
  %256 = zext i8 %255 to i32, !dbg !1252
  %257 = load ptr, ptr %10, align 8, !dbg !1252
  %258 = getelementptr inbounds i32, ptr %257, i64 2, !dbg !1252
  store i32 %256, ptr %258, align 4, !dbg !1252
  %259 = load ptr, ptr %3, align 8, !dbg !1252
  %260 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %259, i32 0, i32 0, !dbg !1252
  %261 = load ptr, ptr %260, align 8, !dbg !1252
  %262 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %261, i32 0, i32 5, !dbg !1252
  store i32 86, ptr %262, align 8, !dbg !1252
  %263 = load ptr, ptr %3, align 8, !dbg !1252
  %264 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %263, i32 0, i32 0, !dbg !1252
  %265 = load ptr, ptr %264, align 8, !dbg !1252
  %266 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %265, i32 0, i32 1, !dbg !1252
  %267 = load ptr, ptr %266, align 8, !dbg !1252
  %268 = load ptr, ptr %3, align 8, !dbg !1252
  call void %267(ptr noundef %268, i32 noundef 1), !dbg !1252
  br label %269, !dbg !1252

269:                                              ; preds = %235
  %270 = getelementptr inbounds [14 x i8], ptr %5, i64 0, i64 12, !dbg !1253
  %271 = load i8, ptr %270, align 1, !dbg !1253
  %272 = zext i8 %271 to i32, !dbg !1253
  %273 = getelementptr inbounds [14 x i8], ptr %5, i64 0, i64 13, !dbg !1255
  %274 = load i8, ptr %273, align 1, !dbg !1255
  %275 = zext i8 %274 to i32, !dbg !1255
  %276 = or i32 %272, %275, !dbg !1256
  %277 = icmp ne i32 %276, 0, !dbg !1256
  br i1 %277, label %278, label %305, !dbg !1256

278:                                              ; preds = %269
  %279 = load ptr, ptr %3, align 8, !dbg !1257
  %280 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %279, i32 0, i32 0, !dbg !1257
  %281 = load ptr, ptr %280, align 8, !dbg !1257
  %282 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %281, i32 0, i32 5, !dbg !1257
  store i32 89, ptr %282, align 8, !dbg !1257
  %283 = getelementptr inbounds [14 x i8], ptr %5, i64 0, i64 12, !dbg !1257
  %284 = load i8, ptr %283, align 1, !dbg !1257
  %285 = zext i8 %284 to i32, !dbg !1257
  %286 = load ptr, ptr %3, align 8, !dbg !1257
  %287 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %286, i32 0, i32 0, !dbg !1257
  %288 = load ptr, ptr %287, align 8, !dbg !1257
  %289 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %288, i32 0, i32 6, !dbg !1257
  %290 = getelementptr inbounds [8 x i32], ptr %289, i64 0, i64 0, !dbg !1257
  store i32 %285, ptr %290, align 4, !dbg !1257
  %291 = getelementptr inbounds [14 x i8], ptr %5, i64 0, i64 13, !dbg !1257
  %292 = load i8, ptr %291, align 1, !dbg !1257
  %293 = zext i8 %292 to i32, !dbg !1257
  %294 = load ptr, ptr %3, align 8, !dbg !1257
  %295 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %294, i32 0, i32 0, !dbg !1257
  %296 = load ptr, ptr %295, align 8, !dbg !1257
  %297 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %296, i32 0, i32 6, !dbg !1257
  %298 = getelementptr inbounds [8 x i32], ptr %297, i64 0, i64 1, !dbg !1257
  store i32 %293, ptr %298, align 4, !dbg !1257
  %299 = load ptr, ptr %3, align 8, !dbg !1257
  %300 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %299, i32 0, i32 0, !dbg !1257
  %301 = load ptr, ptr %300, align 8, !dbg !1257
  %302 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %301, i32 0, i32 1, !dbg !1257
  %303 = load ptr, ptr %302, align 8, !dbg !1257
  %304 = load ptr, ptr %3, align 8, !dbg !1257
  call void %303(ptr noundef %304, i32 noundef 1), !dbg !1257
  br label %305, !dbg !1257

305:                                              ; preds = %278, %269
  %306 = load i64, ptr %4, align 8, !dbg !1258
  %307 = getelementptr inbounds [14 x i8], ptr %5, i64 0, i64 12, !dbg !1260
  %308 = load i8, ptr %307, align 1, !dbg !1260
  %309 = zext i8 %308 to i64, !dbg !1261
  %310 = getelementptr inbounds [14 x i8], ptr %5, i64 0, i64 13, !dbg !1262
  %311 = load i8, ptr %310, align 1, !dbg !1262
  %312 = zext i8 %311 to i64, !dbg !1263
  %313 = mul nsw i64 %309, %312, !dbg !1264
  %314 = mul nsw i64 %313, 3, !dbg !1265
  %315 = icmp ne i64 %306, %314, !dbg !1266
  br i1 %315, label %316, label %334, !dbg !1266

316:                                              ; preds = %305
  %317 = load ptr, ptr %3, align 8, !dbg !1267
  %318 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %317, i32 0, i32 0, !dbg !1267
  %319 = load ptr, ptr %318, align 8, !dbg !1267
  %320 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %319, i32 0, i32 5, !dbg !1267
  store i32 87, ptr %320, align 8, !dbg !1267
  %321 = load i64, ptr %4, align 8, !dbg !1267
  %322 = trunc i64 %321 to i32, !dbg !1267
  %323 = load ptr, ptr %3, align 8, !dbg !1267
  %324 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %323, i32 0, i32 0, !dbg !1267
  %325 = load ptr, ptr %324, align 8, !dbg !1267
  %326 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %325, i32 0, i32 6, !dbg !1267
  %327 = getelementptr inbounds [8 x i32], ptr %326, i64 0, i64 0, !dbg !1267
  store i32 %322, ptr %327, align 4, !dbg !1267
  %328 = load ptr, ptr %3, align 8, !dbg !1267
  %329 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %328, i32 0, i32 0, !dbg !1267
  %330 = load ptr, ptr %329, align 8, !dbg !1267
  %331 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %330, i32 0, i32 1, !dbg !1267
  %332 = load ptr, ptr %331, align 8, !dbg !1267
  %333 = load ptr, ptr %3, align 8, !dbg !1267
  call void %332(ptr noundef %333, i32 noundef 1), !dbg !1267
  br label %334, !dbg !1267

334:                                              ; preds = %316, %305
  br label %354, !dbg !1268

335:                                              ; preds = %136, %131, %126, %121, %114
  %336 = load ptr, ptr %3, align 8, !dbg !1269
  %337 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %336, i32 0, i32 0, !dbg !1269
  %338 = load ptr, ptr %337, align 8, !dbg !1269
  %339 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %338, i32 0, i32 5, !dbg !1269
  store i32 76, ptr %339, align 8, !dbg !1269
  %340 = load i64, ptr %4, align 8, !dbg !1269
  %341 = trunc i64 %340 to i32, !dbg !1269
  %342 = add nsw i32 %341, 14, !dbg !1269
  %343 = load ptr, ptr %3, align 8, !dbg !1269
  %344 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %343, i32 0, i32 0, !dbg !1269
  %345 = load ptr, ptr %344, align 8, !dbg !1269
  %346 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %345, i32 0, i32 6, !dbg !1269
  %347 = getelementptr inbounds [8 x i32], ptr %346, i64 0, i64 0, !dbg !1269
  store i32 %342, ptr %347, align 4, !dbg !1269
  %348 = load ptr, ptr %3, align 8, !dbg !1269
  %349 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %348, i32 0, i32 0, !dbg !1269
  %350 = load ptr, ptr %349, align 8, !dbg !1269
  %351 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %350, i32 0, i32 1, !dbg !1269
  %352 = load ptr, ptr %351, align 8, !dbg !1269
  %353 = load ptr, ptr %3, align 8, !dbg !1269
  call void %352(ptr noundef %353, i32 noundef 1), !dbg !1269
  br label %354

354:                                              ; preds = %335, %334
  br label %373, !dbg !1271

355:                                              ; preds = %73
  %356 = load ptr, ptr %3, align 8, !dbg !1272
  %357 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %356, i32 0, i32 0, !dbg !1272
  %358 = load ptr, ptr %357, align 8, !dbg !1272
  %359 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %358, i32 0, i32 5, !dbg !1272
  store i32 76, ptr %359, align 8, !dbg !1272
  %360 = load i64, ptr %4, align 8, !dbg !1272
  %361 = trunc i64 %360 to i32, !dbg !1272
  %362 = load ptr, ptr %3, align 8, !dbg !1272
  %363 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %362, i32 0, i32 0, !dbg !1272
  %364 = load ptr, ptr %363, align 8, !dbg !1272
  %365 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %364, i32 0, i32 6, !dbg !1272
  %366 = getelementptr inbounds [8 x i32], ptr %365, i64 0, i64 0, !dbg !1272
  store i32 %361, ptr %366, align 4, !dbg !1272
  %367 = load ptr, ptr %3, align 8, !dbg !1272
  %368 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %367, i32 0, i32 0, !dbg !1272
  %369 = load ptr, ptr %368, align 8, !dbg !1272
  %370 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %369, i32 0, i32 1, !dbg !1272
  %371 = load ptr, ptr %370, align 8, !dbg !1272
  %372 = load ptr, ptr %3, align 8, !dbg !1272
  call void %371(ptr noundef %372, i32 noundef 1), !dbg !1272
  br label %373

373:                                              ; preds = %355, %354
  %374 = load ptr, ptr %8, align 8, !dbg !1274
  %375 = load ptr, ptr %7, align 8, !dbg !1274
  %376 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %375, i32 0, i32 0, !dbg !1274
  store ptr %374, ptr %376, align 8, !dbg !1274
  %377 = load i64, ptr %9, align 8, !dbg !1274
  %378 = load ptr, ptr %7, align 8, !dbg !1274
  %379 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %378, i32 0, i32 1, !dbg !1274
  store i64 %377, ptr %379, align 8, !dbg !1274
  %380 = load i64, ptr %4, align 8, !dbg !1275
  %381 = icmp sgt i64 %380, 0, !dbg !1277
  br i1 %381, label %382, label %390, !dbg !1277

382:                                              ; preds = %373
  %383 = load ptr, ptr %3, align 8, !dbg !1278
  %384 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %383, i32 0, i32 5, !dbg !1279
  %385 = load ptr, ptr %384, align 8, !dbg !1279
  %386 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %385, i32 0, i32 4, !dbg !1280
  %387 = load ptr, ptr %386, align 8, !dbg !1280
  %388 = load ptr, ptr %3, align 8, !dbg !1281
  %389 = load i64, ptr %4, align 8, !dbg !1282
  call void %387(ptr noundef %388, i64 noundef %389), !dbg !1283
  br label %390, !dbg !1283

390:                                              ; preds = %382, %373
  store i32 1, ptr %2, align 4, !dbg !1284
  br label %391, !dbg !1284

391:                                              ; preds = %390, %93, %56, %30
  %392 = load i32, ptr %2, align 4, !dbg !1285
  ret i32 %392, !dbg !1285
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_app14(ptr noundef %0) #0 !dbg !1286 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca [12 x i8], align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i64, align 8
  %14 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1287, !DIExpression(), !1288)
    #dbg_declare(ptr %4, !1289, !DIExpression(), !1290)
    #dbg_declare(ptr %5, !1291, !DIExpression(), !1295)
    #dbg_declare(ptr %6, !1296, !DIExpression(), !1297)
    #dbg_declare(ptr %7, !1298, !DIExpression(), !1299)
    #dbg_declare(ptr %8, !1300, !DIExpression(), !1301)
    #dbg_declare(ptr %9, !1302, !DIExpression(), !1303)
    #dbg_declare(ptr %10, !1304, !DIExpression(), !1305)
    #dbg_declare(ptr %11, !1306, !DIExpression(), !1307)
  %15 = load ptr, ptr %3, align 8, !dbg !1307
  %16 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %15, i32 0, i32 5, !dbg !1307
  %17 = load ptr, ptr %16, align 8, !dbg !1307
  store ptr %17, ptr %11, align 8, !dbg !1307
    #dbg_declare(ptr %12, !1308, !DIExpression(), !1307)
  %18 = load ptr, ptr %11, align 8, !dbg !1307
  %19 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %18, i32 0, i32 0, !dbg !1307
  %20 = load ptr, ptr %19, align 8, !dbg !1307
  store ptr %20, ptr %12, align 8, !dbg !1307
    #dbg_declare(ptr %13, !1309, !DIExpression(), !1307)
  %21 = load ptr, ptr %11, align 8, !dbg !1307
  %22 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %21, i32 0, i32 1, !dbg !1307
  %23 = load i64, ptr %22, align 8, !dbg !1307
  store i64 %23, ptr %13, align 8, !dbg !1307
  br label %24, !dbg !1310

24:                                               ; preds = %1
  %25 = load i64, ptr %13, align 8, !dbg !1311
  %26 = icmp eq i64 %25, 0, !dbg !1311
  br i1 %26, label %27, label %42, !dbg !1311

27:                                               ; preds = %24
  %28 = load ptr, ptr %11, align 8, !dbg !1314
  %29 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %28, i32 0, i32 3, !dbg !1314
  %30 = load ptr, ptr %29, align 8, !dbg !1314
  %31 = load ptr, ptr %3, align 8, !dbg !1314
  %32 = call i32 %30(ptr noundef %31), !dbg !1314
  %33 = icmp ne i32 %32, 0, !dbg !1314
  br i1 %33, label %35, label %34, !dbg !1314

34:                                               ; preds = %27
  store i32 0, ptr %2, align 4, !dbg !1317
  br label %264, !dbg !1317

35:                                               ; preds = %27
  %36 = load ptr, ptr %11, align 8, !dbg !1319
  %37 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %36, i32 0, i32 0, !dbg !1319
  %38 = load ptr, ptr %37, align 8, !dbg !1319
  store ptr %38, ptr %12, align 8, !dbg !1319
  %39 = load ptr, ptr %11, align 8, !dbg !1319
  %40 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %39, i32 0, i32 1, !dbg !1319
  %41 = load i64, ptr %40, align 8, !dbg !1319
  store i64 %41, ptr %13, align 8, !dbg !1319
  br label %42, !dbg !1319

42:                                               ; preds = %35, %24
  %43 = load i64, ptr %13, align 8, !dbg !1320
  %44 = add i64 %43, -1, !dbg !1320
  store i64 %44, ptr %13, align 8, !dbg !1320
  %45 = load ptr, ptr %12, align 8, !dbg !1320
  %46 = getelementptr inbounds nuw i8, ptr %45, i32 1, !dbg !1320
  store ptr %46, ptr %12, align 8, !dbg !1320
  %47 = load i8, ptr %45, align 1, !dbg !1320
  %48 = zext i8 %47 to i32, !dbg !1320
  %49 = shl i32 %48, 8, !dbg !1320
  %50 = zext i32 %49 to i64, !dbg !1320
  store i64 %50, ptr %4, align 8, !dbg !1320
  %51 = load i64, ptr %13, align 8, !dbg !1321
  %52 = icmp eq i64 %51, 0, !dbg !1321
  br i1 %52, label %53, label %68, !dbg !1321

53:                                               ; preds = %42
  %54 = load ptr, ptr %11, align 8, !dbg !1323
  %55 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %54, i32 0, i32 3, !dbg !1323
  %56 = load ptr, ptr %55, align 8, !dbg !1323
  %57 = load ptr, ptr %3, align 8, !dbg !1323
  %58 = call i32 %56(ptr noundef %57), !dbg !1323
  %59 = icmp ne i32 %58, 0, !dbg !1323
  br i1 %59, label %61, label %60, !dbg !1323

60:                                               ; preds = %53
  store i32 0, ptr %2, align 4, !dbg !1326
  br label %264, !dbg !1326

61:                                               ; preds = %53
  %62 = load ptr, ptr %11, align 8, !dbg !1328
  %63 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %62, i32 0, i32 0, !dbg !1328
  %64 = load ptr, ptr %63, align 8, !dbg !1328
  store ptr %64, ptr %12, align 8, !dbg !1328
  %65 = load ptr, ptr %11, align 8, !dbg !1328
  %66 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %65, i32 0, i32 1, !dbg !1328
  %67 = load i64, ptr %66, align 8, !dbg !1328
  store i64 %67, ptr %13, align 8, !dbg !1328
  br label %68, !dbg !1328

68:                                               ; preds = %61, %42
  %69 = load i64, ptr %13, align 8, !dbg !1320
  %70 = add i64 %69, -1, !dbg !1320
  store i64 %70, ptr %13, align 8, !dbg !1320
  %71 = load ptr, ptr %12, align 8, !dbg !1320
  %72 = getelementptr inbounds nuw i8, ptr %71, i32 1, !dbg !1320
  store ptr %72, ptr %12, align 8, !dbg !1320
  %73 = load i8, ptr %71, align 1, !dbg !1320
  %74 = zext i8 %73 to i64, !dbg !1320
  %75 = load i64, ptr %4, align 8, !dbg !1320
  %76 = add nsw i64 %75, %74, !dbg !1320
  store i64 %76, ptr %4, align 8, !dbg !1320
  br label %77, !dbg !1320

77:                                               ; preds = %68
  %78 = load i64, ptr %4, align 8, !dbg !1329
  %79 = sub nsw i64 %78, 2, !dbg !1329
  store i64 %79, ptr %4, align 8, !dbg !1329
  %80 = load i64, ptr %4, align 8, !dbg !1330
  %81 = icmp sge i64 %80, 12, !dbg !1332
  br i1 %81, label %82, label %228, !dbg !1332

82:                                               ; preds = %77
  store i32 0, ptr %6, align 4, !dbg !1333
  br label %83, !dbg !1336

83:                                               ; preds = %115, %82
  %84 = load i32, ptr %6, align 4, !dbg !1337
  %85 = icmp slt i32 %84, 12, !dbg !1339
  br i1 %85, label %86, label %118, !dbg !1340

86:                                               ; preds = %83
  br label %87, !dbg !1341

87:                                               ; preds = %86
  %88 = load i64, ptr %13, align 8, !dbg !1342
  %89 = icmp eq i64 %88, 0, !dbg !1342
  br i1 %89, label %90, label %105, !dbg !1342

90:                                               ; preds = %87
  %91 = load ptr, ptr %11, align 8, !dbg !1345
  %92 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %91, i32 0, i32 3, !dbg !1345
  %93 = load ptr, ptr %92, align 8, !dbg !1345
  %94 = load ptr, ptr %3, align 8, !dbg !1345
  %95 = call i32 %93(ptr noundef %94), !dbg !1345
  %96 = icmp ne i32 %95, 0, !dbg !1345
  br i1 %96, label %98, label %97, !dbg !1345

97:                                               ; preds = %90
  store i32 0, ptr %2, align 4, !dbg !1348
  br label %264, !dbg !1348

98:                                               ; preds = %90
  %99 = load ptr, ptr %11, align 8, !dbg !1350
  %100 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %99, i32 0, i32 0, !dbg !1350
  %101 = load ptr, ptr %100, align 8, !dbg !1350
  store ptr %101, ptr %12, align 8, !dbg !1350
  %102 = load ptr, ptr %11, align 8, !dbg !1350
  %103 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %102, i32 0, i32 1, !dbg !1350
  %104 = load i64, ptr %103, align 8, !dbg !1350
  store i64 %104, ptr %13, align 8, !dbg !1350
  br label %105, !dbg !1350

105:                                              ; preds = %98, %87
  %106 = load i64, ptr %13, align 8, !dbg !1351
  %107 = add i64 %106, -1, !dbg !1351
  store i64 %107, ptr %13, align 8, !dbg !1351
  %108 = load ptr, ptr %12, align 8, !dbg !1351
  %109 = getelementptr inbounds nuw i8, ptr %108, i32 1, !dbg !1351
  store ptr %109, ptr %12, align 8, !dbg !1351
  %110 = load i8, ptr %108, align 1, !dbg !1351
  %111 = load i32, ptr %6, align 4, !dbg !1351
  %112 = sext i32 %111 to i64, !dbg !1351
  %113 = getelementptr inbounds [12 x i8], ptr %5, i64 0, i64 %112, !dbg !1351
  store i8 %110, ptr %113, align 1, !dbg !1351
  br label %114, !dbg !1351

114:                                              ; preds = %105
  br label %115, !dbg !1351

115:                                              ; preds = %114
  %116 = load i32, ptr %6, align 4, !dbg !1352
  %117 = add nsw i32 %116, 1, !dbg !1352
  store i32 %117, ptr %6, align 4, !dbg !1352
  br label %83, !dbg !1353, !llvm.loop !1354

118:                                              ; preds = %83
  %119 = load i64, ptr %4, align 8, !dbg !1356
  %120 = sub nsw i64 %119, 12, !dbg !1356
  store i64 %120, ptr %4, align 8, !dbg !1356
  %121 = getelementptr inbounds [12 x i8], ptr %5, i64 0, i64 0, !dbg !1357
  %122 = load i8, ptr %121, align 1, !dbg !1357
  %123 = zext i8 %122 to i32, !dbg !1357
  %124 = icmp eq i32 %123, 65, !dbg !1359
  br i1 %124, label %125, label %208, !dbg !1360

125:                                              ; preds = %118
  %126 = getelementptr inbounds [12 x i8], ptr %5, i64 0, i64 1, !dbg !1361
  %127 = load i8, ptr %126, align 1, !dbg !1361
  %128 = zext i8 %127 to i32, !dbg !1361
  %129 = icmp eq i32 %128, 100, !dbg !1362
  br i1 %129, label %130, label %208, !dbg !1363

130:                                              ; preds = %125
  %131 = getelementptr inbounds [12 x i8], ptr %5, i64 0, i64 2, !dbg !1364
  %132 = load i8, ptr %131, align 1, !dbg !1364
  %133 = zext i8 %132 to i32, !dbg !1364
  %134 = icmp eq i32 %133, 111, !dbg !1365
  br i1 %134, label %135, label %208, !dbg !1366

135:                                              ; preds = %130
  %136 = getelementptr inbounds [12 x i8], ptr %5, i64 0, i64 3, !dbg !1367
  %137 = load i8, ptr %136, align 1, !dbg !1367
  %138 = zext i8 %137 to i32, !dbg !1367
  %139 = icmp eq i32 %138, 98, !dbg !1368
  br i1 %139, label %140, label %208, !dbg !1369

140:                                              ; preds = %135
  %141 = getelementptr inbounds [12 x i8], ptr %5, i64 0, i64 4, !dbg !1370
  %142 = load i8, ptr %141, align 1, !dbg !1370
  %143 = zext i8 %142 to i32, !dbg !1370
  %144 = icmp eq i32 %143, 101, !dbg !1371
  br i1 %144, label %145, label %208, !dbg !1369

145:                                              ; preds = %140
  %146 = getelementptr inbounds [12 x i8], ptr %5, i64 0, i64 5, !dbg !1372
  %147 = load i8, ptr %146, align 1, !dbg !1372
  %148 = zext i8 %147 to i32, !dbg !1372
  %149 = shl i32 %148, 8, !dbg !1374
  %150 = getelementptr inbounds [12 x i8], ptr %5, i64 0, i64 6, !dbg !1375
  %151 = load i8, ptr %150, align 1, !dbg !1375
  %152 = zext i8 %151 to i32, !dbg !1375
  %153 = add nsw i32 %149, %152, !dbg !1376
  store i32 %153, ptr %7, align 4, !dbg !1377
  %154 = getelementptr inbounds [12 x i8], ptr %5, i64 0, i64 7, !dbg !1378
  %155 = load i8, ptr %154, align 1, !dbg !1378
  %156 = zext i8 %155 to i32, !dbg !1378
  %157 = shl i32 %156, 8, !dbg !1379
  %158 = getelementptr inbounds [12 x i8], ptr %5, i64 0, i64 8, !dbg !1380
  %159 = load i8, ptr %158, align 1, !dbg !1380
  %160 = zext i8 %159 to i32, !dbg !1380
  %161 = add nsw i32 %157, %160, !dbg !1381
  store i32 %161, ptr %8, align 4, !dbg !1382
  %162 = getelementptr inbounds [12 x i8], ptr %5, i64 0, i64 9, !dbg !1383
  %163 = load i8, ptr %162, align 1, !dbg !1383
  %164 = zext i8 %163 to i32, !dbg !1383
  %165 = shl i32 %164, 8, !dbg !1384
  %166 = getelementptr inbounds [12 x i8], ptr %5, i64 0, i64 10, !dbg !1385
  %167 = load i8, ptr %166, align 1, !dbg !1385
  %168 = zext i8 %167 to i32, !dbg !1385
  %169 = add nsw i32 %165, %168, !dbg !1386
  store i32 %169, ptr %9, align 4, !dbg !1387
  %170 = getelementptr inbounds [12 x i8], ptr %5, i64 0, i64 11, !dbg !1388
  %171 = load i8, ptr %170, align 1, !dbg !1388
  %172 = zext i8 %171 to i32, !dbg !1388
  store i32 %172, ptr %10, align 4, !dbg !1389
  br label %173, !dbg !1390

173:                                              ; preds = %145
    #dbg_declare(ptr %14, !1391, !DIExpression(), !1393)
  %174 = load ptr, ptr %3, align 8, !dbg !1393
  %175 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %174, i32 0, i32 0, !dbg !1393
  %176 = load ptr, ptr %175, align 8, !dbg !1393
  %177 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %176, i32 0, i32 6, !dbg !1393
  %178 = getelementptr inbounds [8 x i32], ptr %177, i64 0, i64 0, !dbg !1393
  store ptr %178, ptr %14, align 8, !dbg !1393
  %179 = load i32, ptr %7, align 4, !dbg !1393
  %180 = load ptr, ptr %14, align 8, !dbg !1393
  %181 = getelementptr inbounds i32, ptr %180, i64 0, !dbg !1393
  store i32 %179, ptr %181, align 4, !dbg !1393
  %182 = load i32, ptr %8, align 4, !dbg !1393
  %183 = load ptr, ptr %14, align 8, !dbg !1393
  %184 = getelementptr inbounds i32, ptr %183, i64 1, !dbg !1393
  store i32 %182, ptr %184, align 4, !dbg !1393
  %185 = load i32, ptr %9, align 4, !dbg !1393
  %186 = load ptr, ptr %14, align 8, !dbg !1393
  %187 = getelementptr inbounds i32, ptr %186, i64 2, !dbg !1393
  store i32 %185, ptr %187, align 4, !dbg !1393
  %188 = load i32, ptr %10, align 4, !dbg !1393
  %189 = load ptr, ptr %14, align 8, !dbg !1393
  %190 = getelementptr inbounds i32, ptr %189, i64 3, !dbg !1393
  store i32 %188, ptr %190, align 4, !dbg !1393
  %191 = load ptr, ptr %3, align 8, !dbg !1393
  %192 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %191, i32 0, i32 0, !dbg !1393
  %193 = load ptr, ptr %192, align 8, !dbg !1393
  %194 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %193, i32 0, i32 5, !dbg !1393
  store i32 75, ptr %194, align 8, !dbg !1393
  %195 = load ptr, ptr %3, align 8, !dbg !1393
  %196 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %195, i32 0, i32 0, !dbg !1393
  %197 = load ptr, ptr %196, align 8, !dbg !1393
  %198 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %197, i32 0, i32 1, !dbg !1393
  %199 = load ptr, ptr %198, align 8, !dbg !1393
  %200 = load ptr, ptr %3, align 8, !dbg !1393
  call void %199(ptr noundef %200, i32 noundef 1), !dbg !1393
  br label %201, !dbg !1393

201:                                              ; preds = %173
  %202 = load ptr, ptr %3, align 8, !dbg !1394
  %203 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %202, i32 0, i32 54, !dbg !1395
  store i32 1, ptr %203, align 8, !dbg !1396
  %204 = load i32, ptr %10, align 4, !dbg !1397
  %205 = trunc i32 %204 to i8, !dbg !1398
  %206 = load ptr, ptr %3, align 8, !dbg !1399
  %207 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %206, i32 0, i32 55, !dbg !1400
  store i8 %205, ptr %207, align 4, !dbg !1401
  br label %227, !dbg !1402

208:                                              ; preds = %140, %135, %130, %125, %118
  %209 = load ptr, ptr %3, align 8, !dbg !1403
  %210 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %209, i32 0, i32 0, !dbg !1403
  %211 = load ptr, ptr %210, align 8, !dbg !1403
  %212 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %211, i32 0, i32 5, !dbg !1403
  store i32 77, ptr %212, align 8, !dbg !1403
  %213 = load i64, ptr %4, align 8, !dbg !1403
  %214 = trunc i64 %213 to i32, !dbg !1403
  %215 = add nsw i32 %214, 12, !dbg !1403
  %216 = load ptr, ptr %3, align 8, !dbg !1403
  %217 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %216, i32 0, i32 0, !dbg !1403
  %218 = load ptr, ptr %217, align 8, !dbg !1403
  %219 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %218, i32 0, i32 6, !dbg !1403
  %220 = getelementptr inbounds [8 x i32], ptr %219, i64 0, i64 0, !dbg !1403
  store i32 %215, ptr %220, align 4, !dbg !1403
  %221 = load ptr, ptr %3, align 8, !dbg !1403
  %222 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %221, i32 0, i32 0, !dbg !1403
  %223 = load ptr, ptr %222, align 8, !dbg !1403
  %224 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %223, i32 0, i32 1, !dbg !1403
  %225 = load ptr, ptr %224, align 8, !dbg !1403
  %226 = load ptr, ptr %3, align 8, !dbg !1403
  call void %225(ptr noundef %226, i32 noundef 1), !dbg !1403
  br label %227

227:                                              ; preds = %208, %201
  br label %246, !dbg !1405

228:                                              ; preds = %77
  %229 = load ptr, ptr %3, align 8, !dbg !1406
  %230 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %229, i32 0, i32 0, !dbg !1406
  %231 = load ptr, ptr %230, align 8, !dbg !1406
  %232 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %231, i32 0, i32 5, !dbg !1406
  store i32 77, ptr %232, align 8, !dbg !1406
  %233 = load i64, ptr %4, align 8, !dbg !1406
  %234 = trunc i64 %233 to i32, !dbg !1406
  %235 = load ptr, ptr %3, align 8, !dbg !1406
  %236 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %235, i32 0, i32 0, !dbg !1406
  %237 = load ptr, ptr %236, align 8, !dbg !1406
  %238 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %237, i32 0, i32 6, !dbg !1406
  %239 = getelementptr inbounds [8 x i32], ptr %238, i64 0, i64 0, !dbg !1406
  store i32 %234, ptr %239, align 4, !dbg !1406
  %240 = load ptr, ptr %3, align 8, !dbg !1406
  %241 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %240, i32 0, i32 0, !dbg !1406
  %242 = load ptr, ptr %241, align 8, !dbg !1406
  %243 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %242, i32 0, i32 1, !dbg !1406
  %244 = load ptr, ptr %243, align 8, !dbg !1406
  %245 = load ptr, ptr %3, align 8, !dbg !1406
  call void %244(ptr noundef %245, i32 noundef 1), !dbg !1406
  br label %246

246:                                              ; preds = %228, %227
  %247 = load ptr, ptr %12, align 8, !dbg !1408
  %248 = load ptr, ptr %11, align 8, !dbg !1408
  %249 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %248, i32 0, i32 0, !dbg !1408
  store ptr %247, ptr %249, align 8, !dbg !1408
  %250 = load i64, ptr %13, align 8, !dbg !1408
  %251 = load ptr, ptr %11, align 8, !dbg !1408
  %252 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %251, i32 0, i32 1, !dbg !1408
  store i64 %250, ptr %252, align 8, !dbg !1408
  %253 = load i64, ptr %4, align 8, !dbg !1409
  %254 = icmp sgt i64 %253, 0, !dbg !1411
  br i1 %254, label %255, label %263, !dbg !1411

255:                                              ; preds = %246
  %256 = load ptr, ptr %3, align 8, !dbg !1412
  %257 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %256, i32 0, i32 5, !dbg !1413
  %258 = load ptr, ptr %257, align 8, !dbg !1413
  %259 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %258, i32 0, i32 4, !dbg !1414
  %260 = load ptr, ptr %259, align 8, !dbg !1414
  %261 = load ptr, ptr %3, align 8, !dbg !1415
  %262 = load i64, ptr %4, align 8, !dbg !1416
  call void %260(ptr noundef %261, i64 noundef %262), !dbg !1417
  br label %263, !dbg !1417

263:                                              ; preds = %255, %246
  store i32 1, ptr %2, align 4, !dbg !1418
  br label %264, !dbg !1418

264:                                              ; preds = %263, %97, %60, %34
  %265 = load i32, ptr %2, align 4, !dbg !1419
  ret i32 %265, !dbg !1419
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @first_marker(ptr noundef %0) #0 !dbg !1420 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1421, !DIExpression(), !1422)
    #dbg_declare(ptr %4, !1423, !DIExpression(), !1424)
    #dbg_declare(ptr %5, !1425, !DIExpression(), !1426)
    #dbg_declare(ptr %6, !1427, !DIExpression(), !1428)
  %9 = load ptr, ptr %3, align 8, !dbg !1428
  %10 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %9, i32 0, i32 5, !dbg !1428
  %11 = load ptr, ptr %10, align 8, !dbg !1428
  store ptr %11, ptr %6, align 8, !dbg !1428
    #dbg_declare(ptr %7, !1429, !DIExpression(), !1428)
  %12 = load ptr, ptr %6, align 8, !dbg !1428
  %13 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %12, i32 0, i32 0, !dbg !1428
  %14 = load ptr, ptr %13, align 8, !dbg !1428
  store ptr %14, ptr %7, align 8, !dbg !1428
    #dbg_declare(ptr %8, !1430, !DIExpression(), !1428)
  %15 = load ptr, ptr %6, align 8, !dbg !1428
  %16 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %15, i32 0, i32 1, !dbg !1428
  %17 = load i64, ptr %16, align 8, !dbg !1428
  store i64 %17, ptr %8, align 8, !dbg !1428
  br label %18, !dbg !1431

18:                                               ; preds = %1
  %19 = load i64, ptr %8, align 8, !dbg !1432
  %20 = icmp eq i64 %19, 0, !dbg !1432
  br i1 %20, label %21, label %36, !dbg !1432

21:                                               ; preds = %18
  %22 = load ptr, ptr %6, align 8, !dbg !1435
  %23 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %22, i32 0, i32 3, !dbg !1435
  %24 = load ptr, ptr %23, align 8, !dbg !1435
  %25 = load ptr, ptr %3, align 8, !dbg !1435
  %26 = call i32 %24(ptr noundef %25), !dbg !1435
  %27 = icmp ne i32 %26, 0, !dbg !1435
  br i1 %27, label %29, label %28, !dbg !1435

28:                                               ; preds = %21
  store i32 0, ptr %2, align 4, !dbg !1438
  br label %108, !dbg !1438

29:                                               ; preds = %21
  %30 = load ptr, ptr %6, align 8, !dbg !1440
  %31 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %30, i32 0, i32 0, !dbg !1440
  %32 = load ptr, ptr %31, align 8, !dbg !1440
  store ptr %32, ptr %7, align 8, !dbg !1440
  %33 = load ptr, ptr %6, align 8, !dbg !1440
  %34 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %33, i32 0, i32 1, !dbg !1440
  %35 = load i64, ptr %34, align 8, !dbg !1440
  store i64 %35, ptr %8, align 8, !dbg !1440
  br label %36, !dbg !1440

36:                                               ; preds = %29, %18
  %37 = load i64, ptr %8, align 8, !dbg !1441
  %38 = add i64 %37, -1, !dbg !1441
  store i64 %38, ptr %8, align 8, !dbg !1441
  %39 = load ptr, ptr %7, align 8, !dbg !1441
  %40 = getelementptr inbounds nuw i8, ptr %39, i32 1, !dbg !1441
  store ptr %40, ptr %7, align 8, !dbg !1441
  %41 = load i8, ptr %39, align 1, !dbg !1441
  %42 = zext i8 %41 to i32, !dbg !1441
  store i32 %42, ptr %4, align 4, !dbg !1441
  br label %43, !dbg !1441

43:                                               ; preds = %36
  br label %44, !dbg !1442

44:                                               ; preds = %43
  %45 = load i64, ptr %8, align 8, !dbg !1443
  %46 = icmp eq i64 %45, 0, !dbg !1443
  br i1 %46, label %47, label %62, !dbg !1443

47:                                               ; preds = %44
  %48 = load ptr, ptr %6, align 8, !dbg !1446
  %49 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %48, i32 0, i32 3, !dbg !1446
  %50 = load ptr, ptr %49, align 8, !dbg !1446
  %51 = load ptr, ptr %3, align 8, !dbg !1446
  %52 = call i32 %50(ptr noundef %51), !dbg !1446
  %53 = icmp ne i32 %52, 0, !dbg !1446
  br i1 %53, label %55, label %54, !dbg !1446

54:                                               ; preds = %47
  store i32 0, ptr %2, align 4, !dbg !1449
  br label %108, !dbg !1449

55:                                               ; preds = %47
  %56 = load ptr, ptr %6, align 8, !dbg !1451
  %57 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %56, i32 0, i32 0, !dbg !1451
  %58 = load ptr, ptr %57, align 8, !dbg !1451
  store ptr %58, ptr %7, align 8, !dbg !1451
  %59 = load ptr, ptr %6, align 8, !dbg !1451
  %60 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %59, i32 0, i32 1, !dbg !1451
  %61 = load i64, ptr %60, align 8, !dbg !1451
  store i64 %61, ptr %8, align 8, !dbg !1451
  br label %62, !dbg !1451

62:                                               ; preds = %55, %44
  %63 = load i64, ptr %8, align 8, !dbg !1452
  %64 = add i64 %63, -1, !dbg !1452
  store i64 %64, ptr %8, align 8, !dbg !1452
  %65 = load ptr, ptr %7, align 8, !dbg !1452
  %66 = getelementptr inbounds nuw i8, ptr %65, i32 1, !dbg !1452
  store ptr %66, ptr %7, align 8, !dbg !1452
  %67 = load i8, ptr %65, align 1, !dbg !1452
  %68 = zext i8 %67 to i32, !dbg !1452
  store i32 %68, ptr %5, align 4, !dbg !1452
  br label %69, !dbg !1452

69:                                               ; preds = %62
  %70 = load i32, ptr %4, align 4, !dbg !1453
  %71 = icmp ne i32 %70, 255, !dbg !1455
  br i1 %71, label %75, label %72, !dbg !1456

72:                                               ; preds = %69
  %73 = load i32, ptr %5, align 4, !dbg !1457
  %74 = icmp ne i32 %73, 216, !dbg !1458
  br i1 %74, label %75, label %98, !dbg !1456

75:                                               ; preds = %72, %69
  %76 = load ptr, ptr %3, align 8, !dbg !1459
  %77 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %76, i32 0, i32 0, !dbg !1459
  %78 = load ptr, ptr %77, align 8, !dbg !1459
  %79 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %78, i32 0, i32 5, !dbg !1459
  store i32 52, ptr %79, align 8, !dbg !1459
  %80 = load i32, ptr %4, align 4, !dbg !1459
  %81 = load ptr, ptr %3, align 8, !dbg !1459
  %82 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %81, i32 0, i32 0, !dbg !1459
  %83 = load ptr, ptr %82, align 8, !dbg !1459
  %84 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %83, i32 0, i32 6, !dbg !1459
  %85 = getelementptr inbounds [8 x i32], ptr %84, i64 0, i64 0, !dbg !1459
  store i32 %80, ptr %85, align 4, !dbg !1459
  %86 = load i32, ptr %5, align 4, !dbg !1459
  %87 = load ptr, ptr %3, align 8, !dbg !1459
  %88 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %87, i32 0, i32 0, !dbg !1459
  %89 = load ptr, ptr %88, align 8, !dbg !1459
  %90 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %89, i32 0, i32 6, !dbg !1459
  %91 = getelementptr inbounds [8 x i32], ptr %90, i64 0, i64 1, !dbg !1459
  store i32 %86, ptr %91, align 4, !dbg !1459
  %92 = load ptr, ptr %3, align 8, !dbg !1459
  %93 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %92, i32 0, i32 0, !dbg !1459
  %94 = load ptr, ptr %93, align 8, !dbg !1459
  %95 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %94, i32 0, i32 0, !dbg !1459
  %96 = load ptr, ptr %95, align 8, !dbg !1459
  %97 = load ptr, ptr %3, align 8, !dbg !1459
  call void %96(ptr noundef %97), !dbg !1459
  br label %98, !dbg !1459

98:                                               ; preds = %75, %72
  %99 = load i32, ptr %5, align 4, !dbg !1460
  %100 = load ptr, ptr %3, align 8, !dbg !1461
  %101 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %100, i32 0, i32 72, !dbg !1462
  store i32 %99, ptr %101, align 4, !dbg !1463
  %102 = load ptr, ptr %7, align 8, !dbg !1464
  %103 = load ptr, ptr %6, align 8, !dbg !1464
  %104 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %103, i32 0, i32 0, !dbg !1464
  store ptr %102, ptr %104, align 8, !dbg !1464
  %105 = load i64, ptr %8, align 8, !dbg !1464
  %106 = load ptr, ptr %6, align 8, !dbg !1464
  %107 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %106, i32 0, i32 1, !dbg !1464
  store i64 %105, ptr %107, align 8, !dbg !1464
  store i32 1, ptr %2, align 4, !dbg !1465
  br label %108, !dbg !1465

108:                                              ; preds = %98, %54, %28
  %109 = load i32, ptr %2, align 4, !dbg !1466
  ret i32 %109, !dbg !1466
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_soi(ptr noundef %0) #0 !dbg !1467 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !1468, !DIExpression(), !1469)
    #dbg_declare(ptr %3, !1470, !DIExpression(), !1471)
  %4 = load ptr, ptr %2, align 8, !dbg !1472
  %5 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 0, !dbg !1472
  %6 = load ptr, ptr %5, align 8, !dbg !1472
  %7 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %6, i32 0, i32 5, !dbg !1472
  store i32 101, ptr %7, align 8, !dbg !1472
  %8 = load ptr, ptr %2, align 8, !dbg !1472
  %9 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %8, i32 0, i32 0, !dbg !1472
  %10 = load ptr, ptr %9, align 8, !dbg !1472
  %11 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %10, i32 0, i32 1, !dbg !1472
  %12 = load ptr, ptr %11, align 8, !dbg !1472
  %13 = load ptr, ptr %2, align 8, !dbg !1472
  call void %12(ptr noundef %13, i32 noundef 1), !dbg !1472
  %14 = load ptr, ptr %2, align 8, !dbg !1473
  %15 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %14, i32 0, i32 78, !dbg !1475
  %16 = load ptr, ptr %15, align 8, !dbg !1475
  %17 = getelementptr inbounds nuw %struct.jpeg_marker_reader, ptr %16, i32 0, i32 5, !dbg !1476
  %18 = load i32, ptr %17, align 8, !dbg !1476
  %19 = icmp ne i32 %18, 0, !dbg !1473
  br i1 %19, label %20, label %31, !dbg !1473

20:                                               ; preds = %1
  %21 = load ptr, ptr %2, align 8, !dbg !1477
  %22 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %21, i32 0, i32 0, !dbg !1477
  %23 = load ptr, ptr %22, align 8, !dbg !1477
  %24 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %23, i32 0, i32 5, !dbg !1477
  store i32 60, ptr %24, align 8, !dbg !1477
  %25 = load ptr, ptr %2, align 8, !dbg !1477
  %26 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %25, i32 0, i32 0, !dbg !1477
  %27 = load ptr, ptr %26, align 8, !dbg !1477
  %28 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %27, i32 0, i32 0, !dbg !1477
  %29 = load ptr, ptr %28, align 8, !dbg !1477
  %30 = load ptr, ptr %2, align 8, !dbg !1477
  call void %29(ptr noundef %30), !dbg !1477
  br label %31, !dbg !1477

31:                                               ; preds = %20, %1
  store i32 0, ptr %3, align 4, !dbg !1478
  br label %32, !dbg !1480

32:                                               ; preds = %51, %31
  %33 = load i32, ptr %3, align 4, !dbg !1481
  %34 = icmp slt i32 %33, 16, !dbg !1483
  br i1 %34, label %35, label %54, !dbg !1484

35:                                               ; preds = %32
  %36 = load ptr, ptr %2, align 8, !dbg !1485
  %37 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %36, i32 0, i32 46, !dbg !1487
  %38 = load i32, ptr %3, align 4, !dbg !1488
  %39 = sext i32 %38 to i64, !dbg !1485
  %40 = getelementptr inbounds [16 x i8], ptr %37, i64 0, i64 %39, !dbg !1485
  store i8 0, ptr %40, align 1, !dbg !1489
  %41 = load ptr, ptr %2, align 8, !dbg !1490
  %42 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %41, i32 0, i32 47, !dbg !1491
  %43 = load i32, ptr %3, align 4, !dbg !1492
  %44 = sext i32 %43 to i64, !dbg !1490
  %45 = getelementptr inbounds [16 x i8], ptr %42, i64 0, i64 %44, !dbg !1490
  store i8 1, ptr %45, align 1, !dbg !1493
  %46 = load ptr, ptr %2, align 8, !dbg !1494
  %47 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %46, i32 0, i32 48, !dbg !1495
  %48 = load i32, ptr %3, align 4, !dbg !1496
  %49 = sext i32 %48 to i64, !dbg !1494
  %50 = getelementptr inbounds [16 x i8], ptr %47, i64 0, i64 %49, !dbg !1494
  store i8 5, ptr %50, align 1, !dbg !1497
  br label %51, !dbg !1498

51:                                               ; preds = %35
  %52 = load i32, ptr %3, align 4, !dbg !1499
  %53 = add nsw i32 %52, 1, !dbg !1499
  store i32 %53, ptr %3, align 4, !dbg !1499
  br label %32, !dbg !1500, !llvm.loop !1501

54:                                               ; preds = %32
  %55 = load ptr, ptr %2, align 8, !dbg !1503
  %56 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %55, i32 0, i32 49, !dbg !1504
  store i32 0, ptr %56, align 8, !dbg !1505
  %57 = load ptr, ptr %2, align 8, !dbg !1506
  %58 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %57, i32 0, i32 9, !dbg !1507
  store i32 0, ptr %58, align 4, !dbg !1508
  %59 = load ptr, ptr %2, align 8, !dbg !1509
  %60 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %59, i32 0, i32 56, !dbg !1510
  store i32 0, ptr %60, align 8, !dbg !1511
  %61 = load ptr, ptr %2, align 8, !dbg !1512
  %62 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %61, i32 0, i32 50, !dbg !1513
  store i32 0, ptr %62, align 4, !dbg !1514
  %63 = load ptr, ptr %2, align 8, !dbg !1515
  %64 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %63, i32 0, i32 51, !dbg !1516
  store i8 0, ptr %64, align 8, !dbg !1517
  %65 = load ptr, ptr %2, align 8, !dbg !1518
  %66 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %65, i32 0, i32 52, !dbg !1519
  store i16 1, ptr %66, align 2, !dbg !1520
  %67 = load ptr, ptr %2, align 8, !dbg !1521
  %68 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %67, i32 0, i32 53, !dbg !1522
  store i16 1, ptr %68, align 4, !dbg !1523
  %69 = load ptr, ptr %2, align 8, !dbg !1524
  %70 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %69, i32 0, i32 54, !dbg !1525
  store i32 0, ptr %70, align 8, !dbg !1526
  %71 = load ptr, ptr %2, align 8, !dbg !1527
  %72 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %71, i32 0, i32 55, !dbg !1528
  store i8 0, ptr %72, align 4, !dbg !1529
  %73 = load ptr, ptr %2, align 8, !dbg !1530
  %74 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %73, i32 0, i32 78, !dbg !1531
  %75 = load ptr, ptr %74, align 8, !dbg !1531
  %76 = getelementptr inbounds nuw %struct.jpeg_marker_reader, ptr %75, i32 0, i32 5, !dbg !1532
  store i32 1, ptr %76, align 8, !dbg !1533
  ret i32 1, !dbg !1534
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_sof(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !1535 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i64, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !1538, !DIExpression(), !1539)
  store i32 %1, ptr %6, align 4
    #dbg_declare(ptr %6, !1540, !DIExpression(), !1541)
  store i32 %2, ptr %7, align 4
    #dbg_declare(ptr %7, !1542, !DIExpression(), !1543)
    #dbg_declare(ptr %8, !1544, !DIExpression(), !1545)
    #dbg_declare(ptr %9, !1546, !DIExpression(), !1547)
    #dbg_declare(ptr %10, !1548, !DIExpression(), !1549)
    #dbg_declare(ptr %11, !1550, !DIExpression(), !1551)
    #dbg_declare(ptr %12, !1552, !DIExpression(), !1553)
  %17 = load ptr, ptr %5, align 8, !dbg !1553
  %18 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %17, i32 0, i32 5, !dbg !1553
  %19 = load ptr, ptr %18, align 8, !dbg !1553
  store ptr %19, ptr %12, align 8, !dbg !1553
    #dbg_declare(ptr %13, !1554, !DIExpression(), !1553)
  %20 = load ptr, ptr %12, align 8, !dbg !1553
  %21 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %20, i32 0, i32 0, !dbg !1553
  %22 = load ptr, ptr %21, align 8, !dbg !1553
  store ptr %22, ptr %13, align 8, !dbg !1553
    #dbg_declare(ptr %14, !1555, !DIExpression(), !1553)
  %23 = load ptr, ptr %12, align 8, !dbg !1553
  %24 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %23, i32 0, i32 1, !dbg !1553
  %25 = load i64, ptr %24, align 8, !dbg !1553
  store i64 %25, ptr %14, align 8, !dbg !1553
  %26 = load i32, ptr %6, align 4, !dbg !1556
  %27 = load ptr, ptr %5, align 8, !dbg !1557
  %28 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %27, i32 0, i32 44, !dbg !1558
  store i32 %26, ptr %28, align 8, !dbg !1559
  %29 = load i32, ptr %7, align 4, !dbg !1560
  %30 = load ptr, ptr %5, align 8, !dbg !1561
  %31 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %30, i32 0, i32 45, !dbg !1562
  store i32 %29, ptr %31, align 4, !dbg !1563
  br label %32, !dbg !1564

32:                                               ; preds = %3
  %33 = load i64, ptr %14, align 8, !dbg !1565
  %34 = icmp eq i64 %33, 0, !dbg !1565
  br i1 %34, label %35, label %50, !dbg !1565

35:                                               ; preds = %32
  %36 = load ptr, ptr %12, align 8, !dbg !1568
  %37 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %36, i32 0, i32 3, !dbg !1568
  %38 = load ptr, ptr %37, align 8, !dbg !1568
  %39 = load ptr, ptr %5, align 8, !dbg !1568
  %40 = call i32 %38(ptr noundef %39), !dbg !1568
  %41 = icmp ne i32 %40, 0, !dbg !1568
  br i1 %41, label %43, label %42, !dbg !1568

42:                                               ; preds = %35
  store i32 0, ptr %4, align 4, !dbg !1571
  br label %535, !dbg !1571

43:                                               ; preds = %35
  %44 = load ptr, ptr %12, align 8, !dbg !1573
  %45 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %44, i32 0, i32 0, !dbg !1573
  %46 = load ptr, ptr %45, align 8, !dbg !1573
  store ptr %46, ptr %13, align 8, !dbg !1573
  %47 = load ptr, ptr %12, align 8, !dbg !1573
  %48 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %47, i32 0, i32 1, !dbg !1573
  %49 = load i64, ptr %48, align 8, !dbg !1573
  store i64 %49, ptr %14, align 8, !dbg !1573
  br label %50, !dbg !1573

50:                                               ; preds = %43, %32
  %51 = load i64, ptr %14, align 8, !dbg !1574
  %52 = add i64 %51, -1, !dbg !1574
  store i64 %52, ptr %14, align 8, !dbg !1574
  %53 = load ptr, ptr %13, align 8, !dbg !1574
  %54 = getelementptr inbounds nuw i8, ptr %53, i32 1, !dbg !1574
  store ptr %54, ptr %13, align 8, !dbg !1574
  %55 = load i8, ptr %53, align 1, !dbg !1574
  %56 = zext i8 %55 to i32, !dbg !1574
  %57 = shl i32 %56, 8, !dbg !1574
  %58 = zext i32 %57 to i64, !dbg !1574
  store i64 %58, ptr %8, align 8, !dbg !1574
  %59 = load i64, ptr %14, align 8, !dbg !1575
  %60 = icmp eq i64 %59, 0, !dbg !1575
  br i1 %60, label %61, label %76, !dbg !1575

61:                                               ; preds = %50
  %62 = load ptr, ptr %12, align 8, !dbg !1577
  %63 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %62, i32 0, i32 3, !dbg !1577
  %64 = load ptr, ptr %63, align 8, !dbg !1577
  %65 = load ptr, ptr %5, align 8, !dbg !1577
  %66 = call i32 %64(ptr noundef %65), !dbg !1577
  %67 = icmp ne i32 %66, 0, !dbg !1577
  br i1 %67, label %69, label %68, !dbg !1577

68:                                               ; preds = %61
  store i32 0, ptr %4, align 4, !dbg !1580
  br label %535, !dbg !1580

69:                                               ; preds = %61
  %70 = load ptr, ptr %12, align 8, !dbg !1582
  %71 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %70, i32 0, i32 0, !dbg !1582
  %72 = load ptr, ptr %71, align 8, !dbg !1582
  store ptr %72, ptr %13, align 8, !dbg !1582
  %73 = load ptr, ptr %12, align 8, !dbg !1582
  %74 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %73, i32 0, i32 1, !dbg !1582
  %75 = load i64, ptr %74, align 8, !dbg !1582
  store i64 %75, ptr %14, align 8, !dbg !1582
  br label %76, !dbg !1582

76:                                               ; preds = %69, %50
  %77 = load i64, ptr %14, align 8, !dbg !1574
  %78 = add i64 %77, -1, !dbg !1574
  store i64 %78, ptr %14, align 8, !dbg !1574
  %79 = load ptr, ptr %13, align 8, !dbg !1574
  %80 = getelementptr inbounds nuw i8, ptr %79, i32 1, !dbg !1574
  store ptr %80, ptr %13, align 8, !dbg !1574
  %81 = load i8, ptr %79, align 1, !dbg !1574
  %82 = zext i8 %81 to i64, !dbg !1574
  %83 = load i64, ptr %8, align 8, !dbg !1574
  %84 = add nsw i64 %83, %82, !dbg !1574
  store i64 %84, ptr %8, align 8, !dbg !1574
  br label %85, !dbg !1574

85:                                               ; preds = %76
  br label %86, !dbg !1583

86:                                               ; preds = %85
  %87 = load i64, ptr %14, align 8, !dbg !1584
  %88 = icmp eq i64 %87, 0, !dbg !1584
  br i1 %88, label %89, label %104, !dbg !1584

89:                                               ; preds = %86
  %90 = load ptr, ptr %12, align 8, !dbg !1587
  %91 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %90, i32 0, i32 3, !dbg !1587
  %92 = load ptr, ptr %91, align 8, !dbg !1587
  %93 = load ptr, ptr %5, align 8, !dbg !1587
  %94 = call i32 %92(ptr noundef %93), !dbg !1587
  %95 = icmp ne i32 %94, 0, !dbg !1587
  br i1 %95, label %97, label %96, !dbg !1587

96:                                               ; preds = %89
  store i32 0, ptr %4, align 4, !dbg !1590
  br label %535, !dbg !1590

97:                                               ; preds = %89
  %98 = load ptr, ptr %12, align 8, !dbg !1592
  %99 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %98, i32 0, i32 0, !dbg !1592
  %100 = load ptr, ptr %99, align 8, !dbg !1592
  store ptr %100, ptr %13, align 8, !dbg !1592
  %101 = load ptr, ptr %12, align 8, !dbg !1592
  %102 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %101, i32 0, i32 1, !dbg !1592
  %103 = load i64, ptr %102, align 8, !dbg !1592
  store i64 %103, ptr %14, align 8, !dbg !1592
  br label %104, !dbg !1592

104:                                              ; preds = %97, %86
  %105 = load i64, ptr %14, align 8, !dbg !1593
  %106 = add i64 %105, -1, !dbg !1593
  store i64 %106, ptr %14, align 8, !dbg !1593
  %107 = load ptr, ptr %13, align 8, !dbg !1593
  %108 = getelementptr inbounds nuw i8, ptr %107, i32 1, !dbg !1593
  store ptr %108, ptr %13, align 8, !dbg !1593
  %109 = load i8, ptr %107, align 1, !dbg !1593
  %110 = zext i8 %109 to i32, !dbg !1593
  %111 = load ptr, ptr %5, align 8, !dbg !1593
  %112 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %111, i32 0, i32 42, !dbg !1593
  store i32 %110, ptr %112, align 8, !dbg !1593
  br label %113, !dbg !1593

113:                                              ; preds = %104
  br label %114, !dbg !1594

114:                                              ; preds = %113
  %115 = load i64, ptr %14, align 8, !dbg !1595
  %116 = icmp eq i64 %115, 0, !dbg !1595
  br i1 %116, label %117, label %132, !dbg !1595

117:                                              ; preds = %114
  %118 = load ptr, ptr %12, align 8, !dbg !1598
  %119 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %118, i32 0, i32 3, !dbg !1598
  %120 = load ptr, ptr %119, align 8, !dbg !1598
  %121 = load ptr, ptr %5, align 8, !dbg !1598
  %122 = call i32 %120(ptr noundef %121), !dbg !1598
  %123 = icmp ne i32 %122, 0, !dbg !1598
  br i1 %123, label %125, label %124, !dbg !1598

124:                                              ; preds = %117
  store i32 0, ptr %4, align 4, !dbg !1601
  br label %535, !dbg !1601

125:                                              ; preds = %117
  %126 = load ptr, ptr %12, align 8, !dbg !1603
  %127 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %126, i32 0, i32 0, !dbg !1603
  %128 = load ptr, ptr %127, align 8, !dbg !1603
  store ptr %128, ptr %13, align 8, !dbg !1603
  %129 = load ptr, ptr %12, align 8, !dbg !1603
  %130 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %129, i32 0, i32 1, !dbg !1603
  %131 = load i64, ptr %130, align 8, !dbg !1603
  store i64 %131, ptr %14, align 8, !dbg !1603
  br label %132, !dbg !1603

132:                                              ; preds = %125, %114
  %133 = load i64, ptr %14, align 8, !dbg !1604
  %134 = add i64 %133, -1, !dbg !1604
  store i64 %134, ptr %14, align 8, !dbg !1604
  %135 = load ptr, ptr %13, align 8, !dbg !1604
  %136 = getelementptr inbounds nuw i8, ptr %135, i32 1, !dbg !1604
  store ptr %136, ptr %13, align 8, !dbg !1604
  %137 = load i8, ptr %135, align 1, !dbg !1604
  %138 = zext i8 %137 to i32, !dbg !1604
  %139 = shl i32 %138, 8, !dbg !1604
  %140 = load ptr, ptr %5, align 8, !dbg !1604
  %141 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %140, i32 0, i32 7, !dbg !1604
  store i32 %139, ptr %141, align 4, !dbg !1604
  %142 = load i64, ptr %14, align 8, !dbg !1605
  %143 = icmp eq i64 %142, 0, !dbg !1605
  br i1 %143, label %144, label %159, !dbg !1605

144:                                              ; preds = %132
  %145 = load ptr, ptr %12, align 8, !dbg !1607
  %146 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %145, i32 0, i32 3, !dbg !1607
  %147 = load ptr, ptr %146, align 8, !dbg !1607
  %148 = load ptr, ptr %5, align 8, !dbg !1607
  %149 = call i32 %147(ptr noundef %148), !dbg !1607
  %150 = icmp ne i32 %149, 0, !dbg !1607
  br i1 %150, label %152, label %151, !dbg !1607

151:                                              ; preds = %144
  store i32 0, ptr %4, align 4, !dbg !1610
  br label %535, !dbg !1610

152:                                              ; preds = %144
  %153 = load ptr, ptr %12, align 8, !dbg !1612
  %154 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %153, i32 0, i32 0, !dbg !1612
  %155 = load ptr, ptr %154, align 8, !dbg !1612
  store ptr %155, ptr %13, align 8, !dbg !1612
  %156 = load ptr, ptr %12, align 8, !dbg !1612
  %157 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %156, i32 0, i32 1, !dbg !1612
  %158 = load i64, ptr %157, align 8, !dbg !1612
  store i64 %158, ptr %14, align 8, !dbg !1612
  br label %159, !dbg !1612

159:                                              ; preds = %152, %132
  %160 = load i64, ptr %14, align 8, !dbg !1604
  %161 = add i64 %160, -1, !dbg !1604
  store i64 %161, ptr %14, align 8, !dbg !1604
  %162 = load ptr, ptr %13, align 8, !dbg !1604
  %163 = getelementptr inbounds nuw i8, ptr %162, i32 1, !dbg !1604
  store ptr %163, ptr %13, align 8, !dbg !1604
  %164 = load i8, ptr %162, align 1, !dbg !1604
  %165 = zext i8 %164 to i32, !dbg !1604
  %166 = load ptr, ptr %5, align 8, !dbg !1604
  %167 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %166, i32 0, i32 7, !dbg !1604
  %168 = load i32, ptr %167, align 4, !dbg !1604
  %169 = add i32 %168, %165, !dbg !1604
  store i32 %169, ptr %167, align 4, !dbg !1604
  br label %170, !dbg !1604

170:                                              ; preds = %159
  br label %171, !dbg !1613

171:                                              ; preds = %170
  %172 = load i64, ptr %14, align 8, !dbg !1614
  %173 = icmp eq i64 %172, 0, !dbg !1614
  br i1 %173, label %174, label %189, !dbg !1614

174:                                              ; preds = %171
  %175 = load ptr, ptr %12, align 8, !dbg !1617
  %176 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %175, i32 0, i32 3, !dbg !1617
  %177 = load ptr, ptr %176, align 8, !dbg !1617
  %178 = load ptr, ptr %5, align 8, !dbg !1617
  %179 = call i32 %177(ptr noundef %178), !dbg !1617
  %180 = icmp ne i32 %179, 0, !dbg !1617
  br i1 %180, label %182, label %181, !dbg !1617

181:                                              ; preds = %174
  store i32 0, ptr %4, align 4, !dbg !1620
  br label %535, !dbg !1620

182:                                              ; preds = %174
  %183 = load ptr, ptr %12, align 8, !dbg !1622
  %184 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %183, i32 0, i32 0, !dbg !1622
  %185 = load ptr, ptr %184, align 8, !dbg !1622
  store ptr %185, ptr %13, align 8, !dbg !1622
  %186 = load ptr, ptr %12, align 8, !dbg !1622
  %187 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %186, i32 0, i32 1, !dbg !1622
  %188 = load i64, ptr %187, align 8, !dbg !1622
  store i64 %188, ptr %14, align 8, !dbg !1622
  br label %189, !dbg !1622

189:                                              ; preds = %182, %171
  %190 = load i64, ptr %14, align 8, !dbg !1623
  %191 = add i64 %190, -1, !dbg !1623
  store i64 %191, ptr %14, align 8, !dbg !1623
  %192 = load ptr, ptr %13, align 8, !dbg !1623
  %193 = getelementptr inbounds nuw i8, ptr %192, i32 1, !dbg !1623
  store ptr %193, ptr %13, align 8, !dbg !1623
  %194 = load i8, ptr %192, align 1, !dbg !1623
  %195 = zext i8 %194 to i32, !dbg !1623
  %196 = shl i32 %195, 8, !dbg !1623
  %197 = load ptr, ptr %5, align 8, !dbg !1623
  %198 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %197, i32 0, i32 6, !dbg !1623
  store i32 %196, ptr %198, align 8, !dbg !1623
  %199 = load i64, ptr %14, align 8, !dbg !1624
  %200 = icmp eq i64 %199, 0, !dbg !1624
  br i1 %200, label %201, label %216, !dbg !1624

201:                                              ; preds = %189
  %202 = load ptr, ptr %12, align 8, !dbg !1626
  %203 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %202, i32 0, i32 3, !dbg !1626
  %204 = load ptr, ptr %203, align 8, !dbg !1626
  %205 = load ptr, ptr %5, align 8, !dbg !1626
  %206 = call i32 %204(ptr noundef %205), !dbg !1626
  %207 = icmp ne i32 %206, 0, !dbg !1626
  br i1 %207, label %209, label %208, !dbg !1626

208:                                              ; preds = %201
  store i32 0, ptr %4, align 4, !dbg !1629
  br label %535, !dbg !1629

209:                                              ; preds = %201
  %210 = load ptr, ptr %12, align 8, !dbg !1631
  %211 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %210, i32 0, i32 0, !dbg !1631
  %212 = load ptr, ptr %211, align 8, !dbg !1631
  store ptr %212, ptr %13, align 8, !dbg !1631
  %213 = load ptr, ptr %12, align 8, !dbg !1631
  %214 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %213, i32 0, i32 1, !dbg !1631
  %215 = load i64, ptr %214, align 8, !dbg !1631
  store i64 %215, ptr %14, align 8, !dbg !1631
  br label %216, !dbg !1631

216:                                              ; preds = %209, %189
  %217 = load i64, ptr %14, align 8, !dbg !1623
  %218 = add i64 %217, -1, !dbg !1623
  store i64 %218, ptr %14, align 8, !dbg !1623
  %219 = load ptr, ptr %13, align 8, !dbg !1623
  %220 = getelementptr inbounds nuw i8, ptr %219, i32 1, !dbg !1623
  store ptr %220, ptr %13, align 8, !dbg !1623
  %221 = load i8, ptr %219, align 1, !dbg !1623
  %222 = zext i8 %221 to i32, !dbg !1623
  %223 = load ptr, ptr %5, align 8, !dbg !1623
  %224 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %223, i32 0, i32 6, !dbg !1623
  %225 = load i32, ptr %224, align 8, !dbg !1623
  %226 = add i32 %225, %222, !dbg !1623
  store i32 %226, ptr %224, align 8, !dbg !1623
  br label %227, !dbg !1623

227:                                              ; preds = %216
  br label %228, !dbg !1632

228:                                              ; preds = %227
  %229 = load i64, ptr %14, align 8, !dbg !1633
  %230 = icmp eq i64 %229, 0, !dbg !1633
  br i1 %230, label %231, label %246, !dbg !1633

231:                                              ; preds = %228
  %232 = load ptr, ptr %12, align 8, !dbg !1636
  %233 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %232, i32 0, i32 3, !dbg !1636
  %234 = load ptr, ptr %233, align 8, !dbg !1636
  %235 = load ptr, ptr %5, align 8, !dbg !1636
  %236 = call i32 %234(ptr noundef %235), !dbg !1636
  %237 = icmp ne i32 %236, 0, !dbg !1636
  br i1 %237, label %239, label %238, !dbg !1636

238:                                              ; preds = %231
  store i32 0, ptr %4, align 4, !dbg !1639
  br label %535, !dbg !1639

239:                                              ; preds = %231
  %240 = load ptr, ptr %12, align 8, !dbg !1641
  %241 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %240, i32 0, i32 0, !dbg !1641
  %242 = load ptr, ptr %241, align 8, !dbg !1641
  store ptr %242, ptr %13, align 8, !dbg !1641
  %243 = load ptr, ptr %12, align 8, !dbg !1641
  %244 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %243, i32 0, i32 1, !dbg !1641
  %245 = load i64, ptr %244, align 8, !dbg !1641
  store i64 %245, ptr %14, align 8, !dbg !1641
  br label %246, !dbg !1641

246:                                              ; preds = %239, %228
  %247 = load i64, ptr %14, align 8, !dbg !1642
  %248 = add i64 %247, -1, !dbg !1642
  store i64 %248, ptr %14, align 8, !dbg !1642
  %249 = load ptr, ptr %13, align 8, !dbg !1642
  %250 = getelementptr inbounds nuw i8, ptr %249, i32 1, !dbg !1642
  store ptr %250, ptr %13, align 8, !dbg !1642
  %251 = load i8, ptr %249, align 1, !dbg !1642
  %252 = zext i8 %251 to i32, !dbg !1642
  %253 = load ptr, ptr %5, align 8, !dbg !1642
  %254 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %253, i32 0, i32 8, !dbg !1642
  store i32 %252, ptr %254, align 8, !dbg !1642
  br label %255, !dbg !1642

255:                                              ; preds = %246
  %256 = load i64, ptr %8, align 8, !dbg !1643
  %257 = sub nsw i64 %256, 8, !dbg !1643
  store i64 %257, ptr %8, align 8, !dbg !1643
  br label %258, !dbg !1644

258:                                              ; preds = %255
    #dbg_declare(ptr %15, !1645, !DIExpression(), !1647)
  %259 = load ptr, ptr %5, align 8, !dbg !1647
  %260 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %259, i32 0, i32 0, !dbg !1647
  %261 = load ptr, ptr %260, align 8, !dbg !1647
  %262 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %261, i32 0, i32 6, !dbg !1647
  %263 = getelementptr inbounds [8 x i32], ptr %262, i64 0, i64 0, !dbg !1647
  store ptr %263, ptr %15, align 8, !dbg !1647
  %264 = load ptr, ptr %5, align 8, !dbg !1647
  %265 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %264, i32 0, i32 72, !dbg !1647
  %266 = load i32, ptr %265, align 4, !dbg !1647
  %267 = load ptr, ptr %15, align 8, !dbg !1647
  %268 = getelementptr inbounds i32, ptr %267, i64 0, !dbg !1647
  store i32 %266, ptr %268, align 4, !dbg !1647
  %269 = load ptr, ptr %5, align 8, !dbg !1647
  %270 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %269, i32 0, i32 6, !dbg !1647
  %271 = load i32, ptr %270, align 8, !dbg !1647
  %272 = load ptr, ptr %15, align 8, !dbg !1647
  %273 = getelementptr inbounds i32, ptr %272, i64 1, !dbg !1647
  store i32 %271, ptr %273, align 4, !dbg !1647
  %274 = load ptr, ptr %5, align 8, !dbg !1647
  %275 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %274, i32 0, i32 7, !dbg !1647
  %276 = load i32, ptr %275, align 4, !dbg !1647
  %277 = load ptr, ptr %15, align 8, !dbg !1647
  %278 = getelementptr inbounds i32, ptr %277, i64 2, !dbg !1647
  store i32 %276, ptr %278, align 4, !dbg !1647
  %279 = load ptr, ptr %5, align 8, !dbg !1647
  %280 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %279, i32 0, i32 8, !dbg !1647
  %281 = load i32, ptr %280, align 8, !dbg !1647
  %282 = load ptr, ptr %15, align 8, !dbg !1647
  %283 = getelementptr inbounds i32, ptr %282, i64 3, !dbg !1647
  store i32 %281, ptr %283, align 4, !dbg !1647
  %284 = load ptr, ptr %5, align 8, !dbg !1647
  %285 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %284, i32 0, i32 0, !dbg !1647
  %286 = load ptr, ptr %285, align 8, !dbg !1647
  %287 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %286, i32 0, i32 5, !dbg !1647
  store i32 99, ptr %287, align 8, !dbg !1647
  %288 = load ptr, ptr %5, align 8, !dbg !1647
  %289 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %288, i32 0, i32 0, !dbg !1647
  %290 = load ptr, ptr %289, align 8, !dbg !1647
  %291 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %290, i32 0, i32 1, !dbg !1647
  %292 = load ptr, ptr %291, align 8, !dbg !1647
  %293 = load ptr, ptr %5, align 8, !dbg !1647
  call void %292(ptr noundef %293, i32 noundef 1), !dbg !1647
  br label %294, !dbg !1647

294:                                              ; preds = %258
  %295 = load ptr, ptr %5, align 8, !dbg !1648
  %296 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %295, i32 0, i32 78, !dbg !1650
  %297 = load ptr, ptr %296, align 8, !dbg !1650
  %298 = getelementptr inbounds nuw %struct.jpeg_marker_reader, ptr %297, i32 0, i32 6, !dbg !1651
  %299 = load i32, ptr %298, align 4, !dbg !1651
  %300 = icmp ne i32 %299, 0, !dbg !1648
  br i1 %300, label %301, label %312, !dbg !1648

301:                                              ; preds = %294
  %302 = load ptr, ptr %5, align 8, !dbg !1652
  %303 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %302, i32 0, i32 0, !dbg !1652
  %304 = load ptr, ptr %303, align 8, !dbg !1652
  %305 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %304, i32 0, i32 5, !dbg !1652
  store i32 57, ptr %305, align 8, !dbg !1652
  %306 = load ptr, ptr %5, align 8, !dbg !1652
  %307 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %306, i32 0, i32 0, !dbg !1652
  %308 = load ptr, ptr %307, align 8, !dbg !1652
  %309 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %308, i32 0, i32 0, !dbg !1652
  %310 = load ptr, ptr %309, align 8, !dbg !1652
  %311 = load ptr, ptr %5, align 8, !dbg !1652
  call void %310(ptr noundef %311), !dbg !1652
  br label %312, !dbg !1652

312:                                              ; preds = %301, %294
  %313 = load ptr, ptr %5, align 8, !dbg !1653
  %314 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %313, i32 0, i32 7, !dbg !1655
  %315 = load i32, ptr %314, align 4, !dbg !1655
  %316 = icmp ule i32 %315, 0, !dbg !1656
  br i1 %316, label %327, label %317, !dbg !1657

317:                                              ; preds = %312
  %318 = load ptr, ptr %5, align 8, !dbg !1658
  %319 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %318, i32 0, i32 6, !dbg !1659
  %320 = load i32, ptr %319, align 8, !dbg !1659
  %321 = icmp ule i32 %320, 0, !dbg !1660
  br i1 %321, label %327, label %322, !dbg !1661

322:                                              ; preds = %317
  %323 = load ptr, ptr %5, align 8, !dbg !1662
  %324 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %323, i32 0, i32 8, !dbg !1663
  %325 = load i32, ptr %324, align 8, !dbg !1663
  %326 = icmp sle i32 %325, 0, !dbg !1664
  br i1 %326, label %327, label %338, !dbg !1661

327:                                              ; preds = %322, %317, %312
  %328 = load ptr, ptr %5, align 8, !dbg !1665
  %329 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %328, i32 0, i32 0, !dbg !1665
  %330 = load ptr, ptr %329, align 8, !dbg !1665
  %331 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %330, i32 0, i32 5, !dbg !1665
  store i32 31, ptr %331, align 8, !dbg !1665
  %332 = load ptr, ptr %5, align 8, !dbg !1665
  %333 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %332, i32 0, i32 0, !dbg !1665
  %334 = load ptr, ptr %333, align 8, !dbg !1665
  %335 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %334, i32 0, i32 0, !dbg !1665
  %336 = load ptr, ptr %335, align 8, !dbg !1665
  %337 = load ptr, ptr %5, align 8, !dbg !1665
  call void %336(ptr noundef %337), !dbg !1665
  br label %338, !dbg !1665

338:                                              ; preds = %327, %322
  %339 = load i64, ptr %8, align 8, !dbg !1666
  %340 = load ptr, ptr %5, align 8, !dbg !1668
  %341 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %340, i32 0, i32 8, !dbg !1669
  %342 = load i32, ptr %341, align 8, !dbg !1669
  %343 = mul nsw i32 %342, 3, !dbg !1670
  %344 = sext i32 %343 to i64, !dbg !1671
  %345 = icmp ne i64 %339, %344, !dbg !1672
  br i1 %345, label %346, label %357, !dbg !1672

346:                                              ; preds = %338
  %347 = load ptr, ptr %5, align 8, !dbg !1673
  %348 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %347, i32 0, i32 0, !dbg !1673
  %349 = load ptr, ptr %348, align 8, !dbg !1673
  %350 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %349, i32 0, i32 5, !dbg !1673
  store i32 9, ptr %350, align 8, !dbg !1673
  %351 = load ptr, ptr %5, align 8, !dbg !1673
  %352 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %351, i32 0, i32 0, !dbg !1673
  %353 = load ptr, ptr %352, align 8, !dbg !1673
  %354 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %353, i32 0, i32 0, !dbg !1673
  %355 = load ptr, ptr %354, align 8, !dbg !1673
  %356 = load ptr, ptr %5, align 8, !dbg !1673
  call void %355(ptr noundef %356), !dbg !1673
  br label %357, !dbg !1673

357:                                              ; preds = %346, %338
  %358 = load ptr, ptr %5, align 8, !dbg !1674
  %359 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %358, i32 0, i32 43, !dbg !1676
  %360 = load ptr, ptr %359, align 8, !dbg !1676
  %361 = icmp eq ptr %360, null, !dbg !1677
  br i1 %361, label %362, label %377, !dbg !1677

362:                                              ; preds = %357
  %363 = load ptr, ptr %5, align 8, !dbg !1678
  %364 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %363, i32 0, i32 1, !dbg !1679
  %365 = load ptr, ptr %364, align 8, !dbg !1679
  %366 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %365, i32 0, i32 0, !dbg !1680
  %367 = load ptr, ptr %366, align 8, !dbg !1680
  %368 = load ptr, ptr %5, align 8, !dbg !1681
  %369 = load ptr, ptr %5, align 8, !dbg !1682
  %370 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %369, i32 0, i32 8, !dbg !1683
  %371 = load i32, ptr %370, align 8, !dbg !1683
  %372 = sext i32 %371 to i64, !dbg !1682
  %373 = mul i64 %372, 96, !dbg !1684
  %374 = call ptr %367(ptr noundef %368, i32 noundef 1, i64 noundef %373), !dbg !1685
  %375 = load ptr, ptr %5, align 8, !dbg !1686
  %376 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %375, i32 0, i32 43, !dbg !1687
  store ptr %374, ptr %376, align 8, !dbg !1688
  br label %377, !dbg !1686

377:                                              ; preds = %362, %357
  store i32 0, ptr %10, align 4, !dbg !1689
  %378 = load ptr, ptr %5, align 8, !dbg !1691
  %379 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %378, i32 0, i32 43, !dbg !1692
  %380 = load ptr, ptr %379, align 8, !dbg !1692
  store ptr %380, ptr %11, align 8, !dbg !1693
  br label %381, !dbg !1694

381:                                              ; preds = %519, %377
  %382 = load i32, ptr %10, align 4, !dbg !1695
  %383 = load ptr, ptr %5, align 8, !dbg !1697
  %384 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %383, i32 0, i32 8, !dbg !1698
  %385 = load i32, ptr %384, align 8, !dbg !1698
  %386 = icmp slt i32 %382, %385, !dbg !1699
  br i1 %386, label %387, label %524, !dbg !1700

387:                                              ; preds = %381
  %388 = load i32, ptr %10, align 4, !dbg !1701
  %389 = load ptr, ptr %11, align 8, !dbg !1703
  %390 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %389, i32 0, i32 1, !dbg !1704
  store i32 %388, ptr %390, align 4, !dbg !1705
  br label %391, !dbg !1706

391:                                              ; preds = %387
  %392 = load i64, ptr %14, align 8, !dbg !1707
  %393 = icmp eq i64 %392, 0, !dbg !1707
  br i1 %393, label %394, label %409, !dbg !1707

394:                                              ; preds = %391
  %395 = load ptr, ptr %12, align 8, !dbg !1710
  %396 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %395, i32 0, i32 3, !dbg !1710
  %397 = load ptr, ptr %396, align 8, !dbg !1710
  %398 = load ptr, ptr %5, align 8, !dbg !1710
  %399 = call i32 %397(ptr noundef %398), !dbg !1710
  %400 = icmp ne i32 %399, 0, !dbg !1710
  br i1 %400, label %402, label %401, !dbg !1710

401:                                              ; preds = %394
  store i32 0, ptr %4, align 4, !dbg !1713
  br label %535, !dbg !1713

402:                                              ; preds = %394
  %403 = load ptr, ptr %12, align 8, !dbg !1715
  %404 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %403, i32 0, i32 0, !dbg !1715
  %405 = load ptr, ptr %404, align 8, !dbg !1715
  store ptr %405, ptr %13, align 8, !dbg !1715
  %406 = load ptr, ptr %12, align 8, !dbg !1715
  %407 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %406, i32 0, i32 1, !dbg !1715
  %408 = load i64, ptr %407, align 8, !dbg !1715
  store i64 %408, ptr %14, align 8, !dbg !1715
  br label %409, !dbg !1715

409:                                              ; preds = %402, %391
  %410 = load i64, ptr %14, align 8, !dbg !1716
  %411 = add i64 %410, -1, !dbg !1716
  store i64 %411, ptr %14, align 8, !dbg !1716
  %412 = load ptr, ptr %13, align 8, !dbg !1716
  %413 = getelementptr inbounds nuw i8, ptr %412, i32 1, !dbg !1716
  store ptr %413, ptr %13, align 8, !dbg !1716
  %414 = load i8, ptr %412, align 1, !dbg !1716
  %415 = zext i8 %414 to i32, !dbg !1716
  %416 = load ptr, ptr %11, align 8, !dbg !1716
  %417 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %416, i32 0, i32 0, !dbg !1716
  store i32 %415, ptr %417, align 8, !dbg !1716
  br label %418, !dbg !1716

418:                                              ; preds = %409
  br label %419, !dbg !1717

419:                                              ; preds = %418
  %420 = load i64, ptr %14, align 8, !dbg !1718
  %421 = icmp eq i64 %420, 0, !dbg !1718
  br i1 %421, label %422, label %437, !dbg !1718

422:                                              ; preds = %419
  %423 = load ptr, ptr %12, align 8, !dbg !1721
  %424 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %423, i32 0, i32 3, !dbg !1721
  %425 = load ptr, ptr %424, align 8, !dbg !1721
  %426 = load ptr, ptr %5, align 8, !dbg !1721
  %427 = call i32 %425(ptr noundef %426), !dbg !1721
  %428 = icmp ne i32 %427, 0, !dbg !1721
  br i1 %428, label %430, label %429, !dbg !1721

429:                                              ; preds = %422
  store i32 0, ptr %4, align 4, !dbg !1724
  br label %535, !dbg !1724

430:                                              ; preds = %422
  %431 = load ptr, ptr %12, align 8, !dbg !1726
  %432 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %431, i32 0, i32 0, !dbg !1726
  %433 = load ptr, ptr %432, align 8, !dbg !1726
  store ptr %433, ptr %13, align 8, !dbg !1726
  %434 = load ptr, ptr %12, align 8, !dbg !1726
  %435 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %434, i32 0, i32 1, !dbg !1726
  %436 = load i64, ptr %435, align 8, !dbg !1726
  store i64 %436, ptr %14, align 8, !dbg !1726
  br label %437, !dbg !1726

437:                                              ; preds = %430, %419
  %438 = load i64, ptr %14, align 8, !dbg !1727
  %439 = add i64 %438, -1, !dbg !1727
  store i64 %439, ptr %14, align 8, !dbg !1727
  %440 = load ptr, ptr %13, align 8, !dbg !1727
  %441 = getelementptr inbounds nuw i8, ptr %440, i32 1, !dbg !1727
  store ptr %441, ptr %13, align 8, !dbg !1727
  %442 = load i8, ptr %440, align 1, !dbg !1727
  %443 = zext i8 %442 to i32, !dbg !1727
  store i32 %443, ptr %9, align 4, !dbg !1727
  br label %444, !dbg !1727

444:                                              ; preds = %437
  %445 = load i32, ptr %9, align 4, !dbg !1728
  %446 = ashr i32 %445, 4, !dbg !1729
  %447 = and i32 %446, 15, !dbg !1730
  %448 = load ptr, ptr %11, align 8, !dbg !1731
  %449 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %448, i32 0, i32 2, !dbg !1732
  store i32 %447, ptr %449, align 8, !dbg !1733
  %450 = load i32, ptr %9, align 4, !dbg !1734
  %451 = and i32 %450, 15, !dbg !1735
  %452 = load ptr, ptr %11, align 8, !dbg !1736
  %453 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %452, i32 0, i32 3, !dbg !1737
  store i32 %451, ptr %453, align 4, !dbg !1738
  br label %454, !dbg !1739

454:                                              ; preds = %444
  %455 = load i64, ptr %14, align 8, !dbg !1740
  %456 = icmp eq i64 %455, 0, !dbg !1740
  br i1 %456, label %457, label %472, !dbg !1740

457:                                              ; preds = %454
  %458 = load ptr, ptr %12, align 8, !dbg !1743
  %459 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %458, i32 0, i32 3, !dbg !1743
  %460 = load ptr, ptr %459, align 8, !dbg !1743
  %461 = load ptr, ptr %5, align 8, !dbg !1743
  %462 = call i32 %460(ptr noundef %461), !dbg !1743
  %463 = icmp ne i32 %462, 0, !dbg !1743
  br i1 %463, label %465, label %464, !dbg !1743

464:                                              ; preds = %457
  store i32 0, ptr %4, align 4, !dbg !1746
  br label %535, !dbg !1746

465:                                              ; preds = %457
  %466 = load ptr, ptr %12, align 8, !dbg !1748
  %467 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %466, i32 0, i32 0, !dbg !1748
  %468 = load ptr, ptr %467, align 8, !dbg !1748
  store ptr %468, ptr %13, align 8, !dbg !1748
  %469 = load ptr, ptr %12, align 8, !dbg !1748
  %470 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %469, i32 0, i32 1, !dbg !1748
  %471 = load i64, ptr %470, align 8, !dbg !1748
  store i64 %471, ptr %14, align 8, !dbg !1748
  br label %472, !dbg !1748

472:                                              ; preds = %465, %454
  %473 = load i64, ptr %14, align 8, !dbg !1749
  %474 = add i64 %473, -1, !dbg !1749
  store i64 %474, ptr %14, align 8, !dbg !1749
  %475 = load ptr, ptr %13, align 8, !dbg !1749
  %476 = getelementptr inbounds nuw i8, ptr %475, i32 1, !dbg !1749
  store ptr %476, ptr %13, align 8, !dbg !1749
  %477 = load i8, ptr %475, align 1, !dbg !1749
  %478 = zext i8 %477 to i32, !dbg !1749
  %479 = load ptr, ptr %11, align 8, !dbg !1749
  %480 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %479, i32 0, i32 4, !dbg !1749
  store i32 %478, ptr %480, align 8, !dbg !1749
  br label %481, !dbg !1749

481:                                              ; preds = %472
  br label %482, !dbg !1750

482:                                              ; preds = %481
    #dbg_declare(ptr %16, !1751, !DIExpression(), !1753)
  %483 = load ptr, ptr %5, align 8, !dbg !1753
  %484 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %483, i32 0, i32 0, !dbg !1753
  %485 = load ptr, ptr %484, align 8, !dbg !1753
  %486 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %485, i32 0, i32 6, !dbg !1753
  %487 = getelementptr inbounds [8 x i32], ptr %486, i64 0, i64 0, !dbg !1753
  store ptr %487, ptr %16, align 8, !dbg !1753
  %488 = load ptr, ptr %11, align 8, !dbg !1753
  %489 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %488, i32 0, i32 0, !dbg !1753
  %490 = load i32, ptr %489, align 8, !dbg !1753
  %491 = load ptr, ptr %16, align 8, !dbg !1753
  %492 = getelementptr inbounds i32, ptr %491, i64 0, !dbg !1753
  store i32 %490, ptr %492, align 4, !dbg !1753
  %493 = load ptr, ptr %11, align 8, !dbg !1753
  %494 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %493, i32 0, i32 2, !dbg !1753
  %495 = load i32, ptr %494, align 8, !dbg !1753
  %496 = load ptr, ptr %16, align 8, !dbg !1753
  %497 = getelementptr inbounds i32, ptr %496, i64 1, !dbg !1753
  store i32 %495, ptr %497, align 4, !dbg !1753
  %498 = load ptr, ptr %11, align 8, !dbg !1753
  %499 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %498, i32 0, i32 3, !dbg !1753
  %500 = load i32, ptr %499, align 4, !dbg !1753
  %501 = load ptr, ptr %16, align 8, !dbg !1753
  %502 = getelementptr inbounds i32, ptr %501, i64 2, !dbg !1753
  store i32 %500, ptr %502, align 4, !dbg !1753
  %503 = load ptr, ptr %11, align 8, !dbg !1753
  %504 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %503, i32 0, i32 4, !dbg !1753
  %505 = load i32, ptr %504, align 8, !dbg !1753
  %506 = load ptr, ptr %16, align 8, !dbg !1753
  %507 = getelementptr inbounds i32, ptr %506, i64 3, !dbg !1753
  store i32 %505, ptr %507, align 4, !dbg !1753
  %508 = load ptr, ptr %5, align 8, !dbg !1753
  %509 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %508, i32 0, i32 0, !dbg !1753
  %510 = load ptr, ptr %509, align 8, !dbg !1753
  %511 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %510, i32 0, i32 5, !dbg !1753
  store i32 100, ptr %511, align 8, !dbg !1753
  %512 = load ptr, ptr %5, align 8, !dbg !1753
  %513 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %512, i32 0, i32 0, !dbg !1753
  %514 = load ptr, ptr %513, align 8, !dbg !1753
  %515 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %514, i32 0, i32 1, !dbg !1753
  %516 = load ptr, ptr %515, align 8, !dbg !1753
  %517 = load ptr, ptr %5, align 8, !dbg !1753
  call void %516(ptr noundef %517, i32 noundef 1), !dbg !1753
  br label %518, !dbg !1753

518:                                              ; preds = %482
  br label %519, !dbg !1754

519:                                              ; preds = %518
  %520 = load i32, ptr %10, align 4, !dbg !1755
  %521 = add nsw i32 %520, 1, !dbg !1755
  store i32 %521, ptr %10, align 4, !dbg !1755
  %522 = load ptr, ptr %11, align 8, !dbg !1756
  %523 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %522, i32 1, !dbg !1756
  store ptr %523, ptr %11, align 8, !dbg !1756
  br label %381, !dbg !1757, !llvm.loop !1758

524:                                              ; preds = %381
  %525 = load ptr, ptr %5, align 8, !dbg !1760
  %526 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %525, i32 0, i32 78, !dbg !1761
  %527 = load ptr, ptr %526, align 8, !dbg !1761
  %528 = getelementptr inbounds nuw %struct.jpeg_marker_reader, ptr %527, i32 0, i32 6, !dbg !1762
  store i32 1, ptr %528, align 4, !dbg !1763
  %529 = load ptr, ptr %13, align 8, !dbg !1764
  %530 = load ptr, ptr %12, align 8, !dbg !1764
  %531 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %530, i32 0, i32 0, !dbg !1764
  store ptr %529, ptr %531, align 8, !dbg !1764
  %532 = load i64, ptr %14, align 8, !dbg !1764
  %533 = load ptr, ptr %12, align 8, !dbg !1764
  %534 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %533, i32 0, i32 1, !dbg !1764
  store i64 %532, ptr %534, align 8, !dbg !1764
  store i32 1, ptr %4, align 4, !dbg !1765
  br label %535, !dbg !1765

535:                                              ; preds = %524, %464, %429, %401, %238, %208, %181, %151, %124, %96, %68, %42
  %536 = load i32, ptr %4, align 4, !dbg !1766
  ret i32 %536, !dbg !1766
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_sos(ptr noundef %0) #0 !dbg !1767 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i64, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1768, !DIExpression(), !1769)
    #dbg_declare(ptr %4, !1770, !DIExpression(), !1771)
    #dbg_declare(ptr %5, !1772, !DIExpression(), !1773)
    #dbg_declare(ptr %6, !1774, !DIExpression(), !1775)
    #dbg_declare(ptr %7, !1776, !DIExpression(), !1777)
    #dbg_declare(ptr %8, !1778, !DIExpression(), !1779)
    #dbg_declare(ptr %9, !1780, !DIExpression(), !1781)
    #dbg_declare(ptr %10, !1782, !DIExpression(), !1783)
    #dbg_declare(ptr %11, !1784, !DIExpression(), !1785)
  %16 = load ptr, ptr %3, align 8, !dbg !1785
  %17 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %16, i32 0, i32 5, !dbg !1785
  %18 = load ptr, ptr %17, align 8, !dbg !1785
  store ptr %18, ptr %11, align 8, !dbg !1785
    #dbg_declare(ptr %12, !1786, !DIExpression(), !1785)
  %19 = load ptr, ptr %11, align 8, !dbg !1785
  %20 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %19, i32 0, i32 0, !dbg !1785
  %21 = load ptr, ptr %20, align 8, !dbg !1785
  store ptr %21, ptr %12, align 8, !dbg !1785
    #dbg_declare(ptr %13, !1787, !DIExpression(), !1785)
  %22 = load ptr, ptr %11, align 8, !dbg !1785
  %23 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %22, i32 0, i32 1, !dbg !1785
  %24 = load i64, ptr %23, align 8, !dbg !1785
  store i64 %24, ptr %13, align 8, !dbg !1785
  %25 = load ptr, ptr %3, align 8, !dbg !1788
  %26 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %25, i32 0, i32 78, !dbg !1790
  %27 = load ptr, ptr %26, align 8, !dbg !1790
  %28 = getelementptr inbounds nuw %struct.jpeg_marker_reader, ptr %27, i32 0, i32 6, !dbg !1791
  %29 = load i32, ptr %28, align 4, !dbg !1791
  %30 = icmp ne i32 %29, 0, !dbg !1788
  br i1 %30, label %42, label %31, !dbg !1792

31:                                               ; preds = %1
  %32 = load ptr, ptr %3, align 8, !dbg !1793
  %33 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %32, i32 0, i32 0, !dbg !1793
  %34 = load ptr, ptr %33, align 8, !dbg !1793
  %35 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %34, i32 0, i32 5, !dbg !1793
  store i32 61, ptr %35, align 8, !dbg !1793
  %36 = load ptr, ptr %3, align 8, !dbg !1793
  %37 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %36, i32 0, i32 0, !dbg !1793
  %38 = load ptr, ptr %37, align 8, !dbg !1793
  %39 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %38, i32 0, i32 0, !dbg !1793
  %40 = load ptr, ptr %39, align 8, !dbg !1793
  %41 = load ptr, ptr %3, align 8, !dbg !1793
  call void %40(ptr noundef %41), !dbg !1793
  br label %42, !dbg !1793

42:                                               ; preds = %31, %1
  br label %43, !dbg !1794

43:                                               ; preds = %42
  %44 = load i64, ptr %13, align 8, !dbg !1795
  %45 = icmp eq i64 %44, 0, !dbg !1795
  br i1 %45, label %46, label %61, !dbg !1795

46:                                               ; preds = %43
  %47 = load ptr, ptr %11, align 8, !dbg !1798
  %48 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %47, i32 0, i32 3, !dbg !1798
  %49 = load ptr, ptr %48, align 8, !dbg !1798
  %50 = load ptr, ptr %3, align 8, !dbg !1798
  %51 = call i32 %49(ptr noundef %50), !dbg !1798
  %52 = icmp ne i32 %51, 0, !dbg !1798
  br i1 %52, label %54, label %53, !dbg !1798

53:                                               ; preds = %46
  store i32 0, ptr %2, align 4, !dbg !1801
  br label %456, !dbg !1801

54:                                               ; preds = %46
  %55 = load ptr, ptr %11, align 8, !dbg !1803
  %56 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %55, i32 0, i32 0, !dbg !1803
  %57 = load ptr, ptr %56, align 8, !dbg !1803
  store ptr %57, ptr %12, align 8, !dbg !1803
  %58 = load ptr, ptr %11, align 8, !dbg !1803
  %59 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %58, i32 0, i32 1, !dbg !1803
  %60 = load i64, ptr %59, align 8, !dbg !1803
  store i64 %60, ptr %13, align 8, !dbg !1803
  br label %61, !dbg !1803

61:                                               ; preds = %54, %43
  %62 = load i64, ptr %13, align 8, !dbg !1804
  %63 = add i64 %62, -1, !dbg !1804
  store i64 %63, ptr %13, align 8, !dbg !1804
  %64 = load ptr, ptr %12, align 8, !dbg !1804
  %65 = getelementptr inbounds nuw i8, ptr %64, i32 1, !dbg !1804
  store ptr %65, ptr %12, align 8, !dbg !1804
  %66 = load i8, ptr %64, align 1, !dbg !1804
  %67 = zext i8 %66 to i32, !dbg !1804
  %68 = shl i32 %67, 8, !dbg !1804
  %69 = zext i32 %68 to i64, !dbg !1804
  store i64 %69, ptr %4, align 8, !dbg !1804
  %70 = load i64, ptr %13, align 8, !dbg !1805
  %71 = icmp eq i64 %70, 0, !dbg !1805
  br i1 %71, label %72, label %87, !dbg !1805

72:                                               ; preds = %61
  %73 = load ptr, ptr %11, align 8, !dbg !1807
  %74 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %73, i32 0, i32 3, !dbg !1807
  %75 = load ptr, ptr %74, align 8, !dbg !1807
  %76 = load ptr, ptr %3, align 8, !dbg !1807
  %77 = call i32 %75(ptr noundef %76), !dbg !1807
  %78 = icmp ne i32 %77, 0, !dbg !1807
  br i1 %78, label %80, label %79, !dbg !1807

79:                                               ; preds = %72
  store i32 0, ptr %2, align 4, !dbg !1810
  br label %456, !dbg !1810

80:                                               ; preds = %72
  %81 = load ptr, ptr %11, align 8, !dbg !1812
  %82 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %81, i32 0, i32 0, !dbg !1812
  %83 = load ptr, ptr %82, align 8, !dbg !1812
  store ptr %83, ptr %12, align 8, !dbg !1812
  %84 = load ptr, ptr %11, align 8, !dbg !1812
  %85 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %84, i32 0, i32 1, !dbg !1812
  %86 = load i64, ptr %85, align 8, !dbg !1812
  store i64 %86, ptr %13, align 8, !dbg !1812
  br label %87, !dbg !1812

87:                                               ; preds = %80, %61
  %88 = load i64, ptr %13, align 8, !dbg !1804
  %89 = add i64 %88, -1, !dbg !1804
  store i64 %89, ptr %13, align 8, !dbg !1804
  %90 = load ptr, ptr %12, align 8, !dbg !1804
  %91 = getelementptr inbounds nuw i8, ptr %90, i32 1, !dbg !1804
  store ptr %91, ptr %12, align 8, !dbg !1804
  %92 = load i8, ptr %90, align 1, !dbg !1804
  %93 = zext i8 %92 to i64, !dbg !1804
  %94 = load i64, ptr %4, align 8, !dbg !1804
  %95 = add nsw i64 %94, %93, !dbg !1804
  store i64 %95, ptr %4, align 8, !dbg !1804
  br label %96, !dbg !1804

96:                                               ; preds = %87
  br label %97, !dbg !1813

97:                                               ; preds = %96
  %98 = load i64, ptr %13, align 8, !dbg !1814
  %99 = icmp eq i64 %98, 0, !dbg !1814
  br i1 %99, label %100, label %115, !dbg !1814

100:                                              ; preds = %97
  %101 = load ptr, ptr %11, align 8, !dbg !1817
  %102 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %101, i32 0, i32 3, !dbg !1817
  %103 = load ptr, ptr %102, align 8, !dbg !1817
  %104 = load ptr, ptr %3, align 8, !dbg !1817
  %105 = call i32 %103(ptr noundef %104), !dbg !1817
  %106 = icmp ne i32 %105, 0, !dbg !1817
  br i1 %106, label %108, label %107, !dbg !1817

107:                                              ; preds = %100
  store i32 0, ptr %2, align 4, !dbg !1820
  br label %456, !dbg !1820

108:                                              ; preds = %100
  %109 = load ptr, ptr %11, align 8, !dbg !1822
  %110 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %109, i32 0, i32 0, !dbg !1822
  %111 = load ptr, ptr %110, align 8, !dbg !1822
  store ptr %111, ptr %12, align 8, !dbg !1822
  %112 = load ptr, ptr %11, align 8, !dbg !1822
  %113 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %112, i32 0, i32 1, !dbg !1822
  %114 = load i64, ptr %113, align 8, !dbg !1822
  store i64 %114, ptr %13, align 8, !dbg !1822
  br label %115, !dbg !1822

115:                                              ; preds = %108, %97
  %116 = load i64, ptr %13, align 8, !dbg !1823
  %117 = add i64 %116, -1, !dbg !1823
  store i64 %117, ptr %13, align 8, !dbg !1823
  %118 = load ptr, ptr %12, align 8, !dbg !1823
  %119 = getelementptr inbounds nuw i8, ptr %118, i32 1, !dbg !1823
  store ptr %119, ptr %12, align 8, !dbg !1823
  %120 = load i8, ptr %118, align 1, !dbg !1823
  %121 = zext i8 %120 to i32, !dbg !1823
  store i32 %121, ptr %7, align 4, !dbg !1823
  br label %122, !dbg !1823

122:                                              ; preds = %115
  %123 = load i64, ptr %4, align 8, !dbg !1824
  %124 = load i32, ptr %7, align 4, !dbg !1826
  %125 = mul nsw i32 %124, 2, !dbg !1827
  %126 = add nsw i32 %125, 6, !dbg !1828
  %127 = sext i32 %126 to i64, !dbg !1829
  %128 = icmp ne i64 %123, %127, !dbg !1830
  br i1 %128, label %135, label %129, !dbg !1831

129:                                              ; preds = %122
  %130 = load i32, ptr %7, align 4, !dbg !1832
  %131 = icmp slt i32 %130, 1, !dbg !1833
  br i1 %131, label %135, label %132, !dbg !1834

132:                                              ; preds = %129
  %133 = load i32, ptr %7, align 4, !dbg !1835
  %134 = icmp sgt i32 %133, 4, !dbg !1836
  br i1 %134, label %135, label %146, !dbg !1834

135:                                              ; preds = %132, %129, %122
  %136 = load ptr, ptr %3, align 8, !dbg !1837
  %137 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %136, i32 0, i32 0, !dbg !1837
  %138 = load ptr, ptr %137, align 8, !dbg !1837
  %139 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %138, i32 0, i32 5, !dbg !1837
  store i32 9, ptr %139, align 8, !dbg !1837
  %140 = load ptr, ptr %3, align 8, !dbg !1837
  %141 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %140, i32 0, i32 0, !dbg !1837
  %142 = load ptr, ptr %141, align 8, !dbg !1837
  %143 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %142, i32 0, i32 0, !dbg !1837
  %144 = load ptr, ptr %143, align 8, !dbg !1837
  %145 = load ptr, ptr %3, align 8, !dbg !1837
  call void %144(ptr noundef %145), !dbg !1837
  br label %146, !dbg !1837

146:                                              ; preds = %135, %132
  %147 = load ptr, ptr %3, align 8, !dbg !1838
  %148 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %147, i32 0, i32 0, !dbg !1838
  %149 = load ptr, ptr %148, align 8, !dbg !1838
  %150 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %149, i32 0, i32 5, !dbg !1838
  store i32 102, ptr %150, align 8, !dbg !1838
  %151 = load i32, ptr %7, align 4, !dbg !1838
  %152 = load ptr, ptr %3, align 8, !dbg !1838
  %153 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %152, i32 0, i32 0, !dbg !1838
  %154 = load ptr, ptr %153, align 8, !dbg !1838
  %155 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %154, i32 0, i32 6, !dbg !1838
  %156 = getelementptr inbounds [8 x i32], ptr %155, i64 0, i64 0, !dbg !1838
  store i32 %151, ptr %156, align 4, !dbg !1838
  %157 = load ptr, ptr %3, align 8, !dbg !1838
  %158 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %157, i32 0, i32 0, !dbg !1838
  %159 = load ptr, ptr %158, align 8, !dbg !1838
  %160 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %159, i32 0, i32 1, !dbg !1838
  %161 = load ptr, ptr %160, align 8, !dbg !1838
  %162 = load ptr, ptr %3, align 8, !dbg !1838
  call void %161(ptr noundef %162, i32 noundef 1), !dbg !1838
  %163 = load i32, ptr %7, align 4, !dbg !1839
  %164 = load ptr, ptr %3, align 8, !dbg !1840
  %165 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %164, i32 0, i32 62, !dbg !1841
  store i32 %163, ptr %165, align 8, !dbg !1842
  store i32 0, ptr %5, align 4, !dbg !1843
  br label %166, !dbg !1845

166:                                              ; preds = %308, %146
  %167 = load i32, ptr %5, align 4, !dbg !1846
  %168 = load i32, ptr %7, align 4, !dbg !1848
  %169 = icmp slt i32 %167, %168, !dbg !1849
  br i1 %169, label %170, label %311, !dbg !1850

170:                                              ; preds = %166
  br label %171, !dbg !1851

171:                                              ; preds = %170
  %172 = load i64, ptr %13, align 8, !dbg !1853
  %173 = icmp eq i64 %172, 0, !dbg !1853
  br i1 %173, label %174, label %189, !dbg !1853

174:                                              ; preds = %171
  %175 = load ptr, ptr %11, align 8, !dbg !1856
  %176 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %175, i32 0, i32 3, !dbg !1856
  %177 = load ptr, ptr %176, align 8, !dbg !1856
  %178 = load ptr, ptr %3, align 8, !dbg !1856
  %179 = call i32 %177(ptr noundef %178), !dbg !1856
  %180 = icmp ne i32 %179, 0, !dbg !1856
  br i1 %180, label %182, label %181, !dbg !1856

181:                                              ; preds = %174
  store i32 0, ptr %2, align 4, !dbg !1859
  br label %456, !dbg !1859

182:                                              ; preds = %174
  %183 = load ptr, ptr %11, align 8, !dbg !1861
  %184 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %183, i32 0, i32 0, !dbg !1861
  %185 = load ptr, ptr %184, align 8, !dbg !1861
  store ptr %185, ptr %12, align 8, !dbg !1861
  %186 = load ptr, ptr %11, align 8, !dbg !1861
  %187 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %186, i32 0, i32 1, !dbg !1861
  %188 = load i64, ptr %187, align 8, !dbg !1861
  store i64 %188, ptr %13, align 8, !dbg !1861
  br label %189, !dbg !1861

189:                                              ; preds = %182, %171
  %190 = load i64, ptr %13, align 8, !dbg !1862
  %191 = add i64 %190, -1, !dbg !1862
  store i64 %191, ptr %13, align 8, !dbg !1862
  %192 = load ptr, ptr %12, align 8, !dbg !1862
  %193 = getelementptr inbounds nuw i8, ptr %192, i32 1, !dbg !1862
  store ptr %193, ptr %12, align 8, !dbg !1862
  %194 = load i8, ptr %192, align 1, !dbg !1862
  %195 = zext i8 %194 to i32, !dbg !1862
  store i32 %195, ptr %9, align 4, !dbg !1862
  br label %196, !dbg !1862

196:                                              ; preds = %189
  br label %197, !dbg !1863

197:                                              ; preds = %196
  %198 = load i64, ptr %13, align 8, !dbg !1864
  %199 = icmp eq i64 %198, 0, !dbg !1864
  br i1 %199, label %200, label %215, !dbg !1864

200:                                              ; preds = %197
  %201 = load ptr, ptr %11, align 8, !dbg !1867
  %202 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %201, i32 0, i32 3, !dbg !1867
  %203 = load ptr, ptr %202, align 8, !dbg !1867
  %204 = load ptr, ptr %3, align 8, !dbg !1867
  %205 = call i32 %203(ptr noundef %204), !dbg !1867
  %206 = icmp ne i32 %205, 0, !dbg !1867
  br i1 %206, label %208, label %207, !dbg !1867

207:                                              ; preds = %200
  store i32 0, ptr %2, align 4, !dbg !1870
  br label %456, !dbg !1870

208:                                              ; preds = %200
  %209 = load ptr, ptr %11, align 8, !dbg !1872
  %210 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %209, i32 0, i32 0, !dbg !1872
  %211 = load ptr, ptr %210, align 8, !dbg !1872
  store ptr %211, ptr %12, align 8, !dbg !1872
  %212 = load ptr, ptr %11, align 8, !dbg !1872
  %213 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %212, i32 0, i32 1, !dbg !1872
  %214 = load i64, ptr %213, align 8, !dbg !1872
  store i64 %214, ptr %13, align 8, !dbg !1872
  br label %215, !dbg !1872

215:                                              ; preds = %208, %197
  %216 = load i64, ptr %13, align 8, !dbg !1873
  %217 = add i64 %216, -1, !dbg !1873
  store i64 %217, ptr %13, align 8, !dbg !1873
  %218 = load ptr, ptr %12, align 8, !dbg !1873
  %219 = getelementptr inbounds nuw i8, ptr %218, i32 1, !dbg !1873
  store ptr %219, ptr %12, align 8, !dbg !1873
  %220 = load i8, ptr %218, align 1, !dbg !1873
  %221 = zext i8 %220 to i32, !dbg !1873
  store i32 %221, ptr %8, align 4, !dbg !1873
  br label %222, !dbg !1873

222:                                              ; preds = %215
  store i32 0, ptr %6, align 4, !dbg !1874
  %223 = load ptr, ptr %3, align 8, !dbg !1876
  %224 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %223, i32 0, i32 43, !dbg !1877
  %225 = load ptr, ptr %224, align 8, !dbg !1877
  store ptr %225, ptr %10, align 8, !dbg !1878
  br label %226, !dbg !1879

226:                                              ; preds = %240, %222
  %227 = load i32, ptr %6, align 4, !dbg !1880
  %228 = load ptr, ptr %3, align 8, !dbg !1882
  %229 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %228, i32 0, i32 8, !dbg !1883
  %230 = load i32, ptr %229, align 8, !dbg !1883
  %231 = icmp slt i32 %227, %230, !dbg !1884
  br i1 %231, label %232, label %245, !dbg !1885

232:                                              ; preds = %226
  %233 = load i32, ptr %9, align 4, !dbg !1886
  %234 = load ptr, ptr %10, align 8, !dbg !1889
  %235 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %234, i32 0, i32 0, !dbg !1890
  %236 = load i32, ptr %235, align 8, !dbg !1890
  %237 = icmp eq i32 %233, %236, !dbg !1891
  br i1 %237, label %238, label %239, !dbg !1891

238:                                              ; preds = %232
  br label %262, !dbg !1892

239:                                              ; preds = %232
  br label %240, !dbg !1893

240:                                              ; preds = %239
  %241 = load i32, ptr %6, align 4, !dbg !1894
  %242 = add nsw i32 %241, 1, !dbg !1894
  store i32 %242, ptr %6, align 4, !dbg !1894
  %243 = load ptr, ptr %10, align 8, !dbg !1895
  %244 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %243, i32 1, !dbg !1895
  store ptr %244, ptr %10, align 8, !dbg !1895
  br label %226, !dbg !1896, !llvm.loop !1897

245:                                              ; preds = %226
  %246 = load ptr, ptr %3, align 8, !dbg !1899
  %247 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %246, i32 0, i32 0, !dbg !1899
  %248 = load ptr, ptr %247, align 8, !dbg !1899
  %249 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %248, i32 0, i32 5, !dbg !1899
  store i32 5, ptr %249, align 8, !dbg !1899
  %250 = load i32, ptr %9, align 4, !dbg !1899
  %251 = load ptr, ptr %3, align 8, !dbg !1899
  %252 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %251, i32 0, i32 0, !dbg !1899
  %253 = load ptr, ptr %252, align 8, !dbg !1899
  %254 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %253, i32 0, i32 6, !dbg !1899
  %255 = getelementptr inbounds [8 x i32], ptr %254, i64 0, i64 0, !dbg !1899
  store i32 %250, ptr %255, align 4, !dbg !1899
  %256 = load ptr, ptr %3, align 8, !dbg !1899
  %257 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %256, i32 0, i32 0, !dbg !1899
  %258 = load ptr, ptr %257, align 8, !dbg !1899
  %259 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %258, i32 0, i32 0, !dbg !1899
  %260 = load ptr, ptr %259, align 8, !dbg !1899
  %261 = load ptr, ptr %3, align 8, !dbg !1899
  call void %260(ptr noundef %261), !dbg !1899
  br label %262, !dbg !1899

262:                                              ; preds = %245, %238
    #dbg_label(!1900, !1901)
  %263 = load ptr, ptr %10, align 8, !dbg !1902
  %264 = load ptr, ptr %3, align 8, !dbg !1903
  %265 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %264, i32 0, i32 63, !dbg !1904
  %266 = load i32, ptr %5, align 4, !dbg !1905
  %267 = sext i32 %266 to i64, !dbg !1903
  %268 = getelementptr inbounds [4 x ptr], ptr %265, i64 0, i64 %267, !dbg !1903
  store ptr %263, ptr %268, align 8, !dbg !1906
  %269 = load i32, ptr %8, align 4, !dbg !1907
  %270 = ashr i32 %269, 4, !dbg !1908
  %271 = and i32 %270, 15, !dbg !1909
  %272 = load ptr, ptr %10, align 8, !dbg !1910
  %273 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %272, i32 0, i32 5, !dbg !1911
  store i32 %271, ptr %273, align 4, !dbg !1912
  %274 = load i32, ptr %8, align 4, !dbg !1913
  %275 = and i32 %274, 15, !dbg !1914
  %276 = load ptr, ptr %10, align 8, !dbg !1915
  %277 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %276, i32 0, i32 6, !dbg !1916
  store i32 %275, ptr %277, align 8, !dbg !1917
  br label %278, !dbg !1918

278:                                              ; preds = %262
    #dbg_declare(ptr %14, !1919, !DIExpression(), !1921)
  %279 = load ptr, ptr %3, align 8, !dbg !1921
  %280 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %279, i32 0, i32 0, !dbg !1921
  %281 = load ptr, ptr %280, align 8, !dbg !1921
  %282 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %281, i32 0, i32 6, !dbg !1921
  %283 = getelementptr inbounds [8 x i32], ptr %282, i64 0, i64 0, !dbg !1921
  store ptr %283, ptr %14, align 8, !dbg !1921
  %284 = load i32, ptr %9, align 4, !dbg !1921
  %285 = load ptr, ptr %14, align 8, !dbg !1921
  %286 = getelementptr inbounds i32, ptr %285, i64 0, !dbg !1921
  store i32 %284, ptr %286, align 4, !dbg !1921
  %287 = load ptr, ptr %10, align 8, !dbg !1921
  %288 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %287, i32 0, i32 5, !dbg !1921
  %289 = load i32, ptr %288, align 4, !dbg !1921
  %290 = load ptr, ptr %14, align 8, !dbg !1921
  %291 = getelementptr inbounds i32, ptr %290, i64 1, !dbg !1921
  store i32 %289, ptr %291, align 4, !dbg !1921
  %292 = load ptr, ptr %10, align 8, !dbg !1921
  %293 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %292, i32 0, i32 6, !dbg !1921
  %294 = load i32, ptr %293, align 8, !dbg !1921
  %295 = load ptr, ptr %14, align 8, !dbg !1921
  %296 = getelementptr inbounds i32, ptr %295, i64 2, !dbg !1921
  store i32 %294, ptr %296, align 4, !dbg !1921
  %297 = load ptr, ptr %3, align 8, !dbg !1921
  %298 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %297, i32 0, i32 0, !dbg !1921
  %299 = load ptr, ptr %298, align 8, !dbg !1921
  %300 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %299, i32 0, i32 5, !dbg !1921
  store i32 103, ptr %300, align 8, !dbg !1921
  %301 = load ptr, ptr %3, align 8, !dbg !1921
  %302 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %301, i32 0, i32 0, !dbg !1921
  %303 = load ptr, ptr %302, align 8, !dbg !1921
  %304 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %303, i32 0, i32 1, !dbg !1921
  %305 = load ptr, ptr %304, align 8, !dbg !1921
  %306 = load ptr, ptr %3, align 8, !dbg !1921
  call void %305(ptr noundef %306, i32 noundef 1), !dbg !1921
  br label %307, !dbg !1921

307:                                              ; preds = %278
  br label %308, !dbg !1922

308:                                              ; preds = %307
  %309 = load i32, ptr %5, align 4, !dbg !1923
  %310 = add nsw i32 %309, 1, !dbg !1923
  store i32 %310, ptr %5, align 4, !dbg !1923
  br label %166, !dbg !1924, !llvm.loop !1925

311:                                              ; preds = %166
  br label %312, !dbg !1927

312:                                              ; preds = %311
  %313 = load i64, ptr %13, align 8, !dbg !1928
  %314 = icmp eq i64 %313, 0, !dbg !1928
  br i1 %314, label %315, label %330, !dbg !1928

315:                                              ; preds = %312
  %316 = load ptr, ptr %11, align 8, !dbg !1931
  %317 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %316, i32 0, i32 3, !dbg !1931
  %318 = load ptr, ptr %317, align 8, !dbg !1931
  %319 = load ptr, ptr %3, align 8, !dbg !1931
  %320 = call i32 %318(ptr noundef %319), !dbg !1931
  %321 = icmp ne i32 %320, 0, !dbg !1931
  br i1 %321, label %323, label %322, !dbg !1931

322:                                              ; preds = %315
  store i32 0, ptr %2, align 4, !dbg !1934
  br label %456, !dbg !1934

323:                                              ; preds = %315
  %324 = load ptr, ptr %11, align 8, !dbg !1936
  %325 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %324, i32 0, i32 0, !dbg !1936
  %326 = load ptr, ptr %325, align 8, !dbg !1936
  store ptr %326, ptr %12, align 8, !dbg !1936
  %327 = load ptr, ptr %11, align 8, !dbg !1936
  %328 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %327, i32 0, i32 1, !dbg !1936
  %329 = load i64, ptr %328, align 8, !dbg !1936
  store i64 %329, ptr %13, align 8, !dbg !1936
  br label %330, !dbg !1936

330:                                              ; preds = %323, %312
  %331 = load i64, ptr %13, align 8, !dbg !1937
  %332 = add i64 %331, -1, !dbg !1937
  store i64 %332, ptr %13, align 8, !dbg !1937
  %333 = load ptr, ptr %12, align 8, !dbg !1937
  %334 = getelementptr inbounds nuw i8, ptr %333, i32 1, !dbg !1937
  store ptr %334, ptr %12, align 8, !dbg !1937
  %335 = load i8, ptr %333, align 1, !dbg !1937
  %336 = zext i8 %335 to i32, !dbg !1937
  store i32 %336, ptr %8, align 4, !dbg !1937
  br label %337, !dbg !1937

337:                                              ; preds = %330
  %338 = load i32, ptr %8, align 4, !dbg !1938
  %339 = load ptr, ptr %3, align 8, !dbg !1939
  %340 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %339, i32 0, i32 68, !dbg !1940
  store i32 %338, ptr %340, align 4, !dbg !1941
  br label %341, !dbg !1942

341:                                              ; preds = %337
  %342 = load i64, ptr %13, align 8, !dbg !1943
  %343 = icmp eq i64 %342, 0, !dbg !1943
  br i1 %343, label %344, label %359, !dbg !1943

344:                                              ; preds = %341
  %345 = load ptr, ptr %11, align 8, !dbg !1946
  %346 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %345, i32 0, i32 3, !dbg !1946
  %347 = load ptr, ptr %346, align 8, !dbg !1946
  %348 = load ptr, ptr %3, align 8, !dbg !1946
  %349 = call i32 %347(ptr noundef %348), !dbg !1946
  %350 = icmp ne i32 %349, 0, !dbg !1946
  br i1 %350, label %352, label %351, !dbg !1946

351:                                              ; preds = %344
  store i32 0, ptr %2, align 4, !dbg !1949
  br label %456, !dbg !1949

352:                                              ; preds = %344
  %353 = load ptr, ptr %11, align 8, !dbg !1951
  %354 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %353, i32 0, i32 0, !dbg !1951
  %355 = load ptr, ptr %354, align 8, !dbg !1951
  store ptr %355, ptr %12, align 8, !dbg !1951
  %356 = load ptr, ptr %11, align 8, !dbg !1951
  %357 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %356, i32 0, i32 1, !dbg !1951
  %358 = load i64, ptr %357, align 8, !dbg !1951
  store i64 %358, ptr %13, align 8, !dbg !1951
  br label %359, !dbg !1951

359:                                              ; preds = %352, %341
  %360 = load i64, ptr %13, align 8, !dbg !1952
  %361 = add i64 %360, -1, !dbg !1952
  store i64 %361, ptr %13, align 8, !dbg !1952
  %362 = load ptr, ptr %12, align 8, !dbg !1952
  %363 = getelementptr inbounds nuw i8, ptr %362, i32 1, !dbg !1952
  store ptr %363, ptr %12, align 8, !dbg !1952
  %364 = load i8, ptr %362, align 1, !dbg !1952
  %365 = zext i8 %364 to i32, !dbg !1952
  store i32 %365, ptr %8, align 4, !dbg !1952
  br label %366, !dbg !1952

366:                                              ; preds = %359
  %367 = load i32, ptr %8, align 4, !dbg !1953
  %368 = load ptr, ptr %3, align 8, !dbg !1954
  %369 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %368, i32 0, i32 69, !dbg !1955
  store i32 %367, ptr %369, align 8, !dbg !1956
  br label %370, !dbg !1957

370:                                              ; preds = %366
  %371 = load i64, ptr %13, align 8, !dbg !1958
  %372 = icmp eq i64 %371, 0, !dbg !1958
  br i1 %372, label %373, label %388, !dbg !1958

373:                                              ; preds = %370
  %374 = load ptr, ptr %11, align 8, !dbg !1961
  %375 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %374, i32 0, i32 3, !dbg !1961
  %376 = load ptr, ptr %375, align 8, !dbg !1961
  %377 = load ptr, ptr %3, align 8, !dbg !1961
  %378 = call i32 %376(ptr noundef %377), !dbg !1961
  %379 = icmp ne i32 %378, 0, !dbg !1961
  br i1 %379, label %381, label %380, !dbg !1961

380:                                              ; preds = %373
  store i32 0, ptr %2, align 4, !dbg !1964
  br label %456, !dbg !1964

381:                                              ; preds = %373
  %382 = load ptr, ptr %11, align 8, !dbg !1966
  %383 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %382, i32 0, i32 0, !dbg !1966
  %384 = load ptr, ptr %383, align 8, !dbg !1966
  store ptr %384, ptr %12, align 8, !dbg !1966
  %385 = load ptr, ptr %11, align 8, !dbg !1966
  %386 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %385, i32 0, i32 1, !dbg !1966
  %387 = load i64, ptr %386, align 8, !dbg !1966
  store i64 %387, ptr %13, align 8, !dbg !1966
  br label %388, !dbg !1966

388:                                              ; preds = %381, %370
  %389 = load i64, ptr %13, align 8, !dbg !1967
  %390 = add i64 %389, -1, !dbg !1967
  store i64 %390, ptr %13, align 8, !dbg !1967
  %391 = load ptr, ptr %12, align 8, !dbg !1967
  %392 = getelementptr inbounds nuw i8, ptr %391, i32 1, !dbg !1967
  store ptr %392, ptr %12, align 8, !dbg !1967
  %393 = load i8, ptr %391, align 1, !dbg !1967
  %394 = zext i8 %393 to i32, !dbg !1967
  store i32 %394, ptr %8, align 4, !dbg !1967
  br label %395, !dbg !1967

395:                                              ; preds = %388
  %396 = load i32, ptr %8, align 4, !dbg !1968
  %397 = ashr i32 %396, 4, !dbg !1969
  %398 = and i32 %397, 15, !dbg !1970
  %399 = load ptr, ptr %3, align 8, !dbg !1971
  %400 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %399, i32 0, i32 70, !dbg !1972
  store i32 %398, ptr %400, align 4, !dbg !1973
  %401 = load i32, ptr %8, align 4, !dbg !1974
  %402 = and i32 %401, 15, !dbg !1975
  %403 = load ptr, ptr %3, align 8, !dbg !1976
  %404 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %403, i32 0, i32 71, !dbg !1977
  store i32 %402, ptr %404, align 8, !dbg !1978
  br label %405, !dbg !1979

405:                                              ; preds = %395
    #dbg_declare(ptr %15, !1980, !DIExpression(), !1982)
  %406 = load ptr, ptr %3, align 8, !dbg !1982
  %407 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %406, i32 0, i32 0, !dbg !1982
  %408 = load ptr, ptr %407, align 8, !dbg !1982
  %409 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %408, i32 0, i32 6, !dbg !1982
  %410 = getelementptr inbounds [8 x i32], ptr %409, i64 0, i64 0, !dbg !1982
  store ptr %410, ptr %15, align 8, !dbg !1982
  %411 = load ptr, ptr %3, align 8, !dbg !1982
  %412 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %411, i32 0, i32 68, !dbg !1982
  %413 = load i32, ptr %412, align 4, !dbg !1982
  %414 = load ptr, ptr %15, align 8, !dbg !1982
  %415 = getelementptr inbounds i32, ptr %414, i64 0, !dbg !1982
  store i32 %413, ptr %415, align 4, !dbg !1982
  %416 = load ptr, ptr %3, align 8, !dbg !1982
  %417 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %416, i32 0, i32 69, !dbg !1982
  %418 = load i32, ptr %417, align 8, !dbg !1982
  %419 = load ptr, ptr %15, align 8, !dbg !1982
  %420 = getelementptr inbounds i32, ptr %419, i64 1, !dbg !1982
  store i32 %418, ptr %420, align 4, !dbg !1982
  %421 = load ptr, ptr %3, align 8, !dbg !1982
  %422 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %421, i32 0, i32 70, !dbg !1982
  %423 = load i32, ptr %422, align 4, !dbg !1982
  %424 = load ptr, ptr %15, align 8, !dbg !1982
  %425 = getelementptr inbounds i32, ptr %424, i64 2, !dbg !1982
  store i32 %423, ptr %425, align 4, !dbg !1982
  %426 = load ptr, ptr %3, align 8, !dbg !1982
  %427 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %426, i32 0, i32 71, !dbg !1982
  %428 = load i32, ptr %427, align 8, !dbg !1982
  %429 = load ptr, ptr %15, align 8, !dbg !1982
  %430 = getelementptr inbounds i32, ptr %429, i64 3, !dbg !1982
  store i32 %428, ptr %430, align 4, !dbg !1982
  %431 = load ptr, ptr %3, align 8, !dbg !1982
  %432 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %431, i32 0, i32 0, !dbg !1982
  %433 = load ptr, ptr %432, align 8, !dbg !1982
  %434 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %433, i32 0, i32 5, !dbg !1982
  store i32 104, ptr %434, align 8, !dbg !1982
  %435 = load ptr, ptr %3, align 8, !dbg !1982
  %436 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %435, i32 0, i32 0, !dbg !1982
  %437 = load ptr, ptr %436, align 8, !dbg !1982
  %438 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %437, i32 0, i32 1, !dbg !1982
  %439 = load ptr, ptr %438, align 8, !dbg !1982
  %440 = load ptr, ptr %3, align 8, !dbg !1982
  call void %439(ptr noundef %440, i32 noundef 1), !dbg !1982
  br label %441, !dbg !1982

441:                                              ; preds = %405
  %442 = load ptr, ptr %3, align 8, !dbg !1983
  %443 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %442, i32 0, i32 78, !dbg !1984
  %444 = load ptr, ptr %443, align 8, !dbg !1984
  %445 = getelementptr inbounds nuw %struct.jpeg_marker_reader, ptr %444, i32 0, i32 7, !dbg !1985
  store i32 0, ptr %445, align 8, !dbg !1986
  %446 = load ptr, ptr %3, align 8, !dbg !1987
  %447 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %446, i32 0, i32 34, !dbg !1988
  %448 = load i32, ptr %447, align 4, !dbg !1989
  %449 = add nsw i32 %448, 1, !dbg !1989
  store i32 %449, ptr %447, align 4, !dbg !1989
  %450 = load ptr, ptr %12, align 8, !dbg !1990
  %451 = load ptr, ptr %11, align 8, !dbg !1990
  %452 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %451, i32 0, i32 0, !dbg !1990
  store ptr %450, ptr %452, align 8, !dbg !1990
  %453 = load i64, ptr %13, align 8, !dbg !1990
  %454 = load ptr, ptr %11, align 8, !dbg !1990
  %455 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %454, i32 0, i32 1, !dbg !1990
  store i64 %453, ptr %455, align 8, !dbg !1990
  store i32 1, ptr %2, align 4, !dbg !1991
  br label %456, !dbg !1991

456:                                              ; preds = %441, %380, %351, %322, %207, %181, %107, %79, %53
  %457 = load i32, ptr %2, align 4, !dbg !1992
  ret i32 %457, !dbg !1992
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_dac(ptr noundef %0) #0 !dbg !1993 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1994, !DIExpression(), !1995)
    #dbg_declare(ptr %4, !1996, !DIExpression(), !1997)
    #dbg_declare(ptr %5, !1998, !DIExpression(), !1999)
    #dbg_declare(ptr %6, !2000, !DIExpression(), !2001)
    #dbg_declare(ptr %7, !2002, !DIExpression(), !2003)
  %10 = load ptr, ptr %3, align 8, !dbg !2003
  %11 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %10, i32 0, i32 5, !dbg !2003
  %12 = load ptr, ptr %11, align 8, !dbg !2003
  store ptr %12, ptr %7, align 8, !dbg !2003
    #dbg_declare(ptr %8, !2004, !DIExpression(), !2003)
  %13 = load ptr, ptr %7, align 8, !dbg !2003
  %14 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %13, i32 0, i32 0, !dbg !2003
  %15 = load ptr, ptr %14, align 8, !dbg !2003
  store ptr %15, ptr %8, align 8, !dbg !2003
    #dbg_declare(ptr %9, !2005, !DIExpression(), !2003)
  %16 = load ptr, ptr %7, align 8, !dbg !2003
  %17 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %16, i32 0, i32 1, !dbg !2003
  %18 = load i64, ptr %17, align 8, !dbg !2003
  store i64 %18, ptr %9, align 8, !dbg !2003
  br label %19, !dbg !2006

19:                                               ; preds = %1
  %20 = load i64, ptr %9, align 8, !dbg !2007
  %21 = icmp eq i64 %20, 0, !dbg !2007
  br i1 %21, label %22, label %37, !dbg !2007

22:                                               ; preds = %19
  %23 = load ptr, ptr %7, align 8, !dbg !2010
  %24 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %23, i32 0, i32 3, !dbg !2010
  %25 = load ptr, ptr %24, align 8, !dbg !2010
  %26 = load ptr, ptr %3, align 8, !dbg !2010
  %27 = call i32 %25(ptr noundef %26), !dbg !2010
  %28 = icmp ne i32 %27, 0, !dbg !2010
  br i1 %28, label %30, label %29, !dbg !2010

29:                                               ; preds = %22
  store i32 0, ptr %2, align 4, !dbg !2013
  br label %247, !dbg !2013

30:                                               ; preds = %22
  %31 = load ptr, ptr %7, align 8, !dbg !2015
  %32 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %31, i32 0, i32 0, !dbg !2015
  %33 = load ptr, ptr %32, align 8, !dbg !2015
  store ptr %33, ptr %8, align 8, !dbg !2015
  %34 = load ptr, ptr %7, align 8, !dbg !2015
  %35 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %34, i32 0, i32 1, !dbg !2015
  %36 = load i64, ptr %35, align 8, !dbg !2015
  store i64 %36, ptr %9, align 8, !dbg !2015
  br label %37, !dbg !2015

37:                                               ; preds = %30, %19
  %38 = load i64, ptr %9, align 8, !dbg !2016
  %39 = add i64 %38, -1, !dbg !2016
  store i64 %39, ptr %9, align 8, !dbg !2016
  %40 = load ptr, ptr %8, align 8, !dbg !2016
  %41 = getelementptr inbounds nuw i8, ptr %40, i32 1, !dbg !2016
  store ptr %41, ptr %8, align 8, !dbg !2016
  %42 = load i8, ptr %40, align 1, !dbg !2016
  %43 = zext i8 %42 to i32, !dbg !2016
  %44 = shl i32 %43, 8, !dbg !2016
  %45 = zext i32 %44 to i64, !dbg !2016
  store i64 %45, ptr %4, align 8, !dbg !2016
  %46 = load i64, ptr %9, align 8, !dbg !2017
  %47 = icmp eq i64 %46, 0, !dbg !2017
  br i1 %47, label %48, label %63, !dbg !2017

48:                                               ; preds = %37
  %49 = load ptr, ptr %7, align 8, !dbg !2019
  %50 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %49, i32 0, i32 3, !dbg !2019
  %51 = load ptr, ptr %50, align 8, !dbg !2019
  %52 = load ptr, ptr %3, align 8, !dbg !2019
  %53 = call i32 %51(ptr noundef %52), !dbg !2019
  %54 = icmp ne i32 %53, 0, !dbg !2019
  br i1 %54, label %56, label %55, !dbg !2019

55:                                               ; preds = %48
  store i32 0, ptr %2, align 4, !dbg !2022
  br label %247, !dbg !2022

56:                                               ; preds = %48
  %57 = load ptr, ptr %7, align 8, !dbg !2024
  %58 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %57, i32 0, i32 0, !dbg !2024
  %59 = load ptr, ptr %58, align 8, !dbg !2024
  store ptr %59, ptr %8, align 8, !dbg !2024
  %60 = load ptr, ptr %7, align 8, !dbg !2024
  %61 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %60, i32 0, i32 1, !dbg !2024
  %62 = load i64, ptr %61, align 8, !dbg !2024
  store i64 %62, ptr %9, align 8, !dbg !2024
  br label %63, !dbg !2024

63:                                               ; preds = %56, %37
  %64 = load i64, ptr %9, align 8, !dbg !2016
  %65 = add i64 %64, -1, !dbg !2016
  store i64 %65, ptr %9, align 8, !dbg !2016
  %66 = load ptr, ptr %8, align 8, !dbg !2016
  %67 = getelementptr inbounds nuw i8, ptr %66, i32 1, !dbg !2016
  store ptr %67, ptr %8, align 8, !dbg !2016
  %68 = load i8, ptr %66, align 1, !dbg !2016
  %69 = zext i8 %68 to i64, !dbg !2016
  %70 = load i64, ptr %4, align 8, !dbg !2016
  %71 = add nsw i64 %70, %69, !dbg !2016
  store i64 %71, ptr %4, align 8, !dbg !2016
  br label %72, !dbg !2016

72:                                               ; preds = %63
  %73 = load i64, ptr %4, align 8, !dbg !2025
  %74 = sub nsw i64 %73, 2, !dbg !2025
  store i64 %74, ptr %4, align 8, !dbg !2025
  br label %75, !dbg !2026

75:                                               ; preds = %239, %72
  %76 = load i64, ptr %4, align 8, !dbg !2027
  %77 = icmp sgt i64 %76, 0, !dbg !2028
  br i1 %77, label %78, label %240, !dbg !2026

78:                                               ; preds = %75
  br label %79, !dbg !2029

79:                                               ; preds = %78
  %80 = load i64, ptr %9, align 8, !dbg !2031
  %81 = icmp eq i64 %80, 0, !dbg !2031
  br i1 %81, label %82, label %97, !dbg !2031

82:                                               ; preds = %79
  %83 = load ptr, ptr %7, align 8, !dbg !2034
  %84 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %83, i32 0, i32 3, !dbg !2034
  %85 = load ptr, ptr %84, align 8, !dbg !2034
  %86 = load ptr, ptr %3, align 8, !dbg !2034
  %87 = call i32 %85(ptr noundef %86), !dbg !2034
  %88 = icmp ne i32 %87, 0, !dbg !2034
  br i1 %88, label %90, label %89, !dbg !2034

89:                                               ; preds = %82
  store i32 0, ptr %2, align 4, !dbg !2037
  br label %247, !dbg !2037

90:                                               ; preds = %82
  %91 = load ptr, ptr %7, align 8, !dbg !2039
  %92 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %91, i32 0, i32 0, !dbg !2039
  %93 = load ptr, ptr %92, align 8, !dbg !2039
  store ptr %93, ptr %8, align 8, !dbg !2039
  %94 = load ptr, ptr %7, align 8, !dbg !2039
  %95 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %94, i32 0, i32 1, !dbg !2039
  %96 = load i64, ptr %95, align 8, !dbg !2039
  store i64 %96, ptr %9, align 8, !dbg !2039
  br label %97, !dbg !2039

97:                                               ; preds = %90, %79
  %98 = load i64, ptr %9, align 8, !dbg !2040
  %99 = add i64 %98, -1, !dbg !2040
  store i64 %99, ptr %9, align 8, !dbg !2040
  %100 = load ptr, ptr %8, align 8, !dbg !2040
  %101 = getelementptr inbounds nuw i8, ptr %100, i32 1, !dbg !2040
  store ptr %101, ptr %8, align 8, !dbg !2040
  %102 = load i8, ptr %100, align 1, !dbg !2040
  %103 = zext i8 %102 to i32, !dbg !2040
  store i32 %103, ptr %5, align 4, !dbg !2040
  br label %104, !dbg !2040

104:                                              ; preds = %97
  br label %105, !dbg !2041

105:                                              ; preds = %104
  %106 = load i64, ptr %9, align 8, !dbg !2042
  %107 = icmp eq i64 %106, 0, !dbg !2042
  br i1 %107, label %108, label %123, !dbg !2042

108:                                              ; preds = %105
  %109 = load ptr, ptr %7, align 8, !dbg !2045
  %110 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %109, i32 0, i32 3, !dbg !2045
  %111 = load ptr, ptr %110, align 8, !dbg !2045
  %112 = load ptr, ptr %3, align 8, !dbg !2045
  %113 = call i32 %111(ptr noundef %112), !dbg !2045
  %114 = icmp ne i32 %113, 0, !dbg !2045
  br i1 %114, label %116, label %115, !dbg !2045

115:                                              ; preds = %108
  store i32 0, ptr %2, align 4, !dbg !2048
  br label %247, !dbg !2048

116:                                              ; preds = %108
  %117 = load ptr, ptr %7, align 8, !dbg !2050
  %118 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %117, i32 0, i32 0, !dbg !2050
  %119 = load ptr, ptr %118, align 8, !dbg !2050
  store ptr %119, ptr %8, align 8, !dbg !2050
  %120 = load ptr, ptr %7, align 8, !dbg !2050
  %121 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %120, i32 0, i32 1, !dbg !2050
  %122 = load i64, ptr %121, align 8, !dbg !2050
  store i64 %122, ptr %9, align 8, !dbg !2050
  br label %123, !dbg !2050

123:                                              ; preds = %116, %105
  %124 = load i64, ptr %9, align 8, !dbg !2051
  %125 = add i64 %124, -1, !dbg !2051
  store i64 %125, ptr %9, align 8, !dbg !2051
  %126 = load ptr, ptr %8, align 8, !dbg !2051
  %127 = getelementptr inbounds nuw i8, ptr %126, i32 1, !dbg !2051
  store ptr %127, ptr %8, align 8, !dbg !2051
  %128 = load i8, ptr %126, align 1, !dbg !2051
  %129 = zext i8 %128 to i32, !dbg !2051
  store i32 %129, ptr %6, align 4, !dbg !2051
  br label %130, !dbg !2051

130:                                              ; preds = %123
  %131 = load i64, ptr %4, align 8, !dbg !2052
  %132 = sub nsw i64 %131, 2, !dbg !2052
  store i64 %132, ptr %4, align 8, !dbg !2052
  %133 = load ptr, ptr %3, align 8, !dbg !2053
  %134 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %133, i32 0, i32 0, !dbg !2053
  %135 = load ptr, ptr %134, align 8, !dbg !2053
  %136 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %135, i32 0, i32 5, !dbg !2053
  store i32 78, ptr %136, align 8, !dbg !2053
  %137 = load i32, ptr %5, align 4, !dbg !2053
  %138 = load ptr, ptr %3, align 8, !dbg !2053
  %139 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %138, i32 0, i32 0, !dbg !2053
  %140 = load ptr, ptr %139, align 8, !dbg !2053
  %141 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %140, i32 0, i32 6, !dbg !2053
  %142 = getelementptr inbounds [8 x i32], ptr %141, i64 0, i64 0, !dbg !2053
  store i32 %137, ptr %142, align 4, !dbg !2053
  %143 = load i32, ptr %6, align 4, !dbg !2053
  %144 = load ptr, ptr %3, align 8, !dbg !2053
  %145 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %144, i32 0, i32 0, !dbg !2053
  %146 = load ptr, ptr %145, align 8, !dbg !2053
  %147 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %146, i32 0, i32 6, !dbg !2053
  %148 = getelementptr inbounds [8 x i32], ptr %147, i64 0, i64 1, !dbg !2053
  store i32 %143, ptr %148, align 4, !dbg !2053
  %149 = load ptr, ptr %3, align 8, !dbg !2053
  %150 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %149, i32 0, i32 0, !dbg !2053
  %151 = load ptr, ptr %150, align 8, !dbg !2053
  %152 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %151, i32 0, i32 1, !dbg !2053
  %153 = load ptr, ptr %152, align 8, !dbg !2053
  %154 = load ptr, ptr %3, align 8, !dbg !2053
  call void %153(ptr noundef %154, i32 noundef 1), !dbg !2053
  %155 = load i32, ptr %5, align 4, !dbg !2054
  %156 = icmp slt i32 %155, 0, !dbg !2056
  br i1 %156, label %160, label %157, !dbg !2057

157:                                              ; preds = %130
  %158 = load i32, ptr %5, align 4, !dbg !2058
  %159 = icmp sge i32 %158, 32, !dbg !2059
  br i1 %159, label %160, label %177, !dbg !2057

160:                                              ; preds = %157, %130
  %161 = load ptr, ptr %3, align 8, !dbg !2060
  %162 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %161, i32 0, i32 0, !dbg !2060
  %163 = load ptr, ptr %162, align 8, !dbg !2060
  %164 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %163, i32 0, i32 5, !dbg !2060
  store i32 26, ptr %164, align 8, !dbg !2060
  %165 = load i32, ptr %5, align 4, !dbg !2060
  %166 = load ptr, ptr %3, align 8, !dbg !2060
  %167 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %166, i32 0, i32 0, !dbg !2060
  %168 = load ptr, ptr %167, align 8, !dbg !2060
  %169 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %168, i32 0, i32 6, !dbg !2060
  %170 = getelementptr inbounds [8 x i32], ptr %169, i64 0, i64 0, !dbg !2060
  store i32 %165, ptr %170, align 4, !dbg !2060
  %171 = load ptr, ptr %3, align 8, !dbg !2060
  %172 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %171, i32 0, i32 0, !dbg !2060
  %173 = load ptr, ptr %172, align 8, !dbg !2060
  %174 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %173, i32 0, i32 0, !dbg !2060
  %175 = load ptr, ptr %174, align 8, !dbg !2060
  %176 = load ptr, ptr %3, align 8, !dbg !2060
  call void %175(ptr noundef %176), !dbg !2060
  br label %177, !dbg !2060

177:                                              ; preds = %160, %157
  %178 = load i32, ptr %5, align 4, !dbg !2061
  %179 = icmp sge i32 %178, 16, !dbg !2063
  br i1 %179, label %180, label %189, !dbg !2063

180:                                              ; preds = %177
  %181 = load i32, ptr %6, align 4, !dbg !2064
  %182 = trunc i32 %181 to i8, !dbg !2066
  %183 = load ptr, ptr %3, align 8, !dbg !2067
  %184 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %183, i32 0, i32 48, !dbg !2068
  %185 = load i32, ptr %5, align 4, !dbg !2069
  %186 = sub nsw i32 %185, 16, !dbg !2070
  %187 = sext i32 %186 to i64, !dbg !2067
  %188 = getelementptr inbounds [16 x i8], ptr %184, i64 0, i64 %187, !dbg !2067
  store i8 %182, ptr %188, align 1, !dbg !2071
  br label %239, !dbg !2072

189:                                              ; preds = %177
  %190 = load i32, ptr %6, align 4, !dbg !2073
  %191 = and i32 %190, 15, !dbg !2075
  %192 = trunc i32 %191 to i8, !dbg !2076
  %193 = load ptr, ptr %3, align 8, !dbg !2077
  %194 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %193, i32 0, i32 46, !dbg !2078
  %195 = load i32, ptr %5, align 4, !dbg !2079
  %196 = sext i32 %195 to i64, !dbg !2077
  %197 = getelementptr inbounds [16 x i8], ptr %194, i64 0, i64 %196, !dbg !2077
  store i8 %192, ptr %197, align 1, !dbg !2080
  %198 = load i32, ptr %6, align 4, !dbg !2081
  %199 = ashr i32 %198, 4, !dbg !2082
  %200 = trunc i32 %199 to i8, !dbg !2083
  %201 = load ptr, ptr %3, align 8, !dbg !2084
  %202 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %201, i32 0, i32 47, !dbg !2085
  %203 = load i32, ptr %5, align 4, !dbg !2086
  %204 = sext i32 %203 to i64, !dbg !2084
  %205 = getelementptr inbounds [16 x i8], ptr %202, i64 0, i64 %204, !dbg !2084
  store i8 %200, ptr %205, align 1, !dbg !2087
  %206 = load ptr, ptr %3, align 8, !dbg !2088
  %207 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %206, i32 0, i32 46, !dbg !2090
  %208 = load i32, ptr %5, align 4, !dbg !2091
  %209 = sext i32 %208 to i64, !dbg !2088
  %210 = getelementptr inbounds [16 x i8], ptr %207, i64 0, i64 %209, !dbg !2088
  %211 = load i8, ptr %210, align 1, !dbg !2088
  %212 = zext i8 %211 to i32, !dbg !2088
  %213 = load ptr, ptr %3, align 8, !dbg !2092
  %214 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %213, i32 0, i32 47, !dbg !2093
  %215 = load i32, ptr %5, align 4, !dbg !2094
  %216 = sext i32 %215 to i64, !dbg !2092
  %217 = getelementptr inbounds [16 x i8], ptr %214, i64 0, i64 %216, !dbg !2092
  %218 = load i8, ptr %217, align 1, !dbg !2092
  %219 = zext i8 %218 to i32, !dbg !2092
  %220 = icmp sgt i32 %212, %219, !dbg !2095
  br i1 %220, label %221, label %238, !dbg !2095

221:                                              ; preds = %189
  %222 = load ptr, ptr %3, align 8, !dbg !2096
  %223 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %222, i32 0, i32 0, !dbg !2096
  %224 = load ptr, ptr %223, align 8, !dbg !2096
  %225 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %224, i32 0, i32 5, !dbg !2096
  store i32 27, ptr %225, align 8, !dbg !2096
  %226 = load i32, ptr %6, align 4, !dbg !2096
  %227 = load ptr, ptr %3, align 8, !dbg !2096
  %228 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %227, i32 0, i32 0, !dbg !2096
  %229 = load ptr, ptr %228, align 8, !dbg !2096
  %230 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %229, i32 0, i32 6, !dbg !2096
  %231 = getelementptr inbounds [8 x i32], ptr %230, i64 0, i64 0, !dbg !2096
  store i32 %226, ptr %231, align 4, !dbg !2096
  %232 = load ptr, ptr %3, align 8, !dbg !2096
  %233 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %232, i32 0, i32 0, !dbg !2096
  %234 = load ptr, ptr %233, align 8, !dbg !2096
  %235 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %234, i32 0, i32 0, !dbg !2096
  %236 = load ptr, ptr %235, align 8, !dbg !2096
  %237 = load ptr, ptr %3, align 8, !dbg !2096
  call void %236(ptr noundef %237), !dbg !2096
  br label %238, !dbg !2096

238:                                              ; preds = %221, %189
  br label %239

239:                                              ; preds = %238, %180
  br label %75, !dbg !2026, !llvm.loop !2097

240:                                              ; preds = %75
  %241 = load ptr, ptr %8, align 8, !dbg !2099
  %242 = load ptr, ptr %7, align 8, !dbg !2099
  %243 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %242, i32 0, i32 0, !dbg !2099
  store ptr %241, ptr %243, align 8, !dbg !2099
  %244 = load i64, ptr %9, align 8, !dbg !2099
  %245 = load ptr, ptr %7, align 8, !dbg !2099
  %246 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %245, i32 0, i32 1, !dbg !2099
  store i64 %244, ptr %246, align 8, !dbg !2099
  store i32 1, ptr %2, align 4, !dbg !2100
  br label %247, !dbg !2100

247:                                              ; preds = %240, %115, %89, %55, %29
  %248 = load i32, ptr %2, align 4, !dbg !2101
  ret i32 %248, !dbg !2101
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_dht(ptr noundef %0) #0 !dbg !2102 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca [17 x i8], align 16
  %6 = alloca [256 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i64, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !2103, !DIExpression(), !2104)
    #dbg_declare(ptr %4, !2105, !DIExpression(), !2106)
    #dbg_declare(ptr %5, !2107, !DIExpression(), !2108)
    #dbg_declare(ptr %6, !2109, !DIExpression(), !2110)
    #dbg_declare(ptr %7, !2111, !DIExpression(), !2112)
    #dbg_declare(ptr %8, !2113, !DIExpression(), !2114)
    #dbg_declare(ptr %9, !2115, !DIExpression(), !2116)
    #dbg_declare(ptr %10, !2117, !DIExpression(), !2119)
    #dbg_declare(ptr %11, !2120, !DIExpression(), !2121)
  %16 = load ptr, ptr %3, align 8, !dbg !2121
  %17 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %16, i32 0, i32 5, !dbg !2121
  %18 = load ptr, ptr %17, align 8, !dbg !2121
  store ptr %18, ptr %11, align 8, !dbg !2121
    #dbg_declare(ptr %12, !2122, !DIExpression(), !2121)
  %19 = load ptr, ptr %11, align 8, !dbg !2121
  %20 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %19, i32 0, i32 0, !dbg !2121
  %21 = load ptr, ptr %20, align 8, !dbg !2121
  store ptr %21, ptr %12, align 8, !dbg !2121
    #dbg_declare(ptr %13, !2123, !DIExpression(), !2121)
  %22 = load ptr, ptr %11, align 8, !dbg !2121
  %23 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %22, i32 0, i32 1, !dbg !2121
  %24 = load i64, ptr %23, align 8, !dbg !2121
  store i64 %24, ptr %13, align 8, !dbg !2121
  br label %25, !dbg !2124

25:                                               ; preds = %1
  %26 = load i64, ptr %13, align 8, !dbg !2125
  %27 = icmp eq i64 %26, 0, !dbg !2125
  br i1 %27, label %28, label %43, !dbg !2125

28:                                               ; preds = %25
  %29 = load ptr, ptr %11, align 8, !dbg !2128
  %30 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %29, i32 0, i32 3, !dbg !2128
  %31 = load ptr, ptr %30, align 8, !dbg !2128
  %32 = load ptr, ptr %3, align 8, !dbg !2128
  %33 = call i32 %31(ptr noundef %32), !dbg !2128
  %34 = icmp ne i32 %33, 0, !dbg !2128
  br i1 %34, label %36, label %35, !dbg !2128

35:                                               ; preds = %28
  store i32 0, ptr %2, align 4, !dbg !2131
  br label %413, !dbg !2131

36:                                               ; preds = %28
  %37 = load ptr, ptr %11, align 8, !dbg !2133
  %38 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %37, i32 0, i32 0, !dbg !2133
  %39 = load ptr, ptr %38, align 8, !dbg !2133
  store ptr %39, ptr %12, align 8, !dbg !2133
  %40 = load ptr, ptr %11, align 8, !dbg !2133
  %41 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %40, i32 0, i32 1, !dbg !2133
  %42 = load i64, ptr %41, align 8, !dbg !2133
  store i64 %42, ptr %13, align 8, !dbg !2133
  br label %43, !dbg !2133

43:                                               ; preds = %36, %25
  %44 = load i64, ptr %13, align 8, !dbg !2134
  %45 = add i64 %44, -1, !dbg !2134
  store i64 %45, ptr %13, align 8, !dbg !2134
  %46 = load ptr, ptr %12, align 8, !dbg !2134
  %47 = getelementptr inbounds nuw i8, ptr %46, i32 1, !dbg !2134
  store ptr %47, ptr %12, align 8, !dbg !2134
  %48 = load i8, ptr %46, align 1, !dbg !2134
  %49 = zext i8 %48 to i32, !dbg !2134
  %50 = shl i32 %49, 8, !dbg !2134
  %51 = zext i32 %50 to i64, !dbg !2134
  store i64 %51, ptr %4, align 8, !dbg !2134
  %52 = load i64, ptr %13, align 8, !dbg !2135
  %53 = icmp eq i64 %52, 0, !dbg !2135
  br i1 %53, label %54, label %69, !dbg !2135

54:                                               ; preds = %43
  %55 = load ptr, ptr %11, align 8, !dbg !2137
  %56 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %55, i32 0, i32 3, !dbg !2137
  %57 = load ptr, ptr %56, align 8, !dbg !2137
  %58 = load ptr, ptr %3, align 8, !dbg !2137
  %59 = call i32 %57(ptr noundef %58), !dbg !2137
  %60 = icmp ne i32 %59, 0, !dbg !2137
  br i1 %60, label %62, label %61, !dbg !2137

61:                                               ; preds = %54
  store i32 0, ptr %2, align 4, !dbg !2140
  br label %413, !dbg !2140

62:                                               ; preds = %54
  %63 = load ptr, ptr %11, align 8, !dbg !2142
  %64 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %63, i32 0, i32 0, !dbg !2142
  %65 = load ptr, ptr %64, align 8, !dbg !2142
  store ptr %65, ptr %12, align 8, !dbg !2142
  %66 = load ptr, ptr %11, align 8, !dbg !2142
  %67 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %66, i32 0, i32 1, !dbg !2142
  %68 = load i64, ptr %67, align 8, !dbg !2142
  store i64 %68, ptr %13, align 8, !dbg !2142
  br label %69, !dbg !2142

69:                                               ; preds = %62, %43
  %70 = load i64, ptr %13, align 8, !dbg !2134
  %71 = add i64 %70, -1, !dbg !2134
  store i64 %71, ptr %13, align 8, !dbg !2134
  %72 = load ptr, ptr %12, align 8, !dbg !2134
  %73 = getelementptr inbounds nuw i8, ptr %72, i32 1, !dbg !2134
  store ptr %73, ptr %12, align 8, !dbg !2134
  %74 = load i8, ptr %72, align 1, !dbg !2134
  %75 = zext i8 %74 to i64, !dbg !2134
  %76 = load i64, ptr %4, align 8, !dbg !2134
  %77 = add nsw i64 %76, %75, !dbg !2134
  store i64 %77, ptr %4, align 8, !dbg !2134
  br label %78, !dbg !2134

78:                                               ; preds = %69
  %79 = load i64, ptr %4, align 8, !dbg !2143
  %80 = sub nsw i64 %79, 2, !dbg !2143
  store i64 %80, ptr %4, align 8, !dbg !2143
  br label %81, !dbg !2144

81:                                               ; preds = %395, %78
  %82 = load i64, ptr %4, align 8, !dbg !2145
  %83 = icmp sgt i64 %82, 0, !dbg !2146
  br i1 %83, label %84, label %406, !dbg !2144

84:                                               ; preds = %81
  br label %85, !dbg !2147

85:                                               ; preds = %84
  %86 = load i64, ptr %13, align 8, !dbg !2149
  %87 = icmp eq i64 %86, 0, !dbg !2149
  br i1 %87, label %88, label %103, !dbg !2149

88:                                               ; preds = %85
  %89 = load ptr, ptr %11, align 8, !dbg !2152
  %90 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %89, i32 0, i32 3, !dbg !2152
  %91 = load ptr, ptr %90, align 8, !dbg !2152
  %92 = load ptr, ptr %3, align 8, !dbg !2152
  %93 = call i32 %91(ptr noundef %92), !dbg !2152
  %94 = icmp ne i32 %93, 0, !dbg !2152
  br i1 %94, label %96, label %95, !dbg !2152

95:                                               ; preds = %88
  store i32 0, ptr %2, align 4, !dbg !2155
  br label %413, !dbg !2155

96:                                               ; preds = %88
  %97 = load ptr, ptr %11, align 8, !dbg !2157
  %98 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %97, i32 0, i32 0, !dbg !2157
  %99 = load ptr, ptr %98, align 8, !dbg !2157
  store ptr %99, ptr %12, align 8, !dbg !2157
  %100 = load ptr, ptr %11, align 8, !dbg !2157
  %101 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %100, i32 0, i32 1, !dbg !2157
  %102 = load i64, ptr %101, align 8, !dbg !2157
  store i64 %102, ptr %13, align 8, !dbg !2157
  br label %103, !dbg !2157

103:                                              ; preds = %96, %85
  %104 = load i64, ptr %13, align 8, !dbg !2158
  %105 = add i64 %104, -1, !dbg !2158
  store i64 %105, ptr %13, align 8, !dbg !2158
  %106 = load ptr, ptr %12, align 8, !dbg !2158
  %107 = getelementptr inbounds nuw i8, ptr %106, i32 1, !dbg !2158
  store ptr %107, ptr %12, align 8, !dbg !2158
  %108 = load i8, ptr %106, align 1, !dbg !2158
  %109 = zext i8 %108 to i32, !dbg !2158
  store i32 %109, ptr %8, align 4, !dbg !2158
  br label %110, !dbg !2158

110:                                              ; preds = %103
  %111 = load ptr, ptr %3, align 8, !dbg !2159
  %112 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %111, i32 0, i32 0, !dbg !2159
  %113 = load ptr, ptr %112, align 8, !dbg !2159
  %114 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %113, i32 0, i32 5, !dbg !2159
  store i32 79, ptr %114, align 8, !dbg !2159
  %115 = load i32, ptr %8, align 4, !dbg !2159
  %116 = load ptr, ptr %3, align 8, !dbg !2159
  %117 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %116, i32 0, i32 0, !dbg !2159
  %118 = load ptr, ptr %117, align 8, !dbg !2159
  %119 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %118, i32 0, i32 6, !dbg !2159
  %120 = getelementptr inbounds [8 x i32], ptr %119, i64 0, i64 0, !dbg !2159
  store i32 %115, ptr %120, align 4, !dbg !2159
  %121 = load ptr, ptr %3, align 8, !dbg !2159
  %122 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %121, i32 0, i32 0, !dbg !2159
  %123 = load ptr, ptr %122, align 8, !dbg !2159
  %124 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %123, i32 0, i32 1, !dbg !2159
  %125 = load ptr, ptr %124, align 8, !dbg !2159
  %126 = load ptr, ptr %3, align 8, !dbg !2159
  call void %125(ptr noundef %126, i32 noundef 1), !dbg !2159
  %127 = getelementptr inbounds [17 x i8], ptr %5, i64 0, i64 0, !dbg !2160
  store i8 0, ptr %127, align 16, !dbg !2161
  store i32 0, ptr %9, align 4, !dbg !2162
  store i32 1, ptr %7, align 4, !dbg !2163
  br label %128, !dbg !2165

128:                                              ; preds = %167, %110
  %129 = load i32, ptr %7, align 4, !dbg !2166
  %130 = icmp sle i32 %129, 16, !dbg !2168
  br i1 %130, label %131, label %170, !dbg !2169

131:                                              ; preds = %128
  br label %132, !dbg !2170

132:                                              ; preds = %131
  %133 = load i64, ptr %13, align 8, !dbg !2172
  %134 = icmp eq i64 %133, 0, !dbg !2172
  br i1 %134, label %135, label %150, !dbg !2172

135:                                              ; preds = %132
  %136 = load ptr, ptr %11, align 8, !dbg !2175
  %137 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %136, i32 0, i32 3, !dbg !2175
  %138 = load ptr, ptr %137, align 8, !dbg !2175
  %139 = load ptr, ptr %3, align 8, !dbg !2175
  %140 = call i32 %138(ptr noundef %139), !dbg !2175
  %141 = icmp ne i32 %140, 0, !dbg !2175
  br i1 %141, label %143, label %142, !dbg !2175

142:                                              ; preds = %135
  store i32 0, ptr %2, align 4, !dbg !2178
  br label %413, !dbg !2178

143:                                              ; preds = %135
  %144 = load ptr, ptr %11, align 8, !dbg !2180
  %145 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %144, i32 0, i32 0, !dbg !2180
  %146 = load ptr, ptr %145, align 8, !dbg !2180
  store ptr %146, ptr %12, align 8, !dbg !2180
  %147 = load ptr, ptr %11, align 8, !dbg !2180
  %148 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %147, i32 0, i32 1, !dbg !2180
  %149 = load i64, ptr %148, align 8, !dbg !2180
  store i64 %149, ptr %13, align 8, !dbg !2180
  br label %150, !dbg !2180

150:                                              ; preds = %143, %132
  %151 = load i64, ptr %13, align 8, !dbg !2181
  %152 = add i64 %151, -1, !dbg !2181
  store i64 %152, ptr %13, align 8, !dbg !2181
  %153 = load ptr, ptr %12, align 8, !dbg !2181
  %154 = getelementptr inbounds nuw i8, ptr %153, i32 1, !dbg !2181
  store ptr %154, ptr %12, align 8, !dbg !2181
  %155 = load i8, ptr %153, align 1, !dbg !2181
  %156 = load i32, ptr %7, align 4, !dbg !2181
  %157 = sext i32 %156 to i64, !dbg !2181
  %158 = getelementptr inbounds [17 x i8], ptr %5, i64 0, i64 %157, !dbg !2181
  store i8 %155, ptr %158, align 1, !dbg !2181
  br label %159, !dbg !2181

159:                                              ; preds = %150
  %160 = load i32, ptr %7, align 4, !dbg !2182
  %161 = sext i32 %160 to i64, !dbg !2183
  %162 = getelementptr inbounds [17 x i8], ptr %5, i64 0, i64 %161, !dbg !2183
  %163 = load i8, ptr %162, align 1, !dbg !2183
  %164 = zext i8 %163 to i32, !dbg !2183
  %165 = load i32, ptr %9, align 4, !dbg !2184
  %166 = add nsw i32 %165, %164, !dbg !2184
  store i32 %166, ptr %9, align 4, !dbg !2184
  br label %167, !dbg !2185

167:                                              ; preds = %159
  %168 = load i32, ptr %7, align 4, !dbg !2186
  %169 = add nsw i32 %168, 1, !dbg !2186
  store i32 %169, ptr %7, align 4, !dbg !2186
  br label %128, !dbg !2187, !llvm.loop !2188

170:                                              ; preds = %128
  %171 = load i64, ptr %4, align 8, !dbg !2190
  %172 = sub nsw i64 %171, 17, !dbg !2190
  store i64 %172, ptr %4, align 8, !dbg !2190
  br label %173, !dbg !2191

173:                                              ; preds = %170
    #dbg_declare(ptr %14, !2192, !DIExpression(), !2194)
  %174 = load ptr, ptr %3, align 8, !dbg !2194
  %175 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %174, i32 0, i32 0, !dbg !2194
  %176 = load ptr, ptr %175, align 8, !dbg !2194
  %177 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %176, i32 0, i32 6, !dbg !2194
  %178 = getelementptr inbounds [8 x i32], ptr %177, i64 0, i64 0, !dbg !2194
  store ptr %178, ptr %14, align 8, !dbg !2194
  %179 = getelementptr inbounds [17 x i8], ptr %5, i64 0, i64 1, !dbg !2194
  %180 = load i8, ptr %179, align 1, !dbg !2194
  %181 = zext i8 %180 to i32, !dbg !2194
  %182 = load ptr, ptr %14, align 8, !dbg !2194
  %183 = getelementptr inbounds i32, ptr %182, i64 0, !dbg !2194
  store i32 %181, ptr %183, align 4, !dbg !2194
  %184 = getelementptr inbounds [17 x i8], ptr %5, i64 0, i64 2, !dbg !2194
  %185 = load i8, ptr %184, align 2, !dbg !2194
  %186 = zext i8 %185 to i32, !dbg !2194
  %187 = load ptr, ptr %14, align 8, !dbg !2194
  %188 = getelementptr inbounds i32, ptr %187, i64 1, !dbg !2194
  store i32 %186, ptr %188, align 4, !dbg !2194
  %189 = getelementptr inbounds [17 x i8], ptr %5, i64 0, i64 3, !dbg !2194
  %190 = load i8, ptr %189, align 1, !dbg !2194
  %191 = zext i8 %190 to i32, !dbg !2194
  %192 = load ptr, ptr %14, align 8, !dbg !2194
  %193 = getelementptr inbounds i32, ptr %192, i64 2, !dbg !2194
  store i32 %191, ptr %193, align 4, !dbg !2194
  %194 = getelementptr inbounds [17 x i8], ptr %5, i64 0, i64 4, !dbg !2194
  %195 = load i8, ptr %194, align 4, !dbg !2194
  %196 = zext i8 %195 to i32, !dbg !2194
  %197 = load ptr, ptr %14, align 8, !dbg !2194
  %198 = getelementptr inbounds i32, ptr %197, i64 3, !dbg !2194
  store i32 %196, ptr %198, align 4, !dbg !2194
  %199 = getelementptr inbounds [17 x i8], ptr %5, i64 0, i64 5, !dbg !2194
  %200 = load i8, ptr %199, align 1, !dbg !2194
  %201 = zext i8 %200 to i32, !dbg !2194
  %202 = load ptr, ptr %14, align 8, !dbg !2194
  %203 = getelementptr inbounds i32, ptr %202, i64 4, !dbg !2194
  store i32 %201, ptr %203, align 4, !dbg !2194
  %204 = getelementptr inbounds [17 x i8], ptr %5, i64 0, i64 6, !dbg !2194
  %205 = load i8, ptr %204, align 2, !dbg !2194
  %206 = zext i8 %205 to i32, !dbg !2194
  %207 = load ptr, ptr %14, align 8, !dbg !2194
  %208 = getelementptr inbounds i32, ptr %207, i64 5, !dbg !2194
  store i32 %206, ptr %208, align 4, !dbg !2194
  %209 = getelementptr inbounds [17 x i8], ptr %5, i64 0, i64 7, !dbg !2194
  %210 = load i8, ptr %209, align 1, !dbg !2194
  %211 = zext i8 %210 to i32, !dbg !2194
  %212 = load ptr, ptr %14, align 8, !dbg !2194
  %213 = getelementptr inbounds i32, ptr %212, i64 6, !dbg !2194
  store i32 %211, ptr %213, align 4, !dbg !2194
  %214 = getelementptr inbounds [17 x i8], ptr %5, i64 0, i64 8, !dbg !2194
  %215 = load i8, ptr %214, align 8, !dbg !2194
  %216 = zext i8 %215 to i32, !dbg !2194
  %217 = load ptr, ptr %14, align 8, !dbg !2194
  %218 = getelementptr inbounds i32, ptr %217, i64 7, !dbg !2194
  store i32 %216, ptr %218, align 4, !dbg !2194
  %219 = load ptr, ptr %3, align 8, !dbg !2194
  %220 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %219, i32 0, i32 0, !dbg !2194
  %221 = load ptr, ptr %220, align 8, !dbg !2194
  %222 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %221, i32 0, i32 5, !dbg !2194
  store i32 85, ptr %222, align 8, !dbg !2194
  %223 = load ptr, ptr %3, align 8, !dbg !2194
  %224 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %223, i32 0, i32 0, !dbg !2194
  %225 = load ptr, ptr %224, align 8, !dbg !2194
  %226 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %225, i32 0, i32 1, !dbg !2194
  %227 = load ptr, ptr %226, align 8, !dbg !2194
  %228 = load ptr, ptr %3, align 8, !dbg !2194
  call void %227(ptr noundef %228, i32 noundef 2), !dbg !2194
  br label %229, !dbg !2194

229:                                              ; preds = %173
  br label %230, !dbg !2195

230:                                              ; preds = %229
    #dbg_declare(ptr %15, !2196, !DIExpression(), !2198)
  %231 = load ptr, ptr %3, align 8, !dbg !2198
  %232 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %231, i32 0, i32 0, !dbg !2198
  %233 = load ptr, ptr %232, align 8, !dbg !2198
  %234 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %233, i32 0, i32 6, !dbg !2198
  %235 = getelementptr inbounds [8 x i32], ptr %234, i64 0, i64 0, !dbg !2198
  store ptr %235, ptr %15, align 8, !dbg !2198
  %236 = getelementptr inbounds [17 x i8], ptr %5, i64 0, i64 9, !dbg !2198
  %237 = load i8, ptr %236, align 1, !dbg !2198
  %238 = zext i8 %237 to i32, !dbg !2198
  %239 = load ptr, ptr %15, align 8, !dbg !2198
  %240 = getelementptr inbounds i32, ptr %239, i64 0, !dbg !2198
  store i32 %238, ptr %240, align 4, !dbg !2198
  %241 = getelementptr inbounds [17 x i8], ptr %5, i64 0, i64 10, !dbg !2198
  %242 = load i8, ptr %241, align 2, !dbg !2198
  %243 = zext i8 %242 to i32, !dbg !2198
  %244 = load ptr, ptr %15, align 8, !dbg !2198
  %245 = getelementptr inbounds i32, ptr %244, i64 1, !dbg !2198
  store i32 %243, ptr %245, align 4, !dbg !2198
  %246 = getelementptr inbounds [17 x i8], ptr %5, i64 0, i64 11, !dbg !2198
  %247 = load i8, ptr %246, align 1, !dbg !2198
  %248 = zext i8 %247 to i32, !dbg !2198
  %249 = load ptr, ptr %15, align 8, !dbg !2198
  %250 = getelementptr inbounds i32, ptr %249, i64 2, !dbg !2198
  store i32 %248, ptr %250, align 4, !dbg !2198
  %251 = getelementptr inbounds [17 x i8], ptr %5, i64 0, i64 12, !dbg !2198
  %252 = load i8, ptr %251, align 4, !dbg !2198
  %253 = zext i8 %252 to i32, !dbg !2198
  %254 = load ptr, ptr %15, align 8, !dbg !2198
  %255 = getelementptr inbounds i32, ptr %254, i64 3, !dbg !2198
  store i32 %253, ptr %255, align 4, !dbg !2198
  %256 = getelementptr inbounds [17 x i8], ptr %5, i64 0, i64 13, !dbg !2198
  %257 = load i8, ptr %256, align 1, !dbg !2198
  %258 = zext i8 %257 to i32, !dbg !2198
  %259 = load ptr, ptr %15, align 8, !dbg !2198
  %260 = getelementptr inbounds i32, ptr %259, i64 4, !dbg !2198
  store i32 %258, ptr %260, align 4, !dbg !2198
  %261 = getelementptr inbounds [17 x i8], ptr %5, i64 0, i64 14, !dbg !2198
  %262 = load i8, ptr %261, align 2, !dbg !2198
  %263 = zext i8 %262 to i32, !dbg !2198
  %264 = load ptr, ptr %15, align 8, !dbg !2198
  %265 = getelementptr inbounds i32, ptr %264, i64 5, !dbg !2198
  store i32 %263, ptr %265, align 4, !dbg !2198
  %266 = getelementptr inbounds [17 x i8], ptr %5, i64 0, i64 15, !dbg !2198
  %267 = load i8, ptr %266, align 1, !dbg !2198
  %268 = zext i8 %267 to i32, !dbg !2198
  %269 = load ptr, ptr %15, align 8, !dbg !2198
  %270 = getelementptr inbounds i32, ptr %269, i64 6, !dbg !2198
  store i32 %268, ptr %270, align 4, !dbg !2198
  %271 = getelementptr inbounds [17 x i8], ptr %5, i64 0, i64 16, !dbg !2198
  %272 = load i8, ptr %271, align 16, !dbg !2198
  %273 = zext i8 %272 to i32, !dbg !2198
  %274 = load ptr, ptr %15, align 8, !dbg !2198
  %275 = getelementptr inbounds i32, ptr %274, i64 7, !dbg !2198
  store i32 %273, ptr %275, align 4, !dbg !2198
  %276 = load ptr, ptr %3, align 8, !dbg !2198
  %277 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %276, i32 0, i32 0, !dbg !2198
  %278 = load ptr, ptr %277, align 8, !dbg !2198
  %279 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %278, i32 0, i32 5, !dbg !2198
  store i32 85, ptr %279, align 8, !dbg !2198
  %280 = load ptr, ptr %3, align 8, !dbg !2198
  %281 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %280, i32 0, i32 0, !dbg !2198
  %282 = load ptr, ptr %281, align 8, !dbg !2198
  %283 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %282, i32 0, i32 1, !dbg !2198
  %284 = load ptr, ptr %283, align 8, !dbg !2198
  %285 = load ptr, ptr %3, align 8, !dbg !2198
  call void %284(ptr noundef %285, i32 noundef 2), !dbg !2198
  br label %286, !dbg !2198

286:                                              ; preds = %230
  %287 = load i32, ptr %9, align 4, !dbg !2199
  %288 = icmp sgt i32 %287, 256, !dbg !2201
  br i1 %288, label %294, label %289, !dbg !2202

289:                                              ; preds = %286
  %290 = load i32, ptr %9, align 4, !dbg !2203
  %291 = sext i32 %290 to i64, !dbg !2204
  %292 = load i64, ptr %4, align 8, !dbg !2205
  %293 = icmp sgt i64 %291, %292, !dbg !2206
  br i1 %293, label %294, label %305, !dbg !2202

294:                                              ; preds = %289, %286
  %295 = load ptr, ptr %3, align 8, !dbg !2207
  %296 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %295, i32 0, i32 0, !dbg !2207
  %297 = load ptr, ptr %296, align 8, !dbg !2207
  %298 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %297, i32 0, i32 5, !dbg !2207
  store i32 28, ptr %298, align 8, !dbg !2207
  %299 = load ptr, ptr %3, align 8, !dbg !2207
  %300 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %299, i32 0, i32 0, !dbg !2207
  %301 = load ptr, ptr %300, align 8, !dbg !2207
  %302 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %301, i32 0, i32 0, !dbg !2207
  %303 = load ptr, ptr %302, align 8, !dbg !2207
  %304 = load ptr, ptr %3, align 8, !dbg !2207
  call void %303(ptr noundef %304), !dbg !2207
  br label %305, !dbg !2207

305:                                              ; preds = %294, %289
  store i32 0, ptr %7, align 4, !dbg !2208
  br label %306, !dbg !2210

306:                                              ; preds = %339, %305
  %307 = load i32, ptr %7, align 4, !dbg !2211
  %308 = load i32, ptr %9, align 4, !dbg !2213
  %309 = icmp slt i32 %307, %308, !dbg !2214
  br i1 %309, label %310, label %342, !dbg !2215

310:                                              ; preds = %306
  br label %311, !dbg !2216

311:                                              ; preds = %310
  %312 = load i64, ptr %13, align 8, !dbg !2217
  %313 = icmp eq i64 %312, 0, !dbg !2217
  br i1 %313, label %314, label %329, !dbg !2217

314:                                              ; preds = %311
  %315 = load ptr, ptr %11, align 8, !dbg !2220
  %316 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %315, i32 0, i32 3, !dbg !2220
  %317 = load ptr, ptr %316, align 8, !dbg !2220
  %318 = load ptr, ptr %3, align 8, !dbg !2220
  %319 = call i32 %317(ptr noundef %318), !dbg !2220
  %320 = icmp ne i32 %319, 0, !dbg !2220
  br i1 %320, label %322, label %321, !dbg !2220

321:                                              ; preds = %314
  store i32 0, ptr %2, align 4, !dbg !2223
  br label %413, !dbg !2223

322:                                              ; preds = %314
  %323 = load ptr, ptr %11, align 8, !dbg !2225
  %324 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %323, i32 0, i32 0, !dbg !2225
  %325 = load ptr, ptr %324, align 8, !dbg !2225
  store ptr %325, ptr %12, align 8, !dbg !2225
  %326 = load ptr, ptr %11, align 8, !dbg !2225
  %327 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %326, i32 0, i32 1, !dbg !2225
  %328 = load i64, ptr %327, align 8, !dbg !2225
  store i64 %328, ptr %13, align 8, !dbg !2225
  br label %329, !dbg !2225

329:                                              ; preds = %322, %311
  %330 = load i64, ptr %13, align 8, !dbg !2226
  %331 = add i64 %330, -1, !dbg !2226
  store i64 %331, ptr %13, align 8, !dbg !2226
  %332 = load ptr, ptr %12, align 8, !dbg !2226
  %333 = getelementptr inbounds nuw i8, ptr %332, i32 1, !dbg !2226
  store ptr %333, ptr %12, align 8, !dbg !2226
  %334 = load i8, ptr %332, align 1, !dbg !2226
  %335 = load i32, ptr %7, align 4, !dbg !2226
  %336 = sext i32 %335 to i64, !dbg !2226
  %337 = getelementptr inbounds [256 x i8], ptr %6, i64 0, i64 %336, !dbg !2226
  store i8 %334, ptr %337, align 1, !dbg !2226
  br label %338, !dbg !2226

338:                                              ; preds = %329
  br label %339, !dbg !2226

339:                                              ; preds = %338
  %340 = load i32, ptr %7, align 4, !dbg !2227
  %341 = add nsw i32 %340, 1, !dbg !2227
  store i32 %341, ptr %7, align 4, !dbg !2227
  br label %306, !dbg !2228, !llvm.loop !2229

342:                                              ; preds = %306
  %343 = load i32, ptr %9, align 4, !dbg !2231
  %344 = sext i32 %343 to i64, !dbg !2231
  %345 = load i64, ptr %4, align 8, !dbg !2232
  %346 = sub nsw i64 %345, %344, !dbg !2232
  store i64 %346, ptr %4, align 8, !dbg !2232
  %347 = load i32, ptr %8, align 4, !dbg !2233
  %348 = and i32 %347, 16, !dbg !2235
  %349 = icmp ne i32 %348, 0, !dbg !2235
  br i1 %349, label %350, label %358, !dbg !2235

350:                                              ; preds = %342
  %351 = load i32, ptr %8, align 4, !dbg !2236
  %352 = sub nsw i32 %351, 16, !dbg !2236
  store i32 %352, ptr %8, align 4, !dbg !2236
  %353 = load ptr, ptr %3, align 8, !dbg !2238
  %354 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %353, i32 0, i32 41, !dbg !2239
  %355 = load i32, ptr %8, align 4, !dbg !2240
  %356 = sext i32 %355 to i64, !dbg !2238
  %357 = getelementptr inbounds [4 x ptr], ptr %354, i64 0, i64 %356, !dbg !2238
  store ptr %357, ptr %10, align 8, !dbg !2241
  br label %364, !dbg !2242

358:                                              ; preds = %342
  %359 = load ptr, ptr %3, align 8, !dbg !2243
  %360 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %359, i32 0, i32 40, !dbg !2245
  %361 = load i32, ptr %8, align 4, !dbg !2246
  %362 = sext i32 %361 to i64, !dbg !2243
  %363 = getelementptr inbounds [4 x ptr], ptr %360, i64 0, i64 %362, !dbg !2243
  store ptr %363, ptr %10, align 8, !dbg !2247
  br label %364

364:                                              ; preds = %358, %350
  %365 = load i32, ptr %8, align 4, !dbg !2248
  %366 = icmp slt i32 %365, 0, !dbg !2250
  br i1 %366, label %370, label %367, !dbg !2251

367:                                              ; preds = %364
  %368 = load i32, ptr %8, align 4, !dbg !2252
  %369 = icmp sge i32 %368, 4, !dbg !2253
  br i1 %369, label %370, label %387, !dbg !2251

370:                                              ; preds = %367, %364
  %371 = load ptr, ptr %3, align 8, !dbg !2254
  %372 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %371, i32 0, i32 0, !dbg !2254
  %373 = load ptr, ptr %372, align 8, !dbg !2254
  %374 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %373, i32 0, i32 5, !dbg !2254
  store i32 29, ptr %374, align 8, !dbg !2254
  %375 = load i32, ptr %8, align 4, !dbg !2254
  %376 = load ptr, ptr %3, align 8, !dbg !2254
  %377 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %376, i32 0, i32 0, !dbg !2254
  %378 = load ptr, ptr %377, align 8, !dbg !2254
  %379 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %378, i32 0, i32 6, !dbg !2254
  %380 = getelementptr inbounds [8 x i32], ptr %379, i64 0, i64 0, !dbg !2254
  store i32 %375, ptr %380, align 4, !dbg !2254
  %381 = load ptr, ptr %3, align 8, !dbg !2254
  %382 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %381, i32 0, i32 0, !dbg !2254
  %383 = load ptr, ptr %382, align 8, !dbg !2254
  %384 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %383, i32 0, i32 0, !dbg !2254
  %385 = load ptr, ptr %384, align 8, !dbg !2254
  %386 = load ptr, ptr %3, align 8, !dbg !2254
  call void %385(ptr noundef %386), !dbg !2254
  br label %387, !dbg !2254

387:                                              ; preds = %370, %367
  %388 = load ptr, ptr %10, align 8, !dbg !2255
  %389 = load ptr, ptr %388, align 8, !dbg !2257
  %390 = icmp eq ptr %389, null, !dbg !2258
  br i1 %390, label %391, label %395, !dbg !2258

391:                                              ; preds = %387
  %392 = load ptr, ptr %3, align 8, !dbg !2259
  %393 = call ptr @jpeg_alloc_huff_table(ptr noundef %392), !dbg !2260
  %394 = load ptr, ptr %10, align 8, !dbg !2261
  store ptr %393, ptr %394, align 8, !dbg !2262
  br label %395, !dbg !2263

395:                                              ; preds = %391, %387
  %396 = load ptr, ptr %10, align 8, !dbg !2264
  %397 = load ptr, ptr %396, align 8, !dbg !2264
  %398 = getelementptr inbounds nuw %struct.JHUFF_TBL, ptr %397, i32 0, i32 0, !dbg !2264
  %399 = getelementptr inbounds [17 x i8], ptr %398, i64 0, i64 0, !dbg !2264
  %400 = getelementptr inbounds [17 x i8], ptr %5, i64 0, i64 0, !dbg !2264
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %399, ptr align 16 %400, i64 17, i1 false), !dbg !2264
  %401 = load ptr, ptr %10, align 8, !dbg !2265
  %402 = load ptr, ptr %401, align 8, !dbg !2265
  %403 = getelementptr inbounds nuw %struct.JHUFF_TBL, ptr %402, i32 0, i32 1, !dbg !2265
  %404 = getelementptr inbounds [256 x i8], ptr %403, i64 0, i64 0, !dbg !2265
  %405 = getelementptr inbounds [256 x i8], ptr %6, i64 0, i64 0, !dbg !2265
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %404, ptr align 16 %405, i64 256, i1 false), !dbg !2265
  br label %81, !dbg !2144, !llvm.loop !2266

406:                                              ; preds = %81
  %407 = load ptr, ptr %12, align 8, !dbg !2268
  %408 = load ptr, ptr %11, align 8, !dbg !2268
  %409 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %408, i32 0, i32 0, !dbg !2268
  store ptr %407, ptr %409, align 8, !dbg !2268
  %410 = load i64, ptr %13, align 8, !dbg !2268
  %411 = load ptr, ptr %11, align 8, !dbg !2268
  %412 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %411, i32 0, i32 1, !dbg !2268
  store i64 %410, ptr %412, align 8, !dbg !2268
  store i32 1, ptr %2, align 4, !dbg !2269
  br label %413, !dbg !2269

413:                                              ; preds = %406, %321, %142, %95, %61, %35
  %414 = load i32, ptr %2, align 4, !dbg !2270
  ret i32 %414, !dbg !2270
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_dqt(ptr noundef %0) #0 !dbg !2271 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !2272, !DIExpression(), !2273)
    #dbg_declare(ptr %4, !2274, !DIExpression(), !2275)
    #dbg_declare(ptr %5, !2276, !DIExpression(), !2277)
    #dbg_declare(ptr %6, !2278, !DIExpression(), !2279)
    #dbg_declare(ptr %7, !2280, !DIExpression(), !2281)
    #dbg_declare(ptr %8, !2282, !DIExpression(), !2283)
    #dbg_declare(ptr %9, !2284, !DIExpression(), !2285)
    #dbg_declare(ptr %10, !2286, !DIExpression(), !2287)
  %14 = load ptr, ptr %3, align 8, !dbg !2287
  %15 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %14, i32 0, i32 5, !dbg !2287
  %16 = load ptr, ptr %15, align 8, !dbg !2287
  store ptr %16, ptr %10, align 8, !dbg !2287
    #dbg_declare(ptr %11, !2288, !DIExpression(), !2287)
  %17 = load ptr, ptr %10, align 8, !dbg !2287
  %18 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %17, i32 0, i32 0, !dbg !2287
  %19 = load ptr, ptr %18, align 8, !dbg !2287
  store ptr %19, ptr %11, align 8, !dbg !2287
    #dbg_declare(ptr %12, !2289, !DIExpression(), !2287)
  %20 = load ptr, ptr %10, align 8, !dbg !2287
  %21 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %20, i32 0, i32 1, !dbg !2287
  %22 = load i64, ptr %21, align 8, !dbg !2287
  store i64 %22, ptr %12, align 8, !dbg !2287
  br label %23, !dbg !2290

23:                                               ; preds = %1
  %24 = load i64, ptr %12, align 8, !dbg !2291
  %25 = icmp eq i64 %24, 0, !dbg !2291
  br i1 %25, label %26, label %41, !dbg !2291

26:                                               ; preds = %23
  %27 = load ptr, ptr %10, align 8, !dbg !2294
  %28 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %27, i32 0, i32 3, !dbg !2294
  %29 = load ptr, ptr %28, align 8, !dbg !2294
  %30 = load ptr, ptr %3, align 8, !dbg !2294
  %31 = call i32 %29(ptr noundef %30), !dbg !2294
  %32 = icmp ne i32 %31, 0, !dbg !2294
  br i1 %32, label %34, label %33, !dbg !2294

33:                                               ; preds = %26
  store i32 0, ptr %2, align 4, !dbg !2297
  br label %406, !dbg !2297

34:                                               ; preds = %26
  %35 = load ptr, ptr %10, align 8, !dbg !2299
  %36 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %35, i32 0, i32 0, !dbg !2299
  %37 = load ptr, ptr %36, align 8, !dbg !2299
  store ptr %37, ptr %11, align 8, !dbg !2299
  %38 = load ptr, ptr %10, align 8, !dbg !2299
  %39 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %38, i32 0, i32 1, !dbg !2299
  %40 = load i64, ptr %39, align 8, !dbg !2299
  store i64 %40, ptr %12, align 8, !dbg !2299
  br label %41, !dbg !2299

41:                                               ; preds = %34, %23
  %42 = load i64, ptr %12, align 8, !dbg !2300
  %43 = add i64 %42, -1, !dbg !2300
  store i64 %43, ptr %12, align 8, !dbg !2300
  %44 = load ptr, ptr %11, align 8, !dbg !2300
  %45 = getelementptr inbounds nuw i8, ptr %44, i32 1, !dbg !2300
  store ptr %45, ptr %11, align 8, !dbg !2300
  %46 = load i8, ptr %44, align 1, !dbg !2300
  %47 = zext i8 %46 to i32, !dbg !2300
  %48 = shl i32 %47, 8, !dbg !2300
  %49 = zext i32 %48 to i64, !dbg !2300
  store i64 %49, ptr %4, align 8, !dbg !2300
  %50 = load i64, ptr %12, align 8, !dbg !2301
  %51 = icmp eq i64 %50, 0, !dbg !2301
  br i1 %51, label %52, label %67, !dbg !2301

52:                                               ; preds = %41
  %53 = load ptr, ptr %10, align 8, !dbg !2303
  %54 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %53, i32 0, i32 3, !dbg !2303
  %55 = load ptr, ptr %54, align 8, !dbg !2303
  %56 = load ptr, ptr %3, align 8, !dbg !2303
  %57 = call i32 %55(ptr noundef %56), !dbg !2303
  %58 = icmp ne i32 %57, 0, !dbg !2303
  br i1 %58, label %60, label %59, !dbg !2303

59:                                               ; preds = %52
  store i32 0, ptr %2, align 4, !dbg !2306
  br label %406, !dbg !2306

60:                                               ; preds = %52
  %61 = load ptr, ptr %10, align 8, !dbg !2308
  %62 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %61, i32 0, i32 0, !dbg !2308
  %63 = load ptr, ptr %62, align 8, !dbg !2308
  store ptr %63, ptr %11, align 8, !dbg !2308
  %64 = load ptr, ptr %10, align 8, !dbg !2308
  %65 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %64, i32 0, i32 1, !dbg !2308
  %66 = load i64, ptr %65, align 8, !dbg !2308
  store i64 %66, ptr %12, align 8, !dbg !2308
  br label %67, !dbg !2308

67:                                               ; preds = %60, %41
  %68 = load i64, ptr %12, align 8, !dbg !2300
  %69 = add i64 %68, -1, !dbg !2300
  store i64 %69, ptr %12, align 8, !dbg !2300
  %70 = load ptr, ptr %11, align 8, !dbg !2300
  %71 = getelementptr inbounds nuw i8, ptr %70, i32 1, !dbg !2300
  store ptr %71, ptr %11, align 8, !dbg !2300
  %72 = load i8, ptr %70, align 1, !dbg !2300
  %73 = zext i8 %72 to i64, !dbg !2300
  %74 = load i64, ptr %4, align 8, !dbg !2300
  %75 = add nsw i64 %74, %73, !dbg !2300
  store i64 %75, ptr %4, align 8, !dbg !2300
  br label %76, !dbg !2300

76:                                               ; preds = %67
  %77 = load i64, ptr %4, align 8, !dbg !2309
  %78 = sub nsw i64 %77, 2, !dbg !2309
  store i64 %78, ptr %4, align 8, !dbg !2309
  br label %79, !dbg !2310

79:                                               ; preds = %398, %76
  %80 = load i64, ptr %4, align 8, !dbg !2311
  %81 = icmp sgt i64 %80, 0, !dbg !2312
  br i1 %81, label %82, label %399, !dbg !2310

82:                                               ; preds = %79
  br label %83, !dbg !2313

83:                                               ; preds = %82
  %84 = load i64, ptr %12, align 8, !dbg !2315
  %85 = icmp eq i64 %84, 0, !dbg !2315
  br i1 %85, label %86, label %101, !dbg !2315

86:                                               ; preds = %83
  %87 = load ptr, ptr %10, align 8, !dbg !2318
  %88 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %87, i32 0, i32 3, !dbg !2318
  %89 = load ptr, ptr %88, align 8, !dbg !2318
  %90 = load ptr, ptr %3, align 8, !dbg !2318
  %91 = call i32 %89(ptr noundef %90), !dbg !2318
  %92 = icmp ne i32 %91, 0, !dbg !2318
  br i1 %92, label %94, label %93, !dbg !2318

93:                                               ; preds = %86
  store i32 0, ptr %2, align 4, !dbg !2321
  br label %406, !dbg !2321

94:                                               ; preds = %86
  %95 = load ptr, ptr %10, align 8, !dbg !2323
  %96 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %95, i32 0, i32 0, !dbg !2323
  %97 = load ptr, ptr %96, align 8, !dbg !2323
  store ptr %97, ptr %11, align 8, !dbg !2323
  %98 = load ptr, ptr %10, align 8, !dbg !2323
  %99 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %98, i32 0, i32 1, !dbg !2323
  %100 = load i64, ptr %99, align 8, !dbg !2323
  store i64 %100, ptr %12, align 8, !dbg !2323
  br label %101, !dbg !2323

101:                                              ; preds = %94, %83
  %102 = load i64, ptr %12, align 8, !dbg !2324
  %103 = add i64 %102, -1, !dbg !2324
  store i64 %103, ptr %12, align 8, !dbg !2324
  %104 = load ptr, ptr %11, align 8, !dbg !2324
  %105 = getelementptr inbounds nuw i8, ptr %104, i32 1, !dbg !2324
  store ptr %105, ptr %11, align 8, !dbg !2324
  %106 = load i8, ptr %104, align 1, !dbg !2324
  %107 = zext i8 %106 to i32, !dbg !2324
  store i32 %107, ptr %5, align 4, !dbg !2324
  br label %108, !dbg !2324

108:                                              ; preds = %101
  %109 = load i32, ptr %5, align 4, !dbg !2325
  %110 = ashr i32 %109, 4, !dbg !2326
  store i32 %110, ptr %7, align 4, !dbg !2327
  %111 = load i32, ptr %5, align 4, !dbg !2328
  %112 = and i32 %111, 15, !dbg !2328
  store i32 %112, ptr %5, align 4, !dbg !2328
  %113 = load ptr, ptr %3, align 8, !dbg !2329
  %114 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %113, i32 0, i32 0, !dbg !2329
  %115 = load ptr, ptr %114, align 8, !dbg !2329
  %116 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %115, i32 0, i32 5, !dbg !2329
  store i32 80, ptr %116, align 8, !dbg !2329
  %117 = load i32, ptr %5, align 4, !dbg !2329
  %118 = load ptr, ptr %3, align 8, !dbg !2329
  %119 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %118, i32 0, i32 0, !dbg !2329
  %120 = load ptr, ptr %119, align 8, !dbg !2329
  %121 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %120, i32 0, i32 6, !dbg !2329
  %122 = getelementptr inbounds [8 x i32], ptr %121, i64 0, i64 0, !dbg !2329
  store i32 %117, ptr %122, align 4, !dbg !2329
  %123 = load i32, ptr %7, align 4, !dbg !2329
  %124 = load ptr, ptr %3, align 8, !dbg !2329
  %125 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %124, i32 0, i32 0, !dbg !2329
  %126 = load ptr, ptr %125, align 8, !dbg !2329
  %127 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %126, i32 0, i32 6, !dbg !2329
  %128 = getelementptr inbounds [8 x i32], ptr %127, i64 0, i64 1, !dbg !2329
  store i32 %123, ptr %128, align 4, !dbg !2329
  %129 = load ptr, ptr %3, align 8, !dbg !2329
  %130 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %129, i32 0, i32 0, !dbg !2329
  %131 = load ptr, ptr %130, align 8, !dbg !2329
  %132 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %131, i32 0, i32 1, !dbg !2329
  %133 = load ptr, ptr %132, align 8, !dbg !2329
  %134 = load ptr, ptr %3, align 8, !dbg !2329
  call void %133(ptr noundef %134, i32 noundef 1), !dbg !2329
  %135 = load i32, ptr %5, align 4, !dbg !2330
  %136 = icmp sge i32 %135, 4, !dbg !2332
  br i1 %136, label %137, label %154, !dbg !2332

137:                                              ; preds = %108
  %138 = load ptr, ptr %3, align 8, !dbg !2333
  %139 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %138, i32 0, i32 0, !dbg !2333
  %140 = load ptr, ptr %139, align 8, !dbg !2333
  %141 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %140, i32 0, i32 5, !dbg !2333
  store i32 30, ptr %141, align 8, !dbg !2333
  %142 = load i32, ptr %5, align 4, !dbg !2333
  %143 = load ptr, ptr %3, align 8, !dbg !2333
  %144 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %143, i32 0, i32 0, !dbg !2333
  %145 = load ptr, ptr %144, align 8, !dbg !2333
  %146 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %145, i32 0, i32 6, !dbg !2333
  %147 = getelementptr inbounds [8 x i32], ptr %146, i64 0, i64 0, !dbg !2333
  store i32 %142, ptr %147, align 4, !dbg !2333
  %148 = load ptr, ptr %3, align 8, !dbg !2333
  %149 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %148, i32 0, i32 0, !dbg !2333
  %150 = load ptr, ptr %149, align 8, !dbg !2333
  %151 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %150, i32 0, i32 0, !dbg !2333
  %152 = load ptr, ptr %151, align 8, !dbg !2333
  %153 = load ptr, ptr %3, align 8, !dbg !2333
  call void %152(ptr noundef %153), !dbg !2333
  br label %154, !dbg !2333

154:                                              ; preds = %137, %108
  %155 = load ptr, ptr %3, align 8, !dbg !2334
  %156 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %155, i32 0, i32 39, !dbg !2336
  %157 = load i32, ptr %5, align 4, !dbg !2337
  %158 = sext i32 %157 to i64, !dbg !2334
  %159 = getelementptr inbounds [4 x ptr], ptr %156, i64 0, i64 %158, !dbg !2334
  %160 = load ptr, ptr %159, align 8, !dbg !2334
  %161 = icmp eq ptr %160, null, !dbg !2338
  br i1 %161, label %162, label %170, !dbg !2338

162:                                              ; preds = %154
  %163 = load ptr, ptr %3, align 8, !dbg !2339
  %164 = call ptr @jpeg_alloc_quant_table(ptr noundef %163), !dbg !2340
  %165 = load ptr, ptr %3, align 8, !dbg !2341
  %166 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %165, i32 0, i32 39, !dbg !2342
  %167 = load i32, ptr %5, align 4, !dbg !2343
  %168 = sext i32 %167 to i64, !dbg !2341
  %169 = getelementptr inbounds [4 x ptr], ptr %166, i64 0, i64 %168, !dbg !2341
  store ptr %164, ptr %169, align 8, !dbg !2344
  br label %170, !dbg !2341

170:                                              ; preds = %162, %154
  %171 = load ptr, ptr %3, align 8, !dbg !2345
  %172 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %171, i32 0, i32 39, !dbg !2346
  %173 = load i32, ptr %5, align 4, !dbg !2347
  %174 = sext i32 %173 to i64, !dbg !2345
  %175 = getelementptr inbounds [4 x ptr], ptr %172, i64 0, i64 %174, !dbg !2345
  %176 = load ptr, ptr %175, align 8, !dbg !2345
  store ptr %176, ptr %9, align 8, !dbg !2348
  store i32 0, ptr %6, align 4, !dbg !2349
  br label %177, !dbg !2351

177:                                              ; preds = %275, %170
  %178 = load i32, ptr %6, align 4, !dbg !2352
  %179 = icmp slt i32 %178, 64, !dbg !2354
  br i1 %179, label %180, label %278, !dbg !2355

180:                                              ; preds = %177
  %181 = load i32, ptr %7, align 4, !dbg !2356
  %182 = icmp ne i32 %181, 0, !dbg !2356
  br i1 %182, label %183, label %237, !dbg !2356

183:                                              ; preds = %180
  br label %184, !dbg !2359

184:                                              ; preds = %183
  %185 = load i64, ptr %12, align 8, !dbg !2360
  %186 = icmp eq i64 %185, 0, !dbg !2360
  br i1 %186, label %187, label %202, !dbg !2360

187:                                              ; preds = %184
  %188 = load ptr, ptr %10, align 8, !dbg !2363
  %189 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %188, i32 0, i32 3, !dbg !2363
  %190 = load ptr, ptr %189, align 8, !dbg !2363
  %191 = load ptr, ptr %3, align 8, !dbg !2363
  %192 = call i32 %190(ptr noundef %191), !dbg !2363
  %193 = icmp ne i32 %192, 0, !dbg !2363
  br i1 %193, label %195, label %194, !dbg !2363

194:                                              ; preds = %187
  store i32 0, ptr %2, align 4, !dbg !2366
  br label %406, !dbg !2366

195:                                              ; preds = %187
  %196 = load ptr, ptr %10, align 8, !dbg !2368
  %197 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %196, i32 0, i32 0, !dbg !2368
  %198 = load ptr, ptr %197, align 8, !dbg !2368
  store ptr %198, ptr %11, align 8, !dbg !2368
  %199 = load ptr, ptr %10, align 8, !dbg !2368
  %200 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %199, i32 0, i32 1, !dbg !2368
  %201 = load i64, ptr %200, align 8, !dbg !2368
  store i64 %201, ptr %12, align 8, !dbg !2368
  br label %202, !dbg !2368

202:                                              ; preds = %195, %184
  %203 = load i64, ptr %12, align 8, !dbg !2369
  %204 = add i64 %203, -1, !dbg !2369
  store i64 %204, ptr %12, align 8, !dbg !2369
  %205 = load ptr, ptr %11, align 8, !dbg !2369
  %206 = getelementptr inbounds nuw i8, ptr %205, i32 1, !dbg !2369
  store ptr %206, ptr %11, align 8, !dbg !2369
  %207 = load i8, ptr %205, align 1, !dbg !2369
  %208 = zext i8 %207 to i32, !dbg !2369
  %209 = shl i32 %208, 8, !dbg !2369
  store i32 %209, ptr %8, align 4, !dbg !2369
  %210 = load i64, ptr %12, align 8, !dbg !2370
  %211 = icmp eq i64 %210, 0, !dbg !2370
  br i1 %211, label %212, label %227, !dbg !2370

212:                                              ; preds = %202
  %213 = load ptr, ptr %10, align 8, !dbg !2372
  %214 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %213, i32 0, i32 3, !dbg !2372
  %215 = load ptr, ptr %214, align 8, !dbg !2372
  %216 = load ptr, ptr %3, align 8, !dbg !2372
  %217 = call i32 %215(ptr noundef %216), !dbg !2372
  %218 = icmp ne i32 %217, 0, !dbg !2372
  br i1 %218, label %220, label %219, !dbg !2372

219:                                              ; preds = %212
  store i32 0, ptr %2, align 4, !dbg !2375
  br label %406, !dbg !2375

220:                                              ; preds = %212
  %221 = load ptr, ptr %10, align 8, !dbg !2377
  %222 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %221, i32 0, i32 0, !dbg !2377
  %223 = load ptr, ptr %222, align 8, !dbg !2377
  store ptr %223, ptr %11, align 8, !dbg !2377
  %224 = load ptr, ptr %10, align 8, !dbg !2377
  %225 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %224, i32 0, i32 1, !dbg !2377
  %226 = load i64, ptr %225, align 8, !dbg !2377
  store i64 %226, ptr %12, align 8, !dbg !2377
  br label %227, !dbg !2377

227:                                              ; preds = %220, %202
  %228 = load i64, ptr %12, align 8, !dbg !2369
  %229 = add i64 %228, -1, !dbg !2369
  store i64 %229, ptr %12, align 8, !dbg !2369
  %230 = load ptr, ptr %11, align 8, !dbg !2369
  %231 = getelementptr inbounds nuw i8, ptr %230, i32 1, !dbg !2369
  store ptr %231, ptr %11, align 8, !dbg !2369
  %232 = load i8, ptr %230, align 1, !dbg !2369
  %233 = zext i8 %232 to i32, !dbg !2369
  %234 = load i32, ptr %8, align 4, !dbg !2369
  %235 = add i32 %234, %233, !dbg !2369
  store i32 %235, ptr %8, align 4, !dbg !2369
  br label %236, !dbg !2369

236:                                              ; preds = %227
  br label %264, !dbg !2369

237:                                              ; preds = %180
  br label %238, !dbg !2378

238:                                              ; preds = %237
  %239 = load i64, ptr %12, align 8, !dbg !2379
  %240 = icmp eq i64 %239, 0, !dbg !2379
  br i1 %240, label %241, label %256, !dbg !2379

241:                                              ; preds = %238
  %242 = load ptr, ptr %10, align 8, !dbg !2382
  %243 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %242, i32 0, i32 3, !dbg !2382
  %244 = load ptr, ptr %243, align 8, !dbg !2382
  %245 = load ptr, ptr %3, align 8, !dbg !2382
  %246 = call i32 %244(ptr noundef %245), !dbg !2382
  %247 = icmp ne i32 %246, 0, !dbg !2382
  br i1 %247, label %249, label %248, !dbg !2382

248:                                              ; preds = %241
  store i32 0, ptr %2, align 4, !dbg !2385
  br label %406, !dbg !2385

249:                                              ; preds = %241
  %250 = load ptr, ptr %10, align 8, !dbg !2387
  %251 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %250, i32 0, i32 0, !dbg !2387
  %252 = load ptr, ptr %251, align 8, !dbg !2387
  store ptr %252, ptr %11, align 8, !dbg !2387
  %253 = load ptr, ptr %10, align 8, !dbg !2387
  %254 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %253, i32 0, i32 1, !dbg !2387
  %255 = load i64, ptr %254, align 8, !dbg !2387
  store i64 %255, ptr %12, align 8, !dbg !2387
  br label %256, !dbg !2387

256:                                              ; preds = %249, %238
  %257 = load i64, ptr %12, align 8, !dbg !2388
  %258 = add i64 %257, -1, !dbg !2388
  store i64 %258, ptr %12, align 8, !dbg !2388
  %259 = load ptr, ptr %11, align 8, !dbg !2388
  %260 = getelementptr inbounds nuw i8, ptr %259, i32 1, !dbg !2388
  store ptr %260, ptr %11, align 8, !dbg !2388
  %261 = load i8, ptr %259, align 1, !dbg !2388
  %262 = zext i8 %261 to i32, !dbg !2388
  store i32 %262, ptr %8, align 4, !dbg !2388
  br label %263, !dbg !2388

263:                                              ; preds = %256
  br label %264

264:                                              ; preds = %263, %236
  %265 = load i32, ptr %8, align 4, !dbg !2389
  %266 = trunc i32 %265 to i16, !dbg !2390
  %267 = load ptr, ptr %9, align 8, !dbg !2391
  %268 = getelementptr inbounds nuw %struct.JQUANT_TBL, ptr %267, i32 0, i32 0, !dbg !2392
  %269 = load i32, ptr %6, align 4, !dbg !2393
  %270 = sext i32 %269 to i64, !dbg !2394
  %271 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %270, !dbg !2394
  %272 = load i32, ptr %271, align 4, !dbg !2394
  %273 = sext i32 %272 to i64, !dbg !2391
  %274 = getelementptr inbounds [64 x i16], ptr %268, i64 0, i64 %273, !dbg !2391
  store i16 %266, ptr %274, align 2, !dbg !2395
  br label %275, !dbg !2396

275:                                              ; preds = %264
  %276 = load i32, ptr %6, align 4, !dbg !2397
  %277 = add nsw i32 %276, 1, !dbg !2397
  store i32 %277, ptr %6, align 4, !dbg !2397
  br label %177, !dbg !2398, !llvm.loop !2399

278:                                              ; preds = %177
  %279 = load ptr, ptr %3, align 8, !dbg !2401
  %280 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %279, i32 0, i32 0, !dbg !2403
  %281 = load ptr, ptr %280, align 8, !dbg !2403
  %282 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %281, i32 0, i32 7, !dbg !2404
  %283 = load i32, ptr %282, align 4, !dbg !2404
  %284 = icmp sge i32 %283, 2, !dbg !2405
  br i1 %284, label %285, label %390, !dbg !2405

285:                                              ; preds = %278
  store i32 0, ptr %6, align 4, !dbg !2406
  br label %286, !dbg !2409

286:                                              ; preds = %386, %285
  %287 = load i32, ptr %6, align 4, !dbg !2410
  %288 = icmp slt i32 %287, 64, !dbg !2412
  br i1 %288, label %289, label %389, !dbg !2413

289:                                              ; preds = %286
  br label %290, !dbg !2414

290:                                              ; preds = %289
    #dbg_declare(ptr %13, !2416, !DIExpression(), !2418)
  %291 = load ptr, ptr %3, align 8, !dbg !2418
  %292 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %291, i32 0, i32 0, !dbg !2418
  %293 = load ptr, ptr %292, align 8, !dbg !2418
  %294 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %293, i32 0, i32 6, !dbg !2418
  %295 = getelementptr inbounds [8 x i32], ptr %294, i64 0, i64 0, !dbg !2418
  store ptr %295, ptr %13, align 8, !dbg !2418
  %296 = load ptr, ptr %9, align 8, !dbg !2418
  %297 = getelementptr inbounds nuw %struct.JQUANT_TBL, ptr %296, i32 0, i32 0, !dbg !2418
  %298 = load i32, ptr %6, align 4, !dbg !2418
  %299 = sext i32 %298 to i64, !dbg !2418
  %300 = getelementptr inbounds [64 x i16], ptr %297, i64 0, i64 %299, !dbg !2418
  %301 = load i16, ptr %300, align 2, !dbg !2418
  %302 = zext i16 %301 to i32, !dbg !2418
  %303 = load ptr, ptr %13, align 8, !dbg !2418
  %304 = getelementptr inbounds i32, ptr %303, i64 0, !dbg !2418
  store i32 %302, ptr %304, align 4, !dbg !2418
  %305 = load ptr, ptr %9, align 8, !dbg !2418
  %306 = getelementptr inbounds nuw %struct.JQUANT_TBL, ptr %305, i32 0, i32 0, !dbg !2418
  %307 = load i32, ptr %6, align 4, !dbg !2418
  %308 = add nsw i32 %307, 1, !dbg !2418
  %309 = sext i32 %308 to i64, !dbg !2418
  %310 = getelementptr inbounds [64 x i16], ptr %306, i64 0, i64 %309, !dbg !2418
  %311 = load i16, ptr %310, align 2, !dbg !2418
  %312 = zext i16 %311 to i32, !dbg !2418
  %313 = load ptr, ptr %13, align 8, !dbg !2418
  %314 = getelementptr inbounds i32, ptr %313, i64 1, !dbg !2418
  store i32 %312, ptr %314, align 4, !dbg !2418
  %315 = load ptr, ptr %9, align 8, !dbg !2418
  %316 = getelementptr inbounds nuw %struct.JQUANT_TBL, ptr %315, i32 0, i32 0, !dbg !2418
  %317 = load i32, ptr %6, align 4, !dbg !2418
  %318 = add nsw i32 %317, 2, !dbg !2418
  %319 = sext i32 %318 to i64, !dbg !2418
  %320 = getelementptr inbounds [64 x i16], ptr %316, i64 0, i64 %319, !dbg !2418
  %321 = load i16, ptr %320, align 2, !dbg !2418
  %322 = zext i16 %321 to i32, !dbg !2418
  %323 = load ptr, ptr %13, align 8, !dbg !2418
  %324 = getelementptr inbounds i32, ptr %323, i64 2, !dbg !2418
  store i32 %322, ptr %324, align 4, !dbg !2418
  %325 = load ptr, ptr %9, align 8, !dbg !2418
  %326 = getelementptr inbounds nuw %struct.JQUANT_TBL, ptr %325, i32 0, i32 0, !dbg !2418
  %327 = load i32, ptr %6, align 4, !dbg !2418
  %328 = add nsw i32 %327, 3, !dbg !2418
  %329 = sext i32 %328 to i64, !dbg !2418
  %330 = getelementptr inbounds [64 x i16], ptr %326, i64 0, i64 %329, !dbg !2418
  %331 = load i16, ptr %330, align 2, !dbg !2418
  %332 = zext i16 %331 to i32, !dbg !2418
  %333 = load ptr, ptr %13, align 8, !dbg !2418
  %334 = getelementptr inbounds i32, ptr %333, i64 3, !dbg !2418
  store i32 %332, ptr %334, align 4, !dbg !2418
  %335 = load ptr, ptr %9, align 8, !dbg !2418
  %336 = getelementptr inbounds nuw %struct.JQUANT_TBL, ptr %335, i32 0, i32 0, !dbg !2418
  %337 = load i32, ptr %6, align 4, !dbg !2418
  %338 = add nsw i32 %337, 4, !dbg !2418
  %339 = sext i32 %338 to i64, !dbg !2418
  %340 = getelementptr inbounds [64 x i16], ptr %336, i64 0, i64 %339, !dbg !2418
  %341 = load i16, ptr %340, align 2, !dbg !2418
  %342 = zext i16 %341 to i32, !dbg !2418
  %343 = load ptr, ptr %13, align 8, !dbg !2418
  %344 = getelementptr inbounds i32, ptr %343, i64 4, !dbg !2418
  store i32 %342, ptr %344, align 4, !dbg !2418
  %345 = load ptr, ptr %9, align 8, !dbg !2418
  %346 = getelementptr inbounds nuw %struct.JQUANT_TBL, ptr %345, i32 0, i32 0, !dbg !2418
  %347 = load i32, ptr %6, align 4, !dbg !2418
  %348 = add nsw i32 %347, 5, !dbg !2418
  %349 = sext i32 %348 to i64, !dbg !2418
  %350 = getelementptr inbounds [64 x i16], ptr %346, i64 0, i64 %349, !dbg !2418
  %351 = load i16, ptr %350, align 2, !dbg !2418
  %352 = zext i16 %351 to i32, !dbg !2418
  %353 = load ptr, ptr %13, align 8, !dbg !2418
  %354 = getelementptr inbounds i32, ptr %353, i64 5, !dbg !2418
  store i32 %352, ptr %354, align 4, !dbg !2418
  %355 = load ptr, ptr %9, align 8, !dbg !2418
  %356 = getelementptr inbounds nuw %struct.JQUANT_TBL, ptr %355, i32 0, i32 0, !dbg !2418
  %357 = load i32, ptr %6, align 4, !dbg !2418
  %358 = add nsw i32 %357, 6, !dbg !2418
  %359 = sext i32 %358 to i64, !dbg !2418
  %360 = getelementptr inbounds [64 x i16], ptr %356, i64 0, i64 %359, !dbg !2418
  %361 = load i16, ptr %360, align 2, !dbg !2418
  %362 = zext i16 %361 to i32, !dbg !2418
  %363 = load ptr, ptr %13, align 8, !dbg !2418
  %364 = getelementptr inbounds i32, ptr %363, i64 6, !dbg !2418
  store i32 %362, ptr %364, align 4, !dbg !2418
  %365 = load ptr, ptr %9, align 8, !dbg !2418
  %366 = getelementptr inbounds nuw %struct.JQUANT_TBL, ptr %365, i32 0, i32 0, !dbg !2418
  %367 = load i32, ptr %6, align 4, !dbg !2418
  %368 = add nsw i32 %367, 7, !dbg !2418
  %369 = sext i32 %368 to i64, !dbg !2418
  %370 = getelementptr inbounds [64 x i16], ptr %366, i64 0, i64 %369, !dbg !2418
  %371 = load i16, ptr %370, align 2, !dbg !2418
  %372 = zext i16 %371 to i32, !dbg !2418
  %373 = load ptr, ptr %13, align 8, !dbg !2418
  %374 = getelementptr inbounds i32, ptr %373, i64 7, !dbg !2418
  store i32 %372, ptr %374, align 4, !dbg !2418
  %375 = load ptr, ptr %3, align 8, !dbg !2418
  %376 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %375, i32 0, i32 0, !dbg !2418
  %377 = load ptr, ptr %376, align 8, !dbg !2418
  %378 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %377, i32 0, i32 5, !dbg !2418
  store i32 92, ptr %378, align 8, !dbg !2418
  %379 = load ptr, ptr %3, align 8, !dbg !2418
  %380 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %379, i32 0, i32 0, !dbg !2418
  %381 = load ptr, ptr %380, align 8, !dbg !2418
  %382 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %381, i32 0, i32 1, !dbg !2418
  %383 = load ptr, ptr %382, align 8, !dbg !2418
  %384 = load ptr, ptr %3, align 8, !dbg !2418
  call void %383(ptr noundef %384, i32 noundef 2), !dbg !2418
  br label %385, !dbg !2418

385:                                              ; preds = %290
  br label %386, !dbg !2419

386:                                              ; preds = %385
  %387 = load i32, ptr %6, align 4, !dbg !2420
  %388 = add nsw i32 %387, 8, !dbg !2420
  store i32 %388, ptr %6, align 4, !dbg !2420
  br label %286, !dbg !2421, !llvm.loop !2422

389:                                              ; preds = %286
  br label %390, !dbg !2424

390:                                              ; preds = %389, %278
  %391 = load i64, ptr %4, align 8, !dbg !2425
  %392 = sub nsw i64 %391, 65, !dbg !2425
  store i64 %392, ptr %4, align 8, !dbg !2425
  %393 = load i32, ptr %7, align 4, !dbg !2426
  %394 = icmp ne i32 %393, 0, !dbg !2426
  br i1 %394, label %395, label %398, !dbg !2426

395:                                              ; preds = %390
  %396 = load i64, ptr %4, align 8, !dbg !2428
  %397 = sub nsw i64 %396, 64, !dbg !2428
  store i64 %397, ptr %4, align 8, !dbg !2428
  br label %398, !dbg !2429

398:                                              ; preds = %395, %390
  br label %79, !dbg !2310, !llvm.loop !2430

399:                                              ; preds = %79
  %400 = load ptr, ptr %11, align 8, !dbg !2432
  %401 = load ptr, ptr %10, align 8, !dbg !2432
  %402 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %401, i32 0, i32 0, !dbg !2432
  store ptr %400, ptr %402, align 8, !dbg !2432
  %403 = load i64, ptr %12, align 8, !dbg !2432
  %404 = load ptr, ptr %10, align 8, !dbg !2432
  %405 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %404, i32 0, i32 1, !dbg !2432
  store i64 %403, ptr %405, align 8, !dbg !2432
  store i32 1, ptr %2, align 4, !dbg !2433
  br label %406, !dbg !2433

406:                                              ; preds = %399, %248, %219, %194, %93, %59, %33
  %407 = load i32, ptr %2, align 4, !dbg !2434
  ret i32 %407, !dbg !2434
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_dri(ptr noundef %0) #0 !dbg !2435 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !2436, !DIExpression(), !2437)
    #dbg_declare(ptr %4, !2438, !DIExpression(), !2439)
    #dbg_declare(ptr %5, !2440, !DIExpression(), !2441)
    #dbg_declare(ptr %6, !2442, !DIExpression(), !2443)
  %9 = load ptr, ptr %3, align 8, !dbg !2443
  %10 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %9, i32 0, i32 5, !dbg !2443
  %11 = load ptr, ptr %10, align 8, !dbg !2443
  store ptr %11, ptr %6, align 8, !dbg !2443
    #dbg_declare(ptr %7, !2444, !DIExpression(), !2443)
  %12 = load ptr, ptr %6, align 8, !dbg !2443
  %13 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %12, i32 0, i32 0, !dbg !2443
  %14 = load ptr, ptr %13, align 8, !dbg !2443
  store ptr %14, ptr %7, align 8, !dbg !2443
    #dbg_declare(ptr %8, !2445, !DIExpression(), !2443)
  %15 = load ptr, ptr %6, align 8, !dbg !2443
  %16 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %15, i32 0, i32 1, !dbg !2443
  %17 = load i64, ptr %16, align 8, !dbg !2443
  store i64 %17, ptr %8, align 8, !dbg !2443
  br label %18, !dbg !2446

18:                                               ; preds = %1
  %19 = load i64, ptr %8, align 8, !dbg !2447
  %20 = icmp eq i64 %19, 0, !dbg !2447
  br i1 %20, label %21, label %36, !dbg !2447

21:                                               ; preds = %18
  %22 = load ptr, ptr %6, align 8, !dbg !2450
  %23 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %22, i32 0, i32 3, !dbg !2450
  %24 = load ptr, ptr %23, align 8, !dbg !2450
  %25 = load ptr, ptr %3, align 8, !dbg !2450
  %26 = call i32 %24(ptr noundef %25), !dbg !2450
  %27 = icmp ne i32 %26, 0, !dbg !2450
  br i1 %27, label %29, label %28, !dbg !2450

28:                                               ; preds = %21
  store i32 0, ptr %2, align 4, !dbg !2453
  br label %164, !dbg !2453

29:                                               ; preds = %21
  %30 = load ptr, ptr %6, align 8, !dbg !2455
  %31 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %30, i32 0, i32 0, !dbg !2455
  %32 = load ptr, ptr %31, align 8, !dbg !2455
  store ptr %32, ptr %7, align 8, !dbg !2455
  %33 = load ptr, ptr %6, align 8, !dbg !2455
  %34 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %33, i32 0, i32 1, !dbg !2455
  %35 = load i64, ptr %34, align 8, !dbg !2455
  store i64 %35, ptr %8, align 8, !dbg !2455
  br label %36, !dbg !2455

36:                                               ; preds = %29, %18
  %37 = load i64, ptr %8, align 8, !dbg !2456
  %38 = add i64 %37, -1, !dbg !2456
  store i64 %38, ptr %8, align 8, !dbg !2456
  %39 = load ptr, ptr %7, align 8, !dbg !2456
  %40 = getelementptr inbounds nuw i8, ptr %39, i32 1, !dbg !2456
  store ptr %40, ptr %7, align 8, !dbg !2456
  %41 = load i8, ptr %39, align 1, !dbg !2456
  %42 = zext i8 %41 to i32, !dbg !2456
  %43 = shl i32 %42, 8, !dbg !2456
  %44 = zext i32 %43 to i64, !dbg !2456
  store i64 %44, ptr %4, align 8, !dbg !2456
  %45 = load i64, ptr %8, align 8, !dbg !2457
  %46 = icmp eq i64 %45, 0, !dbg !2457
  br i1 %46, label %47, label %62, !dbg !2457

47:                                               ; preds = %36
  %48 = load ptr, ptr %6, align 8, !dbg !2459
  %49 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %48, i32 0, i32 3, !dbg !2459
  %50 = load ptr, ptr %49, align 8, !dbg !2459
  %51 = load ptr, ptr %3, align 8, !dbg !2459
  %52 = call i32 %50(ptr noundef %51), !dbg !2459
  %53 = icmp ne i32 %52, 0, !dbg !2459
  br i1 %53, label %55, label %54, !dbg !2459

54:                                               ; preds = %47
  store i32 0, ptr %2, align 4, !dbg !2462
  br label %164, !dbg !2462

55:                                               ; preds = %47
  %56 = load ptr, ptr %6, align 8, !dbg !2464
  %57 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %56, i32 0, i32 0, !dbg !2464
  %58 = load ptr, ptr %57, align 8, !dbg !2464
  store ptr %58, ptr %7, align 8, !dbg !2464
  %59 = load ptr, ptr %6, align 8, !dbg !2464
  %60 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %59, i32 0, i32 1, !dbg !2464
  %61 = load i64, ptr %60, align 8, !dbg !2464
  store i64 %61, ptr %8, align 8, !dbg !2464
  br label %62, !dbg !2464

62:                                               ; preds = %55, %36
  %63 = load i64, ptr %8, align 8, !dbg !2456
  %64 = add i64 %63, -1, !dbg !2456
  store i64 %64, ptr %8, align 8, !dbg !2456
  %65 = load ptr, ptr %7, align 8, !dbg !2456
  %66 = getelementptr inbounds nuw i8, ptr %65, i32 1, !dbg !2456
  store ptr %66, ptr %7, align 8, !dbg !2456
  %67 = load i8, ptr %65, align 1, !dbg !2456
  %68 = zext i8 %67 to i64, !dbg !2456
  %69 = load i64, ptr %4, align 8, !dbg !2456
  %70 = add nsw i64 %69, %68, !dbg !2456
  store i64 %70, ptr %4, align 8, !dbg !2456
  br label %71, !dbg !2456

71:                                               ; preds = %62
  %72 = load i64, ptr %4, align 8, !dbg !2465
  %73 = icmp ne i64 %72, 4, !dbg !2467
  br i1 %73, label %74, label %85, !dbg !2467

74:                                               ; preds = %71
  %75 = load ptr, ptr %3, align 8, !dbg !2468
  %76 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %75, i32 0, i32 0, !dbg !2468
  %77 = load ptr, ptr %76, align 8, !dbg !2468
  %78 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %77, i32 0, i32 5, !dbg !2468
  store i32 9, ptr %78, align 8, !dbg !2468
  %79 = load ptr, ptr %3, align 8, !dbg !2468
  %80 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %79, i32 0, i32 0, !dbg !2468
  %81 = load ptr, ptr %80, align 8, !dbg !2468
  %82 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %81, i32 0, i32 0, !dbg !2468
  %83 = load ptr, ptr %82, align 8, !dbg !2468
  %84 = load ptr, ptr %3, align 8, !dbg !2468
  call void %83(ptr noundef %84), !dbg !2468
  br label %85, !dbg !2468

85:                                               ; preds = %74, %71
  br label %86, !dbg !2469

86:                                               ; preds = %85
  %87 = load i64, ptr %8, align 8, !dbg !2470
  %88 = icmp eq i64 %87, 0, !dbg !2470
  br i1 %88, label %89, label %104, !dbg !2470

89:                                               ; preds = %86
  %90 = load ptr, ptr %6, align 8, !dbg !2473
  %91 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %90, i32 0, i32 3, !dbg !2473
  %92 = load ptr, ptr %91, align 8, !dbg !2473
  %93 = load ptr, ptr %3, align 8, !dbg !2473
  %94 = call i32 %92(ptr noundef %93), !dbg !2473
  %95 = icmp ne i32 %94, 0, !dbg !2473
  br i1 %95, label %97, label %96, !dbg !2473

96:                                               ; preds = %89
  store i32 0, ptr %2, align 4, !dbg !2476
  br label %164, !dbg !2476

97:                                               ; preds = %89
  %98 = load ptr, ptr %6, align 8, !dbg !2478
  %99 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %98, i32 0, i32 0, !dbg !2478
  %100 = load ptr, ptr %99, align 8, !dbg !2478
  store ptr %100, ptr %7, align 8, !dbg !2478
  %101 = load ptr, ptr %6, align 8, !dbg !2478
  %102 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %101, i32 0, i32 1, !dbg !2478
  %103 = load i64, ptr %102, align 8, !dbg !2478
  store i64 %103, ptr %8, align 8, !dbg !2478
  br label %104, !dbg !2478

104:                                              ; preds = %97, %86
  %105 = load i64, ptr %8, align 8, !dbg !2479
  %106 = add i64 %105, -1, !dbg !2479
  store i64 %106, ptr %8, align 8, !dbg !2479
  %107 = load ptr, ptr %7, align 8, !dbg !2479
  %108 = getelementptr inbounds nuw i8, ptr %107, i32 1, !dbg !2479
  store ptr %108, ptr %7, align 8, !dbg !2479
  %109 = load i8, ptr %107, align 1, !dbg !2479
  %110 = zext i8 %109 to i32, !dbg !2479
  %111 = shl i32 %110, 8, !dbg !2479
  store i32 %111, ptr %5, align 4, !dbg !2479
  %112 = load i64, ptr %8, align 8, !dbg !2480
  %113 = icmp eq i64 %112, 0, !dbg !2480
  br i1 %113, label %114, label %129, !dbg !2480

114:                                              ; preds = %104
  %115 = load ptr, ptr %6, align 8, !dbg !2482
  %116 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %115, i32 0, i32 3, !dbg !2482
  %117 = load ptr, ptr %116, align 8, !dbg !2482
  %118 = load ptr, ptr %3, align 8, !dbg !2482
  %119 = call i32 %117(ptr noundef %118), !dbg !2482
  %120 = icmp ne i32 %119, 0, !dbg !2482
  br i1 %120, label %122, label %121, !dbg !2482

121:                                              ; preds = %114
  store i32 0, ptr %2, align 4, !dbg !2485
  br label %164, !dbg !2485

122:                                              ; preds = %114
  %123 = load ptr, ptr %6, align 8, !dbg !2487
  %124 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %123, i32 0, i32 0, !dbg !2487
  %125 = load ptr, ptr %124, align 8, !dbg !2487
  store ptr %125, ptr %7, align 8, !dbg !2487
  %126 = load ptr, ptr %6, align 8, !dbg !2487
  %127 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %126, i32 0, i32 1, !dbg !2487
  %128 = load i64, ptr %127, align 8, !dbg !2487
  store i64 %128, ptr %8, align 8, !dbg !2487
  br label %129, !dbg !2487

129:                                              ; preds = %122, %104
  %130 = load i64, ptr %8, align 8, !dbg !2479
  %131 = add i64 %130, -1, !dbg !2479
  store i64 %131, ptr %8, align 8, !dbg !2479
  %132 = load ptr, ptr %7, align 8, !dbg !2479
  %133 = getelementptr inbounds nuw i8, ptr %132, i32 1, !dbg !2479
  store ptr %133, ptr %7, align 8, !dbg !2479
  %134 = load i8, ptr %132, align 1, !dbg !2479
  %135 = zext i8 %134 to i32, !dbg !2479
  %136 = load i32, ptr %5, align 4, !dbg !2479
  %137 = add i32 %136, %135, !dbg !2479
  store i32 %137, ptr %5, align 4, !dbg !2479
  br label %138, !dbg !2479

138:                                              ; preds = %129
  %139 = load ptr, ptr %3, align 8, !dbg !2488
  %140 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %139, i32 0, i32 0, !dbg !2488
  %141 = load ptr, ptr %140, align 8, !dbg !2488
  %142 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %141, i32 0, i32 5, !dbg !2488
  store i32 81, ptr %142, align 8, !dbg !2488
  %143 = load i32, ptr %5, align 4, !dbg !2488
  %144 = load ptr, ptr %3, align 8, !dbg !2488
  %145 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %144, i32 0, i32 0, !dbg !2488
  %146 = load ptr, ptr %145, align 8, !dbg !2488
  %147 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %146, i32 0, i32 6, !dbg !2488
  %148 = getelementptr inbounds [8 x i32], ptr %147, i64 0, i64 0, !dbg !2488
  store i32 %143, ptr %148, align 4, !dbg !2488
  %149 = load ptr, ptr %3, align 8, !dbg !2488
  %150 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %149, i32 0, i32 0, !dbg !2488
  %151 = load ptr, ptr %150, align 8, !dbg !2488
  %152 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %151, i32 0, i32 1, !dbg !2488
  %153 = load ptr, ptr %152, align 8, !dbg !2488
  %154 = load ptr, ptr %3, align 8, !dbg !2488
  call void %153(ptr noundef %154, i32 noundef 1), !dbg !2488
  %155 = load i32, ptr %5, align 4, !dbg !2489
  %156 = load ptr, ptr %3, align 8, !dbg !2490
  %157 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %156, i32 0, i32 49, !dbg !2491
  store i32 %155, ptr %157, align 8, !dbg !2492
  %158 = load ptr, ptr %7, align 8, !dbg !2493
  %159 = load ptr, ptr %6, align 8, !dbg !2493
  %160 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %159, i32 0, i32 0, !dbg !2493
  store ptr %158, ptr %160, align 8, !dbg !2493
  %161 = load i64, ptr %8, align 8, !dbg !2493
  %162 = load ptr, ptr %6, align 8, !dbg !2493
  %163 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %162, i32 0, i32 1, !dbg !2493
  store i64 %161, ptr %163, align 8, !dbg !2493
  store i32 1, ptr %2, align 4, !dbg !2494
  br label %164, !dbg !2494

164:                                              ; preds = %138, %121, %96, %54, %28
  %165 = load i32, ptr %2, align 4, !dbg !2495
  ret i32 %165, !dbg !2495
}

declare ptr @jpeg_alloc_huff_table(ptr noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare ptr @jpeg_alloc_quant_table(ptr noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!631, !632, !633, !634, !635, !636, !637}
!llvm.ident = !{!638}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !209, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jdmarker.c", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "5bd0354884a696704421d160021de924")
!2 = !{!3, !13, !18, !23, !30, !154}
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
!154 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1, line: 20, baseType: !5, size: 32, elements: !155)
!155 = !{!156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208}
!156 = !DIEnumerator(name: "M_SOF0", value: 192)
!157 = !DIEnumerator(name: "M_SOF1", value: 193)
!158 = !DIEnumerator(name: "M_SOF2", value: 194)
!159 = !DIEnumerator(name: "M_SOF3", value: 195)
!160 = !DIEnumerator(name: "M_SOF5", value: 197)
!161 = !DIEnumerator(name: "M_SOF6", value: 198)
!162 = !DIEnumerator(name: "M_SOF7", value: 199)
!163 = !DIEnumerator(name: "M_JPG", value: 200)
!164 = !DIEnumerator(name: "M_SOF9", value: 201)
!165 = !DIEnumerator(name: "M_SOF10", value: 202)
!166 = !DIEnumerator(name: "M_SOF11", value: 203)
!167 = !DIEnumerator(name: "M_SOF13", value: 205)
!168 = !DIEnumerator(name: "M_SOF14", value: 206)
!169 = !DIEnumerator(name: "M_SOF15", value: 207)
!170 = !DIEnumerator(name: "M_DHT", value: 196)
!171 = !DIEnumerator(name: "M_DAC", value: 204)
!172 = !DIEnumerator(name: "M_RST0", value: 208)
!173 = !DIEnumerator(name: "M_RST1", value: 209)
!174 = !DIEnumerator(name: "M_RST2", value: 210)
!175 = !DIEnumerator(name: "M_RST3", value: 211)
!176 = !DIEnumerator(name: "M_RST4", value: 212)
!177 = !DIEnumerator(name: "M_RST5", value: 213)
!178 = !DIEnumerator(name: "M_RST6", value: 214)
!179 = !DIEnumerator(name: "M_RST7", value: 215)
!180 = !DIEnumerator(name: "M_SOI", value: 216)
!181 = !DIEnumerator(name: "M_EOI", value: 217)
!182 = !DIEnumerator(name: "M_SOS", value: 218)
!183 = !DIEnumerator(name: "M_DQT", value: 219)
!184 = !DIEnumerator(name: "M_DNL", value: 220)
!185 = !DIEnumerator(name: "M_DRI", value: 221)
!186 = !DIEnumerator(name: "M_DHP", value: 222)
!187 = !DIEnumerator(name: "M_EXP", value: 223)
!188 = !DIEnumerator(name: "M_APP0", value: 224)
!189 = !DIEnumerator(name: "M_APP1", value: 225)
!190 = !DIEnumerator(name: "M_APP2", value: 226)
!191 = !DIEnumerator(name: "M_APP3", value: 227)
!192 = !DIEnumerator(name: "M_APP4", value: 228)
!193 = !DIEnumerator(name: "M_APP5", value: 229)
!194 = !DIEnumerator(name: "M_APP6", value: 230)
!195 = !DIEnumerator(name: "M_APP7", value: 231)
!196 = !DIEnumerator(name: "M_APP8", value: 232)
!197 = !DIEnumerator(name: "M_APP9", value: 233)
!198 = !DIEnumerator(name: "M_APP10", value: 234)
!199 = !DIEnumerator(name: "M_APP11", value: 235)
!200 = !DIEnumerator(name: "M_APP12", value: 236)
!201 = !DIEnumerator(name: "M_APP13", value: 237)
!202 = !DIEnumerator(name: "M_APP14", value: 238)
!203 = !DIEnumerator(name: "M_APP15", value: 239)
!204 = !DIEnumerator(name: "M_JPG0", value: 240)
!205 = !DIEnumerator(name: "M_JPG13", value: 253)
!206 = !DIEnumerator(name: "M_COM", value: 254)
!207 = !DIEnumerator(name: "M_TEM", value: 1)
!208 = !DIEnumerator(name: "M_ERROR", value: 256)
!209 = !{!210, !226, !336, !268, !5, !267, !446, !435, !628, !629, !422, !249}
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_common_ptr", file: !4, line: 248, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_common_struct", file: !4, line: 240, size: 256, elements: !213)
!213 = !{!214, !259, !325, !334, !335}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !212, file: !4, line: 241, baseType: !215, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_error_mgr", file: !4, line: 618, size: 1344, elements: !217)
!217 = !{!218, !222, !227, !228, !234, !235, !236, !247, !248, !250, !255, !256, !257, !258}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "error_exit", scope: !216, file: !4, line: 620, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{null, !210}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "emit_message", scope: !216, file: !4, line: 622, baseType: !223, size: 64, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{null, !210, !226}
!226 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "output_message", scope: !216, file: !4, line: 624, baseType: !219, size: 64, offset: 128)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "format_message", scope: !216, file: !4, line: 626, baseType: !229, size: 64, offset: 192)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{null, !210, !232}
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "reset_error_mgr", scope: !216, file: !4, line: 629, baseType: !219, size: 64, offset: 256)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "msg_code", scope: !216, file: !4, line: 634, baseType: !226, size: 32, offset: 320)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "msg_parm", scope: !216, file: !4, line: 639, baseType: !237, size: 640, offset: 352)
!237 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !216, file: !4, line: 636, size: 640, elements: !238)
!238 = !{!239, !243}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !237, file: !4, line: 637, baseType: !240, size: 256)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 256, elements: !241)
!241 = !{!242}
!242 = !DISubrange(count: 8)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !237, file: !4, line: 638, baseType: !244, size: 640)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 640, elements: !245)
!245 = !{!246}
!246 = !DISubrange(count: 80)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "trace_level", scope: !216, file: !4, line: 643, baseType: !226, size: 32, offset: 992)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "num_warnings", scope: !216, file: !4, line: 651, baseType: !249, size: 64, offset: 1024)
!249 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_message_table", scope: !216, file: !4, line: 663, baseType: !251, size: 64, offset: 1088)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !233)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "last_jpeg_message", scope: !216, file: !4, line: 664, baseType: !226, size: 32, offset: 1152)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "addon_message_table", scope: !216, file: !4, line: 668, baseType: !251, size: 64, offset: 1216)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "first_addon_message", scope: !216, file: !4, line: 669, baseType: !226, size: 32, offset: 1280)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "last_addon_message", scope: !216, file: !4, line: 670, baseType: !226, size: 32, offset: 1312)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !212, file: !4, line: 241, baseType: !260, size: 64, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_memory_mgr", file: !4, line: 731, size: 768, elements: !262)
!262 = !{!263, !271, !272, !284, !298, !306, !313, !314, !318, !322, !323, !324}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_small", scope: !261, file: !4, line: 733, baseType: !264, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!267, !210, !226, !268}
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !269, line: 18, baseType: !270)
!269 = !DIFile(filename: "/usr/local/lib/clang/20/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!270 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_large", scope: !261, file: !4, line: 735, baseType: !264, size: 64, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_sarray", scope: !261, file: !4, line: 737, baseType: !273, size: 64, offset: 128)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DISubroutineType(types: !275)
!275 = !{!276, !210, !226, !283, !283}
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPARRAY", file: !4, line: 67, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPROW", file: !4, line: 66, baseType: !279)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPLE", file: !281, line: 59, baseType: !282)
!281 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jmorecfg.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "56a0eda58fafa6bdd5498f702a998c09")
!282 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "JDIMENSION", file: !281, line: 171, baseType: !5)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_barray", scope: !261, file: !4, line: 740, baseType: !285, size: 64, offset: 192)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{!288, !210, !226, !283, !283}
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCKARRAY", file: !4, line: 72, baseType: !289)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCKROW", file: !4, line: 71, baseType: !291)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCK", file: !4, line: 70, baseType: !293)
!293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 1024, elements: !296)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "JCOEF", file: !281, line: 99, baseType: !295)
!295 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!296 = !{!297}
!297 = !DISubrange(count: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_sarray", scope: !261, file: !4, line: 743, baseType: !299, size: 64, offset: 256)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DISubroutineType(types: !301)
!301 = !{!302, !210, !226, !305, !283, !283, !283}
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_sarray_ptr", file: !4, line: 727, baseType: !303)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_sarray_control", file: !4, line: 727, flags: DIFlagFwdDecl)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "boolean", file: !281, line: 227, baseType: !226)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_barray", scope: !261, file: !4, line: 749, baseType: !307, size: 64, offset: 320)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DISubroutineType(types: !309)
!309 = !{!310, !210, !226, !305, !283, !283, !283}
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_barray_ptr", file: !4, line: 728, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_barray_control", file: !4, line: 728, flags: DIFlagFwdDecl)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "realize_virt_arrays", scope: !261, file: !4, line: 755, baseType: !219, size: 64, offset: 384)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_sarray", scope: !261, file: !4, line: 756, baseType: !315, size: 64, offset: 448)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DISubroutineType(types: !317)
!317 = !{!276, !210, !302, !283, !283, !305}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_barray", scope: !261, file: !4, line: 761, baseType: !319, size: 64, offset: 512)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DISubroutineType(types: !321)
!321 = !{!288, !210, !310, !283, !283, !305}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "free_pool", scope: !261, file: !4, line: 766, baseType: !223, size: 64, offset: 576)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "self_destruct", scope: !261, file: !4, line: 767, baseType: !219, size: 64, offset: 640)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "max_memory_to_use", scope: !261, file: !4, line: 774, baseType: !249, size: 64, offset: 704)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !212, file: !4, line: 241, baseType: !326, size: 64, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_progress_mgr", file: !4, line: 676, size: 256, elements: !328)
!328 = !{!329, !330, !331, !332, !333}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !327, file: !4, line: 677, baseType: !219, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "pass_counter", scope: !327, file: !4, line: 679, baseType: !249, size: 64, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "pass_limit", scope: !327, file: !4, line: 680, baseType: !249, size: 64, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "completed_passes", scope: !327, file: !4, line: 681, baseType: !226, size: 32, offset: 192)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "total_passes", scope: !327, file: !4, line: 682, baseType: !226, size: 32, offset: 224)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !212, file: !4, line: 241, baseType: !305, size: 32, offset: 192)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !212, file: !4, line: 241, baseType: !226, size: 32, offset: 224)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_marker_reader", file: !24, line: 188, size: 1408, elements: !338)
!338 = !{!339, !618, !619, !621, !622, !624, !625, !626, !627}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "reset_marker_reader", scope: !337, file: !24, line: 189, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DISubroutineType(types: !342)
!342 = !{null, !343}
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_decompress_ptr", file: !4, line: 250, baseType: !344)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_decompress_struct", file: !4, line: 394, size: 4928, elements: !346)
!346 = !{!347, !348, !349, !350, !351, !352, !375, !376, !377, !378, !380, !381, !382, !383, !385, !386, !387, !389, !390, !391, !392, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !414, !427, !443, !444, !445, !471, !472, !473, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !495, !496, !497, !498, !502, !503, !504, !505, !506, !507, !514, !528, !546, !555, !565, !566, !575, !588, !595, !604}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !345, file: !4, line: 395, baseType: !215, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !345, file: !4, line: 395, baseType: !260, size: 64, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !345, file: !4, line: 395, baseType: !326, size: 64, offset: 128)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !345, file: !4, line: 395, baseType: !305, size: 32, offset: 192)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !345, file: !4, line: 395, baseType: !226, size: 32, offset: 224)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !345, file: !4, line: 398, baseType: !353, size: 64, offset: 256)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_source_mgr", file: !4, line: 700, size: 448, elements: !355)
!355 = !{!356, !360, !361, !362, !366, !370, !374}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "next_input_byte", scope: !354, file: !4, line: 701, baseType: !357, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !359)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "JOCTET", file: !281, line: 110, baseType: !282)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_in_buffer", scope: !354, file: !4, line: 702, baseType: !268, size: 64, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "init_source", scope: !354, file: !4, line: 704, baseType: !340, size: 64, offset: 128)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "fill_input_buffer", scope: !354, file: !4, line: 705, baseType: !363, size: 64, offset: 192)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DISubroutineType(types: !365)
!365 = !{!305, !343}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "skip_input_data", scope: !354, file: !4, line: 706, baseType: !367, size: 64, offset: 256)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DISubroutineType(types: !369)
!369 = !{null, !343, !249}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "resync_to_restart", scope: !354, file: !4, line: 707, baseType: !371, size: 64, offset: 320)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DISubroutineType(types: !373)
!373 = !{!305, !343, !226}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "term_source", scope: !354, file: !4, line: 708, baseType: !340, size: 64, offset: 384)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "image_width", scope: !345, file: !4, line: 403, baseType: !283, size: 32, offset: 320)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "image_height", scope: !345, file: !4, line: 404, baseType: !283, size: 32, offset: 352)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "num_components", scope: !345, file: !4, line: 405, baseType: !226, size: 32, offset: 384)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_color_space", scope: !345, file: !4, line: 406, baseType: !379, size: 32, offset: 416)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_COLOR_SPACE", file: !4, line: 201, baseType: !3)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "out_color_space", scope: !345, file: !4, line: 413, baseType: !379, size: 32, offset: 448)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "scale_num", scope: !345, file: !4, line: 415, baseType: !5, size: 32, offset: 480)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "scale_denom", scope: !345, file: !4, line: 415, baseType: !5, size: 32, offset: 512)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "output_gamma", scope: !345, file: !4, line: 417, baseType: !384, size: 64, offset: 576)
!384 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "buffered_image", scope: !345, file: !4, line: 419, baseType: !305, size: 32, offset: 640)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "raw_data_out", scope: !345, file: !4, line: 420, baseType: !305, size: 32, offset: 672)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "dct_method", scope: !345, file: !4, line: 422, baseType: !388, size: 32, offset: 704)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_DCT_METHOD", file: !4, line: 209, baseType: !13)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "do_fancy_upsampling", scope: !345, file: !4, line: 423, baseType: !305, size: 32, offset: 736)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "do_block_smoothing", scope: !345, file: !4, line: 424, baseType: !305, size: 32, offset: 768)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "quantize_colors", scope: !345, file: !4, line: 426, baseType: !305, size: 32, offset: 800)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "dither_mode", scope: !345, file: !4, line: 428, baseType: !393, size: 32, offset: 832)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_DITHER_MODE", file: !4, line: 224, baseType: !18)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "two_pass_quantize", scope: !345, file: !4, line: 429, baseType: !305, size: 32, offset: 864)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "desired_number_of_colors", scope: !345, file: !4, line: 430, baseType: !226, size: 32, offset: 896)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "enable_1pass_quant", scope: !345, file: !4, line: 432, baseType: !305, size: 32, offset: 928)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "enable_external_quant", scope: !345, file: !4, line: 433, baseType: !305, size: 32, offset: 960)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "enable_2pass_quant", scope: !345, file: !4, line: 434, baseType: !305, size: 32, offset: 992)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "output_width", scope: !345, file: !4, line: 442, baseType: !283, size: 32, offset: 1024)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "output_height", scope: !345, file: !4, line: 443, baseType: !283, size: 32, offset: 1056)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "out_color_components", scope: !345, file: !4, line: 444, baseType: !226, size: 32, offset: 1088)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "output_components", scope: !345, file: !4, line: 445, baseType: !226, size: 32, offset: 1120)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "rec_outbuf_height", scope: !345, file: !4, line: 449, baseType: !226, size: 32, offset: 1152)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "actual_number_of_colors", scope: !345, file: !4, line: 461, baseType: !226, size: 32, offset: 1184)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !345, file: !4, line: 462, baseType: !276, size: 64, offset: 1216)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "output_scanline", scope: !345, file: !4, line: 472, baseType: !283, size: 32, offset: 1280)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "input_scan_number", scope: !345, file: !4, line: 477, baseType: !226, size: 32, offset: 1312)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "input_iMCU_row", scope: !345, file: !4, line: 478, baseType: !283, size: 32, offset: 1344)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "output_scan_number", scope: !345, file: !4, line: 484, baseType: !226, size: 32, offset: 1376)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "output_iMCU_row", scope: !345, file: !4, line: 485, baseType: !283, size: 32, offset: 1408)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "coef_bits", scope: !345, file: !4, line: 494, baseType: !412, size: 64, offset: 1472)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 2048, elements: !296)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_ptrs", scope: !345, file: !4, line: 505, baseType: !415, size: 256, offset: 1536)
!415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !416, size: 256, elements: !425)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "JQUANT_TBL", file: !4, line: 95, baseType: !418)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 83, size: 1056, elements: !419)
!419 = !{!420, !424}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "quantval", scope: !418, file: !4, line: 88, baseType: !421, size: 1024)
!421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !422, size: 1024, elements: !296)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !281, line: 147, baseType: !423)
!423 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !418, file: !4, line: 94, baseType: !305, size: 32, offset: 1024)
!425 = !{!426}
!426 = !DISubrange(count: 4)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "dc_huff_tbl_ptrs", scope: !345, file: !4, line: 508, baseType: !428, size: 256, offset: 1792)
!428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !429, size: 256, elements: !425)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "JHUFF_TBL", file: !4, line: 111, baseType: !431)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 100, size: 2240, elements: !432)
!432 = !{!433, !438, !442}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !431, file: !4, line: 102, baseType: !434, size: 136)
!434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !435, size: 136, elements: !436)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT8", file: !281, line: 135, baseType: !282)
!436 = !{!437}
!437 = !DISubrange(count: 17)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "huffval", scope: !431, file: !4, line: 104, baseType: !439, size: 2048, offset: 136)
!439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !435, size: 2048, elements: !440)
!440 = !{!441}
!441 = !DISubrange(count: 256)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !431, file: !4, line: 110, baseType: !305, size: 32, offset: 2208)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "ac_huff_tbl_ptrs", scope: !345, file: !4, line: 509, baseType: !428, size: 256, offset: 2048)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "data_precision", scope: !345, file: !4, line: 516, baseType: !226, size: 32, offset: 2304)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "comp_info", scope: !345, file: !4, line: 518, baseType: !446, size: 64, offset: 2368)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_component_info", file: !4, line: 179, baseType: !448)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 116, size: 768, elements: !449)
!449 = !{!450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "component_id", scope: !448, file: !4, line: 120, baseType: !226, size: 32)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "component_index", scope: !448, file: !4, line: 121, baseType: !226, size: 32, offset: 32)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "h_samp_factor", scope: !448, file: !4, line: 122, baseType: !226, size: 32, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "v_samp_factor", scope: !448, file: !4, line: 123, baseType: !226, size: 32, offset: 96)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_no", scope: !448, file: !4, line: 124, baseType: !226, size: 32, offset: 128)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "dc_tbl_no", scope: !448, file: !4, line: 129, baseType: !226, size: 32, offset: 160)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tbl_no", scope: !448, file: !4, line: 130, baseType: !226, size: 32, offset: 192)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "width_in_blocks", scope: !448, file: !4, line: 139, baseType: !283, size: 32, offset: 224)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "height_in_blocks", scope: !448, file: !4, line: 140, baseType: !283, size: 32, offset: 256)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "DCT_scaled_size", scope: !448, file: !4, line: 147, baseType: !226, size: 32, offset: 288)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_width", scope: !448, file: !4, line: 154, baseType: !283, size: 32, offset: 320)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_height", scope: !448, file: !4, line: 155, baseType: !283, size: 32, offset: 352)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "component_needed", scope: !448, file: !4, line: 160, baseType: !305, size: 32, offset: 384)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_width", scope: !448, file: !4, line: 164, baseType: !226, size: 32, offset: 416)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_height", scope: !448, file: !4, line: 165, baseType: !226, size: 32, offset: 448)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_blocks", scope: !448, file: !4, line: 166, baseType: !226, size: 32, offset: 480)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_sample_width", scope: !448, file: !4, line: 167, baseType: !226, size: 32, offset: 512)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "last_col_width", scope: !448, file: !4, line: 168, baseType: !226, size: 32, offset: 544)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "last_row_height", scope: !448, file: !4, line: 169, baseType: !226, size: 32, offset: 576)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "quant_table", scope: !448, file: !4, line: 175, baseType: !416, size: 64, offset: 640)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "dct_table", scope: !448, file: !4, line: 178, baseType: !267, size: 64, offset: 704)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "progressive_mode", scope: !345, file: !4, line: 521, baseType: !305, size: 32, offset: 2432)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "arith_code", scope: !345, file: !4, line: 522, baseType: !305, size: 32, offset: 2464)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_L", scope: !345, file: !4, line: 524, baseType: !474, size: 128, offset: 2496)
!474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !435, size: 128, elements: !475)
!475 = !{!476}
!476 = !DISubrange(count: 16)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_U", scope: !345, file: !4, line: 525, baseType: !474, size: 128, offset: 2624)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "arith_ac_K", scope: !345, file: !4, line: 526, baseType: !474, size: 128, offset: 2752)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "restart_interval", scope: !345, file: !4, line: 528, baseType: !5, size: 32, offset: 2880)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "saw_JFIF_marker", scope: !345, file: !4, line: 533, baseType: !305, size: 32, offset: 2912)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "density_unit", scope: !345, file: !4, line: 535, baseType: !435, size: 8, offset: 2944)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "X_density", scope: !345, file: !4, line: 536, baseType: !422, size: 16, offset: 2960)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "Y_density", scope: !345, file: !4, line: 537, baseType: !422, size: 16, offset: 2976)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "saw_Adobe_marker", scope: !345, file: !4, line: 538, baseType: !305, size: 32, offset: 3008)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "Adobe_transform", scope: !345, file: !4, line: 539, baseType: !435, size: 8, offset: 3040)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "CCIR601_sampling", scope: !345, file: !4, line: 541, baseType: !305, size: 32, offset: 3072)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "max_h_samp_factor", scope: !345, file: !4, line: 550, baseType: !226, size: 32, offset: 3104)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "max_v_samp_factor", scope: !345, file: !4, line: 551, baseType: !226, size: 32, offset: 3136)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "min_DCT_scaled_size", scope: !345, file: !4, line: 553, baseType: !226, size: 32, offset: 3168)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "total_iMCU_rows", scope: !345, file: !4, line: 555, baseType: !283, size: 32, offset: 3200)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "sample_range_limit", scope: !345, file: !4, line: 564, baseType: !279, size: 64, offset: 3264)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "comps_in_scan", scope: !345, file: !4, line: 571, baseType: !226, size: 32, offset: 3328)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "cur_comp_info", scope: !345, file: !4, line: 572, baseType: !494, size: 256, offset: 3392)
!494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !446, size: 256, elements: !425)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "MCUs_per_row", scope: !345, file: !4, line: 575, baseType: !283, size: 32, offset: 3648)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_rows_in_scan", scope: !345, file: !4, line: 576, baseType: !283, size: 32, offset: 3680)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_in_MCU", scope: !345, file: !4, line: 578, baseType: !226, size: 32, offset: 3712)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_membership", scope: !345, file: !4, line: 579, baseType: !499, size: 320, offset: 3744)
!499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 320, elements: !500)
!500 = !{!501}
!501 = !DISubrange(count: 10)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "Ss", scope: !345, file: !4, line: 583, baseType: !226, size: 32, offset: 4064)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "Se", scope: !345, file: !4, line: 583, baseType: !226, size: 32, offset: 4096)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "Ah", scope: !345, file: !4, line: 583, baseType: !226, size: 32, offset: 4128)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "Al", scope: !345, file: !4, line: 583, baseType: !226, size: 32, offset: 4160)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "unread_marker", scope: !345, file: !4, line: 589, baseType: !226, size: 32, offset: 4192)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !345, file: !4, line: 594, baseType: !508, size: 64, offset: 4224)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_decomp_master", file: !24, line: 136, size: 192, elements: !510)
!510 = !{!511, !512, !513}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_for_output_pass", scope: !509, file: !24, line: 137, baseType: !340, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "finish_output_pass", scope: !509, file: !24, line: 138, baseType: !340, size: 64, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "is_dummy_pass", scope: !509, file: !24, line: 141, baseType: !305, size: 32, offset: 128)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "main", scope: !345, file: !4, line: 595, baseType: !515, size: 64, offset: 4288)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_d_main_controller", file: !24, line: 157, size: 128, elements: !517)
!517 = !{!518, !523}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !516, file: !24, line: 158, baseType: !519, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DISubroutineType(types: !521)
!521 = !{null, !343, !522}
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_BUF_MODE", file: !24, line: 22, baseType: !23)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "process_data", scope: !516, file: !24, line: 159, baseType: !524, size: 64, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DISubroutineType(types: !526)
!526 = !{null, !343, !276, !527, !283}
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "coef", scope: !345, file: !4, line: 596, baseType: !529, size: 64, offset: 4352)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_d_coef_controller", file: !24, line: 165, size: 320, elements: !531)
!531 = !{!532, !533, !537, !538, !544}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "start_input_pass", scope: !530, file: !24, line: 166, baseType: !340, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "consume_data", scope: !530, file: !24, line: 167, baseType: !534, size: 64, offset: 64)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DISubroutineType(types: !536)
!536 = !{!226, !343}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "start_output_pass", scope: !530, file: !24, line: 168, baseType: !340, size: 64, offset: 128)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "decompress_data", scope: !530, file: !24, line: 169, baseType: !539, size: 64, offset: 192)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DISubroutineType(types: !541)
!541 = !{!226, !343, !542}
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPIMAGE", file: !4, line: 68, baseType: !543)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "coef_arrays", scope: !530, file: !24, line: 172, baseType: !545, size: 64, offset: 256)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "post", scope: !345, file: !4, line: 597, baseType: !547, size: 64, offset: 4416)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_d_post_controller", file: !24, line: 176, size: 128, elements: !549)
!549 = !{!550, !551}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !548, file: !24, line: 177, baseType: !519, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "post_process_data", scope: !548, file: !24, line: 178, baseType: !552, size: 64, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DISubroutineType(types: !554)
!554 = !{null, !343, !542, !527, !283, !276, !527, !283}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "inputctl", scope: !345, file: !4, line: 598, baseType: !556, size: 64, offset: 4480)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_input_controller", file: !24, line: 145, size: 320, elements: !558)
!558 = !{!559, !560, !561, !562, !563, !564}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "consume_input", scope: !557, file: !24, line: 146, baseType: !534, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "reset_input_controller", scope: !557, file: !24, line: 147, baseType: !340, size: 64, offset: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "start_input_pass", scope: !557, file: !24, line: 148, baseType: !340, size: 64, offset: 128)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "finish_input_pass", scope: !557, file: !24, line: 149, baseType: !340, size: 64, offset: 192)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "has_multiple_scans", scope: !557, file: !24, line: 152, baseType: !305, size: 32, offset: 256)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "eoi_reached", scope: !557, file: !24, line: 153, baseType: !305, size: 32, offset: 288)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "marker", scope: !345, file: !4, line: 599, baseType: !336, size: 64, offset: 4544)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "entropy", scope: !345, file: !4, line: 600, baseType: !567, size: 64, offset: 4608)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_entropy_decoder", file: !24, line: 211, size: 128, elements: !569)
!569 = !{!570, !571}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !568, file: !24, line: 212, baseType: !340, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "decode_mcu", scope: !568, file: !24, line: 213, baseType: !572, size: 64, offset: 64)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{!305, !343, !289}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "idct", scope: !345, file: !4, line: 601, baseType: !576, size: 64, offset: 4672)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_inverse_dct", file: !24, line: 223, size: 704, elements: !578)
!578 = !{!579, !580}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !577, file: !24, line: 224, baseType: !340, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "inverse_DCT", scope: !577, file: !24, line: 226, baseType: !581, size: 640, offset: 64)
!581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !582, size: 640, elements: !500)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "inverse_DCT_method_ptr", file: !24, line: 218, baseType: !583)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DISubroutineType(types: !585)
!585 = !{null, !343, !446, !586, !276, !283}
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "JCOEFPTR", file: !4, line: 75, baseType: !587)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "upsample", scope: !345, file: !4, line: 602, baseType: !589, size: 64, offset: 4736)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_upsampler", file: !24, line: 230, size: 192, elements: !591)
!591 = !{!592, !593, !594}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !590, file: !24, line: 231, baseType: !340, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "upsample", scope: !590, file: !24, line: 232, baseType: !552, size: 64, offset: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "need_context_rows", scope: !590, file: !24, line: 240, baseType: !305, size: 32, offset: 128)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "cconvert", scope: !345, file: !4, line: 603, baseType: !596, size: 64, offset: 4800)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_color_deconverter", file: !24, line: 244, size: 128, elements: !598)
!598 = !{!599, !600}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !597, file: !24, line: 245, baseType: !340, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "color_convert", scope: !597, file: !24, line: 246, baseType: !601, size: 64, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{null, !343, !542, !283, !276, !226}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "cquantize", scope: !345, file: !4, line: 604, baseType: !605, size: 64, offset: 4864)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_color_quantizer", file: !24, line: 252, size: 256, elements: !607)
!607 = !{!608, !612, !616, !617}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !606, file: !24, line: 253, baseType: !609, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DISubroutineType(types: !611)
!611 = !{null, !343, !305}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "color_quantize", scope: !606, file: !24, line: 254, baseType: !613, size: 64, offset: 64)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DISubroutineType(types: !615)
!615 = !{null, !343, !276, !276, !226}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "finish_pass", scope: !606, file: !24, line: 257, baseType: !340, size: 64, offset: 128)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "new_color_map", scope: !606, file: !24, line: 258, baseType: !340, size: 64, offset: 192)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "read_markers", scope: !337, file: !24, line: 194, baseType: !534, size: 64, offset: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "read_restart_marker", scope: !337, file: !24, line: 196, baseType: !620, size: 64, offset: 128)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_marker_parser_method", file: !4, line: 781, baseType: !363)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "process_COM", scope: !337, file: !24, line: 198, baseType: !620, size: 64, offset: 192)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "process_APPn", scope: !337, file: !24, line: 199, baseType: !623, size: 1024, offset: 256)
!623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !620, size: 1024, elements: !475)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "saw_SOI", scope: !337, file: !24, line: 204, baseType: !305, size: 32, offset: 1280)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "saw_SOF", scope: !337, file: !24, line: 205, baseType: !305, size: 32, offset: 1312)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "next_restart_num", scope: !337, file: !24, line: 206, baseType: !226, size: 32, offset: 1344)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "discarded_bytes", scope: !337, file: !24, line: 207, baseType: !5, size: 32, offset: 1376)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT32", file: !281, line: 161, baseType: !249)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!631 = !{i32 7, !"Dwarf Version", i32 5}
!632 = !{i32 2, !"Debug Info Version", i32 3}
!633 = !{i32 1, !"wchar_size", i32 4}
!634 = !{i32 8, !"PIC Level", i32 2}
!635 = !{i32 7, !"PIE Level", i32 2}
!636 = !{i32 7, !"uwtable", i32 2}
!637 = !{i32 7, !"frame-pointer", i32 2}
!638 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!639 = distinct !DISubprogram(name: "jpeg_resync_to_restart", scope: !1, file: !1, line: 969, type: !372, scopeLine: 970, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !640)
!640 = !{}
!641 = !DILocalVariable(name: "cinfo", arg: 1, scope: !639, file: !1, line: 969, type: !343)
!642 = !DILocation(line: 969, column: 42, scope: !639)
!643 = !DILocalVariable(name: "desired", arg: 2, scope: !639, file: !1, line: 969, type: !226)
!644 = !DILocation(line: 969, column: 53, scope: !639)
!645 = !DILocalVariable(name: "marker", scope: !639, file: !1, line: 971, type: !226)
!646 = !DILocation(line: 971, column: 7, scope: !639)
!647 = !DILocation(line: 971, column: 16, scope: !639)
!648 = !DILocation(line: 971, column: 23, scope: !639)
!649 = !DILocalVariable(name: "action", scope: !639, file: !1, line: 972, type: !226)
!650 = !DILocation(line: 972, column: 7, scope: !639)
!651 = !DILocation(line: 975, column: 3, scope: !639)
!652 = !DILocation(line: 978, column: 3, scope: !639)
!653 = !DILocation(line: 979, column: 9, scope: !654)
!654 = distinct !DILexicalBlock(scope: !655, file: !1, line: 979, column: 9)
!655 = distinct !DILexicalBlock(scope: !656, file: !1, line: 978, column: 12)
!656 = distinct !DILexicalBlock(scope: !657, file: !1, line: 978, column: 3)
!657 = distinct !DILexicalBlock(scope: !639, file: !1, line: 978, column: 3)
!658 = !DILocation(line: 979, column: 16, scope: !654)
!659 = !DILocation(line: 980, column: 14, scope: !654)
!660 = !DILocation(line: 980, column: 7, scope: !654)
!661 = !DILocation(line: 981, column: 14, scope: !662)
!662 = distinct !DILexicalBlock(scope: !654, file: !1, line: 981, column: 14)
!663 = !DILocation(line: 981, column: 21, scope: !662)
!664 = !DILocation(line: 981, column: 36, scope: !662)
!665 = !DILocation(line: 981, column: 39, scope: !662)
!666 = !DILocation(line: 981, column: 46, scope: !662)
!667 = !DILocation(line: 982, column: 14, scope: !662)
!668 = !DILocation(line: 982, column: 7, scope: !662)
!669 = !DILocation(line: 984, column: 11, scope: !670)
!670 = distinct !DILexicalBlock(scope: !671, file: !1, line: 984, column: 11)
!671 = distinct !DILexicalBlock(scope: !662, file: !1, line: 983, column: 10)
!672 = !DILocation(line: 984, column: 39, scope: !670)
!673 = !DILocation(line: 984, column: 46, scope: !670)
!674 = !DILocation(line: 984, column: 50, scope: !670)
!675 = !DILocation(line: 984, column: 35, scope: !670)
!676 = !DILocation(line: 984, column: 18, scope: !670)
!677 = !DILocation(line: 984, column: 56, scope: !670)
!678 = !DILocation(line: 985, column: 4, scope: !670)
!679 = !DILocation(line: 985, column: 32, scope: !670)
!680 = !DILocation(line: 985, column: 39, scope: !670)
!681 = !DILocation(line: 985, column: 43, scope: !670)
!682 = !DILocation(line: 985, column: 28, scope: !670)
!683 = !DILocation(line: 985, column: 11, scope: !670)
!684 = !DILocation(line: 986, column: 9, scope: !670)
!685 = !DILocation(line: 986, column: 2, scope: !670)
!686 = !DILocation(line: 987, column: 16, scope: !687)
!687 = distinct !DILexicalBlock(scope: !670, file: !1, line: 987, column: 16)
!688 = !DILocation(line: 987, column: 44, scope: !687)
!689 = !DILocation(line: 987, column: 51, scope: !687)
!690 = !DILocation(line: 987, column: 55, scope: !687)
!691 = !DILocation(line: 987, column: 40, scope: !687)
!692 = !DILocation(line: 987, column: 23, scope: !687)
!693 = !DILocation(line: 987, column: 61, scope: !687)
!694 = !DILocation(line: 988, column: 9, scope: !687)
!695 = !DILocation(line: 988, column: 37, scope: !687)
!696 = !DILocation(line: 988, column: 44, scope: !687)
!697 = !DILocation(line: 988, column: 48, scope: !687)
!698 = !DILocation(line: 988, column: 33, scope: !687)
!699 = !DILocation(line: 988, column: 16, scope: !687)
!700 = !DILocation(line: 989, column: 9, scope: !687)
!701 = !DILocation(line: 989, column: 2, scope: !687)
!702 = !DILocation(line: 991, column: 9, scope: !687)
!703 = !DILocation(line: 993, column: 5, scope: !655)
!704 = !DILocation(line: 994, column: 13, scope: !655)
!705 = !DILocation(line: 994, column: 5, scope: !655)
!706 = !DILocation(line: 997, column: 7, scope: !707)
!707 = distinct !DILexicalBlock(scope: !655, file: !1, line: 994, column: 21)
!708 = !DILocation(line: 997, column: 14, scope: !707)
!709 = !DILocation(line: 997, column: 28, scope: !707)
!710 = !DILocation(line: 998, column: 7, scope: !707)
!711 = !DILocation(line: 1001, column: 25, scope: !712)
!712 = distinct !DILexicalBlock(scope: !707, file: !1, line: 1001, column: 11)
!713 = !DILocation(line: 1001, column: 13, scope: !712)
!714 = !DILocation(line: 1001, column: 11, scope: !712)
!715 = !DILocation(line: 1002, column: 2, scope: !712)
!716 = !DILocation(line: 1003, column: 16, scope: !707)
!717 = !DILocation(line: 1003, column: 23, scope: !707)
!718 = !DILocation(line: 1003, column: 14, scope: !707)
!719 = !DILocation(line: 1004, column: 7, scope: !707)
!720 = !DILocation(line: 1008, column: 7, scope: !707)
!721 = !DILocation(line: 978, column: 3, scope: !656)
!722 = distinct !{!722, !723, !724}
!723 = !DILocation(line: 978, column: 3, scope: !657)
!724 = !DILocation(line: 1010, column: 3, scope: !657)
!725 = !DILocation(line: 1011, column: 1, scope: !639)
!726 = distinct !DISubprogram(name: "next_marker", scope: !1, file: !1, line: 652, type: !364, scopeLine: 653, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !640)
!727 = !DILocalVariable(name: "cinfo", arg: 1, scope: !726, file: !1, line: 652, type: !343)
!728 = !DILocation(line: 652, column: 31, scope: !726)
!729 = !DILocalVariable(name: "c", scope: !726, file: !1, line: 654, type: !226)
!730 = !DILocation(line: 654, column: 7, scope: !726)
!731 = !DILocalVariable(name: "datasrc", scope: !726, file: !1, line: 655, type: !353)
!732 = !DILocation(line: 655, column: 3, scope: !726)
!733 = !DILocalVariable(name: "next_input_byte", scope: !726, file: !1, line: 655, type: !357)
!734 = !DILocalVariable(name: "bytes_in_buffer", scope: !726, file: !1, line: 655, type: !268)
!735 = !DILocation(line: 657, column: 3, scope: !726)
!736 = !DILocation(line: 658, column: 5, scope: !737)
!737 = distinct !DILexicalBlock(scope: !738, file: !1, line: 657, column: 12)
!738 = distinct !DILexicalBlock(scope: !739, file: !1, line: 657, column: 3)
!739 = distinct !DILexicalBlock(scope: !726, file: !1, line: 657, column: 3)
!740 = !DILocation(line: 658, column: 5, scope: !741)
!741 = distinct !DILexicalBlock(scope: !742, file: !1, line: 658, column: 5)
!742 = distinct !DILexicalBlock(scope: !737, file: !1, line: 658, column: 5)
!743 = !DILocation(line: 658, column: 5, scope: !744)
!744 = distinct !DILexicalBlock(scope: !745, file: !1, line: 658, column: 5)
!745 = distinct !DILexicalBlock(scope: !741, file: !1, line: 658, column: 5)
!746 = !DILocation(line: 658, column: 5, scope: !747)
!747 = distinct !DILexicalBlock(scope: !744, file: !1, line: 658, column: 5)
!748 = !DILocation(line: 658, column: 5, scope: !745)
!749 = !DILocation(line: 658, column: 5, scope: !742)
!750 = !DILocation(line: 664, column: 5, scope: !737)
!751 = !DILocation(line: 664, column: 12, scope: !737)
!752 = !DILocation(line: 664, column: 14, scope: !737)
!753 = !DILocation(line: 665, column: 7, scope: !754)
!754 = distinct !DILexicalBlock(scope: !737, file: !1, line: 664, column: 23)
!755 = !DILocation(line: 665, column: 14, scope: !754)
!756 = !DILocation(line: 665, column: 22, scope: !754)
!757 = !DILocation(line: 665, column: 37, scope: !754)
!758 = !DILocation(line: 666, column: 7, scope: !754)
!759 = !DILocation(line: 667, column: 7, scope: !754)
!760 = !DILocation(line: 667, column: 7, scope: !761)
!761 = distinct !DILexicalBlock(scope: !762, file: !1, line: 667, column: 7)
!762 = distinct !DILexicalBlock(scope: !754, file: !1, line: 667, column: 7)
!763 = !DILocation(line: 667, column: 7, scope: !764)
!764 = distinct !DILexicalBlock(scope: !765, file: !1, line: 667, column: 7)
!765 = distinct !DILexicalBlock(scope: !761, file: !1, line: 667, column: 7)
!766 = !DILocation(line: 667, column: 7, scope: !767)
!767 = distinct !DILexicalBlock(scope: !764, file: !1, line: 667, column: 7)
!768 = !DILocation(line: 667, column: 7, scope: !765)
!769 = !DILocation(line: 667, column: 7, scope: !762)
!770 = distinct !{!770, !750, !771, !772}
!771 = !DILocation(line: 668, column: 5, scope: !737)
!772 = !{!"llvm.loop.mustprogress"}
!773 = !DILocation(line: 674, column: 5, scope: !737)
!774 = !DILocation(line: 675, column: 7, scope: !775)
!775 = distinct !DILexicalBlock(scope: !737, file: !1, line: 674, column: 8)
!776 = !DILocation(line: 675, column: 7, scope: !777)
!777 = distinct !DILexicalBlock(scope: !778, file: !1, line: 675, column: 7)
!778 = distinct !DILexicalBlock(scope: !775, file: !1, line: 675, column: 7)
!779 = !DILocation(line: 675, column: 7, scope: !780)
!780 = distinct !DILexicalBlock(scope: !781, file: !1, line: 675, column: 7)
!781 = distinct !DILexicalBlock(scope: !777, file: !1, line: 675, column: 7)
!782 = !DILocation(line: 675, column: 7, scope: !783)
!783 = distinct !DILexicalBlock(scope: !780, file: !1, line: 675, column: 7)
!784 = !DILocation(line: 675, column: 7, scope: !781)
!785 = !DILocation(line: 675, column: 7, scope: !778)
!786 = !DILocation(line: 676, column: 5, scope: !775)
!787 = !DILocation(line: 676, column: 14, scope: !737)
!788 = !DILocation(line: 676, column: 16, scope: !737)
!789 = distinct !{!789, !773, !790, !772}
!790 = !DILocation(line: 676, column: 23, scope: !737)
!791 = !DILocation(line: 677, column: 9, scope: !792)
!792 = distinct !DILexicalBlock(scope: !737, file: !1, line: 677, column: 9)
!793 = !DILocation(line: 677, column: 11, scope: !792)
!794 = !DILocation(line: 678, column: 7, scope: !792)
!795 = !DILocation(line: 682, column: 5, scope: !737)
!796 = !DILocation(line: 682, column: 12, scope: !737)
!797 = !DILocation(line: 682, column: 20, scope: !737)
!798 = !DILocation(line: 682, column: 36, scope: !737)
!799 = !DILocation(line: 683, column: 5, scope: !737)
!800 = !DILocation(line: 657, column: 3, scope: !738)
!801 = distinct !{!801, !802, !803}
!802 = !DILocation(line: 657, column: 3, scope: !739)
!803 = !DILocation(line: 684, column: 3, scope: !739)
!804 = !DILocation(line: 686, column: 7, scope: !805)
!805 = distinct !DILexicalBlock(scope: !726, file: !1, line: 686, column: 7)
!806 = !DILocation(line: 686, column: 14, scope: !805)
!807 = !DILocation(line: 686, column: 22, scope: !805)
!808 = !DILocation(line: 686, column: 38, scope: !805)
!809 = !DILocation(line: 687, column: 5, scope: !810)
!810 = distinct !DILexicalBlock(scope: !805, file: !1, line: 686, column: 44)
!811 = !DILocation(line: 688, column: 5, scope: !810)
!812 = !DILocation(line: 688, column: 12, scope: !810)
!813 = !DILocation(line: 688, column: 20, scope: !810)
!814 = !DILocation(line: 688, column: 36, scope: !810)
!815 = !DILocation(line: 689, column: 3, scope: !810)
!816 = !DILocation(line: 691, column: 26, scope: !726)
!817 = !DILocation(line: 691, column: 3, scope: !726)
!818 = !DILocation(line: 691, column: 10, scope: !726)
!819 = !DILocation(line: 691, column: 24, scope: !726)
!820 = !DILocation(line: 693, column: 3, scope: !726)
!821 = !DILocation(line: 694, column: 3, scope: !726)
!822 = !DILocation(line: 695, column: 1, scope: !726)
!823 = distinct !DISubprogram(name: "jinit_marker_reader", scope: !1, file: !1, line: 1036, type: !341, scopeLine: 1037, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !640)
!824 = !DILocalVariable(name: "cinfo", arg: 1, scope: !823, file: !1, line: 1036, type: !343)
!825 = !DILocation(line: 1036, column: 39, scope: !823)
!826 = !DILocalVariable(name: "i", scope: !823, file: !1, line: 1038, type: !226)
!827 = !DILocation(line: 1038, column: 7, scope: !823)
!828 = !DILocation(line: 1042, column: 7, scope: !823)
!829 = !DILocation(line: 1042, column: 14, scope: !823)
!830 = !DILocation(line: 1042, column: 19, scope: !823)
!831 = !DILocation(line: 1042, column: 48, scope: !823)
!832 = !DILocation(line: 1042, column: 5, scope: !823)
!833 = !DILocation(line: 1041, column: 3, scope: !823)
!834 = !DILocation(line: 1041, column: 10, scope: !823)
!835 = !DILocation(line: 1041, column: 17, scope: !823)
!836 = !DILocation(line: 1045, column: 3, scope: !823)
!837 = !DILocation(line: 1045, column: 10, scope: !823)
!838 = !DILocation(line: 1045, column: 18, scope: !823)
!839 = !DILocation(line: 1045, column: 38, scope: !823)
!840 = !DILocation(line: 1046, column: 3, scope: !823)
!841 = !DILocation(line: 1046, column: 10, scope: !823)
!842 = !DILocation(line: 1046, column: 18, scope: !823)
!843 = !DILocation(line: 1046, column: 31, scope: !823)
!844 = !DILocation(line: 1047, column: 3, scope: !823)
!845 = !DILocation(line: 1047, column: 10, scope: !823)
!846 = !DILocation(line: 1047, column: 18, scope: !823)
!847 = !DILocation(line: 1047, column: 38, scope: !823)
!848 = !DILocation(line: 1048, column: 3, scope: !823)
!849 = !DILocation(line: 1048, column: 10, scope: !823)
!850 = !DILocation(line: 1048, column: 18, scope: !823)
!851 = !DILocation(line: 1048, column: 30, scope: !823)
!852 = !DILocation(line: 1049, column: 10, scope: !853)
!853 = distinct !DILexicalBlock(scope: !823, file: !1, line: 1049, column: 3)
!854 = !DILocation(line: 1049, column: 8, scope: !853)
!855 = !DILocation(line: 1049, column: 15, scope: !856)
!856 = distinct !DILexicalBlock(scope: !853, file: !1, line: 1049, column: 3)
!857 = !DILocation(line: 1049, column: 17, scope: !856)
!858 = !DILocation(line: 1049, column: 3, scope: !853)
!859 = !DILocation(line: 1050, column: 5, scope: !856)
!860 = !DILocation(line: 1050, column: 12, scope: !856)
!861 = !DILocation(line: 1050, column: 20, scope: !856)
!862 = !DILocation(line: 1050, column: 33, scope: !856)
!863 = !DILocation(line: 1050, column: 36, scope: !856)
!864 = !DILocation(line: 1049, column: 24, scope: !856)
!865 = !DILocation(line: 1049, column: 3, scope: !856)
!866 = distinct !{!866, !858, !867, !772}
!867 = !DILocation(line: 1050, column: 38, scope: !853)
!868 = !DILocation(line: 1051, column: 3, scope: !823)
!869 = !DILocation(line: 1051, column: 10, scope: !823)
!870 = !DILocation(line: 1051, column: 18, scope: !823)
!871 = !DILocation(line: 1051, column: 34, scope: !823)
!872 = !DILocation(line: 1052, column: 3, scope: !823)
!873 = !DILocation(line: 1052, column: 10, scope: !823)
!874 = !DILocation(line: 1052, column: 18, scope: !823)
!875 = !DILocation(line: 1052, column: 35, scope: !823)
!876 = !DILocation(line: 1054, column: 23, scope: !823)
!877 = !DILocation(line: 1054, column: 3, scope: !823)
!878 = !DILocation(line: 1055, column: 1, scope: !823)
!879 = distinct !DISubprogram(name: "reset_marker_reader", scope: !1, file: !1, line: 1019, type: !341, scopeLine: 1020, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !640)
!880 = !DILocalVariable(name: "cinfo", arg: 1, scope: !879, file: !1, line: 1019, type: !343)
!881 = !DILocation(line: 1019, column: 39, scope: !879)
!882 = !DILocation(line: 1021, column: 3, scope: !879)
!883 = !DILocation(line: 1021, column: 10, scope: !879)
!884 = !DILocation(line: 1021, column: 20, scope: !879)
!885 = !DILocation(line: 1022, column: 3, scope: !879)
!886 = !DILocation(line: 1022, column: 10, scope: !879)
!887 = !DILocation(line: 1022, column: 28, scope: !879)
!888 = !DILocation(line: 1023, column: 3, scope: !879)
!889 = !DILocation(line: 1023, column: 10, scope: !879)
!890 = !DILocation(line: 1023, column: 24, scope: !879)
!891 = !DILocation(line: 1024, column: 3, scope: !879)
!892 = !DILocation(line: 1024, column: 10, scope: !879)
!893 = !DILocation(line: 1024, column: 18, scope: !879)
!894 = !DILocation(line: 1024, column: 26, scope: !879)
!895 = !DILocation(line: 1025, column: 3, scope: !879)
!896 = !DILocation(line: 1025, column: 10, scope: !879)
!897 = !DILocation(line: 1025, column: 18, scope: !879)
!898 = !DILocation(line: 1025, column: 26, scope: !879)
!899 = !DILocation(line: 1026, column: 3, scope: !879)
!900 = !DILocation(line: 1026, column: 10, scope: !879)
!901 = !DILocation(line: 1026, column: 18, scope: !879)
!902 = !DILocation(line: 1026, column: 34, scope: !879)
!903 = !DILocation(line: 1027, column: 1, scope: !879)
!904 = distinct !DISubprogram(name: "read_markers", scope: !1, file: !1, line: 730, type: !535, scopeLine: 731, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !640)
!905 = !DILocalVariable(name: "cinfo", arg: 1, scope: !904, file: !1, line: 730, type: !343)
!906 = !DILocation(line: 730, column: 32, scope: !904)
!907 = !DILocation(line: 733, column: 3, scope: !904)
!908 = !DILocation(line: 736, column: 9, scope: !909)
!909 = distinct !DILexicalBlock(scope: !910, file: !1, line: 736, column: 9)
!910 = distinct !DILexicalBlock(scope: !911, file: !1, line: 733, column: 12)
!911 = distinct !DILexicalBlock(scope: !912, file: !1, line: 733, column: 3)
!912 = distinct !DILexicalBlock(scope: !904, file: !1, line: 733, column: 3)
!913 = !DILocation(line: 736, column: 16, scope: !909)
!914 = !DILocation(line: 736, column: 30, scope: !909)
!915 = !DILocation(line: 737, column: 13, scope: !916)
!916 = distinct !DILexicalBlock(scope: !917, file: !1, line: 737, column: 11)
!917 = distinct !DILexicalBlock(scope: !909, file: !1, line: 736, column: 36)
!918 = !DILocation(line: 737, column: 20, scope: !916)
!919 = !DILocation(line: 737, column: 28, scope: !916)
!920 = !DILocation(line: 737, column: 11, scope: !916)
!921 = !DILocation(line: 738, column: 21, scope: !922)
!922 = distinct !DILexicalBlock(scope: !923, file: !1, line: 738, column: 6)
!923 = distinct !DILexicalBlock(scope: !916, file: !1, line: 737, column: 37)
!924 = !DILocation(line: 738, column: 8, scope: !922)
!925 = !DILocation(line: 738, column: 6, scope: !922)
!926 = !DILocation(line: 739, column: 4, scope: !922)
!927 = !DILocation(line: 740, column: 7, scope: !923)
!928 = !DILocation(line: 741, column: 20, scope: !929)
!929 = distinct !DILexicalBlock(scope: !930, file: !1, line: 741, column: 6)
!930 = distinct !DILexicalBlock(scope: !916, file: !1, line: 740, column: 14)
!931 = !DILocation(line: 741, column: 8, scope: !929)
!932 = !DILocation(line: 741, column: 6, scope: !929)
!933 = !DILocation(line: 742, column: 4, scope: !929)
!934 = !DILocation(line: 744, column: 5, scope: !917)
!935 = !DILocation(line: 749, column: 13, scope: !910)
!936 = !DILocation(line: 749, column: 20, scope: !910)
!937 = !DILocation(line: 749, column: 5, scope: !910)
!938 = !DILocation(line: 751, column: 21, scope: !939)
!939 = distinct !DILexicalBlock(scope: !940, file: !1, line: 751, column: 11)
!940 = distinct !DILexicalBlock(scope: !910, file: !1, line: 749, column: 35)
!941 = !DILocation(line: 751, column: 13, scope: !939)
!942 = !DILocation(line: 751, column: 11, scope: !939)
!943 = !DILocation(line: 752, column: 2, scope: !939)
!944 = !DILocation(line: 753, column: 7, scope: !940)
!945 = !DILocation(line: 757, column: 21, scope: !946)
!946 = distinct !DILexicalBlock(scope: !940, file: !1, line: 757, column: 11)
!947 = !DILocation(line: 757, column: 13, scope: !946)
!948 = !DILocation(line: 757, column: 11, scope: !946)
!949 = !DILocation(line: 758, column: 2, scope: !946)
!950 = !DILocation(line: 759, column: 7, scope: !940)
!951 = !DILocation(line: 762, column: 21, scope: !952)
!952 = distinct !DILexicalBlock(scope: !940, file: !1, line: 762, column: 11)
!953 = !DILocation(line: 762, column: 13, scope: !952)
!954 = !DILocation(line: 762, column: 11, scope: !952)
!955 = !DILocation(line: 763, column: 2, scope: !952)
!956 = !DILocation(line: 764, column: 7, scope: !940)
!957 = !DILocation(line: 767, column: 21, scope: !958)
!958 = distinct !DILexicalBlock(scope: !940, file: !1, line: 767, column: 11)
!959 = !DILocation(line: 767, column: 13, scope: !958)
!960 = !DILocation(line: 767, column: 11, scope: !958)
!961 = !DILocation(line: 768, column: 2, scope: !958)
!962 = !DILocation(line: 769, column: 7, scope: !940)
!963 = !DILocation(line: 772, column: 21, scope: !964)
!964 = distinct !DILexicalBlock(scope: !940, file: !1, line: 772, column: 11)
!965 = !DILocation(line: 772, column: 13, scope: !964)
!966 = !DILocation(line: 772, column: 11, scope: !964)
!967 = !DILocation(line: 773, column: 2, scope: !964)
!968 = !DILocation(line: 774, column: 7, scope: !940)
!969 = !DILocation(line: 786, column: 7, scope: !940)
!970 = !DILocation(line: 787, column: 7, scope: !940)
!971 = !DILocation(line: 790, column: 21, scope: !972)
!972 = distinct !DILexicalBlock(scope: !940, file: !1, line: 790, column: 11)
!973 = !DILocation(line: 790, column: 13, scope: !972)
!974 = !DILocation(line: 790, column: 11, scope: !972)
!975 = !DILocation(line: 791, column: 2, scope: !972)
!976 = !DILocation(line: 792, column: 7, scope: !940)
!977 = !DILocation(line: 792, column: 14, scope: !940)
!978 = !DILocation(line: 792, column: 28, scope: !940)
!979 = !DILocation(line: 793, column: 7, scope: !940)
!980 = !DILocation(line: 796, column: 7, scope: !940)
!981 = !DILocation(line: 797, column: 7, scope: !940)
!982 = !DILocation(line: 797, column: 14, scope: !940)
!983 = !DILocation(line: 797, column: 28, scope: !940)
!984 = !DILocation(line: 798, column: 7, scope: !940)
!985 = !DILocation(line: 801, column: 21, scope: !986)
!986 = distinct !DILexicalBlock(scope: !940, file: !1, line: 801, column: 11)
!987 = !DILocation(line: 801, column: 13, scope: !986)
!988 = !DILocation(line: 801, column: 11, scope: !986)
!989 = !DILocation(line: 802, column: 2, scope: !986)
!990 = !DILocation(line: 803, column: 7, scope: !940)
!991 = !DILocation(line: 806, column: 21, scope: !992)
!992 = distinct !DILexicalBlock(scope: !940, file: !1, line: 806, column: 11)
!993 = !DILocation(line: 806, column: 13, scope: !992)
!994 = !DILocation(line: 806, column: 11, scope: !992)
!995 = !DILocation(line: 807, column: 2, scope: !992)
!996 = !DILocation(line: 808, column: 7, scope: !940)
!997 = !DILocation(line: 811, column: 21, scope: !998)
!998 = distinct !DILexicalBlock(scope: !940, file: !1, line: 811, column: 11)
!999 = !DILocation(line: 811, column: 13, scope: !998)
!1000 = !DILocation(line: 811, column: 11, scope: !998)
!1001 = !DILocation(line: 812, column: 2, scope: !998)
!1002 = !DILocation(line: 813, column: 7, scope: !940)
!1003 = !DILocation(line: 816, column: 21, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !940, file: !1, line: 816, column: 11)
!1005 = !DILocation(line: 816, column: 13, scope: !1004)
!1006 = !DILocation(line: 816, column: 11, scope: !1004)
!1007 = !DILocation(line: 817, column: 2, scope: !1004)
!1008 = !DILocation(line: 818, column: 7, scope: !940)
!1009 = !DILocation(line: 836, column: 15, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !940, file: !1, line: 836, column: 11)
!1011 = !DILocation(line: 836, column: 22, scope: !1010)
!1012 = !DILocation(line: 836, column: 30, scope: !1010)
!1013 = !DILocation(line: 836, column: 43, scope: !1010)
!1014 = !DILocation(line: 836, column: 50, scope: !1010)
!1015 = !DILocation(line: 836, column: 64, scope: !1010)
!1016 = !DILocation(line: 836, column: 82, scope: !1010)
!1017 = !DILocation(line: 836, column: 13, scope: !1010)
!1018 = !DILocation(line: 836, column: 11, scope: !1010)
!1019 = !DILocation(line: 837, column: 2, scope: !1010)
!1020 = !DILocation(line: 838, column: 7, scope: !940)
!1021 = !DILocation(line: 841, column: 15, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !940, file: !1, line: 841, column: 11)
!1023 = !DILocation(line: 841, column: 22, scope: !1022)
!1024 = !DILocation(line: 841, column: 30, scope: !1022)
!1025 = !DILocation(line: 841, column: 44, scope: !1022)
!1026 = !DILocation(line: 841, column: 13, scope: !1022)
!1027 = !DILocation(line: 841, column: 11, scope: !1022)
!1028 = !DILocation(line: 842, column: 2, scope: !1022)
!1029 = !DILocation(line: 843, column: 7, scope: !940)
!1030 = !DILocation(line: 854, column: 7, scope: !940)
!1031 = !DILocation(line: 855, column: 7, scope: !940)
!1032 = !DILocation(line: 858, column: 27, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !940, file: !1, line: 858, column: 11)
!1034 = !DILocation(line: 858, column: 13, scope: !1033)
!1035 = !DILocation(line: 858, column: 11, scope: !1033)
!1036 = !DILocation(line: 859, column: 2, scope: !1033)
!1037 = !DILocation(line: 860, column: 7, scope: !940)
!1038 = !DILocation(line: 868, column: 7, scope: !940)
!1039 = !DILocation(line: 869, column: 7, scope: !940)
!1040 = !DILocation(line: 872, column: 5, scope: !910)
!1041 = !DILocation(line: 872, column: 12, scope: !910)
!1042 = !DILocation(line: 872, column: 26, scope: !910)
!1043 = !DILocation(line: 733, column: 3, scope: !911)
!1044 = distinct !{!1044, !1045, !1046}
!1045 = !DILocation(line: 733, column: 3, scope: !912)
!1046 = !DILocation(line: 873, column: 3, scope: !912)
!1047 = !DILocation(line: 874, column: 1, scope: !904)
!1048 = distinct !DISubprogram(name: "read_restart_marker", scope: !1, file: !1, line: 890, type: !364, scopeLine: 891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !640)
!1049 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1048, file: !1, line: 890, type: !343)
!1050 = !DILocation(line: 890, column: 39, scope: !1048)
!1051 = !DILocation(line: 894, column: 7, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1048, file: !1, line: 894, column: 7)
!1053 = !DILocation(line: 894, column: 14, scope: !1052)
!1054 = !DILocation(line: 894, column: 28, scope: !1052)
!1055 = !DILocation(line: 895, column: 23, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1057, file: !1, line: 895, column: 9)
!1057 = distinct !DILexicalBlock(scope: !1052, file: !1, line: 894, column: 34)
!1058 = !DILocation(line: 895, column: 11, scope: !1056)
!1059 = !DILocation(line: 895, column: 9, scope: !1056)
!1060 = !DILocation(line: 896, column: 7, scope: !1056)
!1061 = !DILocation(line: 897, column: 3, scope: !1057)
!1062 = !DILocation(line: 899, column: 7, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1048, file: !1, line: 899, column: 7)
!1064 = !DILocation(line: 899, column: 14, scope: !1063)
!1065 = !DILocation(line: 900, column: 23, scope: !1063)
!1066 = !DILocation(line: 900, column: 30, scope: !1063)
!1067 = !DILocation(line: 900, column: 38, scope: !1063)
!1068 = !DILocation(line: 900, column: 21, scope: !1063)
!1069 = !DILocation(line: 899, column: 28, scope: !1063)
!1070 = !DILocation(line: 902, column: 5, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1063, file: !1, line: 900, column: 57)
!1072 = !DILocation(line: 903, column: 5, scope: !1071)
!1073 = !DILocation(line: 903, column: 12, scope: !1071)
!1074 = !DILocation(line: 903, column: 26, scope: !1071)
!1075 = !DILocation(line: 904, column: 3, scope: !1071)
!1076 = !DILocation(line: 907, column: 13, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1078, file: !1, line: 907, column: 9)
!1078 = distinct !DILexicalBlock(scope: !1063, file: !1, line: 904, column: 10)
!1079 = !DILocation(line: 907, column: 20, scope: !1077)
!1080 = !DILocation(line: 907, column: 25, scope: !1077)
!1081 = !DILocation(line: 907, column: 45, scope: !1077)
!1082 = !DILocation(line: 908, column: 10, scope: !1077)
!1083 = !DILocation(line: 908, column: 17, scope: !1077)
!1084 = !DILocation(line: 908, column: 25, scope: !1077)
!1085 = !DILocation(line: 907, column: 11, scope: !1077)
!1086 = !DILocation(line: 907, column: 9, scope: !1077)
!1087 = !DILocation(line: 909, column: 7, scope: !1077)
!1088 = !DILocation(line: 913, column: 38, scope: !1048)
!1089 = !DILocation(line: 913, column: 45, scope: !1048)
!1090 = !DILocation(line: 913, column: 53, scope: !1048)
!1091 = !DILocation(line: 913, column: 70, scope: !1048)
!1092 = !DILocation(line: 913, column: 75, scope: !1048)
!1093 = !DILocation(line: 913, column: 3, scope: !1048)
!1094 = !DILocation(line: 913, column: 10, scope: !1048)
!1095 = !DILocation(line: 913, column: 18, scope: !1048)
!1096 = !DILocation(line: 913, column: 35, scope: !1048)
!1097 = !DILocation(line: 915, column: 3, scope: !1048)
!1098 = !DILocation(line: 916, column: 1, scope: !1048)
!1099 = distinct !DISubprogram(name: "skip_variable", scope: !1, file: !1, line: 625, type: !364, scopeLine: 627, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !640)
!1100 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1099, file: !1, line: 625, type: !343)
!1101 = !DILocation(line: 625, column: 33, scope: !1099)
!1102 = !DILocalVariable(name: "length", scope: !1099, file: !1, line: 628, type: !628)
!1103 = !DILocation(line: 628, column: 9, scope: !1099)
!1104 = !DILocalVariable(name: "datasrc", scope: !1099, file: !1, line: 629, type: !353)
!1105 = !DILocation(line: 629, column: 3, scope: !1099)
!1106 = !DILocalVariable(name: "next_input_byte", scope: !1099, file: !1, line: 629, type: !357)
!1107 = !DILocalVariable(name: "bytes_in_buffer", scope: !1099, file: !1, line: 629, type: !268)
!1108 = !DILocation(line: 631, column: 3, scope: !1099)
!1109 = !DILocation(line: 631, column: 3, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1111, file: !1, line: 631, column: 3)
!1111 = distinct !DILexicalBlock(scope: !1099, file: !1, line: 631, column: 3)
!1112 = !DILocation(line: 631, column: 3, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1114, file: !1, line: 631, column: 3)
!1114 = distinct !DILexicalBlock(scope: !1110, file: !1, line: 631, column: 3)
!1115 = !DILocation(line: 631, column: 3, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1113, file: !1, line: 631, column: 3)
!1117 = !DILocation(line: 631, column: 3, scope: !1114)
!1118 = !DILocation(line: 631, column: 3, scope: !1111)
!1119 = !DILocation(line: 631, column: 3, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1111, file: !1, line: 631, column: 3)
!1121 = !DILocation(line: 631, column: 3, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1123, file: !1, line: 631, column: 3)
!1123 = distinct !DILexicalBlock(scope: !1120, file: !1, line: 631, column: 3)
!1124 = !DILocation(line: 631, column: 3, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1122, file: !1, line: 631, column: 3)
!1126 = !DILocation(line: 631, column: 3, scope: !1123)
!1127 = !DILocation(line: 633, column: 3, scope: !1099)
!1128 = !DILocation(line: 635, column: 3, scope: !1099)
!1129 = !DILocation(line: 636, column: 5, scope: !1099)
!1130 = !DILocation(line: 636, column: 12, scope: !1099)
!1131 = !DILocation(line: 636, column: 17, scope: !1099)
!1132 = !DILocation(line: 636, column: 35, scope: !1099)
!1133 = !DILocation(line: 636, column: 49, scope: !1099)
!1134 = !DILocation(line: 636, column: 56, scope: !1099)
!1135 = !DILocation(line: 636, column: 3, scope: !1099)
!1136 = !DILocation(line: 638, column: 3, scope: !1099)
!1137 = !DILocation(line: 639, column: 1, scope: !1099)
!1138 = distinct !DISubprogram(name: "get_app0", scope: !1, file: !1, line: 338, type: !364, scopeLine: 340, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !640)
!1139 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1138, file: !1, line: 338, type: !343)
!1140 = !DILocation(line: 338, column: 28, scope: !1138)
!1141 = !DILocalVariable(name: "length", scope: !1138, file: !1, line: 342, type: !628)
!1142 = !DILocation(line: 342, column: 9, scope: !1138)
!1143 = !DILocalVariable(name: "b", scope: !1138, file: !1, line: 343, type: !1144)
!1144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !435, size: 112, elements: !1145)
!1145 = !{!1146}
!1146 = !DISubrange(count: 14)
!1147 = !DILocation(line: 343, column: 9, scope: !1138)
!1148 = !DILocalVariable(name: "buffp", scope: !1138, file: !1, line: 344, type: !226)
!1149 = !DILocation(line: 344, column: 7, scope: !1138)
!1150 = !DILocalVariable(name: "datasrc", scope: !1138, file: !1, line: 345, type: !353)
!1151 = !DILocation(line: 345, column: 3, scope: !1138)
!1152 = !DILocalVariable(name: "next_input_byte", scope: !1138, file: !1, line: 345, type: !357)
!1153 = !DILocalVariable(name: "bytes_in_buffer", scope: !1138, file: !1, line: 345, type: !268)
!1154 = !DILocation(line: 347, column: 3, scope: !1138)
!1155 = !DILocation(line: 347, column: 3, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1157, file: !1, line: 347, column: 3)
!1157 = distinct !DILexicalBlock(scope: !1138, file: !1, line: 347, column: 3)
!1158 = !DILocation(line: 347, column: 3, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1160, file: !1, line: 347, column: 3)
!1160 = distinct !DILexicalBlock(scope: !1156, file: !1, line: 347, column: 3)
!1161 = !DILocation(line: 347, column: 3, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1159, file: !1, line: 347, column: 3)
!1163 = !DILocation(line: 347, column: 3, scope: !1160)
!1164 = !DILocation(line: 347, column: 3, scope: !1157)
!1165 = !DILocation(line: 347, column: 3, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1157, file: !1, line: 347, column: 3)
!1167 = !DILocation(line: 347, column: 3, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1169, file: !1, line: 347, column: 3)
!1169 = distinct !DILexicalBlock(scope: !1166, file: !1, line: 347, column: 3)
!1170 = !DILocation(line: 347, column: 3, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1168, file: !1, line: 347, column: 3)
!1172 = !DILocation(line: 347, column: 3, scope: !1169)
!1173 = !DILocation(line: 348, column: 10, scope: !1138)
!1174 = !DILocation(line: 352, column: 7, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1138, file: !1, line: 352, column: 7)
!1176 = !DILocation(line: 352, column: 14, scope: !1175)
!1177 = !DILocation(line: 353, column: 16, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1179, file: !1, line: 353, column: 5)
!1179 = distinct !DILexicalBlock(scope: !1175, file: !1, line: 352, column: 27)
!1180 = !DILocation(line: 353, column: 10, scope: !1178)
!1181 = !DILocation(line: 353, column: 21, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1178, file: !1, line: 353, column: 5)
!1183 = !DILocation(line: 353, column: 27, scope: !1182)
!1184 = !DILocation(line: 353, column: 5, scope: !1178)
!1185 = !DILocation(line: 354, column: 7, scope: !1182)
!1186 = !DILocation(line: 354, column: 7, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1188, file: !1, line: 354, column: 7)
!1188 = distinct !DILexicalBlock(scope: !1182, file: !1, line: 354, column: 7)
!1189 = !DILocation(line: 354, column: 7, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1191, file: !1, line: 354, column: 7)
!1191 = distinct !DILexicalBlock(scope: !1187, file: !1, line: 354, column: 7)
!1192 = !DILocation(line: 354, column: 7, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1190, file: !1, line: 354, column: 7)
!1194 = !DILocation(line: 354, column: 7, scope: !1191)
!1195 = !DILocation(line: 354, column: 7, scope: !1188)
!1196 = !DILocation(line: 353, column: 44, scope: !1182)
!1197 = !DILocation(line: 353, column: 5, scope: !1182)
!1198 = distinct !{!1198, !1184, !1199, !772}
!1199 = !DILocation(line: 354, column: 7, scope: !1178)
!1200 = !DILocation(line: 355, column: 12, scope: !1179)
!1201 = !DILocation(line: 357, column: 9, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1179, file: !1, line: 357, column: 9)
!1203 = !DILocation(line: 357, column: 13, scope: !1202)
!1204 = !DILocation(line: 357, column: 20, scope: !1202)
!1205 = !DILocation(line: 357, column: 23, scope: !1202)
!1206 = !DILocation(line: 357, column: 27, scope: !1202)
!1207 = !DILocation(line: 357, column: 34, scope: !1202)
!1208 = !DILocation(line: 357, column: 37, scope: !1202)
!1209 = !DILocation(line: 357, column: 41, scope: !1202)
!1210 = !DILocation(line: 357, column: 48, scope: !1202)
!1211 = !DILocation(line: 357, column: 51, scope: !1202)
!1212 = !DILocation(line: 357, column: 55, scope: !1202)
!1213 = !DILocation(line: 357, column: 62, scope: !1202)
!1214 = !DILocation(line: 357, column: 65, scope: !1202)
!1215 = !DILocation(line: 357, column: 69, scope: !1202)
!1216 = !DILocation(line: 364, column: 11, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1218, file: !1, line: 364, column: 11)
!1218 = distinct !DILexicalBlock(scope: !1202, file: !1, line: 357, column: 74)
!1219 = !DILocation(line: 364, column: 16, scope: !1217)
!1220 = !DILocation(line: 365, column: 2, scope: !1217)
!1221 = !DILocation(line: 366, column: 16, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1217, file: !1, line: 366, column: 16)
!1223 = !DILocation(line: 366, column: 21, scope: !1222)
!1224 = !DILocation(line: 367, column: 2, scope: !1222)
!1225 = !DILocation(line: 369, column: 7, scope: !1218)
!1226 = !DILocation(line: 369, column: 14, scope: !1218)
!1227 = !DILocation(line: 369, column: 30, scope: !1218)
!1228 = !DILocation(line: 370, column: 29, scope: !1218)
!1229 = !DILocation(line: 370, column: 7, scope: !1218)
!1230 = !DILocation(line: 370, column: 14, scope: !1218)
!1231 = !DILocation(line: 370, column: 27, scope: !1218)
!1232 = !DILocation(line: 371, column: 27, scope: !1218)
!1233 = !DILocation(line: 371, column: 32, scope: !1218)
!1234 = !DILocation(line: 371, column: 40, scope: !1218)
!1235 = !DILocation(line: 371, column: 38, scope: !1218)
!1236 = !DILocation(line: 371, column: 26, scope: !1218)
!1237 = !DILocation(line: 371, column: 7, scope: !1218)
!1238 = !DILocation(line: 371, column: 14, scope: !1218)
!1239 = !DILocation(line: 371, column: 24, scope: !1218)
!1240 = !DILocation(line: 372, column: 27, scope: !1218)
!1241 = !DILocation(line: 372, column: 33, scope: !1218)
!1242 = !DILocation(line: 372, column: 41, scope: !1218)
!1243 = !DILocation(line: 372, column: 39, scope: !1218)
!1244 = !DILocation(line: 372, column: 26, scope: !1218)
!1245 = !DILocation(line: 372, column: 7, scope: !1218)
!1246 = !DILocation(line: 372, column: 14, scope: !1218)
!1247 = !DILocation(line: 372, column: 24, scope: !1218)
!1248 = !DILocation(line: 373, column: 7, scope: !1218)
!1249 = !DILocalVariable(name: "_mp", scope: !1250, file: !1, line: 373, type: !1251)
!1250 = distinct !DILexicalBlock(scope: !1218, file: !1, line: 373, column: 7)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!1252 = !DILocation(line: 373, column: 7, scope: !1250)
!1253 = !DILocation(line: 375, column: 11, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1218, file: !1, line: 375, column: 11)
!1255 = !DILocation(line: 375, column: 19, scope: !1254)
!1256 = !DILocation(line: 375, column: 17, scope: !1254)
!1257 = !DILocation(line: 376, column: 2, scope: !1254)
!1258 = !DILocation(line: 377, column: 11, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1218, file: !1, line: 377, column: 11)
!1260 = !DILocation(line: 377, column: 30, scope: !1259)
!1261 = !DILocation(line: 377, column: 22, scope: !1259)
!1262 = !DILocation(line: 377, column: 46, scope: !1259)
!1263 = !DILocation(line: 377, column: 38, scope: !1259)
!1264 = !DILocation(line: 377, column: 36, scope: !1259)
!1265 = !DILocation(line: 377, column: 52, scope: !1259)
!1266 = !DILocation(line: 377, column: 18, scope: !1259)
!1267 = !DILocation(line: 378, column: 2, scope: !1259)
!1268 = !DILocation(line: 379, column: 5, scope: !1218)
!1269 = !DILocation(line: 381, column: 7, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1202, file: !1, line: 379, column: 12)
!1271 = !DILocation(line: 383, column: 3, scope: !1179)
!1272 = !DILocation(line: 385, column: 5, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1175, file: !1, line: 383, column: 10)
!1274 = !DILocation(line: 388, column: 3, scope: !1138)
!1275 = !DILocation(line: 389, column: 7, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1138, file: !1, line: 389, column: 7)
!1277 = !DILocation(line: 389, column: 14, scope: !1276)
!1278 = !DILocation(line: 390, column: 7, scope: !1276)
!1279 = !DILocation(line: 390, column: 14, scope: !1276)
!1280 = !DILocation(line: 390, column: 19, scope: !1276)
!1281 = !DILocation(line: 390, column: 37, scope: !1276)
!1282 = !DILocation(line: 390, column: 51, scope: !1276)
!1283 = !DILocation(line: 390, column: 5, scope: !1276)
!1284 = !DILocation(line: 392, column: 3, scope: !1138)
!1285 = !DILocation(line: 393, column: 1, scope: !1138)
!1286 = distinct !DISubprogram(name: "get_app14", scope: !1, file: !1, line: 397, type: !364, scopeLine: 399, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !640)
!1287 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1286, file: !1, line: 397, type: !343)
!1288 = !DILocation(line: 397, column: 29, scope: !1286)
!1289 = !DILocalVariable(name: "length", scope: !1286, file: !1, line: 401, type: !628)
!1290 = !DILocation(line: 401, column: 9, scope: !1286)
!1291 = !DILocalVariable(name: "b", scope: !1286, file: !1, line: 402, type: !1292)
!1292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !435, size: 96, elements: !1293)
!1293 = !{!1294}
!1294 = !DISubrange(count: 12)
!1295 = !DILocation(line: 402, column: 9, scope: !1286)
!1296 = !DILocalVariable(name: "buffp", scope: !1286, file: !1, line: 403, type: !226)
!1297 = !DILocation(line: 403, column: 7, scope: !1286)
!1298 = !DILocalVariable(name: "version", scope: !1286, file: !1, line: 404, type: !5)
!1299 = !DILocation(line: 404, column: 16, scope: !1286)
!1300 = !DILocalVariable(name: "flags0", scope: !1286, file: !1, line: 404, type: !5)
!1301 = !DILocation(line: 404, column: 25, scope: !1286)
!1302 = !DILocalVariable(name: "flags1", scope: !1286, file: !1, line: 404, type: !5)
!1303 = !DILocation(line: 404, column: 33, scope: !1286)
!1304 = !DILocalVariable(name: "transform", scope: !1286, file: !1, line: 404, type: !5)
!1305 = !DILocation(line: 404, column: 41, scope: !1286)
!1306 = !DILocalVariable(name: "datasrc", scope: !1286, file: !1, line: 405, type: !353)
!1307 = !DILocation(line: 405, column: 3, scope: !1286)
!1308 = !DILocalVariable(name: "next_input_byte", scope: !1286, file: !1, line: 405, type: !357)
!1309 = !DILocalVariable(name: "bytes_in_buffer", scope: !1286, file: !1, line: 405, type: !268)
!1310 = !DILocation(line: 407, column: 3, scope: !1286)
!1311 = !DILocation(line: 407, column: 3, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1313, file: !1, line: 407, column: 3)
!1313 = distinct !DILexicalBlock(scope: !1286, file: !1, line: 407, column: 3)
!1314 = !DILocation(line: 407, column: 3, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1316, file: !1, line: 407, column: 3)
!1316 = distinct !DILexicalBlock(scope: !1312, file: !1, line: 407, column: 3)
!1317 = !DILocation(line: 407, column: 3, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1315, file: !1, line: 407, column: 3)
!1319 = !DILocation(line: 407, column: 3, scope: !1316)
!1320 = !DILocation(line: 407, column: 3, scope: !1313)
!1321 = !DILocation(line: 407, column: 3, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1313, file: !1, line: 407, column: 3)
!1323 = !DILocation(line: 407, column: 3, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1325, file: !1, line: 407, column: 3)
!1325 = distinct !DILexicalBlock(scope: !1322, file: !1, line: 407, column: 3)
!1326 = !DILocation(line: 407, column: 3, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1324, file: !1, line: 407, column: 3)
!1328 = !DILocation(line: 407, column: 3, scope: !1325)
!1329 = !DILocation(line: 408, column: 10, scope: !1286)
!1330 = !DILocation(line: 412, column: 7, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1286, file: !1, line: 412, column: 7)
!1332 = !DILocation(line: 412, column: 14, scope: !1331)
!1333 = !DILocation(line: 413, column: 16, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1335, file: !1, line: 413, column: 5)
!1335 = distinct !DILexicalBlock(scope: !1331, file: !1, line: 412, column: 28)
!1336 = !DILocation(line: 413, column: 10, scope: !1334)
!1337 = !DILocation(line: 413, column: 21, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1334, file: !1, line: 413, column: 5)
!1339 = !DILocation(line: 413, column: 27, scope: !1338)
!1340 = !DILocation(line: 413, column: 5, scope: !1334)
!1341 = !DILocation(line: 414, column: 7, scope: !1338)
!1342 = !DILocation(line: 414, column: 7, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1344, file: !1, line: 414, column: 7)
!1344 = distinct !DILexicalBlock(scope: !1338, file: !1, line: 414, column: 7)
!1345 = !DILocation(line: 414, column: 7, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1347, file: !1, line: 414, column: 7)
!1347 = distinct !DILexicalBlock(scope: !1343, file: !1, line: 414, column: 7)
!1348 = !DILocation(line: 414, column: 7, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1346, file: !1, line: 414, column: 7)
!1350 = !DILocation(line: 414, column: 7, scope: !1347)
!1351 = !DILocation(line: 414, column: 7, scope: !1344)
!1352 = !DILocation(line: 413, column: 45, scope: !1338)
!1353 = !DILocation(line: 413, column: 5, scope: !1338)
!1354 = distinct !{!1354, !1340, !1355, !772}
!1355 = !DILocation(line: 414, column: 7, scope: !1334)
!1356 = !DILocation(line: 415, column: 12, scope: !1335)
!1357 = !DILocation(line: 417, column: 9, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1335, file: !1, line: 417, column: 9)
!1359 = !DILocation(line: 417, column: 13, scope: !1358)
!1360 = !DILocation(line: 417, column: 20, scope: !1358)
!1361 = !DILocation(line: 417, column: 23, scope: !1358)
!1362 = !DILocation(line: 417, column: 27, scope: !1358)
!1363 = !DILocation(line: 417, column: 34, scope: !1358)
!1364 = !DILocation(line: 417, column: 37, scope: !1358)
!1365 = !DILocation(line: 417, column: 41, scope: !1358)
!1366 = !DILocation(line: 417, column: 48, scope: !1358)
!1367 = !DILocation(line: 417, column: 51, scope: !1358)
!1368 = !DILocation(line: 417, column: 55, scope: !1358)
!1369 = !DILocation(line: 417, column: 62, scope: !1358)
!1370 = !DILocation(line: 417, column: 65, scope: !1358)
!1371 = !DILocation(line: 417, column: 69, scope: !1358)
!1372 = !DILocation(line: 419, column: 18, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1358, file: !1, line: 417, column: 77)
!1374 = !DILocation(line: 419, column: 23, scope: !1373)
!1375 = !DILocation(line: 419, column: 31, scope: !1373)
!1376 = !DILocation(line: 419, column: 29, scope: !1373)
!1377 = !DILocation(line: 419, column: 15, scope: !1373)
!1378 = !DILocation(line: 420, column: 17, scope: !1373)
!1379 = !DILocation(line: 420, column: 22, scope: !1373)
!1380 = !DILocation(line: 420, column: 30, scope: !1373)
!1381 = !DILocation(line: 420, column: 28, scope: !1373)
!1382 = !DILocation(line: 420, column: 14, scope: !1373)
!1383 = !DILocation(line: 421, column: 17, scope: !1373)
!1384 = !DILocation(line: 421, column: 22, scope: !1373)
!1385 = !DILocation(line: 421, column: 30, scope: !1373)
!1386 = !DILocation(line: 421, column: 28, scope: !1373)
!1387 = !DILocation(line: 421, column: 14, scope: !1373)
!1388 = !DILocation(line: 422, column: 19, scope: !1373)
!1389 = !DILocation(line: 422, column: 17, scope: !1373)
!1390 = !DILocation(line: 423, column: 7, scope: !1373)
!1391 = !DILocalVariable(name: "_mp", scope: !1392, file: !1, line: 423, type: !1251)
!1392 = distinct !DILexicalBlock(scope: !1373, file: !1, line: 423, column: 7)
!1393 = !DILocation(line: 423, column: 7, scope: !1392)
!1394 = !DILocation(line: 424, column: 7, scope: !1373)
!1395 = !DILocation(line: 424, column: 14, scope: !1373)
!1396 = !DILocation(line: 424, column: 31, scope: !1373)
!1397 = !DILocation(line: 425, column: 40, scope: !1373)
!1398 = !DILocation(line: 425, column: 32, scope: !1373)
!1399 = !DILocation(line: 425, column: 7, scope: !1373)
!1400 = !DILocation(line: 425, column: 14, scope: !1373)
!1401 = !DILocation(line: 425, column: 30, scope: !1373)
!1402 = !DILocation(line: 426, column: 5, scope: !1373)
!1403 = !DILocation(line: 428, column: 7, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1358, file: !1, line: 426, column: 12)
!1405 = !DILocation(line: 430, column: 3, scope: !1335)
!1406 = !DILocation(line: 432, column: 5, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1331, file: !1, line: 430, column: 10)
!1408 = !DILocation(line: 435, column: 3, scope: !1286)
!1409 = !DILocation(line: 436, column: 7, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1286, file: !1, line: 436, column: 7)
!1411 = !DILocation(line: 436, column: 14, scope: !1410)
!1412 = !DILocation(line: 437, column: 7, scope: !1410)
!1413 = !DILocation(line: 437, column: 14, scope: !1410)
!1414 = !DILocation(line: 437, column: 19, scope: !1410)
!1415 = !DILocation(line: 437, column: 37, scope: !1410)
!1416 = !DILocation(line: 437, column: 51, scope: !1410)
!1417 = !DILocation(line: 437, column: 5, scope: !1410)
!1418 = !DILocation(line: 439, column: 3, scope: !1286)
!1419 = !DILocation(line: 440, column: 1, scope: !1286)
!1420 = distinct !DISubprogram(name: "first_marker", scope: !1, file: !1, line: 699, type: !364, scopeLine: 706, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !640)
!1421 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1420, file: !1, line: 699, type: !343)
!1422 = !DILocation(line: 699, column: 32, scope: !1420)
!1423 = !DILocalVariable(name: "c", scope: !1420, file: !1, line: 707, type: !226)
!1424 = !DILocation(line: 707, column: 7, scope: !1420)
!1425 = !DILocalVariable(name: "c2", scope: !1420, file: !1, line: 707, type: !226)
!1426 = !DILocation(line: 707, column: 10, scope: !1420)
!1427 = !DILocalVariable(name: "datasrc", scope: !1420, file: !1, line: 708, type: !353)
!1428 = !DILocation(line: 708, column: 3, scope: !1420)
!1429 = !DILocalVariable(name: "next_input_byte", scope: !1420, file: !1, line: 708, type: !357)
!1430 = !DILocalVariable(name: "bytes_in_buffer", scope: !1420, file: !1, line: 708, type: !268)
!1431 = !DILocation(line: 710, column: 3, scope: !1420)
!1432 = !DILocation(line: 710, column: 3, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1434, file: !1, line: 710, column: 3)
!1434 = distinct !DILexicalBlock(scope: !1420, file: !1, line: 710, column: 3)
!1435 = !DILocation(line: 710, column: 3, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1437, file: !1, line: 710, column: 3)
!1437 = distinct !DILexicalBlock(scope: !1433, file: !1, line: 710, column: 3)
!1438 = !DILocation(line: 710, column: 3, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1436, file: !1, line: 710, column: 3)
!1440 = !DILocation(line: 710, column: 3, scope: !1437)
!1441 = !DILocation(line: 710, column: 3, scope: !1434)
!1442 = !DILocation(line: 711, column: 3, scope: !1420)
!1443 = !DILocation(line: 711, column: 3, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1445, file: !1, line: 711, column: 3)
!1445 = distinct !DILexicalBlock(scope: !1420, file: !1, line: 711, column: 3)
!1446 = !DILocation(line: 711, column: 3, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1448, file: !1, line: 711, column: 3)
!1448 = distinct !DILexicalBlock(scope: !1444, file: !1, line: 711, column: 3)
!1449 = !DILocation(line: 711, column: 3, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1447, file: !1, line: 711, column: 3)
!1451 = !DILocation(line: 711, column: 3, scope: !1448)
!1452 = !DILocation(line: 711, column: 3, scope: !1445)
!1453 = !DILocation(line: 712, column: 7, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1420, file: !1, line: 712, column: 7)
!1455 = !DILocation(line: 712, column: 9, scope: !1454)
!1456 = !DILocation(line: 712, column: 17, scope: !1454)
!1457 = !DILocation(line: 712, column: 20, scope: !1454)
!1458 = !DILocation(line: 712, column: 23, scope: !1454)
!1459 = !DILocation(line: 713, column: 5, scope: !1454)
!1460 = !DILocation(line: 715, column: 26, scope: !1420)
!1461 = !DILocation(line: 715, column: 3, scope: !1420)
!1462 = !DILocation(line: 715, column: 10, scope: !1420)
!1463 = !DILocation(line: 715, column: 24, scope: !1420)
!1464 = !DILocation(line: 717, column: 3, scope: !1420)
!1465 = !DILocation(line: 718, column: 3, scope: !1420)
!1466 = !DILocation(line: 719, column: 1, scope: !1420)
!1467 = distinct !DISubprogram(name: "get_soi", scope: !1, file: !1, line: 166, type: !364, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !640)
!1468 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1467, file: !1, line: 166, type: !343)
!1469 = !DILocation(line: 166, column: 27, scope: !1467)
!1470 = !DILocalVariable(name: "i", scope: !1467, file: !1, line: 169, type: !226)
!1471 = !DILocation(line: 169, column: 7, scope: !1467)
!1472 = !DILocation(line: 171, column: 3, scope: !1467)
!1473 = !DILocation(line: 173, column: 7, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1467, file: !1, line: 173, column: 7)
!1475 = !DILocation(line: 173, column: 14, scope: !1474)
!1476 = !DILocation(line: 173, column: 22, scope: !1474)
!1477 = !DILocation(line: 174, column: 5, scope: !1474)
!1478 = !DILocation(line: 178, column: 10, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1467, file: !1, line: 178, column: 3)
!1480 = !DILocation(line: 178, column: 8, scope: !1479)
!1481 = !DILocation(line: 178, column: 15, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1479, file: !1, line: 178, column: 3)
!1483 = !DILocation(line: 178, column: 17, scope: !1482)
!1484 = !DILocation(line: 178, column: 3, scope: !1479)
!1485 = !DILocation(line: 179, column: 5, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1482, file: !1, line: 178, column: 40)
!1487 = !DILocation(line: 179, column: 12, scope: !1486)
!1488 = !DILocation(line: 179, column: 23, scope: !1486)
!1489 = !DILocation(line: 179, column: 26, scope: !1486)
!1490 = !DILocation(line: 180, column: 5, scope: !1486)
!1491 = !DILocation(line: 180, column: 12, scope: !1486)
!1492 = !DILocation(line: 180, column: 23, scope: !1486)
!1493 = !DILocation(line: 180, column: 26, scope: !1486)
!1494 = !DILocation(line: 181, column: 5, scope: !1486)
!1495 = !DILocation(line: 181, column: 12, scope: !1486)
!1496 = !DILocation(line: 181, column: 23, scope: !1486)
!1497 = !DILocation(line: 181, column: 26, scope: !1486)
!1498 = !DILocation(line: 182, column: 3, scope: !1486)
!1499 = !DILocation(line: 178, column: 36, scope: !1482)
!1500 = !DILocation(line: 178, column: 3, scope: !1482)
!1501 = distinct !{!1501, !1484, !1502, !772}
!1502 = !DILocation(line: 182, column: 3, scope: !1479)
!1503 = !DILocation(line: 183, column: 3, scope: !1467)
!1504 = !DILocation(line: 183, column: 10, scope: !1467)
!1505 = !DILocation(line: 183, column: 27, scope: !1467)
!1506 = !DILocation(line: 187, column: 3, scope: !1467)
!1507 = !DILocation(line: 187, column: 10, scope: !1467)
!1508 = !DILocation(line: 187, column: 27, scope: !1467)
!1509 = !DILocation(line: 188, column: 3, scope: !1467)
!1510 = !DILocation(line: 188, column: 10, scope: !1467)
!1511 = !DILocation(line: 188, column: 27, scope: !1467)
!1512 = !DILocation(line: 190, column: 3, scope: !1467)
!1513 = !DILocation(line: 190, column: 10, scope: !1467)
!1514 = !DILocation(line: 190, column: 26, scope: !1467)
!1515 = !DILocation(line: 191, column: 3, scope: !1467)
!1516 = !DILocation(line: 191, column: 10, scope: !1467)
!1517 = !DILocation(line: 191, column: 23, scope: !1467)
!1518 = !DILocation(line: 192, column: 3, scope: !1467)
!1519 = !DILocation(line: 192, column: 10, scope: !1467)
!1520 = !DILocation(line: 192, column: 20, scope: !1467)
!1521 = !DILocation(line: 193, column: 3, scope: !1467)
!1522 = !DILocation(line: 193, column: 10, scope: !1467)
!1523 = !DILocation(line: 193, column: 20, scope: !1467)
!1524 = !DILocation(line: 194, column: 3, scope: !1467)
!1525 = !DILocation(line: 194, column: 10, scope: !1467)
!1526 = !DILocation(line: 194, column: 27, scope: !1467)
!1527 = !DILocation(line: 195, column: 3, scope: !1467)
!1528 = !DILocation(line: 195, column: 10, scope: !1467)
!1529 = !DILocation(line: 195, column: 26, scope: !1467)
!1530 = !DILocation(line: 197, column: 3, scope: !1467)
!1531 = !DILocation(line: 197, column: 10, scope: !1467)
!1532 = !DILocation(line: 197, column: 18, scope: !1467)
!1533 = !DILocation(line: 197, column: 26, scope: !1467)
!1534 = !DILocation(line: 199, column: 3, scope: !1467)
!1535 = distinct !DISubprogram(name: "get_sof", scope: !1, file: !1, line: 204, type: !1536, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !640)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!305, !343, !305, !305}
!1538 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1535, file: !1, line: 204, type: !343)
!1539 = !DILocation(line: 204, column: 27, scope: !1535)
!1540 = !DILocalVariable(name: "is_prog", arg: 2, scope: !1535, file: !1, line: 204, type: !305)
!1541 = !DILocation(line: 204, column: 42, scope: !1535)
!1542 = !DILocalVariable(name: "is_arith", arg: 3, scope: !1535, file: !1, line: 204, type: !305)
!1543 = !DILocation(line: 204, column: 59, scope: !1535)
!1544 = !DILocalVariable(name: "length", scope: !1535, file: !1, line: 207, type: !628)
!1545 = !DILocation(line: 207, column: 9, scope: !1535)
!1546 = !DILocalVariable(name: "c", scope: !1535, file: !1, line: 208, type: !226)
!1547 = !DILocation(line: 208, column: 7, scope: !1535)
!1548 = !DILocalVariable(name: "ci", scope: !1535, file: !1, line: 208, type: !226)
!1549 = !DILocation(line: 208, column: 10, scope: !1535)
!1550 = !DILocalVariable(name: "compptr", scope: !1535, file: !1, line: 209, type: !446)
!1551 = !DILocation(line: 209, column: 25, scope: !1535)
!1552 = !DILocalVariable(name: "datasrc", scope: !1535, file: !1, line: 210, type: !353)
!1553 = !DILocation(line: 210, column: 3, scope: !1535)
!1554 = !DILocalVariable(name: "next_input_byte", scope: !1535, file: !1, line: 210, type: !357)
!1555 = !DILocalVariable(name: "bytes_in_buffer", scope: !1535, file: !1, line: 210, type: !268)
!1556 = !DILocation(line: 212, column: 29, scope: !1535)
!1557 = !DILocation(line: 212, column: 3, scope: !1535)
!1558 = !DILocation(line: 212, column: 10, scope: !1535)
!1559 = !DILocation(line: 212, column: 27, scope: !1535)
!1560 = !DILocation(line: 213, column: 23, scope: !1535)
!1561 = !DILocation(line: 213, column: 3, scope: !1535)
!1562 = !DILocation(line: 213, column: 10, scope: !1535)
!1563 = !DILocation(line: 213, column: 21, scope: !1535)
!1564 = !DILocation(line: 215, column: 3, scope: !1535)
!1565 = !DILocation(line: 215, column: 3, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1567, file: !1, line: 215, column: 3)
!1567 = distinct !DILexicalBlock(scope: !1535, file: !1, line: 215, column: 3)
!1568 = !DILocation(line: 215, column: 3, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1570, file: !1, line: 215, column: 3)
!1570 = distinct !DILexicalBlock(scope: !1566, file: !1, line: 215, column: 3)
!1571 = !DILocation(line: 215, column: 3, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1569, file: !1, line: 215, column: 3)
!1573 = !DILocation(line: 215, column: 3, scope: !1570)
!1574 = !DILocation(line: 215, column: 3, scope: !1567)
!1575 = !DILocation(line: 215, column: 3, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1567, file: !1, line: 215, column: 3)
!1577 = !DILocation(line: 215, column: 3, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1579, file: !1, line: 215, column: 3)
!1579 = distinct !DILexicalBlock(scope: !1576, file: !1, line: 215, column: 3)
!1580 = !DILocation(line: 215, column: 3, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1578, file: !1, line: 215, column: 3)
!1582 = !DILocation(line: 215, column: 3, scope: !1579)
!1583 = !DILocation(line: 217, column: 3, scope: !1535)
!1584 = !DILocation(line: 217, column: 3, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1586, file: !1, line: 217, column: 3)
!1586 = distinct !DILexicalBlock(scope: !1535, file: !1, line: 217, column: 3)
!1587 = !DILocation(line: 217, column: 3, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1589, file: !1, line: 217, column: 3)
!1589 = distinct !DILexicalBlock(scope: !1585, file: !1, line: 217, column: 3)
!1590 = !DILocation(line: 217, column: 3, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1588, file: !1, line: 217, column: 3)
!1592 = !DILocation(line: 217, column: 3, scope: !1589)
!1593 = !DILocation(line: 217, column: 3, scope: !1586)
!1594 = !DILocation(line: 218, column: 3, scope: !1535)
!1595 = !DILocation(line: 218, column: 3, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1597, file: !1, line: 218, column: 3)
!1597 = distinct !DILexicalBlock(scope: !1535, file: !1, line: 218, column: 3)
!1598 = !DILocation(line: 218, column: 3, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1600, file: !1, line: 218, column: 3)
!1600 = distinct !DILexicalBlock(scope: !1596, file: !1, line: 218, column: 3)
!1601 = !DILocation(line: 218, column: 3, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1599, file: !1, line: 218, column: 3)
!1603 = !DILocation(line: 218, column: 3, scope: !1600)
!1604 = !DILocation(line: 218, column: 3, scope: !1597)
!1605 = !DILocation(line: 218, column: 3, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1597, file: !1, line: 218, column: 3)
!1607 = !DILocation(line: 218, column: 3, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1609, file: !1, line: 218, column: 3)
!1609 = distinct !DILexicalBlock(scope: !1606, file: !1, line: 218, column: 3)
!1610 = !DILocation(line: 218, column: 3, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1608, file: !1, line: 218, column: 3)
!1612 = !DILocation(line: 218, column: 3, scope: !1609)
!1613 = !DILocation(line: 219, column: 3, scope: !1535)
!1614 = !DILocation(line: 219, column: 3, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1616, file: !1, line: 219, column: 3)
!1616 = distinct !DILexicalBlock(scope: !1535, file: !1, line: 219, column: 3)
!1617 = !DILocation(line: 219, column: 3, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1619, file: !1, line: 219, column: 3)
!1619 = distinct !DILexicalBlock(scope: !1615, file: !1, line: 219, column: 3)
!1620 = !DILocation(line: 219, column: 3, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1618, file: !1, line: 219, column: 3)
!1622 = !DILocation(line: 219, column: 3, scope: !1619)
!1623 = !DILocation(line: 219, column: 3, scope: !1616)
!1624 = !DILocation(line: 219, column: 3, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1616, file: !1, line: 219, column: 3)
!1626 = !DILocation(line: 219, column: 3, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1628, file: !1, line: 219, column: 3)
!1628 = distinct !DILexicalBlock(scope: !1625, file: !1, line: 219, column: 3)
!1629 = !DILocation(line: 219, column: 3, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1627, file: !1, line: 219, column: 3)
!1631 = !DILocation(line: 219, column: 3, scope: !1628)
!1632 = !DILocation(line: 220, column: 3, scope: !1535)
!1633 = !DILocation(line: 220, column: 3, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !1, line: 220, column: 3)
!1635 = distinct !DILexicalBlock(scope: !1535, file: !1, line: 220, column: 3)
!1636 = !DILocation(line: 220, column: 3, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !1, line: 220, column: 3)
!1638 = distinct !DILexicalBlock(scope: !1634, file: !1, line: 220, column: 3)
!1639 = !DILocation(line: 220, column: 3, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1637, file: !1, line: 220, column: 3)
!1641 = !DILocation(line: 220, column: 3, scope: !1638)
!1642 = !DILocation(line: 220, column: 3, scope: !1635)
!1643 = !DILocation(line: 222, column: 10, scope: !1535)
!1644 = !DILocation(line: 224, column: 3, scope: !1535)
!1645 = !DILocalVariable(name: "_mp", scope: !1646, file: !1, line: 224, type: !1251)
!1646 = distinct !DILexicalBlock(scope: !1535, file: !1, line: 224, column: 3)
!1647 = !DILocation(line: 224, column: 3, scope: !1646)
!1648 = !DILocation(line: 228, column: 7, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1535, file: !1, line: 228, column: 7)
!1650 = !DILocation(line: 228, column: 14, scope: !1649)
!1651 = !DILocation(line: 228, column: 22, scope: !1649)
!1652 = !DILocation(line: 229, column: 5, scope: !1649)
!1653 = !DILocation(line: 234, column: 7, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1535, file: !1, line: 234, column: 7)
!1655 = !DILocation(line: 234, column: 14, scope: !1654)
!1656 = !DILocation(line: 234, column: 27, scope: !1654)
!1657 = !DILocation(line: 234, column: 32, scope: !1654)
!1658 = !DILocation(line: 234, column: 35, scope: !1654)
!1659 = !DILocation(line: 234, column: 42, scope: !1654)
!1660 = !DILocation(line: 234, column: 54, scope: !1654)
!1661 = !DILocation(line: 235, column: 7, scope: !1654)
!1662 = !DILocation(line: 235, column: 10, scope: !1654)
!1663 = !DILocation(line: 235, column: 17, scope: !1654)
!1664 = !DILocation(line: 235, column: 32, scope: !1654)
!1665 = !DILocation(line: 236, column: 5, scope: !1654)
!1666 = !DILocation(line: 238, column: 7, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1535, file: !1, line: 238, column: 7)
!1668 = !DILocation(line: 238, column: 18, scope: !1667)
!1669 = !DILocation(line: 238, column: 25, scope: !1667)
!1670 = !DILocation(line: 238, column: 40, scope: !1667)
!1671 = !DILocation(line: 238, column: 17, scope: !1667)
!1672 = !DILocation(line: 238, column: 14, scope: !1667)
!1673 = !DILocation(line: 239, column: 5, scope: !1667)
!1674 = !DILocation(line: 241, column: 7, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1535, file: !1, line: 241, column: 7)
!1676 = !DILocation(line: 241, column: 14, scope: !1675)
!1677 = !DILocation(line: 241, column: 24, scope: !1675)
!1678 = !DILocation(line: 242, column: 50, scope: !1675)
!1679 = !DILocation(line: 242, column: 57, scope: !1675)
!1680 = !DILocation(line: 242, column: 62, scope: !1675)
!1681 = !DILocation(line: 243, column: 20, scope: !1675)
!1682 = !DILocation(line: 244, column: 5, scope: !1675)
!1683 = !DILocation(line: 244, column: 12, scope: !1675)
!1684 = !DILocation(line: 244, column: 27, scope: !1675)
!1685 = !DILocation(line: 242, column: 48, scope: !1675)
!1686 = !DILocation(line: 242, column: 5, scope: !1675)
!1687 = !DILocation(line: 242, column: 12, scope: !1675)
!1688 = !DILocation(line: 242, column: 22, scope: !1675)
!1689 = !DILocation(line: 246, column: 11, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1535, file: !1, line: 246, column: 3)
!1691 = !DILocation(line: 246, column: 26, scope: !1690)
!1692 = !DILocation(line: 246, column: 33, scope: !1690)
!1693 = !DILocation(line: 246, column: 24, scope: !1690)
!1694 = !DILocation(line: 246, column: 8, scope: !1690)
!1695 = !DILocation(line: 246, column: 44, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1690, file: !1, line: 246, column: 3)
!1697 = !DILocation(line: 246, column: 49, scope: !1696)
!1698 = !DILocation(line: 246, column: 56, scope: !1696)
!1699 = !DILocation(line: 246, column: 47, scope: !1696)
!1700 = !DILocation(line: 246, column: 3, scope: !1690)
!1701 = !DILocation(line: 248, column: 32, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1696, file: !1, line: 247, column: 25)
!1703 = !DILocation(line: 248, column: 5, scope: !1702)
!1704 = !DILocation(line: 248, column: 14, scope: !1702)
!1705 = !DILocation(line: 248, column: 30, scope: !1702)
!1706 = !DILocation(line: 249, column: 5, scope: !1702)
!1707 = !DILocation(line: 249, column: 5, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1709, file: !1, line: 249, column: 5)
!1709 = distinct !DILexicalBlock(scope: !1702, file: !1, line: 249, column: 5)
!1710 = !DILocation(line: 249, column: 5, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1712, file: !1, line: 249, column: 5)
!1712 = distinct !DILexicalBlock(scope: !1708, file: !1, line: 249, column: 5)
!1713 = !DILocation(line: 249, column: 5, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1711, file: !1, line: 249, column: 5)
!1715 = !DILocation(line: 249, column: 5, scope: !1712)
!1716 = !DILocation(line: 249, column: 5, scope: !1709)
!1717 = !DILocation(line: 250, column: 5, scope: !1702)
!1718 = !DILocation(line: 250, column: 5, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1720, file: !1, line: 250, column: 5)
!1720 = distinct !DILexicalBlock(scope: !1702, file: !1, line: 250, column: 5)
!1721 = !DILocation(line: 250, column: 5, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1723, file: !1, line: 250, column: 5)
!1723 = distinct !DILexicalBlock(scope: !1719, file: !1, line: 250, column: 5)
!1724 = !DILocation(line: 250, column: 5, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1722, file: !1, line: 250, column: 5)
!1726 = !DILocation(line: 250, column: 5, scope: !1723)
!1727 = !DILocation(line: 250, column: 5, scope: !1720)
!1728 = !DILocation(line: 251, column: 31, scope: !1702)
!1729 = !DILocation(line: 251, column: 33, scope: !1702)
!1730 = !DILocation(line: 251, column: 39, scope: !1702)
!1731 = !DILocation(line: 251, column: 5, scope: !1702)
!1732 = !DILocation(line: 251, column: 14, scope: !1702)
!1733 = !DILocation(line: 251, column: 28, scope: !1702)
!1734 = !DILocation(line: 252, column: 31, scope: !1702)
!1735 = !DILocation(line: 252, column: 39, scope: !1702)
!1736 = !DILocation(line: 252, column: 5, scope: !1702)
!1737 = !DILocation(line: 252, column: 14, scope: !1702)
!1738 = !DILocation(line: 252, column: 28, scope: !1702)
!1739 = !DILocation(line: 253, column: 5, scope: !1702)
!1740 = !DILocation(line: 253, column: 5, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1742, file: !1, line: 253, column: 5)
!1742 = distinct !DILexicalBlock(scope: !1702, file: !1, line: 253, column: 5)
!1743 = !DILocation(line: 253, column: 5, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1745, file: !1, line: 253, column: 5)
!1745 = distinct !DILexicalBlock(scope: !1741, file: !1, line: 253, column: 5)
!1746 = !DILocation(line: 253, column: 5, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1744, file: !1, line: 253, column: 5)
!1748 = !DILocation(line: 253, column: 5, scope: !1745)
!1749 = !DILocation(line: 253, column: 5, scope: !1742)
!1750 = !DILocation(line: 255, column: 5, scope: !1702)
!1751 = !DILocalVariable(name: "_mp", scope: !1752, file: !1, line: 255, type: !1251)
!1752 = distinct !DILexicalBlock(scope: !1702, file: !1, line: 255, column: 5)
!1753 = !DILocation(line: 255, column: 5, scope: !1752)
!1754 = !DILocation(line: 258, column: 3, scope: !1702)
!1755 = !DILocation(line: 247, column: 10, scope: !1696)
!1756 = !DILocation(line: 247, column: 21, scope: !1696)
!1757 = !DILocation(line: 246, column: 3, scope: !1696)
!1758 = distinct !{!1758, !1700, !1759, !772}
!1759 = !DILocation(line: 258, column: 3, scope: !1690)
!1760 = !DILocation(line: 260, column: 3, scope: !1535)
!1761 = !DILocation(line: 260, column: 10, scope: !1535)
!1762 = !DILocation(line: 260, column: 18, scope: !1535)
!1763 = !DILocation(line: 260, column: 26, scope: !1535)
!1764 = !DILocation(line: 262, column: 3, scope: !1535)
!1765 = !DILocation(line: 263, column: 3, scope: !1535)
!1766 = !DILocation(line: 264, column: 1, scope: !1535)
!1767 = distinct !DISubprogram(name: "get_sos", scope: !1, file: !1, line: 268, type: !364, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !640)
!1768 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1767, file: !1, line: 268, type: !343)
!1769 = !DILocation(line: 268, column: 27, scope: !1767)
!1770 = !DILocalVariable(name: "length", scope: !1767, file: !1, line: 271, type: !628)
!1771 = !DILocation(line: 271, column: 9, scope: !1767)
!1772 = !DILocalVariable(name: "i", scope: !1767, file: !1, line: 272, type: !226)
!1773 = !DILocation(line: 272, column: 7, scope: !1767)
!1774 = !DILocalVariable(name: "ci", scope: !1767, file: !1, line: 272, type: !226)
!1775 = !DILocation(line: 272, column: 10, scope: !1767)
!1776 = !DILocalVariable(name: "n", scope: !1767, file: !1, line: 272, type: !226)
!1777 = !DILocation(line: 272, column: 14, scope: !1767)
!1778 = !DILocalVariable(name: "c", scope: !1767, file: !1, line: 272, type: !226)
!1779 = !DILocation(line: 272, column: 17, scope: !1767)
!1780 = !DILocalVariable(name: "cc", scope: !1767, file: !1, line: 272, type: !226)
!1781 = !DILocation(line: 272, column: 20, scope: !1767)
!1782 = !DILocalVariable(name: "compptr", scope: !1767, file: !1, line: 273, type: !446)
!1783 = !DILocation(line: 273, column: 25, scope: !1767)
!1784 = !DILocalVariable(name: "datasrc", scope: !1767, file: !1, line: 274, type: !353)
!1785 = !DILocation(line: 274, column: 3, scope: !1767)
!1786 = !DILocalVariable(name: "next_input_byte", scope: !1767, file: !1, line: 274, type: !357)
!1787 = !DILocalVariable(name: "bytes_in_buffer", scope: !1767, file: !1, line: 274, type: !268)
!1788 = !DILocation(line: 276, column: 9, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1767, file: !1, line: 276, column: 7)
!1790 = !DILocation(line: 276, column: 16, scope: !1789)
!1791 = !DILocation(line: 276, column: 24, scope: !1789)
!1792 = !DILocation(line: 276, column: 7, scope: !1789)
!1793 = !DILocation(line: 277, column: 5, scope: !1789)
!1794 = !DILocation(line: 279, column: 3, scope: !1767)
!1795 = !DILocation(line: 279, column: 3, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1797, file: !1, line: 279, column: 3)
!1797 = distinct !DILexicalBlock(scope: !1767, file: !1, line: 279, column: 3)
!1798 = !DILocation(line: 279, column: 3, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1800, file: !1, line: 279, column: 3)
!1800 = distinct !DILexicalBlock(scope: !1796, file: !1, line: 279, column: 3)
!1801 = !DILocation(line: 279, column: 3, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1799, file: !1, line: 279, column: 3)
!1803 = !DILocation(line: 279, column: 3, scope: !1800)
!1804 = !DILocation(line: 279, column: 3, scope: !1797)
!1805 = !DILocation(line: 279, column: 3, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1797, file: !1, line: 279, column: 3)
!1807 = !DILocation(line: 279, column: 3, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1809, file: !1, line: 279, column: 3)
!1809 = distinct !DILexicalBlock(scope: !1806, file: !1, line: 279, column: 3)
!1810 = !DILocation(line: 279, column: 3, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1808, file: !1, line: 279, column: 3)
!1812 = !DILocation(line: 279, column: 3, scope: !1809)
!1813 = !DILocation(line: 281, column: 3, scope: !1767)
!1814 = !DILocation(line: 281, column: 3, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1816, file: !1, line: 281, column: 3)
!1816 = distinct !DILexicalBlock(scope: !1767, file: !1, line: 281, column: 3)
!1817 = !DILocation(line: 281, column: 3, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !1, line: 281, column: 3)
!1819 = distinct !DILexicalBlock(scope: !1815, file: !1, line: 281, column: 3)
!1820 = !DILocation(line: 281, column: 3, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1818, file: !1, line: 281, column: 3)
!1822 = !DILocation(line: 281, column: 3, scope: !1819)
!1823 = !DILocation(line: 281, column: 3, scope: !1816)
!1824 = !DILocation(line: 283, column: 7, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1767, file: !1, line: 283, column: 7)
!1826 = !DILocation(line: 283, column: 18, scope: !1825)
!1827 = !DILocation(line: 283, column: 20, scope: !1825)
!1828 = !DILocation(line: 283, column: 24, scope: !1825)
!1829 = !DILocation(line: 283, column: 17, scope: !1825)
!1830 = !DILocation(line: 283, column: 14, scope: !1825)
!1831 = !DILocation(line: 283, column: 29, scope: !1825)
!1832 = !DILocation(line: 283, column: 32, scope: !1825)
!1833 = !DILocation(line: 283, column: 34, scope: !1825)
!1834 = !DILocation(line: 283, column: 38, scope: !1825)
!1835 = !DILocation(line: 283, column: 41, scope: !1825)
!1836 = !DILocation(line: 283, column: 43, scope: !1825)
!1837 = !DILocation(line: 284, column: 5, scope: !1825)
!1838 = !DILocation(line: 286, column: 3, scope: !1767)
!1839 = !DILocation(line: 288, column: 26, scope: !1767)
!1840 = !DILocation(line: 288, column: 3, scope: !1767)
!1841 = !DILocation(line: 288, column: 10, scope: !1767)
!1842 = !DILocation(line: 288, column: 24, scope: !1767)
!1843 = !DILocation(line: 292, column: 10, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1767, file: !1, line: 292, column: 3)
!1845 = !DILocation(line: 292, column: 8, scope: !1844)
!1846 = !DILocation(line: 292, column: 15, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1844, file: !1, line: 292, column: 3)
!1848 = !DILocation(line: 292, column: 19, scope: !1847)
!1849 = !DILocation(line: 292, column: 17, scope: !1847)
!1850 = !DILocation(line: 292, column: 3, scope: !1844)
!1851 = !DILocation(line: 293, column: 5, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1847, file: !1, line: 292, column: 27)
!1853 = !DILocation(line: 293, column: 5, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !1, line: 293, column: 5)
!1855 = distinct !DILexicalBlock(scope: !1852, file: !1, line: 293, column: 5)
!1856 = !DILocation(line: 293, column: 5, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1858, file: !1, line: 293, column: 5)
!1858 = distinct !DILexicalBlock(scope: !1854, file: !1, line: 293, column: 5)
!1859 = !DILocation(line: 293, column: 5, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1857, file: !1, line: 293, column: 5)
!1861 = !DILocation(line: 293, column: 5, scope: !1858)
!1862 = !DILocation(line: 293, column: 5, scope: !1855)
!1863 = !DILocation(line: 294, column: 5, scope: !1852)
!1864 = !DILocation(line: 294, column: 5, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1866, file: !1, line: 294, column: 5)
!1866 = distinct !DILexicalBlock(scope: !1852, file: !1, line: 294, column: 5)
!1867 = !DILocation(line: 294, column: 5, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1869, file: !1, line: 294, column: 5)
!1869 = distinct !DILexicalBlock(scope: !1865, file: !1, line: 294, column: 5)
!1870 = !DILocation(line: 294, column: 5, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1868, file: !1, line: 294, column: 5)
!1872 = !DILocation(line: 294, column: 5, scope: !1869)
!1873 = !DILocation(line: 294, column: 5, scope: !1866)
!1874 = !DILocation(line: 296, column: 13, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1852, file: !1, line: 296, column: 5)
!1876 = !DILocation(line: 296, column: 28, scope: !1875)
!1877 = !DILocation(line: 296, column: 35, scope: !1875)
!1878 = !DILocation(line: 296, column: 26, scope: !1875)
!1879 = !DILocation(line: 296, column: 10, scope: !1875)
!1880 = !DILocation(line: 296, column: 46, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1875, file: !1, line: 296, column: 5)
!1882 = !DILocation(line: 296, column: 51, scope: !1881)
!1883 = !DILocation(line: 296, column: 58, scope: !1881)
!1884 = !DILocation(line: 296, column: 49, scope: !1881)
!1885 = !DILocation(line: 296, column: 5, scope: !1875)
!1886 = !DILocation(line: 298, column: 11, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1888, file: !1, line: 298, column: 11)
!1888 = distinct !DILexicalBlock(scope: !1881, file: !1, line: 297, column: 20)
!1889 = !DILocation(line: 298, column: 17, scope: !1887)
!1890 = !DILocation(line: 298, column: 26, scope: !1887)
!1891 = !DILocation(line: 298, column: 14, scope: !1887)
!1892 = !DILocation(line: 299, column: 2, scope: !1887)
!1893 = !DILocation(line: 300, column: 5, scope: !1888)
!1894 = !DILocation(line: 297, column: 5, scope: !1881)
!1895 = !DILocation(line: 297, column: 16, scope: !1881)
!1896 = !DILocation(line: 296, column: 5, scope: !1881)
!1897 = distinct !{!1897, !1885, !1898, !772}
!1898 = !DILocation(line: 300, column: 5, scope: !1875)
!1899 = !DILocation(line: 302, column: 5, scope: !1852)
!1900 = !DILabel(scope: !1852, name: "id_found", file: !1, line: 304)
!1901 = !DILocation(line: 304, column: 3, scope: !1852)
!1902 = !DILocation(line: 306, column: 31, scope: !1852)
!1903 = !DILocation(line: 306, column: 5, scope: !1852)
!1904 = !DILocation(line: 306, column: 12, scope: !1852)
!1905 = !DILocation(line: 306, column: 26, scope: !1852)
!1906 = !DILocation(line: 306, column: 29, scope: !1852)
!1907 = !DILocation(line: 307, column: 27, scope: !1852)
!1908 = !DILocation(line: 307, column: 29, scope: !1852)
!1909 = !DILocation(line: 307, column: 35, scope: !1852)
!1910 = !DILocation(line: 307, column: 5, scope: !1852)
!1911 = !DILocation(line: 307, column: 14, scope: !1852)
!1912 = !DILocation(line: 307, column: 24, scope: !1852)
!1913 = !DILocation(line: 308, column: 27, scope: !1852)
!1914 = !DILocation(line: 308, column: 35, scope: !1852)
!1915 = !DILocation(line: 308, column: 5, scope: !1852)
!1916 = !DILocation(line: 308, column: 14, scope: !1852)
!1917 = !DILocation(line: 308, column: 24, scope: !1852)
!1918 = !DILocation(line: 310, column: 5, scope: !1852)
!1919 = !DILocalVariable(name: "_mp", scope: !1920, file: !1, line: 310, type: !1251)
!1920 = distinct !DILexicalBlock(scope: !1852, file: !1, line: 310, column: 5)
!1921 = !DILocation(line: 310, column: 5, scope: !1920)
!1922 = !DILocation(line: 312, column: 3, scope: !1852)
!1923 = !DILocation(line: 292, column: 23, scope: !1847)
!1924 = !DILocation(line: 292, column: 3, scope: !1847)
!1925 = distinct !{!1925, !1850, !1926, !772}
!1926 = !DILocation(line: 312, column: 3, scope: !1844)
!1927 = !DILocation(line: 315, column: 3, scope: !1767)
!1928 = !DILocation(line: 315, column: 3, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1930, file: !1, line: 315, column: 3)
!1930 = distinct !DILexicalBlock(scope: !1767, file: !1, line: 315, column: 3)
!1931 = !DILocation(line: 315, column: 3, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1933, file: !1, line: 315, column: 3)
!1933 = distinct !DILexicalBlock(scope: !1929, file: !1, line: 315, column: 3)
!1934 = !DILocation(line: 315, column: 3, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1932, file: !1, line: 315, column: 3)
!1936 = !DILocation(line: 315, column: 3, scope: !1933)
!1937 = !DILocation(line: 315, column: 3, scope: !1930)
!1938 = !DILocation(line: 316, column: 15, scope: !1767)
!1939 = !DILocation(line: 316, column: 3, scope: !1767)
!1940 = !DILocation(line: 316, column: 10, scope: !1767)
!1941 = !DILocation(line: 316, column: 13, scope: !1767)
!1942 = !DILocation(line: 317, column: 3, scope: !1767)
!1943 = !DILocation(line: 317, column: 3, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1945, file: !1, line: 317, column: 3)
!1945 = distinct !DILexicalBlock(scope: !1767, file: !1, line: 317, column: 3)
!1946 = !DILocation(line: 317, column: 3, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1948, file: !1, line: 317, column: 3)
!1948 = distinct !DILexicalBlock(scope: !1944, file: !1, line: 317, column: 3)
!1949 = !DILocation(line: 317, column: 3, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1947, file: !1, line: 317, column: 3)
!1951 = !DILocation(line: 317, column: 3, scope: !1948)
!1952 = !DILocation(line: 317, column: 3, scope: !1945)
!1953 = !DILocation(line: 318, column: 15, scope: !1767)
!1954 = !DILocation(line: 318, column: 3, scope: !1767)
!1955 = !DILocation(line: 318, column: 10, scope: !1767)
!1956 = !DILocation(line: 318, column: 13, scope: !1767)
!1957 = !DILocation(line: 319, column: 3, scope: !1767)
!1958 = !DILocation(line: 319, column: 3, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1960, file: !1, line: 319, column: 3)
!1960 = distinct !DILexicalBlock(scope: !1767, file: !1, line: 319, column: 3)
!1961 = !DILocation(line: 319, column: 3, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1963, file: !1, line: 319, column: 3)
!1963 = distinct !DILexicalBlock(scope: !1959, file: !1, line: 319, column: 3)
!1964 = !DILocation(line: 319, column: 3, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1962, file: !1, line: 319, column: 3)
!1966 = !DILocation(line: 319, column: 3, scope: !1963)
!1967 = !DILocation(line: 319, column: 3, scope: !1960)
!1968 = !DILocation(line: 320, column: 16, scope: !1767)
!1969 = !DILocation(line: 320, column: 18, scope: !1767)
!1970 = !DILocation(line: 320, column: 24, scope: !1767)
!1971 = !DILocation(line: 320, column: 3, scope: !1767)
!1972 = !DILocation(line: 320, column: 10, scope: !1767)
!1973 = !DILocation(line: 320, column: 13, scope: !1767)
!1974 = !DILocation(line: 321, column: 16, scope: !1767)
!1975 = !DILocation(line: 321, column: 24, scope: !1767)
!1976 = !DILocation(line: 321, column: 3, scope: !1767)
!1977 = !DILocation(line: 321, column: 10, scope: !1767)
!1978 = !DILocation(line: 321, column: 13, scope: !1767)
!1979 = !DILocation(line: 323, column: 3, scope: !1767)
!1980 = !DILocalVariable(name: "_mp", scope: !1981, file: !1, line: 323, type: !1251)
!1981 = distinct !DILexicalBlock(scope: !1767, file: !1, line: 323, column: 3)
!1982 = !DILocation(line: 323, column: 3, scope: !1981)
!1983 = !DILocation(line: 327, column: 3, scope: !1767)
!1984 = !DILocation(line: 327, column: 10, scope: !1767)
!1985 = !DILocation(line: 327, column: 18, scope: !1767)
!1986 = !DILocation(line: 327, column: 35, scope: !1767)
!1987 = !DILocation(line: 330, column: 3, scope: !1767)
!1988 = !DILocation(line: 330, column: 10, scope: !1767)
!1989 = !DILocation(line: 330, column: 27, scope: !1767)
!1990 = !DILocation(line: 332, column: 3, scope: !1767)
!1991 = !DILocation(line: 333, column: 3, scope: !1767)
!1992 = !DILocation(line: 334, column: 1, scope: !1767)
!1993 = distinct !DISubprogram(name: "get_dac", scope: !1, file: !1, line: 444, type: !364, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !640)
!1994 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1993, file: !1, line: 444, type: !343)
!1995 = !DILocation(line: 444, column: 27, scope: !1993)
!1996 = !DILocalVariable(name: "length", scope: !1993, file: !1, line: 447, type: !628)
!1997 = !DILocation(line: 447, column: 9, scope: !1993)
!1998 = !DILocalVariable(name: "index", scope: !1993, file: !1, line: 448, type: !226)
!1999 = !DILocation(line: 448, column: 7, scope: !1993)
!2000 = !DILocalVariable(name: "val", scope: !1993, file: !1, line: 448, type: !226)
!2001 = !DILocation(line: 448, column: 14, scope: !1993)
!2002 = !DILocalVariable(name: "datasrc", scope: !1993, file: !1, line: 449, type: !353)
!2003 = !DILocation(line: 449, column: 3, scope: !1993)
!2004 = !DILocalVariable(name: "next_input_byte", scope: !1993, file: !1, line: 449, type: !357)
!2005 = !DILocalVariable(name: "bytes_in_buffer", scope: !1993, file: !1, line: 449, type: !268)
!2006 = !DILocation(line: 451, column: 3, scope: !1993)
!2007 = !DILocation(line: 451, column: 3, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !1, line: 451, column: 3)
!2009 = distinct !DILexicalBlock(scope: !1993, file: !1, line: 451, column: 3)
!2010 = !DILocation(line: 451, column: 3, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !2012, file: !1, line: 451, column: 3)
!2012 = distinct !DILexicalBlock(scope: !2008, file: !1, line: 451, column: 3)
!2013 = !DILocation(line: 451, column: 3, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2011, file: !1, line: 451, column: 3)
!2015 = !DILocation(line: 451, column: 3, scope: !2012)
!2016 = !DILocation(line: 451, column: 3, scope: !2009)
!2017 = !DILocation(line: 451, column: 3, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !2009, file: !1, line: 451, column: 3)
!2019 = !DILocation(line: 451, column: 3, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2021, file: !1, line: 451, column: 3)
!2021 = distinct !DILexicalBlock(scope: !2018, file: !1, line: 451, column: 3)
!2022 = !DILocation(line: 451, column: 3, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !2020, file: !1, line: 451, column: 3)
!2024 = !DILocation(line: 451, column: 3, scope: !2021)
!2025 = !DILocation(line: 452, column: 10, scope: !1993)
!2026 = !DILocation(line: 454, column: 3, scope: !1993)
!2027 = !DILocation(line: 454, column: 10, scope: !1993)
!2028 = !DILocation(line: 454, column: 17, scope: !1993)
!2029 = !DILocation(line: 455, column: 5, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !1993, file: !1, line: 454, column: 22)
!2031 = !DILocation(line: 455, column: 5, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2033, file: !1, line: 455, column: 5)
!2033 = distinct !DILexicalBlock(scope: !2030, file: !1, line: 455, column: 5)
!2034 = !DILocation(line: 455, column: 5, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2036, file: !1, line: 455, column: 5)
!2036 = distinct !DILexicalBlock(scope: !2032, file: !1, line: 455, column: 5)
!2037 = !DILocation(line: 455, column: 5, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2035, file: !1, line: 455, column: 5)
!2039 = !DILocation(line: 455, column: 5, scope: !2036)
!2040 = !DILocation(line: 455, column: 5, scope: !2033)
!2041 = !DILocation(line: 456, column: 5, scope: !2030)
!2042 = !DILocation(line: 456, column: 5, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2044, file: !1, line: 456, column: 5)
!2044 = distinct !DILexicalBlock(scope: !2030, file: !1, line: 456, column: 5)
!2045 = !DILocation(line: 456, column: 5, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2047, file: !1, line: 456, column: 5)
!2047 = distinct !DILexicalBlock(scope: !2043, file: !1, line: 456, column: 5)
!2048 = !DILocation(line: 456, column: 5, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2046, file: !1, line: 456, column: 5)
!2050 = !DILocation(line: 456, column: 5, scope: !2047)
!2051 = !DILocation(line: 456, column: 5, scope: !2044)
!2052 = !DILocation(line: 458, column: 12, scope: !2030)
!2053 = !DILocation(line: 460, column: 5, scope: !2030)
!2054 = !DILocation(line: 462, column: 9, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2030, file: !1, line: 462, column: 9)
!2056 = !DILocation(line: 462, column: 15, scope: !2055)
!2057 = !DILocation(line: 462, column: 19, scope: !2055)
!2058 = !DILocation(line: 462, column: 22, scope: !2055)
!2059 = !DILocation(line: 462, column: 28, scope: !2055)
!2060 = !DILocation(line: 463, column: 7, scope: !2055)
!2061 = !DILocation(line: 465, column: 9, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2030, file: !1, line: 465, column: 9)
!2063 = !DILocation(line: 465, column: 15, scope: !2062)
!2064 = !DILocation(line: 466, column: 57, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2062, file: !1, line: 465, column: 34)
!2066 = !DILocation(line: 466, column: 49, scope: !2065)
!2067 = !DILocation(line: 466, column: 7, scope: !2065)
!2068 = !DILocation(line: 466, column: 14, scope: !2065)
!2069 = !DILocation(line: 466, column: 25, scope: !2065)
!2070 = !DILocation(line: 466, column: 30, scope: !2065)
!2071 = !DILocation(line: 466, column: 47, scope: !2065)
!2072 = !DILocation(line: 467, column: 5, scope: !2065)
!2073 = !DILocation(line: 468, column: 43, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2062, file: !1, line: 467, column: 12)
!2075 = !DILocation(line: 468, column: 47, scope: !2074)
!2076 = !DILocation(line: 468, column: 34, scope: !2074)
!2077 = !DILocation(line: 468, column: 7, scope: !2074)
!2078 = !DILocation(line: 468, column: 14, scope: !2074)
!2079 = !DILocation(line: 468, column: 25, scope: !2074)
!2080 = !DILocation(line: 468, column: 32, scope: !2074)
!2081 = !DILocation(line: 469, column: 43, scope: !2074)
!2082 = !DILocation(line: 469, column: 47, scope: !2074)
!2083 = !DILocation(line: 469, column: 34, scope: !2074)
!2084 = !DILocation(line: 469, column: 7, scope: !2074)
!2085 = !DILocation(line: 469, column: 14, scope: !2074)
!2086 = !DILocation(line: 469, column: 25, scope: !2074)
!2087 = !DILocation(line: 469, column: 32, scope: !2074)
!2088 = !DILocation(line: 470, column: 11, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2074, file: !1, line: 470, column: 11)
!2090 = !DILocation(line: 470, column: 18, scope: !2089)
!2091 = !DILocation(line: 470, column: 29, scope: !2089)
!2092 = !DILocation(line: 470, column: 38, scope: !2089)
!2093 = !DILocation(line: 470, column: 45, scope: !2089)
!2094 = !DILocation(line: 470, column: 56, scope: !2089)
!2095 = !DILocation(line: 470, column: 36, scope: !2089)
!2096 = !DILocation(line: 471, column: 2, scope: !2089)
!2097 = distinct !{!2097, !2026, !2098, !772}
!2098 = !DILocation(line: 473, column: 3, scope: !1993)
!2099 = !DILocation(line: 475, column: 3, scope: !1993)
!2100 = !DILocation(line: 476, column: 3, scope: !1993)
!2101 = !DILocation(line: 477, column: 1, scope: !1993)
!2102 = distinct !DISubprogram(name: "get_dht", scope: !1, file: !1, line: 481, type: !364, scopeLine: 483, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !640)
!2103 = !DILocalVariable(name: "cinfo", arg: 1, scope: !2102, file: !1, line: 481, type: !343)
!2104 = !DILocation(line: 481, column: 27, scope: !2102)
!2105 = !DILocalVariable(name: "length", scope: !2102, file: !1, line: 484, type: !628)
!2106 = !DILocation(line: 484, column: 9, scope: !2102)
!2107 = !DILocalVariable(name: "bits", scope: !2102, file: !1, line: 485, type: !434)
!2108 = !DILocation(line: 485, column: 9, scope: !2102)
!2109 = !DILocalVariable(name: "huffval", scope: !2102, file: !1, line: 486, type: !439)
!2110 = !DILocation(line: 486, column: 9, scope: !2102)
!2111 = !DILocalVariable(name: "i", scope: !2102, file: !1, line: 487, type: !226)
!2112 = !DILocation(line: 487, column: 7, scope: !2102)
!2113 = !DILocalVariable(name: "index", scope: !2102, file: !1, line: 487, type: !226)
!2114 = !DILocation(line: 487, column: 10, scope: !2102)
!2115 = !DILocalVariable(name: "count", scope: !2102, file: !1, line: 487, type: !226)
!2116 = !DILocation(line: 487, column: 17, scope: !2102)
!2117 = !DILocalVariable(name: "htblptr", scope: !2102, file: !1, line: 488, type: !2118)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!2119 = !DILocation(line: 488, column: 15, scope: !2102)
!2120 = !DILocalVariable(name: "datasrc", scope: !2102, file: !1, line: 489, type: !353)
!2121 = !DILocation(line: 489, column: 3, scope: !2102)
!2122 = !DILocalVariable(name: "next_input_byte", scope: !2102, file: !1, line: 489, type: !357)
!2123 = !DILocalVariable(name: "bytes_in_buffer", scope: !2102, file: !1, line: 489, type: !268)
!2124 = !DILocation(line: 491, column: 3, scope: !2102)
!2125 = !DILocation(line: 491, column: 3, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2127, file: !1, line: 491, column: 3)
!2127 = distinct !DILexicalBlock(scope: !2102, file: !1, line: 491, column: 3)
!2128 = !DILocation(line: 491, column: 3, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2130, file: !1, line: 491, column: 3)
!2130 = distinct !DILexicalBlock(scope: !2126, file: !1, line: 491, column: 3)
!2131 = !DILocation(line: 491, column: 3, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2129, file: !1, line: 491, column: 3)
!2133 = !DILocation(line: 491, column: 3, scope: !2130)
!2134 = !DILocation(line: 491, column: 3, scope: !2127)
!2135 = !DILocation(line: 491, column: 3, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2127, file: !1, line: 491, column: 3)
!2137 = !DILocation(line: 491, column: 3, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2139, file: !1, line: 491, column: 3)
!2139 = distinct !DILexicalBlock(scope: !2136, file: !1, line: 491, column: 3)
!2140 = !DILocation(line: 491, column: 3, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2138, file: !1, line: 491, column: 3)
!2142 = !DILocation(line: 491, column: 3, scope: !2139)
!2143 = !DILocation(line: 492, column: 10, scope: !2102)
!2144 = !DILocation(line: 494, column: 3, scope: !2102)
!2145 = !DILocation(line: 494, column: 10, scope: !2102)
!2146 = !DILocation(line: 494, column: 17, scope: !2102)
!2147 = !DILocation(line: 495, column: 5, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2102, file: !1, line: 494, column: 22)
!2149 = !DILocation(line: 495, column: 5, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2151, file: !1, line: 495, column: 5)
!2151 = distinct !DILexicalBlock(scope: !2148, file: !1, line: 495, column: 5)
!2152 = !DILocation(line: 495, column: 5, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2154, file: !1, line: 495, column: 5)
!2154 = distinct !DILexicalBlock(scope: !2150, file: !1, line: 495, column: 5)
!2155 = !DILocation(line: 495, column: 5, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2153, file: !1, line: 495, column: 5)
!2157 = !DILocation(line: 495, column: 5, scope: !2154)
!2158 = !DILocation(line: 495, column: 5, scope: !2151)
!2159 = !DILocation(line: 497, column: 5, scope: !2148)
!2160 = !DILocation(line: 499, column: 5, scope: !2148)
!2161 = !DILocation(line: 499, column: 13, scope: !2148)
!2162 = !DILocation(line: 500, column: 11, scope: !2148)
!2163 = !DILocation(line: 501, column: 12, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2148, file: !1, line: 501, column: 5)
!2165 = !DILocation(line: 501, column: 10, scope: !2164)
!2166 = !DILocation(line: 501, column: 17, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2164, file: !1, line: 501, column: 5)
!2168 = !DILocation(line: 501, column: 19, scope: !2167)
!2169 = !DILocation(line: 501, column: 5, scope: !2164)
!2170 = !DILocation(line: 502, column: 7, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2167, file: !1, line: 501, column: 31)
!2172 = !DILocation(line: 502, column: 7, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2174, file: !1, line: 502, column: 7)
!2174 = distinct !DILexicalBlock(scope: !2171, file: !1, line: 502, column: 7)
!2175 = !DILocation(line: 502, column: 7, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2177, file: !1, line: 502, column: 7)
!2177 = distinct !DILexicalBlock(scope: !2173, file: !1, line: 502, column: 7)
!2178 = !DILocation(line: 502, column: 7, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2176, file: !1, line: 502, column: 7)
!2180 = !DILocation(line: 502, column: 7, scope: !2177)
!2181 = !DILocation(line: 502, column: 7, scope: !2174)
!2182 = !DILocation(line: 503, column: 21, scope: !2171)
!2183 = !DILocation(line: 503, column: 16, scope: !2171)
!2184 = !DILocation(line: 503, column: 13, scope: !2171)
!2185 = !DILocation(line: 504, column: 5, scope: !2171)
!2186 = !DILocation(line: 501, column: 27, scope: !2167)
!2187 = !DILocation(line: 501, column: 5, scope: !2167)
!2188 = distinct !{!2188, !2169, !2189, !772}
!2189 = !DILocation(line: 504, column: 5, scope: !2164)
!2190 = !DILocation(line: 506, column: 12, scope: !2148)
!2191 = !DILocation(line: 508, column: 5, scope: !2148)
!2192 = !DILocalVariable(name: "_mp", scope: !2193, file: !1, line: 508, type: !1251)
!2193 = distinct !DILexicalBlock(scope: !2148, file: !1, line: 508, column: 5)
!2194 = !DILocation(line: 508, column: 5, scope: !2193)
!2195 = !DILocation(line: 511, column: 5, scope: !2148)
!2196 = !DILocalVariable(name: "_mp", scope: !2197, file: !1, line: 511, type: !1251)
!2197 = distinct !DILexicalBlock(scope: !2148, file: !1, line: 511, column: 5)
!2198 = !DILocation(line: 511, column: 5, scope: !2197)
!2199 = !DILocation(line: 515, column: 9, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2148, file: !1, line: 515, column: 9)
!2201 = !DILocation(line: 515, column: 15, scope: !2200)
!2202 = !DILocation(line: 515, column: 21, scope: !2200)
!2203 = !DILocation(line: 515, column: 33, scope: !2200)
!2204 = !DILocation(line: 515, column: 25, scope: !2200)
!2205 = !DILocation(line: 515, column: 42, scope: !2200)
!2206 = !DILocation(line: 515, column: 40, scope: !2200)
!2207 = !DILocation(line: 516, column: 7, scope: !2200)
!2208 = !DILocation(line: 518, column: 12, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2148, file: !1, line: 518, column: 5)
!2210 = !DILocation(line: 518, column: 10, scope: !2209)
!2211 = !DILocation(line: 518, column: 17, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2209, file: !1, line: 518, column: 5)
!2213 = !DILocation(line: 518, column: 21, scope: !2212)
!2214 = !DILocation(line: 518, column: 19, scope: !2212)
!2215 = !DILocation(line: 518, column: 5, scope: !2209)
!2216 = !DILocation(line: 519, column: 7, scope: !2212)
!2217 = !DILocation(line: 519, column: 7, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2219, file: !1, line: 519, column: 7)
!2219 = distinct !DILexicalBlock(scope: !2212, file: !1, line: 519, column: 7)
!2220 = !DILocation(line: 519, column: 7, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2222, file: !1, line: 519, column: 7)
!2222 = distinct !DILexicalBlock(scope: !2218, file: !1, line: 519, column: 7)
!2223 = !DILocation(line: 519, column: 7, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2221, file: !1, line: 519, column: 7)
!2225 = !DILocation(line: 519, column: 7, scope: !2222)
!2226 = !DILocation(line: 519, column: 7, scope: !2219)
!2227 = !DILocation(line: 518, column: 29, scope: !2212)
!2228 = !DILocation(line: 518, column: 5, scope: !2212)
!2229 = distinct !{!2229, !2215, !2230, !772}
!2230 = !DILocation(line: 519, column: 7, scope: !2209)
!2231 = !DILocation(line: 521, column: 15, scope: !2148)
!2232 = !DILocation(line: 521, column: 12, scope: !2148)
!2233 = !DILocation(line: 523, column: 9, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2148, file: !1, line: 523, column: 9)
!2235 = !DILocation(line: 523, column: 15, scope: !2234)
!2236 = !DILocation(line: 524, column: 13, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2234, file: !1, line: 523, column: 23)
!2238 = !DILocation(line: 525, column: 18, scope: !2237)
!2239 = !DILocation(line: 525, column: 25, scope: !2237)
!2240 = !DILocation(line: 525, column: 42, scope: !2237)
!2241 = !DILocation(line: 525, column: 15, scope: !2237)
!2242 = !DILocation(line: 526, column: 5, scope: !2237)
!2243 = !DILocation(line: 527, column: 18, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2234, file: !1, line: 526, column: 12)
!2245 = !DILocation(line: 527, column: 25, scope: !2244)
!2246 = !DILocation(line: 527, column: 42, scope: !2244)
!2247 = !DILocation(line: 527, column: 15, scope: !2244)
!2248 = !DILocation(line: 530, column: 9, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2148, file: !1, line: 530, column: 9)
!2250 = !DILocation(line: 530, column: 15, scope: !2249)
!2251 = !DILocation(line: 530, column: 19, scope: !2249)
!2252 = !DILocation(line: 530, column: 22, scope: !2249)
!2253 = !DILocation(line: 530, column: 28, scope: !2249)
!2254 = !DILocation(line: 531, column: 7, scope: !2249)
!2255 = !DILocation(line: 533, column: 10, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2148, file: !1, line: 533, column: 9)
!2257 = !DILocation(line: 533, column: 9, scope: !2256)
!2258 = !DILocation(line: 533, column: 18, scope: !2256)
!2259 = !DILocation(line: 534, column: 55, scope: !2256)
!2260 = !DILocation(line: 534, column: 18, scope: !2256)
!2261 = !DILocation(line: 534, column: 8, scope: !2256)
!2262 = !DILocation(line: 534, column: 16, scope: !2256)
!2263 = !DILocation(line: 534, column: 7, scope: !2256)
!2264 = !DILocation(line: 536, column: 5, scope: !2148)
!2265 = !DILocation(line: 537, column: 5, scope: !2148)
!2266 = distinct !{!2266, !2144, !2267, !772}
!2267 = !DILocation(line: 538, column: 3, scope: !2102)
!2268 = !DILocation(line: 540, column: 3, scope: !2102)
!2269 = !DILocation(line: 541, column: 3, scope: !2102)
!2270 = !DILocation(line: 542, column: 1, scope: !2102)
!2271 = distinct !DISubprogram(name: "get_dqt", scope: !1, file: !1, line: 546, type: !364, scopeLine: 548, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !640)
!2272 = !DILocalVariable(name: "cinfo", arg: 1, scope: !2271, file: !1, line: 546, type: !343)
!2273 = !DILocation(line: 546, column: 27, scope: !2271)
!2274 = !DILocalVariable(name: "length", scope: !2271, file: !1, line: 549, type: !628)
!2275 = !DILocation(line: 549, column: 9, scope: !2271)
!2276 = !DILocalVariable(name: "n", scope: !2271, file: !1, line: 550, type: !226)
!2277 = !DILocation(line: 550, column: 7, scope: !2271)
!2278 = !DILocalVariable(name: "i", scope: !2271, file: !1, line: 550, type: !226)
!2279 = !DILocation(line: 550, column: 10, scope: !2271)
!2280 = !DILocalVariable(name: "prec", scope: !2271, file: !1, line: 550, type: !226)
!2281 = !DILocation(line: 550, column: 13, scope: !2271)
!2282 = !DILocalVariable(name: "tmp", scope: !2271, file: !1, line: 551, type: !5)
!2283 = !DILocation(line: 551, column: 16, scope: !2271)
!2284 = !DILocalVariable(name: "quant_ptr", scope: !2271, file: !1, line: 552, type: !416)
!2285 = !DILocation(line: 552, column: 15, scope: !2271)
!2286 = !DILocalVariable(name: "datasrc", scope: !2271, file: !1, line: 553, type: !353)
!2287 = !DILocation(line: 553, column: 3, scope: !2271)
!2288 = !DILocalVariable(name: "next_input_byte", scope: !2271, file: !1, line: 553, type: !357)
!2289 = !DILocalVariable(name: "bytes_in_buffer", scope: !2271, file: !1, line: 553, type: !268)
!2290 = !DILocation(line: 555, column: 3, scope: !2271)
!2291 = !DILocation(line: 555, column: 3, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2293, file: !1, line: 555, column: 3)
!2293 = distinct !DILexicalBlock(scope: !2271, file: !1, line: 555, column: 3)
!2294 = !DILocation(line: 555, column: 3, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2296, file: !1, line: 555, column: 3)
!2296 = distinct !DILexicalBlock(scope: !2292, file: !1, line: 555, column: 3)
!2297 = !DILocation(line: 555, column: 3, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2295, file: !1, line: 555, column: 3)
!2299 = !DILocation(line: 555, column: 3, scope: !2296)
!2300 = !DILocation(line: 555, column: 3, scope: !2293)
!2301 = !DILocation(line: 555, column: 3, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2293, file: !1, line: 555, column: 3)
!2303 = !DILocation(line: 555, column: 3, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2305, file: !1, line: 555, column: 3)
!2305 = distinct !DILexicalBlock(scope: !2302, file: !1, line: 555, column: 3)
!2306 = !DILocation(line: 555, column: 3, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2304, file: !1, line: 555, column: 3)
!2308 = !DILocation(line: 555, column: 3, scope: !2305)
!2309 = !DILocation(line: 556, column: 10, scope: !2271)
!2310 = !DILocation(line: 558, column: 3, scope: !2271)
!2311 = !DILocation(line: 558, column: 10, scope: !2271)
!2312 = !DILocation(line: 558, column: 17, scope: !2271)
!2313 = !DILocation(line: 559, column: 5, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2271, file: !1, line: 558, column: 22)
!2315 = !DILocation(line: 559, column: 5, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2317, file: !1, line: 559, column: 5)
!2317 = distinct !DILexicalBlock(scope: !2314, file: !1, line: 559, column: 5)
!2318 = !DILocation(line: 559, column: 5, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2320, file: !1, line: 559, column: 5)
!2320 = distinct !DILexicalBlock(scope: !2316, file: !1, line: 559, column: 5)
!2321 = !DILocation(line: 559, column: 5, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2319, file: !1, line: 559, column: 5)
!2323 = !DILocation(line: 559, column: 5, scope: !2320)
!2324 = !DILocation(line: 559, column: 5, scope: !2317)
!2325 = !DILocation(line: 560, column: 12, scope: !2314)
!2326 = !DILocation(line: 560, column: 14, scope: !2314)
!2327 = !DILocation(line: 560, column: 10, scope: !2314)
!2328 = !DILocation(line: 561, column: 7, scope: !2314)
!2329 = !DILocation(line: 563, column: 5, scope: !2314)
!2330 = !DILocation(line: 565, column: 9, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2314, file: !1, line: 565, column: 9)
!2332 = !DILocation(line: 565, column: 11, scope: !2331)
!2333 = !DILocation(line: 566, column: 7, scope: !2331)
!2334 = !DILocation(line: 568, column: 9, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2314, file: !1, line: 568, column: 9)
!2336 = !DILocation(line: 568, column: 16, scope: !2335)
!2337 = !DILocation(line: 568, column: 31, scope: !2335)
!2338 = !DILocation(line: 568, column: 34, scope: !2335)
!2339 = !DILocation(line: 569, column: 72, scope: !2335)
!2340 = !DILocation(line: 569, column: 34, scope: !2335)
!2341 = !DILocation(line: 569, column: 7, scope: !2335)
!2342 = !DILocation(line: 569, column: 14, scope: !2335)
!2343 = !DILocation(line: 569, column: 29, scope: !2335)
!2344 = !DILocation(line: 569, column: 32, scope: !2335)
!2345 = !DILocation(line: 570, column: 17, scope: !2314)
!2346 = !DILocation(line: 570, column: 24, scope: !2314)
!2347 = !DILocation(line: 570, column: 39, scope: !2314)
!2348 = !DILocation(line: 570, column: 15, scope: !2314)
!2349 = !DILocation(line: 572, column: 12, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2314, file: !1, line: 572, column: 5)
!2351 = !DILocation(line: 572, column: 10, scope: !2350)
!2352 = !DILocation(line: 572, column: 17, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2350, file: !1, line: 572, column: 5)
!2354 = !DILocation(line: 572, column: 19, scope: !2353)
!2355 = !DILocation(line: 572, column: 5, scope: !2350)
!2356 = !DILocation(line: 573, column: 11, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2358, file: !1, line: 573, column: 11)
!2358 = distinct !DILexicalBlock(scope: !2353, file: !1, line: 572, column: 36)
!2359 = !DILocation(line: 574, column: 2, scope: !2357)
!2360 = !DILocation(line: 574, column: 2, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2362, file: !1, line: 574, column: 2)
!2362 = distinct !DILexicalBlock(scope: !2357, file: !1, line: 574, column: 2)
!2363 = !DILocation(line: 574, column: 2, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2365, file: !1, line: 574, column: 2)
!2365 = distinct !DILexicalBlock(scope: !2361, file: !1, line: 574, column: 2)
!2366 = !DILocation(line: 574, column: 2, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2364, file: !1, line: 574, column: 2)
!2368 = !DILocation(line: 574, column: 2, scope: !2365)
!2369 = !DILocation(line: 574, column: 2, scope: !2362)
!2370 = !DILocation(line: 574, column: 2, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2362, file: !1, line: 574, column: 2)
!2372 = !DILocation(line: 574, column: 2, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2374, file: !1, line: 574, column: 2)
!2374 = distinct !DILexicalBlock(scope: !2371, file: !1, line: 574, column: 2)
!2375 = !DILocation(line: 574, column: 2, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2373, file: !1, line: 574, column: 2)
!2377 = !DILocation(line: 574, column: 2, scope: !2374)
!2378 = !DILocation(line: 576, column: 2, scope: !2357)
!2379 = !DILocation(line: 576, column: 2, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2381, file: !1, line: 576, column: 2)
!2381 = distinct !DILexicalBlock(scope: !2357, file: !1, line: 576, column: 2)
!2382 = !DILocation(line: 576, column: 2, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2384, file: !1, line: 576, column: 2)
!2384 = distinct !DILexicalBlock(scope: !2380, file: !1, line: 576, column: 2)
!2385 = !DILocation(line: 576, column: 2, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2383, file: !1, line: 576, column: 2)
!2387 = !DILocation(line: 576, column: 2, scope: !2384)
!2388 = !DILocation(line: 576, column: 2, scope: !2381)
!2389 = !DILocation(line: 578, column: 61, scope: !2358)
!2390 = !DILocation(line: 578, column: 52, scope: !2358)
!2391 = !DILocation(line: 578, column: 7, scope: !2358)
!2392 = !DILocation(line: 578, column: 18, scope: !2358)
!2393 = !DILocation(line: 578, column: 46, scope: !2358)
!2394 = !DILocation(line: 578, column: 27, scope: !2358)
!2395 = !DILocation(line: 578, column: 50, scope: !2358)
!2396 = !DILocation(line: 579, column: 5, scope: !2358)
!2397 = !DILocation(line: 572, column: 32, scope: !2353)
!2398 = !DILocation(line: 572, column: 5, scope: !2353)
!2399 = distinct !{!2399, !2355, !2400, !772}
!2400 = !DILocation(line: 579, column: 5, scope: !2350)
!2401 = !DILocation(line: 581, column: 9, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2314, file: !1, line: 581, column: 9)
!2403 = !DILocation(line: 581, column: 16, scope: !2402)
!2404 = !DILocation(line: 581, column: 21, scope: !2402)
!2405 = !DILocation(line: 581, column: 33, scope: !2402)
!2406 = !DILocation(line: 582, column: 14, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2408, file: !1, line: 582, column: 7)
!2408 = distinct !DILexicalBlock(scope: !2402, file: !1, line: 581, column: 39)
!2409 = !DILocation(line: 582, column: 12, scope: !2407)
!2410 = !DILocation(line: 582, column: 19, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2407, file: !1, line: 582, column: 7)
!2412 = !DILocation(line: 582, column: 21, scope: !2411)
!2413 = !DILocation(line: 582, column: 7, scope: !2407)
!2414 = !DILocation(line: 583, column: 2, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2411, file: !1, line: 582, column: 41)
!2416 = !DILocalVariable(name: "_mp", scope: !2417, file: !1, line: 583, type: !1251)
!2417 = distinct !DILexicalBlock(scope: !2415, file: !1, line: 583, column: 2)
!2418 = !DILocation(line: 583, column: 2, scope: !2417)
!2419 = !DILocation(line: 588, column: 7, scope: !2415)
!2420 = !DILocation(line: 582, column: 35, scope: !2411)
!2421 = !DILocation(line: 582, column: 7, scope: !2411)
!2422 = distinct !{!2422, !2413, !2423, !772}
!2423 = !DILocation(line: 588, column: 7, scope: !2407)
!2424 = !DILocation(line: 589, column: 5, scope: !2408)
!2425 = !DILocation(line: 591, column: 12, scope: !2314)
!2426 = !DILocation(line: 592, column: 9, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2314, file: !1, line: 592, column: 9)
!2428 = !DILocation(line: 592, column: 22, scope: !2427)
!2429 = !DILocation(line: 592, column: 15, scope: !2427)
!2430 = distinct !{!2430, !2310, !2431, !772}
!2431 = !DILocation(line: 593, column: 3, scope: !2271)
!2432 = !DILocation(line: 595, column: 3, scope: !2271)
!2433 = !DILocation(line: 596, column: 3, scope: !2271)
!2434 = !DILocation(line: 597, column: 1, scope: !2271)
!2435 = distinct !DISubprogram(name: "get_dri", scope: !1, file: !1, line: 601, type: !364, scopeLine: 603, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !640)
!2436 = !DILocalVariable(name: "cinfo", arg: 1, scope: !2435, file: !1, line: 601, type: !343)
!2437 = !DILocation(line: 601, column: 27, scope: !2435)
!2438 = !DILocalVariable(name: "length", scope: !2435, file: !1, line: 604, type: !628)
!2439 = !DILocation(line: 604, column: 9, scope: !2435)
!2440 = !DILocalVariable(name: "tmp", scope: !2435, file: !1, line: 605, type: !5)
!2441 = !DILocation(line: 605, column: 16, scope: !2435)
!2442 = !DILocalVariable(name: "datasrc", scope: !2435, file: !1, line: 606, type: !353)
!2443 = !DILocation(line: 606, column: 3, scope: !2435)
!2444 = !DILocalVariable(name: "next_input_byte", scope: !2435, file: !1, line: 606, type: !357)
!2445 = !DILocalVariable(name: "bytes_in_buffer", scope: !2435, file: !1, line: 606, type: !268)
!2446 = !DILocation(line: 608, column: 3, scope: !2435)
!2447 = !DILocation(line: 608, column: 3, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2449, file: !1, line: 608, column: 3)
!2449 = distinct !DILexicalBlock(scope: !2435, file: !1, line: 608, column: 3)
!2450 = !DILocation(line: 608, column: 3, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2452, file: !1, line: 608, column: 3)
!2452 = distinct !DILexicalBlock(scope: !2448, file: !1, line: 608, column: 3)
!2453 = !DILocation(line: 608, column: 3, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2451, file: !1, line: 608, column: 3)
!2455 = !DILocation(line: 608, column: 3, scope: !2452)
!2456 = !DILocation(line: 608, column: 3, scope: !2449)
!2457 = !DILocation(line: 608, column: 3, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2449, file: !1, line: 608, column: 3)
!2459 = !DILocation(line: 608, column: 3, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2461, file: !1, line: 608, column: 3)
!2461 = distinct !DILexicalBlock(scope: !2458, file: !1, line: 608, column: 3)
!2462 = !DILocation(line: 608, column: 3, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2460, file: !1, line: 608, column: 3)
!2464 = !DILocation(line: 608, column: 3, scope: !2461)
!2465 = !DILocation(line: 610, column: 7, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2435, file: !1, line: 610, column: 7)
!2467 = !DILocation(line: 610, column: 14, scope: !2466)
!2468 = !DILocation(line: 611, column: 5, scope: !2466)
!2469 = !DILocation(line: 613, column: 3, scope: !2435)
!2470 = !DILocation(line: 613, column: 3, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2472, file: !1, line: 613, column: 3)
!2472 = distinct !DILexicalBlock(scope: !2435, file: !1, line: 613, column: 3)
!2473 = !DILocation(line: 613, column: 3, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2475, file: !1, line: 613, column: 3)
!2475 = distinct !DILexicalBlock(scope: !2471, file: !1, line: 613, column: 3)
!2476 = !DILocation(line: 613, column: 3, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2474, file: !1, line: 613, column: 3)
!2478 = !DILocation(line: 613, column: 3, scope: !2475)
!2479 = !DILocation(line: 613, column: 3, scope: !2472)
!2480 = !DILocation(line: 613, column: 3, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2472, file: !1, line: 613, column: 3)
!2482 = !DILocation(line: 613, column: 3, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2484, file: !1, line: 613, column: 3)
!2484 = distinct !DILexicalBlock(scope: !2481, file: !1, line: 613, column: 3)
!2485 = !DILocation(line: 613, column: 3, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2483, file: !1, line: 613, column: 3)
!2487 = !DILocation(line: 613, column: 3, scope: !2484)
!2488 = !DILocation(line: 615, column: 3, scope: !2435)
!2489 = !DILocation(line: 617, column: 29, scope: !2435)
!2490 = !DILocation(line: 617, column: 3, scope: !2435)
!2491 = !DILocation(line: 617, column: 10, scope: !2435)
!2492 = !DILocation(line: 617, column: 27, scope: !2435)
!2493 = !DILocation(line: 619, column: 3, scope: !2435)
!2494 = !DILocation(line: 620, column: 3, scope: !2435)
!2495 = !DILocation(line: 621, column: 1, scope: !2435)
