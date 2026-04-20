; ModuleID = 'cBench/consumer_jpeg_c/src/jcomapi.c'
source_filename = "cBench/consumer_jpeg_c/src/jcomapi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_common_struct = type { ptr, ptr, ptr, i32, i32 }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_abort(ptr noundef %0) #0 !dbg !45 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !164, !DIExpression(), !165)
    #dbg_declare(ptr %3, !166, !DIExpression(), !167)
  store i32 1, ptr %3, align 4, !dbg !168
  br label %4, !dbg !170

4:                                                ; preds = %15, %1
  %5 = load i32, ptr %3, align 4, !dbg !171
  %6 = icmp sgt i32 %5, 0, !dbg !173
  br i1 %6, label %7, label %18, !dbg !174

7:                                                ; preds = %4
  %8 = load ptr, ptr %2, align 8, !dbg !175
  %9 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %8, i32 0, i32 1, !dbg !177
  %10 = load ptr, ptr %9, align 8, !dbg !177
  %11 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %10, i32 0, i32 9, !dbg !178
  %12 = load ptr, ptr %11, align 8, !dbg !178
  %13 = load ptr, ptr %2, align 8, !dbg !179
  %14 = load i32, ptr %3, align 4, !dbg !180
  call void %12(ptr noundef %13, i32 noundef %14), !dbg !181
  br label %15, !dbg !182

15:                                               ; preds = %7
  %16 = load i32, ptr %3, align 4, !dbg !183
  %17 = add nsw i32 %16, -1, !dbg !183
  store i32 %17, ptr %3, align 4, !dbg !183
  br label %4, !dbg !184, !llvm.loop !185

18:                                               ; preds = %4
  %19 = load ptr, ptr %2, align 8, !dbg !188
  %20 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %19, i32 0, i32 3, !dbg !189
  %21 = load i32, ptr %20, align 8, !dbg !189
  %22 = icmp ne i32 %21, 0, !dbg !188
  %23 = zext i1 %22 to i64, !dbg !188
  %24 = select i1 %22, i32 200, i32 100, !dbg !188
  %25 = load ptr, ptr %2, align 8, !dbg !190
  %26 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %25, i32 0, i32 4, !dbg !191
  store i32 %24, ptr %26, align 4, !dbg !192
  ret void, !dbg !193
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_destroy(ptr noundef %0) #0 !dbg !194 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !195, !DIExpression(), !196)
  %3 = load ptr, ptr %2, align 8, !dbg !197
  %4 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %3, i32 0, i32 1, !dbg !199
  %5 = load ptr, ptr %4, align 8, !dbg !199
  %6 = icmp ne ptr %5, null, !dbg !200
  br i1 %6, label %7, label %14, !dbg !200

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !dbg !201
  %9 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %8, i32 0, i32 1, !dbg !202
  %10 = load ptr, ptr %9, align 8, !dbg !202
  %11 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %10, i32 0, i32 10, !dbg !203
  %12 = load ptr, ptr %11, align 8, !dbg !203
  %13 = load ptr, ptr %2, align 8, !dbg !204
  call void %12(ptr noundef %13), !dbg !205
  br label %14, !dbg !205

