; ModuleID = 'level03.o'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-f128:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"Win.\00", align 1
@.str1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str2 = private unnamed_addr constant [10 x i8] c"level03.c\00", align 1
@__PRETTY_FUNCTION__.2160 = internal unnamed_addr constant [5 x i8] c"good\00"
@.str3 = private unnamed_addr constant [53 x i8] c"I'm so sorry, you're at %p and you want to be at %p\0A\00", align 8
@.str4 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str5 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str6 = private unnamed_addr constant [36 x i8] c"This is exciting we're going to %p\0A\00", align 8
@.str7 = private constant [22 x i8] c"klee_div_zero_check.c\00", align 1
@.str18 = private constant [15 x i8] c"divide by zero\00", align 1
@.str29 = private constant [8 x i8] c"div.err\00", align 1
@.str310 = private constant [8 x i8] c"IGNORED\00", align 1
@.str14 = private constant [16 x i8] c"overshift error\00", align 1
@.str25 = private constant [14 x i8] c"overshift.err\00", align 1
@.str611 = private constant [13 x i8] c"klee_range.c\00", align 1
@.str17 = private constant [14 x i8] c"invalid range\00", align 1
@.str28 = private constant [5 x i8] c"user\00", align 1

define void @good() nounwind {
entry:
  %0 = call i32 @puts(i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !132
  %1 = call i32 (...)* @__assert_fail(i8* getelementptr inbounds ([2 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 10, i8* getelementptr inbounds ([5 x i8]* @__PRETTY_FUNCTION__.2160, i64 0, i64 0)) nounw
  unreachable
}

declare i32 @puts(i8*)

declare i32 @__assert_fail(...) noreturn

define void @bad() nounwind {
entry:
  %0 = call i32 (i8*, ...)* @printf(i8* noalias getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), void (...)* bitcast (void ()* @bad to void (...)*), void (...)* bitcast (void ()* @good to void (...)*)) nounwind, !dbg !135
  ret void, !dbg !137
}

declare i32 @printf(i8* noalias, ...) nounwind

define i32 @main() nounwind {
entry:
  %retval = alloca i32
  %0 = alloca i32
  %argv = alloca [2 x i8*]
  %in = alloca [80 x i8]
  %dummy = alloca [2 x i8]
  %"alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds [2 x i8]* %dummy, i32 0, i32 0, !dbg !138
  %2 = load i8* getelementptr inbounds ([2 x i8]* @.str4, i64 0, i64 0), align 1, !dbg !138
  store i8 %2, i8* %1, align 1, !dbg !138
  %3 = getelementptr inbounds [2 x i8]* %dummy, i32 0, i32 1, !dbg !138
  %4 = load i8* getelementptr inbounds ([2 x i8]* @.str4, i64 0, i64 1), align 1, !dbg !138
  store i8 %4, i8* %3, align 1, !dbg !138
  %in1 = bitcast [80 x i8]* %in to i8*, !dbg !140
  call void @klee_make_symbolic(i8* %in1, i64 80, i8* getelementptr inbounds ([3 x i8]* @.str5, i64 0, i64 0)) nounwind, !dbg !140
  %5 = getelementptr inbounds [2 x i8*]* %argv, i64 0, i64 0, !dbg !141
  %dummy2 = bitcast [2 x i8]* %dummy to i8*, !dbg !141
  store i8* %dummy2, i8** %5, align 8, !dbg !141
  %6 = getelementptr inbounds [2 x i8*]* %argv, i64 0, i64 1, !dbg !142
  %in3 = bitcast [80 x i8]* %in to i8*, !dbg !142
  store i8* %in3, i8** %6, align 8, !dbg !142
  %argv4 = bitcast [2 x i8*]* %argv to i8**, !dbg !143
  %7 = call i32 (...)* bitcast (i32 (i32, i8**, i8**)* @orig_main to i32 (...)*)(i32 2, i8** %argv4) nounwind, !dbg !143
  store i32 %7, i32* %0, align 4, !dbg !143
  %8 = load i32* %0, align 4, !dbg !143
  store i32 %8, i32* %retval, align 4, !dbg !143
  %retval5 = load i32* %retval, !dbg !143
  ret i32 %retval5, !dbg !143
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

declare void @klee_make_symbolic(i8*, i64, i8*)

define i32 @orig_main(i32 %argc, i8** %argv, i8** %envp) nounwind {
entry:
  %argc_addr = alloca i32, align 4
  %argv_addr = alloca i8**, align 8
  %envp_addr = alloca i8**, align 8
  %retval = alloca i32
  %0 = alloca i32
  %functionpointer = alloca void ()*
  %buffer = alloca [50 x i8]
  %"alloca point" = bitcast i32 0 to i32
  store i32 %argc, i32* %argc_addr
  store i8** %argv, i8*** %argv_addr
  store i8** %envp, i8*** %envp_addr
  store void ()* @bad, void ()** %functionpointer, align 8, !dbg !144
  %1 = load i32* %argc_addr, align 4, !dbg !146
  %2 = icmp ne i32 %1, 2, !dbg !146
  br i1 %2, label %bb1, label %bb, !dbg !146

bb:                                               ; preds = %entry
  %3 = load i8*** %argv_addr, align 8, !dbg !146
  %4 = getelementptr inbounds i8** %3, i64 1, !dbg !146
  %5 = load i8** %4, align 1, !dbg !146
  %6 = call i64 @strlen(i8* %5) nounwind readonly, !dbg !146
  %7 = icmp ule i64 %6, 3, !dbg !146
  br i1 %7, label %bb1, label %bb2, !dbg !146

bb1:                                              ; preds = %bb, %entry
  store i32 0, i32* %0, align 4, !dbg !147
  br label %bb5, !dbg !147

bb2:                                              ; preds = %bb
  %8 = load i8*** %argv_addr, align 8, !dbg !148
  %9 = getelementptr inbounds i8** %8, i64 1, !dbg !148
  %10 = load i8** %9, align 1, !dbg !148
  %11 = call i64 @strlen(i8* %10) nounwind readonly, !dbg !148
  %12 = load i8*** %argv_addr, align 8, !dbg !148
  %13 = getelementptr inbounds i8** %12, i64 1, !dbg !148
  %14 = load i8** %13, align 1, !dbg !148
  %buffer3 = bitcast [50 x i8]* %buffer to i8*, !dbg !148
  %15 = call i8* @memcpy(i8* %buffer3, i8* %14, i64 %11)
  %16 = load i8*** %argv_addr, align 8, !dbg !149
  %17 = getelementptr inbounds i8** %16, i64 1, !dbg !149
  %18 = load i8** %17, align 1, !dbg !149
  %19 = call i64 @strlen(i8* %18) nounwind readonly, !dbg !149
  %20 = sub i64 %19, 4, !dbg !149
  %buffer4 = bitcast [50 x i8]* %buffer to i8*, !dbg !149
  %21 = call i8* @memset(i8* %buffer4, i32 0, i64 %20)
  %22 = load void ()** %functionpointer, align 8, !dbg !150
  %23 = call i32 (i8*, ...)* @printf(i8* noalias getelementptr inbounds ([36 x i8]* @.str6, i64 0, i64 0), void ()* %22) nounwind, !dbg !150
  %24 = load void ()** %functionpointer, align 8, !dbg !151
  call void %24() nounwind, !dbg !151
  store i32 0, i32* %0, align 4, !dbg !152
  br label %bb5, !dbg !152

bb5:                                              ; preds = %bb2, %bb1
  %25 = load i32* %0, align 4, !dbg !147
  store i32 %25, i32* %retval, align 4, !dbg !147
  %retval6 = load i32* %retval, !dbg !147
  ret i32 %retval6, !dbg !147
}

declare i64 @strlen(i8*) nounwind readonly

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) nounwind

define void @klee_div_zero_check(i64 %z) nounwind {
entry:
  %0 = icmp eq i64 %z, 0, !dbg !153
  br i1 %0, label %bb, label %return, !dbg !153

bb:                                               ; preds = %entry
  tail call void @klee_report_error(i8* getelementptr inbounds ([22 x i8]* @.str7, i64 0, i64 0), i32 14, i8* getelementptr inbounds ([15 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str29, i64 0, i64 0)) noreturn nounwind, !dbg
  unreachable, !dbg !155

return:                                           ; preds = %entry
  ret void, !dbg !156
}

declare void @klee_report_error(i8*, i32, i8*, i8*) noreturn

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define i32 @klee_int(i8* %name) nounwind {
entry:
  %x = alloca i32, align 4
  %x1 = bitcast i32* %x to i8*, !dbg !157
  call void @klee_make_symbolic(i8* %x1, i64 4, i8* %name) nounwind, !dbg !157
  %0 = load i32* %x, align 4, !dbg !158
  ret i32 %0, !dbg !158
}

define void @klee_overshift_check(i64 %bitWidth, i64 %shift) nounwind {
entry:
  %0 = icmp ult i64 %shift, %bitWidth, !dbg !159
  br i1 %0, label %return, label %bb, !dbg !159

bb:                                               ; preds = %entry
  tail call void @klee_report_error(i8* getelementptr inbounds ([8 x i8]* @.str310, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([16 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str25, i64 0, i64 0)) noreturn nounwind, !db
  unreachable, !dbg !161

return:                                           ; preds = %entry
  ret void, !dbg !162
}

define i32 @klee_range(i32 %start, i32 %end, i8* %name) nounwind {
entry:
  %x = alloca i32, align 4
  %0 = icmp slt i32 %start, %end, !dbg !163
  br i1 %0, label %bb1, label %bb, !dbg !163

bb:                                               ; preds = %entry
  call void @klee_report_error(i8* getelementptr inbounds ([13 x i8]* @.str611, i64 0, i64 0), i32 17, i8* getelementptr inbounds ([14 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str28, i64 0, i64 0)) noreturn nounwind, !dbg !1
  unreachable, !dbg !164

bb1:                                              ; preds = %entry
  %1 = add nsw i32 %start, 1, !dbg !165
  %2 = icmp eq i32 %1, %end, !dbg !165
  br i1 %2, label %bb8, label %bb3, !dbg !165

bb3:                                              ; preds = %bb1
  %x4 = bitcast i32* %x to i8*, !dbg !166
  call void @klee_make_symbolic(i8* %x4, i64 4, i8* %name) nounwind, !dbg !166
  %3 = icmp eq i32 %start, 0, !dbg !167
  %4 = load i32* %x, align 4, !dbg !168
  br i1 %3, label %bb5, label %bb6, !dbg !167

bb5:                                              ; preds = %bb3
  %5 = icmp ult i32 %4, %end, !dbg !168
  %6 = zext i1 %5 to i64, !dbg !168
  call void @klee_assume(i64 %6) nounwind, !dbg !168
  br label %bb7, !dbg !168

bb6:                                              ; preds = %bb3
  %7 = icmp sge i32 %4, %start, !dbg !169
  %8 = zext i1 %7 to i64, !dbg !169
  call void @klee_assume(i64 %8) nounwind, !dbg !169
  %9 = load i32* %x, align 4, !dbg !170
  %10 = icmp slt i32 %9, %end, !dbg !170
  %11 = zext i1 %10 to i64, !dbg !170
  call void @klee_assume(i64 %11) nounwind, !dbg !170
  br label %bb7, !dbg !170

bb7:                                              ; preds = %bb6, %bb5
  %12 = load i32* %x, align 4, !dbg !171
  br label %bb8, !dbg !171

bb8:                                              ; preds = %bb7, %bb1
  %.0 = phi i32 [ %12, %bb7 ], [ %start, %bb1 ]
  ret i32 %.0, !dbg !172
}

declare void @klee_assume(i64)

define weak i8* @memcpy(i8* %destaddr, i8* %srcaddr, i64 %len) nounwind {
entry:
  %0 = icmp eq i64 %len, 0, !dbg !173
  br i1 %0, label %bb2, label %bb, !dbg !173

bb:                                               ; preds = %bb, %entry
  %indvar = phi i64 [ %indvar.next, %bb ], [ 0, %entry ]
  %dest.05 = getelementptr i8* %destaddr, i64 %indvar
  %src.06 = getelementptr i8* %srcaddr, i64 %indvar
  %1 = load i8* %src.06, align 1, !dbg !174
  store i8 %1, i8* %dest.05, align 1, !dbg !174
  %indvar.next = add i64 %indvar, 1
  %exitcond1 = icmp eq i64 %indvar.next, %len
  br i1 %exitcond1, label %bb2, label %bb, !dbg !173

bb2:                                              ; preds = %bb, %entry
  ret i8* %destaddr, !dbg !175
}

define weak i8* @mempcpy(i8* %destaddr, i8* %srcaddr, i64 %len) nounwind {
entry:
  %0 = icmp eq i64 %len, 0, !dbg !176
  br i1 %0, label %bb2, label %bb, !dbg !176

bb:                                               ; preds = %bb, %entry
  %indvar = phi i64 [ %indvar.next, %bb ], [ 0, %entry ]
  %dest.05 = getelementptr i8* %destaddr, i64 %indvar
  %src.06 = getelementptr i8* %srcaddr, i64 %indvar
  %1 = load i8* %src.06, align 1, !dbg !177
  store i8 %1, i8* %dest.05, align 1, !dbg !177
  %indvar.next = add i64 %indvar, 1
  %exitcond1 = icmp eq i64 %indvar.next, %len
  br i1 %exitcond1, label %bb1.bb2_crit_edge, label %bb, !dbg !176

bb1.bb2_crit_edge:                                ; preds = %bb
  %scevgep = getelementptr i8* %destaddr, i64 %len
  br label %bb2

bb2:                                              ; preds = %bb1.bb2_crit_edge, %entry
  %dest.0.lcssa = phi i8* [ %scevgep, %bb1.bb2_crit_edge ], [ %destaddr, %entry ]
  ret i8* %dest.0.lcssa, !dbg !178
}

define weak i8* @memset(i8* %dst, i32 %s, i64 %count) nounwind {
entry:
  %0 = icmp eq i64 %count, 0, !dbg !179
  br i1 %0, label %bb2, label %bb.lr.ph, !dbg !179

bb.lr.ph:                                         ; preds = %entry
  %1 = trunc i32 %s to i8, !dbg !180
  br label %bb

bb:                                               ; preds = %bb, %bb.lr.ph
  %indvar = phi i64 [ 0, %bb.lr.ph ], [ %indvar.next, %bb ]
  %a.05 = getelementptr i8* %dst, i64 %indvar
  volatile store i8 %1, i8* %a.05, align 1, !dbg !180
  %indvar.next = add i64 %indvar, 1
  %exitcond1 = icmp eq i64 %indvar.next, %count
  br i1 %exitcond1, label %bb2, label %bb, !dbg !179

bb2:                                              ; preds = %bb, %entry
  ret i8* %dst, !dbg !181
}

!llvm.dbg.sp = !{!0, !5, !6, !10, !16, !22, !31, !37, !46, !55, !64, !73}
!llvm.dbg.lv.klee_div_zero_check = !{!83}
!llvm.dbg.lv.klee_int = !{!84, !85}
!llvm.dbg.lv.klee_overshift_check = !{!87, !88}
!llvm.dbg.lv.klee_range = !{!89, !90, !91, !92}
!llvm.dbg.lv.memcpy = !{!94, !95, !96, !97, !101}
!llvm.dbg.lv.memmove = !{!104, !105, !106, !107, !111}
!llvm.dbg.lv.mempcpy = !{!114, !115, !116, !117, !121}
!llvm.dbg.lv.memset = !{!124, !125, !126, !127}

!0 = metadata !{i32 589870, i32 0, metadata !1, metadata !"good", metadata !"good", metadata !"good", metadata !1, i32 8, metadata !3, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @good} ; [ DW_TAG_subprogram ]
!1 = metadata !{i32 589865, metadata !"level03.c", metadata !"/home/ecwong/Documents/18-739L/research/io/level03/", metadata !2} ; [ DW_TAG_file_type ]
!2 = metadata !{i32 589841, i32 0, i32 1, metadata !"level03.c", metadata !"/home/ecwong/Documents/18-739L/research/io/level03/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_comp
!3 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !4, i32 0, null} ; [ DW_TAG_subroutine_type ]
!4 = metadata !{null}
!5 = metadata !{i32 589870, i32 0, metadata !1, metadata !"bad", metadata !"bad", metadata !"bad", metadata !1, i32 14, metadata !3, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @bad} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 589870, i32 0, metadata !1, metadata !"main", metadata !"main", metadata !"main", metadata !1, i32 18, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ()* @main} ; [ DW_TAG_subprogram ]
!7 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, null} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !9}
!9 = metadata !{i32 589860, metadata !1, metadata !"int", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!10 = metadata !{i32 589870, i32 0, metadata !1, metadata !"orig_main", metadata !"orig_main", metadata !"orig_main", metadata !1, i32 33, metadata !11, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i8**, i8**)* @orig_main} ; [ DW_T
!11 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !12, i32 0, null} ; [ DW_TAG_subroutine_type ]
!12 = metadata !{metadata !9, metadata !9, metadata !13, metadata !13}
!13 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ]
!14 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_pointer_type ]
!15 = metadata !{i32 589860, metadata !1, metadata !"char", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!16 = metadata !{i32 589870, i32 0, metadata !17, metadata !"klee_div_zero_check", metadata !"klee_div_zero_check", metadata !"klee_div_zero_check", metadata !17, i32 12, metadata !19, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64)* 
!17 = metadata !{i32 589865, metadata !"klee_div_zero_check.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !18} ; [ DW_TAG_file_type ]
!18 = metadata !{i32 589841, i32 0, i32 1, metadata !"klee_div_zero_check.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compile
!19 = metadata !{i32 589845, metadata !17, metadata !"", metadata !17, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !20, i32 0, null} ; [ DW_TAG_subroutine_type ]
!20 = metadata !{null, metadata !21}
!21 = metadata !{i32 589860, metadata !17, metadata !"long long int", metadata !17, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!22 = metadata !{i32 589870, i32 0, metadata !23, metadata !"klee_int", metadata !"klee_int", metadata !"klee_int", metadata !23, i32 13, metadata !25, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @klee_int} ; [ DW_TAG_subprogram ]
!23 = metadata !{i32 589865, metadata !"klee_int.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !24} ; [ DW_TAG_file_type ]
!24 = metadata !{i32 589841, i32 0, i32 1, metadata !"klee_int.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!25 = metadata !{i32 589845, metadata !23, metadata !"", metadata !23, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !26, i32 0, null} ; [ DW_TAG_subroutine_type ]
!26 = metadata !{metadata !27, metadata !28}
!27 = metadata !{i32 589860, metadata !23, metadata !"int", metadata !23, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!28 = metadata !{i32 589839, metadata !23, metadata !"", metadata !23, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !29} ; [ DW_TAG_pointer_type ]
!29 = metadata !{i32 589862, metadata !23, metadata !"", metadata !23, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !30} ; [ DW_TAG_const_type ]
!30 = metadata !{i32 589860, metadata !23, metadata !"char", metadata !23, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!31 = metadata !{i32 589870, i32 0, metadata !32, metadata !"klee_overshift_check", metadata !"klee_overshift_check", metadata !"klee_overshift_check", metadata !32, i32 20, metadata !34, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64
!32 = metadata !{i32 589865, metadata !"klee_overshift_check.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !33} ; [ DW_TAG_file_type ]
!33 = metadata !{i32 589841, i32 0, i32 1, metadata !"klee_overshift_check.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compil
!34 = metadata !{i32 589845, metadata !32, metadata !"", metadata !32, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !35, i32 0, null} ; [ DW_TAG_subroutine_type ]
!35 = metadata !{null, metadata !36, metadata !36}
!36 = metadata !{i32 589860, metadata !32, metadata !"long long unsigned int", metadata !32, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!37 = metadata !{i32 589870, i32 0, metadata !38, metadata !"klee_range", metadata !"klee_range", metadata !"klee_range", metadata !38, i32 13, metadata !40, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i8*)* @klee_range} ; [ D
!38 = metadata !{i32 589865, metadata !"klee_range.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !39} ; [ DW_TAG_file_type ]
!39 = metadata !{i32 589841, i32 0, i32 1, metadata !"klee_range.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!40 = metadata !{i32 589845, metadata !38, metadata !"", metadata !38, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !41, i32 0, null} ; [ DW_TAG_subroutine_type ]
!41 = metadata !{metadata !42, metadata !42, metadata !42, metadata !43}
!42 = metadata !{i32 589860, metadata !38, metadata !"int", metadata !38, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!43 = metadata !{i32 589839, metadata !38, metadata !"", metadata !38, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !44} ; [ DW_TAG_pointer_type ]
!44 = metadata !{i32 589862, metadata !38, metadata !"", metadata !38, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !45} ; [ DW_TAG_const_type ]
!45 = metadata !{i32 589860, metadata !38, metadata !"char", metadata !38, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!46 = metadata !{i32 589870, i32 0, metadata !47, metadata !"memcpy", metadata !"memcpy", metadata !"memcpy", metadata !47, i32 12, metadata !49, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memcpy} ; [ DW_TAG_subprogram
!47 = metadata !{i32 589865, metadata !"memcpy.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !48} ; [ DW_TAG_file_type ]
!48 = metadata !{i32 589841, i32 0, i32 1, metadata !"memcpy.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!49 = metadata !{i32 589845, metadata !47, metadata !"", metadata !47, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !50, i32 0, null} ; [ DW_TAG_subroutine_type ]
!50 = metadata !{metadata !51, metadata !51, metadata !51, metadata !52}
!51 = metadata !{i32 589839, metadata !47, metadata !"", metadata !47, i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ]
!52 = metadata !{i32 589846, metadata !53, metadata !"size_t", metadata !53, i32 326, i64 0, i64 0, i64 0, i32 0, metadata !54} ; [ DW_TAG_typedef ]
!53 = metadata !{i32 589865, metadata !"stddef.h", metadata !"/usr/local/bin/llvm-gcc4.2-2.9-x86_64-linux/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.2.1/include", metadata !48} ; [ DW_TAG_file_type ]
!54 = metadata !{i32 589860, metadata !47, metadata !"long unsigned int", metadata !47, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!55 = metadata !{i32 589870, i32 0, metadata !56, metadata !"memmove", metadata !"memmove", metadata !"memmove", metadata !56, i32 12, metadata !58, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null} ; [ DW_TAG_subprogram ]
!56 = metadata !{i32 589865, metadata !"memmove.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !57} ; [ DW_TAG_file_type ]
!57 = metadata !{i32 589841, i32 0, i32 1, metadata !"memmove.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!58 = metadata !{i32 589845, metadata !56, metadata !"", metadata !56, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !59, i32 0, null} ; [ DW_TAG_subroutine_type ]
!59 = metadata !{metadata !60, metadata !60, metadata !60, metadata !61}
!60 = metadata !{i32 589839, metadata !56, metadata !"", metadata !56, i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ]
!61 = metadata !{i32 589846, metadata !62, metadata !"size_t", metadata !62, i32 326, i64 0, i64 0, i64 0, i32 0, metadata !63} ; [ DW_TAG_typedef ]
!62 = metadata !{i32 589865, metadata !"stddef.h", metadata !"/usr/local/bin/llvm-gcc4.2-2.9-x86_64-linux/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.2.1/include", metadata !57} ; [ DW_TAG_file_type ]
!63 = metadata !{i32 589860, metadata !56, metadata !"long unsigned int", metadata !56, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!64 = metadata !{i32 589870, i32 0, metadata !65, metadata !"mempcpy", metadata !"mempcpy", metadata !"mempcpy", metadata !65, i32 11, metadata !67, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @mempcpy} ; [ DW_TAG_subpro
!65 = metadata !{i32 589865, metadata !"mempcpy.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !66} ; [ DW_TAG_file_type ]
!66 = metadata !{i32 589841, i32 0, i32 1, metadata !"mempcpy.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!67 = metadata !{i32 589845, metadata !65, metadata !"", metadata !65, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !68, i32 0, null} ; [ DW_TAG_subroutine_type ]
!68 = metadata !{metadata !69, metadata !69, metadata !69, metadata !70}
!69 = metadata !{i32 589839, metadata !65, metadata !"", metadata !65, i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ]
!70 = metadata !{i32 589846, metadata !71, metadata !"size_t", metadata !71, i32 326, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_typedef ]
!71 = metadata !{i32 589865, metadata !"stddef.h", metadata !"/usr/local/bin/llvm-gcc4.2-2.9-x86_64-linux/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.2.1/include", metadata !66} ; [ DW_TAG_file_type ]
!72 = metadata !{i32 589860, metadata !65, metadata !"long unsigned int", metadata !65, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!73 = metadata !{i32 589870, i32 0, metadata !74, metadata !"memset", metadata !"memset", metadata !"memset", metadata !74, i32 11, metadata !76, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i32, i64)* @memset} ; [ DW_TAG_subprogram
!74 = metadata !{i32 589865, metadata !"memset.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !75} ; [ DW_TAG_file_type ]
!75 = metadata !{i32 589841, i32 0, i32 1, metadata !"memset.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!76 = metadata !{i32 589845, metadata !74, metadata !"", metadata !74, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !77, i32 0, null} ; [ DW_TAG_subroutine_type ]
!77 = metadata !{metadata !78, metadata !78, metadata !79, metadata !80}
!78 = metadata !{i32 589839, metadata !74, metadata !"", metadata !74, i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ]
!79 = metadata !{i32 589860, metadata !74, metadata !"int", metadata !74, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!80 = metadata !{i32 589846, metadata !81, metadata !"size_t", metadata !81, i32 326, i64 0, i64 0, i64 0, i32 0, metadata !82} ; [ DW_TAG_typedef ]
!81 = metadata !{i32 589865, metadata !"stddef.h", metadata !"/usr/local/bin/llvm-gcc4.2-2.9-x86_64-linux/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.2.1/include", metadata !75} ; [ DW_TAG_file_type ]
!82 = metadata !{i32 589860, metadata !74, metadata !"long unsigned int", metadata !74, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!83 = metadata !{i32 590081, metadata !16, metadata !"z", metadata !17, i32 12, metadata !21, i32 0} ; [ DW_TAG_arg_variable ]
!84 = metadata !{i32 590081, metadata !22, metadata !"name", metadata !23, i32 13, metadata !28, i32 0} ; [ DW_TAG_arg_variable ]
!85 = metadata !{i32 590080, metadata !86, metadata !"x", metadata !23, i32 14, metadata !27, i32 0} ; [ DW_TAG_auto_variable ]
!86 = metadata !{i32 589835, metadata !22, i32 13, i32 0, metadata !23, i32 0} ; [ DW_TAG_lexical_block ]
!87 = metadata !{i32 590081, metadata !31, metadata !"bitWidth", metadata !32, i32 20, metadata !36, i32 0} ; [ DW_TAG_arg_variable ]
!88 = metadata !{i32 590081, metadata !31, metadata !"shift", metadata !32, i32 20, metadata !36, i32 0} ; [ DW_TAG_arg_variable ]
!89 = metadata !{i32 590081, metadata !37, metadata !"start", metadata !38, i32 13, metadata !42, i32 0} ; [ DW_TAG_arg_variable ]
!90 = metadata !{i32 590081, metadata !37, metadata !"end", metadata !38, i32 13, metadata !42, i32 0} ; [ DW_TAG_arg_variable ]
!91 = metadata !{i32 590081, metadata !37, metadata !"name", metadata !38, i32 13, metadata !43, i32 0} ; [ DW_TAG_arg_variable ]
!92 = metadata !{i32 590080, metadata !93, metadata !"x", metadata !38, i32 14, metadata !42, i32 0} ; [ DW_TAG_auto_variable ]
!93 = metadata !{i32 589835, metadata !37, i32 13, i32 0, metadata !38, i32 0} ; [ DW_TAG_lexical_block ]
!94 = metadata !{i32 590081, metadata !46, metadata !"destaddr", metadata !47, i32 12, metadata !51, i32 0} ; [ DW_TAG_arg_variable ]
!95 = metadata !{i32 590081, metadata !46, metadata !"srcaddr", metadata !47, i32 12, metadata !51, i32 0} ; [ DW_TAG_arg_variable ]
!96 = metadata !{i32 590081, metadata !46, metadata !"len", metadata !47, i32 12, metadata !52, i32 0} ; [ DW_TAG_arg_variable ]
!97 = metadata !{i32 590080, metadata !98, metadata !"dest", metadata !47, i32 13, metadata !99, i32 0} ; [ DW_TAG_auto_variable ]
!98 = metadata !{i32 589835, metadata !46, i32 12, i32 0, metadata !47, i32 0} ; [ DW_TAG_lexical_block ]
!99 = metadata !{i32 589839, metadata !47, metadata !"", metadata !47, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !100} ; [ DW_TAG_pointer_type ]
!100 = metadata !{i32 589860, metadata !47, metadata !"char", metadata !47, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!101 = metadata !{i32 590080, metadata !98, metadata !"src", metadata !47, i32 14, metadata !102, i32 0} ; [ DW_TAG_auto_variable ]
!102 = metadata !{i32 589839, metadata !47, metadata !"", metadata !47, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !103} ; [ DW_TAG_pointer_type ]
!103 = metadata !{i32 589862, metadata !47, metadata !"", metadata !47, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !100} ; [ DW_TAG_const_type ]
!104 = metadata !{i32 590081, metadata !55, metadata !"dst", metadata !56, i32 12, metadata !60, i32 0} ; [ DW_TAG_arg_variable ]
!105 = metadata !{i32 590081, metadata !55, metadata !"src", metadata !56, i32 12, metadata !60, i32 0} ; [ DW_TAG_arg_variable ]
!106 = metadata !{i32 590081, metadata !55, metadata !"count", metadata !56, i32 12, metadata !61, i32 0} ; [ DW_TAG_arg_variable ]
!107 = metadata !{i32 590080, metadata !108, metadata !"a", metadata !56, i32 13, metadata !109, i32 0} ; [ DW_TAG_auto_variable ]
!108 = metadata !{i32 589835, metadata !55, i32 12, i32 0, metadata !56, i32 0} ; [ DW_TAG_lexical_block ]
!109 = metadata !{i32 589839, metadata !56, metadata !"", metadata !56, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !110} ; [ DW_TAG_pointer_type ]
!110 = metadata !{i32 589860, metadata !56, metadata !"char", metadata !56, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!111 = metadata !{i32 590080, metadata !108, metadata !"b", metadata !56, i32 14, metadata !112, i32 0} ; [ DW_TAG_auto_variable ]
!112 = metadata !{i32 589839, metadata !56, metadata !"", metadata !56, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !113} ; [ DW_TAG_pointer_type ]
!113 = metadata !{i32 589862, metadata !56, metadata !"", metadata !56, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !110} ; [ DW_TAG_const_type ]
!114 = metadata !{i32 590081, metadata !64, metadata !"destaddr", metadata !65, i32 11, metadata !69, i32 0} ; [ DW_TAG_arg_variable ]
!115 = metadata !{i32 590081, metadata !64, metadata !"srcaddr", metadata !65, i32 11, metadata !69, i32 0} ; [ DW_TAG_arg_variable ]
!116 = metadata !{i32 590081, metadata !64, metadata !"len", metadata !65, i32 11, metadata !70, i32 0} ; [ DW_TAG_arg_variable ]
!117 = metadata !{i32 590080, metadata !118, metadata !"dest", metadata !65, i32 12, metadata !119, i32 0} ; [ DW_TAG_auto_variable ]
!118 = metadata !{i32 589835, metadata !64, i32 11, i32 0, metadata !65, i32 0} ; [ DW_TAG_lexical_block ]
!119 = metadata !{i32 589839, metadata !65, metadata !"", metadata !65, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !120} ; [ DW_TAG_pointer_type ]
!120 = metadata !{i32 589860, metadata !65, metadata !"char", metadata !65, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!121 = metadata !{i32 590080, metadata !118, metadata !"src", metadata !65, i32 13, metadata !122, i32 0} ; [ DW_TAG_auto_variable ]
!122 = metadata !{i32 589839, metadata !65, metadata !"", metadata !65, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !123} ; [ DW_TAG_pointer_type ]
!123 = metadata !{i32 589862, metadata !65, metadata !"", metadata !65, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !120} ; [ DW_TAG_const_type ]
!124 = metadata !{i32 590081, metadata !73, metadata !"dst", metadata !74, i32 11, metadata !78, i32 0} ; [ DW_TAG_arg_variable ]
!125 = metadata !{i32 590081, metadata !73, metadata !"s", metadata !74, i32 11, metadata !79, i32 0} ; [ DW_TAG_arg_variable ]
!126 = metadata !{i32 590081, metadata !73, metadata !"count", metadata !74, i32 11, metadata !80, i32 0} ; [ DW_TAG_arg_variable ]
!127 = metadata !{i32 590080, metadata !128, metadata !"a", metadata !74, i32 12, metadata !129, i32 0} ; [ DW_TAG_auto_variable ]
!128 = metadata !{i32 589835, metadata !73, i32 11, i32 0, metadata !74, i32 0} ; [ DW_TAG_lexical_block ]
!129 = metadata !{i32 589839, metadata !74, metadata !"", metadata !74, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !130} ; [ DW_TAG_pointer_type ]
!130 = metadata !{i32 589877, metadata !74, metadata !"", metadata !74, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !131} ; [ DW_TAG_volatile_type ]
!131 = metadata !{i32 589860, metadata !74, metadata !"char", metadata !74, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!132 = metadata !{i32 9, i32 0, metadata !133, null}
!133 = metadata !{i32 589835, metadata !0, i32 8, i32 0, metadata !1, i32 0} ; [ DW_TAG_lexical_block ]
!134 = metadata !{i32 10, i32 0, metadata !133, null}
!135 = metadata !{i32 15, i32 0, metadata !136, null}
!136 = metadata !{i32 589835, metadata !5, i32 14, i32 0, metadata !1, i32 1} ; [ DW_TAG_lexical_block ]
!137 = metadata !{i32 16, i32 0, metadata !136, null}
!138 = metadata !{i32 22, i32 0, metadata !139, null}
!139 = metadata !{i32 589835, metadata !6, i32 18, i32 0, metadata !1, i32 2} ; [ DW_TAG_lexical_block ]
!140 = metadata !{i32 24, i32 0, metadata !139, null}
!141 = metadata !{i32 26, i32 0, metadata !139, null}
!142 = metadata !{i32 27, i32 0, metadata !139, null}
!143 = metadata !{i32 29, i32 0, metadata !139, null}
!144 = metadata !{i32 34, i32 0, metadata !145, null}
!145 = metadata !{i32 589835, metadata !10, i32 33, i32 0, metadata !1, i32 3} ; [ DW_TAG_lexical_block ]
!146 = metadata !{i32 37, i32 0, metadata !145, null}
!147 = metadata !{i32 38, i32 0, metadata !145, null}
!148 = metadata !{i32 40, i32 0, metadata !145, null}
!149 = metadata !{i32 41, i32 0, metadata !145, null}
!150 = metadata !{i32 43, i32 0, metadata !145, null}
!151 = metadata !{i32 44, i32 0, metadata !145, null}
!152 = metadata !{i32 46, i32 0, metadata !145, null}
!153 = metadata !{i32 13, i32 0, metadata !154, null}
!154 = metadata !{i32 589835, metadata !16, i32 12, i32 0, metadata !17, i32 0} ; [ DW_TAG_lexical_block ]
!155 = metadata !{i32 14, i32 0, metadata !154, null}
!156 = metadata !{i32 15, i32 0, metadata !154, null}
!157 = metadata !{i32 15, i32 0, metadata !86, null}
!158 = metadata !{i32 16, i32 0, metadata !86, null}
!159 = metadata !{i32 21, i32 0, metadata !160, null}
!160 = metadata !{i32 589835, metadata !31, i32 20, i32 0, metadata !32, i32 0} ; [ DW_TAG_lexical_block ]
!161 = metadata !{i32 27, i32 0, metadata !160, null}
!162 = metadata !{i32 29, i32 0, metadata !160, null}
!163 = metadata !{i32 16, i32 0, metadata !93, null}
!164 = metadata !{i32 17, i32 0, metadata !93, null}
!165 = metadata !{i32 19, i32 0, metadata !93, null}
!166 = metadata !{i32 22, i32 0, metadata !93, null}
!167 = metadata !{i32 25, i32 0, metadata !93, null}
!168 = metadata !{i32 26, i32 0, metadata !93, null}
!169 = metadata !{i32 28, i32 0, metadata !93, null}
!170 = metadata !{i32 29, i32 0, metadata !93, null}
!171 = metadata !{i32 32, i32 0, metadata !93, null}
!172 = metadata !{i32 20, i32 0, metadata !93, null}
!173 = metadata !{i32 16, i32 0, metadata !98, null}
!174 = metadata !{i32 17, i32 0, metadata !98, null}
!175 = metadata !{i32 18, i32 0, metadata !98, null}
!176 = metadata !{i32 15, i32 0, metadata !118, null}
!177 = metadata !{i32 16, i32 0, metadata !118, null}
!178 = metadata !{i32 17, i32 0, metadata !118, null}
!179 = metadata !{i32 13, i32 0, metadata !128, null}
!180 = metadata !{i32 14, i32 0, metadata !128, null}
!181 = metadata !{i32 15, i32 0, metadata !128, null}
