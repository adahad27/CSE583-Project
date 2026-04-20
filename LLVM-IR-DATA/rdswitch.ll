; ModuleID = 'cBench/consumer_jpeg_c/src/rdswitch.c'
source_filename = "cBench/consumer_jpeg_c/src/rdswitch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_scan_info = type { i32, [4 x i32], i32, i32, i32, i32 }
%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1, !dbg !0
@stderr = external global ptr, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Can't open table file %s\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [28 x i8] c"Too many tables in file %s\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [31 x i8] c"Invalid table data in file %s\0A\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [29 x i8] c"Non-numeric data in file %s\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [36 x i8] c"Can't open scan definition file %s\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [35 x i8] c"Too many scans defined in file %s\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [44 x i8] c"Too many components in one scan in file %s\0A\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [38 x i8] c"Invalid scan entry format in file %s\0A\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [5 x i8] c"%d%c\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [45 x i8] c"JPEG quantization tables are numbered 0..%d\0A\00", align 1, !dbg !52
@.str.11 = private unnamed_addr constant [9 x i8] c"%d%c%d%c\00", align 1, !dbg !57
@.str.12 = private unnamed_addr constant [36 x i8] c"JPEG sampling factors must be 1..4\0A\00", align 1, !dbg !62

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @read_quant_tables(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 !dbg !247 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca [64 x i32], align 16
  store ptr %0, ptr %6, align 8
    #dbg_declare(ptr %6, !410, !DIExpression(), !411)
  store ptr %1, ptr %7, align 8
    #dbg_declare(ptr %7, !412, !DIExpression(), !413)
  store i32 %2, ptr %8, align 4
    #dbg_declare(ptr %8, !414, !DIExpression(), !415)
  store i32 %3, ptr %9, align 4
    #dbg_declare(ptr %9, !416, !DIExpression(), !417)
    #dbg_declare(ptr %10, !418, !DIExpression(), !473)
    #dbg_declare(ptr %11, !474, !DIExpression(), !475)
    #dbg_declare(ptr %12, !476, !DIExpression(), !477)
    #dbg_declare(ptr %13, !478, !DIExpression(), !479)
    #dbg_declare(ptr %14, !480, !DIExpression(), !481)
    #dbg_declare(ptr %15, !482, !DIExpression(), !484)
  %16 = load ptr, ptr %7, align 8, !dbg !485
  %17 = call noalias ptr @fopen(ptr noundef %16, ptr noundef @.str), !dbg !487
  store ptr %17, ptr %10, align 8, !dbg !488
  %18 = icmp eq ptr %17, null, !dbg !489
  br i1 %18, label %19, label %23, !dbg !489

19:                                               ; preds = %4
  %20 = load ptr, ptr @stderr, align 8, !dbg !490
  %21 = load ptr, ptr %7, align 8, !dbg !492
  %22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.1, ptr noundef %21) #5, !dbg !493
  store i32 0, ptr %5, align 4, !dbg !494
  br label %83, !dbg !494

23:                                               ; preds = %4
  store i32 0, ptr %11, align 4, !dbg !495
  br label %24, !dbg !496

24:                                               ; preds = %63, %23
  %25 = load ptr, ptr %10, align 8, !dbg !497
  %26 = call i32 @read_text_integer(ptr noundef %25, ptr noundef %14, ptr noundef %13), !dbg !498
  %27 = icmp ne i32 %26, 0, !dbg !496
  br i1 %27, label %28, label %71, !dbg !496

28:                                               ; preds = %24
  %29 = load i32, ptr %11, align 4, !dbg !499
  %30 = icmp sge i32 %29, 4, !dbg !502
  br i1 %30, label %31, label %37, !dbg !502

31:                                               ; preds = %28
  %32 = load ptr, ptr @stderr, align 8, !dbg !503
  %33 = load ptr, ptr %7, align 8, !dbg !505
  %34 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef @.str.2, ptr noundef %33) #5, !dbg !506
  %35 = load ptr, ptr %10, align 8, !dbg !507
  %36 = call i32 @fclose(ptr noundef %35), !dbg !508
  store i32 0, ptr %5, align 4, !dbg !509
  br label %83, !dbg !509

37:                                               ; preds = %28
  %38 = load i64, ptr %14, align 8, !dbg !510
  %39 = trunc i64 %38 to i32, !dbg !511
  %40 = getelementptr inbounds [64 x i32], ptr %15, i64 0, i64 0, !dbg !512
  store i32 %39, ptr %40, align 16, !dbg !513
  store i32 1, ptr %12, align 4, !dbg !514
  br label %41, !dbg !516

41:                                               ; preds = %60, %37
  %42 = load i32, ptr %12, align 4, !dbg !517
  %43 = icmp slt i32 %42, 64, !dbg !519
  br i1 %43, label %44, label %63, !dbg !520

44:                                               ; preds = %41
  %45 = load ptr, ptr %10, align 8, !dbg !521
  %46 = call i32 @read_text_integer(ptr noundef %45, ptr noundef %14, ptr noundef %13), !dbg !524
  %47 = icmp ne i32 %46, 0, !dbg !524
  br i1 %47, label %54, label %48, !dbg !525

48:                                               ; preds = %44
  %49 = load ptr, ptr @stderr, align 8, !dbg !526
  %50 = load ptr, ptr %7, align 8, !dbg !528
  %51 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %49, ptr noundef @.str.3, ptr noundef %50) #5, !dbg !529
  %52 = load ptr, ptr %10, align 8, !dbg !530
  %53 = call i32 @fclose(ptr noundef %52), !dbg !531
  store i32 0, ptr %5, align 4, !dbg !532
  br label %83, !dbg !532

54:                                               ; preds = %44
  %55 = load i64, ptr %14, align 8, !dbg !533
  %56 = trunc i64 %55 to i32, !dbg !534
  %57 = load i32, ptr %12, align 4, !dbg !535
  %58 = sext i32 %57 to i64, !dbg !536
  %59 = getelementptr inbounds [64 x i32], ptr %15, i64 0, i64 %58, !dbg !536
  store i32 %56, ptr %59, align 4, !dbg !537
  br label %60, !dbg !538

60:                                               ; preds = %54
  %61 = load i32, ptr %12, align 4, !dbg !539
  %62 = add nsw i32 %61, 1, !dbg !539
  store i32 %62, ptr %12, align 4, !dbg !539
  br label %41, !dbg !540, !llvm.loop !541

63:                                               ; preds = %41
  %64 = load ptr, ptr %6, align 8, !dbg !544
  %65 = load i32, ptr %11, align 4, !dbg !545
  %66 = getelementptr inbounds [64 x i32], ptr %15, i64 0, i64 0, !dbg !546
  %67 = load i32, ptr %8, align 4, !dbg !547
  %68 = load i32, ptr %9, align 4, !dbg !548
  call void @jpeg_add_quant_table(ptr noundef %64, i32 noundef %65, ptr noundef %66, i32 noundef %67, i32 noundef %68), !dbg !549
  %69 = load i32, ptr %11, align 4, !dbg !550
  %70 = add nsw i32 %69, 1, !dbg !550
  store i32 %70, ptr %11, align 4, !dbg !550
  br label %24, !dbg !496, !llvm.loop !551

71:                                               ; preds = %24
  %72 = load i32, ptr %13, align 4, !dbg !553
  %73 = icmp ne i32 %72, -1, !dbg !555
  br i1 %73, label %74, label %80, !dbg !555

74:                                               ; preds = %71
  %75 = load ptr, ptr @stderr, align 8, !dbg !556
  %76 = load ptr, ptr %7, align 8, !dbg !558
  %77 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %75, ptr noundef @.str.4, ptr noundef %76) #5, !dbg !559
  %78 = load ptr, ptr %10, align 8, !dbg !560
  %79 = call i32 @fclose(ptr noundef %78), !dbg !561
  store i32 0, ptr %5, align 4, !dbg !562
  br label %83, !dbg !562

80:                                               ; preds = %71
  %81 = load ptr, ptr %10, align 8, !dbg !563
  %82 = call i32 @fclose(ptr noundef %81), !dbg !564
  store i32 1, ptr %5, align 4, !dbg !565
  br label %83, !dbg !565

83:                                               ; preds = %80, %74, %48, %31, %19
  %84 = load i32, ptr %5, align 4, !dbg !566
  ret i32 %84, !dbg !566
}

declare noalias ptr @fopen(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @read_text_integer(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !567 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !572, !DIExpression(), !573)
  store ptr %1, ptr %6, align 8
    #dbg_declare(ptr %6, !574, !DIExpression(), !575)
  store ptr %2, ptr %7, align 8
    #dbg_declare(ptr %7, !576, !DIExpression(), !577)
    #dbg_declare(ptr %8, !578, !DIExpression(), !579)
    #dbg_declare(ptr %9, !580, !DIExpression(), !581)
  br label %10, !dbg !582

10:                                               ; preds = %19, %3
  %11 = load ptr, ptr %5, align 8, !dbg !583
  %12 = call i32 @text_getc(ptr noundef %11), !dbg !585
  store i32 %12, ptr %8, align 4, !dbg !586
  %13 = load i32, ptr %8, align 4, !dbg !587
  %14 = icmp eq i32 %13, -1, !dbg !589
  br i1 %14, label %15, label %18, !dbg !589

15:                                               ; preds = %10
  %16 = load i32, ptr %8, align 4, !dbg !590
  %17 = load ptr, ptr %7, align 8, !dbg !592
  store i32 %16, ptr %17, align 4, !dbg !593
  store i32 0, ptr %4, align 4, !dbg !594
  br label %74, !dbg !594

18:                                               ; preds = %10
  br label %19, !dbg !595

19:                                               ; preds = %18
  %20 = call ptr @__ctype_b_loc() #6, !dbg !596
  %21 = load ptr, ptr %20, align 8, !dbg !596
  %22 = load i32, ptr %8, align 4, !dbg !596
  %23 = sext i32 %22 to i64, !dbg !596
  %24 = getelementptr inbounds i16, ptr %21, i64 %23, !dbg !596
  %25 = load i16, ptr %24, align 2, !dbg !596
  %26 = zext i16 %25 to i32, !dbg !596
  %27 = and i32 %26, 8192, !dbg !596
  %28 = icmp ne i32 %27, 0, !dbg !595
  br i1 %28, label %10, label %29, !dbg !595, !llvm.loop !597

29:                                               ; preds = %19
  %30 = call ptr @__ctype_b_loc() #6, !dbg !599
  %31 = load ptr, ptr %30, align 8, !dbg !599
  %32 = load i32, ptr %8, align 4, !dbg !599
  %33 = sext i32 %32 to i64, !dbg !599
  %34 = getelementptr inbounds i16, ptr %31, i64 %33, !dbg !599
  %35 = load i16, ptr %34, align 2, !dbg !599
  %36 = zext i16 %35 to i32, !dbg !599
  %37 = and i32 %36, 2048, !dbg !599
  %38 = icmp ne i32 %37, 0, !dbg !599
  br i1 %38, label %42, label %39, !dbg !601

39:                                               ; preds = %29
  %40 = load i32, ptr %8, align 4, !dbg !602
  %41 = load ptr, ptr %7, align 8, !dbg !604
  store i32 %40, ptr %41, align 4, !dbg !605
  store i32 0, ptr %4, align 4, !dbg !606
  br label %74, !dbg !606

42:                                               ; preds = %29
  %43 = load i32, ptr %8, align 4, !dbg !607
  %44 = sub nsw i32 %43, 48, !dbg !608
  %45 = sext i32 %44 to i64, !dbg !607
  store i64 %45, ptr %9, align 8, !dbg !609
  br label %46, !dbg !610

46:                                               ; preds = %61, %42
  %47 = load ptr, ptr %5, align 8, !dbg !611
  %48 = call i32 @text_getc(ptr noundef %47), !dbg !612
  store i32 %48, ptr %8, align 4, !dbg !613
  %49 = icmp ne i32 %48, -1, !dbg !614
  br i1 %49, label %50, label %69, !dbg !610

50:                                               ; preds = %46
  %51 = call ptr @__ctype_b_loc() #6, !dbg !615
  %52 = load ptr, ptr %51, align 8, !dbg !615
  %53 = load i32, ptr %8, align 4, !dbg !615
  %54 = sext i32 %53 to i64, !dbg !615
  %55 = getelementptr inbounds i16, ptr %52, i64 %54, !dbg !615
  %56 = load i16, ptr %55, align 2, !dbg !615
  %57 = zext i16 %56 to i32, !dbg !615
  %58 = and i32 %57, 2048, !dbg !615
  %59 = icmp ne i32 %58, 0, !dbg !615
  br i1 %59, label %61, label %60, !dbg !618

60:                                               ; preds = %50
  br label %69, !dbg !619

61:                                               ; preds = %50
  %62 = load i64, ptr %9, align 8, !dbg !620
  %63 = mul nsw i64 %62, 10, !dbg !620
  store i64 %63, ptr %9, align 8, !dbg !620
  %64 = load i32, ptr %8, align 4, !dbg !621
  %65 = sub nsw i32 %64, 48, !dbg !622
  %66 = sext i32 %65 to i64, !dbg !621
  %67 = load i64, ptr %9, align 8, !dbg !623
  %68 = add nsw i64 %67, %66, !dbg !623
  store i64 %68, ptr %9, align 8, !dbg !623
  br label %46, !dbg !610, !llvm.loop !624

69:                                               ; preds = %60, %46
  %70 = load i64, ptr %9, align 8, !dbg !626
  %71 = load ptr, ptr %6, align 8, !dbg !627
  store i64 %70, ptr %71, align 8, !dbg !628
  %72 = load i32, ptr %8, align 4, !dbg !629
  %73 = load ptr, ptr %7, align 8, !dbg !630
  store i32 %72, ptr %73, align 4, !dbg !631
  store i32 1, ptr %4, align 4, !dbg !632
  br label %74, !dbg !632

74:                                               ; preds = %69, %39, %15
  %75 = load i32, ptr %4, align 4, !dbg !633
  ret i32 %75, !dbg !633
}

declare i32 @fclose(ptr noundef) #1

declare void @jpeg_add_quant_table(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @read_scan_script(ptr noundef %0, ptr noundef %1) #0 !dbg !634 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = alloca [100 x %struct.jpeg_scan_info], align 16
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !637, !DIExpression(), !638)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !639, !DIExpression(), !640)
    #dbg_declare(ptr %6, !641, !DIExpression(), !642)
    #dbg_declare(ptr %7, !643, !DIExpression(), !644)
    #dbg_declare(ptr %8, !645, !DIExpression(), !646)
    #dbg_declare(ptr %9, !647, !DIExpression(), !648)
    #dbg_declare(ptr %10, !649, !DIExpression(), !650)
    #dbg_declare(ptr %11, !651, !DIExpression(), !652)
    #dbg_declare(ptr %12, !653, !DIExpression(), !657)
  %13 = load ptr, ptr %5, align 8, !dbg !658
  %14 = call noalias ptr @fopen(ptr noundef %13, ptr noundef @.str), !dbg !660
  store ptr %14, ptr %6, align 8, !dbg !661
  %15 = icmp eq ptr %14, null, !dbg !662
  br i1 %15, label %16, label %20, !dbg !662

