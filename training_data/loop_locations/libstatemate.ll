; ModuleID = '../src/statemate/libstatemate.c'
source_filename = "../src/statemate/libstatemate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Bitlist = internal unnamed_addr global [64 x i8] zeroinitializer, align 16
@time = dso_local local_unnamed_addr global i64 0, align 8
@tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRL = dso_local local_unnamed_addr global i64 0, align 8
@tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRLexited_BEREIT_FH_TUERMODUL_CTRL = dso_local local_unnamed_addr global i64 0, align 8
@sc_FH_TUERMODUL_CTRL_2375_2 = dso_local local_unnamed_addr global i64 0, align 8
@FH_TUERMODUL__MFHA_copy = dso_local local_unnamed_addr global i8 0, align 1
@sc_FH_TUERMODUL_CTRL_2352_1 = dso_local local_unnamed_addr global i64 0, align 8
@FH_TUERMODUL__MFHZ_copy = dso_local local_unnamed_addr global i8 0, align 1
@sc_FH_TUERMODUL_CTRL_2329_1 = dso_local local_unnamed_addr global i64 0, align 8
@sc_FH_TUERMODUL_CTRL_1781_10 = dso_local local_unnamed_addr global i64 0, align 8
@sc_FH_TUERMODUL_CTRL_1739_10 = dso_local local_unnamed_addr global i64 0, align 8
@BLOCK_ERKENNUNG_CTRL__N = dso_local local_unnamed_addr global i32 0, align 4
@BLOCK_ERKENNUNG_CTRL__N_old = dso_local local_unnamed_addr global i32 0, align 4
@tm_entered_EINSCHALTSTROM_MESSEN_BLOCK_ERKENNUNG_CTRLch_BLOCK_ERKENNUNG_CTRL__N_copy = dso_local local_unnamed_addr global i64 0, align 8
@NICHT_INITIALISIERT_NICHT_INITIALISIERT_next_state = dso_local local_unnamed_addr global i8 0, align 1
@ZENTRAL_KINDERSICHERUNG_CTRL_next_state = dso_local local_unnamed_addr global i8 0, align 1
@MEC_KINDERSICHERUNG_CTRL_next_state = dso_local local_unnamed_addr global i8 0, align 1
@KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state = dso_local local_unnamed_addr global i8 0, align 1
@B_FH_TUERMODUL_CTRL_next_state = dso_local local_unnamed_addr global i8 0, align 1
@A_FH_TUERMODUL_CTRL_next_state = dso_local local_unnamed_addr global i8 0, align 1
@WIEDERHOLSPERRE_FH_TUERMODUL_CTRL_next_state = dso_local local_unnamed_addr global i8 0, align 1
@INITIALISIERT_FH_TUERMODUL_CTRL_next_state = dso_local local_unnamed_addr global i8 0, align 1
@TIPP_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state = dso_local local_unnamed_addr global i8 0, align 1
@MANUELL_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state = dso_local local_unnamed_addr global i8 0, align 1
@OEFFNEN_FH_TUERMODUL_CTRL_next_state = dso_local local_unnamed_addr global i8 0, align 1
@SCHLIESSEN_FH_TUERMODUL_CTRL_next_state = dso_local local_unnamed_addr global i8 0, align 1
@FH_STEUERUNG_DUMMY_FH_STEUERUNG_DUMMY_next_state = dso_local local_unnamed_addr global i8 0, align 1
@EINKLEMMSCHUTZ_CTRL_EINKLEMMSCHUTZ_CTRL_next_state = dso_local local_unnamed_addr global i8 0, align 1
@BEWEGUNG_BLOCK_ERKENNUNG_CTRL_next_state = dso_local local_unnamed_addr global i8 0, align 1
@BLOCK_ERKENNUNG_CTRL_BLOCK_ERKENNUNG_CTRL_next_state = dso_local local_unnamed_addr global i8 0, align 1
@FH_TUERMODUL__SFHA_ZENTRAL = dso_local local_unnamed_addr global i8 0, align 1
@FH_TUERMODUL__SFHZ_ZENTRAL = dso_local local_unnamed_addr global i8 0, align 1
@stable = dso_local local_unnamed_addr global i8 0, align 1
@FH_TUERMODUL__SFHZ_copy = dso_local local_unnamed_addr global i8 0, align 1
@FH_TUERMODUL__SFHA_copy = dso_local local_unnamed_addr global i8 0, align 1
@FH_TUERMODUL__SFHA_ZENTRAL_old = dso_local local_unnamed_addr global i8 0, align 1
@FH_TUERMODUL__SFHZ_ZENTRAL_old = dso_local local_unnamed_addr global i8 0, align 1
@FH_TUERMODUL__SFHA_MEC = dso_local local_unnamed_addr global i8 0, align 1
@FH_TUERMODUL__SFHZ_MEC = dso_local local_unnamed_addr global i8 0, align 1
@FH_TUERMODUL__SFHA_MEC_old = dso_local local_unnamed_addr global i8 0, align 1
@FH_TUERMODUL__SFHZ_MEC_old = dso_local local_unnamed_addr global i8 0, align 1
@FH_TUERMODUL__KL_50 = dso_local local_unnamed_addr global i8 0, align 1
@FH_TUERMODUL_CTRL__N = dso_local local_unnamed_addr global i32 0, align 4
@FH_TUERMODUL_CTRL__N_old = dso_local local_unnamed_addr global i32 0, align 4
@FH_TUERMODUL__BLOCK = dso_local local_unnamed_addr global i8 0, align 1
@FH_TUERMODUL__BLOCK_old = dso_local local_unnamed_addr global i8 0, align 1
@FH_TUERMODUL__MFHZ = dso_local local_unnamed_addr global i8 0, align 1
@FH_TUERMODUL__SFHZ = dso_local local_unnamed_addr global i8 0, align 1
@FH_TUERMODUL__SFHA = dso_local local_unnamed_addr global i8 0, align 1
@FH_TUERMODUL_CTRL__INREVERS1 = dso_local local_unnamed_addr global i8 0, align 1
@FH_TUERMODUL_CTRL__INREVERS2 = dso_local local_unnamed_addr global i8 0, align 1
@FH_TUERMODUL__MFHA = dso_local local_unnamed_addr global i8 0, align 1
@FH_TUERMODUL__POSITION = dso_local local_unnamed_addr global i32 0, align 4
@FH_TUERMODUL__SFHZ_old = dso_local local_unnamed_addr global i8 0, align 1
@FH_TUERMODUL__SFHA_old = dso_local local_unnamed_addr global i8 0, align 1
@FH_TUERMODUL_CTRL__INREVERS2_copy = dso_local local_unnamed_addr global i8 0, align 1
@FH_TUERMODUL_CTRL__INREVERS1_copy = dso_local local_unnamed_addr global i8 0, align 1
@step = dso_local local_unnamed_addr global i8 0, align 1
@FH_TUERMODUL__EKS_LEISTE_AKTIV = dso_local local_unnamed_addr global i8 0, align 1
@FH_TUERMODUL__EKS_LEISTE_AKTIV_old = dso_local local_unnamed_addr global i8 0, align 1
@FH_TUERMODUL__I_EIN = dso_local local_unnamed_addr global i32 0, align 4
@FH_TUERMODUL__I_EIN_old = dso_local local_unnamed_addr global i32 0, align 4
@FH_TUERMODUL__BLOCK_copy = dso_local local_unnamed_addr global i8 0, align 1
@BLOCK_ERKENNUNG_CTRL__I_EIN_MAX = dso_local local_unnamed_addr global i32 0, align 4
@FH_TUERMODUL__MFHA_old = dso_local local_unnamed_addr global i8 0, align 1
@FH_TUERMODUL__MFHZ_old = dso_local local_unnamed_addr global i8 0, align 1
@FH_DU__MFHZ = dso_local local_unnamed_addr global i8 0, align 1
@FH_DU__MFHZ_old = dso_local local_unnamed_addr global i8 0, align 1
@FH_DU__MFH = dso_local local_unnamed_addr global i32 0, align 4
@FH_DU__MFHA = dso_local local_unnamed_addr global i8 0, align 1
@FH_DU__MFHA_old = dso_local local_unnamed_addr global i8 0, align 1
@FH_DU__S_FH_TMBFZUCAN = dso_local local_unnamed_addr global i8 0, align 1
@FH_DU__S_FH_TMBFZUCAN_old = dso_local local_unnamed_addr global i8 0, align 1
@FH_DU__DOOR_ID = dso_local local_unnamed_addr global i8 0, align 1
@FH_DU__S_FH_FTZU = dso_local local_unnamed_addr global i8 0, align 1
@FH_DU__S_FH_TMBFZUDISC = dso_local local_unnamed_addr global i8 0, align 1
@FH_DU__S_FH_TMBFZUDISC_old = dso_local local_unnamed_addr global i8 0, align 1
@FH_DU__S_FH_TMBFAUFCAN = dso_local local_unnamed_addr global i8 0, align 1
@FH_DU__S_FH_TMBFAUFCAN_old = dso_local local_unnamed_addr global i8 0, align 1
@FH_DU__S_FH_FTAUF = dso_local local_unnamed_addr global i8 0, align 1
@FH_DU__S_FH_TMBFAUFDISC = dso_local local_unnamed_addr global i8 0, align 1
@FH_DU__S_FH_TMBFAUFDISC_old = dso_local local_unnamed_addr global i8 0, align 1
@FH_DU__S_FH_AUFDISC = dso_local local_unnamed_addr global i8 0, align 1
@FH_DU__S_FH_ZUDISC = dso_local local_unnamed_addr global i8 0, align 1
@FH_DU__I_EIN = dso_local local_unnamed_addr global i32 0, align 4
@FH_DU__EKS_LEISTE_AKTIV = dso_local local_unnamed_addr global i8 0, align 1
@FH_DU__POSITION = dso_local local_unnamed_addr global i32 0, align 4
@FH_TUERMODUL__FT = dso_local local_unnamed_addr global i8 0, align 1
@FH_DU__FT = dso_local local_unnamed_addr global i8 0, align 1
@FH_DU__KL_50 = dso_local local_unnamed_addr global i8 0, align 1
@FH_DU__BLOCK = dso_local local_unnamed_addr global i8 0, align 1
@FH_DU__MFH_copy = dso_local local_unnamed_addr global i32 0, align 4
@FH_DU__I_EIN_old = dso_local local_unnamed_addr global i32 0, align 4
@FH_DU__EKS_LEISTE_AKTIV_old = dso_local local_unnamed_addr global i8 0, align 1
@FH_DU__BLOCK_copy = dso_local local_unnamed_addr global i8 0, align 1
@FH_DU__BLOCK_old = dso_local local_unnamed_addr global i8 0, align 1
@FH_DU__MFHZ_copy = dso_local local_unnamed_addr global i8 0, align 1
@FH_DU__MFHA_copy = dso_local local_unnamed_addr global i8 0, align 1
@FH_TUERMODUL_CTRL__N_copy = dso_local local_unnamed_addr global i32 0, align 4
@BLOCK_ERKENNUNG_CTRL__I_EIN_MAX_copy = dso_local local_unnamed_addr global i32 0, align 4
@BLOCK_ERKENNUNG_CTRL__N_copy = dso_local local_unnamed_addr global i32 0, align 4
@FH_TUERMODUL_CTRL__FT = dso_local local_unnamed_addr global i8 0, align 1
@FH_TUERMODUL__COM_OPEN = dso_local local_unnamed_addr global i8 0, align 1
@FH_TUERMODUL__COM_CLOSE = dso_local local_unnamed_addr global i8 0, align 1
@FH_DU__S_FH_TMBFAUFCAN_copy = dso_local local_unnamed_addr global i8 0, align 1
@FH_DU__S_FH_TMBFZUCAN_copy = dso_local local_unnamed_addr global i8 0, align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @interface() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 4), align 4, !tbaa !5
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = load i64, ptr @time, align 8, !tbaa !8
  store i64 %4, ptr @tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRL, align 8, !tbaa !8
  br label %9

5:                                                ; preds = %0
  %6 = load i8, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 6), align 2
  %7 = icmp eq i8 %6, 0
  %8 = load i64, ptr @time, align 8
  br i1 %7, label %11, label %9

