; ModuleID = 'cBench/consumer_jpeg_c/src/jcmainct.c'
source_filename = "cBench/consumer_jpeg_c/src/jcmainct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.my_main_controller = type { %struct.jpeg_c_main_controller, i32, i32, i32, i32, [10 x ptr] }
%struct.jpeg_c_main_controller = type { ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.jpeg_c_prep_controller = type { ptr, ptr }
%struct.jpeg_c_coef_controller = type { ptr, ptr }

; Function Attrs: noinline nounwind uwtable
define dso_local void @jinit_c_main_controller(ptr noundef %0, i32 noundef %1) #0 !dbg !540 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !542, !DIExpression(), !543)
  store i32 %1, ptr %4, align 4
    #dbg_declare(ptr %4, !544, !DIExpression(), !545)
    #dbg_declare(ptr %5, !546, !DIExpression(), !547)
    #dbg_declare(ptr %6, !548, !DIExpression(), !549)
    #dbg_declare(ptr %7, !550, !DIExpression(), !551)
  %8 = load ptr, ptr %3, align 8, !dbg !552
  %9 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %8, i32 0, i32 1, !dbg !553
  %10 = load ptr, ptr %9, align 8, !dbg !553
  %11 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %10, i32 0, i32 0, !dbg !554
  %12 = load ptr, ptr %11, align 8, !dbg !554
  %13 = load ptr, ptr %3, align 8, !dbg !555
  %14 = call ptr %12(ptr noundef %13, i32 noundef 1, i64 noundef 112), !dbg !556
  store ptr %14, ptr %5, align 8, !dbg !557
  %15 = load ptr, ptr %5, align 8, !dbg !558
  %16 = load ptr, ptr %3, align 8, !dbg !559
  %17 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %16, i32 0, i32 52, !dbg !560
  store ptr %15, ptr %17, align 8, !dbg !561
  %18 = load ptr, ptr %5, align 8, !dbg !562
  %19 = getelementptr inbounds nuw %struct.my_main_controller, ptr %18, i32 0, i32 0, !dbg !563
  %20 = getelementptr inbounds nuw %struct.jpeg_c_main_controller, ptr %19, i32 0, i32 0, !dbg !564
  store ptr @start_pass_main, ptr %20, align 8, !dbg !565
  %21 = load ptr, ptr %3, align 8, !dbg !566
  %22 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %21, i32 0, i32 23, !dbg !568
  %23 = load i32, ptr %22, align 8, !dbg !568
  %24 = icmp ne i32 %23, 0, !dbg !566
  br i1 %24, label %25, label %26, !dbg !566

25:                                               ; preds = %2
  br label %77, !dbg !569

26:                                               ; preds = %2
  %27 = load i32, ptr %4, align 4, !dbg !570
  %28 = icmp ne i32 %27, 0, !dbg !570
  br i1 %28, label %29, label %40, !dbg !570

29:                                               ; preds = %26
  %30 = load ptr, ptr %3, align 8, !dbg !572
  %31 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %30, i32 0, i32 0, !dbg !572
  %32 = load ptr, ptr %31, align 8, !dbg !572
  %33 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %32, i32 0, i32 5, !dbg !572
  store i32 4, ptr %33, align 8, !dbg !572
  %34 = load ptr, ptr %3, align 8, !dbg !572
  %35 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %34, i32 0, i32 0, !dbg !572
  %36 = load ptr, ptr %35, align 8, !dbg !572
  %37 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %36, i32 0, i32 0, !dbg !572
  %38 = load ptr, ptr %37, align 8, !dbg !572
  %39 = load ptr, ptr %3, align 8, !dbg !572
  call void %38(ptr noundef %39), !dbg !572
  br label %77, !dbg !574

40:                                               ; preds = %26
  store i32 0, ptr %6, align 4, !dbg !575
  %41 = load ptr, ptr %3, align 8, !dbg !578
  %42 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %41, i32 0, i32 14, !dbg !579
  %43 = load ptr, ptr %42, align 8, !dbg !579
  store ptr %43, ptr %7, align 8, !dbg !580
  br label %44, !dbg !581

44:                                               ; preds = %71, %40
  %45 = load i32, ptr %6, align 4, !dbg !582
  %46 = load ptr, ptr %3, align 8, !dbg !584
  %47 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %46, i32 0, i32 12, !dbg !585
  %48 = load i32, ptr %47, align 4, !dbg !585
  %49 = icmp slt i32 %45, %48, !dbg !586
  br i1 %49, label %50, label %76, !dbg !587

50:                                               ; preds = %44
  %51 = load ptr, ptr %3, align 8, !dbg !588
  %52 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %51, i32 0, i32 1, !dbg !590
  %53 = load ptr, ptr %52, align 8, !dbg !590
  %54 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %53, i32 0, i32 2, !dbg !591
  %55 = load ptr, ptr %54, align 8, !dbg !591
  %56 = load ptr, ptr %3, align 8, !dbg !592
  %57 = load ptr, ptr %7, align 8, !dbg !593
  %58 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %57, i32 0, i32 7, !dbg !594
  %59 = load i32, ptr %58, align 4, !dbg !594
  %60 = mul i32 %59, 8, !dbg !595
  %61 = load ptr, ptr %7, align 8, !dbg !596
  %62 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %61, i32 0, i32 3, !dbg !597
  %63 = load i32, ptr %62, align 4, !dbg !597
  %64 = mul nsw i32 %63, 8, !dbg !598
  %65 = call ptr %55(ptr noundef %56, i32 noundef 1, i32 noundef %60, i32 noundef %64), !dbg !599
  %66 = load ptr, ptr %5, align 8, !dbg !600
  %67 = getelementptr inbounds nuw %struct.my_main_controller, ptr %66, i32 0, i32 5, !dbg !601
  %68 = load i32, ptr %6, align 4, !dbg !602
  %69 = sext i32 %68 to i64, !dbg !600
  %70 = getelementptr inbounds [10 x ptr], ptr %67, i64 0, i64 %69, !dbg !600
  store ptr %65, ptr %70, align 8, !dbg !603
  br label %71, !dbg !604

71:                                               ; preds = %50
  %72 = load i32, ptr %6, align 4, !dbg !605
  %73 = add nsw i32 %72, 1, !dbg !605
  store i32 %73, ptr %6, align 4, !dbg !605
  %74 = load ptr, ptr %7, align 8, !dbg !606
  %75 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %74, i32 1, !dbg !606
  store ptr %75, ptr %7, align 8, !dbg !606
  br label %44, !dbg !607, !llvm.loop !608

76:                                               ; preds = %44
  br label %77

77:                                               ; preds = %25, %76, %29
  ret void, !dbg !611
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_pass_main(ptr noundef %0, i32 noundef %1) #0 !dbg !612 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !613, !DIExpression(), !614)
  store i32 %1, ptr %4, align 4
    #dbg_declare(ptr %4, !615, !DIExpression(), !616)
    #dbg_declare(ptr %5, !617, !DIExpression(), !618)
  %6 = load ptr, ptr %3, align 8, !dbg !619
  %7 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %6, i32 0, i32 52, !dbg !620
  %8 = load ptr, ptr %7, align 8, !dbg !620
  store ptr %8, ptr %5, align 8, !dbg !618
  %9 = load ptr, ptr %3, align 8, !dbg !621
  %10 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %9, i32 0, i32 23, !dbg !623
  %11 = load i32, ptr %10, align 8, !dbg !623
  %12 = icmp ne i32 %11, 0, !dbg !621
  br i1 %12, label %13, label %14, !dbg !621

13:                                               ; preds = %2
  br label %40, !dbg !624

14:                                               ; preds = %2
  %15 = load ptr, ptr %5, align 8, !dbg !625
  %16 = getelementptr inbounds nuw %struct.my_main_controller, ptr %15, i32 0, i32 1, !dbg !626
  store i32 0, ptr %16, align 8, !dbg !627
  %17 = load ptr, ptr %5, align 8, !dbg !628
  %18 = getelementptr inbounds nuw %struct.my_main_controller, ptr %17, i32 0, i32 2, !dbg !629
  store i32 0, ptr %18, align 4, !dbg !630
  %19 = load ptr, ptr %5, align 8, !dbg !631
  %20 = getelementptr inbounds nuw %struct.my_main_controller, ptr %19, i32 0, i32 3, !dbg !632
  store i32 0, ptr %20, align 8, !dbg !633
  %21 = load i32, ptr %4, align 4, !dbg !634
  %22 = load ptr, ptr %5, align 8, !dbg !635
  %23 = getelementptr inbounds nuw %struct.my_main_controller, ptr %22, i32 0, i32 4, !dbg !636
  store i32 %21, ptr %23, align 4, !dbg !637
  %24 = load i32, ptr %4, align 4, !dbg !638
  switch i32 %24, label %29 [
    i32 0, label %25
  ], !dbg !639

25:                                               ; preds = %14
  %26 = load ptr, ptr %5, align 8, !dbg !640
  %27 = getelementptr inbounds nuw %struct.my_main_controller, ptr %26, i32 0, i32 0, !dbg !642
  %28 = getelementptr inbounds nuw %struct.jpeg_c_main_controller, ptr %27, i32 0, i32 1, !dbg !643
  store ptr @process_data_simple_main, ptr %28, align 8, !dbg !644
  br label %40, !dbg !645

29:                                               ; preds = %14
  %30 = load ptr, ptr %3, align 8, !dbg !646
  %31 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %30, i32 0, i32 0, !dbg !646
  %32 = load ptr, ptr %31, align 8, !dbg !646
  %33 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %32, i32 0, i32 5, !dbg !646
  store i32 4, ptr %33, align 8, !dbg !646
  %34 = load ptr, ptr %3, align 8, !dbg !646
  %35 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %34, i32 0, i32 0, !dbg !646
  %36 = load ptr, ptr %35, align 8, !dbg !646
  %37 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %36, i32 0, i32 0, !dbg !646
  %38 = load ptr, ptr %37, align 8, !dbg !646
  %39 = load ptr, ptr %3, align 8, !dbg !646
  call void %38(ptr noundef %39), !dbg !646
  br label %40, !dbg !647

40:                                               ; preds = %13, %29, %25
  ret void, !dbg !648
}