16:                                               ; preds = %2
  %17 = load ptr, ptr @stderr, align 8, !dbg !663
  %18 = load ptr, ptr %5, align 8, !dbg !665
  %19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.5, ptr noundef %18) #5, !dbg !666
  store i32 0, ptr %3, align 4, !dbg !667
  br label %184, !dbg !667

20:                                               ; preds = %2
  %21 = getelementptr inbounds [100 x %struct.jpeg_scan_info], ptr %12, i64 0, i64 0, !dbg !668
  store ptr %21, ptr %11, align 8, !dbg !669
  store i32 0, ptr %7, align 4, !dbg !670
  br label %22, !dbg !671

22:                                               ; preds = %142, %20
  %23 = load ptr, ptr %6, align 8, !dbg !672
  %24 = call i32 @read_scan_integer(ptr noundef %23, ptr noundef %10, ptr noundef %9), !dbg !673
  %25 = icmp ne i32 %24, 0, !dbg !671
  br i1 %25, label %26, label %147, !dbg !671

26:                                               ; preds = %22
  %27 = load i32, ptr %7, align 4, !dbg !674
  %28 = icmp sge i32 %27, 100, !dbg !677
  br i1 %28, label %29, label %35, !dbg !677

29:                                               ; preds = %26
  %30 = load ptr, ptr @stderr, align 8, !dbg !678
  %31 = load ptr, ptr %5, align 8, !dbg !680
  %32 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef @.str.6, ptr noundef %31) #5, !dbg !681
  %33 = load ptr, ptr %6, align 8, !dbg !682
  %34 = call i32 @fclose(ptr noundef %33), !dbg !683
  store i32 0, ptr %3, align 4, !dbg !684
  br label %184, !dbg !684

35:                                               ; preds = %26
  %36 = load i64, ptr %10, align 8, !dbg !685
  %37 = trunc i64 %36 to i32, !dbg !686
  %38 = load ptr, ptr %11, align 8, !dbg !687
  %39 = getelementptr inbounds nuw %struct.jpeg_scan_info, ptr %38, i32 0, i32 1, !dbg !688
  %40 = getelementptr inbounds [4 x i32], ptr %39, i64 0, i64 0, !dbg !687
  store i32 %37, ptr %40, align 4, !dbg !689
  store i32 1, ptr %8, align 4, !dbg !690
  br label %41, !dbg !691

41:                                               ; preds = %58, %35
  %42 = load i32, ptr %9, align 4, !dbg !692
  %43 = icmp eq i32 %42, 32, !dbg !693
  br i1 %43, label %44, label %68, !dbg !691

44:                                               ; preds = %41
  %45 = load i32, ptr %8, align 4, !dbg !694
  %46 = icmp sge i32 %45, 4, !dbg !697
  br i1 %46, label %47, label %53, !dbg !697

47:                                               ; preds = %44
  %48 = load ptr, ptr @stderr, align 8, !dbg !698
  %49 = load ptr, ptr %5, align 8, !dbg !700
  %50 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %48, ptr noundef @.str.7, ptr noundef %49) #5, !dbg !701
  %51 = load ptr, ptr %6, align 8, !dbg !702
  %52 = call i32 @fclose(ptr noundef %51), !dbg !703
  store i32 0, ptr %3, align 4, !dbg !704
  br label %184, !dbg !704

53:                                               ; preds = %44
  %54 = load ptr, ptr %6, align 8, !dbg !705
  %55 = call i32 @read_scan_integer(ptr noundef %54, ptr noundef %10, ptr noundef %9), !dbg !707
  %56 = icmp ne i32 %55, 0, !dbg !707
  br i1 %56, label %58, label %57, !dbg !708

57:                                               ; preds = %53
  br label %136, !dbg !709

58:                                               ; preds = %53
  %59 = load i64, ptr %10, align 8, !dbg !710
  %60 = trunc i64 %59 to i32, !dbg !711
  %61 = load ptr, ptr %11, align 8, !dbg !712
  %62 = getelementptr inbounds nuw %struct.jpeg_scan_info, ptr %61, i32 0, i32 1, !dbg !713
  %63 = load i32, ptr %8, align 4, !dbg !714
  %64 = sext i32 %63 to i64, !dbg !712
  %65 = getelementptr inbounds [4 x i32], ptr %62, i64 0, i64 %64, !dbg !712
  store i32 %60, ptr %65, align 4, !dbg !715
  %66 = load i32, ptr %8, align 4, !dbg !716
  %67 = add nsw i32 %66, 1, !dbg !716
  store i32 %67, ptr %8, align 4, !dbg !716
  br label %41, !dbg !691, !llvm.loop !717

68:                                               ; preds = %41
  %69 = load i32, ptr %8, align 4, !dbg !719
  %70 = load ptr, ptr %11, align 8, !dbg !720
  %71 = getelementptr inbounds nuw %struct.jpeg_scan_info, ptr %70, i32 0, i32 0, !dbg !721
  store i32 %69, ptr %71, align 4, !dbg !722
  %72 = load i32, ptr %9, align 4, !dbg !723
  %73 = icmp eq i32 %72, 58, !dbg !725
  br i1 %73, label %74, label %120, !dbg !725

74:                                               ; preds = %68
  %75 = load ptr, ptr %6, align 8, !dbg !726
  %76 = call i32 @read_scan_integer(ptr noundef %75, ptr noundef %10, ptr noundef %9), !dbg !729
  %77 = icmp ne i32 %76, 0, !dbg !729
  br i1 %77, label %78, label %81, !dbg !730

78:                                               ; preds = %74
  %79 = load i32, ptr %9, align 4, !dbg !731
  %80 = icmp ne i32 %79, 32, !dbg !732
  br i1 %80, label %81, label %82, !dbg !730

81:                                               ; preds = %78, %74
  br label %136, !dbg !733

82:                                               ; preds = %78
  %83 = load i64, ptr %10, align 8, !dbg !734
  %84 = trunc i64 %83 to i32, !dbg !735
  %85 = load ptr, ptr %11, align 8, !dbg !736
  %86 = getelementptr inbounds nuw %struct.jpeg_scan_info, ptr %85, i32 0, i32 2, !dbg !737
  store i32 %84, ptr %86, align 4, !dbg !738
  %87 = load ptr, ptr %6, align 8, !dbg !739
  %88 = call i32 @read_scan_integer(ptr noundef %87, ptr noundef %10, ptr noundef %9), !dbg !741
  %89 = icmp ne i32 %88, 0, !dbg !741
  br i1 %89, label %90, label %93, !dbg !742

90:                                               ; preds = %82
  %91 = load i32, ptr %9, align 4, !dbg !743
  %92 = icmp ne i32 %91, 32, !dbg !744
  br i1 %92, label %93, label %94, !dbg !742

93:                                               ; preds = %90, %82
  br label %136, !dbg !745

94:                                               ; preds = %90
  %95 = load i64, ptr %10, align 8, !dbg !746
  %96 = trunc i64 %95 to i32, !dbg !747
  %97 = load ptr, ptr %11, align 8, !dbg !748
  %98 = getelementptr inbounds nuw %struct.jpeg_scan_info, ptr %97, i32 0, i32 3, !dbg !749
  store i32 %96, ptr %98, align 4, !dbg !750
  %99 = load ptr, ptr %6, align 8, !dbg !751
  %100 = call i32 @read_scan_integer(ptr noundef %99, ptr noundef %10, ptr noundef %9), !dbg !753
  %101 = icmp ne i32 %100, 0, !dbg !753
  br i1 %101, label %102, label %105, !dbg !754

102:                                              ; preds = %94
  %103 = load i32, ptr %9, align 4, !dbg !755
  %104 = icmp ne i32 %103, 32, !dbg !756
  br i1 %104, label %105, label %106, !dbg !754

105:                                              ; preds = %102, %94
  br label %136, !dbg !757

106:                                              ; preds = %102
  %107 = load i64, ptr %10, align 8, !dbg !758
  %108 = trunc i64 %107 to i32, !dbg !759
  %109 = load ptr, ptr %11, align 8, !dbg !760
  %110 = getelementptr inbounds nuw %struct.jpeg_scan_info, ptr %109, i32 0, i32 4, !dbg !761
  store i32 %108, ptr %110, align 4, !dbg !762
  %111 = load ptr, ptr %6, align 8, !dbg !763
  %112 = call i32 @read_scan_integer(ptr noundef %111, ptr noundef %10, ptr noundef %9), !dbg !765
  %113 = icmp ne i32 %112, 0, !dbg !765
  br i1 %113, label %115, label %114, !dbg !766

114:                                              ; preds = %106
  br label %136, !dbg !767

115:                                              ; preds = %106
  %116 = load i64, ptr %10, align 8, !dbg !768
  %117 = trunc i64 %116 to i32, !dbg !769
  %118 = load ptr, ptr %11, align 8, !dbg !770
  %119 = getelementptr inbounds nuw %struct.jpeg_scan_info, ptr %118, i32 0, i32 5, !dbg !771
  store i32 %117, ptr %119, align 4, !dbg !772
  br label %129, !dbg !773

120:                                              ; preds = %68
  %121 = load ptr, ptr %11, align 8, !dbg !774
  %122 = getelementptr inbounds nuw %struct.jpeg_scan_info, ptr %121, i32 0, i32 2, !dbg !776
  store i32 0, ptr %122, align 4, !dbg !777
  %123 = load ptr, ptr %11, align 8, !dbg !778
  %124 = getelementptr inbounds nuw %struct.jpeg_scan_info, ptr %123, i32 0, i32 3, !dbg !779
  store i32 63, ptr %124, align 4, !dbg !780
  %125 = load ptr, ptr %11, align 8, !dbg !781
  %126 = getelementptr inbounds nuw %struct.jpeg_scan_info, ptr %125, i32 0, i32 4, !dbg !782
  store i32 0, ptr %126, align 4, !dbg !783
  %127 = load ptr, ptr %11, align 8, !dbg !784
  %128 = getelementptr inbounds nuw %struct.jpeg_scan_info, ptr %127, i32 0, i32 5, !dbg !785
  store i32 0, ptr %128, align 4, !dbg !786
  br label %129

129:                                              ; preds = %120, %115
  %130 = load i32, ptr %9, align 4, !dbg !787
  %131 = icmp ne i32 %130, 59, !dbg !789
  br i1 %131, label %132, label %142, !dbg !790

132:                                              ; preds = %129
  %133 = load i32, ptr %9, align 4, !dbg !791
  %134 = icmp ne i32 %133, -1, !dbg !792
  br i1 %134, label %135, label %142, !dbg !790

135:                                              ; preds = %132
  br label %136, !dbg !793

136:                                              ; preds = %135, %114, %105, %93, %81, %57
    #dbg_label(!794, !796)
  %137 = load ptr, ptr @stderr, align 8, !dbg !797
  %138 = load ptr, ptr %5, align 8, !dbg !798
  %139 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %137, ptr noundef @.str.8, ptr noundef %138) #5, !dbg !799
  %140 = load ptr, ptr %6, align 8, !dbg !800
  %141 = call i32 @fclose(ptr noundef %140), !dbg !801
  store i32 0, ptr %3, align 4, !dbg !802
  br label %184, !dbg !802

142:                                              ; preds = %132, %129
  %143 = load ptr, ptr %11, align 8, !dbg !803
  %144 = getelementptr inbounds nuw %struct.jpeg_scan_info, ptr %143, i32 1, !dbg !803
  store ptr %144, ptr %11, align 8, !dbg !803
  %145 = load i32, ptr %7, align 4, !dbg !804
  %146 = add nsw i32 %145, 1, !dbg !804
  store i32 %146, ptr %7, align 4, !dbg !804
  br label %22, !dbg !671, !llvm.loop !805

147:                                              ; preds = %22
  %148 = load i32, ptr %9, align 4, !dbg !807
  %149 = icmp ne i32 %148, -1, !dbg !809
  br i1 %149, label %150, label %156, !dbg !809

150:                                              ; preds = %147
  %151 = load ptr, ptr @stderr, align 8, !dbg !810
  %152 = load ptr, ptr %5, align 8, !dbg !812
  %153 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %151, ptr noundef @.str.4, ptr noundef %152) #5, !dbg !813
  %154 = load ptr, ptr %6, align 8, !dbg !814
  %155 = call i32 @fclose(ptr noundef %154), !dbg !815
  store i32 0, ptr %3, align 4, !dbg !816
  br label %184, !dbg !816

156:                                              ; preds = %147
  %157 = load i32, ptr %7, align 4, !dbg !817
  %158 = icmp sgt i32 %157, 0, !dbg !819
  br i1 %158, label %159, label %181, !dbg !819

159:                                              ; preds = %156
  %160 = load ptr, ptr %4, align 8, !dbg !820
  %161 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %160, i32 0, i32 1, !dbg !822
  %162 = load ptr, ptr %161, align 8, !dbg !822
  %163 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %162, i32 0, i32 0, !dbg !823
  %164 = load ptr, ptr %163, align 8, !dbg !823
  %165 = load ptr, ptr %4, align 8, !dbg !824
  %166 = load i32, ptr %7, align 4, !dbg !825
  %167 = sext i32 %166 to i64, !dbg !825
  %168 = mul i64 %167, 36, !dbg !826
  %169 = call ptr %164(ptr noundef %165, i32 noundef 1, i64 noundef %168), !dbg !827
  store ptr %169, ptr %11, align 8, !dbg !828
  %170 = load ptr, ptr %11, align 8, !dbg !829
  %171 = getelementptr inbounds [100 x %struct.jpeg_scan_info], ptr %12, i64 0, i64 0, !dbg !829
  %172 = load i32, ptr %7, align 4, !dbg !829
  %173 = sext i32 %172 to i64, !dbg !829
  %174 = mul i64 %173, 36, !dbg !829
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %170, ptr align 16 %171, i64 %174, i1 false), !dbg !829
  %175 = load ptr, ptr %11, align 8, !dbg !830
  %176 = load ptr, ptr %4, align 8, !dbg !831
  %177 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %176, i32 0, i32 22, !dbg !832
  store ptr %175, ptr %177, align 8, !dbg !833
  %178 = load i32, ptr %7, align 4, !dbg !834
  %179 = load ptr, ptr %4, align 8, !dbg !835
  %180 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %179, i32 0, i32 21, !dbg !836
  store i32 %178, ptr %180, align 8, !dbg !837
  br label %181, !dbg !838

181:                                              ; preds = %159, %156
  %182 = load ptr, ptr %6, align 8, !dbg !839
  %183 = call i32 @fclose(ptr noundef %182), !dbg !840
  store i32 1, ptr %3, align 4, !dbg !841
  br label %184, !dbg !841

184:                                              ; preds = %181, %150, %136, %47, %29, %16
  %185 = load i32, ptr %3, align 4, !dbg !842
  ret i32 %185, !dbg !842
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @read_scan_integer(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !843 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !844, !DIExpression(), !845)
  store ptr %1, ptr %6, align 8
    #dbg_declare(ptr %6, !846, !DIExpression(), !847)
  store ptr %2, ptr %7, align 8
    #dbg_declare(ptr %7, !848, !DIExpression(), !849)
    #dbg_declare(ptr %8, !850, !DIExpression(), !851)
  %9 = load ptr, ptr %5, align 8, !dbg !852
  %10 = load ptr, ptr %6, align 8, !dbg !854
  %11 = load ptr, ptr %7, align 8, !dbg !855
  %12 = call i32 @read_text_integer(ptr noundef %9, ptr noundef %10, ptr noundef %11), !dbg !856
  %13 = icmp ne i32 %12, 0, !dbg !856
  br i1 %13, label %15, label %14, !dbg !857