9:                                                ; preds = %5, %3
  %10 = phi i64 [ %4, %3 ], [ %8, %5 ]
  store i64 %10, ptr @tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRLexited_BEREIT_FH_TUERMODUL_CTRL, align 8, !tbaa !8
  br label %11

11:                                               ; preds = %5, %9
  %12 = phi i64 [ %8, %5 ], [ %10, %9 ]
  %13 = load i64, ptr @sc_FH_TUERMODUL_CTRL_2375_2, align 8, !tbaa !8
  %14 = icmp eq i64 %13, 0
  %15 = icmp eq i64 %12, %13
  %16 = select i1 %14, i1 true, i1 %15
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  store i8 0, ptr @FH_TUERMODUL__MFHA_copy, align 1, !tbaa !5
  store i64 0, ptr @sc_FH_TUERMODUL_CTRL_2375_2, align 8, !tbaa !8
  br label %18

18:                                               ; preds = %17, %11
  %19 = load i64, ptr @sc_FH_TUERMODUL_CTRL_2352_1, align 8, !tbaa !8
  %20 = icmp eq i64 %19, 0
  %21 = icmp eq i64 %12, %19
  %22 = select i1 %20, i1 true, i1 %21
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i8 0, ptr @FH_TUERMODUL__MFHZ_copy, align 1, !tbaa !5
  store i64 0, ptr @sc_FH_TUERMODUL_CTRL_2352_1, align 8, !tbaa !8
  br label %24

24:                                               ; preds = %23, %18
  %25 = load i64, ptr @sc_FH_TUERMODUL_CTRL_2329_1, align 8, !tbaa !8
  %26 = icmp eq i64 %25, 0
  %27 = icmp eq i64 %12, %25
  %28 = select i1 %26, i1 true, i1 %27
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  store i8 0, ptr @FH_TUERMODUL__MFHZ_copy, align 1, !tbaa !5
  store i64 0, ptr @sc_FH_TUERMODUL_CTRL_2329_1, align 8, !tbaa !8
  br label %30

30:                                               ; preds = %29, %24
  %31 = load i64, ptr @sc_FH_TUERMODUL_CTRL_1781_10, align 8, !tbaa !8
  %32 = icmp eq i64 %31, 0
  %33 = icmp eq i64 %12, %31
  %34 = select i1 %32, i1 true, i1 %33
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  store i64 0, ptr @sc_FH_TUERMODUL_CTRL_1781_10, align 8, !tbaa !8
  br label %36

36:                                               ; preds = %35, %30
  %37 = load i64, ptr @sc_FH_TUERMODUL_CTRL_1739_10, align 8, !tbaa !8
  %38 = icmp eq i64 %37, 0
  %39 = icmp eq i64 %12, %37
  %40 = select i1 %38, i1 true, i1 %39
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  store i64 0, ptr @sc_FH_TUERMODUL_CTRL_1739_10, align 8, !tbaa !8
  br label %42

42:                                               ; preds = %41, %36
  %43 = load i8, ptr @Bitlist, align 16, !tbaa !5
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i32, ptr @BLOCK_ERKENNUNG_CTRL__N, align 4, !tbaa !10
  %47 = load i32, ptr @BLOCK_ERKENNUNG_CTRL__N_old, align 4, !tbaa !10
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %50, label %49

49:                                               ; preds = %45, %42
  store i64 %12, ptr @tm_entered_EINSCHALTSTROM_MESSEN_BLOCK_ERKENNUNG_CTRLch_BLOCK_ERKENNUNG_CTRL__N_copy, align 8, !tbaa !8
  br label %50

50:                                               ; preds = %49, %45
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @init() local_unnamed_addr #1 {
  store i64 0, ptr @tm_entered_EINSCHALTSTROM_MESSEN_BLOCK_ERKENNUNG_CTRLch_BLOCK_ERKENNUNG_CTRL__N_copy, align 8, !tbaa !8
  store i64 0, ptr @tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRLexited_BEREIT_FH_TUERMODUL_CTRL, align 8, !tbaa !8
  store i64 0, ptr @tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRL, align 8, !tbaa !8
  store i8 0, ptr @NICHT_INITIALISIERT_NICHT_INITIALISIERT_next_state, align 1, !tbaa !5
  store i8 0, ptr @ZENTRAL_KINDERSICHERUNG_CTRL_next_state, align 1, !tbaa !5
  store i8 0, ptr @MEC_KINDERSICHERUNG_CTRL_next_state, align 1, !tbaa !5
  store i8 0, ptr @KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state, align 1, !tbaa !5
  store i8 0, ptr @B_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 0, ptr @A_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 0, ptr @WIEDERHOLSPERRE_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 0, ptr @INITIALISIERT_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 0, ptr @TIPP_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 0, ptr @MANUELL_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 0, ptr @OEFFNEN_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 0, ptr @SCHLIESSEN_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 0, ptr @FH_STEUERUNG_DUMMY_FH_STEUERUNG_DUMMY_next_state, align 1, !tbaa !5
  store i8 0, ptr @EINKLEMMSCHUTZ_CTRL_EINKLEMMSCHUTZ_CTRL_next_state, align 1, !tbaa !5
  store i8 0, ptr @BEWEGUNG_BLOCK_ERKENNUNG_CTRL_next_state, align 1, !tbaa !5
  store i8 0, ptr @BLOCK_ERKENNUNG_CTRL_BLOCK_ERKENNUNG_CTRL_next_state, align 1, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @generic_KINDERSICHERUNG_CTRL() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 10), align 2, !tbaa !5
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %101, label %3

3:                                                ; preds = %0
  %4 = load i8, ptr @KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state, align 1, !tbaa !5
  switch i8 %4, label %100 [
    i8 1, label %5
    i8 2, label %34
    i8 3, label %63
  ]

5:                                                ; preds = %3
  %6 = load i8, ptr @FH_TUERMODUL__SFHA_ZENTRAL, align 1, !tbaa !5
  %7 = icmp ne i8 %6, 0
  %8 = load i8, ptr @FH_TUERMODUL__SFHZ_ZENTRAL, align 1
  %9 = icmp ne i8 %8, 0
  %10 = select i1 %7, i1 true, i1 %9
  br i1 %10, label %12, label %11

11:                                               ; preds = %5
  store i8 0, ptr @stable, align 1, !tbaa !5
  store i8 0, ptr @FH_TUERMODUL__SFHZ_copy, align 1, !tbaa !5
  store i8 0, ptr @FH_TUERMODUL__SFHA_copy, align 1, !tbaa !5
  store i8 3, ptr @KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state, align 1, !tbaa !5
  store i8 0, ptr @ZENTRAL_KINDERSICHERUNG_CTRL_next_state, align 1, !tbaa !5
  br label %101

12:                                               ; preds = %5
  %13 = load i8, ptr @ZENTRAL_KINDERSICHERUNG_CTRL_next_state, align 1, !tbaa !5
  %14 = icmp eq i8 %13, 1
  br i1 %14, label %15, label %33

15:                                               ; preds = %12
  %16 = icmp eq i8 %6, 0
  %17 = load i8, ptr @FH_TUERMODUL__SFHA_ZENTRAL_old, align 1
  %18 = icmp ne i8 %17, 0
  %19 = select i1 %16, i1 true, i1 %18
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  store i8 0, ptr @stable, align 1, !tbaa !5
  store i8 1, ptr @FH_TUERMODUL__SFHA_copy, align 1, !tbaa !5
  store i8 1, ptr @ZENTRAL_KINDERSICHERUNG_CTRL_next_state, align 1, !tbaa !5
  br label %101

21:                                               ; preds = %15
  %22 = icmp eq i8 %8, 0
  %23 = load i8, ptr @FH_TUERMODUL__SFHZ_ZENTRAL_old, align 1
  %24 = icmp ne i8 %23, 0
  %25 = select i1 %22, i1 true, i1 %24
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  store i8 0, ptr @stable, align 1, !tbaa !5
  store i8 1, ptr @FH_TUERMODUL__SFHZ_copy, align 1, !tbaa !5
  store i8 1, ptr @ZENTRAL_KINDERSICHERUNG_CTRL_next_state, align 1, !tbaa !5
  br label %101

27:                                               ; preds = %21
  %28 = select i1 %16, i1 %18, i1 false
  br i1 %28, label %29, label %30

29:                                               ; preds = %27
  store i8 0, ptr @stable, align 1, !tbaa !5
  store i8 0, ptr @FH_TUERMODUL__SFHA_copy, align 1, !tbaa !5
  store i8 1, ptr @ZENTRAL_KINDERSICHERUNG_CTRL_next_state, align 1, !tbaa !5
  br label %101

30:                                               ; preds = %27
  %31 = select i1 %22, i1 %24, i1 false
  br i1 %31, label %32, label %101

32:                                               ; preds = %30
  store i8 0, ptr @stable, align 1, !tbaa !5
  store i8 0, ptr @FH_TUERMODUL__SFHZ_copy, align 1, !tbaa !5
  store i8 1, ptr @ZENTRAL_KINDERSICHERUNG_CTRL_next_state, align 1, !tbaa !5
  br label %101

33:                                               ; preds = %12
  store i8 0, ptr @stable, align 1, !tbaa !5
  br label %101

34:                                               ; preds = %3
  %35 = load i8, ptr @FH_TUERMODUL__SFHA_MEC, align 1, !tbaa !5
  %36 = icmp ne i8 %35, 0
  %37 = load i8, ptr @FH_TUERMODUL__SFHZ_MEC, align 1
  %38 = icmp ne i8 %37, 0
  %39 = select i1 %36, i1 true, i1 %38
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  store i8 0, ptr @stable, align 1, !tbaa !5
  store i8 0, ptr @FH_TUERMODUL__SFHZ_copy, align 1, !tbaa !5
  store i8 0, ptr @FH_TUERMODUL__SFHA_copy, align 1, !tbaa !5
  store i8 3, ptr @KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state, align 1, !tbaa !5
  store i8 0, ptr @MEC_KINDERSICHERUNG_CTRL_next_state, align 1, !tbaa !5
  br label %101

41:                                               ; preds = %34
  %42 = load i8, ptr @MEC_KINDERSICHERUNG_CTRL_next_state, align 1, !tbaa !5
  %43 = icmp eq i8 %42, 1
  br i1 %43, label %44, label %62

44:                                               ; preds = %41
  %45 = icmp eq i8 %35, 0
  %46 = load i8, ptr @FH_TUERMODUL__SFHA_MEC_old, align 1
  %47 = icmp ne i8 %46, 0
  %48 = select i1 %45, i1 true, i1 %47
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  store i8 0, ptr @stable, align 1, !tbaa !5
  store i8 1, ptr @FH_TUERMODUL__SFHA_copy, align 1, !tbaa !5
  store i8 1, ptr @MEC_KINDERSICHERUNG_CTRL_next_state, align 1, !tbaa !5
  br label %101

50:                                               ; preds = %44
  %51 = icmp eq i8 %37, 0
  %52 = load i8, ptr @FH_TUERMODUL__SFHZ_MEC_old, align 1
  %53 = icmp ne i8 %52, 0
  %54 = select i1 %51, i1 true, i1 %53
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  store i8 0, ptr @stable, align 1, !tbaa !5
  store i8 1, ptr @FH_TUERMODUL__SFHZ_copy, align 1, !tbaa !5
  store i8 1, ptr @MEC_KINDERSICHERUNG_CTRL_next_state, align 1, !tbaa !5
  br label %101

56:                                               ; preds = %50
  %57 = select i1 %45, i1 %47, i1 false
  br i1 %57, label %58, label %59

58:                                               ; preds = %56
  store i8 0, ptr @stable, align 1, !tbaa !5
  store i8 0, ptr @FH_TUERMODUL__SFHA_copy, align 1, !tbaa !5
  store i8 1, ptr @MEC_KINDERSICHERUNG_CTRL_next_state, align 1, !tbaa !5
  br label %101

59:                                               ; preds = %56
  %60 = select i1 %51, i1 %53, i1 false
  br i1 %60, label %61, label %101

61:                                               ; preds = %59
  store i8 0, ptr @stable, align 1, !tbaa !5
  store i8 0, ptr @FH_TUERMODUL__SFHZ_copy, align 1, !tbaa !5
  store i8 1, ptr @MEC_KINDERSICHERUNG_CTRL_next_state, align 1, !tbaa !5
  br label %101

