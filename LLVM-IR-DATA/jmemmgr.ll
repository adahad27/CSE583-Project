; ModuleID = 'cBench/consumer_jpeg_c/src/jmemmgr.c'
source_filename = "cBench/consumer_jpeg_c/src/jmemmgr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_common_struct = type { ptr, ptr, ptr, i32, i32 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.my_memory_mgr = type { %struct.jpeg_memory_mgr, [2 x ptr], [2 x ptr], ptr, ptr, i64, i32 }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.anon = type { ptr, i64, i64 }
%union.small_pool_struct = type { %struct.anon }
%struct.anon.0 = type { ptr, i64, i64 }
%union.large_pool_struct = type { %struct.anon.0 }
%struct.jvirt_sarray_control = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.backing_store_struct }
%struct.backing_store_struct = type { ptr, ptr, ptr, ptr, [64 x i8] }
%struct.jvirt_barray_control = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.backing_store_struct }

@.str = private unnamed_addr constant [8 x i8] c"JPEGMEM\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [6 x i8] c"%ld%c\00", align 1, !dbg !7
@first_pool_slop = internal constant [2 x i64] [i64 1600, i64 16000], align 16, !dbg !12
@extra_pool_slop = internal constant [2 x i64] [i64 0, i64 5000], align 16, !dbg !407

; Function Attrs: noinline nounwind uwtable
define dso_local void @jinit_memory_mgr(ptr noundef %0) #0 !dbg !419 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i8, align 1
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !421, !DIExpression(), !422)
    #dbg_declare(ptr %3, !423, !DIExpression(), !424)
    #dbg_declare(ptr %4, !425, !DIExpression(), !426)
    #dbg_declare(ptr %5, !427, !DIExpression(), !428)
    #dbg_declare(ptr %6, !429, !DIExpression(), !430)
  %9 = load ptr, ptr %2, align 8, !dbg !431
  %10 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %9, i32 0, i32 1, !dbg !432
  store ptr null, ptr %10, align 8, !dbg !433
  store i64 1000000000, ptr %6, align 8, !dbg !434
  %11 = load i64, ptr %6, align 8, !dbg !435
  %12 = icmp ne i64 %11, 1000000000, !dbg !437
  br i1 %12, label %13, label %24, !dbg !438

13:                                               ; preds = %1
  %14 = load ptr, ptr %2, align 8, !dbg !439
  %15 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %14, i32 0, i32 0, !dbg !439
  %16 = load ptr, ptr %15, align 8, !dbg !439
  %17 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %16, i32 0, i32 5, !dbg !439
  store i32 3, ptr %17, align 8, !dbg !439
  %18 = load ptr, ptr %2, align 8, !dbg !439
  %19 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %18, i32 0, i32 0, !dbg !439
  %20 = load ptr, ptr %19, align 8, !dbg !439
  %21 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %20, i32 0, i32 0, !dbg !439
  %22 = load ptr, ptr %21, align 8, !dbg !439
  %23 = load ptr, ptr %2, align 8, !dbg !439
  call void %22(ptr noundef %23), !dbg !439
  br label %24, !dbg !439

24:                                               ; preds = %13, %1
  %25 = load ptr, ptr %2, align 8, !dbg !440
  %26 = call i64 @jpeg_mem_init(ptr noundef %25), !dbg !441
  store i64 %26, ptr %4, align 8, !dbg !442
  %27 = load ptr, ptr %2, align 8, !dbg !443
  %28 = call ptr @jpeg_get_small(ptr noundef %27, i64 noundef 160), !dbg !444
  store ptr %28, ptr %3, align 8, !dbg !445
  %29 = load ptr, ptr %3, align 8, !dbg !446
  %30 = icmp eq ptr %29, null, !dbg !448
  br i1 %30, label %31, label %48, !dbg !448

31:                                               ; preds = %24
  %32 = load ptr, ptr %2, align 8, !dbg !449
  call void @jpeg_mem_term(ptr noundef %32), !dbg !451
  %33 = load ptr, ptr %2, align 8, !dbg !452
  %34 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %33, i32 0, i32 0, !dbg !452
  %35 = load ptr, ptr %34, align 8, !dbg !452
  %36 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %35, i32 0, i32 5, !dbg !452
  store i32 53, ptr %36, align 8, !dbg !452
  %37 = load ptr, ptr %2, align 8, !dbg !452
  %38 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %37, i32 0, i32 0, !dbg !452
  %39 = load ptr, ptr %38, align 8, !dbg !452
  %40 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %39, i32 0, i32 6, !dbg !452
  %41 = getelementptr inbounds [8 x i32], ptr %40, i64 0, i64 0, !dbg !452
  store i32 0, ptr %41, align 4, !dbg !452
  %42 = load ptr, ptr %2, align 8, !dbg !452
  %43 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %42, i32 0, i32 0, !dbg !452
  %44 = load ptr, ptr %43, align 8, !dbg !452
  %45 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %44, i32 0, i32 0, !dbg !452
  %46 = load ptr, ptr %45, align 8, !dbg !452
  %47 = load ptr, ptr %2, align 8, !dbg !452
  call void %46(ptr noundef %47), !dbg !452
  br label %48, !dbg !453

48:                                               ; preds = %31, %24
  %49 = load ptr, ptr %3, align 8, !dbg !454
  %50 = getelementptr inbounds nuw %struct.my_memory_mgr, ptr %49, i32 0, i32 0, !dbg !455
  %51 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %50, i32 0, i32 0, !dbg !456
  store ptr @alloc_small, ptr %51, align 8, !dbg !457
  %52 = load ptr, ptr %3, align 8, !dbg !458
  %53 = getelementptr inbounds nuw %struct.my_memory_mgr, ptr %52, i32 0, i32 0, !dbg !459
  %54 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %53, i32 0, i32 1, !dbg !460
  store ptr @alloc_large, ptr %54, align 8, !dbg !461
  %55 = load ptr, ptr %3, align 8, !dbg !462
  %56 = getelementptr inbounds nuw %struct.my_memory_mgr, ptr %55, i32 0, i32 0, !dbg !463
  %57 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %56, i32 0, i32 2, !dbg !464
  store ptr @alloc_sarray, ptr %57, align 8, !dbg !465
  %58 = load ptr, ptr %3, align 8, !dbg !466
  %59 = getelementptr inbounds nuw %struct.my_memory_mgr, ptr %58, i32 0, i32 0, !dbg !467
  %60 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %59, i32 0, i32 3, !dbg !468
  store ptr @alloc_barray, ptr %60, align 8, !dbg !469
  %61 = load ptr, ptr %3, align 8, !dbg !470
  %62 = getelementptr inbounds nuw %struct.my_memory_mgr, ptr %61, i32 0, i32 0, !dbg !471
  %63 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %62, i32 0, i32 4, !dbg !472
  store ptr @request_virt_sarray, ptr %63, align 8, !dbg !473
  %64 = load ptr, ptr %3, align 8, !dbg !474
  %65 = getelementptr inbounds nuw %struct.my_memory_mgr, ptr %64, i32 0, i32 0, !dbg !475
  %66 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %65, i32 0, i32 5, !dbg !476
  store ptr @request_virt_barray, ptr %66, align 8, !dbg !477
  %67 = load ptr, ptr %3, align 8, !dbg !478
  %68 = getelementptr inbounds nuw %struct.my_memory_mgr, ptr %67, i32 0, i32 0, !dbg !479
  %69 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %68, i32 0, i32 6, !dbg !480
  store ptr @realize_virt_arrays, ptr %69, align 8, !dbg !481
  %70 = load ptr, ptr %3, align 8, !dbg !482
  %71 = getelementptr inbounds nuw %struct.my_memory_mgr, ptr %70, i32 0, i32 0, !dbg !483
  %72 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %71, i32 0, i32 7, !dbg !484
  store ptr @access_virt_sarray, ptr %72, align 8, !dbg !485
  %73 = load ptr, ptr %3, align 8, !dbg !486
  %74 = getelementptr inbounds nuw %struct.my_memory_mgr, ptr %73, i32 0, i32 0, !dbg !487
  %75 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %74, i32 0, i32 8, !dbg !488
  store ptr @access_virt_barray, ptr %75, align 8, !dbg !489
  %76 = load ptr, ptr %3, align 8, !dbg !490
  %77 = getelementptr inbounds nuw %struct.my_memory_mgr, ptr %76, i32 0, i32 0, !dbg !491
  %78 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %77, i32 0, i32 9, !dbg !492
  store ptr @free_pool, ptr %78, align 8, !dbg !493
  %79 = load ptr, ptr %3, align 8, !dbg !494
  %80 = getelementptr inbounds nuw %struct.my_memory_mgr, ptr %79, i32 0, i32 0, !dbg !495
  %81 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %80, i32 0, i32 10, !dbg !496
  store ptr @self_destruct, ptr %81, align 8, !dbg !497
  %82 = load i64, ptr %4, align 8, !dbg !498
  %83 = load ptr, ptr %3, align 8, !dbg !499
  %84 = getelementptr inbounds nuw %struct.my_memory_mgr, ptr %83, i32 0, i32 0, !dbg !500
  %85 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %84, i32 0, i32 11, !dbg !501
  store i64 %82, ptr %85, align 8, !dbg !502
  store i32 1, ptr %5, align 4, !dbg !503
  br label %86, !dbg !505

86:                                               ; preds = %100, %48
  %87 = load i32, ptr %5, align 4, !dbg !506
  %88 = icmp sge i32 %87, 0, !dbg !508
  br i1 %88, label %89, label %103, !dbg !509

89:                                               ; preds = %86
  %90 = load ptr, ptr %3, align 8, !dbg !510
  %91 = getelementptr inbounds nuw %struct.my_memory_mgr, ptr %90, i32 0, i32 1, !dbg !512
  %92 = load i32, ptr %5, align 4, !dbg !513
  %93 = sext i32 %92 to i64, !dbg !510
  %94 = getelementptr inbounds [2 x ptr], ptr %91, i64 0, i64 %93, !dbg !510
  store ptr null, ptr %94, align 8, !dbg !514
  %95 = load ptr, ptr %3, align 8, !dbg !515
  %96 = getelementptr inbounds nuw %struct.my_memory_mgr, ptr %95, i32 0, i32 2, !dbg !516
  %97 = load i32, ptr %5, align 4, !dbg !517
  %98 = sext i32 %97 to i64, !dbg !515
  %99 = getelementptr inbounds [2 x ptr], ptr %96, i64 0, i64 %98, !dbg !515
  store ptr null, ptr %99, align 8, !dbg !518
  br label %100, !dbg !519

100:                                              ; preds = %89
  %101 = load i32, ptr %5, align 4, !dbg !520
  %102 = add nsw i32 %101, -1, !dbg !520
  store i32 %102, ptr %5, align 4, !dbg !520
  br label %86, !dbg !521, !llvm.loop !522

103:                                              ; preds = %86
  %104 = load ptr, ptr %3, align 8, !dbg !525
  %105 = getelementptr inbounds nuw %struct.my_memory_mgr, ptr %104, i32 0, i32 3, !dbg !526
  store ptr null, ptr %105, align 8, !dbg !527
  %106 = load ptr, ptr %3, align 8, !dbg !528
  %107 = getelementptr inbounds nuw %struct.my_memory_mgr, ptr %106, i32 0, i32 4, !dbg !529
  store ptr null, ptr %107, align 8, !dbg !530
  %108 = load ptr, ptr %3, align 8, !dbg !531
  %109 = getelementptr inbounds nuw %struct.my_memory_mgr, ptr %108, i32 0, i32 5, !dbg !532
  store i64 160, ptr %109, align 8, !dbg !533
  %110 = load ptr, ptr %3, align 8, !dbg !534
  %111 = getelementptr inbounds nuw %struct.my_memory_mgr, ptr %110, i32 0, i32 0, !dbg !535
  %112 = load ptr, ptr %2, align 8, !dbg !536
  %113 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %112, i32 0, i32 1, !dbg !537
  store ptr %111, ptr %113, align 8, !dbg !538
    #dbg_declare(ptr %7, !539, !DIExpression(), !541)
  %114 = call ptr @getenv(ptr noundef @.str) #3, !dbg !542
  store ptr %114, ptr %7, align 8, !dbg !544
  %115 = icmp ne ptr %114, null, !dbg !545
  br i1 %115, label %116, label %138, !dbg !545

116:                                              ; preds = %103
    #dbg_declare(ptr %8, !546, !DIExpression(), !548)
  store i8 120, ptr %8, align 1, !dbg !548
  %117 = load ptr, ptr %7, align 8, !dbg !549
  %118 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %117, ptr noundef @.str.1, ptr noundef %4, ptr noundef %8) #3, !dbg !551
  %119 = icmp sgt i32 %118, 0, !dbg !552
  br i1 %119, label %120, label %137, !dbg !552

120:                                              ; preds = %116
  %121 = load i8, ptr %8, align 1, !dbg !553
  %122 = sext i8 %121 to i32, !dbg !553
  %123 = icmp eq i32 %122, 109, !dbg !556
  br i1 %123, label %128, label %124, !dbg !557

124:                                              ; preds = %120
  %125 = load i8, ptr %8, align 1, !dbg !558
  %126 = sext i8 %125 to i32, !dbg !558
  %127 = icmp eq i32 %126, 77, !dbg !559
  br i1 %127, label %128, label %131, !dbg !557

128:                                              ; preds = %124, %120
  %129 = load i64, ptr %4, align 8, !dbg !560
  %130 = mul nsw i64 %129, 1000, !dbg !560
  store i64 %130, ptr %4, align 8, !dbg !560
  br label %131, !dbg !561

131:                                              ; preds = %128, %124
  %132 = load i64, ptr %4, align 8, !dbg !562
  %133 = mul nsw i64 %132, 1000, !dbg !563
  %134 = load ptr, ptr %3, align 8, !dbg !564
  %135 = getelementptr inbounds nuw %struct.my_memory_mgr, ptr %134, i32 0, i32 0, !dbg !565
  %136 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %135, i32 0, i32 11, !dbg !566
  store i64 %133, ptr %136, align 8, !dbg !567
  br label %137, !dbg !568

137:                                              ; preds = %131, %116
  br label %138, !dbg !569

138:                                              ; preds = %137, %103
  ret void, !dbg !570
}

declare i64 @jpeg_mem_init(ptr noundef) #1

declare ptr @jpeg_get_small(ptr noundef, i64 noundef) #1

declare void @jpeg_mem_term(ptr noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal ptr @alloc_small(ptr noundef %0, i32 noundef %1, i64 noundef %2) #0 !dbg !571 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !572, !DIExpression(), !573)
  store i32 %1, ptr %5, align 4
    #dbg_declare(ptr %5, !574, !DIExpression(), !575)
  store i64 %2, ptr %6, align 8
    #dbg_declare(ptr %6, !576, !DIExpression(), !577)
    #dbg_declare(ptr %7, !578, !DIExpression(), !579)
  %14 = load ptr, ptr %4, align 8, !dbg !580
  %15 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %14, i32 0, i32 1, !dbg !581
  %16 = load ptr, ptr %15, align 8, !dbg !581
  store ptr %16, ptr %7, align 8, !dbg !579
    #dbg_declare(ptr %8, !582, !DIExpression(), !583)
    #dbg_declare(ptr %9, !584, !DIExpression(), !585)
    #dbg_declare(ptr %10, !586, !DIExpression(), !587)
    #dbg_declare(ptr %11, !588, !DIExpression(), !589)
    #dbg_declare(ptr %12, !590, !DIExpression(), !591)
    #dbg_declare(ptr %13, !592, !DIExpression(), !593)
  %17 = load i64, ptr %6, align 8, !dbg !594
  %18 = icmp ugt i64 %17, 999999976, !dbg !596
  br i1 %18, label %19, label %21, !dbg !596

19:                                               ; preds = %3
  %20 = load ptr, ptr %4, align 8, !dbg !597
  call void @out_of_memory(ptr noundef %20, i32 noundef 1), !dbg !598
  br label %21, !dbg !598

21:                                               ; preds = %19, %3
  %22 = load i64, ptr %6, align 8, !dbg !599
  %23 = urem i64 %22, 8, !dbg !600
  store i64 %23, ptr %11, align 8, !dbg !601
  %24 = load i64, ptr %11, align 8, !dbg !602
  %25 = icmp ugt i64 %24, 0, !dbg !604
  br i1 %25, label %26, label %31, !dbg !604

26:                                               ; preds = %21
  %27 = load i64, ptr %11, align 8, !dbg !605
  %28 = sub i64 8, %27, !dbg !606
  %29 = load i64, ptr %6, align 8, !dbg !607
  %30 = add i64 %29, %28, !dbg !607
  store i64 %30, ptr %6, align 8, !dbg !607
  br label %31, !dbg !608

31:                                               ; preds = %26, %21
  %32 = load i32, ptr %5, align 4, !dbg !609
  %33 = icmp slt i32 %32, 0, !dbg !611
  br i1 %33, label %37, label %34, !dbg !612

34:                                               ; preds = %31
  %35 = load i32, ptr %5, align 4, !dbg !613
  %36 = icmp sge i32 %35, 2, !dbg !614
  br i1 %36, label %37, label %54, !dbg !612

37:                                               ; preds = %34, %31
  %38 = load ptr, ptr %4, align 8, !dbg !615
  %39 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %38, i32 0, i32 0, !dbg !615
  %40 = load ptr, ptr %39, align 8, !dbg !615
  %41 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %40, i32 0, i32 5, !dbg !615
  store i32 12, ptr %41, align 8, !dbg !615
  %42 = load i32, ptr %5, align 4, !dbg !615
  %43 = load ptr, ptr %4, align 8, !dbg !615
  %44 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %43, i32 0, i32 0, !dbg !615
  %45 = load ptr, ptr %44, align 8, !dbg !615
  %46 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %45, i32 0, i32 6, !dbg !615
  %47 = getelementptr inbounds [8 x i32], ptr %46, i64 0, i64 0, !dbg !615
  store i32 %42, ptr %47, align 4, !dbg !615
  %48 = load ptr, ptr %4, align 8, !dbg !615
  %49 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %48, i32 0, i32 0, !dbg !615
  %50 = load ptr, ptr %49, align 8, !dbg !615
  %51 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %50, i32 0, i32 0, !dbg !615
  %52 = load ptr, ptr %51, align 8, !dbg !615
  %53 = load ptr, ptr %4, align 8, !dbg !615
  call void %52(ptr noundef %53), !dbg !615
  br label %54, !dbg !615

54:                                               ; preds = %37, %34
  store ptr null, ptr %9, align 8, !dbg !616
  %55 = load ptr, ptr %7, align 8, !dbg !617
  %56 = getelementptr inbounds nuw %struct.my_memory_mgr, ptr %55, i32 0, i32 1, !dbg !618
  %57 = load i32, ptr %5, align 4, !dbg !619
  %58 = sext i32 %57 to i64, !dbg !617
  %59 = getelementptr inbounds [2 x ptr], ptr %56, i64 0, i64 %58, !dbg !617
  %60 = load ptr, ptr %59, align 8, !dbg !617
  store ptr %60, ptr %8, align 8, !dbg !620
  br label %61, !dbg !621

61:                                               ; preds = %71, %54
  %62 = load ptr, ptr %8, align 8, !dbg !622
  %63 = icmp ne ptr %62, null, !dbg !623
  br i1 %63, label %64, label %76, !dbg !621

64:                                               ; preds = %61
  %65 = load ptr, ptr %8, align 8, !dbg !624
  %66 = getelementptr inbounds nuw %struct.anon, ptr %65, i32 0, i32 2, !dbg !627
  %67 = load i64, ptr %66, align 8, !dbg !627
  %68 = load i64, ptr %6, align 8, !dbg !628
  %69 = icmp uge i64 %67, %68, !dbg !629
  br i1 %69, label %70, label %71, !dbg !629

70:                                               ; preds = %64
  br label %76, !dbg !630

71:                                               ; preds = %64
  %72 = load ptr, ptr %8, align 8, !dbg !631
  store ptr %72, ptr %9, align 8, !dbg !632
  %73 = load ptr, ptr %8, align 8, !dbg !633
  %74 = getelementptr inbounds nuw %struct.anon, ptr %73, i32 0, i32 0, !dbg !634
  %75 = load ptr, ptr %74, align 8, !dbg !634
  store ptr %75, ptr %8, align 8, !dbg !635
  br label %61, !dbg !621, !llvm.loop !636

76:                                               ; preds = %70, %61
  %77 = load ptr, ptr %8, align 8, !dbg !638
  %78 = icmp eq ptr %77, null, !dbg !640
  br i1 %78, label %79, label %151, !dbg !640

79:                                               ; preds = %76
  %80 = load i64, ptr %6, align 8, !dbg !641
  %81 = add i64 %80, 24, !dbg !643
  store i64 %81, ptr %12, align 8, !dbg !644
  %82 = load ptr, ptr %9, align 8, !dbg !645
  %83 = icmp eq ptr %82, null, !dbg !647
  br i1 %83, label %84, label %89, !dbg !647

84:                                               ; preds = %79
  %85 = load i32, ptr %5, align 4, !dbg !648
  %86 = sext i32 %85 to i64, !dbg !649
  %87 = getelementptr inbounds [2 x i64], ptr @first_pool_slop, i64 0, i64 %86, !dbg !649
  %88 = load i64, ptr %87, align 8, !dbg !649
  store i64 %88, ptr %13, align 8, !dbg !650
  br label %94, !dbg !651

89:                                               ; preds = %79
  %90 = load i32, ptr %5, align 4, !dbg !652
  %91 = sext i32 %90 to i64, !dbg !653
  %92 = getelementptr inbounds [2 x i64], ptr @extra_pool_slop, i64 0, i64 %91, !dbg !653
  %93 = load i64, ptr %92, align 8, !dbg !653
  store i64 %93, ptr %13, align 8, !dbg !654
  br label %94

94:                                               ; preds = %89, %84
  %95 = load i64, ptr %13, align 8, !dbg !655
  %96 = load i64, ptr %12, align 8, !dbg !657
  %97 = sub i64 1000000000, %96, !dbg !658
  %98 = icmp ugt i64 %95, %97, !dbg !659
  br i1 %98, label %99, label %102, !dbg !659

99:                                               ; preds = %94
  %100 = load i64, ptr %12, align 8, !dbg !660
  %101 = sub i64 1000000000, %100, !dbg !661
  store i64 %101, ptr %13, align 8, !dbg !662
  br label %102, !dbg !663

102:                                              ; preds = %99, %94
  br label %103, !dbg !664

103:                                              ; preds = %119, %102
  %104 = load ptr, ptr %4, align 8, !dbg !665
  %105 = load i64, ptr %12, align 8, !dbg !669
  %106 = load i64, ptr %13, align 8, !dbg !670
  %107 = add i64 %105, %106, !dbg !671
  %108 = call ptr @jpeg_get_small(ptr noundef %104, i64 noundef %107), !dbg !672
  store ptr %108, ptr %8, align 8, !dbg !673
  %109 = load ptr, ptr %8, align 8, !dbg !674
  %110 = icmp ne ptr %109, null, !dbg !676
  br i1 %110, label %111, label %112, !dbg !676

111:                                              ; preds = %103
  br label %120, !dbg !677

112:                                              ; preds = %103
  %113 = load i64, ptr %13, align 8, !dbg !678
  %114 = udiv i64 %113, 2, !dbg !678
  store i64 %114, ptr %13, align 8, !dbg !678
  %115 = load i64, ptr %13, align 8, !dbg !679
  %116 = icmp ult i64 %115, 50, !dbg !681
  br i1 %116, label %117, label %119, !dbg !681

117:                                              ; preds = %112
  %118 = load ptr, ptr %4, align 8, !dbg !682
  call void @out_of_memory(ptr noundef %118, i32 noundef 2), !dbg !683
  br label %119, !dbg !683

119:                                              ; preds = %117, %112
  br label %103, !dbg !684, !llvm.loop !685

120:                                              ; preds = %111
  %121 = load i64, ptr %12, align 8, !dbg !688
  %122 = load i64, ptr %13, align 8, !dbg !689
  %123 = add i64 %121, %122, !dbg !690
  %124 = load ptr, ptr %7, align 8, !dbg !691
  %125 = getelementptr inbounds nuw %struct.my_memory_mgr, ptr %124, i32 0, i32 5, !dbg !692
  %126 = load i64, ptr %125, align 8, !dbg !693
  %127 = add i64 %126, %123, !dbg !693
  store i64 %127, ptr %125, align 8, !dbg !693
  %128 = load ptr, ptr %8, align 8, !dbg !694
  %129 = getelementptr inbounds nuw %struct.anon, ptr %128, i32 0, i32 0, !dbg !695
  store ptr null, ptr %129, align 8, !dbg !696
  %130 = load ptr, ptr %8, align 8, !dbg !697
  %131 = getelementptr inbounds nuw %struct.anon, ptr %130, i32 0, i32 1, !dbg !698
  store i64 0, ptr %131, align 8, !dbg !699
  %132 = load i64, ptr %6, align 8, !dbg !700
  %133 = load i64, ptr %13, align 8, !dbg !701
  %134 = add i64 %132, %133, !dbg !702
  %135 = load ptr, ptr %8, align 8, !dbg !703
  %136 = getelementptr inbounds nuw %struct.anon, ptr %135, i32 0, i32 2, !dbg !704
  store i64 %134, ptr %136, align 8, !dbg !705
  %137 = load ptr, ptr %9, align 8, !dbg !706
  %138 = icmp eq ptr %137, null, !dbg !708
  br i1 %138, label %139, label %146, !dbg !708

139:                                              ; preds = %120
  %140 = load ptr, ptr %8, align 8, !dbg !709
  %141 = load ptr, ptr %7, align 8, !dbg !710
  %142 = getelementptr inbounds nuw %struct.my_memory_mgr, ptr %141, i32 0, i32 1, !dbg !711
  %143 = load i32, ptr %5, align 4, !dbg !712
  %144 = sext i32 %143 to i64, !dbg !710
  %145 = getelementptr inbounds [2 x ptr], ptr %142, i64 0, i64 %144, !dbg !710
  store ptr %140, ptr %145, align 8, !dbg !713
  br label %150, !dbg !710

146:                                              ; preds = %120
  %147 = load ptr, ptr %8, align 8, !dbg !714
  %148 = load ptr, ptr %9, align 8, !dbg !715
  %149 = getelementptr inbounds nuw %struct.anon, ptr %148, i32 0, i32 0, !dbg !716
  store ptr %147, ptr %149, align 8, !dbg !717
  br label %150

150:                                              ; preds = %146, %139
  br label %151, !dbg !718

151:                                              ; preds = %150, %76
  %152 = load ptr, ptr %8, align 8, !dbg !719
  %153 = getelementptr inbounds %union.small_pool_struct, ptr %152, i64 1, !dbg !720
  store ptr %153, ptr %10, align 8, !dbg !721
  %154 = load ptr, ptr %8, align 8, !dbg !722
  %155 = getelementptr inbounds nuw %struct.anon, ptr %154, i32 0, i32 1, !dbg !723
  %156 = load i64, ptr %155, align 8, !dbg !723
  %157 = load ptr, ptr %10, align 8, !dbg !724
  %158 = getelementptr inbounds nuw i8, ptr %157, i64 %156, !dbg !724
  store ptr %158, ptr %10, align 8, !dbg !724
  %159 = load i64, ptr %6, align 8, !dbg !725
  %160 = load ptr, ptr %8, align 8, !dbg !726
  %161 = getelementptr inbounds nuw %struct.anon, ptr %160, i32 0, i32 1, !dbg !727
  %162 = load i64, ptr %161, align 8, !dbg !728
  %163 = add i64 %162, %159, !dbg !728
  store i64 %163, ptr %161, align 8, !dbg !728
  %164 = load i64, ptr %6, align 8, !dbg !729
  %165 = load ptr, ptr %8, align 8, !dbg !730
  %166 = getelementptr inbounds nuw %struct.anon, ptr %165, i32 0, i32 2, !dbg !731
  %167 = load i64, ptr %166, align 8, !dbg !732
  %168 = sub i64 %167, %164, !dbg !732
  store i64 %168, ptr %166, align 8, !dbg !732
  %169 = load ptr, ptr %10, align 8, !dbg !733
  ret ptr %169, !dbg !734
}

; Function Attrs: noinline nounwind uwtable
define internal ptr @alloc_large(ptr noundef %0, i32 noundef %1, i64 noundef %2) #0 !dbg !735 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !736, !DIExpression(), !737)
  store i32 %1, ptr %5, align 4
    #dbg_declare(ptr %5, !738, !DIExpression(), !739)
  store i64 %2, ptr %6, align 8
    #dbg_declare(ptr %6, !740, !DIExpression(), !741)
    #dbg_declare(ptr %7, !742, !DIExpression(), !743)
  %10 = load ptr, ptr %4, align 8, !dbg !744
  %11 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %10, i32 0, i32 1, !dbg !745
  %12 = load ptr, ptr %11, align 8, !dbg !745
  store ptr %12, ptr %7, align 8, !dbg !743
    #dbg_declare(ptr %8, !746, !DIExpression(), !747)
    #dbg_declare(ptr %9, !748, !DIExpression(), !749)
  %13 = load i64, ptr %6, align 8, !dbg !750
  %14 = icmp ugt i64 %13, 999999976, !dbg !752
  br i1 %14, label %15, label %17, !dbg !752

15:                                               ; preds = %3
  %16 = load ptr, ptr %4, align 8, !dbg !753
  call void @out_of_memory(ptr noundef %16, i32 noundef 3), !dbg !754
  br label %17, !dbg !754

17:                                               ; preds = %15, %3
  %18 = load i64, ptr %6, align 8, !dbg !755
  %19 = urem i64 %18, 8, !dbg !756
  store i64 %19, ptr %9, align 8, !dbg !757
  %20 = load i64, ptr %9, align 8, !dbg !758
  %21 = icmp ugt i64 %20, 0, !dbg !760
  br i1 %21, label %22, label %27, !dbg !760

22:                                               ; preds = %17
  %23 = load i64, ptr %9, align 8, !dbg !761
  %24 = sub i64 8, %23, !dbg !762
  %25 = load i64, ptr %6, align 8, !dbg !763
  %26 = add i64 %25, %24, !dbg !763
  store i64 %26, ptr %6, align 8, !dbg !763
  br label %27, !dbg !764

27:                                               ; preds = %22, %17
  %28 = load i32, ptr %5, align 4, !dbg !765
  %29 = icmp slt i32 %28, 0, !dbg !767
  br i1 %29, label %33, label %30, !dbg !768

30:                                               ; preds = %27
  %31 = load i32, ptr %5, align 4, !dbg !769
  %32 = icmp sge i32 %31, 2, !dbg !770
  br i1 %32, label %33, label %50, !dbg !768

33:                                               ; preds = %30, %27
  %34 = load ptr, ptr %4, align 8, !dbg !771
  %35 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %34, i32 0, i32 0, !dbg !771
  %36 = load ptr, ptr %35, align 8, !dbg !771
  %37 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %36, i32 0, i32 5, !dbg !771
  store i32 12, ptr %37, align 8, !dbg !771
  %38 = load i32, ptr %5, align 4, !dbg !771
  %39 = load ptr, ptr %4, align 8, !dbg !771
  %40 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %39, i32 0, i32 0, !dbg !771
  %41 = load ptr, ptr %40, align 8, !dbg !771
  %42 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %41, i32 0, i32 6, !dbg !771
  %43 = getelementptr inbounds [8 x i32], ptr %42, i64 0, i64 0, !dbg !771
  store i32 %38, ptr %43, align 4, !dbg !771
  %44 = load ptr, ptr %4, align 8, !dbg !771
  %45 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %44, i32 0, i32 0, !dbg !771
  %46 = load ptr, ptr %45, align 8, !dbg !771
  %47 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %46, i32 0, i32 0, !dbg !771
  %48 = load ptr, ptr %47, align 8, !dbg !771
  %49 = load ptr, ptr %4, align 8, !dbg !771
  call void %48(ptr noundef %49), !dbg !771
  br label %50, !dbg !771

50:                                               ; preds = %33, %30
  %51 = load ptr, ptr %4, align 8, !dbg !772
  %52 = load i64, ptr %6, align 8, !dbg !773
  %53 = add i64 %52, 24, !dbg !774
  %54 = call ptr @jpeg_get_large(ptr noundef %51, i64 noundef %53), !dbg !775
  store ptr %54, ptr %8, align 8, !dbg !776
  %55 = load ptr, ptr %8, align 8, !dbg !777
  %56 = icmp eq ptr %55, null, !dbg !779
  br i1 %56, label %57, label %59, !dbg !779

57:                                               ; preds = %50
  %58 = load ptr, ptr %4, align 8, !dbg !780
  call void @out_of_memory(ptr noundef %58, i32 noundef 4), !dbg !781
  br label %59, !dbg !781

59:                                               ; preds = %57, %50
  %60 = load i64, ptr %6, align 8, !dbg !782
  %61 = add i64 %60, 24, !dbg !783
  %62 = load ptr, ptr %7, align 8, !dbg !784
  %63 = getelementptr inbounds nuw %struct.my_memory_mgr, ptr %62, i32 0, i32 5, !dbg !785
  %64 = load i64, ptr %63, align 8, !dbg !786
  %65 = add i64 %64, %61, !dbg !786
  store i64 %65, ptr %63, align 8, !dbg !786
  %66 = load ptr, ptr %7, align 8, !dbg !787
  %67 = getelementptr inbounds nuw %struct.my_memory_mgr, ptr %66, i32 0, i32 2, !dbg !788
  %68 = load i32, ptr %5, align 4, !dbg !789
  %69 = sext i32 %68 to i64, !dbg !787
  %70 = getelementptr inbounds [2 x ptr], ptr %67, i64 0, i64 %69, !dbg !787
  %71 = load ptr, ptr %70, align 8, !dbg !787
  %72 = load ptr, ptr %8, align 8, !dbg !790
  %73 = getelementptr inbounds nuw %struct.anon.0, ptr %72, i32 0, i32 0, !dbg !791
  store ptr %71, ptr %73, align 8, !dbg !792
  %74 = load i64, ptr %6, align 8, !dbg !793
  %75 = load ptr, ptr %8, align 8, !dbg !794
  %76 = getelementptr inbounds nuw %struct.anon.0, ptr %75, i32 0, i32 1, !dbg !795
  store i64 %74, ptr %76, align 8, !dbg !796
  %77 = load ptr, ptr %8, align 8, !dbg !797
  %78 = getelementptr inbounds nuw %struct.anon.0, ptr %77, i32 0, i32 2, !dbg !798
  store i64 0, ptr %78, align 8, !dbg !799
  %79 = load ptr, ptr %8, align 8, !dbg !800
  %80 = load ptr, ptr %7, align 8, !dbg !801
  %81 = getelementptr inbounds nuw %struct.my_memory_mgr, ptr %80, i32 0, i32 2, !dbg !802
  %82 = load i32, ptr %5, align 4, !dbg !803
  %83 = sext i32 %82 to i64, !dbg !801
  %84 = getelementptr inbounds [2 x ptr], ptr %81, i64 0, i64 %83, !dbg !801
  store ptr %79, ptr %84, align 8, !dbg !804
  %85 = load ptr, ptr %8, align 8, !dbg !805
  %86 = getelementptr inbounds %union.large_pool_struct, ptr %85, i64 1, !dbg !806
  ret ptr %86, !dbg !807
}

; Function Attrs: noinline nounwind uwtable
define internal ptr @alloc_sarray(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 !dbg !808 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !809, !DIExpression(), !810)
  store i32 %1, ptr %6, align 4
    #dbg_declare(ptr %6, !811, !DIExpression(), !812)
  store i32 %2, ptr %7, align 4
    #dbg_declare(ptr %7, !813, !DIExpression(), !814)
  store i32 %3, ptr %8, align 4
    #dbg_declare(ptr %8, !815, !DIExpression(), !816)
    #dbg_declare(ptr %9, !817, !DIExpression(), !818)
  %16 = load ptr, ptr %5, align 8, !dbg !819
  %17 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %16, i32 0, i32 1, !dbg !820
  %18 = load ptr, ptr %17, align 8, !dbg !820
  store ptr %18, ptr %9, align 8, !dbg !818
    #dbg_declare(ptr %10, !821, !DIExpression(), !822)
    #dbg_declare(ptr %11, !823, !DIExpression(), !824)
    #dbg_declare(ptr %12, !825, !DIExpression(), !826)
    #dbg_declare(ptr %13, !827, !DIExpression(), !828)
    #dbg_declare(ptr %14, !829, !DIExpression(), !830)
    #dbg_declare(ptr %15, !831, !DIExpression(), !832)
  %19 = load i32, ptr %7, align 4, !dbg !833
  %20 = zext i32 %19 to i64, !dbg !834
  %21 = mul i64 %20, 1, !dbg !835
  %22 = udiv i64 999999976, %21, !dbg !836
  store i64 %22, ptr %15, align 8, !dbg !837
  %23 = load i64, ptr %15, align 8, !dbg !838
  %24 = icmp sle i64 %23, 0, !dbg !840
  br i1 %24, label %25, label %36, !dbg !840

25:                                               ; preds = %4
  %26 = load ptr, ptr %5, align 8, !dbg !841
  %27 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %26, i32 0, i32 0, !dbg !841
  %28 = load ptr, ptr %27, align 8, !dbg !841
  %29 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %28, i32 0, i32 5, !dbg !841
  store i32 69, ptr %29, align 8, !dbg !841
  %30 = load ptr, ptr %5, align 8, !dbg !841
  %31 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %30, i32 0, i32 0, !dbg !841
  %32 = load ptr, ptr %31, align 8, !dbg !841
  %33 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %32, i32 0, i32 0, !dbg !841
  %34 = load ptr, ptr %33, align 8, !dbg !841
  %35 = load ptr, ptr %5, align 8, !dbg !841
  call void %34(ptr noundef %35), !dbg !841
  br label %36, !dbg !841

36:                                               ; preds = %25, %4
  %37 = load i64, ptr %15, align 8, !dbg !842
  %38 = load i32, ptr %8, align 4, !dbg !844
  %39 = zext i32 %38 to i64, !dbg !845
  %40 = icmp slt i64 %37, %39, !dbg !846
  br i1 %40, label %41, label %44, !dbg !846

41:                                               ; preds = %36
  %42 = load i64, ptr %15, align 8, !dbg !847
  %43 = trunc i64 %42 to i32, !dbg !848
  store i32 %43, ptr %12, align 4, !dbg !849
  br label %46, !dbg !850

44:                                               ; preds = %36
  %45 = load i32, ptr %8, align 4, !dbg !851
  store i32 %45, ptr %12, align 4, !dbg !852
  br label %46

46:                                               ; preds = %44, %41
  %47 = load i32, ptr %12, align 4, !dbg !853
  %48 = load ptr, ptr %9, align 8, !dbg !854
  %49 = getelementptr inbounds nuw %struct.my_memory_mgr, ptr %48, i32 0, i32 6, !dbg !855
  store i32 %47, ptr %49, align 8, !dbg !856
  %50 = load ptr, ptr %5, align 8, !dbg !857
  %51 = load i32, ptr %6, align 4, !dbg !858
  %52 = load i32, ptr %8, align 4, !dbg !859
  %53 = zext i32 %52 to i64, !dbg !859
  %54 = mul i64 %53, 8, !dbg !860
  %55 = call ptr @alloc_small(ptr noundef %50, i32 noundef %51, i64 noundef %54), !dbg !861
  store ptr %55, ptr %10, align 8, !dbg !862
  store i32 0, ptr %13, align 4, !dbg !863
  br label %56, !dbg !864

