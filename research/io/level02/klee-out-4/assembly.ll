; ModuleID = 'level02.o'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-f128:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"WIN!\00", align 1
@.str1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str2 = private unnamed_addr constant [10 x i8] c"level02.c\00", align 1
@__PRETTY_FUNCTION__.3916 = internal unnamed_addr constant [8 x i8] c"catcher\00"
@.str3 = private unnamed_addr constant [8 x i8] c"/bin/sh\00", align 1
@.str4 = private unnamed_addr constant [4 x i8] c"in1\00", align 1
@.str5 = private unnamed_addr constant [4 x i8] c"in2\00", align 1
@.str6 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str7 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str8 = private unnamed_addr constant [39 x i8] c"source code is available in level02.c\0A\00", align 8
@.str9 = private unnamed_addr constant [12 x i8] c"Got to here\00", align 1
@.str10 = private constant [22 x i8] c"klee_div_zero_check.c\00", align 1
@.str111 = private constant [15 x i8] c"divide by zero\00", align 1
@.str212 = private constant [8 x i8] c"div.err\00", align 1
@.str313 = private constant [8 x i8] c"IGNORED\00", align 1
@.str14 = private constant [16 x i8] c"overshift error\00", align 1
@.str25 = private constant [14 x i8] c"overshift.err\00", align 1
@.str614 = private constant [13 x i8] c"klee_range.c\00", align 1
@.str17 = private constant [14 x i8] c"invalid range\00", align 1
@.str28 = private constant [5 x i8] c"user\00", align 1

