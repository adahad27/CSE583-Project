; ModuleID = 'cBench/automotive_bitcount/src/bitcnts.c'
source_filename = "cBench/automotive_bitcount/src/bitcnts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main1.pBitCntFunc = internal global [7 x ptr] [ptr @bit_count, ptr @bitcount, ptr @ntbl_bitcnt, ptr @ntbl_bitcount, ptr @BW_btbl_bitcount, ptr @AR_btbl_bitcount, ptr @bit_shifter], align 16, !dbg !0
@main1.text = internal global [7 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], align 16, !dbg !45
@.str = private unnamed_addr constant [29 x i8] c"Optimized 1 bit/loop counter\00", align 1, !dbg !13
@.str.1 = private unnamed_addr constant [26 x i8] c"Ratko's mystery algorithm\00", align 1, !dbg !18
@.str.2 = private unnamed_addr constant [31 x i8] c"Recursive bit count by nybbles\00", align 1, !dbg !23
@.str.3 = private unnamed_addr constant [35 x i8] c"Non-recursive bit count by nybbles\00", align 1, !dbg !28
@.str.4 = private unnamed_addr constant [38 x i8] c"Non-recursive bit count by bytes (BW)\00", align 1, !dbg !33
@.str.5 = private unnamed_addr constant [38 x i8] c"Non-recursive bit count by bytes (AR)\00", align 1, !dbg !38
@.str.6 = private unnamed_addr constant [21 x i8] c"Shift and count bits\00", align 1, !dbg !40
@stderr = external global ptr, align 8
@.str.7 = private unnamed_addr constant [29 x i8] c"Usage: bitcnts <iterations>\0A\00", align 1, !dbg !50
@.str.8 = private unnamed_addr constant [33 x i8] c"Bit counter algorithm benchmark\0A\00", align 1, !dbg !52
@.str.9 = private unnamed_addr constant [18 x i8] c"%-38s> Bits: %ld\0A\00", align 1, !dbg !57

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main1(i32 noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !2 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
    #dbg_declare(ptr %4, !76, !DIExpression(), !77)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !78, !DIExpression(), !79)
  store i32 %2, ptr %6, align 4
    #dbg_declare(ptr %6, !80, !DIExpression(), !81)
    #dbg_declare(ptr %7, !82, !DIExpression(), !83)
    #dbg_declare(ptr %8, !84, !DIExpression(), !85)
    #dbg_declare(ptr %9, !86, !DIExpression(), !87)
    #dbg_declare(ptr %10, !88, !DIExpression(), !89)
    #dbg_declare(ptr %11, !90, !DIExpression(), !91)
  %12 = load i32, ptr %4, align 4, !dbg !92
  %13 = icmp slt i32 %12, 2, !dbg !94
  br i1 %13, label %14, label %17, !dbg !94

14:                                               ; preds = %3
  %15 = load ptr, ptr @stderr, align 8, !dbg !95
  %16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.7) #5, !dbg !97
  call void @exit(i32 noundef 1) #6, !dbg !98
  unreachable, !dbg !98

17:                                               ; preds = %3
  %18 = load ptr, ptr %5, align 8, !dbg !99
  %19 = getelementptr inbounds ptr, ptr %18, i64 1, !dbg !99
  %20 = load ptr, ptr %19, align 8, !dbg !99
  %21 = call i32 @atoi(ptr noundef %20) #7, !dbg !100
  store i32 %21, ptr %11, align 4, !dbg !101
  %22 = load i32, ptr %6, align 4, !dbg !102
  %23 = icmp ne i32 %22, 0, !dbg !102
  br i1 %23, label %24, label %26, !dbg !102

24:                                               ; preds = %17
  %25 = call i32 @puts(ptr noundef @.str.8), !dbg !104
  br label %26, !dbg !104

26:                                               ; preds = %24, %17
  store i32 0, ptr %7, align 4, !dbg !105
  br label %27, !dbg !107