; Function Attrs: noinline nounwind uwtable
define internal void @process_data_simple_main(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 !dbg !649 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !650, !DIExpression(), !651)
  store ptr %1, ptr %6, align 8
    #dbg_declare(ptr %6, !652, !DIExpression(), !653)
  store ptr %2, ptr %7, align 8
    #dbg_declare(ptr %7, !654, !DIExpression(), !655)
  store i32 %3, ptr %8, align 4
    #dbg_declare(ptr %8, !656, !DIExpression(), !657)
    #dbg_declare(ptr %9, !658, !DIExpression(), !659)
  %10 = load ptr, ptr %5, align 8, !dbg !660
  %11 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %10, i32 0, i32 52, !dbg !661
  %12 = load ptr, ptr %11, align 8, !dbg !661
  store ptr %12, ptr %9, align 8, !dbg !659
  br label %13, !dbg !662

13:                                               ; preds = %82, %4
  %14 = load ptr, ptr %9, align 8, !dbg !663
  %15 = getelementptr inbounds nuw %struct.my_main_controller, ptr %14, i32 0, i32 1, !dbg !664
  %16 = load i32, ptr %15, align 8, !dbg !664
  %17 = load ptr, ptr %5, align 8, !dbg !665
  %18 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %17, i32 0, i32 40, !dbg !666
  %19 = load i32, ptr %18, align 8, !dbg !666
  %20 = icmp ult i32 %16, %19, !dbg !667
  br i1 %20, label %21, label %89, !dbg !662

21:                                               ; preds = %13
  %22 = load ptr, ptr %9, align 8, !dbg !668
  %23 = getelementptr inbounds nuw %struct.my_main_controller, ptr %22, i32 0, i32 2, !dbg !671
  %24 = load i32, ptr %23, align 4, !dbg !671
  %25 = icmp ult i32 %24, 8, !dbg !672
  br i1 %25, label %26, label %41, !dbg !672

26:                                               ; preds = %21
  %27 = load ptr, ptr %5, align 8, !dbg !673
  %28 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %27, i32 0, i32 53, !dbg !674
  %29 = load ptr, ptr %28, align 8, !dbg !674
  %30 = getelementptr inbounds nuw %struct.jpeg_c_prep_controller, ptr %29, i32 0, i32 1, !dbg !675
  %31 = load ptr, ptr %30, align 8, !dbg !675
  %32 = load ptr, ptr %5, align 8, !dbg !676
  %33 = load ptr, ptr %6, align 8, !dbg !677
  %34 = load ptr, ptr %7, align 8, !dbg !678
  %35 = load i32, ptr %8, align 4, !dbg !679
  %36 = load ptr, ptr %9, align 8, !dbg !680
  %37 = getelementptr inbounds nuw %struct.my_main_controller, ptr %36, i32 0, i32 5, !dbg !681
  %38 = getelementptr inbounds [10 x ptr], ptr %37, i64 0, i64 0, !dbg !680
  %39 = load ptr, ptr %9, align 8, !dbg !682
  %40 = getelementptr inbounds nuw %struct.my_main_controller, ptr %39, i32 0, i32 2, !dbg !683
  call void %31(ptr noundef %32, ptr noundef %33, ptr noundef %34, i32 noundef %35, ptr noundef %38, ptr noundef %40, i32 noundef 8), !dbg !684
  br label %41, !dbg !684

41:                                               ; preds = %26, %21
  %42 = load ptr, ptr %9, align 8, !dbg !685
  %43 = getelementptr inbounds nuw %struct.my_main_controller, ptr %42, i32 0, i32 2, !dbg !687
  %44 = load i32, ptr %43, align 4, !dbg !687
  %45 = icmp ne i32 %44, 8, !dbg !688
  br i1 %45, label %46, label %47, !dbg !688

