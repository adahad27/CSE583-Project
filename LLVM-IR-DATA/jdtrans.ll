; ModuleID = 'cBench/consumer_jpeg_c/src/jdtrans.c'
source_filename = "cBench/consumer_jpeg_c/src/jdtrans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_progress_mgr = type { ptr, i64, i64, i32, i32 }
%struct.jpeg_input_controller = type { ptr, ptr, ptr, ptr, i32, i32 }
%struct.jpeg_d_coef_controller = type { ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @jpeg_read_coefficients(ptr noundef %0) #0 !dbg !289 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !585, !DIExpression(), !586)
  %5 = load ptr, ptr %3, align 8, !dbg !587
  %6 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %5, i32 0, i32 4, !dbg !589
  %7 = load i32, ptr %6, align 4, !dbg !589
  %8 = icmp eq i32 %7, 202, !dbg !590
  br i1 %8, label %9, label %13, !dbg !590

9:                                                ; preds = %1
  %10 = load ptr, ptr %3, align 8, !dbg !591
  call void @transdecode_master_selection(ptr noundef %10), !dbg !593
  %11 = load ptr, ptr %3, align 8, !dbg !594
  %12 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %11, i32 0, i32 4, !dbg !595
  store i32 209, ptr %12, align 4, !dbg !596
  br label %38, !dbg !597

13:                                               ; preds = %1
  %14 = load ptr, ptr %3, align 8, !dbg !598
  %15 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %14, i32 0, i32 4, !dbg !600
  %16 = load i32, ptr %15, align 4, !dbg !600
  %17 = icmp ne i32 %16, 209, !dbg !601
  br i1 %17, label %18, label %37, !dbg !601

18:                                               ; preds = %13
  %19 = load ptr, ptr %3, align 8, !dbg !602
  %20 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %19, i32 0, i32 0, !dbg !602
  %21 = load ptr, ptr %20, align 8, !dbg !602
  %22 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %21, i32 0, i32 5, !dbg !602
  store i32 18, ptr %22, align 8, !dbg !602
  %23 = load ptr, ptr %3, align 8, !dbg !602
  %24 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %23, i32 0, i32 4, !dbg !602
  %25 = load i32, ptr %24, align 4, !dbg !602
  %26 = load ptr, ptr %3, align 8, !dbg !602
  %27 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %26, i32 0, i32 0, !dbg !602
  %28 = load ptr, ptr %27, align 8, !dbg !602
  %29 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %28, i32 0, i32 6, !dbg !602
  %30 = getelementptr inbounds [8 x i32], ptr %29, i64 0, i64 0, !dbg !602
  store i32 %25, ptr %30, align 4, !dbg !602
  %31 = load ptr, ptr %3, align 8, !dbg !602
  %32 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %31, i32 0, i32 0, !dbg !602
  %33 = load ptr, ptr %32, align 8, !dbg !602
  %34 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %33, i32 0, i32 0, !dbg !602
  %35 = load ptr, ptr %34, align 8, !dbg !602
  %36 = load ptr, ptr %3, align 8, !dbg !602
  call void %35(ptr noundef %36), !dbg !602
  br label %37, !dbg !602

37:                                               ; preds = %18, %13
  br label %38

38:                                               ; preds = %37, %9
  br label %39, !dbg !603

39:                                               ; preds = %102, %38
    #dbg_declare(ptr %4, !604, !DIExpression(), !608)
  %40 = load ptr, ptr %3, align 8, !dbg !609
  %41 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %40, i32 0, i32 2, !dbg !611
  %42 = load ptr, ptr %41, align 8, !dbg !611
  %43 = icmp ne ptr %42, null, !dbg !612
  br i1 %43, label %44, label %51, !dbg !612

44:                                               ; preds = %39
  %45 = load ptr, ptr %3, align 8, !dbg !613
  %46 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %45, i32 0, i32 2, !dbg !614
  %47 = load ptr, ptr %46, align 8, !dbg !614
  %48 = getelementptr inbounds nuw %struct.jpeg_progress_mgr, ptr %47, i32 0, i32 0, !dbg !615
  %49 = load ptr, ptr %48, align 8, !dbg !615
  %50 = load ptr, ptr %3, align 8, !dbg !616
  call void %49(ptr noundef %50), !dbg !617
  br label %51, !dbg !617

51:                                               ; preds = %44, %39
  %52 = load ptr, ptr %3, align 8, !dbg !618
  %53 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %52, i32 0, i32 77, !dbg !619
  %54 = load ptr, ptr %53, align 8, !dbg !619
  %55 = getelementptr inbounds nuw %struct.jpeg_input_controller, ptr %54, i32 0, i32 0, !dbg !620
  %56 = load ptr, ptr %55, align 8, !dbg !620
  %57 = load ptr, ptr %3, align 8, !dbg !621
  %58 = call i32 %56(ptr noundef %57), !dbg !622
  store i32 %58, ptr %4, align 4, !dbg !623
  %59 = load i32, ptr %4, align 4, !dbg !624
  %60 = icmp eq i32 %59, 0, !dbg !626
  br i1 %60, label %61, label %62, !dbg !626

61:                                               ; preds = %51
  store ptr null, ptr %2, align 8, !dbg !627
  br label %111, !dbg !627

62:                                               ; preds = %51
  %63 = load i32, ptr %4, align 4, !dbg !628
  %64 = icmp eq i32 %63, 2, !dbg !630
  br i1 %64, label %65, label %66, !dbg !630

65:                                               ; preds = %62
  br label %103, !dbg !631

66:                                               ; preds = %62
  %67 = load ptr, ptr %3, align 8, !dbg !632
  %68 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %67, i32 0, i32 2, !dbg !634
  %69 = load ptr, ptr %68, align 8, !dbg !634
  %70 = icmp ne ptr %69, null, !dbg !635
  br i1 %70, label %71, label %102, !dbg !636

71:                                               ; preds = %66
  %72 = load i32, ptr %4, align 4, !dbg !637
  %73 = icmp eq i32 %72, 3, !dbg !638
  br i1 %73, label %77, label %74, !dbg !639

74:                                               ; preds = %71
  %75 = load i32, ptr %4, align 4, !dbg !640
  %76 = icmp eq i32 %75, 1, !dbg !641
  br i1 %76, label %77, label %102, !dbg !636

77:                                               ; preds = %74, %71
  %78 = load ptr, ptr %3, align 8, !dbg !642
  %79 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %78, i32 0, i32 2, !dbg !645
  %80 = load ptr, ptr %79, align 8, !dbg !645
  %81 = getelementptr inbounds nuw %struct.jpeg_progress_mgr, ptr %80, i32 0, i32 1, !dbg !646
  %82 = load i64, ptr %81, align 8, !dbg !647
  %83 = add nsw i64 %82, 1, !dbg !647
  store i64 %83, ptr %81, align 8, !dbg !647
  %84 = load ptr, ptr %3, align 8, !dbg !648
  %85 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %84, i32 0, i32 2, !dbg !649
  %86 = load ptr, ptr %85, align 8, !dbg !649
  %87 = getelementptr inbounds nuw %struct.jpeg_progress_mgr, ptr %86, i32 0, i32 2, !dbg !650
  %88 = load i64, ptr %87, align 8, !dbg !650
  %89 = icmp sge i64 %83, %88, !dbg !651
  br i1 %89, label %90, label %101, !dbg !651

90:                                               ; preds = %77
  %91 = load ptr, ptr %3, align 8, !dbg !652
  %92 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %91, i32 0, i32 60, !dbg !654
  %93 = load i32, ptr %92, align 8, !dbg !654
  %94 = zext i32 %93 to i64, !dbg !655
  %95 = load ptr, ptr %3, align 8, !dbg !656
  %96 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %95, i32 0, i32 2, !dbg !657
  %97 = load ptr, ptr %96, align 8, !dbg !657
  %98 = getelementptr inbounds nuw %struct.jpeg_progress_mgr, ptr %97, i32 0, i32 2, !dbg !658
  %99 = load i64, ptr %98, align 8, !dbg !659
  %100 = add nsw i64 %99, %94, !dbg !659
  store i64 %100, ptr %98, align 8, !dbg !659
  br label %101, !dbg !660

101:                                              ; preds = %90, %77
  br label %102, !dbg !661

102:                                              ; preds = %101, %74, %66
  br label %39, !dbg !662, !llvm.loop !663

103:                                              ; preds = %65
  %104 = load ptr, ptr %3, align 8, !dbg !666
  %105 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %104, i32 0, i32 4, !dbg !667
  store i32 210, ptr %105, align 4, !dbg !668
  %106 = load ptr, ptr %3, align 8, !dbg !669
  %107 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %106, i32 0, i32 75, !dbg !670
  %108 = load ptr, ptr %107, align 8, !dbg !670
  %109 = getelementptr inbounds nuw %struct.jpeg_d_coef_controller, ptr %108, i32 0, i32 4, !dbg !671
  %110 = load ptr, ptr %109, align 8, !dbg !671
  store ptr %110, ptr %2, align 8, !dbg !672
  br label %111, !dbg !672

111:                                              ; preds = %103, %61
  %112 = load ptr, ptr %2, align 8, !dbg !673
  ret ptr %112, !dbg !673
}

