; ModuleID = 'cBench/consumer_jpeg_c/src/jdatadst.c'
source_filename = "cBench/consumer_jpeg_c/src/jdatadst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.my_destination_mgr = type { %struct.jpeg_destination_mgr, ptr, ptr }
%struct.jpeg_destination_mgr = type { ptr, i64, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_stdio_dest(ptr noundef %0, ptr noundef %1) #0 !dbg !513 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !517, !DIExpression(), !518)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !519, !DIExpression(), !520)
    #dbg_declare(ptr %5, !521, !DIExpression(), !522)
  %6 = load ptr, ptr %3, align 8, !dbg !523
  %7 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %6, i32 0, i32 5, !dbg !525
  %8 = load ptr, ptr %7, align 8, !dbg !525
  %9 = icmp eq ptr %8, null, !dbg !526
  br i1 %9, label %10, label %20, !dbg !526

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 8, !dbg !527
  %12 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %11, i32 0, i32 1, !dbg !529
  %13 = load ptr, ptr %12, align 8, !dbg !529
  %14 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %13, i32 0, i32 0, !dbg !530
  %15 = load ptr, ptr %14, align 8, !dbg !530
  %16 = load ptr, ptr %3, align 8, !dbg !531
  %17 = call ptr %15(ptr noundef %16, i32 noundef 0, i64 noundef 56), !dbg !532
  %18 = load ptr, ptr %3, align 8, !dbg !533
  %19 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %18, i32 0, i32 5, !dbg !534
  store ptr %17, ptr %19, align 8, !dbg !535
  br label %20, !dbg !536

20:                                               ; preds = %10, %2
  %21 = load ptr, ptr %3, align 8, !dbg !537
  %22 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %21, i32 0, i32 5, !dbg !538
  %23 = load ptr, ptr %22, align 8, !dbg !538
  store ptr %23, ptr %5, align 8, !dbg !539
  %24 = load ptr, ptr %5, align 8, !dbg !540
  %25 = getelementptr inbounds nuw %struct.my_destination_mgr, ptr %24, i32 0, i32 0, !dbg !541
  %26 = getelementptr inbounds nuw %struct.jpeg_destination_mgr, ptr %25, i32 0, i32 2, !dbg !542
  store ptr @init_destination, ptr %26, align 8, !dbg !543
  %27 = load ptr, ptr %5, align 8, !dbg !544
  %28 = getelementptr inbounds nuw %struct.my_destination_mgr, ptr %27, i32 0, i32 0, !dbg !545
  %29 = getelementptr inbounds nuw %struct.jpeg_destination_mgr, ptr %28, i32 0, i32 3, !dbg !546
  store ptr @empty_output_buffer, ptr %29, align 8, !dbg !547
  %30 = load ptr, ptr %5, align 8, !dbg !548
  %31 = getelementptr inbounds nuw %struct.my_destination_mgr, ptr %30, i32 0, i32 0, !dbg !549
  %32 = getelementptr inbounds nuw %struct.jpeg_destination_mgr, ptr %31, i32 0, i32 4, !dbg !550
  store ptr @term_destination, ptr %32, align 8, !dbg !551
  %33 = load ptr, ptr %4, align 8, !dbg !552
  %34 = load ptr, ptr %5, align 8, !dbg !553
  %35 = getelementptr inbounds nuw %struct.my_destination_mgr, ptr %34, i32 0, i32 1, !dbg !554
  store ptr %33, ptr %35, align 8, !dbg !555
  ret void, !dbg !556
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_destination(ptr noundef %0) #0 !dbg !557 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !558, !DIExpression(), !559)
    #dbg_declare(ptr %3, !560, !DIExpression(), !561)
  %4 = load ptr, ptr %2, align 8, !dbg !562
  %5 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %4, i32 0, i32 5, !dbg !563
  %6 = load ptr, ptr %5, align 8, !dbg !563
  store ptr %6, ptr %3, align 8, !dbg !561
  %7 = load ptr, ptr %2, align 8, !dbg !564
  %8 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %7, i32 0, i32 1, !dbg !565
  %9 = load ptr, ptr %8, align 8, !dbg !565
  %10 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %9, i32 0, i32 0, !dbg !566
  %11 = load ptr, ptr %10, align 8, !dbg !566
  %12 = load ptr, ptr %2, align 8, !dbg !567
  %13 = call ptr %11(ptr noundef %12, i32 noundef 1, i64 noundef 4096), !dbg !568
  %14 = load ptr, ptr %3, align 8, !dbg !569
  %15 = getelementptr inbounds nuw %struct.my_destination_mgr, ptr %14, i32 0, i32 2, !dbg !570
  store ptr %13, ptr %15, align 8, !dbg !571
  %16 = load ptr, ptr %3, align 8, !dbg !572
  %17 = getelementptr inbounds nuw %struct.my_destination_mgr, ptr %16, i32 0, i32 2, !dbg !573
  %18 = load ptr, ptr %17, align 8, !dbg !573
  %19 = load ptr, ptr %3, align 8, !dbg !574
  %20 = getelementptr inbounds nuw %struct.my_destination_mgr, ptr %19, i32 0, i32 0, !dbg !575
  %21 = getelementptr inbounds nuw %struct.jpeg_destination_mgr, ptr %20, i32 0, i32 0, !dbg !576
  store ptr %18, ptr %21, align 8, !dbg !577
  %22 = load ptr, ptr %3, align 8, !dbg !578
  %23 = getelementptr inbounds nuw %struct.my_destination_mgr, ptr %22, i32 0, i32 0, !dbg !579
  %24 = getelementptr inbounds nuw %struct.jpeg_destination_mgr, ptr %23, i32 0, i32 1, !dbg !580
  store i64 4096, ptr %24, align 8, !dbg !581
  ret void, !dbg !582
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @empty_output_buffer(ptr noundef %0) #0 !dbg !583 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !584, !DIExpression(), !585)
    #dbg_declare(ptr %3, !586, !DIExpression(), !587)
  %4 = load ptr, ptr %2, align 8, !dbg !588
  %5 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %4, i32 0, i32 5, !dbg !589
  %6 = load ptr, ptr %5, align 8, !dbg !589
  store ptr %6, ptr %3, align 8, !dbg !587
  %7 = load ptr, ptr %3, align 8, !dbg !590
  %8 = getelementptr inbounds nuw %struct.my_destination_mgr, ptr %7, i32 0, i32 2, !dbg !590
  %9 = load ptr, ptr %8, align 8, !dbg !590
  %10 = load ptr, ptr %3, align 8, !dbg !590
  %11 = getelementptr inbounds nuw %struct.my_destination_mgr, ptr %10, i32 0, i32 1, !dbg !590
  %12 = load ptr, ptr %11, align 8, !dbg !590
  %13 = call i64 @fwrite(ptr noundef %9, i64 noundef 1, i64 noundef 4096, ptr noundef %12), !dbg !590
  %14 = icmp ne i64 %13, 4096, !dbg !592
  br i1 %14, label %15, label %26, !dbg !592

15:                                               ; preds = %1
  %16 = load ptr, ptr %2, align 8, !dbg !593
  %17 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %16, i32 0, i32 0, !dbg !593
  %18 = load ptr, ptr %17, align 8, !dbg !593
  %19 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %18, i32 0, i32 5, !dbg !593
  store i32 36, ptr %19, align 8, !dbg !593
  %20 = load ptr, ptr %2, align 8, !dbg !593
  %21 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %20, i32 0, i32 0, !dbg !593
  %22 = load ptr, ptr %21, align 8, !dbg !593
  %23 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %22, i32 0, i32 0, !dbg !593
  %24 = load ptr, ptr %23, align 8, !dbg !593
  %25 = load ptr, ptr %2, align 8, !dbg !593
  call void %24(ptr noundef %25), !dbg !593
  br label %26, !dbg !593

26:                                               ; preds = %15, %1
  %27 = load ptr, ptr %3, align 8, !dbg !594
  %28 = getelementptr inbounds nuw %struct.my_destination_mgr, ptr %27, i32 0, i32 2, !dbg !595
  %29 = load ptr, ptr %28, align 8, !dbg !595
  %30 = load ptr, ptr %3, align 8, !dbg !596
  %31 = getelementptr inbounds nuw %struct.my_destination_mgr, ptr %30, i32 0, i32 0, !dbg !597
  %32 = getelementptr inbounds nuw %struct.jpeg_destination_mgr, ptr %31, i32 0, i32 0, !dbg !598
  store ptr %29, ptr %32, align 8, !dbg !599
  %33 = load ptr, ptr %3, align 8, !dbg !600
  %34 = getelementptr inbounds nuw %struct.my_destination_mgr, ptr %33, i32 0, i32 0, !dbg !601
  %35 = getelementptr inbounds nuw %struct.jpeg_destination_mgr, ptr %34, i32 0, i32 1, !dbg !602
  store i64 4096, ptr %35, align 8, !dbg !603
  ret i32 1, !dbg !604
}

