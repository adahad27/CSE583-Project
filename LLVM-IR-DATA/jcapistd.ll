; ModuleID = 'cBench/consumer_jpeg_c/src/jcapistd.c'
source_filename = "cBench/consumer_jpeg_c/src/jcapistd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_destination_mgr = type { ptr, i64, ptr, ptr, ptr }
%struct.jpeg_comp_master = type { ptr, ptr, ptr, i32, i32 }
%struct.jpeg_progress_mgr = type { ptr, i64, i64, i32, i32 }
%struct.jpeg_c_main_controller = type { ptr, ptr }
%struct.jpeg_c_coef_controller = type { ptr, ptr }

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_start_compress(ptr noundef %0, i32 noundef %1) #0 !dbg !284 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !530, !DIExpression(), !531)
  store i32 %1, ptr %4, align 4
    #dbg_declare(ptr %4, !532, !DIExpression(), !533)
  %5 = load ptr, ptr %3, align 8, !dbg !534
  %6 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %5, i32 0, i32 4, !dbg !536
  %7 = load i32, ptr %6, align 4, !dbg !536
  %8 = icmp ne i32 %7, 100, !dbg !537
  br i1 %8, label %9, label %28, !dbg !537

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 8, !dbg !538
  %11 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %10, i32 0, i32 0, !dbg !538
  %12 = load ptr, ptr %11, align 8, !dbg !538
  %13 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %12, i32 0, i32 5, !dbg !538
  store i32 18, ptr %13, align 8, !dbg !538
  %14 = load ptr, ptr %3, align 8, !dbg !538
  %15 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %14, i32 0, i32 4, !dbg !538
  %16 = load i32, ptr %15, align 4, !dbg !538
  %17 = load ptr, ptr %3, align 8, !dbg !538
  %18 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %17, i32 0, i32 0, !dbg !538
  %19 = load ptr, ptr %18, align 8, !dbg !538
  %20 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %19, i32 0, i32 6, !dbg !538
  %21 = getelementptr inbounds [8 x i32], ptr %20, i64 0, i64 0, !dbg !538
  store i32 %16, ptr %21, align 4, !dbg !538
  %22 = load ptr, ptr %3, align 8, !dbg !538
  %23 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %22, i32 0, i32 0, !dbg !538
  %24 = load ptr, ptr %23, align 8, !dbg !538
  %25 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %24, i32 0, i32 0, !dbg !538
  %26 = load ptr, ptr %25, align 8, !dbg !538
  %27 = load ptr, ptr %3, align 8, !dbg !538
  call void %26(ptr noundef %27), !dbg !538
  br label %28, !dbg !538

28:                                               ; preds = %9, %2
  %29 = load i32, ptr %4, align 4, !dbg !539
  %30 = icmp ne i32 %29, 0, !dbg !539
  br i1 %30, label %31, label %33, !dbg !539

31:                                               ; preds = %28
  %32 = load ptr, ptr %3, align 8, !dbg !541
  call void @jpeg_suppress_tables(ptr noundef %32, i32 noundef 0), !dbg !542
  br label %33, !dbg !542

33:                                               ; preds = %31, %28
  %34 = load ptr, ptr %3, align 8, !dbg !543
  %35 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %34, i32 0, i32 0, !dbg !544
  %36 = load ptr, ptr %35, align 8, !dbg !544
  %37 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %36, i32 0, i32 4, !dbg !545
  %38 = load ptr, ptr %37, align 8, !dbg !545
  %39 = load ptr, ptr %3, align 8, !dbg !546
  call void %38(ptr noundef %39), !dbg !547
  %40 = load ptr, ptr %3, align 8, !dbg !548
  %41 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %40, i32 0, i32 5, !dbg !549
  %42 = load ptr, ptr %41, align 8, !dbg !549
  %43 = getelementptr inbounds nuw %struct.jpeg_destination_mgr, ptr %42, i32 0, i32 2, !dbg !550
  %44 = load ptr, ptr %43, align 8, !dbg !550
  %45 = load ptr, ptr %3, align 8, !dbg !551
  call void %44(ptr noundef %45), !dbg !552
  %46 = load ptr, ptr %3, align 8, !dbg !553
  call void @jinit_compress_master(ptr noundef %46), !dbg !554
  %47 = load ptr, ptr %3, align 8, !dbg !555
  %48 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %47, i32 0, i32 51, !dbg !556
  %49 = load ptr, ptr %48, align 8, !dbg !556
  %50 = getelementptr inbounds nuw %struct.jpeg_comp_master, ptr %49, i32 0, i32 0, !dbg !557
  %51 = load ptr, ptr %50, align 8, !dbg !557
  %52 = load ptr, ptr %3, align 8, !dbg !558
  call void %51(ptr noundef %52), !dbg !559
  %53 = load ptr, ptr %3, align 8, !dbg !560
  %54 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %53, i32 0, i32 36, !dbg !561
  store i32 0, ptr %54, align 8, !dbg !562
  %55 = load ptr, ptr %3, align 8, !dbg !563
  %56 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %55, i32 0, i32 23, !dbg !564
  %57 = load i32, ptr %56, align 8, !dbg !564
  %58 = icmp ne i32 %57, 0, !dbg !563
  %59 = zext i1 %58 to i64, !dbg !563
  %60 = select i1 %58, i32 102, i32 101, !dbg !563
  %61 = load ptr, ptr %3, align 8, !dbg !565
  %62 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %61, i32 0, i32 4, !dbg !566
  store i32 %60, ptr %62, align 4, !dbg !567
  ret void, !dbg !568
}

declare void @jpeg_suppress_tables(ptr noundef, i32 noundef) #1

declare void @jinit_compress_master(ptr noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @jpeg_write_scanlines(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !569 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !572, !DIExpression(), !573)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !574, !DIExpression(), !575)
  store i32 %2, ptr %6, align 4
    #dbg_declare(ptr %6, !576, !DIExpression(), !577)
    #dbg_declare(ptr %7, !578, !DIExpression(), !579)
    #dbg_declare(ptr %8, !580, !DIExpression(), !581)
  %9 = load ptr, ptr %4, align 8, !dbg !582
  %10 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %9, i32 0, i32 4, !dbg !584
  %11 = load i32, ptr %10, align 4, !dbg !584
  %12 = icmp ne i32 %11, 101, !dbg !585
  br i1 %12, label %13, label %32, !dbg !585

13:                                               ; preds = %3
  %14 = load ptr, ptr %4, align 8, !dbg !586
  %15 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %14, i32 0, i32 0, !dbg !586
  %16 = load ptr, ptr %15, align 8, !dbg !586
  %17 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %16, i32 0, i32 5, !dbg !586
  store i32 18, ptr %17, align 8, !dbg !586
  %18 = load ptr, ptr %4, align 8, !dbg !586
  %19 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %18, i32 0, i32 4, !dbg !586
  %20 = load i32, ptr %19, align 4, !dbg !586
  %21 = load ptr, ptr %4, align 8, !dbg !586
  %22 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %21, i32 0, i32 0, !dbg !586
  %23 = load ptr, ptr %22, align 8, !dbg !586
  %24 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %23, i32 0, i32 6, !dbg !586
  %25 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 0, !dbg !586
  store i32 %20, ptr %25, align 4, !dbg !586
  %26 = load ptr, ptr %4, align 8, !dbg !586
  %27 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %26, i32 0, i32 0, !dbg !586
  %28 = load ptr, ptr %27, align 8, !dbg !586
  %29 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %28, i32 0, i32 0, !dbg !586
  %30 = load ptr, ptr %29, align 8, !dbg !586
  %31 = load ptr, ptr %4, align 8, !dbg !586
  call void %30(ptr noundef %31), !dbg !586
  br label %32, !dbg !586