; Function Attrs: noinline nounwind uwtable
define internal void @transdecode_master_selection(ptr noundef %0) #0 !dbg !674 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !675, !DIExpression(), !676)
  %4 = load ptr, ptr %2, align 8, !dbg !677
  %5 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 45, !dbg !679
  %6 = load i32, ptr %5, align 4, !dbg !679
  %7 = icmp ne i32 %6, 0, !dbg !677
  br i1 %7, label %8, label %19, !dbg !677

8:                                                ; preds = %1
  %9 = load ptr, ptr %2, align 8, !dbg !680
  %10 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %9, i32 0, i32 0, !dbg !680
  %11 = load ptr, ptr %10, align 8, !dbg !680
  %12 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %11, i32 0, i32 5, !dbg !680
  store i32 1, ptr %12, align 8, !dbg !680
  %13 = load ptr, ptr %2, align 8, !dbg !680
  %14 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %13, i32 0, i32 0, !dbg !680
  %15 = load ptr, ptr %14, align 8, !dbg !680
  %16 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %15, i32 0, i32 0, !dbg !680
  %17 = load ptr, ptr %16, align 8, !dbg !680
  %18 = load ptr, ptr %2, align 8, !dbg !680
  call void %17(ptr noundef %18), !dbg !680
  br label %29, !dbg !682

19:                                               ; preds = %1
  %20 = load ptr, ptr %2, align 8, !dbg !683
  %21 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %20, i32 0, i32 44, !dbg !686
  %22 = load i32, ptr %21, align 8, !dbg !686
  %23 = icmp ne i32 %22, 0, !dbg !683
  br i1 %23, label %24, label %26, !dbg !683

24:                                               ; preds = %19
  %25 = load ptr, ptr %2, align 8, !dbg !687
  call void @jinit_phuff_decoder(ptr noundef %25), !dbg !689
  br label %28, !dbg !690

26:                                               ; preds = %19
  %27 = load ptr, ptr %2, align 8, !dbg !691
  call void @jinit_huff_decoder(ptr noundef %27), !dbg !692
  br label %28

28:                                               ; preds = %26, %24
  br label %29

29:                                               ; preds = %28, %8
  %30 = load ptr, ptr %2, align 8, !dbg !693
  call void @jinit_d_coef_controller(ptr noundef %30, i32 noundef 1), !dbg !694
  %31 = load ptr, ptr %2, align 8, !dbg !695
  %32 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %31, i32 0, i32 1, !dbg !696
  %33 = load ptr, ptr %32, align 8, !dbg !696
  %34 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %33, i32 0, i32 6, !dbg !697
  %35 = load ptr, ptr %34, align 8, !dbg !697
  %36 = load ptr, ptr %2, align 8, !dbg !698
  call void %35(ptr noundef %36), !dbg !699
  %37 = load ptr, ptr %2, align 8, !dbg !700
  %38 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %37, i32 0, i32 77, !dbg !701
  %39 = load ptr, ptr %38, align 8, !dbg !701
  %40 = getelementptr inbounds nuw %struct.jpeg_input_controller, ptr %39, i32 0, i32 2, !dbg !702
  %41 = load ptr, ptr %40, align 8, !dbg !702
  %42 = load ptr, ptr %2, align 8, !dbg !703
  call void %41(ptr noundef %42), !dbg !704
  %43 = load ptr, ptr %2, align 8, !dbg !705
  %44 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %43, i32 0, i32 2, !dbg !707
  %45 = load ptr, ptr %44, align 8, !dbg !707
  %46 = icmp ne ptr %45, null, !dbg !708
  br i1 %46, label %47, label %95, !dbg !708