62:                                               ; preds = %41
  store i8 0, ptr @stable, align 1, !tbaa !5
  br label %101

63:                                               ; preds = %3
  %64 = load i8, ptr @FH_TUERMODUL__KL_50, align 1, !tbaa !5
  %65 = icmp eq i8 %64, 0
  %66 = load i8, ptr @FH_TUERMODUL__SFHZ_MEC, align 1
  %67 = icmp ne i8 %66, 0
  %68 = select i1 %65, i1 %67, i1 false
  %69 = load i8, ptr @FH_TUERMODUL__SFHA_MEC, align 1
  %70 = icmp ne i8 %69, 0
  %71 = select i1 %68, i1 %70, i1 false
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  store i8 0, ptr @stable, align 1, !tbaa !5
  store i8 1, ptr @FH_TUERMODUL__SFHZ_copy, align 1, !tbaa !5
  store i8 1, ptr @FH_TUERMODUL__SFHA_copy, align 1, !tbaa !5
  store i8 2, ptr @KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state, align 1, !tbaa !5
  br label %101

73:                                               ; preds = %63
  %74 = icmp eq i8 %69, 0
  %75 = select i1 %68, i1 %74, i1 false
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store i8 0, ptr @stable, align 1, !tbaa !5
  store i8 1, ptr @FH_TUERMODUL__SFHZ_copy, align 1, !tbaa !5
  store i8 2, ptr @KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state, align 1, !tbaa !5
  br label %101

77:                                               ; preds = %73
  %78 = icmp eq i8 %66, 0
  %79 = select i1 %65, i1 %78, i1 false
  %80 = select i1 %79, i1 %70, i1 false
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  store i8 0, ptr @stable, align 1, !tbaa !5
  store i8 1, ptr @FH_TUERMODUL__SFHA_copy, align 1, !tbaa !5
  store i8 2, ptr @KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state, align 1, !tbaa !5
  br label %101

82:                                               ; preds = %77
  %83 = load i8, ptr @FH_TUERMODUL__SFHZ_ZENTRAL, align 1, !tbaa !5
  %84 = icmp eq i8 %83, 0
  %85 = load i8, ptr @FH_TUERMODUL__SFHA_ZENTRAL, align 1
  %86 = icmp ne i8 %85, 0
  %87 = or i8 %83, %64
  %88 = icmp eq i8 %87, 0
  %89 = select i1 %88, i1 %86, i1 false
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  store i8 0, ptr @stable, align 1, !tbaa !5
  store i8 1, ptr @FH_TUERMODUL__SFHA_copy, align 1, !tbaa !5
  store i8 1, ptr @KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state, align 1, !tbaa !5
  br label %101

91:                                               ; preds = %82
  %92 = icmp ne i8 %83, 0
  %93 = select i1 %92, i1 %86, i1 false
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  store i8 0, ptr @stable, align 1, !tbaa !5
  store i8 1, ptr @FH_TUERMODUL__SFHA_copy, align 1, !tbaa !5
  store i8 1, ptr @FH_TUERMODUL__SFHZ_copy, align 1, !tbaa !5
  store i8 1, ptr @KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state, align 1, !tbaa !5
  br label %101

95:                                               ; preds = %91
  %96 = or i8 %85, %64
  %97 = icmp ne i8 %96, 0
  %98 = select i1 %84, i1 true, i1 %97
  br i1 %98, label %101, label %99

99:                                               ; preds = %95
  store i8 0, ptr @stable, align 1, !tbaa !5
  store i8 1, ptr @FH_TUERMODUL__SFHZ_copy, align 1, !tbaa !5
  store i8 1, ptr @KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state, align 1, !tbaa !5
  br label %101

100:                                              ; preds = %3
  store i8 0, ptr @stable, align 1, !tbaa !5
  store i8 3, ptr @KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state, align 1, !tbaa !5
  br label %101

101:                                              ; preds = %11, %40, %72, %76, %81, %90, %94, %99, %100, %30, %33, %32, %29, %26, %20, %59, %62, %61, %58, %55, %49, %95, %0
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @generic_FH_TUERMODUL_CTRL() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 13), align 1, !tbaa !5
  %2 = icmp ne i8 %1, 0
  %3 = load i8, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 15), align 1
  %4 = icmp eq i8 %3, 0
  %5 = select i1 %2, i1 true, i1 %4
  %6 = load i8, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 14), align 2
  %7 = icmp ne i8 %6, 0
  %8 = select i1 %5, i1 true, i1 %7
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 4), align 4, !tbaa !5
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 6), align 2, !tbaa !5
  br label %254

10:                                               ; preds = %0
  %11 = icmp eq i8 %1, 0
  br i1 %11, label %254, label %12

12:                                               ; preds = %10
  %13 = load i8, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 10), align 2, !tbaa !5
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i8 3, ptr @KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state, align 1, !tbaa !5
  br label %16

16:                                               ; preds = %15, %12
  %17 = load i8, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 19), align 1, !tbaa !5
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i8 0, ptr @Bitlist, align 16, !tbaa !5
  store i8 1, ptr @BLOCK_ERKENNUNG_CTRL_BLOCK_ERKENNUNG_CTRL_next_state, align 1, !tbaa !5
  br label %20

20:                                               ; preds = %19, %16
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 11), align 1, !tbaa !5
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 20), align 4, !tbaa !5
  %21 = load i8, ptr @B_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  switch i8 %21, label %203 [
    i8 1, label %22
    i8 2, label %29
    i8 3, label %59
  ]

22:                                               ; preds = %20
  %23 = load i32, ptr @FH_TUERMODUL_CTRL__N, align 4, !tbaa !10
  %24 = icmp ne i32 %23, 59
  %25 = load i32, ptr @FH_TUERMODUL_CTRL__N_old, align 4
  %26 = icmp eq i32 %25, 59
  %27 = select i1 %24, i1 true, i1 %26
  br i1 %27, label %204, label %28

28:                                               ; preds = %22
  store i8 0, ptr @stable, align 1, !tbaa !5
  store i8 3, ptr @B_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 3, ptr @INITIALISIERT_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  br label %204

29:                                               ; preds = %20
  %30 = load i8, ptr @FH_TUERMODUL__BLOCK, align 1, !tbaa !5
  %31 = icmp ne i8 %30, 0
  %32 = load i8, ptr @FH_TUERMODUL__BLOCK_old, align 1
  %33 = icmp eq i8 %32, 0
  %34 = select i1 %31, i1 %33, i1 false
  %35 = load i8, ptr @FH_TUERMODUL__MFHZ, align 1
  %36 = icmp ne i8 %35, 0
  %37 = select i1 %34, i1 %36, i1 false
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  store i8 0, ptr @stable, align 1, !tbaa !5
  store i8 0, ptr @FH_TUERMODUL__MFHZ_copy, align 1, !tbaa !5
  %39 = load i64, ptr @time, align 8, !tbaa !8
  store i64 %39, ptr @sc_FH_TUERMODUL_CTRL_2329_1, align 8, !tbaa !8
  store i8 3, ptr @B_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 3, ptr @INITIALISIERT_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  br label %204

40:                                               ; preds = %29
  %41 = load i8, ptr @NICHT_INITIALISIERT_NICHT_INITIALISIERT_next_state, align 1, !tbaa !5
  switch i8 %41, label %58 [
    i8 1, label %42
    i8 2, label %46
    i8 3, label %50
  ]

42:                                               ; preds = %40
  %43 = load i8, ptr @FH_TUERMODUL__SFHZ, align 1, !tbaa !5
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %204

45:                                               ; preds = %42
  store i8 0, ptr @stable, align 1, !tbaa !5
  store i8 0, ptr @FH_TUERMODUL__MFHZ_copy, align 1, !tbaa !5
  store i8 3, ptr @NICHT_INITIALISIERT_NICHT_INITIALISIERT_next_state, align 1, !tbaa !5
  br label %204

46:                                               ; preds = %40
  %47 = load i8, ptr @FH_TUERMODUL__SFHA, align 1, !tbaa !5
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %204

49:                                               ; preds = %46
  store i8 0, ptr @stable, align 1, !tbaa !5
  store i8 0, ptr @FH_TUERMODUL__MFHA_copy, align 1, !tbaa !5
  store i8 3, ptr @NICHT_INITIALISIERT_NICHT_INITIALISIERT_next_state, align 1, !tbaa !5
  br label %204

50:                                               ; preds = %40
  %51 = load i8, ptr @FH_TUERMODUL__SFHA, align 1, !tbaa !5
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  store i8 0, ptr @stable, align 1, !tbaa !5
  store i8 1, ptr @FH_TUERMODUL__MFHA_copy, align 1, !tbaa !5
  store i8 2, ptr @NICHT_INITIALISIERT_NICHT_INITIALISIERT_next_state, align 1, !tbaa !5
  br label %204

54:                                               ; preds = %50
  %55 = load i8, ptr @FH_TUERMODUL__SFHZ, align 1, !tbaa !5
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %204, label %57

57:                                               ; preds = %54
  store i8 0, ptr @stable, align 1, !tbaa !5
  store i8 1, ptr @FH_TUERMODUL__MFHZ_copy, align 1, !tbaa !5
  store i8 1, ptr @NICHT_INITIALISIERT_NICHT_INITIALISIERT_next_state, align 1, !tbaa !5
  br label %204

58:                                               ; preds = %40
  store i8 0, ptr @stable, align 1, !tbaa !5
  store i8 3, ptr @NICHT_INITIALISIERT_NICHT_INITIALISIERT_next_state, align 1, !tbaa !5
  br label %204

59:                                               ; preds = %20
  %60 = load i32, ptr @FH_TUERMODUL_CTRL__N, align 4, !tbaa !10
  %61 = icmp slt i32 %60, 61
  %62 = load i32, ptr @FH_TUERMODUL_CTRL__N_old, align 4
  %63 = icmp sgt i32 %62, 60
  %64 = select i1 %61, i1 true, i1 %63
  %65 = load i8, ptr @FH_TUERMODUL_CTRL__INREVERS1, align 1
  %66 = icmp ne i8 %65, 0
  %67 = select i1 %64, i1 true, i1 %66
  %68 = load i8, ptr @FH_TUERMODUL_CTRL__INREVERS2, align 1
  %69 = icmp ne i8 %68, 0
  %70 = select i1 %67, i1 true, i1 %69
  br i1 %70, label %72, label %71

71:                                               ; preds = %59
  store i8 0, ptr @stable, align 1, !tbaa !5
  store i8 0, ptr @FH_TUERMODUL__MFHZ_copy, align 1, !tbaa !5
  store i8 0, ptr @FH_TUERMODUL__MFHA_copy, align 1, !tbaa !5
  store i8 1, ptr @B_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  br label %204

72:                                               ; preds = %59
  %73 = load i8, ptr @FH_TUERMODUL__BLOCK, align 1, !tbaa !5
  %74 = icmp ne i8 %73, 0
  %75 = load i8, ptr @FH_TUERMODUL__BLOCK_old, align 1
  %76 = icmp eq i8 %75, 0
  %77 = select i1 %74, i1 %76, i1 false
  %78 = load i8, ptr @FH_TUERMODUL__MFHA, align 1
  %79 = icmp ne i8 %78, 0
  %80 = select i1 %77, i1 %79, i1 false
  br i1 %80, label %81, label %83

81:                                               ; preds = %72
  store i8 0, ptr @stable, align 1, !tbaa !5
  store i8 0, ptr @FH_TUERMODUL__MFHA_copy, align 1, !tbaa !5
  %82 = load i64, ptr @time, align 8, !tbaa !8
  store i64 %82, ptr @sc_FH_TUERMODUL_CTRL_2375_2, align 8, !tbaa !8
  store i8 2, ptr @B_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 3, ptr @NICHT_INITIALISIERT_NICHT_INITIALISIERT_next_state, align 1, !tbaa !5
  br label %204