32:                                               ; preds = %13, %3
  %33 = load ptr, ptr %4, align 8, !dbg !587
  %34 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %33, i32 0, i32 36, !dbg !589
  %35 = load i32, ptr %34, align 8, !dbg !589
  %36 = load ptr, ptr %4, align 8, !dbg !590
  %37 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %36, i32 0, i32 7, !dbg !591
  %38 = load i32, ptr %37, align 4, !dbg !591
  %39 = icmp uge i32 %35, %38, !dbg !592
  br i1 %39, label %40, label %51, !dbg !592

40:                                               ; preds = %32
  %41 = load ptr, ptr %4, align 8, !dbg !593
  %42 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %41, i32 0, i32 0, !dbg !593
  %43 = load ptr, ptr %42, align 8, !dbg !593
  %44 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %43, i32 0, i32 5, !dbg !593
  store i32 119, ptr %44, align 8, !dbg !593
  %45 = load ptr, ptr %4, align 8, !dbg !593
  %46 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %45, i32 0, i32 0, !dbg !593
  %47 = load ptr, ptr %46, align 8, !dbg !593
  %48 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %47, i32 0, i32 1, !dbg !593
  %49 = load ptr, ptr %48, align 8, !dbg !593
  %50 = load ptr, ptr %4, align 8, !dbg !593
  call void %49(ptr noundef %50, i32 noundef -1), !dbg !593
  br label %51, !dbg !593

51:                                               ; preds = %40, %32
  %52 = load ptr, ptr %4, align 8, !dbg !594
  %53 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %52, i32 0, i32 2, !dbg !596
  %54 = load ptr, ptr %53, align 8, !dbg !596
  %55 = icmp ne ptr %54, null, !dbg !597
  br i1 %55, label %56, label %79, !dbg !597

56:                                               ; preds = %51
  %57 = load ptr, ptr %4, align 8, !dbg !598
  %58 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %57, i32 0, i32 36, !dbg !600
  %59 = load i32, ptr %58, align 8, !dbg !600
  %60 = zext i32 %59 to i64, !dbg !601
  %61 = load ptr, ptr %4, align 8, !dbg !602
  %62 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %61, i32 0, i32 2, !dbg !603
  %63 = load ptr, ptr %62, align 8, !dbg !603
  %64 = getelementptr inbounds nuw %struct.jpeg_progress_mgr, ptr %63, i32 0, i32 1, !dbg !604
  store i64 %60, ptr %64, align 8, !dbg !605
  %65 = load ptr, ptr %4, align 8, !dbg !606
  %66 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %65, i32 0, i32 7, !dbg !607
  %67 = load i32, ptr %66, align 4, !dbg !607
  %68 = zext i32 %67 to i64, !dbg !608
  %69 = load ptr, ptr %4, align 8, !dbg !609
  %70 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %69, i32 0, i32 2, !dbg !610
  %71 = load ptr, ptr %70, align 8, !dbg !610
  %72 = getelementptr inbounds nuw %struct.jpeg_progress_mgr, ptr %71, i32 0, i32 2, !dbg !611
  store i64 %68, ptr %72, align 8, !dbg !612
  %73 = load ptr, ptr %4, align 8, !dbg !613
  %74 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %73, i32 0, i32 2, !dbg !614
  %75 = load ptr, ptr %74, align 8, !dbg !614
  %76 = getelementptr inbounds nuw %struct.jpeg_progress_mgr, ptr %75, i32 0, i32 0, !dbg !615
  %77 = load ptr, ptr %76, align 8, !dbg !615
  %78 = load ptr, ptr %4, align 8, !dbg !616
  call void %77(ptr noundef %78), !dbg !617
  br label %79, !dbg !618

79:                                               ; preds = %56, %51
  %80 = load ptr, ptr %4, align 8, !dbg !619
  %81 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %80, i32 0, i32 51, !dbg !621
  %82 = load ptr, ptr %81, align 8, !dbg !621
  %83 = getelementptr inbounds nuw %struct.jpeg_comp_master, ptr %82, i32 0, i32 3, !dbg !622
  %84 = load i32, ptr %83, align 8, !dbg !622
  %85 = icmp ne i32 %84, 0, !dbg !619
  br i1 %85, label %86, label %93, !dbg !619

86:                                               ; preds = %79
  %87 = load ptr, ptr %4, align 8, !dbg !623
  %88 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %87, i32 0, i32 51, !dbg !624
  %89 = load ptr, ptr %88, align 8, !dbg !624
  %90 = getelementptr inbounds nuw %struct.jpeg_comp_master, ptr %89, i32 0, i32 1, !dbg !625
  %91 = load ptr, ptr %90, align 8, !dbg !625
  %92 = load ptr, ptr %4, align 8, !dbg !626
  call void %91(ptr noundef %92), !dbg !627
  br label %93, !dbg !627

93:                                               ; preds = %86, %79
  %94 = load ptr, ptr %4, align 8, !dbg !628
  %95 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %94, i32 0, i32 7, !dbg !629
  %96 = load i32, ptr %95, align 4, !dbg !629
  %97 = load ptr, ptr %4, align 8, !dbg !630
  %98 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %97, i32 0, i32 36, !dbg !631
  %99 = load i32, ptr %98, align 8, !dbg !631
  %100 = sub i32 %96, %99, !dbg !632
  store i32 %100, ptr %8, align 4, !dbg !633
  %101 = load i32, ptr %6, align 4, !dbg !634
  %102 = load i32, ptr %8, align 4, !dbg !636
  %103 = icmp ugt i32 %101, %102, !dbg !637
  br i1 %103, label %104, label %106, !dbg !637

104:                                              ; preds = %93
  %105 = load i32, ptr %8, align 4, !dbg !638
  store i32 %105, ptr %6, align 4, !dbg !639
  br label %106, !dbg !640

106:                                              ; preds = %104, %93
  store i32 0, ptr %7, align 4, !dbg !641
  %107 = load ptr, ptr %4, align 8, !dbg !642
  %108 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %107, i32 0, i32 52, !dbg !643
  %109 = load ptr, ptr %108, align 8, !dbg !643
  %110 = getelementptr inbounds nuw %struct.jpeg_c_main_controller, ptr %109, i32 0, i32 1, !dbg !644
  %111 = load ptr, ptr %110, align 8, !dbg !644
  %112 = load ptr, ptr %4, align 8, !dbg !645
  %113 = load ptr, ptr %5, align 8, !dbg !646
  %114 = load i32, ptr %6, align 4, !dbg !647
  call void %111(ptr noundef %112, ptr noundef %113, ptr noundef %7, i32 noundef %114), !dbg !648
  %115 = load i32, ptr %7, align 4, !dbg !649
  %116 = load ptr, ptr %4, align 8, !dbg !650
  %117 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %116, i32 0, i32 36, !dbg !651
  %118 = load i32, ptr %117, align 8, !dbg !652
  %119 = add i32 %118, %115, !dbg !652
  store i32 %119, ptr %117, align 8, !dbg !652
  %120 = load i32, ptr %7, align 4, !dbg !653
  ret i32 %120, !dbg !654
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @jpeg_write_raw_data(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !655 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !658, !DIExpression(), !659)
  store ptr %1, ptr %6, align 8
    #dbg_declare(ptr %6, !660, !DIExpression(), !661)
  store i32 %2, ptr %7, align 4
    #dbg_declare(ptr %7, !662, !DIExpression(), !663)
    #dbg_declare(ptr %8, !664, !DIExpression(), !665)
  %9 = load ptr, ptr %5, align 8, !dbg !666
  %10 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %9, i32 0, i32 4, !dbg !668
  %11 = load i32, ptr %10, align 4, !dbg !668
  %12 = icmp ne i32 %11, 102, !dbg !669
  br i1 %12, label %13, label %32, !dbg !669