56:                                               ; preds = %101, %46
  %57 = load i32, ptr %13, align 4, !dbg !865
  %58 = load i32, ptr %8, align 4, !dbg !866
  %59 = icmp ult i32 %57, %58, !dbg !867
  br i1 %59, label %60, label %102, !dbg !864

60:                                               ; preds = %56
  %61 = load i32, ptr %12, align 4, !dbg !868
  %62 = load i32, ptr %8, align 4, !dbg !868
  %63 = load i32, ptr %13, align 4, !dbg !868
  %64 = sub i32 %62, %63, !dbg !868
  %65 = icmp ult i32 %61, %64, !dbg !868
  br i1 %65, label %66, label %68, !dbg !868

66:                                               ; preds = %60
  %67 = load i32, ptr %12, align 4, !dbg !868
  br label %72, !dbg !868

68:                                               ; preds = %60
  %69 = load i32, ptr %8, align 4, !dbg !868
  %70 = load i32, ptr %13, align 4, !dbg !868
  %71 = sub i32 %69, %70, !dbg !868
  br label %72, !dbg !868

72:                                               ; preds = %68, %66
  %73 = phi i32 [ %67, %66 ], [ %71, %68 ], !dbg !868
  store i32 %73, ptr %12, align 4, !dbg !870
  %74 = load ptr, ptr %5, align 8, !dbg !871
  %75 = load i32, ptr %6, align 4, !dbg !872
  %76 = load i32, ptr %12, align 4, !dbg !873
  %77 = zext i32 %76 to i64, !dbg !874
  %78 = load i32, ptr %7, align 4, !dbg !875
  %79 = zext i32 %78 to i64, !dbg !876
  %80 = mul i64 %77, %79, !dbg !877
  %81 = mul i64 %80, 1, !dbg !878
  %82 = call ptr @alloc_large(ptr noundef %74, i32 noundef %75, i64 noundef %81), !dbg !879
  store ptr %82, ptr %11, align 8, !dbg !880
  %83 = load i32, ptr %12, align 4, !dbg !881
  store i32 %83, ptr %14, align 4, !dbg !883
  br label %84, !dbg !884

84:                                               ; preds = %98, %72
  %85 = load i32, ptr %14, align 4, !dbg !885
  %86 = icmp ugt i32 %85, 0, !dbg !887
  br i1 %86, label %87, label %101, !dbg !888

87:                                               ; preds = %84
  %88 = load ptr, ptr %11, align 8, !dbg !889
  %89 = load ptr, ptr %10, align 8, !dbg !891
  %90 = load i32, ptr %13, align 4, !dbg !892
  %91 = add i32 %90, 1, !dbg !892
  store i32 %91, ptr %13, align 4, !dbg !892
  %92 = zext i32 %90 to i64, !dbg !891
  %93 = getelementptr inbounds nuw ptr, ptr %89, i64 %92, !dbg !891
  store ptr %88, ptr %93, align 8, !dbg !893
  %94 = load i32, ptr %7, align 4, !dbg !894
  %95 = load ptr, ptr %11, align 8, !dbg !895
  %96 = zext i32 %94 to i64, !dbg !895
  %97 = getelementptr inbounds nuw i8, ptr %95, i64 %96, !dbg !895
  store ptr %97, ptr %11, align 8, !dbg !895
  br label %98, !dbg !896

98:                                               ; preds = %87
  %99 = load i32, ptr %14, align 4, !dbg !897
  %100 = add i32 %99, -1, !dbg !897
  store i32 %100, ptr %14, align 4, !dbg !897
  br label %84, !dbg !898, !llvm.loop !899

101:                                              ; preds = %84
  br label %56, !dbg !864, !llvm.loop !901

102:                                              ; preds = %56
  %103 = load ptr, ptr %10, align 8, !dbg !903
  ret ptr %103, !dbg !904
}

; Function Attrs: noinline nounwind uwtable
define internal ptr @alloc_barray(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 !dbg !905 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !906, !DIExpression(), !907)
  store i32 %1, ptr %6, align 4
    #dbg_declare(ptr %6, !908, !DIExpression(), !909)
  store i32 %2, ptr %7, align 4
    #dbg_declare(ptr %7, !910, !DIExpression(), !911)
  store i32 %3, ptr %8, align 4
    #dbg_declare(ptr %8, !912, !DIExpression(), !913)
    #dbg_declare(ptr %9, !914, !DIExpression(), !915)
  %16 = load ptr, ptr %5, align 8, !dbg !916
  %17 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %16, i32 0, i32 1, !dbg !917
  %18 = load ptr, ptr %17, align 8, !dbg !917
  store ptr %18, ptr %9, align 8, !dbg !915
    #dbg_declare(ptr %10, !918, !DIExpression(), !919)
    #dbg_declare(ptr %11, !920, !DIExpression(), !921)
    #dbg_declare(ptr %12, !922, !DIExpression(), !923)
    #dbg_declare(ptr %13, !924, !DIExpression(), !925)
    #dbg_declare(ptr %14, !926, !DIExpression(), !927)
    #dbg_declare(ptr %15, !928, !DIExpression(), !929)
  %19 = load i32, ptr %7, align 4, !dbg !930
  %20 = zext i32 %19 to i64, !dbg !931
  %21 = mul i64 %20, 128, !dbg !932
  %22 = udiv i64 999999976, %21, !dbg !933
  store i64 %22, ptr %15, align 8, !dbg !934
  %23 = load i64, ptr %15, align 8, !dbg !935
  %24 = icmp sle i64 %23, 0, !dbg !937
  br i1 %24, label %25, label %36, !dbg !937

25:                                               ; preds = %4
  %26 = load ptr, ptr %5, align 8, !dbg !938
  %27 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %26, i32 0, i32 0, !dbg !938
  %28 = load ptr, ptr %27, align 8, !dbg !938
  %29 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %28, i32 0, i32 5, !dbg !938
  store i32 69, ptr %29, align 8, !dbg !938
  %30 = load ptr, ptr %5, align 8, !dbg !938
  %31 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %30, i32 0, i32 0, !dbg !938
  %32 = load ptr, ptr %31, align 8, !dbg !938
  %33 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %32, i32 0, i32 0, !dbg !938
  %34 = load ptr, ptr %33, align 8, !dbg !938
  %35 = load ptr, ptr %5, align 8, !dbg !938
  call void %34(ptr noundef %35), !dbg !938
  br label %36, !dbg !938

36:                                               ; preds = %25, %4
  %37 = load i64, ptr %15, align 8, !dbg !939
  %38 = load i32, ptr %8, align 4, !dbg !941
  %39 = zext i32 %38 to i64, !dbg !942
  %40 = icmp slt i64 %37, %39, !dbg !943
  br i1 %40, label %41, label %44, !dbg !943

41:                                               ; preds = %36
  %42 = load i64, ptr %15, align 8, !dbg !944
  %43 = trunc i64 %42 to i32, !dbg !945
  store i32 %43, ptr %12, align 4, !dbg !946
  br label %46, !dbg !947

44:                                               ; preds = %36
  %45 = load i32, ptr %8, align 4, !dbg !948
  store i32 %45, ptr %12, align 4, !dbg !949
  br label %46

46:                                               ; preds = %44, %41
  %47 = load i32, ptr %12, align 4, !dbg !950
  %48 = load ptr, ptr %9, align 8, !dbg !951
  %49 = getelementptr inbounds nuw %struct.my_memory_mgr, ptr %48, i32 0, i32 6, !dbg !952
  store i32 %47, ptr %49, align 8, !dbg !953
  %50 = load ptr, ptr %5, align 8, !dbg !954
  %51 = load i32, ptr %6, align 4, !dbg !955
  %52 = load i32, ptr %8, align 4, !dbg !956
  %53 = zext i32 %52 to i64, !dbg !956
  %54 = mul i64 %53, 8, !dbg !957
  %55 = call ptr @alloc_small(ptr noundef %50, i32 noundef %51, i64 noundef %54), !dbg !958
  store ptr %55, ptr %10, align 8, !dbg !959
  store i32 0, ptr %13, align 4, !dbg !960
  br label %56, !dbg !961

56:                                               ; preds = %101, %46
  %57 = load i32, ptr %13, align 4, !dbg !962
  %58 = load i32, ptr %8, align 4, !dbg !963
  %59 = icmp ult i32 %57, %58, !dbg !964
  br i1 %59, label %60, label %102, !dbg !961

60:                                               ; preds = %56
  %61 = load i32, ptr %12, align 4, !dbg !965
  %62 = load i32, ptr %8, align 4, !dbg !965
  %63 = load i32, ptr %13, align 4, !dbg !965
  %64 = sub i32 %62, %63, !dbg !965
  %65 = icmp ult i32 %61, %64, !dbg !965
  br i1 %65, label %66, label %68, !dbg !965

66:                                               ; preds = %60
  %67 = load i32, ptr %12, align 4, !dbg !965
  br label %72, !dbg !965

68:                                               ; preds = %60
  %69 = load i32, ptr %8, align 4, !dbg !965
  %70 = load i32, ptr %13, align 4, !dbg !965
  %71 = sub i32 %69, %70, !dbg !965
  br label %72, !dbg !965

72:                                               ; preds = %68, %66
  %73 = phi i32 [ %67, %66 ], [ %71, %68 ], !dbg !965
  store i32 %73, ptr %12, align 4, !dbg !967
  %74 = load ptr, ptr %5, align 8, !dbg !968
  %75 = load i32, ptr %6, align 4, !dbg !969
  %76 = load i32, ptr %12, align 4, !dbg !970
  %77 = zext i32 %76 to i64, !dbg !971
  %78 = load i32, ptr %7, align 4, !dbg !972
  %79 = zext i32 %78 to i64, !dbg !973
  %80 = mul i64 %77, %79, !dbg !974
  %81 = mul i64 %80, 128, !dbg !975
  %82 = call ptr @alloc_large(ptr noundef %74, i32 noundef %75, i64 noundef %81), !dbg !976
  store ptr %82, ptr %11, align 8, !dbg !977
  %83 = load i32, ptr %12, align 4, !dbg !978
  store i32 %83, ptr %14, align 4, !dbg !980
  br label %84, !dbg !981

84:                                               ; preds = %98, %72
  %85 = load i32, ptr %14, align 4, !dbg !982
  %86 = icmp ugt i32 %85, 0, !dbg !984
  br i1 %86, label %87, label %101, !dbg !985

87:                                               ; preds = %84
  %88 = load ptr, ptr %11, align 8, !dbg !986
  %89 = load ptr, ptr %10, align 8, !dbg !988
  %90 = load i32, ptr %13, align 4, !dbg !989
  %91 = add i32 %90, 1, !dbg !989
  store i32 %91, ptr %13, align 4, !dbg !989
  %92 = zext i32 %90 to i64, !dbg !988
  %93 = getelementptr inbounds nuw ptr, ptr %89, i64 %92, !dbg !988
  store ptr %88, ptr %93, align 8, !dbg !990
  %94 = load i32, ptr %7, align 4, !dbg !991
  %95 = load ptr, ptr %11, align 8, !dbg !992
  %96 = zext i32 %94 to i64, !dbg !992
  %97 = getelementptr inbounds nuw [64 x i16], ptr %95, i64 %96, !dbg !992
  store ptr %97, ptr %11, align 8, !dbg !992
  br label %98, !dbg !993

98:                                               ; preds = %87
  %99 = load i32, ptr %14, align 4, !dbg !994
  %100 = add i32 %99, -1, !dbg !994
  store i32 %100, ptr %14, align 4, !dbg !994
  br label %84, !dbg !995, !llvm.loop !996

101:                                              ; preds = %84
  br label %56, !dbg !961, !llvm.loop !998

102:                                              ; preds = %56
  %103 = load ptr, ptr %10, align 8, !dbg !1000
  ret ptr %103, !dbg !1001
}