83:                                               ; preds = %72
  %84 = load i8, ptr @FH_TUERMODUL__MFHZ, align 1
  %85 = icmp ne i8 %84, 0
  %86 = select i1 %77, i1 %85, i1 false
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  store i8 0, ptr @stable, align 1, !tbaa !5
  store i8 0, ptr @FH_TUERMODUL__MFHZ_copy, align 1, !tbaa !5
  %88 = load i64, ptr @time, align 8, !tbaa !8
  store i64 %88, ptr @sc_FH_TUERMODUL_CTRL_2352_1, align 8, !tbaa !8
  store i8 2, ptr @B_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 3, ptr @NICHT_INITIALISIERT_NICHT_INITIALISIERT_next_state, align 1, !tbaa !5
  br label %204

89:                                               ; preds = %83
  %90 = load i8, ptr @INITIALISIERT_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  switch i8 %90, label %202 [
    i8 1, label %91
    i8 2, label %125
    i8 3, label %183
  ]

91:                                               ; preds = %89
  %92 = load i32, ptr @FH_TUERMODUL__POSITION, align 4, !tbaa !10
  %93 = icmp sgt i32 %92, 404
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  store i8 0, ptr @stable, align 1, !tbaa !5
  store i8 0, ptr @FH_TUERMODUL__MFHA_copy, align 1, !tbaa !5
  store i8 3, ptr @INITIALISIERT_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  br label %204

95:                                               ; preds = %91
  %96 = load i8, ptr @OEFFNEN_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  switch i8 %96, label %124 [
    i8 1, label %97
    i8 2, label %110
  ]

97:                                               ; preds = %95
  %98 = load i8, ptr @FH_TUERMODUL__SFHZ, align 1, !tbaa !5
  %99 = icmp eq i8 %98, 0
  %100 = load i8, ptr @FH_TUERMODUL__SFHZ_old, align 1
  %101 = icmp ne i8 %100, 0
  %102 = select i1 %99, i1 true, i1 %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %97
  %104 = load i8, ptr @FH_TUERMODUL__SFHA, align 1, !tbaa !5
  %105 = icmp eq i8 %104, 0
  %106 = load i8, ptr @FH_TUERMODUL__SFHA_old, align 1
  %107 = icmp ne i8 %106, 0
  %108 = select i1 %105, i1 true, i1 %107
  br i1 %108, label %204, label %109

109:                                              ; preds = %103, %97
  store i8 0, ptr @stable, align 1, !tbaa !5
  store i8 0, ptr @FH_TUERMODUL__MFHA_copy, align 1, !tbaa !5
  store i8 3, ptr @INITIALISIERT_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 0, ptr @OEFFNEN_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  br label %204

110:                                              ; preds = %95
  %111 = load i8, ptr @FH_TUERMODUL__SFHZ, align 1, !tbaa !5
  %112 = icmp eq i8 %111, 0
  %113 = load i8, ptr @FH_TUERMODUL__SFHZ_old, align 1
  %114 = icmp ne i8 %113, 0
  %115 = select i1 %112, i1 true, i1 %114
  br i1 %115, label %117, label %116

116:                                              ; preds = %110
  store i8 0, ptr @stable, align 1, !tbaa !5
  store i8 1, ptr @OEFFNEN_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  br label %204

117:                                              ; preds = %110
  %118 = load i8, ptr @FH_TUERMODUL__SFHA, align 1, !tbaa !5
  %119 = icmp eq i8 %118, 0
  %120 = load i8, ptr @FH_TUERMODUL__SFHA_old, align 1
  %121 = icmp ne i8 %120, 0
  %122 = select i1 %119, i1 %121, i1 false
  br i1 %122, label %123, label %204

123:                                              ; preds = %117
  store i8 0, ptr @stable, align 1, !tbaa !5
  store i8 0, ptr @FH_TUERMODUL__MFHA_copy, align 1, !tbaa !5
  store i8 3, ptr @INITIALISIERT_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 0, ptr @OEFFNEN_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  br label %204

124:                                              ; preds = %95
  store i8 0, ptr @stable, align 1, !tbaa !5
  store i8 2, ptr @OEFFNEN_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  br label %204

125:                                              ; preds = %89
  %126 = load i32, ptr @FH_TUERMODUL__POSITION, align 4, !tbaa !10
  %127 = icmp slt i32 %126, 1
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  store i8 0, ptr @stable, align 1, !tbaa !5
  store i8 0, ptr @FH_TUERMODUL__MFHZ_copy, align 1, !tbaa !5
  store i8 3, ptr @INITIALISIERT_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  br label %204

129:                                              ; preds = %125
  %130 = load i8, ptr @SCHLIESSEN_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  switch i8 %130, label %182 [
    i8 1, label %131
    i8 2, label %156
  ]

131:                                              ; preds = %129
  %132 = load i8, ptr @FH_TUERMODUL__SFHA, align 1, !tbaa !5
  %133 = icmp eq i8 %132, 0
  %134 = load i8, ptr @FH_TUERMODUL__SFHA_old, align 1
  %135 = icmp ne i8 %134, 0
  %136 = select i1 %133, i1 true, i1 %135
  br i1 %136, label %137, label %143

137:                                              ; preds = %131
  %138 = load i8, ptr @FH_TUERMODUL__SFHZ, align 1, !tbaa !5
  %139 = icmp eq i8 %138, 0
  %140 = load i8, ptr @FH_TUERMODUL__SFHZ_old, align 1
  %141 = icmp ne i8 %140, 0
  %142 = select i1 %139, i1 true, i1 %141
  br i1 %142, label %144, label %143

143:                                              ; preds = %137, %131
  store i8 0, ptr @stable, align 1, !tbaa !5
  store i8 0, ptr @FH_TUERMODUL__MFHZ_copy, align 1, !tbaa !5
  store i8 3, ptr @INITIALISIERT_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  br label %204

144:                                              ; preds = %137
  %145 = load i8, ptr @TIPP_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  switch i8 %145, label %155 [
    i8 1, label %146
    i8 2, label %150
  ]

146:                                              ; preds = %144
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 23), align 1, !tbaa !5
  %147 = load i8, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 22), align 2, !tbaa !5
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %204, label %149

149:                                              ; preds = %146
  store i8 0, ptr @stable, align 1, !tbaa !5
  store i8 1, ptr @FH_TUERMODUL__MFHZ_copy, align 1, !tbaa !5
  store i8 0, ptr @FH_TUERMODUL_CTRL__INREVERS2_copy, align 1, !tbaa !5
  store i8 2, ptr @TIPP_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 0, ptr @FH_TUERMODUL__MFHA_copy, align 1, !tbaa !5
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 17), align 1, !tbaa !5
  br label %204

150:                                              ; preds = %144
  %151 = load i8, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 24), align 8, !tbaa !5
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %204, label %153

153:                                              ; preds = %150
  store i8 0, ptr @stable, align 1, !tbaa !5
  store i8 1, ptr @FH_TUERMODUL_CTRL__INREVERS2_copy, align 1, !tbaa !5
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 23), align 1, !tbaa !5
  store i8 1, ptr @TIPP_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 17), align 1, !tbaa !5
  store i8 0, ptr @FH_TUERMODUL__MFHZ_copy, align 1, !tbaa !5
  %154 = load i64, ptr @time, align 8, !tbaa !8
  store i64 %154, ptr @sc_FH_TUERMODUL_CTRL_1781_10, align 8, !tbaa !8
  store i8 1, ptr @FH_TUERMODUL__MFHA_copy, align 1, !tbaa !5
  br label %204

155:                                              ; preds = %144
  store i8 0, ptr @stable, align 1, !tbaa !5
  store i8 2, ptr @TIPP_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 17), align 1, !tbaa !5
  br label %204

156:                                              ; preds = %129
  %157 = load i8, ptr @FH_TUERMODUL__SFHZ, align 1, !tbaa !5
  %158 = icmp eq i8 %157, 0
  %159 = load i8, ptr @FH_TUERMODUL__SFHZ_old, align 1
  %160 = icmp ne i8 %159, 0
  %161 = select i1 %158, i1 %160, i1 false
  br i1 %161, label %162, label %163

162:                                              ; preds = %156
  store i8 0, ptr @stable, align 1, !tbaa !5
  store i8 0, ptr @FH_TUERMODUL__MFHZ_copy, align 1, !tbaa !5
  store i8 3, ptr @INITIALISIERT_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  br label %204

163:                                              ; preds = %156
  %164 = load i8, ptr @MANUELL_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  switch i8 %164, label %181 [
    i8 1, label %165
    i8 2, label %169
  ]

165:                                              ; preds = %163
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 23), align 1, !tbaa !5
  %166 = load i8, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 22), align 2, !tbaa !5
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %204, label %168

168:                                              ; preds = %165
  store i8 0, ptr @stable, align 1, !tbaa !5
  store i8 0, ptr @FH_TUERMODUL_CTRL__INREVERS1_copy, align 1, !tbaa !5
  store i8 2, ptr @MANUELL_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 0, ptr @FH_TUERMODUL__MFHA_copy, align 1, !tbaa !5
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 17), align 1, !tbaa !5
  store i8 1, ptr @FH_TUERMODUL__MFHZ_copy, align 1, !tbaa !5
  br label %204

169:                                              ; preds = %163
  %170 = load i8, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 24), align 8, !tbaa !5
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %174, label %172

172:                                              ; preds = %169
  store i8 0, ptr @stable, align 1, !tbaa !5
  store i8 0, ptr @FH_TUERMODUL__MFHZ_copy, align 1, !tbaa !5
  store i8 1, ptr @FH_TUERMODUL_CTRL__INREVERS1_copy, align 1, !tbaa !5
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 23), align 1, !tbaa !5
  store i8 1, ptr @MANUELL_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 17), align 1, !tbaa !5
  %173 = load i64, ptr @time, align 8, !tbaa !8
  store i64 %173, ptr @sc_FH_TUERMODUL_CTRL_1739_10, align 8, !tbaa !8
  store i8 1, ptr @FH_TUERMODUL__MFHA_copy, align 1, !tbaa !5
  br label %204

174:                                              ; preds = %169
  %175 = load i8, ptr @FH_TUERMODUL__SFHA, align 1, !tbaa !5
  %176 = icmp eq i8 %175, 0
  %177 = load i8, ptr @FH_TUERMODUL__SFHA_old, align 1
  %178 = icmp ne i8 %177, 0
  %179 = select i1 %176, i1 true, i1 %178
  br i1 %179, label %204, label %180

180:                                              ; preds = %174
  store i8 0, ptr @stable, align 1, !tbaa !5
  store i8 1, ptr @SCHLIESSEN_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 0, ptr @MANUELL_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  br label %204

181:                                              ; preds = %163
  store i8 0, ptr @stable, align 1, !tbaa !5
  store i8 2, ptr @MANUELL_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 17), align 1, !tbaa !5
  store i8 1, ptr @FH_TUERMODUL__MFHZ_copy, align 1, !tbaa !5
  br label %204

182:                                              ; preds = %129
  store i8 0, ptr @stable, align 1, !tbaa !5
  store i8 2, ptr @SCHLIESSEN_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 2, ptr @MANUELL_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 17), align 1, !tbaa !5
  store i8 1, ptr @FH_TUERMODUL__MFHZ_copy, align 1, !tbaa !5
  br label %204

183:                                              ; preds = %89
  %184 = load i8, ptr @FH_TUERMODUL__SFHZ, align 1, !tbaa !5
  %185 = icmp ne i8 %184, 0
  %186 = load i8, ptr @FH_TUERMODUL__SFHZ_old, align 1
  %187 = icmp eq i8 %186, 0
  %188 = select i1 %185, i1 %187, i1 false
  %189 = load i32, ptr @FH_TUERMODUL__POSITION, align 4
  %190 = icmp sgt i32 %189, 0
  %191 = select i1 %188, i1 %190, i1 false
  br i1 %191, label %192, label %193

192:                                              ; preds = %183
  store i8 0, ptr @stable, align 1, !tbaa !5
  store i8 2, ptr @INITIALISIERT_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 2, ptr @SCHLIESSEN_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 2, ptr @MANUELL_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 17), align 1, !tbaa !5
  store i8 1, ptr @FH_TUERMODUL__MFHZ_copy, align 1, !tbaa !5
  br label %204