47:                                               ; preds = %29
    #dbg_declare(ptr %3, !709, !DIExpression(), !711)
  %48 = load ptr, ptr %2, align 8, !dbg !712
  %49 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %48, i32 0, i32 44, !dbg !714
  %50 = load i32, ptr %49, align 8, !dbg !714
  %51 = icmp ne i32 %50, 0, !dbg !712
  br i1 %51, label %52, label %58, !dbg !712

52:                                               ; preds = %47
  %53 = load ptr, ptr %2, align 8, !dbg !715
  %54 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %53, i32 0, i32 8, !dbg !717
  %55 = load i32, ptr %54, align 8, !dbg !717
  %56 = mul nsw i32 3, %55, !dbg !718
  %57 = add nsw i32 2, %56, !dbg !719
  store i32 %57, ptr %3, align 4, !dbg !720
  br label %71, !dbg !721

58:                                               ; preds = %47
  %59 = load ptr, ptr %2, align 8, !dbg !722
  %60 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %59, i32 0, i32 77, !dbg !724
  %61 = load ptr, ptr %60, align 8, !dbg !724
  %62 = getelementptr inbounds nuw %struct.jpeg_input_controller, ptr %61, i32 0, i32 4, !dbg !725
  %63 = load i32, ptr %62, align 8, !dbg !725
  %64 = icmp ne i32 %63, 0, !dbg !722
  br i1 %64, label %65, label %69, !dbg !722

65:                                               ; preds = %58
  %66 = load ptr, ptr %2, align 8, !dbg !726
  %67 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %66, i32 0, i32 8, !dbg !728
  %68 = load i32, ptr %67, align 8, !dbg !728
  store i32 %68, ptr %3, align 4, !dbg !729
  br label %70, !dbg !730

69:                                               ; preds = %58
  store i32 1, ptr %3, align 4, !dbg !731
  br label %70

70:                                               ; preds = %69, %65
  br label %71

71:                                               ; preds = %70, %52
  %72 = load ptr, ptr %2, align 8, !dbg !733
  %73 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %72, i32 0, i32 2, !dbg !734
  %74 = load ptr, ptr %73, align 8, !dbg !734
  %75 = getelementptr inbounds nuw %struct.jpeg_progress_mgr, ptr %74, i32 0, i32 1, !dbg !735
  store i64 0, ptr %75, align 8, !dbg !736
  %76 = load ptr, ptr %2, align 8, !dbg !737
  %77 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %76, i32 0, i32 60, !dbg !738
  %78 = load i32, ptr %77, align 8, !dbg !738
  %79 = zext i32 %78 to i64, !dbg !739
  %80 = load i32, ptr %3, align 4, !dbg !740
  %81 = sext i32 %80 to i64, !dbg !740
  %82 = mul nsw i64 %79, %81, !dbg !741
  %83 = load ptr, ptr %2, align 8, !dbg !742
  %84 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %83, i32 0, i32 2, !dbg !743
  %85 = load ptr, ptr %84, align 8, !dbg !743
  %86 = getelementptr inbounds nuw %struct.jpeg_progress_mgr, ptr %85, i32 0, i32 2, !dbg !744
  store i64 %82, ptr %86, align 8, !dbg !745
  %87 = load ptr, ptr %2, align 8, !dbg !746
  %88 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %87, i32 0, i32 2, !dbg !747
  %89 = load ptr, ptr %88, align 8, !dbg !747
  %90 = getelementptr inbounds nuw %struct.jpeg_progress_mgr, ptr %89, i32 0, i32 3, !dbg !748
  store i32 0, ptr %90, align 8, !dbg !749
  %91 = load ptr, ptr %2, align 8, !dbg !750
  %92 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %91, i32 0, i32 2, !dbg !751
  %93 = load ptr, ptr %92, align 8, !dbg !751
  %94 = getelementptr inbounds nuw %struct.jpeg_progress_mgr, ptr %93, i32 0, i32 4, !dbg !752
  store i32 1, ptr %94, align 4, !dbg !753
  br label %95, !dbg !754

95:                                               ; preds = %71, %29
  ret void, !dbg !755
}

declare void @jinit_phuff_decoder(ptr noundef) #1

declare void @jinit_huff_decoder(ptr noundef) #1

