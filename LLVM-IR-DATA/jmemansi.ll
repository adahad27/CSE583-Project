; ModuleID = 'cBench/consumer_jpeg_c/src/jmemansi.c'
source_filename = "cBench/consumer_jpeg_c/src/jmemansi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_common_struct = type { ptr, ptr, ptr, i32, i32 }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.backing_store_struct = type { ptr, ptr, ptr, ptr, [64 x i8] }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !0

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @jpeg_get_small(ptr noundef %0, i64 noundef %1) #0 !dbg !272 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !276, !DIExpression(), !277)
  store i64 %1, ptr %4, align 8
    #dbg_declare(ptr %4, !278, !DIExpression(), !279)
  %5 = load i64, ptr %4, align 8, !dbg !280
  %6 = call noalias ptr @malloc(i64 noundef %5) #4, !dbg !281
  ret ptr %6, !dbg !282
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_free_small(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 !dbg !283 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !286, !DIExpression(), !287)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !288, !DIExpression(), !289)
  store i64 %2, ptr %6, align 8
    #dbg_declare(ptr %6, !290, !DIExpression(), !291)
  %7 = load ptr, ptr %5, align 8, !dbg !292
  call void @free(ptr noundef %7) #5, !dbg !293
  ret void, !dbg !294
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @jpeg_get_large(ptr noundef %0, i64 noundef %1) #0 !dbg !295 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !296, !DIExpression(), !297)
  store i64 %1, ptr %4, align 8
    #dbg_declare(ptr %4, !298, !DIExpression(), !299)
  %5 = load i64, ptr %4, align 8, !dbg !300
  %6 = call noalias ptr @malloc(i64 noundef %5) #4, !dbg !301
  ret ptr %6, !dbg !302
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_free_large(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 !dbg !303 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !304, !DIExpression(), !305)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !306, !DIExpression(), !307)
  store i64 %2, ptr %6, align 8
    #dbg_declare(ptr %6, !308, !DIExpression(), !309)
  %7 = load ptr, ptr %5, align 8, !dbg !310
  call void @free(ptr noundef %7) #5, !dbg !311
  ret void, !dbg !312
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @jpeg_mem_available(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #0 !dbg !313 {
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !316, !DIExpression(), !317)
  store i64 %1, ptr %6, align 8
    #dbg_declare(ptr %6, !318, !DIExpression(), !319)
  store i64 %2, ptr %7, align 8
    #dbg_declare(ptr %7, !320, !DIExpression(), !321)
  store i64 %3, ptr %8, align 8
    #dbg_declare(ptr %8, !322, !DIExpression(), !323)
  %9 = load ptr, ptr %5, align 8, !dbg !324
  %10 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %9, i32 0, i32 1, !dbg !325
  %11 = load ptr, ptr %10, align 8, !dbg !325
  %12 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %11, i32 0, i32 11, !dbg !326
  %13 = load i64, ptr %12, align 8, !dbg !326
  %14 = load i64, ptr %8, align 8, !dbg !327
  %15 = sub nsw i64 %13, %14, !dbg !328
  ret i64 %15, !dbg !329
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_open_backing_store(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 !dbg !330 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !402, !DIExpression(), !403)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !404, !DIExpression(), !405)
  store i64 %2, ptr %6, align 8
    #dbg_declare(ptr %6, !406, !DIExpression(), !407)
  %7 = call noalias ptr @tmpfile(), !dbg !408
  %8 = load ptr, ptr %5, align 8, !dbg !410
  %9 = getelementptr inbounds nuw %struct.backing_store_struct, ptr %8, i32 0, i32 3, !dbg !411
  store ptr %7, ptr %9, align 8, !dbg !412
  %10 = icmp eq ptr %7, null, !dbg !413
  br i1 %10, label %11, label %28, !dbg !413

11:                                               ; preds = %3
  %12 = load ptr, ptr %4, align 8, !dbg !414
  %13 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %12, i32 0, i32 0, !dbg !414
  %14 = load ptr, ptr %13, align 8, !dbg !414
  %15 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %14, i32 0, i32 5, !dbg !414
  store i32 62, ptr %15, align 8, !dbg !414
  %16 = load ptr, ptr %4, align 8, !dbg !414
  %17 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %16, i32 0, i32 0, !dbg !414
  %18 = load ptr, ptr %17, align 8, !dbg !414
  %19 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %18, i32 0, i32 6, !dbg !414
  %20 = getelementptr inbounds [80 x i8], ptr %19, i64 0, i64 0, !dbg !414
  %21 = call ptr @strncpy(ptr noundef %20, ptr noundef @.str, i64 noundef 80) #5, !dbg !414
  %22 = load ptr, ptr %4, align 8, !dbg !414
  %23 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %22, i32 0, i32 0, !dbg !414
  %24 = load ptr, ptr %23, align 8, !dbg !414
  %25 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %24, i32 0, i32 0, !dbg !414
  %26 = load ptr, ptr %25, align 8, !dbg !414
  %27 = load ptr, ptr %4, align 8, !dbg !414
  call void %26(ptr noundef %27), !dbg !414
  br label %28, !dbg !414

28:                                               ; preds = %11, %3
  %29 = load ptr, ptr %5, align 8, !dbg !415
  %30 = getelementptr inbounds nuw %struct.backing_store_struct, ptr %29, i32 0, i32 0, !dbg !416
  store ptr @read_backing_store, ptr %30, align 8, !dbg !417
  %31 = load ptr, ptr %5, align 8, !dbg !418
  %32 = getelementptr inbounds nuw %struct.backing_store_struct, ptr %31, i32 0, i32 1, !dbg !419
  store ptr @write_backing_store, ptr %32, align 8, !dbg !420
  %33 = load ptr, ptr %5, align 8, !dbg !421
  %34 = getelementptr inbounds nuw %struct.backing_store_struct, ptr %33, i32 0, i32 2, !dbg !422
  store ptr @close_backing_store, ptr %34, align 8, !dbg !423
  ret void, !dbg !424
}

declare noalias ptr @tmpfile() #3

