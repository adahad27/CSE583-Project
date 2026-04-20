; ModuleID = 'cBench/consumer_jpeg_c/src/cdjpeg.c'
source_filename = "cBench/consumer_jpeg_c/src/cdjpeg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdin = external global ptr, align 8
@stdout = external global ptr, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @keymatch(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !30 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !40, !DIExpression(), !41)
  store ptr %1, ptr %6, align 8
    #dbg_declare(ptr %6, !42, !DIExpression(), !43)
  store i32 %2, ptr %7, align 4
    #dbg_declare(ptr %7, !44, !DIExpression(), !45)
    #dbg_declare(ptr %8, !46, !DIExpression(), !47)
    #dbg_declare(ptr %9, !48, !DIExpression(), !49)
    #dbg_declare(ptr %10, !50, !DIExpression(), !51)
  store i32 0, ptr %10, align 4, !dbg !51
  br label %11, !dbg !52

11:                                               ; preds = %42, %3
  %12 = load ptr, ptr %5, align 8, !dbg !53
  %13 = getelementptr inbounds nuw i8, ptr %12, i32 1, !dbg !53
  store ptr %13, ptr %5, align 8, !dbg !53
  %14 = load i8, ptr %12, align 1, !dbg !54
  %15 = sext i8 %14 to i32, !dbg !54
  store i32 %15, ptr %8, align 4, !dbg !55
  %16 = icmp ne i32 %15, 0, !dbg !56
  br i1 %16, label %17, label %45, !dbg !52

17:                                               ; preds = %11
  %18 = load ptr, ptr %6, align 8, !dbg !57
  %19 = getelementptr inbounds nuw i8, ptr %18, i32 1, !dbg !57
  store ptr %19, ptr %6, align 8, !dbg !57
  %20 = load i8, ptr %18, align 1, !dbg !60
  %21 = sext i8 %20 to i32, !dbg !60
  store i32 %21, ptr %9, align 4, !dbg !61
  %22 = icmp eq i32 %21, 0, !dbg !62
  br i1 %22, label %23, label %24, !dbg !62

23:                                               ; preds = %17
  store i32 0, ptr %4, align 4, !dbg !63
  br label %51, !dbg !63

24:                                               ; preds = %17
  %25 = call ptr @__ctype_b_loc() #3, !dbg !64
  %26 = load ptr, ptr %25, align 8, !dbg !64
  %27 = load i32, ptr %8, align 4, !dbg !64
  %28 = sext i32 %27 to i64, !dbg !64
  %29 = getelementptr inbounds i16, ptr %26, i64 %28, !dbg !64
  %30 = load i16, ptr %29, align 2, !dbg !64
  %31 = zext i16 %30 to i32, !dbg !64
  %32 = and i32 %31, 256, !dbg !64
  %33 = icmp ne i32 %32, 0, !dbg !64
  br i1 %33, label %34, label %37, !dbg !64

34:                                               ; preds = %24
  %35 = load i32, ptr %8, align 4, !dbg !66
  %36 = call i32 @tolower(i32 noundef %35) #4, !dbg !67
  store i32 %36, ptr %8, align 4, !dbg !68
  br label %37, !dbg !69

37:                                               ; preds = %34, %24
  %38 = load i32, ptr %8, align 4, !dbg !70
  %39 = load i32, ptr %9, align 4, !dbg !72
  %40 = icmp ne i32 %38, %39, !dbg !73
  br i1 %40, label %41, label %42, !dbg !73

41:                                               ; preds = %37
  store i32 0, ptr %4, align 4, !dbg !74
  br label %51, !dbg !74

42:                                               ; preds = %37
  %43 = load i32, ptr %10, align 4, !dbg !75
  %44 = add nsw i32 %43, 1, !dbg !75
  store i32 %44, ptr %10, align 4, !dbg !75
  br label %11, !dbg !52, !llvm.loop !76

45:                                               ; preds = %11
  %46 = load i32, ptr %10, align 4, !dbg !79
  %47 = load i32, ptr %7, align 4, !dbg !81
  %48 = icmp slt i32 %46, %47, !dbg !82
  br i1 %48, label %49, label %50, !dbg !82

49:                                               ; preds = %45
  store i32 0, ptr %4, align 4, !dbg !83
  br label %51, !dbg !83

50:                                               ; preds = %45
  store i32 1, ptr %4, align 4, !dbg !84
  br label %51, !dbg !84

