; ModuleID = 'cBench/consumer_jpeg_c/src/loop-wrap.c'
source_filename = "cBench/consumer_jpeg_c/src/loop-wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"_finfo_dataset\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [3 x i8] c"rt\00", align 1, !dbg !7
@stderr = external global ptr, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"\0AError: Can't find dataset!\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1, !dbg !17

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 !dbg !34 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
    #dbg_declare(ptr %4, !41, !DIExpression(), !42)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !43, !DIExpression(), !44)
    #dbg_declare(ptr %6, !45, !DIExpression(), !105)
  store ptr null, ptr %6, align 8, !dbg !105
    #dbg_declare(ptr %7, !106, !DIExpression(), !107)
    #dbg_declare(ptr %8, !108, !DIExpression(), !109)
  %9 = call noalias ptr @fopen(ptr noundef @.str, ptr noundef @.str.1), !dbg !110
  store ptr %9, ptr %6, align 8, !dbg !112
  %10 = icmp eq ptr %9, null, !dbg !113
  br i1 %10, label %11, label %14, !dbg !113

11:                                               ; preds = %2
  %12 = load ptr, ptr @stderr, align 8, !dbg !114
  %13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.2) #3, !dbg !116
  store i32 1, ptr %3, align 4, !dbg !117
  br label %31, !dbg !117

14:                                               ; preds = %2
  %15 = load ptr, ptr %6, align 8, !dbg !118
  %16 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %15, ptr noundef @.str.3, ptr noundef %8), !dbg !119
  %17 = load ptr, ptr %6, align 8, !dbg !120
  %18 = call i32 @fclose(ptr noundef %17), !dbg !121
  store i64 0, ptr %7, align 8, !dbg !122
  br label %19, !dbg !124

19:                                               ; preds = %27, %14
  %20 = load i64, ptr %7, align 8, !dbg !125
  %21 = load i64, ptr %8, align 8, !dbg !127
  %22 = icmp slt i64 %20, %21, !dbg !128
  br i1 %22, label %23, label %30, !dbg !129

23:                                               ; preds = %19
  %24 = load i32, ptr %4, align 4, !dbg !130
  %25 = load ptr, ptr %5, align 8, !dbg !132
  %26 = call i32 @main1(i32 noundef %24, ptr noundef %25), !dbg !133
  br label %27, !dbg !134

27:                                               ; preds = %23
  %28 = load i64, ptr %7, align 8, !dbg !135
  %29 = add nsw i64 %28, 1, !dbg !135
  store i64 %29, ptr %7, align 8, !dbg !135
  br label %19, !dbg !136, !llvm.loop !137

30:                                               ; preds = %19
  store i32 0, ptr %3, align 4, !dbg !140
  br label %31, !dbg !140

31:                                               ; preds = %30, %11
  %32 = load i32, ptr %3, align 4, !dbg !141
  ret i32 %32, !dbg !141
}

declare noalias ptr @fopen(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) #1

declare i32 @fclose(ptr noundef) #1