; Function Attrs: nounwind
declare ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal void @read_backing_store(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) #0 !dbg !425 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store ptr %0, ptr %6, align 8
    #dbg_declare(ptr %6, !426, !DIExpression(), !427)
  store ptr %1, ptr %7, align 8
    #dbg_declare(ptr %7, !428, !DIExpression(), !429)
  store ptr %2, ptr %8, align 8
    #dbg_declare(ptr %8, !430, !DIExpression(), !431)
  store i64 %3, ptr %9, align 8
    #dbg_declare(ptr %9, !432, !DIExpression(), !433)
  store i64 %4, ptr %10, align 8
    #dbg_declare(ptr %10, !434, !DIExpression(), !435)
  %11 = load ptr, ptr %7, align 8, !dbg !436
  %12 = getelementptr inbounds nuw %struct.backing_store_struct, ptr %11, i32 0, i32 3, !dbg !438
  %13 = load ptr, ptr %12, align 8, !dbg !438
  %14 = load i64, ptr %9, align 8, !dbg !439
  %15 = call i32 @fseek(ptr noundef %13, i64 noundef %14, i32 noundef 0), !dbg !440
  %16 = icmp ne i32 %15, 0, !dbg !440
  br i1 %16, label %17, label %28, !dbg !440

17:                                               ; preds = %5
  %18 = load ptr, ptr %6, align 8, !dbg !441
  %19 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %18, i32 0, i32 0, !dbg !441
  %20 = load ptr, ptr %19, align 8, !dbg !441
  %21 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %20, i32 0, i32 5, !dbg !441
  store i32 64, ptr %21, align 8, !dbg !441
  %22 = load ptr, ptr %6, align 8, !dbg !441
  %23 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %22, i32 0, i32 0, !dbg !441
  %24 = load ptr, ptr %23, align 8, !dbg !441
  %25 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %24, i32 0, i32 0, !dbg !441
  %26 = load ptr, ptr %25, align 8, !dbg !441
  %27 = load ptr, ptr %6, align 8, !dbg !441
  call void %26(ptr noundef %27), !dbg !441
  br label %28, !dbg !441

28:                                               ; preds = %17, %5
  %29 = load ptr, ptr %8, align 8, !dbg !442
  %30 = load i64, ptr %10, align 8, !dbg !442
  %31 = load ptr, ptr %7, align 8, !dbg !442
  %32 = getelementptr inbounds nuw %struct.backing_store_struct, ptr %31, i32 0, i32 3, !dbg !442
  %33 = load ptr, ptr %32, align 8, !dbg !442
  %34 = call i64 @fread(ptr noundef %29, i64 noundef 1, i64 noundef %30, ptr noundef %33), !dbg !442
  %35 = load i64, ptr %10, align 8, !dbg !444
  %36 = icmp ne i64 %34, %35, !dbg !445
  br i1 %36, label %37, label %48, !dbg !445

37:                                               ; preds = %28
  %38 = load ptr, ptr %6, align 8, !dbg !446
  %39 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %38, i32 0, i32 0, !dbg !446
  %40 = load ptr, ptr %39, align 8, !dbg !446
  %41 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %40, i32 0, i32 5, !dbg !446
  store i32 63, ptr %41, align 8, !dbg !446
  %42 = load ptr, ptr %6, align 8, !dbg !446
  %43 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %42, i32 0, i32 0, !dbg !446
  %44 = load ptr, ptr %43, align 8, !dbg !446
  %45 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %44, i32 0, i32 0, !dbg !446
  %46 = load ptr, ptr %45, align 8, !dbg !446
  %47 = load ptr, ptr %6, align 8, !dbg !446
  call void %46(ptr noundef %47), !dbg !446
  br label %48, !dbg !446

48:                                               ; preds = %37, %28
  ret void, !dbg !447
}

; Function Attrs: noinline nounwind uwtable
define internal void @write_backing_store(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) #0 !dbg !448 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store ptr %0, ptr %6, align 8
    #dbg_declare(ptr %6, !449, !DIExpression(), !450)
  store ptr %1, ptr %7, align 8
    #dbg_declare(ptr %7, !451, !DIExpression(), !452)
  store ptr %2, ptr %8, align 8
    #dbg_declare(ptr %8, !453, !DIExpression(), !454)
  store i64 %3, ptr %9, align 8
    #dbg_declare(ptr %9, !455, !DIExpression(), !456)
  store i64 %4, ptr %10, align 8
    #dbg_declare(ptr %10, !457, !DIExpression(), !458)
  %11 = load ptr, ptr %7, align 8, !dbg !459
  %12 = getelementptr inbounds nuw %struct.backing_store_struct, ptr %11, i32 0, i32 3, !dbg !461
  %13 = load ptr, ptr %12, align 8, !dbg !461
  %14 = load i64, ptr %9, align 8, !dbg !462
  %15 = call i32 @fseek(ptr noundef %13, i64 noundef %14, i32 noundef 0), !dbg !463
  %16 = icmp ne i32 %15, 0, !dbg !463
  br i1 %16, label %17, label %28, !dbg !463

17:                                               ; preds = %5
  %18 = load ptr, ptr %6, align 8, !dbg !464
  %19 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %18, i32 0, i32 0, !dbg !464
  %20 = load ptr, ptr %19, align 8, !dbg !464
  %21 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %20, i32 0, i32 5, !dbg !464
  store i32 64, ptr %21, align 8, !dbg !464
  %22 = load ptr, ptr %6, align 8, !dbg !464
  %23 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %22, i32 0, i32 0, !dbg !464
  %24 = load ptr, ptr %23, align 8, !dbg !464
  %25 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %24, i32 0, i32 0, !dbg !464
  %26 = load ptr, ptr %25, align 8, !dbg !464
  %27 = load ptr, ptr %6, align 8, !dbg !464
  call void %26(ptr noundef %27), !dbg !464
  br label %28, !dbg !464

28:                                               ; preds = %17, %5
  %29 = load ptr, ptr %8, align 8, !dbg !465
  %30 = load i64, ptr %10, align 8, !dbg !465
  %31 = load ptr, ptr %7, align 8, !dbg !465
  %32 = getelementptr inbounds nuw %struct.backing_store_struct, ptr %31, i32 0, i32 3, !dbg !465
  %33 = load ptr, ptr %32, align 8, !dbg !465
  %34 = call i64 @fwrite(ptr noundef %29, i64 noundef 1, i64 noundef %30, ptr noundef %33), !dbg !465
  %35 = load i64, ptr %10, align 8, !dbg !467
  %36 = icmp ne i64 %34, %35, !dbg !468
  br i1 %36, label %37, label %48, !dbg !468