51:                                               ; preds = %50, %49, %41, %23
  %52 = load i32, ptr %4, align 4, !dbg !85
  ret i32 %52, !dbg !85
}

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @tolower(i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @read_stdin() #0 !dbg !86 {
  %1 = alloca ptr, align 8
    #dbg_declare(ptr %1, !148, !DIExpression(), !149)
  %2 = load ptr, ptr @stdin, align 8, !dbg !150
  store ptr %2, ptr %1, align 8, !dbg !149
  %3 = load ptr, ptr %1, align 8, !dbg !151
  ret ptr %3, !dbg !152
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @write_stdout() #0 !dbg !153 {
  %1 = alloca ptr, align 8
    #dbg_declare(ptr %1, !154, !DIExpression(), !155)
  %2 = load ptr, ptr @stdout, align 8, !dbg !156
  store ptr %2, ptr %1, align 8, !dbg !155
  %3 = load ptr, ptr %1, align 8, !dbg !157
  ret ptr %3, !dbg !158
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(none) }
attributes #4 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !19, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "cBench/consumer_jpeg_c/src/cdjpeg.c", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "fcd16d6bd4d7ba1b016f0062f5d3bc38")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 46, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18}
!7 = !DIEnumerator(name: "_ISupper", value: 256)
!8 = !DIEnumerator(name: "_ISlower", value: 512)
!9 = !DIEnumerator(name: "_ISalpha", value: 1024)
!10 = !DIEnumerator(name: "_ISdigit", value: 2048)
!11 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!12 = !DIEnumerator(name: "_ISspace", value: 8192)
!13 = !DIEnumerator(name: "_ISprint", value: 16384)
!14 = !DIEnumerator(name: "_ISgraph", value: 32768)
!15 = !DIEnumerator(name: "_ISblank", value: 1)
!16 = !DIEnumerator(name: "_IScntrl", value: 2)
!17 = !DIEnumerator(name: "_ISpunct", value: 4)
!18 = !DIEnumerator(name: "_ISalnum", value: 8)
!19 = !{!20, !21}
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!22 = !{i32 7, !"Dwarf Version", i32 5}
!23 = !{i32 2, !"Debug Info Version", i32 3}
!24 = !{i32 1, !"wchar_size", i32 4}
!25 = !{i32 8, !"PIC Level", i32 2}
!26 = !{i32 7, !"PIE Level", i32 2}
!27 = !{i32 7, !"uwtable", i32 2}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!30 = distinct !DISubprogram(name: "keymatch", scope: !1, file: !1, line: 120, type: !31, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !39)
!31 = !DISubroutineType(types: !32)
!32 = !{!33, !35, !37, !20}
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "boolean", file: !34, line: 227, baseType: !20)
!34 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jmorecfg.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "56a0eda58fafa6bdd5498f702a998c09")
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!39 = !{}
!40 = !DILocalVariable(name: "arg", arg: 1, scope: !30, file: !1, line: 120, type: !35)
!41 = !DILocation(line: 120, column: 18, scope: !30)
!42 = !DILocalVariable(name: "keyword", arg: 2, scope: !30, file: !1, line: 120, type: !37)
!43 = !DILocation(line: 120, column: 36, scope: !30)
!44 = !DILocalVariable(name: "minchars", arg: 3, scope: !30, file: !1, line: 120, type: !20)
!45 = !DILocation(line: 120, column: 49, scope: !30)
!46 = !DILocalVariable(name: "ca", scope: !30, file: !1, line: 122, type: !20)
!47 = !DILocation(line: 122, column: 16, scope: !30)
!48 = !DILocalVariable(name: "ck", scope: !30, file: !1, line: 122, type: !20)
!49 = !DILocation(line: 122, column: 20, scope: !30)
!50 = !DILocalVariable(name: "nmatched", scope: !30, file: !1, line: 123, type: !20)
!51 = !DILocation(line: 123, column: 16, scope: !30)
!52 = !DILocation(line: 125, column: 3, scope: !30)
!53 = !DILocation(line: 125, column: 20, scope: !30)
!54 = !DILocation(line: 125, column: 16, scope: !30)
!55 = !DILocation(line: 125, column: 14, scope: !30)
!56 = !DILocation(line: 125, column: 24, scope: !30)
!57 = !DILocation(line: 126, column: 23, scope: !58)
!58 = distinct !DILexicalBlock(scope: !59, file: !1, line: 126, column: 9)
!59 = distinct !DILexicalBlock(scope: !30, file: !1, line: 125, column: 33)
!60 = !DILocation(line: 126, column: 15, scope: !58)
!61 = !DILocation(line: 126, column: 13, scope: !58)
!62 = !DILocation(line: 126, column: 27, scope: !58)
!63 = !DILocation(line: 127, column: 7, scope: !58)
!64 = !DILocation(line: 128, column: 9, scope: !65)
!65 = distinct !DILexicalBlock(scope: !59, file: !1, line: 128, column: 9)
!66 = !DILocation(line: 129, column: 20, scope: !65)
!67 = !DILocation(line: 129, column: 12, scope: !65)
!68 = !DILocation(line: 129, column: 10, scope: !65)
!69 = !DILocation(line: 129, column: 7, scope: !65)
!70 = !DILocation(line: 130, column: 9, scope: !71)
!71 = distinct !DILexicalBlock(scope: !59, file: !1, line: 130, column: 9)
!72 = !DILocation(line: 130, column: 15, scope: !71)
!73 = !DILocation(line: 130, column: 12, scope: !71)
!74 = !DILocation(line: 131, column: 7, scope: !71)
!75 = !DILocation(line: 132, column: 13, scope: !59)
!76 = distinct !{!76, !52, !77, !78}
!77 = !DILocation(line: 133, column: 3, scope: !30)
!78 = !{!"llvm.loop.mustprogress"}
!79 = !DILocation(line: 135, column: 7, scope: !80)
!80 = distinct !DILexicalBlock(scope: !30, file: !1, line: 135, column: 7)
!81 = !DILocation(line: 135, column: 18, scope: !80)
!82 = !DILocation(line: 135, column: 16, scope: !80)
!83 = !DILocation(line: 136, column: 5, scope: !80)
!84 = !DILocation(line: 137, column: 3, scope: !30)
!85 = !DILocation(line: 138, column: 1, scope: !30)
!86 = distinct !DISubprogram(name: "read_stdin", scope: !1, file: !1, line: 147, type: !87, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !39)
!87 = !DISubroutineType(types: !88)
!88 = !{!89}
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !91, line: 7, baseType: !92)
!91 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !93, line: 49, size: 1728, elements: !94)
!93 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!94 = !{!95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !110, !112, !113, !114, !118, !119, !121, !125, !128, !130, !133, !136, !137, !139, !143, !144}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !92, file: !93, line: 51, baseType: !20, size: 32)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !92, file: !93, line: 54, baseType: !35, size: 64, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !92, file: !93, line: 55, baseType: !35, size: 64, offset: 128)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !92, file: !93, line: 56, baseType: !35, size: 64, offset: 192)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !92, file: !93, line: 57, baseType: !35, size: 64, offset: 256)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !92, file: !93, line: 58, baseType: !35, size: 64, offset: 320)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !92, file: !93, line: 59, baseType: !35, size: 64, offset: 384)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !92, file: !93, line: 60, baseType: !35, size: 64, offset: 448)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !92, file: !93, line: 61, baseType: !35, size: 64, offset: 512)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !92, file: !93, line: 64, baseType: !35, size: 64, offset: 576)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !92, file: !93, line: 65, baseType: !35, size: 64, offset: 640)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !92, file: !93, line: 66, baseType: !35, size: 64, offset: 704)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !92, file: !93, line: 68, baseType: !108, size: 64, offset: 768)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !93, line: 36, flags: DIFlagFwdDecl)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !92, file: !93, line: 70, baseType: !111, size: 64, offset: 832)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !92, file: !93, line: 72, baseType: !20, size: 32, offset: 896)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !92, file: !93, line: 73, baseType: !20, size: 32, offset: 928)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !92, file: !93, line: 74, baseType: !115, size: 64, offset: 960)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !116, line: 152, baseType: !117)
!116 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!117 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !92, file: !93, line: 77, baseType: !21, size: 16, offset: 1024)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !92, file: !93, line: 78, baseType: !120, size: 8, offset: 1040)
!120 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !92, file: !93, line: 79, baseType: !122, size: 8, offset: 1048)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 8, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 1)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !92, file: !93, line: 81, baseType: !126, size: 64, offset: 1088)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !93, line: 43, baseType: null)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !92, file: !93, line: 89, baseType: !129, size: 64, offset: 1152)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !116, line: 153, baseType: !117)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !92, file: !93, line: 91, baseType: !131, size: 64, offset: 1216)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !93, line: 37, flags: DIFlagFwdDecl)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !92, file: !93, line: 92, baseType: !134, size: 64, offset: 1280)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !93, line: 38, flags: DIFlagFwdDecl)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !92, file: !93, line: 93, baseType: !111, size: 64, offset: 1344)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !92, file: !93, line: 94, baseType: !138, size: 64, offset: 1408)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !92, file: !93, line: 95, baseType: !140, size: 64, offset: 1472)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !141, line: 18, baseType: !142)
!141 = !DIFile(filename: "/usr/local/lib/clang/20/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!142 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !92, file: !93, line: 96, baseType: !20, size: 32, offset: 1536)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !92, file: !93, line: 98, baseType: !145, size: 160, offset: 1568)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 160, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 20)
!148 = !DILocalVariable(name: "input_file", scope: !86, file: !1, line: 149, type: !89)
!149 = !DILocation(line: 149, column: 10, scope: !86)
!150 = !DILocation(line: 149, column: 23, scope: !86)
!151 = !DILocation(line: 160, column: 10, scope: !86)
!152 = !DILocation(line: 160, column: 3, scope: !86)
!153 = distinct !DISubprogram(name: "write_stdout", scope: !1, file: !1, line: 165, type: !87, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !39)
!154 = !DILocalVariable(name: "output_file", scope: !153, file: !1, line: 167, type: !89)
!155 = !DILocation(line: 167, column: 10, scope: !153)
!156 = !DILocation(line: 167, column: 24, scope: !153)
!157 = !DILocation(line: 178, column: 10, scope: !153)
!158 = !DILocation(line: 178, column: 3, scope: !153)