declare i32 @main1(i32 noundef, ptr noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!22}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 10, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "cBench/consumer_jpeg_c/src/loop-wrap.c", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "d2702b100f63df8edff818e73e15be14")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 15)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 10, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 3)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 12, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 29)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 16, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 4)
!22 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !23, globals: !25, splitDebugInlining: false, nameTableKind: None)
!23 = !{!24}
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!25 = !{!0, !7, !12, !17}
!26 = !{i32 7, !"Dwarf Version", i32 5}
!27 = !{i32 2, !"Debug Info Version", i32 3}
!28 = !{i32 1, !"wchar_size", i32 4}
!29 = !{i32 8, !"PIC Level", i32 2}
!30 = !{i32 7, !"PIE Level", i32 2}
!31 = !{i32 7, !"uwtable", i32 2}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!34 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 5, type: !35, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !40)
!35 = !DISubroutineType(types: !36)
!36 = !{!37, !37, !38}
!37 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!40 = !{}
!41 = !DILocalVariable(name: "argc", arg: 1, scope: !34, file: !2, line: 5, type: !37)
!42 = !DILocation(line: 5, column: 14, scope: !34)
!43 = !DILocalVariable(name: "argv", arg: 2, scope: !34, file: !2, line: 5, type: !38)
!44 = !DILocation(line: 5, column: 26, scope: !34)
!45 = !DILocalVariable(name: "loop_wrap", scope: !34, file: !2, line: 7, type: !46)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !48, line: 7, baseType: !49)
!48 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !50, line: 49, size: 1728, elements: !51)
!50 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!51 = !{!52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !67, !69, !70, !71, !75, !77, !79, !83, !86, !88, !91, !94, !95, !96, !100, !101}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !49, file: !50, line: 51, baseType: !37, size: 32)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !49, file: !50, line: 54, baseType: !39, size: 64, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !49, file: !50, line: 55, baseType: !39, size: 64, offset: 128)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !49, file: !50, line: 56, baseType: !39, size: 64, offset: 192)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !49, file: !50, line: 57, baseType: !39, size: 64, offset: 256)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !49, file: !50, line: 58, baseType: !39, size: 64, offset: 320)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !49, file: !50, line: 59, baseType: !39, size: 64, offset: 384)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !49, file: !50, line: 60, baseType: !39, size: 64, offset: 448)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !49, file: !50, line: 61, baseType: !39, size: 64, offset: 512)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !49, file: !50, line: 64, baseType: !39, size: 64, offset: 576)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !49, file: !50, line: 65, baseType: !39, size: 64, offset: 640)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !49, file: !50, line: 66, baseType: !39, size: 64, offset: 704)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !49, file: !50, line: 68, baseType: !65, size: 64, offset: 768)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !50, line: 36, flags: DIFlagFwdDecl)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !49, file: !50, line: 70, baseType: !68, size: 64, offset: 832)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !49, file: !50, line: 72, baseType: !37, size: 32, offset: 896)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !49, file: !50, line: 73, baseType: !37, size: 32, offset: 928)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !49, file: !50, line: 74, baseType: !72, size: 64, offset: 960)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !73, line: 152, baseType: !74)
!73 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!74 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !49, file: !50, line: 77, baseType: !76, size: 16, offset: 1024)
!76 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !49, file: !50, line: 78, baseType: !78, size: 8, offset: 1040)
!78 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !49, file: !50, line: 79, baseType: !80, size: 8, offset: 1048)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 1)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !49, file: !50, line: 81, baseType: !84, size: 64, offset: 1088)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !50, line: 43, baseType: null)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !49, file: !50, line: 89, baseType: !87, size: 64, offset: 1152)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !73, line: 153, baseType: !74)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !49, file: !50, line: 91, baseType: !89, size: 64, offset: 1216)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !50, line: 37, flags: DIFlagFwdDecl)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !49, file: !50, line: 92, baseType: !92, size: 64, offset: 1280)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !50, line: 38, flags: DIFlagFwdDecl)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !49, file: !50, line: 93, baseType: !68, size: 64, offset: 1344)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !49, file: !50, line: 94, baseType: !24, size: 64, offset: 1408)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !49, file: !50, line: 95, baseType: !97, size: 64, offset: 1472)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !98, line: 18, baseType: !99)
!98 = !DIFile(filename: "/usr/local/lib/clang/20/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!99 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !49, file: !50, line: 96, baseType: !37, size: 32, offset: 1536)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !49, file: !50, line: 98, baseType: !102, size: 160, offset: 1568)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 20)
!105 = !DILocation(line: 7, column: 9, scope: !34)
!106 = !DILocalVariable(name: "loop_wrap1", scope: !34, file: !2, line: 8, type: !74)
!107 = !DILocation(line: 8, column: 8, scope: !34)
!108 = !DILocalVariable(name: "loop_wrap2", scope: !34, file: !2, line: 8, type: !74)
!109 = !DILocation(line: 8, column: 20, scope: !34)
!110 = !DILocation(line: 10, column: 18, scope: !111)
!111 = distinct !DILexicalBlock(scope: !34, file: !2, line: 10, column: 7)
!112 = !DILocation(line: 10, column: 17, scope: !111)
!113 = !DILocation(line: 10, column: 47, scope: !111)
!114 = !DILocation(line: 12, column: 13, scope: !115)
!115 = distinct !DILexicalBlock(scope: !111, file: !2, line: 11, column: 3)
!116 = !DILocation(line: 12, column: 5, scope: !115)
!117 = !DILocation(line: 13, column: 5, scope: !115)
!118 = !DILocation(line: 16, column: 10, scope: !34)
!119 = !DILocation(line: 16, column: 3, scope: !34)
!120 = !DILocation(line: 17, column: 10, scope: !34)
!121 = !DILocation(line: 17, column: 3, scope: !34)
!122 = !DILocation(line: 19, column: 18, scope: !123)
!123 = distinct !DILexicalBlock(scope: !34, file: !2, line: 19, column: 3)
!124 = !DILocation(line: 19, column: 8, scope: !123)
!125 = !DILocation(line: 19, column: 22, scope: !126)
!126 = distinct !DILexicalBlock(scope: !123, file: !2, line: 19, column: 3)
!127 = !DILocation(line: 19, column: 33, scope: !126)
!128 = !DILocation(line: 19, column: 32, scope: !126)
!129 = !DILocation(line: 19, column: 3, scope: !123)
!130 = !DILocation(line: 21, column: 11, scope: !131)
!131 = distinct !DILexicalBlock(scope: !126, file: !2, line: 20, column: 3)
!132 = !DILocation(line: 21, column: 17, scope: !131)
!133 = !DILocation(line: 21, column: 5, scope: !131)
!134 = !DILocation(line: 22, column: 3, scope: !131)
!135 = !DILocation(line: 19, column: 55, scope: !126)
!136 = !DILocation(line: 19, column: 3, scope: !126)
!137 = distinct !{!137, !129, !138, !139}
!138 = !DILocation(line: 22, column: 3, scope: !123)
!139 = !{!"llvm.loop.mustprogress"}
!140 = !DILocation(line: 24, column: 3, scope: !34)
!141 = !DILocation(line: 25, column: 1, scope: !34)