14:                                               ; preds = %7, %1
  %15 = load ptr, ptr %2, align 8, !dbg !206
  %16 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %15, i32 0, i32 1, !dbg !207
  store ptr null, ptr %16, align 8, !dbg !208
  %17 = load ptr, ptr %2, align 8, !dbg !209
  %18 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %17, i32 0, i32 4, !dbg !210
  store i32 0, ptr %18, align 4, !dbg !211
  ret void, !dbg !212
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @jpeg_alloc_quant_table(ptr noundef %0) #0 !dbg !213 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !216, !DIExpression(), !217)
    #dbg_declare(ptr %3, !218, !DIExpression(), !219)
  %4 = load ptr, ptr %2, align 8, !dbg !220
  %5 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %4, i32 0, i32 1, !dbg !221
  %6 = load ptr, ptr %5, align 8, !dbg !221
  %7 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %6, i32 0, i32 0, !dbg !222
  %8 = load ptr, ptr %7, align 8, !dbg !222
  %9 = load ptr, ptr %2, align 8, !dbg !223
  %10 = call ptr %8(ptr noundef %9, i32 noundef 0, i64 noundef 132), !dbg !224
  store ptr %10, ptr %3, align 8, !dbg !225
  %11 = load ptr, ptr %3, align 8, !dbg !226
  %12 = getelementptr inbounds nuw %struct.JQUANT_TBL, ptr %11, i32 0, i32 1, !dbg !227
  store i32 0, ptr %12, align 4, !dbg !228
  %13 = load ptr, ptr %3, align 8, !dbg !229
  ret ptr %13, !dbg !230
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @jpeg_alloc_huff_table(ptr noundef %0) #0 !dbg !231 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !234, !DIExpression(), !235)
    #dbg_declare(ptr %3, !236, !DIExpression(), !237)
  %4 = load ptr, ptr %2, align 8, !dbg !238
  %5 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %4, i32 0, i32 1, !dbg !239
  %6 = load ptr, ptr %5, align 8, !dbg !239
  %7 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %6, i32 0, i32 0, !dbg !240
  %8 = load ptr, ptr %7, align 8, !dbg !240
  %9 = load ptr, ptr %2, align 8, !dbg !241
  %10 = call ptr %8(ptr noundef %9, i32 noundef 0, i64 noundef 280), !dbg !242
  store ptr %10, ptr %3, align 8, !dbg !243
  %11 = load ptr, ptr %3, align 8, !dbg !244
  %12 = getelementptr inbounds nuw %struct.JHUFF_TBL, ptr %11, i32 0, i32 2, !dbg !245
  store i32 0, ptr %12, align 4, !dbg !246
  %13 = load ptr, ptr %3, align 8, !dbg !247
  ret ptr %13, !dbg !248
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jcomapi.c", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "4b5f0d83c63222bc8ef9841ba3e0fbe7")
!2 = !{!3, !4, !19, !22}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "JQUANT_TBL", file: !6, line: 95, baseType: !7)
!6 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jpeglib.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "2a2b23235fe587b10147d741e3371e67")
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 83, size: 1056, elements: !8)
!8 = !{!9, !16}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "quantval", scope: !7, file: !6, line: 88, baseType: !10, size: 1024)
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 1024, elements: !14)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !12, line: 147, baseType: !13)
!12 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jmorecfg.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "56a0eda58fafa6bdd5498f702a998c09")
!13 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!14 = !{!15}
!15 = !DISubrange(count: 64)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !7, file: !6, line: 94, baseType: !17, size: 32, offset: 1024)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "boolean", file: !12, line: 227, baseType: !18)
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !20, line: 18, baseType: !21)
!20 = !DIFile(filename: "/usr/local/lib/clang/20/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!21 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "JHUFF_TBL", file: !6, line: 111, baseType: !24)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 100, size: 2240, elements: !25)
!25 = !{!26, !32, !36}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !24, file: !6, line: 102, baseType: !27, size: 136)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 136, elements: !30)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT8", file: !12, line: 135, baseType: !29)
!29 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!30 = !{!31}
!31 = !DISubrange(count: 17)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "huffval", scope: !24, file: !6, line: 104, baseType: !33, size: 2048, offset: 136)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 2048, elements: !34)
!34 = !{!35}
!35 = !DISubrange(count: 256)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !24, file: !6, line: 110, baseType: !17, size: 32, offset: 2208)
!37 = !{i32 7, !"Dwarf Version", i32 5}
!38 = !{i32 2, !"Debug Info Version", i32 3}
!39 = !{i32 1, !"wchar_size", i32 4}
!40 = !{i32 8, !"PIC Level", i32 2}
!41 = !{i32 7, !"PIE Level", i32 2}
!42 = !{i32 7, !"uwtable", i32 2}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!45 = distinct !DISubprogram(name: "jpeg_abort", scope: !1, file: !1, line: 29, type: !46, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !163)
!46 = !DISubroutineType(types: !47)
!47 = !{null, !48}
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_common_ptr", file: !6, line: 248, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_common_struct", file: !6, line: 240, size: 256, elements: !51)
!51 = !{!52, !94, !152, !161, !162}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !50, file: !6, line: 241, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_error_mgr", file: !6, line: 618, size: 1344, elements: !55)
!55 = !{!56, !58, !62, !63, !69, !70, !71, !82, !83, !85, !90, !91, !92, !93}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "error_exit", scope: !54, file: !6, line: 620, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "emit_message", scope: !54, file: !6, line: 622, baseType: !59, size: 64, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DISubroutineType(types: !61)
!61 = !{null, !48, !18}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "output_message", scope: !54, file: !6, line: 624, baseType: !57, size: 64, offset: 128)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "format_message", scope: !54, file: !6, line: 626, baseType: !64, size: 64, offset: 192)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DISubroutineType(types: !66)
!66 = !{null, !48, !67}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "reset_error_mgr", scope: !54, file: !6, line: 629, baseType: !57, size: 64, offset: 256)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "msg_code", scope: !54, file: !6, line: 634, baseType: !18, size: 32, offset: 320)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "msg_parm", scope: !54, file: !6, line: 639, baseType: !72, size: 640, offset: 352)
!72 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !54, file: !6, line: 636, size: 640, elements: !73)
!73 = !{!74, !78}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !72, file: !6, line: 637, baseType: !75, size: 256)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 256, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 8)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !72, file: !6, line: 638, baseType: !79, size: 640)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 640, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 80)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "trace_level", scope: !54, file: !6, line: 643, baseType: !18, size: 32, offset: 992)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "num_warnings", scope: !54, file: !6, line: 651, baseType: !84, size: 64, offset: 1024)
!84 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_message_table", scope: !54, file: !6, line: 663, baseType: !86, size: 64, offset: 1088)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "last_jpeg_message", scope: !54, file: !6, line: 664, baseType: !18, size: 32, offset: 1152)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "addon_message_table", scope: !54, file: !6, line: 668, baseType: !86, size: 64, offset: 1216)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "first_addon_message", scope: !54, file: !6, line: 669, baseType: !18, size: 32, offset: 1280)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "last_addon_message", scope: !54, file: !6, line: 670, baseType: !18, size: 32, offset: 1312)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !50, file: !6, line: 241, baseType: !95, size: 64, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_memory_mgr", file: !6, line: 731, size: 768, elements: !97)
!97 = !{!98, !102, !103, !114, !126, !133, !140, !141, !145, !149, !150, !151}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_small", scope: !96, file: !6, line: 733, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DISubroutineType(types: !101)
!101 = !{!3, !48, !18, !19}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_large", scope: !96, file: !6, line: 735, baseType: !99, size: 64, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_sarray", scope: !96, file: !6, line: 737, baseType: !104, size: 64, offset: 128)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DISubroutineType(types: !106)
!106 = !{!107, !48, !18, !112, !112}
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPARRAY", file: !6, line: 67, baseType: !108)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPROW", file: !6, line: 66, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPLE", file: !12, line: 59, baseType: !29)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "JDIMENSION", file: !12, line: 171, baseType: !113)
!113 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_barray", scope: !96, file: !6, line: 740, baseType: !115, size: 64, offset: 192)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!118, !48, !18, !112, !112}
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCKARRAY", file: !6, line: 72, baseType: !119)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCKROW", file: !6, line: 71, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCK", file: !6, line: 70, baseType: !123)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 1024, elements: !14)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "JCOEF", file: !12, line: 99, baseType: !125)
!125 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_sarray", scope: !96, file: !6, line: 743, baseType: !127, size: 64, offset: 256)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DISubroutineType(types: !129)
!129 = !{!130, !48, !18, !17, !112, !112, !112}
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_sarray_ptr", file: !6, line: 727, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_sarray_control", file: !6, line: 727, flags: DIFlagFwdDecl)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_barray", scope: !96, file: !6, line: 749, baseType: !134, size: 64, offset: 320)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{!137, !48, !18, !17, !112, !112, !112}
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_barray_ptr", file: !6, line: 728, baseType: !138)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_barray_control", file: !6, line: 728, flags: DIFlagFwdDecl)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "realize_virt_arrays", scope: !96, file: !6, line: 755, baseType: !57, size: 64, offset: 384)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_sarray", scope: !96, file: !6, line: 756, baseType: !142, size: 64, offset: 448)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DISubroutineType(types: !144)
!144 = !{!107, !48, !130, !112, !112, !17}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_barray", scope: !96, file: !6, line: 761, baseType: !146, size: 64, offset: 512)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DISubroutineType(types: !148)
!148 = !{!118, !48, !137, !112, !112, !17}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "free_pool", scope: !96, file: !6, line: 766, baseType: !59, size: 64, offset: 576)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "self_destruct", scope: !96, file: !6, line: 767, baseType: !57, size: 64, offset: 640)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "max_memory_to_use", scope: !96, file: !6, line: 774, baseType: !84, size: 64, offset: 704)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !50, file: !6, line: 241, baseType: !153, size: 64, offset: 128)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_progress_mgr", file: !6, line: 676, size: 256, elements: !155)
!155 = !{!156, !157, !158, !159, !160}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !154, file: !6, line: 677, baseType: !57, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "pass_counter", scope: !154, file: !6, line: 679, baseType: !84, size: 64, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "pass_limit", scope: !154, file: !6, line: 680, baseType: !84, size: 64, offset: 128)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "completed_passes", scope: !154, file: !6, line: 681, baseType: !18, size: 32, offset: 192)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "total_passes", scope: !154, file: !6, line: 682, baseType: !18, size: 32, offset: 224)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !50, file: !6, line: 241, baseType: !17, size: 32, offset: 192)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !50, file: !6, line: 241, baseType: !18, size: 32, offset: 224)
!163 = !{}
!164 = !DILocalVariable(name: "cinfo", arg: 1, scope: !45, file: !1, line: 29, type: !48)
!165 = !DILocation(line: 29, column: 26, scope: !45)
!166 = !DILocalVariable(name: "pool", scope: !45, file: !1, line: 31, type: !18)
!167 = !DILocation(line: 31, column: 7, scope: !45)
!168 = !DILocation(line: 36, column: 13, scope: !169)
!169 = distinct !DILexicalBlock(scope: !45, file: !1, line: 36, column: 3)
!170 = !DILocation(line: 36, column: 8, scope: !169)
!171 = !DILocation(line: 36, column: 33, scope: !172)
!172 = distinct !DILexicalBlock(scope: !169, file: !1, line: 36, column: 3)
!173 = !DILocation(line: 36, column: 38, scope: !172)
!174 = !DILocation(line: 36, column: 3, scope: !169)
!175 = !DILocation(line: 37, column: 7, scope: !176)
!176 = distinct !DILexicalBlock(scope: !172, file: !1, line: 36, column: 65)
!177 = !DILocation(line: 37, column: 14, scope: !176)
!178 = !DILocation(line: 37, column: 19, scope: !176)
!179 = !DILocation(line: 37, column: 31, scope: !176)
!180 = !DILocation(line: 37, column: 38, scope: !176)
!181 = !DILocation(line: 37, column: 5, scope: !176)
!182 = !DILocation(line: 38, column: 3, scope: !176)
!183 = !DILocation(line: 36, column: 61, scope: !172)
!184 = !DILocation(line: 36, column: 3, scope: !172)
!185 = distinct !{!185, !174, !186, !187}
!186 = !DILocation(line: 38, column: 3, scope: !169)
!187 = !{!"llvm.loop.mustprogress"}
!188 = !DILocation(line: 41, column: 26, scope: !45)
!189 = !DILocation(line: 41, column: 33, scope: !45)
!190 = !DILocation(line: 41, column: 3, scope: !45)
!191 = !DILocation(line: 41, column: 10, scope: !45)
!192 = !DILocation(line: 41, column: 23, scope: !45)
!193 = !DILocation(line: 42, column: 1, scope: !45)
!194 = distinct !DISubprogram(name: "jpeg_destroy", scope: !1, file: !1, line: 57, type: !46, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !163)
!195 = !DILocalVariable(name: "cinfo", arg: 1, scope: !194, file: !1, line: 57, type: !48)
!196 = !DILocation(line: 57, column: 28, scope: !194)
!197 = !DILocation(line: 61, column: 7, scope: !198)
!198 = distinct !DILexicalBlock(scope: !194, file: !1, line: 61, column: 7)
!199 = !DILocation(line: 61, column: 14, scope: !198)
!200 = !DILocation(line: 61, column: 18, scope: !198)
!201 = !DILocation(line: 62, column: 7, scope: !198)
!202 = !DILocation(line: 62, column: 14, scope: !198)
!203 = !DILocation(line: 62, column: 19, scope: !198)
!204 = !DILocation(line: 62, column: 35, scope: !198)
!205 = !DILocation(line: 62, column: 5, scope: !198)
!206 = !DILocation(line: 63, column: 3, scope: !194)
!207 = !DILocation(line: 63, column: 10, scope: !194)
!208 = !DILocation(line: 63, column: 14, scope: !194)
!209 = !DILocation(line: 64, column: 3, scope: !194)
!210 = !DILocation(line: 64, column: 10, scope: !194)
!211 = !DILocation(line: 64, column: 23, scope: !194)
!212 = !DILocation(line: 65, column: 1, scope: !194)
!213 = distinct !DISubprogram(name: "jpeg_alloc_quant_table", scope: !1, file: !1, line: 74, type: !214, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !163)
!214 = !DISubroutineType(types: !215)
!215 = !{!4, !48}
!216 = !DILocalVariable(name: "cinfo", arg: 1, scope: !213, file: !1, line: 74, type: !48)
!217 = !DILocation(line: 74, column: 38, scope: !213)
!218 = !DILocalVariable(name: "tbl", scope: !213, file: !1, line: 76, type: !4)
!219 = !DILocation(line: 76, column: 15, scope: !213)
!220 = !DILocation(line: 79, column: 7, scope: !213)
!221 = !DILocation(line: 79, column: 14, scope: !213)
!222 = !DILocation(line: 79, column: 19, scope: !213)
!223 = !DILocation(line: 79, column: 33, scope: !213)
!224 = !DILocation(line: 79, column: 5, scope: !213)
!225 = !DILocation(line: 78, column: 7, scope: !213)
!226 = !DILocation(line: 80, column: 3, scope: !213)
!227 = !DILocation(line: 80, column: 8, scope: !213)
!228 = !DILocation(line: 80, column: 19, scope: !213)
!229 = !DILocation(line: 81, column: 10, scope: !213)
!230 = !DILocation(line: 81, column: 3, scope: !213)
!231 = distinct !DISubprogram(name: "jpeg_alloc_huff_table", scope: !1, file: !1, line: 86, type: !232, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !163)
!232 = !DISubroutineType(types: !233)
!233 = !{!22, !48}
!234 = !DILocalVariable(name: "cinfo", arg: 1, scope: !231, file: !1, line: 86, type: !48)
!235 = !DILocation(line: 86, column: 37, scope: !231)
!236 = !DILocalVariable(name: "tbl", scope: !231, file: !1, line: 88, type: !22)
!237 = !DILocation(line: 88, column: 14, scope: !231)
!238 = !DILocation(line: 91, column: 7, scope: !231)
!239 = !DILocation(line: 91, column: 14, scope: !231)
!240 = !DILocation(line: 91, column: 19, scope: !231)
!241 = !DILocation(line: 91, column: 33, scope: !231)
!242 = !DILocation(line: 91, column: 5, scope: !231)
!243 = !DILocation(line: 90, column: 7, scope: !231)
!244 = !DILocation(line: 92, column: 3, scope: !231)
!245 = !DILocation(line: 92, column: 8, scope: !231)
!246 = !DILocation(line: 92, column: 19, scope: !231)
!247 = !DILocation(line: 93, column: 10, scope: !231)
!248 = !DILocation(line: 93, column: 3, scope: !231)