14:                                               ; preds = %3
  store i32 0, ptr %4, align 4, !dbg !858
  br label %67, !dbg !858

15:                                               ; preds = %3
  %16 = load ptr, ptr %7, align 8, !dbg !859
  %17 = load i32, ptr %16, align 4, !dbg !860
  store i32 %17, ptr %8, align 4, !dbg !861
  br label %18, !dbg !862

18:                                               ; preds = %33, %15
  %19 = load i32, ptr %8, align 4, !dbg !863
  %20 = icmp ne i32 %19, -1, !dbg !864
  br i1 %20, label %21, label %31, !dbg !865

21:                                               ; preds = %18
  %22 = call ptr @__ctype_b_loc() #6, !dbg !866
  %23 = load ptr, ptr %22, align 8, !dbg !866
  %24 = load i32, ptr %8, align 4, !dbg !866
  %25 = sext i32 %24 to i64, !dbg !866
  %26 = getelementptr inbounds i16, ptr %23, i64 %25, !dbg !866
  %27 = load i16, ptr %26, align 2, !dbg !866
  %28 = zext i16 %27 to i32, !dbg !866
  %29 = and i32 %28, 8192, !dbg !866
  %30 = icmp ne i32 %29, 0, !dbg !865
  br label %31

31:                                               ; preds = %21, %18
  %32 = phi i1 [ false, %18 ], [ %30, %21 ], !dbg !867
  br i1 %32, label %33, label %36, !dbg !862

33:                                               ; preds = %31
  %34 = load ptr, ptr %5, align 8, !dbg !868
  %35 = call i32 @text_getc(ptr noundef %34), !dbg !869
  store i32 %35, ptr %8, align 4, !dbg !870
  br label %18, !dbg !862, !llvm.loop !871

36:                                               ; preds = %31
  %37 = call ptr @__ctype_b_loc() #6, !dbg !873
  %38 = load ptr, ptr %37, align 8, !dbg !873
  %39 = load i32, ptr %8, align 4, !dbg !873
  %40 = sext i32 %39 to i64, !dbg !873
  %41 = getelementptr inbounds i16, ptr %38, i64 %40, !dbg !873
  %42 = load i16, ptr %41, align 2, !dbg !873
  %43 = zext i16 %42 to i32, !dbg !873
  %44 = and i32 %43, 2048, !dbg !873
  %45 = icmp ne i32 %44, 0, !dbg !873
  br i1 %45, label %46, label %53, !dbg !873

46:                                               ; preds = %36
  %47 = load i32, ptr %8, align 4, !dbg !875
  %48 = load ptr, ptr %5, align 8, !dbg !878
  %49 = call i32 @ungetc(i32 noundef %47, ptr noundef %48), !dbg !879
  %50 = icmp eq i32 %49, -1, !dbg !880
  br i1 %50, label %51, label %52, !dbg !880

51:                                               ; preds = %46
  store i32 0, ptr %4, align 4, !dbg !881
  br label %67, !dbg !881

52:                                               ; preds = %46
  store i32 32, ptr %8, align 4, !dbg !882
  br label %64, !dbg !883

53:                                               ; preds = %36
  %54 = load i32, ptr %8, align 4, !dbg !884
  %55 = icmp ne i32 %54, -1, !dbg !887
  br i1 %55, label %56, label %63, !dbg !888

56:                                               ; preds = %53
  %57 = load i32, ptr %8, align 4, !dbg !889
  %58 = icmp ne i32 %57, 59, !dbg !890
  br i1 %58, label %59, label %63, !dbg !891

59:                                               ; preds = %56
  %60 = load i32, ptr %8, align 4, !dbg !892
  %61 = icmp ne i32 %60, 58, !dbg !893
  br i1 %61, label %62, label %63, !dbg !891

62:                                               ; preds = %59
  store i32 32, ptr %8, align 4, !dbg !894
  br label %63, !dbg !895

63:                                               ; preds = %62, %59, %56, %53
  br label %64

64:                                               ; preds = %63, %52
  %65 = load i32, ptr %8, align 4, !dbg !896
  %66 = load ptr, ptr %7, align 8, !dbg !897
  store i32 %65, ptr %66, align 4, !dbg !898
  store i32 1, ptr %4, align 4, !dbg !899
  br label %67, !dbg !899

67:                                               ; preds = %64, %51, %14
  %68 = load i32, ptr %4, align 4, !dbg !900
  ret i32 %68, !dbg !900
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @set_quant_slots(ptr noundef %0, ptr noundef %1) #0 !dbg !901 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !902, !DIExpression(), !903)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !904, !DIExpression(), !905)
    #dbg_declare(ptr %6, !906, !DIExpression(), !907)
  store i32 0, ptr %6, align 4, !dbg !907
    #dbg_declare(ptr %7, !908, !DIExpression(), !909)
    #dbg_declare(ptr %8, !910, !DIExpression(), !911)
  store i32 0, ptr %7, align 4, !dbg !912
  br label %9, !dbg !914

9:                                                ; preds = %69, %2
  %10 = load i32, ptr %7, align 4, !dbg !915
  %11 = icmp slt i32 %10, 10, !dbg !917
  br i1 %11, label %12, label %72, !dbg !918

12:                                               ; preds = %9
  %13 = load ptr, ptr %5, align 8, !dbg !919
  %14 = load i8, ptr %13, align 1, !dbg !922
  %15 = icmp ne i8 %14, 0, !dbg !922
  br i1 %15, label %16, label %59, !dbg !922

16:                                               ; preds = %12
  store i8 44, ptr %8, align 1, !dbg !923
  %17 = load ptr, ptr %5, align 8, !dbg !925
  %18 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %17, ptr noundef @.str.9, ptr noundef %6, ptr noundef %8) #5, !dbg !927
  %19 = icmp slt i32 %18, 1, !dbg !928
  br i1 %19, label %20, label %21, !dbg !928

20:                                               ; preds = %16
  store i32 0, ptr %3, align 4, !dbg !929
  br label %73, !dbg !929

21:                                               ; preds = %16
  %22 = load i8, ptr %8, align 1, !dbg !930
  %23 = sext i8 %22 to i32, !dbg !930
  %24 = icmp ne i32 %23, 44, !dbg !932
  br i1 %24, label %25, label %26, !dbg !932

25:                                               ; preds = %21
  store i32 0, ptr %3, align 4, !dbg !933
  br label %73, !dbg !933

26:                                               ; preds = %21
  %27 = load i32, ptr %6, align 4, !dbg !934
  %28 = icmp slt i32 %27, 0, !dbg !936
  br i1 %28, label %32, label %29, !dbg !937

29:                                               ; preds = %26
  %30 = load i32, ptr %6, align 4, !dbg !938
  %31 = icmp sge i32 %30, 4, !dbg !939
  br i1 %31, label %32, label %35, !dbg !937

32:                                               ; preds = %29, %26
  %33 = load ptr, ptr @stderr, align 8, !dbg !940
  %34 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef @.str.10, i32 noundef 3) #5, !dbg !942
  store i32 0, ptr %3, align 4, !dbg !943
  br label %73, !dbg !943

35:                                               ; preds = %29
  %36 = load i32, ptr %6, align 4, !dbg !944
  %37 = load ptr, ptr %4, align 8, !dbg !945
  %38 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %37, i32 0, i32 14, !dbg !946
  %39 = load ptr, ptr %38, align 8, !dbg !946
  %40 = load i32, ptr %7, align 4, !dbg !947
  %41 = sext i32 %40 to i64, !dbg !945
  %42 = getelementptr inbounds %struct.jpeg_component_info, ptr %39, i64 %41, !dbg !945
  %43 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %42, i32 0, i32 4, !dbg !948
  store i32 %36, ptr %43, align 8, !dbg !949
  br label %44, !dbg !950

44:                                               ; preds = %57, %35
  %45 = load ptr, ptr %5, align 8, !dbg !951
  %46 = load i8, ptr %45, align 1, !dbg !952
  %47 = sext i8 %46 to i32, !dbg !952
  %48 = icmp ne i32 %47, 0, !dbg !952
  br i1 %48, label %49, label %55, !dbg !953

49:                                               ; preds = %44
  %50 = load ptr, ptr %5, align 8, !dbg !954
  %51 = getelementptr inbounds nuw i8, ptr %50, i32 1, !dbg !954
  store ptr %51, ptr %5, align 8, !dbg !954
  %52 = load i8, ptr %50, align 1, !dbg !955
  %53 = sext i8 %52 to i32, !dbg !955
  %54 = icmp ne i32 %53, 44, !dbg !956
  br label %55

55:                                               ; preds = %49, %44
  %56 = phi i1 [ false, %44 ], [ %54, %49 ], !dbg !957
  br i1 %56, label %57, label %58, !dbg !950

57:                                               ; preds = %55
  br label %44, !dbg !950, !llvm.loop !958

58:                                               ; preds = %55
  br label %68, !dbg !960

59:                                               ; preds = %12
  %60 = load i32, ptr %6, align 4, !dbg !961
  %61 = load ptr, ptr %4, align 8, !dbg !963
  %62 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %61, i32 0, i32 14, !dbg !964
  %63 = load ptr, ptr %62, align 8, !dbg !964
  %64 = load i32, ptr %7, align 4, !dbg !965
  %65 = sext i32 %64 to i64, !dbg !963
  %66 = getelementptr inbounds %struct.jpeg_component_info, ptr %63, i64 %65, !dbg !963
  %67 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %66, i32 0, i32 4, !dbg !966
  store i32 %60, ptr %67, align 8, !dbg !967
  br label %68

68:                                               ; preds = %59, %58
  br label %69, !dbg !968

69:                                               ; preds = %68
  %70 = load i32, ptr %7, align 4, !dbg !969
  %71 = add nsw i32 %70, 1, !dbg !969
  store i32 %71, ptr %7, align 4, !dbg !969
  br label %9, !dbg !970, !llvm.loop !971

72:                                               ; preds = %9
  store i32 1, ptr %3, align 4, !dbg !973
  br label %73, !dbg !973

73:                                               ; preds = %72, %32, %25, %20
  %74 = load i32, ptr %3, align 4, !dbg !974
  ret i32 %74, !dbg !974
}

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @set_sample_factors(ptr noundef %0, ptr noundef %1) #0 !dbg !975 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !976, !DIExpression(), !977)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !978, !DIExpression(), !979)
    #dbg_declare(ptr %6, !980, !DIExpression(), !981)
    #dbg_declare(ptr %7, !982, !DIExpression(), !983)
    #dbg_declare(ptr %8, !984, !DIExpression(), !985)
    #dbg_declare(ptr %9, !986, !DIExpression(), !987)
    #dbg_declare(ptr %10, !988, !DIExpression(), !989)
  store i32 0, ptr %6, align 4, !dbg !990
  br label %11, !dbg !992

11:                                               ; preds = %99, %2
  %12 = load i32, ptr %6, align 4, !dbg !993
  %13 = icmp slt i32 %12, 10, !dbg !995
  br i1 %13, label %14, label %102, !dbg !996

14:                                               ; preds = %11
  %15 = load ptr, ptr %5, align 8, !dbg !997
  %16 = load i8, ptr %15, align 1, !dbg !1000
  %17 = icmp ne i8 %16, 0, !dbg !1000
  br i1 %17, label %18, label %83, !dbg !1000

18:                                               ; preds = %14
  store i8 44, ptr %10, align 1, !dbg !1001
  %19 = load ptr, ptr %5, align 8, !dbg !1003
  %20 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %19, ptr noundef @.str.11, ptr noundef %7, ptr noundef %9, ptr noundef %8, ptr noundef %10) #5, !dbg !1005
  %21 = icmp slt i32 %20, 3, !dbg !1006
  br i1 %21, label %22, label %23, !dbg !1006

22:                                               ; preds = %18
  store i32 0, ptr %3, align 4, !dbg !1007
  br label %103, !dbg !1007

23:                                               ; preds = %18
  %24 = load i8, ptr %9, align 1, !dbg !1008
  %25 = sext i8 %24 to i32, !dbg !1008
  %26 = icmp ne i32 %25, 120, !dbg !1010
  br i1 %26, label %27, label %31, !dbg !1011

27:                                               ; preds = %23
  %28 = load i8, ptr %9, align 1, !dbg !1012
  %29 = sext i8 %28 to i32, !dbg !1012
  %30 = icmp ne i32 %29, 88, !dbg !1013
  br i1 %30, label %35, label %31, !dbg !1014

31:                                               ; preds = %27, %23
  %32 = load i8, ptr %10, align 1, !dbg !1015
  %33 = sext i8 %32 to i32, !dbg !1015
  %34 = icmp ne i32 %33, 44, !dbg !1016
  br i1 %34, label %35, label %36, !dbg !1014

35:                                               ; preds = %31, %27
  store i32 0, ptr %3, align 4, !dbg !1017
  br label %103, !dbg !1017

36:                                               ; preds = %31
  %37 = load i32, ptr %7, align 4, !dbg !1018
  %38 = icmp sle i32 %37, 0, !dbg !1020
  br i1 %38, label %48, label %39, !dbg !1021

39:                                               ; preds = %36
  %40 = load i32, ptr %7, align 4, !dbg !1022
  %41 = icmp sgt i32 %40, 4, !dbg !1023
  br i1 %41, label %48, label %42, !dbg !1024

42:                                               ; preds = %39
  %43 = load i32, ptr %8, align 4, !dbg !1025
  %44 = icmp sle i32 %43, 0, !dbg !1026
  br i1 %44, label %48, label %45, !dbg !1027

45:                                               ; preds = %42
  %46 = load i32, ptr %8, align 4, !dbg !1028
  %47 = icmp sgt i32 %46, 4, !dbg !1029
  br i1 %47, label %48, label %51, !dbg !1027

48:                                               ; preds = %45, %42, %39, %36
  %49 = load ptr, ptr @stderr, align 8, !dbg !1030
  %50 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %49, ptr noundef @.str.12) #5, !dbg !1032
  store i32 0, ptr %3, align 4, !dbg !1033
  br label %103, !dbg !1033

51:                                               ; preds = %45
  %52 = load i32, ptr %7, align 4, !dbg !1034
  %53 = load ptr, ptr %4, align 8, !dbg !1035
  %54 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %53, i32 0, i32 14, !dbg !1036
  %55 = load ptr, ptr %54, align 8, !dbg !1036
  %56 = load i32, ptr %6, align 4, !dbg !1037
  %57 = sext i32 %56 to i64, !dbg !1035
  %58 = getelementptr inbounds %struct.jpeg_component_info, ptr %55, i64 %57, !dbg !1035
  %59 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %58, i32 0, i32 2, !dbg !1038
  store i32 %52, ptr %59, align 8, !dbg !1039
  %60 = load i32, ptr %8, align 4, !dbg !1040
  %61 = load ptr, ptr %4, align 8, !dbg !1041
  %62 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %61, i32 0, i32 14, !dbg !1042
  %63 = load ptr, ptr %62, align 8, !dbg !1042
  %64 = load i32, ptr %6, align 4, !dbg !1043
  %65 = sext i32 %64 to i64, !dbg !1041
  %66 = getelementptr inbounds %struct.jpeg_component_info, ptr %63, i64 %65, !dbg !1041
  %67 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %66, i32 0, i32 3, !dbg !1044
  store i32 %60, ptr %67, align 4, !dbg !1045
  br label %68, !dbg !1046