27:                                               ; preds = %62, %26
  %28 = load i32, ptr %7, align 4, !dbg !108
  %29 = icmp slt i32 %28, 7, !dbg !110
  br i1 %29, label %30, label %65, !dbg !111

30:                                               ; preds = %27
  store i64 0, ptr %9, align 8, !dbg !112
  store i64 0, ptr %8, align 8, !dbg !115
  store i64 1, ptr %10, align 8, !dbg !116
  br label %31, !dbg !117

31:                                               ; preds = %46, %30
  %32 = load i64, ptr %8, align 8, !dbg !118
  %33 = load i32, ptr %11, align 4, !dbg !120
  %34 = sext i32 %33 to i64, !dbg !120
  %35 = icmp slt i64 %32, %34, !dbg !121
  br i1 %35, label %36, label %51, !dbg !122

36:                                               ; preds = %31
  %37 = load i32, ptr %7, align 4, !dbg !123
  %38 = sext i32 %37 to i64, !dbg !124
  %39 = getelementptr inbounds [7 x ptr], ptr @main1.pBitCntFunc, i64 0, i64 %38, !dbg !124
  %40 = load ptr, ptr %39, align 8, !dbg !124
  %41 = load i64, ptr %10, align 8, !dbg !125
  %42 = call i32 %40(i64 noundef %41), !dbg !124
  %43 = sext i32 %42 to i64, !dbg !124
  %44 = load i64, ptr %9, align 8, !dbg !126
  %45 = add nsw i64 %44, %43, !dbg !126
  store i64 %45, ptr %9, align 8, !dbg !126
  br label %46, !dbg !127

46:                                               ; preds = %36
  %47 = load i64, ptr %8, align 8, !dbg !128
  %48 = add nsw i64 %47, 1, !dbg !128
  store i64 %48, ptr %8, align 8, !dbg !128
  %49 = load i64, ptr %10, align 8, !dbg !129
  %50 = add nsw i64 %49, 13, !dbg !129
  store i64 %50, ptr %10, align 8, !dbg !129
  br label %31, !dbg !130, !llvm.loop !131

51:                                               ; preds = %31
  %52 = load i32, ptr %6, align 4, !dbg !134
  %53 = icmp ne i32 %52, 0, !dbg !134
  br i1 %53, label %54, label %61, !dbg !134

54:                                               ; preds = %51
  %55 = load i32, ptr %7, align 4, !dbg !136
  %56 = sext i32 %55 to i64, !dbg !137
  %57 = getelementptr inbounds [7 x ptr], ptr @main1.text, i64 0, i64 %56, !dbg !137
  %58 = load ptr, ptr %57, align 8, !dbg !137
  %59 = load i64, ptr %9, align 8, !dbg !138
  %60 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, ptr noundef %58, i64 noundef %59), !dbg !139
  br label %61, !dbg !139

61:                                               ; preds = %54, %51
  br label %62, !dbg !140

62:                                               ; preds = %61
  %63 = load i32, ptr %7, align 4, !dbg !141
  %64 = add nsw i32 %63, 1, !dbg !141
  store i32 %64, ptr %7, align 4, !dbg !141
  br label %27, !dbg !142, !llvm.loop !143

65:                                               ; preds = %27
  ret i32 0, !dbg !145
}

declare i32 @bit_count(i64 noundef) #1

declare i32 @bitcount(i64 noundef) #1

declare i32 @ntbl_bitcnt(i64 noundef) #1

declare i32 @ntbl_bitcount(i64 noundef) #1

declare i32 @BW_btbl_bitcount(i64 noundef) #1