; Function Attrs: noinline nounwind uwtable
define internal ptr @request_virt_sarray(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 !dbg !1002 {
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  store ptr %0, ptr %7, align 8
    #dbg_declare(ptr %7, !1003, !DIExpression(), !1004)
  store i32 %1, ptr %8, align 4
    #dbg_declare(ptr %8, !1005, !DIExpression(), !1006)
  store i32 %2, ptr %9, align 4
    #dbg_declare(ptr %9, !1007, !DIExpression(), !1008)
  store i32 %3, ptr %10, align 4
    #dbg_declare(ptr %10, !1009, !DIExpression(), !1010)
  store i32 %4, ptr %11, align 4
    #dbg_declare(ptr %11, !1011, !DIExpression(), !1012)
  store i32 %5, ptr %12, align 4
    #dbg_declare(ptr %12, !1013, !DIExpression(), !1014)
    #dbg_declare(ptr %13, !1015, !DIExpression(), !1016)
  %15 = load ptr, ptr %7, align 8, !dbg !1017
  %16 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %15, i32 0, i32 1, !dbg !1018
  %17 = load ptr, ptr %16, align 8, !dbg !1018
  store ptr %17, ptr %13, align 8, !dbg !1016
    #dbg_declare(ptr %14, !1019, !DIExpression(), !1020)
  %18 = load i32, ptr %8, align 4, !dbg !1021
  %19 = icmp ne i32 %18, 1, !dbg !1023
  br i1 %19, label %20, label %37, !dbg !1023

20:                                               ; preds = %6
  %21 = load ptr, ptr %7, align 8, !dbg !1024
  %22 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %21, i32 0, i32 0, !dbg !1024
  %23 = load ptr, ptr %22, align 8, !dbg !1024
  %24 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %23, i32 0, i32 5, !dbg !1024
  store i32 12, ptr %24, align 8, !dbg !1024
  %25 = load i32, ptr %8, align 4, !dbg !1024
  %26 = load ptr, ptr %7, align 8, !dbg !1024
  %27 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %26, i32 0, i32 0, !dbg !1024
  %28 = load ptr, ptr %27, align 8, !dbg !1024
  %29 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %28, i32 0, i32 6, !dbg !1024
  %30 = getelementptr inbounds [8 x i32], ptr %29, i64 0, i64 0, !dbg !1024
  store i32 %25, ptr %30, align 4, !dbg !1024
  %31 = load ptr, ptr %7, align 8, !dbg !1024
  %32 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %31, i32 0, i32 0, !dbg !1024
  %33 = load ptr, ptr %32, align 8, !dbg !1024
  %34 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %33, i32 0, i32 0, !dbg !1024
  %35 = load ptr, ptr %34, align 8, !dbg !1024
  %36 = load ptr, ptr %7, align 8, !dbg !1024
  call void %35(ptr noundef %36), !dbg !1024
  br label %37, !dbg !1024

37:                                               ; preds = %20, %6
  %38 = load ptr, ptr %7, align 8, !dbg !1025
  %39 = load i32, ptr %8, align 4, !dbg !1026
  %40 = call ptr @alloc_small(ptr noundef %38, i32 noundef %39, i64 noundef 152), !dbg !1027
  store ptr %40, ptr %14, align 8, !dbg !1028
  %41 = load ptr, ptr %14, align 8, !dbg !1029
  %42 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %41, i32 0, i32 0, !dbg !1030
  store ptr null, ptr %42, align 8, !dbg !1031
  %43 = load i32, ptr %11, align 4, !dbg !1032
  %44 = load ptr, ptr %14, align 8, !dbg !1033
  %45 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %44, i32 0, i32 1, !dbg !1034
  store i32 %43, ptr %45, align 8, !dbg !1035
  %46 = load i32, ptr %10, align 4, !dbg !1036
  %47 = load ptr, ptr %14, align 8, !dbg !1037
  %48 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %47, i32 0, i32 2, !dbg !1038
  store i32 %46, ptr %48, align 4, !dbg !1039
  %49 = load i32, ptr %12, align 4, !dbg !1040
  %50 = load ptr, ptr %14, align 8, !dbg !1041
  %51 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %50, i32 0, i32 3, !dbg !1042
  store i32 %49, ptr %51, align 8, !dbg !1043
  %52 = load i32, ptr %9, align 4, !dbg !1044
  %53 = load ptr, ptr %14, align 8, !dbg !1045
  %54 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %53, i32 0, i32 8, !dbg !1046
  store i32 %52, ptr %54, align 4, !dbg !1047
  %55 = load ptr, ptr %14, align 8, !dbg !1048
  %56 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %55, i32 0, i32 10, !dbg !1049
  store i32 0, ptr %56, align 4, !dbg !1050
  %57 = load ptr, ptr %13, align 8, !dbg !1051
  %58 = getelementptr inbounds nuw %struct.my_memory_mgr, ptr %57, i32 0, i32 3, !dbg !1052
  %59 = load ptr, ptr %58, align 8, !dbg !1052
  %60 = load ptr, ptr %14, align 8, !dbg !1053
  %61 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %60, i32 0, i32 11, !dbg !1054
  store ptr %59, ptr %61, align 8, !dbg !1055
  %62 = load ptr, ptr %14, align 8, !dbg !1056
  %63 = load ptr, ptr %13, align 8, !dbg !1057
  %64 = getelementptr inbounds nuw %struct.my_memory_mgr, ptr %63, i32 0, i32 3, !dbg !1058
  store ptr %62, ptr %64, align 8, !dbg !1059
  %65 = load ptr, ptr %14, align 8, !dbg !1060
  ret ptr %65, !dbg !1061
}

; Function Attrs: noinline nounwind uwtable
define internal ptr @request_virt_barray(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 !dbg !1062 {
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  store ptr %0, ptr %7, align 8
    #dbg_declare(ptr %7, !1063, !DIExpression(), !1064)
  store i32 %1, ptr %8, align 4
    #dbg_declare(ptr %8, !1065, !DIExpression(), !1066)
  store i32 %2, ptr %9, align 4
    #dbg_declare(ptr %9, !1067, !DIExpression(), !1068)
  store i32 %3, ptr %10, align 4
    #dbg_declare(ptr %10, !1069, !DIExpression(), !1070)
  store i32 %4, ptr %11, align 4
    #dbg_declare(ptr %11, !1071, !DIExpression(), !1072)
  store i32 %5, ptr %12, align 4
    #dbg_declare(ptr %12, !1073, !DIExpression(), !1074)
    #dbg_declare(ptr %13, !1075, !DIExpression(), !1076)
  %15 = load ptr, ptr %7, align 8, !dbg !1077
  %16 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %15, i32 0, i32 1, !dbg !1078
  %17 = load ptr, ptr %16, align 8, !dbg !1078
  store ptr %17, ptr %13, align 8, !dbg !1076
    #dbg_declare(ptr %14, !1079, !DIExpression(), !1080)
  %18 = load i32, ptr %8, align 4, !dbg !1081
  %19 = icmp ne i32 %18, 1, !dbg !1083
  br i1 %19, label %20, label %37, !dbg !1083

20:                                               ; preds = %6
  %21 = load ptr, ptr %7, align 8, !dbg !1084
  %22 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %21, i32 0, i32 0, !dbg !1084
  %23 = load ptr, ptr %22, align 8, !dbg !1084
  %24 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %23, i32 0, i32 5, !dbg !1084
  store i32 12, ptr %24, align 8, !dbg !1084
  %25 = load i32, ptr %8, align 4, !dbg !1084
  %26 = load ptr, ptr %7, align 8, !dbg !1084
  %27 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %26, i32 0, i32 0, !dbg !1084
  %28 = load ptr, ptr %27, align 8, !dbg !1084
  %29 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %28, i32 0, i32 6, !dbg !1084
  %30 = getelementptr inbounds [8 x i32], ptr %29, i64 0, i64 0, !dbg !1084
  store i32 %25, ptr %30, align 4, !dbg !1084
  %31 = load ptr, ptr %7, align 8, !dbg !1084
  %32 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %31, i32 0, i32 0, !dbg !1084
  %33 = load ptr, ptr %32, align 8, !dbg !1084
  %34 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %33, i32 0, i32 0, !dbg !1084
  %35 = load ptr, ptr %34, align 8, !dbg !1084
  %36 = load ptr, ptr %7, align 8, !dbg !1084
  call void %35(ptr noundef %36), !dbg !1084
  br label %37, !dbg !1084

37:                                               ; preds = %20, %6
  %38 = load ptr, ptr %7, align 8, !dbg !1085
  %39 = load i32, ptr %8, align 4, !dbg !1086
  %40 = call ptr @alloc_small(ptr noundef %38, i32 noundef %39, i64 noundef 152), !dbg !1087
  store ptr %40, ptr %14, align 8, !dbg !1088
  %41 = load ptr, ptr %14, align 8, !dbg !1089
  %42 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %41, i32 0, i32 0, !dbg !1090
  store ptr null, ptr %42, align 8, !dbg !1091
  %43 = load i32, ptr %11, align 4, !dbg !1092
  %44 = load ptr, ptr %14, align 8, !dbg !1093
  %45 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %44, i32 0, i32 1, !dbg !1094
  store i32 %43, ptr %45, align 8, !dbg !1095
  %46 = load i32, ptr %10, align 4, !dbg !1096
  %47 = load ptr, ptr %14, align 8, !dbg !1097
  %48 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %47, i32 0, i32 2, !dbg !1098
  store i32 %46, ptr %48, align 4, !dbg !1099
  %49 = load i32, ptr %12, align 4, !dbg !1100
  %50 = load ptr, ptr %14, align 8, !dbg !1101
  %51 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %50, i32 0, i32 3, !dbg !1102
  store i32 %49, ptr %51, align 8, !dbg !1103
  %52 = load i32, ptr %9, align 4, !dbg !1104
  %53 = load ptr, ptr %14, align 8, !dbg !1105
  %54 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %53, i32 0, i32 8, !dbg !1106
  store i32 %52, ptr %54, align 4, !dbg !1107
  %55 = load ptr, ptr %14, align 8, !dbg !1108
  %56 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %55, i32 0, i32 10, !dbg !1109
  store i32 0, ptr %56, align 4, !dbg !1110
  %57 = load ptr, ptr %13, align 8, !dbg !1111
  %58 = getelementptr inbounds nuw %struct.my_memory_mgr, ptr %57, i32 0, i32 4, !dbg !1112
  %59 = load ptr, ptr %58, align 8, !dbg !1112
  %60 = load ptr, ptr %14, align 8, !dbg !1113
  %61 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %60, i32 0, i32 11, !dbg !1114
  store ptr %59, ptr %61, align 8, !dbg !1115
  %62 = load ptr, ptr %14, align 8, !dbg !1116
  %63 = load ptr, ptr %13, align 8, !dbg !1117
  %64 = getelementptr inbounds nuw %struct.my_memory_mgr, ptr %63, i32 0, i32 4, !dbg !1118
  store ptr %62, ptr %64, align 8, !dbg !1119
  %65 = load ptr, ptr %14, align 8, !dbg !1120
  ret ptr %65, !dbg !1121
}

; Function Attrs: noinline nounwind uwtable
define internal void @realize_virt_arrays(ptr noundef %0) #0 !dbg !1122 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !1123, !DIExpression(), !1124)
    #dbg_declare(ptr %3, !1125, !DIExpression(), !1126)
  %11 = load ptr, ptr %2, align 8, !dbg !1127
  %12 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %11, i32 0, i32 1, !dbg !1128
  %13 = load ptr, ptr %12, align 8, !dbg !1128
  store ptr %13, ptr %3, align 8, !dbg !1126
    #dbg_declare(ptr %4, !1129, !DIExpression(), !1130)
    #dbg_declare(ptr %5, !1131, !DIExpression(), !1132)
    #dbg_declare(ptr %6, !1133, !DIExpression(), !1134)
    #dbg_declare(ptr %7, !1135, !DIExpression(), !1136)
    #dbg_declare(ptr %8, !1137, !DIExpression(), !1138)
    #dbg_declare(ptr %9, !1139, !DIExpression(), !1140)
    #dbg_declare(ptr %10, !1141, !DIExpression(), !1142)
  store i64 0, ptr %4, align 8, !dbg !1143
  store i64 0, ptr %5, align 8, !dbg !1144
  %14 = load ptr, ptr %3, align 8, !dbg !1145
  %15 = getelementptr inbounds nuw %struct.my_memory_mgr, ptr %14, i32 0, i32 3, !dbg !1147
  %16 = load ptr, ptr %15, align 8, !dbg !1147
  store ptr %16, ptr %9, align 8, !dbg !1148
  br label %17, !dbg !1149

17:                                               ; preds = %51, %1
  %18 = load ptr, ptr %9, align 8, !dbg !1150
  %19 = icmp ne ptr %18, null, !dbg !1152
  br i1 %19, label %20, label %55, !dbg !1153

20:                                               ; preds = %17
  %21 = load ptr, ptr %9, align 8, !dbg !1154
  %22 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %21, i32 0, i32 0, !dbg !1157
  %23 = load ptr, ptr %22, align 8, !dbg !1157
  %24 = icmp eq ptr %23, null, !dbg !1158
  br i1 %24, label %25, label %50, !dbg !1158

25:                                               ; preds = %20
  %26 = load ptr, ptr %9, align 8, !dbg !1159
  %27 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %26, i32 0, i32 3, !dbg !1161
  %28 = load i32, ptr %27, align 8, !dbg !1161
  %29 = zext i32 %28 to i64, !dbg !1162
  %30 = load ptr, ptr %9, align 8, !dbg !1163
  %31 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %30, i32 0, i32 2, !dbg !1164
  %32 = load i32, ptr %31, align 4, !dbg !1164
  %33 = zext i32 %32 to i64, !dbg !1165
  %34 = mul nsw i64 %29, %33, !dbg !1166
  %35 = mul i64 %34, 1, !dbg !1167
  %36 = load i64, ptr %4, align 8, !dbg !1168
  %37 = add i64 %36, %35, !dbg !1168
  store i64 %37, ptr %4, align 8, !dbg !1168
  %38 = load ptr, ptr %9, align 8, !dbg !1169
  %39 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %38, i32 0, i32 1, !dbg !1170
  %40 = load i32, ptr %39, align 8, !dbg !1170
  %41 = zext i32 %40 to i64, !dbg !1171
  %42 = load ptr, ptr %9, align 8, !dbg !1172
  %43 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %42, i32 0, i32 2, !dbg !1173
  %44 = load i32, ptr %43, align 4, !dbg !1173
  %45 = zext i32 %44 to i64, !dbg !1174
  %46 = mul nsw i64 %41, %45, !dbg !1175
  %47 = mul i64 %46, 1, !dbg !1176
  %48 = load i64, ptr %5, align 8, !dbg !1177
  %49 = add i64 %48, %47, !dbg !1177
  store i64 %49, ptr %5, align 8, !dbg !1177
  br label %50, !dbg !1178

50:                                               ; preds = %25, %20
  br label %51, !dbg !1179

51:                                               ; preds = %50
  %52 = load ptr, ptr %9, align 8, !dbg !1180
  %53 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %52, i32 0, i32 11, !dbg !1181
  %54 = load ptr, ptr %53, align 8, !dbg !1181
  store ptr %54, ptr %9, align 8, !dbg !1182
  br label %17, !dbg !1183, !llvm.loop !1184

55:                                               ; preds = %17
  %56 = load ptr, ptr %3, align 8, !dbg !1186
  %57 = getelementptr inbounds nuw %struct.my_memory_mgr, ptr %56, i32 0, i32 4, !dbg !1188
  %58 = load ptr, ptr %57, align 8, !dbg !1188
  store ptr %58, ptr %10, align 8, !dbg !1189
  br label %59, !dbg !1190

59:                                               ; preds = %93, %55
  %60 = load ptr, ptr %10, align 8, !dbg !1191
  %61 = icmp ne ptr %60, null, !dbg !1193
  br i1 %61, label %62, label %97, !dbg !1194

62:                                               ; preds = %59
  %63 = load ptr, ptr %10, align 8, !dbg !1195
  %64 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %63, i32 0, i32 0, !dbg !1198
  %65 = load ptr, ptr %64, align 8, !dbg !1198
  %66 = icmp eq ptr %65, null, !dbg !1199
  br i1 %66, label %67, label %92, !dbg !1199

67:                                               ; preds = %62
  %68 = load ptr, ptr %10, align 8, !dbg !1200
  %69 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %68, i32 0, i32 3, !dbg !1202
  %70 = load i32, ptr %69, align 8, !dbg !1202
  %71 = zext i32 %70 to i64, !dbg !1203
  %72 = load ptr, ptr %10, align 8, !dbg !1204
  %73 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %72, i32 0, i32 2, !dbg !1205
  %74 = load i32, ptr %73, align 4, !dbg !1205
  %75 = zext i32 %74 to i64, !dbg !1206
  %76 = mul nsw i64 %71, %75, !dbg !1207
  %77 = mul i64 %76, 128, !dbg !1208
  %78 = load i64, ptr %4, align 8, !dbg !1209
  %79 = add i64 %78, %77, !dbg !1209
  store i64 %79, ptr %4, align 8, !dbg !1209
  %80 = load ptr, ptr %10, align 8, !dbg !1210
  %81 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %80, i32 0, i32 1, !dbg !1211
  %82 = load i32, ptr %81, align 8, !dbg !1211
  %83 = zext i32 %82 to i64, !dbg !1212
  %84 = load ptr, ptr %10, align 8, !dbg !1213
  %85 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %84, i32 0, i32 2, !dbg !1214
  %86 = load i32, ptr %85, align 4, !dbg !1214
  %87 = zext i32 %86 to i64, !dbg !1215
  %88 = mul nsw i64 %83, %87, !dbg !1216
  %89 = mul i64 %88, 128, !dbg !1217
  %90 = load i64, ptr %5, align 8, !dbg !1218
  %91 = add i64 %90, %89, !dbg !1218
  store i64 %91, ptr %5, align 8, !dbg !1218
  br label %92, !dbg !1219

92:                                               ; preds = %67, %62
  br label %93, !dbg !1220

93:                                               ; preds = %92
  %94 = load ptr, ptr %10, align 8, !dbg !1221
  %95 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %94, i32 0, i32 11, !dbg !1222
  %96 = load ptr, ptr %95, align 8, !dbg !1222
  store ptr %96, ptr %10, align 8, !dbg !1223
  br label %59, !dbg !1224, !llvm.loop !1225

97:                                               ; preds = %59
  %98 = load i64, ptr %4, align 8, !dbg !1227
  %99 = icmp sle i64 %98, 0, !dbg !1229
  br i1 %99, label %100, label %101, !dbg !1229

100:                                              ; preds = %97
  br label %291, !dbg !1230

101:                                              ; preds = %97
  %102 = load ptr, ptr %2, align 8, !dbg !1231
  %103 = load i64, ptr %4, align 8, !dbg !1232
  %104 = load i64, ptr %5, align 8, !dbg !1233
  %105 = load ptr, ptr %3, align 8, !dbg !1234
  %106 = getelementptr inbounds nuw %struct.my_memory_mgr, ptr %105, i32 0, i32 5, !dbg !1235
  %107 = load i64, ptr %106, align 8, !dbg !1235
  %108 = call i64 @jpeg_mem_available(ptr noundef %102, i64 noundef %103, i64 noundef %104, i64 noundef %107), !dbg !1236
  store i64 %108, ptr %6, align 8, !dbg !1237
  %109 = load i64, ptr %6, align 8, !dbg !1238
  %110 = load i64, ptr %5, align 8, !dbg !1240
  %111 = icmp sge i64 %109, %110, !dbg !1241
  br i1 %111, label %112, label %113, !dbg !1241

112:                                              ; preds = %101
  store i64 1000000000, ptr %8, align 8, !dbg !1242
  br label %121, !dbg !1243

113:                                              ; preds = %101
  %114 = load i64, ptr %6, align 8, !dbg !1244
  %115 = load i64, ptr %4, align 8, !dbg !1246
  %116 = sdiv i64 %114, %115, !dbg !1247
  store i64 %116, ptr %8, align 8, !dbg !1248
  %117 = load i64, ptr %8, align 8, !dbg !1249
  %118 = icmp sle i64 %117, 0, !dbg !1251
  br i1 %118, label %119, label %120, !dbg !1251

119:                                              ; preds = %113
  store i64 1, ptr %8, align 8, !dbg !1252
  br label %120, !dbg !1253

120:                                              ; preds = %119, %113
  br label %121

121:                                              ; preds = %120, %112
  %122 = load ptr, ptr %3, align 8, !dbg !1254
  %123 = getelementptr inbounds nuw %struct.my_memory_mgr, ptr %122, i32 0, i32 3, !dbg !1256
  %124 = load ptr, ptr %123, align 8, !dbg !1256
  store ptr %124, ptr %9, align 8, !dbg !1257
  br label %125, !dbg !1258

125:                                              ; preds = %202, %121
  %126 = load ptr, ptr %9, align 8, !dbg !1259
  %127 = icmp ne ptr %126, null, !dbg !1261
  br i1 %127, label %128, label %206, !dbg !1262

128:                                              ; preds = %125
  %129 = load ptr, ptr %9, align 8, !dbg !1263
  %130 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %129, i32 0, i32 0, !dbg !1266
  %131 = load ptr, ptr %130, align 8, !dbg !1266
  %132 = icmp eq ptr %131, null, !dbg !1267
  br i1 %132, label %133, label %201, !dbg !1267

133:                                              ; preds = %128
  %134 = load ptr, ptr %9, align 8, !dbg !1268
  %135 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %134, i32 0, i32 1, !dbg !1270
  %136 = load i32, ptr %135, align 8, !dbg !1270
  %137 = zext i32 %136 to i64, !dbg !1271
  %138 = sub nsw i64 %137, 1, !dbg !1272
  %139 = load ptr, ptr %9, align 8, !dbg !1273
  %140 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %139, i32 0, i32 3, !dbg !1274
  %141 = load i32, ptr %140, align 8, !dbg !1274
  %142 = zext i32 %141 to i64, !dbg !1273
  %143 = sdiv i64 %138, %142, !dbg !1275
  %144 = add nsw i64 %143, 1, !dbg !1276
  store i64 %144, ptr %7, align 8, !dbg !1277
  %145 = load i64, ptr %7, align 8, !dbg !1278
  %146 = load i64, ptr %8, align 8, !dbg !1280
  %147 = icmp sle i64 %145, %146, !dbg !1281
  br i1 %147, label %148, label %154, !dbg !1281

148:                                              ; preds = %133
  %149 = load ptr, ptr %9, align 8, !dbg !1282
  %150 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %149, i32 0, i32 1, !dbg !1284
  %151 = load i32, ptr %150, align 8, !dbg !1284
  %152 = load ptr, ptr %9, align 8, !dbg !1285
  %153 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %152, i32 0, i32 4, !dbg !1286
  store i32 %151, ptr %153, align 4, !dbg !1287
  br label %179, !dbg !1288

154:                                              ; preds = %133
  %155 = load i64, ptr %8, align 8, !dbg !1289
  %156 = load ptr, ptr %9, align 8, !dbg !1291
  %157 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %156, i32 0, i32 3, !dbg !1292
  %158 = load i32, ptr %157, align 8, !dbg !1292
  %159 = zext i32 %158 to i64, !dbg !1291
  %160 = mul nsw i64 %155, %159, !dbg !1293
  %161 = trunc i64 %160 to i32, !dbg !1294
  %162 = load ptr, ptr %9, align 8, !dbg !1295
  %163 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %162, i32 0, i32 4, !dbg !1296
  store i32 %161, ptr %163, align 4, !dbg !1297
  %164 = load ptr, ptr %2, align 8, !dbg !1298
  %165 = load ptr, ptr %9, align 8, !dbg !1299
  %166 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %165, i32 0, i32 12, !dbg !1300
  %167 = load ptr, ptr %9, align 8, !dbg !1301
  %168 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %167, i32 0, i32 1, !dbg !1302
  %169 = load i32, ptr %168, align 8, !dbg !1302
  %170 = zext i32 %169 to i64, !dbg !1303
  %171 = load ptr, ptr %9, align 8, !dbg !1304
  %172 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %171, i32 0, i32 2, !dbg !1305
  %173 = load i32, ptr %172, align 4, !dbg !1305
  %174 = zext i32 %173 to i64, !dbg !1306
  %175 = mul nsw i64 %170, %174, !dbg !1307
  %176 = mul nsw i64 %175, 1, !dbg !1308
  call void @jpeg_open_backing_store(ptr noundef %164, ptr noundef %166, i64 noundef %176), !dbg !1309
  %177 = load ptr, ptr %9, align 8, !dbg !1310
  %178 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %177, i32 0, i32 10, !dbg !1311
  store i32 1, ptr %178, align 4, !dbg !1312
  br label %179

179:                                              ; preds = %154, %148
  %180 = load ptr, ptr %2, align 8, !dbg !1313
  %181 = load ptr, ptr %9, align 8, !dbg !1314
  %182 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %181, i32 0, i32 2, !dbg !1315
  %183 = load i32, ptr %182, align 4, !dbg !1315
  %184 = load ptr, ptr %9, align 8, !dbg !1316
  %185 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %184, i32 0, i32 4, !dbg !1317
  %186 = load i32, ptr %185, align 4, !dbg !1317
  %187 = call ptr @alloc_sarray(ptr noundef %180, i32 noundef 1, i32 noundef %183, i32 noundef %186), !dbg !1318
  %188 = load ptr, ptr %9, align 8, !dbg !1319
  %189 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %188, i32 0, i32 0, !dbg !1320
  store ptr %187, ptr %189, align 8, !dbg !1321
  %190 = load ptr, ptr %3, align 8, !dbg !1322
  %191 = getelementptr inbounds nuw %struct.my_memory_mgr, ptr %190, i32 0, i32 6, !dbg !1323
  %192 = load i32, ptr %191, align 8, !dbg !1323
  %193 = load ptr, ptr %9, align 8, !dbg !1324
  %194 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %193, i32 0, i32 5, !dbg !1325
  store i32 %192, ptr %194, align 8, !dbg !1326
  %195 = load ptr, ptr %9, align 8, !dbg !1327
  %196 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %195, i32 0, i32 6, !dbg !1328
  store i32 0, ptr %196, align 4, !dbg !1329
  %197 = load ptr, ptr %9, align 8, !dbg !1330
  %198 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %197, i32 0, i32 7, !dbg !1331
  store i32 0, ptr %198, align 8, !dbg !1332
  %199 = load ptr, ptr %9, align 8, !dbg !1333
  %200 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %199, i32 0, i32 9, !dbg !1334
  store i32 0, ptr %200, align 8, !dbg !1335
  br label %201, !dbg !1336

201:                                              ; preds = %179, %128
  br label %202, !dbg !1337

202:                                              ; preds = %201
  %203 = load ptr, ptr %9, align 8, !dbg !1338
  %204 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %203, i32 0, i32 11, !dbg !1339
  %205 = load ptr, ptr %204, align 8, !dbg !1339
  store ptr %205, ptr %9, align 8, !dbg !1340
  br label %125, !dbg !1341, !llvm.loop !1342

206:                                              ; preds = %125
  %207 = load ptr, ptr %3, align 8, !dbg !1344
  %208 = getelementptr inbounds nuw %struct.my_memory_mgr, ptr %207, i32 0, i32 4, !dbg !1346
  %209 = load ptr, ptr %208, align 8, !dbg !1346
  store ptr %209, ptr %10, align 8, !dbg !1347
  br label %210, !dbg !1348

210:                                              ; preds = %287, %206
  %211 = load ptr, ptr %10, align 8, !dbg !1349
  %212 = icmp ne ptr %211, null, !dbg !1351
  br i1 %212, label %213, label %291, !dbg !1352

213:                                              ; preds = %210
  %214 = load ptr, ptr %10, align 8, !dbg !1353
  %215 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %214, i32 0, i32 0, !dbg !1356
  %216 = load ptr, ptr %215, align 8, !dbg !1356
  %217 = icmp eq ptr %216, null, !dbg !1357
  br i1 %217, label %218, label %286, !dbg !1357

218:                                              ; preds = %213
  %219 = load ptr, ptr %10, align 8, !dbg !1358
  %220 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %219, i32 0, i32 1, !dbg !1360
  %221 = load i32, ptr %220, align 8, !dbg !1360
  %222 = zext i32 %221 to i64, !dbg !1361
  %223 = sub nsw i64 %222, 1, !dbg !1362
  %224 = load ptr, ptr %10, align 8, !dbg !1363
  %225 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %224, i32 0, i32 3, !dbg !1364
  %226 = load i32, ptr %225, align 8, !dbg !1364
  %227 = zext i32 %226 to i64, !dbg !1363
  %228 = sdiv i64 %223, %227, !dbg !1365
  %229 = add nsw i64 %228, 1, !dbg !1366
  store i64 %229, ptr %7, align 8, !dbg !1367
  %230 = load i64, ptr %7, align 8, !dbg !1368
  %231 = load i64, ptr %8, align 8, !dbg !1370
  %232 = icmp sle i64 %230, %231, !dbg !1371
  br i1 %232, label %233, label %239, !dbg !1371

233:                                              ; preds = %218
  %234 = load ptr, ptr %10, align 8, !dbg !1372
  %235 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %234, i32 0, i32 1, !dbg !1374
  %236 = load i32, ptr %235, align 8, !dbg !1374
  %237 = load ptr, ptr %10, align 8, !dbg !1375
  %238 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %237, i32 0, i32 4, !dbg !1376
  store i32 %236, ptr %238, align 4, !dbg !1377
  br label %264, !dbg !1378

239:                                              ; preds = %218
  %240 = load i64, ptr %8, align 8, !dbg !1379
  %241 = load ptr, ptr %10, align 8, !dbg !1381
  %242 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %241, i32 0, i32 3, !dbg !1382
  %243 = load i32, ptr %242, align 8, !dbg !1382
  %244 = zext i32 %243 to i64, !dbg !1381
  %245 = mul nsw i64 %240, %244, !dbg !1383
  %246 = trunc i64 %245 to i32, !dbg !1384
  %247 = load ptr, ptr %10, align 8, !dbg !1385
  %248 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %247, i32 0, i32 4, !dbg !1386
  store i32 %246, ptr %248, align 4, !dbg !1387
  %249 = load ptr, ptr %2, align 8, !dbg !1388
  %250 = load ptr, ptr %10, align 8, !dbg !1389
  %251 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %250, i32 0, i32 12, !dbg !1390
  %252 = load ptr, ptr %10, align 8, !dbg !1391
  %253 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %252, i32 0, i32 1, !dbg !1392
  %254 = load i32, ptr %253, align 8, !dbg !1392
  %255 = zext i32 %254 to i64, !dbg !1393
  %256 = load ptr, ptr %10, align 8, !dbg !1394
  %257 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %256, i32 0, i32 2, !dbg !1395
  %258 = load i32, ptr %257, align 4, !dbg !1395
  %259 = zext i32 %258 to i64, !dbg !1396
  %260 = mul nsw i64 %255, %259, !dbg !1397
  %261 = mul nsw i64 %260, 128, !dbg !1398
  call void @jpeg_open_backing_store(ptr noundef %249, ptr noundef %251, i64 noundef %261), !dbg !1399
  %262 = load ptr, ptr %10, align 8, !dbg !1400
  %263 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %262, i32 0, i32 10, !dbg !1401
  store i32 1, ptr %263, align 4, !dbg !1402
  br label %264

264:                                              ; preds = %239, %233
  %265 = load ptr, ptr %2, align 8, !dbg !1403
  %266 = load ptr, ptr %10, align 8, !dbg !1404
  %267 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %266, i32 0, i32 2, !dbg !1405
  %268 = load i32, ptr %267, align 4, !dbg !1405
  %269 = load ptr, ptr %10, align 8, !dbg !1406
  %270 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %269, i32 0, i32 4, !dbg !1407
  %271 = load i32, ptr %270, align 4, !dbg !1407
  %272 = call ptr @alloc_barray(ptr noundef %265, i32 noundef 1, i32 noundef %268, i32 noundef %271), !dbg !1408
  %273 = load ptr, ptr %10, align 8, !dbg !1409
  %274 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %273, i32 0, i32 0, !dbg !1410
  store ptr %272, ptr %274, align 8, !dbg !1411
  %275 = load ptr, ptr %3, align 8, !dbg !1412
  %276 = getelementptr inbounds nuw %struct.my_memory_mgr, ptr %275, i32 0, i32 6, !dbg !1413
  %277 = load i32, ptr %276, align 8, !dbg !1413
  %278 = load ptr, ptr %10, align 8, !dbg !1414
  %279 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %278, i32 0, i32 5, !dbg !1415
  store i32 %277, ptr %279, align 8, !dbg !1416
  %280 = load ptr, ptr %10, align 8, !dbg !1417
  %281 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %280, i32 0, i32 6, !dbg !1418
  store i32 0, ptr %281, align 4, !dbg !1419
  %282 = load ptr, ptr %10, align 8, !dbg !1420
  %283 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %282, i32 0, i32 7, !dbg !1421
  store i32 0, ptr %283, align 8, !dbg !1422
  %284 = load ptr, ptr %10, align 8, !dbg !1423
  %285 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %284, i32 0, i32 9, !dbg !1424
  store i32 0, ptr %285, align 8, !dbg !1425
  br label %286, !dbg !1426

286:                                              ; preds = %264, %213
  br label %287, !dbg !1427

287:                                              ; preds = %286
  %288 = load ptr, ptr %10, align 8, !dbg !1428
  %289 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %288, i32 0, i32 11, !dbg !1429
  %290 = load ptr, ptr %289, align 8, !dbg !1429
  store ptr %290, ptr %10, align 8, !dbg !1430
  br label %210, !dbg !1431, !llvm.loop !1432

291:                                              ; preds = %100, %210
  ret void, !dbg !1434
}

; Function Attrs: noinline nounwind uwtable
define internal ptr @access_virt_sarray(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 !dbg !1435 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store ptr %0, ptr %6, align 8
    #dbg_declare(ptr %6, !1436, !DIExpression(), !1437)
  store ptr %1, ptr %7, align 8
    #dbg_declare(ptr %7, !1438, !DIExpression(), !1439)
  store i32 %2, ptr %8, align 4
    #dbg_declare(ptr %8, !1440, !DIExpression(), !1441)
  store i32 %3, ptr %9, align 4
    #dbg_declare(ptr %9, !1442, !DIExpression(), !1443)
  store i32 %4, ptr %10, align 4
    #dbg_declare(ptr %10, !1444, !DIExpression(), !1445)
    #dbg_declare(ptr %11, !1446, !DIExpression(), !1447)
  %15 = load i32, ptr %8, align 4, !dbg !1448
  %16 = load i32, ptr %9, align 4, !dbg !1449
  %17 = add i32 %15, %16, !dbg !1450
  store i32 %17, ptr %11, align 4, !dbg !1447
    #dbg_declare(ptr %12, !1451, !DIExpression(), !1452)
  %18 = load i32, ptr %11, align 4, !dbg !1453
  %19 = load ptr, ptr %7, align 8, !dbg !1455
  %20 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %19, i32 0, i32 1, !dbg !1456
  %21 = load i32, ptr %20, align 8, !dbg !1456
  %22 = icmp ugt i32 %18, %21, !dbg !1457
  br i1 %22, label %34, label %23, !dbg !1458

23:                                               ; preds = %5
  %24 = load i32, ptr %9, align 4, !dbg !1459
  %25 = load ptr, ptr %7, align 8, !dbg !1460
  %26 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %25, i32 0, i32 3, !dbg !1461
  %27 = load i32, ptr %26, align 8, !dbg !1461
  %28 = icmp ugt i32 %24, %27, !dbg !1462
  br i1 %28, label %34, label %29, !dbg !1463

29:                                               ; preds = %23
  %30 = load ptr, ptr %7, align 8, !dbg !1464
  %31 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %30, i32 0, i32 0, !dbg !1465
  %32 = load ptr, ptr %31, align 8, !dbg !1465
  %33 = icmp eq ptr %32, null, !dbg !1466
  br i1 %33, label %34, label %45, !dbg !1463

34:                                               ; preds = %29, %23, %5
  %35 = load ptr, ptr %6, align 8, !dbg !1467
  %36 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %35, i32 0, i32 0, !dbg !1467
  %37 = load ptr, ptr %36, align 8, !dbg !1467
  %38 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %37, i32 0, i32 5, !dbg !1467
  store i32 20, ptr %38, align 8, !dbg !1467
  %39 = load ptr, ptr %6, align 8, !dbg !1467
  %40 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %39, i32 0, i32 0, !dbg !1467
  %41 = load ptr, ptr %40, align 8, !dbg !1467
  %42 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %41, i32 0, i32 0, !dbg !1467
  %43 = load ptr, ptr %42, align 8, !dbg !1467
  %44 = load ptr, ptr %6, align 8, !dbg !1467
  call void %43(ptr noundef %44), !dbg !1467
  br label %45, !dbg !1467

45:                                               ; preds = %34, %29
  %46 = load i32, ptr %8, align 4, !dbg !1468
  %47 = load ptr, ptr %7, align 8, !dbg !1470
  %48 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %47, i32 0, i32 6, !dbg !1471
  %49 = load i32, ptr %48, align 4, !dbg !1471
  %50 = icmp ult i32 %46, %49, !dbg !1472
  br i1 %50, label %61, label %51, !dbg !1473

51:                                               ; preds = %45
  %52 = load i32, ptr %11, align 4, !dbg !1474
  %53 = load ptr, ptr %7, align 8, !dbg !1475
  %54 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %53, i32 0, i32 6, !dbg !1476
  %55 = load i32, ptr %54, align 4, !dbg !1476
  %56 = load ptr, ptr %7, align 8, !dbg !1477
  %57 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %56, i32 0, i32 4, !dbg !1478
  %58 = load i32, ptr %57, align 4, !dbg !1478
  %59 = add i32 %55, %58, !dbg !1479
  %60 = icmp ugt i32 %52, %59, !dbg !1480
  br i1 %60, label %61, label %116, !dbg !1473

61:                                               ; preds = %51, %45
  %62 = load ptr, ptr %7, align 8, !dbg !1481
  %63 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %62, i32 0, i32 10, !dbg !1484
  %64 = load i32, ptr %63, align 4, !dbg !1484
  %65 = icmp ne i32 %64, 0, !dbg !1481
  br i1 %65, label %77, label %66, !dbg !1485

66:                                               ; preds = %61
  %67 = load ptr, ptr %6, align 8, !dbg !1486
  %68 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %67, i32 0, i32 0, !dbg !1486
  %69 = load ptr, ptr %68, align 8, !dbg !1486
  %70 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %69, i32 0, i32 5, !dbg !1486
  store i32 68, ptr %70, align 8, !dbg !1486
  %71 = load ptr, ptr %6, align 8, !dbg !1486
  %72 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %71, i32 0, i32 0, !dbg !1486
  %73 = load ptr, ptr %72, align 8, !dbg !1486
  %74 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %73, i32 0, i32 0, !dbg !1486
  %75 = load ptr, ptr %74, align 8, !dbg !1486
  %76 = load ptr, ptr %6, align 8, !dbg !1486
  call void %75(ptr noundef %76), !dbg !1486
  br label %77, !dbg !1486

77:                                               ; preds = %66, %61
  %78 = load ptr, ptr %7, align 8, !dbg !1487
  %79 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %78, i32 0, i32 9, !dbg !1489
  %80 = load i32, ptr %79, align 8, !dbg !1489
  %81 = icmp ne i32 %80, 0, !dbg !1487
  br i1 %81, label %82, label %87, !dbg !1487

82:                                               ; preds = %77
  %83 = load ptr, ptr %6, align 8, !dbg !1490
  %84 = load ptr, ptr %7, align 8, !dbg !1492
  call void @do_sarray_io(ptr noundef %83, ptr noundef %84, i32 noundef 1), !dbg !1493
  %85 = load ptr, ptr %7, align 8, !dbg !1494
  %86 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %85, i32 0, i32 9, !dbg !1495
  store i32 0, ptr %86, align 8, !dbg !1496
  br label %87, !dbg !1497

87:                                               ; preds = %82, %77
  %88 = load i32, ptr %8, align 4, !dbg !1498
  %89 = load ptr, ptr %7, align 8, !dbg !1500
  %90 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %89, i32 0, i32 6, !dbg !1501
  %91 = load i32, ptr %90, align 4, !dbg !1501
  %92 = icmp ugt i32 %88, %91, !dbg !1502
  br i1 %92, label %93, label %97, !dbg !1502

93:                                               ; preds = %87
  %94 = load i32, ptr %8, align 4, !dbg !1503
  %95 = load ptr, ptr %7, align 8, !dbg !1505
  %96 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %95, i32 0, i32 6, !dbg !1506
  store i32 %94, ptr %96, align 4, !dbg !1507
  br label %113, !dbg !1508

97:                                               ; preds = %87
    #dbg_declare(ptr %13, !1509, !DIExpression(), !1511)
  %98 = load i32, ptr %11, align 4, !dbg !1512
  %99 = zext i32 %98 to i64, !dbg !1513
  %100 = load ptr, ptr %7, align 8, !dbg !1514
  %101 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %100, i32 0, i32 4, !dbg !1515
  %102 = load i32, ptr %101, align 4, !dbg !1515
  %103 = zext i32 %102 to i64, !dbg !1516
  %104 = sub nsw i64 %99, %103, !dbg !1517
  store i64 %104, ptr %13, align 8, !dbg !1518
  %105 = load i64, ptr %13, align 8, !dbg !1519
  %106 = icmp slt i64 %105, 0, !dbg !1521
  br i1 %106, label %107, label %108, !dbg !1521

107:                                              ; preds = %97
  store i64 0, ptr %13, align 8, !dbg !1522
  br label %108, !dbg !1523

108:                                              ; preds = %107, %97
  %109 = load i64, ptr %13, align 8, !dbg !1524
  %110 = trunc i64 %109 to i32, !dbg !1525
  %111 = load ptr, ptr %7, align 8, !dbg !1526
  %112 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %111, i32 0, i32 6, !dbg !1527
  store i32 %110, ptr %112, align 4, !dbg !1528
  br label %113

113:                                              ; preds = %108, %93
  %114 = load ptr, ptr %6, align 8, !dbg !1529
  %115 = load ptr, ptr %7, align 8, !dbg !1530
  call void @do_sarray_io(ptr noundef %114, ptr noundef %115, i32 noundef 0), !dbg !1531
  br label %116, !dbg !1532

116:                                              ; preds = %113, %51
  %117 = load ptr, ptr %7, align 8, !dbg !1533
  %118 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %117, i32 0, i32 7, !dbg !1535
  %119 = load i32, ptr %118, align 8, !dbg !1535
  %120 = load i32, ptr %11, align 4, !dbg !1536
  %121 = icmp ult i32 %119, %120, !dbg !1537
  br i1 %121, label %122, label %208, !dbg !1537

122:                                              ; preds = %116
  %123 = load ptr, ptr %7, align 8, !dbg !1538
  %124 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %123, i32 0, i32 7, !dbg !1541
  %125 = load i32, ptr %124, align 8, !dbg !1541
  %126 = load i32, ptr %8, align 4, !dbg !1542
  %127 = icmp ult i32 %125, %126, !dbg !1543
  br i1 %127, label %128, label %144, !dbg !1543

128:                                              ; preds = %122
  %129 = load i32, ptr %10, align 4, !dbg !1544
  %130 = icmp ne i32 %129, 0, !dbg !1544
  br i1 %130, label %131, label %142, !dbg !1544

131:                                              ; preds = %128
  %132 = load ptr, ptr %6, align 8, !dbg !1547
  %133 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %132, i32 0, i32 0, !dbg !1547
  %134 = load ptr, ptr %133, align 8, !dbg !1547
  %135 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %134, i32 0, i32 5, !dbg !1547
  store i32 20, ptr %135, align 8, !dbg !1547
  %136 = load ptr, ptr %6, align 8, !dbg !1547
  %137 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %136, i32 0, i32 0, !dbg !1547
  %138 = load ptr, ptr %137, align 8, !dbg !1547
  %139 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %138, i32 0, i32 0, !dbg !1547
  %140 = load ptr, ptr %139, align 8, !dbg !1547
  %141 = load ptr, ptr %6, align 8, !dbg !1547
  call void %140(ptr noundef %141), !dbg !1547
  br label %142, !dbg !1547

142:                                              ; preds = %131, %128
  %143 = load i32, ptr %8, align 4, !dbg !1548
  store i32 %143, ptr %12, align 4, !dbg !1549
  br label %148, !dbg !1550

144:                                              ; preds = %122
  %145 = load ptr, ptr %7, align 8, !dbg !1551
  %146 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %145, i32 0, i32 7, !dbg !1553
  %147 = load i32, ptr %146, align 8, !dbg !1553
  store i32 %147, ptr %12, align 4, !dbg !1554
  br label %148

148:                                              ; preds = %144, %142
  %149 = load i32, ptr %10, align 4, !dbg !1555
  %150 = icmp ne i32 %149, 0, !dbg !1555
  br i1 %150, label %151, label %155, !dbg !1555

151:                                              ; preds = %148
  %152 = load i32, ptr %11, align 4, !dbg !1557
  %153 = load ptr, ptr %7, align 8, !dbg !1558
  %154 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %153, i32 0, i32 7, !dbg !1559
  store i32 %152, ptr %154, align 8, !dbg !1560
  br label %155, !dbg !1558

155:                                              ; preds = %151, %148
  %156 = load ptr, ptr %7, align 8, !dbg !1561
  %157 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %156, i32 0, i32 8, !dbg !1563
  %158 = load i32, ptr %157, align 4, !dbg !1563
  %159 = icmp ne i32 %158, 0, !dbg !1561
  br i1 %159, label %160, label %192, !dbg !1561

160:                                              ; preds = %155
    #dbg_declare(ptr %14, !1564, !DIExpression(), !1566)
  %161 = load ptr, ptr %7, align 8, !dbg !1567
  %162 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %161, i32 0, i32 2, !dbg !1568
  %163 = load i32, ptr %162, align 4, !dbg !1568
  %164 = zext i32 %163 to i64, !dbg !1569
  %165 = mul i64 %164, 1, !dbg !1570
  store i64 %165, ptr %14, align 8, !dbg !1566
  %166 = load ptr, ptr %7, align 8, !dbg !1571
  %167 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %166, i32 0, i32 6, !dbg !1572
  %168 = load i32, ptr %167, align 4, !dbg !1572
  %169 = load i32, ptr %12, align 4, !dbg !1573
  %170 = sub i32 %169, %168, !dbg !1573
  store i32 %170, ptr %12, align 4, !dbg !1573
  %171 = load ptr, ptr %7, align 8, !dbg !1574
  %172 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %171, i32 0, i32 6, !dbg !1575
  %173 = load i32, ptr %172, align 4, !dbg !1575
  %174 = load i32, ptr %11, align 4, !dbg !1576
  %175 = sub i32 %174, %173, !dbg !1576
  store i32 %175, ptr %11, align 4, !dbg !1576
  br label %176, !dbg !1577

176:                                              ; preds = %180, %160
  %177 = load i32, ptr %12, align 4, !dbg !1578
  %178 = load i32, ptr %11, align 4, !dbg !1579
  %179 = icmp ult i32 %177, %178, !dbg !1580
  br i1 %179, label %180, label %191, !dbg !1577

180:                                              ; preds = %176
  %181 = load ptr, ptr %7, align 8, !dbg !1581
  %182 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %181, i32 0, i32 0, !dbg !1583
  %183 = load ptr, ptr %182, align 8, !dbg !1583
  %184 = load i32, ptr %12, align 4, !dbg !1584
  %185 = zext i32 %184 to i64, !dbg !1581
  %186 = getelementptr inbounds nuw ptr, ptr %183, i64 %185, !dbg !1581
  %187 = load ptr, ptr %186, align 8, !dbg !1581
  %188 = load i64, ptr %14, align 8, !dbg !1585
  call void @jzero_far(ptr noundef %187, i64 noundef %188), !dbg !1586
  %189 = load i32, ptr %12, align 4, !dbg !1587
  %190 = add i32 %189, 1, !dbg !1587
  store i32 %190, ptr %12, align 4, !dbg !1587
  br label %176, !dbg !1577, !llvm.loop !1588

191:                                              ; preds = %176
  br label %207, !dbg !1590

192:                                              ; preds = %155
  %193 = load i32, ptr %10, align 4, !dbg !1591
  %194 = icmp ne i32 %193, 0, !dbg !1591
  br i1 %194, label %206, label %195, !dbg !1594

195:                                              ; preds = %192
  %196 = load ptr, ptr %6, align 8, !dbg !1595
  %197 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %196, i32 0, i32 0, !dbg !1595
  %198 = load ptr, ptr %197, align 8, !dbg !1595
  %199 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %198, i32 0, i32 5, !dbg !1595
  store i32 20, ptr %199, align 8, !dbg !1595
  %200 = load ptr, ptr %6, align 8, !dbg !1595
  %201 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %200, i32 0, i32 0, !dbg !1595
  %202 = load ptr, ptr %201, align 8, !dbg !1595
  %203 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %202, i32 0, i32 0, !dbg !1595
  %204 = load ptr, ptr %203, align 8, !dbg !1595
  %205 = load ptr, ptr %6, align 8, !dbg !1595
  call void %204(ptr noundef %205), !dbg !1595
  br label %206, !dbg !1595

206:                                              ; preds = %195, %192
  br label %207

207:                                              ; preds = %206, %191
  br label %208, !dbg !1596

208:                                              ; preds = %207, %116
  %209 = load i32, ptr %10, align 4, !dbg !1597
  %210 = icmp ne i32 %209, 0, !dbg !1597
  br i1 %210, label %211, label %214, !dbg !1597

211:                                              ; preds = %208
  %212 = load ptr, ptr %7, align 8, !dbg !1599
  %213 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %212, i32 0, i32 9, !dbg !1600
  store i32 1, ptr %213, align 8, !dbg !1601
  br label %214, !dbg !1599

214:                                              ; preds = %211, %208
  %215 = load ptr, ptr %7, align 8, !dbg !1602
  %216 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %215, i32 0, i32 0, !dbg !1603
  %217 = load ptr, ptr %216, align 8, !dbg !1603
  %218 = load i32, ptr %8, align 4, !dbg !1604
  %219 = load ptr, ptr %7, align 8, !dbg !1605
  %220 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %219, i32 0, i32 6, !dbg !1606
  %221 = load i32, ptr %220, align 4, !dbg !1606
  %222 = sub i32 %218, %221, !dbg !1607
  %223 = zext i32 %222 to i64, !dbg !1608
  %224 = getelementptr inbounds nuw ptr, ptr %217, i64 %223, !dbg !1608
  ret ptr %224, !dbg !1609
}

; Function Attrs: noinline nounwind uwtable
define internal ptr @access_virt_barray(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 !dbg !1610 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store ptr %0, ptr %6, align 8
    #dbg_declare(ptr %6, !1611, !DIExpression(), !1612)
  store ptr %1, ptr %7, align 8
    #dbg_declare(ptr %7, !1613, !DIExpression(), !1614)
  store i32 %2, ptr %8, align 4
    #dbg_declare(ptr %8, !1615, !DIExpression(), !1616)
  store i32 %3, ptr %9, align 4
    #dbg_declare(ptr %9, !1617, !DIExpression(), !1618)
  store i32 %4, ptr %10, align 4
    #dbg_declare(ptr %10, !1619, !DIExpression(), !1620)
    #dbg_declare(ptr %11, !1621, !DIExpression(), !1622)
  %15 = load i32, ptr %8, align 4, !dbg !1623
  %16 = load i32, ptr %9, align 4, !dbg !1624
  %17 = add i32 %15, %16, !dbg !1625
  store i32 %17, ptr %11, align 4, !dbg !1622
    #dbg_declare(ptr %12, !1626, !DIExpression(), !1627)
  %18 = load i32, ptr %11, align 4, !dbg !1628
  %19 = load ptr, ptr %7, align 8, !dbg !1630
  %20 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %19, i32 0, i32 1, !dbg !1631
  %21 = load i32, ptr %20, align 8, !dbg !1631
  %22 = icmp ugt i32 %18, %21, !dbg !1632
  br i1 %22, label %34, label %23, !dbg !1633

23:                                               ; preds = %5
  %24 = load i32, ptr %9, align 4, !dbg !1634
  %25 = load ptr, ptr %7, align 8, !dbg !1635
  %26 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %25, i32 0, i32 3, !dbg !1636
  %27 = load i32, ptr %26, align 8, !dbg !1636
  %28 = icmp ugt i32 %24, %27, !dbg !1637
  br i1 %28, label %34, label %29, !dbg !1638

29:                                               ; preds = %23
  %30 = load ptr, ptr %7, align 8, !dbg !1639
  %31 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %30, i32 0, i32 0, !dbg !1640
  %32 = load ptr, ptr %31, align 8, !dbg !1640
  %33 = icmp eq ptr %32, null, !dbg !1641
  br i1 %33, label %34, label %45, !dbg !1638

34:                                               ; preds = %29, %23, %5
  %35 = load ptr, ptr %6, align 8, !dbg !1642
  %36 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %35, i32 0, i32 0, !dbg !1642
  %37 = load ptr, ptr %36, align 8, !dbg !1642
  %38 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %37, i32 0, i32 5, !dbg !1642
  store i32 20, ptr %38, align 8, !dbg !1642
  %39 = load ptr, ptr %6, align 8, !dbg !1642
  %40 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %39, i32 0, i32 0, !dbg !1642
  %41 = load ptr, ptr %40, align 8, !dbg !1642
  %42 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %41, i32 0, i32 0, !dbg !1642
  %43 = load ptr, ptr %42, align 8, !dbg !1642
  %44 = load ptr, ptr %6, align 8, !dbg !1642
  call void %43(ptr noundef %44), !dbg !1642
  br label %45, !dbg !1642

45:                                               ; preds = %34, %29
  %46 = load i32, ptr %8, align 4, !dbg !1643
  %47 = load ptr, ptr %7, align 8, !dbg !1645
  %48 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %47, i32 0, i32 6, !dbg !1646
  %49 = load i32, ptr %48, align 4, !dbg !1646
  %50 = icmp ult i32 %46, %49, !dbg !1647
  br i1 %50, label %61, label %51, !dbg !1648

51:                                               ; preds = %45
  %52 = load i32, ptr %11, align 4, !dbg !1649
  %53 = load ptr, ptr %7, align 8, !dbg !1650
  %54 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %53, i32 0, i32 6, !dbg !1651
  %55 = load i32, ptr %54, align 4, !dbg !1651
  %56 = load ptr, ptr %7, align 8, !dbg !1652
  %57 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %56, i32 0, i32 4, !dbg !1653
  %58 = load i32, ptr %57, align 4, !dbg !1653
  %59 = add i32 %55, %58, !dbg !1654
  %60 = icmp ugt i32 %52, %59, !dbg !1655
  br i1 %60, label %61, label %116, !dbg !1648

61:                                               ; preds = %51, %45
  %62 = load ptr, ptr %7, align 8, !dbg !1656
  %63 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %62, i32 0, i32 10, !dbg !1659
  %64 = load i32, ptr %63, align 4, !dbg !1659
  %65 = icmp ne i32 %64, 0, !dbg !1656
  br i1 %65, label %77, label %66, !dbg !1660

66:                                               ; preds = %61
  %67 = load ptr, ptr %6, align 8, !dbg !1661
  %68 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %67, i32 0, i32 0, !dbg !1661
  %69 = load ptr, ptr %68, align 8, !dbg !1661
  %70 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %69, i32 0, i32 5, !dbg !1661
  store i32 68, ptr %70, align 8, !dbg !1661
  %71 = load ptr, ptr %6, align 8, !dbg !1661
  %72 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %71, i32 0, i32 0, !dbg !1661
  %73 = load ptr, ptr %72, align 8, !dbg !1661
  %74 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %73, i32 0, i32 0, !dbg !1661
  %75 = load ptr, ptr %74, align 8, !dbg !1661
  %76 = load ptr, ptr %6, align 8, !dbg !1661
  call void %75(ptr noundef %76), !dbg !1661
  br label %77, !dbg !1661

77:                                               ; preds = %66, %61
  %78 = load ptr, ptr %7, align 8, !dbg !1662
  %79 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %78, i32 0, i32 9, !dbg !1664
  %80 = load i32, ptr %79, align 8, !dbg !1664
  %81 = icmp ne i32 %80, 0, !dbg !1662
  br i1 %81, label %82, label %87, !dbg !1662

82:                                               ; preds = %77
  %83 = load ptr, ptr %6, align 8, !dbg !1665
  %84 = load ptr, ptr %7, align 8, !dbg !1667
  call void @do_barray_io(ptr noundef %83, ptr noundef %84, i32 noundef 1), !dbg !1668
  %85 = load ptr, ptr %7, align 8, !dbg !1669
  %86 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %85, i32 0, i32 9, !dbg !1670
  store i32 0, ptr %86, align 8, !dbg !1671
  br label %87, !dbg !1672

87:                                               ; preds = %82, %77
  %88 = load i32, ptr %8, align 4, !dbg !1673
  %89 = load ptr, ptr %7, align 8, !dbg !1675
  %90 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %89, i32 0, i32 6, !dbg !1676
  %91 = load i32, ptr %90, align 4, !dbg !1676
  %92 = icmp ugt i32 %88, %91, !dbg !1677
  br i1 %92, label %93, label %97, !dbg !1677

93:                                               ; preds = %87
  %94 = load i32, ptr %8, align 4, !dbg !1678
  %95 = load ptr, ptr %7, align 8, !dbg !1680
  %96 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %95, i32 0, i32 6, !dbg !1681
  store i32 %94, ptr %96, align 4, !dbg !1682
  br label %113, !dbg !1683

97:                                               ; preds = %87
    #dbg_declare(ptr %13, !1684, !DIExpression(), !1686)
  %98 = load i32, ptr %11, align 4, !dbg !1687
  %99 = zext i32 %98 to i64, !dbg !1688
  %100 = load ptr, ptr %7, align 8, !dbg !1689
  %101 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %100, i32 0, i32 4, !dbg !1690
  %102 = load i32, ptr %101, align 4, !dbg !1690
  %103 = zext i32 %102 to i64, !dbg !1691
  %104 = sub nsw i64 %99, %103, !dbg !1692
  store i64 %104, ptr %13, align 8, !dbg !1693
  %105 = load i64, ptr %13, align 8, !dbg !1694
  %106 = icmp slt i64 %105, 0, !dbg !1696
  br i1 %106, label %107, label %108, !dbg !1696

107:                                              ; preds = %97
  store i64 0, ptr %13, align 8, !dbg !1697
  br label %108, !dbg !1698

108:                                              ; preds = %107, %97
  %109 = load i64, ptr %13, align 8, !dbg !1699
  %110 = trunc i64 %109 to i32, !dbg !1700
  %111 = load ptr, ptr %7, align 8, !dbg !1701
  %112 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %111, i32 0, i32 6, !dbg !1702
  store i32 %110, ptr %112, align 4, !dbg !1703
  br label %113

113:                                              ; preds = %108, %93
  %114 = load ptr, ptr %6, align 8, !dbg !1704
  %115 = load ptr, ptr %7, align 8, !dbg !1705
  call void @do_barray_io(ptr noundef %114, ptr noundef %115, i32 noundef 0), !dbg !1706
  br label %116, !dbg !1707

116:                                              ; preds = %113, %51
  %117 = load ptr, ptr %7, align 8, !dbg !1708
  %118 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %117, i32 0, i32 7, !dbg !1710
  %119 = load i32, ptr %118, align 8, !dbg !1710
  %120 = load i32, ptr %11, align 4, !dbg !1711
  %121 = icmp ult i32 %119, %120, !dbg !1712
  br i1 %121, label %122, label %208, !dbg !1712

122:                                              ; preds = %116
  %123 = load ptr, ptr %7, align 8, !dbg !1713
  %124 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %123, i32 0, i32 7, !dbg !1716
  %125 = load i32, ptr %124, align 8, !dbg !1716
  %126 = load i32, ptr %8, align 4, !dbg !1717
  %127 = icmp ult i32 %125, %126, !dbg !1718
  br i1 %127, label %128, label %144, !dbg !1718

128:                                              ; preds = %122
  %129 = load i32, ptr %10, align 4, !dbg !1719
  %130 = icmp ne i32 %129, 0, !dbg !1719
  br i1 %130, label %131, label %142, !dbg !1719

131:                                              ; preds = %128
  %132 = load ptr, ptr %6, align 8, !dbg !1722
  %133 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %132, i32 0, i32 0, !dbg !1722
  %134 = load ptr, ptr %133, align 8, !dbg !1722
  %135 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %134, i32 0, i32 5, !dbg !1722
  store i32 20, ptr %135, align 8, !dbg !1722
  %136 = load ptr, ptr %6, align 8, !dbg !1722
  %137 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %136, i32 0, i32 0, !dbg !1722
  %138 = load ptr, ptr %137, align 8, !dbg !1722
  %139 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %138, i32 0, i32 0, !dbg !1722
  %140 = load ptr, ptr %139, align 8, !dbg !1722
  %141 = load ptr, ptr %6, align 8, !dbg !1722
  call void %140(ptr noundef %141), !dbg !1722
  br label %142, !dbg !1722

142:                                              ; preds = %131, %128
  %143 = load i32, ptr %8, align 4, !dbg !1723
  store i32 %143, ptr %12, align 4, !dbg !1724
  br label %148, !dbg !1725

144:                                              ; preds = %122
  %145 = load ptr, ptr %7, align 8, !dbg !1726
  %146 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %145, i32 0, i32 7, !dbg !1728
  %147 = load i32, ptr %146, align 8, !dbg !1728
  store i32 %147, ptr %12, align 4, !dbg !1729
  br label %148

148:                                              ; preds = %144, %142
  %149 = load i32, ptr %10, align 4, !dbg !1730
  %150 = icmp ne i32 %149, 0, !dbg !1730
  br i1 %150, label %151, label %155, !dbg !1730

151:                                              ; preds = %148
  %152 = load i32, ptr %11, align 4, !dbg !1732
  %153 = load ptr, ptr %7, align 8, !dbg !1733
  %154 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %153, i32 0, i32 7, !dbg !1734
  store i32 %152, ptr %154, align 8, !dbg !1735
  br label %155, !dbg !1733

155:                                              ; preds = %151, %148
  %156 = load ptr, ptr %7, align 8, !dbg !1736
  %157 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %156, i32 0, i32 8, !dbg !1738
  %158 = load i32, ptr %157, align 4, !dbg !1738
  %159 = icmp ne i32 %158, 0, !dbg !1736
  br i1 %159, label %160, label %192, !dbg !1736

160:                                              ; preds = %155
    #dbg_declare(ptr %14, !1739, !DIExpression(), !1741)
  %161 = load ptr, ptr %7, align 8, !dbg !1742
  %162 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %161, i32 0, i32 2, !dbg !1743
  %163 = load i32, ptr %162, align 4, !dbg !1743
  %164 = zext i32 %163 to i64, !dbg !1744
  %165 = mul i64 %164, 128, !dbg !1745
  store i64 %165, ptr %14, align 8, !dbg !1741
  %166 = load ptr, ptr %7, align 8, !dbg !1746
  %167 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %166, i32 0, i32 6, !dbg !1747
  %168 = load i32, ptr %167, align 4, !dbg !1747
  %169 = load i32, ptr %12, align 4, !dbg !1748
  %170 = sub i32 %169, %168, !dbg !1748
  store i32 %170, ptr %12, align 4, !dbg !1748
  %171 = load ptr, ptr %7, align 8, !dbg !1749
  %172 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %171, i32 0, i32 6, !dbg !1750
  %173 = load i32, ptr %172, align 4, !dbg !1750
  %174 = load i32, ptr %11, align 4, !dbg !1751
  %175 = sub i32 %174, %173, !dbg !1751
  store i32 %175, ptr %11, align 4, !dbg !1751
  br label %176, !dbg !1752

176:                                              ; preds = %180, %160
  %177 = load i32, ptr %12, align 4, !dbg !1753
  %178 = load i32, ptr %11, align 4, !dbg !1754
  %179 = icmp ult i32 %177, %178, !dbg !1755
  br i1 %179, label %180, label %191, !dbg !1752

180:                                              ; preds = %176
  %181 = load ptr, ptr %7, align 8, !dbg !1756
  %182 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %181, i32 0, i32 0, !dbg !1758
  %183 = load ptr, ptr %182, align 8, !dbg !1758
  %184 = load i32, ptr %12, align 4, !dbg !1759
  %185 = zext i32 %184 to i64, !dbg !1756
  %186 = getelementptr inbounds nuw ptr, ptr %183, i64 %185, !dbg !1756
  %187 = load ptr, ptr %186, align 8, !dbg !1756
  %188 = load i64, ptr %14, align 8, !dbg !1760
  call void @jzero_far(ptr noundef %187, i64 noundef %188), !dbg !1761
  %189 = load i32, ptr %12, align 4, !dbg !1762
  %190 = add i32 %189, 1, !dbg !1762
  store i32 %190, ptr %12, align 4, !dbg !1762
  br label %176, !dbg !1752, !llvm.loop !1763

191:                                              ; preds = %176
  br label %207, !dbg !1765

192:                                              ; preds = %155
  %193 = load i32, ptr %10, align 4, !dbg !1766
  %194 = icmp ne i32 %193, 0, !dbg !1766
  br i1 %194, label %206, label %195, !dbg !1769

195:                                              ; preds = %192
  %196 = load ptr, ptr %6, align 8, !dbg !1770
  %197 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %196, i32 0, i32 0, !dbg !1770
  %198 = load ptr, ptr %197, align 8, !dbg !1770
  %199 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %198, i32 0, i32 5, !dbg !1770
  store i32 20, ptr %199, align 8, !dbg !1770
  %200 = load ptr, ptr %6, align 8, !dbg !1770
  %201 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %200, i32 0, i32 0, !dbg !1770
  %202 = load ptr, ptr %201, align 8, !dbg !1770
  %203 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %202, i32 0, i32 0, !dbg !1770
  %204 = load ptr, ptr %203, align 8, !dbg !1770
  %205 = load ptr, ptr %6, align 8, !dbg !1770
  call void %204(ptr noundef %205), !dbg !1770
  br label %206, !dbg !1770

206:                                              ; preds = %195, %192
  br label %207

207:                                              ; preds = %206, %191
  br label %208, !dbg !1771

208:                                              ; preds = %207, %116
  %209 = load i32, ptr %10, align 4, !dbg !1772
  %210 = icmp ne i32 %209, 0, !dbg !1772
  br i1 %210, label %211, label %214, !dbg !1772

211:                                              ; preds = %208
  %212 = load ptr, ptr %7, align 8, !dbg !1774
  %213 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %212, i32 0, i32 9, !dbg !1775
  store i32 1, ptr %213, align 8, !dbg !1776
  br label %214, !dbg !1774

214:                                              ; preds = %211, %208
  %215 = load ptr, ptr %7, align 8, !dbg !1777
  %216 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %215, i32 0, i32 0, !dbg !1778
  %217 = load ptr, ptr %216, align 8, !dbg !1778
  %218 = load i32, ptr %8, align 4, !dbg !1779
  %219 = load ptr, ptr %7, align 8, !dbg !1780
  %220 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %219, i32 0, i32 6, !dbg !1781
  %221 = load i32, ptr %220, align 4, !dbg !1781
  %222 = sub i32 %218, %221, !dbg !1782
  %223 = zext i32 %222 to i64, !dbg !1783
  %224 = getelementptr inbounds nuw ptr, ptr %217, i64 %223, !dbg !1783
  ret ptr %224, !dbg !1784
}

; Function Attrs: noinline nounwind uwtable
define internal void @free_pool(ptr noundef %0, i32 noundef %1) #0 !dbg !1785 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1786, !DIExpression(), !1787)
  store i32 %1, ptr %4, align 4
    #dbg_declare(ptr %4, !1788, !DIExpression(), !1789)
    #dbg_declare(ptr %5, !1790, !DIExpression(), !1791)
  %13 = load ptr, ptr %3, align 8, !dbg !1792
  %14 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %13, i32 0, i32 1, !dbg !1793
  %15 = load ptr, ptr %14, align 8, !dbg !1793
  store ptr %15, ptr %5, align 8, !dbg !1791
    #dbg_declare(ptr %6, !1794, !DIExpression(), !1795)
    #dbg_declare(ptr %7, !1796, !DIExpression(), !1797)
    #dbg_declare(ptr %8, !1798, !DIExpression(), !1799)
  %16 = load i32, ptr %4, align 4, !dbg !1800
  %17 = icmp slt i32 %16, 0, !dbg !1802
  br i1 %17, label %21, label %18, !dbg !1803

18:                                               ; preds = %2
  %19 = load i32, ptr %4, align 4, !dbg !1804
  %20 = icmp sge i32 %19, 2, !dbg !1805
  br i1 %20, label %21, label %38, !dbg !1803

21:                                               ; preds = %18, %2
  %22 = load ptr, ptr %3, align 8, !dbg !1806
  %23 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %22, i32 0, i32 0, !dbg !1806
  %24 = load ptr, ptr %23, align 8, !dbg !1806
  %25 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %24, i32 0, i32 5, !dbg !1806
  store i32 12, ptr %25, align 8, !dbg !1806
  %26 = load i32, ptr %4, align 4, !dbg !1806
  %27 = load ptr, ptr %3, align 8, !dbg !1806
  %28 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %27, i32 0, i32 0, !dbg !1806
  %29 = load ptr, ptr %28, align 8, !dbg !1806
  %30 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %29, i32 0, i32 6, !dbg !1806
  %31 = getelementptr inbounds [8 x i32], ptr %30, i64 0, i64 0, !dbg !1806
  store i32 %26, ptr %31, align 4, !dbg !1806
  %32 = load ptr, ptr %3, align 8, !dbg !1806
  %33 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %32, i32 0, i32 0, !dbg !1806
  %34 = load ptr, ptr %33, align 8, !dbg !1806
  %35 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %34, i32 0, i32 0, !dbg !1806
  %36 = load ptr, ptr %35, align 8, !dbg !1806
  %37 = load ptr, ptr %3, align 8, !dbg !1806
  call void %36(ptr noundef %37), !dbg !1806
  br label %38, !dbg !1806

38:                                               ; preds = %21, %18
  %39 = load i32, ptr %4, align 4, !dbg !1807
  %40 = icmp eq i32 %39, 1, !dbg !1809
  br i1 %40, label %41, label %100, !dbg !1809

41:                                               ; preds = %38
    #dbg_declare(ptr %9, !1810, !DIExpression(), !1812)
    #dbg_declare(ptr %10, !1813, !DIExpression(), !1814)
  %42 = load ptr, ptr %5, align 8, !dbg !1815
  %43 = getelementptr inbounds nuw %struct.my_memory_mgr, ptr %42, i32 0, i32 3, !dbg !1817
  %44 = load ptr, ptr %43, align 8, !dbg !1817
  store ptr %44, ptr %9, align 8, !dbg !1818
  br label %45, !dbg !1819

45:                                               ; preds = %64, %41
  %46 = load ptr, ptr %9, align 8, !dbg !1820
  %47 = icmp ne ptr %46, null, !dbg !1822
  br i1 %47, label %48, label %68, !dbg !1823

48:                                               ; preds = %45
  %49 = load ptr, ptr %9, align 8, !dbg !1824
  %50 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %49, i32 0, i32 10, !dbg !1827
  %51 = load i32, ptr %50, align 4, !dbg !1827
  %52 = icmp ne i32 %51, 0, !dbg !1824
  br i1 %52, label %53, label %63, !dbg !1824

53:                                               ; preds = %48
  %54 = load ptr, ptr %9, align 8, !dbg !1828
  %55 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %54, i32 0, i32 10, !dbg !1830
  store i32 0, ptr %55, align 4, !dbg !1831
  %56 = load ptr, ptr %9, align 8, !dbg !1832
  %57 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %56, i32 0, i32 12, !dbg !1833
  %58 = getelementptr inbounds nuw %struct.backing_store_struct, ptr %57, i32 0, i32 2, !dbg !1834
  %59 = load ptr, ptr %58, align 8, !dbg !1834
  %60 = load ptr, ptr %3, align 8, !dbg !1835
  %61 = load ptr, ptr %9, align 8, !dbg !1836
  %62 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %61, i32 0, i32 12, !dbg !1837
  call void %59(ptr noundef %60, ptr noundef %62), !dbg !1838
  br label %63, !dbg !1839

63:                                               ; preds = %53, %48
  br label %64, !dbg !1840

64:                                               ; preds = %63
  %65 = load ptr, ptr %9, align 8, !dbg !1841
  %66 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %65, i32 0, i32 11, !dbg !1842
  %67 = load ptr, ptr %66, align 8, !dbg !1842
  store ptr %67, ptr %9, align 8, !dbg !1843
  br label %45, !dbg !1844, !llvm.loop !1845

68:                                               ; preds = %45
  %69 = load ptr, ptr %5, align 8, !dbg !1847
  %70 = getelementptr inbounds nuw %struct.my_memory_mgr, ptr %69, i32 0, i32 3, !dbg !1848
  store ptr null, ptr %70, align 8, !dbg !1849
  %71 = load ptr, ptr %5, align 8, !dbg !1850
  %72 = getelementptr inbounds nuw %struct.my_memory_mgr, ptr %71, i32 0, i32 4, !dbg !1852
  %73 = load ptr, ptr %72, align 8, !dbg !1852
  store ptr %73, ptr %10, align 8, !dbg !1853
  br label %74, !dbg !1854

74:                                               ; preds = %93, %68
  %75 = load ptr, ptr %10, align 8, !dbg !1855
  %76 = icmp ne ptr %75, null, !dbg !1857
  br i1 %76, label %77, label %97, !dbg !1858

77:                                               ; preds = %74
  %78 = load ptr, ptr %10, align 8, !dbg !1859
  %79 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %78, i32 0, i32 10, !dbg !1862
  %80 = load i32, ptr %79, align 4, !dbg !1862
  %81 = icmp ne i32 %80, 0, !dbg !1859
  br i1 %81, label %82, label %92, !dbg !1859

82:                                               ; preds = %77
  %83 = load ptr, ptr %10, align 8, !dbg !1863
  %84 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %83, i32 0, i32 10, !dbg !1865
  store i32 0, ptr %84, align 4, !dbg !1866
  %85 = load ptr, ptr %10, align 8, !dbg !1867
  %86 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %85, i32 0, i32 12, !dbg !1868
  %87 = getelementptr inbounds nuw %struct.backing_store_struct, ptr %86, i32 0, i32 2, !dbg !1869
  %88 = load ptr, ptr %87, align 8, !dbg !1869
  %89 = load ptr, ptr %3, align 8, !dbg !1870
  %90 = load ptr, ptr %10, align 8, !dbg !1871
  %91 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %90, i32 0, i32 12, !dbg !1872
  call void %88(ptr noundef %89, ptr noundef %91), !dbg !1873
  br label %92, !dbg !1874

92:                                               ; preds = %82, %77
  br label %93, !dbg !1875

93:                                               ; preds = %92
  %94 = load ptr, ptr %10, align 8, !dbg !1876
  %95 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %94, i32 0, i32 11, !dbg !1877
  %96 = load ptr, ptr %95, align 8, !dbg !1877
  store ptr %96, ptr %10, align 8, !dbg !1878
  br label %74, !dbg !1879, !llvm.loop !1880

97:                                               ; preds = %74
  %98 = load ptr, ptr %5, align 8, !dbg !1882
  %99 = getelementptr inbounds nuw %struct.my_memory_mgr, ptr %98, i32 0, i32 4, !dbg !1883
  store ptr null, ptr %99, align 8, !dbg !1884
  br label %100, !dbg !1885

100:                                              ; preds = %97, %38
  %101 = load ptr, ptr %5, align 8, !dbg !1886
  %102 = getelementptr inbounds nuw %struct.my_memory_mgr, ptr %101, i32 0, i32 2, !dbg !1887
  %103 = load i32, ptr %4, align 4, !dbg !1888
  %104 = sext i32 %103 to i64, !dbg !1886
  %105 = getelementptr inbounds [2 x ptr], ptr %102, i64 0, i64 %104, !dbg !1886
  %106 = load ptr, ptr %105, align 8, !dbg !1886
  store ptr %106, ptr %7, align 8, !dbg !1889
  %107 = load ptr, ptr %5, align 8, !dbg !1890
  %108 = getelementptr inbounds nuw %struct.my_memory_mgr, ptr %107, i32 0, i32 2, !dbg !1891
  %109 = load i32, ptr %4, align 4, !dbg !1892
  %110 = sext i32 %109 to i64, !dbg !1890
  %111 = getelementptr inbounds [2 x ptr], ptr %108, i64 0, i64 %110, !dbg !1890
  store ptr null, ptr %111, align 8, !dbg !1893
  br label %112, !dbg !1894

112:                                              ; preds = %115, %100
  %113 = load ptr, ptr %7, align 8, !dbg !1895
  %114 = icmp ne ptr %113, null, !dbg !1896
  br i1 %114, label %115, label %136, !dbg !1894

115:                                              ; preds = %112
    #dbg_declare(ptr %11, !1897, !DIExpression(), !1899)
  %116 = load ptr, ptr %7, align 8, !dbg !1900
  %117 = getelementptr inbounds nuw %struct.anon.0, ptr %116, i32 0, i32 0, !dbg !1901
  %118 = load ptr, ptr %117, align 8, !dbg !1901
  store ptr %118, ptr %11, align 8, !dbg !1899
  %119 = load ptr, ptr %7, align 8, !dbg !1902
  %120 = getelementptr inbounds nuw %struct.anon.0, ptr %119, i32 0, i32 1, !dbg !1903
  %121 = load i64, ptr %120, align 8, !dbg !1903
  %122 = load ptr, ptr %7, align 8, !dbg !1904
  %123 = getelementptr inbounds nuw %struct.anon.0, ptr %122, i32 0, i32 2, !dbg !1905
  %124 = load i64, ptr %123, align 8, !dbg !1905
  %125 = add i64 %121, %124, !dbg !1906
  %126 = add i64 %125, 24, !dbg !1907
  store i64 %126, ptr %8, align 8, !dbg !1908
  %127 = load ptr, ptr %3, align 8, !dbg !1909
  %128 = load ptr, ptr %7, align 8, !dbg !1910
  %129 = load i64, ptr %8, align 8, !dbg !1911
  call void @jpeg_free_large(ptr noundef %127, ptr noundef %128, i64 noundef %129), !dbg !1912
  %130 = load i64, ptr %8, align 8, !dbg !1913
  %131 = load ptr, ptr %5, align 8, !dbg !1914
  %132 = getelementptr inbounds nuw %struct.my_memory_mgr, ptr %131, i32 0, i32 5, !dbg !1915
  %133 = load i64, ptr %132, align 8, !dbg !1916
  %134 = sub i64 %133, %130, !dbg !1916
  store i64 %134, ptr %132, align 8, !dbg !1916
  %135 = load ptr, ptr %11, align 8, !dbg !1917
  store ptr %135, ptr %7, align 8, !dbg !1918
  br label %112, !dbg !1894, !llvm.loop !1919

136:                                              ; preds = %112
  %137 = load ptr, ptr %5, align 8, !dbg !1921
  %138 = getelementptr inbounds nuw %struct.my_memory_mgr, ptr %137, i32 0, i32 1, !dbg !1922
  %139 = load i32, ptr %4, align 4, !dbg !1923
  %140 = sext i32 %139 to i64, !dbg !1921
  %141 = getelementptr inbounds [2 x ptr], ptr %138, i64 0, i64 %140, !dbg !1921
  %142 = load ptr, ptr %141, align 8, !dbg !1921
  store ptr %142, ptr %6, align 8, !dbg !1924
  %143 = load ptr, ptr %5, align 8, !dbg !1925
  %144 = getelementptr inbounds nuw %struct.my_memory_mgr, ptr %143, i32 0, i32 1, !dbg !1926
  %145 = load i32, ptr %4, align 4, !dbg !1927
  %146 = sext i32 %145 to i64, !dbg !1925
  %147 = getelementptr inbounds [2 x ptr], ptr %144, i64 0, i64 %146, !dbg !1925
  store ptr null, ptr %147, align 8, !dbg !1928
  br label %148, !dbg !1929

148:                                              ; preds = %151, %136
  %149 = load ptr, ptr %6, align 8, !dbg !1930
  %150 = icmp ne ptr %149, null, !dbg !1931
  br i1 %150, label %151, label %172, !dbg !1929

151:                                              ; preds = %148
    #dbg_declare(ptr %12, !1932, !DIExpression(), !1934)
  %152 = load ptr, ptr %6, align 8, !dbg !1935
  %153 = getelementptr inbounds nuw %struct.anon, ptr %152, i32 0, i32 0, !dbg !1936
  %154 = load ptr, ptr %153, align 8, !dbg !1936
  store ptr %154, ptr %12, align 8, !dbg !1934
  %155 = load ptr, ptr %6, align 8, !dbg !1937
  %156 = getelementptr inbounds nuw %struct.anon, ptr %155, i32 0, i32 1, !dbg !1938
  %157 = load i64, ptr %156, align 8, !dbg !1938
  %158 = load ptr, ptr %6, align 8, !dbg !1939
  %159 = getelementptr inbounds nuw %struct.anon, ptr %158, i32 0, i32 2, !dbg !1940
  %160 = load i64, ptr %159, align 8, !dbg !1940
  %161 = add i64 %157, %160, !dbg !1941
  %162 = add i64 %161, 24, !dbg !1942
  store i64 %162, ptr %8, align 8, !dbg !1943
  %163 = load ptr, ptr %3, align 8, !dbg !1944
  %164 = load ptr, ptr %6, align 8, !dbg !1945
  %165 = load i64, ptr %8, align 8, !dbg !1946
  call void @jpeg_free_small(ptr noundef %163, ptr noundef %164, i64 noundef %165), !dbg !1947
  %166 = load i64, ptr %8, align 8, !dbg !1948
  %167 = load ptr, ptr %5, align 8, !dbg !1949
  %168 = getelementptr inbounds nuw %struct.my_memory_mgr, ptr %167, i32 0, i32 5, !dbg !1950
  %169 = load i64, ptr %168, align 8, !dbg !1951
  %170 = sub i64 %169, %166, !dbg !1951
  store i64 %170, ptr %168, align 8, !dbg !1951
  %171 = load ptr, ptr %12, align 8, !dbg !1952
  store ptr %171, ptr %6, align 8, !dbg !1953
  br label %148, !dbg !1929, !llvm.loop !1954

172:                                              ; preds = %148
  ret void, !dbg !1956
}