193:                                              ; preds = %183
  %194 = load i8, ptr @FH_TUERMODUL__SFHA, align 1, !tbaa !5
  %195 = icmp ne i8 %194, 0
  %196 = load i8, ptr @FH_TUERMODUL__SFHA_old, align 1
  %197 = icmp eq i8 %196, 0
  %198 = select i1 %195, i1 %197, i1 false
  %199 = icmp slt i32 %189, 405
  %200 = select i1 %198, i1 %199, i1 false
  br i1 %200, label %201, label %204

201:                                              ; preds = %193
  store i8 0, ptr @stable, align 1, !tbaa !5
  store i8 1, ptr @FH_TUERMODUL__MFHA_copy, align 1, !tbaa !5
  store i8 1, ptr @INITIALISIERT_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 2, ptr @OEFFNEN_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  br label %204

202:                                              ; preds = %89
  store i8 0, ptr @stable, align 1, !tbaa !5
  store i8 3, ptr @INITIALISIERT_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  br label %204

203:                                              ; preds = %20
  store i8 0, ptr @stable, align 1, !tbaa !5
  store i8 2, ptr @B_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  br label %204

204:                                              ; preds = %94, %128, %192, %201, %202, %117, %103, %124, %123, %116, %109, %168, %172, %180, %181, %165, %174, %149, %153, %155, %146, %150, %182, %162, %143, %193, %45, %49, %53, %57, %58, %42, %46, %54, %22, %203, %87, %81, %71, %38, %28
  %205 = load i8, ptr @A_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  %206 = icmp eq i8 %205, 1
  br i1 %206, label %207, label %249

207:                                              ; preds = %204
  %208 = load i8, ptr @step, align 1, !tbaa !5
  %209 = icmp eq i8 %208, 1
  %210 = load i64, ptr @tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRLexited_BEREIT_FH_TUERMODUL_CTRL, align 8
  %211 = icmp ne i64 %210, 0
  %212 = select i1 %209, i1 %211, i1 false
  br i1 %212, label %213, label %226

213:                                              ; preds = %207
  %214 = load i64, ptr @time, align 8, !tbaa !8
  %215 = sub i64 %214, %210
  %216 = icmp eq i64 %215, 1
  br i1 %216, label %217, label %226

217:                                              ; preds = %213
  %218 = load i8, ptr @FH_TUERMODUL__MFHZ, align 1, !tbaa !5
  %219 = icmp ne i8 %218, 0
  %220 = load i8, ptr @FH_TUERMODUL__MFHA, align 1
  %221 = icmp ne i8 %220, 0
  %222 = select i1 %219, i1 true, i1 %221
  br i1 %222, label %223, label %226

223:                                              ; preds = %217
  store i8 0, ptr @stable, align 1, !tbaa !5
  %224 = load i32, ptr @FH_TUERMODUL_CTRL__N, align 4, !tbaa !10
  %225 = add nsw i32 %224, 1
  store i32 %225, ptr @FH_TUERMODUL_CTRL__N, align 4, !tbaa !10
  store i8 1, ptr @A_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  br label %250

226:                                              ; preds = %217, %213, %207
  %227 = load i8, ptr @WIEDERHOLSPERRE_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  %228 = icmp eq i8 %227, 1
  br i1 %228, label %229, label %248

229:                                              ; preds = %226
  %230 = load i64, ptr @tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRL, align 8
  %231 = icmp ne i64 %230, 0
  %232 = select i1 %209, i1 %231, i1 false
  br i1 %232, label %233, label %251

233:                                              ; preds = %229
  %234 = load i64, ptr @time, align 8, !tbaa !8
  %235 = sub i64 %234, %230
  %236 = icmp eq i64 %235, 3
  %237 = load i8, ptr @FH_TUERMODUL__MFHZ, align 1
  %238 = icmp eq i8 %237, 0
  %239 = select i1 %236, i1 %238, i1 false
  %240 = load i8, ptr @FH_TUERMODUL__MFHA, align 1
  %241 = icmp eq i8 %240, 0
  %242 = select i1 %239, i1 %241, i1 false
  %243 = load i32, ptr @FH_TUERMODUL_CTRL__N, align 4
  %244 = icmp sgt i32 %243, 0
  %245 = select i1 %242, i1 %244, i1 false
  br i1 %245, label %246, label %251

246:                                              ; preds = %233
  store i8 0, ptr @stable, align 1, !tbaa !5
  %247 = add nsw i32 %243, -1
  store i32 %247, ptr @FH_TUERMODUL_CTRL__N, align 4, !tbaa !10
  br label %250

248:                                              ; preds = %226
  store i8 0, ptr @stable, align 1, !tbaa !5
  br label %250

249:                                              ; preds = %204
  store i8 0, ptr @stable, align 1, !tbaa !5
  store i32 0, ptr @FH_TUERMODUL_CTRL__N, align 4, !tbaa !10
  store i8 1, ptr @A_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  br label %250

250:                                              ; preds = %223, %249, %248, %246
  store i8 1, ptr @WIEDERHOLSPERRE_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  br label %251

251:                                              ; preds = %250, %233, %229
  %252 = load i8, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 4), align 4, !tbaa !5
  store i8 %252, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 5), align 1, !tbaa !5
  %253 = load i8, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 6), align 2, !tbaa !5
  store i8 %253, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 7), align 1, !tbaa !5
  br label %254

254:                                              ; preds = %9, %251, %10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @generic_EINKLEMMSCHUTZ_CTRL() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 16), align 16, !tbaa !5
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %28, label %3

3:                                                ; preds = %0
  %4 = load i8, ptr @EINKLEMMSCHUTZ_CTRL_EINKLEMMSCHUTZ_CTRL_next_state, align 1, !tbaa !5
  switch i8 %4, label %25 [
    i8 1, label %5
    i8 2, label %18
  ]

5:                                                ; preds = %3
  %6 = load i8, ptr @FH_TUERMODUL__EKS_LEISTE_AKTIV, align 1, !tbaa !5
  %7 = icmp eq i8 %6, 0
  %8 = load i8, ptr @FH_TUERMODUL__EKS_LEISTE_AKTIV_old, align 1
  %9 = icmp ne i8 %8, 0
  %10 = select i1 %7, i1 true, i1 %9
  br i1 %10, label %28, label %11

11:                                               ; preds = %5
  %12 = load i8, ptr @FH_TUERMODUL__SFHZ, align 1, !tbaa !5
  %13 = icmp ne i8 %12, 0
  %14 = load i8, ptr @FH_TUERMODUL__SFHA, align 1
  %15 = icmp ne i8 %14, 0
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %28, label %17

17:                                               ; preds = %11
  store i8 0, ptr @stable, align 1, !tbaa !5
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 24), align 8, !tbaa !5
  br label %26

18:                                               ; preds = %3
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 24), align 8, !tbaa !5
  %19 = load i8, ptr @FH_TUERMODUL__EKS_LEISTE_AKTIV, align 1, !tbaa !5
  %20 = icmp eq i8 %19, 0
  %21 = load i8, ptr @FH_TUERMODUL__EKS_LEISTE_AKTIV_old, align 1
  %22 = icmp ne i8 %21, 0
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  store i8 0, ptr @stable, align 1, !tbaa !5
  br label %26

25:                                               ; preds = %3
  store i8 0, ptr @stable, align 1, !tbaa !5
  br label %26

26:                                               ; preds = %25, %24, %17
  %27 = phi i8 [ 2, %17 ], [ 1, %24 ], [ 1, %25 ]
  store i8 %27, ptr @EINKLEMMSCHUTZ_CTRL_EINKLEMMSCHUTZ_CTRL_next_state, align 1, !tbaa !5
  br label %28

28:                                               ; preds = %26, %11, %5, %18, %0
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @generic_BLOCK_ERKENNUNG_CTRL() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 19), align 1, !tbaa !5
  %2 = icmp ne i8 %1, 0
  %3 = load i8, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 21), align 1
  %4 = icmp eq i8 %3, 0
  %5 = select i1 %2, i1 true, i1 %4
  %6 = load i8, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 20), align 4
  %7 = icmp ne i8 %6, 0
  %8 = select i1 %5, i1 true, i1 %7
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  store i8 0, ptr @Bitlist, align 16, !tbaa !5
  br label %51

10:                                               ; preds = %0
  %11 = icmp eq i8 %1, 0
  br i1 %11, label %51, label %12

12:                                               ; preds = %10
  %13 = load i8, ptr @BLOCK_ERKENNUNG_CTRL_BLOCK_ERKENNUNG_CTRL_next_state, align 1, !tbaa !5
  switch i8 %13, label %50 [
    i8 1, label %14
    i8 2, label %21
  ]

14:                                               ; preds = %12
  %15 = load i32, ptr @FH_TUERMODUL__I_EIN, align 4, !tbaa !10
  %16 = load i32, ptr @FH_TUERMODUL__I_EIN_old, align 4, !tbaa !10
  %17 = icmp ne i32 %15, %16
  %18 = icmp sgt i32 %15, 0
  %19 = and i1 %18, %17
  br i1 %19, label %20, label %51

20:                                               ; preds = %14
  store i8 0, ptr @stable, align 1, !tbaa !5
  store i8 0, ptr @FH_TUERMODUL__BLOCK_copy, align 1, !tbaa !5
  store i8 2, ptr @BLOCK_ERKENNUNG_CTRL_BLOCK_ERKENNUNG_CTRL_next_state, align 1, !tbaa !5
  store i32 0, ptr @BLOCK_ERKENNUNG_CTRL__N, align 4, !tbaa !10
  store i32 2, ptr @BLOCK_ERKENNUNG_CTRL__I_EIN_MAX, align 4, !tbaa !10
  store i8 3, ptr @BEWEGUNG_BLOCK_ERKENNUNG_CTRL_next_state, align 1, !tbaa !5
  store i8 1, ptr @Bitlist, align 16, !tbaa !5
  br label %51

21:                                               ; preds = %12
  %22 = load i8, ptr @FH_TUERMODUL__MFHA, align 1, !tbaa !5
  %23 = icmp eq i8 %22, 0
  %24 = load i8, ptr @FH_TUERMODUL__MFHA_old, align 1
  %25 = icmp ne i8 %24, 0
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load i8, ptr @FH_TUERMODUL__MFHZ, align 1, !tbaa !5
  %29 = icmp eq i8 %28, 0
  %30 = load i8, ptr @FH_TUERMODUL__MFHZ_old, align 1
  %31 = icmp ne i8 %30, 0
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %33, label %34

33:                                               ; preds = %27, %21
  store i8 0, ptr @stable, align 1, !tbaa !5
  store i8 1, ptr @BLOCK_ERKENNUNG_CTRL_BLOCK_ERKENNUNG_CTRL_next_state, align 1, !tbaa !5
  store i8 0, ptr @BEWEGUNG_BLOCK_ERKENNUNG_CTRL_next_state, align 1, !tbaa !5
  br label %51

34:                                               ; preds = %27
  %35 = load i8, ptr @BEWEGUNG_BLOCK_ERKENNUNG_CTRL_next_state, align 1, !tbaa !5
  switch i8 %35, label %49 [
    i8 1, label %51
    i8 2, label %36
    i8 3, label %42
  ]

36:                                               ; preds = %34
  %37 = load i32, ptr @FH_TUERMODUL__I_EIN, align 4, !tbaa !10
  %38 = load i32, ptr @BLOCK_ERKENNUNG_CTRL__I_EIN_MAX, align 4, !tbaa !10
  %39 = add nsw i32 %38, -2
  %40 = icmp sgt i32 %37, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  store i8 0, ptr @stable, align 1, !tbaa !5
  store i8 1, ptr @FH_TUERMODUL__BLOCK_copy, align 1, !tbaa !5
  store i8 1, ptr @BEWEGUNG_BLOCK_ERKENNUNG_CTRL_next_state, align 1, !tbaa !5
  br label %51

42:                                               ; preds = %34
  store i8 0, ptr @Bitlist, align 16, !tbaa !5
  %43 = load i32, ptr @BLOCK_ERKENNUNG_CTRL__N, align 4, !tbaa !10
  %44 = icmp ne i32 %43, 11
  %45 = load i32, ptr @BLOCK_ERKENNUNG_CTRL__N_old, align 4
  %46 = icmp eq i32 %45, 11
  %47 = select i1 %44, i1 true, i1 %46
  br i1 %47, label %51, label %48