46:                                               ; preds = %41
  br label %89, !dbg !689

47:                                               ; preds = %41
  %48 = load ptr, ptr %5, align 8, !dbg !690
  %49 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %48, i32 0, i32 54, !dbg !692
  %50 = load ptr, ptr %49, align 8, !dbg !692
  %51 = getelementptr inbounds nuw %struct.jpeg_c_coef_controller, ptr %50, i32 0, i32 1, !dbg !693
  %52 = load ptr, ptr %51, align 8, !dbg !693
  %53 = load ptr, ptr %5, align 8, !dbg !694
  %54 = load ptr, ptr %9, align 8, !dbg !695
  %55 = getelementptr inbounds nuw %struct.my_main_controller, ptr %54, i32 0, i32 5, !dbg !696
  %56 = getelementptr inbounds [10 x ptr], ptr %55, i64 0, i64 0, !dbg !695
  %57 = call i32 %52(ptr noundef %53, ptr noundef %56), !dbg !697
  %58 = icmp ne i32 %57, 0, !dbg !697
  br i1 %58, label %71, label %59, !dbg !698

59:                                               ; preds = %47
  %60 = load ptr, ptr %9, align 8, !dbg !699
  %61 = getelementptr inbounds nuw %struct.my_main_controller, ptr %60, i32 0, i32 3, !dbg !702
  %62 = load i32, ptr %61, align 8, !dbg !702
  %63 = icmp ne i32 %62, 0, !dbg !699
  br i1 %63, label %70, label %64, !dbg !703

64:                                               ; preds = %59
  %65 = load ptr, ptr %7, align 8, !dbg !704
  %66 = load i32, ptr %65, align 4, !dbg !706
  %67 = add i32 %66, -1, !dbg !706
  store i32 %67, ptr %65, align 4, !dbg !706
  %68 = load ptr, ptr %9, align 8, !dbg !707
  %69 = getelementptr inbounds nuw %struct.my_main_controller, ptr %68, i32 0, i32 3, !dbg !708
  store i32 1, ptr %69, align 8, !dbg !709
  br label %70, !dbg !710

70:                                               ; preds = %64, %59
  br label %89, !dbg !711

71:                                               ; preds = %47
  %72 = load ptr, ptr %9, align 8, !dbg !712
  %73 = getelementptr inbounds nuw %struct.my_main_controller, ptr %72, i32 0, i32 3, !dbg !714
  %74 = load i32, ptr %73, align 8, !dbg !714
  %75 = icmp ne i32 %74, 0, !dbg !712
  br i1 %75, label %76, label %82, !dbg !712

76:                                               ; preds = %71
  %77 = load ptr, ptr %7, align 8, !dbg !715
  %78 = load i32, ptr %77, align 4, !dbg !717
  %79 = add i32 %78, 1, !dbg !717
  store i32 %79, ptr %77, align 4, !dbg !717
  %80 = load ptr, ptr %9, align 8, !dbg !718
  %81 = getelementptr inbounds nuw %struct.my_main_controller, ptr %80, i32 0, i32 3, !dbg !719
  store i32 0, ptr %81, align 8, !dbg !720
  br label %82, !dbg !721

82:                                               ; preds = %76, %71
  %83 = load ptr, ptr %9, align 8, !dbg !722
  %84 = getelementptr inbounds nuw %struct.my_main_controller, ptr %83, i32 0, i32 2, !dbg !723
  store i32 0, ptr %84, align 4, !dbg !724
  %85 = load ptr, ptr %9, align 8, !dbg !725
  %86 = getelementptr inbounds nuw %struct.my_main_controller, ptr %85, i32 0, i32 1, !dbg !726
  %87 = load i32, ptr %86, align 8, !dbg !727
  %88 = add i32 %87, 1, !dbg !727
  store i32 %88, ptr %86, align 8, !dbg !727
  br label %13, !dbg !662, !llvm.loop !728

