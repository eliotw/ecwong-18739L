; ModuleID = 'binary_demo1.o'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-f128:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str2 = private unnamed_addr constant [12 x i8] c"Hi, I'm %s\0A\00", align 1
@.str3 = private unnamed_addr constant [42 x i8] c"You need to give me exactly one argument!\00", align 8
@.str4 = private unnamed_addr constant [16 x i8] c"half way there!\00", align 1
@.str5 = private unnamed_addr constant [7 x i8] c"noooo!\00", align 1
@.str6 = private unnamed_addr constant [11 x i8] c"_pass\99word\00", align 1
@.str7 = private unnamed_addr constant [16 x i8] c"yep, that's it!\00", align 1
@.str8 = private unnamed_addr constant [6 x i8] c"nope!\00", align 1
@.str9 = private constant [22 x i8] c"klee_div_zero_check.c\00", align 1
@.str110 = private constant [15 x i8] c"divide by zero\00", align 1
@.str211 = private constant [8 x i8] c"div.err\00", align 1
@.str312 = private constant [8 x i8] c"IGNORED\00", align 1
@.str14 = private constant [16 x i8] c"overshift error\00", align 1
@.str25 = private constant [14 x i8] c"overshift.err\00", align 1
@.str613 = private constant [13 x i8] c"klee_range.c\00", align 1
@.str17 = private constant [14 x i8] c"invalid range\00", align 1
@.str28 = private constant [5 x i8] c"user\00", align 1

