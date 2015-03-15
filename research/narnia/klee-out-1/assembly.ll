; ModuleID = 'narnia0.o'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-f128:128:128-n8:16:32"
target triple = "i386-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str1 = private unnamed_addr constant [51 x i8] c"Correct val's value from 0x41414141 -> 0xdeadbeef!\00", align 4
@.str2 = private unnamed_addr constant [22 x i8] c"Here is your chance: \00", align 1
@.str3 = private unnamed_addr constant [9 x i8] c"buf: %s\0A\00", align 1
@.str4 = private unnamed_addr constant [13 x i8] c"val: 0x%08x\0A\00", align 1
@.str5 = private unnamed_addr constant [8 x i8] c"/bin/sh\00", align 1
@.str6 = private unnamed_addr constant [12 x i8] c"WAY OFF!!!!\00", align 1
@.str7 = private constant [22 x i8] c"klee_div_zero_check.c\00", align 1
@.str18 = private constant [15 x i8] c"divide by zero\00", align 1
@.str29 = private constant [8 x i8] c"div.err\00", align 1
@.str310 = private constant [8 x i8] c"IGNORED\00", align 1
@.str14 = private constant [16 x i8] c"overshift error\00", align 1
@.str25 = private constant [14 x i8] c"overshift.err\00", align 1
@.str611 = private constant [13 x i8] c"klee_range.c\00", align 1
@.str17 = private constant [14 x i8] c"invalid range\00", align 1
@.str28 = private constant [5 x i8] c"user\00", align 1

