; ModuleID = 'cBench/consumer_jpeg_c/src/jutils.c'
source_filename = "cBench/consumer_jpeg_c/src/jutils.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@jpeg_natural_order = dso_local constant [80 x i32] [i32 0, i32 1, i32 8, i32 16, i32 9, i32 2, i32 3, i32 10, i32 17, i32 24, i32 32, i32 25, i32 18, i32 11, i32 4, i32 5, i32 12, i32 19, i32 26, i32 33, i32 40, i32 48, i32 41, i32 34, i32 27, i32 20, i32 13, i32 6, i32 7, i32 14, i32 21, i32 28, i32 35, i32 42, i32 49, i32 56, i32 57, i32 50, i32 43, i32 36, i32 29, i32 22, i32 15, i32 23, i32 30, i32 37, i32 44, i32 51, i32 58, i32 59, i32 52, i32 45, i32 38, i32 31, i32 39, i32 46, i32 53, i32 60, i32 61, i32 54, i32 47, i32 55, i32 62, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63], align 16, !dbg !0

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @jdiv_round_up(i64 noundef %0, i64 noundef %1) #0 !dbg !25 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, ptr %3, align 8
    #dbg_declare(ptr %3, !30, !DIExpression(), !31)
  store i64 %1, ptr %4, align 8
    #dbg_declare(ptr %4, !32, !DIExpression(), !33)
  %5 = load i64, ptr %3, align 8, !dbg !34
  %6 = load i64, ptr %4, align 8, !dbg !35
  %7 = add nsw i64 %5, %6, !dbg !36
  %8 = sub nsw i64 %7, 1, !dbg !37
  %9 = load i64, ptr %4, align 8, !dbg !38
  %10 = sdiv i64 %8, %9, !dbg !39
  ret i64 %10, !dbg !40
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @jround_up(i64 noundef %0, i64 noundef %1) #0 !dbg !41 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, ptr %3, align 8
    #dbg_declare(ptr %3, !42, !DIExpression(), !43)
  store i64 %1, ptr %4, align 8
    #dbg_declare(ptr %4, !44, !DIExpression(), !45)
  %5 = load i64, ptr %4, align 8, !dbg !46
  %6 = sub nsw i64 %5, 1, !dbg !47
  %7 = load i64, ptr %3, align 8, !dbg !48
  %8 = add nsw i64 %7, %6, !dbg !48
  store i64 %8, ptr %3, align 8, !dbg !48
  %9 = load i64, ptr %3, align 8, !dbg !49
  %10 = load i64, ptr %3, align 8, !dbg !50
  %11 = load i64, ptr %4, align 8, !dbg !51
  %12 = srem i64 %10, %11, !dbg !52
  %13 = sub nsw i64 %9, %12, !dbg !53
  ret i64 %13, !dbg !54
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @jcopy_sample_rows(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 !dbg !55 {
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store ptr %0, ptr %7, align 8
    #dbg_declare(ptr %7, !68, !DIExpression(), !69)
  store i32 %1, ptr %8, align 4
    #dbg_declare(ptr %8, !70, !DIExpression(), !71)
  store ptr %2, ptr %9, align 8
    #dbg_declare(ptr %9, !72, !DIExpression(), !73)
  store i32 %3, ptr %10, align 4
    #dbg_declare(ptr %10, !74, !DIExpression(), !75)
  store i32 %4, ptr %11, align 4
    #dbg_declare(ptr %11, !76, !DIExpression(), !77)
  store i32 %5, ptr %12, align 4
    #dbg_declare(ptr %12, !78, !DIExpression(), !79)
    #dbg_declare(ptr %13, !80, !DIExpression(), !81)
    #dbg_declare(ptr %14, !82, !DIExpression(), !83)
    #dbg_declare(ptr %15, !84, !DIExpression(), !85)
  %17 = load i32, ptr %12, align 4, !dbg !86
  %18 = zext i32 %17 to i64, !dbg !86
  %19 = mul i64 %18, 1, !dbg !87
  store i64 %19, ptr %15, align 8, !dbg !85
    #dbg_declare(ptr %16, !88, !DIExpression(), !89)
  %20 = load i32, ptr %8, align 4, !dbg !90
  %21 = load ptr, ptr %7, align 8, !dbg !91
  %22 = sext i32 %20 to i64, !dbg !91
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22, !dbg !91
  store ptr %23, ptr %7, align 8, !dbg !91
  %24 = load i32, ptr %10, align 4, !dbg !92
  %25 = load ptr, ptr %9, align 8, !dbg !93
  %26 = sext i32 %24 to i64, !dbg !93
  %27 = getelementptr inbounds ptr, ptr %25, i64 %26, !dbg !93
  store ptr %27, ptr %9, align 8, !dbg !93
  %28 = load i32, ptr %11, align 4, !dbg !94
  store i32 %28, ptr %16, align 4, !dbg !96
  br label %29, !dbg !97

29:                                               ; preds = %42, %6
  %30 = load i32, ptr %16, align 4, !dbg !98
  %31 = icmp sgt i32 %30, 0, !dbg !100
  br i1 %31, label %32, label %45, !dbg !101

32:                                               ; preds = %29
  %33 = load ptr, ptr %7, align 8, !dbg !102
  %34 = getelementptr inbounds nuw ptr, ptr %33, i32 1, !dbg !102
  store ptr %34, ptr %7, align 8, !dbg !102
  %35 = load ptr, ptr %33, align 8, !dbg !104
  store ptr %35, ptr %13, align 8, !dbg !105
  %36 = load ptr, ptr %9, align 8, !dbg !106
  %37 = getelementptr inbounds nuw ptr, ptr %36, i32 1, !dbg !106
  store ptr %37, ptr %9, align 8, !dbg !106
  %38 = load ptr, ptr %36, align 8, !dbg !107
  store ptr %38, ptr %14, align 8, !dbg !108
  %39 = load ptr, ptr %14, align 8, !dbg !109
  %40 = load ptr, ptr %13, align 8, !dbg !109
  %41 = load i64, ptr %15, align 8, !dbg !109
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %39, ptr align 1 %40, i64 %41, i1 false), !dbg !109
  br label %42, !dbg !110

42:                                               ; preds = %32
  %43 = load i32, ptr %16, align 4, !dbg !111
  %44 = add nsw i32 %43, -1, !dbg !111
  store i32 %44, ptr %16, align 4, !dbg !111
  br label %29, !dbg !112, !llvm.loop !113

45:                                               ; preds = %29
  ret void, !dbg !116
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @jcopy_block_row(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !117 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !128, !DIExpression(), !129)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !130, !DIExpression(), !131)
  store i32 %2, ptr %6, align 4
    #dbg_declare(ptr %6, !132, !DIExpression(), !133)
  %7 = load ptr, ptr %5, align 8, !dbg !134
  %8 = load ptr, ptr %4, align 8, !dbg !134
  %9 = load i32, ptr %6, align 4, !dbg !134
  %10 = zext i32 %9 to i64, !dbg !134
  %11 = mul i64 %10, 128, !dbg !134
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %8, i64 %11, i1 false), !dbg !134
  ret void, !dbg !135
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @jzero_far(ptr noundef %0, i64 noundef %1) #0 !dbg !136 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !139, !DIExpression(), !140)
  store i64 %1, ptr %4, align 8
    #dbg_declare(ptr %4, !141, !DIExpression(), !142)
  %5 = load ptr, ptr %3, align 8, !dbg !143
  %6 = load i64, ptr %4, align 8, !dbg !143
  call void @llvm.memset.p0.i64(ptr align 1 %5, i8 0, i64 %6, i1 false), !dbg !143
  ret void, !dbg !144
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "jpeg_natural_order", scope: !2, file: !3, line: 53, type: !12, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !11, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jutils.c", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "74fca8c86e91d12a9f688df153688633")
!4 = !{!5, !8, !9}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !6, line: 18, baseType: !7)
!6 = !DIFile(filename: "/usr/local/lib/clang/20/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!7 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!11 = !{!0}
!12 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 2560, elements: !15)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !{!16}
!16 = !DISubrange(count: 80)
!17 = !{i32 7, !"Dwarf Version", i32 5}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{i32 1, !"wchar_size", i32 4}
!20 = !{i32 8, !"PIC Level", i32 2}
!21 = !{i32 7, !"PIE Level", i32 2}
!22 = !{i32 7, !"uwtable", i32 2}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!25 = distinct !DISubprogram(name: "jdiv_round_up", scope: !3, file: !3, line: 72, type: !26, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !29)
!26 = !DISubroutineType(types: !27)
!27 = !{!28, !28, !28}
!28 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!29 = !{}
!30 = !DILocalVariable(name: "a", arg: 1, scope: !25, file: !3, line: 72, type: !28)
!31 = !DILocation(line: 72, column: 21, scope: !25)
!32 = !DILocalVariable(name: "b", arg: 2, scope: !25, file: !3, line: 72, type: !28)
!33 = !DILocation(line: 72, column: 29, scope: !25)
!34 = !DILocation(line: 76, column: 11, scope: !25)
!35 = !DILocation(line: 76, column: 15, scope: !25)
!36 = !DILocation(line: 76, column: 13, scope: !25)
!37 = !DILocation(line: 76, column: 17, scope: !25)
!38 = !DILocation(line: 76, column: 25, scope: !25)
!39 = !DILocation(line: 76, column: 23, scope: !25)
!40 = !DILocation(line: 76, column: 3, scope: !25)
!41 = distinct !DISubprogram(name: "jround_up", scope: !3, file: !3, line: 81, type: !26, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !29)
!42 = !DILocalVariable(name: "a", arg: 1, scope: !41, file: !3, line: 81, type: !28)
!43 = !DILocation(line: 81, column: 17, scope: !41)
!44 = !DILocalVariable(name: "b", arg: 2, scope: !41, file: !3, line: 81, type: !28)
!45 = !DILocation(line: 81, column: 25, scope: !41)
!46 = !DILocation(line: 85, column: 8, scope: !41)
!47 = !DILocation(line: 85, column: 10, scope: !41)
!48 = !DILocation(line: 85, column: 5, scope: !41)
!49 = !DILocation(line: 86, column: 10, scope: !41)
!50 = !DILocation(line: 86, column: 15, scope: !41)
!51 = !DILocation(line: 86, column: 19, scope: !41)
!52 = !DILocation(line: 86, column: 17, scope: !41)
!53 = !DILocation(line: 86, column: 12, scope: !41)
!54 = !DILocation(line: 86, column: 3, scope: !41)
!55 = distinct !DISubprogram(name: "jcopy_sample_rows", scope: !3, file: !3, line: 111, type: !56, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !29)
!56 = !DISubroutineType(types: !57)
!57 = !{null, !58, !14, !58, !14, !14, !66}
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPARRAY", file: !59, line: 67, baseType: !60)
!59 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jpeglib.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "2a2b23235fe587b10147d741e3371e67")
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPROW", file: !59, line: 66, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPLE", file: !64, line: 59, baseType: !65)
!64 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jmorecfg.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "56a0eda58fafa6bdd5498f702a998c09")
!65 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "JDIMENSION", file: !64, line: 171, baseType: !67)
!67 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!68 = !DILocalVariable(name: "input_array", arg: 1, scope: !55, file: !3, line: 111, type: !58)
!69 = !DILocation(line: 111, column: 31, scope: !55)
!70 = !DILocalVariable(name: "source_row", arg: 2, scope: !55, file: !3, line: 111, type: !14)
!71 = !DILocation(line: 111, column: 48, scope: !55)
!72 = !DILocalVariable(name: "output_array", arg: 3, scope: !55, file: !3, line: 112, type: !58)
!73 = !DILocation(line: 112, column: 17, scope: !55)
!74 = !DILocalVariable(name: "dest_row", arg: 4, scope: !55, file: !3, line: 112, type: !14)
!75 = !DILocation(line: 112, column: 35, scope: !55)
!76 = !DILocalVariable(name: "num_rows", arg: 5, scope: !55, file: !3, line: 113, type: !14)
!77 = !DILocation(line: 113, column: 10, scope: !55)
!78 = !DILocalVariable(name: "num_cols", arg: 6, scope: !55, file: !3, line: 113, type: !66)
!79 = !DILocation(line: 113, column: 31, scope: !55)
!80 = !DILocalVariable(name: "inptr", scope: !55, file: !3, line: 120, type: !61)
!81 = !DILocation(line: 120, column: 21, scope: !55)
!82 = !DILocalVariable(name: "outptr", scope: !55, file: !3, line: 120, type: !61)
!83 = !DILocation(line: 120, column: 28, scope: !55)
!84 = !DILocalVariable(name: "count", scope: !55, file: !3, line: 122, type: !5)
!85 = !DILocation(line: 122, column: 19, scope: !55)
!86 = !DILocation(line: 122, column: 37, scope: !55)
!87 = !DILocation(line: 122, column: 46, scope: !55)
!88 = !DILocalVariable(name: "row", scope: !55, file: !3, line: 126, type: !14)
!89 = !DILocation(line: 126, column: 16, scope: !55)
!90 = !DILocation(line: 128, column: 18, scope: !55)
!91 = !DILocation(line: 128, column: 15, scope: !55)
!92 = !DILocation(line: 129, column: 19, scope: !55)
!93 = !DILocation(line: 129, column: 16, scope: !55)
!94 = !DILocation(line: 131, column: 14, scope: !95)
!95 = distinct !DILexicalBlock(scope: !55, file: !3, line: 131, column: 3)
!96 = !DILocation(line: 131, column: 12, scope: !95)
!97 = !DILocation(line: 131, column: 8, scope: !95)
!98 = !DILocation(line: 131, column: 24, scope: !99)
!99 = distinct !DILexicalBlock(scope: !95, file: !3, line: 131, column: 3)
!100 = !DILocation(line: 131, column: 28, scope: !99)
!101 = !DILocation(line: 131, column: 3, scope: !95)
!102 = !DILocation(line: 132, column: 25, scope: !103)
!103 = distinct !DILexicalBlock(scope: !99, file: !3, line: 131, column: 40)
!104 = !DILocation(line: 132, column: 13, scope: !103)
!105 = !DILocation(line: 132, column: 11, scope: !103)
!106 = !DILocation(line: 133, column: 27, scope: !103)
!107 = !DILocation(line: 133, column: 14, scope: !103)
!108 = !DILocation(line: 133, column: 12, scope: !103)
!109 = !DILocation(line: 135, column: 5, scope: !103)
!110 = !DILocation(line: 140, column: 3, scope: !103)
!111 = !DILocation(line: 131, column: 36, scope: !99)
!112 = !DILocation(line: 131, column: 3, scope: !99)
!113 = distinct !{!113, !101, !114, !115}
!114 = !DILocation(line: 140, column: 3, scope: !95)
!115 = !{!"llvm.loop.mustprogress"}
!116 = !DILocation(line: 141, column: 1, scope: !55)
!117 = distinct !DISubprogram(name: "jcopy_block_row", scope: !3, file: !3, line: 145, type: !118, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !29)
!118 = !DISubroutineType(types: !119)
!119 = !{null, !120, !120, !66}
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCKROW", file: !59, line: 71, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCK", file: !59, line: 70, baseType: !123)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 1024, elements: !126)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "JCOEF", file: !64, line: 99, baseType: !125)
!125 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!126 = !{!127}
!127 = !DISubrange(count: 64)
!128 = !DILocalVariable(name: "input_row", arg: 1, scope: !117, file: !3, line: 145, type: !120)
!129 = !DILocation(line: 145, column: 28, scope: !117)
!130 = !DILocalVariable(name: "output_row", arg: 2, scope: !117, file: !3, line: 145, type: !120)
!131 = !DILocation(line: 145, column: 49, scope: !117)
!132 = !DILocalVariable(name: "num_blocks", arg: 3, scope: !117, file: !3, line: 146, type: !66)
!133 = !DILocation(line: 146, column: 15, scope: !117)
!134 = !DILocation(line: 150, column: 3, scope: !117)
!135 = !DILocation(line: 161, column: 1, scope: !117)
!136 = distinct !DISubprogram(name: "jzero_far", scope: !3, file: !3, line: 165, type: !137, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !29)
!137 = !DISubroutineType(types: !138)
!138 = !{null, !8, !5}
!139 = !DILocalVariable(name: "target", arg: 1, scope: !136, file: !3, line: 165, type: !8)
!140 = !DILocation(line: 165, column: 23, scope: !136)
!141 = !DILocalVariable(name: "bytestozero", arg: 2, scope: !136, file: !3, line: 165, type: !5)
!142 = !DILocation(line: 165, column: 38, scope: !136)
!143 = !DILocation(line: 170, column: 3, scope: !136)
!144 = !DILocation(line: 179, column: 1, scope: !136)