68:                                               ; preds = %81, %51
  %69 = load ptr, ptr %5, align 8, !dbg !1047
  %70 = load i8, ptr %69, align 1, !dbg !1048
  %71 = sext i8 %70 to i32, !dbg !1048
  %72 = icmp ne i32 %71, 0, !dbg !1048
  br i1 %72, label %73, label %79, !dbg !1049

73:                                               ; preds = %68
  %74 = load ptr, ptr %5, align 8, !dbg !1050
  %75 = getelementptr inbounds nuw i8, ptr %74, i32 1, !dbg !1050
  store ptr %75, ptr %5, align 8, !dbg !1050
  %76 = load i8, ptr %74, align 1, !dbg !1051
  %77 = sext i8 %76 to i32, !dbg !1051
  %78 = icmp ne i32 %77, 44, !dbg !1052
  br label %79

79:                                               ; preds = %73, %68
  %80 = phi i1 [ false, %68 ], [ %78, %73 ], !dbg !1053
  br i1 %80, label %81, label %82, !dbg !1046

81:                                               ; preds = %79
  br label %68, !dbg !1046, !llvm.loop !1054

82:                                               ; preds = %79
  br label %98, !dbg !1056

83:                                               ; preds = %14
  %84 = load ptr, ptr %4, align 8, !dbg !1057
  %85 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %84, i32 0, i32 14, !dbg !1059
  %86 = load ptr, ptr %85, align 8, !dbg !1059
  %87 = load i32, ptr %6, align 4, !dbg !1060
  %88 = sext i32 %87 to i64, !dbg !1057
  %89 = getelementptr inbounds %struct.jpeg_component_info, ptr %86, i64 %88, !dbg !1057
  %90 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %89, i32 0, i32 2, !dbg !1061
  store i32 1, ptr %90, align 8, !dbg !1062
  %91 = load ptr, ptr %4, align 8, !dbg !1063
  %92 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %91, i32 0, i32 14, !dbg !1064
  %93 = load ptr, ptr %92, align 8, !dbg !1064
  %94 = load i32, ptr %6, align 4, !dbg !1065
  %95 = sext i32 %94 to i64, !dbg !1063
  %96 = getelementptr inbounds %struct.jpeg_component_info, ptr %93, i64 %95, !dbg !1063
  %97 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %96, i32 0, i32 3, !dbg !1066
  store i32 1, ptr %97, align 4, !dbg !1067
  br label %98

98:                                               ; preds = %83, %82
  br label %99, !dbg !1068

99:                                               ; preds = %98
  %100 = load i32, ptr %6, align 4, !dbg !1069
  %101 = add nsw i32 %100, 1, !dbg !1069
  store i32 %101, ptr %6, align 4, !dbg !1069
  br label %11, !dbg !1070, !llvm.loop !1071

102:                                              ; preds = %11
  store i32 1, ptr %3, align 4, !dbg !1073
  br label %103, !dbg !1073

103:                                              ; preds = %102, %48, %35, %22
  %104 = load i32, ptr %3, align 4, !dbg !1074
  ret i32 %104, !dbg !1074
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @text_getc(ptr noundef %0) #0 !dbg !1075 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !1078, !DIExpression(), !1079)
    #dbg_declare(ptr %3, !1080, !DIExpression(), !1081)
  %4 = load ptr, ptr %2, align 8, !dbg !1082
  %5 = call i32 @getc(ptr noundef %4), !dbg !1083
  store i32 %5, ptr %3, align 4, !dbg !1084
  %6 = load i32, ptr %3, align 4, !dbg !1085
  %7 = icmp eq i32 %6, 35, !dbg !1087
  br i1 %7, label %8, label %21, !dbg !1087

8:                                                ; preds = %1
  br label %9, !dbg !1088

9:                                                ; preds = %18, %8
  %10 = load ptr, ptr %2, align 8, !dbg !1090
  %11 = call i32 @getc(ptr noundef %10), !dbg !1092
  store i32 %11, ptr %3, align 4, !dbg !1093
  br label %12, !dbg !1094

12:                                               ; preds = %9
  %13 = load i32, ptr %3, align 4, !dbg !1095
  %14 = icmp ne i32 %13, 10, !dbg !1096
  br i1 %14, label %15, label %18, !dbg !1097

15:                                               ; preds = %12
  %16 = load i32, ptr %3, align 4, !dbg !1098
  %17 = icmp ne i32 %16, -1, !dbg !1099
  br label %18

18:                                               ; preds = %15, %12
  %19 = phi i1 [ false, %12 ], [ %17, %15 ], !dbg !1100
  br i1 %19, label %9, label %20, !dbg !1094, !llvm.loop !1101

20:                                               ; preds = %18
  br label %21, !dbg !1103

21:                                               ; preds = %20, %1
  %22 = load i32, ptr %3, align 4, !dbg !1104
  ret i32 %22, !dbg !1105
}

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #4

declare i32 @getc(ptr noundef) #1

declare i32 @ungetc(i32 noundef, ptr noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(none) }