declare i32 @AR_btbl_bitcount(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @bit_shifter(i64 noundef %0) #0 !dbg !146 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i64 %0, ptr %2, align 8
    #dbg_declare(ptr %2, !147, !DIExpression(), !148)
    #dbg_declare(ptr %3, !149, !DIExpression(), !150)
    #dbg_declare(ptr %4, !151, !DIExpression(), !152)
  store i32 0, ptr %4, align 4, !dbg !153
  store i32 0, ptr %3, align 4, !dbg !155
  br label %5, !dbg !156

5:                                                ; preds = %20, %1
  %6 = load i64, ptr %2, align 8, !dbg !157
  %7 = icmp ne i64 %6, 0, !dbg !157
  br i1 %7, label %8, label %12, !dbg !159

8:                                                ; preds = %5
  %9 = load i32, ptr %3, align 4, !dbg !160
  %10 = sext i32 %9 to i64, !dbg !160
  %11 = icmp ult i64 %10, 64, !dbg !161
  br label %12

12:                                               ; preds = %8, %5
  %13 = phi i1 [ false, %5 ], [ %11, %8 ], !dbg !162
  br i1 %13, label %14, label %25, !dbg !163

14:                                               ; preds = %12
  %15 = load i64, ptr %2, align 8, !dbg !164
  %16 = and i64 %15, 1, !dbg !165
  %17 = trunc i64 %16 to i32, !dbg !166
  %18 = load i32, ptr %4, align 4, !dbg !167
  %19 = add nsw i32 %18, %17, !dbg !167
  store i32 %19, ptr %4, align 4, !dbg !167
  br label %20, !dbg !168

20:                                               ; preds = %14
  %21 = load i32, ptr %3, align 4, !dbg !169
  %22 = add nsw i32 %21, 1, !dbg !169
  store i32 %22, ptr %3, align 4, !dbg !169
  %23 = load i64, ptr %2, align 8, !dbg !170
  %24 = ashr i64 %23, 1, !dbg !170
  store i64 %24, ptr %2, align 8, !dbg !170
  br label %5, !dbg !171, !llvm.loop !172

25:                                               ; preds = %12
  %26 = load i32, ptr %4, align 4, !dbg !174
  ret i32 %26, !dbg !175
}

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #3

; Function Attrs: nounwind willreturn memory(read)
declare i32 @atoi(ptr noundef) #4

declare i32 @puts(ptr noundef) #1