define void @catcher(i32 %a) nounwind {
entry:
  %a_addr = alloca i32, align 4
  %"alloca point" = bitcast i32 0 to i32
  store i32 %a, i32* %a_addr
  %0 = call i32 (...)* @geteuid() nounwind, !dbg !131
  %1 = call i32 (...)* @geteuid() nounwind, !dbg !131
  %2 = call i32 (...)* @geteuid() nounwind, !dbg !131
  %3 = call i32 (...)* @setresuid(i32 %2, i32 %1, i32 %0) nounwind, !dbg !131
  %4 = call i32 @puts(i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !133
  %5 = call i32 (...)* @__assert_fail(i8* getelementptr inbounds ([2 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 14, i8* getelementptr inbounds ([8 x i8]* @__PRETTY_FUNCTION__.3916, i64 0, i64 0)) nounw
  unreachable
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

declare i32 @geteuid(...)

declare i32 @setresuid(...)

declare i32 @puts(i8*)

declare i32 @__assert_fail(...) noreturn

declare i32 @system(i8*)

declare void @exit(i32) noreturn nounwind

define i32 @main() nounwind {
entry:
  %retval = alloca i32
  %0 = alloca i32
  %a = alloca i32
  %b = alloca i32
  %in1 = alloca [4 x i8]
  %in2 = alloca [4 x i8]
  %argv = alloca [3 x i8*]
  %"alloca point" = bitcast i32 0 to i32
  %a1 = bitcast i32* %a to i8*, !dbg !135
  call void @klee_make_symbolic(i8* %a1, i64 4, i8* getelementptr inbounds ([4 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !135
  %b2 = bitcast i32* %b to i8*, !dbg !137
  call void @klee_make_symbolic(i8* %b2, i64 4, i8* getelementptr inbounds ([4 x i8]* @.str5, i64 0, i64 0)) nounwind, !dbg !137
  %1 = load i32* %a, align 4, !dbg !138
  %in13 = bitcast [4 x i8]* %in1 to i8*, !dbg !138
  %2 = call i32 (i8*, i8*, ...)* @sprintf(i8* noalias %in13, i8* noalias getelementptr inbounds ([3 x i8]* @.str6, i64 0, i64 0), i32 %1) nounwind, !dbg !138
  %3 = load i32* %b, align 4, !dbg !139
  %in24 = bitcast [4 x i8]* %in2 to i8*, !dbg !139
  %4 = call i32 (i8*, i8*, ...)* @sprintf(i8* noalias %in24, i8* noalias getelementptr inbounds ([3 x i8]* @.str6, i64 0, i64 0), i32 %3) nounwind, !dbg !139
  %5 = getelementptr inbounds [3 x i8*]* %argv, i64 0, i64 0, !dbg !140
  %in15 = bitcast [4 x i8]* %in1 to i8*, !dbg !140
  store i8* %in15, i8** %5, align 8, !dbg !140
  %6 = getelementptr inbounds [3 x i8*]* %argv, i64 0, i64 1, !dbg !141
  %in16 = bitcast [4 x i8]* %in1 to i8*, !dbg !141
  store i8* %in16, i8** %6, align 8, !dbg !141
  %7 = getelementptr inbounds [3 x i8*]* %argv, i64 0, i64 2, !dbg !142
  %in27 = bitcast [4 x i8]* %in2 to i8*, !dbg !142
  store i8* %in27, i8** %7, align 8, !dbg !142
  %8 = call i32 (i8*, ...)* @printf(i8* noalias getelementptr inbounds ([5 x i8]* @.str7, i64 0, i64 0)) nounwind, !dbg !143
  %argv8 = bitcast [3 x i8*]* %argv to i8**, !dbg !144
  %9 = call i32 (...)* bitcast (i32 (i32, i8**)* @orig_main to i32 (...)*)(i32 3, i8** %argv8) nounwind, !dbg !144
  store i32 %9, i32* %0, align 4, !dbg !144
  %10 = load i32* %0, align 4, !dbg !144
  store i32 %10, i32* %retval, align 4, !dbg !144
  %retval9 = load i32* %retval, !dbg !144
  ret i32 %retval9, !dbg !144
}

declare void @klee_make_symbolic(i8*, i64, i8*)

declare i32 @sprintf(i8* noalias, i8* noalias, ...) nounwind

declare i32 @printf(i8* noalias, ...) nounwind

define i32 @orig_main(i32 %argc, i8** %argv) nounwind {
entry:
  %argc_addr = alloca i32, align 4
  %argv_addr = alloca i8**, align 8
  %retval = alloca i32
  %0 = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  store i32 %argc, i32* %argc_addr
  store i8** %argv, i8*** %argv_addr
  %1 = call i32 @puts(i8* getelementptr inbounds ([39 x i8]* @.str8, i64 0, i64 0)) nounwind, !dbg !145
  %2 = load i32* %argc_addr, align 4, !dbg !147
  %3 = icmp ne i32 %2, 3, !dbg !147
  br i1 %3, label %bb1, label %bb, !dbg !147

bb:                                               ; preds = %entry
  %4 = load i8*** %argv_addr, align 8, !dbg !147
  %5 = getelementptr inbounds i8** %4, i64 2, !dbg !147
  %6 = load i8** %5, align 1, !dbg !147
  %7 = call i32 @atoi(i8* %6) nounwind readonly, !dbg !147
  %8 = icmp eq i32 %7, 0, !dbg !147
  br i1 %8, label %bb1, label %bb2, !dbg !147

bb1:                                              ; preds = %bb, %entry
  store i32 1, i32* %0, align 4, !dbg !148
  br label %bb4, !dbg !148

bb2:                                              ; preds = %bb
  %9 = call i32 @puts(i8* getelementptr inbounds ([12 x i8]* @.str9, i64 0, i64 0)) nounwind, !dbg !149
  %10 = call void (i32)* (i32, void (i32)*)* @signal(i32 8, void (i32)* @catcher) nounwind, !dbg !150
  %11 = load i8*** %argv_addr, align 8, !dbg !151
  %12 = getelementptr inbounds i8** %11, i64 1, !dbg !151
  %13 = load i8** %12, align 1, !dbg !151
  %14 = call i32 @atoi(i8* %13) nounwind readonly, !dbg !151
  %neg = sub i32 0, %14, !dbg !151
  %abscond = icmp sge i32 %14, 0, !dbg !151
  %abs = select i1 %abscond, i32 %14, i32 %neg, !dbg !151
  %15 = load i8*** %argv_addr, align 8, !dbg !151
  %16 = getelementptr inbounds i8** %15, i64 2, !dbg !151
  %17 = load i8** %16, align 1, !dbg !151
  %18 = call i32 @atoi(i8* %17) nounwind readonly, !dbg !151
  %int_cast_to_i64 = zext i32 %18 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !151
  %19 = sdiv i32 %abs, %18, !dbg !151
  store i32 %19, i32* %0, align 4, !dbg !151
  br label %bb4, !dbg !151

bb4:                                              ; preds = %bb2, %bb1
  %20 = load i32* %0, align 4, !dbg !148
  store i32 %20, i32* %retval, align 4, !dbg !148
  %retval5 = load i32* %retval, !dbg !148
  ret i32 %retval5, !dbg !148
}

declare i32 @atoi(i8*) nounwind readonly

declare void (i32)* @signal(i32, void (i32)*) nounwind

define void @klee_div_zero_check(i64 %z) nounwind {
entry:
  %0 = icmp eq i64 %z, 0, !dbg !152
  br i1 %0, label %bb, label %return, !dbg !152

bb:                                               ; preds = %entry
  tail call void @klee_report_error(i8* getelementptr inbounds ([22 x i8]* @.str10, i64 0, i64 0), i32 14, i8* getelementptr inbounds ([15 x i8]* @.str111, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str212, i64 0, i64 0)) noreturn nounwind, !
  unreachable, !dbg !154

return:                                           ; preds = %entry
  ret void, !dbg !155
}

declare void @klee_report_error(i8*, i32, i8*, i8*) noreturn

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define i32 @klee_int(i8* %name) nounwind {
entry:
  %x = alloca i32, align 4
  %x1 = bitcast i32* %x to i8*, !dbg !156
  call void @klee_make_symbolic(i8* %x1, i64 4, i8* %name) nounwind, !dbg !156
  %0 = load i32* %x, align 4, !dbg !157
  ret i32 %0, !dbg !157
}

define void @klee_overshift_check(i64 %bitWidth, i64 %shift) nounwind {
entry:
  %0 = icmp ult i64 %shift, %bitWidth, !dbg !158
  br i1 %0, label %return, label %bb, !dbg !158

bb:                                               ; preds = %entry
  tail call void @klee_report_error(i8* getelementptr inbounds ([8 x i8]* @.str313, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([16 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str25, i64 0, i64 0)) noreturn nounwind, !db
  unreachable, !dbg !160

return:                                           ; preds = %entry
  ret void, !dbg !161
}

define i32 @klee_range(i32 %start, i32 %end, i8* %name) nounwind {
entry:
  %x = alloca i32, align 4
  %0 = icmp slt i32 %start, %end, !dbg !162
  br i1 %0, label %bb1, label %bb, !dbg !162

bb:                                               ; preds = %entry
  call void @klee_report_error(i8* getelementptr inbounds ([13 x i8]* @.str614, i64 0, i64 0), i32 17, i8* getelementptr inbounds ([14 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str28, i64 0, i64 0)) noreturn nounwind, !dbg !1
  unreachable, !dbg !163

bb1:                                              ; preds = %entry
  %1 = add nsw i32 %start, 1, !dbg !164
  %2 = icmp eq i32 %1, %end, !dbg !164
  br i1 %2, label %bb8, label %bb3, !dbg !164

bb3:                                              ; preds = %bb1
  %x4 = bitcast i32* %x to i8*, !dbg !165
  call void @klee_make_symbolic(i8* %x4, i64 4, i8* %name) nounwind, !dbg !165
  %3 = icmp eq i32 %start, 0, !dbg !166
  %4 = load i32* %x, align 4, !dbg !167
  br i1 %3, label %bb5, label %bb6, !dbg !166

bb5:                                              ; preds = %bb3
  %5 = icmp ult i32 %4, %end, !dbg !167
  %6 = zext i1 %5 to i64, !dbg !167
  call void @klee_assume(i64 %6) nounwind, !dbg !167
  br label %bb7, !dbg !167

bb6:                                              ; preds = %bb3
  %7 = icmp sge i32 %4, %start, !dbg !168
  %8 = zext i1 %7 to i64, !dbg !168
  call void @klee_assume(i64 %8) nounwind, !dbg !168
  %9 = load i32* %x, align 4, !dbg !169
  %10 = icmp slt i32 %9, %end, !dbg !169
  %11 = zext i1 %10 to i64, !dbg !169
  call void @klee_assume(i64 %11) nounwind, !dbg !169
  br label %bb7, !dbg !169

bb7:                                              ; preds = %bb6, %bb5
  %12 = load i32* %x, align 4, !dbg !170
  br label %bb8, !dbg !170

bb8:                                              ; preds = %bb7, %bb1
  %.0 = phi i32 [ %12, %bb7 ], [ %start, %bb1 ]
  ret i32 %.0, !dbg !171
}

declare void @klee_assume(i64)

define weak i8* @mempcpy(i8* %destaddr, i8* %srcaddr, i64 %len) nounwind {
entry:
  %0 = icmp eq i64 %len, 0, !dbg !172
  br i1 %0, label %bb2, label %bb, !dbg !172

bb:                                               ; preds = %bb, %entry
  %indvar = phi i64 [ %indvar.next, %bb ], [ 0, %entry ]
  %dest.05 = getelementptr i8* %destaddr, i64 %indvar
  %src.06 = getelementptr i8* %srcaddr, i64 %indvar
  %1 = load i8* %src.06, align 1, !dbg !173
  store i8 %1, i8* %dest.05, align 1, !dbg !173
  %indvar.next = add i64 %indvar, 1
  %exitcond1 = icmp eq i64 %indvar.next, %len
  br i1 %exitcond1, label %bb1.bb2_crit_edge, label %bb, !dbg !172

bb1.bb2_crit_edge:                                ; preds = %bb
  %scevgep = getelementptr i8* %destaddr, i64 %len
  br label %bb2

bb2:                                              ; preds = %bb1.bb2_crit_edge, %entry
  %dest.0.lcssa = phi i8* [ %scevgep, %bb1.bb2_crit_edge ], [ %destaddr, %entry ]
  ret i8* %dest.0.lcssa, !dbg !174
}

!llvm.dbg.sp = !{!0, !6, !9, !15, !21, !30, !36, !45, !54, !63, !72}
!llvm.dbg.lv.klee_div_zero_check = !{!82}
!llvm.dbg.lv.klee_int = !{!83, !84}
!llvm.dbg.lv.klee_overshift_check = !{!86, !87}
!llvm.dbg.lv.klee_range = !{!88, !89, !90, !91}
!llvm.dbg.lv.memcpy = !{!93, !94, !95, !96, !100}
!llvm.dbg.lv.memmove = !{!103, !104, !105, !106, !110}
!llvm.dbg.lv.mempcpy = !{!113, !114, !115, !116, !120}
!llvm.dbg.lv.memset = !{!123, !124, !125, !126}

!0 = metadata !{i32 589870, i32 0, metadata !1, metadata !"catcher", metadata !"catcher", metadata !"catcher", metadata !1, i32 11, metadata !3, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32)* @catcher} ; [ DW_TAG_subprogram ]
!1 = metadata !{i32 589865, metadata !"level02.c", metadata !"/home/ecwong/Documents/18-739L/research/io/level02/", metadata !2} ; [ DW_TAG_file_type ]
!2 = metadata !{i32 589841, i32 0, i32 1, metadata !"level02.c", metadata !"/home/ecwong/Documents/18-739L/research/io/level02/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_comp
!3 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !4, i32 0, null} ; [ DW_TAG_subroutine_type ]
!4 = metadata !{null, metadata !5}
!5 = metadata !{i32 589860, metadata !1, metadata !"int", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!6 = metadata !{i32 589870, i32 0, metadata !1, metadata !"main", metadata !"main", metadata !"main", metadata !1, i32 21, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ()* @main} ; [ DW_TAG_subprogram ]
!7 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, null} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !5}
!9 = metadata !{i32 589870, i32 0, metadata !1, metadata !"orig_main", metadata !"orig_main", metadata !"orig_main", metadata !1, i32 46, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i8**)* @orig_main} ; [ DW_TAG_subp
!10 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null} ; [ DW_TAG_subroutine_type ]
!11 = metadata !{metadata !5, metadata !5, metadata !12}
!12 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !13} ; [ DW_TAG_pointer_type ]
!13 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ]
!14 = metadata !{i32 589860, metadata !1, metadata !"char", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!15 = metadata !{i32 589870, i32 0, metadata !16, metadata !"klee_div_zero_check", metadata !"klee_div_zero_check", metadata !"klee_div_zero_check", metadata !16, i32 12, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64)* 
!16 = metadata !{i32 589865, metadata !"klee_div_zero_check.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !17} ; [ DW_TAG_file_type ]
!17 = metadata !{i32 589841, i32 0, i32 1, metadata !"klee_div_zero_check.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compile
!18 = metadata !{i32 589845, metadata !16, metadata !"", metadata !16, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !19, i32 0, null} ; [ DW_TAG_subroutine_type ]
!19 = metadata !{null, metadata !20}
!20 = metadata !{i32 589860, metadata !16, metadata !"long long int", metadata !16, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!21 = metadata !{i32 589870, i32 0, metadata !22, metadata !"klee_int", metadata !"klee_int", metadata !"klee_int", metadata !22, i32 13, metadata !24, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @klee_int} ; [ DW_TAG_subprogram ]
!22 = metadata !{i32 589865, metadata !"klee_int.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !23} ; [ DW_TAG_file_type ]
!23 = metadata !{i32 589841, i32 0, i32 1, metadata !"klee_int.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!24 = metadata !{i32 589845, metadata !22, metadata !"", metadata !22, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !25, i32 0, null} ; [ DW_TAG_subroutine_type ]
!25 = metadata !{metadata !26, metadata !27}
!26 = metadata !{i32 589860, metadata !22, metadata !"int", metadata !22, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!27 = metadata !{i32 589839, metadata !22, metadata !"", metadata !22, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !28} ; [ DW_TAG_pointer_type ]
!28 = metadata !{i32 589862, metadata !22, metadata !"", metadata !22, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !29} ; [ DW_TAG_const_type ]
!29 = metadata !{i32 589860, metadata !22, metadata !"char", metadata !22, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!30 = metadata !{i32 589870, i32 0, metadata !31, metadata !"klee_overshift_check", metadata !"klee_overshift_check", metadata !"klee_overshift_check", metadata !31, i32 20, metadata !33, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64
!31 = metadata !{i32 589865, metadata !"klee_overshift_check.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !32} ; [ DW_TAG_file_type ]
!32 = metadata !{i32 589841, i32 0, i32 1, metadata !"klee_overshift_check.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compil
!33 = metadata !{i32 589845, metadata !31, metadata !"", metadata !31, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !34, i32 0, null} ; [ DW_TAG_subroutine_type ]
!34 = metadata !{null, metadata !35, metadata !35}
!35 = metadata !{i32 589860, metadata !31, metadata !"long long unsigned int", metadata !31, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!36 = metadata !{i32 589870, i32 0, metadata !37, metadata !"klee_range", metadata !"klee_range", metadata !"klee_range", metadata !37, i32 13, metadata !39, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i8*)* @klee_range} ; [ D
!37 = metadata !{i32 589865, metadata !"klee_range.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !38} ; [ DW_TAG_file_type ]
!38 = metadata !{i32 589841, i32 0, i32 1, metadata !"klee_range.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!39 = metadata !{i32 589845, metadata !37, metadata !"", metadata !37, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !40, i32 0, null} ; [ DW_TAG_subroutine_type ]
!40 = metadata !{metadata !41, metadata !41, metadata !41, metadata !42}
!41 = metadata !{i32 589860, metadata !37, metadata !"int", metadata !37, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!42 = metadata !{i32 589839, metadata !37, metadata !"", metadata !37, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !43} ; [ DW_TAG_pointer_type ]
!43 = metadata !{i32 589862, metadata !37, metadata !"", metadata !37, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !44} ; [ DW_TAG_const_type ]
!44 = metadata !{i32 589860, metadata !37, metadata !"char", metadata !37, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!45 = metadata !{i32 589870, i32 0, metadata !46, metadata !"memcpy", metadata !"memcpy", metadata !"memcpy", metadata !46, i32 12, metadata !48, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null} ; [ DW_TAG_subprogram ]
!46 = metadata !{i32 589865, metadata !"memcpy.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !47} ; [ DW_TAG_file_type ]
!47 = metadata !{i32 589841, i32 0, i32 1, metadata !"memcpy.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!48 = metadata !{i32 589845, metadata !46, metadata !"", metadata !46, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !49, i32 0, null} ; [ DW_TAG_subroutine_type ]
!49 = metadata !{metadata !50, metadata !50, metadata !50, metadata !51}
!50 = metadata !{i32 589839, metadata !46, metadata !"", metadata !46, i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ]
!51 = metadata !{i32 589846, metadata !52, metadata !"size_t", metadata !52, i32 326, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_typedef ]
!52 = metadata !{i32 589865, metadata !"stddef.h", metadata !"/usr/local/bin/llvm-gcc4.2-2.9-x86_64-linux/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.2.1/include", metadata !47} ; [ DW_TAG_file_type ]
!53 = metadata !{i32 589860, metadata !46, metadata !"long unsigned int", metadata !46, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!54 = metadata !{i32 589870, i32 0, metadata !55, metadata !"memmove", metadata !"memmove", metadata !"memmove", metadata !55, i32 12, metadata !57, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null} ; [ DW_TAG_subprogram ]
!55 = metadata !{i32 589865, metadata !"memmove.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !56} ; [ DW_TAG_file_type ]
!56 = metadata !{i32 589841, i32 0, i32 1, metadata !"memmove.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!57 = metadata !{i32 589845, metadata !55, metadata !"", metadata !55, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !58, i32 0, null} ; [ DW_TAG_subroutine_type ]
!58 = metadata !{metadata !59, metadata !59, metadata !59, metadata !60}
!59 = metadata !{i32 589839, metadata !55, metadata !"", metadata !55, i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ]
!60 = metadata !{i32 589846, metadata !61, metadata !"size_t", metadata !61, i32 326, i64 0, i64 0, i64 0, i32 0, metadata !62} ; [ DW_TAG_typedef ]
!61 = metadata !{i32 589865, metadata !"stddef.h", metadata !"/usr/local/bin/llvm-gcc4.2-2.9-x86_64-linux/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.2.1/include", metadata !56} ; [ DW_TAG_file_type ]
!62 = metadata !{i32 589860, metadata !55, metadata !"long unsigned int", metadata !55, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!63 = metadata !{i32 589870, i32 0, metadata !64, metadata !"mempcpy", metadata !"mempcpy", metadata !"mempcpy", metadata !64, i32 11, metadata !66, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @mempcpy} ; [ DW_TAG_subpro
!64 = metadata !{i32 589865, metadata !"mempcpy.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !65} ; [ DW_TAG_file_type ]
!65 = metadata !{i32 589841, i32 0, i32 1, metadata !"mempcpy.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!66 = metadata !{i32 589845, metadata !64, metadata !"", metadata !64, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !67, i32 0, null} ; [ DW_TAG_subroutine_type ]
!67 = metadata !{metadata !68, metadata !68, metadata !68, metadata !69}
!68 = metadata !{i32 589839, metadata !64, metadata !"", metadata !64, i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ]
!69 = metadata !{i32 589846, metadata !70, metadata !"size_t", metadata !70, i32 326, i64 0, i64 0, i64 0, i32 0, metadata !71} ; [ DW_TAG_typedef ]
!70 = metadata !{i32 589865, metadata !"stddef.h", metadata !"/usr/local/bin/llvm-gcc4.2-2.9-x86_64-linux/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.2.1/include", metadata !65} ; [ DW_TAG_file_type ]
!71 = metadata !{i32 589860, metadata !64, metadata !"long unsigned int", metadata !64, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!72 = metadata !{i32 589870, i32 0, metadata !73, metadata !"memset", metadata !"memset", metadata !"memset", metadata !73, i32 11, metadata !75, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null} ; [ DW_TAG_subprogram ]
!73 = metadata !{i32 589865, metadata !"memset.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !74} ; [ DW_TAG_file_type ]
!74 = metadata !{i32 589841, i32 0, i32 1, metadata !"memset.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!75 = metadata !{i32 589845, metadata !73, metadata !"", metadata !73, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !76, i32 0, null} ; [ DW_TAG_subroutine_type ]
!76 = metadata !{metadata !77, metadata !77, metadata !78, metadata !79}
!77 = metadata !{i32 589839, metadata !73, metadata !"", metadata !73, i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ]
!78 = metadata !{i32 589860, metadata !73, metadata !"int", metadata !73, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!79 = metadata !{i32 589846, metadata !80, metadata !"size_t", metadata !80, i32 326, i64 0, i64 0, i64 0, i32 0, metadata !81} ; [ DW_TAG_typedef ]
!80 = metadata !{i32 589865, metadata !"stddef.h", metadata !"/usr/local/bin/llvm-gcc4.2-2.9-x86_64-linux/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.2.1/include", metadata !74} ; [ DW_TAG_file_type ]
!81 = metadata !{i32 589860, metadata !73, metadata !"long unsigned int", metadata !73, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!82 = metadata !{i32 590081, metadata !15, metadata !"z", metadata !16, i32 12, metadata !20, i32 0} ; [ DW_TAG_arg_variable ]
!83 = metadata !{i32 590081, metadata !21, metadata !"name", metadata !22, i32 13, metadata !27, i32 0} ; [ DW_TAG_arg_variable ]
!84 = metadata !{i32 590080, metadata !85, metadata !"x", metadata !22, i32 14, metadata !26, i32 0} ; [ DW_TAG_auto_variable ]
!85 = metadata !{i32 589835, metadata !21, i32 13, i32 0, metadata !22, i32 0} ; [ DW_TAG_lexical_block ]
!86 = metadata !{i32 590081, metadata !30, metadata !"bitWidth", metadata !31, i32 20, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!87 = metadata !{i32 590081, metadata !30, metadata !"shift", metadata !31, i32 20, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!88 = metadata !{i32 590081, metadata !36, metadata !"start", metadata !37, i32 13, metadata !41, i32 0} ; [ DW_TAG_arg_variable ]
!89 = metadata !{i32 590081, metadata !36, metadata !"end", metadata !37, i32 13, metadata !41, i32 0} ; [ DW_TAG_arg_variable ]
!90 = metadata !{i32 590081, metadata !36, metadata !"name", metadata !37, i32 13, metadata !42, i32 0} ; [ DW_TAG_arg_variable ]
!91 = metadata !{i32 590080, metadata !92, metadata !"x", metadata !37, i32 14, metadata !41, i32 0} ; [ DW_TAG_auto_variable ]
!92 = metadata !{i32 589835, metadata !36, i32 13, i32 0, metadata !37, i32 0} ; [ DW_TAG_lexical_block ]
!93 = metadata !{i32 590081, metadata !45, metadata !"destaddr", metadata !46, i32 12, metadata !50, i32 0} ; [ DW_TAG_arg_variable ]
!94 = metadata !{i32 590081, metadata !45, metadata !"srcaddr", metadata !46, i32 12, metadata !50, i32 0} ; [ DW_TAG_arg_variable ]
!95 = metadata !{i32 590081, metadata !45, metadata !"len", metadata !46, i32 12, metadata !51, i32 0} ; [ DW_TAG_arg_variable ]
!96 = metadata !{i32 590080, metadata !97, metadata !"dest", metadata !46, i32 13, metadata !98, i32 0} ; [ DW_TAG_auto_variable ]
!97 = metadata !{i32 589835, metadata !45, i32 12, i32 0, metadata !46, i32 0} ; [ DW_TAG_lexical_block ]
!98 = metadata !{i32 589839, metadata !46, metadata !"", metadata !46, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !99} ; [ DW_TAG_pointer_type ]
!99 = metadata !{i32 589860, metadata !46, metadata !"char", metadata !46, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!100 = metadata !{i32 590080, metadata !97, metadata !"src", metadata !46, i32 14, metadata !101, i32 0} ; [ DW_TAG_auto_variable ]
!101 = metadata !{i32 589839, metadata !46, metadata !"", metadata !46, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !102} ; [ DW_TAG_pointer_type ]
!102 = metadata !{i32 589862, metadata !46, metadata !"", metadata !46, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !99} ; [ DW_TAG_const_type ]
!103 = metadata !{i32 590081, metadata !54, metadata !"dst", metadata !55, i32 12, metadata !59, i32 0} ; [ DW_TAG_arg_variable ]
!104 = metadata !{i32 590081, metadata !54, metadata !"src", metadata !55, i32 12, metadata !59, i32 0} ; [ DW_TAG_arg_variable ]
!105 = metadata !{i32 590081, metadata !54, metadata !"count", metadata !55, i32 12, metadata !60, i32 0} ; [ DW_TAG_arg_variable ]
!106 = metadata !{i32 590080, metadata !107, metadata !"a", metadata !55, i32 13, metadata !108, i32 0} ; [ DW_TAG_auto_variable ]
!107 = metadata !{i32 589835, metadata !54, i32 12, i32 0, metadata !55, i32 0} ; [ DW_TAG_lexical_block ]
!108 = metadata !{i32 589839, metadata !55, metadata !"", metadata !55, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !109} ; [ DW_TAG_pointer_type ]
!109 = metadata !{i32 589860, metadata !55, metadata !"char", metadata !55, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!110 = metadata !{i32 590080, metadata !107, metadata !"b", metadata !55, i32 14, metadata !111, i32 0} ; [ DW_TAG_auto_variable ]
!111 = metadata !{i32 589839, metadata !55, metadata !"", metadata !55, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !112} ; [ DW_TAG_pointer_type ]
!112 = metadata !{i32 589862, metadata !55, metadata !"", metadata !55, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !109} ; [ DW_TAG_const_type ]
!113 = metadata !{i32 590081, metadata !63, metadata !"destaddr", metadata !64, i32 11, metadata !68, i32 0} ; [ DW_TAG_arg_variable ]
!114 = metadata !{i32 590081, metadata !63, metadata !"srcaddr", metadata !64, i32 11, metadata !68, i32 0} ; [ DW_TAG_arg_variable ]
!115 = metadata !{i32 590081, metadata !63, metadata !"len", metadata !64, i32 11, metadata !69, i32 0} ; [ DW_TAG_arg_variable ]
!116 = metadata !{i32 590080, metadata !117, metadata !"dest", metadata !64, i32 12, metadata !118, i32 0} ; [ DW_TAG_auto_variable ]
!117 = metadata !{i32 589835, metadata !63, i32 11, i32 0, metadata !64, i32 0} ; [ DW_TAG_lexical_block ]
!118 = metadata !{i32 589839, metadata !64, metadata !"", metadata !64, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !119} ; [ DW_TAG_pointer_type ]
!119 = metadata !{i32 589860, metadata !64, metadata !"char", metadata !64, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!120 = metadata !{i32 590080, metadata !117, metadata !"src", metadata !64, i32 13, metadata !121, i32 0} ; [ DW_TAG_auto_variable ]
!121 = metadata !{i32 589839, metadata !64, metadata !"", metadata !64, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !122} ; [ DW_TAG_pointer_type ]
!122 = metadata !{i32 589862, metadata !64, metadata !"", metadata !64, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !119} ; [ DW_TAG_const_type ]
!123 = metadata !{i32 590081, metadata !72, metadata !"dst", metadata !73, i32 11, metadata !77, i32 0} ; [ DW_TAG_arg_variable ]
!124 = metadata !{i32 590081, metadata !72, metadata !"s", metadata !73, i32 11, metadata !78, i32 0} ; [ DW_TAG_arg_variable ]
!125 = metadata !{i32 590081, metadata !72, metadata !"count", metadata !73, i32 11, metadata !79, i32 0} ; [ DW_TAG_arg_variable ]
!126 = metadata !{i32 590080, metadata !127, metadata !"a", metadata !73, i32 12, metadata !128, i32 0} ; [ DW_TAG_auto_variable ]
!127 = metadata !{i32 589835, metadata !72, i32 11, i32 0, metadata !73, i32 0} ; [ DW_TAG_lexical_block ]
!128 = metadata !{i32 589839, metadata !73, metadata !"", metadata !73, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !129} ; [ DW_TAG_pointer_type ]
!129 = metadata !{i32 589877, metadata !73, metadata !"", metadata !73, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !130} ; [ DW_TAG_volatile_type ]
!130 = metadata !{i32 589860, metadata !73, metadata !"char", metadata !73, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!131 = metadata !{i32 12, i32 0, metadata !132, null}
!132 = metadata !{i32 589835, metadata !0, i32 11, i32 0, metadata !1, i32 0} ; [ DW_TAG_lexical_block ]
!133 = metadata !{i32 13, i32 0, metadata !132, null}
!134 = metadata !{i32 14, i32 0, metadata !132, null}
!135 = metadata !{i32 31, i32 0, metadata !136, null}
!136 = metadata !{i32 589835, metadata !6, i32 21, i32 0, metadata !1, i32 1} ; [ DW_TAG_lexical_block ]
!137 = metadata !{i32 32, i32 0, metadata !136, null}
!138 = metadata !{i32 34, i32 0, metadata !136, null}
!139 = metadata !{i32 35, i32 0, metadata !136, null}
!140 = metadata !{i32 37, i32 0, metadata !136, null}
!141 = metadata !{i32 38, i32 0, metadata !136, null}
!142 = metadata !{i32 39, i32 0, metadata !136, null}
!143 = metadata !{i32 40, i32 0, metadata !136, null}
!144 = metadata !{i32 42, i32 0, metadata !136, null}
!145 = metadata !{i32 47, i32 0, metadata !146, null}
!146 = metadata !{i32 589835, metadata !9, i32 46, i32 0, metadata !1, i32 2} ; [ DW_TAG_lexical_block ]
!147 = metadata !{i32 49, i32 0, metadata !146, null}
!148 = metadata !{i32 50, i32 0, metadata !146, null}
!149 = metadata !{i32 51, i32 0, metadata !146, null}
!150 = metadata !{i32 52, i32 0, metadata !146, null}
!151 = metadata !{i32 53, i32 0, metadata !146, null}
!152 = metadata !{i32 13, i32 0, metadata !153, null}
!153 = metadata !{i32 589835, metadata !15, i32 12, i32 0, metadata !16, i32 0} ; [ DW_TAG_lexical_block ]
!154 = metadata !{i32 14, i32 0, metadata !153, null}
!155 = metadata !{i32 15, i32 0, metadata !153, null}
!156 = metadata !{i32 15, i32 0, metadata !85, null}
!157 = metadata !{i32 16, i32 0, metadata !85, null}
!158 = metadata !{i32 21, i32 0, metadata !159, null}
!159 = metadata !{i32 589835, metadata !30, i32 20, i32 0, metadata !31, i32 0} ; [ DW_TAG_lexical_block ]
!160 = metadata !{i32 27, i32 0, metadata !159, null}
!161 = metadata !{i32 29, i32 0, metadata !159, null}
!162 = metadata !{i32 16, i32 0, metadata !92, null}
!163 = metadata !{i32 17, i32 0, metadata !92, null}
!164 = metadata !{i32 19, i32 0, metadata !92, null}
!165 = metadata !{i32 22, i32 0, metadata !92, null}
!166 = metadata !{i32 25, i32 0, metadata !92, null}
!167 = metadata !{i32 26, i32 0, metadata !92, null}
!168 = metadata !{i32 28, i32 0, metadata !92, null}
!169 = metadata !{i32 29, i32 0, metadata !92, null}
!170 = metadata !{i32 32, i32 0, metadata !92, null}
!171 = metadata !{i32 20, i32 0, metadata !92, null}
!172 = metadata !{i32 15, i32 0, metadata !117, null}
!173 = metadata !{i32 16, i32 0, metadata !117, null}
!174 = metadata !{i32 17, i32 0, metadata !117, null}