48:                                               ; preds = %42
  store i8 0, ptr @stable, align 1, !tbaa !5
  store i8 2, ptr @BEWEGUNG_BLOCK_ERKENNUNG_CTRL_next_state, align 1, !tbaa !5
  br label %51

49:                                               ; preds = %34
  store i8 0, ptr @stable, align 1, !tbaa !5
  store i32 0, ptr @BLOCK_ERKENNUNG_CTRL__N, align 4, !tbaa !10
  store i32 2, ptr @BLOCK_ERKENNUNG_CTRL__I_EIN_MAX, align 4, !tbaa !10
  store i8 3, ptr @BEWEGUNG_BLOCK_ERKENNUNG_CTRL_next_state, align 1, !tbaa !5
  store i8 1, ptr @Bitlist, align 16, !tbaa !5
  br label %51

50:                                               ; preds = %12
  store i8 0, ptr @stable, align 1, !tbaa !5
  store i8 1, ptr @BLOCK_ERKENNUNG_CTRL_BLOCK_ERKENNUNG_CTRL_next_state, align 1, !tbaa !5
  br label %51

51:                                               ; preds = %9, %42, %20, %33, %50, %14, %36, %34, %49, %48, %41, %10
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FH_DU() local_unnamed_addr #2 {
  store i64 1, ptr @time, align 8, !tbaa !8
  store i8 0, ptr @step, align 1, !tbaa !5
  br label %1

1:                                                ; preds = %0, %132
  store i8 1, ptr @stable, align 1, !tbaa !5
  %2 = load i8, ptr @step, align 1, !tbaa !5
  %3 = add i8 %2, 1
  store i8 %3, ptr @step, align 1, !tbaa !5
  %4 = load i8, ptr @FH_STEUERUNG_DUMMY_FH_STEUERUNG_DUMMY_next_state, align 1, !tbaa !5
  switch i8 %4, label %29 [
    i8 1, label %5
    i8 2, label %11
    i8 3, label %23
  ]

5:                                                ; preds = %1
  %6 = load i8, ptr @FH_DU__MFHZ, align 1, !tbaa !5
  %7 = icmp eq i8 %6, 0
  %8 = load i8, ptr @FH_DU__MFHZ_old, align 1
  %9 = icmp ne i8 %8, 0
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %29, label %32

11:                                               ; preds = %1
  %12 = load i8, ptr @FH_DU__MFHZ, align 1, !tbaa !5
  %13 = icmp eq i8 %12, 0
  %14 = load i8, ptr @FH_DU__MFHZ_old, align 1
  %15 = icmp ne i8 %14, 0
  %16 = select i1 %13, i1 true, i1 %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %11
  %18 = load i8, ptr @FH_DU__MFHA, align 1, !tbaa !5
  %19 = icmp eq i8 %18, 0
  %20 = load i8, ptr @FH_DU__MFHA_old, align 1
  %21 = icmp ne i8 %20, 0
  %22 = select i1 %19, i1 true, i1 %21
  br i1 %22, label %32, label %29

23:                                               ; preds = %1
  %24 = load i8, ptr @FH_DU__MFHA, align 1, !tbaa !5
  %25 = icmp eq i8 %24, 0
  %26 = load i8, ptr @FH_DU__MFHA_old, align 1
  %27 = icmp ne i8 %26, 0
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %29, label %32

29:                                               ; preds = %1, %23, %17, %11, %5
  %30 = phi i32 [ 0, %5 ], [ -100, %11 ], [ 100, %17 ], [ 0, %23 ], [ 0, %1 ]
  %31 = phi i8 [ 2, %5 ], [ 1, %11 ], [ 3, %17 ], [ 2, %23 ], [ 2, %1 ]
  store i8 0, ptr @stable, align 1, !tbaa !5
  store i32 %30, ptr @FH_DU__MFH, align 4, !tbaa !10
  store i8 %31, ptr @FH_STEUERUNG_DUMMY_FH_STEUERUNG_DUMMY_next_state, align 1, !tbaa !5
  br label %32

32:                                               ; preds = %29, %23, %17, %5
  %33 = load i8, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 10), align 2, !tbaa !5
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i8 3, ptr @KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state, align 1, !tbaa !5
  br label %36

36:                                               ; preds = %35, %32
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 11), align 1, !tbaa !5
  %37 = load i8, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 16), align 16, !tbaa !5
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i8 1, ptr @EINKLEMMSCHUTZ_CTRL_EINKLEMMSCHUTZ_CTRL_next_state, align 1, !tbaa !5
  br label %40

40:                                               ; preds = %39, %36
  %41 = load i8, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 19), align 1, !tbaa !5
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i8 0, ptr @Bitlist, align 16, !tbaa !5
  store i8 1, ptr @BLOCK_ERKENNUNG_CTRL_BLOCK_ERKENNUNG_CTRL_next_state, align 1, !tbaa !5
  br label %44

44:                                               ; preds = %43, %40
  %45 = load i8, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 13), align 1, !tbaa !5
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 4), align 4, !tbaa !5
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 6), align 2, !tbaa !5
  store i8 2, ptr @B_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i32 0, ptr @FH_TUERMODUL_CTRL__N, align 4, !tbaa !10
  store i8 1, ptr @A_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 5), align 1, !tbaa !5
  store i8 1, ptr @WIEDERHOLSPERRE_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  br label %48

48:                                               ; preds = %47, %44
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 11), align 1, !tbaa !5
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 17), align 1, !tbaa !5
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 20), align 4, !tbaa !5
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 14), align 2, !tbaa !5
  %49 = load i8, ptr @FH_DU__S_FH_TMBFZUCAN, align 1, !tbaa !5
  %50 = load i8, ptr @FH_DU__S_FH_TMBFZUCAN_old, align 1, !tbaa !5
  %51 = icmp eq i8 %49, %50
  %52 = load i8, ptr @FH_DU__DOOR_ID, align 1
  %53 = icmp ne i8 %52, 0
  %54 = select i1 %51, i1 true, i1 %53
  br i1 %54, label %56, label %55

55:                                               ; preds = %48
  store i8 %49, ptr @FH_DU__S_FH_FTZU, align 1, !tbaa !5
  br label %62

56:                                               ; preds = %48
  %57 = load i8, ptr @FH_DU__S_FH_TMBFZUDISC, align 1, !tbaa !5
  %58 = load i8, ptr @FH_DU__S_FH_TMBFZUDISC_old, align 1, !tbaa !5
  %59 = icmp ne i8 %57, %58
  %60 = select i1 %59, i1 %53, i1 false
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store i8 %57, ptr @FH_DU__S_FH_TMBFZUCAN, align 1, !tbaa !5
  br label %68

62:                                               ; preds = %55, %56
  %63 = load i8, ptr @FH_DU__S_FH_TMBFAUFCAN, align 1, !tbaa !5
  %64 = load i8, ptr @FH_DU__S_FH_TMBFAUFCAN_old, align 1, !tbaa !5
  %65 = icmp eq i8 %63, %64
  %66 = select i1 %65, i1 true, i1 %53
  br i1 %66, label %68, label %67

67:                                               ; preds = %62
  store i8 %63, ptr @FH_DU__S_FH_FTAUF, align 1, !tbaa !5
  br label %74

68:                                               ; preds = %61, %62
  %69 = load i8, ptr @FH_DU__S_FH_TMBFAUFDISC, align 1, !tbaa !5
  %70 = load i8, ptr @FH_DU__S_FH_TMBFAUFDISC_old, align 1, !tbaa !5
  %71 = icmp ne i8 %69, %70
  %72 = select i1 %71, i1 %53, i1 false
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  store i8 %69, ptr @FH_DU__S_FH_TMBFAUFCAN, align 1, !tbaa !5
  br label %74

74:                                               ; preds = %67, %73, %68
  %75 = load i8, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 12), align 4, !tbaa !5
  store i8 %75, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 10), align 2, !tbaa !5
  %76 = load i8, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 15), align 1, !tbaa !5
  store i8 %76, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 13), align 1, !tbaa !5
  %77 = load i8, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 18), align 2, !tbaa !5
  store i8 %77, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 16), align 16, !tbaa !5
  %78 = load i8, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 21), align 1, !tbaa !5
  store i8 %78, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 19), align 1, !tbaa !5
  %79 = load i8, ptr @FH_DU__S_FH_AUFDISC, align 1, !tbaa !5
  store i8 %79, ptr @FH_TUERMODUL__SFHA_MEC, align 1, !tbaa !5
  %80 = load i8, ptr @FH_DU__S_FH_FTAUF, align 1, !tbaa !5
  store i8 %80, ptr @FH_TUERMODUL__SFHA_ZENTRAL, align 1, !tbaa !5
  %81 = load i8, ptr @FH_DU__S_FH_ZUDISC, align 1, !tbaa !5
  store i8 %81, ptr @FH_TUERMODUL__SFHZ_MEC, align 1, !tbaa !5
  %82 = load i8, ptr @FH_DU__S_FH_FTZU, align 1, !tbaa !5
  store i8 %82, ptr @FH_TUERMODUL__SFHZ_ZENTRAL, align 1, !tbaa !5
  tail call void @generic_KINDERSICHERUNG_CTRL()
  %83 = load i8, ptr @FH_TUERMODUL__MFHA, align 1, !tbaa !5
  store i8 %83, ptr @FH_DU__MFHA, align 1, !tbaa !5
  %84 = load i8, ptr @FH_TUERMODUL__MFHZ, align 1, !tbaa !5
  store i8 %84, ptr @FH_DU__MFHZ, align 1, !tbaa !5
  %85 = load i32, ptr @FH_TUERMODUL__I_EIN, align 4, !tbaa !10
  store i32 %85, ptr @FH_DU__I_EIN, align 4, !tbaa !10
  %86 = load i8, ptr @FH_TUERMODUL__EKS_LEISTE_AKTIV, align 1, !tbaa !5
  store i8 %86, ptr @FH_DU__EKS_LEISTE_AKTIV, align 1, !tbaa !5
  %87 = load i32, ptr @FH_TUERMODUL__POSITION, align 4, !tbaa !10
  store i32 %87, ptr @FH_DU__POSITION, align 4, !tbaa !10
  %88 = load i8, ptr @FH_TUERMODUL__FT, align 1, !tbaa !5
  store i8 %88, ptr @FH_DU__FT, align 1, !tbaa !5
  %89 = load i8, ptr @FH_TUERMODUL__SFHA_MEC, align 1, !tbaa !5
  store i8 %89, ptr @FH_DU__S_FH_AUFDISC, align 1, !tbaa !5
  %90 = load i8, ptr @FH_TUERMODUL__SFHA_ZENTRAL, align 1, !tbaa !5
  store i8 %90, ptr @FH_DU__S_FH_FTAUF, align 1, !tbaa !5
  %91 = load i8, ptr @FH_TUERMODUL__SFHZ_MEC, align 1, !tbaa !5
  store i8 %91, ptr @FH_DU__S_FH_ZUDISC, align 1, !tbaa !5
  %92 = load i8, ptr @FH_TUERMODUL__SFHZ_ZENTRAL, align 1, !tbaa !5
  store i8 %92, ptr @FH_DU__S_FH_FTZU, align 1, !tbaa !5
  %93 = load i8, ptr @FH_TUERMODUL__KL_50, align 1, !tbaa !5
  store i8 %93, ptr @FH_DU__KL_50, align 1, !tbaa !5
  %94 = load i8, ptr @FH_TUERMODUL__BLOCK, align 1, !tbaa !5
  store i8 %94, ptr @FH_DU__BLOCK, align 1, !tbaa !5
  tail call void @generic_FH_TUERMODUL_CTRL()
  %95 = load i8, ptr @FH_TUERMODUL__MFHA, align 1, !tbaa !5
  %96 = load i8, ptr @FH_TUERMODUL__MFHZ, align 1, !tbaa !5
  %97 = load i32, ptr @FH_TUERMODUL__I_EIN, align 4, !tbaa !10
  %98 = load i8, ptr @FH_TUERMODUL__EKS_LEISTE_AKTIV, align 1, !tbaa !5
  %99 = load i32, ptr @FH_TUERMODUL__POSITION, align 4, !tbaa !10
  %100 = load i8, ptr @FH_TUERMODUL__FT, align 1, !tbaa !5
  %101 = load i8, ptr @FH_TUERMODUL__SFHA_MEC, align 1, !tbaa !5
  %102 = load i8, ptr @FH_TUERMODUL__SFHA_ZENTRAL, align 1, !tbaa !5
  %103 = load i8, ptr @FH_TUERMODUL__SFHZ_MEC, align 1, !tbaa !5
  %104 = load i8, ptr @FH_TUERMODUL__SFHZ_ZENTRAL, align 1, !tbaa !5
  %105 = load i8, ptr @FH_TUERMODUL__KL_50, align 1, !tbaa !5
  %106 = load i8, ptr @FH_TUERMODUL__BLOCK, align 1, !tbaa !5
  %107 = load i8, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 16), align 16, !tbaa !5
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %132, label %109