declare i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!10}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pBitCntFunc", scope: !2, file: !3, line: 30, type: !63, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "main1", scope: !3, file: !3, line: 21, type: !4, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !62)
!3 = !DIFile(filename: "cBench/automotive_bitcount/src/bitcnts.c", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "50154fe7ec691489df38c32a911e9f58")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !6, !7, !6}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!10 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !11, globals: !12, splitDebugInlining: false, nameTableKind: None)
!11 = !{!6}
!12 = !{!0, !13, !18, !23, !28, !33, !38, !40, !45, !50, !52, !57}
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(scope: null, file: !3, line: 41, type: !15, isLocal: true, isDefinition: true)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 232, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 29)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !3, line: 42, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 208, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 26)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !3, line: 43, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 248, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 31)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !3, line: 44, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 280, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 35)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !3, line: 46, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 304, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 38)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !3, line: 47, type: !35, isLocal: true, isDefinition: true)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(scope: null, file: !3, line: 48, type: !42, isLocal: true, isDefinition: true)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 168, elements: !43)
!43 = !{!44}
!44 = !DISubrange(count: 21)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(name: "text", scope: !2, file: !3, line: 40, type: !47, isLocal: true, isDefinition: true)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 448, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 7)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(scope: null, file: !3, line: 51, type: !15, isLocal: true, isDefinition: true)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !3, line: 57, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 264, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 33)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !3, line: 83, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 144, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 18)
!62 = !{}
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 448, elements: !48)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DISubroutineType(types: !66)
!66 = !{!6, !67}
!67 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!68 = !{i32 7, !"Dwarf Version", i32 5}
!69 = !{i32 2, !"Debug Info Version", i32 3}
!70 = !{i32 1, !"wchar_size", i32 4}
!71 = !{i32 8, !"PIC Level", i32 2}
!72 = !{i32 7, !"PIE Level", i32 2}
!73 = !{i32 7, !"uwtable", i32 2}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!76 = !DILocalVariable(name: "argc", arg: 1, scope: !2, file: !3, line: 21, type: !6)
!77 = !DILocation(line: 21, column: 15, scope: !2)
!78 = !DILocalVariable(name: "argv", arg: 2, scope: !2, file: !3, line: 21, type: !7)
!79 = !DILocation(line: 21, column: 27, scope: !2)
!80 = !DILocalVariable(name: "print", arg: 3, scope: !2, file: !3, line: 21, type: !6)
!81 = !DILocation(line: 21, column: 39, scope: !2)
!82 = !DILocalVariable(name: "i", scope: !2, file: !3, line: 26, type: !6)
!83 = !DILocation(line: 26, column: 9, scope: !2)
!84 = !DILocalVariable(name: "j", scope: !2, file: !3, line: 28, type: !67)
!85 = !DILocation(line: 28, column: 8, scope: !2)
!86 = !DILocalVariable(name: "n", scope: !2, file: !3, line: 28, type: !67)
!87 = !DILocation(line: 28, column: 11, scope: !2)
!88 = !DILocalVariable(name: "seed", scope: !2, file: !3, line: 28, type: !67)
!89 = !DILocation(line: 28, column: 14, scope: !2)
!90 = !DILocalVariable(name: "iterations", scope: !2, file: !3, line: 29, type: !6)
!91 = !DILocation(line: 29, column: 7, scope: !2)
!92 = !DILocation(line: 50, column: 7, scope: !93)
!93 = distinct !DILexicalBlock(scope: !2, file: !3, line: 50, column: 7)
!94 = !DILocation(line: 50, column: 11, scope: !93)
!95 = !DILocation(line: 51, column: 13, scope: !96)
!96 = distinct !DILexicalBlock(scope: !93, file: !3, line: 50, column: 15)
!97 = !DILocation(line: 51, column: 5, scope: !96)
!98 = !DILocation(line: 52, column: 5, scope: !96)
!99 = !DILocation(line: 54, column: 19, scope: !2)
!100 = !DILocation(line: 54, column: 14, scope: !2)
!101 = !DILocation(line: 54, column: 13, scope: !2)
!102 = !DILocation(line: 56, column: 7, scope: !103)
!103 = distinct !DILexicalBlock(scope: !2, file: !3, line: 56, column: 7)
!104 = !DILocation(line: 57, column: 7, scope: !103)
!105 = !DILocation(line: 59, column: 10, scope: !106)
!106 = distinct !DILexicalBlock(scope: !2, file: !3, line: 59, column: 3)
!107 = !DILocation(line: 59, column: 8, scope: !106)
!108 = !DILocation(line: 59, column: 15, scope: !109)
!109 = distinct !DILexicalBlock(scope: !106, file: !3, line: 59, column: 3)
!110 = !DILocation(line: 59, column: 17, scope: !109)
!111 = !DILocation(line: 59, column: 3, scope: !106)
!112 = !DILocation(line: 65, column: 16, scope: !113)
!113 = distinct !DILexicalBlock(scope: !114, file: !3, line: 65, column: 5)
!114 = distinct !DILexicalBlock(scope: !109, file: !3, line: 59, column: 31)
!115 = !DILocation(line: 65, column: 12, scope: !113)
!116 = !DILocation(line: 65, column: 26, scope: !113)
!117 = !DILocation(line: 65, column: 10, scope: !113)
!118 = !DILocation(line: 65, column: 31, scope: !119)
!119 = distinct !DILexicalBlock(scope: !113, file: !3, line: 65, column: 5)
!120 = !DILocation(line: 65, column: 35, scope: !119)
!121 = !DILocation(line: 65, column: 33, scope: !119)
!122 = !DILocation(line: 65, column: 5, scope: !113)
!123 = !DILocation(line: 66, column: 20, scope: !119)
!124 = !DILocation(line: 66, column: 8, scope: !119)
!125 = !DILocation(line: 66, column: 23, scope: !119)
!126 = !DILocation(line: 66, column: 5, scope: !119)
!127 = !DILocation(line: 66, column: 3, scope: !119)
!128 = !DILocation(line: 65, column: 48, scope: !119)
!129 = !DILocation(line: 65, column: 57, scope: !119)
!130 = !DILocation(line: 65, column: 5, scope: !119)
!131 = distinct !{!131, !122, !132, !133}
!132 = !DILocation(line: 66, column: 27, scope: !113)
!133 = !{!"llvm.loop.mustprogress"}
!134 = !DILocation(line: 82, column: 9, scope: !135)
!135 = distinct !DILexicalBlock(scope: !114, file: !3, line: 82, column: 9)
!136 = !DILocation(line: 83, column: 43, scope: !135)
!137 = !DILocation(line: 83, column: 38, scope: !135)
!138 = !DILocation(line: 83, column: 47, scope: !135)
!139 = !DILocation(line: 83, column: 9, scope: !135)
!140 = !DILocation(line: 84, column: 3, scope: !114)
!141 = !DILocation(line: 59, column: 27, scope: !109)
!142 = !DILocation(line: 59, column: 3, scope: !109)
!143 = distinct !{!143, !111, !144, !133}
!144 = !DILocation(line: 84, column: 3, scope: !106)
!145 = !DILocation(line: 89, column: 3, scope: !2)
!146 = distinct !DISubprogram(name: "bit_shifter", scope: !3, file: !3, line: 92, type: !65, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !10, retainedNodes: !62)
!147 = !DILocalVariable(name: "x", arg: 1, scope: !146, file: !3, line: 92, type: !67)
!148 = !DILocation(line: 92, column: 39, scope: !146)
!149 = !DILocalVariable(name: "i", scope: !146, file: !3, line: 94, type: !6)
!150 = !DILocation(line: 94, column: 7, scope: !146)
!151 = !DILocalVariable(name: "n", scope: !146, file: !3, line: 94, type: !6)
!152 = !DILocation(line: 94, column: 10, scope: !146)
!153 = !DILocation(line: 96, column: 14, scope: !154)
!154 = distinct !DILexicalBlock(scope: !146, file: !3, line: 96, column: 3)
!155 = !DILocation(line: 96, column: 10, scope: !154)
!156 = !DILocation(line: 96, column: 8, scope: !154)
!157 = !DILocation(line: 96, column: 19, scope: !158)
!158 = distinct !DILexicalBlock(scope: !154, file: !3, line: 96, column: 3)
!159 = !DILocation(line: 96, column: 21, scope: !158)
!160 = !DILocation(line: 96, column: 25, scope: !158)
!161 = !DILocation(line: 96, column: 27, scope: !158)
!162 = !DILocation(line: 0, scope: !158)
!163 = !DILocation(line: 96, column: 3, scope: !154)
!164 = !DILocation(line: 97, column: 16, scope: !158)
!165 = !DILocation(line: 97, column: 18, scope: !158)
!166 = !DILocation(line: 97, column: 10, scope: !158)
!167 = !DILocation(line: 97, column: 7, scope: !158)
!168 = !DILocation(line: 97, column: 5, scope: !158)
!169 = !DILocation(line: 96, column: 57, scope: !158)
!170 = !DILocation(line: 96, column: 64, scope: !158)
!171 = !DILocation(line: 96, column: 3, scope: !158)
!172 = distinct !{!172, !163, !173, !133}
!173 = !DILocation(line: 97, column: 22, scope: !154)
!174 = !DILocation(line: 98, column: 10, scope: !146)
!175 = !DILocation(line: 98, column: 3, scope: !146)