declare void @jinit_d_coef_controller(ptr noundef, i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!281, !282, !283, !284, !285, !286, !287}
!llvm.ident = !{!288}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !154, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jdtrans.c", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "a6cfe4f3a2ee313ebb55cf7f4d0a076a")
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
!154 = !{!155, !212, !194}
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
!289 = distinct !DISubprogram(name: "jpeg_read_coefficients", scope: !1, file: !1, line: 38, type: !290, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !584)
!290 = !DISubroutineType(types: !291)
!291 = !{!292, !293}
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_decompress_ptr", file: !4, line: 250, baseType: !294)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_decompress_struct", file: !4, line: 394, size: 4928, elements: !296)
!296 = !{!297, !298, !299, !300, !301, !302, !328, !329, !330, !331, !333, !334, !335, !336, !338, !339, !340, !342, !343, !344, !345, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !367, !380, !396, !397, !398, !424, !425, !426, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !448, !449, !450, !451, !455, !456, !457, !458, !459, !460, !467, !481, !498, !507, !517, !532, !541, !554, !561, !570}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !295, file: !4, line: 395, baseType: !160, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !295, file: !4, line: 395, baseType: !205, size: 64, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !295, file: !4, line: 395, baseType: !271, size: 64, offset: 128)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !295, file: !4, line: 395, baseType: !250, size: 32, offset: 192)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !295, file: !4, line: 395, baseType: !171, size: 32, offset: 224)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !295, file: !4, line: 398, baseType: !303, size: 64, offset: 256)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_source_mgr", file: !4, line: 700, size: 448, elements: !305)
!305 = !{!306, !310, !311, !315, !319, !323, !327}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "next_input_byte", scope: !304, file: !4, line: 701, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !309)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "JOCTET", file: !226, line: 110, baseType: !227)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_in_buffer", scope: !304, file: !4, line: 702, baseType: !213, size: 64, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "init_source", scope: !304, file: !4, line: 704, baseType: !312, size: 64, offset: 128)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DISubroutineType(types: !314)
!314 = !{null, !293}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "fill_input_buffer", scope: !304, file: !4, line: 705, baseType: !316, size: 64, offset: 192)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DISubroutineType(types: !318)
!318 = !{!250, !293}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "skip_input_data", scope: !304, file: !4, line: 706, baseType: !320, size: 64, offset: 256)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{null, !293, !194}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "resync_to_restart", scope: !304, file: !4, line: 707, baseType: !324, size: 64, offset: 320)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{!250, !293, !171}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "term_source", scope: !304, file: !4, line: 708, baseType: !312, size: 64, offset: 384)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "image_width", scope: !295, file: !4, line: 403, baseType: !228, size: 32, offset: 320)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "image_height", scope: !295, file: !4, line: 404, baseType: !228, size: 32, offset: 352)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "num_components", scope: !295, file: !4, line: 405, baseType: !171, size: 32, offset: 384)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_color_space", scope: !295, file: !4, line: 406, baseType: !332, size: 32, offset: 416)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_COLOR_SPACE", file: !4, line: 201, baseType: !3)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "out_color_space", scope: !295, file: !4, line: 413, baseType: !332, size: 32, offset: 448)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "scale_num", scope: !295, file: !4, line: 415, baseType: !5, size: 32, offset: 480)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "scale_denom", scope: !295, file: !4, line: 415, baseType: !5, size: 32, offset: 512)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "output_gamma", scope: !295, file: !4, line: 417, baseType: !337, size: 64, offset: 576)
!337 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "buffered_image", scope: !295, file: !4, line: 419, baseType: !250, size: 32, offset: 640)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "raw_data_out", scope: !295, file: !4, line: 420, baseType: !250, size: 32, offset: 672)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "dct_method", scope: !295, file: !4, line: 422, baseType: !341, size: 32, offset: 704)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_DCT_METHOD", file: !4, line: 209, baseType: !13)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "do_fancy_upsampling", scope: !295, file: !4, line: 423, baseType: !250, size: 32, offset: 736)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "do_block_smoothing", scope: !295, file: !4, line: 424, baseType: !250, size: 32, offset: 768)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "quantize_colors", scope: !295, file: !4, line: 426, baseType: !250, size: 32, offset: 800)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "dither_mode", scope: !295, file: !4, line: 428, baseType: !346, size: 32, offset: 832)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_DITHER_MODE", file: !4, line: 224, baseType: !18)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "two_pass_quantize", scope: !295, file: !4, line: 429, baseType: !250, size: 32, offset: 864)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "desired_number_of_colors", scope: !295, file: !4, line: 430, baseType: !171, size: 32, offset: 896)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "enable_1pass_quant", scope: !295, file: !4, line: 432, baseType: !250, size: 32, offset: 928)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "enable_external_quant", scope: !295, file: !4, line: 433, baseType: !250, size: 32, offset: 960)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "enable_2pass_quant", scope: !295, file: !4, line: 434, baseType: !250, size: 32, offset: 992)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "output_width", scope: !295, file: !4, line: 442, baseType: !228, size: 32, offset: 1024)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "output_height", scope: !295, file: !4, line: 443, baseType: !228, size: 32, offset: 1056)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "out_color_components", scope: !295, file: !4, line: 444, baseType: !171, size: 32, offset: 1088)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "output_components", scope: !295, file: !4, line: 445, baseType: !171, size: 32, offset: 1120)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "rec_outbuf_height", scope: !295, file: !4, line: 449, baseType: !171, size: 32, offset: 1152)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "actual_number_of_colors", scope: !295, file: !4, line: 461, baseType: !171, size: 32, offset: 1184)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !295, file: !4, line: 462, baseType: !221, size: 64, offset: 1216)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "output_scanline", scope: !295, file: !4, line: 472, baseType: !228, size: 32, offset: 1280)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "input_scan_number", scope: !295, file: !4, line: 477, baseType: !171, size: 32, offset: 1312)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "input_iMCU_row", scope: !295, file: !4, line: 478, baseType: !228, size: 32, offset: 1344)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "output_scan_number", scope: !295, file: !4, line: 484, baseType: !171, size: 32, offset: 1376)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "output_iMCU_row", scope: !295, file: !4, line: 485, baseType: !228, size: 32, offset: 1408)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "coef_bits", scope: !295, file: !4, line: 494, baseType: !365, size: 64, offset: 1472)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 2048, elements: !241)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_ptrs", scope: !295, file: !4, line: 505, baseType: !368, size: 256, offset: 1536)
!368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !369, size: 256, elements: !378)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "JQUANT_TBL", file: !4, line: 95, baseType: !371)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 83, size: 1056, elements: !372)
!372 = !{!373, !377}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "quantval", scope: !371, file: !4, line: 88, baseType: !374, size: 1024)
!374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !375, size: 1024, elements: !241)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !226, line: 147, baseType: !376)
!376 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !371, file: !4, line: 94, baseType: !250, size: 32, offset: 1024)
!378 = !{!379}
!379 = !DISubrange(count: 4)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "dc_huff_tbl_ptrs", scope: !295, file: !4, line: 508, baseType: !381, size: 256, offset: 1792)
!381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !382, size: 256, elements: !378)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "JHUFF_TBL", file: !4, line: 111, baseType: !384)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 100, size: 2240, elements: !385)
!385 = !{!386, !391, !395}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !384, file: !4, line: 102, baseType: !387, size: 136)
!387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 136, elements: !389)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT8", file: !226, line: 135, baseType: !227)
!389 = !{!390}
!390 = !DISubrange(count: 17)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "huffval", scope: !384, file: !4, line: 104, baseType: !392, size: 2048, offset: 136)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 2048, elements: !393)
!393 = !{!394}
!394 = !DISubrange(count: 256)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !384, file: !4, line: 110, baseType: !250, size: 32, offset: 2208)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "ac_huff_tbl_ptrs", scope: !295, file: !4, line: 509, baseType: !381, size: 256, offset: 2048)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "data_precision", scope: !295, file: !4, line: 516, baseType: !171, size: 32, offset: 2304)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "comp_info", scope: !295, file: !4, line: 518, baseType: !399, size: 64, offset: 2368)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_component_info", file: !4, line: 179, baseType: !401)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 116, size: 768, elements: !402)
!402 = !{!403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "component_id", scope: !401, file: !4, line: 120, baseType: !171, size: 32)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "component_index", scope: !401, file: !4, line: 121, baseType: !171, size: 32, offset: 32)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "h_samp_factor", scope: !401, file: !4, line: 122, baseType: !171, size: 32, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "v_samp_factor", scope: !401, file: !4, line: 123, baseType: !171, size: 32, offset: 96)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_no", scope: !401, file: !4, line: 124, baseType: !171, size: 32, offset: 128)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "dc_tbl_no", scope: !401, file: !4, line: 129, baseType: !171, size: 32, offset: 160)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tbl_no", scope: !401, file: !4, line: 130, baseType: !171, size: 32, offset: 192)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "width_in_blocks", scope: !401, file: !4, line: 139, baseType: !228, size: 32, offset: 224)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "height_in_blocks", scope: !401, file: !4, line: 140, baseType: !228, size: 32, offset: 256)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "DCT_scaled_size", scope: !401, file: !4, line: 147, baseType: !171, size: 32, offset: 288)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_width", scope: !401, file: !4, line: 154, baseType: !228, size: 32, offset: 320)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_height", scope: !401, file: !4, line: 155, baseType: !228, size: 32, offset: 352)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "component_needed", scope: !401, file: !4, line: 160, baseType: !250, size: 32, offset: 384)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_width", scope: !401, file: !4, line: 164, baseType: !171, size: 32, offset: 416)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_height", scope: !401, file: !4, line: 165, baseType: !171, size: 32, offset: 448)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_blocks", scope: !401, file: !4, line: 166, baseType: !171, size: 32, offset: 480)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_sample_width", scope: !401, file: !4, line: 167, baseType: !171, size: 32, offset: 512)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "last_col_width", scope: !401, file: !4, line: 168, baseType: !171, size: 32, offset: 544)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "last_row_height", scope: !401, file: !4, line: 169, baseType: !171, size: 32, offset: 576)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "quant_table", scope: !401, file: !4, line: 175, baseType: !369, size: 64, offset: 640)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "dct_table", scope: !401, file: !4, line: 178, baseType: !212, size: 64, offset: 704)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "progressive_mode", scope: !295, file: !4, line: 521, baseType: !250, size: 32, offset: 2432)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "arith_code", scope: !295, file: !4, line: 522, baseType: !250, size: 32, offset: 2464)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_L", scope: !295, file: !4, line: 524, baseType: !427, size: 128, offset: 2496)
!427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 128, elements: !428)
!428 = !{!429}
!429 = !DISubrange(count: 16)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_U", scope: !295, file: !4, line: 525, baseType: !427, size: 128, offset: 2624)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "arith_ac_K", scope: !295, file: !4, line: 526, baseType: !427, size: 128, offset: 2752)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "restart_interval", scope: !295, file: !4, line: 528, baseType: !5, size: 32, offset: 2880)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "saw_JFIF_marker", scope: !295, file: !4, line: 533, baseType: !250, size: 32, offset: 2912)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "density_unit", scope: !295, file: !4, line: 535, baseType: !388, size: 8, offset: 2944)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "X_density", scope: !295, file: !4, line: 536, baseType: !375, size: 16, offset: 2960)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "Y_density", scope: !295, file: !4, line: 537, baseType: !375, size: 16, offset: 2976)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "saw_Adobe_marker", scope: !295, file: !4, line: 538, baseType: !250, size: 32, offset: 3008)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "Adobe_transform", scope: !295, file: !4, line: 539, baseType: !388, size: 8, offset: 3040)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "CCIR601_sampling", scope: !295, file: !4, line: 541, baseType: !250, size: 32, offset: 3072)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "max_h_samp_factor", scope: !295, file: !4, line: 550, baseType: !171, size: 32, offset: 3104)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "max_v_samp_factor", scope: !295, file: !4, line: 551, baseType: !171, size: 32, offset: 3136)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "min_DCT_scaled_size", scope: !295, file: !4, line: 553, baseType: !171, size: 32, offset: 3168)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "total_iMCU_rows", scope: !295, file: !4, line: 555, baseType: !228, size: 32, offset: 3200)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "sample_range_limit", scope: !295, file: !4, line: 564, baseType: !224, size: 64, offset: 3264)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "comps_in_scan", scope: !295, file: !4, line: 571, baseType: !171, size: 32, offset: 3328)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "cur_comp_info", scope: !295, file: !4, line: 572, baseType: !447, size: 256, offset: 3392)
!447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 256, elements: !378)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "MCUs_per_row", scope: !295, file: !4, line: 575, baseType: !228, size: 32, offset: 3648)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_rows_in_scan", scope: !295, file: !4, line: 576, baseType: !228, size: 32, offset: 3680)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_in_MCU", scope: !295, file: !4, line: 578, baseType: !171, size: 32, offset: 3712)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_membership", scope: !295, file: !4, line: 579, baseType: !452, size: 320, offset: 3744)
!452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 320, elements: !453)
!453 = !{!454}
!454 = !DISubrange(count: 10)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "Ss", scope: !295, file: !4, line: 583, baseType: !171, size: 32, offset: 4064)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "Se", scope: !295, file: !4, line: 583, baseType: !171, size: 32, offset: 4096)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "Ah", scope: !295, file: !4, line: 583, baseType: !171, size: 32, offset: 4128)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "Al", scope: !295, file: !4, line: 583, baseType: !171, size: 32, offset: 4160)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "unread_marker", scope: !295, file: !4, line: 589, baseType: !171, size: 32, offset: 4192)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !295, file: !4, line: 594, baseType: !461, size: 64, offset: 4224)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_decomp_master", file: !24, line: 136, size: 192, elements: !463)
!463 = !{!464, !465, !466}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_for_output_pass", scope: !462, file: !24, line: 137, baseType: !312, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "finish_output_pass", scope: !462, file: !24, line: 138, baseType: !312, size: 64, offset: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "is_dummy_pass", scope: !462, file: !24, line: 141, baseType: !250, size: 32, offset: 128)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "main", scope: !295, file: !4, line: 595, baseType: !468, size: 64, offset: 4288)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_d_main_controller", file: !24, line: 157, size: 128, elements: !470)
!470 = !{!471, !476}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !469, file: !24, line: 158, baseType: !472, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{null, !293, !475}
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_BUF_MODE", file: !24, line: 22, baseType: !23)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "process_data", scope: !469, file: !24, line: 159, baseType: !477, size: 64, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DISubroutineType(types: !479)
!479 = !{null, !293, !221, !480, !228}
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "coef", scope: !295, file: !4, line: 596, baseType: !482, size: 64, offset: 4352)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_d_coef_controller", file: !24, line: 165, size: 320, elements: !484)
!484 = !{!485, !486, !490, !491, !497}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "start_input_pass", scope: !483, file: !24, line: 166, baseType: !312, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "consume_data", scope: !483, file: !24, line: 167, baseType: !487, size: 64, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{!171, !293}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "start_output_pass", scope: !483, file: !24, line: 168, baseType: !312, size: 64, offset: 128)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "decompress_data", scope: !483, file: !24, line: 169, baseType: !492, size: 64, offset: 192)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DISubroutineType(types: !494)
!494 = !{!171, !293, !495}
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPIMAGE", file: !4, line: 68, baseType: !496)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "coef_arrays", scope: !483, file: !24, line: 172, baseType: !292, size: 64, offset: 256)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "post", scope: !295, file: !4, line: 597, baseType: !499, size: 64, offset: 4416)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_d_post_controller", file: !24, line: 176, size: 128, elements: !501)
!501 = !{!502, !503}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !500, file: !24, line: 177, baseType: !472, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "post_process_data", scope: !500, file: !24, line: 178, baseType: !504, size: 64, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{null, !293, !495, !480, !228, !221, !480, !228}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "inputctl", scope: !295, file: !4, line: 598, baseType: !508, size: 64, offset: 4480)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_input_controller", file: !24, line: 145, size: 320, elements: !510)
!510 = !{!511, !512, !513, !514, !515, !516}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "consume_input", scope: !509, file: !24, line: 146, baseType: !487, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "reset_input_controller", scope: !509, file: !24, line: 147, baseType: !312, size: 64, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "start_input_pass", scope: !509, file: !24, line: 148, baseType: !312, size: 64, offset: 128)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "finish_input_pass", scope: !509, file: !24, line: 149, baseType: !312, size: 64, offset: 192)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "has_multiple_scans", scope: !509, file: !24, line: 152, baseType: !250, size: 32, offset: 256)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "eoi_reached", scope: !509, file: !24, line: 153, baseType: !250, size: 32, offset: 288)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "marker", scope: !295, file: !4, line: 599, baseType: !518, size: 64, offset: 4544)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_marker_reader", file: !24, line: 188, size: 1408, elements: !520)
!520 = !{!521, !522, !523, !525, !526, !528, !529, !530, !531}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "reset_marker_reader", scope: !519, file: !24, line: 189, baseType: !312, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "read_markers", scope: !519, file: !24, line: 194, baseType: !487, size: 64, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "read_restart_marker", scope: !519, file: !24, line: 196, baseType: !524, size: 64, offset: 128)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_marker_parser_method", file: !4, line: 781, baseType: !316)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "process_COM", scope: !519, file: !24, line: 198, baseType: !524, size: 64, offset: 192)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "process_APPn", scope: !519, file: !24, line: 199, baseType: !527, size: 1024, offset: 256)
!527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !524, size: 1024, elements: !428)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "saw_SOI", scope: !519, file: !24, line: 204, baseType: !250, size: 32, offset: 1280)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "saw_SOF", scope: !519, file: !24, line: 205, baseType: !250, size: 32, offset: 1312)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "next_restart_num", scope: !519, file: !24, line: 206, baseType: !171, size: 32, offset: 1344)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "discarded_bytes", scope: !519, file: !24, line: 207, baseType: !5, size: 32, offset: 1376)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "entropy", scope: !295, file: !4, line: 600, baseType: !533, size: 64, offset: 4608)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_entropy_decoder", file: !24, line: 211, size: 128, elements: !535)
!535 = !{!536, !537}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !534, file: !24, line: 212, baseType: !312, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "decode_mcu", scope: !534, file: !24, line: 213, baseType: !538, size: 64, offset: 64)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{!250, !293, !234}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "idct", scope: !295, file: !4, line: 601, baseType: !542, size: 64, offset: 4672)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_inverse_dct", file: !24, line: 223, size: 704, elements: !544)
!544 = !{!545, !546}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !543, file: !24, line: 224, baseType: !312, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "inverse_DCT", scope: !543, file: !24, line: 226, baseType: !547, size: 640, offset: 64)
!547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !548, size: 640, elements: !453)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "inverse_DCT_method_ptr", file: !24, line: 218, baseType: !549)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DISubroutineType(types: !551)
!551 = !{null, !293, !399, !552, !221, !228}
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "JCOEFPTR", file: !4, line: 75, baseType: !553)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "upsample", scope: !295, file: !4, line: 602, baseType: !555, size: 64, offset: 4736)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_upsampler", file: !24, line: 230, size: 192, elements: !557)
!557 = !{!558, !559, !560}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !556, file: !24, line: 231, baseType: !312, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "upsample", scope: !556, file: !24, line: 232, baseType: !504, size: 64, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "need_context_rows", scope: !556, file: !24, line: 240, baseType: !250, size: 32, offset: 128)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "cconvert", scope: !295, file: !4, line: 603, baseType: !562, size: 64, offset: 4800)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_color_deconverter", file: !24, line: 244, size: 128, elements: !564)
!564 = !{!565, !566}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !563, file: !24, line: 245, baseType: !312, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "color_convert", scope: !563, file: !24, line: 246, baseType: !567, size: 64, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DISubroutineType(types: !569)
!569 = !{null, !293, !495, !228, !221, !171}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "cquantize", scope: !295, file: !4, line: 604, baseType: !571, size: 64, offset: 4864)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_color_quantizer", file: !24, line: 252, size: 256, elements: !573)
!573 = !{!574, !578, !582, !583}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !572, file: !24, line: 253, baseType: !575, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{null, !293, !250}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "color_quantize", scope: !572, file: !24, line: 254, baseType: !579, size: 64, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DISubroutineType(types: !581)
!581 = !{null, !293, !221, !221, !171}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "finish_pass", scope: !572, file: !24, line: 257, baseType: !312, size: 64, offset: 128)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "new_color_map", scope: !572, file: !24, line: 258, baseType: !312, size: 64, offset: 192)
!584 = !{}
!585 = !DILocalVariable(name: "cinfo", arg: 1, scope: !289, file: !1, line: 38, type: !293)
!586 = !DILocation(line: 38, column: 42, scope: !289)
!587 = !DILocation(line: 40, column: 7, scope: !588)
!588 = distinct !DILexicalBlock(scope: !289, file: !1, line: 40, column: 7)
!589 = !DILocation(line: 40, column: 14, scope: !588)
!590 = !DILocation(line: 40, column: 27, scope: !588)
!591 = !DILocation(line: 42, column: 34, scope: !592)
!592 = distinct !DILexicalBlock(scope: !588, file: !1, line: 40, column: 44)
!593 = !DILocation(line: 42, column: 5, scope: !592)
!594 = !DILocation(line: 43, column: 5, scope: !592)
!595 = !DILocation(line: 43, column: 12, scope: !592)
!596 = !DILocation(line: 43, column: 25, scope: !592)
!597 = !DILocation(line: 44, column: 3, scope: !592)
!598 = !DILocation(line: 44, column: 14, scope: !599)
!599 = distinct !DILexicalBlock(scope: !588, file: !1, line: 44, column: 14)
!600 = !DILocation(line: 44, column: 21, scope: !599)
!601 = !DILocation(line: 44, column: 34, scope: !599)
!602 = !DILocation(line: 45, column: 5, scope: !599)
!603 = !DILocation(line: 47, column: 3, scope: !289)
!604 = !DILocalVariable(name: "retcode", scope: !605, file: !1, line: 48, type: !171)
!605 = distinct !DILexicalBlock(scope: !606, file: !1, line: 47, column: 12)
!606 = distinct !DILexicalBlock(scope: !607, file: !1, line: 47, column: 3)
!607 = distinct !DILexicalBlock(scope: !289, file: !1, line: 47, column: 3)
!608 = !DILocation(line: 48, column: 9, scope: !605)
!609 = !DILocation(line: 50, column: 9, scope: !610)
!610 = distinct !DILexicalBlock(scope: !605, file: !1, line: 50, column: 9)
!611 = !DILocation(line: 50, column: 16, scope: !610)
!612 = !DILocation(line: 50, column: 25, scope: !610)
!613 = !DILocation(line: 51, column: 9, scope: !610)
!614 = !DILocation(line: 51, column: 16, scope: !610)
!615 = !DILocation(line: 51, column: 26, scope: !610)
!616 = !DILocation(line: 51, column: 60, scope: !610)
!617 = !DILocation(line: 51, column: 7, scope: !610)
!618 = !DILocation(line: 53, column: 17, scope: !605)
!619 = !DILocation(line: 53, column: 24, scope: !605)
!620 = !DILocation(line: 53, column: 34, scope: !605)
!621 = !DILocation(line: 53, column: 50, scope: !605)
!622 = !DILocation(line: 53, column: 15, scope: !605)
!623 = !DILocation(line: 53, column: 13, scope: !605)
!624 = !DILocation(line: 54, column: 9, scope: !625)
!625 = distinct !DILexicalBlock(scope: !605, file: !1, line: 54, column: 9)
!626 = !DILocation(line: 54, column: 17, scope: !625)
!627 = !DILocation(line: 55, column: 7, scope: !625)
!628 = !DILocation(line: 56, column: 9, scope: !629)
!629 = distinct !DILexicalBlock(scope: !605, file: !1, line: 56, column: 9)
!630 = !DILocation(line: 56, column: 17, scope: !629)
!631 = !DILocation(line: 57, column: 7, scope: !629)
!632 = !DILocation(line: 59, column: 9, scope: !633)
!633 = distinct !DILexicalBlock(scope: !605, file: !1, line: 59, column: 9)
!634 = !DILocation(line: 59, column: 16, scope: !633)
!635 = !DILocation(line: 59, column: 25, scope: !633)
!636 = !DILocation(line: 59, column: 33, scope: !633)
!637 = !DILocation(line: 60, column: 3, scope: !633)
!638 = !DILocation(line: 60, column: 11, scope: !633)
!639 = !DILocation(line: 60, column: 33, scope: !633)
!640 = !DILocation(line: 60, column: 36, scope: !633)
!641 = !DILocation(line: 60, column: 44, scope: !633)
!642 = !DILocation(line: 61, column: 13, scope: !643)
!643 = distinct !DILexicalBlock(scope: !644, file: !1, line: 61, column: 11)
!644 = distinct !DILexicalBlock(scope: !633, file: !1, line: 60, column: 66)
!645 = !DILocation(line: 61, column: 20, scope: !643)
!646 = !DILocation(line: 61, column: 30, scope: !643)
!647 = !DILocation(line: 61, column: 11, scope: !643)
!648 = !DILocation(line: 61, column: 46, scope: !643)
!649 = !DILocation(line: 61, column: 53, scope: !643)
!650 = !DILocation(line: 61, column: 63, scope: !643)
!651 = !DILocation(line: 61, column: 43, scope: !643)
!652 = !DILocation(line: 63, column: 40, scope: !653)
!653 = distinct !DILexicalBlock(scope: !643, file: !1, line: 61, column: 75)
!654 = !DILocation(line: 63, column: 47, scope: !653)
!655 = !DILocation(line: 63, column: 33, scope: !653)
!656 = !DILocation(line: 63, column: 2, scope: !653)
!657 = !DILocation(line: 63, column: 9, scope: !653)
!658 = !DILocation(line: 63, column: 19, scope: !653)
!659 = !DILocation(line: 63, column: 30, scope: !653)
!660 = !DILocation(line: 64, column: 7, scope: !653)
!661 = !DILocation(line: 65, column: 5, scope: !644)
!662 = !DILocation(line: 47, column: 3, scope: !606)
!663 = distinct !{!663, !664, !665}
!664 = !DILocation(line: 47, column: 3, scope: !607)
!665 = !DILocation(line: 66, column: 3, scope: !607)
!666 = !DILocation(line: 68, column: 3, scope: !289)
!667 = !DILocation(line: 68, column: 10, scope: !289)
!668 = !DILocation(line: 68, column: 23, scope: !289)
!669 = !DILocation(line: 69, column: 10, scope: !289)
!670 = !DILocation(line: 69, column: 17, scope: !289)
!671 = !DILocation(line: 69, column: 23, scope: !289)
!672 = !DILocation(line: 69, column: 3, scope: !289)
!673 = !DILocation(line: 70, column: 1, scope: !289)
!674 = distinct !DISubprogram(name: "transdecode_master_selection", scope: !1, file: !1, line: 79, type: !313, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !584)
!675 = !DILocalVariable(name: "cinfo", arg: 1, scope: !674, file: !1, line: 79, type: !293)
!676 = !DILocation(line: 79, column: 48, scope: !674)
!677 = !DILocation(line: 82, column: 7, scope: !678)
!678 = distinct !DILexicalBlock(scope: !674, file: !1, line: 82, column: 7)
!679 = !DILocation(line: 82, column: 14, scope: !678)
!680 = !DILocation(line: 83, column: 5, scope: !681)
!681 = distinct !DILexicalBlock(scope: !678, file: !1, line: 82, column: 26)
!682 = !DILocation(line: 84, column: 3, scope: !681)
!683 = !DILocation(line: 85, column: 9, scope: !684)
!684 = distinct !DILexicalBlock(scope: !685, file: !1, line: 85, column: 9)
!685 = distinct !DILexicalBlock(scope: !678, file: !1, line: 84, column: 10)
!686 = !DILocation(line: 85, column: 16, scope: !684)
!687 = !DILocation(line: 87, column: 27, scope: !688)
!688 = distinct !DILexicalBlock(scope: !684, file: !1, line: 85, column: 34)
!689 = !DILocation(line: 87, column: 7, scope: !688)
!690 = !DILocation(line: 91, column: 5, scope: !688)
!691 = !DILocation(line: 92, column: 26, scope: !684)
!692 = !DILocation(line: 92, column: 7, scope: !684)
!693 = !DILocation(line: 96, column: 27, scope: !674)
!694 = !DILocation(line: 96, column: 3, scope: !674)
!695 = !DILocation(line: 99, column: 5, scope: !674)
!696 = !DILocation(line: 99, column: 12, scope: !674)
!697 = !DILocation(line: 99, column: 17, scope: !674)
!698 = !DILocation(line: 99, column: 54, scope: !674)
!699 = !DILocation(line: 99, column: 3, scope: !674)
!700 = !DILocation(line: 102, column: 5, scope: !674)
!701 = !DILocation(line: 102, column: 12, scope: !674)
!702 = !DILocation(line: 102, column: 22, scope: !674)
!703 = !DILocation(line: 102, column: 41, scope: !674)
!704 = !DILocation(line: 102, column: 3, scope: !674)
!705 = !DILocation(line: 105, column: 7, scope: !706)
!706 = distinct !DILexicalBlock(scope: !674, file: !1, line: 105, column: 7)
!707 = !DILocation(line: 105, column: 14, scope: !706)
!708 = !DILocation(line: 105, column: 23, scope: !706)
!709 = !DILocalVariable(name: "nscans", scope: !710, file: !1, line: 106, type: !171)
!710 = distinct !DILexicalBlock(scope: !706, file: !1, line: 105, column: 32)
!711 = !DILocation(line: 106, column: 9, scope: !710)
!712 = !DILocation(line: 108, column: 9, scope: !713)
!713 = distinct !DILexicalBlock(scope: !710, file: !1, line: 108, column: 9)
!714 = !DILocation(line: 108, column: 16, scope: !713)
!715 = !DILocation(line: 110, column: 24, scope: !716)
!716 = distinct !DILexicalBlock(scope: !713, file: !1, line: 108, column: 34)
!717 = !DILocation(line: 110, column: 31, scope: !716)
!718 = !DILocation(line: 110, column: 22, scope: !716)
!719 = !DILocation(line: 110, column: 18, scope: !716)
!720 = !DILocation(line: 110, column: 14, scope: !716)
!721 = !DILocation(line: 111, column: 5, scope: !716)
!722 = !DILocation(line: 111, column: 16, scope: !723)
!723 = distinct !DILexicalBlock(scope: !713, file: !1, line: 111, column: 16)
!724 = !DILocation(line: 111, column: 23, scope: !723)
!725 = !DILocation(line: 111, column: 33, scope: !723)
!726 = !DILocation(line: 113, column: 16, scope: !727)
!727 = distinct !DILexicalBlock(scope: !723, file: !1, line: 111, column: 53)
!728 = !DILocation(line: 113, column: 23, scope: !727)
!729 = !DILocation(line: 113, column: 14, scope: !727)
!730 = !DILocation(line: 114, column: 5, scope: !727)
!731 = !DILocation(line: 115, column: 14, scope: !732)
!732 = distinct !DILexicalBlock(scope: !723, file: !1, line: 114, column: 12)
!733 = !DILocation(line: 117, column: 5, scope: !710)
!734 = !DILocation(line: 117, column: 12, scope: !710)
!735 = !DILocation(line: 117, column: 22, scope: !710)
!736 = !DILocation(line: 117, column: 35, scope: !710)
!737 = !DILocation(line: 118, column: 42, scope: !710)
!738 = !DILocation(line: 118, column: 49, scope: !710)
!739 = !DILocation(line: 118, column: 35, scope: !710)
!740 = !DILocation(line: 118, column: 67, scope: !710)
!741 = !DILocation(line: 118, column: 65, scope: !710)
!742 = !DILocation(line: 118, column: 5, scope: !710)
!743 = !DILocation(line: 118, column: 12, scope: !710)
!744 = !DILocation(line: 118, column: 22, scope: !710)
!745 = !DILocation(line: 118, column: 33, scope: !710)
!746 = !DILocation(line: 119, column: 5, scope: !710)
!747 = !DILocation(line: 119, column: 12, scope: !710)
!748 = !DILocation(line: 119, column: 22, scope: !710)
!749 = !DILocation(line: 119, column: 39, scope: !710)
!750 = !DILocation(line: 120, column: 5, scope: !710)
!751 = !DILocation(line: 120, column: 12, scope: !710)
!752 = !DILocation(line: 120, column: 22, scope: !710)
!753 = !DILocation(line: 120, column: 35, scope: !710)
!754 = !DILocation(line: 121, column: 3, scope: !710)
!755 = !DILocation(line: 122, column: 1, scope: !674)