; Function Attrs: noinline nounwind uwtable
define internal void @term_destination(ptr noundef %0) #0 !dbg !605 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !606, !DIExpression(), !607)
    #dbg_declare(ptr %3, !608, !DIExpression(), !609)
  %5 = load ptr, ptr %2, align 8, !dbg !610
  %6 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %5, i32 0, i32 5, !dbg !611
  %7 = load ptr, ptr %6, align 8, !dbg !611
  store ptr %7, ptr %3, align 8, !dbg !609
    #dbg_declare(ptr %4, !612, !DIExpression(), !613)
  %8 = load ptr, ptr %3, align 8, !dbg !614
  %9 = getelementptr inbounds nuw %struct.my_destination_mgr, ptr %8, i32 0, i32 0, !dbg !615
  %10 = getelementptr inbounds nuw %struct.jpeg_destination_mgr, ptr %9, i32 0, i32 1, !dbg !616
  %11 = load i64, ptr %10, align 8, !dbg !616
  %12 = sub i64 4096, %11, !dbg !617
  store i64 %12, ptr %4, align 8, !dbg !613
  %13 = load i64, ptr %4, align 8, !dbg !618
  %14 = icmp ugt i64 %13, 0, !dbg !620
  br i1 %14, label %15, label %38, !dbg !620

15:                                               ; preds = %1
  %16 = load ptr, ptr %3, align 8, !dbg !621
  %17 = getelementptr inbounds nuw %struct.my_destination_mgr, ptr %16, i32 0, i32 2, !dbg !621
  %18 = load ptr, ptr %17, align 8, !dbg !621
  %19 = load i64, ptr %4, align 8, !dbg !621
  %20 = load ptr, ptr %3, align 8, !dbg !621
  %21 = getelementptr inbounds nuw %struct.my_destination_mgr, ptr %20, i32 0, i32 1, !dbg !621
  %22 = load ptr, ptr %21, align 8, !dbg !621
  %23 = call i64 @fwrite(ptr noundef %18, i64 noundef 1, i64 noundef %19, ptr noundef %22), !dbg !621
  %24 = load i64, ptr %4, align 8, !dbg !624
  %25 = icmp ne i64 %23, %24, !dbg !625
  br i1 %25, label %26, label %37, !dbg !625

26:                                               ; preds = %15
  %27 = load ptr, ptr %2, align 8, !dbg !626
  %28 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %27, i32 0, i32 0, !dbg !626
  %29 = load ptr, ptr %28, align 8, !dbg !626
  %30 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %29, i32 0, i32 5, !dbg !626
  store i32 36, ptr %30, align 8, !dbg !626
  %31 = load ptr, ptr %2, align 8, !dbg !626
  %32 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %31, i32 0, i32 0, !dbg !626
  %33 = load ptr, ptr %32, align 8, !dbg !626
  %34 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %33, i32 0, i32 0, !dbg !626
  %35 = load ptr, ptr %34, align 8, !dbg !626
  %36 = load ptr, ptr %2, align 8, !dbg !626
  call void %35(ptr noundef %36), !dbg !626
  br label %37, !dbg !626

37:                                               ; preds = %26, %15
  br label %38, !dbg !627

38:                                               ; preds = %37, %1
  %39 = load ptr, ptr %3, align 8, !dbg !628
  %40 = getelementptr inbounds nuw %struct.my_destination_mgr, ptr %39, i32 0, i32 1, !dbg !629
  %41 = load ptr, ptr %40, align 8, !dbg !629
  %42 = call i32 @fflush(ptr noundef %41), !dbg !630
  %43 = load ptr, ptr %3, align 8, !dbg !631
  %44 = getelementptr inbounds nuw %struct.my_destination_mgr, ptr %43, i32 0, i32 1, !dbg !633
  %45 = load ptr, ptr %44, align 8, !dbg !633
  %46 = call i32 @ferror(ptr noundef %45) #3, !dbg !634
  %47 = icmp ne i32 %46, 0, !dbg !634
  br i1 %47, label %48, label %59, !dbg !634

48:                                               ; preds = %38
  %49 = load ptr, ptr %2, align 8, !dbg !635
  %50 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %49, i32 0, i32 0, !dbg !635
  %51 = load ptr, ptr %50, align 8, !dbg !635
  %52 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %51, i32 0, i32 5, !dbg !635
  store i32 36, ptr %52, align 8, !dbg !635
  %53 = load ptr, ptr %2, align 8, !dbg !635
  %54 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %53, i32 0, i32 0, !dbg !635
  %55 = load ptr, ptr %54, align 8, !dbg !635
  %56 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %55, i32 0, i32 0, !dbg !635
  %57 = load ptr, ptr %56, align 8, !dbg !635
  %58 = load ptr, ptr %2, align 8, !dbg !635
  call void %57(ptr noundef %58), !dbg !635
  br label %59, !dbg !635

59:                                               ; preds = %48, %38
  ret void, !dbg !636
}