109:                                              ; preds = %74
  %110 = load i8, ptr @EINKLEMMSCHUTZ_CTRL_EINKLEMMSCHUTZ_CTRL_next_state, align 1, !tbaa !5
  switch i8 %110, label %129 [
    i8 1, label %111
    i8 2, label %123
  ]

111:                                              ; preds = %109
  %112 = icmp eq i8 %98, 0
  %113 = load i8, ptr @FH_TUERMODUL__EKS_LEISTE_AKTIV_old, align 1
  %114 = icmp ne i8 %113, 0
  %115 = select i1 %112, i1 true, i1 %114
  br i1 %115, label %132, label %116

116:                                              ; preds = %111
  %117 = load i8, ptr @FH_TUERMODUL__SFHZ, align 1, !tbaa !5
  %118 = icmp ne i8 %117, 0
  %119 = load i8, ptr @FH_TUERMODUL__SFHA, align 1
  %120 = icmp ne i8 %119, 0
  %121 = select i1 %118, i1 %120, i1 false
  br i1 %121, label %132, label %122

122:                                              ; preds = %116
  store i8 0, ptr @stable, align 1, !tbaa !5
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 24), align 8, !tbaa !5
  br label %130

123:                                              ; preds = %109
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 24), align 8, !tbaa !5
  %124 = icmp eq i8 %98, 0
  %125 = load i8, ptr @FH_TUERMODUL__EKS_LEISTE_AKTIV_old, align 1
  %126 = icmp ne i8 %125, 0
  %127 = select i1 %124, i1 %126, i1 false
  br i1 %127, label %128, label %132

128:                                              ; preds = %123
  store i8 0, ptr @stable, align 1, !tbaa !5
  br label %130

129:                                              ; preds = %109
  store i8 0, ptr @stable, align 1, !tbaa !5
  br label %130

130:                                              ; preds = %129, %128, %122
  %131 = phi i8 [ 2, %122 ], [ 1, %128 ], [ 1, %129 ]
  store i8 %131, ptr @EINKLEMMSCHUTZ_CTRL_EINKLEMMSCHUTZ_CTRL_next_state, align 1, !tbaa !5
  br label %132

132:                                              ; preds = %74, %111, %116, %123, %130
  store i8 %95, ptr @FH_DU__MFHA, align 1, !tbaa !5
  store i8 %96, ptr @FH_DU__MFHZ, align 1, !tbaa !5
  store i32 %97, ptr @FH_DU__I_EIN, align 4, !tbaa !10
  store i8 %98, ptr @FH_DU__EKS_LEISTE_AKTIV, align 1, !tbaa !5
  store i32 %99, ptr @FH_DU__POSITION, align 4, !tbaa !10
  store i8 %100, ptr @FH_DU__FT, align 1, !tbaa !5
  store i8 %101, ptr @FH_DU__S_FH_AUFDISC, align 1, !tbaa !5
  store i8 %102, ptr @FH_DU__S_FH_FTAUF, align 1, !tbaa !5
  store i8 %103, ptr @FH_DU__S_FH_ZUDISC, align 1, !tbaa !5
  store i8 %104, ptr @FH_DU__S_FH_FTZU, align 1, !tbaa !5
  store i8 %105, ptr @FH_DU__KL_50, align 1, !tbaa !5
  store i8 %106, ptr @FH_DU__BLOCK, align 1, !tbaa !5
  tail call void @generic_BLOCK_ERKENNUNG_CTRL()
  %133 = load i32, ptr @FH_TUERMODUL__I_EIN, align 4, !tbaa !10
  store i32 %133, ptr @FH_DU__I_EIN, align 4, !tbaa !10
  %134 = load i8, ptr @FH_TUERMODUL__EKS_LEISTE_AKTIV, align 1, !tbaa !5
  store i8 %134, ptr @FH_DU__EKS_LEISTE_AKTIV, align 1, !tbaa !5
  %135 = load i32, ptr @FH_TUERMODUL__POSITION, align 4, !tbaa !10
  store i32 %135, ptr @FH_DU__POSITION, align 4, !tbaa !10
  %136 = load i8, ptr @FH_TUERMODUL__FT, align 1, !tbaa !5
  store i8 %136, ptr @FH_DU__FT, align 1, !tbaa !5
  %137 = load i8, ptr @FH_TUERMODUL__SFHA_MEC, align 1, !tbaa !5
  store i8 %137, ptr @FH_DU__S_FH_AUFDISC, align 1, !tbaa !5
  %138 = load i8, ptr @FH_TUERMODUL__SFHA_ZENTRAL, align 1, !tbaa !5
  store i8 %138, ptr @FH_DU__S_FH_FTAUF, align 1, !tbaa !5
  %139 = load i8, ptr @FH_TUERMODUL__SFHZ_MEC, align 1, !tbaa !5
  store i8 %139, ptr @FH_DU__S_FH_ZUDISC, align 1, !tbaa !5
  %140 = load i8, ptr @FH_TUERMODUL__SFHZ_ZENTRAL, align 1, !tbaa !5
  store i8 %140, ptr @FH_DU__S_FH_FTZU, align 1, !tbaa !5
  %141 = load i8, ptr @FH_TUERMODUL__KL_50, align 1, !tbaa !5
  store i8 %141, ptr @FH_DU__KL_50, align 1, !tbaa !5
  %142 = load i8, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 10), align 2, !tbaa !5
  store i8 %142, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 11), align 1, !tbaa !5
  %143 = load i8, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 13), align 1, !tbaa !5
  store i8 %143, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 14), align 2, !tbaa !5
  %144 = load i8, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 16), align 16, !tbaa !5
  store i8 %144, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 17), align 1, !tbaa !5
  %145 = load i8, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 19), align 1, !tbaa !5
  store i8 %145, ptr getelementptr inbounds nuw (i8, ptr @Bitlist, i64 20), align 4, !tbaa !5
  %146 = load i32, ptr @FH_TUERMODUL_CTRL__N, align 4, !tbaa !10
  store i32 %146, ptr @FH_TUERMODUL_CTRL__N_old, align 4, !tbaa !10
  store i32 %133, ptr @FH_TUERMODUL__I_EIN_old, align 4, !tbaa !10
  %147 = load i32, ptr @FH_DU__MFH_copy, align 4, !tbaa !10
  store i32 %147, ptr @FH_DU__MFH, align 4, !tbaa !10
  store i32 %133, ptr @FH_DU__I_EIN_old, align 4, !tbaa !10
  %148 = load i32, ptr @BLOCK_ERKENNUNG_CTRL__N, align 4, !tbaa !10
  store i32 %148, ptr @BLOCK_ERKENNUNG_CTRL__N_old, align 4, !tbaa !10
  store i8 %140, ptr @FH_TUERMODUL__SFHZ_ZENTRAL_old, align 1, !tbaa !5
  store i8 %139, ptr @FH_TUERMODUL__SFHZ_MEC_old, align 1, !tbaa !5
  store i8 %138, ptr @FH_TUERMODUL__SFHA_ZENTRAL_old, align 1, !tbaa !5
  store i8 %137, ptr @FH_TUERMODUL__SFHA_MEC_old, align 1, !tbaa !5
  %149 = load i8, ptr @FH_TUERMODUL__BLOCK_copy, align 1, !tbaa !5
  store i8 %149, ptr @FH_TUERMODUL__BLOCK, align 1, !tbaa !5
  store i8 %149, ptr @FH_TUERMODUL__BLOCK_old, align 1, !tbaa !5
  %150 = load i8, ptr @FH_TUERMODUL__SFHZ_copy, align 1, !tbaa !5
  store i8 %150, ptr @FH_TUERMODUL__SFHZ, align 1, !tbaa !5
  store i8 %150, ptr @FH_TUERMODUL__SFHZ_old, align 1, !tbaa !5
  %151 = load i8, ptr @FH_TUERMODUL__SFHA_copy, align 1, !tbaa !5
  store i8 %151, ptr @FH_TUERMODUL__SFHA, align 1, !tbaa !5
  store i8 %151, ptr @FH_TUERMODUL__SFHA_old, align 1, !tbaa !5
  %152 = load i8, ptr @FH_TUERMODUL__MFHZ_copy, align 1, !tbaa !5
  store i8 %152, ptr @FH_TUERMODUL__MFHZ, align 1, !tbaa !5
  store i8 %152, ptr @FH_TUERMODUL__MFHZ_old, align 1, !tbaa !5
  %153 = load i8, ptr @FH_TUERMODUL__MFHA_copy, align 1, !tbaa !5
  store i8 %153, ptr @FH_TUERMODUL__MFHA, align 1, !tbaa !5
  store i8 %153, ptr @FH_TUERMODUL__MFHA_old, align 1, !tbaa !5
  store i8 %134, ptr @FH_TUERMODUL__EKS_LEISTE_AKTIV_old, align 1, !tbaa !5
  store i8 %134, ptr @FH_DU__EKS_LEISTE_AKTIV_old, align 1, !tbaa !5
  %154 = load i8, ptr @FH_DU__S_FH_TMBFAUFCAN, align 1, !tbaa !5
  store i8 %154, ptr @FH_DU__S_FH_TMBFAUFCAN_old, align 1, !tbaa !5
  %155 = load i8, ptr @FH_DU__S_FH_TMBFZUCAN, align 1, !tbaa !5
  store i8 %155, ptr @FH_DU__S_FH_TMBFZUCAN_old, align 1, !tbaa !5
  %156 = load i8, ptr @FH_DU__S_FH_TMBFZUDISC, align 1, !tbaa !5
  store i8 %156, ptr @FH_DU__S_FH_TMBFZUDISC_old, align 1, !tbaa !5
  %157 = load i8, ptr @FH_DU__S_FH_TMBFAUFDISC, align 1, !tbaa !5
  store i8 %157, ptr @FH_DU__S_FH_TMBFAUFDISC_old, align 1, !tbaa !5
  %158 = load i8, ptr @FH_DU__BLOCK_copy, align 1, !tbaa !5
  store i8 %158, ptr @FH_DU__BLOCK, align 1, !tbaa !5
  store i8 %158, ptr @FH_DU__BLOCK_old, align 1, !tbaa !5
  %159 = load i8, ptr @FH_DU__MFHZ_copy, align 1, !tbaa !5
  store i8 %159, ptr @FH_DU__MFHZ, align 1, !tbaa !5
  store i8 %159, ptr @FH_DU__MFHZ_old, align 1, !tbaa !5
  %160 = load i8, ptr @FH_DU__MFHA_copy, align 1, !tbaa !5
  store i8 %160, ptr @FH_DU__MFHA, align 1, !tbaa !5
  store i8 %160, ptr @FH_DU__MFHA_old, align 1, !tbaa !5
  %161 = load i8, ptr @stable, align 1, !tbaa !5
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %1, label %163, !llvm.loop !12

163:                                              ; preds = %132
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @warm_caches(i32 noundef %0) local_unnamed_addr #2 {
  tail call fastcc void @benchmark_body(i32 noundef 1, i32 noundef %0)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @benchmark_body(i32 noundef range(i32 1, 3331) %0, i32 noundef %1) unnamed_addr #4 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %49, label %4

4:                                                ; preds = %2, %46
  %5 = phi i32 [ %47, %46 ], [ 0, %2 ]
  br label %6