13:                                               ; preds = %3
  %14 = load ptr, ptr %5, align 8, !dbg !670
  %15 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %14, i32 0, i32 0, !dbg !670
  %16 = load ptr, ptr %15, align 8, !dbg !670
  %17 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %16, i32 0, i32 5, !dbg !670
  store i32 18, ptr %17, align 8, !dbg !670
  %18 = load ptr, ptr %5, align 8, !dbg !670
  %19 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %18, i32 0, i32 4, !dbg !670
  %20 = load i32, ptr %19, align 4, !dbg !670
  %21 = load ptr, ptr %5, align 8, !dbg !670
  %22 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %21, i32 0, i32 0, !dbg !670
  %23 = load ptr, ptr %22, align 8, !dbg !670
  %24 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %23, i32 0, i32 6, !dbg !670
  %25 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 0, !dbg !670
  store i32 %20, ptr %25, align 4, !dbg !670
  %26 = load ptr, ptr %5, align 8, !dbg !670
  %27 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %26, i32 0, i32 0, !dbg !670
  %28 = load ptr, ptr %27, align 8, !dbg !670
  %29 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %28, i32 0, i32 0, !dbg !670
  %30 = load ptr, ptr %29, align 8, !dbg !670
  %31 = load ptr, ptr %5, align 8, !dbg !670
  call void %30(ptr noundef %31), !dbg !670
  br label %32, !dbg !670

32:                                               ; preds = %13, %3
  %33 = load ptr, ptr %5, align 8, !dbg !671
  %34 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %33, i32 0, i32 36, !dbg !673
  %35 = load i32, ptr %34, align 8, !dbg !673
  %36 = load ptr, ptr %5, align 8, !dbg !674
  %37 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %36, i32 0, i32 7, !dbg !675
  %38 = load i32, ptr %37, align 4, !dbg !675
  %39 = icmp uge i32 %35, %38, !dbg !676
  br i1 %39, label %40, label %51, !dbg !676

40:                                               ; preds = %32
  %41 = load ptr, ptr %5, align 8, !dbg !677
  %42 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %41, i32 0, i32 0, !dbg !677
  %43 = load ptr, ptr %42, align 8, !dbg !677
  %44 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %43, i32 0, i32 5, !dbg !677
  store i32 119, ptr %44, align 8, !dbg !677
  %45 = load ptr, ptr %5, align 8, !dbg !677
  %46 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %45, i32 0, i32 0, !dbg !677
  %47 = load ptr, ptr %46, align 8, !dbg !677
  %48 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %47, i32 0, i32 1, !dbg !677
  %49 = load ptr, ptr %48, align 8, !dbg !677
  %50 = load ptr, ptr %5, align 8, !dbg !677
  call void %49(ptr noundef %50, i32 noundef -1), !dbg !677
  store i32 0, ptr %4, align 4, !dbg !679
  br label %130, !dbg !679

51:                                               ; preds = %32
  %52 = load ptr, ptr %5, align 8, !dbg !680
  %53 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %52, i32 0, i32 2, !dbg !682
  %54 = load ptr, ptr %53, align 8, !dbg !682
  %55 = icmp ne ptr %54, null, !dbg !683
  br i1 %55, label %56, label %79, !dbg !683

56:                                               ; preds = %51
  %57 = load ptr, ptr %5, align 8, !dbg !684
  %58 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %57, i32 0, i32 36, !dbg !686
  %59 = load i32, ptr %58, align 8, !dbg !686
  %60 = zext i32 %59 to i64, !dbg !687
  %61 = load ptr, ptr %5, align 8, !dbg !688
  %62 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %61, i32 0, i32 2, !dbg !689
  %63 = load ptr, ptr %62, align 8, !dbg !689
  %64 = getelementptr inbounds nuw %struct.jpeg_progress_mgr, ptr %63, i32 0, i32 1, !dbg !690
  store i64 %60, ptr %64, align 8, !dbg !691
  %65 = load ptr, ptr %5, align 8, !dbg !692
  %66 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %65, i32 0, i32 7, !dbg !693
  %67 = load i32, ptr %66, align 4, !dbg !693
  %68 = zext i32 %67 to i64, !dbg !694
  %69 = load ptr, ptr %5, align 8, !dbg !695
  %70 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %69, i32 0, i32 2, !dbg !696
  %71 = load ptr, ptr %70, align 8, !dbg !696
  %72 = getelementptr inbounds nuw %struct.jpeg_progress_mgr, ptr %71, i32 0, i32 2, !dbg !697
  store i64 %68, ptr %72, align 8, !dbg !698
  %73 = load ptr, ptr %5, align 8, !dbg !699
  %74 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %73, i32 0, i32 2, !dbg !700
  %75 = load ptr, ptr %74, align 8, !dbg !700
  %76 = getelementptr inbounds nuw %struct.jpeg_progress_mgr, ptr %75, i32 0, i32 0, !dbg !701
  %77 = load ptr, ptr %76, align 8, !dbg !701
  %78 = load ptr, ptr %5, align 8, !dbg !702
  call void %77(ptr noundef %78), !dbg !703
  br label %79, !dbg !704

79:                                               ; preds = %56, %51
  %80 = load ptr, ptr %5, align 8, !dbg !705
  %81 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %80, i32 0, i32 51, !dbg !707
  %82 = load ptr, ptr %81, align 8, !dbg !707
  %83 = getelementptr inbounds nuw %struct.jpeg_comp_master, ptr %82, i32 0, i32 3, !dbg !708
  %84 = load i32, ptr %83, align 8, !dbg !708
  %85 = icmp ne i32 %84, 0, !dbg !705
  br i1 %85, label %86, label %93, !dbg !705

86:                                               ; preds = %79
  %87 = load ptr, ptr %5, align 8, !dbg !709
  %88 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %87, i32 0, i32 51, !dbg !710
  %89 = load ptr, ptr %88, align 8, !dbg !710
  %90 = getelementptr inbounds nuw %struct.jpeg_comp_master, ptr %89, i32 0, i32 1, !dbg !711
  %91 = load ptr, ptr %90, align 8, !dbg !711
  %92 = load ptr, ptr %5, align 8, !dbg !712
  call void %91(ptr noundef %92), !dbg !713
  br label %93, !dbg !713

93:                                               ; preds = %86, %79
  %94 = load ptr, ptr %5, align 8, !dbg !714
  %95 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %94, i32 0, i32 39, !dbg !715
  %96 = load i32, ptr %95, align 4, !dbg !715
  %97 = mul nsw i32 %96, 8, !dbg !716
  store i32 %97, ptr %8, align 4, !dbg !717
  %98 = load i32, ptr %7, align 4, !dbg !718
  %99 = load i32, ptr %8, align 4, !dbg !720
  %100 = icmp ult i32 %98, %99, !dbg !721
  br i1 %100, label %101, label %112, !dbg !721

101:                                              ; preds = %93
  %102 = load ptr, ptr %5, align 8, !dbg !722
  %103 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %102, i32 0, i32 0, !dbg !722
  %104 = load ptr, ptr %103, align 8, !dbg !722
  %105 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %104, i32 0, i32 5, !dbg !722
  store i32 21, ptr %105, align 8, !dbg !722
  %106 = load ptr, ptr %5, align 8, !dbg !722
  %107 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %106, i32 0, i32 0, !dbg !722
  %108 = load ptr, ptr %107, align 8, !dbg !722
  %109 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %108, i32 0, i32 0, !dbg !722
  %110 = load ptr, ptr %109, align 8, !dbg !722
  %111 = load ptr, ptr %5, align 8, !dbg !722
  call void %110(ptr noundef %111), !dbg !722
  br label %112, !dbg !722

112:                                              ; preds = %101, %93
  %113 = load ptr, ptr %5, align 8, !dbg !723
  %114 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %113, i32 0, i32 54, !dbg !725
  %115 = load ptr, ptr %114, align 8, !dbg !725
  %116 = getelementptr inbounds nuw %struct.jpeg_c_coef_controller, ptr %115, i32 0, i32 1, !dbg !726
  %117 = load ptr, ptr %116, align 8, !dbg !726
  %118 = load ptr, ptr %5, align 8, !dbg !727
  %119 = load ptr, ptr %6, align 8, !dbg !728
  %120 = call i32 %117(ptr noundef %118, ptr noundef %119), !dbg !729
  %121 = icmp ne i32 %120, 0, !dbg !729
  br i1 %121, label %123, label %122, !dbg !730