define i32 @main() nounwind {
entry:
  %retval = alloca i32
  %0 = alloca i32
  %argv = alloca [2 x i8*]
  %in = alloca [50 x i8]
  %dummy = alloca [2 x i8]
  %"alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds [2 x i8]* %dummy, i32 0, i32 0, !dbg !128
  %2 = load i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0), align 1, !dbg !128
  store i8 %2, i8* %1, align 1, !dbg !128
  %3 = getelementptr inbounds [2 x i8]* %dummy, i32 0, i32 1, !dbg !128
  %4 = load i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 1), align 1, !dbg !128
  store i8 %4, i8* %3, align 1, !dbg !128
  %in1 = bitcast [50 x i8]* %in to i8*, !dbg !130
  call void @klee_make_symbolic(i8* %in1, i64 50, i8* getelementptr inbounds ([3 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !130
  %5 = getelementptr inbounds [2 x i8*]* %argv, i64 0, i64 0, !dbg !131
  %dummy2 = bitcast [2 x i8]* %dummy to i8*, !dbg !131
  store i8* %dummy2, i8** %5, align 8, !dbg !131
  %6 = getelementptr inbounds [2 x i8*]* %argv, i64 0, i64 1, !dbg !132
  %in3 = bitcast [50 x i8]* %in to i8*, !dbg !132
  store i8* %in3, i8** %6, align 8, !dbg !132
  %argv4 = bitcast [2 x i8*]* %argv to i8**, !dbg !133
  %7 = call i32 (...)* bitcast (i32 (i32, i8**)* @orig_main to i32 (...)*)(i32 2, i8** %argv4) nounwind, !dbg !133
  store i32 %7, i32* %0, align 4, !dbg !133
  %8 = load i32* %0, align 4, !dbg !133
  store i32 %8, i32* %retval, align 4, !dbg !133
  %retval5 = load i32* %retval, !dbg !133
  ret i32 %retval5, !dbg !133
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

declare void @klee_make_symbolic(i8*, i64, i8*)

define i32 @orig_main(i32 %argc, i8** %argv) nounwind {
entry:
  %argc_addr = alloca i32, align 4
  %argv_addr = alloca i8**, align 8
  %retval = alloca i32
  %0 = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  store i32 %argc, i32* %argc_addr
  store i8** %argv, i8*** %argv_addr
  %1 = load i8*** %argv_addr, align 8, !dbg !134
  %2 = getelementptr inbounds i8** %1, i64 0, !dbg !134
  %3 = load i8** %2, align 1, !dbg !134
  %4 = call i32 (i8*, ...)* @printf(i8* noalias getelementptr inbounds ([12 x i8]* @.str2, i64 0, i64 0), i8* %3) nounwind, !dbg !134
  %5 = load i32* %argc_addr, align 4, !dbg !136
  %6 = icmp ne i32 %5, 2, !dbg !136
  br i1 %6, label %bb, label %bb1, !dbg !136

bb:                                               ; preds = %entry
  %7 = call i32 @puts(i8* getelementptr inbounds ([42 x i8]* @.str3, i64 0, i64 0)) nounwind, !dbg !137
  store i32 -1, i32* %0, align 4, !dbg !138
  br label %bb17, !dbg !138

bb1:                                              ; preds = %entry
  %8 = load i8*** %argv_addr, align 8, !dbg !139
  %9 = getelementptr inbounds i8** %8, i64 1, !dbg !139
  %10 = load i8** %9, align 1, !dbg !139
  %11 = getelementptr inbounds i8* %10, i64 0, !dbg !139
  %12 = load i8* %11, align 1, !dbg !139
  %13 = icmp eq i8 %12, 116, !dbg !139
  br i1 %13, label %bb2, label %bb16, !dbg !139

bb2:                                              ; preds = %bb1
  %14 = load i8*** %argv_addr, align 8, !dbg !140
  %15 = getelementptr inbounds i8** %14, i64 1, !dbg !140
  %16 = load i8** %15, align 1, !dbg !140
  %17 = getelementptr inbounds i8* %16, i64 1, !dbg !140
  %18 = load i8* %17, align 1, !dbg !140
  %19 = icmp eq i8 %18, 104, !dbg !140
  br i1 %19, label %bb3, label %bb16, !dbg !140

bb3:                                              ; preds = %bb2
  %20 = load i8*** %argv_addr, align 8, !dbg !140
  %21 = getelementptr inbounds i8** %20, i64 1, !dbg !140
  %22 = load i8** %21, align 1, !dbg !140
  %23 = getelementptr inbounds i8* %22, i64 2, !dbg !140
  %24 = load i8* %23, align 1, !dbg !140
  %25 = icmp eq i8 %24, 105, !dbg !140
  br i1 %25, label %bb4, label %bb16, !dbg !140

bb4:                                              ; preds = %bb3
  %26 = load i8*** %argv_addr, align 8, !dbg !140
  %27 = getelementptr inbounds i8** %26, i64 1, !dbg !140
  %28 = load i8** %27, align 1, !dbg !140
  %29 = getelementptr inbounds i8* %28, i64 3, !dbg !140
  %30 = load i8* %29, align 1, !dbg !140
  %31 = icmp eq i8 %30, 115, !dbg !140
  br i1 %31, label %bb5, label %bb16, !dbg !140

bb5:                                              ; preds = %bb4
  %32 = load i8*** %argv_addr, align 8, !dbg !141
  %33 = getelementptr inbounds i8** %32, i64 1, !dbg !141
  %34 = load i8** %33, align 1, !dbg !141
  %35 = getelementptr inbounds i8* %34, i64 4, !dbg !141
  %36 = load i8* %35, align 1, !dbg !141
  %37 = icmp eq i8 %36, 95, !dbg !141
  br i1 %37, label %bb6, label %bb16, !dbg !141

bb6:                                              ; preds = %bb5
  %38 = load i8*** %argv_addr, align 8, !dbg !141
  %39 = getelementptr inbounds i8** %38, i64 1, !dbg !141
  %40 = load i8** %39, align 1, !dbg !141
  %41 = getelementptr inbounds i8* %40, i64 5, !dbg !141
  %42 = load i8* %41, align 1, !dbg !141
  %43 = icmp eq i8 %42, 105, !dbg !141
  br i1 %43, label %bb7, label %bb16, !dbg !141

bb7:                                              ; preds = %bb6
  %44 = load i8*** %argv_addr, align 8, !dbg !141
  %45 = getelementptr inbounds i8** %44, i64 1, !dbg !141
  %46 = load i8** %45, align 1, !dbg !141
  %47 = getelementptr inbounds i8* %46, i64 6, !dbg !141
  %48 = load i8* %47, align 1, !dbg !141
  %49 = icmp eq i8 %48, 115, !dbg !141
  br i1 %49, label %bb8, label %bb16, !dbg !141

bb8:                                              ; preds = %bb7
  %50 = call i32 @puts(i8* getelementptr inbounds ([16 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !142
  %51 = load i8*** %argv_addr, align 8, !dbg !143
  %52 = getelementptr inbounds i8** %51, i64 1, !dbg !143
  %53 = load i8** %52, align 1, !dbg !143
  %54 = getelementptr inbounds i8* %53, i64 7, !dbg !143
  %55 = load i8* %54, align 1, !dbg !143
  %56 = icmp ne i8 %55, 95, !dbg !143
  br i1 %56, label %bb9, label %bb10, !dbg !143

bb9:                                              ; preds = %bb8
  store i32 0, i32* %0, align 4, !dbg !143
  br label %bb17, !dbg !143

bb10:                                             ; preds = %bb8
  %57 = load i8*** %argv_addr, align 8, !dbg !144
  %58 = getelementptr inbounds i8** %57, i64 1, !dbg !144
  %59 = load i8** %58, align 1, !dbg !144
  %60 = getelementptr inbounds i8* %59, i64 8, !dbg !144
  %61 = load i8* %60, align 1, !dbg !144
  %62 = icmp ne i8 %61, -117, !dbg !144
  br i1 %62, label %bb13, label %bb11, !dbg !144

bb11:                                             ; preds = %bb10
  %63 = load i8*** %argv_addr, align 8, !dbg !144
  %64 = getelementptr inbounds i8** %63, i64 1, !dbg !144
  %65 = load i8** %64, align 1, !dbg !144
  %66 = getelementptr inbounds i8* %65, i64 9, !dbg !144
  %67 = load i8* %66, align 1, !dbg !144
  %68 = icmp ne i8 %67, -105, !dbg !144
  br i1 %68, label %bb13, label %bb12, !dbg !144

bb12:                                             ; preds = %bb11
  %69 = load i8*** %argv_addr, align 8, !dbg !144
  %70 = getelementptr inbounds i8** %69, i64 1, !dbg !144
  %71 = load i8** %70, align 1, !dbg !144
  %72 = getelementptr inbounds i8* %71, i64 10, !dbg !144
  %73 = load i8* %72, align 1, !dbg !144
  %74 = icmp ne i8 %73, -102, !dbg !144
  br i1 %74, label %bb13, label %bb14, !dbg !144

bb13:                                             ; preds = %bb12, %bb11, %bb10
  %75 = call i32 @puts(i8* getelementptr inbounds ([7 x i8]* @.str5, i64 0, i64 0)) nounwind, !dbg !145
  store i32 0, i32* %0, align 4, !dbg !146
  br label %bb17, !dbg !146

bb14:                                             ; preds = %bb12
  %76 = load i8*** %argv_addr, align 8, !dbg !147
  %77 = getelementptr inbounds i8** %76, i64 1, !dbg !147
  %78 = load i8** %77, align 1, !dbg !147
  %79 = getelementptr inbounds i8* %78, i64 11, !dbg !147
  %80 = call i32 @strcmp(i8* getelementptr inbounds ([11 x i8]* @.str6, i64 0, i64 0), i8* %79) nounwind readonly, !dbg !147
  %81 = icmp eq i32 %80, 0, !dbg !147
  br i1 %81, label %bb15, label %bb16, !dbg !147

bb15:                                             ; preds = %bb14
  %82 = call i32 @puts(i8* getelementptr inbounds ([16 x i8]* @.str7, i64 0, i64 0)) nounwind, !dbg !148
  store i32 0, i32* %0, align 4, !dbg !149
  br label %bb17, !dbg !149

bb16:                                             ; preds = %bb14, %bb7, %bb6, %bb5, %bb4, %bb3, %bb2, %bb1
  %83 = call i32 @puts(i8* getelementptr inbounds ([6 x i8]* @.str8, i64 0, i64 0)) nounwind, !dbg !150
  store i32 0, i32* %0, align 4, !dbg !151
  br label %bb17, !dbg !151

bb17:                                             ; preds = %bb16, %bb15, %bb13, %bb9, %bb
  %84 = load i32* %0, align 4, !dbg !138
  store i32 %84, i32* %retval, align 4, !dbg !138
  %retval18 = load i32* %retval, !dbg !138
  ret i32 %retval18, !dbg !138
}

declare i32 @printf(i8* noalias, ...) nounwind

declare i32 @puts(i8*)

declare i32 @strcmp(i8*, i8*) nounwind readonly

define void @klee_div_zero_check(i64 %z) nounwind {
entry:
  %0 = icmp eq i64 %z, 0, !dbg !152
  br i1 %0, label %bb, label %return, !dbg !152

bb:                                               ; preds = %entry
  tail call void @klee_report_error(i8* getelementptr inbounds ([22 x i8]* @.str9, i64 0, i64 0), i32 14, i8* getelementptr inbounds ([15 x i8]* @.str110, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str211, i64 0, i64 0)) noreturn nounwind, !d
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
  tail call void @klee_report_error(i8* getelementptr inbounds ([8 x i8]* @.str312, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([16 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str25, i64 0, i64 0)) noreturn nounwind, !db
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
  call void @klee_report_error(i8* getelementptr inbounds ([13 x i8]* @.str613, i64 0, i64 0), i32 17, i8* getelementptr inbounds ([14 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str28, i64 0, i64 0)) noreturn nounwind, !dbg !1
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

!llvm.dbg.sp = !{!0, !6, !12, !18, !27, !33, !42, !51, !60, !69}
!llvm.dbg.lv.klee_div_zero_check = !{!79}
!llvm.dbg.lv.klee_int = !{!80, !81}
!llvm.dbg.lv.klee_overshift_check = !{!83, !84}
!llvm.dbg.lv.klee_range = !{!85, !86, !87, !88}
!llvm.dbg.lv.memcpy = !{!90, !91, !92, !93, !97}
!llvm.dbg.lv.memmove = !{!100, !101, !102, !103, !107}
!llvm.dbg.lv.mempcpy = !{!110, !111, !112, !113, !117}
!llvm.dbg.lv.memset = !{!120, !121, !122, !123}

!0 = metadata !{i32 589870, i32 0, metadata !1, metadata !"main", metadata !"main", metadata !"main", metadata !1, i32 8, metadata !3, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ()* @main} ; [ DW_TAG_subprogram ]
!1 = metadata !{i32 589865, metadata !"binary_demo1.c", metadata !"/home/ecwong/Documents/18-739L/research/binary_demo/", metadata !2} ; [ DW_TAG_file_type ]
!2 = metadata !{i32 589841, i32 0, i32 1, metadata !"binary_demo1.c", metadata !"/home/ecwong/Documents/18-739L/research/binary_demo/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TA
!3 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !4, i32 0, null} ; [ DW_TAG_subroutine_type ]
!4 = metadata !{metadata !5}
!5 = metadata !{i32 589860, metadata !1, metadata !"int", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!6 = metadata !{i32 589870, i32 0, metadata !1, metadata !"orig_main", metadata !"orig_main", metadata !"orig_main", metadata !1, i32 22, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i8**)* @orig_main} ; [ DW_TAG_subpr
!7 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, null} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !5, metadata !5, metadata !9}
!9 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ]
!11 = metadata !{i32 589860, metadata !1, metadata !"char", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!12 = metadata !{i32 589870, i32 0, metadata !13, metadata !"klee_div_zero_check", metadata !"klee_div_zero_check", metadata !"klee_div_zero_check", metadata !13, i32 12, metadata !15, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64)* 
!13 = metadata !{i32 589865, metadata !"klee_div_zero_check.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !14} ; [ DW_TAG_file_type ]
!14 = metadata !{i32 589841, i32 0, i32 1, metadata !"klee_div_zero_check.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compile
!15 = metadata !{i32 589845, metadata !13, metadata !"", metadata !13, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !16, i32 0, null} ; [ DW_TAG_subroutine_type ]
!16 = metadata !{null, metadata !17}
!17 = metadata !{i32 589860, metadata !13, metadata !"long long int", metadata !13, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!18 = metadata !{i32 589870, i32 0, metadata !19, metadata !"klee_int", metadata !"klee_int", metadata !"klee_int", metadata !19, i32 13, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @klee_int} ; [ DW_TAG_subprogram ]
!19 = metadata !{i32 589865, metadata !"klee_int.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !20} ; [ DW_TAG_file_type ]
!20 = metadata !{i32 589841, i32 0, i32 1, metadata !"klee_int.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!21 = metadata !{i32 589845, metadata !19, metadata !"", metadata !19, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !22, i32 0, null} ; [ DW_TAG_subroutine_type ]
!22 = metadata !{metadata !23, metadata !24}
!23 = metadata !{i32 589860, metadata !19, metadata !"int", metadata !19, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!24 = metadata !{i32 589839, metadata !19, metadata !"", metadata !19, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ]
!25 = metadata !{i32 589862, metadata !19, metadata !"", metadata !19, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !26} ; [ DW_TAG_const_type ]
!26 = metadata !{i32 589860, metadata !19, metadata !"char", metadata !19, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!27 = metadata !{i32 589870, i32 0, metadata !28, metadata !"klee_overshift_check", metadata !"klee_overshift_check", metadata !"klee_overshift_check", metadata !28, i32 20, metadata !30, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64
!28 = metadata !{i32 589865, metadata !"klee_overshift_check.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !29} ; [ DW_TAG_file_type ]
!29 = metadata !{i32 589841, i32 0, i32 1, metadata !"klee_overshift_check.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compil
!30 = metadata !{i32 589845, metadata !28, metadata !"", metadata !28, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !31, i32 0, null} ; [ DW_TAG_subroutine_type ]
!31 = metadata !{null, metadata !32, metadata !32}
!32 = metadata !{i32 589860, metadata !28, metadata !"long long unsigned int", metadata !28, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!33 = metadata !{i32 589870, i32 0, metadata !34, metadata !"klee_range", metadata !"klee_range", metadata !"klee_range", metadata !34, i32 13, metadata !36, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i8*)* @klee_range} ; [ D
!34 = metadata !{i32 589865, metadata !"klee_range.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !35} ; [ DW_TAG_file_type ]
!35 = metadata !{i32 589841, i32 0, i32 1, metadata !"klee_range.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!36 = metadata !{i32 589845, metadata !34, metadata !"", metadata !34, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !37, i32 0, null} ; [ DW_TAG_subroutine_type ]
!37 = metadata !{metadata !38, metadata !38, metadata !38, metadata !39}
!38 = metadata !{i32 589860, metadata !34, metadata !"int", metadata !34, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!39 = metadata !{i32 589839, metadata !34, metadata !"", metadata !34, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !40} ; [ DW_TAG_pointer_type ]
!40 = metadata !{i32 589862, metadata !34, metadata !"", metadata !34, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !41} ; [ DW_TAG_const_type ]
!41 = metadata !{i32 589860, metadata !34, metadata !"char", metadata !34, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!42 = metadata !{i32 589870, i32 0, metadata !43, metadata !"memcpy", metadata !"memcpy", metadata !"memcpy", metadata !43, i32 12, metadata !45, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null} ; [ DW_TAG_subprogram ]
!43 = metadata !{i32 589865, metadata !"memcpy.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !44} ; [ DW_TAG_file_type ]
!44 = metadata !{i32 589841, i32 0, i32 1, metadata !"memcpy.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!45 = metadata !{i32 589845, metadata !43, metadata !"", metadata !43, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !46, i32 0, null} ; [ DW_TAG_subroutine_type ]
!46 = metadata !{metadata !47, metadata !47, metadata !47, metadata !48}
!47 = metadata !{i32 589839, metadata !43, metadata !"", metadata !43, i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ]
!48 = metadata !{i32 589846, metadata !49, metadata !"size_t", metadata !49, i32 326, i64 0, i64 0, i64 0, i32 0, metadata !50} ; [ DW_TAG_typedef ]
!49 = metadata !{i32 589865, metadata !"stddef.h", metadata !"/usr/local/bin/llvm-gcc4.2-2.9-x86_64-linux/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.2.1/include", metadata !44} ; [ DW_TAG_file_type ]
!50 = metadata !{i32 589860, metadata !43, metadata !"long unsigned int", metadata !43, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!51 = metadata !{i32 589870, i32 0, metadata !52, metadata !"memmove", metadata !"memmove", metadata !"memmove", metadata !52, i32 12, metadata !54, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null} ; [ DW_TAG_subprogram ]
!52 = metadata !{i32 589865, metadata !"memmove.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !53} ; [ DW_TAG_file_type ]
!53 = metadata !{i32 589841, i32 0, i32 1, metadata !"memmove.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!54 = metadata !{i32 589845, metadata !52, metadata !"", metadata !52, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !55, i32 0, null} ; [ DW_TAG_subroutine_type ]
!55 = metadata !{metadata !56, metadata !56, metadata !56, metadata !57}
!56 = metadata !{i32 589839, metadata !52, metadata !"", metadata !52, i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ]
!57 = metadata !{i32 589846, metadata !58, metadata !"size_t", metadata !58, i32 326, i64 0, i64 0, i64 0, i32 0, metadata !59} ; [ DW_TAG_typedef ]
!58 = metadata !{i32 589865, metadata !"stddef.h", metadata !"/usr/local/bin/llvm-gcc4.2-2.9-x86_64-linux/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.2.1/include", metadata !53} ; [ DW_TAG_file_type ]
!59 = metadata !{i32 589860, metadata !52, metadata !"long unsigned int", metadata !52, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!60 = metadata !{i32 589870, i32 0, metadata !61, metadata !"mempcpy", metadata !"mempcpy", metadata !"mempcpy", metadata !61, i32 11, metadata !63, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @mempcpy} ; [ DW_TAG_subpro
!61 = metadata !{i32 589865, metadata !"mempcpy.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !62} ; [ DW_TAG_file_type ]
!62 = metadata !{i32 589841, i32 0, i32 1, metadata !"mempcpy.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!63 = metadata !{i32 589845, metadata !61, metadata !"", metadata !61, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !64, i32 0, null} ; [ DW_TAG_subroutine_type ]
!64 = metadata !{metadata !65, metadata !65, metadata !65, metadata !66}
!65 = metadata !{i32 589839, metadata !61, metadata !"", metadata !61, i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ]
!66 = metadata !{i32 589846, metadata !67, metadata !"size_t", metadata !67, i32 326, i64 0, i64 0, i64 0, i32 0, metadata !68} ; [ DW_TAG_typedef ]
!67 = metadata !{i32 589865, metadata !"stddef.h", metadata !"/usr/local/bin/llvm-gcc4.2-2.9-x86_64-linux/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.2.1/include", metadata !62} ; [ DW_TAG_file_type ]
!68 = metadata !{i32 589860, metadata !61, metadata !"long unsigned int", metadata !61, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!69 = metadata !{i32 589870, i32 0, metadata !70, metadata !"memset", metadata !"memset", metadata !"memset", metadata !70, i32 11, metadata !72, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null} ; [ DW_TAG_subprogram ]
!70 = metadata !{i32 589865, metadata !"memset.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !71} ; [ DW_TAG_file_type ]
!71 = metadata !{i32 589841, i32 0, i32 1, metadata !"memset.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!72 = metadata !{i32 589845, metadata !70, metadata !"", metadata !70, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !73, i32 0, null} ; [ DW_TAG_subroutine_type ]
!73 = metadata !{metadata !74, metadata !74, metadata !75, metadata !76}
!74 = metadata !{i32 589839, metadata !70, metadata !"", metadata !70, i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ]
!75 = metadata !{i32 589860, metadata !70, metadata !"int", metadata !70, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!76 = metadata !{i32 589846, metadata !77, metadata !"size_t", metadata !77, i32 326, i64 0, i64 0, i64 0, i32 0, metadata !78} ; [ DW_TAG_typedef ]
!77 = metadata !{i32 589865, metadata !"stddef.h", metadata !"/usr/local/bin/llvm-gcc4.2-2.9-x86_64-linux/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.2.1/include", metadata !71} ; [ DW_TAG_file_type ]
!78 = metadata !{i32 589860, metadata !70, metadata !"long unsigned int", metadata !70, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!79 = metadata !{i32 590081, metadata !12, metadata !"z", metadata !13, i32 12, metadata !17, i32 0} ; [ DW_TAG_arg_variable ]
!80 = metadata !{i32 590081, metadata !18, metadata !"name", metadata !19, i32 13, metadata !24, i32 0} ; [ DW_TAG_arg_variable ]
!81 = metadata !{i32 590080, metadata !82, metadata !"x", metadata !19, i32 14, metadata !23, i32 0} ; [ DW_TAG_auto_variable ]
!82 = metadata !{i32 589835, metadata !18, i32 13, i32 0, metadata !19, i32 0} ; [ DW_TAG_lexical_block ]
!83 = metadata !{i32 590081, metadata !27, metadata !"bitWidth", metadata !28, i32 20, metadata !32, i32 0} ; [ DW_TAG_arg_variable ]
!84 = metadata !{i32 590081, metadata !27, metadata !"shift", metadata !28, i32 20, metadata !32, i32 0} ; [ DW_TAG_arg_variable ]
!85 = metadata !{i32 590081, metadata !33, metadata !"start", metadata !34, i32 13, metadata !38, i32 0} ; [ DW_TAG_arg_variable ]
!86 = metadata !{i32 590081, metadata !33, metadata !"end", metadata !34, i32 13, metadata !38, i32 0} ; [ DW_TAG_arg_variable ]
!87 = metadata !{i32 590081, metadata !33, metadata !"name", metadata !34, i32 13, metadata !39, i32 0} ; [ DW_TAG_arg_variable ]
!88 = metadata !{i32 590080, metadata !89, metadata !"x", metadata !34, i32 14, metadata !38, i32 0} ; [ DW_TAG_auto_variable ]
!89 = metadata !{i32 589835, metadata !33, i32 13, i32 0, metadata !34, i32 0} ; [ DW_TAG_lexical_block ]
!90 = metadata !{i32 590081, metadata !42, metadata !"destaddr", metadata !43, i32 12, metadata !47, i32 0} ; [ DW_TAG_arg_variable ]
!91 = metadata !{i32 590081, metadata !42, metadata !"srcaddr", metadata !43, i32 12, metadata !47, i32 0} ; [ DW_TAG_arg_variable ]
!92 = metadata !{i32 590081, metadata !42, metadata !"len", metadata !43, i32 12, metadata !48, i32 0} ; [ DW_TAG_arg_variable ]
!93 = metadata !{i32 590080, metadata !94, metadata !"dest", metadata !43, i32 13, metadata !95, i32 0} ; [ DW_TAG_auto_variable ]
!94 = metadata !{i32 589835, metadata !42, i32 12, i32 0, metadata !43, i32 0} ; [ DW_TAG_lexical_block ]
!95 = metadata !{i32 589839, metadata !43, metadata !"", metadata !43, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !96} ; [ DW_TAG_pointer_type ]
!96 = metadata !{i32 589860, metadata !43, metadata !"char", metadata !43, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!97 = metadata !{i32 590080, metadata !94, metadata !"src", metadata !43, i32 14, metadata !98, i32 0} ; [ DW_TAG_auto_variable ]
!98 = metadata !{i32 589839, metadata !43, metadata !"", metadata !43, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !99} ; [ DW_TAG_pointer_type ]
!99 = metadata !{i32 589862, metadata !43, metadata !"", metadata !43, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !96} ; [ DW_TAG_const_type ]
!100 = metadata !{i32 590081, metadata !51, metadata !"dst", metadata !52, i32 12, metadata !56, i32 0} ; [ DW_TAG_arg_variable ]
!101 = metadata !{i32 590081, metadata !51, metadata !"src", metadata !52, i32 12, metadata !56, i32 0} ; [ DW_TAG_arg_variable ]
!102 = metadata !{i32 590081, metadata !51, metadata !"count", metadata !52, i32 12, metadata !57, i32 0} ; [ DW_TAG_arg_variable ]
!103 = metadata !{i32 590080, metadata !104, metadata !"a", metadata !52, i32 13, metadata !105, i32 0} ; [ DW_TAG_auto_variable ]
!104 = metadata !{i32 589835, metadata !51, i32 12, i32 0, metadata !52, i32 0} ; [ DW_TAG_lexical_block ]
!105 = metadata !{i32 589839, metadata !52, metadata !"", metadata !52, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !106} ; [ DW_TAG_pointer_type ]
!106 = metadata !{i32 589860, metadata !52, metadata !"char", metadata !52, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!107 = metadata !{i32 590080, metadata !104, metadata !"b", metadata !52, i32 14, metadata !108, i32 0} ; [ DW_TAG_auto_variable ]
!108 = metadata !{i32 589839, metadata !52, metadata !"", metadata !52, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !109} ; [ DW_TAG_pointer_type ]
!109 = metadata !{i32 589862, metadata !52, metadata !"", metadata !52, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !106} ; [ DW_TAG_const_type ]
!110 = metadata !{i32 590081, metadata !60, metadata !"destaddr", metadata !61, i32 11, metadata !65, i32 0} ; [ DW_TAG_arg_variable ]
!111 = metadata !{i32 590081, metadata !60, metadata !"srcaddr", metadata !61, i32 11, metadata !65, i32 0} ; [ DW_TAG_arg_variable ]
!112 = metadata !{i32 590081, metadata !60, metadata !"len", metadata !61, i32 11, metadata !66, i32 0} ; [ DW_TAG_arg_variable ]
!113 = metadata !{i32 590080, metadata !114, metadata !"dest", metadata !61, i32 12, metadata !115, i32 0} ; [ DW_TAG_auto_variable ]
!114 = metadata !{i32 589835, metadata !60, i32 11, i32 0, metadata !61, i32 0} ; [ DW_TAG_lexical_block ]
!115 = metadata !{i32 589839, metadata !61, metadata !"", metadata !61, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !116} ; [ DW_TAG_pointer_type ]
!116 = metadata !{i32 589860, metadata !61, metadata !"char", metadata !61, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!117 = metadata !{i32 590080, metadata !114, metadata !"src", metadata !61, i32 13, metadata !118, i32 0} ; [ DW_TAG_auto_variable ]
!118 = metadata !{i32 589839, metadata !61, metadata !"", metadata !61, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !119} ; [ DW_TAG_pointer_type ]
!119 = metadata !{i32 589862, metadata !61, metadata !"", metadata !61, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !116} ; [ DW_TAG_const_type ]
!120 = metadata !{i32 590081, metadata !69, metadata !"dst", metadata !70, i32 11, metadata !74, i32 0} ; [ DW_TAG_arg_variable ]
!121 = metadata !{i32 590081, metadata !69, metadata !"s", metadata !70, i32 11, metadata !75, i32 0} ; [ DW_TAG_arg_variable ]
!122 = metadata !{i32 590081, metadata !69, metadata !"count", metadata !70, i32 11, metadata !76, i32 0} ; [ DW_TAG_arg_variable ]
!123 = metadata !{i32 590080, metadata !124, metadata !"a", metadata !70, i32 12, metadata !125, i32 0} ; [ DW_TAG_auto_variable ]
!124 = metadata !{i32 589835, metadata !69, i32 11, i32 0, metadata !70, i32 0} ; [ DW_TAG_lexical_block ]
!125 = metadata !{i32 589839, metadata !70, metadata !"", metadata !70, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !126} ; [ DW_TAG_pointer_type ]
!126 = metadata !{i32 589877, metadata !70, metadata !"", metadata !70, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !127} ; [ DW_TAG_volatile_type ]
!127 = metadata !{i32 589860, metadata !70, metadata !"char", metadata !70, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!128 = metadata !{i32 12, i32 0, metadata !129, null}
!129 = metadata !{i32 589835, metadata !0, i32 8, i32 0, metadata !1, i32 0} ; [ DW_TAG_lexical_block ]
!130 = metadata !{i32 14, i32 0, metadata !129, null}
!131 = metadata !{i32 16, i32 0, metadata !129, null}
!132 = metadata !{i32 17, i32 0, metadata !129, null}
!133 = metadata !{i32 19, i32 0, metadata !129, null}
!134 = metadata !{i32 23, i32 0, metadata !135, null}
!135 = metadata !{i32 589835, metadata !6, i32 22, i32 0, metadata !1, i32 1} ; [ DW_TAG_lexical_block ]
!136 = metadata !{i32 25, i32 0, metadata !135, null}
!137 = metadata !{i32 26, i32 0, metadata !135, null}
!138 = metadata !{i32 27, i32 0, metadata !135, null}
!139 = metadata !{i32 32, i32 0, metadata !135, null}
!140 = metadata !{i32 33, i32 0, metadata !135, null}
!141 = metadata !{i32 36, i32 0, metadata !135, null}
!142 = metadata !{i32 37, i32 0, metadata !135, null}
!143 = metadata !{i32 38, i32 0, metadata !135, null}
!144 = metadata !{i32 41, i32 0, metadata !135, null}
!145 = metadata !{i32 42, i32 0, metadata !135, null}
!146 = metadata !{i32 43, i32 0, metadata !135, null}
!147 = metadata !{i32 50, i32 0, metadata !135, null}
!148 = metadata !{i32 54, i32 0, metadata !135, null}
!149 = metadata !{i32 56, i32 0, metadata !135, null}
!150 = metadata !{i32 61, i32 0, metadata !135, null}
!151 = metadata !{i32 62, i32 0, metadata !135, null}
!152 = metadata !{i32 13, i32 0, metadata !153, null}
!153 = metadata !{i32 589835, metadata !12, i32 12, i32 0, metadata !13, i32 0} ; [ DW_TAG_lexical_block ]
!154 = metadata !{i32 14, i32 0, metadata !153, null}
!155 = metadata !{i32 15, i32 0, metadata !153, null}
!156 = metadata !{i32 15, i32 0, metadata !82, null}
!157 = metadata !{i32 16, i32 0, metadata !82, null}
!158 = metadata !{i32 21, i32 0, metadata !159, null}
!159 = metadata !{i32 589835, metadata !27, i32 20, i32 0, metadata !28, i32 0} ; [ DW_TAG_lexical_block ]
!160 = metadata !{i32 27, i32 0, metadata !159, null}
!161 = metadata !{i32 29, i32 0, metadata !159, null}
!162 = metadata !{i32 16, i32 0, metadata !89, null}
!163 = metadata !{i32 17, i32 0, metadata !89, null}
!164 = metadata !{i32 19, i32 0, metadata !89, null}
!165 = metadata !{i32 22, i32 0, metadata !89, null}
!166 = metadata !{i32 25, i32 0, metadata !89, null}
!167 = metadata !{i32 26, i32 0, metadata !89, null}
!168 = metadata !{i32 28, i32 0, metadata !89, null}
!169 = metadata !{i32 29, i32 0, metadata !89, null}
!170 = metadata !{i32 32, i32 0, metadata !89, null}
!171 = metadata !{i32 20, i32 0, metadata !89, null}
!172 = metadata !{i32 15, i32 0, metadata !114, null}
!173 = metadata !{i32 16, i32 0, metadata !114, null}
!174 = metadata !{i32 17, i32 0, metadata !114, null}