!llvm.dbg.cu = !{!64}
!llvm.module.flags = !{!239, !240, !241, !242, !243, !244, !245}
!llvm.ident = !{!246}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 90, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "cBench/consumer_jpeg_c/src/rdswitch.c", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "ab14f8994845aedcdf1a60d3ee63185f")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 2)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 91, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 26)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 98, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 28)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 105, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 31)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 116, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 29)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 183, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 36)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 191, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 35)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 199, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 44)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 232, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 38)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 279, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 5)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 284, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 45)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !2, line: 313, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 9)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !2, line: 318, type: !29, isLocal: true, isDefinition: true)
!64 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !65, retainedTypes: !96, globals: !238, splitDebugInlining: false, nameTableKind: None)
!65 = !{!66, !76, !81}
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !67, line: 194, baseType: !68, size: 32, elements: !69)
!67 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jpeglib.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "2a2b23235fe587b10147d741e3371e67")
!68 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!69 = !{!70, !71, !72, !73, !74, !75}
!70 = !DIEnumerator(name: "JCS_UNKNOWN", value: 0)
!71 = !DIEnumerator(name: "JCS_GRAYSCALE", value: 1)
!72 = !DIEnumerator(name: "JCS_RGB", value: 2)
!73 = !DIEnumerator(name: "JCS_YCbCr", value: 3)
!74 = !DIEnumerator(name: "JCS_CMYK", value: 4)
!75 = !DIEnumerator(name: "JCS_YCCK", value: 5)
!76 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !67, line: 205, baseType: !68, size: 32, elements: !77)
!77 = !{!78, !79, !80}
!78 = !DIEnumerator(name: "JDCT_ISLOW", value: 0)
!79 = !DIEnumerator(name: "JDCT_IFAST", value: 1)
!80 = !DIEnumerator(name: "JDCT_FLOAT", value: 2)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !82, line: 46, baseType: !68, size: 32, elements: !83)
!82 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!83 = !{!84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95}
!84 = !DIEnumerator(name: "_ISupper", value: 256)
!85 = !DIEnumerator(name: "_ISlower", value: 512)
!86 = !DIEnumerator(name: "_ISalpha", value: 1024)
!87 = !DIEnumerator(name: "_ISdigit", value: 2048)
!88 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!89 = !DIEnumerator(name: "_ISspace", value: 8192)
!90 = !DIEnumerator(name: "_ISprint", value: 16384)
!91 = !DIEnumerator(name: "_ISgraph", value: 32768)
!92 = !DIEnumerator(name: "_ISblank", value: 1)
!93 = !DIEnumerator(name: "_IScntrl", value: 2)
!94 = !DIEnumerator(name: "_ISpunct", value: 4)
!95 = !DIEnumerator(name: "_ISalnum", value: 8)
!96 = !{!97, !68, !98, !99, !112, !167, !235, !237}
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!98 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_scan_info", file: !67, line: 189, baseType: !101)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !67, line: 184, size: 288, elements: !102)
!102 = !{!103, !104, !108, !109, !110, !111}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "comps_in_scan", scope: !101, file: !67, line: 185, baseType: !98, size: 32)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "component_index", scope: !101, file: !67, line: 186, baseType: !105, size: 128, offset: 32)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 128, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 4)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "Ss", scope: !101, file: !67, line: 187, baseType: !98, size: 32, offset: 160)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "Se", scope: !101, file: !67, line: 187, baseType: !98, size: 32, offset: 192)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "Ah", scope: !101, file: !67, line: 188, baseType: !98, size: 32, offset: 224)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "Al", scope: !101, file: !67, line: 188, baseType: !98, size: 32, offset: 256)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_common_ptr", file: !67, line: 248, baseType: !113)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_common_struct", file: !67, line: 240, size: 256, elements: !115)
!115 = !{!116, !159, !224, !233, !234}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !114, file: !67, line: 241, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_error_mgr", file: !67, line: 618, size: 1344, elements: !119)
!119 = !{!120, !124, !128, !129, !134, !135, !136, !147, !148, !150, !155, !156, !157, !158}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "error_exit", scope: !118, file: !67, line: 620, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{null, !112}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "emit_message", scope: !118, file: !67, line: 622, baseType: !125, size: 64, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{null, !112, !98}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "output_message", scope: !118, file: !67, line: 624, baseType: !121, size: 64, offset: 128)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "format_message", scope: !118, file: !67, line: 626, baseType: !130, size: 64, offset: 192)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DISubroutineType(types: !132)
!132 = !{null, !112, !133}
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "reset_error_mgr", scope: !118, file: !67, line: 629, baseType: !121, size: 64, offset: 256)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "msg_code", scope: !118, file: !67, line: 634, baseType: !98, size: 32, offset: 320)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "msg_parm", scope: !118, file: !67, line: 639, baseType: !137, size: 640, offset: 352)
!137 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !118, file: !67, line: 636, size: 640, elements: !138)
!138 = !{!139, !143}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !137, file: !67, line: 637, baseType: !140, size: 256)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 256, elements: !141)
!141 = !{!142}
!142 = !DISubrange(count: 8)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !137, file: !67, line: 638, baseType: !144, size: 640)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 640, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 80)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "trace_level", scope: !118, file: !67, line: 643, baseType: !98, size: 32, offset: 992)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "num_warnings", scope: !118, file: !67, line: 651, baseType: !149, size: 64, offset: 1024)
!149 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_message_table", scope: !118, file: !67, line: 663, baseType: !151, size: 64, offset: 1088)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "last_jpeg_message", scope: !118, file: !67, line: 664, baseType: !98, size: 32, offset: 1152)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "addon_message_table", scope: !118, file: !67, line: 668, baseType: !151, size: 64, offset: 1216)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "first_addon_message", scope: !118, file: !67, line: 669, baseType: !98, size: 32, offset: 1280)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "last_addon_message", scope: !118, file: !67, line: 670, baseType: !98, size: 32, offset: 1312)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !114, file: !67, line: 241, baseType: !160, size: 64, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_memory_mgr", file: !67, line: 731, size: 768, elements: !162)
!162 = !{!163, !170, !171, !183, !197, !205, !212, !213, !217, !221, !222, !223}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_small", scope: !161, file: !67, line: 733, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DISubroutineType(types: !166)
!166 = !{!97, !112, !98, !167}
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !168, line: 18, baseType: !169)
!168 = !DIFile(filename: "/usr/local/lib/clang/20/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!169 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_large", scope: !161, file: !67, line: 735, baseType: !164, size: 64, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_sarray", scope: !161, file: !67, line: 737, baseType: !172, size: 64, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DISubroutineType(types: !174)
!174 = !{!175, !112, !98, !182, !182}
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPARRAY", file: !67, line: 67, baseType: !176)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPROW", file: !67, line: 66, baseType: !178)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPLE", file: !180, line: 59, baseType: !181)
!180 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jmorecfg.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "56a0eda58fafa6bdd5498f702a998c09")
!181 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "JDIMENSION", file: !180, line: 171, baseType: !68)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_barray", scope: !161, file: !67, line: 740, baseType: !184, size: 64, offset: 192)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DISubroutineType(types: !186)
!186 = !{!187, !112, !98, !182, !182}
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCKARRAY", file: !67, line: 72, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCKROW", file: !67, line: 71, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCK", file: !67, line: 70, baseType: !192)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 1024, elements: !195)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "JCOEF", file: !180, line: 99, baseType: !194)
!194 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!195 = !{!196}
!196 = !DISubrange(count: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_sarray", scope: !161, file: !67, line: 743, baseType: !198, size: 64, offset: 256)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{!201, !112, !98, !204, !182, !182, !182}
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_sarray_ptr", file: !67, line: 727, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_sarray_control", file: !67, line: 727, flags: DIFlagFwdDecl)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "boolean", file: !180, line: 227, baseType: !98)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_barray", scope: !161, file: !67, line: 749, baseType: !206, size: 64, offset: 320)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{!209, !112, !98, !204, !182, !182, !182}
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_barray_ptr", file: !67, line: 728, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_barray_control", file: !67, line: 728, flags: DIFlagFwdDecl)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "realize_virt_arrays", scope: !161, file: !67, line: 755, baseType: !121, size: 64, offset: 384)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_sarray", scope: !161, file: !67, line: 756, baseType: !214, size: 64, offset: 448)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{!175, !112, !201, !182, !182, !204}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_barray", scope: !161, file: !67, line: 761, baseType: !218, size: 64, offset: 512)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{!187, !112, !209, !182, !182, !204}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "free_pool", scope: !161, file: !67, line: 766, baseType: !125, size: 64, offset: 576)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "self_destruct", scope: !161, file: !67, line: 767, baseType: !121, size: 64, offset: 640)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "max_memory_to_use", scope: !161, file: !67, line: 774, baseType: !149, size: 64, offset: 704)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !114, file: !67, line: 241, baseType: !225, size: 64, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_progress_mgr", file: !67, line: 676, size: 256, elements: !227)
!227 = !{!228, !229, !230, !231, !232}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !226, file: !67, line: 677, baseType: !121, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "pass_counter", scope: !226, file: !67, line: 679, baseType: !149, size: 64, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "pass_limit", scope: !226, file: !67, line: 680, baseType: !149, size: 64, offset: 128)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "completed_passes", scope: !226, file: !67, line: 681, baseType: !98, size: 32, offset: 192)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "total_passes", scope: !226, file: !67, line: 682, baseType: !98, size: 32, offset: 224)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !114, file: !67, line: 241, baseType: !204, size: 32, offset: 192)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !114, file: !67, line: 241, baseType: !98, size: 32, offset: 224)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!237 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!238 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !57, !62}
!239 = !{i32 7, !"Dwarf Version", i32 5}
!240 = !{i32 2, !"Debug Info Version", i32 3}
!241 = !{i32 1, !"wchar_size", i32 4}
!242 = !{i32 8, !"PIC Level", i32 2}
!243 = !{i32 7, !"PIE Level", i32 2}
!244 = !{i32 7, !"uwtable", i32 2}
!245 = !{i32 7, !"frame-pointer", i32 2}
!246 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!247 = distinct !DISubprogram(name: "read_quant_tables", scope: !2, file: !2, line: 73, type: !248, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !64, retainedNodes: !409)
!248 = !DISubroutineType(types: !249)
!249 = !{!204, !250, !133, !98, !204}
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_compress_ptr", file: !67, line: 249, baseType: !251)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_compress_struct", file: !67, line: 255, size: 3968, elements: !253)
!253 = !{!254, !255, !256, !257, !258, !259, !276, !277, !278, !279, !281, !283, !284, !285, !286, !320, !322, !338, !339, !343, !344, !345, !346, !349, !350, !351, !352, !353, !354, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !371, !372, !373, !374, !378, !379, !380, !381, !382, !385, !388, !391, !394, !397, !400, !403, !406}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !252, file: !67, line: 256, baseType: !117, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !252, file: !67, line: 256, baseType: !160, size: 64, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !252, file: !67, line: 256, baseType: !225, size: 64, offset: 128)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !252, file: !67, line: 256, baseType: !204, size: 32, offset: 192)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !252, file: !67, line: 256, baseType: !98, size: 32, offset: 224)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !252, file: !67, line: 259, baseType: !260, size: 64, offset: 256)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_destination_mgr", file: !67, line: 688, size: 320, elements: !262)
!262 = !{!263, !266, !267, !271, !275}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "next_output_byte", scope: !261, file: !67, line: 689, baseType: !264, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "JOCTET", file: !180, line: 110, baseType: !181)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "free_in_buffer", scope: !261, file: !67, line: 690, baseType: !167, size: 64, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "init_destination", scope: !261, file: !67, line: 692, baseType: !268, size: 64, offset: 128)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{null, !250}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "empty_output_buffer", scope: !261, file: !67, line: 693, baseType: !272, size: 64, offset: 192)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{!204, !250}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "term_destination", scope: !261, file: !67, line: 694, baseType: !268, size: 64, offset: 256)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "image_width", scope: !252, file: !67, line: 266, baseType: !182, size: 32, offset: 320)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "image_height", scope: !252, file: !67, line: 267, baseType: !182, size: 32, offset: 352)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "input_components", scope: !252, file: !67, line: 268, baseType: !98, size: 32, offset: 384)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "in_color_space", scope: !252, file: !67, line: 269, baseType: !280, size: 32, offset: 416)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_COLOR_SPACE", file: !67, line: 201, baseType: !66)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "input_gamma", scope: !252, file: !67, line: 271, baseType: !282, size: 64, offset: 448)
!282 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "data_precision", scope: !252, file: !67, line: 281, baseType: !98, size: 32, offset: 512)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "num_components", scope: !252, file: !67, line: 283, baseType: !98, size: 32, offset: 544)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_color_space", scope: !252, file: !67, line: 284, baseType: !280, size: 32, offset: 576)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "comp_info", scope: !252, file: !67, line: 286, baseType: !287, size: 64, offset: 640)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_component_info", file: !67, line: 179, baseType: !289)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !67, line: 116, size: 768, elements: !290)
!290 = !{!291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !319}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "component_id", scope: !289, file: !67, line: 120, baseType: !98, size: 32)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "component_index", scope: !289, file: !67, line: 121, baseType: !98, size: 32, offset: 32)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "h_samp_factor", scope: !289, file: !67, line: 122, baseType: !98, size: 32, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "v_samp_factor", scope: !289, file: !67, line: 123, baseType: !98, size: 32, offset: 96)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_no", scope: !289, file: !67, line: 124, baseType: !98, size: 32, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "dc_tbl_no", scope: !289, file: !67, line: 129, baseType: !98, size: 32, offset: 160)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tbl_no", scope: !289, file: !67, line: 130, baseType: !98, size: 32, offset: 192)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "width_in_blocks", scope: !289, file: !67, line: 139, baseType: !182, size: 32, offset: 224)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "height_in_blocks", scope: !289, file: !67, line: 140, baseType: !182, size: 32, offset: 256)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "DCT_scaled_size", scope: !289, file: !67, line: 147, baseType: !98, size: 32, offset: 288)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_width", scope: !289, file: !67, line: 154, baseType: !182, size: 32, offset: 320)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_height", scope: !289, file: !67, line: 155, baseType: !182, size: 32, offset: 352)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "component_needed", scope: !289, file: !67, line: 160, baseType: !204, size: 32, offset: 384)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_width", scope: !289, file: !67, line: 164, baseType: !98, size: 32, offset: 416)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_height", scope: !289, file: !67, line: 165, baseType: !98, size: 32, offset: 448)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_blocks", scope: !289, file: !67, line: 166, baseType: !98, size: 32, offset: 480)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_sample_width", scope: !289, file: !67, line: 167, baseType: !98, size: 32, offset: 512)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "last_col_width", scope: !289, file: !67, line: 168, baseType: !98, size: 32, offset: 544)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "last_row_height", scope: !289, file: !67, line: 169, baseType: !98, size: 32, offset: 576)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "quant_table", scope: !289, file: !67, line: 175, baseType: !311, size: 64, offset: 640)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "JQUANT_TBL", file: !67, line: 95, baseType: !313)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !67, line: 83, size: 1056, elements: !314)
!314 = !{!315, !318}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "quantval", scope: !313, file: !67, line: 88, baseType: !316, size: 1024)
!316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, size: 1024, elements: !195)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !180, line: 147, baseType: !237)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !313, file: !67, line: 94, baseType: !204, size: 32, offset: 1024)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "dct_table", scope: !289, file: !67, line: 178, baseType: !97, size: 64, offset: 704)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_ptrs", scope: !252, file: !67, line: 289, baseType: !321, size: 256, offset: 704)
!321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 256, elements: !106)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "dc_huff_tbl_ptrs", scope: !252, file: !67, line: 292, baseType: !323, size: 256, offset: 960)
!323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !324, size: 256, elements: !106)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "JHUFF_TBL", file: !67, line: 111, baseType: !326)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !67, line: 100, size: 2240, elements: !327)
!327 = !{!328, !333, !337}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !326, file: !67, line: 102, baseType: !329, size: 136)
!329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 136, elements: !331)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT8", file: !180, line: 135, baseType: !181)
!331 = !{!332}
!332 = !DISubrange(count: 17)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "huffval", scope: !326, file: !67, line: 104, baseType: !334, size: 2048, offset: 136)
!334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 2048, elements: !335)
!335 = !{!336}
!336 = !DISubrange(count: 256)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !326, file: !67, line: 110, baseType: !204, size: 32, offset: 2208)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "ac_huff_tbl_ptrs", scope: !252, file: !67, line: 293, baseType: !323, size: 256, offset: 1216)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_L", scope: !252, file: !67, line: 296, baseType: !340, size: 128, offset: 1472)
!340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 128, elements: !341)
!341 = !{!342}
!342 = !DISubrange(count: 16)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_U", scope: !252, file: !67, line: 297, baseType: !340, size: 128, offset: 1600)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "arith_ac_K", scope: !252, file: !67, line: 298, baseType: !340, size: 128, offset: 1728)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "num_scans", scope: !252, file: !67, line: 300, baseType: !98, size: 32, offset: 1856)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "scan_info", scope: !252, file: !67, line: 301, baseType: !347, size: 64, offset: 1920)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "raw_data_in", scope: !252, file: !67, line: 307, baseType: !204, size: 32, offset: 1984)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "arith_code", scope: !252, file: !67, line: 308, baseType: !204, size: 32, offset: 2016)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_coding", scope: !252, file: !67, line: 309, baseType: !204, size: 32, offset: 2048)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "CCIR601_sampling", scope: !252, file: !67, line: 310, baseType: !204, size: 32, offset: 2080)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "smoothing_factor", scope: !252, file: !67, line: 311, baseType: !98, size: 32, offset: 2112)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "dct_method", scope: !252, file: !67, line: 312, baseType: !355, size: 32, offset: 2144)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_DCT_METHOD", file: !67, line: 209, baseType: !76)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "restart_interval", scope: !252, file: !67, line: 319, baseType: !68, size: 32, offset: 2176)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "restart_in_rows", scope: !252, file: !67, line: 320, baseType: !98, size: 32, offset: 2208)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "write_JFIF_header", scope: !252, file: !67, line: 324, baseType: !204, size: 32, offset: 2240)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "density_unit", scope: !252, file: !67, line: 329, baseType: !330, size: 8, offset: 2272)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "X_density", scope: !252, file: !67, line: 330, baseType: !317, size: 16, offset: 2288)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "Y_density", scope: !252, file: !67, line: 331, baseType: !317, size: 16, offset: 2304)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "write_Adobe_marker", scope: !252, file: !67, line: 332, baseType: !204, size: 32, offset: 2336)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "next_scanline", scope: !252, file: !67, line: 339, baseType: !182, size: 32, offset: 2368)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "progressive_mode", scope: !252, file: !67, line: 348, baseType: !204, size: 32, offset: 2400)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "max_h_samp_factor", scope: !252, file: !67, line: 349, baseType: !98, size: 32, offset: 2432)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "max_v_samp_factor", scope: !252, file: !67, line: 350, baseType: !98, size: 32, offset: 2464)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "total_iMCU_rows", scope: !252, file: !67, line: 352, baseType: !182, size: 32, offset: 2496)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "comps_in_scan", scope: !252, file: !67, line: 363, baseType: !98, size: 32, offset: 2528)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "cur_comp_info", scope: !252, file: !67, line: 364, baseType: !370, size: 256, offset: 2560)
!370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !287, size: 256, elements: !106)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "MCUs_per_row", scope: !252, file: !67, line: 367, baseType: !182, size: 32, offset: 2816)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_rows_in_scan", scope: !252, file: !67, line: 368, baseType: !182, size: 32, offset: 2848)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_in_MCU", scope: !252, file: !67, line: 370, baseType: !98, size: 32, offset: 2880)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_membership", scope: !252, file: !67, line: 371, baseType: !375, size: 320, offset: 2912)
!375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 320, elements: !376)
!376 = !{!377}
!377 = !DISubrange(count: 10)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "Ss", scope: !252, file: !67, line: 375, baseType: !98, size: 32, offset: 3232)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "Se", scope: !252, file: !67, line: 375, baseType: !98, size: 32, offset: 3264)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "Ah", scope: !252, file: !67, line: 375, baseType: !98, size: 32, offset: 3296)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "Al", scope: !252, file: !67, line: 375, baseType: !98, size: 32, offset: 3328)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !252, file: !67, line: 380, baseType: !383, size: 64, offset: 3392)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_comp_master", file: !67, line: 380, flags: DIFlagFwdDecl)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "main", scope: !252, file: !67, line: 381, baseType: !386, size: 64, offset: 3456)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_c_main_controller", file: !67, line: 381, flags: DIFlagFwdDecl)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "prep", scope: !252, file: !67, line: 382, baseType: !389, size: 64, offset: 3520)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_c_prep_controller", file: !67, line: 382, flags: DIFlagFwdDecl)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "coef", scope: !252, file: !67, line: 383, baseType: !392, size: 64, offset: 3584)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_c_coef_controller", file: !67, line: 383, flags: DIFlagFwdDecl)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "marker", scope: !252, file: !67, line: 384, baseType: !395, size: 64, offset: 3648)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_marker_writer", file: !67, line: 384, flags: DIFlagFwdDecl)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "cconvert", scope: !252, file: !67, line: 385, baseType: !398, size: 64, offset: 3712)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_color_converter", file: !67, line: 385, flags: DIFlagFwdDecl)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "downsample", scope: !252, file: !67, line: 386, baseType: !401, size: 64, offset: 3776)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_downsampler", file: !67, line: 386, flags: DIFlagFwdDecl)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "fdct", scope: !252, file: !67, line: 387, baseType: !404, size: 64, offset: 3840)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_forward_dct", file: !67, line: 387, flags: DIFlagFwdDecl)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "entropy", scope: !252, file: !67, line: 388, baseType: !407, size: 64, offset: 3904)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_entropy_encoder", file: !67, line: 388, flags: DIFlagFwdDecl)
!409 = !{}
!410 = !DILocalVariable(name: "cinfo", arg: 1, scope: !247, file: !2, line: 73, type: !250)
!411 = !DILocation(line: 73, column: 35, scope: !247)
!412 = !DILocalVariable(name: "filename", arg: 2, scope: !247, file: !2, line: 73, type: !133)
!413 = !DILocation(line: 73, column: 49, scope: !247)
!414 = !DILocalVariable(name: "scale_factor", arg: 3, scope: !247, file: !2, line: 74, type: !98)
!415 = !DILocation(line: 74, column: 10, scope: !247)
!416 = !DILocalVariable(name: "force_baseline", arg: 4, scope: !247, file: !2, line: 74, type: !204)
!417 = !DILocation(line: 74, column: 32, scope: !247)
!418 = !DILocalVariable(name: "fp", scope: !247, file: !2, line: 85, type: !419)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !421, line: 7, baseType: !422)
!421 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !423, line: 49, size: 1728, elements: !424)
!423 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!424 = !{!425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !440, !442, !443, !444, !447, !448, !450, !454, !457, !459, !462, !465, !466, !467, !468, !469}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !422, file: !423, line: 51, baseType: !98, size: 32)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !422, file: !423, line: 54, baseType: !133, size: 64, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !422, file: !423, line: 55, baseType: !133, size: 64, offset: 128)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !422, file: !423, line: 56, baseType: !133, size: 64, offset: 192)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !422, file: !423, line: 57, baseType: !133, size: 64, offset: 256)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !422, file: !423, line: 58, baseType: !133, size: 64, offset: 320)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !422, file: !423, line: 59, baseType: !133, size: 64, offset: 384)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !422, file: !423, line: 60, baseType: !133, size: 64, offset: 448)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !422, file: !423, line: 61, baseType: !133, size: 64, offset: 512)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !422, file: !423, line: 64, baseType: !133, size: 64, offset: 576)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !422, file: !423, line: 65, baseType: !133, size: 64, offset: 640)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !422, file: !423, line: 66, baseType: !133, size: 64, offset: 704)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !422, file: !423, line: 68, baseType: !438, size: 64, offset: 768)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !423, line: 36, flags: DIFlagFwdDecl)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !422, file: !423, line: 70, baseType: !441, size: 64, offset: 832)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !422, file: !423, line: 72, baseType: !98, size: 32, offset: 896)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !422, file: !423, line: 73, baseType: !98, size: 32, offset: 928)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !422, file: !423, line: 74, baseType: !445, size: 64, offset: 960)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !446, line: 152, baseType: !149)
!446 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!447 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !422, file: !423, line: 77, baseType: !237, size: 16, offset: 1024)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !422, file: !423, line: 78, baseType: !449, size: 8, offset: 1040)
!449 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !422, file: !423, line: 79, baseType: !451, size: 8, offset: 1048)
!451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !452)
!452 = !{!453}
!453 = !DISubrange(count: 1)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !422, file: !423, line: 81, baseType: !455, size: 64, offset: 1088)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !423, line: 43, baseType: null)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !422, file: !423, line: 89, baseType: !458, size: 64, offset: 1152)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !446, line: 153, baseType: !149)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !422, file: !423, line: 91, baseType: !460, size: 64, offset: 1216)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !423, line: 37, flags: DIFlagFwdDecl)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !422, file: !423, line: 92, baseType: !463, size: 64, offset: 1280)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !423, line: 38, flags: DIFlagFwdDecl)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !422, file: !423, line: 93, baseType: !441, size: 64, offset: 1344)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !422, file: !423, line: 94, baseType: !97, size: 64, offset: 1408)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !422, file: !423, line: 95, baseType: !167, size: 64, offset: 1472)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !422, file: !423, line: 96, baseType: !98, size: 32, offset: 1536)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !422, file: !423, line: 98, baseType: !470, size: 160, offset: 1568)
!470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !471)
!471 = !{!472}
!472 = !DISubrange(count: 20)
!473 = !DILocation(line: 85, column: 10, scope: !247)
!474 = !DILocalVariable(name: "tblno", scope: !247, file: !2, line: 86, type: !98)
!475 = !DILocation(line: 86, column: 7, scope: !247)
!476 = !DILocalVariable(name: "i", scope: !247, file: !2, line: 86, type: !98)
!477 = !DILocation(line: 86, column: 14, scope: !247)
!478 = !DILocalVariable(name: "termchar", scope: !247, file: !2, line: 86, type: !98)
!479 = !DILocation(line: 86, column: 17, scope: !247)
!480 = !DILocalVariable(name: "val", scope: !247, file: !2, line: 87, type: !149)
!481 = !DILocation(line: 87, column: 8, scope: !247)
!482 = !DILocalVariable(name: "table", scope: !247, file: !2, line: 88, type: !483)
!483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 2048, elements: !195)
!484 = !DILocation(line: 88, column: 16, scope: !247)
!485 = !DILocation(line: 90, column: 19, scope: !486)
!486 = distinct !DILexicalBlock(scope: !247, file: !2, line: 90, column: 7)
!487 = !DILocation(line: 90, column: 13, scope: !486)
!488 = !DILocation(line: 90, column: 11, scope: !486)
!489 = !DILocation(line: 90, column: 35, scope: !486)
!490 = !DILocation(line: 91, column: 13, scope: !491)
!491 = distinct !DILexicalBlock(scope: !486, file: !2, line: 90, column: 44)
!492 = !DILocation(line: 91, column: 51, scope: !491)
!493 = !DILocation(line: 91, column: 5, scope: !491)
!494 = !DILocation(line: 92, column: 5, scope: !491)
!495 = !DILocation(line: 94, column: 9, scope: !247)
!496 = !DILocation(line: 96, column: 3, scope: !247)
!497 = !DILocation(line: 96, column: 28, scope: !247)
!498 = !DILocation(line: 96, column: 10, scope: !247)
!499 = !DILocation(line: 97, column: 9, scope: !500)
!500 = distinct !DILexicalBlock(scope: !501, file: !2, line: 97, column: 9)
!501 = distinct !DILexicalBlock(scope: !247, file: !2, line: 96, column: 50)
!502 = !DILocation(line: 97, column: 15, scope: !500)
!503 = !DILocation(line: 98, column: 15, scope: !504)
!504 = distinct !DILexicalBlock(scope: !500, file: !2, line: 97, column: 34)
!505 = !DILocation(line: 98, column: 55, scope: !504)
!506 = !DILocation(line: 98, column: 7, scope: !504)
!507 = !DILocation(line: 99, column: 14, scope: !504)
!508 = !DILocation(line: 99, column: 7, scope: !504)
!509 = !DILocation(line: 100, column: 7, scope: !504)
!510 = !DILocation(line: 102, column: 31, scope: !501)
!511 = !DILocation(line: 102, column: 16, scope: !501)
!512 = !DILocation(line: 102, column: 5, scope: !501)
!513 = !DILocation(line: 102, column: 14, scope: !501)
!514 = !DILocation(line: 103, column: 12, scope: !515)
!515 = distinct !DILexicalBlock(scope: !501, file: !2, line: 103, column: 5)
!516 = !DILocation(line: 103, column: 10, scope: !515)
!517 = !DILocation(line: 103, column: 17, scope: !518)
!518 = distinct !DILexicalBlock(scope: !515, file: !2, line: 103, column: 5)
!519 = !DILocation(line: 103, column: 19, scope: !518)
!520 = !DILocation(line: 103, column: 5, scope: !515)
!521 = !DILocation(line: 104, column: 31, scope: !522)
!522 = distinct !DILexicalBlock(scope: !523, file: !2, line: 104, column: 11)
!523 = distinct !DILexicalBlock(scope: !518, file: !2, line: 103, column: 36)
!524 = !DILocation(line: 104, column: 13, scope: !522)
!525 = !DILocation(line: 104, column: 11, scope: !522)
!526 = !DILocation(line: 105, column: 10, scope: !527)
!527 = distinct !DILexicalBlock(scope: !522, file: !2, line: 104, column: 53)
!528 = !DILocation(line: 105, column: 53, scope: !527)
!529 = !DILocation(line: 105, column: 2, scope: !527)
!530 = !DILocation(line: 106, column: 9, scope: !527)
!531 = !DILocation(line: 106, column: 2, scope: !527)
!532 = !DILocation(line: 107, column: 2, scope: !527)
!533 = !DILocation(line: 109, column: 33, scope: !523)
!534 = !DILocation(line: 109, column: 18, scope: !523)
!535 = !DILocation(line: 109, column: 13, scope: !523)
!536 = !DILocation(line: 109, column: 7, scope: !523)
!537 = !DILocation(line: 109, column: 16, scope: !523)
!538 = !DILocation(line: 110, column: 5, scope: !523)
!539 = !DILocation(line: 103, column: 32, scope: !518)
!540 = !DILocation(line: 103, column: 5, scope: !518)
!541 = distinct !{!541, !520, !542, !543}
!542 = !DILocation(line: 110, column: 5, scope: !515)
!543 = !{!"llvm.loop.mustprogress"}
!544 = !DILocation(line: 111, column: 26, scope: !501)
!545 = !DILocation(line: 111, column: 33, scope: !501)
!546 = !DILocation(line: 111, column: 40, scope: !501)
!547 = !DILocation(line: 111, column: 47, scope: !501)
!548 = !DILocation(line: 111, column: 61, scope: !501)
!549 = !DILocation(line: 111, column: 5, scope: !501)
!550 = !DILocation(line: 112, column: 10, scope: !501)
!551 = distinct !{!551, !496, !552, !543}
!552 = !DILocation(line: 113, column: 3, scope: !247)
!553 = !DILocation(line: 115, column: 7, scope: !554)
!554 = distinct !DILexicalBlock(scope: !247, file: !2, line: 115, column: 7)
!555 = !DILocation(line: 115, column: 16, scope: !554)
!556 = !DILocation(line: 116, column: 13, scope: !557)
!557 = distinct !DILexicalBlock(scope: !554, file: !2, line: 115, column: 24)
!558 = !DILocation(line: 116, column: 54, scope: !557)
!559 = !DILocation(line: 116, column: 5, scope: !557)
!560 = !DILocation(line: 117, column: 12, scope: !557)
!561 = !DILocation(line: 117, column: 5, scope: !557)
!562 = !DILocation(line: 118, column: 5, scope: !557)
!563 = !DILocation(line: 121, column: 10, scope: !247)
!564 = !DILocation(line: 121, column: 3, scope: !247)
!565 = !DILocation(line: 122, column: 3, scope: !247)
!566 = !DILocation(line: 123, column: 1, scope: !247)
!567 = distinct !DISubprogram(name: "read_text_integer", scope: !2, file: !2, line: 38, type: !568, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !64, retainedNodes: !409)
!568 = !DISubroutineType(types: !569)
!569 = !{!204, !419, !570, !571}
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!572 = !DILocalVariable(name: "file", arg: 1, scope: !567, file: !2, line: 38, type: !419)
!573 = !DILocation(line: 38, column: 27, scope: !567)
!574 = !DILocalVariable(name: "result", arg: 2, scope: !567, file: !2, line: 38, type: !570)
!575 = !DILocation(line: 38, column: 40, scope: !567)
!576 = !DILocalVariable(name: "termchar", arg: 3, scope: !567, file: !2, line: 38, type: !571)
!577 = !DILocation(line: 38, column: 54, scope: !567)
!578 = !DILocalVariable(name: "ch", scope: !567, file: !2, line: 42, type: !98)
!579 = !DILocation(line: 42, column: 16, scope: !567)
!580 = !DILocalVariable(name: "val", scope: !567, file: !2, line: 43, type: !149)
!581 = !DILocation(line: 43, column: 17, scope: !567)
!582 = !DILocation(line: 46, column: 3, scope: !567)
!583 = !DILocation(line: 47, column: 20, scope: !584)
!584 = distinct !DILexicalBlock(scope: !567, file: !2, line: 46, column: 6)
!585 = !DILocation(line: 47, column: 10, scope: !584)
!586 = !DILocation(line: 47, column: 8, scope: !584)
!587 = !DILocation(line: 48, column: 9, scope: !588)
!588 = distinct !DILexicalBlock(scope: !584, file: !2, line: 48, column: 9)
!589 = !DILocation(line: 48, column: 12, scope: !588)
!590 = !DILocation(line: 49, column: 19, scope: !591)
!591 = distinct !DILexicalBlock(scope: !588, file: !2, line: 48, column: 20)
!592 = !DILocation(line: 49, column: 8, scope: !591)
!593 = !DILocation(line: 49, column: 17, scope: !591)
!594 = !DILocation(line: 50, column: 7, scope: !591)
!595 = !DILocation(line: 52, column: 3, scope: !584)
!596 = !DILocation(line: 52, column: 12, scope: !567)
!597 = distinct !{!597, !582, !598, !543}
!598 = !DILocation(line: 52, column: 23, scope: !567)
!599 = !DILocation(line: 54, column: 9, scope: !600)
!600 = distinct !DILexicalBlock(scope: !567, file: !2, line: 54, column: 7)
!601 = !DILocation(line: 54, column: 7, scope: !600)
!602 = !DILocation(line: 55, column: 17, scope: !603)
!603 = distinct !DILexicalBlock(scope: !600, file: !2, line: 54, column: 22)
!604 = !DILocation(line: 55, column: 6, scope: !603)
!605 = !DILocation(line: 55, column: 15, scope: !603)
!606 = !DILocation(line: 56, column: 5, scope: !603)
!607 = !DILocation(line: 59, column: 9, scope: !567)
!608 = !DILocation(line: 59, column: 12, scope: !567)
!609 = !DILocation(line: 59, column: 7, scope: !567)
!610 = !DILocation(line: 60, column: 3, scope: !567)
!611 = !DILocation(line: 60, column: 26, scope: !567)
!612 = !DILocation(line: 60, column: 16, scope: !567)
!613 = !DILocation(line: 60, column: 14, scope: !567)
!614 = !DILocation(line: 60, column: 33, scope: !567)
!615 = !DILocation(line: 61, column: 11, scope: !616)
!616 = distinct !DILexicalBlock(scope: !617, file: !2, line: 61, column: 9)
!617 = distinct !DILexicalBlock(scope: !567, file: !2, line: 60, column: 41)
!618 = !DILocation(line: 61, column: 9, scope: !616)
!619 = !DILocation(line: 62, column: 7, scope: !616)
!620 = !DILocation(line: 63, column: 9, scope: !617)
!621 = !DILocation(line: 64, column: 12, scope: !617)
!622 = !DILocation(line: 64, column: 15, scope: !617)
!623 = !DILocation(line: 64, column: 9, scope: !617)
!624 = distinct !{!624, !610, !625, !543}
!625 = !DILocation(line: 65, column: 3, scope: !567)
!626 = !DILocation(line: 66, column: 13, scope: !567)
!627 = !DILocation(line: 66, column: 4, scope: !567)
!628 = !DILocation(line: 66, column: 11, scope: !567)
!629 = !DILocation(line: 67, column: 15, scope: !567)
!630 = !DILocation(line: 67, column: 4, scope: !567)
!631 = !DILocation(line: 67, column: 13, scope: !567)
!632 = !DILocation(line: 68, column: 3, scope: !567)
!633 = !DILocation(line: 69, column: 1, scope: !567)
!634 = distinct !DISubprogram(name: "read_scan_script", scope: !2, file: !2, line: 158, type: !635, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !64, retainedNodes: !409)
!635 = !DISubroutineType(types: !636)
!636 = !{!204, !250, !133}
!637 = !DILocalVariable(name: "cinfo", arg: 1, scope: !634, file: !2, line: 158, type: !250)
!638 = !DILocation(line: 158, column: 34, scope: !634)
!639 = !DILocalVariable(name: "filename", arg: 2, scope: !634, file: !2, line: 158, type: !133)
!640 = !DILocation(line: 158, column: 48, scope: !634)
!641 = !DILocalVariable(name: "fp", scope: !634, file: !2, line: 175, type: !419)
!642 = !DILocation(line: 175, column: 10, scope: !634)
!643 = !DILocalVariable(name: "scanno", scope: !634, file: !2, line: 176, type: !98)
!644 = !DILocation(line: 176, column: 7, scope: !634)
!645 = !DILocalVariable(name: "ncomps", scope: !634, file: !2, line: 176, type: !98)
!646 = !DILocation(line: 176, column: 15, scope: !634)
!647 = !DILocalVariable(name: "termchar", scope: !634, file: !2, line: 176, type: !98)
!648 = !DILocation(line: 176, column: 23, scope: !634)
!649 = !DILocalVariable(name: "val", scope: !634, file: !2, line: 177, type: !149)
!650 = !DILocation(line: 177, column: 8, scope: !634)
!651 = !DILocalVariable(name: "scanptr", scope: !634, file: !2, line: 178, type: !99)
!652 = !DILocation(line: 178, column: 20, scope: !634)
!653 = !DILocalVariable(name: "scans", scope: !634, file: !2, line: 180, type: !654)
!654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 28800, elements: !655)
!655 = !{!656}
!656 = !DISubrange(count: 100)
!657 = !DILocation(line: 180, column: 18, scope: !634)
!658 = !DILocation(line: 182, column: 19, scope: !659)
!659 = distinct !DILexicalBlock(scope: !634, file: !2, line: 182, column: 7)
!660 = !DILocation(line: 182, column: 13, scope: !659)
!661 = !DILocation(line: 182, column: 11, scope: !659)
!662 = !DILocation(line: 182, column: 35, scope: !659)
!663 = !DILocation(line: 183, column: 13, scope: !664)
!664 = distinct !DILexicalBlock(scope: !659, file: !2, line: 182, column: 44)
!665 = !DILocation(line: 183, column: 61, scope: !664)
!666 = !DILocation(line: 183, column: 5, scope: !664)
!667 = !DILocation(line: 184, column: 5, scope: !664)
!668 = !DILocation(line: 186, column: 13, scope: !634)
!669 = !DILocation(line: 186, column: 11, scope: !634)
!670 = !DILocation(line: 187, column: 10, scope: !634)
!671 = !DILocation(line: 189, column: 3, scope: !634)
!672 = !DILocation(line: 189, column: 28, scope: !634)
!673 = !DILocation(line: 189, column: 10, scope: !634)
!674 = !DILocation(line: 190, column: 9, scope: !675)
!675 = distinct !DILexicalBlock(scope: !676, file: !2, line: 190, column: 9)
!676 = distinct !DILexicalBlock(scope: !634, file: !2, line: 189, column: 50)
!677 = !DILocation(line: 190, column: 16, scope: !675)
!678 = !DILocation(line: 191, column: 15, scope: !679)
!679 = distinct !DILexicalBlock(scope: !675, file: !2, line: 190, column: 30)
!680 = !DILocation(line: 191, column: 62, scope: !679)
!681 = !DILocation(line: 191, column: 7, scope: !679)
!682 = !DILocation(line: 192, column: 14, scope: !679)
!683 = !DILocation(line: 192, column: 7, scope: !679)
!684 = !DILocation(line: 193, column: 7, scope: !679)
!685 = !DILocation(line: 195, column: 41, scope: !676)
!686 = !DILocation(line: 195, column: 35, scope: !676)
!687 = !DILocation(line: 195, column: 5, scope: !676)
!688 = !DILocation(line: 195, column: 14, scope: !676)
!689 = !DILocation(line: 195, column: 33, scope: !676)
!690 = !DILocation(line: 196, column: 12, scope: !676)
!691 = !DILocation(line: 197, column: 5, scope: !676)
!692 = !DILocation(line: 197, column: 12, scope: !676)
!693 = !DILocation(line: 197, column: 21, scope: !676)
!694 = !DILocation(line: 198, column: 11, scope: !695)
!695 = distinct !DILexicalBlock(scope: !696, file: !2, line: 198, column: 11)
!696 = distinct !DILexicalBlock(scope: !676, file: !2, line: 197, column: 29)
!697 = !DILocation(line: 198, column: 18, scope: !695)
!698 = !DILocation(line: 199, column: 10, scope: !699)
!699 = distinct !DILexicalBlock(scope: !695, file: !2, line: 198, column: 40)
!700 = !DILocation(line: 200, column: 3, scope: !699)
!701 = !DILocation(line: 199, column: 2, scope: !699)
!702 = !DILocation(line: 201, column: 9, scope: !699)
!703 = !DILocation(line: 201, column: 2, scope: !699)
!704 = !DILocation(line: 202, column: 2, scope: !699)
!705 = !DILocation(line: 204, column: 31, scope: !706)
!706 = distinct !DILexicalBlock(scope: !696, file: !2, line: 204, column: 11)
!707 = !DILocation(line: 204, column: 13, scope: !706)
!708 = !DILocation(line: 204, column: 11, scope: !706)
!709 = !DILocation(line: 205, column: 2, scope: !706)
!710 = !DILocation(line: 206, column: 48, scope: !696)
!711 = !DILocation(line: 206, column: 42, scope: !696)
!712 = !DILocation(line: 206, column: 7, scope: !696)
!713 = !DILocation(line: 206, column: 16, scope: !696)
!714 = !DILocation(line: 206, column: 32, scope: !696)
!715 = !DILocation(line: 206, column: 40, scope: !696)
!716 = !DILocation(line: 207, column: 13, scope: !696)
!717 = distinct !{!717, !691, !718, !543}
!718 = !DILocation(line: 208, column: 5, scope: !676)
!719 = !DILocation(line: 209, column: 30, scope: !676)
!720 = !DILocation(line: 209, column: 5, scope: !676)
!721 = !DILocation(line: 209, column: 14, scope: !676)
!722 = !DILocation(line: 209, column: 28, scope: !676)
!723 = !DILocation(line: 210, column: 9, scope: !724)
!724 = distinct !DILexicalBlock(scope: !676, file: !2, line: 210, column: 9)
!725 = !DILocation(line: 210, column: 18, scope: !724)
!726 = !DILocation(line: 211, column: 31, scope: !727)
!727 = distinct !DILexicalBlock(scope: !728, file: !2, line: 211, column: 11)
!728 = distinct !DILexicalBlock(scope: !724, file: !2, line: 210, column: 26)
!729 = !DILocation(line: 211, column: 13, scope: !727)
!730 = !DILocation(line: 211, column: 52, scope: !727)
!731 = !DILocation(line: 211, column: 55, scope: !727)
!732 = !DILocation(line: 211, column: 64, scope: !727)
!733 = !DILocation(line: 212, column: 2, scope: !727)
!734 = !DILocation(line: 213, column: 27, scope: !728)
!735 = !DILocation(line: 213, column: 21, scope: !728)
!736 = !DILocation(line: 213, column: 7, scope: !728)
!737 = !DILocation(line: 213, column: 16, scope: !728)
!738 = !DILocation(line: 213, column: 19, scope: !728)
!739 = !DILocation(line: 214, column: 31, scope: !740)
!740 = distinct !DILexicalBlock(scope: !728, file: !2, line: 214, column: 11)
!741 = !DILocation(line: 214, column: 13, scope: !740)
!742 = !DILocation(line: 214, column: 52, scope: !740)
!743 = !DILocation(line: 214, column: 55, scope: !740)
!744 = !DILocation(line: 214, column: 64, scope: !740)
!745 = !DILocation(line: 215, column: 2, scope: !740)
!746 = !DILocation(line: 216, column: 27, scope: !728)
!747 = !DILocation(line: 216, column: 21, scope: !728)
!748 = !DILocation(line: 216, column: 7, scope: !728)
!749 = !DILocation(line: 216, column: 16, scope: !728)
!750 = !DILocation(line: 216, column: 19, scope: !728)
!751 = !DILocation(line: 217, column: 31, scope: !752)
!752 = distinct !DILexicalBlock(scope: !728, file: !2, line: 217, column: 11)
!753 = !DILocation(line: 217, column: 13, scope: !752)
!754 = !DILocation(line: 217, column: 52, scope: !752)
!755 = !DILocation(line: 217, column: 55, scope: !752)
!756 = !DILocation(line: 217, column: 64, scope: !752)
!757 = !DILocation(line: 218, column: 2, scope: !752)
!758 = !DILocation(line: 219, column: 27, scope: !728)
!759 = !DILocation(line: 219, column: 21, scope: !728)
!760 = !DILocation(line: 219, column: 7, scope: !728)
!761 = !DILocation(line: 219, column: 16, scope: !728)
!762 = !DILocation(line: 219, column: 19, scope: !728)
!763 = !DILocation(line: 220, column: 31, scope: !764)
!764 = distinct !DILexicalBlock(scope: !728, file: !2, line: 220, column: 11)
!765 = !DILocation(line: 220, column: 13, scope: !764)
!766 = !DILocation(line: 220, column: 11, scope: !764)
!767 = !DILocation(line: 221, column: 2, scope: !764)
!768 = !DILocation(line: 222, column: 27, scope: !728)
!769 = !DILocation(line: 222, column: 21, scope: !728)
!770 = !DILocation(line: 222, column: 7, scope: !728)
!771 = !DILocation(line: 222, column: 16, scope: !728)
!772 = !DILocation(line: 222, column: 19, scope: !728)
!773 = !DILocation(line: 223, column: 5, scope: !728)
!774 = !DILocation(line: 225, column: 7, scope: !775)
!775 = distinct !DILexicalBlock(scope: !724, file: !2, line: 223, column: 12)
!776 = !DILocation(line: 225, column: 16, scope: !775)
!777 = !DILocation(line: 225, column: 19, scope: !775)
!778 = !DILocation(line: 226, column: 7, scope: !775)
!779 = !DILocation(line: 226, column: 16, scope: !775)
!780 = !DILocation(line: 226, column: 19, scope: !775)
!781 = !DILocation(line: 227, column: 7, scope: !775)
!782 = !DILocation(line: 227, column: 16, scope: !775)
!783 = !DILocation(line: 227, column: 19, scope: !775)
!784 = !DILocation(line: 228, column: 7, scope: !775)
!785 = !DILocation(line: 228, column: 16, scope: !775)
!786 = !DILocation(line: 228, column: 19, scope: !775)
!787 = !DILocation(line: 230, column: 9, scope: !788)
!788 = distinct !DILexicalBlock(scope: !676, file: !2, line: 230, column: 9)
!789 = !DILocation(line: 230, column: 18, scope: !788)
!790 = !DILocation(line: 230, column: 25, scope: !788)
!791 = !DILocation(line: 230, column: 28, scope: !788)
!792 = !DILocation(line: 230, column: 37, scope: !788)
!793 = !DILocation(line: 230, column: 45, scope: !788)
!794 = !DILabel(scope: !795, name: "bogus", file: !2, line: 231)
!795 = distinct !DILexicalBlock(scope: !788, file: !2, line: 230, column: 45)
!796 = !DILocation(line: 231, column: 1, scope: !795)
!797 = !DILocation(line: 232, column: 15, scope: !795)
!798 = !DILocation(line: 232, column: 65, scope: !795)
!799 = !DILocation(line: 232, column: 7, scope: !795)
!800 = !DILocation(line: 233, column: 14, scope: !795)
!801 = !DILocation(line: 233, column: 7, scope: !795)
!802 = !DILocation(line: 234, column: 7, scope: !795)
!803 = !DILocation(line: 236, column: 12, scope: !676)
!804 = !DILocation(line: 236, column: 22, scope: !676)
!805 = distinct !{!805, !671, !806, !543}
!806 = !DILocation(line: 237, column: 3, scope: !634)
!807 = !DILocation(line: 239, column: 7, scope: !808)
!808 = distinct !DILexicalBlock(scope: !634, file: !2, line: 239, column: 7)
!809 = !DILocation(line: 239, column: 16, scope: !808)
!810 = !DILocation(line: 240, column: 13, scope: !811)
!811 = distinct !DILexicalBlock(scope: !808, file: !2, line: 239, column: 24)
!812 = !DILocation(line: 240, column: 54, scope: !811)
!813 = !DILocation(line: 240, column: 5, scope: !811)
!814 = !DILocation(line: 241, column: 12, scope: !811)
!815 = !DILocation(line: 241, column: 5, scope: !811)
!816 = !DILocation(line: 242, column: 5, scope: !811)
!817 = !DILocation(line: 245, column: 7, scope: !818)
!818 = distinct !DILexicalBlock(scope: !634, file: !2, line: 245, column: 7)
!819 = !DILocation(line: 245, column: 14, scope: !818)
!820 = !DILocation(line: 251, column: 9, scope: !821)
!821 = distinct !DILexicalBlock(scope: !818, file: !2, line: 245, column: 19)
!822 = !DILocation(line: 251, column: 16, scope: !821)
!823 = !DILocation(line: 251, column: 21, scope: !821)
!824 = !DILocation(line: 251, column: 50, scope: !821)
!825 = !DILocation(line: 252, column: 7, scope: !821)
!826 = !DILocation(line: 252, column: 14, scope: !821)
!827 = !DILocation(line: 251, column: 7, scope: !821)
!828 = !DILocation(line: 250, column: 13, scope: !821)
!829 = !DILocation(line: 253, column: 5, scope: !821)
!830 = !DILocation(line: 254, column: 24, scope: !821)
!831 = !DILocation(line: 254, column: 5, scope: !821)
!832 = !DILocation(line: 254, column: 12, scope: !821)
!833 = !DILocation(line: 254, column: 22, scope: !821)
!834 = !DILocation(line: 255, column: 24, scope: !821)
!835 = !DILocation(line: 255, column: 5, scope: !821)
!836 = !DILocation(line: 255, column: 12, scope: !821)
!837 = !DILocation(line: 255, column: 22, scope: !821)
!838 = !DILocation(line: 256, column: 3, scope: !821)
!839 = !DILocation(line: 258, column: 10, scope: !634)
!840 = !DILocation(line: 258, column: 3, scope: !634)
!841 = !DILocation(line: 259, column: 3, scope: !634)
!842 = !DILocation(line: 260, column: 1, scope: !634)
!843 = distinct !DISubprogram(name: "read_scan_integer", scope: !2, file: !2, line: 129, type: !568, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !64, retainedNodes: !409)
!844 = !DILocalVariable(name: "file", arg: 1, scope: !843, file: !2, line: 129, type: !419)
!845 = !DILocation(line: 129, column: 27, scope: !843)
!846 = !DILocalVariable(name: "result", arg: 2, scope: !843, file: !2, line: 129, type: !570)
!847 = !DILocation(line: 129, column: 40, scope: !843)
!848 = !DILocalVariable(name: "termchar", arg: 3, scope: !843, file: !2, line: 129, type: !571)
!849 = !DILocation(line: 129, column: 54, scope: !843)
!850 = !DILocalVariable(name: "ch", scope: !843, file: !2, line: 134, type: !98)
!851 = !DILocation(line: 134, column: 16, scope: !843)
!852 = !DILocation(line: 136, column: 27, scope: !853)
!853 = distinct !DILexicalBlock(scope: !843, file: !2, line: 136, column: 7)
!854 = !DILocation(line: 136, column: 33, scope: !853)
!855 = !DILocation(line: 136, column: 41, scope: !853)
!856 = !DILocation(line: 136, column: 9, scope: !853)
!857 = !DILocation(line: 136, column: 7, scope: !853)
!858 = !DILocation(line: 137, column: 5, scope: !853)
!859 = !DILocation(line: 138, column: 9, scope: !843)
!860 = !DILocation(line: 138, column: 8, scope: !843)
!861 = !DILocation(line: 138, column: 6, scope: !843)
!862 = !DILocation(line: 139, column: 3, scope: !843)
!863 = !DILocation(line: 139, column: 10, scope: !843)
!864 = !DILocation(line: 139, column: 13, scope: !843)
!865 = !DILocation(line: 139, column: 20, scope: !843)
!866 = !DILocation(line: 139, column: 23, scope: !843)
!867 = !DILocation(line: 0, scope: !843)
!868 = !DILocation(line: 140, column: 20, scope: !843)
!869 = !DILocation(line: 140, column: 10, scope: !843)
!870 = !DILocation(line: 140, column: 8, scope: !843)
!871 = distinct !{!871, !862, !872, !543}
!872 = !DILocation(line: 140, column: 24, scope: !843)
!873 = !DILocation(line: 141, column: 7, scope: !874)
!874 = distinct !DILexicalBlock(scope: !843, file: !2, line: 141, column: 7)
!875 = !DILocation(line: 142, column: 16, scope: !876)
!876 = distinct !DILexicalBlock(scope: !877, file: !2, line: 142, column: 9)
!877 = distinct !DILexicalBlock(scope: !874, file: !2, line: 141, column: 20)
!878 = !DILocation(line: 142, column: 20, scope: !876)
!879 = !DILocation(line: 142, column: 9, scope: !876)
!880 = !DILocation(line: 142, column: 26, scope: !876)
!881 = !DILocation(line: 143, column: 7, scope: !876)
!882 = !DILocation(line: 144, column: 8, scope: !877)
!883 = !DILocation(line: 145, column: 3, scope: !877)
!884 = !DILocation(line: 149, column: 9, scope: !885)
!885 = distinct !DILexicalBlock(scope: !886, file: !2, line: 149, column: 9)
!886 = distinct !DILexicalBlock(scope: !874, file: !2, line: 145, column: 10)
!887 = !DILocation(line: 149, column: 12, scope: !885)
!888 = !DILocation(line: 149, column: 19, scope: !885)
!889 = !DILocation(line: 149, column: 22, scope: !885)
!890 = !DILocation(line: 149, column: 25, scope: !885)
!891 = !DILocation(line: 149, column: 32, scope: !885)
!892 = !DILocation(line: 149, column: 35, scope: !885)
!893 = !DILocation(line: 149, column: 38, scope: !885)
!894 = !DILocation(line: 150, column: 10, scope: !885)
!895 = !DILocation(line: 150, column: 7, scope: !885)
!896 = !DILocation(line: 152, column: 15, scope: !843)
!897 = !DILocation(line: 152, column: 4, scope: !843)
!898 = !DILocation(line: 152, column: 13, scope: !843)
!899 = !DILocation(line: 153, column: 3, scope: !843)
!900 = !DILocation(line: 154, column: 1, scope: !843)
!901 = distinct !DISubprogram(name: "set_quant_slots", scope: !2, file: !2, line: 266, type: !635, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !64, retainedNodes: !409)
!902 = !DILocalVariable(name: "cinfo", arg: 1, scope: !901, file: !2, line: 266, type: !250)
!903 = !DILocation(line: 266, column: 33, scope: !901)
!904 = !DILocalVariable(name: "arg", arg: 2, scope: !901, file: !2, line: 266, type: !133)
!905 = !DILocation(line: 266, column: 46, scope: !901)
!906 = !DILocalVariable(name: "val", scope: !901, file: !2, line: 272, type: !98)
!907 = !DILocation(line: 272, column: 7, scope: !901)
!908 = !DILocalVariable(name: "ci", scope: !901, file: !2, line: 273, type: !98)
!909 = !DILocation(line: 273, column: 7, scope: !901)
!910 = !DILocalVariable(name: "ch", scope: !901, file: !2, line: 274, type: !4)
!911 = !DILocation(line: 274, column: 8, scope: !901)
!912 = !DILocation(line: 276, column: 11, scope: !913)
!913 = distinct !DILexicalBlock(scope: !901, file: !2, line: 276, column: 3)
!914 = !DILocation(line: 276, column: 8, scope: !913)
!915 = !DILocation(line: 276, column: 16, scope: !916)
!916 = distinct !DILexicalBlock(scope: !913, file: !2, line: 276, column: 3)
!917 = !DILocation(line: 276, column: 19, scope: !916)
!918 = !DILocation(line: 276, column: 3, scope: !913)
!919 = !DILocation(line: 277, column: 10, scope: !920)
!920 = distinct !DILexicalBlock(scope: !921, file: !2, line: 277, column: 9)
!921 = distinct !DILexicalBlock(scope: !916, file: !2, line: 276, column: 43)
!922 = !DILocation(line: 277, column: 9, scope: !920)
!923 = !DILocation(line: 278, column: 10, scope: !924)
!924 = distinct !DILexicalBlock(scope: !920, file: !2, line: 277, column: 15)
!925 = !DILocation(line: 279, column: 18, scope: !926)
!926 = distinct !DILexicalBlock(scope: !924, file: !2, line: 279, column: 11)
!927 = !DILocation(line: 279, column: 11, scope: !926)
!928 = !DILocation(line: 279, column: 42, scope: !926)
!929 = !DILocation(line: 280, column: 2, scope: !926)
!930 = !DILocation(line: 281, column: 11, scope: !931)
!931 = distinct !DILexicalBlock(scope: !924, file: !2, line: 281, column: 11)
!932 = !DILocation(line: 281, column: 14, scope: !931)
!933 = !DILocation(line: 282, column: 2, scope: !931)
!934 = !DILocation(line: 283, column: 11, scope: !935)
!935 = distinct !DILexicalBlock(scope: !924, file: !2, line: 283, column: 11)
!936 = !DILocation(line: 283, column: 15, scope: !935)
!937 = !DILocation(line: 283, column: 19, scope: !935)
!938 = !DILocation(line: 283, column: 22, scope: !935)
!939 = !DILocation(line: 283, column: 26, scope: !935)
!940 = !DILocation(line: 284, column: 10, scope: !941)
!941 = distinct !DILexicalBlock(scope: !935, file: !2, line: 283, column: 45)
!942 = !DILocation(line: 284, column: 2, scope: !941)
!943 = !DILocation(line: 286, column: 2, scope: !941)
!944 = !DILocation(line: 288, column: 43, scope: !924)
!945 = !DILocation(line: 288, column: 7, scope: !924)
!946 = !DILocation(line: 288, column: 14, scope: !924)
!947 = !DILocation(line: 288, column: 24, scope: !924)
!948 = !DILocation(line: 288, column: 28, scope: !924)
!949 = !DILocation(line: 288, column: 41, scope: !924)
!950 = !DILocation(line: 289, column: 7, scope: !924)
!951 = !DILocation(line: 289, column: 15, scope: !924)
!952 = !DILocation(line: 289, column: 14, scope: !924)
!953 = !DILocation(line: 289, column: 19, scope: !924)
!954 = !DILocation(line: 289, column: 26, scope: !924)
!955 = !DILocation(line: 289, column: 22, scope: !924)
!956 = !DILocation(line: 289, column: 29, scope: !924)
!957 = !DILocation(line: 0, scope: !924)
!958 = distinct !{!958, !950, !959, !543}
!959 = !DILocation(line: 290, column: 2, scope: !924)
!960 = !DILocation(line: 291, column: 5, scope: !924)
!961 = !DILocation(line: 293, column: 43, scope: !962)
!962 = distinct !DILexicalBlock(scope: !920, file: !2, line: 291, column: 12)
!963 = !DILocation(line: 293, column: 7, scope: !962)
!964 = !DILocation(line: 293, column: 14, scope: !962)
!965 = !DILocation(line: 293, column: 24, scope: !962)
!966 = !DILocation(line: 293, column: 28, scope: !962)
!967 = !DILocation(line: 293, column: 41, scope: !962)
!968 = !DILocation(line: 295, column: 3, scope: !921)
!969 = !DILocation(line: 276, column: 39, scope: !916)
!970 = !DILocation(line: 276, column: 3, scope: !916)
!971 = distinct !{!971, !918, !972, !543}
!972 = !DILocation(line: 295, column: 3, scope: !913)
!973 = !DILocation(line: 296, column: 3, scope: !901)
!974 = !DILocation(line: 297, column: 1, scope: !901)
!975 = distinct !DISubprogram(name: "set_sample_factors", scope: !2, file: !2, line: 301, type: !635, scopeLine: 306, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !64, retainedNodes: !409)
!976 = !DILocalVariable(name: "cinfo", arg: 1, scope: !975, file: !2, line: 301, type: !250)
!977 = !DILocation(line: 301, column: 36, scope: !975)
!978 = !DILocalVariable(name: "arg", arg: 2, scope: !975, file: !2, line: 301, type: !133)
!979 = !DILocation(line: 301, column: 49, scope: !975)
!980 = !DILocalVariable(name: "ci", scope: !975, file: !2, line: 307, type: !98)
!981 = !DILocation(line: 307, column: 7, scope: !975)
!982 = !DILocalVariable(name: "val1", scope: !975, file: !2, line: 307, type: !98)
!983 = !DILocation(line: 307, column: 11, scope: !975)
!984 = !DILocalVariable(name: "val2", scope: !975, file: !2, line: 307, type: !98)
!985 = !DILocation(line: 307, column: 17, scope: !975)
!986 = !DILocalVariable(name: "ch1", scope: !975, file: !2, line: 308, type: !4)
!987 = !DILocation(line: 308, column: 8, scope: !975)
!988 = !DILocalVariable(name: "ch2", scope: !975, file: !2, line: 308, type: !4)
!989 = !DILocation(line: 308, column: 13, scope: !975)
!990 = !DILocation(line: 310, column: 11, scope: !991)
!991 = distinct !DILexicalBlock(scope: !975, file: !2, line: 310, column: 3)
!992 = !DILocation(line: 310, column: 8, scope: !991)
!993 = !DILocation(line: 310, column: 16, scope: !994)
!994 = distinct !DILexicalBlock(scope: !991, file: !2, line: 310, column: 3)
!995 = !DILocation(line: 310, column: 19, scope: !994)
!996 = !DILocation(line: 310, column: 3, scope: !991)
!997 = !DILocation(line: 311, column: 10, scope: !998)
!998 = distinct !DILexicalBlock(scope: !999, file: !2, line: 311, column: 9)
!999 = distinct !DILexicalBlock(scope: !994, file: !2, line: 310, column: 43)
!1000 = !DILocation(line: 311, column: 9, scope: !998)
!1001 = !DILocation(line: 312, column: 11, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !998, file: !2, line: 311, column: 15)
!1003 = !DILocation(line: 313, column: 18, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !1002, file: !2, line: 313, column: 11)
!1005 = !DILocation(line: 313, column: 11, scope: !1004)
!1006 = !DILocation(line: 313, column: 61, scope: !1004)
!1007 = !DILocation(line: 314, column: 2, scope: !1004)
!1008 = !DILocation(line: 315, column: 12, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1002, file: !2, line: 315, column: 11)
!1010 = !DILocation(line: 315, column: 16, scope: !1009)
!1011 = !DILocation(line: 315, column: 23, scope: !1009)
!1012 = !DILocation(line: 315, column: 26, scope: !1009)
!1013 = !DILocation(line: 315, column: 30, scope: !1009)
!1014 = !DILocation(line: 315, column: 38, scope: !1009)
!1015 = !DILocation(line: 315, column: 41, scope: !1009)
!1016 = !DILocation(line: 315, column: 45, scope: !1009)
!1017 = !DILocation(line: 316, column: 2, scope: !1009)
!1018 = !DILocation(line: 317, column: 11, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1002, file: !2, line: 317, column: 11)
!1020 = !DILocation(line: 317, column: 16, scope: !1019)
!1021 = !DILocation(line: 317, column: 21, scope: !1019)
!1022 = !DILocation(line: 317, column: 24, scope: !1019)
!1023 = !DILocation(line: 317, column: 29, scope: !1019)
!1024 = !DILocation(line: 317, column: 33, scope: !1019)
!1025 = !DILocation(line: 317, column: 36, scope: !1019)
!1026 = !DILocation(line: 317, column: 41, scope: !1019)
!1027 = !DILocation(line: 317, column: 46, scope: !1019)
!1028 = !DILocation(line: 317, column: 49, scope: !1019)
!1029 = !DILocation(line: 317, column: 54, scope: !1019)
!1030 = !DILocation(line: 318, column: 10, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1019, file: !2, line: 317, column: 59)
!1032 = !DILocation(line: 318, column: 2, scope: !1031)
!1033 = !DILocation(line: 319, column: 2, scope: !1031)
!1034 = !DILocation(line: 321, column: 44, scope: !1002)
!1035 = !DILocation(line: 321, column: 7, scope: !1002)
!1036 = !DILocation(line: 321, column: 14, scope: !1002)
!1037 = !DILocation(line: 321, column: 24, scope: !1002)
!1038 = !DILocation(line: 321, column: 28, scope: !1002)
!1039 = !DILocation(line: 321, column: 42, scope: !1002)
!1040 = !DILocation(line: 322, column: 44, scope: !1002)
!1041 = !DILocation(line: 322, column: 7, scope: !1002)
!1042 = !DILocation(line: 322, column: 14, scope: !1002)
!1043 = !DILocation(line: 322, column: 24, scope: !1002)
!1044 = !DILocation(line: 322, column: 28, scope: !1002)
!1045 = !DILocation(line: 322, column: 42, scope: !1002)
!1046 = !DILocation(line: 323, column: 7, scope: !1002)
!1047 = !DILocation(line: 323, column: 15, scope: !1002)
!1048 = !DILocation(line: 323, column: 14, scope: !1002)
!1049 = !DILocation(line: 323, column: 19, scope: !1002)
!1050 = !DILocation(line: 323, column: 26, scope: !1002)
!1051 = !DILocation(line: 323, column: 22, scope: !1002)
!1052 = !DILocation(line: 323, column: 29, scope: !1002)
!1053 = !DILocation(line: 0, scope: !1002)
!1054 = distinct !{!1054, !1046, !1055, !543}
!1055 = !DILocation(line: 324, column: 2, scope: !1002)
!1056 = !DILocation(line: 325, column: 5, scope: !1002)
!1057 = !DILocation(line: 327, column: 7, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !998, file: !2, line: 325, column: 12)
!1059 = !DILocation(line: 327, column: 14, scope: !1058)
!1060 = !DILocation(line: 327, column: 24, scope: !1058)
!1061 = !DILocation(line: 327, column: 28, scope: !1058)
!1062 = !DILocation(line: 327, column: 42, scope: !1058)
!1063 = !DILocation(line: 328, column: 7, scope: !1058)
!1064 = !DILocation(line: 328, column: 14, scope: !1058)
!1065 = !DILocation(line: 328, column: 24, scope: !1058)
!1066 = !DILocation(line: 328, column: 28, scope: !1058)
!1067 = !DILocation(line: 328, column: 42, scope: !1058)
!1068 = !DILocation(line: 330, column: 3, scope: !999)
!1069 = !DILocation(line: 310, column: 39, scope: !994)
!1070 = !DILocation(line: 310, column: 3, scope: !994)
!1071 = distinct !{!1071, !996, !1072, !543}
!1072 = !DILocation(line: 330, column: 3, scope: !991)
!1073 = !DILocation(line: 331, column: 3, scope: !975)
!1074 = !DILocation(line: 332, column: 1, scope: !975)
!1075 = distinct !DISubprogram(name: "text_getc", scope: !2, file: !2, line: 21, type: !1076, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !64, retainedNodes: !409)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!98, !419}
!1078 = !DILocalVariable(name: "file", arg: 1, scope: !1075, file: !2, line: 21, type: !419)
!1079 = !DILocation(line: 21, column: 19, scope: !1075)
!1080 = !DILocalVariable(name: "ch", scope: !1075, file: !2, line: 25, type: !98)
!1081 = !DILocation(line: 25, column: 16, scope: !1075)
!1082 = !DILocation(line: 27, column: 13, scope: !1075)
!1083 = !DILocation(line: 27, column: 8, scope: !1075)
!1084 = !DILocation(line: 27, column: 6, scope: !1075)
!1085 = !DILocation(line: 28, column: 7, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1075, file: !2, line: 28, column: 7)
!1087 = !DILocation(line: 28, column: 10, scope: !1086)
!1088 = !DILocation(line: 29, column: 5, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1086, file: !2, line: 28, column: 18)
!1090 = !DILocation(line: 30, column: 17, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1089, file: !2, line: 29, column: 8)
!1092 = !DILocation(line: 30, column: 12, scope: !1091)
!1093 = !DILocation(line: 30, column: 10, scope: !1091)
!1094 = !DILocation(line: 31, column: 5, scope: !1091)
!1095 = !DILocation(line: 31, column: 14, scope: !1089)
!1096 = !DILocation(line: 31, column: 17, scope: !1089)
!1097 = !DILocation(line: 31, column: 25, scope: !1089)
!1098 = !DILocation(line: 31, column: 28, scope: !1089)
!1099 = !DILocation(line: 31, column: 31, scope: !1089)
!1100 = !DILocation(line: 0, scope: !1089)
!1101 = distinct !{!1101, !1088, !1102, !543}
!1102 = !DILocation(line: 31, column: 37, scope: !1089)
!1103 = !DILocation(line: 32, column: 3, scope: !1089)
!1104 = !DILocation(line: 33, column: 10, scope: !1075)
!1105 = !DILocation(line: 33, column: 3, scope: !1075)