declare i64 @fwrite(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

declare i32 @fflush(ptr noundef) #1

; Function Attrs: nounwind
declare i32 @ferror(ptr noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!505, !506, !507, !508, !509, !510, !511}
!llvm.ident = !{!512}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !142, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jdatadst.c", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "22e6fd5addf27184cbc19f4c435d22ec")
!2 = !{!3, !13, !18}
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
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !19, line: 33, baseType: !5, size: 32, elements: !20)
!19 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jerror.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "a232f2460ff0049c960896e323d8710b")
!20 = !{!21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141}
!21 = !DIEnumerator(name: "JMSG_NOMESSAGE", value: 0)
!22 = !DIEnumerator(name: "JERR_ARITH_NOTIMPL", value: 1)
!23 = !DIEnumerator(name: "JERR_BAD_ALIGN_TYPE", value: 2)
!24 = !DIEnumerator(name: "JERR_BAD_ALLOC_CHUNK", value: 3)
!25 = !DIEnumerator(name: "JERR_BAD_BUFFER_MODE", value: 4)
!26 = !DIEnumerator(name: "JERR_BAD_COMPONENT_ID", value: 5)
!27 = !DIEnumerator(name: "JERR_BAD_DCTSIZE", value: 6)
!28 = !DIEnumerator(name: "JERR_BAD_IN_COLORSPACE", value: 7)
!29 = !DIEnumerator(name: "JERR_BAD_J_COLORSPACE", value: 8)
!30 = !DIEnumerator(name: "JERR_BAD_LENGTH", value: 9)
!31 = !DIEnumerator(name: "JERR_BAD_LIB_VERSION", value: 10)
!32 = !DIEnumerator(name: "JERR_BAD_MCU_SIZE", value: 11)
!33 = !DIEnumerator(name: "JERR_BAD_POOL_ID", value: 12)
!34 = !DIEnumerator(name: "JERR_BAD_PRECISION", value: 13)
!35 = !DIEnumerator(name: "JERR_BAD_PROGRESSION", value: 14)
!36 = !DIEnumerator(name: "JERR_BAD_PROG_SCRIPT", value: 15)
!37 = !DIEnumerator(name: "JERR_BAD_SAMPLING", value: 16)
!38 = !DIEnumerator(name: "JERR_BAD_SCAN_SCRIPT", value: 17)
!39 = !DIEnumerator(name: "JERR_BAD_STATE", value: 18)
!40 = !DIEnumerator(name: "JERR_BAD_STRUCT_SIZE", value: 19)
!41 = !DIEnumerator(name: "JERR_BAD_VIRTUAL_ACCESS", value: 20)
!42 = !DIEnumerator(name: "JERR_BUFFER_SIZE", value: 21)
!43 = !DIEnumerator(name: "JERR_CANT_SUSPEND", value: 22)
!44 = !DIEnumerator(name: "JERR_CCIR601_NOTIMPL", value: 23)
!45 = !DIEnumerator(name: "JERR_COMPONENT_COUNT", value: 24)
!46 = !DIEnumerator(name: "JERR_CONVERSION_NOTIMPL", value: 25)
!47 = !DIEnumerator(name: "JERR_DAC_INDEX", value: 26)
!48 = !DIEnumerator(name: "JERR_DAC_VALUE", value: 27)
!49 = !DIEnumerator(name: "JERR_DHT_COUNTS", value: 28)
!50 = !DIEnumerator(name: "JERR_DHT_INDEX", value: 29)
!51 = !DIEnumerator(name: "JERR_DQT_INDEX", value: 30)
!52 = !DIEnumerator(name: "JERR_EMPTY_IMAGE", value: 31)
!53 = !DIEnumerator(name: "JERR_EMS_READ", value: 32)
!54 = !DIEnumerator(name: "JERR_EMS_WRITE", value: 33)
!55 = !DIEnumerator(name: "JERR_EOI_EXPECTED", value: 34)
!56 = !DIEnumerator(name: "JERR_FILE_READ", value: 35)
!57 = !DIEnumerator(name: "JERR_FILE_WRITE", value: 36)
!58 = !DIEnumerator(name: "JERR_FRACT_SAMPLE_NOTIMPL", value: 37)
!59 = !DIEnumerator(name: "JERR_HUFF_CLEN_OVERFLOW", value: 38)
!60 = !DIEnumerator(name: "JERR_HUFF_MISSING_CODE", value: 39)
!61 = !DIEnumerator(name: "JERR_IMAGE_TOO_BIG", value: 40)
!62 = !DIEnumerator(name: "JERR_INPUT_EMPTY", value: 41)
!63 = !DIEnumerator(name: "JERR_INPUT_EOF", value: 42)
!64 = !DIEnumerator(name: "JERR_MISMATCHED_QUANT_TABLE", value: 43)
!65 = !DIEnumerator(name: "JERR_MISSING_DATA", value: 44)
!66 = !DIEnumerator(name: "JERR_MODE_CHANGE", value: 45)
!67 = !DIEnumerator(name: "JERR_NOTIMPL", value: 46)
!68 = !DIEnumerator(name: "JERR_NOT_COMPILED", value: 47)
!69 = !DIEnumerator(name: "JERR_NO_BACKING_STORE", value: 48)
!70 = !DIEnumerator(name: "JERR_NO_HUFF_TABLE", value: 49)
!71 = !DIEnumerator(name: "JERR_NO_IMAGE", value: 50)
!72 = !DIEnumerator(name: "JERR_NO_QUANT_TABLE", value: 51)
!73 = !DIEnumerator(name: "JERR_NO_SOI", value: 52)
!74 = !DIEnumerator(name: "JERR_OUT_OF_MEMORY", value: 53)
!75 = !DIEnumerator(name: "JERR_QUANT_COMPONENTS", value: 54)
!76 = !DIEnumerator(name: "JERR_QUANT_FEW_COLORS", value: 55)
!77 = !DIEnumerator(name: "JERR_QUANT_MANY_COLORS", value: 56)
!78 = !DIEnumerator(name: "JERR_SOF_DUPLICATE", value: 57)
!79 = !DIEnumerator(name: "JERR_SOF_NO_SOS", value: 58)
!80 = !DIEnumerator(name: "JERR_SOF_UNSUPPORTED", value: 59)
!81 = !DIEnumerator(name: "JERR_SOI_DUPLICATE", value: 60)
!82 = !DIEnumerator(name: "JERR_SOS_NO_SOF", value: 61)
!83 = !DIEnumerator(name: "JERR_TFILE_CREATE", value: 62)
!84 = !DIEnumerator(name: "JERR_TFILE_READ", value: 63)
!85 = !DIEnumerator(name: "JERR_TFILE_SEEK", value: 64)
!86 = !DIEnumerator(name: "JERR_TFILE_WRITE", value: 65)
!87 = !DIEnumerator(name: "JERR_TOO_LITTLE_DATA", value: 66)
!88 = !DIEnumerator(name: "JERR_UNKNOWN_MARKER", value: 67)
!89 = !DIEnumerator(name: "JERR_VIRTUAL_BUG", value: 68)
!90 = !DIEnumerator(name: "JERR_WIDTH_OVERFLOW", value: 69)
!91 = !DIEnumerator(name: "JERR_XMS_READ", value: 70)
!92 = !DIEnumerator(name: "JERR_XMS_WRITE", value: 71)
!93 = !DIEnumerator(name: "JMSG_COPYRIGHT", value: 72)
!94 = !DIEnumerator(name: "JMSG_VERSION", value: 73)
!95 = !DIEnumerator(name: "JTRC_16BIT_TABLES", value: 74)
!96 = !DIEnumerator(name: "JTRC_ADOBE", value: 75)
!97 = !DIEnumerator(name: "JTRC_APP0", value: 76)
!98 = !DIEnumerator(name: "JTRC_APP14", value: 77)
!99 = !DIEnumerator(name: "JTRC_DAC", value: 78)
!100 = !DIEnumerator(name: "JTRC_DHT", value: 79)
!101 = !DIEnumerator(name: "JTRC_DQT", value: 80)
!102 = !DIEnumerator(name: "JTRC_DRI", value: 81)
!103 = !DIEnumerator(name: "JTRC_EMS_CLOSE", value: 82)
!104 = !DIEnumerator(name: "JTRC_EMS_OPEN", value: 83)
!105 = !DIEnumerator(name: "JTRC_EOI", value: 84)
!106 = !DIEnumerator(name: "JTRC_HUFFBITS", value: 85)
!107 = !DIEnumerator(name: "JTRC_JFIF", value: 86)
!108 = !DIEnumerator(name: "JTRC_JFIF_BADTHUMBNAILSIZE", value: 87)
!109 = !DIEnumerator(name: "JTRC_JFIF_MINOR", value: 88)
!110 = !DIEnumerator(name: "JTRC_JFIF_THUMBNAIL", value: 89)
!111 = !DIEnumerator(name: "JTRC_MISC_MARKER", value: 90)
!112 = !DIEnumerator(name: "JTRC_PARMLESS_MARKER", value: 91)
!113 = !DIEnumerator(name: "JTRC_QUANTVALS", value: 92)
!114 = !DIEnumerator(name: "JTRC_QUANT_3_NCOLORS", value: 93)
!115 = !DIEnumerator(name: "JTRC_QUANT_NCOLORS", value: 94)
!116 = !DIEnumerator(name: "JTRC_QUANT_SELECTED", value: 95)
!117 = !DIEnumerator(name: "JTRC_RECOVERY_ACTION", value: 96)
!118 = !DIEnumerator(name: "JTRC_RST", value: 97)
!119 = !DIEnumerator(name: "JTRC_SMOOTH_NOTIMPL", value: 98)
!120 = !DIEnumerator(name: "JTRC_SOF", value: 99)
!121 = !DIEnumerator(name: "JTRC_SOF_COMPONENT", value: 100)
!122 = !DIEnumerator(name: "JTRC_SOI", value: 101)
!123 = !DIEnumerator(name: "JTRC_SOS", value: 102)
!124 = !DIEnumerator(name: "JTRC_SOS_COMPONENT", value: 103)
!125 = !DIEnumerator(name: "JTRC_SOS_PARAMS", value: 104)
!126 = !DIEnumerator(name: "JTRC_TFILE_CLOSE", value: 105)
!127 = !DIEnumerator(name: "JTRC_TFILE_OPEN", value: 106)
!128 = !DIEnumerator(name: "JTRC_UNKNOWN_IDS", value: 107)
!129 = !DIEnumerator(name: "JTRC_XMS_CLOSE", value: 108)
!130 = !DIEnumerator(name: "JTRC_XMS_OPEN", value: 109)
!131 = !DIEnumerator(name: "JWRN_ADOBE_XFORM", value: 110)
!132 = !DIEnumerator(name: "JWRN_BOGUS_PROGRESSION", value: 111)
!133 = !DIEnumerator(name: "JWRN_EXTRANEOUS_DATA", value: 112)
!134 = !DIEnumerator(name: "JWRN_HIT_MARKER", value: 113)
!135 = !DIEnumerator(name: "JWRN_HUFF_BAD_CODE", value: 114)
!136 = !DIEnumerator(name: "JWRN_JFIF_MAJOR", value: 115)
!137 = !DIEnumerator(name: "JWRN_JPEG_EOF", value: 116)
!138 = !DIEnumerator(name: "JWRN_MUST_RESYNC", value: 117)
!139 = !DIEnumerator(name: "JWRN_NOT_SEQUENTIAL", value: 118)
!140 = !DIEnumerator(name: "JWRN_TOO_MUCH_DATA", value: 119)
!141 = !DIEnumerator(name: "JMSG_LASTMSGCODE", value: 120)
!142 = !{!143, !144, !172, !153, !441, !148, !503}
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_destination_mgr", file: !4, line: 688, size: 320, elements: !146)
!146 = !{!147, !152, !156, !436, !440}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "next_output_byte", scope: !145, file: !4, line: 689, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "JOCTET", file: !150, line: 110, baseType: !151)
!150 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jmorecfg.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "56a0eda58fafa6bdd5498f702a998c09")
!151 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "free_in_buffer", scope: !145, file: !4, line: 690, baseType: !153, size: 64, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !154, line: 18, baseType: !155)
!154 = !DIFile(filename: "/usr/local/lib/clang/20/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!155 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "init_destination", scope: !145, file: !4, line: 692, baseType: !157, size: 64, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DISubroutineType(types: !159)
!159 = !{null, !160}
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_compress_ptr", file: !4, line: 249, baseType: !161)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_compress_struct", file: !4, line: 255, size: 3968, elements: !163)
!163 = !{!164, !285, !286, !287, !288, !289, !290, !291, !292, !293, !295, !297, !298, !299, !300, !335, !339, !355, !356, !360, !361, !362, !363, !376, !377, !378, !379, !380, !381, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !398, !399, !400, !401, !405, !406, !407, !408, !409, !412, !415, !418, !421, !424, !427, !430, !433}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !162, file: !4, line: 256, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_error_mgr", file: !4, line: 618, size: 1344, elements: !167)
!167 = !{!168, !253, !254, !255, !261, !262, !263, !274, !275, !276, !281, !282, !283, !284}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "error_exit", scope: !166, file: !4, line: 620, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DISubroutineType(types: !171)
!171 = !{null, !172}
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_common_ptr", file: !4, line: 248, baseType: !173)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_common_struct", file: !4, line: 240, size: 256, elements: !175)
!175 = !{!176, !177, !242, !251, !252}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !174, file: !4, line: 241, baseType: !165, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !174, file: !4, line: 241, baseType: !178, size: 64, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_memory_mgr", file: !4, line: 731, size: 768, elements: !180)
!180 = !{!181, !186, !187, !197, !211, !219, !226, !227, !231, !235, !239, !240}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_small", scope: !179, file: !4, line: 733, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DISubroutineType(types: !184)
!184 = !{!143, !172, !185, !153}
!185 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_large", scope: !179, file: !4, line: 735, baseType: !182, size: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_sarray", scope: !179, file: !4, line: 737, baseType: !188, size: 64, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DISubroutineType(types: !190)
!190 = !{!191, !172, !185, !196, !196}
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPARRAY", file: !4, line: 67, baseType: !192)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPROW", file: !4, line: 66, baseType: !194)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPLE", file: !150, line: 59, baseType: !151)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "JDIMENSION", file: !150, line: 171, baseType: !5)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_barray", scope: !179, file: !4, line: 740, baseType: !198, size: 64, offset: 192)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{!201, !172, !185, !196, !196}
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCKARRAY", file: !4, line: 72, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCKROW", file: !4, line: 71, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCK", file: !4, line: 70, baseType: !206)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 1024, elements: !209)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "JCOEF", file: !150, line: 99, baseType: !208)
!208 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!209 = !{!210}
!210 = !DISubrange(count: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_sarray", scope: !179, file: !4, line: 743, baseType: !212, size: 64, offset: 256)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DISubroutineType(types: !214)
!214 = !{!215, !172, !185, !218, !196, !196, !196}
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_sarray_ptr", file: !4, line: 727, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_sarray_control", file: !4, line: 727, flags: DIFlagFwdDecl)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "boolean", file: !150, line: 227, baseType: !185)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_barray", scope: !179, file: !4, line: 749, baseType: !220, size: 64, offset: 320)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{!223, !172, !185, !218, !196, !196, !196}
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_barray_ptr", file: !4, line: 728, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_barray_control", file: !4, line: 728, flags: DIFlagFwdDecl)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "realize_virt_arrays", scope: !179, file: !4, line: 755, baseType: !169, size: 64, offset: 384)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_sarray", scope: !179, file: !4, line: 756, baseType: !228, size: 64, offset: 448)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DISubroutineType(types: !230)
!230 = !{!191, !172, !215, !196, !196, !218}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_barray", scope: !179, file: !4, line: 761, baseType: !232, size: 64, offset: 512)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!201, !172, !223, !196, !196, !218}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "free_pool", scope: !179, file: !4, line: 766, baseType: !236, size: 64, offset: 576)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{null, !172, !185}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "self_destruct", scope: !179, file: !4, line: 767, baseType: !169, size: 64, offset: 640)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "max_memory_to_use", scope: !179, file: !4, line: 774, baseType: !241, size: 64, offset: 704)
!241 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !174, file: !4, line: 241, baseType: !243, size: 64, offset: 128)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_progress_mgr", file: !4, line: 676, size: 256, elements: !245)
!245 = !{!246, !247, !248, !249, !250}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !244, file: !4, line: 677, baseType: !169, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "pass_counter", scope: !244, file: !4, line: 679, baseType: !241, size: 64, offset: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "pass_limit", scope: !244, file: !4, line: 680, baseType: !241, size: 64, offset: 128)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "completed_passes", scope: !244, file: !4, line: 681, baseType: !185, size: 32, offset: 192)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "total_passes", scope: !244, file: !4, line: 682, baseType: !185, size: 32, offset: 224)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !174, file: !4, line: 241, baseType: !218, size: 32, offset: 192)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !174, file: !4, line: 241, baseType: !185, size: 32, offset: 224)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "emit_message", scope: !166, file: !4, line: 622, baseType: !236, size: 64, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "output_message", scope: !166, file: !4, line: 624, baseType: !169, size: 64, offset: 128)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "format_message", scope: !166, file: !4, line: 626, baseType: !256, size: 64, offset: 192)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DISubroutineType(types: !258)
!258 = !{null, !172, !259}
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "reset_error_mgr", scope: !166, file: !4, line: 629, baseType: !169, size: 64, offset: 256)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "msg_code", scope: !166, file: !4, line: 634, baseType: !185, size: 32, offset: 320)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "msg_parm", scope: !166, file: !4, line: 639, baseType: !264, size: 640, offset: 352)
!264 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !166, file: !4, line: 636, size: 640, elements: !265)
!265 = !{!266, !270}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !264, file: !4, line: 637, baseType: !267, size: 256)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 256, elements: !268)
!268 = !{!269}
!269 = !DISubrange(count: 8)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !264, file: !4, line: 638, baseType: !271, size: 640)
!271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 640, elements: !272)
!272 = !{!273}
!273 = !DISubrange(count: 80)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "trace_level", scope: !166, file: !4, line: 643, baseType: !185, size: 32, offset: 992)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "num_warnings", scope: !166, file: !4, line: 651, baseType: !241, size: 64, offset: 1024)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_message_table", scope: !166, file: !4, line: 663, baseType: !277, size: 64, offset: 1088)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !279)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !260)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "last_jpeg_message", scope: !166, file: !4, line: 664, baseType: !185, size: 32, offset: 1152)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "addon_message_table", scope: !166, file: !4, line: 668, baseType: !277, size: 64, offset: 1216)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "first_addon_message", scope: !166, file: !4, line: 669, baseType: !185, size: 32, offset: 1280)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "last_addon_message", scope: !166, file: !4, line: 670, baseType: !185, size: 32, offset: 1312)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !162, file: !4, line: 256, baseType: !178, size: 64, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !162, file: !4, line: 256, baseType: !243, size: 64, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !162, file: !4, line: 256, baseType: !218, size: 32, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !162, file: !4, line: 256, baseType: !185, size: 32, offset: 224)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !162, file: !4, line: 259, baseType: !144, size: 64, offset: 256)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "image_width", scope: !162, file: !4, line: 266, baseType: !196, size: 32, offset: 320)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "image_height", scope: !162, file: !4, line: 267, baseType: !196, size: 32, offset: 352)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "input_components", scope: !162, file: !4, line: 268, baseType: !185, size: 32, offset: 384)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "in_color_space", scope: !162, file: !4, line: 269, baseType: !294, size: 32, offset: 416)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_COLOR_SPACE", file: !4, line: 201, baseType: !3)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "input_gamma", scope: !162, file: !4, line: 271, baseType: !296, size: 64, offset: 448)
!296 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "data_precision", scope: !162, file: !4, line: 281, baseType: !185, size: 32, offset: 512)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "num_components", scope: !162, file: !4, line: 283, baseType: !185, size: 32, offset: 544)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_color_space", scope: !162, file: !4, line: 284, baseType: !294, size: 32, offset: 576)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "comp_info", scope: !162, file: !4, line: 286, baseType: !301, size: 64, offset: 640)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_component_info", file: !4, line: 179, baseType: !303)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 116, size: 768, elements: !304)
!304 = !{!305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !334}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "component_id", scope: !303, file: !4, line: 120, baseType: !185, size: 32)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "component_index", scope: !303, file: !4, line: 121, baseType: !185, size: 32, offset: 32)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "h_samp_factor", scope: !303, file: !4, line: 122, baseType: !185, size: 32, offset: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "v_samp_factor", scope: !303, file: !4, line: 123, baseType: !185, size: 32, offset: 96)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_no", scope: !303, file: !4, line: 124, baseType: !185, size: 32, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "dc_tbl_no", scope: !303, file: !4, line: 129, baseType: !185, size: 32, offset: 160)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tbl_no", scope: !303, file: !4, line: 130, baseType: !185, size: 32, offset: 192)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "width_in_blocks", scope: !303, file: !4, line: 139, baseType: !196, size: 32, offset: 224)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "height_in_blocks", scope: !303, file: !4, line: 140, baseType: !196, size: 32, offset: 256)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "DCT_scaled_size", scope: !303, file: !4, line: 147, baseType: !185, size: 32, offset: 288)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_width", scope: !303, file: !4, line: 154, baseType: !196, size: 32, offset: 320)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_height", scope: !303, file: !4, line: 155, baseType: !196, size: 32, offset: 352)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "component_needed", scope: !303, file: !4, line: 160, baseType: !218, size: 32, offset: 384)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_width", scope: !303, file: !4, line: 164, baseType: !185, size: 32, offset: 416)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_height", scope: !303, file: !4, line: 165, baseType: !185, size: 32, offset: 448)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_blocks", scope: !303, file: !4, line: 166, baseType: !185, size: 32, offset: 480)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_sample_width", scope: !303, file: !4, line: 167, baseType: !185, size: 32, offset: 512)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "last_col_width", scope: !303, file: !4, line: 168, baseType: !185, size: 32, offset: 544)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "last_row_height", scope: !303, file: !4, line: 169, baseType: !185, size: 32, offset: 576)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "quant_table", scope: !303, file: !4, line: 175, baseType: !325, size: 64, offset: 640)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "JQUANT_TBL", file: !4, line: 95, baseType: !327)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 83, size: 1056, elements: !328)
!328 = !{!329, !333}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "quantval", scope: !327, file: !4, line: 88, baseType: !330, size: 1024)
!330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 1024, elements: !209)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !150, line: 147, baseType: !332)
!332 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !327, file: !4, line: 94, baseType: !218, size: 32, offset: 1024)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "dct_table", scope: !303, file: !4, line: 178, baseType: !143, size: 64, offset: 704)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_ptrs", scope: !162, file: !4, line: 289, baseType: !336, size: 256, offset: 704)
!336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 256, elements: !337)
!337 = !{!338}
!338 = !DISubrange(count: 4)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "dc_huff_tbl_ptrs", scope: !162, file: !4, line: 292, baseType: !340, size: 256, offset: 960)
!340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !341, size: 256, elements: !337)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "JHUFF_TBL", file: !4, line: 111, baseType: !343)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 100, size: 2240, elements: !344)
!344 = !{!345, !350, !354}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !343, file: !4, line: 102, baseType: !346, size: 136)
!346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 136, elements: !348)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT8", file: !150, line: 135, baseType: !151)
!348 = !{!349}
!349 = !DISubrange(count: 17)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "huffval", scope: !343, file: !4, line: 104, baseType: !351, size: 2048, offset: 136)
!351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 2048, elements: !352)
!352 = !{!353}
!353 = !DISubrange(count: 256)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !343, file: !4, line: 110, baseType: !218, size: 32, offset: 2208)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "ac_huff_tbl_ptrs", scope: !162, file: !4, line: 293, baseType: !340, size: 256, offset: 1216)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_L", scope: !162, file: !4, line: 296, baseType: !357, size: 128, offset: 1472)
!357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 128, elements: !358)
!358 = !{!359}
!359 = !DISubrange(count: 16)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_U", scope: !162, file: !4, line: 297, baseType: !357, size: 128, offset: 1600)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "arith_ac_K", scope: !162, file: !4, line: 298, baseType: !357, size: 128, offset: 1728)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "num_scans", scope: !162, file: !4, line: 300, baseType: !185, size: 32, offset: 1856)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "scan_info", scope: !162, file: !4, line: 301, baseType: !364, size: 64, offset: 1920)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !366)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_scan_info", file: !4, line: 189, baseType: !367)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 184, size: 288, elements: !368)
!368 = !{!369, !370, !372, !373, !374, !375}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "comps_in_scan", scope: !367, file: !4, line: 185, baseType: !185, size: 32)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "component_index", scope: !367, file: !4, line: 186, baseType: !371, size: 128, offset: 32)
!371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 128, elements: !337)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "Ss", scope: !367, file: !4, line: 187, baseType: !185, size: 32, offset: 160)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "Se", scope: !367, file: !4, line: 187, baseType: !185, size: 32, offset: 192)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "Ah", scope: !367, file: !4, line: 188, baseType: !185, size: 32, offset: 224)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "Al", scope: !367, file: !4, line: 188, baseType: !185, size: 32, offset: 256)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "raw_data_in", scope: !162, file: !4, line: 307, baseType: !218, size: 32, offset: 1984)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "arith_code", scope: !162, file: !4, line: 308, baseType: !218, size: 32, offset: 2016)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_coding", scope: !162, file: !4, line: 309, baseType: !218, size: 32, offset: 2048)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "CCIR601_sampling", scope: !162, file: !4, line: 310, baseType: !218, size: 32, offset: 2080)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "smoothing_factor", scope: !162, file: !4, line: 311, baseType: !185, size: 32, offset: 2112)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "dct_method", scope: !162, file: !4, line: 312, baseType: !382, size: 32, offset: 2144)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_DCT_METHOD", file: !4, line: 209, baseType: !13)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "restart_interval", scope: !162, file: !4, line: 319, baseType: !5, size: 32, offset: 2176)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "restart_in_rows", scope: !162, file: !4, line: 320, baseType: !185, size: 32, offset: 2208)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "write_JFIF_header", scope: !162, file: !4, line: 324, baseType: !218, size: 32, offset: 2240)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "density_unit", scope: !162, file: !4, line: 329, baseType: !347, size: 8, offset: 2272)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "X_density", scope: !162, file: !4, line: 330, baseType: !331, size: 16, offset: 2288)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "Y_density", scope: !162, file: !4, line: 331, baseType: !331, size: 16, offset: 2304)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "write_Adobe_marker", scope: !162, file: !4, line: 332, baseType: !218, size: 32, offset: 2336)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "next_scanline", scope: !162, file: !4, line: 339, baseType: !196, size: 32, offset: 2368)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "progressive_mode", scope: !162, file: !4, line: 348, baseType: !218, size: 32, offset: 2400)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "max_h_samp_factor", scope: !162, file: !4, line: 349, baseType: !185, size: 32, offset: 2432)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "max_v_samp_factor", scope: !162, file: !4, line: 350, baseType: !185, size: 32, offset: 2464)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "total_iMCU_rows", scope: !162, file: !4, line: 352, baseType: !196, size: 32, offset: 2496)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "comps_in_scan", scope: !162, file: !4, line: 363, baseType: !185, size: 32, offset: 2528)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "cur_comp_info", scope: !162, file: !4, line: 364, baseType: !397, size: 256, offset: 2560)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !301, size: 256, elements: !337)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "MCUs_per_row", scope: !162, file: !4, line: 367, baseType: !196, size: 32, offset: 2816)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_rows_in_scan", scope: !162, file: !4, line: 368, baseType: !196, size: 32, offset: 2848)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_in_MCU", scope: !162, file: !4, line: 370, baseType: !185, size: 32, offset: 2880)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_membership", scope: !162, file: !4, line: 371, baseType: !402, size: 320, offset: 2912)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 320, elements: !403)
!403 = !{!404}
!404 = !DISubrange(count: 10)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "Ss", scope: !162, file: !4, line: 375, baseType: !185, size: 32, offset: 3232)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "Se", scope: !162, file: !4, line: 375, baseType: !185, size: 32, offset: 3264)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "Ah", scope: !162, file: !4, line: 375, baseType: !185, size: 32, offset: 3296)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "Al", scope: !162, file: !4, line: 375, baseType: !185, size: 32, offset: 3328)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !162, file: !4, line: 380, baseType: !410, size: 64, offset: 3392)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_comp_master", file: !4, line: 380, flags: DIFlagFwdDecl)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "main", scope: !162, file: !4, line: 381, baseType: !413, size: 64, offset: 3456)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_c_main_controller", file: !4, line: 381, flags: DIFlagFwdDecl)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "prep", scope: !162, file: !4, line: 382, baseType: !416, size: 64, offset: 3520)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_c_prep_controller", file: !4, line: 382, flags: DIFlagFwdDecl)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "coef", scope: !162, file: !4, line: 383, baseType: !419, size: 64, offset: 3584)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_c_coef_controller", file: !4, line: 383, flags: DIFlagFwdDecl)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "marker", scope: !162, file: !4, line: 384, baseType: !422, size: 64, offset: 3648)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_marker_writer", file: !4, line: 384, flags: DIFlagFwdDecl)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "cconvert", scope: !162, file: !4, line: 385, baseType: !425, size: 64, offset: 3712)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_color_converter", file: !4, line: 385, flags: DIFlagFwdDecl)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "downsample", scope: !162, file: !4, line: 386, baseType: !428, size: 64, offset: 3776)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_downsampler", file: !4, line: 386, flags: DIFlagFwdDecl)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "fdct", scope: !162, file: !4, line: 387, baseType: !431, size: 64, offset: 3840)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_forward_dct", file: !4, line: 387, flags: DIFlagFwdDecl)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "entropy", scope: !162, file: !4, line: 388, baseType: !434, size: 64, offset: 3904)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_entropy_encoder", file: !4, line: 388, flags: DIFlagFwdDecl)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "empty_output_buffer", scope: !145, file: !4, line: 693, baseType: !437, size: 64, offset: 192)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DISubroutineType(types: !439)
!439 = !{!218, !160}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "term_destination", scope: !145, file: !4, line: 694, baseType: !157, size: 64, offset: 256)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "my_dest_ptr", file: !1, line: 32, baseType: !442)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "my_destination_mgr", file: !1, line: 30, baseType: !444)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 25, size: 448, elements: !445)
!445 = !{!446, !447, !502}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "pub", scope: !444, file: !1, line: 26, baseType: !145, size: 320)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "outfile", scope: !444, file: !1, line: 28, baseType: !448, size: 64, offset: 320)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !450, line: 7, baseType: !451)
!450 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !452, line: 49, size: 1728, elements: !453)
!452 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!453 = !{!454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !469, !471, !472, !473, !476, !477, !479, !483, !486, !488, !491, !494, !495, !496, !497, !498}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !451, file: !452, line: 51, baseType: !185, size: 32)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !451, file: !452, line: 54, baseType: !259, size: 64, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !451, file: !452, line: 55, baseType: !259, size: 64, offset: 128)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !451, file: !452, line: 56, baseType: !259, size: 64, offset: 192)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !451, file: !452, line: 57, baseType: !259, size: 64, offset: 256)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !451, file: !452, line: 58, baseType: !259, size: 64, offset: 320)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !451, file: !452, line: 59, baseType: !259, size: 64, offset: 384)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !451, file: !452, line: 60, baseType: !259, size: 64, offset: 448)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !451, file: !452, line: 61, baseType: !259, size: 64, offset: 512)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !451, file: !452, line: 64, baseType: !259, size: 64, offset: 576)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !451, file: !452, line: 65, baseType: !259, size: 64, offset: 640)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !451, file: !452, line: 66, baseType: !259, size: 64, offset: 704)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !451, file: !452, line: 68, baseType: !467, size: 64, offset: 768)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !452, line: 36, flags: DIFlagFwdDecl)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !451, file: !452, line: 70, baseType: !470, size: 64, offset: 832)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !451, file: !452, line: 72, baseType: !185, size: 32, offset: 896)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !451, file: !452, line: 73, baseType: !185, size: 32, offset: 928)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !451, file: !452, line: 74, baseType: !474, size: 64, offset: 960)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !475, line: 152, baseType: !241)
!475 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!476 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !451, file: !452, line: 77, baseType: !332, size: 16, offset: 1024)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !451, file: !452, line: 78, baseType: !478, size: 8, offset: 1040)
!478 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !451, file: !452, line: 79, baseType: !480, size: 8, offset: 1048)
!480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 8, elements: !481)
!481 = !{!482}
!482 = !DISubrange(count: 1)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !451, file: !452, line: 81, baseType: !484, size: 64, offset: 1088)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !452, line: 43, baseType: null)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !451, file: !452, line: 89, baseType: !487, size: 64, offset: 1152)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !475, line: 153, baseType: !241)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !451, file: !452, line: 91, baseType: !489, size: 64, offset: 1216)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !452, line: 37, flags: DIFlagFwdDecl)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !451, file: !452, line: 92, baseType: !492, size: 64, offset: 1280)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !452, line: 38, flags: DIFlagFwdDecl)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !451, file: !452, line: 93, baseType: !470, size: 64, offset: 1344)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !451, file: !452, line: 94, baseType: !143, size: 64, offset: 1408)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !451, file: !452, line: 95, baseType: !153, size: 64, offset: 1472)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !451, file: !452, line: 96, baseType: !185, size: 32, offset: 1536)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !451, file: !452, line: 98, baseType: !499, size: 160, offset: 1568)
!499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 160, elements: !500)
!500 = !{!501}
!501 = !DISubrange(count: 20)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !444, file: !1, line: 29, baseType: !148, size: 64, offset: 384)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!505 = !{i32 7, !"Dwarf Version", i32 5}
!506 = !{i32 2, !"Debug Info Version", i32 3}
!507 = !{i32 1, !"wchar_size", i32 4}
!508 = !{i32 8, !"PIC Level", i32 2}
!509 = !{i32 7, !"PIE Level", i32 2}
!510 = !{i32 7, !"uwtable", i32 2}
!511 = !{i32 7, !"frame-pointer", i32 2}
!512 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!513 = distinct !DISubprogram(name: "jpeg_stdio_dest", scope: !1, file: !1, line: 130, type: !514, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !516)
!514 = !DISubroutineType(types: !515)
!515 = !{null, !160, !448}
!516 = !{}
!517 = !DILocalVariable(name: "cinfo", arg: 1, scope: !513, file: !1, line: 130, type: !160)
!518 = !DILocation(line: 130, column: 33, scope: !513)
!519 = !DILocalVariable(name: "outfile", arg: 2, scope: !513, file: !1, line: 130, type: !448)
!520 = !DILocation(line: 130, column: 47, scope: !513)
!521 = !DILocalVariable(name: "dest", scope: !513, file: !1, line: 132, type: !441)
!522 = !DILocation(line: 132, column: 15, scope: !513)
!523 = !DILocation(line: 140, column: 7, scope: !524)
!524 = distinct !DILexicalBlock(scope: !513, file: !1, line: 140, column: 7)
!525 = !DILocation(line: 140, column: 14, scope: !524)
!526 = !DILocation(line: 140, column: 19, scope: !524)
!527 = !DILocation(line: 142, column: 9, scope: !528)
!528 = distinct !DILexicalBlock(scope: !524, file: !1, line: 140, column: 28)
!529 = !DILocation(line: 142, column: 16, scope: !528)
!530 = !DILocation(line: 142, column: 21, scope: !528)
!531 = !DILocation(line: 142, column: 50, scope: !528)
!532 = !DILocation(line: 142, column: 7, scope: !528)
!533 = !DILocation(line: 141, column: 5, scope: !528)
!534 = !DILocation(line: 141, column: 12, scope: !528)
!535 = !DILocation(line: 141, column: 17, scope: !528)
!536 = !DILocation(line: 144, column: 3, scope: !528)
!537 = !DILocation(line: 146, column: 24, scope: !513)
!538 = !DILocation(line: 146, column: 31, scope: !513)
!539 = !DILocation(line: 146, column: 8, scope: !513)
!540 = !DILocation(line: 147, column: 3, scope: !513)
!541 = !DILocation(line: 147, column: 9, scope: !513)
!542 = !DILocation(line: 147, column: 13, scope: !513)
!543 = !DILocation(line: 147, column: 30, scope: !513)
!544 = !DILocation(line: 148, column: 3, scope: !513)
!545 = !DILocation(line: 148, column: 9, scope: !513)
!546 = !DILocation(line: 148, column: 13, scope: !513)
!547 = !DILocation(line: 148, column: 33, scope: !513)
!548 = !DILocation(line: 149, column: 3, scope: !513)
!549 = !DILocation(line: 149, column: 9, scope: !513)
!550 = !DILocation(line: 149, column: 13, scope: !513)
!551 = !DILocation(line: 149, column: 30, scope: !513)
!552 = !DILocation(line: 150, column: 19, scope: !513)
!553 = !DILocation(line: 150, column: 3, scope: !513)
!554 = !DILocation(line: 150, column: 9, scope: !513)
!555 = !DILocation(line: 150, column: 17, scope: !513)
!556 = !DILocation(line: 151, column: 1, scope: !513)
!557 = distinct !DISubprogram(name: "init_destination", scope: !1, file: !1, line: 43, type: !158, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !516)
!558 = !DILocalVariable(name: "cinfo", arg: 1, scope: !557, file: !1, line: 43, type: !160)
!559 = !DILocation(line: 43, column: 34, scope: !557)
!560 = !DILocalVariable(name: "dest", scope: !557, file: !1, line: 45, type: !441)
!561 = !DILocation(line: 45, column: 15, scope: !557)
!562 = !DILocation(line: 45, column: 36, scope: !557)
!563 = !DILocation(line: 45, column: 43, scope: !557)
!564 = !DILocation(line: 49, column: 9, scope: !557)
!565 = !DILocation(line: 49, column: 16, scope: !557)
!566 = !DILocation(line: 49, column: 21, scope: !557)
!567 = !DILocation(line: 49, column: 50, scope: !557)
!568 = !DILocation(line: 49, column: 7, scope: !557)
!569 = !DILocation(line: 48, column: 3, scope: !557)
!570 = !DILocation(line: 48, column: 9, scope: !557)
!571 = !DILocation(line: 48, column: 16, scope: !557)
!572 = !DILocation(line: 52, column: 32, scope: !557)
!573 = !DILocation(line: 52, column: 38, scope: !557)
!574 = !DILocation(line: 52, column: 3, scope: !557)
!575 = !DILocation(line: 52, column: 9, scope: !557)
!576 = !DILocation(line: 52, column: 13, scope: !557)
!577 = !DILocation(line: 52, column: 30, scope: !557)
!578 = !DILocation(line: 53, column: 3, scope: !557)
!579 = !DILocation(line: 53, column: 9, scope: !557)
!580 = !DILocation(line: 53, column: 13, scope: !557)
!581 = !DILocation(line: 53, column: 28, scope: !557)
!582 = !DILocation(line: 54, column: 1, scope: !557)
!583 = distinct !DISubprogram(name: "empty_output_buffer", scope: !1, file: !1, line: 81, type: !438, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !516)
!584 = !DILocalVariable(name: "cinfo", arg: 1, scope: !583, file: !1, line: 81, type: !160)
!585 = !DILocation(line: 81, column: 37, scope: !583)
!586 = !DILocalVariable(name: "dest", scope: !583, file: !1, line: 83, type: !441)
!587 = !DILocation(line: 83, column: 15, scope: !583)
!588 = !DILocation(line: 83, column: 36, scope: !583)
!589 = !DILocation(line: 83, column: 43, scope: !583)
!590 = !DILocation(line: 85, column: 7, scope: !591)
!591 = distinct !DILexicalBlock(scope: !583, file: !1, line: 85, column: 7)
!592 = !DILocation(line: 85, column: 61, scope: !591)
!593 = !DILocation(line: 87, column: 5, scope: !591)
!594 = !DILocation(line: 89, column: 32, scope: !583)
!595 = !DILocation(line: 89, column: 38, scope: !583)
!596 = !DILocation(line: 89, column: 3, scope: !583)
!597 = !DILocation(line: 89, column: 9, scope: !583)
!598 = !DILocation(line: 89, column: 13, scope: !583)
!599 = !DILocation(line: 89, column: 30, scope: !583)
!600 = !DILocation(line: 90, column: 3, scope: !583)
!601 = !DILocation(line: 90, column: 9, scope: !583)
!602 = !DILocation(line: 90, column: 13, scope: !583)
!603 = !DILocation(line: 90, column: 28, scope: !583)
!604 = !DILocation(line: 92, column: 3, scope: !583)
!605 = distinct !DISubprogram(name: "term_destination", scope: !1, file: !1, line: 106, type: !158, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !516)
!606 = !DILocalVariable(name: "cinfo", arg: 1, scope: !605, file: !1, line: 106, type: !160)
!607 = !DILocation(line: 106, column: 34, scope: !605)
!608 = !DILocalVariable(name: "dest", scope: !605, file: !1, line: 108, type: !441)
!609 = !DILocation(line: 108, column: 15, scope: !605)
!610 = !DILocation(line: 108, column: 36, scope: !605)
!611 = !DILocation(line: 108, column: 43, scope: !605)
!612 = !DILocalVariable(name: "datacount", scope: !605, file: !1, line: 109, type: !153)
!613 = !DILocation(line: 109, column: 10, scope: !605)
!614 = !DILocation(line: 109, column: 40, scope: !605)
!615 = !DILocation(line: 109, column: 46, scope: !605)
!616 = !DILocation(line: 109, column: 50, scope: !605)
!617 = !DILocation(line: 109, column: 38, scope: !605)
!618 = !DILocation(line: 112, column: 7, scope: !619)
!619 = distinct !DILexicalBlock(scope: !605, file: !1, line: 112, column: 7)
!620 = !DILocation(line: 112, column: 17, scope: !619)
!621 = !DILocation(line: 113, column: 9, scope: !622)
!622 = distinct !DILexicalBlock(scope: !623, file: !1, line: 113, column: 9)
!623 = distinct !DILexicalBlock(scope: !619, file: !1, line: 112, column: 22)
!624 = !DILocation(line: 113, column: 60, scope: !622)
!625 = !DILocation(line: 113, column: 57, scope: !622)
!626 = !DILocation(line: 114, column: 7, scope: !622)
!627 = !DILocation(line: 115, column: 3, scope: !623)
!628 = !DILocation(line: 116, column: 10, scope: !605)
!629 = !DILocation(line: 116, column: 16, scope: !605)
!630 = !DILocation(line: 116, column: 3, scope: !605)
!631 = !DILocation(line: 118, column: 14, scope: !632)
!632 = distinct !DILexicalBlock(scope: !605, file: !1, line: 118, column: 7)
!633 = !DILocation(line: 118, column: 20, scope: !632)
!634 = !DILocation(line: 118, column: 7, scope: !632)
!635 = !DILocation(line: 119, column: 5, scope: !632)
!636 = !DILocation(line: 120, column: 1, scope: !605)