; Function Attrs: noinline nounwind uwtable
define internal void @self_destruct(ptr noundef %0) #0 !dbg !1957 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !1958, !DIExpression(), !1959)
    #dbg_declare(ptr %3, !1960, !DIExpression(), !1961)
  store i32 1, ptr %3, align 4, !dbg !1962
  br label %4, !dbg !1964

4:                                                ; preds = %10, %1
  %5 = load i32, ptr %3, align 4, !dbg !1965
  %6 = icmp sge i32 %5, 0, !dbg !1967
  br i1 %6, label %7, label %13, !dbg !1968

7:                                                ; preds = %4
  %8 = load ptr, ptr %2, align 8, !dbg !1969
  %9 = load i32, ptr %3, align 4, !dbg !1971
  call void @free_pool(ptr noundef %8, i32 noundef %9), !dbg !1972
  br label %10, !dbg !1973

10:                                               ; preds = %7
  %11 = load i32, ptr %3, align 4, !dbg !1974
  %12 = add nsw i32 %11, -1, !dbg !1974
  store i32 %12, ptr %3, align 4, !dbg !1974
  br label %4, !dbg !1975, !llvm.loop !1976

13:                                               ; preds = %4
  %14 = load ptr, ptr %2, align 8, !dbg !1978
  %15 = load ptr, ptr %2, align 8, !dbg !1979
  %16 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %15, i32 0, i32 1, !dbg !1980
  %17 = load ptr, ptr %16, align 8, !dbg !1980
  call void @jpeg_free_small(ptr noundef %14, ptr noundef %17, i64 noundef 160), !dbg !1981
  %18 = load ptr, ptr %2, align 8, !dbg !1982
  %19 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %18, i32 0, i32 1, !dbg !1983
  store ptr null, ptr %19, align 8, !dbg !1984
  %20 = load ptr, ptr %2, align 8, !dbg !1985
  call void @jpeg_mem_term(ptr noundef %20), !dbg !1986
  ret void, !dbg !1987
}

; Function Attrs: nounwind
declare ptr @getenv(ptr noundef) #2

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @out_of_memory(ptr noundef %0, i32 noundef %1) #0 !dbg !1988 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1989, !DIExpression(), !1990)
  store i32 %1, ptr %4, align 4
    #dbg_declare(ptr %4, !1991, !DIExpression(), !1992)
  %5 = load ptr, ptr %3, align 8, !dbg !1993
  %6 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %5, i32 0, i32 0, !dbg !1993
  %7 = load ptr, ptr %6, align 8, !dbg !1993
  %8 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %7, i32 0, i32 5, !dbg !1993
  store i32 53, ptr %8, align 8, !dbg !1993
  %9 = load i32, ptr %4, align 4, !dbg !1993
  %10 = load ptr, ptr %3, align 8, !dbg !1993
  %11 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %10, i32 0, i32 0, !dbg !1993
  %12 = load ptr, ptr %11, align 8, !dbg !1993
  %13 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %12, i32 0, i32 6, !dbg !1993
  %14 = getelementptr inbounds [8 x i32], ptr %13, i64 0, i64 0, !dbg !1993
  store i32 %9, ptr %14, align 4, !dbg !1993
  %15 = load ptr, ptr %3, align 8, !dbg !1993
  %16 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %15, i32 0, i32 0, !dbg !1993
  %17 = load ptr, ptr %16, align 8, !dbg !1993
  %18 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %17, i32 0, i32 0, !dbg !1993
  %19 = load ptr, ptr %18, align 8, !dbg !1993
  %20 = load ptr, ptr %3, align 8, !dbg !1993
  call void %19(ptr noundef %20), !dbg !1993
  ret void, !dbg !1994
}

declare ptr @jpeg_get_large(ptr noundef, i64 noundef) #1

declare i64 @jpeg_mem_available(ptr noundef, i64 noundef, i64 noundef, i64 noundef) #1

declare void @jpeg_open_backing_store(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @do_sarray_io(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !1995 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !1998, !DIExpression(), !1999)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !2000, !DIExpression(), !2001)
  store i32 %2, ptr %6, align 4
    #dbg_declare(ptr %6, !2002, !DIExpression(), !2003)
    #dbg_declare(ptr %7, !2004, !DIExpression(), !2005)
    #dbg_declare(ptr %8, !2006, !DIExpression(), !2007)
    #dbg_declare(ptr %9, !2008, !DIExpression(), !2009)
    #dbg_declare(ptr %10, !2010, !DIExpression(), !2011)
    #dbg_declare(ptr %11, !2012, !DIExpression(), !2013)
    #dbg_declare(ptr %12, !2014, !DIExpression(), !2015)
  %13 = load ptr, ptr %5, align 8, !dbg !2016
  %14 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %13, i32 0, i32 2, !dbg !2017
  %15 = load i32, ptr %14, align 4, !dbg !2017
  %16 = zext i32 %15 to i64, !dbg !2018
  %17 = mul i64 %16, 1, !dbg !2019
  store i64 %17, ptr %7, align 8, !dbg !2020
  %18 = load ptr, ptr %5, align 8, !dbg !2021
  %19 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %18, i32 0, i32 6, !dbg !2022
  %20 = load i32, ptr %19, align 4, !dbg !2022
  %21 = zext i32 %20 to i64, !dbg !2021
  %22 = load i64, ptr %7, align 8, !dbg !2023
  %23 = mul nsw i64 %21, %22, !dbg !2024
  store i64 %23, ptr %8, align 8, !dbg !2025
  store i64 0, ptr %12, align 8, !dbg !2026
  br label %24, !dbg !2028

24:                                               ; preds = %146, %3
  %25 = load i64, ptr %12, align 8, !dbg !2029
  %26 = load ptr, ptr %5, align 8, !dbg !2031
  %27 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %26, i32 0, i32 4, !dbg !2032
  %28 = load i32, ptr %27, align 4, !dbg !2032
  %29 = zext i32 %28 to i64, !dbg !2033
  %30 = icmp slt i64 %25, %29, !dbg !2034
  br i1 %30, label %31, label %153, !dbg !2035

31:                                               ; preds = %24
  %32 = load ptr, ptr %5, align 8, !dbg !2036
  %33 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %32, i32 0, i32 5, !dbg !2036
  %34 = load i32, ptr %33, align 8, !dbg !2036
  %35 = zext i32 %34 to i64, !dbg !2036
  %36 = load ptr, ptr %5, align 8, !dbg !2036
  %37 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %36, i32 0, i32 4, !dbg !2036
  %38 = load i32, ptr %37, align 4, !dbg !2036
  %39 = zext i32 %38 to i64, !dbg !2036
  %40 = load i64, ptr %12, align 8, !dbg !2036
  %41 = sub nsw i64 %39, %40, !dbg !2036
  %42 = icmp slt i64 %35, %41, !dbg !2036
  br i1 %42, label %43, label %48, !dbg !2036

43:                                               ; preds = %31
  %44 = load ptr, ptr %5, align 8, !dbg !2036
  %45 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %44, i32 0, i32 5, !dbg !2036
  %46 = load i32, ptr %45, align 8, !dbg !2036
  %47 = zext i32 %46 to i64, !dbg !2036
  br label %55, !dbg !2036

48:                                               ; preds = %31
  %49 = load ptr, ptr %5, align 8, !dbg !2036
  %50 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %49, i32 0, i32 4, !dbg !2036
  %51 = load i32, ptr %50, align 4, !dbg !2036
  %52 = zext i32 %51 to i64, !dbg !2036
  %53 = load i64, ptr %12, align 8, !dbg !2036
  %54 = sub nsw i64 %52, %53, !dbg !2036
  br label %55, !dbg !2036

55:                                               ; preds = %48, %43
  %56 = phi i64 [ %47, %43 ], [ %54, %48 ], !dbg !2036
  store i64 %56, ptr %10, align 8, !dbg !2038
  %57 = load ptr, ptr %5, align 8, !dbg !2039
  %58 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %57, i32 0, i32 6, !dbg !2040
  %59 = load i32, ptr %58, align 4, !dbg !2040
  %60 = zext i32 %59 to i64, !dbg !2041
  %61 = load i64, ptr %12, align 8, !dbg !2042
  %62 = add nsw i64 %60, %61, !dbg !2043
  store i64 %62, ptr %11, align 8, !dbg !2044
  %63 = load i64, ptr %10, align 8, !dbg !2045
  %64 = load ptr, ptr %5, align 8, !dbg !2045
  %65 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %64, i32 0, i32 7, !dbg !2045
  %66 = load i32, ptr %65, align 8, !dbg !2045
  %67 = zext i32 %66 to i64, !dbg !2045
  %68 = load i64, ptr %11, align 8, !dbg !2045
  %69 = sub nsw i64 %67, %68, !dbg !2045
  %70 = icmp slt i64 %63, %69, !dbg !2045
  br i1 %70, label %71, label %73, !dbg !2045

71:                                               ; preds = %55
  %72 = load i64, ptr %10, align 8, !dbg !2045
  br label %80, !dbg !2045

73:                                               ; preds = %55
  %74 = load ptr, ptr %5, align 8, !dbg !2045
  %75 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %74, i32 0, i32 7, !dbg !2045
  %76 = load i32, ptr %75, align 8, !dbg !2045
  %77 = zext i32 %76 to i64, !dbg !2045
  %78 = load i64, ptr %11, align 8, !dbg !2045
  %79 = sub nsw i64 %77, %78, !dbg !2045
  br label %80, !dbg !2045

80:                                               ; preds = %73, %71
  %81 = phi i64 [ %72, %71 ], [ %79, %73 ], !dbg !2045
  store i64 %81, ptr %10, align 8, !dbg !2046
  %82 = load i64, ptr %10, align 8, !dbg !2047
  %83 = load ptr, ptr %5, align 8, !dbg !2047
  %84 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %83, i32 0, i32 1, !dbg !2047
  %85 = load i32, ptr %84, align 8, !dbg !2047
  %86 = zext i32 %85 to i64, !dbg !2047
  %87 = load i64, ptr %11, align 8, !dbg !2047
  %88 = sub nsw i64 %86, %87, !dbg !2047
  %89 = icmp slt i64 %82, %88, !dbg !2047
  br i1 %89, label %90, label %92, !dbg !2047

90:                                               ; preds = %80
  %91 = load i64, ptr %10, align 8, !dbg !2047
  br label %99, !dbg !2047

92:                                               ; preds = %80
  %93 = load ptr, ptr %5, align 8, !dbg !2047
  %94 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %93, i32 0, i32 1, !dbg !2047
  %95 = load i32, ptr %94, align 8, !dbg !2047
  %96 = zext i32 %95 to i64, !dbg !2047
  %97 = load i64, ptr %11, align 8, !dbg !2047
  %98 = sub nsw i64 %96, %97, !dbg !2047
  br label %99, !dbg !2047

99:                                               ; preds = %92, %90
  %100 = phi i64 [ %91, %90 ], [ %98, %92 ], !dbg !2047
  store i64 %100, ptr %10, align 8, !dbg !2048
  %101 = load i64, ptr %10, align 8, !dbg !2049
  %102 = icmp sle i64 %101, 0, !dbg !2051
  br i1 %102, label %103, label %104, !dbg !2051

103:                                              ; preds = %99
  br label %153, !dbg !2052

104:                                              ; preds = %99
  %105 = load i64, ptr %10, align 8, !dbg !2053
  %106 = load i64, ptr %7, align 8, !dbg !2054
  %107 = mul nsw i64 %105, %106, !dbg !2055
  store i64 %107, ptr %9, align 8, !dbg !2056
  %108 = load i32, ptr %6, align 4, !dbg !2057
  %109 = icmp ne i32 %108, 0, !dbg !2057
  br i1 %109, label %110, label %126, !dbg !2057

110:                                              ; preds = %104
  %111 = load ptr, ptr %5, align 8, !dbg !2059
  %112 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %111, i32 0, i32 12, !dbg !2060
  %113 = getelementptr inbounds nuw %struct.backing_store_struct, ptr %112, i32 0, i32 1, !dbg !2061
  %114 = load ptr, ptr %113, align 8, !dbg !2061
  %115 = load ptr, ptr %4, align 8, !dbg !2062
  %116 = load ptr, ptr %5, align 8, !dbg !2063
  %117 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %116, i32 0, i32 12, !dbg !2064
  %118 = load ptr, ptr %5, align 8, !dbg !2065
  %119 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %118, i32 0, i32 0, !dbg !2066
  %120 = load ptr, ptr %119, align 8, !dbg !2066
  %121 = load i64, ptr %12, align 8, !dbg !2067
  %122 = getelementptr inbounds ptr, ptr %120, i64 %121, !dbg !2065
  %123 = load ptr, ptr %122, align 8, !dbg !2065
  %124 = load i64, ptr %8, align 8, !dbg !2068
  %125 = load i64, ptr %9, align 8, !dbg !2069
  call void %114(ptr noundef %115, ptr noundef %117, ptr noundef %123, i64 noundef %124, i64 noundef %125), !dbg !2070
  br label %142, !dbg !2070

126:                                              ; preds = %104
  %127 = load ptr, ptr %5, align 8, !dbg !2071
  %128 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %127, i32 0, i32 12, !dbg !2072
  %129 = getelementptr inbounds nuw %struct.backing_store_struct, ptr %128, i32 0, i32 0, !dbg !2073
  %130 = load ptr, ptr %129, align 8, !dbg !2073
  %131 = load ptr, ptr %4, align 8, !dbg !2074
  %132 = load ptr, ptr %5, align 8, !dbg !2075
  %133 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %132, i32 0, i32 12, !dbg !2076
  %134 = load ptr, ptr %5, align 8, !dbg !2077
  %135 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %134, i32 0, i32 0, !dbg !2078
  %136 = load ptr, ptr %135, align 8, !dbg !2078
  %137 = load i64, ptr %12, align 8, !dbg !2079
  %138 = getelementptr inbounds ptr, ptr %136, i64 %137, !dbg !2077
  %139 = load ptr, ptr %138, align 8, !dbg !2077
  %140 = load i64, ptr %8, align 8, !dbg !2080
  %141 = load i64, ptr %9, align 8, !dbg !2081
  call void %130(ptr noundef %131, ptr noundef %133, ptr noundef %139, i64 noundef %140, i64 noundef %141), !dbg !2082
  br label %142

142:                                              ; preds = %126, %110
  %143 = load i64, ptr %9, align 8, !dbg !2083
  %144 = load i64, ptr %8, align 8, !dbg !2084
  %145 = add nsw i64 %144, %143, !dbg !2084
  store i64 %145, ptr %8, align 8, !dbg !2084
  br label %146, !dbg !2085

146:                                              ; preds = %142
  %147 = load ptr, ptr %5, align 8, !dbg !2086
  %148 = getelementptr inbounds nuw %struct.jvirt_sarray_control, ptr %147, i32 0, i32 5, !dbg !2087
  %149 = load i32, ptr %148, align 8, !dbg !2087
  %150 = zext i32 %149 to i64, !dbg !2086
  %151 = load i64, ptr %12, align 8, !dbg !2088
  %152 = add nsw i64 %151, %150, !dbg !2088
  store i64 %152, ptr %12, align 8, !dbg !2088
  br label %24, !dbg !2089, !llvm.loop !2090

153:                                              ; preds = %103, %24
  ret void, !dbg !2092
}

declare void @jzero_far(ptr noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @do_barray_io(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !2093 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !2096, !DIExpression(), !2097)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !2098, !DIExpression(), !2099)
  store i32 %2, ptr %6, align 4
    #dbg_declare(ptr %6, !2100, !DIExpression(), !2101)
    #dbg_declare(ptr %7, !2102, !DIExpression(), !2103)
    #dbg_declare(ptr %8, !2104, !DIExpression(), !2105)
    #dbg_declare(ptr %9, !2106, !DIExpression(), !2107)
    #dbg_declare(ptr %10, !2108, !DIExpression(), !2109)
    #dbg_declare(ptr %11, !2110, !DIExpression(), !2111)
    #dbg_declare(ptr %12, !2112, !DIExpression(), !2113)
  %13 = load ptr, ptr %5, align 8, !dbg !2114
  %14 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %13, i32 0, i32 2, !dbg !2115
  %15 = load i32, ptr %14, align 4, !dbg !2115
  %16 = zext i32 %15 to i64, !dbg !2116
  %17 = mul i64 %16, 128, !dbg !2117
  store i64 %17, ptr %7, align 8, !dbg !2118
  %18 = load ptr, ptr %5, align 8, !dbg !2119
  %19 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %18, i32 0, i32 6, !dbg !2120
  %20 = load i32, ptr %19, align 4, !dbg !2120
  %21 = zext i32 %20 to i64, !dbg !2119
  %22 = load i64, ptr %7, align 8, !dbg !2121
  %23 = mul nsw i64 %21, %22, !dbg !2122
  store i64 %23, ptr %8, align 8, !dbg !2123
  store i64 0, ptr %12, align 8, !dbg !2124
  br label %24, !dbg !2126

24:                                               ; preds = %146, %3
  %25 = load i64, ptr %12, align 8, !dbg !2127
  %26 = load ptr, ptr %5, align 8, !dbg !2129
  %27 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %26, i32 0, i32 4, !dbg !2130
  %28 = load i32, ptr %27, align 4, !dbg !2130
  %29 = zext i32 %28 to i64, !dbg !2131
  %30 = icmp slt i64 %25, %29, !dbg !2132
  br i1 %30, label %31, label %153, !dbg !2133

31:                                               ; preds = %24
  %32 = load ptr, ptr %5, align 8, !dbg !2134
  %33 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %32, i32 0, i32 5, !dbg !2134
  %34 = load i32, ptr %33, align 8, !dbg !2134
  %35 = zext i32 %34 to i64, !dbg !2134
  %36 = load ptr, ptr %5, align 8, !dbg !2134
  %37 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %36, i32 0, i32 4, !dbg !2134
  %38 = load i32, ptr %37, align 4, !dbg !2134
  %39 = zext i32 %38 to i64, !dbg !2134
  %40 = load i64, ptr %12, align 8, !dbg !2134
  %41 = sub nsw i64 %39, %40, !dbg !2134
  %42 = icmp slt i64 %35, %41, !dbg !2134
  br i1 %42, label %43, label %48, !dbg !2134

43:                                               ; preds = %31
  %44 = load ptr, ptr %5, align 8, !dbg !2134
  %45 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %44, i32 0, i32 5, !dbg !2134
  %46 = load i32, ptr %45, align 8, !dbg !2134
  %47 = zext i32 %46 to i64, !dbg !2134
  br label %55, !dbg !2134

48:                                               ; preds = %31
  %49 = load ptr, ptr %5, align 8, !dbg !2134
  %50 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %49, i32 0, i32 4, !dbg !2134
  %51 = load i32, ptr %50, align 4, !dbg !2134
  %52 = zext i32 %51 to i64, !dbg !2134
  %53 = load i64, ptr %12, align 8, !dbg !2134
  %54 = sub nsw i64 %52, %53, !dbg !2134
  br label %55, !dbg !2134

55:                                               ; preds = %48, %43
  %56 = phi i64 [ %47, %43 ], [ %54, %48 ], !dbg !2134
  store i64 %56, ptr %10, align 8, !dbg !2136
  %57 = load ptr, ptr %5, align 8, !dbg !2137
  %58 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %57, i32 0, i32 6, !dbg !2138
  %59 = load i32, ptr %58, align 4, !dbg !2138
  %60 = zext i32 %59 to i64, !dbg !2139
  %61 = load i64, ptr %12, align 8, !dbg !2140
  %62 = add nsw i64 %60, %61, !dbg !2141
  store i64 %62, ptr %11, align 8, !dbg !2142
  %63 = load i64, ptr %10, align 8, !dbg !2143
  %64 = load ptr, ptr %5, align 8, !dbg !2143
  %65 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %64, i32 0, i32 7, !dbg !2143
  %66 = load i32, ptr %65, align 8, !dbg !2143
  %67 = zext i32 %66 to i64, !dbg !2143
  %68 = load i64, ptr %11, align 8, !dbg !2143
  %69 = sub nsw i64 %67, %68, !dbg !2143
  %70 = icmp slt i64 %63, %69, !dbg !2143
  br i1 %70, label %71, label %73, !dbg !2143

71:                                               ; preds = %55
  %72 = load i64, ptr %10, align 8, !dbg !2143
  br label %80, !dbg !2143

73:                                               ; preds = %55
  %74 = load ptr, ptr %5, align 8, !dbg !2143
  %75 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %74, i32 0, i32 7, !dbg !2143
  %76 = load i32, ptr %75, align 8, !dbg !2143
  %77 = zext i32 %76 to i64, !dbg !2143
  %78 = load i64, ptr %11, align 8, !dbg !2143
  %79 = sub nsw i64 %77, %78, !dbg !2143
  br label %80, !dbg !2143

80:                                               ; preds = %73, %71
  %81 = phi i64 [ %72, %71 ], [ %79, %73 ], !dbg !2143
  store i64 %81, ptr %10, align 8, !dbg !2144
  %82 = load i64, ptr %10, align 8, !dbg !2145
  %83 = load ptr, ptr %5, align 8, !dbg !2145
  %84 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %83, i32 0, i32 1, !dbg !2145
  %85 = load i32, ptr %84, align 8, !dbg !2145
  %86 = zext i32 %85 to i64, !dbg !2145
  %87 = load i64, ptr %11, align 8, !dbg !2145
  %88 = sub nsw i64 %86, %87, !dbg !2145
  %89 = icmp slt i64 %82, %88, !dbg !2145
  br i1 %89, label %90, label %92, !dbg !2145

90:                                               ; preds = %80
  %91 = load i64, ptr %10, align 8, !dbg !2145
  br label %99, !dbg !2145

92:                                               ; preds = %80
  %93 = load ptr, ptr %5, align 8, !dbg !2145
  %94 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %93, i32 0, i32 1, !dbg !2145
  %95 = load i32, ptr %94, align 8, !dbg !2145
  %96 = zext i32 %95 to i64, !dbg !2145
  %97 = load i64, ptr %11, align 8, !dbg !2145
  %98 = sub nsw i64 %96, %97, !dbg !2145
  br label %99, !dbg !2145

99:                                               ; preds = %92, %90
  %100 = phi i64 [ %91, %90 ], [ %98, %92 ], !dbg !2145
  store i64 %100, ptr %10, align 8, !dbg !2146
  %101 = load i64, ptr %10, align 8, !dbg !2147
  %102 = icmp sle i64 %101, 0, !dbg !2149
  br i1 %102, label %103, label %104, !dbg !2149

103:                                              ; preds = %99
  br label %153, !dbg !2150

104:                                              ; preds = %99
  %105 = load i64, ptr %10, align 8, !dbg !2151
  %106 = load i64, ptr %7, align 8, !dbg !2152
  %107 = mul nsw i64 %105, %106, !dbg !2153
  store i64 %107, ptr %9, align 8, !dbg !2154
  %108 = load i32, ptr %6, align 4, !dbg !2155
  %109 = icmp ne i32 %108, 0, !dbg !2155
  br i1 %109, label %110, label %126, !dbg !2155