define i32 @main() nounwind {
entry:
  %retval = alloca i32
  %0 = alloca i32
  %in = alloca [25 x i8]
  %"alloca point" = bitcast i32 0 to i32
  %in1 = bitcast [25 x i8]* %in to i8*, !dbg !127
  call void @klee_make_symbolic(i8* %in1, i32 25, i8* getelementptr inbounds ([3 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !127
  %in2 = bitcast [25 x i8]* %in to i8*, !dbg !129
  %1 = call i32 (...)* bitcast (i32 (i8*)* @orig_main to i32 (...)*)(i8* %in2) nounwind, !dbg !129
  store i32 %1, i32* %0, align 4, !dbg !129
  %2 = load i32* %0, align 4, !dbg !129
  store i32 %2, i32* %retval, align 4, !dbg !129
  %retval3 = load i32* %retval, !dbg !129
  ret i32 %retval3, !dbg !129
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

declare void @klee_make_symbolic(i8*, i32, i8*)

define i32 @orig_main(i8* %in) nounwind {
entry:
  %in_addr = alloca i8*, align 4
  %retval = alloca i32
  %0 = alloca i32
  %val = alloca i32
  %buf = alloca [20 x i8]
  %"alloca point" = bitcast i32 0 to i32
  store i8* %in, i8** %in_addr
  store i32 1094795585, i32* %val, align 4, !dbg !130
  %1 = call i32 @puts(i8* getelementptr inbounds ([51 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !132
  %2 = call i32 (i8*, ...)* @printf(i8* noalias getelementptr inbounds ([22 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !133
  %buf1 = bitcast [20 x i8]* %buf to i8*, !dbg !134
  %3 = load i8** %in_addr, align 4, !dbg !134
  %4 = call i8* @strncpy(i8* noalias %buf1, i8* noalias %3, i32 24) nounwind, !dbg !134
  %buf2 = bitcast [20 x i8]* %buf to i8*, !dbg !135
  %5 = call i32 (i8*, ...)* @printf(i8* noalias getelementptr inbounds ([9 x i8]* @.str3, i32 0, i32 0), i8* %buf2) nounwind, !dbg !135
  %6 = load i32* %val, align 4, !dbg !136
  %7 = call i32 (i8*, ...)* @printf(i8* noalias getelementptr inbounds ([13 x i8]* @.str4, i32 0, i32 0), i32 %6) nounwind, !dbg !136
  %8 = load i32* %val, align 4, !dbg !137
  %9 = icmp eq i32 %8, -559038737, !dbg !137
  br i1 %9, label %bb, label %bb3, !dbg !137

bb:                                               ; preds = %entry
  %10 = call i32 @system(i8* getelementptr inbounds ([8 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !138
  store i32 0, i32* %0, align 4, !dbg !139
  %11 = load i32* %0, align 4, !dbg !139
  store i32 %11, i32* %retval, align 4, !dbg !139
  %retval4 = load i32* %retval, !dbg !140
  ret i32 %retval4, !dbg !140

bb3:                                              ; preds = %entry
  %12 = call i32 @puts(i8* getelementptr inbounds ([12 x i8]* @.str6, i32 0, i32 0)) nounwind, !dbg !141
  call void @exit(i32 1) noreturn nounwind, !dbg !140
  unreachable, !dbg !140
}

declare i32 @puts(i8*)

declare i32 @printf(i8* noalias, ...) nounwind

declare i8* @strncpy(i8* noalias, i8* noalias, i32) nounwind

declare i32 @system(i8*)

declare void @exit(i32) noreturn nounwind

define void @klee_div_zero_check(i64 %z) nounwind {
entry:
  %0 = icmp eq i64 %z, 0, !dbg !142
  br i1 %0, label %bb, label %return, !dbg !142

bb:                                               ; preds = %entry
  tail call void @klee_report_error(i8* getelementptr inbounds ([22 x i8]* @.str7, i64 0, i64 0), i32 14, i8* getelementptr inbounds ([15 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str29, i64 0, i64 0)) noreturn nounwind, !dbg
  unreachable, !dbg !144

return:                                           ; preds = %entry
  ret void, !dbg !145
}

declare void @klee_report_error(i8*, i32, i8*, i8*) noreturn

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define i32 @klee_int(i8* %name) nounwind {
entry:
  %x = alloca i32, align 4
  %x1 = bitcast i32* %x to i8*, !dbg !146
  call void bitcast (void (i8*, i32, i8*)* @klee_make_symbolic to void (i8*, i64, i8*)*)(i8* %x1, i64 4, i8* %name) nounwind, !dbg !146
  %0 = load i32* %x, align 4, !dbg !147
  ret i32 %0, !dbg !147
}

define void @klee_overshift_check(i64 %bitWidth, i64 %shift) nounwind {
entry:
  %0 = icmp ult i64 %shift, %bitWidth, !dbg !148
  br i1 %0, label %return, label %bb, !dbg !148

bb:                                               ; preds = %entry
  tail call void @klee_report_error(i8* getelementptr inbounds ([8 x i8]* @.str310, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([16 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str25, i64 0, i64 0)) noreturn nounwind, !db
  unreachable, !dbg !150

return:                                           ; preds = %entry
  ret void, !dbg !151
}

define i32 @klee_range(i32 %start, i32 %end, i8* %name) nounwind {
entry:
  %x = alloca i32, align 4
  %0 = icmp slt i32 %start, %end, !dbg !152
  br i1 %0, label %bb1, label %bb, !dbg !152

bb:                                               ; preds = %entry
  call void @klee_report_error(i8* getelementptr inbounds ([13 x i8]* @.str611, i64 0, i64 0), i32 17, i8* getelementptr inbounds ([14 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str28, i64 0, i64 0)) noreturn nounwind, !dbg !1
  unreachable, !dbg !153

bb1:                                              ; preds = %entry
  %1 = add nsw i32 %start, 1, !dbg !154
  %2 = icmp eq i32 %1, %end, !dbg !154
  br i1 %2, label %bb8, label %bb3, !dbg !154

bb3:                                              ; preds = %bb1
  %x4 = bitcast i32* %x to i8*, !dbg !155
  call void bitcast (void (i8*, i32, i8*)* @klee_make_symbolic to void (i8*, i64, i8*)*)(i8* %x4, i64 4, i8* %name) nounwind, !dbg !155
  %3 = icmp eq i32 %start, 0, !dbg !156
  %4 = load i32* %x, align 4, !dbg !157
  br i1 %3, label %bb5, label %bb6, !dbg !156

bb5:                                              ; preds = %bb3
  %5 = icmp ult i32 %4, %end, !dbg !157
  %6 = zext i1 %5 to i64, !dbg !157
  call void @klee_assume(i64 %6) nounwind, !dbg !157
  br label %bb7, !dbg !157

bb6:                                              ; preds = %bb3
  %7 = icmp sge i32 %4, %start, !dbg !158
  %8 = zext i1 %7 to i64, !dbg !158
  call void @klee_assume(i64 %8) nounwind, !dbg !158
  %9 = load i32* %x, align 4, !dbg !159
  %10 = icmp slt i32 %9, %end, !dbg !159
  %11 = zext i1 %10 to i64, !dbg !159
  call void @klee_assume(i64 %11) nounwind, !dbg !159
  br label %bb7, !dbg !159

bb7:                                              ; preds = %bb6, %bb5
  %12 = load i32* %x, align 4, !dbg !160
  br label %bb8, !dbg !160

bb8:                                              ; preds = %bb7, %bb1
  %.0 = phi i32 [ %12, %bb7 ], [ %start, %bb1 ]
  ret i32 %.0, !dbg !161
}

declare void @klee_assume(i64)

define weak i8* @memcpy(i8* %destaddr, i8* %srcaddr, i64 %len) nounwind {
entry:
  %0 = icmp eq i64 %len, 0, !dbg !162
  br i1 %0, label %bb2, label %bb, !dbg !162

bb:                                               ; preds = %bb, %entry
  %indvar = phi i64 [ %indvar.next, %bb ], [ 0, %entry ]
  %dest.05 = getelementptr i8* %destaddr, i64 %indvar
  %src.06 = getelementptr i8* %srcaddr, i64 %indvar
  %1 = load i8* %src.06, align 1, !dbg !163
  store i8 %1, i8* %dest.05, align 1, !dbg !163
  %indvar.next = add i64 %indvar, 1
  %exitcond1 = icmp eq i64 %indvar.next, %len
  br i1 %exitcond1, label %bb2, label %bb, !dbg !162

bb2:                                              ; preds = %bb, %entry
  ret i8* %destaddr, !dbg !164
}

define weak i8* @memmove(i8* %dst, i8* %src, i64 %count) nounwind {
entry:
  %0 = icmp eq i8* %src, %dst, !dbg !165
  br i1 %0, label %bb8, label %bb1, !dbg !165

bb1:                                              ; preds = %entry
  %1 = icmp ugt i8* %src, %dst, !dbg !166
  %2 = icmp eq i64 %count, 0, !dbg !167
  br i1 %1, label %bb3.preheader, label %bb4, !dbg !166

bb3.preheader:                                    ; preds = %bb1
  br i1 %2, label %bb8, label %bb2, !dbg !167

bb2:                                              ; preds = %bb2, %bb3.preheader
  %indvar19 = phi i64 [ %indvar.next20, %bb2 ], [ 0, %bb3.preheader ]
  %a.015 = getelementptr i8* %dst, i64 %indvar19
  %b.016 = getelementptr i8* %src, i64 %indvar19
  %3 = load i8* %b.016, align 1, !dbg !167
  store i8 %3, i8* %a.015, align 1, !dbg !167
  %indvar.next20 = add i64 %indvar19, 1
  %exitcond = icmp eq i64 %indvar.next20, %count
  br i1 %exitcond, label %bb8, label %bb2, !dbg !167

bb4:                                              ; preds = %bb1
  br i1 %2, label %bb8, label %bb5.lr.ph, !dbg !168

bb5.lr.ph:                                        ; preds = %bb4
  %tmp17 = add i64 %count, -1
  br label %bb5

bb5:                                              ; preds = %bb5, %bb5.lr.ph
  %indvar = phi i64 [ 0, %bb5.lr.ph ], [ %indvar.next, %bb5 ]
  %tmp3 = sub i64 %tmp17, %indvar
  %a.111 = getelementptr i8* %dst, i64 %tmp3
  %b.112 = getelementptr i8* %src, i64 %tmp3
  %4 = load i8* %b.112, align 1, !dbg !168
  store i8 %4, i8* %a.111, align 1, !dbg !168
  %indvar.next = add i64 %indvar, 1
  %exitcond2 = icmp eq i64 %indvar.next, %count
  br i1 %exitcond2, label %bb8, label %bb5, !dbg !168

bb8:                                              ; preds = %bb5, %bb4, %bb2, %bb3.preheader, %entry
  ret i8* %dst, !dbg !169
}

define weak i8* @mempcpy(i8* %destaddr, i8* %srcaddr, i64 %len) nounwind {
entry:
  %0 = icmp eq i64 %len, 0, !dbg !170
  br i1 %0, label %bb2, label %bb, !dbg !170

bb:                                               ; preds = %bb, %entry
  %indvar = phi i64 [ %indvar.next, %bb ], [ 0, %entry ]
  %dest.05 = getelementptr i8* %destaddr, i64 %indvar
  %src.06 = getelementptr i8* %srcaddr, i64 %indvar
  %1 = load i8* %src.06, align 1, !dbg !171
  store i8 %1, i8* %dest.05, align 1, !dbg !171
  %indvar.next = add i64 %indvar, 1
  %exitcond1 = icmp eq i64 %indvar.next, %len
  br i1 %exitcond1, label %bb1.bb2_crit_edge, label %bb, !dbg !170

bb1.bb2_crit_edge:                                ; preds = %bb
  %scevgep = getelementptr i8* %destaddr, i64 %len
  br label %bb2

bb2:                                              ; preds = %bb1.bb2_crit_edge, %entry
  %dest.0.lcssa = phi i8* [ %scevgep, %bb1.bb2_crit_edge ], [ %destaddr, %entry ]
  ret i8* %dest.0.lcssa, !dbg !172
}

define weak i8* @memset(i8* %dst, i32 %s, i64 %count) nounwind {
entry:
  %0 = icmp eq i64 %count, 0, !dbg !173
  br i1 %0, label %bb2, label %bb.lr.ph, !dbg !173

bb.lr.ph:                                         ; preds = %entry
  %1 = trunc i32 %s to i8, !dbg !174
  br label %bb

bb:                                               ; preds = %bb, %bb.lr.ph
  %indvar = phi i64 [ 0, %bb.lr.ph ], [ %indvar.next, %bb ]
  %a.05 = getelementptr i8* %dst, i64 %indvar
  volatile store i8 %1, i8* %a.05, align 1, !dbg !174
  %indvar.next = add i64 %indvar, 1
  %exitcond1 = icmp eq i64 %indvar.next, %count
  br i1 %exitcond1, label %bb2, label %bb, !dbg !173

bb2:                                              ; preds = %bb, %entry
  ret i8* %dst, !dbg !175
}

!llvm.dbg.sp = !{!0, !6, !11, !17, !26, !32, !41, !50, !59, !68}
!llvm.dbg.lv.klee_div_zero_check = !{!78}
!llvm.dbg.lv.klee_int = !{!79, !80}
!llvm.dbg.lv.klee_overshift_check = !{!82, !83}
!llvm.dbg.lv.klee_range = !{!84, !85, !86, !87}
!llvm.dbg.lv.memcpy = !{!89, !90, !91, !92, !96}
!llvm.dbg.lv.memmove = !{!99, !100, !101, !102, !106}
!llvm.dbg.lv.mempcpy = !{!109, !110, !111, !112, !116}
!llvm.dbg.lv.memset = !{!119, !120, !121, !122}

!0 = metadata !{i32 589870, i32 0, metadata !1, metadata !"main", metadata !"main", metadata !"main", metadata !1, i32 21, metadata !3, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ()* @main} ; [ DW_TAG_subprogram ]
!1 = metadata !{i32 589865, metadata !"narnia0.c", metadata !"/home/ecwong/Documents/18-739L/research/narnia/", metadata !2} ; [ DW_TAG_file_type ]
!2 = metadata !{i32 589841, i32 0, i32 1, metadata !"narnia0.c", metadata !"/home/ecwong/Documents/18-739L/research/narnia/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_
!3 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !4, i32 0, null} ; [ DW_TAG_subroutine_type ]
!4 = metadata !{metadata !5}
!5 = metadata !{i32 589860, metadata !1, metadata !"int", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!6 = metadata !{i32 589870, i32 0, metadata !1, metadata !"orig_main", metadata !"orig_main", metadata !"orig_main", metadata !1, i32 28, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*)* @orig_main} ; [ DW_TAG_subprogram 
!7 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, null} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !5, metadata !9}
!9 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 589860, metadata !1, metadata !"char", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!11 = metadata !{i32 589870, i32 0, metadata !12, metadata !"klee_div_zero_check", metadata !"klee_div_zero_check", metadata !"klee_div_zero_check", metadata !12, i32 12, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64)* 
!12 = metadata !{i32 589865, metadata !"klee_div_zero_check.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !13} ; [ DW_TAG_file_type ]
!13 = metadata !{i32 589841, i32 0, i32 1, metadata !"klee_div_zero_check.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compile
!14 = metadata !{i32 589845, metadata !12, metadata !"", metadata !12, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, null} ; [ DW_TAG_subroutine_type ]
!15 = metadata !{null, metadata !16}
!16 = metadata !{i32 589860, metadata !12, metadata !"long long int", metadata !12, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!17 = metadata !{i32 589870, i32 0, metadata !18, metadata !"klee_int", metadata !"klee_int", metadata !"klee_int", metadata !18, i32 13, metadata !20, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @klee_int} ; [ DW_TAG_subprogram ]
!18 = metadata !{i32 589865, metadata !"klee_int.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !19} ; [ DW_TAG_file_type ]
!19 = metadata !{i32 589841, i32 0, i32 1, metadata !"klee_int.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!20 = metadata !{i32 589845, metadata !18, metadata !"", metadata !18, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !21, i32 0, null} ; [ DW_TAG_subroutine_type ]
!21 = metadata !{metadata !22, metadata !23}
!22 = metadata !{i32 589860, metadata !18, metadata !"int", metadata !18, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!23 = metadata !{i32 589839, metadata !18, metadata !"", metadata !18, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ]
!24 = metadata !{i32 589862, metadata !18, metadata !"", metadata !18, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !25} ; [ DW_TAG_const_type ]
!25 = metadata !{i32 589860, metadata !18, metadata !"char", metadata !18, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!26 = metadata !{i32 589870, i32 0, metadata !27, metadata !"klee_overshift_check", metadata !"klee_overshift_check", metadata !"klee_overshift_check", metadata !27, i32 20, metadata !29, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64
!27 = metadata !{i32 589865, metadata !"klee_overshift_check.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !28} ; [ DW_TAG_file_type ]
!28 = metadata !{i32 589841, i32 0, i32 1, metadata !"klee_overshift_check.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compil
!29 = metadata !{i32 589845, metadata !27, metadata !"", metadata !27, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !30, i32 0, null} ; [ DW_TAG_subroutine_type ]
!30 = metadata !{null, metadata !31, metadata !31}
!31 = metadata !{i32 589860, metadata !27, metadata !"long long unsigned int", metadata !27, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!32 = metadata !{i32 589870, i32 0, metadata !33, metadata !"klee_range", metadata !"klee_range", metadata !"klee_range", metadata !33, i32 13, metadata !35, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i8*)* @klee_range} ; [ D
!33 = metadata !{i32 589865, metadata !"klee_range.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !34} ; [ DW_TAG_file_type ]
!34 = metadata !{i32 589841, i32 0, i32 1, metadata !"klee_range.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!35 = metadata !{i32 589845, metadata !33, metadata !"", metadata !33, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !36, i32 0, null} ; [ DW_TAG_subroutine_type ]
!36 = metadata !{metadata !37, metadata !37, metadata !37, metadata !38}
!37 = metadata !{i32 589860, metadata !33, metadata !"int", metadata !33, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!38 = metadata !{i32 589839, metadata !33, metadata !"", metadata !33, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !39} ; [ DW_TAG_pointer_type ]
!39 = metadata !{i32 589862, metadata !33, metadata !"", metadata !33, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !40} ; [ DW_TAG_const_type ]
!40 = metadata !{i32 589860, metadata !33, metadata !"char", metadata !33, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!41 = metadata !{i32 589870, i32 0, metadata !42, metadata !"memcpy", metadata !"memcpy", metadata !"memcpy", metadata !42, i32 12, metadata !44, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memcpy} ; [ DW_TAG_subprogram
!42 = metadata !{i32 589865, metadata !"memcpy.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !43} ; [ DW_TAG_file_type ]
!43 = metadata !{i32 589841, i32 0, i32 1, metadata !"memcpy.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!44 = metadata !{i32 589845, metadata !42, metadata !"", metadata !42, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !45, i32 0, null} ; [ DW_TAG_subroutine_type ]
!45 = metadata !{metadata !46, metadata !46, metadata !46, metadata !47}
!46 = metadata !{i32 589839, metadata !42, metadata !"", metadata !42, i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ]
!47 = metadata !{i32 589846, metadata !48, metadata !"size_t", metadata !48, i32 326, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ]
!48 = metadata !{i32 589865, metadata !"stddef.h", metadata !"/usr/local/bin/llvm-gcc4.2-2.9-x86_64-linux/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.2.1/include", metadata !43} ; [ DW_TAG_file_type ]
!49 = metadata !{i32 589860, metadata !42, metadata !"long unsigned int", metadata !42, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!50 = metadata !{i32 589870, i32 0, metadata !51, metadata !"memmove", metadata !"memmove", metadata !"memmove", metadata !51, i32 12, metadata !53, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memmove} ; [ DW_TAG_subpro
!51 = metadata !{i32 589865, metadata !"memmove.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !52} ; [ DW_TAG_file_type ]
!52 = metadata !{i32 589841, i32 0, i32 1, metadata !"memmove.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!53 = metadata !{i32 589845, metadata !51, metadata !"", metadata !51, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !54, i32 0, null} ; [ DW_TAG_subroutine_type ]
!54 = metadata !{metadata !55, metadata !55, metadata !55, metadata !56}
!55 = metadata !{i32 589839, metadata !51, metadata !"", metadata !51, i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ]
!56 = metadata !{i32 589846, metadata !57, metadata !"size_t", metadata !57, i32 326, i64 0, i64 0, i64 0, i32 0, metadata !58} ; [ DW_TAG_typedef ]
!57 = metadata !{i32 589865, metadata !"stddef.h", metadata !"/usr/local/bin/llvm-gcc4.2-2.9-x86_64-linux/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.2.1/include", metadata !52} ; [ DW_TAG_file_type ]
!58 = metadata !{i32 589860, metadata !51, metadata !"long unsigned int", metadata !51, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!59 = metadata !{i32 589870, i32 0, metadata !60, metadata !"mempcpy", metadata !"mempcpy", metadata !"mempcpy", metadata !60, i32 11, metadata !62, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @mempcpy} ; [ DW_TAG_subpro
!60 = metadata !{i32 589865, metadata !"mempcpy.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !61} ; [ DW_TAG_file_type ]
!61 = metadata !{i32 589841, i32 0, i32 1, metadata !"mempcpy.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!62 = metadata !{i32 589845, metadata !60, metadata !"", metadata !60, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !63, i32 0, null} ; [ DW_TAG_subroutine_type ]
!63 = metadata !{metadata !64, metadata !64, metadata !64, metadata !65}
!64 = metadata !{i32 589839, metadata !60, metadata !"", metadata !60, i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ]
!65 = metadata !{i32 589846, metadata !66, metadata !"size_t", metadata !66, i32 326, i64 0, i64 0, i64 0, i32 0, metadata !67} ; [ DW_TAG_typedef ]
!66 = metadata !{i32 589865, metadata !"stddef.h", metadata !"/usr/local/bin/llvm-gcc4.2-2.9-x86_64-linux/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.2.1/include", metadata !61} ; [ DW_TAG_file_type ]
!67 = metadata !{i32 589860, metadata !60, metadata !"long unsigned int", metadata !60, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!68 = metadata !{i32 589870, i32 0, metadata !69, metadata !"memset", metadata !"memset", metadata !"memset", metadata !69, i32 11, metadata !71, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i32, i64)* @memset} ; [ DW_TAG_subprogram
!69 = metadata !{i32 589865, metadata !"memset.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !70} ; [ DW_TAG_file_type ]
!70 = metadata !{i32 589841, i32 0, i32 1, metadata !"memset.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!71 = metadata !{i32 589845, metadata !69, metadata !"", metadata !69, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !72, i32 0, null} ; [ DW_TAG_subroutine_type ]
!72 = metadata !{metadata !73, metadata !73, metadata !74, metadata !75}
!73 = metadata !{i32 589839, metadata !69, metadata !"", metadata !69, i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ]
!74 = metadata !{i32 589860, metadata !69, metadata !"int", metadata !69, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!75 = metadata !{i32 589846, metadata !76, metadata !"size_t", metadata !76, i32 326, i64 0, i64 0, i64 0, i32 0, metadata !77} ; [ DW_TAG_typedef ]
!76 = metadata !{i32 589865, metadata !"stddef.h", metadata !"/usr/local/bin/llvm-gcc4.2-2.9-x86_64-linux/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.2.1/include", metadata !70} ; [ DW_TAG_file_type ]
!77 = metadata !{i32 589860, metadata !69, metadata !"long unsigned int", metadata !69, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!78 = metadata !{i32 590081, metadata !11, metadata !"z", metadata !12, i32 12, metadata !16, i32 0} ; [ DW_TAG_arg_variable ]
!79 = metadata !{i32 590081, metadata !17, metadata !"name", metadata !18, i32 13, metadata !23, i32 0} ; [ DW_TAG_arg_variable ]
!80 = metadata !{i32 590080, metadata !81, metadata !"x", metadata !18, i32 14, metadata !22, i32 0} ; [ DW_TAG_auto_variable ]
!81 = metadata !{i32 589835, metadata !17, i32 13, i32 0, metadata !18, i32 0} ; [ DW_TAG_lexical_block ]
!82 = metadata !{i32 590081, metadata !26, metadata !"bitWidth", metadata !27, i32 20, metadata !31, i32 0} ; [ DW_TAG_arg_variable ]
!83 = metadata !{i32 590081, metadata !26, metadata !"shift", metadata !27, i32 20, metadata !31, i32 0} ; [ DW_TAG_arg_variable ]
!84 = metadata !{i32 590081, metadata !32, metadata !"start", metadata !33, i32 13, metadata !37, i32 0} ; [ DW_TAG_arg_variable ]
!85 = metadata !{i32 590081, metadata !32, metadata !"end", metadata !33, i32 13, metadata !37, i32 0} ; [ DW_TAG_arg_variable ]
!86 = metadata !{i32 590081, metadata !32, metadata !"name", metadata !33, i32 13, metadata !38, i32 0} ; [ DW_TAG_arg_variable ]
!87 = metadata !{i32 590080, metadata !88, metadata !"x", metadata !33, i32 14, metadata !37, i32 0} ; [ DW_TAG_auto_variable ]
!88 = metadata !{i32 589835, metadata !32, i32 13, i32 0, metadata !33, i32 0} ; [ DW_TAG_lexical_block ]
!89 = metadata !{i32 590081, metadata !41, metadata !"destaddr", metadata !42, i32 12, metadata !46, i32 0} ; [ DW_TAG_arg_variable ]
!90 = metadata !{i32 590081, metadata !41, metadata !"srcaddr", metadata !42, i32 12, metadata !46, i32 0} ; [ DW_TAG_arg_variable ]
!91 = metadata !{i32 590081, metadata !41, metadata !"len", metadata !42, i32 12, metadata !47, i32 0} ; [ DW_TAG_arg_variable ]
!92 = metadata !{i32 590080, metadata !93, metadata !"dest", metadata !42, i32 13, metadata !94, i32 0} ; [ DW_TAG_auto_variable ]
!93 = metadata !{i32 589835, metadata !41, i32 12, i32 0, metadata !42, i32 0} ; [ DW_TAG_lexical_block ]
!94 = metadata !{i32 589839, metadata !42, metadata !"", metadata !42, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !95} ; [ DW_TAG_pointer_type ]
!95 = metadata !{i32 589860, metadata !42, metadata !"char", metadata !42, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!96 = metadata !{i32 590080, metadata !93, metadata !"src", metadata !42, i32 14, metadata !97, i32 0} ; [ DW_TAG_auto_variable ]
!97 = metadata !{i32 589839, metadata !42, metadata !"", metadata !42, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !98} ; [ DW_TAG_pointer_type ]
!98 = metadata !{i32 589862, metadata !42, metadata !"", metadata !42, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !95} ; [ DW_TAG_const_type ]
!99 = metadata !{i32 590081, metadata !50, metadata !"dst", metadata !51, i32 12, metadata !55, i32 0} ; [ DW_TAG_arg_variable ]
!100 = metadata !{i32 590081, metadata !50, metadata !"src", metadata !51, i32 12, metadata !55, i32 0} ; [ DW_TAG_arg_variable ]
!101 = metadata !{i32 590081, metadata !50, metadata !"count", metadata !51, i32 12, metadata !56, i32 0} ; [ DW_TAG_arg_variable ]
!102 = metadata !{i32 590080, metadata !103, metadata !"a", metadata !51, i32 13, metadata !104, i32 0} ; [ DW_TAG_auto_variable ]
!103 = metadata !{i32 589835, metadata !50, i32 12, i32 0, metadata !51, i32 0} ; [ DW_TAG_lexical_block ]
!104 = metadata !{i32 589839, metadata !51, metadata !"", metadata !51, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !105} ; [ DW_TAG_pointer_type ]
!105 = metadata !{i32 589860, metadata !51, metadata !"char", metadata !51, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!106 = metadata !{i32 590080, metadata !103, metadata !"b", metadata !51, i32 14, metadata !107, i32 0} ; [ DW_TAG_auto_variable ]
!107 = metadata !{i32 589839, metadata !51, metadata !"", metadata !51, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !108} ; [ DW_TAG_pointer_type ]
!108 = metadata !{i32 589862, metadata !51, metadata !"", metadata !51, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !105} ; [ DW_TAG_const_type ]
!109 = metadata !{i32 590081, metadata !59, metadata !"destaddr", metadata !60, i32 11, metadata !64, i32 0} ; [ DW_TAG_arg_variable ]
!110 = metadata !{i32 590081, metadata !59, metadata !"srcaddr", metadata !60, i32 11, metadata !64, i32 0} ; [ DW_TAG_arg_variable ]
!111 = metadata !{i32 590081, metadata !59, metadata !"len", metadata !60, i32 11, metadata !65, i32 0} ; [ DW_TAG_arg_variable ]
!112 = metadata !{i32 590080, metadata !113, metadata !"dest", metadata !60, i32 12, metadata !114, i32 0} ; [ DW_TAG_auto_variable ]
!113 = metadata !{i32 589835, metadata !59, i32 11, i32 0, metadata !60, i32 0} ; [ DW_TAG_lexical_block ]
!114 = metadata !{i32 589839, metadata !60, metadata !"", metadata !60, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !115} ; [ DW_TAG_pointer_type ]
!115 = metadata !{i32 589860, metadata !60, metadata !"char", metadata !60, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!116 = metadata !{i32 590080, metadata !113, metadata !"src", metadata !60, i32 13, metadata !117, i32 0} ; [ DW_TAG_auto_variable ]
!117 = metadata !{i32 589839, metadata !60, metadata !"", metadata !60, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !118} ; [ DW_TAG_pointer_type ]
!118 = metadata !{i32 589862, metadata !60, metadata !"", metadata !60, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !115} ; [ DW_TAG_const_type ]
!119 = metadata !{i32 590081, metadata !68, metadata !"dst", metadata !69, i32 11, metadata !73, i32 0} ; [ DW_TAG_arg_variable ]
!120 = metadata !{i32 590081, metadata !68, metadata !"s", metadata !69, i32 11, metadata !74, i32 0} ; [ DW_TAG_arg_variable ]
!121 = metadata !{i32 590081, metadata !68, metadata !"count", metadata !69, i32 11, metadata !75, i32 0} ; [ DW_TAG_arg_variable ]
!122 = metadata !{i32 590080, metadata !123, metadata !"a", metadata !69, i32 12, metadata !124, i32 0} ; [ DW_TAG_auto_variable ]
!123 = metadata !{i32 589835, metadata !68, i32 11, i32 0, metadata !69, i32 0} ; [ DW_TAG_lexical_block ]
!124 = metadata !{i32 589839, metadata !69, metadata !"", metadata !69, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !125} ; [ DW_TAG_pointer_type ]
!125 = metadata !{i32 589877, metadata !69, metadata !"", metadata !69, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !126} ; [ DW_TAG_volatile_type ]
!126 = metadata !{i32 589860, metadata !69, metadata !"char", metadata !69, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!127 = metadata !{i32 24, i32 0, metadata !128, null}
!128 = metadata !{i32 589835, metadata !0, i32 21, i32 0, metadata !1, i32 0} ; [ DW_TAG_lexical_block ]
!129 = metadata !{i32 26, i32 0, metadata !128, null}
!130 = metadata !{i32 30, i32 0, metadata !131, null}
!131 = metadata !{i32 589835, metadata !6, i32 28, i32 0, metadata !1, i32 1} ; [ DW_TAG_lexical_block ]
!132 = metadata !{i32 33, i32 0, metadata !131, null}
!133 = metadata !{i32 34, i32 0, metadata !131, null}
!134 = metadata !{i32 36, i32 0, metadata !131, null}
!135 = metadata !{i32 38, i32 0, metadata !131, null}
!136 = metadata !{i32 39, i32 0, metadata !131, null}
!137 = metadata !{i32 41, i32 0, metadata !131, null}
!138 = metadata !{i32 42, i32 0, metadata !131, null}
!139 = metadata !{i32 48, i32 0, metadata !131, null}
!140 = metadata !{i32 45, i32 0, metadata !131, null}
!141 = metadata !{i32 44, i32 0, metadata !131, null}
!142 = metadata !{i32 13, i32 0, metadata !143, null}
!143 = metadata !{i32 589835, metadata !11, i32 12, i32 0, metadata !12, i32 0} ; [ DW_TAG_lexical_block ]
!144 = metadata !{i32 14, i32 0, metadata !143, null}
!145 = metadata !{i32 15, i32 0, metadata !143, null}
!146 = metadata !{i32 15, i32 0, metadata !81, null}
!147 = metadata !{i32 16, i32 0, metadata !81, null}
!148 = metadata !{i32 21, i32 0, metadata !149, null}
!149 = metadata !{i32 589835, metadata !26, i32 20, i32 0, metadata !27, i32 0} ; [ DW_TAG_lexical_block ]
!150 = metadata !{i32 27, i32 0, metadata !149, null}
!151 = metadata !{i32 29, i32 0, metadata !149, null}
!152 = metadata !{i32 16, i32 0, metadata !88, null}
!153 = metadata !{i32 17, i32 0, metadata !88, null}
!154 = metadata !{i32 19, i32 0, metadata !88, null}
!155 = metadata !{i32 22, i32 0, metadata !88, null}
!156 = metadata !{i32 25, i32 0, metadata !88, null}
!157 = metadata !{i32 26, i32 0, metadata !88, null}
!158 = metadata !{i32 28, i32 0, metadata !88, null}
!159 = metadata !{i32 29, i32 0, metadata !88, null}
!160 = metadata !{i32 32, i32 0, metadata !88, null}
!161 = metadata !{i32 20, i32 0, metadata !88, null}
!162 = metadata !{i32 16, i32 0, metadata !93, null}
!163 = metadata !{i32 17, i32 0, metadata !93, null}
!164 = metadata !{i32 18, i32 0, metadata !93, null}
!165 = metadata !{i32 16, i32 0, metadata !103, null}
!166 = metadata !{i32 19, i32 0, metadata !103, null}
!167 = metadata !{i32 20, i32 0, metadata !103, null}
!168 = metadata !{i32 24, i32 0, metadata !103, null}
!169 = metadata !{i32 17, i32 0, metadata !103, null}
!170 = metadata !{i32 15, i32 0, metadata !113, null}
!171 = metadata !{i32 16, i32 0, metadata !113, null}
!172 = metadata !{i32 17, i32 0, metadata !113, null}
!173 = metadata !{i32 13, i32 0, metadata !123, null}
!174 = metadata !{i32 14, i32 0, metadata !123, null}
!175 = metadata !{i32 15, i32 0, metadata !123, null}