89:                                               ; preds = %46, %70, %13
  ret void, !dbg !730
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!532, !533, !534, !535, !536, !537, !538}
!llvm.ident = !{!539}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !149, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jcmainct.c", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "e41800023ffff1b586e000a6b312f6cd")
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
!149 = !{!150, !174, !189, !443, !204}
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "my_main_ptr", file: !1, line: 50, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "my_main_controller", file: !1, line: 48, baseType: !153)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 28, size: 896, elements: !154)
!154 = !{!155, !526, !527, !528, !529, !530}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "pub", scope: !153, file: !1, line: 29, baseType: !156, size: 128)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_c_main_controller", file: !19, line: 56, size: 128, elements: !157)
!157 = !{!158, !522}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !156, file: !19, line: 57, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DISubroutineType(types: !161)
!161 = !{null, !162, !521}
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_compress_ptr", file: !4, line: 249, baseType: !163)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_compress_struct", file: !4, line: 255, size: 3968, elements: !165)
!165 = !{!166, !293, !294, !295, !296, !297, !314, !315, !316, !317, !319, !321, !322, !323, !324, !359, !363, !379, !380, !384, !385, !386, !387, !400, !401, !402, !403, !404, !405, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !422, !423, !424, !425, !429, !430, !431, !432, !433, !442, !444, !456, !465, !480, !489, !499, !508}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !164, file: !4, line: 256, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_error_mgr", file: !4, line: 618, size: 1344, elements: !169)
!169 = !{!170, !261, !262, !263, !269, !270, !271, !282, !283, !284, !289, !290, !291, !292}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "error_exit", scope: !168, file: !4, line: 620, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DISubroutineType(types: !173)
!173 = !{null, !174}
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_common_ptr", file: !4, line: 248, baseType: !175)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_common_struct", file: !4, line: 240, size: 256, elements: !177)
!177 = !{!178, !179, !250, !259, !260}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !176, file: !4, line: 241, baseType: !167, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !176, file: !4, line: 241, baseType: !180, size: 64, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_memory_mgr", file: !4, line: 731, size: 768, elements: !182)
!182 = !{!183, !192, !193, !205, !219, !227, !234, !235, !239, !243, !247, !248}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_small", scope: !181, file: !4, line: 733, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DISubroutineType(types: !186)
!186 = !{!187, !174, !188, !189}
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!188 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !190, line: 18, baseType: !191)
!190 = !DIFile(filename: "/usr/local/lib/clang/20/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!191 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_large", scope: !181, file: !4, line: 735, baseType: !184, size: 64, offset: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_sarray", scope: !181, file: !4, line: 737, baseType: !194, size: 64, offset: 128)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{!197, !174, !188, !204, !204}
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPARRAY", file: !4, line: 67, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPROW", file: !4, line: 66, baseType: !200)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPLE", file: !202, line: 59, baseType: !203)
!202 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jmorecfg.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "56a0eda58fafa6bdd5498f702a998c09")
!203 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "JDIMENSION", file: !202, line: 171, baseType: !5)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_barray", scope: !181, file: !4, line: 740, baseType: !206, size: 64, offset: 192)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{!209, !174, !188, !204, !204}
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCKARRAY", file: !4, line: 72, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCKROW", file: !4, line: 71, baseType: !212)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCK", file: !4, line: 70, baseType: !214)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 1024, elements: !217)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "JCOEF", file: !202, line: 99, baseType: !216)
!216 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!217 = !{!218}
!218 = !DISubrange(count: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_sarray", scope: !181, file: !4, line: 743, baseType: !220, size: 64, offset: 256)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{!223, !174, !188, !226, !204, !204, !204}
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_sarray_ptr", file: !4, line: 727, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_sarray_control", file: !4, line: 727, flags: DIFlagFwdDecl)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "boolean", file: !202, line: 227, baseType: !188)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_barray", scope: !181, file: !4, line: 749, baseType: !228, size: 64, offset: 320)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DISubroutineType(types: !230)
!230 = !{!231, !174, !188, !226, !204, !204, !204}
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_barray_ptr", file: !4, line: 728, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_barray_control", file: !4, line: 728, flags: DIFlagFwdDecl)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "realize_virt_arrays", scope: !181, file: !4, line: 755, baseType: !171, size: 64, offset: 384)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_sarray", scope: !181, file: !4, line: 756, baseType: !236, size: 64, offset: 448)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{!197, !174, !223, !204, !204, !226}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_barray", scope: !181, file: !4, line: 761, baseType: !240, size: 64, offset: 512)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{!209, !174, !231, !204, !204, !226}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "free_pool", scope: !181, file: !4, line: 766, baseType: !244, size: 64, offset: 576)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{null, !174, !188}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "self_destruct", scope: !181, file: !4, line: 767, baseType: !171, size: 64, offset: 640)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "max_memory_to_use", scope: !181, file: !4, line: 774, baseType: !249, size: 64, offset: 704)
!249 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !176, file: !4, line: 241, baseType: !251, size: 64, offset: 128)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_progress_mgr", file: !4, line: 676, size: 256, elements: !253)
!253 = !{!254, !255, !256, !257, !258}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !252, file: !4, line: 677, baseType: !171, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "pass_counter", scope: !252, file: !4, line: 679, baseType: !249, size: 64, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "pass_limit", scope: !252, file: !4, line: 680, baseType: !249, size: 64, offset: 128)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "completed_passes", scope: !252, file: !4, line: 681, baseType: !188, size: 32, offset: 192)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "total_passes", scope: !252, file: !4, line: 682, baseType: !188, size: 32, offset: 224)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !176, file: !4, line: 241, baseType: !226, size: 32, offset: 192)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !176, file: !4, line: 241, baseType: !188, size: 32, offset: 224)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "emit_message", scope: !168, file: !4, line: 622, baseType: !244, size: 64, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "output_message", scope: !168, file: !4, line: 624, baseType: !171, size: 64, offset: 128)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "format_message", scope: !168, file: !4, line: 626, baseType: !264, size: 64, offset: 192)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{null, !174, !267}
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "reset_error_mgr", scope: !168, file: !4, line: 629, baseType: !171, size: 64, offset: 256)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "msg_code", scope: !168, file: !4, line: 634, baseType: !188, size: 32, offset: 320)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "msg_parm", scope: !168, file: !4, line: 639, baseType: !272, size: 640, offset: 352)
!272 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !168, file: !4, line: 636, size: 640, elements: !273)
!273 = !{!274, !278}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !272, file: !4, line: 637, baseType: !275, size: 256)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 256, elements: !276)
!276 = !{!277}
!277 = !DISubrange(count: 8)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !272, file: !4, line: 638, baseType: !279, size: 640)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !268, size: 640, elements: !280)
!280 = !{!281}
!281 = !DISubrange(count: 80)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "trace_level", scope: !168, file: !4, line: 643, baseType: !188, size: 32, offset: 992)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "num_warnings", scope: !168, file: !4, line: 651, baseType: !249, size: 64, offset: 1024)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_message_table", scope: !168, file: !4, line: 663, baseType: !285, size: 64, offset: 1088)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !287)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !268)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "last_jpeg_message", scope: !168, file: !4, line: 664, baseType: !188, size: 32, offset: 1152)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "addon_message_table", scope: !168, file: !4, line: 668, baseType: !285, size: 64, offset: 1216)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "first_addon_message", scope: !168, file: !4, line: 669, baseType: !188, size: 32, offset: 1280)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "last_addon_message", scope: !168, file: !4, line: 670, baseType: !188, size: 32, offset: 1312)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !164, file: !4, line: 256, baseType: !180, size: 64, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !164, file: !4, line: 256, baseType: !251, size: 64, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !164, file: !4, line: 256, baseType: !226, size: 32, offset: 192)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !164, file: !4, line: 256, baseType: !188, size: 32, offset: 224)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !164, file: !4, line: 259, baseType: !298, size: 64, offset: 256)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_destination_mgr", file: !4, line: 688, size: 320, elements: !300)
!300 = !{!301, !304, !305, !309, !313}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "next_output_byte", scope: !299, file: !4, line: 689, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "JOCTET", file: !202, line: 110, baseType: !203)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "free_in_buffer", scope: !299, file: !4, line: 690, baseType: !189, size: 64, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "init_destination", scope: !299, file: !4, line: 692, baseType: !306, size: 64, offset: 128)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{null, !162}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "empty_output_buffer", scope: !299, file: !4, line: 693, baseType: !310, size: 64, offset: 192)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{!226, !162}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "term_destination", scope: !299, file: !4, line: 694, baseType: !306, size: 64, offset: 256)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "image_width", scope: !164, file: !4, line: 266, baseType: !204, size: 32, offset: 320)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "image_height", scope: !164, file: !4, line: 267, baseType: !204, size: 32, offset: 352)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "input_components", scope: !164, file: !4, line: 268, baseType: !188, size: 32, offset: 384)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "in_color_space", scope: !164, file: !4, line: 269, baseType: !318, size: 32, offset: 416)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_COLOR_SPACE", file: !4, line: 201, baseType: !3)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "input_gamma", scope: !164, file: !4, line: 271, baseType: !320, size: 64, offset: 448)
!320 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "data_precision", scope: !164, file: !4, line: 281, baseType: !188, size: 32, offset: 512)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "num_components", scope: !164, file: !4, line: 283, baseType: !188, size: 32, offset: 544)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_color_space", scope: !164, file: !4, line: 284, baseType: !318, size: 32, offset: 576)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "comp_info", scope: !164, file: !4, line: 286, baseType: !325, size: 64, offset: 640)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_component_info", file: !4, line: 179, baseType: !327)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 116, size: 768, elements: !328)
!328 = !{!329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !358}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "component_id", scope: !327, file: !4, line: 120, baseType: !188, size: 32)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "component_index", scope: !327, file: !4, line: 121, baseType: !188, size: 32, offset: 32)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "h_samp_factor", scope: !327, file: !4, line: 122, baseType: !188, size: 32, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "v_samp_factor", scope: !327, file: !4, line: 123, baseType: !188, size: 32, offset: 96)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_no", scope: !327, file: !4, line: 124, baseType: !188, size: 32, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "dc_tbl_no", scope: !327, file: !4, line: 129, baseType: !188, size: 32, offset: 160)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tbl_no", scope: !327, file: !4, line: 130, baseType: !188, size: 32, offset: 192)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "width_in_blocks", scope: !327, file: !4, line: 139, baseType: !204, size: 32, offset: 224)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "height_in_blocks", scope: !327, file: !4, line: 140, baseType: !204, size: 32, offset: 256)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "DCT_scaled_size", scope: !327, file: !4, line: 147, baseType: !188, size: 32, offset: 288)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_width", scope: !327, file: !4, line: 154, baseType: !204, size: 32, offset: 320)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_height", scope: !327, file: !4, line: 155, baseType: !204, size: 32, offset: 352)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "component_needed", scope: !327, file: !4, line: 160, baseType: !226, size: 32, offset: 384)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_width", scope: !327, file: !4, line: 164, baseType: !188, size: 32, offset: 416)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_height", scope: !327, file: !4, line: 165, baseType: !188, size: 32, offset: 448)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_blocks", scope: !327, file: !4, line: 166, baseType: !188, size: 32, offset: 480)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_sample_width", scope: !327, file: !4, line: 167, baseType: !188, size: 32, offset: 512)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "last_col_width", scope: !327, file: !4, line: 168, baseType: !188, size: 32, offset: 544)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "last_row_height", scope: !327, file: !4, line: 169, baseType: !188, size: 32, offset: 576)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "quant_table", scope: !327, file: !4, line: 175, baseType: !349, size: 64, offset: 640)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "JQUANT_TBL", file: !4, line: 95, baseType: !351)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 83, size: 1056, elements: !352)
!352 = !{!353, !357}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "quantval", scope: !351, file: !4, line: 88, baseType: !354, size: 1024)
!354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 1024, elements: !217)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !202, line: 147, baseType: !356)
!356 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !351, file: !4, line: 94, baseType: !226, size: 32, offset: 1024)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "dct_table", scope: !327, file: !4, line: 178, baseType: !187, size: 64, offset: 704)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_ptrs", scope: !164, file: !4, line: 289, baseType: !360, size: 256, offset: 704)
!360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, size: 256, elements: !361)
!361 = !{!362}
!362 = !DISubrange(count: 4)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "dc_huff_tbl_ptrs", scope: !164, file: !4, line: 292, baseType: !364, size: 256, offset: 960)
!364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 256, elements: !361)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "JHUFF_TBL", file: !4, line: 111, baseType: !367)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 100, size: 2240, elements: !368)
!368 = !{!369, !374, !378}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !367, file: !4, line: 102, baseType: !370, size: 136)
!370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 136, elements: !372)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT8", file: !202, line: 135, baseType: !203)
!372 = !{!373}
!373 = !DISubrange(count: 17)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "huffval", scope: !367, file: !4, line: 104, baseType: !375, size: 2048, offset: 136)
!375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 2048, elements: !376)
!376 = !{!377}
!377 = !DISubrange(count: 256)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !367, file: !4, line: 110, baseType: !226, size: 32, offset: 2208)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "ac_huff_tbl_ptrs", scope: !164, file: !4, line: 293, baseType: !364, size: 256, offset: 1216)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_L", scope: !164, file: !4, line: 296, baseType: !381, size: 128, offset: 1472)
!381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 128, elements: !382)
!382 = !{!383}
!383 = !DISubrange(count: 16)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_U", scope: !164, file: !4, line: 297, baseType: !381, size: 128, offset: 1600)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "arith_ac_K", scope: !164, file: !4, line: 298, baseType: !381, size: 128, offset: 1728)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "num_scans", scope: !164, file: !4, line: 300, baseType: !188, size: 32, offset: 1856)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "scan_info", scope: !164, file: !4, line: 301, baseType: !388, size: 64, offset: 1920)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !390)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_scan_info", file: !4, line: 189, baseType: !391)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 184, size: 288, elements: !392)
!392 = !{!393, !394, !396, !397, !398, !399}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "comps_in_scan", scope: !391, file: !4, line: 185, baseType: !188, size: 32)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "component_index", scope: !391, file: !4, line: 186, baseType: !395, size: 128, offset: 32)
!395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 128, elements: !361)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "Ss", scope: !391, file: !4, line: 187, baseType: !188, size: 32, offset: 160)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "Se", scope: !391, file: !4, line: 187, baseType: !188, size: 32, offset: 192)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "Ah", scope: !391, file: !4, line: 188, baseType: !188, size: 32, offset: 224)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "Al", scope: !391, file: !4, line: 188, baseType: !188, size: 32, offset: 256)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "raw_data_in", scope: !164, file: !4, line: 307, baseType: !226, size: 32, offset: 1984)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "arith_code", scope: !164, file: !4, line: 308, baseType: !226, size: 32, offset: 2016)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_coding", scope: !164, file: !4, line: 309, baseType: !226, size: 32, offset: 2048)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "CCIR601_sampling", scope: !164, file: !4, line: 310, baseType: !226, size: 32, offset: 2080)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "smoothing_factor", scope: !164, file: !4, line: 311, baseType: !188, size: 32, offset: 2112)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "dct_method", scope: !164, file: !4, line: 312, baseType: !406, size: 32, offset: 2144)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_DCT_METHOD", file: !4, line: 209, baseType: !13)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "restart_interval", scope: !164, file: !4, line: 319, baseType: !5, size: 32, offset: 2176)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "restart_in_rows", scope: !164, file: !4, line: 320, baseType: !188, size: 32, offset: 2208)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "write_JFIF_header", scope: !164, file: !4, line: 324, baseType: !226, size: 32, offset: 2240)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "density_unit", scope: !164, file: !4, line: 329, baseType: !371, size: 8, offset: 2272)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "X_density", scope: !164, file: !4, line: 330, baseType: !355, size: 16, offset: 2288)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "Y_density", scope: !164, file: !4, line: 331, baseType: !355, size: 16, offset: 2304)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "write_Adobe_marker", scope: !164, file: !4, line: 332, baseType: !226, size: 32, offset: 2336)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "next_scanline", scope: !164, file: !4, line: 339, baseType: !204, size: 32, offset: 2368)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "progressive_mode", scope: !164, file: !4, line: 348, baseType: !226, size: 32, offset: 2400)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "max_h_samp_factor", scope: !164, file: !4, line: 349, baseType: !188, size: 32, offset: 2432)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "max_v_samp_factor", scope: !164, file: !4, line: 350, baseType: !188, size: 32, offset: 2464)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "total_iMCU_rows", scope: !164, file: !4, line: 352, baseType: !204, size: 32, offset: 2496)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "comps_in_scan", scope: !164, file: !4, line: 363, baseType: !188, size: 32, offset: 2528)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "cur_comp_info", scope: !164, file: !4, line: 364, baseType: !421, size: 256, offset: 2560)
!421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 256, elements: !361)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "MCUs_per_row", scope: !164, file: !4, line: 367, baseType: !204, size: 32, offset: 2816)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_rows_in_scan", scope: !164, file: !4, line: 368, baseType: !204, size: 32, offset: 2848)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_in_MCU", scope: !164, file: !4, line: 370, baseType: !188, size: 32, offset: 2880)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_membership", scope: !164, file: !4, line: 371, baseType: !426, size: 320, offset: 2912)
!426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 320, elements: !427)
!427 = !{!428}
!428 = !DISubrange(count: 10)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "Ss", scope: !164, file: !4, line: 375, baseType: !188, size: 32, offset: 3232)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "Se", scope: !164, file: !4, line: 375, baseType: !188, size: 32, offset: 3264)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "Ah", scope: !164, file: !4, line: 375, baseType: !188, size: 32, offset: 3296)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "Al", scope: !164, file: !4, line: 375, baseType: !188, size: 32, offset: 3328)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !164, file: !4, line: 380, baseType: !434, size: 64, offset: 3392)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_comp_master", file: !19, line: 45, size: 256, elements: !436)
!436 = !{!437, !438, !439, !440, !441}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_for_pass", scope: !435, file: !19, line: 46, baseType: !306, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "pass_startup", scope: !435, file: !19, line: 47, baseType: !306, size: 64, offset: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "finish_pass", scope: !435, file: !19, line: 48, baseType: !306, size: 64, offset: 128)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "call_pass_startup", scope: !435, file: !19, line: 51, baseType: !226, size: 32, offset: 192)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "is_last_pass", scope: !435, file: !19, line: 52, baseType: !226, size: 32, offset: 224)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "main", scope: !164, file: !4, line: 381, baseType: !443, size: 64, offset: 3456)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "prep", scope: !164, file: !4, line: 382, baseType: !445, size: 64, offset: 3520)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_c_prep_controller", file: !19, line: 64, size: 128, elements: !447)
!447 = !{!448, !449}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !446, file: !19, line: 65, baseType: !159, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "pre_process_data", scope: !446, file: !19, line: 66, baseType: !450, size: 64, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{null, !162, !197, !453, !204, !454, !453, !204}
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPIMAGE", file: !4, line: 68, baseType: !455)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "coef", scope: !164, file: !4, line: 383, baseType: !457, size: 64, offset: 3584)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_c_coef_controller", file: !19, line: 76, size: 128, elements: !459)
!459 = !{!460, !461}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !458, file: !19, line: 77, baseType: !159, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "compress_data", scope: !458, file: !19, line: 78, baseType: !462, size: 64, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{!226, !162, !454}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "marker", scope: !164, file: !4, line: 384, baseType: !466, size: 64, offset: 3648)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_marker_writer", file: !19, line: 120, size: 384, elements: !468)
!468 = !{!469, !475, !476, !477, !478, !479}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "write_any_marker", scope: !467, file: !19, line: 123, baseType: !470, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{null, !162, !188, !473, !5}
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !303)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_header", scope: !467, file: !19, line: 125, baseType: !306, size: 64, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "write_frame_header", scope: !467, file: !19, line: 126, baseType: !306, size: 64, offset: 128)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "write_scan_header", scope: !467, file: !19, line: 127, baseType: !306, size: 64, offset: 192)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_trailer", scope: !467, file: !19, line: 128, baseType: !306, size: 64, offset: 256)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "write_tables_only", scope: !467, file: !19, line: 129, baseType: !306, size: 64, offset: 320)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "cconvert", scope: !164, file: !4, line: 385, baseType: !481, size: 64, offset: 3712)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_color_converter", file: !19, line: 83, size: 128, elements: !483)
!483 = !{!484, !485}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !482, file: !19, line: 84, baseType: !306, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "color_convert", scope: !482, file: !19, line: 85, baseType: !486, size: 64, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{null, !162, !197, !454, !204, !188}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "downsample", scope: !164, file: !4, line: 386, baseType: !490, size: 64, offset: 3776)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_downsampler", file: !19, line: 91, size: 192, elements: !492)
!492 = !{!493, !494, !498}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !491, file: !19, line: 92, baseType: !306, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "downsample", scope: !491, file: !19, line: 93, baseType: !495, size: 64, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{null, !162, !454, !204, !454, !204}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "need_context_rows", scope: !491, file: !19, line: 98, baseType: !226, size: 32, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "fdct", scope: !164, file: !4, line: 387, baseType: !500, size: 64, offset: 3840)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_forward_dct", file: !19, line: 102, size: 128, elements: !502)
!502 = !{!503, !504}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !501, file: !19, line: 103, baseType: !306, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "forward_DCT", scope: !501, file: !19, line: 105, baseType: !505, size: 64, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DISubroutineType(types: !507)
!507 = !{null, !162, !325, !197, !211, !204, !204, !204}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "entropy", scope: !164, file: !4, line: 388, baseType: !509, size: 64, offset: 3904)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_entropy_encoder", file: !19, line: 113, size: 192, elements: !511)
!511 = !{!512, !516, !520}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !510, file: !19, line: 114, baseType: !513, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DISubroutineType(types: !515)
!515 = !{null, !162, !226}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "encode_mcu", scope: !510, file: !19, line: 115, baseType: !517, size: 64, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DISubroutineType(types: !519)
!519 = !{!226, !162, !210}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "finish_pass", scope: !510, file: !19, line: 116, baseType: !306, size: 64, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_BUF_MODE", file: !19, line: 22, baseType: !18)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "process_data", scope: !156, file: !19, line: 58, baseType: !523, size: 64, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DISubroutineType(types: !525)
!525 = !{null, !162, !197, !453, !204}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "cur_iMCU_row", scope: !153, file: !1, line: 31, baseType: !204, size: 32, offset: 128)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "rowgroup_ctr", scope: !153, file: !1, line: 32, baseType: !204, size: 32, offset: 160)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "suspended", scope: !153, file: !1, line: 33, baseType: !226, size: 32, offset: 192)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "pass_mode", scope: !153, file: !1, line: 34, baseType: !521, size: 32, offset: 224)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !153, file: !1, line: 40, baseType: !531, size: 640, offset: 256)
!531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 640, elements: !427)
!532 = !{i32 7, !"Dwarf Version", i32 5}
!533 = !{i32 2, !"Debug Info Version", i32 3}
!534 = !{i32 1, !"wchar_size", i32 4}
!535 = !{i32 8, !"PIC Level", i32 2}
!536 = !{i32 7, !"PIE Level", i32 2}
!537 = !{i32 7, !"uwtable", i32 2}
!538 = !{i32 7, !"frame-pointer", i32 2}
!539 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!540 = distinct !DISubprogram(name: "jinit_c_main_controller", scope: !1, file: !1, line: 245, type: !514, scopeLine: 246, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !541)
!541 = !{}
!542 = !DILocalVariable(name: "cinfo", arg: 1, scope: !540, file: !1, line: 245, type: !162)
!543 = !DILocation(line: 245, column: 41, scope: !540)
!544 = !DILocalVariable(name: "need_full_buffer", arg: 2, scope: !540, file: !1, line: 245, type: !226)
!545 = !DILocation(line: 245, column: 56, scope: !540)
!546 = !DILocalVariable(name: "the_main", scope: !540, file: !1, line: 247, type: !150)
!547 = !DILocation(line: 247, column: 15, scope: !540)
!548 = !DILocalVariable(name: "ci", scope: !540, file: !1, line: 248, type: !188)
!549 = !DILocation(line: 248, column: 7, scope: !540)
!550 = !DILocalVariable(name: "compptr", scope: !540, file: !1, line: 249, type: !325)
!551 = !DILocation(line: 249, column: 24, scope: !540)
!552 = !DILocation(line: 252, column: 7, scope: !540)
!553 = !DILocation(line: 252, column: 14, scope: !540)
!554 = !DILocation(line: 252, column: 19, scope: !540)
!555 = !DILocation(line: 252, column: 48, scope: !540)
!556 = !DILocation(line: 252, column: 5, scope: !540)
!557 = !DILocation(line: 251, column: 12, scope: !540)
!558 = !DILocation(line: 254, column: 51, scope: !540)
!559 = !DILocation(line: 254, column: 3, scope: !540)
!560 = !DILocation(line: 254, column: 10, scope: !540)
!561 = !DILocation(line: 254, column: 15, scope: !540)
!562 = !DILocation(line: 255, column: 3, scope: !540)
!563 = !DILocation(line: 255, column: 13, scope: !540)
!564 = !DILocation(line: 255, column: 17, scope: !540)
!565 = !DILocation(line: 255, column: 28, scope: !540)
!566 = !DILocation(line: 258, column: 7, scope: !567)
!567 = distinct !DILexicalBlock(scope: !540, file: !1, line: 258, column: 7)
!568 = !DILocation(line: 258, column: 14, scope: !567)
!569 = !DILocation(line: 259, column: 5, scope: !567)
!570 = !DILocation(line: 264, column: 7, scope: !571)
!571 = distinct !DILexicalBlock(scope: !540, file: !1, line: 264, column: 7)
!572 = !DILocation(line: 278, column: 5, scope: !573)
!573 = distinct !DILexicalBlock(scope: !571, file: !1, line: 264, column: 25)
!574 = !DILocation(line: 280, column: 3, scope: !573)
!575 = !DILocation(line: 285, column: 13, scope: !576)
!576 = distinct !DILexicalBlock(scope: !577, file: !1, line: 285, column: 5)
!577 = distinct !DILexicalBlock(scope: !571, file: !1, line: 280, column: 10)
!578 = !DILocation(line: 285, column: 28, scope: !576)
!579 = !DILocation(line: 285, column: 35, scope: !576)
!580 = !DILocation(line: 285, column: 26, scope: !576)
!581 = !DILocation(line: 285, column: 10, scope: !576)
!582 = !DILocation(line: 285, column: 46, scope: !583)
!583 = distinct !DILexicalBlock(scope: !576, file: !1, line: 285, column: 5)
!584 = !DILocation(line: 285, column: 51, scope: !583)
!585 = !DILocation(line: 285, column: 58, scope: !583)
!586 = !DILocation(line: 285, column: 49, scope: !583)
!587 = !DILocation(line: 285, column: 5, scope: !576)
!588 = !DILocation(line: 287, column: 32, scope: !589)
!589 = distinct !DILexicalBlock(scope: !583, file: !1, line: 286, column: 20)
!590 = !DILocation(line: 287, column: 39, scope: !589)
!591 = !DILocation(line: 287, column: 44, scope: !589)
!592 = !DILocation(line: 288, column: 18, scope: !589)
!593 = !DILocation(line: 289, column: 3, scope: !589)
!594 = !DILocation(line: 289, column: 12, scope: !589)
!595 = !DILocation(line: 289, column: 28, scope: !589)
!596 = !DILocation(line: 290, column: 17, scope: !589)
!597 = !DILocation(line: 290, column: 26, scope: !589)
!598 = !DILocation(line: 290, column: 40, scope: !589)
!599 = !DILocation(line: 287, column: 30, scope: !589)
!600 = !DILocation(line: 287, column: 7, scope: !589)
!601 = !DILocation(line: 287, column: 17, scope: !589)
!602 = !DILocation(line: 287, column: 24, scope: !589)
!603 = !DILocation(line: 287, column: 28, scope: !589)
!604 = !DILocation(line: 291, column: 5, scope: !589)
!605 = !DILocation(line: 286, column: 5, scope: !583)
!606 = !DILocation(line: 286, column: 16, scope: !583)
!607 = !DILocation(line: 285, column: 5, scope: !583)
!608 = distinct !{!608, !587, !609, !610}
!609 = !DILocation(line: 291, column: 5, scope: !576)
!610 = !{!"llvm.loop.mustprogress"}
!611 = !DILocation(line: 293, column: 1, scope: !540)
!612 = distinct !DISubprogram(name: "start_pass_main", scope: !1, file: !1, line: 69, type: !160, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !541)
!613 = !DILocalVariable(name: "cinfo", arg: 1, scope: !612, file: !1, line: 69, type: !162)
!614 = !DILocation(line: 69, column: 33, scope: !612)
!615 = !DILocalVariable(name: "pass_mode", arg: 2, scope: !612, file: !1, line: 69, type: !521)
!616 = !DILocation(line: 69, column: 51, scope: !612)
!617 = !DILocalVariable(name: "the_main", scope: !612, file: !1, line: 71, type: !150)
!618 = !DILocation(line: 71, column: 15, scope: !612)
!619 = !DILocation(line: 71, column: 40, scope: !612)
!620 = !DILocation(line: 71, column: 47, scope: !612)
!621 = !DILocation(line: 74, column: 7, scope: !622)
!622 = distinct !DILexicalBlock(scope: !612, file: !1, line: 74, column: 7)
!623 = !DILocation(line: 74, column: 14, scope: !622)
!624 = !DILocation(line: 75, column: 5, scope: !622)
!625 = !DILocation(line: 77, column: 3, scope: !612)
!626 = !DILocation(line: 77, column: 13, scope: !612)
!627 = !DILocation(line: 77, column: 26, scope: !612)
!628 = !DILocation(line: 78, column: 3, scope: !612)
!629 = !DILocation(line: 78, column: 13, scope: !612)
!630 = !DILocation(line: 78, column: 26, scope: !612)
!631 = !DILocation(line: 79, column: 3, scope: !612)
!632 = !DILocation(line: 79, column: 13, scope: !612)
!633 = !DILocation(line: 79, column: 23, scope: !612)
!634 = !DILocation(line: 80, column: 25, scope: !612)
!635 = !DILocation(line: 80, column: 3, scope: !612)
!636 = !DILocation(line: 80, column: 13, scope: !612)
!637 = !DILocation(line: 80, column: 23, scope: !612)
!638 = !DILocation(line: 82, column: 11, scope: !612)
!639 = !DILocation(line: 82, column: 3, scope: !612)
!640 = !DILocation(line: 88, column: 5, scope: !641)
!641 = distinct !DILexicalBlock(scope: !612, file: !1, line: 82, column: 22)
!642 = !DILocation(line: 88, column: 15, scope: !641)
!643 = !DILocation(line: 88, column: 19, scope: !641)
!644 = !DILocation(line: 88, column: 32, scope: !641)
!645 = !DILocation(line: 89, column: 5, scope: !641)
!646 = !DILocation(line: 100, column: 5, scope: !641)
!647 = !DILocation(line: 101, column: 5, scope: !641)
!648 = !DILocation(line: 103, column: 1, scope: !612)
!649 = distinct !DISubprogram(name: "process_data_simple_main", scope: !1, file: !1, line: 113, type: !524, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !541)
!650 = !DILocalVariable(name: "cinfo", arg: 1, scope: !649, file: !1, line: 113, type: !162)
!651 = !DILocation(line: 113, column: 42, scope: !649)
!652 = !DILocalVariable(name: "input_buf", arg: 2, scope: !649, file: !1, line: 114, type: !197)
!653 = !DILocation(line: 114, column: 17, scope: !649)
!654 = !DILocalVariable(name: "in_row_ctr", arg: 3, scope: !649, file: !1, line: 114, type: !453)
!655 = !DILocation(line: 114, column: 40, scope: !649)
!656 = !DILocalVariable(name: "in_rows_avail", arg: 4, scope: !649, file: !1, line: 115, type: !204)
!657 = !DILocation(line: 115, column: 17, scope: !649)
!658 = !DILocalVariable(name: "the_main", scope: !649, file: !1, line: 117, type: !150)
!659 = !DILocation(line: 117, column: 15, scope: !649)
!660 = !DILocation(line: 117, column: 40, scope: !649)
!661 = !DILocation(line: 117, column: 47, scope: !649)
!662 = !DILocation(line: 119, column: 3, scope: !649)
!663 = !DILocation(line: 119, column: 10, scope: !649)
!664 = !DILocation(line: 119, column: 20, scope: !649)
!665 = !DILocation(line: 119, column: 35, scope: !649)
!666 = !DILocation(line: 119, column: 42, scope: !649)
!667 = !DILocation(line: 119, column: 33, scope: !649)
!668 = !DILocation(line: 121, column: 9, scope: !669)
!669 = distinct !DILexicalBlock(scope: !670, file: !1, line: 121, column: 9)
!670 = distinct !DILexicalBlock(scope: !649, file: !1, line: 119, column: 59)
!671 = !DILocation(line: 121, column: 19, scope: !669)
!672 = !DILocation(line: 121, column: 32, scope: !669)
!673 = !DILocation(line: 122, column: 9, scope: !669)
!674 = !DILocation(line: 122, column: 16, scope: !669)
!675 = !DILocation(line: 122, column: 22, scope: !669)
!676 = !DILocation(line: 122, column: 41, scope: !669)
!677 = !DILocation(line: 123, column: 6, scope: !669)
!678 = !DILocation(line: 123, column: 17, scope: !669)
!679 = !DILocation(line: 123, column: 29, scope: !669)
!680 = !DILocation(line: 124, column: 6, scope: !669)
!681 = !DILocation(line: 124, column: 16, scope: !669)
!682 = !DILocation(line: 124, column: 25, scope: !669)
!683 = !DILocation(line: 124, column: 35, scope: !669)
!684 = !DILocation(line: 122, column: 7, scope: !669)
!685 = !DILocation(line: 131, column: 9, scope: !686)
!686 = distinct !DILexicalBlock(scope: !670, file: !1, line: 131, column: 9)
!687 = !DILocation(line: 131, column: 19, scope: !686)
!688 = !DILocation(line: 131, column: 32, scope: !686)
!689 = !DILocation(line: 132, column: 7, scope: !686)
!690 = !DILocation(line: 135, column: 13, scope: !691)
!691 = distinct !DILexicalBlock(scope: !670, file: !1, line: 135, column: 9)
!692 = !DILocation(line: 135, column: 20, scope: !691)
!693 = !DILocation(line: 135, column: 26, scope: !691)
!694 = !DILocation(line: 135, column: 42, scope: !691)
!695 = !DILocation(line: 135, column: 49, scope: !691)
!696 = !DILocation(line: 135, column: 59, scope: !691)
!697 = !DILocation(line: 135, column: 11, scope: !691)
!698 = !DILocation(line: 135, column: 9, scope: !691)
!699 = !DILocation(line: 142, column: 13, scope: !700)
!700 = distinct !DILexicalBlock(scope: !701, file: !1, line: 142, column: 11)
!701 = distinct !DILexicalBlock(scope: !691, file: !1, line: 135, column: 68)
!702 = !DILocation(line: 142, column: 23, scope: !700)
!703 = !DILocation(line: 142, column: 11, scope: !700)
!704 = !DILocation(line: 143, column: 4, scope: !705)
!705 = distinct !DILexicalBlock(scope: !700, file: !1, line: 142, column: 34)
!706 = !DILocation(line: 143, column: 15, scope: !705)
!707 = !DILocation(line: 144, column: 2, scope: !705)
!708 = !DILocation(line: 144, column: 12, scope: !705)
!709 = !DILocation(line: 144, column: 22, scope: !705)
!710 = !DILocation(line: 145, column: 7, scope: !705)
!711 = !DILocation(line: 146, column: 7, scope: !701)
!712 = !DILocation(line: 151, column: 9, scope: !713)
!713 = distinct !DILexicalBlock(scope: !670, file: !1, line: 151, column: 9)
!714 = !DILocation(line: 151, column: 19, scope: !713)
!715 = !DILocation(line: 152, column: 9, scope: !716)
!716 = distinct !DILexicalBlock(scope: !713, file: !1, line: 151, column: 30)
!717 = !DILocation(line: 152, column: 20, scope: !716)
!718 = !DILocation(line: 153, column: 7, scope: !716)
!719 = !DILocation(line: 153, column: 17, scope: !716)
!720 = !DILocation(line: 153, column: 27, scope: !716)
!721 = !DILocation(line: 154, column: 5, scope: !716)
!722 = !DILocation(line: 155, column: 5, scope: !670)
!723 = !DILocation(line: 155, column: 15, scope: !670)
!724 = !DILocation(line: 155, column: 28, scope: !670)
!725 = !DILocation(line: 156, column: 5, scope: !670)
!726 = !DILocation(line: 156, column: 15, scope: !670)
!727 = !DILocation(line: 156, column: 27, scope: !670)
!728 = distinct !{!728, !662, !729, !610}
!729 = !DILocation(line: 157, column: 3, scope: !649)
!730 = !DILocation(line: 158, column: 1, scope: !649)