110:                                              ; preds = %104
  %111 = load ptr, ptr %5, align 8, !dbg !2157
  %112 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %111, i32 0, i32 12, !dbg !2158
  %113 = getelementptr inbounds nuw %struct.backing_store_struct, ptr %112, i32 0, i32 1, !dbg !2159
  %114 = load ptr, ptr %113, align 8, !dbg !2159
  %115 = load ptr, ptr %4, align 8, !dbg !2160
  %116 = load ptr, ptr %5, align 8, !dbg !2161
  %117 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %116, i32 0, i32 12, !dbg !2162
  %118 = load ptr, ptr %5, align 8, !dbg !2163
  %119 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %118, i32 0, i32 0, !dbg !2164
  %120 = load ptr, ptr %119, align 8, !dbg !2164
  %121 = load i64, ptr %12, align 8, !dbg !2165
  %122 = getelementptr inbounds ptr, ptr %120, i64 %121, !dbg !2163
  %123 = load ptr, ptr %122, align 8, !dbg !2163
  %124 = load i64, ptr %8, align 8, !dbg !2166
  %125 = load i64, ptr %9, align 8, !dbg !2167
  call void %114(ptr noundef %115, ptr noundef %117, ptr noundef %123, i64 noundef %124, i64 noundef %125), !dbg !2168
  br label %142, !dbg !2168

126:                                              ; preds = %104
  %127 = load ptr, ptr %5, align 8, !dbg !2169
  %128 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %127, i32 0, i32 12, !dbg !2170
  %129 = getelementptr inbounds nuw %struct.backing_store_struct, ptr %128, i32 0, i32 0, !dbg !2171
  %130 = load ptr, ptr %129, align 8, !dbg !2171
  %131 = load ptr, ptr %4, align 8, !dbg !2172
  %132 = load ptr, ptr %5, align 8, !dbg !2173
  %133 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %132, i32 0, i32 12, !dbg !2174
  %134 = load ptr, ptr %5, align 8, !dbg !2175
  %135 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %134, i32 0, i32 0, !dbg !2176
  %136 = load ptr, ptr %135, align 8, !dbg !2176
  %137 = load i64, ptr %12, align 8, !dbg !2177
  %138 = getelementptr inbounds ptr, ptr %136, i64 %137, !dbg !2175
  %139 = load ptr, ptr %138, align 8, !dbg !2175
  %140 = load i64, ptr %8, align 8, !dbg !2178
  %141 = load i64, ptr %9, align 8, !dbg !2179
  call void %130(ptr noundef %131, ptr noundef %133, ptr noundef %139, i64 noundef %140, i64 noundef %141), !dbg !2180
  br label %142

142:                                              ; preds = %126, %110
  %143 = load i64, ptr %9, align 8, !dbg !2181
  %144 = load i64, ptr %8, align 8, !dbg !2182
  %145 = add nsw i64 %144, %143, !dbg !2182
  store i64 %145, ptr %8, align 8, !dbg !2182
  br label %146, !dbg !2183

146:                                              ; preds = %142
  %147 = load ptr, ptr %5, align 8, !dbg !2184
  %148 = getelementptr inbounds nuw %struct.jvirt_barray_control, ptr %147, i32 0, i32 5, !dbg !2185
  %149 = load i32, ptr %148, align 8, !dbg !2185
  %150 = zext i32 %149 to i64, !dbg !2184
  %151 = load i64, ptr %12, align 8, !dbg !2186
  %152 = add nsw i64 %151, %150, !dbg !2186
  store i64 %152, ptr %12, align 8, !dbg !2186
  br label %24, !dbg !2187, !llvm.loop !2188

153:                                              ; preds = %103, %24
  ret void, !dbg !2190
}

declare void @jpeg_free_large(ptr noundef, ptr noundef, i64 noundef) #1