122:                                              ; preds = %112
  store i32 0, ptr %4, align 4, !dbg !731
  br label %130, !dbg !731

123:                                              ; preds = %112
  %124 = load i32, ptr %8, align 4, !dbg !733
  %125 = load ptr, ptr %5, align 8, !dbg !734
  %126 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %125, i32 0, i32 36, !dbg !735
  %127 = load i32, ptr %126, align 8, !dbg !736
  %128 = add i32 %127, %124, !dbg !736
  store i32 %128, ptr %126, align 8, !dbg !736
  %129 = load i32, ptr %8, align 4, !dbg !737
  store i32 %129, ptr %4, align 4, !dbg !738
  br label %130, !dbg !738

130:                                              ; preds = %123, %122, %40
  %131 = load i32, ptr %4, align 4, !dbg !739
  ret i32 %131, !dbg !739
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!276, !277, !278, !279, !280, !281, !282}
!llvm.ident = !{!283}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !149, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jcapistd.c", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "98951837a74c22f4fe7bb1ff6c320116")
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
!149 = !{!150, !207, !189}
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_common_ptr", file: !4, line: 248, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_common_struct", file: !4, line: 240, size: 256, elements: !153)
!153 = !{!154, !199, !265, !274, !275}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !152, file: !4, line: 241, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_error_mgr", file: !4, line: 618, size: 1344, elements: !157)
!157 = !{!158, !162, !167, !168, !174, !175, !176, !187, !188, !190, !195, !196, !197, !198}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "error_exit", scope: !156, file: !4, line: 620, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DISubroutineType(types: !161)
!161 = !{null, !150}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "emit_message", scope: !156, file: !4, line: 622, baseType: !163, size: 64, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DISubroutineType(types: !165)
!165 = !{null, !150, !166}
!166 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "output_message", scope: !156, file: !4, line: 624, baseType: !159, size: 64, offset: 128)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "format_message", scope: !156, file: !4, line: 626, baseType: !169, size: 64, offset: 192)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DISubroutineType(types: !171)
!171 = !{null, !150, !172}
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "reset_error_mgr", scope: !156, file: !4, line: 629, baseType: !159, size: 64, offset: 256)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "msg_code", scope: !156, file: !4, line: 634, baseType: !166, size: 32, offset: 320)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "msg_parm", scope: !156, file: !4, line: 639, baseType: !177, size: 640, offset: 352)
!177 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !156, file: !4, line: 636, size: 640, elements: !178)
!178 = !{!179, !183}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !177, file: !4, line: 637, baseType: !180, size: 256)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 256, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 8)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !177, file: !4, line: 638, baseType: !184, size: 640)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 640, elements: !185)
!185 = !{!186}
!186 = !DISubrange(count: 80)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "trace_level", scope: !156, file: !4, line: 643, baseType: !166, size: 32, offset: 992)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "num_warnings", scope: !156, file: !4, line: 651, baseType: !189, size: 64, offset: 1024)
!189 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_message_table", scope: !156, file: !4, line: 663, baseType: !191, size: 64, offset: 1088)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !193)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !173)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "last_jpeg_message", scope: !156, file: !4, line: 664, baseType: !166, size: 32, offset: 1152)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "addon_message_table", scope: !156, file: !4, line: 668, baseType: !191, size: 64, offset: 1216)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "first_addon_message", scope: !156, file: !4, line: 669, baseType: !166, size: 32, offset: 1280)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "last_addon_message", scope: !156, file: !4, line: 670, baseType: !166, size: 32, offset: 1312)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !152, file: !4, line: 241, baseType: !200, size: 64, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_memory_mgr", file: !4, line: 731, size: 768, elements: !202)
!202 = !{!203, !211, !212, !224, !238, !246, !253, !254, !258, !262, !263, !264}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_small", scope: !201, file: !4, line: 733, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!207, !150, !166, !208}
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !209, line: 18, baseType: !210)
!209 = !DIFile(filename: "/usr/local/lib/clang/20/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!210 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_large", scope: !201, file: !4, line: 735, baseType: !204, size: 64, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_sarray", scope: !201, file: !4, line: 737, baseType: !213, size: 64, offset: 128)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{!216, !150, !166, !223, !223}
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPARRAY", file: !4, line: 67, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPROW", file: !4, line: 66, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPLE", file: !221, line: 59, baseType: !222)
!221 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jmorecfg.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "56a0eda58fafa6bdd5498f702a998c09")
!222 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "JDIMENSION", file: !221, line: 171, baseType: !5)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_barray", scope: !201, file: !4, line: 740, baseType: !225, size: 64, offset: 192)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DISubroutineType(types: !227)
!227 = !{!228, !150, !166, !223, !223}
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCKARRAY", file: !4, line: 72, baseType: !229)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCKROW", file: !4, line: 71, baseType: !231)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCK", file: !4, line: 70, baseType: !233)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !234, size: 1024, elements: !236)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "JCOEF", file: !221, line: 99, baseType: !235)
!235 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!236 = !{!237}
!237 = !DISubrange(count: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_sarray", scope: !201, file: !4, line: 743, baseType: !239, size: 64, offset: 256)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{!242, !150, !166, !245, !223, !223, !223}
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_sarray_ptr", file: !4, line: 727, baseType: !243)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_sarray_control", file: !4, line: 727, flags: DIFlagFwdDecl)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "boolean", file: !221, line: 227, baseType: !166)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_barray", scope: !201, file: !4, line: 749, baseType: !247, size: 64, offset: 320)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DISubroutineType(types: !249)
!249 = !{!250, !150, !166, !245, !223, !223, !223}
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_barray_ptr", file: !4, line: 728, baseType: !251)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_barray_control", file: !4, line: 728, flags: DIFlagFwdDecl)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "realize_virt_arrays", scope: !201, file: !4, line: 755, baseType: !159, size: 64, offset: 384)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_sarray", scope: !201, file: !4, line: 756, baseType: !255, size: 64, offset: 448)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DISubroutineType(types: !257)
!257 = !{!216, !150, !242, !223, !223, !245}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_barray", scope: !201, file: !4, line: 761, baseType: !259, size: 64, offset: 512)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DISubroutineType(types: !261)
!261 = !{!228, !150, !250, !223, !223, !245}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "free_pool", scope: !201, file: !4, line: 766, baseType: !163, size: 64, offset: 576)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "self_destruct", scope: !201, file: !4, line: 767, baseType: !159, size: 64, offset: 640)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "max_memory_to_use", scope: !201, file: !4, line: 774, baseType: !189, size: 64, offset: 704)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !152, file: !4, line: 241, baseType: !266, size: 64, offset: 128)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_progress_mgr", file: !4, line: 676, size: 256, elements: !268)
!268 = !{!269, !270, !271, !272, !273}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !267, file: !4, line: 677, baseType: !159, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "pass_counter", scope: !267, file: !4, line: 679, baseType: !189, size: 64, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "pass_limit", scope: !267, file: !4, line: 680, baseType: !189, size: 64, offset: 128)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "completed_passes", scope: !267, file: !4, line: 681, baseType: !166, size: 32, offset: 192)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "total_passes", scope: !267, file: !4, line: 682, baseType: !166, size: 32, offset: 224)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !152, file: !4, line: 241, baseType: !245, size: 32, offset: 192)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !152, file: !4, line: 241, baseType: !166, size: 32, offset: 224)
!276 = !{i32 7, !"Dwarf Version", i32 5}
!277 = !{i32 2, !"Debug Info Version", i32 3}
!278 = !{i32 1, !"wchar_size", i32 4}
!279 = !{i32 8, !"PIC Level", i32 2}
!280 = !{i32 7, !"PIE Level", i32 2}
!281 = !{i32 7, !"uwtable", i32 2}
!282 = !{i32 7, !"frame-pointer", i32 2}
!283 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!284 = distinct !DISubprogram(name: "jpeg_start_compress", scope: !1, file: !1, line: 38, type: !285, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !529)
!285 = !DISubroutineType(types: !286)
!286 = !{null, !287, !245}
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_compress_ptr", file: !4, line: 249, baseType: !288)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_compress_struct", file: !4, line: 255, size: 3968, elements: !290)
!290 = !{!291, !292, !293, !294, !295, !296, !313, !314, !315, !316, !318, !320, !321, !322, !323, !358, !362, !378, !379, !383, !384, !385, !386, !399, !400, !401, !402, !403, !404, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !421, !422, !423, !424, !428, !429, !430, !431, !432, !441, !455, !466, !475, !490, !499, !509, !518}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !289, file: !4, line: 256, baseType: !155, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !289, file: !4, line: 256, baseType: !200, size: 64, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !289, file: !4, line: 256, baseType: !266, size: 64, offset: 128)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !289, file: !4, line: 256, baseType: !245, size: 32, offset: 192)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !289, file: !4, line: 256, baseType: !166, size: 32, offset: 224)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !289, file: !4, line: 259, baseType: !297, size: 64, offset: 256)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_destination_mgr", file: !4, line: 688, size: 320, elements: !299)
!299 = !{!300, !303, !304, !308, !312}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "next_output_byte", scope: !298, file: !4, line: 689, baseType: !301, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "JOCTET", file: !221, line: 110, baseType: !222)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "free_in_buffer", scope: !298, file: !4, line: 690, baseType: !208, size: 64, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "init_destination", scope: !298, file: !4, line: 692, baseType: !305, size: 64, offset: 128)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DISubroutineType(types: !307)
!307 = !{null, !287}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "empty_output_buffer", scope: !298, file: !4, line: 693, baseType: !309, size: 64, offset: 192)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{!245, !287}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "term_destination", scope: !298, file: !4, line: 694, baseType: !305, size: 64, offset: 256)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "image_width", scope: !289, file: !4, line: 266, baseType: !223, size: 32, offset: 320)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "image_height", scope: !289, file: !4, line: 267, baseType: !223, size: 32, offset: 352)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "input_components", scope: !289, file: !4, line: 268, baseType: !166, size: 32, offset: 384)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "in_color_space", scope: !289, file: !4, line: 269, baseType: !317, size: 32, offset: 416)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_COLOR_SPACE", file: !4, line: 201, baseType: !3)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "input_gamma", scope: !289, file: !4, line: 271, baseType: !319, size: 64, offset: 448)
!319 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "data_precision", scope: !289, file: !4, line: 281, baseType: !166, size: 32, offset: 512)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "num_components", scope: !289, file: !4, line: 283, baseType: !166, size: 32, offset: 544)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_color_space", scope: !289, file: !4, line: 284, baseType: !317, size: 32, offset: 576)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "comp_info", scope: !289, file: !4, line: 286, baseType: !324, size: 64, offset: 640)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_component_info", file: !4, line: 179, baseType: !326)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 116, size: 768, elements: !327)
!327 = !{!328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !357}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "component_id", scope: !326, file: !4, line: 120, baseType: !166, size: 32)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "component_index", scope: !326, file: !4, line: 121, baseType: !166, size: 32, offset: 32)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "h_samp_factor", scope: !326, file: !4, line: 122, baseType: !166, size: 32, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "v_samp_factor", scope: !326, file: !4, line: 123, baseType: !166, size: 32, offset: 96)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_no", scope: !326, file: !4, line: 124, baseType: !166, size: 32, offset: 128)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "dc_tbl_no", scope: !326, file: !4, line: 129, baseType: !166, size: 32, offset: 160)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tbl_no", scope: !326, file: !4, line: 130, baseType: !166, size: 32, offset: 192)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "width_in_blocks", scope: !326, file: !4, line: 139, baseType: !223, size: 32, offset: 224)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "height_in_blocks", scope: !326, file: !4, line: 140, baseType: !223, size: 32, offset: 256)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "DCT_scaled_size", scope: !326, file: !4, line: 147, baseType: !166, size: 32, offset: 288)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_width", scope: !326, file: !4, line: 154, baseType: !223, size: 32, offset: 320)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_height", scope: !326, file: !4, line: 155, baseType: !223, size: 32, offset: 352)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "component_needed", scope: !326, file: !4, line: 160, baseType: !245, size: 32, offset: 384)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_width", scope: !326, file: !4, line: 164, baseType: !166, size: 32, offset: 416)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_height", scope: !326, file: !4, line: 165, baseType: !166, size: 32, offset: 448)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_blocks", scope: !326, file: !4, line: 166, baseType: !166, size: 32, offset: 480)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_sample_width", scope: !326, file: !4, line: 167, baseType: !166, size: 32, offset: 512)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "last_col_width", scope: !326, file: !4, line: 168, baseType: !166, size: 32, offset: 544)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "last_row_height", scope: !326, file: !4, line: 169, baseType: !166, size: 32, offset: 576)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "quant_table", scope: !326, file: !4, line: 175, baseType: !348, size: 64, offset: 640)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "JQUANT_TBL", file: !4, line: 95, baseType: !350)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 83, size: 1056, elements: !351)
!351 = !{!352, !356}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "quantval", scope: !350, file: !4, line: 88, baseType: !353, size: 1024)
!353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !354, size: 1024, elements: !236)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !221, line: 147, baseType: !355)
!355 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !350, file: !4, line: 94, baseType: !245, size: 32, offset: 1024)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "dct_table", scope: !326, file: !4, line: 178, baseType: !207, size: 64, offset: 704)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_ptrs", scope: !289, file: !4, line: 289, baseType: !359, size: 256, offset: 704)
!359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 256, elements: !360)
!360 = !{!361}
!361 = !DISubrange(count: 4)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "dc_huff_tbl_ptrs", scope: !289, file: !4, line: 292, baseType: !363, size: 256, offset: 960)
!363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !364, size: 256, elements: !360)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "JHUFF_TBL", file: !4, line: 111, baseType: !366)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 100, size: 2240, elements: !367)
!367 = !{!368, !373, !377}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !366, file: !4, line: 102, baseType: !369, size: 136)
!369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 136, elements: !371)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT8", file: !221, line: 135, baseType: !222)
!371 = !{!372}
!372 = !DISubrange(count: 17)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "huffval", scope: !366, file: !4, line: 104, baseType: !374, size: 2048, offset: 136)
!374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 2048, elements: !375)
!375 = !{!376}
!376 = !DISubrange(count: 256)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !366, file: !4, line: 110, baseType: !245, size: 32, offset: 2208)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "ac_huff_tbl_ptrs", scope: !289, file: !4, line: 293, baseType: !363, size: 256, offset: 1216)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_L", scope: !289, file: !4, line: 296, baseType: !380, size: 128, offset: 1472)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 128, elements: !381)
!381 = !{!382}
!382 = !DISubrange(count: 16)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_U", scope: !289, file: !4, line: 297, baseType: !380, size: 128, offset: 1600)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "arith_ac_K", scope: !289, file: !4, line: 298, baseType: !380, size: 128, offset: 1728)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "num_scans", scope: !289, file: !4, line: 300, baseType: !166, size: 32, offset: 1856)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "scan_info", scope: !289, file: !4, line: 301, baseType: !387, size: 64, offset: 1920)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !389)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_scan_info", file: !4, line: 189, baseType: !390)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 184, size: 288, elements: !391)
!391 = !{!392, !393, !395, !396, !397, !398}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "comps_in_scan", scope: !390, file: !4, line: 185, baseType: !166, size: 32)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "component_index", scope: !390, file: !4, line: 186, baseType: !394, size: 128, offset: 32)
!394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 128, elements: !360)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "Ss", scope: !390, file: !4, line: 187, baseType: !166, size: 32, offset: 160)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "Se", scope: !390, file: !4, line: 187, baseType: !166, size: 32, offset: 192)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "Ah", scope: !390, file: !4, line: 188, baseType: !166, size: 32, offset: 224)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "Al", scope: !390, file: !4, line: 188, baseType: !166, size: 32, offset: 256)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "raw_data_in", scope: !289, file: !4, line: 307, baseType: !245, size: 32, offset: 1984)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "arith_code", scope: !289, file: !4, line: 308, baseType: !245, size: 32, offset: 2016)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_coding", scope: !289, file: !4, line: 309, baseType: !245, size: 32, offset: 2048)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "CCIR601_sampling", scope: !289, file: !4, line: 310, baseType: !245, size: 32, offset: 2080)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "smoothing_factor", scope: !289, file: !4, line: 311, baseType: !166, size: 32, offset: 2112)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "dct_method", scope: !289, file: !4, line: 312, baseType: !405, size: 32, offset: 2144)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_DCT_METHOD", file: !4, line: 209, baseType: !13)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "restart_interval", scope: !289, file: !4, line: 319, baseType: !5, size: 32, offset: 2176)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "restart_in_rows", scope: !289, file: !4, line: 320, baseType: !166, size: 32, offset: 2208)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "write_JFIF_header", scope: !289, file: !4, line: 324, baseType: !245, size: 32, offset: 2240)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "density_unit", scope: !289, file: !4, line: 329, baseType: !370, size: 8, offset: 2272)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "X_density", scope: !289, file: !4, line: 330, baseType: !354, size: 16, offset: 2288)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "Y_density", scope: !289, file: !4, line: 331, baseType: !354, size: 16, offset: 2304)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "write_Adobe_marker", scope: !289, file: !4, line: 332, baseType: !245, size: 32, offset: 2336)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "next_scanline", scope: !289, file: !4, line: 339, baseType: !223, size: 32, offset: 2368)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "progressive_mode", scope: !289, file: !4, line: 348, baseType: !245, size: 32, offset: 2400)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "max_h_samp_factor", scope: !289, file: !4, line: 349, baseType: !166, size: 32, offset: 2432)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "max_v_samp_factor", scope: !289, file: !4, line: 350, baseType: !166, size: 32, offset: 2464)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "total_iMCU_rows", scope: !289, file: !4, line: 352, baseType: !223, size: 32, offset: 2496)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "comps_in_scan", scope: !289, file: !4, line: 363, baseType: !166, size: 32, offset: 2528)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "cur_comp_info", scope: !289, file: !4, line: 364, baseType: !420, size: 256, offset: 2560)
!420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !324, size: 256, elements: !360)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "MCUs_per_row", scope: !289, file: !4, line: 367, baseType: !223, size: 32, offset: 2816)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_rows_in_scan", scope: !289, file: !4, line: 368, baseType: !223, size: 32, offset: 2848)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_in_MCU", scope: !289, file: !4, line: 370, baseType: !166, size: 32, offset: 2880)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_membership", scope: !289, file: !4, line: 371, baseType: !425, size: 320, offset: 2912)
!425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 320, elements: !426)
!426 = !{!427}
!427 = !DISubrange(count: 10)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "Ss", scope: !289, file: !4, line: 375, baseType: !166, size: 32, offset: 3232)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "Se", scope: !289, file: !4, line: 375, baseType: !166, size: 32, offset: 3264)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "Ah", scope: !289, file: !4, line: 375, baseType: !166, size: 32, offset: 3296)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "Al", scope: !289, file: !4, line: 375, baseType: !166, size: 32, offset: 3328)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !289, file: !4, line: 380, baseType: !433, size: 64, offset: 3392)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_comp_master", file: !19, line: 45, size: 256, elements: !435)
!435 = !{!436, !437, !438, !439, !440}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_for_pass", scope: !434, file: !19, line: 46, baseType: !305, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "pass_startup", scope: !434, file: !19, line: 47, baseType: !305, size: 64, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "finish_pass", scope: !434, file: !19, line: 48, baseType: !305, size: 64, offset: 128)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "call_pass_startup", scope: !434, file: !19, line: 51, baseType: !245, size: 32, offset: 192)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "is_last_pass", scope: !434, file: !19, line: 52, baseType: !245, size: 32, offset: 224)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "main", scope: !289, file: !4, line: 381, baseType: !442, size: 64, offset: 3456)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_c_main_controller", file: !19, line: 56, size: 128, elements: !444)
!444 = !{!445, !450}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !443, file: !19, line: 57, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{null, !287, !449}
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_BUF_MODE", file: !19, line: 22, baseType: !18)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "process_data", scope: !443, file: !19, line: 58, baseType: !451, size: 64, offset: 64)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{null, !287, !216, !454, !223}
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "prep", scope: !289, file: !4, line: 382, baseType: !456, size: 64, offset: 3520)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_c_prep_controller", file: !19, line: 64, size: 128, elements: !458)
!458 = !{!459, !460}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !457, file: !19, line: 65, baseType: !446, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "pre_process_data", scope: !457, file: !19, line: 66, baseType: !461, size: 64, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DISubroutineType(types: !463)
!463 = !{null, !287, !216, !454, !223, !464, !454, !223}
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPIMAGE", file: !4, line: 68, baseType: !465)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "coef", scope: !289, file: !4, line: 383, baseType: !467, size: 64, offset: 3584)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_c_coef_controller", file: !19, line: 76, size: 128, elements: !469)
!469 = !{!470, !471}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !468, file: !19, line: 77, baseType: !446, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "compress_data", scope: !468, file: !19, line: 78, baseType: !472, size: 64, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{!245, !287, !464}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "marker", scope: !289, file: !4, line: 384, baseType: !476, size: 64, offset: 3648)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_marker_writer", file: !19, line: 120, size: 384, elements: !478)
!478 = !{!479, !485, !486, !487, !488, !489}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "write_any_marker", scope: !477, file: !19, line: 123, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{null, !287, !166, !483, !5}
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !302)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_header", scope: !477, file: !19, line: 125, baseType: !305, size: 64, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "write_frame_header", scope: !477, file: !19, line: 126, baseType: !305, size: 64, offset: 128)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "write_scan_header", scope: !477, file: !19, line: 127, baseType: !305, size: 64, offset: 192)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_trailer", scope: !477, file: !19, line: 128, baseType: !305, size: 64, offset: 256)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "write_tables_only", scope: !477, file: !19, line: 129, baseType: !305, size: 64, offset: 320)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "cconvert", scope: !289, file: !4, line: 385, baseType: !491, size: 64, offset: 3712)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_color_converter", file: !19, line: 83, size: 128, elements: !493)
!493 = !{!494, !495}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !492, file: !19, line: 84, baseType: !305, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "color_convert", scope: !492, file: !19, line: 85, baseType: !496, size: 64, offset: 64)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{null, !287, !216, !464, !223, !166}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "downsample", scope: !289, file: !4, line: 386, baseType: !500, size: 64, offset: 3776)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_downsampler", file: !19, line: 91, size: 192, elements: !502)
!502 = !{!503, !504, !508}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !501, file: !19, line: 92, baseType: !305, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "downsample", scope: !501, file: !19, line: 93, baseType: !505, size: 64, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DISubroutineType(types: !507)
!507 = !{null, !287, !464, !223, !464, !223}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "need_context_rows", scope: !501, file: !19, line: 98, baseType: !245, size: 32, offset: 128)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "fdct", scope: !289, file: !4, line: 387, baseType: !510, size: 64, offset: 3840)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_forward_dct", file: !19, line: 102, size: 128, elements: !512)
!512 = !{!513, !514}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !511, file: !19, line: 103, baseType: !305, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "forward_DCT", scope: !511, file: !19, line: 105, baseType: !515, size: 64, offset: 64)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DISubroutineType(types: !517)
!517 = !{null, !287, !324, !216, !230, !223, !223, !223}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "entropy", scope: !289, file: !4, line: 388, baseType: !519, size: 64, offset: 3904)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_entropy_encoder", file: !19, line: 113, size: 192, elements: !521)
!521 = !{!522, !524, !528}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !520, file: !19, line: 114, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "encode_mcu", scope: !520, file: !19, line: 115, baseType: !525, size: 64, offset: 64)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!245, !287, !229}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "finish_pass", scope: !520, file: !19, line: 116, baseType: !305, size: 64, offset: 128)
!529 = !{}
!530 = !DILocalVariable(name: "cinfo", arg: 1, scope: !284, file: !1, line: 38, type: !287)
!531 = !DILocation(line: 38, column: 37, scope: !284)
!532 = !DILocalVariable(name: "write_all_tables", arg: 2, scope: !284, file: !1, line: 38, type: !245)
!533 = !DILocation(line: 38, column: 52, scope: !284)
!534 = !DILocation(line: 40, column: 7, scope: !535)
!535 = distinct !DILexicalBlock(scope: !284, file: !1, line: 40, column: 7)
!536 = !DILocation(line: 40, column: 14, scope: !535)
!537 = !DILocation(line: 40, column: 27, scope: !535)
!538 = !DILocation(line: 41, column: 5, scope: !535)
!539 = !DILocation(line: 43, column: 7, scope: !540)
!540 = distinct !DILexicalBlock(scope: !284, file: !1, line: 43, column: 7)
!541 = !DILocation(line: 44, column: 26, scope: !540)
!542 = !DILocation(line: 44, column: 5, scope: !540)
!543 = !DILocation(line: 47, column: 5, scope: !284)
!544 = !DILocation(line: 47, column: 12, scope: !284)
!545 = !DILocation(line: 47, column: 17, scope: !284)
!546 = !DILocation(line: 47, column: 50, scope: !284)
!547 = !DILocation(line: 47, column: 3, scope: !284)
!548 = !DILocation(line: 48, column: 5, scope: !284)
!549 = !DILocation(line: 48, column: 12, scope: !284)
!550 = !DILocation(line: 48, column: 18, scope: !284)
!551 = !DILocation(line: 48, column: 37, scope: !284)
!552 = !DILocation(line: 48, column: 3, scope: !284)
!553 = !DILocation(line: 50, column: 25, scope: !284)
!554 = !DILocation(line: 50, column: 3, scope: !284)
!555 = !DILocation(line: 52, column: 5, scope: !284)
!556 = !DILocation(line: 52, column: 12, scope: !284)
!557 = !DILocation(line: 52, column: 20, scope: !284)
!558 = !DILocation(line: 52, column: 39, scope: !284)
!559 = !DILocation(line: 52, column: 3, scope: !284)
!560 = !DILocation(line: 56, column: 3, scope: !284)
!561 = !DILocation(line: 56, column: 10, scope: !284)
!562 = !DILocation(line: 56, column: 24, scope: !284)
!563 = !DILocation(line: 57, column: 26, scope: !284)
!564 = !DILocation(line: 57, column: 33, scope: !284)
!565 = !DILocation(line: 57, column: 3, scope: !284)
!566 = !DILocation(line: 57, column: 10, scope: !284)
!567 = !DILocation(line: 57, column: 23, scope: !284)
!568 = !DILocation(line: 58, column: 1, scope: !284)
!569 = distinct !DISubprogram(name: "jpeg_write_scanlines", scope: !1, file: !1, line: 77, type: !570, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !529)
!570 = !DISubroutineType(types: !571)
!571 = !{!223, !287, !216, !223}
!572 = !DILocalVariable(name: "cinfo", arg: 1, scope: !569, file: !1, line: 77, type: !287)
!573 = !DILocation(line: 77, column: 38, scope: !569)
!574 = !DILocalVariable(name: "scanlines", arg: 2, scope: !569, file: !1, line: 77, type: !216)
!575 = !DILocation(line: 77, column: 56, scope: !569)
!576 = !DILocalVariable(name: "num_lines", arg: 3, scope: !569, file: !1, line: 78, type: !223)
!577 = !DILocation(line: 78, column: 20, scope: !569)
!578 = !DILocalVariable(name: "row_ctr", scope: !569, file: !1, line: 80, type: !223)
!579 = !DILocation(line: 80, column: 14, scope: !569)
!580 = !DILocalVariable(name: "rows_left", scope: !569, file: !1, line: 80, type: !223)
!581 = !DILocation(line: 80, column: 23, scope: !569)
!582 = !DILocation(line: 82, column: 7, scope: !583)
!583 = distinct !DILexicalBlock(scope: !569, file: !1, line: 82, column: 7)
!584 = !DILocation(line: 82, column: 14, scope: !583)
!585 = !DILocation(line: 82, column: 27, scope: !583)
!586 = !DILocation(line: 83, column: 5, scope: !583)
!587 = !DILocation(line: 84, column: 7, scope: !588)
!588 = distinct !DILexicalBlock(scope: !569, file: !1, line: 84, column: 7)
!589 = !DILocation(line: 84, column: 14, scope: !588)
!590 = !DILocation(line: 84, column: 31, scope: !588)
!591 = !DILocation(line: 84, column: 38, scope: !588)
!592 = !DILocation(line: 84, column: 28, scope: !588)
!593 = !DILocation(line: 85, column: 5, scope: !588)
!594 = !DILocation(line: 88, column: 7, scope: !595)
!595 = distinct !DILexicalBlock(scope: !569, file: !1, line: 88, column: 7)
!596 = !DILocation(line: 88, column: 14, scope: !595)
!597 = !DILocation(line: 88, column: 23, scope: !595)
!598 = !DILocation(line: 89, column: 44, scope: !599)
!599 = distinct !DILexicalBlock(scope: !595, file: !1, line: 88, column: 32)
!600 = !DILocation(line: 89, column: 51, scope: !599)
!601 = !DILocation(line: 89, column: 37, scope: !599)
!602 = !DILocation(line: 89, column: 5, scope: !599)
!603 = !DILocation(line: 89, column: 12, scope: !599)
!604 = !DILocation(line: 89, column: 22, scope: !599)
!605 = !DILocation(line: 89, column: 35, scope: !599)
!606 = !DILocation(line: 90, column: 42, scope: !599)
!607 = !DILocation(line: 90, column: 49, scope: !599)
!608 = !DILocation(line: 90, column: 35, scope: !599)
!609 = !DILocation(line: 90, column: 5, scope: !599)
!610 = !DILocation(line: 90, column: 12, scope: !599)
!611 = !DILocation(line: 90, column: 22, scope: !599)
!612 = !DILocation(line: 90, column: 33, scope: !599)
!613 = !DILocation(line: 91, column: 7, scope: !599)
!614 = !DILocation(line: 91, column: 14, scope: !599)
!615 = !DILocation(line: 91, column: 24, scope: !599)
!616 = !DILocation(line: 91, column: 58, scope: !599)
!617 = !DILocation(line: 91, column: 5, scope: !599)
!618 = !DILocation(line: 92, column: 3, scope: !599)
!619 = !DILocation(line: 99, column: 7, scope: !620)
!620 = distinct !DILexicalBlock(scope: !569, file: !1, line: 99, column: 7)
!621 = !DILocation(line: 99, column: 14, scope: !620)
!622 = !DILocation(line: 99, column: 22, scope: !620)
!623 = !DILocation(line: 100, column: 7, scope: !620)
!624 = !DILocation(line: 100, column: 14, scope: !620)
!625 = !DILocation(line: 100, column: 22, scope: !620)
!626 = !DILocation(line: 100, column: 37, scope: !620)
!627 = !DILocation(line: 100, column: 5, scope: !620)
!628 = !DILocation(line: 103, column: 15, scope: !569)
!629 = !DILocation(line: 103, column: 22, scope: !569)
!630 = !DILocation(line: 103, column: 37, scope: !569)
!631 = !DILocation(line: 103, column: 44, scope: !569)
!632 = !DILocation(line: 103, column: 35, scope: !569)
!633 = !DILocation(line: 103, column: 13, scope: !569)
!634 = !DILocation(line: 104, column: 7, scope: !635)
!635 = distinct !DILexicalBlock(scope: !569, file: !1, line: 104, column: 7)
!636 = !DILocation(line: 104, column: 19, scope: !635)
!637 = !DILocation(line: 104, column: 17, scope: !635)
!638 = !DILocation(line: 105, column: 17, scope: !635)
!639 = !DILocation(line: 105, column: 15, scope: !635)
!640 = !DILocation(line: 105, column: 5, scope: !635)
!641 = !DILocation(line: 107, column: 11, scope: !569)
!642 = !DILocation(line: 108, column: 5, scope: !569)
!643 = !DILocation(line: 108, column: 12, scope: !569)
!644 = !DILocation(line: 108, column: 18, scope: !569)
!645 = !DILocation(line: 108, column: 33, scope: !569)
!646 = !DILocation(line: 108, column: 40, scope: !569)
!647 = !DILocation(line: 108, column: 61, scope: !569)
!648 = !DILocation(line: 108, column: 3, scope: !569)
!649 = !DILocation(line: 109, column: 27, scope: !569)
!650 = !DILocation(line: 109, column: 3, scope: !569)
!651 = !DILocation(line: 109, column: 10, scope: !569)
!652 = !DILocation(line: 109, column: 24, scope: !569)
!653 = !DILocation(line: 110, column: 10, scope: !569)
!654 = !DILocation(line: 110, column: 3, scope: !569)
!655 = distinct !DISubprogram(name: "jpeg_write_raw_data", scope: !1, file: !1, line: 120, type: !656, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !529)
!656 = !DISubroutineType(types: !657)
!657 = !{!223, !287, !464, !223}
!658 = !DILocalVariable(name: "cinfo", arg: 1, scope: !655, file: !1, line: 120, type: !287)
!659 = !DILocation(line: 120, column: 37, scope: !655)
!660 = !DILocalVariable(name: "data", arg: 2, scope: !655, file: !1, line: 120, type: !464)
!661 = !DILocation(line: 120, column: 55, scope: !655)
!662 = !DILocalVariable(name: "num_lines", arg: 3, scope: !655, file: !1, line: 121, type: !223)
!663 = !DILocation(line: 121, column: 19, scope: !655)
!664 = !DILocalVariable(name: "lines_per_iMCU_row", scope: !655, file: !1, line: 123, type: !223)
!665 = !DILocation(line: 123, column: 14, scope: !655)
!666 = !DILocation(line: 125, column: 7, scope: !667)
!667 = distinct !DILexicalBlock(scope: !655, file: !1, line: 125, column: 7)
!668 = !DILocation(line: 125, column: 14, scope: !667)
!669 = !DILocation(line: 125, column: 27, scope: !667)
!670 = !DILocation(line: 126, column: 5, scope: !667)
!671 = !DILocation(line: 127, column: 7, scope: !672)
!672 = distinct !DILexicalBlock(scope: !655, file: !1, line: 127, column: 7)
!673 = !DILocation(line: 127, column: 14, scope: !672)
!674 = !DILocation(line: 127, column: 31, scope: !672)
!675 = !DILocation(line: 127, column: 38, scope: !672)
!676 = !DILocation(line: 127, column: 28, scope: !672)
!677 = !DILocation(line: 128, column: 5, scope: !678)
!678 = distinct !DILexicalBlock(scope: !672, file: !1, line: 127, column: 52)
!679 = !DILocation(line: 129, column: 5, scope: !678)
!680 = !DILocation(line: 133, column: 7, scope: !681)
!681 = distinct !DILexicalBlock(scope: !655, file: !1, line: 133, column: 7)
!682 = !DILocation(line: 133, column: 14, scope: !681)
!683 = !DILocation(line: 133, column: 23, scope: !681)
!684 = !DILocation(line: 134, column: 44, scope: !685)
!685 = distinct !DILexicalBlock(scope: !681, file: !1, line: 133, column: 32)
!686 = !DILocation(line: 134, column: 51, scope: !685)
!687 = !DILocation(line: 134, column: 37, scope: !685)
!688 = !DILocation(line: 134, column: 5, scope: !685)
!689 = !DILocation(line: 134, column: 12, scope: !685)
!690 = !DILocation(line: 134, column: 22, scope: !685)
!691 = !DILocation(line: 134, column: 35, scope: !685)
!692 = !DILocation(line: 135, column: 42, scope: !685)
!693 = !DILocation(line: 135, column: 49, scope: !685)
!694 = !DILocation(line: 135, column: 35, scope: !685)
!695 = !DILocation(line: 135, column: 5, scope: !685)
!696 = !DILocation(line: 135, column: 12, scope: !685)
!697 = !DILocation(line: 135, column: 22, scope: !685)
!698 = !DILocation(line: 135, column: 33, scope: !685)
!699 = !DILocation(line: 136, column: 7, scope: !685)
!700 = !DILocation(line: 136, column: 14, scope: !685)
!701 = !DILocation(line: 136, column: 24, scope: !685)
!702 = !DILocation(line: 136, column: 58, scope: !685)
!703 = !DILocation(line: 136, column: 5, scope: !685)
!704 = !DILocation(line: 137, column: 3, scope: !685)
!705 = !DILocation(line: 144, column: 7, scope: !706)
!706 = distinct !DILexicalBlock(scope: !655, file: !1, line: 144, column: 7)
!707 = !DILocation(line: 144, column: 14, scope: !706)
!708 = !DILocation(line: 144, column: 22, scope: !706)
!709 = !DILocation(line: 145, column: 7, scope: !706)
!710 = !DILocation(line: 145, column: 14, scope: !706)
!711 = !DILocation(line: 145, column: 22, scope: !706)
!712 = !DILocation(line: 145, column: 37, scope: !706)
!713 = !DILocation(line: 145, column: 5, scope: !706)
!714 = !DILocation(line: 148, column: 24, scope: !655)
!715 = !DILocation(line: 148, column: 31, scope: !655)
!716 = !DILocation(line: 148, column: 49, scope: !655)
!717 = !DILocation(line: 148, column: 22, scope: !655)
!718 = !DILocation(line: 149, column: 7, scope: !719)
!719 = distinct !DILexicalBlock(scope: !655, file: !1, line: 149, column: 7)
!720 = !DILocation(line: 149, column: 19, scope: !719)
!721 = !DILocation(line: 149, column: 17, scope: !719)
!722 = !DILocation(line: 150, column: 5, scope: !719)
!723 = !DILocation(line: 153, column: 11, scope: !724)
!724 = distinct !DILexicalBlock(scope: !655, file: !1, line: 153, column: 7)
!725 = !DILocation(line: 153, column: 18, scope: !724)
!726 = !DILocation(line: 153, column: 24, scope: !724)
!727 = !DILocation(line: 153, column: 40, scope: !724)
!728 = !DILocation(line: 153, column: 47, scope: !724)
!729 = !DILocation(line: 153, column: 9, scope: !724)
!730 = !DILocation(line: 153, column: 7, scope: !724)
!731 = !DILocation(line: 155, column: 5, scope: !732)
!732 = distinct !DILexicalBlock(scope: !724, file: !1, line: 153, column: 54)
!733 = !DILocation(line: 159, column: 27, scope: !655)
!734 = !DILocation(line: 159, column: 3, scope: !655)
!735 = !DILocation(line: 159, column: 10, scope: !655)
!736 = !DILocation(line: 159, column: 24, scope: !655)
!737 = !DILocation(line: 160, column: 10, scope: !655)
!738 = !DILocation(line: 160, column: 3, scope: !655)
!739 = !DILocation(line: 161, column: 1, scope: !655)