37:                                               ; preds = %28
  %38 = load ptr, ptr %6, align 8, !dbg !469
  %39 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %38, i32 0, i32 0, !dbg !469
  %40 = load ptr, ptr %39, align 8, !dbg !469
  %41 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %40, i32 0, i32 5, !dbg !469
  store i32 65, ptr %41, align 8, !dbg !469
  %42 = load ptr, ptr %6, align 8, !dbg !469
  %43 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %42, i32 0, i32 0, !dbg !469
  %44 = load ptr, ptr %43, align 8, !dbg !469
  %45 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %44, i32 0, i32 0, !dbg !469
  %46 = load ptr, ptr %45, align 8, !dbg !469
  %47 = load ptr, ptr %6, align 8, !dbg !469
  call void %46(ptr noundef %47), !dbg !469
  br label %48, !dbg !469

48:                                               ; preds = %37, %28
  ret void, !dbg !470
}

; Function Attrs: noinline nounwind uwtable
define internal void @close_backing_store(ptr noundef %0, ptr noundef %1) #0 !dbg !471 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !472, !DIExpression(), !473)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !474, !DIExpression(), !475)
  %5 = load ptr, ptr %4, align 8, !dbg !476
  %6 = getelementptr inbounds nuw %struct.backing_store_struct, ptr %5, i32 0, i32 3, !dbg !477
  %7 = load ptr, ptr %6, align 8, !dbg !477
  %8 = call i32 @fclose(ptr noundef %7), !dbg !478
  ret void, !dbg !479
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @jpeg_mem_init(ptr noundef %0) #0 !dbg !480 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !483, !DIExpression(), !484)
  ret i64 1000000, !dbg !485
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_mem_term(ptr noundef %0) #0 !dbg !486 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !487, !DIExpression(), !488)
  ret void, !dbg !489
}

declare i32 @fseek(ptr noundef, i64 noundef, i32 noundef) #3

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #3