declare void @jpeg_free_small(ptr noundef, ptr noundef, i64 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!14}
!llvm.module.flags = !{!411, !412, !413, !414, !415, !416, !417}
!llvm.ident = !{!418}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1103, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jmemmgr.c", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "110d54401fea854ac08f4fd63e6a353f")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 8)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1106, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 6)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "first_pool_slop", scope: !14, file: !2, line: 241, type: !409, isLocal: true, isDefinition: true)
!14 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !15, retainedTypes: !141, globals: !406, splitDebugInlining: false, nameTableKind: None)
!15 = !{!16}
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !17, line: 33, baseType: !18, size: 32, elements: !19)
!17 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jerror.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "a232f2460ff0049c960896e323d8710b")
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !{!20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140}
!20 = !DIEnumerator(name: "JMSG_NOMESSAGE", value: 0)
!21 = !DIEnumerator(name: "JERR_ARITH_NOTIMPL", value: 1)
!22 = !DIEnumerator(name: "JERR_BAD_ALIGN_TYPE", value: 2)
!23 = !DIEnumerator(name: "JERR_BAD_ALLOC_CHUNK", value: 3)
!24 = !DIEnumerator(name: "JERR_BAD_BUFFER_MODE", value: 4)
!25 = !DIEnumerator(name: "JERR_BAD_COMPONENT_ID", value: 5)
!26 = !DIEnumerator(name: "JERR_BAD_DCTSIZE", value: 6)
!27 = !DIEnumerator(name: "JERR_BAD_IN_COLORSPACE", value: 7)
!28 = !DIEnumerator(name: "JERR_BAD_J_COLORSPACE", value: 8)
!29 = !DIEnumerator(name: "JERR_BAD_LENGTH", value: 9)
!30 = !DIEnumerator(name: "JERR_BAD_LIB_VERSION", value: 10)
!31 = !DIEnumerator(name: "JERR_BAD_MCU_SIZE", value: 11)
!32 = !DIEnumerator(name: "JERR_BAD_POOL_ID", value: 12)
!33 = !DIEnumerator(name: "JERR_BAD_PRECISION", value: 13)
!34 = !DIEnumerator(name: "JERR_BAD_PROGRESSION", value: 14)
!35 = !DIEnumerator(name: "JERR_BAD_PROG_SCRIPT", value: 15)
!36 = !DIEnumerator(name: "JERR_BAD_SAMPLING", value: 16)
!37 = !DIEnumerator(name: "JERR_BAD_SCAN_SCRIPT", value: 17)
!38 = !DIEnumerator(name: "JERR_BAD_STATE", value: 18)
!39 = !DIEnumerator(name: "JERR_BAD_STRUCT_SIZE", value: 19)
!40 = !DIEnumerator(name: "JERR_BAD_VIRTUAL_ACCESS", value: 20)
!41 = !DIEnumerator(name: "JERR_BUFFER_SIZE", value: 21)
!42 = !DIEnumerator(name: "JERR_CANT_SUSPEND", value: 22)
!43 = !DIEnumerator(name: "JERR_CCIR601_NOTIMPL", value: 23)
!44 = !DIEnumerator(name: "JERR_COMPONENT_COUNT", value: 24)
!45 = !DIEnumerator(name: "JERR_CONVERSION_NOTIMPL", value: 25)
!46 = !DIEnumerator(name: "JERR_DAC_INDEX", value: 26)
!47 = !DIEnumerator(name: "JERR_DAC_VALUE", value: 27)
!48 = !DIEnumerator(name: "JERR_DHT_COUNTS", value: 28)
!49 = !DIEnumerator(name: "JERR_DHT_INDEX", value: 29)
!50 = !DIEnumerator(name: "JERR_DQT_INDEX", value: 30)
!51 = !DIEnumerator(name: "JERR_EMPTY_IMAGE", value: 31)
!52 = !DIEnumerator(name: "JERR_EMS_READ", value: 32)
!53 = !DIEnumerator(name: "JERR_EMS_WRITE", value: 33)
!54 = !DIEnumerator(name: "JERR_EOI_EXPECTED", value: 34)
!55 = !DIEnumerator(name: "JERR_FILE_READ", value: 35)
!56 = !DIEnumerator(name: "JERR_FILE_WRITE", value: 36)
!57 = !DIEnumerator(name: "JERR_FRACT_SAMPLE_NOTIMPL", value: 37)
!58 = !DIEnumerator(name: "JERR_HUFF_CLEN_OVERFLOW", value: 38)
!59 = !DIEnumerator(name: "JERR_HUFF_MISSING_CODE", value: 39)
!60 = !DIEnumerator(name: "JERR_IMAGE_TOO_BIG", value: 40)
!61 = !DIEnumerator(name: "JERR_INPUT_EMPTY", value: 41)
!62 = !DIEnumerator(name: "JERR_INPUT_EOF", value: 42)
!63 = !DIEnumerator(name: "JERR_MISMATCHED_QUANT_TABLE", value: 43)
!64 = !DIEnumerator(name: "JERR_MISSING_DATA", value: 44)
!65 = !DIEnumerator(name: "JERR_MODE_CHANGE", value: 45)
!66 = !DIEnumerator(name: "JERR_NOTIMPL", value: 46)
!67 = !DIEnumerator(name: "JERR_NOT_COMPILED", value: 47)
!68 = !DIEnumerator(name: "JERR_NO_BACKING_STORE", value: 48)
!69 = !DIEnumerator(name: "JERR_NO_HUFF_TABLE", value: 49)
!70 = !DIEnumerator(name: "JERR_NO_IMAGE", value: 50)
!71 = !DIEnumerator(name: "JERR_NO_QUANT_TABLE", value: 51)
!72 = !DIEnumerator(name: "JERR_NO_SOI", value: 52)
!73 = !DIEnumerator(name: "JERR_OUT_OF_MEMORY", value: 53)
!74 = !DIEnumerator(name: "JERR_QUANT_COMPONENTS", value: 54)
!75 = !DIEnumerator(name: "JERR_QUANT_FEW_COLORS", value: 55)
!76 = !DIEnumerator(name: "JERR_QUANT_MANY_COLORS", value: 56)
!77 = !DIEnumerator(name: "JERR_SOF_DUPLICATE", value: 57)
!78 = !DIEnumerator(name: "JERR_SOF_NO_SOS", value: 58)
!79 = !DIEnumerator(name: "JERR_SOF_UNSUPPORTED", value: 59)
!80 = !DIEnumerator(name: "JERR_SOI_DUPLICATE", value: 60)
!81 = !DIEnumerator(name: "JERR_SOS_NO_SOF", value: 61)
!82 = !DIEnumerator(name: "JERR_TFILE_CREATE", value: 62)
!83 = !DIEnumerator(name: "JERR_TFILE_READ", value: 63)
!84 = !DIEnumerator(name: "JERR_TFILE_SEEK", value: 64)
!85 = !DIEnumerator(name: "JERR_TFILE_WRITE", value: 65)
!86 = !DIEnumerator(name: "JERR_TOO_LITTLE_DATA", value: 66)
!87 = !DIEnumerator(name: "JERR_UNKNOWN_MARKER", value: 67)
!88 = !DIEnumerator(name: "JERR_VIRTUAL_BUG", value: 68)
!89 = !DIEnumerator(name: "JERR_WIDTH_OVERFLOW", value: 69)
!90 = !DIEnumerator(name: "JERR_XMS_READ", value: 70)
!91 = !DIEnumerator(name: "JERR_XMS_WRITE", value: 71)
!92 = !DIEnumerator(name: "JMSG_COPYRIGHT", value: 72)
!93 = !DIEnumerator(name: "JMSG_VERSION", value: 73)
!94 = !DIEnumerator(name: "JTRC_16BIT_TABLES", value: 74)
!95 = !DIEnumerator(name: "JTRC_ADOBE", value: 75)
!96 = !DIEnumerator(name: "JTRC_APP0", value: 76)
!97 = !DIEnumerator(name: "JTRC_APP14", value: 77)
!98 = !DIEnumerator(name: "JTRC_DAC", value: 78)
!99 = !DIEnumerator(name: "JTRC_DHT", value: 79)
!100 = !DIEnumerator(name: "JTRC_DQT", value: 80)
!101 = !DIEnumerator(name: "JTRC_DRI", value: 81)
!102 = !DIEnumerator(name: "JTRC_EMS_CLOSE", value: 82)
!103 = !DIEnumerator(name: "JTRC_EMS_OPEN", value: 83)
!104 = !DIEnumerator(name: "JTRC_EOI", value: 84)
!105 = !DIEnumerator(name: "JTRC_HUFFBITS", value: 85)
!106 = !DIEnumerator(name: "JTRC_JFIF", value: 86)
!107 = !DIEnumerator(name: "JTRC_JFIF_BADTHUMBNAILSIZE", value: 87)
!108 = !DIEnumerator(name: "JTRC_JFIF_MINOR", value: 88)
!109 = !DIEnumerator(name: "JTRC_JFIF_THUMBNAIL", value: 89)
!110 = !DIEnumerator(name: "JTRC_MISC_MARKER", value: 90)
!111 = !DIEnumerator(name: "JTRC_PARMLESS_MARKER", value: 91)
!112 = !DIEnumerator(name: "JTRC_QUANTVALS", value: 92)
!113 = !DIEnumerator(name: "JTRC_QUANT_3_NCOLORS", value: 93)
!114 = !DIEnumerator(name: "JTRC_QUANT_NCOLORS", value: 94)
!115 = !DIEnumerator(name: "JTRC_QUANT_SELECTED", value: 95)
!116 = !DIEnumerator(name: "JTRC_RECOVERY_ACTION", value: 96)
!117 = !DIEnumerator(name: "JTRC_RST", value: 97)
!118 = !DIEnumerator(name: "JTRC_SMOOTH_NOTIMPL", value: 98)
!119 = !DIEnumerator(name: "JTRC_SOF", value: 99)
!120 = !DIEnumerator(name: "JTRC_SOF_COMPONENT", value: 100)
!121 = !DIEnumerator(name: "JTRC_SOI", value: 101)
!122 = !DIEnumerator(name: "JTRC_SOS", value: 102)
!123 = !DIEnumerator(name: "JTRC_SOS_COMPONENT", value: 103)
!124 = !DIEnumerator(name: "JTRC_SOS_PARAMS", value: 104)
!125 = !DIEnumerator(name: "JTRC_TFILE_CLOSE", value: 105)
!126 = !DIEnumerator(name: "JTRC_TFILE_OPEN", value: 106)
!127 = !DIEnumerator(name: "JTRC_UNKNOWN_IDS", value: 107)
!128 = !DIEnumerator(name: "JTRC_XMS_CLOSE", value: 108)
!129 = !DIEnumerator(name: "JTRC_XMS_OPEN", value: 109)
!130 = !DIEnumerator(name: "JWRN_ADOBE_XFORM", value: 110)
!131 = !DIEnumerator(name: "JWRN_BOGUS_PROGRESSION", value: 111)
!132 = !DIEnumerator(name: "JWRN_EXTRANEOUS_DATA", value: 112)
!133 = !DIEnumerator(name: "JWRN_HIT_MARKER", value: 113)
!134 = !DIEnumerator(name: "JWRN_HUFF_BAD_CODE", value: 114)
!135 = !DIEnumerator(name: "JWRN_JFIF_MAJOR", value: 115)
!136 = !DIEnumerator(name: "JWRN_JPEG_EOF", value: 116)
!137 = !DIEnumerator(name: "JWRN_MUST_RESYNC", value: 117)
!138 = !DIEnumerator(name: "JWRN_NOT_SEQUENTIAL", value: 118)
!139 = !DIEnumerator(name: "JWRN_TOO_MUCH_DATA", value: 119)
!140 = !DIEnumerator(name: "JMSG_LASTMSGCODE", value: 120)
!141 = !{!142, !145, !146, !367, !200, !375, !169, !391, !213, !206, !208, !218, !220, !232, !327}
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !143, line: 18, baseType: !144)
!143 = !DIFile(filename: "/usr/local/lib/clang/20/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!144 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!145 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_common_ptr", file: !147, line: 248, baseType: !148)
!147 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jpeglib.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "2a2b23235fe587b10147d741e3371e67")
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_common_struct", file: !147, line: 240, size: 256, elements: !150)
!150 = !{!151, !192, !356, !365, !366}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !149, file: !147, line: 241, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_error_mgr", file: !147, line: 618, size: 1344, elements: !154)
!154 = !{!155, !159, !164, !165, !170, !171, !172, !181, !182, !183, !188, !189, !190, !191}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "error_exit", scope: !153, file: !147, line: 620, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DISubroutineType(types: !158)
!158 = !{null, !146}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "emit_message", scope: !153, file: !147, line: 622, baseType: !160, size: 64, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DISubroutineType(types: !162)
!162 = !{null, !146, !163}
!163 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "output_message", scope: !153, file: !147, line: 624, baseType: !156, size: 64, offset: 128)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "format_message", scope: !153, file: !147, line: 626, baseType: !166, size: 64, offset: 192)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DISubroutineType(types: !168)
!168 = !{null, !146, !169}
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "reset_error_mgr", scope: !153, file: !147, line: 629, baseType: !156, size: 64, offset: 256)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "msg_code", scope: !153, file: !147, line: 634, baseType: !163, size: 32, offset: 320)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "msg_parm", scope: !153, file: !147, line: 639, baseType: !173, size: 640, offset: 352)
!173 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !153, file: !147, line: 636, size: 640, elements: !174)
!174 = !{!175, !177}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !173, file: !147, line: 637, baseType: !176, size: 256)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 256, elements: !5)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !173, file: !147, line: 638, baseType: !178, size: 640)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 640, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 80)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "trace_level", scope: !153, file: !147, line: 643, baseType: !163, size: 32, offset: 992)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "num_warnings", scope: !153, file: !147, line: 651, baseType: !145, size: 64, offset: 1024)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_message_table", scope: !153, file: !147, line: 663, baseType: !184, size: 64, offset: 1088)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !186)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "last_jpeg_message", scope: !153, file: !147, line: 664, baseType: !163, size: 32, offset: 1152)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "addon_message_table", scope: !153, file: !147, line: 668, baseType: !184, size: 64, offset: 1216)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "first_addon_message", scope: !153, file: !147, line: 669, baseType: !163, size: 32, offset: 1280)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "last_addon_message", scope: !153, file: !147, line: 670, baseType: !163, size: 32, offset: 1312)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !149, file: !147, line: 241, baseType: !193, size: 64, offset: 64)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_memory_mgr", file: !147, line: 731, size: 768, elements: !195)
!195 = !{!196, !201, !202, !214, !228, !323, !344, !345, !349, !353, !354, !355}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_small", scope: !194, file: !147, line: 733, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{!200, !146, !163, !142}
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_large", scope: !194, file: !147, line: 735, baseType: !197, size: 64, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_sarray", scope: !194, file: !147, line: 737, baseType: !203, size: 64, offset: 128)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DISubroutineType(types: !205)
!205 = !{!206, !146, !163, !213, !213}
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPARRAY", file: !147, line: 67, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPROW", file: !147, line: 66, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPLE", file: !211, line: 59, baseType: !212)
!211 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jmorecfg.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "56a0eda58fafa6bdd5498f702a998c09")
!212 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "JDIMENSION", file: !211, line: 171, baseType: !18)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_barray", scope: !194, file: !147, line: 740, baseType: !215, size: 64, offset: 192)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!218, !146, !163, !213, !213}
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCKARRAY", file: !147, line: 72, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCKROW", file: !147, line: 71, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCK", file: !147, line: 70, baseType: !223)
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 1024, elements: !226)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "JCOEF", file: !211, line: 99, baseType: !225)
!225 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!226 = !{!227}
!227 = !DISubrange(count: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_sarray", scope: !194, file: !147, line: 743, baseType: !229, size: 64, offset: 256)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{!232, !146, !163, !245, !213, !213, !213}
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_sarray_ptr", file: !147, line: 727, baseType: !233)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_sarray_control", file: !2, line: 150, size: 1216, elements: !235)
!235 = !{!236, !237, !238, !239, !240, !241, !242, !243, !244, !246, !247, !248, !249}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "mem_buffer", scope: !234, file: !2, line: 151, baseType: !206, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "rows_in_array", scope: !234, file: !2, line: 152, baseType: !213, size: 32, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "samplesperrow", scope: !234, file: !2, line: 153, baseType: !213, size: 32, offset: 96)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "maxaccess", scope: !234, file: !2, line: 154, baseType: !213, size: 32, offset: 128)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "rows_in_mem", scope: !234, file: !2, line: 155, baseType: !213, size: 32, offset: 160)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "rowsperchunk", scope: !234, file: !2, line: 156, baseType: !213, size: 32, offset: 192)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "cur_start_row", scope: !234, file: !2, line: 157, baseType: !213, size: 32, offset: 224)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "first_undef_row", scope: !234, file: !2, line: 158, baseType: !213, size: 32, offset: 256)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "pre_zero", scope: !234, file: !2, line: 159, baseType: !245, size: 32, offset: 288)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "boolean", file: !211, line: 227, baseType: !163)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "dirty", scope: !234, file: !2, line: 160, baseType: !245, size: 32, offset: 320)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "b_s_open", scope: !234, file: !2, line: 161, baseType: !245, size: 32, offset: 352)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !234, file: !2, line: 162, baseType: !232, size: 64, offset: 384)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "b_s_info", scope: !234, file: !2, line: 163, baseType: !250, size: 768, offset: 448)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "backing_store_info", file: !251, line: 155, baseType: !252)
!251 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jmemsys.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "6d2a46c951025f2d29fe74061c465221")
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_store_struct", file: !251, line: 132, size: 768, elements: !253)
!253 = !{!254, !260, !261, !265, !321}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "read_backing_store", scope: !252, file: !251, line: 134, baseType: !255, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DISubroutineType(types: !257)
!257 = !{null, !146, !258, !200, !145, !145}
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "backing_store_ptr", file: !251, line: 130, baseType: !259)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "write_backing_store", scope: !252, file: !251, line: 138, baseType: !255, size: 64, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "close_backing_store", scope: !252, file: !251, line: 142, baseType: !262, size: 64, offset: 128)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{null, !146, !258}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "temp_file", scope: !252, file: !251, line: 152, baseType: !266, size: 64, offset: 192)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !268, line: 7, baseType: !269)
!268 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !270, line: 49, size: 1728, elements: !271)
!270 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!271 = !{!272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !287, !289, !290, !291, !294, !296, !298, !302, !305, !307, !310, !313, !314, !315, !316, !317}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !269, file: !270, line: 51, baseType: !163, size: 32)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !269, file: !270, line: 54, baseType: !169, size: 64, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !269, file: !270, line: 55, baseType: !169, size: 64, offset: 128)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !269, file: !270, line: 56, baseType: !169, size: 64, offset: 192)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !269, file: !270, line: 57, baseType: !169, size: 64, offset: 256)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !269, file: !270, line: 58, baseType: !169, size: 64, offset: 320)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !269, file: !270, line: 59, baseType: !169, size: 64, offset: 384)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !269, file: !270, line: 60, baseType: !169, size: 64, offset: 448)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !269, file: !270, line: 61, baseType: !169, size: 64, offset: 512)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !269, file: !270, line: 64, baseType: !169, size: 64, offset: 576)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !269, file: !270, line: 65, baseType: !169, size: 64, offset: 640)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !269, file: !270, line: 66, baseType: !169, size: 64, offset: 704)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !269, file: !270, line: 68, baseType: !285, size: 64, offset: 768)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !270, line: 36, flags: DIFlagFwdDecl)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !269, file: !270, line: 70, baseType: !288, size: 64, offset: 832)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !269, file: !270, line: 72, baseType: !163, size: 32, offset: 896)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !269, file: !270, line: 73, baseType: !163, size: 32, offset: 928)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !269, file: !270, line: 74, baseType: !292, size: 64, offset: 960)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !293, line: 152, baseType: !145)
!293 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !269, file: !270, line: 77, baseType: !295, size: 16, offset: 1024)
!295 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !269, file: !270, line: 78, baseType: !297, size: 8, offset: 1040)
!297 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !269, file: !270, line: 79, baseType: !299, size: 8, offset: 1048)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !300)
!300 = !{!301}
!301 = !DISubrange(count: 1)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !269, file: !270, line: 81, baseType: !303, size: 64, offset: 1088)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !270, line: 43, baseType: null)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !269, file: !270, line: 89, baseType: !306, size: 64, offset: 1152)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !293, line: 153, baseType: !145)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !269, file: !270, line: 91, baseType: !308, size: 64, offset: 1216)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !270, line: 37, flags: DIFlagFwdDecl)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !269, file: !270, line: 92, baseType: !311, size: 64, offset: 1280)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !270, line: 38, flags: DIFlagFwdDecl)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !269, file: !270, line: 93, baseType: !288, size: 64, offset: 1344)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !269, file: !270, line: 94, baseType: !200, size: 64, offset: 1408)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !269, file: !270, line: 95, baseType: !142, size: 64, offset: 1472)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !269, file: !270, line: 96, baseType: !163, size: 32, offset: 1536)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !269, file: !270, line: 98, baseType: !318, size: 160, offset: 1568)
!318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !319)
!319 = !{!320}
!320 = !DISubrange(count: 20)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "temp_name", scope: !252, file: !251, line: 153, baseType: !322, size: 512, offset: 256)
!322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !226)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_barray", scope: !194, file: !147, line: 749, baseType: !324, size: 64, offset: 320)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{!327, !146, !163, !245, !213, !213, !213}
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_barray_ptr", file: !147, line: 728, baseType: !328)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_barray_control", file: !2, line: 166, size: 1216, elements: !330)
!330 = !{!331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "mem_buffer", scope: !329, file: !2, line: 167, baseType: !218, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "rows_in_array", scope: !329, file: !2, line: 168, baseType: !213, size: 32, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "blocksperrow", scope: !329, file: !2, line: 169, baseType: !213, size: 32, offset: 96)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "maxaccess", scope: !329, file: !2, line: 170, baseType: !213, size: 32, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "rows_in_mem", scope: !329, file: !2, line: 171, baseType: !213, size: 32, offset: 160)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "rowsperchunk", scope: !329, file: !2, line: 172, baseType: !213, size: 32, offset: 192)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "cur_start_row", scope: !329, file: !2, line: 173, baseType: !213, size: 32, offset: 224)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "first_undef_row", scope: !329, file: !2, line: 174, baseType: !213, size: 32, offset: 256)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "pre_zero", scope: !329, file: !2, line: 175, baseType: !245, size: 32, offset: 288)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "dirty", scope: !329, file: !2, line: 176, baseType: !245, size: 32, offset: 320)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "b_s_open", scope: !329, file: !2, line: 177, baseType: !245, size: 32, offset: 352)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !329, file: !2, line: 178, baseType: !327, size: 64, offset: 384)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "b_s_info", scope: !329, file: !2, line: 179, baseType: !250, size: 768, offset: 448)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "realize_virt_arrays", scope: !194, file: !147, line: 755, baseType: !156, size: 64, offset: 384)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_sarray", scope: !194, file: !147, line: 756, baseType: !346, size: 64, offset: 448)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DISubroutineType(types: !348)
!348 = !{!206, !146, !232, !213, !213, !245}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_barray", scope: !194, file: !147, line: 761, baseType: !350, size: 64, offset: 512)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DISubroutineType(types: !352)
!352 = !{!218, !146, !327, !213, !213, !245}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "free_pool", scope: !194, file: !147, line: 766, baseType: !160, size: 64, offset: 576)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "self_destruct", scope: !194, file: !147, line: 767, baseType: !156, size: 64, offset: 640)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "max_memory_to_use", scope: !194, file: !147, line: 774, baseType: !145, size: 64, offset: 704)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !149, file: !147, line: 241, baseType: !357, size: 64, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_progress_mgr", file: !147, line: 676, size: 256, elements: !359)
!359 = !{!360, !361, !362, !363, !364}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !358, file: !147, line: 677, baseType: !156, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "pass_counter", scope: !358, file: !147, line: 679, baseType: !145, size: 64, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "pass_limit", scope: !358, file: !147, line: 680, baseType: !145, size: 64, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "completed_passes", scope: !358, file: !147, line: 681, baseType: !163, size: 32, offset: 192)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "total_passes", scope: !358, file: !147, line: 682, baseType: !163, size: 32, offset: 224)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !149, file: !147, line: 241, baseType: !245, size: 32, offset: 192)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !149, file: !147, line: 241, baseType: !163, size: 32, offset: 224)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "my_mem_ptr", file: !2, line: 140, baseType: !368)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "my_memory_mgr", file: !2, line: 138, baseType: !370)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 116, size: 1280, elements: !371)
!371 = !{!372, !373, !389, !402, !403, !404, !405}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "pub", scope: !370, file: !2, line: 117, baseType: !194, size: 768)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "small_list", scope: !370, file: !2, line: 120, baseType: !374, size: 128, offset: 768)
!374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !375, size: 128, elements: !387)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "small_pool_ptr", file: !2, line: 89, baseType: !376)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "small_pool_struct", file: !2, line: 91, size: 192, elements: !378)
!378 = !{!379, !385}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !377, file: !2, line: 96, baseType: !380, size: 192)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !377, file: !2, line: 92, size: 192, elements: !381)
!381 = !{!382, !383, !384}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !380, file: !2, line: 93, baseType: !375, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_used", scope: !380, file: !2, line: 94, baseType: !142, size: 64, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_left", scope: !380, file: !2, line: 95, baseType: !142, size: 64, offset: 128)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !377, file: !2, line: 97, baseType: !386, size: 64)
!386 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!387 = !{!388}
!388 = !DISubrange(count: 2)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "large_list", scope: !370, file: !2, line: 121, baseType: !390, size: 128, offset: 896)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !391, size: 128, elements: !387)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "large_pool_ptr", file: !2, line: 100, baseType: !392)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "large_pool_struct", file: !2, line: 102, size: 192, elements: !394)
!394 = !{!395, !401}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !393, file: !2, line: 107, baseType: !396, size: 192)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !393, file: !2, line: 103, size: 192, elements: !397)
!397 = !{!398, !399, !400}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !396, file: !2, line: 104, baseType: !391, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_used", scope: !396, file: !2, line: 105, baseType: !142, size: 64, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_left", scope: !396, file: !2, line: 106, baseType: !142, size: 64, offset: 128)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !393, file: !2, line: 108, baseType: !386, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "virt_sarray_list", scope: !370, file: !2, line: 128, baseType: !232, size: 64, offset: 1024)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "virt_barray_list", scope: !370, file: !2, line: 129, baseType: !327, size: 64, offset: 1088)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "total_space_allocated", scope: !370, file: !2, line: 132, baseType: !145, size: 64, offset: 1152)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "last_rowsperchunk", scope: !370, file: !2, line: 137, baseType: !213, size: 32, offset: 1216)
!406 = !{!0, !7, !12, !407}
!407 = !DIGlobalVariableExpression(var: !408, expr: !DIExpression())
!408 = distinct !DIGlobalVariable(name: "extra_pool_slop", scope: !14, file: !2, line: 247, type: !409, isLocal: true, isDefinition: true)
!409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 128, elements: !387)
!410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !142)
!411 = !{i32 7, !"Dwarf Version", i32 5}
!412 = !{i32 2, !"Debug Info Version", i32 3}
!413 = !{i32 1, !"wchar_size", i32 4}
!414 = !{i32 8, !"PIC Level", i32 2}
!415 = !{i32 7, !"PIE Level", i32 2}
!416 = !{i32 7, !"uwtable", i32 2}
!417 = !{i32 7, !"frame-pointer", i32 2}
!418 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!419 = distinct !DISubprogram(name: "jinit_memory_mgr", scope: !2, file: !2, line: 1028, type: !157, scopeLine: 1029, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !420)
!420 = !{}
!421 = !DILocalVariable(name: "cinfo", arg: 1, scope: !419, file: !2, line: 1028, type: !146)
!422 = !DILocation(line: 1028, column: 32, scope: !419)
!423 = !DILocalVariable(name: "mem", scope: !419, file: !2, line: 1030, type: !367)
!424 = !DILocation(line: 1030, column: 14, scope: !419)
!425 = !DILocalVariable(name: "max_to_use", scope: !419, file: !2, line: 1031, type: !145)
!426 = !DILocation(line: 1031, column: 8, scope: !419)
!427 = !DILocalVariable(name: "pool", scope: !419, file: !2, line: 1032, type: !163)
!428 = !DILocation(line: 1032, column: 7, scope: !419)
!429 = !DILocalVariable(name: "test_mac", scope: !419, file: !2, line: 1033, type: !142)
!430 = !DILocation(line: 1033, column: 10, scope: !419)
!431 = !DILocation(line: 1035, column: 3, scope: !419)
!432 = !DILocation(line: 1035, column: 10, scope: !419)
!433 = !DILocation(line: 1035, column: 14, scope: !419)
!434 = !DILocation(line: 1051, column: 12, scope: !419)
!435 = !DILocation(line: 1052, column: 14, scope: !436)
!436 = distinct !DILexicalBlock(scope: !419, file: !2, line: 1052, column: 7)
!437 = !DILocation(line: 1052, column: 23, scope: !436)
!438 = !DILocation(line: 1052, column: 42, scope: !436)
!439 = !DILocation(line: 1054, column: 5, scope: !436)
!440 = !DILocation(line: 1056, column: 30, scope: !419)
!441 = !DILocation(line: 1056, column: 16, scope: !419)
!442 = !DILocation(line: 1056, column: 14, scope: !419)
!443 = !DILocation(line: 1059, column: 37, scope: !419)
!444 = !DILocation(line: 1059, column: 22, scope: !419)
!445 = !DILocation(line: 1059, column: 7, scope: !419)
!446 = !DILocation(line: 1061, column: 7, scope: !447)
!447 = distinct !DILexicalBlock(scope: !419, file: !2, line: 1061, column: 7)
!448 = !DILocation(line: 1061, column: 11, scope: !447)
!449 = !DILocation(line: 1062, column: 19, scope: !450)
!450 = distinct !DILexicalBlock(scope: !447, file: !2, line: 1061, column: 20)
!451 = !DILocation(line: 1062, column: 5, scope: !450)
!452 = !DILocation(line: 1063, column: 5, scope: !450)
!453 = !DILocation(line: 1064, column: 3, scope: !450)
!454 = !DILocation(line: 1067, column: 3, scope: !419)
!455 = !DILocation(line: 1067, column: 8, scope: !419)
!456 = !DILocation(line: 1067, column: 12, scope: !419)
!457 = !DILocation(line: 1067, column: 24, scope: !419)
!458 = !DILocation(line: 1068, column: 3, scope: !419)
!459 = !DILocation(line: 1068, column: 8, scope: !419)
!460 = !DILocation(line: 1068, column: 12, scope: !419)
!461 = !DILocation(line: 1068, column: 24, scope: !419)
!462 = !DILocation(line: 1069, column: 3, scope: !419)
!463 = !DILocation(line: 1069, column: 8, scope: !419)
!464 = !DILocation(line: 1069, column: 12, scope: !419)
!465 = !DILocation(line: 1069, column: 25, scope: !419)
!466 = !DILocation(line: 1070, column: 3, scope: !419)
!467 = !DILocation(line: 1070, column: 8, scope: !419)
!468 = !DILocation(line: 1070, column: 12, scope: !419)
!469 = !DILocation(line: 1070, column: 25, scope: !419)
!470 = !DILocation(line: 1071, column: 3, scope: !419)
!471 = !DILocation(line: 1071, column: 8, scope: !419)
!472 = !DILocation(line: 1071, column: 12, scope: !419)
!473 = !DILocation(line: 1071, column: 32, scope: !419)
!474 = !DILocation(line: 1072, column: 3, scope: !419)
!475 = !DILocation(line: 1072, column: 8, scope: !419)
!476 = !DILocation(line: 1072, column: 12, scope: !419)
!477 = !DILocation(line: 1072, column: 32, scope: !419)
!478 = !DILocation(line: 1073, column: 3, scope: !419)
!479 = !DILocation(line: 1073, column: 8, scope: !419)
!480 = !DILocation(line: 1073, column: 12, scope: !419)
!481 = !DILocation(line: 1073, column: 32, scope: !419)
!482 = !DILocation(line: 1074, column: 3, scope: !419)
!483 = !DILocation(line: 1074, column: 8, scope: !419)
!484 = !DILocation(line: 1074, column: 12, scope: !419)
!485 = !DILocation(line: 1074, column: 31, scope: !419)
!486 = !DILocation(line: 1075, column: 3, scope: !419)
!487 = !DILocation(line: 1075, column: 8, scope: !419)
!488 = !DILocation(line: 1075, column: 12, scope: !419)
!489 = !DILocation(line: 1075, column: 31, scope: !419)
!490 = !DILocation(line: 1076, column: 3, scope: !419)
!491 = !DILocation(line: 1076, column: 8, scope: !419)
!492 = !DILocation(line: 1076, column: 12, scope: !419)
!493 = !DILocation(line: 1076, column: 22, scope: !419)
!494 = !DILocation(line: 1077, column: 3, scope: !419)
!495 = !DILocation(line: 1077, column: 8, scope: !419)
!496 = !DILocation(line: 1077, column: 12, scope: !419)
!497 = !DILocation(line: 1077, column: 26, scope: !419)
!498 = !DILocation(line: 1080, column: 32, scope: !419)
!499 = !DILocation(line: 1080, column: 3, scope: !419)
!500 = !DILocation(line: 1080, column: 8, scope: !419)
!501 = !DILocation(line: 1080, column: 12, scope: !419)
!502 = !DILocation(line: 1080, column: 30, scope: !419)
!503 = !DILocation(line: 1082, column: 13, scope: !504)
!504 = distinct !DILexicalBlock(scope: !419, file: !2, line: 1082, column: 3)
!505 = !DILocation(line: 1082, column: 8, scope: !504)
!506 = !DILocation(line: 1082, column: 33, scope: !507)
!507 = distinct !DILexicalBlock(scope: !504, file: !2, line: 1082, column: 3)
!508 = !DILocation(line: 1082, column: 38, scope: !507)
!509 = !DILocation(line: 1082, column: 3, scope: !504)
!510 = !DILocation(line: 1083, column: 5, scope: !511)
!511 = distinct !DILexicalBlock(scope: !507, file: !2, line: 1082, column: 66)
!512 = !DILocation(line: 1083, column: 10, scope: !511)
!513 = !DILocation(line: 1083, column: 21, scope: !511)
!514 = !DILocation(line: 1083, column: 27, scope: !511)
!515 = !DILocation(line: 1084, column: 5, scope: !511)
!516 = !DILocation(line: 1084, column: 10, scope: !511)
!517 = !DILocation(line: 1084, column: 21, scope: !511)
!518 = !DILocation(line: 1084, column: 27, scope: !511)
!519 = !DILocation(line: 1085, column: 3, scope: !511)
!520 = !DILocation(line: 1082, column: 62, scope: !507)
!521 = !DILocation(line: 1082, column: 3, scope: !507)
!522 = distinct !{!522, !509, !523, !524}
!523 = !DILocation(line: 1085, column: 3, scope: !504)
!524 = !{!"llvm.loop.mustprogress"}
!525 = !DILocation(line: 1086, column: 3, scope: !419)
!526 = !DILocation(line: 1086, column: 8, scope: !419)
!527 = !DILocation(line: 1086, column: 25, scope: !419)
!528 = !DILocation(line: 1087, column: 3, scope: !419)
!529 = !DILocation(line: 1087, column: 8, scope: !419)
!530 = !DILocation(line: 1087, column: 25, scope: !419)
!531 = !DILocation(line: 1089, column: 3, scope: !419)
!532 = !DILocation(line: 1089, column: 8, scope: !419)
!533 = !DILocation(line: 1089, column: 30, scope: !419)
!534 = !DILocation(line: 1092, column: 18, scope: !419)
!535 = !DILocation(line: 1092, column: 23, scope: !419)
!536 = !DILocation(line: 1092, column: 3, scope: !419)
!537 = !DILocation(line: 1092, column: 10, scope: !419)
!538 = !DILocation(line: 1092, column: 14, scope: !419)
!539 = !DILocalVariable(name: "memenv", scope: !540, file: !2, line: 1101, type: !169)
!540 = distinct !DILexicalBlock(scope: !419, file: !2, line: 1101, column: 3)
!541 = !DILocation(line: 1101, column: 12, scope: !540)
!542 = !DILocation(line: 1103, column: 19, scope: !543)
!543 = distinct !DILexicalBlock(scope: !540, file: !2, line: 1103, column: 9)
!544 = !DILocation(line: 1103, column: 17, scope: !543)
!545 = !DILocation(line: 1103, column: 38, scope: !543)
!546 = !DILocalVariable(name: "ch", scope: !547, file: !2, line: 1104, type: !4)
!547 = distinct !DILexicalBlock(scope: !543, file: !2, line: 1103, column: 47)
!548 = !DILocation(line: 1104, column: 12, scope: !547)
!549 = !DILocation(line: 1106, column: 18, scope: !550)
!550 = distinct !DILexicalBlock(scope: !547, file: !2, line: 1106, column: 11)
!551 = !DILocation(line: 1106, column: 11, scope: !550)
!552 = !DILocation(line: 1106, column: 53, scope: !550)
!553 = !DILocation(line: 1107, column: 6, scope: !554)
!554 = distinct !DILexicalBlock(scope: !555, file: !2, line: 1107, column: 6)
!555 = distinct !DILexicalBlock(scope: !550, file: !2, line: 1106, column: 58)
!556 = !DILocation(line: 1107, column: 9, scope: !554)
!557 = !DILocation(line: 1107, column: 16, scope: !554)
!558 = !DILocation(line: 1107, column: 19, scope: !554)
!559 = !DILocation(line: 1107, column: 22, scope: !554)
!560 = !DILocation(line: 1108, column: 15, scope: !554)
!561 = !DILocation(line: 1108, column: 4, scope: !554)
!562 = !DILocation(line: 1109, column: 31, scope: !555)
!563 = !DILocation(line: 1109, column: 42, scope: !555)
!564 = !DILocation(line: 1109, column: 2, scope: !555)
!565 = !DILocation(line: 1109, column: 7, scope: !555)
!566 = !DILocation(line: 1109, column: 11, scope: !555)
!567 = !DILocation(line: 1109, column: 29, scope: !555)
!568 = !DILocation(line: 1110, column: 7, scope: !555)
!569 = !DILocation(line: 1111, column: 5, scope: !547)
!570 = !DILocation(line: 1115, column: 1, scope: !419)
!571 = distinct !DISubprogram(name: "alloc_small", scope: !2, file: !2, line: 257, type: !198, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !420)
!572 = !DILocalVariable(name: "cinfo", arg: 1, scope: !571, file: !2, line: 257, type: !146)
!573 = !DILocation(line: 257, column: 27, scope: !571)
!574 = !DILocalVariable(name: "pool_id", arg: 2, scope: !571, file: !2, line: 257, type: !163)
!575 = !DILocation(line: 257, column: 38, scope: !571)
!576 = !DILocalVariable(name: "sizeofobject", arg: 3, scope: !571, file: !2, line: 257, type: !142)
!577 = !DILocation(line: 257, column: 54, scope: !571)
!578 = !DILocalVariable(name: "mem", scope: !571, file: !2, line: 260, type: !367)
!579 = !DILocation(line: 260, column: 14, scope: !571)
!580 = !DILocation(line: 260, column: 33, scope: !571)
!581 = !DILocation(line: 260, column: 40, scope: !571)
!582 = !DILocalVariable(name: "hdr_ptr", scope: !571, file: !2, line: 261, type: !375)
!583 = !DILocation(line: 261, column: 18, scope: !571)
!584 = !DILocalVariable(name: "prev_hdr_ptr", scope: !571, file: !2, line: 261, type: !375)
!585 = !DILocation(line: 261, column: 27, scope: !571)
!586 = !DILocalVariable(name: "data_ptr", scope: !571, file: !2, line: 262, type: !169)
!587 = !DILocation(line: 262, column: 10, scope: !571)
!588 = !DILocalVariable(name: "odd_bytes", scope: !571, file: !2, line: 263, type: !142)
!589 = !DILocation(line: 263, column: 10, scope: !571)
!590 = !DILocalVariable(name: "min_request", scope: !571, file: !2, line: 263, type: !142)
!591 = !DILocation(line: 263, column: 21, scope: !571)
!592 = !DILocalVariable(name: "slop", scope: !571, file: !2, line: 263, type: !142)
!593 = !DILocation(line: 263, column: 34, scope: !571)
!594 = !DILocation(line: 266, column: 7, scope: !595)
!595 = distinct !DILexicalBlock(scope: !571, file: !2, line: 266, column: 7)
!596 = !DILocation(line: 266, column: 20, scope: !595)
!597 = !DILocation(line: 267, column: 19, scope: !595)
!598 = !DILocation(line: 267, column: 5, scope: !595)
!599 = !DILocation(line: 270, column: 15, scope: !571)
!600 = !DILocation(line: 270, column: 28, scope: !571)
!601 = !DILocation(line: 270, column: 13, scope: !571)
!602 = !DILocation(line: 271, column: 7, scope: !603)
!603 = distinct !DILexicalBlock(scope: !571, file: !2, line: 271, column: 7)
!604 = !DILocation(line: 271, column: 17, scope: !603)
!605 = !DILocation(line: 272, column: 42, scope: !603)
!606 = !DILocation(line: 272, column: 40, scope: !603)
!607 = !DILocation(line: 272, column: 18, scope: !603)
!608 = !DILocation(line: 272, column: 5, scope: !603)
!609 = !DILocation(line: 275, column: 7, scope: !610)
!610 = distinct !DILexicalBlock(scope: !571, file: !2, line: 275, column: 7)
!611 = !DILocation(line: 275, column: 15, scope: !610)
!612 = !DILocation(line: 275, column: 19, scope: !610)
!613 = !DILocation(line: 275, column: 22, scope: !610)
!614 = !DILocation(line: 275, column: 30, scope: !610)
!615 = !DILocation(line: 276, column: 5, scope: !610)
!616 = !DILocation(line: 277, column: 16, scope: !571)
!617 = !DILocation(line: 278, column: 13, scope: !571)
!618 = !DILocation(line: 278, column: 18, scope: !571)
!619 = !DILocation(line: 278, column: 29, scope: !571)
!620 = !DILocation(line: 278, column: 11, scope: !571)
!621 = !DILocation(line: 279, column: 3, scope: !571)
!622 = !DILocation(line: 279, column: 10, scope: !571)
!623 = !DILocation(line: 279, column: 18, scope: !571)
!624 = !DILocation(line: 280, column: 9, scope: !625)
!625 = distinct !DILexicalBlock(scope: !626, file: !2, line: 280, column: 9)
!626 = distinct !DILexicalBlock(scope: !571, file: !2, line: 279, column: 27)
!627 = !DILocation(line: 280, column: 22, scope: !625)
!628 = !DILocation(line: 280, column: 36, scope: !625)
!629 = !DILocation(line: 280, column: 33, scope: !625)
!630 = !DILocation(line: 281, column: 7, scope: !625)
!631 = !DILocation(line: 282, column: 20, scope: !626)
!632 = !DILocation(line: 282, column: 18, scope: !626)
!633 = !DILocation(line: 283, column: 15, scope: !626)
!634 = !DILocation(line: 283, column: 28, scope: !626)
!635 = !DILocation(line: 283, column: 13, scope: !626)
!636 = distinct !{!636, !621, !637, !524}
!637 = !DILocation(line: 284, column: 3, scope: !571)
!638 = !DILocation(line: 287, column: 7, scope: !639)
!639 = distinct !DILexicalBlock(scope: !571, file: !2, line: 287, column: 7)
!640 = !DILocation(line: 287, column: 15, scope: !639)
!641 = !DILocation(line: 289, column: 19, scope: !642)
!642 = distinct !DILexicalBlock(scope: !639, file: !2, line: 287, column: 24)
!643 = !DILocation(line: 289, column: 32, scope: !642)
!644 = !DILocation(line: 289, column: 17, scope: !642)
!645 = !DILocation(line: 290, column: 9, scope: !646)
!646 = distinct !DILexicalBlock(scope: !642, file: !2, line: 290, column: 9)
!647 = !DILocation(line: 290, column: 22, scope: !646)
!648 = !DILocation(line: 291, column: 30, scope: !646)
!649 = !DILocation(line: 291, column: 14, scope: !646)
!650 = !DILocation(line: 291, column: 12, scope: !646)
!651 = !DILocation(line: 291, column: 7, scope: !646)
!652 = !DILocation(line: 293, column: 30, scope: !646)
!653 = !DILocation(line: 293, column: 14, scope: !646)
!654 = !DILocation(line: 293, column: 12, scope: !646)
!655 = !DILocation(line: 295, column: 9, scope: !656)
!656 = distinct !DILexicalBlock(scope: !642, file: !2, line: 295, column: 9)
!657 = !DILocation(line: 295, column: 42, scope: !656)
!658 = !DILocation(line: 295, column: 41, scope: !656)
!659 = !DILocation(line: 295, column: 14, scope: !656)
!660 = !DILocation(line: 296, column: 40, scope: !656)
!661 = !DILocation(line: 296, column: 39, scope: !656)
!662 = !DILocation(line: 296, column: 12, scope: !656)
!663 = !DILocation(line: 296, column: 7, scope: !656)
!664 = !DILocation(line: 298, column: 5, scope: !642)
!665 = !DILocation(line: 299, column: 49, scope: !666)
!666 = distinct !DILexicalBlock(scope: !667, file: !2, line: 298, column: 14)
!667 = distinct !DILexicalBlock(scope: !668, file: !2, line: 298, column: 5)
!668 = distinct !DILexicalBlock(scope: !642, file: !2, line: 298, column: 5)
!669 = !DILocation(line: 299, column: 56, scope: !666)
!670 = !DILocation(line: 299, column: 70, scope: !666)
!671 = !DILocation(line: 299, column: 68, scope: !666)
!672 = !DILocation(line: 299, column: 34, scope: !666)
!673 = !DILocation(line: 299, column: 15, scope: !666)
!674 = !DILocation(line: 300, column: 11, scope: !675)
!675 = distinct !DILexicalBlock(scope: !666, file: !2, line: 300, column: 11)
!676 = !DILocation(line: 300, column: 19, scope: !675)
!677 = !DILocation(line: 301, column: 2, scope: !675)
!678 = !DILocation(line: 302, column: 12, scope: !666)
!679 = !DILocation(line: 303, column: 11, scope: !680)
!680 = distinct !DILexicalBlock(scope: !666, file: !2, line: 303, column: 11)
!681 = !DILocation(line: 303, column: 16, scope: !680)
!682 = !DILocation(line: 304, column: 16, scope: !680)
!683 = !DILocation(line: 304, column: 2, scope: !680)
!684 = !DILocation(line: 298, column: 5, scope: !667)
!685 = distinct !{!685, !686, !687}
!686 = !DILocation(line: 298, column: 5, scope: !668)
!687 = !DILocation(line: 305, column: 5, scope: !668)
!688 = !DILocation(line: 306, column: 35, scope: !642)
!689 = !DILocation(line: 306, column: 49, scope: !642)
!690 = !DILocation(line: 306, column: 47, scope: !642)
!691 = !DILocation(line: 306, column: 5, scope: !642)
!692 = !DILocation(line: 306, column: 10, scope: !642)
!693 = !DILocation(line: 306, column: 32, scope: !642)
!694 = !DILocation(line: 308, column: 5, scope: !642)
!695 = !DILocation(line: 308, column: 18, scope: !642)
!696 = !DILocation(line: 308, column: 23, scope: !642)
!697 = !DILocation(line: 309, column: 5, scope: !642)
!698 = !DILocation(line: 309, column: 18, scope: !642)
!699 = !DILocation(line: 309, column: 29, scope: !642)
!700 = !DILocation(line: 310, column: 31, scope: !642)
!701 = !DILocation(line: 310, column: 46, scope: !642)
!702 = !DILocation(line: 310, column: 44, scope: !642)
!703 = !DILocation(line: 310, column: 5, scope: !642)
!704 = !DILocation(line: 310, column: 18, scope: !642)
!705 = !DILocation(line: 310, column: 29, scope: !642)
!706 = !DILocation(line: 311, column: 9, scope: !707)
!707 = distinct !DILexicalBlock(scope: !642, file: !2, line: 311, column: 9)
!708 = !DILocation(line: 311, column: 22, scope: !707)
!709 = !DILocation(line: 312, column: 34, scope: !707)
!710 = !DILocation(line: 312, column: 7, scope: !707)
!711 = !DILocation(line: 312, column: 12, scope: !707)
!712 = !DILocation(line: 312, column: 23, scope: !707)
!713 = !DILocation(line: 312, column: 32, scope: !707)
!714 = !DILocation(line: 314, column: 32, scope: !707)
!715 = !DILocation(line: 314, column: 7, scope: !707)
!716 = !DILocation(line: 314, column: 25, scope: !707)
!717 = !DILocation(line: 314, column: 30, scope: !707)
!718 = !DILocation(line: 315, column: 3, scope: !642)
!719 = !DILocation(line: 318, column: 24, scope: !571)
!720 = !DILocation(line: 318, column: 32, scope: !571)
!721 = !DILocation(line: 318, column: 12, scope: !571)
!722 = !DILocation(line: 319, column: 15, scope: !571)
!723 = !DILocation(line: 319, column: 28, scope: !571)
!724 = !DILocation(line: 319, column: 12, scope: !571)
!725 = !DILocation(line: 320, column: 30, scope: !571)
!726 = !DILocation(line: 320, column: 3, scope: !571)
!727 = !DILocation(line: 320, column: 16, scope: !571)
!728 = !DILocation(line: 320, column: 27, scope: !571)
!729 = !DILocation(line: 321, column: 30, scope: !571)
!730 = !DILocation(line: 321, column: 3, scope: !571)
!731 = !DILocation(line: 321, column: 16, scope: !571)
!732 = !DILocation(line: 321, column: 27, scope: !571)
!733 = !DILocation(line: 323, column: 19, scope: !571)
!734 = !DILocation(line: 323, column: 3, scope: !571)
!735 = distinct !DISubprogram(name: "alloc_large", scope: !2, file: !2, line: 342, type: !198, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !420)
!736 = !DILocalVariable(name: "cinfo", arg: 1, scope: !735, file: !2, line: 342, type: !146)
!737 = !DILocation(line: 342, column: 27, scope: !735)
!738 = !DILocalVariable(name: "pool_id", arg: 2, scope: !735, file: !2, line: 342, type: !163)
!739 = !DILocation(line: 342, column: 38, scope: !735)
!740 = !DILocalVariable(name: "sizeofobject", arg: 3, scope: !735, file: !2, line: 342, type: !142)
!741 = !DILocation(line: 342, column: 54, scope: !735)
!742 = !DILocalVariable(name: "mem", scope: !735, file: !2, line: 345, type: !367)
!743 = !DILocation(line: 345, column: 14, scope: !735)
!744 = !DILocation(line: 345, column: 33, scope: !735)
!745 = !DILocation(line: 345, column: 40, scope: !735)
!746 = !DILocalVariable(name: "hdr_ptr", scope: !735, file: !2, line: 346, type: !391)
!747 = !DILocation(line: 346, column: 18, scope: !735)
!748 = !DILocalVariable(name: "odd_bytes", scope: !735, file: !2, line: 347, type: !142)
!749 = !DILocation(line: 347, column: 10, scope: !735)
!750 = !DILocation(line: 350, column: 7, scope: !751)
!751 = distinct !DILexicalBlock(scope: !735, file: !2, line: 350, column: 7)
!752 = !DILocation(line: 350, column: 20, scope: !751)
!753 = !DILocation(line: 351, column: 19, scope: !751)
!754 = !DILocation(line: 351, column: 5, scope: !751)
!755 = !DILocation(line: 354, column: 15, scope: !735)
!756 = !DILocation(line: 354, column: 28, scope: !735)
!757 = !DILocation(line: 354, column: 13, scope: !735)
!758 = !DILocation(line: 355, column: 7, scope: !759)
!759 = distinct !DILexicalBlock(scope: !735, file: !2, line: 355, column: 7)
!760 = !DILocation(line: 355, column: 17, scope: !759)
!761 = !DILocation(line: 356, column: 42, scope: !759)
!762 = !DILocation(line: 356, column: 40, scope: !759)
!763 = !DILocation(line: 356, column: 18, scope: !759)
!764 = !DILocation(line: 356, column: 5, scope: !759)
!765 = !DILocation(line: 359, column: 7, scope: !766)
!766 = distinct !DILexicalBlock(scope: !735, file: !2, line: 359, column: 7)
!767 = !DILocation(line: 359, column: 15, scope: !766)
!768 = !DILocation(line: 359, column: 19, scope: !766)
!769 = !DILocation(line: 359, column: 22, scope: !766)
!770 = !DILocation(line: 359, column: 30, scope: !766)
!771 = !DILocation(line: 360, column: 5, scope: !766)
!772 = !DILocation(line: 362, column: 45, scope: !735)
!773 = !DILocation(line: 362, column: 52, scope: !735)
!774 = !DILocation(line: 362, column: 65, scope: !735)
!775 = !DILocation(line: 362, column: 30, scope: !735)
!776 = !DILocation(line: 362, column: 11, scope: !735)
!777 = !DILocation(line: 364, column: 7, scope: !778)
!778 = distinct !DILexicalBlock(scope: !735, file: !2, line: 364, column: 7)
!779 = !DILocation(line: 364, column: 15, scope: !778)
!780 = !DILocation(line: 365, column: 19, scope: !778)
!781 = !DILocation(line: 365, column: 5, scope: !778)
!782 = !DILocation(line: 366, column: 33, scope: !735)
!783 = !DILocation(line: 366, column: 46, scope: !735)
!784 = !DILocation(line: 366, column: 3, scope: !735)
!785 = !DILocation(line: 366, column: 8, scope: !735)
!786 = !DILocation(line: 366, column: 30, scope: !735)
!787 = !DILocation(line: 369, column: 23, scope: !735)
!788 = !DILocation(line: 369, column: 28, scope: !735)
!789 = !DILocation(line: 369, column: 39, scope: !735)
!790 = !DILocation(line: 369, column: 3, scope: !735)
!791 = !DILocation(line: 369, column: 16, scope: !735)
!792 = !DILocation(line: 369, column: 21, scope: !735)
!793 = !DILocation(line: 373, column: 29, scope: !735)
!794 = !DILocation(line: 373, column: 3, scope: !735)
!795 = !DILocation(line: 373, column: 16, scope: !735)
!796 = !DILocation(line: 373, column: 27, scope: !735)
!797 = !DILocation(line: 374, column: 3, scope: !735)
!798 = !DILocation(line: 374, column: 16, scope: !735)
!799 = !DILocation(line: 374, column: 27, scope: !735)
!800 = !DILocation(line: 375, column: 30, scope: !735)
!801 = !DILocation(line: 375, column: 3, scope: !735)
!802 = !DILocation(line: 375, column: 8, scope: !735)
!803 = !DILocation(line: 375, column: 19, scope: !735)
!804 = !DILocation(line: 375, column: 28, scope: !735)
!805 = !DILocation(line: 377, column: 24, scope: !735)
!806 = !DILocation(line: 377, column: 32, scope: !735)
!807 = !DILocation(line: 377, column: 3, scope: !735)
!808 = distinct !DISubprogram(name: "alloc_sarray", scope: !2, file: !2, line: 395, type: !204, scopeLine: 398, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !420)
!809 = !DILocalVariable(name: "cinfo", arg: 1, scope: !808, file: !2, line: 395, type: !146)
!810 = !DILocation(line: 395, column: 28, scope: !808)
!811 = !DILocalVariable(name: "pool_id", arg: 2, scope: !808, file: !2, line: 395, type: !163)
!812 = !DILocation(line: 395, column: 39, scope: !808)
!813 = !DILocalVariable(name: "samplesperrow", arg: 3, scope: !808, file: !2, line: 396, type: !213)
!814 = !DILocation(line: 396, column: 19, scope: !808)
!815 = !DILocalVariable(name: "numrows", arg: 4, scope: !808, file: !2, line: 396, type: !213)
!816 = !DILocation(line: 396, column: 45, scope: !808)
!817 = !DILocalVariable(name: "mem", scope: !808, file: !2, line: 399, type: !367)
!818 = !DILocation(line: 399, column: 14, scope: !808)
!819 = !DILocation(line: 399, column: 33, scope: !808)
!820 = !DILocation(line: 399, column: 40, scope: !808)
!821 = !DILocalVariable(name: "result", scope: !808, file: !2, line: 400, type: !206)
!822 = !DILocation(line: 400, column: 14, scope: !808)
!823 = !DILocalVariable(name: "workspace", scope: !808, file: !2, line: 401, type: !208)
!824 = !DILocation(line: 401, column: 12, scope: !808)
!825 = !DILocalVariable(name: "rowsperchunk", scope: !808, file: !2, line: 402, type: !213)
!826 = !DILocation(line: 402, column: 14, scope: !808)
!827 = !DILocalVariable(name: "currow", scope: !808, file: !2, line: 402, type: !213)
!828 = !DILocation(line: 402, column: 28, scope: !808)
!829 = !DILocalVariable(name: "i", scope: !808, file: !2, line: 402, type: !213)
!830 = !DILocation(line: 402, column: 36, scope: !808)
!831 = !DILocalVariable(name: "ltemp", scope: !808, file: !2, line: 403, type: !145)
!832 = !DILocation(line: 403, column: 8, scope: !808)
!833 = !DILocation(line: 407, column: 12, scope: !808)
!834 = !DILocation(line: 407, column: 5, scope: !808)
!835 = !DILocation(line: 407, column: 26, scope: !808)
!836 = !DILocation(line: 406, column: 52, scope: !808)
!837 = !DILocation(line: 406, column: 9, scope: !808)
!838 = !DILocation(line: 408, column: 7, scope: !839)
!839 = distinct !DILexicalBlock(scope: !808, file: !2, line: 408, column: 7)
!840 = !DILocation(line: 408, column: 13, scope: !839)
!841 = !DILocation(line: 409, column: 5, scope: !839)
!842 = !DILocation(line: 410, column: 7, scope: !843)
!843 = distinct !DILexicalBlock(scope: !808, file: !2, line: 410, column: 7)
!844 = !DILocation(line: 410, column: 22, scope: !843)
!845 = !DILocation(line: 410, column: 15, scope: !843)
!846 = !DILocation(line: 410, column: 13, scope: !843)
!847 = !DILocation(line: 411, column: 33, scope: !843)
!848 = !DILocation(line: 411, column: 20, scope: !843)
!849 = !DILocation(line: 411, column: 18, scope: !843)
!850 = !DILocation(line: 411, column: 5, scope: !843)
!851 = !DILocation(line: 413, column: 20, scope: !843)
!852 = !DILocation(line: 413, column: 18, scope: !843)
!853 = !DILocation(line: 414, column: 28, scope: !808)
!854 = !DILocation(line: 414, column: 3, scope: !808)
!855 = !DILocation(line: 414, column: 8, scope: !808)
!856 = !DILocation(line: 414, column: 26, scope: !808)
!857 = !DILocation(line: 417, column: 37, scope: !808)
!858 = !DILocation(line: 417, column: 44, scope: !808)
!859 = !DILocation(line: 418, column: 19, scope: !808)
!860 = !DILocation(line: 418, column: 27, scope: !808)
!861 = !DILocation(line: 417, column: 25, scope: !808)
!862 = !DILocation(line: 417, column: 10, scope: !808)
!863 = !DILocation(line: 421, column: 10, scope: !808)
!864 = !DILocation(line: 422, column: 3, scope: !808)
!865 = !DILocation(line: 422, column: 10, scope: !808)
!866 = !DILocation(line: 422, column: 19, scope: !808)
!867 = !DILocation(line: 422, column: 17, scope: !808)
!868 = !DILocation(line: 423, column: 20, scope: !869)
!869 = distinct !DILexicalBlock(scope: !808, file: !2, line: 422, column: 28)
!870 = !DILocation(line: 423, column: 18, scope: !869)
!871 = !DILocation(line: 424, column: 40, scope: !869)
!872 = !DILocation(line: 424, column: 47, scope: !869)
!873 = !DILocation(line: 425, column: 21, scope: !869)
!874 = !DILocation(line: 425, column: 12, scope: !869)
!875 = !DILocation(line: 425, column: 45, scope: !869)
!876 = !DILocation(line: 425, column: 36, scope: !869)
!877 = !DILocation(line: 425, column: 34, scope: !869)
!878 = !DILocation(line: 426, column: 5, scope: !869)
!879 = !DILocation(line: 424, column: 28, scope: !869)
!880 = !DILocation(line: 424, column: 15, scope: !869)
!881 = !DILocation(line: 427, column: 14, scope: !882)
!882 = distinct !DILexicalBlock(scope: !869, file: !2, line: 427, column: 5)
!883 = !DILocation(line: 427, column: 12, scope: !882)
!884 = !DILocation(line: 427, column: 10, scope: !882)
!885 = !DILocation(line: 427, column: 28, scope: !886)
!886 = distinct !DILexicalBlock(scope: !882, file: !2, line: 427, column: 5)
!887 = !DILocation(line: 427, column: 30, scope: !886)
!888 = !DILocation(line: 427, column: 5, scope: !882)
!889 = !DILocation(line: 428, column: 26, scope: !890)
!890 = distinct !DILexicalBlock(scope: !886, file: !2, line: 427, column: 40)
!891 = !DILocation(line: 428, column: 7, scope: !890)
!892 = !DILocation(line: 428, column: 20, scope: !890)
!893 = !DILocation(line: 428, column: 24, scope: !890)
!894 = !DILocation(line: 429, column: 20, scope: !890)
!895 = !DILocation(line: 429, column: 17, scope: !890)
!896 = !DILocation(line: 430, column: 5, scope: !890)
!897 = !DILocation(line: 427, column: 36, scope: !886)
!898 = !DILocation(line: 427, column: 5, scope: !886)
!899 = distinct !{!899, !888, !900, !524}
!900 = !DILocation(line: 430, column: 5, scope: !882)
!901 = distinct !{!901, !864, !902, !524}
!902 = !DILocation(line: 431, column: 3, scope: !808)
!903 = !DILocation(line: 433, column: 10, scope: !808)
!904 = !DILocation(line: 433, column: 3, scope: !808)
!905 = distinct !DISubprogram(name: "alloc_barray", scope: !2, file: !2, line: 443, type: !216, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !420)
!906 = !DILocalVariable(name: "cinfo", arg: 1, scope: !905, file: !2, line: 443, type: !146)
!907 = !DILocation(line: 443, column: 28, scope: !905)
!908 = !DILocalVariable(name: "pool_id", arg: 2, scope: !905, file: !2, line: 443, type: !163)
!909 = !DILocation(line: 443, column: 39, scope: !905)
!910 = !DILocalVariable(name: "blocksperrow", arg: 3, scope: !905, file: !2, line: 444, type: !213)
!911 = !DILocation(line: 444, column: 19, scope: !905)
!912 = !DILocalVariable(name: "numrows", arg: 4, scope: !905, file: !2, line: 444, type: !213)
!913 = !DILocation(line: 444, column: 44, scope: !905)
!914 = !DILocalVariable(name: "mem", scope: !905, file: !2, line: 447, type: !367)
!915 = !DILocation(line: 447, column: 14, scope: !905)
!916 = !DILocation(line: 447, column: 33, scope: !905)
!917 = !DILocation(line: 447, column: 40, scope: !905)
!918 = !DILocalVariable(name: "result", scope: !905, file: !2, line: 448, type: !218)
!919 = !DILocation(line: 448, column: 15, scope: !905)
!920 = !DILocalVariable(name: "workspace", scope: !905, file: !2, line: 449, type: !220)
!921 = !DILocation(line: 449, column: 13, scope: !905)
!922 = !DILocalVariable(name: "rowsperchunk", scope: !905, file: !2, line: 450, type: !213)
!923 = !DILocation(line: 450, column: 14, scope: !905)
!924 = !DILocalVariable(name: "currow", scope: !905, file: !2, line: 450, type: !213)
!925 = !DILocation(line: 450, column: 28, scope: !905)
!926 = !DILocalVariable(name: "i", scope: !905, file: !2, line: 450, type: !213)
!927 = !DILocation(line: 450, column: 36, scope: !905)
!928 = !DILocalVariable(name: "ltemp", scope: !905, file: !2, line: 451, type: !145)
!929 = !DILocation(line: 451, column: 8, scope: !905)
!930 = !DILocation(line: 455, column: 12, scope: !905)
!931 = !DILocation(line: 455, column: 5, scope: !905)
!932 = !DILocation(line: 455, column: 25, scope: !905)
!933 = !DILocation(line: 454, column: 52, scope: !905)
!934 = !DILocation(line: 454, column: 9, scope: !905)
!935 = !DILocation(line: 456, column: 7, scope: !936)
!936 = distinct !DILexicalBlock(scope: !905, file: !2, line: 456, column: 7)
!937 = !DILocation(line: 456, column: 13, scope: !936)
!938 = !DILocation(line: 457, column: 5, scope: !936)
!939 = !DILocation(line: 458, column: 7, scope: !940)
!940 = distinct !DILexicalBlock(scope: !905, file: !2, line: 458, column: 7)
!941 = !DILocation(line: 458, column: 22, scope: !940)
!942 = !DILocation(line: 458, column: 15, scope: !940)
!943 = !DILocation(line: 458, column: 13, scope: !940)
!944 = !DILocation(line: 459, column: 33, scope: !940)
!945 = !DILocation(line: 459, column: 20, scope: !940)
!946 = !DILocation(line: 459, column: 18, scope: !940)
!947 = !DILocation(line: 459, column: 5, scope: !940)
!948 = !DILocation(line: 461, column: 20, scope: !940)
!949 = !DILocation(line: 461, column: 18, scope: !940)
!950 = !DILocation(line: 462, column: 28, scope: !905)
!951 = !DILocation(line: 462, column: 3, scope: !905)
!952 = !DILocation(line: 462, column: 8, scope: !905)
!953 = !DILocation(line: 462, column: 26, scope: !905)
!954 = !DILocation(line: 465, column: 38, scope: !905)
!955 = !DILocation(line: 465, column: 45, scope: !905)
!956 = !DILocation(line: 466, column: 20, scope: !905)
!957 = !DILocation(line: 466, column: 28, scope: !905)
!958 = !DILocation(line: 465, column: 26, scope: !905)
!959 = !DILocation(line: 465, column: 10, scope: !905)
!960 = !DILocation(line: 469, column: 10, scope: !905)
!961 = !DILocation(line: 470, column: 3, scope: !905)
!962 = !DILocation(line: 470, column: 10, scope: !905)
!963 = !DILocation(line: 470, column: 19, scope: !905)
!964 = !DILocation(line: 470, column: 17, scope: !905)
!965 = !DILocation(line: 471, column: 20, scope: !966)
!966 = distinct !DILexicalBlock(scope: !905, file: !2, line: 470, column: 28)
!967 = !DILocation(line: 471, column: 18, scope: !966)
!968 = !DILocation(line: 472, column: 41, scope: !966)
!969 = !DILocation(line: 472, column: 48, scope: !966)
!970 = !DILocation(line: 473, column: 21, scope: !966)
!971 = !DILocation(line: 473, column: 12, scope: !966)
!972 = !DILocation(line: 473, column: 45, scope: !966)
!973 = !DILocation(line: 473, column: 36, scope: !966)
!974 = !DILocation(line: 473, column: 34, scope: !966)
!975 = !DILocation(line: 474, column: 5, scope: !966)
!976 = !DILocation(line: 472, column: 29, scope: !966)
!977 = !DILocation(line: 472, column: 15, scope: !966)
!978 = !DILocation(line: 475, column: 14, scope: !979)
!979 = distinct !DILexicalBlock(scope: !966, file: !2, line: 475, column: 5)
!980 = !DILocation(line: 475, column: 12, scope: !979)
!981 = !DILocation(line: 475, column: 10, scope: !979)
!982 = !DILocation(line: 475, column: 28, scope: !983)
!983 = distinct !DILexicalBlock(scope: !979, file: !2, line: 475, column: 5)
!984 = !DILocation(line: 475, column: 30, scope: !983)
!985 = !DILocation(line: 475, column: 5, scope: !979)
!986 = !DILocation(line: 476, column: 26, scope: !987)
!987 = distinct !DILexicalBlock(scope: !983, file: !2, line: 475, column: 40)
!988 = !DILocation(line: 476, column: 7, scope: !987)
!989 = !DILocation(line: 476, column: 20, scope: !987)
!990 = !DILocation(line: 476, column: 24, scope: !987)
!991 = !DILocation(line: 477, column: 20, scope: !987)
!992 = !DILocation(line: 477, column: 17, scope: !987)
!993 = !DILocation(line: 478, column: 5, scope: !987)
!994 = !DILocation(line: 475, column: 36, scope: !983)
!995 = !DILocation(line: 475, column: 5, scope: !983)
!996 = distinct !{!996, !985, !997, !524}
!997 = !DILocation(line: 478, column: 5, scope: !979)
!998 = distinct !{!998, !961, !999, !524}
!999 = !DILocation(line: 479, column: 3, scope: !905)
!1000 = !DILocation(line: 481, column: 10, scope: !905)
!1001 = !DILocation(line: 481, column: 3, scope: !905)
!1002 = distinct !DISubprogram(name: "request_virt_sarray", scope: !2, file: !2, line: 523, type: !230, scopeLine: 527, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !420)
!1003 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1002, file: !2, line: 523, type: !146)
!1004 = !DILocation(line: 523, column: 35, scope: !1002)
!1005 = !DILocalVariable(name: "pool_id", arg: 2, scope: !1002, file: !2, line: 523, type: !163)
!1006 = !DILocation(line: 523, column: 46, scope: !1002)
!1007 = !DILocalVariable(name: "pre_zero", arg: 3, scope: !1002, file: !2, line: 523, type: !245)
!1008 = !DILocation(line: 523, column: 63, scope: !1002)
!1009 = !DILocalVariable(name: "samplesperrow", arg: 4, scope: !1002, file: !2, line: 524, type: !213)
!1010 = !DILocation(line: 524, column: 19, scope: !1002)
!1011 = !DILocalVariable(name: "numrows", arg: 5, scope: !1002, file: !2, line: 524, type: !213)
!1012 = !DILocation(line: 524, column: 45, scope: !1002)
!1013 = !DILocalVariable(name: "maxaccess", arg: 6, scope: !1002, file: !2, line: 525, type: !213)
!1014 = !DILocation(line: 525, column: 19, scope: !1002)
!1015 = !DILocalVariable(name: "mem", scope: !1002, file: !2, line: 528, type: !367)
!1016 = !DILocation(line: 528, column: 14, scope: !1002)
!1017 = !DILocation(line: 528, column: 33, scope: !1002)
!1018 = !DILocation(line: 528, column: 40, scope: !1002)
!1019 = !DILocalVariable(name: "result", scope: !1002, file: !2, line: 529, type: !232)
!1020 = !DILocation(line: 529, column: 20, scope: !1002)
!1021 = !DILocation(line: 532, column: 7, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1002, file: !2, line: 532, column: 7)
!1023 = !DILocation(line: 532, column: 15, scope: !1022)
!1024 = !DILocation(line: 533, column: 5, scope: !1022)
!1025 = !DILocation(line: 536, column: 43, scope: !1002)
!1026 = !DILocation(line: 536, column: 50, scope: !1002)
!1027 = !DILocation(line: 536, column: 31, scope: !1002)
!1028 = !DILocation(line: 536, column: 10, scope: !1002)
!1029 = !DILocation(line: 539, column: 3, scope: !1002)
!1030 = !DILocation(line: 539, column: 11, scope: !1002)
!1031 = !DILocation(line: 539, column: 22, scope: !1002)
!1032 = !DILocation(line: 540, column: 27, scope: !1002)
!1033 = !DILocation(line: 540, column: 3, scope: !1002)
!1034 = !DILocation(line: 540, column: 11, scope: !1002)
!1035 = !DILocation(line: 540, column: 25, scope: !1002)
!1036 = !DILocation(line: 541, column: 27, scope: !1002)
!1037 = !DILocation(line: 541, column: 3, scope: !1002)
!1038 = !DILocation(line: 541, column: 11, scope: !1002)
!1039 = !DILocation(line: 541, column: 25, scope: !1002)
!1040 = !DILocation(line: 542, column: 23, scope: !1002)
!1041 = !DILocation(line: 542, column: 3, scope: !1002)
!1042 = !DILocation(line: 542, column: 11, scope: !1002)
!1043 = !DILocation(line: 542, column: 21, scope: !1002)
!1044 = !DILocation(line: 543, column: 22, scope: !1002)
!1045 = !DILocation(line: 543, column: 3, scope: !1002)
!1046 = !DILocation(line: 543, column: 11, scope: !1002)
!1047 = !DILocation(line: 543, column: 20, scope: !1002)
!1048 = !DILocation(line: 544, column: 3, scope: !1002)
!1049 = !DILocation(line: 544, column: 11, scope: !1002)
!1050 = !DILocation(line: 544, column: 20, scope: !1002)
!1051 = !DILocation(line: 545, column: 18, scope: !1002)
!1052 = !DILocation(line: 545, column: 23, scope: !1002)
!1053 = !DILocation(line: 545, column: 3, scope: !1002)
!1054 = !DILocation(line: 545, column: 11, scope: !1002)
!1055 = !DILocation(line: 545, column: 16, scope: !1002)
!1056 = !DILocation(line: 546, column: 27, scope: !1002)
!1057 = !DILocation(line: 546, column: 3, scope: !1002)
!1058 = !DILocation(line: 546, column: 8, scope: !1002)
!1059 = !DILocation(line: 546, column: 25, scope: !1002)
!1060 = !DILocation(line: 548, column: 10, scope: !1002)
!1061 = !DILocation(line: 548, column: 3, scope: !1002)
!1062 = distinct !DISubprogram(name: "request_virt_barray", scope: !2, file: !2, line: 553, type: !325, scopeLine: 557, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !420)
!1063 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1062, file: !2, line: 553, type: !146)
!1064 = !DILocation(line: 553, column: 35, scope: !1062)
!1065 = !DILocalVariable(name: "pool_id", arg: 2, scope: !1062, file: !2, line: 553, type: !163)
!1066 = !DILocation(line: 553, column: 46, scope: !1062)
!1067 = !DILocalVariable(name: "pre_zero", arg: 3, scope: !1062, file: !2, line: 553, type: !245)
!1068 = !DILocation(line: 553, column: 63, scope: !1062)
!1069 = !DILocalVariable(name: "blocksperrow", arg: 4, scope: !1062, file: !2, line: 554, type: !213)
!1070 = !DILocation(line: 554, column: 19, scope: !1062)
!1071 = !DILocalVariable(name: "numrows", arg: 5, scope: !1062, file: !2, line: 554, type: !213)
!1072 = !DILocation(line: 554, column: 44, scope: !1062)
!1073 = !DILocalVariable(name: "maxaccess", arg: 6, scope: !1062, file: !2, line: 555, type: !213)
!1074 = !DILocation(line: 555, column: 19, scope: !1062)
!1075 = !DILocalVariable(name: "mem", scope: !1062, file: !2, line: 558, type: !367)
!1076 = !DILocation(line: 558, column: 14, scope: !1062)
!1077 = !DILocation(line: 558, column: 33, scope: !1062)
!1078 = !DILocation(line: 558, column: 40, scope: !1062)
!1079 = !DILocalVariable(name: "result", scope: !1062, file: !2, line: 559, type: !327)
!1080 = !DILocation(line: 559, column: 20, scope: !1062)
!1081 = !DILocation(line: 562, column: 7, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1062, file: !2, line: 562, column: 7)
!1083 = !DILocation(line: 562, column: 15, scope: !1082)
!1084 = !DILocation(line: 563, column: 5, scope: !1082)
!1085 = !DILocation(line: 566, column: 43, scope: !1062)
!1086 = !DILocation(line: 566, column: 50, scope: !1062)
!1087 = !DILocation(line: 566, column: 31, scope: !1062)
!1088 = !DILocation(line: 566, column: 10, scope: !1062)
!1089 = !DILocation(line: 569, column: 3, scope: !1062)
!1090 = !DILocation(line: 569, column: 11, scope: !1062)
!1091 = !DILocation(line: 569, column: 22, scope: !1062)
!1092 = !DILocation(line: 570, column: 27, scope: !1062)
!1093 = !DILocation(line: 570, column: 3, scope: !1062)
!1094 = !DILocation(line: 570, column: 11, scope: !1062)
!1095 = !DILocation(line: 570, column: 25, scope: !1062)
!1096 = !DILocation(line: 571, column: 26, scope: !1062)
!1097 = !DILocation(line: 571, column: 3, scope: !1062)
!1098 = !DILocation(line: 571, column: 11, scope: !1062)
!1099 = !DILocation(line: 571, column: 24, scope: !1062)
!1100 = !DILocation(line: 572, column: 23, scope: !1062)
!1101 = !DILocation(line: 572, column: 3, scope: !1062)
!1102 = !DILocation(line: 572, column: 11, scope: !1062)
!1103 = !DILocation(line: 572, column: 21, scope: !1062)
!1104 = !DILocation(line: 573, column: 22, scope: !1062)
!1105 = !DILocation(line: 573, column: 3, scope: !1062)
!1106 = !DILocation(line: 573, column: 11, scope: !1062)
!1107 = !DILocation(line: 573, column: 20, scope: !1062)
!1108 = !DILocation(line: 574, column: 3, scope: !1062)
!1109 = !DILocation(line: 574, column: 11, scope: !1062)
!1110 = !DILocation(line: 574, column: 20, scope: !1062)
!1111 = !DILocation(line: 575, column: 18, scope: !1062)
!1112 = !DILocation(line: 575, column: 23, scope: !1062)
!1113 = !DILocation(line: 575, column: 3, scope: !1062)
!1114 = !DILocation(line: 575, column: 11, scope: !1062)
!1115 = !DILocation(line: 575, column: 16, scope: !1062)
!1116 = !DILocation(line: 576, column: 27, scope: !1062)
!1117 = !DILocation(line: 576, column: 3, scope: !1062)
!1118 = !DILocation(line: 576, column: 8, scope: !1062)
!1119 = !DILocation(line: 576, column: 25, scope: !1062)
!1120 = !DILocation(line: 578, column: 10, scope: !1062)
!1121 = !DILocation(line: 578, column: 3, scope: !1062)
!1122 = distinct !DISubprogram(name: "realize_virt_arrays", scope: !2, file: !2, line: 583, type: !157, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !420)
!1123 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1122, file: !2, line: 583, type: !146)
!1124 = !DILocation(line: 583, column: 35, scope: !1122)
!1125 = !DILocalVariable(name: "mem", scope: !1122, file: !2, line: 586, type: !367)
!1126 = !DILocation(line: 586, column: 14, scope: !1122)
!1127 = !DILocation(line: 586, column: 33, scope: !1122)
!1128 = !DILocation(line: 586, column: 40, scope: !1122)
!1129 = !DILocalVariable(name: "space_per_minheight", scope: !1122, file: !2, line: 587, type: !145)
!1130 = !DILocation(line: 587, column: 8, scope: !1122)
!1131 = !DILocalVariable(name: "maximum_space", scope: !1122, file: !2, line: 587, type: !145)
!1132 = !DILocation(line: 587, column: 29, scope: !1122)
!1133 = !DILocalVariable(name: "avail_mem", scope: !1122, file: !2, line: 587, type: !145)
!1134 = !DILocation(line: 587, column: 44, scope: !1122)
!1135 = !DILocalVariable(name: "minheights", scope: !1122, file: !2, line: 588, type: !145)
!1136 = !DILocation(line: 588, column: 8, scope: !1122)
!1137 = !DILocalVariable(name: "max_minheights", scope: !1122, file: !2, line: 588, type: !145)
!1138 = !DILocation(line: 588, column: 20, scope: !1122)
!1139 = !DILocalVariable(name: "sptr", scope: !1122, file: !2, line: 589, type: !232)
!1140 = !DILocation(line: 589, column: 20, scope: !1122)
!1141 = !DILocalVariable(name: "bptr", scope: !1122, file: !2, line: 590, type: !327)
!1142 = !DILocation(line: 590, column: 20, scope: !1122)
!1143 = !DILocation(line: 596, column: 23, scope: !1122)
!1144 = !DILocation(line: 597, column: 17, scope: !1122)
!1145 = !DILocation(line: 598, column: 15, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1122, file: !2, line: 598, column: 3)
!1147 = !DILocation(line: 598, column: 20, scope: !1146)
!1148 = !DILocation(line: 598, column: 13, scope: !1146)
!1149 = !DILocation(line: 598, column: 8, scope: !1146)
!1150 = !DILocation(line: 598, column: 38, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1146, file: !2, line: 598, column: 3)
!1152 = !DILocation(line: 598, column: 43, scope: !1151)
!1153 = !DILocation(line: 598, column: 3, scope: !1146)
!1154 = !DILocation(line: 599, column: 9, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1156, file: !2, line: 599, column: 9)
!1156 = distinct !DILexicalBlock(scope: !1151, file: !2, line: 598, column: 71)
!1157 = !DILocation(line: 599, column: 15, scope: !1155)
!1158 = !DILocation(line: 599, column: 26, scope: !1155)
!1159 = !DILocation(line: 600, column: 37, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1155, file: !2, line: 599, column: 35)
!1161 = !DILocation(line: 600, column: 43, scope: !1160)
!1162 = !DILocation(line: 600, column: 30, scope: !1160)
!1163 = !DILocation(line: 601, column: 16, scope: !1160)
!1164 = !DILocation(line: 601, column: 22, scope: !1160)
!1165 = !DILocation(line: 601, column: 9, scope: !1160)
!1166 = !DILocation(line: 600, column: 53, scope: !1160)
!1167 = !DILocation(line: 601, column: 36, scope: !1160)
!1168 = !DILocation(line: 600, column: 27, scope: !1160)
!1169 = !DILocation(line: 602, column: 31, scope: !1160)
!1170 = !DILocation(line: 602, column: 37, scope: !1160)
!1171 = !DILocation(line: 602, column: 24, scope: !1160)
!1172 = !DILocation(line: 603, column: 17, scope: !1160)
!1173 = !DILocation(line: 603, column: 23, scope: !1160)
!1174 = !DILocation(line: 603, column: 10, scope: !1160)
!1175 = !DILocation(line: 602, column: 51, scope: !1160)
!1176 = !DILocation(line: 603, column: 37, scope: !1160)
!1177 = !DILocation(line: 602, column: 21, scope: !1160)
!1178 = !DILocation(line: 604, column: 5, scope: !1160)
!1179 = !DILocation(line: 605, column: 3, scope: !1156)
!1180 = !DILocation(line: 598, column: 59, scope: !1151)
!1181 = !DILocation(line: 598, column: 65, scope: !1151)
!1182 = !DILocation(line: 598, column: 57, scope: !1151)
!1183 = !DILocation(line: 598, column: 3, scope: !1151)
!1184 = distinct !{!1184, !1153, !1185, !524}
!1185 = !DILocation(line: 605, column: 3, scope: !1146)
!1186 = !DILocation(line: 606, column: 15, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1122, file: !2, line: 606, column: 3)
!1188 = !DILocation(line: 606, column: 20, scope: !1187)
!1189 = !DILocation(line: 606, column: 13, scope: !1187)
!1190 = !DILocation(line: 606, column: 8, scope: !1187)
!1191 = !DILocation(line: 606, column: 38, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1187, file: !2, line: 606, column: 3)
!1193 = !DILocation(line: 606, column: 43, scope: !1192)
!1194 = !DILocation(line: 606, column: 3, scope: !1187)
!1195 = !DILocation(line: 607, column: 9, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1197, file: !2, line: 607, column: 9)
!1197 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 606, column: 71)
!1198 = !DILocation(line: 607, column: 15, scope: !1196)
!1199 = !DILocation(line: 607, column: 26, scope: !1196)
!1200 = !DILocation(line: 608, column: 37, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1196, file: !2, line: 607, column: 35)
!1202 = !DILocation(line: 608, column: 43, scope: !1201)
!1203 = !DILocation(line: 608, column: 30, scope: !1201)
!1204 = !DILocation(line: 609, column: 16, scope: !1201)
!1205 = !DILocation(line: 609, column: 22, scope: !1201)
!1206 = !DILocation(line: 609, column: 9, scope: !1201)
!1207 = !DILocation(line: 608, column: 53, scope: !1201)
!1208 = !DILocation(line: 609, column: 35, scope: !1201)
!1209 = !DILocation(line: 608, column: 27, scope: !1201)
!1210 = !DILocation(line: 610, column: 31, scope: !1201)
!1211 = !DILocation(line: 610, column: 37, scope: !1201)
!1212 = !DILocation(line: 610, column: 24, scope: !1201)
!1213 = !DILocation(line: 611, column: 17, scope: !1201)
!1214 = !DILocation(line: 611, column: 23, scope: !1201)
!1215 = !DILocation(line: 611, column: 10, scope: !1201)
!1216 = !DILocation(line: 610, column: 51, scope: !1201)
!1217 = !DILocation(line: 611, column: 36, scope: !1201)
!1218 = !DILocation(line: 610, column: 21, scope: !1201)
!1219 = !DILocation(line: 612, column: 5, scope: !1201)
!1220 = !DILocation(line: 613, column: 3, scope: !1197)
!1221 = !DILocation(line: 606, column: 59, scope: !1192)
!1222 = !DILocation(line: 606, column: 65, scope: !1192)
!1223 = !DILocation(line: 606, column: 57, scope: !1192)
!1224 = !DILocation(line: 606, column: 3, scope: !1192)
!1225 = distinct !{!1225, !1194, !1226, !524}
!1226 = !DILocation(line: 613, column: 3, scope: !1187)
!1227 = !DILocation(line: 615, column: 7, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1122, file: !2, line: 615, column: 7)
!1229 = !DILocation(line: 615, column: 27, scope: !1228)
!1230 = !DILocation(line: 616, column: 5, scope: !1228)
!1231 = !DILocation(line: 619, column: 34, scope: !1122)
!1232 = !DILocation(line: 619, column: 41, scope: !1122)
!1233 = !DILocation(line: 619, column: 62, scope: !1122)
!1234 = !DILocation(line: 620, column: 6, scope: !1122)
!1235 = !DILocation(line: 620, column: 11, scope: !1122)
!1236 = !DILocation(line: 619, column: 15, scope: !1122)
!1237 = !DILocation(line: 619, column: 13, scope: !1122)
!1238 = !DILocation(line: 626, column: 7, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1122, file: !2, line: 626, column: 7)
!1240 = !DILocation(line: 626, column: 20, scope: !1239)
!1241 = !DILocation(line: 626, column: 17, scope: !1239)
!1242 = !DILocation(line: 627, column: 20, scope: !1239)
!1243 = !DILocation(line: 627, column: 5, scope: !1239)
!1244 = !DILocation(line: 629, column: 22, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1239, file: !2, line: 628, column: 8)
!1246 = !DILocation(line: 629, column: 34, scope: !1245)
!1247 = !DILocation(line: 629, column: 32, scope: !1245)
!1248 = !DILocation(line: 629, column: 20, scope: !1245)
!1249 = !DILocation(line: 633, column: 9, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1245, file: !2, line: 633, column: 9)
!1251 = !DILocation(line: 633, column: 24, scope: !1250)
!1252 = !DILocation(line: 634, column: 22, scope: !1250)
!1253 = !DILocation(line: 634, column: 7, scope: !1250)
!1254 = !DILocation(line: 639, column: 15, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1122, file: !2, line: 639, column: 3)
!1256 = !DILocation(line: 639, column: 20, scope: !1255)
!1257 = !DILocation(line: 639, column: 13, scope: !1255)
!1258 = !DILocation(line: 639, column: 8, scope: !1255)
!1259 = !DILocation(line: 639, column: 38, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1255, file: !2, line: 639, column: 3)
!1261 = !DILocation(line: 639, column: 43, scope: !1260)
!1262 = !DILocation(line: 639, column: 3, scope: !1255)
!1263 = !DILocation(line: 640, column: 9, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1265, file: !2, line: 640, column: 9)
!1265 = distinct !DILexicalBlock(scope: !1260, file: !2, line: 639, column: 71)
!1266 = !DILocation(line: 640, column: 15, scope: !1264)
!1267 = !DILocation(line: 640, column: 26, scope: !1264)
!1268 = !DILocation(line: 641, column: 28, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1264, file: !2, line: 640, column: 35)
!1270 = !DILocation(line: 641, column: 34, scope: !1269)
!1271 = !DILocation(line: 641, column: 21, scope: !1269)
!1272 = !DILocation(line: 641, column: 48, scope: !1269)
!1273 = !DILocation(line: 641, column: 56, scope: !1269)
!1274 = !DILocation(line: 641, column: 62, scope: !1269)
!1275 = !DILocation(line: 641, column: 54, scope: !1269)
!1276 = !DILocation(line: 641, column: 72, scope: !1269)
!1277 = !DILocation(line: 641, column: 18, scope: !1269)
!1278 = !DILocation(line: 642, column: 11, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1269, file: !2, line: 642, column: 11)
!1280 = !DILocation(line: 642, column: 25, scope: !1279)
!1281 = !DILocation(line: 642, column: 22, scope: !1279)
!1282 = !DILocation(line: 644, column: 22, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1279, file: !2, line: 642, column: 41)
!1284 = !DILocation(line: 644, column: 28, scope: !1283)
!1285 = !DILocation(line: 644, column: 2, scope: !1283)
!1286 = !DILocation(line: 644, column: 8, scope: !1283)
!1287 = !DILocation(line: 644, column: 20, scope: !1283)
!1288 = !DILocation(line: 645, column: 7, scope: !1283)
!1289 = !DILocation(line: 647, column: 36, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1279, file: !2, line: 645, column: 14)
!1291 = !DILocation(line: 647, column: 53, scope: !1290)
!1292 = !DILocation(line: 647, column: 59, scope: !1290)
!1293 = !DILocation(line: 647, column: 51, scope: !1290)
!1294 = !DILocation(line: 647, column: 22, scope: !1290)
!1295 = !DILocation(line: 647, column: 2, scope: !1290)
!1296 = !DILocation(line: 647, column: 8, scope: !1290)
!1297 = !DILocation(line: 647, column: 20, scope: !1290)
!1298 = !DILocation(line: 648, column: 26, scope: !1290)
!1299 = !DILocation(line: 648, column: 35, scope: !1290)
!1300 = !DILocation(line: 648, column: 41, scope: !1290)
!1301 = !DILocation(line: 649, column: 12, scope: !1290)
!1302 = !DILocation(line: 649, column: 18, scope: !1290)
!1303 = !DILocation(line: 649, column: 5, scope: !1290)
!1304 = !DILocation(line: 650, column: 12, scope: !1290)
!1305 = !DILocation(line: 650, column: 18, scope: !1290)
!1306 = !DILocation(line: 650, column: 5, scope: !1290)
!1307 = !DILocation(line: 649, column: 32, scope: !1290)
!1308 = !DILocation(line: 650, column: 32, scope: !1290)
!1309 = !DILocation(line: 648, column: 2, scope: !1290)
!1310 = !DILocation(line: 652, column: 2, scope: !1290)
!1311 = !DILocation(line: 652, column: 8, scope: !1290)
!1312 = !DILocation(line: 652, column: 17, scope: !1290)
!1313 = !DILocation(line: 654, column: 39, scope: !1269)
!1314 = !DILocation(line: 655, column: 11, scope: !1269)
!1315 = !DILocation(line: 655, column: 17, scope: !1269)
!1316 = !DILocation(line: 655, column: 32, scope: !1269)
!1317 = !DILocation(line: 655, column: 38, scope: !1269)
!1318 = !DILocation(line: 654, column: 26, scope: !1269)
!1319 = !DILocation(line: 654, column: 7, scope: !1269)
!1320 = !DILocation(line: 654, column: 13, scope: !1269)
!1321 = !DILocation(line: 654, column: 24, scope: !1269)
!1322 = !DILocation(line: 656, column: 28, scope: !1269)
!1323 = !DILocation(line: 656, column: 33, scope: !1269)
!1324 = !DILocation(line: 656, column: 7, scope: !1269)
!1325 = !DILocation(line: 656, column: 13, scope: !1269)
!1326 = !DILocation(line: 656, column: 26, scope: !1269)
!1327 = !DILocation(line: 657, column: 7, scope: !1269)
!1328 = !DILocation(line: 657, column: 13, scope: !1269)
!1329 = !DILocation(line: 657, column: 27, scope: !1269)
!1330 = !DILocation(line: 658, column: 7, scope: !1269)
!1331 = !DILocation(line: 658, column: 13, scope: !1269)
!1332 = !DILocation(line: 658, column: 29, scope: !1269)
!1333 = !DILocation(line: 659, column: 7, scope: !1269)
!1334 = !DILocation(line: 659, column: 13, scope: !1269)
!1335 = !DILocation(line: 659, column: 19, scope: !1269)
!1336 = !DILocation(line: 660, column: 5, scope: !1269)
!1337 = !DILocation(line: 661, column: 3, scope: !1265)
!1338 = !DILocation(line: 639, column: 59, scope: !1260)
!1339 = !DILocation(line: 639, column: 65, scope: !1260)
!1340 = !DILocation(line: 639, column: 57, scope: !1260)
!1341 = !DILocation(line: 639, column: 3, scope: !1260)
!1342 = distinct !{!1342, !1262, !1343, !524}
!1343 = !DILocation(line: 661, column: 3, scope: !1255)
!1344 = !DILocation(line: 663, column: 15, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1122, file: !2, line: 663, column: 3)
!1346 = !DILocation(line: 663, column: 20, scope: !1345)
!1347 = !DILocation(line: 663, column: 13, scope: !1345)
!1348 = !DILocation(line: 663, column: 8, scope: !1345)
!1349 = !DILocation(line: 663, column: 38, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1345, file: !2, line: 663, column: 3)
!1351 = !DILocation(line: 663, column: 43, scope: !1350)
!1352 = !DILocation(line: 663, column: 3, scope: !1345)
!1353 = !DILocation(line: 664, column: 9, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !2, line: 664, column: 9)
!1355 = distinct !DILexicalBlock(scope: !1350, file: !2, line: 663, column: 71)
!1356 = !DILocation(line: 664, column: 15, scope: !1354)
!1357 = !DILocation(line: 664, column: 26, scope: !1354)
!1358 = !DILocation(line: 665, column: 28, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1354, file: !2, line: 664, column: 35)
!1360 = !DILocation(line: 665, column: 34, scope: !1359)
!1361 = !DILocation(line: 665, column: 21, scope: !1359)
!1362 = !DILocation(line: 665, column: 48, scope: !1359)
!1363 = !DILocation(line: 665, column: 56, scope: !1359)
!1364 = !DILocation(line: 665, column: 62, scope: !1359)
!1365 = !DILocation(line: 665, column: 54, scope: !1359)
!1366 = !DILocation(line: 665, column: 72, scope: !1359)
!1367 = !DILocation(line: 665, column: 18, scope: !1359)
!1368 = !DILocation(line: 666, column: 11, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1359, file: !2, line: 666, column: 11)
!1370 = !DILocation(line: 666, column: 25, scope: !1369)
!1371 = !DILocation(line: 666, column: 22, scope: !1369)
!1372 = !DILocation(line: 668, column: 22, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1369, file: !2, line: 666, column: 41)
!1374 = !DILocation(line: 668, column: 28, scope: !1373)
!1375 = !DILocation(line: 668, column: 2, scope: !1373)
!1376 = !DILocation(line: 668, column: 8, scope: !1373)
!1377 = !DILocation(line: 668, column: 20, scope: !1373)
!1378 = !DILocation(line: 669, column: 7, scope: !1373)
!1379 = !DILocation(line: 671, column: 36, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1369, file: !2, line: 669, column: 14)
!1381 = !DILocation(line: 671, column: 53, scope: !1380)
!1382 = !DILocation(line: 671, column: 59, scope: !1380)
!1383 = !DILocation(line: 671, column: 51, scope: !1380)
!1384 = !DILocation(line: 671, column: 22, scope: !1380)
!1385 = !DILocation(line: 671, column: 2, scope: !1380)
!1386 = !DILocation(line: 671, column: 8, scope: !1380)
!1387 = !DILocation(line: 671, column: 20, scope: !1380)
!1388 = !DILocation(line: 672, column: 26, scope: !1380)
!1389 = !DILocation(line: 672, column: 35, scope: !1380)
!1390 = !DILocation(line: 672, column: 41, scope: !1380)
!1391 = !DILocation(line: 673, column: 12, scope: !1380)
!1392 = !DILocation(line: 673, column: 18, scope: !1380)
!1393 = !DILocation(line: 673, column: 5, scope: !1380)
!1394 = !DILocation(line: 674, column: 12, scope: !1380)
!1395 = !DILocation(line: 674, column: 18, scope: !1380)
!1396 = !DILocation(line: 674, column: 5, scope: !1380)
!1397 = !DILocation(line: 673, column: 32, scope: !1380)
!1398 = !DILocation(line: 674, column: 31, scope: !1380)
!1399 = !DILocation(line: 672, column: 2, scope: !1380)
!1400 = !DILocation(line: 676, column: 2, scope: !1380)
!1401 = !DILocation(line: 676, column: 8, scope: !1380)
!1402 = !DILocation(line: 676, column: 17, scope: !1380)
!1403 = !DILocation(line: 678, column: 39, scope: !1359)
!1404 = !DILocation(line: 679, column: 11, scope: !1359)
!1405 = !DILocation(line: 679, column: 17, scope: !1359)
!1406 = !DILocation(line: 679, column: 31, scope: !1359)
!1407 = !DILocation(line: 679, column: 37, scope: !1359)
!1408 = !DILocation(line: 678, column: 26, scope: !1359)
!1409 = !DILocation(line: 678, column: 7, scope: !1359)
!1410 = !DILocation(line: 678, column: 13, scope: !1359)
!1411 = !DILocation(line: 678, column: 24, scope: !1359)
!1412 = !DILocation(line: 680, column: 28, scope: !1359)
!1413 = !DILocation(line: 680, column: 33, scope: !1359)
!1414 = !DILocation(line: 680, column: 7, scope: !1359)
!1415 = !DILocation(line: 680, column: 13, scope: !1359)
!1416 = !DILocation(line: 680, column: 26, scope: !1359)
!1417 = !DILocation(line: 681, column: 7, scope: !1359)
!1418 = !DILocation(line: 681, column: 13, scope: !1359)
!1419 = !DILocation(line: 681, column: 27, scope: !1359)
!1420 = !DILocation(line: 682, column: 7, scope: !1359)
!1421 = !DILocation(line: 682, column: 13, scope: !1359)
!1422 = !DILocation(line: 682, column: 29, scope: !1359)
!1423 = !DILocation(line: 683, column: 7, scope: !1359)
!1424 = !DILocation(line: 683, column: 13, scope: !1359)
!1425 = !DILocation(line: 683, column: 19, scope: !1359)
!1426 = !DILocation(line: 684, column: 5, scope: !1359)
!1427 = !DILocation(line: 685, column: 3, scope: !1355)
!1428 = !DILocation(line: 663, column: 59, scope: !1350)
!1429 = !DILocation(line: 663, column: 65, scope: !1350)
!1430 = !DILocation(line: 663, column: 57, scope: !1350)
!1431 = !DILocation(line: 663, column: 3, scope: !1350)
!1432 = distinct !{!1432, !1352, !1433, !524}
!1433 = !DILocation(line: 685, column: 3, scope: !1345)
!1434 = !DILocation(line: 686, column: 1, scope: !1122)
!1435 = distinct !DISubprogram(name: "access_virt_sarray", scope: !2, file: !2, line: 756, type: !347, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !420)
!1436 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1435, file: !2, line: 756, type: !146)
!1437 = !DILocation(line: 756, column: 34, scope: !1435)
!1438 = !DILocalVariable(name: "ptr", arg: 2, scope: !1435, file: !2, line: 756, type: !232)
!1439 = !DILocation(line: 756, column: 58, scope: !1435)
!1440 = !DILocalVariable(name: "start_row", arg: 3, scope: !1435, file: !2, line: 757, type: !213)
!1441 = !DILocation(line: 757, column: 18, scope: !1435)
!1442 = !DILocalVariable(name: "num_rows", arg: 4, scope: !1435, file: !2, line: 757, type: !213)
!1443 = !DILocation(line: 757, column: 40, scope: !1435)
!1444 = !DILocalVariable(name: "writable", arg: 5, scope: !1435, file: !2, line: 758, type: !245)
!1445 = !DILocation(line: 758, column: 15, scope: !1435)
!1446 = !DILocalVariable(name: "end_row", scope: !1435, file: !2, line: 763, type: !213)
!1447 = !DILocation(line: 763, column: 14, scope: !1435)
!1448 = !DILocation(line: 763, column: 24, scope: !1435)
!1449 = !DILocation(line: 763, column: 36, scope: !1435)
!1450 = !DILocation(line: 763, column: 34, scope: !1435)
!1451 = !DILocalVariable(name: "undef_row", scope: !1435, file: !2, line: 764, type: !213)
!1452 = !DILocation(line: 764, column: 14, scope: !1435)
!1453 = !DILocation(line: 767, column: 7, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1435, file: !2, line: 767, column: 7)
!1455 = !DILocation(line: 767, column: 17, scope: !1454)
!1456 = !DILocation(line: 767, column: 22, scope: !1454)
!1457 = !DILocation(line: 767, column: 15, scope: !1454)
!1458 = !DILocation(line: 767, column: 36, scope: !1454)
!1459 = !DILocation(line: 767, column: 39, scope: !1454)
!1460 = !DILocation(line: 767, column: 50, scope: !1454)
!1461 = !DILocation(line: 767, column: 55, scope: !1454)
!1462 = !DILocation(line: 767, column: 48, scope: !1454)
!1463 = !DILocation(line: 767, column: 65, scope: !1454)
!1464 = !DILocation(line: 768, column: 7, scope: !1454)
!1465 = !DILocation(line: 768, column: 12, scope: !1454)
!1466 = !DILocation(line: 768, column: 23, scope: !1454)
!1467 = !DILocation(line: 769, column: 5, scope: !1454)
!1468 = !DILocation(line: 772, column: 7, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1435, file: !2, line: 772, column: 7)
!1470 = !DILocation(line: 772, column: 19, scope: !1469)
!1471 = !DILocation(line: 772, column: 24, scope: !1469)
!1472 = !DILocation(line: 772, column: 17, scope: !1469)
!1473 = !DILocation(line: 772, column: 38, scope: !1469)
!1474 = !DILocation(line: 773, column: 7, scope: !1469)
!1475 = !DILocation(line: 773, column: 17, scope: !1469)
!1476 = !DILocation(line: 773, column: 22, scope: !1469)
!1477 = !DILocation(line: 773, column: 36, scope: !1469)
!1478 = !DILocation(line: 773, column: 41, scope: !1469)
!1479 = !DILocation(line: 773, column: 35, scope: !1469)
!1480 = !DILocation(line: 773, column: 15, scope: !1469)
!1481 = !DILocation(line: 774, column: 11, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1483, file: !2, line: 774, column: 9)
!1483 = distinct !DILexicalBlock(scope: !1469, file: !2, line: 773, column: 54)
!1484 = !DILocation(line: 774, column: 16, scope: !1482)
!1485 = !DILocation(line: 774, column: 9, scope: !1482)
!1486 = !DILocation(line: 775, column: 7, scope: !1482)
!1487 = !DILocation(line: 777, column: 9, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1483, file: !2, line: 777, column: 9)
!1489 = !DILocation(line: 777, column: 14, scope: !1488)
!1490 = !DILocation(line: 778, column: 20, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1488, file: !2, line: 777, column: 21)
!1492 = !DILocation(line: 778, column: 27, scope: !1491)
!1493 = !DILocation(line: 778, column: 7, scope: !1491)
!1494 = !DILocation(line: 779, column: 7, scope: !1491)
!1495 = !DILocation(line: 779, column: 12, scope: !1491)
!1496 = !DILocation(line: 779, column: 18, scope: !1491)
!1497 = !DILocation(line: 780, column: 5, scope: !1491)
!1498 = !DILocation(line: 788, column: 9, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1483, file: !2, line: 788, column: 9)
!1500 = !DILocation(line: 788, column: 21, scope: !1499)
!1501 = !DILocation(line: 788, column: 26, scope: !1499)
!1502 = !DILocation(line: 788, column: 19, scope: !1499)
!1503 = !DILocation(line: 789, column: 28, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1499, file: !2, line: 788, column: 41)
!1505 = !DILocation(line: 789, column: 7, scope: !1504)
!1506 = !DILocation(line: 789, column: 12, scope: !1504)
!1507 = !DILocation(line: 789, column: 26, scope: !1504)
!1508 = !DILocation(line: 790, column: 5, scope: !1504)
!1509 = !DILocalVariable(name: "ltemp", scope: !1510, file: !2, line: 792, type: !145)
!1510 = distinct !DILexicalBlock(scope: !1499, file: !2, line: 790, column: 12)
!1511 = !DILocation(line: 792, column: 12, scope: !1510)
!1512 = !DILocation(line: 794, column: 22, scope: !1510)
!1513 = !DILocation(line: 794, column: 15, scope: !1510)
!1514 = !DILocation(line: 794, column: 39, scope: !1510)
!1515 = !DILocation(line: 794, column: 44, scope: !1510)
!1516 = !DILocation(line: 794, column: 32, scope: !1510)
!1517 = !DILocation(line: 794, column: 30, scope: !1510)
!1518 = !DILocation(line: 794, column: 13, scope: !1510)
!1519 = !DILocation(line: 795, column: 11, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1510, file: !2, line: 795, column: 11)
!1521 = !DILocation(line: 795, column: 17, scope: !1520)
!1522 = !DILocation(line: 796, column: 8, scope: !1520)
!1523 = !DILocation(line: 796, column: 2, scope: !1520)
!1524 = !DILocation(line: 797, column: 41, scope: !1510)
!1525 = !DILocation(line: 797, column: 28, scope: !1510)
!1526 = !DILocation(line: 797, column: 7, scope: !1510)
!1527 = !DILocation(line: 797, column: 12, scope: !1510)
!1528 = !DILocation(line: 797, column: 26, scope: !1510)
!1529 = !DILocation(line: 803, column: 18, scope: !1483)
!1530 = !DILocation(line: 803, column: 25, scope: !1483)
!1531 = !DILocation(line: 803, column: 5, scope: !1483)
!1532 = !DILocation(line: 804, column: 3, scope: !1483)
!1533 = !DILocation(line: 809, column: 7, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1435, file: !2, line: 809, column: 7)
!1535 = !DILocation(line: 809, column: 12, scope: !1534)
!1536 = !DILocation(line: 809, column: 30, scope: !1534)
!1537 = !DILocation(line: 809, column: 28, scope: !1534)
!1538 = !DILocation(line: 810, column: 9, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1540, file: !2, line: 810, column: 9)
!1540 = distinct !DILexicalBlock(scope: !1534, file: !2, line: 809, column: 39)
!1541 = !DILocation(line: 810, column: 14, scope: !1539)
!1542 = !DILocation(line: 810, column: 32, scope: !1539)
!1543 = !DILocation(line: 810, column: 30, scope: !1539)
!1544 = !DILocation(line: 811, column: 11, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !2, line: 811, column: 11)
!1546 = distinct !DILexicalBlock(scope: !1539, file: !2, line: 810, column: 43)
!1547 = !DILocation(line: 812, column: 2, scope: !1545)
!1548 = !DILocation(line: 813, column: 19, scope: !1546)
!1549 = !DILocation(line: 813, column: 17, scope: !1546)
!1550 = !DILocation(line: 814, column: 5, scope: !1546)
!1551 = !DILocation(line: 815, column: 19, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1539, file: !2, line: 814, column: 12)
!1553 = !DILocation(line: 815, column: 24, scope: !1552)
!1554 = !DILocation(line: 815, column: 17, scope: !1552)
!1555 = !DILocation(line: 817, column: 9, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1540, file: !2, line: 817, column: 9)
!1557 = !DILocation(line: 818, column: 30, scope: !1556)
!1558 = !DILocation(line: 818, column: 7, scope: !1556)
!1559 = !DILocation(line: 818, column: 12, scope: !1556)
!1560 = !DILocation(line: 818, column: 28, scope: !1556)
!1561 = !DILocation(line: 819, column: 9, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1540, file: !2, line: 819, column: 9)
!1563 = !DILocation(line: 819, column: 14, scope: !1562)
!1564 = !DILocalVariable(name: "bytesperrow", scope: !1565, file: !2, line: 820, type: !142)
!1565 = distinct !DILexicalBlock(scope: !1562, file: !2, line: 819, column: 24)
!1566 = !DILocation(line: 820, column: 14, scope: !1565)
!1567 = !DILocation(line: 820, column: 37, scope: !1565)
!1568 = !DILocation(line: 820, column: 42, scope: !1565)
!1569 = !DILocation(line: 820, column: 28, scope: !1565)
!1570 = !DILocation(line: 820, column: 56, scope: !1565)
!1571 = !DILocation(line: 821, column: 20, scope: !1565)
!1572 = !DILocation(line: 821, column: 25, scope: !1565)
!1573 = !DILocation(line: 821, column: 17, scope: !1565)
!1574 = !DILocation(line: 822, column: 18, scope: !1565)
!1575 = !DILocation(line: 822, column: 23, scope: !1565)
!1576 = !DILocation(line: 822, column: 15, scope: !1565)
!1577 = !DILocation(line: 823, column: 7, scope: !1565)
!1578 = !DILocation(line: 823, column: 14, scope: !1565)
!1579 = !DILocation(line: 823, column: 26, scope: !1565)
!1580 = !DILocation(line: 823, column: 24, scope: !1565)
!1581 = !DILocation(line: 824, column: 25, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1565, file: !2, line: 823, column: 35)
!1583 = !DILocation(line: 824, column: 30, scope: !1582)
!1584 = !DILocation(line: 824, column: 41, scope: !1582)
!1585 = !DILocation(line: 824, column: 53, scope: !1582)
!1586 = !DILocation(line: 824, column: 2, scope: !1582)
!1587 = !DILocation(line: 825, column: 11, scope: !1582)
!1588 = distinct !{!1588, !1577, !1589, !524}
!1589 = !DILocation(line: 826, column: 7, scope: !1565)
!1590 = !DILocation(line: 827, column: 5, scope: !1565)
!1591 = !DILocation(line: 828, column: 13, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1593, file: !2, line: 828, column: 11)
!1593 = distinct !DILexicalBlock(scope: !1562, file: !2, line: 827, column: 12)
!1594 = !DILocation(line: 828, column: 11, scope: !1592)
!1595 = !DILocation(line: 829, column: 2, scope: !1592)
!1596 = !DILocation(line: 831, column: 3, scope: !1540)
!1597 = !DILocation(line: 833, column: 7, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1435, file: !2, line: 833, column: 7)
!1599 = !DILocation(line: 834, column: 5, scope: !1598)
!1600 = !DILocation(line: 834, column: 10, scope: !1598)
!1601 = !DILocation(line: 834, column: 16, scope: !1598)
!1602 = !DILocation(line: 836, column: 10, scope: !1435)
!1603 = !DILocation(line: 836, column: 15, scope: !1435)
!1604 = !DILocation(line: 836, column: 29, scope: !1435)
!1605 = !DILocation(line: 836, column: 41, scope: !1435)
!1606 = !DILocation(line: 836, column: 46, scope: !1435)
!1607 = !DILocation(line: 836, column: 39, scope: !1435)
!1608 = !DILocation(line: 836, column: 26, scope: !1435)
!1609 = !DILocation(line: 836, column: 3, scope: !1435)
!1610 = distinct !DISubprogram(name: "access_virt_barray", scope: !2, file: !2, line: 841, type: !351, scopeLine: 847, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !420)
!1611 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1610, file: !2, line: 841, type: !146)
!1612 = !DILocation(line: 841, column: 34, scope: !1610)
!1613 = !DILocalVariable(name: "ptr", arg: 2, scope: !1610, file: !2, line: 841, type: !327)
!1614 = !DILocation(line: 841, column: 58, scope: !1610)
!1615 = !DILocalVariable(name: "start_row", arg: 3, scope: !1610, file: !2, line: 842, type: !213)
!1616 = !DILocation(line: 842, column: 18, scope: !1610)
!1617 = !DILocalVariable(name: "num_rows", arg: 4, scope: !1610, file: !2, line: 842, type: !213)
!1618 = !DILocation(line: 842, column: 40, scope: !1610)
!1619 = !DILocalVariable(name: "writable", arg: 5, scope: !1610, file: !2, line: 843, type: !245)
!1620 = !DILocation(line: 843, column: 15, scope: !1610)
!1621 = !DILocalVariable(name: "end_row", scope: !1610, file: !2, line: 848, type: !213)
!1622 = !DILocation(line: 848, column: 14, scope: !1610)
!1623 = !DILocation(line: 848, column: 24, scope: !1610)
!1624 = !DILocation(line: 848, column: 36, scope: !1610)
!1625 = !DILocation(line: 848, column: 34, scope: !1610)
!1626 = !DILocalVariable(name: "undef_row", scope: !1610, file: !2, line: 849, type: !213)
!1627 = !DILocation(line: 849, column: 14, scope: !1610)
!1628 = !DILocation(line: 852, column: 7, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1610, file: !2, line: 852, column: 7)
!1630 = !DILocation(line: 852, column: 17, scope: !1629)
!1631 = !DILocation(line: 852, column: 22, scope: !1629)
!1632 = !DILocation(line: 852, column: 15, scope: !1629)
!1633 = !DILocation(line: 852, column: 36, scope: !1629)
!1634 = !DILocation(line: 852, column: 39, scope: !1629)
!1635 = !DILocation(line: 852, column: 50, scope: !1629)
!1636 = !DILocation(line: 852, column: 55, scope: !1629)
!1637 = !DILocation(line: 852, column: 48, scope: !1629)
!1638 = !DILocation(line: 852, column: 65, scope: !1629)
!1639 = !DILocation(line: 853, column: 7, scope: !1629)
!1640 = !DILocation(line: 853, column: 12, scope: !1629)
!1641 = !DILocation(line: 853, column: 23, scope: !1629)
!1642 = !DILocation(line: 854, column: 5, scope: !1629)
!1643 = !DILocation(line: 857, column: 7, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1610, file: !2, line: 857, column: 7)
!1645 = !DILocation(line: 857, column: 19, scope: !1644)
!1646 = !DILocation(line: 857, column: 24, scope: !1644)
!1647 = !DILocation(line: 857, column: 17, scope: !1644)
!1648 = !DILocation(line: 857, column: 38, scope: !1644)
!1649 = !DILocation(line: 858, column: 7, scope: !1644)
!1650 = !DILocation(line: 858, column: 17, scope: !1644)
!1651 = !DILocation(line: 858, column: 22, scope: !1644)
!1652 = !DILocation(line: 858, column: 36, scope: !1644)
!1653 = !DILocation(line: 858, column: 41, scope: !1644)
!1654 = !DILocation(line: 858, column: 35, scope: !1644)
!1655 = !DILocation(line: 858, column: 15, scope: !1644)
!1656 = !DILocation(line: 859, column: 11, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1658, file: !2, line: 859, column: 9)
!1658 = distinct !DILexicalBlock(scope: !1644, file: !2, line: 858, column: 54)
!1659 = !DILocation(line: 859, column: 16, scope: !1657)
!1660 = !DILocation(line: 859, column: 9, scope: !1657)
!1661 = !DILocation(line: 860, column: 7, scope: !1657)
!1662 = !DILocation(line: 862, column: 9, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1658, file: !2, line: 862, column: 9)
!1664 = !DILocation(line: 862, column: 14, scope: !1663)
!1665 = !DILocation(line: 863, column: 20, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1663, file: !2, line: 862, column: 21)
!1667 = !DILocation(line: 863, column: 27, scope: !1666)
!1668 = !DILocation(line: 863, column: 7, scope: !1666)
!1669 = !DILocation(line: 864, column: 7, scope: !1666)
!1670 = !DILocation(line: 864, column: 12, scope: !1666)
!1671 = !DILocation(line: 864, column: 18, scope: !1666)
!1672 = !DILocation(line: 865, column: 5, scope: !1666)
!1673 = !DILocation(line: 873, column: 9, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1658, file: !2, line: 873, column: 9)
!1675 = !DILocation(line: 873, column: 21, scope: !1674)
!1676 = !DILocation(line: 873, column: 26, scope: !1674)
!1677 = !DILocation(line: 873, column: 19, scope: !1674)
!1678 = !DILocation(line: 874, column: 28, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1674, file: !2, line: 873, column: 41)
!1680 = !DILocation(line: 874, column: 7, scope: !1679)
!1681 = !DILocation(line: 874, column: 12, scope: !1679)
!1682 = !DILocation(line: 874, column: 26, scope: !1679)
!1683 = !DILocation(line: 875, column: 5, scope: !1679)
!1684 = !DILocalVariable(name: "ltemp", scope: !1685, file: !2, line: 877, type: !145)
!1685 = distinct !DILexicalBlock(scope: !1674, file: !2, line: 875, column: 12)
!1686 = !DILocation(line: 877, column: 12, scope: !1685)
!1687 = !DILocation(line: 879, column: 22, scope: !1685)
!1688 = !DILocation(line: 879, column: 15, scope: !1685)
!1689 = !DILocation(line: 879, column: 39, scope: !1685)
!1690 = !DILocation(line: 879, column: 44, scope: !1685)
!1691 = !DILocation(line: 879, column: 32, scope: !1685)
!1692 = !DILocation(line: 879, column: 30, scope: !1685)
!1693 = !DILocation(line: 879, column: 13, scope: !1685)
!1694 = !DILocation(line: 880, column: 11, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1685, file: !2, line: 880, column: 11)
!1696 = !DILocation(line: 880, column: 17, scope: !1695)
!1697 = !DILocation(line: 881, column: 8, scope: !1695)
!1698 = !DILocation(line: 881, column: 2, scope: !1695)
!1699 = !DILocation(line: 882, column: 41, scope: !1685)
!1700 = !DILocation(line: 882, column: 28, scope: !1685)
!1701 = !DILocation(line: 882, column: 7, scope: !1685)
!1702 = !DILocation(line: 882, column: 12, scope: !1685)
!1703 = !DILocation(line: 882, column: 26, scope: !1685)
!1704 = !DILocation(line: 888, column: 18, scope: !1658)
!1705 = !DILocation(line: 888, column: 25, scope: !1658)
!1706 = !DILocation(line: 888, column: 5, scope: !1658)
!1707 = !DILocation(line: 889, column: 3, scope: !1658)
!1708 = !DILocation(line: 894, column: 7, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1610, file: !2, line: 894, column: 7)
!1710 = !DILocation(line: 894, column: 12, scope: !1709)
!1711 = !DILocation(line: 894, column: 30, scope: !1709)
!1712 = !DILocation(line: 894, column: 28, scope: !1709)
!1713 = !DILocation(line: 895, column: 9, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1715, file: !2, line: 895, column: 9)
!1715 = distinct !DILexicalBlock(scope: !1709, file: !2, line: 894, column: 39)
!1716 = !DILocation(line: 895, column: 14, scope: !1714)
!1717 = !DILocation(line: 895, column: 32, scope: !1714)
!1718 = !DILocation(line: 895, column: 30, scope: !1714)
!1719 = !DILocation(line: 896, column: 11, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1721, file: !2, line: 896, column: 11)
!1721 = distinct !DILexicalBlock(scope: !1714, file: !2, line: 895, column: 43)
!1722 = !DILocation(line: 897, column: 2, scope: !1720)
!1723 = !DILocation(line: 898, column: 19, scope: !1721)
!1724 = !DILocation(line: 898, column: 17, scope: !1721)
!1725 = !DILocation(line: 899, column: 5, scope: !1721)
!1726 = !DILocation(line: 900, column: 19, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1714, file: !2, line: 899, column: 12)
!1728 = !DILocation(line: 900, column: 24, scope: !1727)
!1729 = !DILocation(line: 900, column: 17, scope: !1727)
!1730 = !DILocation(line: 902, column: 9, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1715, file: !2, line: 902, column: 9)
!1732 = !DILocation(line: 903, column: 30, scope: !1731)
!1733 = !DILocation(line: 903, column: 7, scope: !1731)
!1734 = !DILocation(line: 903, column: 12, scope: !1731)
!1735 = !DILocation(line: 903, column: 28, scope: !1731)
!1736 = !DILocation(line: 904, column: 9, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1715, file: !2, line: 904, column: 9)
!1738 = !DILocation(line: 904, column: 14, scope: !1737)
!1739 = !DILocalVariable(name: "bytesperrow", scope: !1740, file: !2, line: 905, type: !142)
!1740 = distinct !DILexicalBlock(scope: !1737, file: !2, line: 904, column: 24)
!1741 = !DILocation(line: 905, column: 14, scope: !1740)
!1742 = !DILocation(line: 905, column: 37, scope: !1740)
!1743 = !DILocation(line: 905, column: 42, scope: !1740)
!1744 = !DILocation(line: 905, column: 28, scope: !1740)
!1745 = !DILocation(line: 905, column: 55, scope: !1740)
!1746 = !DILocation(line: 906, column: 20, scope: !1740)
!1747 = !DILocation(line: 906, column: 25, scope: !1740)
!1748 = !DILocation(line: 906, column: 17, scope: !1740)
!1749 = !DILocation(line: 907, column: 18, scope: !1740)
!1750 = !DILocation(line: 907, column: 23, scope: !1740)
!1751 = !DILocation(line: 907, column: 15, scope: !1740)
!1752 = !DILocation(line: 908, column: 7, scope: !1740)
!1753 = !DILocation(line: 908, column: 14, scope: !1740)
!1754 = !DILocation(line: 908, column: 26, scope: !1740)
!1755 = !DILocation(line: 908, column: 24, scope: !1740)
!1756 = !DILocation(line: 909, column: 25, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1740, file: !2, line: 908, column: 35)
!1758 = !DILocation(line: 909, column: 30, scope: !1757)
!1759 = !DILocation(line: 909, column: 41, scope: !1757)
!1760 = !DILocation(line: 909, column: 53, scope: !1757)
!1761 = !DILocation(line: 909, column: 2, scope: !1757)
!1762 = !DILocation(line: 910, column: 11, scope: !1757)
!1763 = distinct !{!1763, !1752, !1764, !524}
!1764 = !DILocation(line: 911, column: 7, scope: !1740)
!1765 = !DILocation(line: 912, column: 5, scope: !1740)
!1766 = !DILocation(line: 913, column: 13, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1768, file: !2, line: 913, column: 11)
!1768 = distinct !DILexicalBlock(scope: !1737, file: !2, line: 912, column: 12)
!1769 = !DILocation(line: 913, column: 11, scope: !1767)
!1770 = !DILocation(line: 914, column: 2, scope: !1767)
!1771 = !DILocation(line: 916, column: 3, scope: !1715)
!1772 = !DILocation(line: 918, column: 7, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1610, file: !2, line: 918, column: 7)
!1774 = !DILocation(line: 919, column: 5, scope: !1773)
!1775 = !DILocation(line: 919, column: 10, scope: !1773)
!1776 = !DILocation(line: 919, column: 16, scope: !1773)
!1777 = !DILocation(line: 921, column: 10, scope: !1610)
!1778 = !DILocation(line: 921, column: 15, scope: !1610)
!1779 = !DILocation(line: 921, column: 29, scope: !1610)
!1780 = !DILocation(line: 921, column: 41, scope: !1610)
!1781 = !DILocation(line: 921, column: 46, scope: !1610)
!1782 = !DILocation(line: 921, column: 39, scope: !1610)
!1783 = !DILocation(line: 921, column: 26, scope: !1610)
!1784 = !DILocation(line: 921, column: 3, scope: !1610)
!1785 = distinct !DISubprogram(name: "free_pool", scope: !2, file: !2, line: 930, type: !161, scopeLine: 931, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !420)
!1786 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1785, file: !2, line: 930, type: !146)
!1787 = !DILocation(line: 930, column: 25, scope: !1785)
!1788 = !DILocalVariable(name: "pool_id", arg: 2, scope: !1785, file: !2, line: 930, type: !163)
!1789 = !DILocation(line: 930, column: 36, scope: !1785)
!1790 = !DILocalVariable(name: "mem", scope: !1785, file: !2, line: 932, type: !367)
!1791 = !DILocation(line: 932, column: 14, scope: !1785)
!1792 = !DILocation(line: 932, column: 33, scope: !1785)
!1793 = !DILocation(line: 932, column: 40, scope: !1785)
!1794 = !DILocalVariable(name: "shdr_ptr", scope: !1785, file: !2, line: 933, type: !375)
!1795 = !DILocation(line: 933, column: 18, scope: !1785)
!1796 = !DILocalVariable(name: "lhdr_ptr", scope: !1785, file: !2, line: 934, type: !391)
!1797 = !DILocation(line: 934, column: 18, scope: !1785)
!1798 = !DILocalVariable(name: "space_freed", scope: !1785, file: !2, line: 935, type: !142)
!1799 = !DILocation(line: 935, column: 10, scope: !1785)
!1800 = !DILocation(line: 937, column: 7, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1785, file: !2, line: 937, column: 7)
!1802 = !DILocation(line: 937, column: 15, scope: !1801)
!1803 = !DILocation(line: 937, column: 19, scope: !1801)
!1804 = !DILocation(line: 937, column: 22, scope: !1801)
!1805 = !DILocation(line: 937, column: 30, scope: !1801)
!1806 = !DILocation(line: 938, column: 5, scope: !1801)
!1807 = !DILocation(line: 946, column: 7, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1785, file: !2, line: 946, column: 7)
!1809 = !DILocation(line: 946, column: 15, scope: !1808)
!1810 = !DILocalVariable(name: "sptr", scope: !1811, file: !2, line: 947, type: !232)
!1811 = distinct !DILexicalBlock(scope: !1808, file: !2, line: 946, column: 31)
!1812 = !DILocation(line: 947, column: 22, scope: !1811)
!1813 = !DILocalVariable(name: "bptr", scope: !1811, file: !2, line: 948, type: !327)
!1814 = !DILocation(line: 948, column: 22, scope: !1811)
!1815 = !DILocation(line: 950, column: 17, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1811, file: !2, line: 950, column: 5)
!1817 = !DILocation(line: 950, column: 22, scope: !1816)
!1818 = !DILocation(line: 950, column: 15, scope: !1816)
!1819 = !DILocation(line: 950, column: 10, scope: !1816)
!1820 = !DILocation(line: 950, column: 40, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1816, file: !2, line: 950, column: 5)
!1822 = !DILocation(line: 950, column: 45, scope: !1821)
!1823 = !DILocation(line: 950, column: 5, scope: !1816)
!1824 = !DILocation(line: 951, column: 11, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1826, file: !2, line: 951, column: 11)
!1826 = distinct !DILexicalBlock(scope: !1821, file: !2, line: 950, column: 73)
!1827 = !DILocation(line: 951, column: 17, scope: !1825)
!1828 = !DILocation(line: 952, column: 2, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1825, file: !2, line: 951, column: 27)
!1830 = !DILocation(line: 952, column: 8, scope: !1829)
!1831 = !DILocation(line: 952, column: 17, scope: !1829)
!1832 = !DILocation(line: 953, column: 4, scope: !1829)
!1833 = !DILocation(line: 953, column: 10, scope: !1829)
!1834 = !DILocation(line: 953, column: 19, scope: !1829)
!1835 = !DILocation(line: 953, column: 41, scope: !1829)
!1836 = !DILocation(line: 953, column: 50, scope: !1829)
!1837 = !DILocation(line: 953, column: 56, scope: !1829)
!1838 = !DILocation(line: 953, column: 2, scope: !1829)
!1839 = !DILocation(line: 954, column: 7, scope: !1829)
!1840 = !DILocation(line: 955, column: 5, scope: !1826)
!1841 = !DILocation(line: 950, column: 61, scope: !1821)
!1842 = !DILocation(line: 950, column: 67, scope: !1821)
!1843 = !DILocation(line: 950, column: 59, scope: !1821)
!1844 = !DILocation(line: 950, column: 5, scope: !1821)
!1845 = distinct !{!1845, !1823, !1846, !524}
!1846 = !DILocation(line: 955, column: 5, scope: !1816)
!1847 = !DILocation(line: 956, column: 5, scope: !1811)
!1848 = !DILocation(line: 956, column: 10, scope: !1811)
!1849 = !DILocation(line: 956, column: 27, scope: !1811)
!1850 = !DILocation(line: 957, column: 17, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1811, file: !2, line: 957, column: 5)
!1852 = !DILocation(line: 957, column: 22, scope: !1851)
!1853 = !DILocation(line: 957, column: 15, scope: !1851)
!1854 = !DILocation(line: 957, column: 10, scope: !1851)
!1855 = !DILocation(line: 957, column: 40, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1851, file: !2, line: 957, column: 5)
!1857 = !DILocation(line: 957, column: 45, scope: !1856)
!1858 = !DILocation(line: 957, column: 5, scope: !1851)
!1859 = !DILocation(line: 958, column: 11, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1861, file: !2, line: 958, column: 11)
!1861 = distinct !DILexicalBlock(scope: !1856, file: !2, line: 957, column: 73)
!1862 = !DILocation(line: 958, column: 17, scope: !1860)
!1863 = !DILocation(line: 959, column: 2, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1860, file: !2, line: 958, column: 27)
!1865 = !DILocation(line: 959, column: 8, scope: !1864)
!1866 = !DILocation(line: 959, column: 17, scope: !1864)
!1867 = !DILocation(line: 960, column: 4, scope: !1864)
!1868 = !DILocation(line: 960, column: 10, scope: !1864)
!1869 = !DILocation(line: 960, column: 19, scope: !1864)
!1870 = !DILocation(line: 960, column: 41, scope: !1864)
!1871 = !DILocation(line: 960, column: 50, scope: !1864)
!1872 = !DILocation(line: 960, column: 56, scope: !1864)
!1873 = !DILocation(line: 960, column: 2, scope: !1864)
!1874 = !DILocation(line: 961, column: 7, scope: !1864)
!1875 = !DILocation(line: 962, column: 5, scope: !1861)
!1876 = !DILocation(line: 957, column: 61, scope: !1856)
!1877 = !DILocation(line: 957, column: 67, scope: !1856)
!1878 = !DILocation(line: 957, column: 59, scope: !1856)
!1879 = !DILocation(line: 957, column: 5, scope: !1856)
!1880 = distinct !{!1880, !1858, !1881, !524}
!1881 = !DILocation(line: 962, column: 5, scope: !1851)
!1882 = !DILocation(line: 963, column: 5, scope: !1811)
!1883 = !DILocation(line: 963, column: 10, scope: !1811)
!1884 = !DILocation(line: 963, column: 27, scope: !1811)
!1885 = !DILocation(line: 964, column: 3, scope: !1811)
!1886 = !DILocation(line: 967, column: 14, scope: !1785)
!1887 = !DILocation(line: 967, column: 19, scope: !1785)
!1888 = !DILocation(line: 967, column: 30, scope: !1785)
!1889 = !DILocation(line: 967, column: 12, scope: !1785)
!1890 = !DILocation(line: 968, column: 3, scope: !1785)
!1891 = !DILocation(line: 968, column: 8, scope: !1785)
!1892 = !DILocation(line: 968, column: 19, scope: !1785)
!1893 = !DILocation(line: 968, column: 28, scope: !1785)
!1894 = !DILocation(line: 970, column: 3, scope: !1785)
!1895 = !DILocation(line: 970, column: 10, scope: !1785)
!1896 = !DILocation(line: 970, column: 19, scope: !1785)
!1897 = !DILocalVariable(name: "next_lhdr_ptr", scope: !1898, file: !2, line: 971, type: !391)
!1898 = distinct !DILexicalBlock(scope: !1785, file: !2, line: 970, column: 28)
!1899 = !DILocation(line: 971, column: 20, scope: !1898)
!1900 = !DILocation(line: 971, column: 36, scope: !1898)
!1901 = !DILocation(line: 971, column: 50, scope: !1898)
!1902 = !DILocation(line: 972, column: 19, scope: !1898)
!1903 = !DILocation(line: 972, column: 33, scope: !1898)
!1904 = !DILocation(line: 973, column: 5, scope: !1898)
!1905 = !DILocation(line: 973, column: 19, scope: !1898)
!1906 = !DILocation(line: 972, column: 44, scope: !1898)
!1907 = !DILocation(line: 973, column: 30, scope: !1898)
!1908 = !DILocation(line: 972, column: 17, scope: !1898)
!1909 = !DILocation(line: 975, column: 21, scope: !1898)
!1910 = !DILocation(line: 975, column: 41, scope: !1898)
!1911 = !DILocation(line: 975, column: 51, scope: !1898)
!1912 = !DILocation(line: 975, column: 5, scope: !1898)
!1913 = !DILocation(line: 976, column: 35, scope: !1898)
!1914 = !DILocation(line: 976, column: 5, scope: !1898)
!1915 = !DILocation(line: 976, column: 10, scope: !1898)
!1916 = !DILocation(line: 976, column: 32, scope: !1898)
!1917 = !DILocation(line: 977, column: 16, scope: !1898)
!1918 = !DILocation(line: 977, column: 14, scope: !1898)
!1919 = distinct !{!1919, !1894, !1920, !524}
!1920 = !DILocation(line: 978, column: 3, scope: !1785)
!1921 = !DILocation(line: 981, column: 14, scope: !1785)
!1922 = !DILocation(line: 981, column: 19, scope: !1785)
!1923 = !DILocation(line: 981, column: 30, scope: !1785)
!1924 = !DILocation(line: 981, column: 12, scope: !1785)
!1925 = !DILocation(line: 982, column: 3, scope: !1785)
!1926 = !DILocation(line: 982, column: 8, scope: !1785)
!1927 = !DILocation(line: 982, column: 19, scope: !1785)
!1928 = !DILocation(line: 982, column: 28, scope: !1785)
!1929 = !DILocation(line: 984, column: 3, scope: !1785)
!1930 = !DILocation(line: 984, column: 10, scope: !1785)
!1931 = !DILocation(line: 984, column: 19, scope: !1785)
!1932 = !DILocalVariable(name: "next_shdr_ptr", scope: !1933, file: !2, line: 985, type: !375)
!1933 = distinct !DILexicalBlock(scope: !1785, file: !2, line: 984, column: 28)
!1934 = !DILocation(line: 985, column: 20, scope: !1933)
!1935 = !DILocation(line: 985, column: 36, scope: !1933)
!1936 = !DILocation(line: 985, column: 50, scope: !1933)
!1937 = !DILocation(line: 986, column: 19, scope: !1933)
!1938 = !DILocation(line: 986, column: 33, scope: !1933)
!1939 = !DILocation(line: 987, column: 5, scope: !1933)
!1940 = !DILocation(line: 987, column: 19, scope: !1933)
!1941 = !DILocation(line: 986, column: 44, scope: !1933)
!1942 = !DILocation(line: 987, column: 30, scope: !1933)
!1943 = !DILocation(line: 986, column: 17, scope: !1933)
!1944 = !DILocation(line: 989, column: 21, scope: !1933)
!1945 = !DILocation(line: 989, column: 37, scope: !1933)
!1946 = !DILocation(line: 989, column: 47, scope: !1933)
!1947 = !DILocation(line: 989, column: 5, scope: !1933)
!1948 = !DILocation(line: 990, column: 35, scope: !1933)
!1949 = !DILocation(line: 990, column: 5, scope: !1933)
!1950 = !DILocation(line: 990, column: 10, scope: !1933)
!1951 = !DILocation(line: 990, column: 32, scope: !1933)
!1952 = !DILocation(line: 991, column: 16, scope: !1933)
!1953 = !DILocation(line: 991, column: 14, scope: !1933)
!1954 = distinct !{!1954, !1929, !1955, !524}
!1955 = !DILocation(line: 992, column: 3, scope: !1785)
!1956 = !DILocation(line: 993, column: 1, scope: !1785)
!1957 = distinct !DISubprogram(name: "self_destruct", scope: !2, file: !2, line: 1002, type: !157, scopeLine: 1003, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !420)
!1958 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1957, file: !2, line: 1002, type: !146)
!1959 = !DILocation(line: 1002, column: 29, scope: !1957)
!1960 = !DILocalVariable(name: "pool", scope: !1957, file: !2, line: 1004, type: !163)
!1961 = !DILocation(line: 1004, column: 7, scope: !1957)
!1962 = !DILocation(line: 1010, column: 13, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1957, file: !2, line: 1010, column: 3)
!1964 = !DILocation(line: 1010, column: 8, scope: !1963)
!1965 = !DILocation(line: 1010, column: 33, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1963, file: !2, line: 1010, column: 3)
!1967 = !DILocation(line: 1010, column: 38, scope: !1966)
!1968 = !DILocation(line: 1010, column: 3, scope: !1963)
!1969 = !DILocation(line: 1011, column: 15, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1966, file: !2, line: 1010, column: 66)
!1971 = !DILocation(line: 1011, column: 22, scope: !1970)
!1972 = !DILocation(line: 1011, column: 5, scope: !1970)
!1973 = !DILocation(line: 1012, column: 3, scope: !1970)
!1974 = !DILocation(line: 1010, column: 62, scope: !1966)
!1975 = !DILocation(line: 1010, column: 3, scope: !1966)
!1976 = distinct !{!1976, !1968, !1977, !524}
!1977 = !DILocation(line: 1012, column: 3, scope: !1963)
!1978 = !DILocation(line: 1015, column: 19, scope: !1957)
!1979 = !DILocation(line: 1015, column: 35, scope: !1957)
!1980 = !DILocation(line: 1015, column: 42, scope: !1957)
!1981 = !DILocation(line: 1015, column: 3, scope: !1957)
!1982 = !DILocation(line: 1016, column: 3, scope: !1957)
!1983 = !DILocation(line: 1016, column: 10, scope: !1957)
!1984 = !DILocation(line: 1016, column: 14, scope: !1957)
!1985 = !DILocation(line: 1018, column: 17, scope: !1957)
!1986 = !DILocation(line: 1018, column: 3, scope: !1957)
!1987 = !DILocation(line: 1019, column: 1, scope: !1957)
!1988 = distinct !DISubprogram(name: "out_of_memory", scope: !2, file: !2, line: 217, type: !161, scopeLine: 220, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !420)
!1989 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1988, file: !2, line: 217, type: !146)
!1990 = !DILocation(line: 217, column: 29, scope: !1988)
!1991 = !DILocalVariable(name: "which", arg: 2, scope: !1988, file: !2, line: 217, type: !163)
!1992 = !DILocation(line: 217, column: 40, scope: !1988)
!1993 = !DILocation(line: 224, column: 3, scope: !1988)
!1994 = !DILocation(line: 225, column: 1, scope: !1988)
!1995 = distinct !DISubprogram(name: "do_sarray_io", scope: !2, file: !2, line: 690, type: !1996, scopeLine: 692, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !420)
!1996 = !DISubroutineType(types: !1997)
!1997 = !{null, !146, !232, !245}
!1998 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1995, file: !2, line: 690, type: !146)
!1999 = !DILocation(line: 690, column: 28, scope: !1995)
!2000 = !DILocalVariable(name: "ptr", arg: 2, scope: !1995, file: !2, line: 690, type: !232)
!2001 = !DILocation(line: 690, column: 52, scope: !1995)
!2002 = !DILocalVariable(name: "writing", arg: 3, scope: !1995, file: !2, line: 690, type: !245)
!2003 = !DILocation(line: 690, column: 65, scope: !1995)
!2004 = !DILocalVariable(name: "bytesperrow", scope: !1995, file: !2, line: 693, type: !145)
!2005 = !DILocation(line: 693, column: 8, scope: !1995)
!2006 = !DILocalVariable(name: "file_offset", scope: !1995, file: !2, line: 693, type: !145)
!2007 = !DILocation(line: 693, column: 21, scope: !1995)
!2008 = !DILocalVariable(name: "byte_count", scope: !1995, file: !2, line: 693, type: !145)
!2009 = !DILocation(line: 693, column: 34, scope: !1995)
!2010 = !DILocalVariable(name: "rows", scope: !1995, file: !2, line: 693, type: !145)
!2011 = !DILocation(line: 693, column: 46, scope: !1995)
!2012 = !DILocalVariable(name: "thisrow", scope: !1995, file: !2, line: 693, type: !145)
!2013 = !DILocation(line: 693, column: 52, scope: !1995)
!2014 = !DILocalVariable(name: "i", scope: !1995, file: !2, line: 693, type: !145)
!2015 = !DILocation(line: 693, column: 61, scope: !1995)
!2016 = !DILocation(line: 695, column: 24, scope: !1995)
!2017 = !DILocation(line: 695, column: 29, scope: !1995)
!2018 = !DILocation(line: 695, column: 17, scope: !1995)
!2019 = !DILocation(line: 695, column: 43, scope: !1995)
!2020 = !DILocation(line: 695, column: 15, scope: !1995)
!2021 = !DILocation(line: 696, column: 17, scope: !1995)
!2022 = !DILocation(line: 696, column: 22, scope: !1995)
!2023 = !DILocation(line: 696, column: 38, scope: !1995)
!2024 = !DILocation(line: 696, column: 36, scope: !1995)
!2025 = !DILocation(line: 696, column: 15, scope: !1995)
!2026 = !DILocation(line: 698, column: 10, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !1995, file: !2, line: 698, column: 3)
!2028 = !DILocation(line: 698, column: 8, scope: !2027)
!2029 = !DILocation(line: 698, column: 15, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2027, file: !2, line: 698, column: 3)
!2031 = !DILocation(line: 698, column: 26, scope: !2030)
!2032 = !DILocation(line: 698, column: 31, scope: !2030)
!2033 = !DILocation(line: 698, column: 19, scope: !2030)
!2034 = !DILocation(line: 698, column: 17, scope: !2030)
!2035 = !DILocation(line: 698, column: 3, scope: !2027)
!2036 = !DILocation(line: 700, column: 12, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2030, file: !2, line: 698, column: 68)
!2038 = !DILocation(line: 700, column: 10, scope: !2037)
!2039 = !DILocation(line: 702, column: 22, scope: !2037)
!2040 = !DILocation(line: 702, column: 27, scope: !2037)
!2041 = !DILocation(line: 702, column: 15, scope: !2037)
!2042 = !DILocation(line: 702, column: 43, scope: !2037)
!2043 = !DILocation(line: 702, column: 41, scope: !2037)
!2044 = !DILocation(line: 702, column: 13, scope: !2037)
!2045 = !DILocation(line: 703, column: 12, scope: !2037)
!2046 = !DILocation(line: 703, column: 10, scope: !2037)
!2047 = !DILocation(line: 705, column: 12, scope: !2037)
!2048 = !DILocation(line: 705, column: 10, scope: !2037)
!2049 = !DILocation(line: 706, column: 9, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2037, file: !2, line: 706, column: 9)
!2051 = !DILocation(line: 706, column: 14, scope: !2050)
!2052 = !DILocation(line: 707, column: 7, scope: !2050)
!2053 = !DILocation(line: 708, column: 18, scope: !2037)
!2054 = !DILocation(line: 708, column: 25, scope: !2037)
!2055 = !DILocation(line: 708, column: 23, scope: !2037)
!2056 = !DILocation(line: 708, column: 16, scope: !2037)
!2057 = !DILocation(line: 709, column: 9, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2037, file: !2, line: 709, column: 9)
!2059 = !DILocation(line: 710, column: 9, scope: !2058)
!2060 = !DILocation(line: 710, column: 14, scope: !2058)
!2061 = !DILocation(line: 710, column: 23, scope: !2058)
!2062 = !DILocation(line: 710, column: 45, scope: !2058)
!2063 = !DILocation(line: 710, column: 54, scope: !2058)
!2064 = !DILocation(line: 710, column: 59, scope: !2058)
!2065 = !DILocation(line: 711, column: 23, scope: !2058)
!2066 = !DILocation(line: 711, column: 28, scope: !2058)
!2067 = !DILocation(line: 711, column: 39, scope: !2058)
!2068 = !DILocation(line: 712, column: 10, scope: !2058)
!2069 = !DILocation(line: 712, column: 23, scope: !2058)
!2070 = !DILocation(line: 710, column: 7, scope: !2058)
!2071 = !DILocation(line: 714, column: 9, scope: !2058)
!2072 = !DILocation(line: 714, column: 14, scope: !2058)
!2073 = !DILocation(line: 714, column: 23, scope: !2058)
!2074 = !DILocation(line: 714, column: 44, scope: !2058)
!2075 = !DILocation(line: 714, column: 53, scope: !2058)
!2076 = !DILocation(line: 714, column: 58, scope: !2058)
!2077 = !DILocation(line: 715, column: 22, scope: !2058)
!2078 = !DILocation(line: 715, column: 27, scope: !2058)
!2079 = !DILocation(line: 715, column: 38, scope: !2058)
!2080 = !DILocation(line: 716, column: 9, scope: !2058)
!2081 = !DILocation(line: 716, column: 22, scope: !2058)
!2082 = !DILocation(line: 714, column: 7, scope: !2058)
!2083 = !DILocation(line: 717, column: 20, scope: !2037)
!2084 = !DILocation(line: 717, column: 17, scope: !2037)
!2085 = !DILocation(line: 718, column: 3, scope: !2037)
!2086 = !DILocation(line: 698, column: 49, scope: !2030)
!2087 = !DILocation(line: 698, column: 54, scope: !2030)
!2088 = !DILocation(line: 698, column: 46, scope: !2030)
!2089 = !DILocation(line: 698, column: 3, scope: !2030)
!2090 = distinct !{!2090, !2035, !2091, !524}
!2091 = !DILocation(line: 718, column: 3, scope: !2027)
!2092 = !DILocation(line: 719, column: 1, scope: !1995)
!2093 = distinct !DISubprogram(name: "do_barray_io", scope: !2, file: !2, line: 723, type: !2094, scopeLine: 725, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !420)
!2094 = !DISubroutineType(types: !2095)
!2095 = !{null, !146, !327, !245}
!2096 = !DILocalVariable(name: "cinfo", arg: 1, scope: !2093, file: !2, line: 723, type: !146)
!2097 = !DILocation(line: 723, column: 28, scope: !2093)
!2098 = !DILocalVariable(name: "ptr", arg: 2, scope: !2093, file: !2, line: 723, type: !327)
!2099 = !DILocation(line: 723, column: 52, scope: !2093)
!2100 = !DILocalVariable(name: "writing", arg: 3, scope: !2093, file: !2, line: 723, type: !245)
!2101 = !DILocation(line: 723, column: 65, scope: !2093)
!2102 = !DILocalVariable(name: "bytesperrow", scope: !2093, file: !2, line: 726, type: !145)
!2103 = !DILocation(line: 726, column: 8, scope: !2093)
!2104 = !DILocalVariable(name: "file_offset", scope: !2093, file: !2, line: 726, type: !145)
!2105 = !DILocation(line: 726, column: 21, scope: !2093)
!2106 = !DILocalVariable(name: "byte_count", scope: !2093, file: !2, line: 726, type: !145)
!2107 = !DILocation(line: 726, column: 34, scope: !2093)
!2108 = !DILocalVariable(name: "rows", scope: !2093, file: !2, line: 726, type: !145)
!2109 = !DILocation(line: 726, column: 46, scope: !2093)
!2110 = !DILocalVariable(name: "thisrow", scope: !2093, file: !2, line: 726, type: !145)
!2111 = !DILocation(line: 726, column: 52, scope: !2093)
!2112 = !DILocalVariable(name: "i", scope: !2093, file: !2, line: 726, type: !145)
!2113 = !DILocation(line: 726, column: 61, scope: !2093)
!2114 = !DILocation(line: 728, column: 24, scope: !2093)
!2115 = !DILocation(line: 728, column: 29, scope: !2093)
!2116 = !DILocation(line: 728, column: 17, scope: !2093)
!2117 = !DILocation(line: 728, column: 42, scope: !2093)
!2118 = !DILocation(line: 728, column: 15, scope: !2093)
!2119 = !DILocation(line: 729, column: 17, scope: !2093)
!2120 = !DILocation(line: 729, column: 22, scope: !2093)
!2121 = !DILocation(line: 729, column: 38, scope: !2093)
!2122 = !DILocation(line: 729, column: 36, scope: !2093)
!2123 = !DILocation(line: 729, column: 15, scope: !2093)
!2124 = !DILocation(line: 731, column: 10, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2093, file: !2, line: 731, column: 3)
!2126 = !DILocation(line: 731, column: 8, scope: !2125)
!2127 = !DILocation(line: 731, column: 15, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2125, file: !2, line: 731, column: 3)
!2129 = !DILocation(line: 731, column: 26, scope: !2128)
!2130 = !DILocation(line: 731, column: 31, scope: !2128)
!2131 = !DILocation(line: 731, column: 19, scope: !2128)
!2132 = !DILocation(line: 731, column: 17, scope: !2128)
!2133 = !DILocation(line: 731, column: 3, scope: !2125)
!2134 = !DILocation(line: 733, column: 12, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2128, file: !2, line: 731, column: 68)
!2136 = !DILocation(line: 733, column: 10, scope: !2135)
!2137 = !DILocation(line: 735, column: 22, scope: !2135)
!2138 = !DILocation(line: 735, column: 27, scope: !2135)
!2139 = !DILocation(line: 735, column: 15, scope: !2135)
!2140 = !DILocation(line: 735, column: 43, scope: !2135)
!2141 = !DILocation(line: 735, column: 41, scope: !2135)
!2142 = !DILocation(line: 735, column: 13, scope: !2135)
!2143 = !DILocation(line: 736, column: 12, scope: !2135)
!2144 = !DILocation(line: 736, column: 10, scope: !2135)
!2145 = !DILocation(line: 738, column: 12, scope: !2135)
!2146 = !DILocation(line: 738, column: 10, scope: !2135)
!2147 = !DILocation(line: 739, column: 9, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2135, file: !2, line: 739, column: 9)
!2149 = !DILocation(line: 739, column: 14, scope: !2148)
!2150 = !DILocation(line: 740, column: 7, scope: !2148)
!2151 = !DILocation(line: 741, column: 18, scope: !2135)
!2152 = !DILocation(line: 741, column: 25, scope: !2135)
!2153 = !DILocation(line: 741, column: 23, scope: !2135)
!2154 = !DILocation(line: 741, column: 16, scope: !2135)
!2155 = !DILocation(line: 742, column: 9, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2135, file: !2, line: 742, column: 9)
!2157 = !DILocation(line: 743, column: 9, scope: !2156)
!2158 = !DILocation(line: 743, column: 14, scope: !2156)
!2159 = !DILocation(line: 743, column: 23, scope: !2156)
!2160 = !DILocation(line: 743, column: 45, scope: !2156)
!2161 = !DILocation(line: 743, column: 54, scope: !2156)
!2162 = !DILocation(line: 743, column: 59, scope: !2156)
!2163 = !DILocation(line: 744, column: 23, scope: !2156)
!2164 = !DILocation(line: 744, column: 28, scope: !2156)
!2165 = !DILocation(line: 744, column: 39, scope: !2156)
!2166 = !DILocation(line: 745, column: 10, scope: !2156)
!2167 = !DILocation(line: 745, column: 23, scope: !2156)
!2168 = !DILocation(line: 743, column: 7, scope: !2156)
!2169 = !DILocation(line: 747, column: 9, scope: !2156)
!2170 = !DILocation(line: 747, column: 14, scope: !2156)
!2171 = !DILocation(line: 747, column: 23, scope: !2156)
!2172 = !DILocation(line: 747, column: 44, scope: !2156)
!2173 = !DILocation(line: 747, column: 53, scope: !2156)
!2174 = !DILocation(line: 747, column: 58, scope: !2156)
!2175 = !DILocation(line: 748, column: 22, scope: !2156)
!2176 = !DILocation(line: 748, column: 27, scope: !2156)
!2177 = !DILocation(line: 748, column: 38, scope: !2156)
!2178 = !DILocation(line: 749, column: 9, scope: !2156)
!2179 = !DILocation(line: 749, column: 22, scope: !2156)
!2180 = !DILocation(line: 747, column: 7, scope: !2156)
!2181 = !DILocation(line: 750, column: 20, scope: !2135)
!2182 = !DILocation(line: 750, column: 17, scope: !2135)
!2183 = !DILocation(line: 751, column: 3, scope: !2135)
!2184 = !DILocation(line: 731, column: 49, scope: !2128)
!2185 = !DILocation(line: 731, column: 54, scope: !2128)
!2186 = !DILocation(line: 731, column: 46, scope: !2128)
!2187 = !DILocation(line: 731, column: 3, scope: !2128)
!2188 = distinct !{!2188, !2133, !2189, !524}
!2189 = !DILocation(line: 751, column: 3, scope: !2125)
!2190 = !DILocation(line: 752, column: 1, scope: !2093)