6:                                                ; preds = %4, %43
  %7 = phi i32 [ 0, %4 ], [ %44, %43 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) @Bitlist, i8 0, i64 64, i1 false)
  store i64 0, ptr @tm_entered_EINSCHALTSTROM_MESSEN_BLOCK_ERKENNUNG_CTRLch_BLOCK_ERKENNUNG_CTRL__N_copy, align 8, !tbaa !8
  store i64 0, ptr @tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRLexited_BEREIT_FH_TUERMODUL_CTRL, align 8, !tbaa !8
  store i64 0, ptr @tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRL, align 8, !tbaa !8
  store i8 0, ptr @NICHT_INITIALISIERT_NICHT_INITIALISIERT_next_state, align 1, !tbaa !5
  store i8 0, ptr @ZENTRAL_KINDERSICHERUNG_CTRL_next_state, align 1, !tbaa !5
  store i8 0, ptr @MEC_KINDERSICHERUNG_CTRL_next_state, align 1, !tbaa !5
  store i8 0, ptr @KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state, align 1, !tbaa !5
  store i8 0, ptr @B_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 0, ptr @A_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 0, ptr @WIEDERHOLSPERRE_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 0, ptr @INITIALISIERT_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 0, ptr @TIPP_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 0, ptr @MANUELL_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 0, ptr @OEFFNEN_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 0, ptr @SCHLIESSEN_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 0, ptr @FH_STEUERUNG_DUMMY_FH_STEUERUNG_DUMMY_next_state, align 1, !tbaa !5
  store i8 0, ptr @EINKLEMMSCHUTZ_CTRL_EINKLEMMSCHUTZ_CTRL_next_state, align 1, !tbaa !5
  store i8 0, ptr @BEWEGUNG_BLOCK_ERKENNUNG_CTRL_next_state, align 1, !tbaa !5
  store i8 0, ptr @BLOCK_ERKENNUNG_CTRL_BLOCK_ERKENNUNG_CTRL_next_state, align 1, !tbaa !5
  %8 = load i64, ptr @time, align 8
  %9 = load i64, ptr @sc_FH_TUERMODUL_CTRL_2375_2, align 8, !tbaa !8
  %10 = icmp eq i64 %9, 0
  %11 = icmp eq i64 %8, %9
  %12 = select i1 %10, i1 true, i1 %11
  br i1 %12, label %14, label %13

13:                                               ; preds = %6
  store i8 0, ptr @FH_TUERMODUL__MFHA_copy, align 1, !tbaa !5
  store i64 0, ptr @sc_FH_TUERMODUL_CTRL_2375_2, align 8, !tbaa !8
  br label %14

14:                                               ; preds = %13, %6
  %15 = load i64, ptr @sc_FH_TUERMODUL_CTRL_2352_1, align 8, !tbaa !8
  %16 = icmp eq i64 %15, 0
  %17 = icmp eq i64 %8, %15
  %18 = select i1 %16, i1 true, i1 %17
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  store i8 0, ptr @FH_TUERMODUL__MFHZ_copy, align 1, !tbaa !5
  store i64 0, ptr @sc_FH_TUERMODUL_CTRL_2352_1, align 8, !tbaa !8
  br label %20

20:                                               ; preds = %19, %14
  %21 = load i64, ptr @sc_FH_TUERMODUL_CTRL_2329_1, align 8, !tbaa !8
  %22 = icmp eq i64 %21, 0
  %23 = icmp eq i64 %8, %21
  %24 = select i1 %22, i1 true, i1 %23
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  store i8 0, ptr @FH_TUERMODUL__MFHZ_copy, align 1, !tbaa !5
  store i64 0, ptr @sc_FH_TUERMODUL_CTRL_2329_1, align 8, !tbaa !8
  br label %26

26:                                               ; preds = %25, %20
  %27 = load i64, ptr @sc_FH_TUERMODUL_CTRL_1781_10, align 8, !tbaa !8
  %28 = icmp eq i64 %27, 0
  %29 = icmp eq i64 %8, %27
  %30 = select i1 %28, i1 true, i1 %29
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  store i64 0, ptr @sc_FH_TUERMODUL_CTRL_1781_10, align 8, !tbaa !8
  br label %32

32:                                               ; preds = %31, %26
  %33 = load i64, ptr @sc_FH_TUERMODUL_CTRL_1739_10, align 8, !tbaa !8
  %34 = icmp eq i64 %33, 0
  %35 = icmp eq i64 %8, %33
  %36 = select i1 %34, i1 true, i1 %35
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  store i64 0, ptr @sc_FH_TUERMODUL_CTRL_1739_10, align 8, !tbaa !8
  br label %38

38:                                               ; preds = %32, %37
  %39 = load i32, ptr @BLOCK_ERKENNUNG_CTRL__N, align 4, !tbaa !10
  %40 = load i32, ptr @BLOCK_ERKENNUNG_CTRL__N_old, align 4, !tbaa !10
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  store i64 %8, ptr @tm_entered_EINSCHALTSTROM_MESSEN_BLOCK_ERKENNUNG_CTRLch_BLOCK_ERKENNUNG_CTRL__N_copy, align 8, !tbaa !8
  br label %43

43:                                               ; preds = %42, %38
  tail call void @FH_DU()
  %44 = add nuw i32 %7, 1
  %45 = icmp eq i32 %44, %1
  br i1 %45, label %46, label %6, !llvm.loop !14

46:                                               ; preds = %43
  %47 = add nuw nsw i32 %5, 1
  %48 = icmp eq i32 %47, %0
  br i1 %48, label %49, label %4, !llvm.loop !15

49:                                               ; preds = %46, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @benchmark() local_unnamed_addr #4 {
  tail call fastcc void @benchmark_body(i32 noundef 3330, i32 noundef 20)
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @initialise_benchmark() local_unnamed_addr #5 {
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local range(i32 0, 2) i32 @verify_benchmark(i32 noundef %0) local_unnamed_addr #6 {
  %2 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %2, i8 0, i64 64, i1 false)
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 5
  store i8 1, ptr %3, align 1
  br label %28

4:                                                ; preds = %28
  %5 = or disjoint i64 %29, 1
  %6 = getelementptr inbounds nuw [64 x i8], ptr @Bitlist, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !5
  %8 = getelementptr inbounds nuw [64 x i8], ptr %2, i64 0, i64 %5
  %9 = load i8, ptr %8, align 1, !tbaa !5
  %10 = icmp eq i8 %7, %9
  br i1 %10, label %11, label %93

11:                                               ; preds = %4
  %12 = or disjoint i64 %29, 2
  %13 = getelementptr inbounds nuw [64 x i8], ptr @Bitlist, i64 0, i64 %12
  %14 = load i8, ptr %13, align 2, !tbaa !5
  %15 = getelementptr inbounds nuw [64 x i8], ptr %2, i64 0, i64 %12
  %16 = load i8, ptr %15, align 2, !tbaa !5
  %17 = icmp eq i8 %14, %16
  br i1 %17, label %18, label %93

18:                                               ; preds = %11
  %19 = or disjoint i64 %29, 3
  %20 = getelementptr inbounds nuw [64 x i8], ptr @Bitlist, i64 0, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !5
  %22 = getelementptr inbounds nuw [64 x i8], ptr %2, i64 0, i64 %19
  %23 = load i8, ptr %22, align 1, !tbaa !5
  %24 = icmp eq i8 %21, %23
  br i1 %24, label %25, label %93

25:                                               ; preds = %18
  %26 = add nuw nsw i64 %29, 4
  %27 = icmp eq i64 %26, 64
  br i1 %27, label %35, label %28, !llvm.loop !16

28:                                               ; preds = %25, %1
  %29 = phi i64 [ 0, %1 ], [ %26, %25 ]
  %30 = getelementptr inbounds nuw [64 x i8], ptr @Bitlist, i64 0, i64 %29
  %31 = load i8, ptr %30, align 4, !tbaa !5
  %32 = getelementptr inbounds nuw [64 x i8], ptr %2, i64 0, i64 %29
  %33 = load i8, ptr %32, align 4, !tbaa !5
  %34 = icmp eq i8 %31, %33
  br i1 %34, label %4, label %93

35:                                               ; preds = %25
  %36 = load i64, ptr @tm_entered_EINSCHALTSTROM_MESSEN_BLOCK_ERKENNUNG_CTRLch_BLOCK_ERKENNUNG_CTRL__N_copy, align 8, !tbaa !8
  %37 = icmp eq i64 %36, 0
  %38 = load i64, ptr @tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRLexited_BEREIT_FH_TUERMODUL_CTRL, align 8
  %39 = icmp eq i64 %38, 0
  %40 = select i1 %37, i1 %39, i1 false
  %41 = load i64, ptr @tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRL, align 8
  %42 = icmp eq i64 %41, 0
  %43 = select i1 %40, i1 %42, i1 false
  %44 = load i8, ptr @NICHT_INITIALISIERT_NICHT_INITIALISIERT_next_state, align 1
  %45 = icmp eq i8 %44, 0
  %46 = select i1 %43, i1 %45, i1 false
  %47 = load i8, ptr @ZENTRAL_KINDERSICHERUNG_CTRL_next_state, align 1
  %48 = icmp eq i8 %47, 0
  %49 = select i1 %46, i1 %48, i1 false
  %50 = load i8, ptr @MEC_KINDERSICHERUNG_CTRL_next_state, align 1
  %51 = icmp eq i8 %50, 0
  %52 = select i1 %49, i1 %51, i1 false
  %53 = load i8, ptr @KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state, align 1
  %54 = icmp eq i8 %53, 3
  %55 = select i1 %52, i1 %54, i1 false
  %56 = load i8, ptr @B_FH_TUERMODUL_CTRL_next_state, align 1
  %57 = icmp eq i8 %56, 2
  %58 = select i1 %55, i1 %57, i1 false
  %59 = load i8, ptr @A_FH_TUERMODUL_CTRL_next_state, align 1
  %60 = icmp eq i8 %59, 1
  %61 = select i1 %58, i1 %60, i1 false
  %62 = load i8, ptr @WIEDERHOLSPERRE_FH_TUERMODUL_CTRL_next_state, align 1
  %63 = icmp eq i8 %62, 1
  %64 = select i1 %61, i1 %63, i1 false
  %65 = load i8, ptr @INITIALISIERT_FH_TUERMODUL_CTRL_next_state, align 1
  %66 = icmp eq i8 %65, 0
  %67 = select i1 %64, i1 %66, i1 false
  %68 = load i8, ptr @TIPP_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state, align 1
  %69 = icmp eq i8 %68, 0
  %70 = select i1 %67, i1 %69, i1 false
  %71 = load i8, ptr @MANUELL_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state, align 1
  %72 = icmp eq i8 %71, 0
  %73 = select i1 %70, i1 %72, i1 false
  %74 = load i8, ptr @OEFFNEN_FH_TUERMODUL_CTRL_next_state, align 1
  %75 = icmp eq i8 %74, 0
  %76 = select i1 %73, i1 %75, i1 false
  %77 = load i8, ptr @SCHLIESSEN_FH_TUERMODUL_CTRL_next_state, align 1
  %78 = icmp eq i8 %77, 0
  %79 = select i1 %76, i1 %78, i1 false
  %80 = load i8, ptr @FH_STEUERUNG_DUMMY_FH_STEUERUNG_DUMMY_next_state, align 1
  %81 = icmp eq i8 %80, 2
  %82 = select i1 %79, i1 %81, i1 false
  %83 = load i8, ptr @EINKLEMMSCHUTZ_CTRL_EINKLEMMSCHUTZ_CTRL_next_state, align 1
  %84 = icmp eq i8 %83, 1
  %85 = select i1 %82, i1 %84, i1 false
  %86 = load i8, ptr @BEWEGUNG_BLOCK_ERKENNUNG_CTRL_next_state, align 1
  %87 = icmp eq i8 %86, 0
  %88 = select i1 %85, i1 %87, i1 false
  %89 = load i8, ptr @BLOCK_ERKENNUNG_CTRL_BLOCK_ERKENNUNG_CTRL_next_state, align 1
  %90 = icmp eq i8 %89, 1
  %91 = select i1 %88, i1 %90, i1 false
  %92 = zext i1 %91 to i32
  br label %93

93:                                               ; preds = %28, %4, %11, %18, %35
  %94 = phi i32 [ %92, %35 ], [ 0, %18 ], [ 0, %11 ], [ 0, %4 ], [ 0, %28 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #8
  ret i32 %94
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !6, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !13}