declare i64 @fwrite(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #3

declare i32 @fclose(ptr noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind allocsize(0) }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!7}
!llvm.module.flags = !{!264, !265, !266, !267, !268, !269, !270}
!llvm.ident = !{!271}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 145, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jmemansi.c", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "5bb449eba31015a4dd7536c8b3d7b68d")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 1)
!7 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !8, retainedTypes: !134, globals: !263, splitDebugInlining: false, nameTableKind: None)
!8 = !{!9}
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 33, baseType: !11, size: 32, elements: !12)
!10 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jerror.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "a232f2460ff0049c960896e323d8710b")
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133}
!13 = !DIEnumerator(name: "JMSG_NOMESSAGE", value: 0)
!14 = !DIEnumerator(name: "JERR_ARITH_NOTIMPL", value: 1)
!15 = !DIEnumerator(name: "JERR_BAD_ALIGN_TYPE", value: 2)
!16 = !DIEnumerator(name: "JERR_BAD_ALLOC_CHUNK", value: 3)
!17 = !DIEnumerator(name: "JERR_BAD_BUFFER_MODE", value: 4)
!18 = !DIEnumerator(name: "JERR_BAD_COMPONENT_ID", value: 5)
!19 = !DIEnumerator(name: "JERR_BAD_DCTSIZE", value: 6)
!20 = !DIEnumerator(name: "JERR_BAD_IN_COLORSPACE", value: 7)
!21 = !DIEnumerator(name: "JERR_BAD_J_COLORSPACE", value: 8)
!22 = !DIEnumerator(name: "JERR_BAD_LENGTH", value: 9)
!23 = !DIEnumerator(name: "JERR_BAD_LIB_VERSION", value: 10)
!24 = !DIEnumerator(name: "JERR_BAD_MCU_SIZE", value: 11)
!25 = !DIEnumerator(name: "JERR_BAD_POOL_ID", value: 12)
!26 = !DIEnumerator(name: "JERR_BAD_PRECISION", value: 13)
!27 = !DIEnumerator(name: "JERR_BAD_PROGRESSION", value: 14)
!28 = !DIEnumerator(name: "JERR_BAD_PROG_SCRIPT", value: 15)
!29 = !DIEnumerator(name: "JERR_BAD_SAMPLING", value: 16)
!30 = !DIEnumerator(name: "JERR_BAD_SCAN_SCRIPT", value: 17)
!31 = !DIEnumerator(name: "JERR_BAD_STATE", value: 18)
!32 = !DIEnumerator(name: "JERR_BAD_STRUCT_SIZE", value: 19)
!33 = !DIEnumerator(name: "JERR_BAD_VIRTUAL_ACCESS", value: 20)
!34 = !DIEnumerator(name: "JERR_BUFFER_SIZE", value: 21)
!35 = !DIEnumerator(name: "JERR_CANT_SUSPEND", value: 22)
!36 = !DIEnumerator(name: "JERR_CCIR601_NOTIMPL", value: 23)
!37 = !DIEnumerator(name: "JERR_COMPONENT_COUNT", value: 24)
!38 = !DIEnumerator(name: "JERR_CONVERSION_NOTIMPL", value: 25)
!39 = !DIEnumerator(name: "JERR_DAC_INDEX", value: 26)
!40 = !DIEnumerator(name: "JERR_DAC_VALUE", value: 27)
!41 = !DIEnumerator(name: "JERR_DHT_COUNTS", value: 28)
!42 = !DIEnumerator(name: "JERR_DHT_INDEX", value: 29)
!43 = !DIEnumerator(name: "JERR_DQT_INDEX", value: 30)
!44 = !DIEnumerator(name: "JERR_EMPTY_IMAGE", value: 31)
!45 = !DIEnumerator(name: "JERR_EMS_READ", value: 32)
!46 = !DIEnumerator(name: "JERR_EMS_WRITE", value: 33)
!47 = !DIEnumerator(name: "JERR_EOI_EXPECTED", value: 34)
!48 = !DIEnumerator(name: "JERR_FILE_READ", value: 35)
!49 = !DIEnumerator(name: "JERR_FILE_WRITE", value: 36)
!50 = !DIEnumerator(name: "JERR_FRACT_SAMPLE_NOTIMPL", value: 37)
!51 = !DIEnumerator(name: "JERR_HUFF_CLEN_OVERFLOW", value: 38)
!52 = !DIEnumerator(name: "JERR_HUFF_MISSING_CODE", value: 39)
!53 = !DIEnumerator(name: "JERR_IMAGE_TOO_BIG", value: 40)
!54 = !DIEnumerator(name: "JERR_INPUT_EMPTY", value: 41)
!55 = !DIEnumerator(name: "JERR_INPUT_EOF", value: 42)
!56 = !DIEnumerator(name: "JERR_MISMATCHED_QUANT_TABLE", value: 43)
!57 = !DIEnumerator(name: "JERR_MISSING_DATA", value: 44)
!58 = !DIEnumerator(name: "JERR_MODE_CHANGE", value: 45)
!59 = !DIEnumerator(name: "JERR_NOTIMPL", value: 46)
!60 = !DIEnumerator(name: "JERR_NOT_COMPILED", value: 47)
!61 = !DIEnumerator(name: "JERR_NO_BACKING_STORE", value: 48)
!62 = !DIEnumerator(name: "JERR_NO_HUFF_TABLE", value: 49)
!63 = !DIEnumerator(name: "JERR_NO_IMAGE", value: 50)
!64 = !DIEnumerator(name: "JERR_NO_QUANT_TABLE", value: 51)
!65 = !DIEnumerator(name: "JERR_NO_SOI", value: 52)
!66 = !DIEnumerator(name: "JERR_OUT_OF_MEMORY", value: 53)
!67 = !DIEnumerator(name: "JERR_QUANT_COMPONENTS", value: 54)
!68 = !DIEnumerator(name: "JERR_QUANT_FEW_COLORS", value: 55)
!69 = !DIEnumerator(name: "JERR_QUANT_MANY_COLORS", value: 56)
!70 = !DIEnumerator(name: "JERR_SOF_DUPLICATE", value: 57)
!71 = !DIEnumerator(name: "JERR_SOF_NO_SOS", value: 58)
!72 = !DIEnumerator(name: "JERR_SOF_UNSUPPORTED", value: 59)
!73 = !DIEnumerator(name: "JERR_SOI_DUPLICATE", value: 60)
!74 = !DIEnumerator(name: "JERR_SOS_NO_SOF", value: 61)
!75 = !DIEnumerator(name: "JERR_TFILE_CREATE", value: 62)
!76 = !DIEnumerator(name: "JERR_TFILE_READ", value: 63)
!77 = !DIEnumerator(name: "JERR_TFILE_SEEK", value: 64)
!78 = !DIEnumerator(name: "JERR_TFILE_WRITE", value: 65)
!79 = !DIEnumerator(name: "JERR_TOO_LITTLE_DATA", value: 66)
!80 = !DIEnumerator(name: "JERR_UNKNOWN_MARKER", value: 67)
!81 = !DIEnumerator(name: "JERR_VIRTUAL_BUG", value: 68)
!82 = !DIEnumerator(name: "JERR_WIDTH_OVERFLOW", value: 69)
!83 = !DIEnumerator(name: "JERR_XMS_READ", value: 70)
!84 = !DIEnumerator(name: "JERR_XMS_WRITE", value: 71)
!85 = !DIEnumerator(name: "JMSG_COPYRIGHT", value: 72)
!86 = !DIEnumerator(name: "JMSG_VERSION", value: 73)
!87 = !DIEnumerator(name: "JTRC_16BIT_TABLES", value: 74)
!88 = !DIEnumerator(name: "JTRC_ADOBE", value: 75)
!89 = !DIEnumerator(name: "JTRC_APP0", value: 76)
!90 = !DIEnumerator(name: "JTRC_APP14", value: 77)
!91 = !DIEnumerator(name: "JTRC_DAC", value: 78)
!92 = !DIEnumerator(name: "JTRC_DHT", value: 79)
!93 = !DIEnumerator(name: "JTRC_DQT", value: 80)
!94 = !DIEnumerator(name: "JTRC_DRI", value: 81)
!95 = !DIEnumerator(name: "JTRC_EMS_CLOSE", value: 82)
!96 = !DIEnumerator(name: "JTRC_EMS_OPEN", value: 83)
!97 = !DIEnumerator(name: "JTRC_EOI", value: 84)
!98 = !DIEnumerator(name: "JTRC_HUFFBITS", value: 85)
!99 = !DIEnumerator(name: "JTRC_JFIF", value: 86)
!100 = !DIEnumerator(name: "JTRC_JFIF_BADTHUMBNAILSIZE", value: 87)
!101 = !DIEnumerator(name: "JTRC_JFIF_MINOR", value: 88)
!102 = !DIEnumerator(name: "JTRC_JFIF_THUMBNAIL", value: 89)
!103 = !DIEnumerator(name: "JTRC_MISC_MARKER", value: 90)
!104 = !DIEnumerator(name: "JTRC_PARMLESS_MARKER", value: 91)
!105 = !DIEnumerator(name: "JTRC_QUANTVALS", value: 92)
!106 = !DIEnumerator(name: "JTRC_QUANT_3_NCOLORS", value: 93)
!107 = !DIEnumerator(name: "JTRC_QUANT_NCOLORS", value: 94)
!108 = !DIEnumerator(name: "JTRC_QUANT_SELECTED", value: 95)
!109 = !DIEnumerator(name: "JTRC_RECOVERY_ACTION", value: 96)
!110 = !DIEnumerator(name: "JTRC_RST", value: 97)
!111 = !DIEnumerator(name: "JTRC_SMOOTH_NOTIMPL", value: 98)
!112 = !DIEnumerator(name: "JTRC_SOF", value: 99)
!113 = !DIEnumerator(name: "JTRC_SOF_COMPONENT", value: 100)
!114 = !DIEnumerator(name: "JTRC_SOI", value: 101)
!115 = !DIEnumerator(name: "JTRC_SOS", value: 102)
!116 = !DIEnumerator(name: "JTRC_SOS_COMPONENT", value: 103)
!117 = !DIEnumerator(name: "JTRC_SOS_PARAMS", value: 104)
!118 = !DIEnumerator(name: "JTRC_TFILE_CLOSE", value: 105)
!119 = !DIEnumerator(name: "JTRC_TFILE_OPEN", value: 106)
!120 = !DIEnumerator(name: "JTRC_UNKNOWN_IDS", value: 107)
!121 = !DIEnumerator(name: "JTRC_XMS_CLOSE", value: 108)
!122 = !DIEnumerator(name: "JTRC_XMS_OPEN", value: 109)
!123 = !DIEnumerator(name: "JWRN_ADOBE_XFORM", value: 110)
!124 = !DIEnumerator(name: "JWRN_BOGUS_PROGRESSION", value: 111)
!125 = !DIEnumerator(name: "JWRN_EXTRANEOUS_DATA", value: 112)
!126 = !DIEnumerator(name: "JWRN_HIT_MARKER", value: 113)
!127 = !DIEnumerator(name: "JWRN_HUFF_BAD_CODE", value: 114)
!128 = !DIEnumerator(name: "JWRN_JFIF_MAJOR", value: 115)
!129 = !DIEnumerator(name: "JWRN_JPEG_EOF", value: 116)
!130 = !DIEnumerator(name: "JWRN_MUST_RESYNC", value: 117)
!131 = !DIEnumerator(name: "JWRN_NOT_SEQUENTIAL", value: 118)
!132 = !DIEnumerator(name: "JWRN_TOO_MUCH_DATA", value: 119)
!133 = !DIEnumerator(name: "JMSG_LASTMSGCODE", value: 120)
!134 = !{!135, !136, !193, !261}
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_common_ptr", file: !137, line: 248, baseType: !138)
!137 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jpeglib.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "2a2b23235fe587b10147d741e3371e67")
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_common_struct", file: !137, line: 240, size: 256, elements: !140)
!140 = !{!141, !185, !250, !259, !260}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !139, file: !137, line: 241, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_error_mgr", file: !137, line: 618, size: 1344, elements: !144)
!144 = !{!145, !149, !154, !155, !160, !161, !162, !173, !174, !176, !181, !182, !183, !184}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "error_exit", scope: !143, file: !137, line: 620, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DISubroutineType(types: !148)
!148 = !{null, !136}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "emit_message", scope: !143, file: !137, line: 622, baseType: !150, size: 64, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DISubroutineType(types: !152)
!152 = !{null, !136, !153}
!153 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "output_message", scope: !143, file: !137, line: 624, baseType: !146, size: 64, offset: 128)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "format_message", scope: !143, file: !137, line: 626, baseType: !156, size: 64, offset: 192)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DISubroutineType(types: !158)
!158 = !{null, !136, !159}
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "reset_error_mgr", scope: !143, file: !137, line: 629, baseType: !146, size: 64, offset: 256)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "msg_code", scope: !143, file: !137, line: 634, baseType: !153, size: 32, offset: 320)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "msg_parm", scope: !143, file: !137, line: 639, baseType: !163, size: 640, offset: 352)
!163 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !143, file: !137, line: 636, size: 640, elements: !164)
!164 = !{!165, !169}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !163, file: !137, line: 637, baseType: !166, size: 256)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 256, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 8)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !163, file: !137, line: 638, baseType: !170, size: 640)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 640, elements: !171)
!171 = !{!172}
!172 = !DISubrange(count: 80)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "trace_level", scope: !143, file: !137, line: 643, baseType: !153, size: 32, offset: 992)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "num_warnings", scope: !143, file: !137, line: 651, baseType: !175, size: 64, offset: 1024)
!175 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_message_table", scope: !143, file: !137, line: 663, baseType: !177, size: 64, offset: 1088)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "last_jpeg_message", scope: !143, file: !137, line: 664, baseType: !153, size: 32, offset: 1152)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "addon_message_table", scope: !143, file: !137, line: 668, baseType: !177, size: 64, offset: 1216)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "first_addon_message", scope: !143, file: !137, line: 669, baseType: !153, size: 32, offset: 1280)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "last_addon_message", scope: !143, file: !137, line: 670, baseType: !153, size: 32, offset: 1312)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !139, file: !137, line: 241, baseType: !186, size: 64, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_memory_mgr", file: !137, line: 731, size: 768, elements: !188)
!188 = !{!189, !196, !197, !209, !223, !231, !238, !239, !243, !247, !248, !249}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_small", scope: !187, file: !137, line: 733, baseType: !190, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{!135, !136, !153, !193}
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !194, line: 18, baseType: !195)
!194 = !DIFile(filename: "/usr/local/lib/clang/20/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!195 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_large", scope: !187, file: !137, line: 735, baseType: !190, size: 64, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_sarray", scope: !187, file: !137, line: 737, baseType: !198, size: 64, offset: 128)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{!201, !136, !153, !208, !208}
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPARRAY", file: !137, line: 67, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPROW", file: !137, line: 66, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPLE", file: !206, line: 59, baseType: !207)
!206 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jmorecfg.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "56a0eda58fafa6bdd5498f702a998c09")
!207 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "JDIMENSION", file: !206, line: 171, baseType: !11)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_barray", scope: !187, file: !137, line: 740, baseType: !210, size: 64, offset: 192)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!213, !136, !153, !208, !208}
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCKARRAY", file: !137, line: 72, baseType: !214)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCKROW", file: !137, line: 71, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCK", file: !137, line: 70, baseType: !218)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 1024, elements: !221)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "JCOEF", file: !206, line: 99, baseType: !220)
!220 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!221 = !{!222}
!222 = !DISubrange(count: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_sarray", scope: !187, file: !137, line: 743, baseType: !224, size: 64, offset: 256)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{!227, !136, !153, !230, !208, !208, !208}
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_sarray_ptr", file: !137, line: 727, baseType: !228)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_sarray_control", file: !137, line: 727, flags: DIFlagFwdDecl)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "boolean", file: !206, line: 227, baseType: !153)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_barray", scope: !187, file: !137, line: 749, baseType: !232, size: 64, offset: 320)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!235, !136, !153, !230, !208, !208, !208}
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_barray_ptr", file: !137, line: 728, baseType: !236)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_barray_control", file: !137, line: 728, flags: DIFlagFwdDecl)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "realize_virt_arrays", scope: !187, file: !137, line: 755, baseType: !146, size: 64, offset: 384)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_sarray", scope: !187, file: !137, line: 756, baseType: !240, size: 64, offset: 448)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{!201, !136, !227, !208, !208, !230}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_barray", scope: !187, file: !137, line: 761, baseType: !244, size: 64, offset: 512)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{!213, !136, !235, !208, !208, !230}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "free_pool", scope: !187, file: !137, line: 766, baseType: !150, size: 64, offset: 576)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "self_destruct", scope: !187, file: !137, line: 767, baseType: !146, size: 64, offset: 640)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "max_memory_to_use", scope: !187, file: !137, line: 774, baseType: !175, size: 64, offset: 704)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !139, file: !137, line: 241, baseType: !251, size: 64, offset: 128)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_progress_mgr", file: !137, line: 676, size: 256, elements: !253)
!253 = !{!254, !255, !256, !257, !258}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !252, file: !137, line: 677, baseType: !146, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "pass_counter", scope: !252, file: !137, line: 679, baseType: !175, size: 64, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "pass_limit", scope: !252, file: !137, line: 680, baseType: !175, size: 64, offset: 128)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "completed_passes", scope: !252, file: !137, line: 681, baseType: !153, size: 32, offset: 192)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "total_passes", scope: !252, file: !137, line: 682, baseType: !153, size: 32, offset: 224)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !139, file: !137, line: 241, baseType: !230, size: 32, offset: 192)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !139, file: !137, line: 241, baseType: !153, size: 32, offset: 224)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!263 = !{!0}
!264 = !{i32 7, !"Dwarf Version", i32 5}
!265 = !{i32 2, !"Debug Info Version", i32 3}
!266 = !{i32 1, !"wchar_size", i32 4}
!267 = !{i32 8, !"PIC Level", i32 2}
!268 = !{i32 7, !"PIE Level", i32 2}
!269 = !{i32 7, !"uwtable", i32 2}
!270 = !{i32 7, !"frame-pointer", i32 2}
!271 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!272 = distinct !DISubprogram(name: "jpeg_get_small", scope: !2, file: !2, line: 36, type: !273, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !275)
!273 = !DISubroutineType(types: !274)
!274 = !{!135, !136, !193}
!275 = !{}
!276 = !DILocalVariable(name: "cinfo", arg: 1, scope: !272, file: !2, line: 36, type: !136)
!277 = !DILocation(line: 36, column: 30, scope: !272)
!278 = !DILocalVariable(name: "sizeofobject", arg: 2, scope: !272, file: !2, line: 36, type: !193)
!279 = !DILocation(line: 36, column: 44, scope: !272)
!280 = !DILocation(line: 38, column: 26, scope: !272)
!281 = !DILocation(line: 38, column: 19, scope: !272)
!282 = !DILocation(line: 38, column: 3, scope: !272)
!283 = distinct !DISubprogram(name: "jpeg_free_small", scope: !2, file: !2, line: 42, type: !284, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !275)
!284 = !DISubroutineType(types: !285)
!285 = !{null, !136, !135, !193}
!286 = !DILocalVariable(name: "cinfo", arg: 1, scope: !283, file: !2, line: 42, type: !136)
!287 = !DILocation(line: 42, column: 31, scope: !283)
!288 = !DILocalVariable(name: "object", arg: 2, scope: !283, file: !2, line: 42, type: !135)
!289 = !DILocation(line: 42, column: 45, scope: !283)
!290 = !DILocalVariable(name: "sizeofobject", arg: 3, scope: !283, file: !2, line: 42, type: !193)
!291 = !DILocation(line: 42, column: 60, scope: !283)
!292 = !DILocation(line: 44, column: 8, scope: !283)
!293 = !DILocation(line: 44, column: 3, scope: !283)
!294 = !DILocation(line: 45, column: 1, scope: !283)
!295 = distinct !DISubprogram(name: "jpeg_get_large", scope: !2, file: !2, line: 56, type: !273, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !275)
!296 = !DILocalVariable(name: "cinfo", arg: 1, scope: !295, file: !2, line: 56, type: !136)
!297 = !DILocation(line: 56, column: 30, scope: !295)
!298 = !DILocalVariable(name: "sizeofobject", arg: 2, scope: !295, file: !2, line: 56, type: !193)
!299 = !DILocation(line: 56, column: 44, scope: !295)
!300 = !DILocation(line: 58, column: 30, scope: !295)
!301 = !DILocation(line: 58, column: 23, scope: !295)
!302 = !DILocation(line: 58, column: 3, scope: !295)
!303 = distinct !DISubprogram(name: "jpeg_free_large", scope: !2, file: !2, line: 62, type: !284, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !275)
!304 = !DILocalVariable(name: "cinfo", arg: 1, scope: !303, file: !2, line: 62, type: !136)
!305 = !DILocation(line: 62, column: 31, scope: !303)
!306 = !DILocalVariable(name: "object", arg: 2, scope: !303, file: !2, line: 62, type: !135)
!307 = !DILocation(line: 62, column: 49, scope: !303)
!308 = !DILocalVariable(name: "sizeofobject", arg: 3, scope: !303, file: !2, line: 62, type: !193)
!309 = !DILocation(line: 62, column: 64, scope: !303)
!310 = !DILocation(line: 64, column: 8, scope: !303)
!311 = !DILocation(line: 64, column: 3, scope: !303)
!312 = !DILocation(line: 65, column: 1, scope: !303)
!313 = distinct !DISubprogram(name: "jpeg_mem_available", scope: !2, file: !2, line: 81, type: !314, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !275)
!314 = !DISubroutineType(types: !315)
!315 = !{!175, !136, !175, !175, !175}
!316 = !DILocalVariable(name: "cinfo", arg: 1, scope: !313, file: !2, line: 81, type: !136)
!317 = !DILocation(line: 81, column: 34, scope: !313)
!318 = !DILocalVariable(name: "min_bytes_needed", arg: 2, scope: !313, file: !2, line: 81, type: !175)
!319 = !DILocation(line: 81, column: 46, scope: !313)
!320 = !DILocalVariable(name: "max_bytes_needed", arg: 3, scope: !313, file: !2, line: 82, type: !175)
!321 = !DILocation(line: 82, column: 12, scope: !313)
!322 = !DILocalVariable(name: "already_allocated", arg: 4, scope: !313, file: !2, line: 82, type: !175)
!323 = !DILocation(line: 82, column: 35, scope: !313)
!324 = !DILocation(line: 84, column: 10, scope: !313)
!325 = !DILocation(line: 84, column: 17, scope: !313)
!326 = !DILocation(line: 84, column: 22, scope: !313)
!327 = !DILocation(line: 84, column: 42, scope: !313)
!328 = !DILocation(line: 84, column: 40, scope: !313)
!329 = !DILocation(line: 84, column: 3, scope: !313)
!330 = distinct !DISubprogram(name: "jpeg_open_backing_store", scope: !2, file: !2, line: 141, type: !331, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !275)
!331 = !DISubroutineType(types: !332)
!332 = !{null, !136, !333, !175}
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "backing_store_ptr", file: !334, line: 130, baseType: !335)
!334 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jmemsys.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "6d2a46c951025f2d29fe74061c465221")
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_store_struct", file: !334, line: 132, size: 768, elements: !337)
!337 = !{!338, !342, !343, !347, !400}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "read_backing_store", scope: !336, file: !334, line: 134, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DISubroutineType(types: !341)
!341 = !{null, !136, !333, !135, !175, !175}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "write_backing_store", scope: !336, file: !334, line: 138, baseType: !339, size: 64, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "close_backing_store", scope: !336, file: !334, line: 142, baseType: !344, size: 64, offset: 128)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DISubroutineType(types: !346)
!346 = !{null, !136, !333}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "temp_file", scope: !336, file: !334, line: 152, baseType: !348, size: 64, offset: 192)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !350, line: 7, baseType: !351)
!350 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !352, line: 49, size: 1728, elements: !353)
!352 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!353 = !{!354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !369, !371, !372, !373, !376, !378, !380, !381, !384, !386, !389, !392, !393, !394, !395, !396}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !351, file: !352, line: 51, baseType: !153, size: 32)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !351, file: !352, line: 54, baseType: !159, size: 64, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !351, file: !352, line: 55, baseType: !159, size: 64, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !351, file: !352, line: 56, baseType: !159, size: 64, offset: 192)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !351, file: !352, line: 57, baseType: !159, size: 64, offset: 256)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !351, file: !352, line: 58, baseType: !159, size: 64, offset: 320)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !351, file: !352, line: 59, baseType: !159, size: 64, offset: 384)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !351, file: !352, line: 60, baseType: !159, size: 64, offset: 448)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !351, file: !352, line: 61, baseType: !159, size: 64, offset: 512)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !351, file: !352, line: 64, baseType: !159, size: 64, offset: 576)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !351, file: !352, line: 65, baseType: !159, size: 64, offset: 640)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !351, file: !352, line: 66, baseType: !159, size: 64, offset: 704)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !351, file: !352, line: 68, baseType: !367, size: 64, offset: 768)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !352, line: 36, flags: DIFlagFwdDecl)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !351, file: !352, line: 70, baseType: !370, size: 64, offset: 832)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !351, file: !352, line: 72, baseType: !153, size: 32, offset: 896)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !351, file: !352, line: 73, baseType: !153, size: 32, offset: 928)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !351, file: !352, line: 74, baseType: !374, size: 64, offset: 960)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !375, line: 152, baseType: !175)
!375 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!376 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !351, file: !352, line: 77, baseType: !377, size: 16, offset: 1024)
!377 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !351, file: !352, line: 78, baseType: !379, size: 8, offset: 1040)
!379 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !351, file: !352, line: 79, baseType: !3, size: 8, offset: 1048)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !351, file: !352, line: 81, baseType: !382, size: 64, offset: 1088)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !352, line: 43, baseType: null)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !351, file: !352, line: 89, baseType: !385, size: 64, offset: 1152)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !375, line: 153, baseType: !175)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !351, file: !352, line: 91, baseType: !387, size: 64, offset: 1216)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !352, line: 37, flags: DIFlagFwdDecl)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !351, file: !352, line: 92, baseType: !390, size: 64, offset: 1280)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !352, line: 38, flags: DIFlagFwdDecl)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !351, file: !352, line: 93, baseType: !370, size: 64, offset: 1344)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !351, file: !352, line: 94, baseType: !135, size: 64, offset: 1408)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !351, file: !352, line: 95, baseType: !193, size: 64, offset: 1472)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !351, file: !352, line: 96, baseType: !153, size: 32, offset: 1536)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !351, file: !352, line: 98, baseType: !397, size: 160, offset: 1568)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !398)
!398 = !{!399}
!399 = !DISubrange(count: 20)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "temp_name", scope: !336, file: !334, line: 153, baseType: !401, size: 512, offset: 256)
!401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !221)
!402 = !DILocalVariable(name: "cinfo", arg: 1, scope: !330, file: !2, line: 141, type: !136)
!403 = !DILocation(line: 141, column: 39, scope: !330)
!404 = !DILocalVariable(name: "info", arg: 2, scope: !330, file: !2, line: 141, type: !333)
!405 = !DILocation(line: 141, column: 64, scope: !330)
!406 = !DILocalVariable(name: "total_bytes_needed", arg: 3, scope: !330, file: !2, line: 142, type: !175)
!407 = !DILocation(line: 142, column: 10, scope: !330)
!408 = !DILocation(line: 144, column: 26, scope: !409)
!409 = distinct !DILexicalBlock(scope: !330, file: !2, line: 144, column: 7)
!410 = !DILocation(line: 144, column: 8, scope: !409)
!411 = !DILocation(line: 144, column: 14, scope: !409)
!412 = !DILocation(line: 144, column: 24, scope: !409)
!413 = !DILocation(line: 144, column: 37, scope: !409)
!414 = !DILocation(line: 145, column: 5, scope: !409)
!415 = !DILocation(line: 146, column: 3, scope: !330)
!416 = !DILocation(line: 146, column: 9, scope: !330)
!417 = !DILocation(line: 146, column: 28, scope: !330)
!418 = !DILocation(line: 147, column: 3, scope: !330)
!419 = !DILocation(line: 147, column: 9, scope: !330)
!420 = !DILocation(line: 147, column: 29, scope: !330)
!421 = !DILocation(line: 148, column: 3, scope: !330)
!422 = !DILocation(line: 148, column: 9, scope: !330)
!423 = !DILocation(line: 148, column: 29, scope: !330)
!424 = !DILocation(line: 149, column: 1, scope: !330)
!425 = distinct !DISubprogram(name: "read_backing_store", scope: !2, file: !2, line: 97, type: !340, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !275)
!426 = !DILocalVariable(name: "cinfo", arg: 1, scope: !425, file: !2, line: 97, type: !136)
!427 = !DILocation(line: 97, column: 34, scope: !425)
!428 = !DILocalVariable(name: "info", arg: 2, scope: !425, file: !2, line: 97, type: !333)
!429 = !DILocation(line: 97, column: 59, scope: !425)
!430 = !DILocalVariable(name: "buffer_address", arg: 3, scope: !425, file: !2, line: 98, type: !135)
!431 = !DILocation(line: 98, column: 18, scope: !425)
!432 = !DILocalVariable(name: "file_offset", arg: 4, scope: !425, file: !2, line: 99, type: !175)
!433 = !DILocation(line: 99, column: 12, scope: !425)
!434 = !DILocalVariable(name: "byte_count", arg: 5, scope: !425, file: !2, line: 99, type: !175)
!435 = !DILocation(line: 99, column: 30, scope: !425)
!436 = !DILocation(line: 101, column: 13, scope: !437)
!437 = distinct !DILexicalBlock(scope: !425, file: !2, line: 101, column: 7)
!438 = !DILocation(line: 101, column: 19, scope: !437)
!439 = !DILocation(line: 101, column: 30, scope: !437)
!440 = !DILocation(line: 101, column: 7, scope: !437)
!441 = !DILocation(line: 102, column: 5, scope: !437)
!442 = !DILocation(line: 103, column: 7, scope: !443)
!443 = distinct !DILexicalBlock(scope: !425, file: !2, line: 103, column: 7)
!444 = !DILocation(line: 104, column: 19, scope: !443)
!445 = !DILocation(line: 104, column: 7, scope: !443)
!446 = !DILocation(line: 105, column: 5, scope: !443)
!447 = !DILocation(line: 106, column: 1, scope: !425)
!448 = distinct !DISubprogram(name: "write_backing_store", scope: !2, file: !2, line: 110, type: !340, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !275)
!449 = !DILocalVariable(name: "cinfo", arg: 1, scope: !448, file: !2, line: 110, type: !136)
!450 = !DILocation(line: 110, column: 35, scope: !448)
!451 = !DILocalVariable(name: "info", arg: 2, scope: !448, file: !2, line: 110, type: !333)
!452 = !DILocation(line: 110, column: 60, scope: !448)
!453 = !DILocalVariable(name: "buffer_address", arg: 3, scope: !448, file: !2, line: 111, type: !135)
!454 = !DILocation(line: 111, column: 19, scope: !448)
!455 = !DILocalVariable(name: "file_offset", arg: 4, scope: !448, file: !2, line: 112, type: !175)
!456 = !DILocation(line: 112, column: 13, scope: !448)
!457 = !DILocalVariable(name: "byte_count", arg: 5, scope: !448, file: !2, line: 112, type: !175)
!458 = !DILocation(line: 112, column: 31, scope: !448)
!459 = !DILocation(line: 114, column: 13, scope: !460)
!460 = distinct !DILexicalBlock(scope: !448, file: !2, line: 114, column: 7)
!461 = !DILocation(line: 114, column: 19, scope: !460)
!462 = !DILocation(line: 114, column: 30, scope: !460)
!463 = !DILocation(line: 114, column: 7, scope: !460)
!464 = !DILocation(line: 115, column: 5, scope: !460)
!465 = !DILocation(line: 116, column: 7, scope: !466)
!466 = distinct !DILexicalBlock(scope: !448, file: !2, line: 116, column: 7)
!467 = !DILocation(line: 117, column: 19, scope: !466)
!468 = !DILocation(line: 117, column: 7, scope: !466)
!469 = !DILocation(line: 118, column: 5, scope: !466)
!470 = !DILocation(line: 119, column: 1, scope: !448)
!471 = distinct !DISubprogram(name: "close_backing_store", scope: !2, file: !2, line: 123, type: !345, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !275)
!472 = !DILocalVariable(name: "cinfo", arg: 1, scope: !471, file: !2, line: 123, type: !136)
!473 = !DILocation(line: 123, column: 35, scope: !471)
!474 = !DILocalVariable(name: "info", arg: 2, scope: !471, file: !2, line: 123, type: !333)
!475 = !DILocation(line: 123, column: 60, scope: !471)
!476 = !DILocation(line: 125, column: 10, scope: !471)
!477 = !DILocation(line: 125, column: 16, scope: !471)
!478 = !DILocation(line: 125, column: 3, scope: !471)
!479 = !DILocation(line: 129, column: 1, scope: !471)
!480 = distinct !DISubprogram(name: "jpeg_mem_init", scope: !2, file: !2, line: 158, type: !481, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !275)
!481 = !DISubroutineType(types: !482)
!482 = !{!175, !136}
!483 = !DILocalVariable(name: "cinfo", arg: 1, scope: !480, file: !2, line: 158, type: !136)
!484 = !DILocation(line: 158, column: 29, scope: !480)
!485 = !DILocation(line: 160, column: 3, scope: !480)
!486 = distinct !DISubprogram(name: "jpeg_mem_term", scope: !2, file: !2, line: 164, type: !147, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !275)
!487 = !DILocalVariable(name: "cinfo", arg: 1, scope: !486, file: !2, line: 164, type: !136)
!488 = !DILocation(line: 164, column: 29, scope: !486)
!489 = !DILocation(line: 167, column: 1, scope: !486)
