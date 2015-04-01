; ModuleID = 'narnia0.o'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-f128:128:128-n8:16:32"
target triple = "i386-unknown-linux-gnu"

%0 = type { void (i32)* }
%1 = type { %2, [20 x i32] }
%2 = type { i32, i32, i32, i64, i64 }
%3 = type { %union.wait* }
%struct.Elf64_auxv_t = type { i64, %union.anon }
%struct.FILE = type { i16, [2 x i8], i32, i8*, i8*, i8*, i8*, i8*, i8*, %struct.FILE*, [2 x i32], %struct.__mbstate_t }
%struct.__kernel_termios = type { i32, i32, i32, i32, i8, [19 x i8] }
%struct.__mbstate_t = type { i32, i32 }
%struct.__sigset_t = type { [16 x i64] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.anon = type <{ i32 }>
%struct.kernel_sigaction = type { void (i32)*, i64, void ()*, %struct.__sigset_t }
%struct.rusage = type { %struct.timeval, %struct.timeval, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.sigaction = type { %0, %struct.__sigset_t, i32, void ()* }
%struct.siginfo_t = type { i32, i32, i32, %1 }
%struct.sigset_t = type { [16 x i64] }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [3 x i64] }
%struct.termios = type { i32, i32, i32, i32, i8, [32 x i8], i32, i32 }
%struct.timeval = type { i64, i64 }
%union.anon = type { i64 }
%union.sigval_t = type { i8* }
%union.wait = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str1 = private unnamed_addr constant [51 x i8] c"Correct val's value from 0x41414141 -> 0xdeadbeef!\00", align 4
@.str2 = private unnamed_addr constant [22 x i8] c"Here is your chance: \00", align 1
@.str3 = private unnamed_addr constant [9 x i8] c"buf: %s\0A\00", align 1
@.str4 = private unnamed_addr constant [13 x i8] c"val: 0x%08x\0A\00", align 1
@.str5 = private unnamed_addr constant [8 x i8] c"/bin/sh\00", align 1
@.str6 = private unnamed_addr constant [12 x i8] c"WAY OFF!!!!\00", align 1
@__libc_stack_end = global i8* null
@__uclibc_progname = hidden global i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0)
@.str7 = private constant [1 x i8] zeroinitializer, align 1
@__environ = global i8** null
@__pagesize = global i64 0
@.str18 = private constant [10 x i8] c"/dev/null\00", align 1
@been_there_done_that.2848 = internal global i32 0
@__app_fini = hidden global void ()* null
@__rtld_fini = hidden global void ()* null
@__exit_cleanup = hidden global void (i32)* null
@.str13 = private constant [8 x i8] c"/bin/sh\00", align 1
@.str114 = private constant [3 x i8] c"sh\00", align 1
@.str215 = private constant [3 x i8] c"-c\00", align 1
@_stdio_streams = internal global [3 x %struct.FILE] [%struct.FILE { i16 544, [2 x i8] zeroinitializer, i32 0, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, %struct.FILE* getelementptr inbounds ([3 x %struct.FILE]* @_stdio_streams, i64 0, i
@stdin = global %struct.FILE* getelementptr inbounds ([3 x %struct.FILE]* @_stdio_streams, i64 0, i64 0)
@stdout = global %struct.FILE* getelementptr inbounds ([3 x %struct.FILE]* @_stdio_streams, i64 0, i64 1)
@stderr = global %struct.FILE* getelementptr inbounds ([3 x %struct.FILE]* @_stdio_streams, i64 0, i64 2)
@__stdin = global %struct.FILE* getelementptr inbounds ([3 x %struct.FILE]* @_stdio_streams, i64 0, i64 0)
@__stdout = global %struct.FILE* getelementptr inbounds ([3 x %struct.FILE]* @_stdio_streams, i64 0, i64 1)
@_stdio_openlist = global %struct.FILE* getelementptr inbounds ([3 x %struct.FILE]* @_stdio_streams, i64 0, i64 0)
@been_there_done_that = internal global i32 0
@_sigintr = common hidden global %struct.__sigset_t zeroinitializer, align 32
@errno = global i32 0
@h_errno = global i32 0
@.str50 = private constant [22 x i8] c"klee_div_zero_check.c\00", align 1
@.str151 = private constant [15 x i8] c"divide by zero\00", align 1
@.str252 = private constant [8 x i8] c"div.err\00", align 1
@.str353 = private constant [8 x i8] c"IGNORED\00", align 1
@.str14 = private constant [16 x i8] c"overshift error\00", align 1
@.str25 = private constant [14 x i8] c"overshift.err\00", align 1
@.str654 = private constant [13 x i8] c"klee_range.c\00", align 1
@.str17 = private constant [14 x i8] c"invalid range\00", align 1
@.str28 = private constant [5 x i8] c"user\00", align 1

@environ = alias weak i8*** @__environ
@system = alias weak i32 (i8*)* @__libc_system
@fputc_unlocked = alias i32 (i32, %struct.FILE*)* @__fputc_unlocked
@putc_unlocked = alias i32 (i32, %struct.FILE*)* @__fputc_unlocked
@fputc = alias i32 (i32, %struct.FILE*)* @__fputc_unlocked
@putc = alias i32 (i32, %struct.FILE*)* @__fputc_unlocked
@fputs = alias i32 (i8*, %struct.FILE*)* @fputs_unlocked
@bsd_signal = alias void (i32)* (i32, void (i32)*)* @__bsd_signal
@signal = alias void (i32)* (i32, void (i32)*)* @__bsd_signal
@fwrite = alias i64 (i8*, i64, i64, %struct.FILE*)* @fwrite_unlocked
@raise = alias weak i32 (i32)* @__raise
@sigaction = alias weak i32 (i32, %struct.sigaction*, %struct.sigaction*)* @__libc_sigaction
@fseeko = alias i32 (%struct.FILE*, i64, i32)* @fseek

define i32 @__user_main() nounwind {
entry:
  %retval = alloca i32
  %0 = alloca i32
  %in = alloca [25 x i8]
  %"alloca point" = bitcast i32 0 to i32
  %in1 = bitcast [25 x i8]* %in to i8*, !dbg !973
  call void @klee_make_symbolic(i8* %in1, i32 25, i8* getelementptr inbounds ([3 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !973
  %in2 = bitcast [25 x i8]* %in to i8*, !dbg !975
  %1 = call i32 (...)* bitcast (i32 (i8*)* @orig_main to i32 (...)*)(i8* %in2) nounwind, !dbg !975
  store i32 %1, i32* %0, align 4, !dbg !975
  %2 = load i32* %0, align 4, !dbg !975
  store i32 %2, i32* %retval, align 4, !dbg !975
  %retval3 = load i32* %retval, !dbg !975
  ret i32 %retval3, !dbg !975
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
  store i32 1094795585, i32* %val, align 4, !dbg !976
  %1 = call i32 @puts(i8* getelementptr inbounds ([51 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !978
  %2 = call i32 (i8*, ...)* @printf(i8* noalias getelementptr inbounds ([22 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !979
  %buf1 = bitcast [20 x i8]* %buf to i8*, !dbg !980
  %3 = load i8** %in_addr, align 4, !dbg !980
  %4 = call i8* bitcast (i8* (i8*, i8*, i64)* @strncpy to i8* (i8*, i8*, i32)*)(i8* noalias %buf1, i8* noalias %3, i32 24) nounwind, !dbg !980
  %buf2 = bitcast [20 x i8]* %buf to i8*, !dbg !981
  %5 = call i32 (i8*, ...)* @printf(i8* noalias getelementptr inbounds ([9 x i8]* @.str3, i32 0, i32 0), i8* %buf2) nounwind, !dbg !981
  %6 = load i32* %val, align 4, !dbg !982
  %7 = call i32 (i8*, ...)* @printf(i8* noalias getelementptr inbounds ([13 x i8]* @.str4, i32 0, i32 0), i32 %6) nounwind, !dbg !982
  %8 = load i32* %val, align 4, !dbg !983
  %9 = icmp eq i32 %8, -559038737, !dbg !983
  br i1 %9, label %bb, label %bb3, !dbg !983

bb:                                               ; preds = %entry
  %10 = call i32 @__libc_system(i8* getelementptr inbounds ([8 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !984
  store i32 0, i32* %0, align 4, !dbg !985
  %11 = load i32* %0, align 4, !dbg !985
  store i32 %11, i32* %retval, align 4, !dbg !985
  %retval4 = load i32* %retval, !dbg !986
  ret i32 %retval4, !dbg !986

bb3:                                              ; preds = %entry
  %12 = call i32 @puts(i8* getelementptr inbounds ([12 x i8]* @.str6, i32 0, i32 0)) nounwind, !dbg !987
  call void @exit(i32 1) noreturn nounwind, !dbg !986
  unreachable, !dbg !986
}

declare i32 @printf(i8* noalias, ...) nounwind

define internal void @__check_one_fd(i32 %fd, i32 %mode) nounwind {
entry:
  %fd_addr = alloca i32, align 4
  %mode_addr = alloca i32, align 4
  %iftmp.0 = alloca i32
  %st = alloca %struct.stat
  %nullfd = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  store i32 %fd, i32* %fd_addr
  store i32 %mode, i32* %mode_addr
  %0 = load i32* %fd_addr, align 4, !dbg !988
  %1 = call i32 (i32, i32, ...)* @fcntl(i32 %0, i32 1) nounwind, !dbg !988
  %2 = icmp ne i32 %1, -1, !dbg !988
  br i1 %2, label %bb2, label %bb, !dbg !988

bb:                                               ; preds = %entry
  %3 = call i32* @__errno_location() nounwind readnone, !dbg !988
  %4 = load i32* %3, align 4, !dbg !988
  %5 = icmp ne i32 %4, 9, !dbg !988
  br i1 %5, label %bb2, label %bb1, !dbg !988

bb1:                                              ; preds = %bb
  store i32 1, i32* %iftmp.0, align 4, !dbg !988
  br label %bb3, !dbg !988

bb2:                                              ; preds = %bb, %entry
  store i32 0, i32* %iftmp.0, align 4, !dbg !988
  br label %bb3, !dbg !988

bb3:                                              ; preds = %bb2, %bb1
  %6 = load i32* %iftmp.0, align 4, !dbg !988
  %7 = sext i32 %6 to i64, !dbg !988
  %8 = icmp ne i64 %7, 0, !dbg !988
  br i1 %8, label %bb4, label %return, !dbg !988

bb4:                                              ; preds = %bb3
  %9 = load i32* %mode_addr, align 4, !dbg !990
  %10 = call i32 (i8*, i32, ...)* @open(i8* getelementptr inbounds ([10 x i8]* @.str18, i64 0, i64 0), i32 %9) nounwind, !dbg !990
  store i32 %10, i32* %nullfd, align 4, !dbg !990
  %11 = load i32* %nullfd, align 4, !dbg !992
  %12 = load i32* %fd_addr, align 4, !dbg !992
  %13 = icmp ne i32 %11, %12, !dbg !992
  br i1 %13, label %bb8, label %bb5, !dbg !992

bb5:                                              ; preds = %bb4
  %14 = load i32* %fd_addr, align 4, !dbg !992
  %15 = call i32 @fstat(i32 %14, %struct.stat* %st) nounwind, !dbg !992
  %16 = icmp ne i32 %15, 0, !dbg !992
  br i1 %16, label %bb8, label %bb6, !dbg !992

bb6:                                              ; preds = %bb5
  %17 = getelementptr inbounds %struct.stat* %st, i32 0, i32 3, !dbg !992
  %18 = load i32* %17, align 8, !dbg !992
  %19 = and i32 %18, 61440, !dbg !992
  %20 = icmp ne i32 %19, 8192, !dbg !992
  br i1 %20, label %bb8, label %bb7, !dbg !992

bb7:                                              ; preds = %bb6
  %21 = getelementptr inbounds %struct.stat* %st, i32 0, i32 7, !dbg !992
  %22 = load i64* %21, align 8, !dbg !992
  %23 = call i64 @gnu_dev_makedev(i32 1, i32 3) nounwind, !dbg !992
  %24 = icmp ne i64 %22, %23, !dbg !992
  br i1 %24, label %bb8, label %return, !dbg !992

bb8:                                              ; preds = %bb7, %bb6, %bb5, %bb4
  call void @abort() noreturn nounwind, !dbg !993
  unreachable, !dbg !993

return:                                           ; preds = %bb3, %bb7
  ret void, !dbg !994
}

declare i32 @fcntl(i32, i32, ...)

declare i32 @open(i8*, i32, ...)

declare i32 @fstat(i32, %struct.stat*) nounwind

define internal i64 @gnu_dev_makedev(i32 %__major, i32 %__minor) nounwind inlinehint {
entry:
  %__major_addr = alloca i32, align 4
  %__minor_addr = alloca i32, align 4
  %retval = alloca i64
  %0 = alloca i64
  %"alloca point" = bitcast i32 0 to i32
  store i32 %__major, i32* %__major_addr
  store i32 %__minor, i32* %__minor_addr
  %1 = load i32* %__minor_addr, align 4, !dbg !995
  %2 = and i32 %1, 255, !dbg !995
  %3 = load i32* %__major_addr, align 4, !dbg !995
  %4 = and i32 %3, 4095, !dbg !995
  %int_cast_to_i64 = zext i32 8 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !995
  %5 = shl i32 %4, 8, !dbg !995
  %6 = or i32 %2, %5, !dbg !995
  %7 = zext i32 %6 to i64, !dbg !995
  %8 = load i32* %__minor_addr, align 4, !dbg !995
  %9 = zext i32 %8 to i64, !dbg !995
  %10 = and i64 %9, 4294967040, !dbg !995
  %int_cast_to_i641 = bitcast i64 12 to i64
  call void @klee_overshift_check(i64 64, i64 %int_cast_to_i641), !dbg !995
  %11 = shl i64 %10, 12, !dbg !995
  %12 = or i64 %7, %11, !dbg !995
  %13 = load i32* %__major_addr, align 4, !dbg !995
  %14 = zext i32 %13 to i64, !dbg !995
  %15 = and i64 %14, 4294963200, !dbg !995
  %int_cast_to_i642 = bitcast i64 32 to i64
  call void @klee_overshift_check(i64 64, i64 %int_cast_to_i642), !dbg !995
  %16 = shl i64 %15, 32, !dbg !995
  %17 = or i64 %12, %16, !dbg !995
  store i64 %17, i64* %0, align 8, !dbg !995
  %18 = load i64* %0, align 8, !dbg !995
  store i64 %18, i64* %retval, align 8, !dbg !995
  %retval1 = load i64* %retval, !dbg !995
  ret i64 %retval1, !dbg !995
}

define internal i32 @__check_suid() nounwind {
entry:
  %retval = alloca i32
  %0 = alloca i32
  %uid = alloca i32
  %euid = alloca i32
  %gid = alloca i32
  %egid = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  %1 = call i32 @getuid() nounwind, !dbg !997
  store i32 %1, i32* %uid, align 4, !dbg !997
  %2 = call i32 @geteuid() nounwind, !dbg !999
  store i32 %2, i32* %euid, align 4, !dbg !999
  %3 = call i32 @getgid() nounwind, !dbg !1000
  store i32 %3, i32* %gid, align 4, !dbg !1000
  %4 = call i32 @getegid() nounwind, !dbg !1001
  store i32 %4, i32* %egid, align 4, !dbg !1001
  %5 = load i32* %uid, align 4, !dbg !1002
  %6 = load i32* %euid, align 4, !dbg !1002
  %7 = icmp eq i32 %5, %6, !dbg !1002
  br i1 %7, label %bb, label %bb2, !dbg !1002

bb:                                               ; preds = %entry
  %8 = load i32* %gid, align 4, !dbg !1002
  %9 = load i32* %egid, align 4, !dbg !1002
  %10 = icmp eq i32 %8, %9, !dbg !1002
  br i1 %10, label %bb1, label %bb2, !dbg !1002

bb1:                                              ; preds = %bb
  store i32 0, i32* %0, align 4, !dbg !1003
  br label %bb3, !dbg !1003

bb2:                                              ; preds = %bb, %entry
  store i32 1, i32* %0, align 4, !dbg !1004
  br label %bb3, !dbg !1004

bb3:                                              ; preds = %bb2, %bb1
  %11 = load i32* %0, align 4, !dbg !1003
  store i32 %11, i32* %retval, align 4, !dbg !1003
  %retval4 = load i32* %retval, !dbg !1003
  ret i32 %retval4, !dbg !1003
}

declare i32 @getuid() nounwind

declare i32 @geteuid() nounwind

declare i32 @getgid() nounwind

declare i32 @getegid() nounwind

define void @__uClibc_init() nounwind {
entry:
  %0 = load i32* @been_there_done_that.2848, align 4, !dbg !1005
  %1 = icmp ne i32 %0, 0, !dbg !1005
  br i1 %1, label %return, label %bb, !dbg !1005

bb:                                               ; preds = %entry
  %2 = load i32* @been_there_done_that.2848, align 4, !dbg !1007
  %3 = add nsw i32 %2, 1, !dbg !1007
  store i32 %3, i32* @been_there_done_that.2848, align 4, !dbg !1007
  store i64 4096, i64* @__pagesize, align 8, !dbg !1008
  call void @_stdio_init() nounwind, !dbg !1009
  br label %return, !dbg !1009

return:                                           ; preds = %entry, %bb
  ret void, !dbg !1010
}

define void @__uClibc_fini() nounwind {
entry:
  %0 = load void ()** @__app_fini, align 8, !dbg !1011
  %1 = icmp ne void ()* %0, null, !dbg !1011
  br i1 %1, label %bb, label %bb1, !dbg !1011

bb:                                               ; preds = %entry
  %2 = load void ()** @__app_fini, align 8, !dbg !1013
  call void %2() nounwind, !dbg !1013
  br label %bb1, !dbg !1013

bb1:                                              ; preds = %bb, %entry
  %3 = load void ()** @__rtld_fini, align 8, !dbg !1014
  %4 = icmp ne void ()* %3, null, !dbg !1014
  br i1 %4, label %bb2, label %return, !dbg !1014

bb2:                                              ; preds = %bb1
  %5 = load void ()** @__rtld_fini, align 8, !dbg !1015
  call void %5() nounwind, !dbg !1015
  br label %return, !dbg !1015

return:                                           ; preds = %bb1, %bb2
  ret void, !dbg !1016
}

define void @__uClibc_main(i32 (i32, i8**, i8**)* %main, i32 %argc, i8** %argv, void ()* %app_init, void ()* %app_fini, void ()* %rtld_fini, i8* %stack_end) noreturn nounwind {
entry:
  %main_addr = alloca i32 (i32, i8**, i8**)*, align 8
  %argc_addr = alloca i32, align 4
  %argv_addr = alloca i8**, align 8
  %app_init_addr = alloca void ()*, align 8
  %app_fini_addr = alloca void ()*, align 8
  %rtld_fini_addr = alloca void ()*, align 8
  %stack_end_addr = alloca i8*, align 8
  %iftmp.10 = alloca i64
  %aux_dat = alloca i64*
  %auxvt = alloca [15 x %struct.Elf64_auxv_t]
  %auxv_entry = alloca %struct.Elf64_auxv_t*
  %"alloca point" = bitcast i32 0 to i32
  store i32 (i32, i8**, i8**)* %main, i32 (i32, i8**, i8**)** %main_addr
  store i32 %argc, i32* %argc_addr
  store i8** %argv, i8*** %argv_addr
  store void ()* %app_init, void ()** %app_init_addr
  store void ()* %app_fini, void ()** %app_fini_addr
  store void ()* %rtld_fini, void ()** %rtld_fini_addr
  store i8* %stack_end, i8** %stack_end_addr
  %0 = load i8** %stack_end_addr, align 8, !dbg !1017
  store i8* %0, i8** @__libc_stack_end, align 8, !dbg !1017
  %1 = load void ()** %rtld_fini_addr, align 8, !dbg !1019
  store void ()* %1, void ()** @__rtld_fini, align 8, !dbg !1019
  %2 = load i32* %argc_addr, align 4, !dbg !1020
  %3 = add nsw i32 %2, 1, !dbg !1020
  %4 = load i8*** %argv_addr, align 8, !dbg !1020
  %5 = sext i32 %3 to i64, !dbg !1020
  %6 = getelementptr inbounds i8** %4, i64 %5, !dbg !1020
  store i8** %6, i8*** @__environ, align 8, !dbg !1020
  %7 = load i8*** %argv_addr, align 8, !dbg !1021
  %8 = load i8** %7, align 8, !dbg !1021
  %9 = load i8*** @__environ, align 8, !dbg !1021
  %10 = bitcast i8** %9 to i8*, !dbg !1021
  %11 = icmp eq i8* %8, %10, !dbg !1021
  br i1 %11, label %bb, label %bb1, !dbg !1021

bb:                                               ; preds = %entry
  %12 = load i8*** %argv_addr, align 8, !dbg !1022
  %13 = load i32* %argc_addr, align 4, !dbg !1022
  %14 = sext i32 %13 to i64, !dbg !1022
  %15 = getelementptr inbounds i8** %12, i64 %14, !dbg !1022
  store i8** %15, i8*** @__environ, align 8, !dbg !1022
  br label %bb1, !dbg !1022

bb1:                                              ; preds = %bb, %entry
  %auxvt2 = bitcast [15 x %struct.Elf64_auxv_t]* %auxvt to %struct.Elf64_auxv_t*, !dbg !1023
  %auxvt23 = bitcast %struct.Elf64_auxv_t* %auxvt2 to i8*, !dbg !1023
  %16 = call i8* @memset(i8* %auxvt23, i32 0, i64 240) nounwind, !dbg !1023
  %17 = load i8*** @__environ, align 8, !dbg !1024
  %18 = bitcast i8** %17 to i64*, !dbg !1024
  store i64* %18, i64** %aux_dat, align 8, !dbg !1024
  br label %bb5, !dbg !1024

bb5:                                              ; preds = %bb5, %bb1
  %19 = load i64** %aux_dat, align 8, !dbg !1025
  %20 = load i64* %19, align 8, !dbg !1025
  %21 = icmp ne i64 %20, 0, !dbg !1025
  %22 = load i64** %aux_dat, align 8, !dbg !1026
  %23 = getelementptr inbounds i64* %22, i64 1, !dbg !1026
  store i64* %23, i64** %aux_dat, align 8, !dbg !1026
  br i1 %21, label %bb5, label %bb10, !dbg !1025

bb7:                                              ; preds = %bb10
  %24 = load i64** %aux_dat, align 8, !dbg !1027
  %25 = bitcast i64* %24 to %struct.Elf64_auxv_t*, !dbg !1027
  store %struct.Elf64_auxv_t* %25, %struct.Elf64_auxv_t** %auxv_entry, align 8, !dbg !1027
  %26 = load %struct.Elf64_auxv_t** %auxv_entry, align 8, !dbg !1029
  %27 = getelementptr inbounds %struct.Elf64_auxv_t* %26, i32 0, i32 0, !dbg !1029
  %28 = load i64* %27, align 8, !dbg !1029
  %29 = icmp ule i64 %28, 14, !dbg !1029
  br i1 %29, label %bb8, label %bb9, !dbg !1029

bb8:                                              ; preds = %bb7
  %30 = load %struct.Elf64_auxv_t** %auxv_entry, align 8, !dbg !1030
  %31 = getelementptr inbounds %struct.Elf64_auxv_t* %30, i32 0, i32 0, !dbg !1030
  %32 = load i64* %31, align 8, !dbg !1030
  %33 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i64 0, i64 %32, !dbg !1030
  %34 = bitcast %struct.Elf64_auxv_t* %33 to i8*, !dbg !1030
  %35 = load %struct.Elf64_auxv_t** %auxv_entry, align 8, !dbg !1030
  %36 = bitcast %struct.Elf64_auxv_t* %35 to i8*, !dbg !1030
  %37 = call i8* @memcpy(i8* noalias %34, i8* noalias %36, i64 16) nounwind, !dbg !1030
  br label %bb9, !dbg !1030

bb9:                                              ; preds = %bb8, %bb7
  %38 = load i64** %aux_dat, align 8, !dbg !1031
  %39 = getelementptr inbounds i64* %38, i64 2, !dbg !1031
  store i64* %39, i64** %aux_dat, align 8, !dbg !1031
  br label %bb10, !dbg !1031

bb10:                                             ; preds = %bb5, %bb9
  %40 = load i64** %aux_dat, align 8, !dbg !1032
  %41 = load i64* %40, align 8, !dbg !1032
  %42 = icmp ne i64 %41, 0, !dbg !1032
  br i1 %42, label %bb7, label %bb11, !dbg !1032

bb11:                                             ; preds = %bb10
  call void @__uClibc_init() nounwind, !dbg !1033
  %43 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i64 0, i64 6, !dbg !1034
  %44 = getelementptr inbounds %struct.Elf64_auxv_t* %43, i32 0, i32 1, !dbg !1034
  %45 = getelementptr inbounds %union.anon* %44, i32 0, i32 0, !dbg !1034
  %46 = load i64* %45, align 8, !dbg !1034
  %47 = icmp ne i64 %46, 0, !dbg !1034
  br i1 %47, label %bb12, label %bb13, !dbg !1034

bb12:                                             ; preds = %bb11
  %48 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i64 0, i64 6, !dbg !1034
  %49 = getelementptr inbounds %struct.Elf64_auxv_t* %48, i32 0, i32 1, !dbg !1034
  %50 = getelementptr inbounds %union.anon* %49, i32 0, i32 0, !dbg !1034
  %51 = load i64* %50, align 8, !dbg !1034
  store i64 %51, i64* %iftmp.10, align 8, !dbg !1034
  br label %bb14, !dbg !1034

bb13:                                             ; preds = %bb11
  store i64 4096, i64* %iftmp.10, align 8, !dbg !1034
  br label %bb14, !dbg !1034

bb14:                                             ; preds = %bb13, %bb12
  %52 = load i64* %iftmp.10, align 8, !dbg !1034
  store i64 %52, i64* @__pagesize, align 8, !dbg !1034
  %53 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i64 0, i64 11, !dbg !1035
  %54 = getelementptr inbounds %struct.Elf64_auxv_t* %53, i32 0, i32 1, !dbg !1035
  %55 = getelementptr inbounds %union.anon* %54, i32 0, i32 0, !dbg !1035
  %56 = load i64* %55, align 8, !dbg !1035
  %57 = icmp ne i64 %56, -1, !dbg !1035
  br i1 %57, label %bb16, label %bb15, !dbg !1035

bb15:                                             ; preds = %bb14
  %58 = call i32 @__check_suid() nounwind, !dbg !1035
  %59 = icmp ne i32 %58, 0, !dbg !1035
  br i1 %59, label %bb19, label %bb16, !dbg !1035

bb16:                                             ; preds = %bb15, %bb14
  %60 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i64 0, i64 11, !dbg !1035
  %61 = getelementptr inbounds %struct.Elf64_auxv_t* %60, i32 0, i32 1, !dbg !1035
  %62 = getelementptr inbounds %union.anon* %61, i32 0, i32 0, !dbg !1035
  %63 = load i64* %62, align 8, !dbg !1035
  %64 = icmp eq i64 %63, -1, !dbg !1035
  br i1 %64, label %bb20, label %bb17, !dbg !1035

bb17:                                             ; preds = %bb16
  %65 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i64 0, i64 11, !dbg !1035
  %66 = getelementptr inbounds %struct.Elf64_auxv_t* %65, i32 0, i32 1, !dbg !1035
  %67 = getelementptr inbounds %union.anon* %66, i32 0, i32 0, !dbg !1035
  %68 = load i64* %67, align 8, !dbg !1035
  %69 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i64 0, i64 12, !dbg !1035
  %70 = getelementptr inbounds %struct.Elf64_auxv_t* %69, i32 0, i32 1, !dbg !1035
  %71 = getelementptr inbounds %union.anon* %70, i32 0, i32 0, !dbg !1035
  %72 = load i64* %71, align 8, !dbg !1035
  %73 = icmp ne i64 %68, %72, !dbg !1035
  br i1 %73, label %bb19, label %bb18, !dbg !1035

bb18:                                             ; preds = %bb17
  %74 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i64 0, i64 13, !dbg !1035
  %75 = getelementptr inbounds %struct.Elf64_auxv_t* %74, i32 0, i32 1, !dbg !1035
  %76 = getelementptr inbounds %union.anon* %75, i32 0, i32 0, !dbg !1035
  %77 = load i64* %76, align 8, !dbg !1035
  %78 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i64 0, i64 14, !dbg !1035
  %79 = getelementptr inbounds %struct.Elf64_auxv_t* %78, i32 0, i32 1, !dbg !1035
  %80 = getelementptr inbounds %union.anon* %79, i32 0, i32 0, !dbg !1035
  %81 = load i64* %80, align 8, !dbg !1035
  %82 = icmp ne i64 %77, %81, !dbg !1035
  br i1 %82, label %bb19, label %bb20, !dbg !1035

bb19:                                             ; preds = %bb18, %bb17, %bb15
  call void @__check_one_fd(i32 0, i32 131072) nounwind, !dbg !1036
  call void @__check_one_fd(i32 1, i32 131074) nounwind, !dbg !1037
  call void @__check_one_fd(i32 2, i32 131074) nounwind, !dbg !1038
  br label %bb20, !dbg !1038

bb20:                                             ; preds = %bb19, %bb18, %bb16
  %83 = load i8*** %argv_addr, align 8, !dbg !1039
  %84 = load i8** %83, align 8, !dbg !1039
  store i8* %84, i8** @__uclibc_progname, align 8, !dbg !1039
  %85 = load void ()** %app_fini_addr, align 8, !dbg !1040
  store void ()* %85, void ()** @__app_fini, align 8, !dbg !1040
  %86 = load void ()** %app_init_addr, align 8, !dbg !1041
  %87 = icmp ne void ()* %86, null, !dbg !1041
  br i1 %87, label %bb21, label %bb22, !dbg !1041

bb21:                                             ; preds = %bb20
  %88 = load void ()** %app_init_addr, align 8, !dbg !1042
  call void %88() nounwind, !dbg !1042
  br label %bb22, !dbg !1042

bb22:                                             ; preds = %bb21, %bb20
  %89 = icmp ne i8* bitcast (i32* ()* @__errno_location to i8*), null, !dbg !1043
  br i1 %89, label %bb23, label %bb24, !dbg !1043

bb23:                                             ; preds = %bb22
  %90 = call i32* @__errno_location() nounwind readnone, !dbg !1044
  store i32 0, i32* %90, align 4, !dbg !1044
  br label %bb24, !dbg !1044

bb24:                                             ; preds = %bb23, %bb22
  %91 = icmp ne i8* bitcast (i32* ()* @__h_errno_location to i8*), null, !dbg !1045
  br i1 %91, label %bb25, label %bb26, !dbg !1045

bb25:                                             ; preds = %bb24
  %92 = call i32* @__h_errno_location() nounwind readnone, !dbg !1046
  store i32 0, i32* %92, align 4, !dbg !1046
  br label %bb26, !dbg !1046

bb26:                                             ; preds = %bb25, %bb24
  %93 = load i8*** @__environ, align 8, !dbg !1047
  %94 = load i32 (i32, i8**, i8**)** %main_addr, align 8, !dbg !1047
  %95 = load i32* %argc_addr, align 4, !dbg !1047
  %96 = load i8*** %argv_addr, align 8, !dbg !1047
  %97 = call i32 %94(i32 %95, i8** %96, i8** %93) nounwind, !dbg !1047
  call void @exit(i32 %97) noreturn nounwind, !dbg !1047
  unreachable, !dbg !1047
}

define void @exit(i32 %rv) noreturn nounwind {
entry:
  %rv_addr = alloca i32, align 4
  %"alloca point" = bitcast i32 0 to i32
  store i32 %rv, i32* %rv_addr
  %0 = load void (i32)** @__exit_cleanup, align 8, !dbg !1048
  %1 = icmp ne void (i32)* %0, null, !dbg !1048
  br i1 %1, label %bb, label %bb1, !dbg !1048

bb:                                               ; preds = %entry
  %2 = load void (i32)** @__exit_cleanup, align 8, !dbg !1050
  %3 = load i32* %rv_addr, align 4, !dbg !1050
  call void %2(i32 %3) nounwind, !dbg !1050
  br label %bb1, !dbg !1050

bb1:                                              ; preds = %bb, %entry
  call void @__uClibc_fini() nounwind, !dbg !1051
  call void @_stdio_term() nounwind, !dbg !1052
  %4 = load i32* %rv_addr, align 4, !dbg !1053
  call void @_exit(i32 %4) noreturn nounwind, !dbg !1053
  unreachable, !dbg !1053
}

declare void @_exit(i32) noreturn

define i32 @puts(i8* noalias %s) nounwind {
entry:
  %s_addr = alloca i8*, align 8
  %retval = alloca i32
  %0 = alloca i32
  %stream = alloca %struct.FILE*
  %n = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  store i8* %s, i8** %s_addr
  %1 = load %struct.FILE** @stdout, align 8, !dbg !1054
  store %struct.FILE* %1, %struct.FILE** %stream, align 8, !dbg !1054
  %2 = load i8** %s_addr, align 8, !dbg !1056
  %3 = load %struct.FILE** %stream, align 8, !dbg !1056
  %4 = call i32 @fputs_unlocked(i8* noalias %2, %struct.FILE* noalias %3) nounwind, !dbg !1056
  store i32 %4, i32* %n, align 4, !dbg !1056
  %5 = load i32* %n, align 4, !dbg !1056
  %6 = icmp ne i32 %5, -1, !dbg !1056
  br i1 %6, label %bb, label %bb2, !dbg !1056

bb:                                               ; preds = %entry
  %7 = load i32* %n, align 4, !dbg !1057
  %8 = add nsw i32 %7, 1, !dbg !1057
  store i32 %8, i32* %n, align 4, !dbg !1057
  %9 = load %struct.FILE** %stream, align 8, !dbg !1058
  %10 = call i32 @__fputc_unlocked(i32 10, %struct.FILE* %9) nounwind, !dbg !1058
  %11 = icmp eq i32 %10, -1, !dbg !1058
  br i1 %11, label %bb1, label %bb2, !dbg !1058

bb1:                                              ; preds = %bb
  store i32 -1, i32* %n, align 4, !dbg !1059
  br label %bb2, !dbg !1059

bb2:                                              ; preds = %bb1, %bb, %entry
  %12 = load i32* %n, align 4, !dbg !1060
  store i32 %12, i32* %0, align 4, !dbg !1060
  %13 = load i32* %0, align 4, !dbg !1060
  store i32 %13, i32* %retval, align 4, !dbg !1060
  %retval3 = load i32* %retval, !dbg !1060
  ret i32 %retval3, !dbg !1060
}

define i8* @strncpy(i8* noalias %s1, i8* noalias %s2, i64 %n) nounwind {
entry:
  %s1_addr = alloca i8*, align 8
  %s2_addr = alloca i8*, align 8
  %n_addr = alloca i64, align 8
  %retval = alloca i8*
  %0 = alloca i8*
  %s = alloca i8*
  %"alloca point" = bitcast i32 0 to i32
  store i8* %s1, i8** %s1_addr
  store i8* %s2, i8** %s2_addr
  store i64 %n, i64* %n_addr
  %1 = load i8** %s1_addr, align 8, !dbg !1061
  store i8* %1, i8** %s, align 8, !dbg !1061
  br label %bb3, !dbg !1061

bb:                                               ; preds = %bb3
  %2 = load i8** %s2_addr, align 8, !dbg !1063
  %3 = load i8* %2, align 1, !dbg !1063
  %4 = load i8** %s, align 8, !dbg !1063
  store i8 %3, i8* %4, align 1, !dbg !1063
  %5 = load i8** %s, align 8, !dbg !1063
  %6 = load i8* %5, align 1, !dbg !1063
  %7 = icmp ne i8 %6, 0, !dbg !1063
  br i1 %7, label %bb1, label %bb2, !dbg !1063

bb1:                                              ; preds = %bb
  %8 = load i8** %s2_addr, align 8, !dbg !1063
  %9 = getelementptr inbounds i8* %8, i64 1, !dbg !1063
  store i8* %9, i8** %s2_addr, align 8, !dbg !1063
  br label %bb2, !dbg !1063

bb2:                                              ; preds = %bb1, %bb
  %10 = load i8** %s, align 8, !dbg !1064
  %11 = getelementptr inbounds i8* %10, i64 1, !dbg !1064
  store i8* %11, i8** %s, align 8, !dbg !1064
  %12 = load i64* %n_addr, align 8, !dbg !1065
  %13 = sub i64 %12, 1, !dbg !1065
  store i64 %13, i64* %n_addr, align 8, !dbg !1065
  br label %bb3, !dbg !1065

bb3:                                              ; preds = %bb2, %entry
  %14 = load i64* %n_addr, align 8, !dbg !1066
  %15 = icmp ne i64 %14, 0, !dbg !1066
  br i1 %15, label %bb, label %bb4, !dbg !1066

bb4:                                              ; preds = %bb3
  %16 = load i8** %s1_addr, align 8, !dbg !1067
  store i8* %16, i8** %0, align 8, !dbg !1067
  %17 = load i8** %0, align 8, !dbg !1067
  store i8* %17, i8** %retval, align 8, !dbg !1067
  %retval5 = load i8** %retval, !dbg !1067
  ret i8* %retval5, !dbg !1067
}

define i32 @__libc_system(i8* %command) nounwind {
entry:
  %command_addr = alloca i8*, align 8
  %retval = alloca i32
  %0 = alloca %3
  %1 = alloca i32
  %wait_val = alloca i32
  %pid = alloca i32
  %save_quit = alloca void (i32)*
  %save_int = alloca void (i32)*
  %save_chld = alloca void (i32)*
  %"alloca point" = bitcast i32 0 to i32
  store i8* %command, i8** %command_addr
  %2 = load i8** %command_addr, align 8, !dbg !1068
  %3 = icmp eq i8* %2, null, !dbg !1068
  br i1 %3, label %bb, label %bb1, !dbg !1068

bb:                                               ; preds = %entry
  store i32 1, i32* %1, align 4, !dbg !1070
  br label %bb8, !dbg !1070

bb1:                                              ; preds = %entry
  %4 = call void (i32)* (i32, void (i32)*)* @__bsd_signal(i32 3, void (i32)* inttoptr (i64 1 to void (i32)*)) nounwind, !dbg !1071
  store void (i32)* %4, void (i32)** %save_quit, align 8, !dbg !1071
  %5 = call void (i32)* (i32, void (i32)*)* @__bsd_signal(i32 2, void (i32)* inttoptr (i64 1 to void (i32)*)) nounwind, !dbg !1072
  store void (i32)* %5, void (i32)** %save_int, align 8, !dbg !1072
  %6 = call void (i32)* (i32, void (i32)*)* @__bsd_signal(i32 17, void (i32)* null) nounwind, !dbg !1073
  store void (i32)* %6, void (i32)** %save_chld, align 8, !dbg !1073
  %7 = call i32 @vfork() nounwind, !dbg !1074
  store i32 %7, i32* %pid, align 4, !dbg !1074
  %8 = load i32* %pid, align 4, !dbg !1074
  %9 = icmp slt i32 %8, 0, !dbg !1074
  br i1 %9, label %bb2, label %bb3, !dbg !1074

bb2:                                              ; preds = %bb1
  %10 = load void (i32)** %save_quit, align 8, !dbg !1075
  %11 = call void (i32)* (i32, void (i32)*)* @__bsd_signal(i32 3, void (i32)* %10) nounwind, !dbg !1075
  %12 = load void (i32)** %save_int, align 8, !dbg !1076
  %13 = call void (i32)* (i32, void (i32)*)* @__bsd_signal(i32 2, void (i32)* %12) nounwind, !dbg !1076
  %14 = load void (i32)** %save_chld, align 8, !dbg !1077
  %15 = call void (i32)* (i32, void (i32)*)* @__bsd_signal(i32 17, void (i32)* %14) nounwind, !dbg !1077
  store i32 -1, i32* %1, align 4, !dbg !1078
  br label %bb8, !dbg !1078

bb3:                                              ; preds = %bb1
  %16 = load i32* %pid, align 4, !dbg !1079
  %17 = icmp eq i32 %16, 0, !dbg !1079
  br i1 %17, label %bb4, label %bb5, !dbg !1079

bb4:                                              ; preds = %bb3
  %18 = call void (i32)* (i32, void (i32)*)* @__bsd_signal(i32 3, void (i32)* null) nounwind, !dbg !1080
  %19 = call void (i32)* (i32, void (i32)*)* @__bsd_signal(i32 2, void (i32)* null) nounwind, !dbg !1081
  %20 = call void (i32)* (i32, void (i32)*)* @__bsd_signal(i32 17, void (i32)* null) nounwind, !dbg !1082
  %21 = load i8** %command_addr, align 8, !dbg !1083
  %22 = call i32 (i8*, i8*, ...)* @execl(i8* getelementptr inbounds ([8 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str114, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str215, i64 0, i64 0), i8* %21, i8* null) nounwi
  call void @_exit(i32 127) noreturn nounwind, !dbg !1084
  unreachable, !dbg !1084

bb5:                                              ; preds = %bb3
  %23 = call void (i32)* (i32, void (i32)*)* @__bsd_signal(i32 3, void (i32)* inttoptr (i64 1 to void (i32)*)) nounwind, !dbg !1085
  %24 = call void (i32)* (i32, void (i32)*)* @__bsd_signal(i32 2, void (i32)* inttoptr (i64 1 to void (i32)*)) nounwind, !dbg !1086
  %25 = getelementptr inbounds %3* %0, i32 0, i32 0, !dbg !1087
  %26 = bitcast %union.wait** %25 to i32**, !dbg !1087
  store i32* %wait_val, i32** %26, align 8, !dbg !1087
  %27 = load i32* %pid, align 4, !dbg !1087
  %28 = bitcast %3* %0 to %union.sigval_t*, !dbg !1087
  %elt = getelementptr inbounds %union.sigval_t* %28, i32 0, i32 0, !dbg !1087
  %val = load i8** %elt, !dbg !1087
  %29 = call i32 @wait4(i32 %27, i8* %val, i32 0, %struct.rusage* null) nounwind, !dbg !1087
  %30 = icmp eq i32 %29, -1, !dbg !1087
  br i1 %30, label %bb6, label %bb7, !dbg !1087

bb6:                                              ; preds = %bb5
  store i32 -1, i32* %wait_val, align 4, !dbg !1088
  br label %bb7, !dbg !1088

bb7:                                              ; preds = %bb6, %bb5
  %31 = load void (i32)** %save_quit, align 8, !dbg !1089
  %32 = call void (i32)* (i32, void (i32)*)* @__bsd_signal(i32 3, void (i32)* %31) nounwind, !dbg !1089
  %33 = load void (i32)** %save_int, align 8, !dbg !1090
  %34 = call void (i32)* (i32, void (i32)*)* @__bsd_signal(i32 2, void (i32)* %33) nounwind, !dbg !1090
  %35 = load void (i32)** %save_chld, align 8, !dbg !1091
  %36 = call void (i32)* (i32, void (i32)*)* @__bsd_signal(i32 17, void (i32)* %35) nounwind, !dbg !1091
  %37 = load i32* %wait_val, align 4, !dbg !1092
  store i32 %37, i32* %1, align 4, !dbg !1092
  br label %bb8, !dbg !1092

bb8:                                              ; preds = %bb7, %bb2, %bb
  %38 = load i32* %1, align 4, !dbg !1070
  store i32 %38, i32* %retval, align 4, !dbg !1070
  %retval9 = load i32* %retval, !dbg !1070
  ret i32 %retval9, !dbg !1070
}

declare i32 @vfork() nounwind

declare i32 @wait4(i32, i8*, i32, %struct.rusage*) nounwind

define weak i32* @__errno_location() nounwind readnone {
entry:
  %retval = alloca i32*
  %0 = alloca i32*
  %"alloca point" = bitcast i32 0 to i32
  store i32* @errno, i32** %0, align 8, !dbg !1093
  %1 = load i32** %0, align 8, !dbg !1093
  store i32* %1, i32** %retval, align 8, !dbg !1093
  %retval1 = load i32** %retval, !dbg !1093
  ret i32* %retval1, !dbg !1093
}

define i32 @__fputc_unlocked(i32 %c, %struct.FILE* %stream) nounwind {
entry:
  %c_addr = alloca i32, align 4
  %stream_addr = alloca %struct.FILE*, align 8
  %retval = alloca i32
  %0 = alloca i32
  %uc = alloca i8
  %"alloca point" = bitcast i32 0 to i32
  store i32 %c, i32* %c_addr
  store %struct.FILE* %stream, %struct.FILE** %stream_addr
  %1 = load %struct.FILE** %stream_addr, align 8, !dbg !1095
  %2 = getelementptr inbounds %struct.FILE* %1, i32 0, i32 5, !dbg !1095
  %3 = load i8** %2, align 8, !dbg !1095
  %4 = load %struct.FILE** %stream_addr, align 8, !dbg !1095
  %5 = getelementptr inbounds %struct.FILE* %4, i32 0, i32 8, !dbg !1095
  %6 = load i8** %5, align 8, !dbg !1095
  %7 = icmp ult i8* %3, %6, !dbg !1095
  %8 = load %struct.FILE** %stream_addr, align 8, !dbg !1097
  br i1 %7, label %bb, label %bb1, !dbg !1095

bb:                                               ; preds = %entry
  %9 = getelementptr inbounds %struct.FILE* %8, i32 0, i32 5, !dbg !1097
  %10 = load i8** %9, align 8, !dbg !1097
  %11 = load i32* %c_addr, align 4, !dbg !1097
  %12 = trunc i32 %11 to i8, !dbg !1097
  store i8 %12, i8* %10, align 1, !dbg !1097
  %13 = getelementptr inbounds i8* %10, i64 1, !dbg !1097
  %14 = load %struct.FILE** %stream_addr, align 8, !dbg !1097
  %15 = getelementptr inbounds %struct.FILE* %14, i32 0, i32 5, !dbg !1097
  store i8* %13, i8** %15, align 8, !dbg !1097
  %16 = load i32* %c_addr, align 4, !dbg !1098
  %17 = trunc i32 %16 to i8, !dbg !1098
  %18 = zext i8 %17 to i32, !dbg !1098
  store i32 %18, i32* %0, align 4, !dbg !1098
  br label %bb15, !dbg !1098

bb1:                                              ; preds = %entry
  %19 = getelementptr inbounds %struct.FILE* %8, i32 0, i32 0, !dbg !1099
  %20 = load i16* %19, align 8, !dbg !1099
  %21 = zext i16 %20 to i32, !dbg !1099
  %22 = and i32 %21, 192, !dbg !1099
  %23 = icmp eq i32 %22, 192, !dbg !1099
  br i1 %23, label %bb3, label %bb2, !dbg !1099

bb2:                                              ; preds = %bb1
  %24 = load %struct.FILE** %stream_addr, align 8, !dbg !1099
  %25 = call i32 @__stdio_trans2w_o(%struct.FILE* noalias %24, i32 128) nounwind, !dbg !1099
  %26 = icmp eq i32 %25, 0, !dbg !1099
  br i1 %26, label %bb3, label %BAD, !dbg !1099

bb3:                                              ; preds = %bb2, %bb1
  %27 = load %struct.FILE** %stream_addr, align 8, !dbg !1100
  %28 = getelementptr inbounds %struct.FILE* %27, i32 0, i32 2, !dbg !1100
  %29 = load i32* %28, align 4, !dbg !1100
  %30 = icmp eq i32 %29, -2, !dbg !1100
  br i1 %30, label %bb4, label %bb5, !dbg !1100

bb4:                                              ; preds = %bb3
  %31 = load i32* %c_addr, align 4, !dbg !1101
  %32 = trunc i32 %31 to i8, !dbg !1101
  %33 = zext i8 %32 to i32, !dbg !1101
  store i32 %33, i32* %0, align 4, !dbg !1101
  br label %bb15, !dbg !1101

bb5:                                              ; preds = %bb3
  %34 = load %struct.FILE** %stream_addr, align 8, !dbg !1102
  %35 = getelementptr inbounds %struct.FILE* %34, i32 0, i32 4, !dbg !1102
  %36 = load i8** %35, align 8, !dbg !1102
  %37 = load %struct.FILE** %stream_addr, align 8, !dbg !1102
  %38 = getelementptr inbounds %struct.FILE* %37, i32 0, i32 3, !dbg !1102
  %39 = load i8** %38, align 8, !dbg !1102
  %40 = icmp ne i8* %36, %39, !dbg !1102
  br i1 %40, label %bb6, label %bb13, !dbg !1102

bb6:                                              ; preds = %bb5
  %41 = load %struct.FILE** %stream_addr, align 8, !dbg !1103
  %42 = getelementptr inbounds %struct.FILE* %41, i32 0, i32 4, !dbg !1103
  %43 = load i8** %42, align 8, !dbg !1103
  %44 = load %struct.FILE** %stream_addr, align 8, !dbg !1103
  %45 = getelementptr inbounds %struct.FILE* %44, i32 0, i32 5, !dbg !1103
  %46 = load i8** %45, align 8, !dbg !1103
  %47 = icmp eq i8* %43, %46, !dbg !1103
  br i1 %47, label %bb7, label %bb8, !dbg !1103

bb7:                                              ; preds = %bb6
  %48 = load %struct.FILE** %stream_addr, align 8, !dbg !1103
  %49 = call i64 @__stdio_wcommit(%struct.FILE* noalias %48) nounwind, !dbg !1103
  %50 = icmp ne i64 %49, 0, !dbg !1103
  br i1 %50, label %BAD, label %bb8, !dbg !1103

bb8:                                              ; preds = %bb7, %bb6
  %51 = load %struct.FILE** %stream_addr, align 8, !dbg !1104
  %52 = getelementptr inbounds %struct.FILE* %51, i32 0, i32 5, !dbg !1104
  %53 = load i8** %52, align 8, !dbg !1104
  %54 = load i32* %c_addr, align 4, !dbg !1104
  %55 = trunc i32 %54 to i8, !dbg !1104
  store i8 %55, i8* %53, align 1, !dbg !1104
  %56 = getelementptr inbounds i8* %53, i64 1, !dbg !1104
  %57 = load %struct.FILE** %stream_addr, align 8, !dbg !1104
  %58 = getelementptr inbounds %struct.FILE* %57, i32 0, i32 5, !dbg !1104
  store i8* %56, i8** %58, align 8, !dbg !1104
  %59 = load %struct.FILE** %stream_addr, align 8, !dbg !1105
  %60 = getelementptr inbounds %struct.FILE* %59, i32 0, i32 0, !dbg !1105
  %61 = load i16* %60, align 8, !dbg !1105
  %62 = zext i16 %61 to i32, !dbg !1105
  %63 = and i32 %62, 256, !dbg !1105
  %64 = icmp ne i32 %63, 0, !dbg !1105
  br i1 %64, label %bb9, label %bb14, !dbg !1105

bb9:                                              ; preds = %bb8
  %65 = load i32* %c_addr, align 4, !dbg !1106
  %66 = trunc i32 %65 to i8, !dbg !1106
  %67 = icmp eq i8 %66, 10, !dbg !1106
  br i1 %67, label %bb10, label %bb14, !dbg !1106

bb10:                                             ; preds = %bb9
  %68 = load %struct.FILE** %stream_addr, align 8, !dbg !1106
  %69 = call i64 @__stdio_wcommit(%struct.FILE* noalias %68) nounwind, !dbg !1106
  %70 = icmp ne i64 %69, 0, !dbg !1106
  br i1 %70, label %bb11, label %bb14, !dbg !1106

bb11:                                             ; preds = %bb10
  %71 = load %struct.FILE** %stream_addr, align 8, !dbg !1107
  %72 = getelementptr inbounds %struct.FILE* %71, i32 0, i32 5, !dbg !1107
  %73 = load i8** %72, align 8, !dbg !1107
  %74 = getelementptr inbounds i8* %73, i64 -1, !dbg !1107
  %75 = load %struct.FILE** %stream_addr, align 8, !dbg !1107
  %76 = getelementptr inbounds %struct.FILE* %75, i32 0, i32 5, !dbg !1107
  store i8* %74, i8** %76, align 8, !dbg !1107
  br label %BAD, !dbg !1107

bb13:                                             ; preds = %bb5
  %77 = load i32* %c_addr, align 4, !dbg !1108
  %78 = trunc i32 %77 to i8, !dbg !1108
  store i8 %78, i8* %uc, align 1, !dbg !1108
  %79 = load %struct.FILE** %stream_addr, align 8, !dbg !1110
  %80 = call i64 @__stdio_WRITE(%struct.FILE* %79, i8* %uc, i64 1) nounwind, !dbg !1110
  %81 = icmp eq i64 %80, 0, !dbg !1110
  br i1 %81, label %BAD, label %bb14, !dbg !1110

bb14:                                             ; preds = %bb8, %bb9, %bb10, %bb13
  %82 = load i32* %c_addr, align 4, !dbg !1111
  %83 = trunc i32 %82 to i8, !dbg !1111
  %84 = zext i8 %83 to i32, !dbg !1111
  store i32 %84, i32* %0, align 4, !dbg !1111
  br label %bb15, !dbg !1111

BAD:                                              ; preds = %bb13, %bb11, %bb7, %bb2
  store i32 -1, i32* %0, align 4, !dbg !1112
  br label %bb15, !dbg !1112

bb15:                                             ; preds = %BAD, %bb14, %bb4, %bb
  %85 = load i32* %0, align 4, !dbg !1098
  store i32 %85, i32* %retval, align 4, !dbg !1098
  %retval16 = load i32* %retval, !dbg !1098
  ret i32 %retval16, !dbg !1098
}

define weak i32* @__h_errno_location() nounwind readnone {
entry:
  %retval = alloca i32*
  %0 = alloca i32*
  %"alloca point" = bitcast i32 0 to i32
  store i32* @h_errno, i32** %0, align 8, !dbg !1113
  %1 = load i32** %0, align 8, !dbg !1113
  store i32* %1, i32** %retval, align 8, !dbg !1113
  %retval1 = load i32** %retval, !dbg !1113
  ret i32* %retval1, !dbg !1113
}

define hidden void @_stdio_term() nounwind {
entry:
  %ptr = alloca %struct.FILE*
  %"alloca point" = bitcast i32 0 to i32
  %0 = load %struct.FILE** @_stdio_openlist, align 8, !dbg !1115
  store %struct.FILE* %0, %struct.FILE** %ptr, align 8, !dbg !1115
  br label %bb3, !dbg !1115

bb:                                               ; preds = %bb3
  %1 = load %struct.FILE** %ptr, align 8, !dbg !1117
  %2 = getelementptr inbounds %struct.FILE* %1, i32 0, i32 0, !dbg !1117
  %3 = load i16* %2, align 8, !dbg !1117
  %4 = zext i16 %3 to i32, !dbg !1117
  %5 = and i32 %4, 64, !dbg !1117
  %6 = icmp ne i32 %5, 0, !dbg !1117
  br i1 %6, label %bb1, label %bb2, !dbg !1117

bb1:                                              ; preds = %bb
  %7 = load %struct.FILE** %ptr, align 8, !dbg !1118
  %8 = call i64 @__stdio_wcommit(%struct.FILE* noalias %7) nounwind, !dbg !1118
  br label %bb2, !dbg !1118

bb2:                                              ; preds = %bb1, %bb
  %9 = load %struct.FILE** %ptr, align 8, !dbg !1115
  %10 = getelementptr inbounds %struct.FILE* %9, i32 0, i32 9, !dbg !1115
  %11 = load %struct.FILE** %10, align 8, !dbg !1115
  store %struct.FILE* %11, %struct.FILE** %ptr, align 8, !dbg !1115
  br label %bb3, !dbg !1115

bb3:                                              ; preds = %bb2, %entry
  %12 = load %struct.FILE** %ptr, align 8, !dbg !1115
  %13 = icmp ne %struct.FILE* %12, null, !dbg !1115
  br i1 %13, label %bb, label %return, !dbg !1115

return:                                           ; preds = %bb3
  ret void, !dbg !1119
}

define hidden void @_stdio_init() nounwind {
entry:
  %old_errno = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  %0 = load i32* @errno, align 4, !dbg !1120
  store i32 %0, i32* %old_errno, align 4, !dbg !1120
  %1 = load i16* getelementptr inbounds ([3 x %struct.FILE]* @_stdio_streams, i64 0, i64 0, i32 0), align 8, !dbg !1122
  %2 = call i32 @isatty(i32 0) nounwind, !dbg !1122
  %3 = sub nsw i32 1, %2, !dbg !1122
  %4 = mul i32 %3, 256, !dbg !1122
  %5 = trunc i32 %4 to i16, !dbg !1122
  %6 = xor i16 %1, %5, !dbg !1122
  store i16 %6, i16* getelementptr inbounds ([3 x %struct.FILE]* @_stdio_streams, i64 0, i64 0, i32 0), align 8, !dbg !1122
  %7 = load i16* getelementptr inbounds ([3 x %struct.FILE]* @_stdio_streams, i64 0, i64 1, i32 0), align 8, !dbg !1123
  %8 = call i32 @isatty(i32 1) nounwind, !dbg !1123
  %9 = sub nsw i32 1, %8, !dbg !1123
  %10 = mul i32 %9, 256, !dbg !1123
  %11 = trunc i32 %10 to i16, !dbg !1123
  %12 = xor i16 %7, %11, !dbg !1123
  store i16 %12, i16* getelementptr inbounds ([3 x %struct.FILE]* @_stdio_streams, i64 0, i64 1, i32 0), align 8, !dbg !1123
  %13 = load i32* %old_errno, align 4, !dbg !1124
  store i32 %13, i32* @errno, align 4, !dbg !1124
  ret void, !dbg !1125
}

declare void @abort() noreturn nounwind

declare i32 @sigprocmask(i32, %struct.__sigset_t* noalias, %struct.__sigset_t* noalias) nounwind

define i32 @execl(i8* %path, i8* %arg, ...) nounwind {
entry:
  %path_addr = alloca i8*, align 8
  %arg_addr = alloca i8*, align 8
  %retval = alloca i32
  %0 = alloca i32
  %addr.3 = alloca i8*
  %addr.0 = alloca i8*
  %n = alloca i32
  %argv = alloca i8**
  %p = alloca i8**
  %args = alloca [1 x %struct.__va_list_tag]
  %"alloca point" = bitcast i32 0 to i32
  store i8* %path, i8** %path_addr
  store i8* %arg, i8** %arg_addr
  store i32 0, i32* %n, align 4, !dbg !1126
  %args1 = bitcast [1 x %struct.__va_list_tag]* %args to %struct.__va_list_tag*, !dbg !1128
  %args12 = bitcast %struct.__va_list_tag* %args1 to i8*, !dbg !1128
  call void @llvm.va_start(i8* %args12), !dbg !1128
  br label %bb, !dbg !1128

bb:                                               ; preds = %bb5, %entry
  %1 = load i32* %n, align 4, !dbg !1129
  %2 = add nsw i32 %1, 1, !dbg !1129
  store i32 %2, i32* %n, align 4, !dbg !1129
  %3 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !1130
  %4 = getelementptr inbounds %struct.__va_list_tag* %3, i32 0, i32 0, !dbg !1130
  %5 = load i32* %4, align 8, !dbg !1130
  %6 = icmp uge i32 %5, 48, !dbg !1130
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !1130
  br i1 %6, label %bb4, label %bb3, !dbg !1130

bb3:                                              ; preds = %bb
  %8 = getelementptr inbounds %struct.__va_list_tag* %7, i32 0, i32 3, !dbg !1130
  %9 = load i8** %8, align 8, !dbg !1130
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !1130
  %11 = getelementptr inbounds %struct.__va_list_tag* %10, i32 0, i32 0, !dbg !1130
  %12 = load i32* %11, align 8, !dbg !1130
  %13 = inttoptr i32 %12 to i8*, !dbg !1130
  %14 = ptrtoint i8* %9 to i64, !dbg !1130
  %15 = ptrtoint i8* %13 to i64, !dbg !1130
  %16 = add i64 %14, %15, !dbg !1130
  %17 = inttoptr i64 %16 to i8*, !dbg !1130
  store i8* %17, i8** %addr.0, align 8, !dbg !1130
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !1130
  %19 = getelementptr inbounds %struct.__va_list_tag* %18, i32 0, i32 0, !dbg !1130
  %20 = load i32* %19, align 8, !dbg !1130
  %21 = add i32 %20, 8, !dbg !1130
  %22 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !1130
  %23 = getelementptr inbounds %struct.__va_list_tag* %22, i32 0, i32 0, !dbg !1130
  store i32 %21, i32* %23, align 8, !dbg !1130
  br label %bb5, !dbg !1130

bb4:                                              ; preds = %bb
  %24 = getelementptr inbounds %struct.__va_list_tag* %7, i32 0, i32 2, !dbg !1130
  %25 = load i8** %24, align 8, !dbg !1130
  store i8* %25, i8** %addr.0, align 8, !dbg !1130
  %26 = getelementptr inbounds i8* %25, i64 8, !dbg !1130
  %27 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !1130
  %28 = getelementptr inbounds %struct.__va_list_tag* %27, i32 0, i32 2, !dbg !1130
  store i8* %26, i8** %28, align 8, !dbg !1130
  br label %bb5, !dbg !1130

bb5:                                              ; preds = %bb4, %bb3
  %29 = load i8** %addr.0, align 8, !dbg !1130
  %30 = bitcast i8* %29 to i8**, !dbg !1130
  %31 = load i8** %30, align 8, !dbg !1130
  %32 = icmp ne i8* %31, null, !dbg !1130
  br i1 %32, label %bb, label %bb6, !dbg !1130

bb6:                                              ; preds = %bb5
  %args7 = bitcast [1 x %struct.__va_list_tag]* %args to %struct.__va_list_tag*, !dbg !1131
  %args78 = bitcast %struct.__va_list_tag* %args7 to i8*, !dbg !1131
  call void @llvm.va_end(i8* %args78), !dbg !1131
  %33 = load i32* %n, align 4, !dbg !1132
  %34 = add nsw i32 %33, 1, !dbg !1132
  %35 = sext i32 %34 to i64, !dbg !1132
  %36 = mul i64 %35, 8, !dbg !1132
  %37 = alloca i8, i64 %36, align 1, !dbg !1132
  %38 = bitcast i8* %37 to i8**, !dbg !1132
  store i8** %38, i8*** %argv, align 8, !dbg !1132
  %39 = load i8*** %argv, align 8, !dbg !1132
  store i8** %39, i8*** %p, align 8, !dbg !1132
  %40 = load i8** %arg_addr, align 8, !dbg !1133
  %41 = load i8*** %p, align 8, !dbg !1133
  %42 = getelementptr inbounds i8** %41, i64 0, !dbg !1133
  store i8* %40, i8** %42, align 1, !dbg !1133
  %args9 = bitcast [1 x %struct.__va_list_tag]* %args to %struct.__va_list_tag*, !dbg !1134
  %args910 = bitcast %struct.__va_list_tag* %args9 to i8*, !dbg !1134
  call void @llvm.va_start(i8* %args910), !dbg !1134
  br label %bb11, !dbg !1134

bb11:                                             ; preds = %bb14, %bb6
  %43 = load i8*** %p, align 8, !dbg !1135
  %44 = getelementptr inbounds i8** %43, i64 1, !dbg !1135
  store i8** %44, i8*** %p, align 8, !dbg !1135
  %45 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !1135
  %46 = getelementptr inbounds %struct.__va_list_tag* %45, i32 0, i32 0, !dbg !1135
  %47 = load i32* %46, align 8, !dbg !1135
  %48 = icmp uge i32 %47, 48, !dbg !1135
  %49 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !1135
  br i1 %48, label %bb13, label %bb12, !dbg !1135

bb12:                                             ; preds = %bb11
  %50 = getelementptr inbounds %struct.__va_list_tag* %49, i32 0, i32 3, !dbg !1135
  %51 = load i8** %50, align 8, !dbg !1135
  %52 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !1135
  %53 = getelementptr inbounds %struct.__va_list_tag* %52, i32 0, i32 0, !dbg !1135
  %54 = load i32* %53, align 8, !dbg !1135
  %55 = inttoptr i32 %54 to i8*, !dbg !1135
  %56 = ptrtoint i8* %51 to i64, !dbg !1135
  %57 = ptrtoint i8* %55 to i64, !dbg !1135
  %58 = add i64 %56, %57, !dbg !1135
  %59 = inttoptr i64 %58 to i8*, !dbg !1135
  store i8* %59, i8** %addr.3, align 8, !dbg !1135
  %60 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !1135
  %61 = getelementptr inbounds %struct.__va_list_tag* %60, i32 0, i32 0, !dbg !1135
  %62 = load i32* %61, align 8, !dbg !1135
  %63 = add i32 %62, 8, !dbg !1135
  %64 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !1135
  %65 = getelementptr inbounds %struct.__va_list_tag* %64, i32 0, i32 0, !dbg !1135
  store i32 %63, i32* %65, align 8, !dbg !1135
  br label %bb14, !dbg !1135

bb13:                                             ; preds = %bb11
  %66 = getelementptr inbounds %struct.__va_list_tag* %49, i32 0, i32 2, !dbg !1135
  %67 = load i8** %66, align 8, !dbg !1135
  store i8* %67, i8** %addr.3, align 8, !dbg !1135
  %68 = getelementptr inbounds i8* %67, i64 8, !dbg !1135
  %69 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !1135
  %70 = getelementptr inbounds %struct.__va_list_tag* %69, i32 0, i32 2, !dbg !1135
  store i8* %68, i8** %70, align 8, !dbg !1135
  br label %bb14, !dbg !1135

bb14:                                             ; preds = %bb13, %bb12
  %71 = load i8** %addr.3, align 8, !dbg !1135
  %72 = bitcast i8* %71 to i8**, !dbg !1135
  %73 = load i8** %72, align 8, !dbg !1135
  %74 = load i8*** %p, align 8, !dbg !1135
  store i8* %73, i8** %74, align 8, !dbg !1135
  %75 = load i32* %n, align 4, !dbg !1136
  %76 = sub nsw i32 %75, 1, !dbg !1136
  store i32 %76, i32* %n, align 4, !dbg !1136
  %77 = load i32* %n, align 4, !dbg !1136
  %78 = icmp ne i32 %77, 0, !dbg !1136
  br i1 %78, label %bb11, label %bb15, !dbg !1136

bb15:                                             ; preds = %bb14
  %args16 = bitcast [1 x %struct.__va_list_tag]* %args to %struct.__va_list_tag*, !dbg !1137
  %args1617 = bitcast %struct.__va_list_tag* %args16 to i8*, !dbg !1137
  call void @llvm.va_end(i8* %args1617), !dbg !1137
  %79 = load i8*** @__environ, align 8, !dbg !1138
  %80 = load i8** %path_addr, align 8, !dbg !1138
  %81 = load i8*** %argv, align 8, !dbg !1138
  %82 = call i32 @execve(i8* %80, i8** %81, i8** %79) nounwind, !dbg !1138
  store i32 %82, i32* %n, align 4, !dbg !1138
  %83 = load i32* %n, align 4, !dbg !1139
  store i32 %83, i32* %0, align 4, !dbg !1139
  %84 = load i32* %0, align 4, !dbg !1139
  store i32 %84, i32* %retval, align 4, !dbg !1139
  %retval18 = load i32* %retval, !dbg !1139
  ret i32 %retval18, !dbg !1139
}

declare void @llvm.va_start(i8*) nounwind

declare void @llvm.va_end(i8*) nounwind

declare i32 @execve(i8*, i8**, i8**) nounwind

define i32 @fputs_unlocked(i8* noalias %s, %struct.FILE* noalias %stream) nounwind {
entry:
  %s_addr = alloca i8*, align 8
  %stream_addr = alloca %struct.FILE*, align 8
  %retval = alloca i32
  %iftmp.0 = alloca i32
  %0 = alloca i32
  %n = alloca i64
  %"alloca point" = bitcast i32 0 to i32
  store i8* %s, i8** %s_addr
  store %struct.FILE* %stream, %struct.FILE** %stream_addr
  %1 = load i8** %s_addr, align 8, !dbg !1140
  %2 = call i64 @strlen(i8* %1) nounwind readonly, !dbg !1140
  store i64 %2, i64* %n, align 8, !dbg !1140
  %3 = load i8** %s_addr, align 8, !dbg !1142
  %4 = load i64* %n, align 8, !dbg !1142
  %5 = load %struct.FILE** %stream_addr, align 8, !dbg !1142
  %6 = call i64 @fwrite_unlocked(i8* noalias %3, i64 1, i64 %4, %struct.FILE* noalias %5) nounwind, !dbg !1142
  %7 = load i64* %n, align 8, !dbg !1142
  %8 = icmp eq i64 %6, %7, !dbg !1142
  br i1 %8, label %bb, label %bb1, !dbg !1142

bb:                                               ; preds = %entry
  %9 = load i64* %n, align 8, !dbg !1142
  %10 = trunc i64 %9 to i32, !dbg !1142
  store i32 %10, i32* %iftmp.0, align 4, !dbg !1142
  br label %bb2, !dbg !1142

bb1:                                              ; preds = %entry
  store i32 -1, i32* %iftmp.0, align 4, !dbg !1142
  br label %bb2, !dbg !1142

bb2:                                              ; preds = %bb1, %bb
  %11 = load i32* %iftmp.0, align 4, !dbg !1142
  store i32 %11, i32* %0, align 4, !dbg !1142
  %12 = load i32* %0, align 4, !dbg !1142
  store i32 %12, i32* %retval, align 4, !dbg !1142
  %retval3 = load i32* %retval, !dbg !1142
  ret i32 %retval3, !dbg !1142
}

define i8* @memcpy(i8* noalias %s1, i8* noalias %s2, i64 %n) nounwind {
entry:
  %s1_addr = alloca i8*, align 8
  %s2_addr = alloca i8*, align 8
  %n_addr = alloca i64, align 8
  %retval = alloca i8*
  %0 = alloca i8*
  %r1 = alloca i8*
  %r2 = alloca i8*
  %"alloca point" = bitcast i32 0 to i32
  store i8* %s1, i8** %s1_addr
  store i8* %s2, i8** %s2_addr
  store i64 %n, i64* %n_addr
  %1 = load i8** %s1_addr, align 8, !dbg !1143
  store i8* %1, i8** %r1, align 8, !dbg !1143
  %2 = load i8** %s2_addr, align 8, !dbg !1145
  store i8* %2, i8** %r2, align 8, !dbg !1145
  br label %bb1, !dbg !1145

bb:                                               ; preds = %bb1
  %3 = load i8** %r2, align 8, !dbg !1146
  %4 = load i8* %3, align 1, !dbg !1146
  %5 = load i8** %r1, align 8, !dbg !1146
  store i8 %4, i8* %5, align 1, !dbg !1146
  %6 = load i8** %r1, align 8, !dbg !1146
  %7 = getelementptr inbounds i8* %6, i64 1, !dbg !1146
  store i8* %7, i8** %r1, align 8, !dbg !1146
  %8 = load i8** %r2, align 8, !dbg !1146
  %9 = getelementptr inbounds i8* %8, i64 1, !dbg !1146
  store i8* %9, i8** %r2, align 8, !dbg !1146
  %10 = load i64* %n_addr, align 8, !dbg !1147
  %11 = sub i64 %10, 1, !dbg !1147
  store i64 %11, i64* %n_addr, align 8, !dbg !1147
  br label %bb1, !dbg !1147

bb1:                                              ; preds = %bb, %entry
  %12 = load i64* %n_addr, align 8, !dbg !1148
  %13 = icmp ne i64 %12, 0, !dbg !1148
  br i1 %13, label %bb, label %bb2, !dbg !1148

bb2:                                              ; preds = %bb1
  %14 = load i8** %s1_addr, align 8, !dbg !1149
  store i8* %14, i8** %0, align 8, !dbg !1149
  %15 = load i8** %0, align 8, !dbg !1149
  store i8* %15, i8** %retval, align 8, !dbg !1149
  %retval3 = load i8** %retval, !dbg !1149
  ret i8* %retval3, !dbg !1149
}

define hidden void (i32)* @__bsd_signal(i32 %sig, void (i32)* %handler) nounwind {
entry:
  %sig_addr = alloca i32, align 4
  %handler_addr = alloca void (i32)*, align 8
  %retval = alloca void (i32)*
  %iftmp.1 = alloca i32
  %0 = alloca i32
  %1 = alloca void (i32)*
  %act = alloca %struct.sigaction
  %oact = alloca %struct.sigaction
  %__cnt = alloca i32
  %__set = alloca %struct.__sigset_t*
  %"alloca point" = bitcast i32 0 to i32
  store i32 %sig, i32* %sig_addr
  store void (i32)* %handler, void (i32)** %handler_addr
  %2 = load void (i32)** %handler_addr, align 8, !dbg !1150
  %3 = icmp eq void (i32)* %2, inttoptr (i64 -1 to void (i32)*), !dbg !1150
  br i1 %3, label %bb2, label %bb, !dbg !1150

bb:                                               ; preds = %entry
  %4 = load i32* %sig_addr, align 4, !dbg !1150
  %5 = icmp sle i32 %4, 0, !dbg !1150
  %6 = load i32* %sig_addr, align 4, !dbg !1150
  %7 = icmp sgt i32 %6, 64, !dbg !1150
  %or.cond = or i1 %5, %7
  br i1 %or.cond, label %bb2, label %bb3, !dbg !1150

bb2:                                              ; preds = %bb, %entry
  store i32 22, i32* @errno, align 4, !dbg !1152
  store void (i32)* inttoptr (i64 -1 to void (i32)*), void (i32)** %1, align 8, !dbg !1153
  br label %bb14, !dbg !1153

bb3:                                              ; preds = %bb
  %8 = getelementptr inbounds %struct.sigaction* %act, i32 0, i32 0, !dbg !1154
  %9 = getelementptr inbounds %0* %8, i32 0, i32 0, !dbg !1154
  %10 = load void (i32)** %handler_addr, align 8, !dbg !1154
  store void (i32)* %10, void (i32)** %9, align 8, !dbg !1154
  store i32 16, i32* %__cnt, align 4, !dbg !1155
  %11 = getelementptr inbounds %struct.sigaction* %act, i32 0, i32 1, !dbg !1155
  store %struct.__sigset_t* %11, %struct.__sigset_t** %__set, align 8, !dbg !1155
  br label %bb5, !dbg !1155

bb4:                                              ; preds = %bb5
  %12 = load i32* %__cnt, align 4, !dbg !1155
  %13 = load %struct.__sigset_t** %__set, align 8, !dbg !1155
  %14 = getelementptr inbounds %struct.__sigset_t* %13, i32 0, i32 0, !dbg !1155
  %15 = sext i32 %12 to i64, !dbg !1155
  %16 = getelementptr inbounds [16 x i64]* %14, i64 0, i64 %15, !dbg !1155
  store i64 0, i64* %16, align 8, !dbg !1155
  br label %bb5, !dbg !1155

bb5:                                              ; preds = %bb4, %bb3
  %17 = load i32* %__cnt, align 4, !dbg !1155
  %18 = sub nsw i32 %17, 1, !dbg !1155
  store i32 %18, i32* %__cnt, align 4, !dbg !1155
  %19 = load i32* %__cnt, align 4, !dbg !1155
  %20 = icmp sge i32 %19, 0, !dbg !1155
  br i1 %20, label %bb4, label %bb6, !dbg !1155

bb6:                                              ; preds = %bb5
  store i32 0, i32* %0, align 4, !dbg !1155
  %21 = getelementptr inbounds %struct.sigaction* %act, i32 0, i32 1, !dbg !1155
  %22 = load i32* %sig_addr, align 4, !dbg !1155
  %23 = call i32 @__sigaddset(%struct.__sigset_t* %21, i32 %22) nounwind, !dbg !1155
  %24 = icmp slt i32 %23, 0, !dbg !1155
  br i1 %24, label %bb7, label %bb8, !dbg !1155

bb7:                                              ; preds = %bb6
  store void (i32)* inttoptr (i64 -1 to void (i32)*), void (i32)** %1, align 8, !dbg !1157
  br label %bb14, !dbg !1157

bb8:                                              ; preds = %bb6
  %25 = load i32* %sig_addr, align 4, !dbg !1158
  %26 = call i32 @__sigismember(%struct.__sigset_t* @_sigintr, i32 %25) nounwind, !dbg !1158
  %27 = icmp ne i32 %26, 0, !dbg !1158
  br i1 %27, label %bb9, label %bb10, !dbg !1158

bb9:                                              ; preds = %bb8
  store i32 0, i32* %iftmp.1, align 4, !dbg !1158
  br label %bb11, !dbg !1158

bb10:                                             ; preds = %bb8
  store i32 268435456, i32* %iftmp.1, align 4, !dbg !1158
  br label %bb11, !dbg !1158

bb11:                                             ; preds = %bb10, %bb9
  %28 = getelementptr inbounds %struct.sigaction* %act, i32 0, i32 2, !dbg !1158
  %29 = load i32* %iftmp.1, align 4, !dbg !1158
  store i32 %29, i32* %28, align 8, !dbg !1158
  %30 = load i32* %sig_addr, align 4, !dbg !1159
  %31 = call i32 @__libc_sigaction(i32 %30, %struct.sigaction* noalias %act, %struct.sigaction* noalias %oact) nounwind, !dbg !1159
  %32 = icmp slt i32 %31, 0, !dbg !1159
  br i1 %32, label %bb12, label %bb13, !dbg !1159

bb12:                                             ; preds = %bb11
  store void (i32)* inttoptr (i64 -1 to void (i32)*), void (i32)** %1, align 8, !dbg !1160
  br label %bb14, !dbg !1160

bb13:                                             ; preds = %bb11
  %33 = getelementptr inbounds %struct.sigaction* %oact, i32 0, i32 0, !dbg !1161
  %34 = getelementptr inbounds %0* %33, i32 0, i32 0, !dbg !1161
  %35 = load void (i32)** %34, align 8, !dbg !1161
  store void (i32)* %35, void (i32)** %1, align 8, !dbg !1161
  br label %bb14, !dbg !1161

bb14:                                             ; preds = %bb13, %bb12, %bb7, %bb2
  %36 = load void (i32)** %1, align 8, !dbg !1153
  store void (i32)* %36, void (i32)** %retval, align 8, !dbg !1153
  %retval15 = load void (i32)** %retval, !dbg !1153
  ret void (i32)* %retval15, !dbg !1153
}

define i8* @memset(i8* %s, i32 %c, i64 %n) nounwind {
entry:
  %s_addr = alloca i8*, align 8
  %c_addr = alloca i32, align 4
  %n_addr = alloca i64, align 8
  %retval = alloca i8*
  %0 = alloca i8*
  %p = alloca i8*
  %"alloca point" = bitcast i32 0 to i32
  store i8* %s, i8** %s_addr
  store i32 %c, i32* %c_addr
  store i64 %n, i64* %n_addr
  %1 = load i8** %s_addr, align 8, !dbg !1162
  store i8* %1, i8** %p, align 8, !dbg !1162
  br label %bb1, !dbg !1162

bb:                                               ; preds = %bb1
  %2 = load i32* %c_addr, align 4, !dbg !1164
  %3 = trunc i32 %2 to i8, !dbg !1164
  %4 = load i8** %p, align 8, !dbg !1164
  store i8 %3, i8* %4, align 1, !dbg !1164
  %5 = load i8** %p, align 8, !dbg !1164
  %6 = getelementptr inbounds i8* %5, i64 1, !dbg !1164
  store i8* %6, i8** %p, align 8, !dbg !1164
  %7 = load i64* %n_addr, align 8, !dbg !1165
  %8 = sub i64 %7, 1, !dbg !1165
  store i64 %8, i64* %n_addr, align 8, !dbg !1165
  br label %bb1, !dbg !1165

bb1:                                              ; preds = %bb, %entry
  %9 = load i64* %n_addr, align 8, !dbg !1166
  %10 = icmp ne i64 %9, 0, !dbg !1166
  br i1 %10, label %bb, label %bb2, !dbg !1166

bb2:                                              ; preds = %bb1
  %11 = load i8** %s_addr, align 8, !dbg !1167
  store i8* %11, i8** %0, align 8, !dbg !1167
  %12 = load i8** %0, align 8, !dbg !1167
  store i8* %12, i8** %retval, align 8, !dbg !1167
  %retval3 = load i8** %retval, !dbg !1167
  ret i8* %retval3, !dbg !1167
}

define i32 @__sigismember(%struct.__sigset_t* %__set, i32 %__sig) nounwind {
entry:
  %__set_addr = alloca %struct.__sigset_t*, align 8
  %__sig_addr = alloca i32, align 4
  %retval = alloca i32
  %0 = alloca i32
  %__mask = alloca i64
  %__word = alloca i64
  %"alloca point" = bitcast i32 0 to i32
  store %struct.__sigset_t* %__set, %struct.__sigset_t** %__set_addr
  store i32 %__sig, i32* %__sig_addr
  %1 = load i32* %__sig_addr, align 4, !dbg !1168
  %2 = sub nsw i32 %1, 1, !dbg !1168
  %3 = and i32 %2, 63, !dbg !1168
  %.cast = zext i32 %3 to i64, !dbg !1168
  %int_cast_to_i641 = bitcast i64 %.cast to i64
  call void @klee_overshift_check(i64 64, i64 %int_cast_to_i641), !dbg !1168
  %4 = shl i64 1, %.cast, !dbg !1168
  store i64 %4, i64* %__mask, align 8, !dbg !1168
  %5 = load i32* %__sig_addr, align 4, !dbg !1168
  %6 = sub nsw i32 %5, 1, !dbg !1168
  %7 = sext i32 %6 to i64, !dbg !1168
  %int_cast_to_i64 = bitcast i64 64 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !1168
  %8 = udiv i64 %7, 64, !dbg !1168
  store i64 %8, i64* %__word, align 8, !dbg !1168
  %9 = load i64* %__word, align 8, !dbg !1168
  %10 = load %struct.__sigset_t** %__set_addr, align 8, !dbg !1168
  %11 = getelementptr inbounds %struct.__sigset_t* %10, i32 0, i32 0, !dbg !1168
  %12 = getelementptr inbounds [16 x i64]* %11, i64 0, i64 %9, !dbg !1168
  %13 = load i64* %12, align 8, !dbg !1168
  %14 = load i64* %__mask, align 8, !dbg !1168
  %15 = and i64 %13, %14, !dbg !1168
  %16 = icmp ne i64 %15, 0, !dbg !1168
  %17 = zext i1 %16 to i32, !dbg !1168
  store i32 %17, i32* %0, align 4, !dbg !1168
  %18 = load i32* %0, align 4, !dbg !1168
  store i32 %18, i32* %retval, align 4, !dbg !1168
  %retval1 = load i32* %retval, !dbg !1168
  ret i32 %retval1, !dbg !1169
}

define i32 @__sigaddset(%struct.__sigset_t* %__set, i32 %__sig) nounwind {
entry:
  %__set_addr = alloca %struct.__sigset_t*, align 8
  %__sig_addr = alloca i32, align 4
  %retval = alloca i32
  %0 = alloca i32
  %__mask = alloca i64
  %__word = alloca i64
  %"alloca point" = bitcast i32 0 to i32
  store %struct.__sigset_t* %__set, %struct.__sigset_t** %__set_addr
  store i32 %__sig, i32* %__sig_addr
  %1 = load i32* %__sig_addr, align 4, !dbg !1171
  %2 = sub nsw i32 %1, 1, !dbg !1171
  %3 = and i32 %2, 63, !dbg !1171
  %.cast = zext i32 %3 to i64, !dbg !1171
  %int_cast_to_i641 = bitcast i64 %.cast to i64
  call void @klee_overshift_check(i64 64, i64 %int_cast_to_i641), !dbg !1171
  %4 = shl i64 1, %.cast, !dbg !1171
  store i64 %4, i64* %__mask, align 8, !dbg !1171
  %5 = load i32* %__sig_addr, align 4, !dbg !1171
  %6 = sub nsw i32 %5, 1, !dbg !1171
  %7 = sext i32 %6 to i64, !dbg !1171
  %int_cast_to_i64 = bitcast i64 64 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !1171
  %8 = udiv i64 %7, 64, !dbg !1171
  store i64 %8, i64* %__word, align 8, !dbg !1171
  %9 = load i64* %__word, align 8, !dbg !1171
  %10 = load i64* %__word, align 8, !dbg !1171
  %11 = load %struct.__sigset_t** %__set_addr, align 8, !dbg !1171
  %12 = getelementptr inbounds %struct.__sigset_t* %11, i32 0, i32 0, !dbg !1171
  %13 = getelementptr inbounds [16 x i64]* %12, i64 0, i64 %10, !dbg !1171
  %14 = load i64* %13, align 8, !dbg !1171
  %15 = load i64* %__mask, align 8, !dbg !1171
  %16 = or i64 %14, %15, !dbg !1171
  %17 = load %struct.__sigset_t** %__set_addr, align 8, !dbg !1171
  %18 = getelementptr inbounds %struct.__sigset_t* %17, i32 0, i32 0, !dbg !1171
  %19 = getelementptr inbounds [16 x i64]* %18, i64 0, i64 %9, !dbg !1171
  store i64 %16, i64* %19, align 8, !dbg !1171
  store i32 0, i32* %0, align 4, !dbg !1171
  %20 = load i32* %0, align 4, !dbg !1171
  store i32 %20, i32* %retval, align 4, !dbg !1171
  %retval1 = load i32* %retval, !dbg !1171
  ret i32 %retval1, !dbg !1172
}

define i32 @__sigdelset(%struct.__sigset_t* %__set, i32 %__sig) nounwind {
entry:
  %__set_addr = alloca %struct.__sigset_t*, align 8
  %__sig_addr = alloca i32, align 4
  %retval = alloca i32
  %0 = alloca i32
  %__mask = alloca i64
  %__word = alloca i64
  %"alloca point" = bitcast i32 0 to i32
  store %struct.__sigset_t* %__set, %struct.__sigset_t** %__set_addr
  store i32 %__sig, i32* %__sig_addr
  %1 = load i32* %__sig_addr, align 4, !dbg !1174
  %2 = sub nsw i32 %1, 1, !dbg !1174
  %3 = and i32 %2, 63, !dbg !1174
  %.cast = zext i32 %3 to i64, !dbg !1174
  %int_cast_to_i641 = bitcast i64 %.cast to i64
  call void @klee_overshift_check(i64 64, i64 %int_cast_to_i641), !dbg !1174
  %4 = shl i64 1, %.cast, !dbg !1174
  store i64 %4, i64* %__mask, align 8, !dbg !1174
  %5 = load i32* %__sig_addr, align 4, !dbg !1174
  %6 = sub nsw i32 %5, 1, !dbg !1174
  %7 = sext i32 %6 to i64, !dbg !1174
  %int_cast_to_i64 = bitcast i64 64 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !1174
  %8 = udiv i64 %7, 64, !dbg !1174
  store i64 %8, i64* %__word, align 8, !dbg !1174
  %9 = load i64* %__word, align 8, !dbg !1174
  %10 = load i64* %__word, align 8, !dbg !1174
  %11 = load %struct.__sigset_t** %__set_addr, align 8, !dbg !1174
  %12 = getelementptr inbounds %struct.__sigset_t* %11, i32 0, i32 0, !dbg !1174
  %13 = getelementptr inbounds [16 x i64]* %12, i64 0, i64 %10, !dbg !1174
  %14 = load i64* %13, align 8, !dbg !1174
  %15 = load i64* %__mask, align 8, !dbg !1174
  %not = xor i64 %15, -1, !dbg !1174
  %16 = and i64 %14, %not, !dbg !1174
  %17 = load %struct.__sigset_t** %__set_addr, align 8, !dbg !1174
  %18 = getelementptr inbounds %struct.__sigset_t* %17, i32 0, i32 0, !dbg !1174
  %19 = getelementptr inbounds [16 x i64]* %18, i64 0, i64 %9, !dbg !1174
  store i64 %16, i64* %19, align 8, !dbg !1174
  store i32 0, i32* %0, align 4, !dbg !1174
  %20 = load i32* %0, align 4, !dbg !1174
  store i32 %20, i32* %retval, align 4, !dbg !1174
  %retval2 = load i32* %retval, !dbg !1174
  ret i32 %retval2, !dbg !1175
}

define hidden i64 @__stdio_WRITE(%struct.FILE* %stream, i8* %buf, i64 %bufsize) nounwind {
entry:
  %stream_addr = alloca %struct.FILE*, align 8
  %buf_addr = alloca i8*, align 8
  %bufsize_addr = alloca i64, align 8
  %retval = alloca i64
  %iftmp.0 = alloca i64
  %0 = alloca i64
  %todo = alloca i64
  %rv = alloca i64
  %stodo = alloca i64
  %s = alloca i8*
  %"alloca point" = bitcast i32 0 to i32
  store %struct.FILE* %stream, %struct.FILE** %stream_addr
  store i8* %buf, i8** %buf_addr
  store i64 %bufsize, i64* %bufsize_addr
  %1 = load i64* %bufsize_addr, align 8, !dbg !1177
  store i64 %1, i64* %todo, align 8, !dbg !1177
  br label %bb, !dbg !1177

bb:                                               ; preds = %bb6, %entry
  %2 = load i64* %todo, align 8, !dbg !1179
  %3 = icmp eq i64 %2, 0, !dbg !1179
  br i1 %3, label %bb1, label %bb2, !dbg !1179

bb1:                                              ; preds = %bb
  %4 = load i64* %bufsize_addr, align 8, !dbg !1180
  store i64 %4, i64* %0, align 8, !dbg !1180
  br label %bb16, !dbg !1180

bb2:                                              ; preds = %bb
  %5 = load i64* %todo, align 8, !dbg !1181
  %6 = icmp sge i64 %5, 0, !dbg !1181
  br i1 %6, label %bb3, label %bb4, !dbg !1181

bb3:                                              ; preds = %bb2
  %7 = load i64* %todo, align 8, !dbg !1181
  store i64 %7, i64* %iftmp.0, align 8, !dbg !1181
  br label %bb5, !dbg !1181

bb4:                                              ; preds = %bb2
  store i64 9223372036854775807, i64* %iftmp.0, align 8, !dbg !1181
  br label %bb5, !dbg !1181

bb5:                                              ; preds = %bb4, %bb3
  %8 = load i64* %iftmp.0, align 8, !dbg !1181
  store i64 %8, i64* %stodo, align 8, !dbg !1181
  %9 = load i64* %stodo, align 8, !dbg !1182
  %10 = load %struct.FILE** %stream_addr, align 8, !dbg !1182
  %11 = getelementptr inbounds %struct.FILE* %10, i32 0, i32 2, !dbg !1182
  %12 = load i32* %11, align 4, !dbg !1182
  %13 = load i8** %buf_addr, align 8, !dbg !1182
  %14 = call i64 @write(i32 %12, i8* %13, i64 %9) nounwind, !dbg !1182
  store i64 %14, i64* %rv, align 8, !dbg !1182
  %15 = load i64* %rv, align 8, !dbg !1182
  %16 = icmp sge i64 %15, 0, !dbg !1182
  br i1 %16, label %bb6, label %bb7, !dbg !1182

bb6:                                              ; preds = %bb5
  %17 = load i64* %rv, align 8, !dbg !1183
  %18 = load i64* %todo, align 8, !dbg !1183
  %19 = sub i64 %18, %17, !dbg !1183
  store i64 %19, i64* %todo, align 8, !dbg !1183
  %20 = load i8** %buf_addr, align 8, !dbg !1184
  %21 = load i64* %rv, align 8, !dbg !1184
  %22 = getelementptr inbounds i8* %20, i64 %21, !dbg !1184
  store i8* %22, i8** %buf_addr, align 8, !dbg !1184
  br label %bb, !dbg !1184

bb7:                                              ; preds = %bb5
  %23 = load %struct.FILE** %stream_addr, align 8, !dbg !1185
  %24 = getelementptr inbounds %struct.FILE* %23, i32 0, i32 0, !dbg !1185
  %25 = load i16* %24, align 8, !dbg !1185
  %26 = or i16 %25, 8, !dbg !1185
  %27 = load %struct.FILE** %stream_addr, align 8, !dbg !1185
  %28 = getelementptr inbounds %struct.FILE* %27, i32 0, i32 0, !dbg !1185
  store i16 %26, i16* %28, align 8, !dbg !1185
  %29 = load %struct.FILE** %stream_addr, align 8, !dbg !1186
  %30 = getelementptr inbounds %struct.FILE* %29, i32 0, i32 4, !dbg !1186
  %31 = load i8** %30, align 8, !dbg !1186
  %32 = ptrtoint i8* %31 to i64, !dbg !1186
  %33 = load %struct.FILE** %stream_addr, align 8, !dbg !1186
  %34 = getelementptr inbounds %struct.FILE* %33, i32 0, i32 3, !dbg !1186
  %35 = load i8** %34, align 8, !dbg !1186
  %36 = ptrtoint i8* %35 to i64, !dbg !1186
  %37 = sub nsw i64 %32, %36, !dbg !1186
  store i64 %37, i64* %stodo, align 8, !dbg !1186
  %38 = load i64* %stodo, align 8, !dbg !1186
  %39 = icmp ne i64 %38, 0, !dbg !1186
  br i1 %39, label %bb8, label %bb15, !dbg !1186

bb8:                                              ; preds = %bb7
  %40 = load i64* %stodo, align 8, !dbg !1187
  %41 = load i64* %todo, align 8, !dbg !1187
  %42 = icmp ugt i64 %40, %41, !dbg !1187
  br i1 %42, label %bb9, label %bb10, !dbg !1187

bb9:                                              ; preds = %bb8
  %43 = load i64* %todo, align 8, !dbg !1189
  store i64 %43, i64* %stodo, align 8, !dbg !1189
  br label %bb10, !dbg !1189

bb10:                                             ; preds = %bb9, %bb8
  %44 = load %struct.FILE** %stream_addr, align 8, !dbg !1190
  %45 = getelementptr inbounds %struct.FILE* %44, i32 0, i32 3, !dbg !1190
  %46 = load i8** %45, align 8, !dbg !1190
  store i8* %46, i8** %s, align 8, !dbg !1190
  br label %bb11, !dbg !1190

bb11:                                             ; preds = %bb13, %bb10
  %47 = load i8** %buf_addr, align 8, !dbg !1191
  %48 = load i8* %47, align 1, !dbg !1191
  %49 = load i8** %s, align 8, !dbg !1191
  store i8 %48, i8* %49, align 1, !dbg !1191
  %50 = load i8** %s, align 8, !dbg !1191
  %51 = load i8* %50, align 1, !dbg !1191
  %52 = icmp eq i8 %51, 10, !dbg !1191
  br i1 %52, label %bb12, label %bb13, !dbg !1191

bb12:                                             ; preds = %bb11
  %53 = load %struct.FILE** %stream_addr, align 8, !dbg !1191
  %54 = getelementptr inbounds %struct.FILE* %53, i32 0, i32 0, !dbg !1191
  %55 = load i16* %54, align 8, !dbg !1191
  %56 = zext i16 %55 to i32, !dbg !1191
  %57 = and i32 %56, 256, !dbg !1191
  %58 = icmp ne i32 %57, 0, !dbg !1191
  br i1 %58, label %bb14, label %bb13, !dbg !1191

bb13:                                             ; preds = %bb12, %bb11
  %59 = load i8** %s, align 8, !dbg !1192
  %60 = getelementptr inbounds i8* %59, i64 1, !dbg !1192
  store i8* %60, i8** %s, align 8, !dbg !1192
  %61 = load i8** %buf_addr, align 8, !dbg !1193
  %62 = getelementptr inbounds i8* %61, i64 1, !dbg !1193
  store i8* %62, i8** %buf_addr, align 8, !dbg !1193
  %63 = load i64* %stodo, align 8, !dbg !1194
  %64 = sub nsw i64 %63, 1, !dbg !1194
  store i64 %64, i64* %stodo, align 8, !dbg !1194
  %65 = load i64* %stodo, align 8, !dbg !1194
  %66 = icmp ne i64 %65, 0, !dbg !1194
  br i1 %66, label %bb11, label %bb14, !dbg !1194

bb14:                                             ; preds = %bb13, %bb12
  %67 = load %struct.FILE** %stream_addr, align 8, !dbg !1195
  %68 = getelementptr inbounds %struct.FILE* %67, i32 0, i32 5, !dbg !1195
  %69 = load i8** %s, align 8, !dbg !1195
  store i8* %69, i8** %68, align 8, !dbg !1195
  %70 = load i8** %s, align 8, !dbg !1196
  %71 = ptrtoint i8* %70 to i64, !dbg !1196
  %72 = load %struct.FILE** %stream_addr, align 8, !dbg !1196
  %73 = getelementptr inbounds %struct.FILE* %72, i32 0, i32 3, !dbg !1196
  %74 = load i8** %73, align 8, !dbg !1196
  %75 = ptrtoint i8* %74 to i64, !dbg !1196
  %76 = sub nsw i64 %71, %75, !dbg !1196
  %77 = load i64* %todo, align 8, !dbg !1196
  %78 = sub i64 %77, %76, !dbg !1196
  store i64 %78, i64* %todo, align 8, !dbg !1196
  br label %bb15, !dbg !1196

bb15:                                             ; preds = %bb14, %bb7
  %79 = load i64* %bufsize_addr, align 8, !dbg !1197
  %80 = load i64* %todo, align 8, !dbg !1197
  %81 = sub i64 %79, %80, !dbg !1197
  store i64 %81, i64* %0, align 8, !dbg !1197
  br label %bb16, !dbg !1197

bb16:                                             ; preds = %bb15, %bb1
  %82 = load i64* %0, align 8, !dbg !1180
  store i64 %82, i64* %retval, align 8, !dbg !1180
  %retval17 = load i64* %retval, !dbg !1180
  ret i64 %retval17, !dbg !1180
}

declare i64 @write(i32, i8*, i64)

define hidden i32 @__stdio_trans2w_o(%struct.FILE* noalias %stream, i32 %oflag) nounwind {
entry:
  %stream_addr = alloca %struct.FILE*, align 8
  %oflag_addr = alloca i32, align 4
  %retval = alloca i32
  %iftmp.0 = alloca i32
  %0 = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  store %struct.FILE* %stream, %struct.FILE** %stream_addr
  store i32 %oflag, i32* %oflag_addr
  %1 = load %struct.FILE** %stream_addr, align 8, !dbg !1198
  %2 = getelementptr inbounds %struct.FILE* %1, i32 0, i32 0, !dbg !1198
  %3 = load i16* %2, align 8, !dbg !1198
  %4 = zext i16 %3 to i32, !dbg !1198
  %5 = load i32* %oflag_addr, align 4, !dbg !1198
  %6 = and i32 %4, %5, !dbg !1198
  %7 = icmp eq i32 %6, 0, !dbg !1198
  br i1 %7, label %bb, label %bb2, !dbg !1198

bb:                                               ; preds = %entry
  %8 = load %struct.FILE** %stream_addr, align 8, !dbg !1200
  %9 = getelementptr inbounds %struct.FILE* %8, i32 0, i32 0, !dbg !1200
  %10 = load i16* %9, align 8, !dbg !1200
  %11 = zext i16 %10 to i32, !dbg !1200
  %12 = and i32 %11, 2176, !dbg !1200
  %13 = icmp ne i32 %12, 0, !dbg !1200
  br i1 %13, label %DO_EBADF, label %bb1, !dbg !1200

bb1:                                              ; preds = %bb
  %14 = load %struct.FILE** %stream_addr, align 8, !dbg !1201
  %15 = getelementptr inbounds %struct.FILE* %14, i32 0, i32 0, !dbg !1201
  %16 = load i16* %15, align 8, !dbg !1201
  %17 = load i32* %oflag_addr, align 4, !dbg !1201
  %18 = trunc i32 %17 to i16, !dbg !1201
  %19 = or i16 %16, %18, !dbg !1201
  %20 = load %struct.FILE** %stream_addr, align 8, !dbg !1201
  %21 = getelementptr inbounds %struct.FILE* %20, i32 0, i32 0, !dbg !1201
  store i16 %19, i16* %21, align 8, !dbg !1201
  br label %bb2, !dbg !1201

bb2:                                              ; preds = %bb1, %entry
  %22 = load %struct.FILE** %stream_addr, align 8, !dbg !1202
  %23 = getelementptr inbounds %struct.FILE* %22, i32 0, i32 0, !dbg !1202
  %24 = load i16* %23, align 8, !dbg !1202
  %25 = zext i16 %24 to i32, !dbg !1202
  %26 = and i32 %25, 32, !dbg !1202
  %27 = icmp ne i32 %26, 0, !dbg !1202
  br i1 %27, label %DO_EBADF, label %bb3, !dbg !1202

DO_EBADF:                                         ; preds = %bb2, %bb
  store i32 9, i32* @errno, align 4, !dbg !1203
  br label %ERROR, !dbg !1204

ERROR:                                            ; preds = %bb10, %DO_EBADF
  %28 = load %struct.FILE** %stream_addr, align 8, !dbg !1205
  %29 = getelementptr inbounds %struct.FILE* %28, i32 0, i32 0, !dbg !1205
  %30 = load i16* %29, align 8, !dbg !1205
  %31 = or i16 %30, 8, !dbg !1205
  %32 = load %struct.FILE** %stream_addr, align 8, !dbg !1205
  %33 = getelementptr inbounds %struct.FILE* %32, i32 0, i32 0, !dbg !1205
  store i16 %31, i16* %33, align 8, !dbg !1205
  store i32 -1, i32* %0, align 4, !dbg !1206
  br label %bb15, !dbg !1206

bb3:                                              ; preds = %bb2
  %34 = load %struct.FILE** %stream_addr, align 8, !dbg !1207
  %35 = getelementptr inbounds %struct.FILE* %34, i32 0, i32 0, !dbg !1207
  %36 = load i16* %35, align 8, !dbg !1207
  %37 = zext i16 %36 to i32, !dbg !1207
  %38 = and i32 %37, 3, !dbg !1207
  %39 = icmp ne i32 %38, 0, !dbg !1207
  br i1 %39, label %bb4, label %bb12, !dbg !1207

bb4:                                              ; preds = %bb3
  %40 = load %struct.FILE** %stream_addr, align 8, !dbg !1208
  %41 = getelementptr inbounds %struct.FILE* %40, i32 0, i32 0, !dbg !1208
  %42 = load i16* %41, align 8, !dbg !1208
  %43 = zext i16 %42 to i32, !dbg !1208
  %44 = and i32 %43, 4, !dbg !1208
  %45 = icmp eq i32 %44, 0, !dbg !1208
  br i1 %45, label %bb5, label %bb11, !dbg !1208

bb5:                                              ; preds = %bb4
  %46 = load %struct.FILE** %stream_addr, align 8, !dbg !1209
  %47 = getelementptr inbounds %struct.FILE* %46, i32 0, i32 6, !dbg !1209
  %48 = load i8** %47, align 8, !dbg !1209
  %49 = load %struct.FILE** %stream_addr, align 8, !dbg !1209
  %50 = getelementptr inbounds %struct.FILE* %49, i32 0, i32 5, !dbg !1209
  %51 = load i8** %50, align 8, !dbg !1209
  %52 = icmp ne i8* %48, %51, !dbg !1209
  br i1 %52, label %bb7, label %bb6, !dbg !1209

bb6:                                              ; preds = %bb5
  %53 = load %struct.FILE** %stream_addr, align 8, !dbg !1209
  %54 = getelementptr inbounds %struct.FILE* %53, i32 0, i32 0, !dbg !1209
  %55 = load i16* %54, align 8, !dbg !1209
  %56 = zext i16 %55 to i32, !dbg !1209
  %57 = and i32 %56, 2, !dbg !1209
  %58 = icmp ne i32 %57, 0, !dbg !1209
  br i1 %58, label %bb7, label %bb11, !dbg !1209

bb7:                                              ; preds = %bb6, %bb5
  %59 = load %struct.FILE** %stream_addr, align 8, !dbg !1209
  %60 = getelementptr inbounds %struct.FILE* %59, i32 0, i32 0, !dbg !1209
  %61 = load i16* %60, align 8, !dbg !1209
  %62 = zext i16 %61 to i32, !dbg !1209
  %63 = and i32 %62, 1024, !dbg !1209
  %64 = icmp ne i32 %63, 0, !dbg !1209
  br i1 %64, label %bb8, label %bb9, !dbg !1209

bb8:                                              ; preds = %bb7
  store i32 2, i32* %iftmp.0, align 4, !dbg !1209
  br label %bb10, !dbg !1209

bb9:                                              ; preds = %bb7
  store i32 1, i32* %iftmp.0, align 4, !dbg !1209
  br label %bb10, !dbg !1209

bb10:                                             ; preds = %bb9, %bb8
  %65 = load %struct.FILE** %stream_addr, align 8, !dbg !1209
  %66 = load i32* %iftmp.0, align 4, !dbg !1209
  %67 = call i32 @fseek(%struct.FILE* %65, i64 0, i32 %66) nounwind, !dbg !1209
  %68 = icmp ne i32 %67, 0, !dbg !1209
  br i1 %68, label %ERROR, label %bb11, !dbg !1209

bb11:                                             ; preds = %bb10, %bb6, %bb4
  %69 = load %struct.FILE** %stream_addr, align 8, !dbg !1210
  %70 = getelementptr inbounds %struct.FILE* %69, i32 0, i32 0, !dbg !1210
  %71 = load i16* %70, align 8, !dbg !1210
  %72 = and i16 %71, -4, !dbg !1210
  %73 = load %struct.FILE** %stream_addr, align 8, !dbg !1210
  %74 = getelementptr inbounds %struct.FILE* %73, i32 0, i32 0, !dbg !1210
  store i16 %72, i16* %74, align 8, !dbg !1210
  %75 = load %struct.FILE** %stream_addr, align 8, !dbg !1211
  %76 = getelementptr inbounds %struct.FILE* %75, i32 0, i32 3, !dbg !1211
  %77 = load i8** %76, align 8, !dbg !1211
  %78 = load %struct.FILE** %stream_addr, align 8, !dbg !1211
  %79 = getelementptr inbounds %struct.FILE* %78, i32 0, i32 7, !dbg !1211
  store i8* %77, i8** %79, align 8, !dbg !1211
  %80 = load %struct.FILE** %stream_addr, align 8, !dbg !1212
  %81 = getelementptr inbounds %struct.FILE* %80, i32 0, i32 3, !dbg !1212
  %82 = load i8** %81, align 8, !dbg !1212
  %83 = load %struct.FILE** %stream_addr, align 8, !dbg !1212
  %84 = getelementptr inbounds %struct.FILE* %83, i32 0, i32 5, !dbg !1212
  store i8* %82, i8** %84, align 8, !dbg !1212
  %85 = load %struct.FILE** %stream_addr, align 8, !dbg !1212
  %86 = getelementptr inbounds %struct.FILE* %85, i32 0, i32 5, !dbg !1212
  %87 = load i8** %86, align 8, !dbg !1212
  %88 = load %struct.FILE** %stream_addr, align 8, !dbg !1212
  %89 = getelementptr inbounds %struct.FILE* %88, i32 0, i32 6, !dbg !1212
  store i8* %87, i8** %89, align 8, !dbg !1212
  br label %bb12, !dbg !1212

bb12:                                             ; preds = %bb11, %bb3
  %90 = load %struct.FILE** %stream_addr, align 8, !dbg !1213
  %91 = getelementptr inbounds %struct.FILE* %90, i32 0, i32 0, !dbg !1213
  %92 = load i16* %91, align 8, !dbg !1213
  %93 = or i16 %92, 64, !dbg !1213
  %94 = load %struct.FILE** %stream_addr, align 8, !dbg !1213
  %95 = getelementptr inbounds %struct.FILE* %94, i32 0, i32 0, !dbg !1213
  store i16 %93, i16* %95, align 8, !dbg !1213
  %96 = load %struct.FILE** %stream_addr, align 8, !dbg !1214
  %97 = getelementptr inbounds %struct.FILE* %96, i32 0, i32 0, !dbg !1214
  %98 = load i16* %97, align 8, !dbg !1214
  %99 = zext i16 %98 to i32, !dbg !1214
  %100 = and i32 %99, 2816, !dbg !1214
  %101 = icmp eq i32 %100, 0, !dbg !1214
  br i1 %101, label %bb13, label %bb14, !dbg !1214

bb13:                                             ; preds = %bb12
  %102 = load %struct.FILE** %stream_addr, align 8, !dbg !1215
  %103 = getelementptr inbounds %struct.FILE* %102, i32 0, i32 4, !dbg !1215
  %104 = load i8** %103, align 8, !dbg !1215
  %105 = load %struct.FILE** %stream_addr, align 8, !dbg !1215
  %106 = getelementptr inbounds %struct.FILE* %105, i32 0, i32 8, !dbg !1215
  store i8* %104, i8** %106, align 8, !dbg !1215
  br label %bb14, !dbg !1215

bb14:                                             ; preds = %bb13, %bb12
  store i32 0, i32* %0, align 4, !dbg !1216
  br label %bb15, !dbg !1216

bb15:                                             ; preds = %bb14, %ERROR
  %107 = load i32* %0, align 4, !dbg !1206
  store i32 %107, i32* %retval, align 4, !dbg !1206
  %retval16 = load i32* %retval, !dbg !1206
  ret i32 %retval16, !dbg !1206
}

define hidden i64 @__stdio_wcommit(%struct.FILE* noalias %stream) nounwind {
entry:
  %stream_addr = alloca %struct.FILE*, align 8
  %retval = alloca i64
  %0 = alloca i64
  %bufsize = alloca i64
  %"alloca point" = bitcast i32 0 to i32
  store %struct.FILE* %stream, %struct.FILE** %stream_addr
  %1 = load %struct.FILE** %stream_addr, align 8, !dbg !1217
  %2 = getelementptr inbounds %struct.FILE* %1, i32 0, i32 5, !dbg !1217
  %3 = load i8** %2, align 8, !dbg !1217
  %4 = ptrtoint i8* %3 to i64, !dbg !1217
  %5 = load %struct.FILE** %stream_addr, align 8, !dbg !1217
  %6 = getelementptr inbounds %struct.FILE* %5, i32 0, i32 3, !dbg !1217
  %7 = load i8** %6, align 8, !dbg !1217
  %8 = ptrtoint i8* %7 to i64, !dbg !1217
  %9 = sub nsw i64 %4, %8, !dbg !1217
  store i64 %9, i64* %bufsize, align 8, !dbg !1217
  %10 = load i64* %bufsize, align 8, !dbg !1217
  %11 = icmp ne i64 %10, 0, !dbg !1217
  br i1 %11, label %bb, label %bb1, !dbg !1217

bb:                                               ; preds = %entry
  %12 = load %struct.FILE** %stream_addr, align 8, !dbg !1219
  %13 = getelementptr inbounds %struct.FILE* %12, i32 0, i32 3, !dbg !1219
  %14 = load i8** %13, align 8, !dbg !1219
  %15 = load %struct.FILE** %stream_addr, align 8, !dbg !1219
  %16 = getelementptr inbounds %struct.FILE* %15, i32 0, i32 5, !dbg !1219
  store i8* %14, i8** %16, align 8, !dbg !1219
  %17 = load %struct.FILE** %stream_addr, align 8, !dbg !1220
  %18 = getelementptr inbounds %struct.FILE* %17, i32 0, i32 3, !dbg !1220
  %19 = load i8** %18, align 8, !dbg !1220
  %20 = load %struct.FILE** %stream_addr, align 8, !dbg !1220
  %21 = load i64* %bufsize, align 8, !dbg !1220
  %22 = call i64 @__stdio_WRITE(%struct.FILE* %20, i8* %19, i64 %21) nounwind, !dbg !1220
  br label %bb1, !dbg !1220

bb1:                                              ; preds = %bb, %entry
  %23 = load %struct.FILE** %stream_addr, align 8, !dbg !1221
  %24 = getelementptr inbounds %struct.FILE* %23, i32 0, i32 5, !dbg !1221
  %25 = load i8** %24, align 8, !dbg !1221
  %26 = ptrtoint i8* %25 to i64, !dbg !1221
  %27 = load %struct.FILE** %stream_addr, align 8, !dbg !1221
  %28 = getelementptr inbounds %struct.FILE* %27, i32 0, i32 3, !dbg !1221
  %29 = load i8** %28, align 8, !dbg !1221
  %30 = ptrtoint i8* %29 to i64, !dbg !1221
  %31 = sub nsw i64 %26, %30, !dbg !1221
  store i64 %31, i64* %0, align 8, !dbg !1221
  %32 = load i64* %0, align 8, !dbg !1221
  store i64 %32, i64* %retval, align 8, !dbg !1221
  %retval2 = load i64* %retval, !dbg !1221
  ret i64 %retval2, !dbg !1221
}

define i64 @fwrite_unlocked(i8* noalias %ptr, i64 %size, i64 %nmemb, %struct.FILE* noalias %stream) nounwind {
entry:
  %ptr_addr = alloca i8*, align 8
  %size_addr = alloca i64, align 8
  %nmemb_addr = alloca i64, align 8
  %stream_addr = alloca %struct.FILE*, align 8
  %retval = alloca i64
  %0 = alloca i64
  %"alloca point" = bitcast i32 0 to i32
  store i8* %ptr, i8** %ptr_addr
  store i64 %size, i64* %size_addr
  store i64 %nmemb, i64* %nmemb_addr
  store %struct.FILE* %stream, %struct.FILE** %stream_addr
  %1 = load %struct.FILE** %stream_addr, align 8, !dbg !1222
  %2 = getelementptr inbounds %struct.FILE* %1, i32 0, i32 0, !dbg !1222
  %3 = load i16* %2, align 8, !dbg !1222
  %4 = zext i16 %3 to i32, !dbg !1222
  %5 = and i32 %4, 192, !dbg !1222
  %6 = icmp eq i32 %5, 192, !dbg !1222
  br i1 %6, label %bb1, label %bb, !dbg !1222

bb:                                               ; preds = %entry
  %7 = load %struct.FILE** %stream_addr, align 8, !dbg !1222
  %8 = call i32 @__stdio_trans2w_o(%struct.FILE* noalias %7, i32 128) nounwind, !dbg !1222
  %9 = icmp eq i32 %8, 0, !dbg !1222
  br i1 %9, label %bb1, label %bb6, !dbg !1222

bb1:                                              ; preds = %bb, %entry
  %10 = load i64* %size_addr, align 8, !dbg !1222
  %11 = icmp ne i64 %10, 0, !dbg !1222
  br i1 %11, label %bb2, label %bb6, !dbg !1222

bb2:                                              ; preds = %bb1
  %12 = load i64* %nmemb_addr, align 8, !dbg !1222
  %13 = icmp ne i64 %12, 0, !dbg !1222
  br i1 %13, label %bb3, label %bb6, !dbg !1222

bb3:                                              ; preds = %bb2
  %14 = load i64* %size_addr, align 8, !dbg !1224
  %int_cast_to_i64 = bitcast i64 %14 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !1224
  %15 = udiv i64 -1, %14, !dbg !1224
  %16 = load i64* %nmemb_addr, align 8, !dbg !1224
  %17 = icmp uge i64 %15, %16, !dbg !1224
  br i1 %17, label %bb4, label %bb5, !dbg !1224

bb4:                                              ; preds = %bb3
  %18 = load i64* %size_addr, align 8, !dbg !1225
  %19 = load i64* %nmemb_addr, align 8, !dbg !1225
  %20 = mul i64 %18, %19, !dbg !1225
  %21 = load i8** %ptr_addr, align 8, !dbg !1225
  %22 = load %struct.FILE** %stream_addr, align 8, !dbg !1225
  %23 = call i64 @__stdio_fwrite(i8* noalias %21, i64 %20, %struct.FILE* noalias %22) nounwind, !dbg !1225
  %24 = load i64* %size_addr, align 8, !dbg !1225
  %int_cast_to_i641 = bitcast i64 %24 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i641), !dbg !1225
  %25 = udiv i64 %23, %24, !dbg !1225
  store i64 %25, i64* %0, align 8, !dbg !1225
  br label %bb7, !dbg !1225

bb5:                                              ; preds = %bb3
  %26 = load %struct.FILE** %stream_addr, align 8, !dbg !1226
  %27 = getelementptr inbounds %struct.FILE* %26, i32 0, i32 0, !dbg !1226
  %28 = load i16* %27, align 8, !dbg !1226
  %29 = or i16 %28, 8, !dbg !1226
  %30 = load %struct.FILE** %stream_addr, align 8, !dbg !1226
  %31 = getelementptr inbounds %struct.FILE* %30, i32 0, i32 0, !dbg !1226
  store i16 %29, i16* %31, align 8, !dbg !1226
  store i32 22, i32* @errno, align 4, !dbg !1227
  br label %bb6, !dbg !1227

bb6:                                              ; preds = %bb5, %bb2, %bb1, %bb
  store i64 0, i64* %0, align 8, !dbg !1228
  br label %bb7, !dbg !1228

bb7:                                              ; preds = %bb6, %bb4
  %32 = load i64* %0, align 8, !dbg !1225
  store i64 %32, i64* %retval, align 8, !dbg !1225
  %retval8 = load i64* %retval, !dbg !1225
  ret i64 %retval8, !dbg !1225
}

define i32 @isatty(i32 %fd) nounwind {
entry:
  %fd_addr = alloca i32, align 4
  %retval = alloca i32
  %0 = alloca i32
  %term = alloca %struct.termios
  %"alloca point" = bitcast i32 0 to i32
  store i32 %fd, i32* %fd_addr
  %1 = load i32* %fd_addr, align 4, !dbg !1229
  %2 = call i32 @tcgetattr(i32 %1, %struct.termios* %term) nounwind, !dbg !1229
  %3 = icmp eq i32 %2, 0, !dbg !1229
  %4 = zext i1 %3 to i32, !dbg !1229
  store i32 %4, i32* %0, align 4, !dbg !1229
  %5 = load i32* %0, align 4, !dbg !1229
  store i32 %5, i32* %retval, align 4, !dbg !1229
  %retval1 = load i32* %retval, !dbg !1229
  ret i32 %retval1, !dbg !1229
}

define hidden i32 @__raise(i32 %signo) nounwind {
entry:
  %signo_addr = alloca i32, align 4
  %retval = alloca i32
  %0 = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  store i32 %signo, i32* %signo_addr
  %1 = call i32 @getpid() nounwind, !dbg !1231
  %2 = load i32* %signo_addr, align 4, !dbg !1231
  %3 = call i32 @kill(i32 %1, i32 %2) nounwind, !dbg !1231
  store i32 %3, i32* %0, align 4, !dbg !1231
  %4 = load i32* %0, align 4, !dbg !1231
  store i32 %4, i32* %retval, align 4, !dbg !1231
  %retval1 = load i32* %retval, !dbg !1231
  ret i32 %retval1, !dbg !1231
}

declare i32 @getpid() nounwind

declare i32 @kill(i32, i32) nounwind

define i32 @__libc_sigaction(i32 %sig, %struct.sigaction* %act, %struct.sigaction* %oact) nounwind {
entry:
  %sig_addr = alloca i32, align 4
  %act_addr = alloca %struct.sigaction*, align 8
  %oact_addr = alloca %struct.sigaction*, align 8
  %retval = alloca i32
  %0 = alloca i32
  %iftmp.1 = alloca %struct.kernel_sigaction*
  %iftmp.0 = alloca %struct.kernel_sigaction*
  %result = alloca i32
  %kact = alloca %struct.kernel_sigaction
  %koact = alloca %struct.kernel_sigaction
  %"alloca point" = bitcast i32 0 to i32
  store i32 %sig, i32* %sig_addr
  store %struct.sigaction* %act, %struct.sigaction** %act_addr
  store %struct.sigaction* %oact, %struct.sigaction** %oact_addr
  %1 = load %struct.sigaction** %act_addr, align 8, !dbg !1233
  %2 = icmp ne %struct.sigaction* %1, null, !dbg !1233
  br i1 %2, label %bb, label %bb1, !dbg !1233

bb:                                               ; preds = %entry
  %3 = load %struct.sigaction** %act_addr, align 8, !dbg !1235
  %4 = getelementptr inbounds %struct.sigaction* %3, i32 0, i32 0, !dbg !1235
  %5 = getelementptr inbounds %0* %4, i32 0, i32 0, !dbg !1235
  %6 = load void (i32)** %5, align 8, !dbg !1235
  %7 = getelementptr inbounds %struct.kernel_sigaction* %kact, i32 0, i32 0, !dbg !1235
  store void (i32)* %6, void (i32)** %7, align 8, !dbg !1235
  %8 = load %struct.sigaction** %act_addr, align 8, !dbg !1236
  %9 = getelementptr inbounds %struct.sigaction* %8, i32 0, i32 1, !dbg !1236
  %10 = getelementptr inbounds %struct.kernel_sigaction* %kact, i32 0, i32 3, !dbg !1236
  %11 = bitcast %struct.__sigset_t* %10 to i8*, !dbg !1236
  %12 = bitcast %struct.__sigset_t* %9 to i8*, !dbg !1236
  %13 = call i8* @memcpy(i8* noalias %11, i8* noalias %12, i64 128) nounwind, !dbg !1236
  %14 = load %struct.sigaction** %act_addr, align 8, !dbg !1237
  %15 = getelementptr inbounds %struct.sigaction* %14, i32 0, i32 2, !dbg !1237
  %16 = load i32* %15, align 8, !dbg !1237
  %17 = sext i32 %16 to i64, !dbg !1237
  %18 = getelementptr inbounds %struct.kernel_sigaction* %kact, i32 0, i32 1, !dbg !1237
  store i64 %17, i64* %18, align 8, !dbg !1237
  %19 = load %struct.sigaction** %act_addr, align 8, !dbg !1238
  %20 = getelementptr inbounds %struct.sigaction* %19, i32 0, i32 3, !dbg !1238
  %21 = load void ()** %20, align 8, !dbg !1238
  %22 = getelementptr inbounds %struct.kernel_sigaction* %kact, i32 0, i32 2, !dbg !1238
  store void ()* %21, void ()** %22, align 8, !dbg !1238
  br label %bb1, !dbg !1238

bb1:                                              ; preds = %bb, %entry
  %23 = load %struct.sigaction** %oact_addr, align 8, !dbg !1239
  %24 = icmp ne %struct.sigaction* %23, null, !dbg !1239
  br i1 %24, label %bb2, label %bb3, !dbg !1239

bb2:                                              ; preds = %bb1
  store %struct.kernel_sigaction* %koact, %struct.kernel_sigaction** %iftmp.0, align 8, !dbg !1239
  br label %bb4, !dbg !1239

bb3:                                              ; preds = %bb1
  store %struct.kernel_sigaction* null, %struct.kernel_sigaction** %iftmp.0, align 8, !dbg !1239
  br label %bb4, !dbg !1239

bb4:                                              ; preds = %bb3, %bb2
  %25 = load %struct.sigaction** %act_addr, align 8, !dbg !1239
  %26 = icmp ne %struct.sigaction* %25, null, !dbg !1239
  br i1 %26, label %bb5, label %bb6, !dbg !1239

bb5:                                              ; preds = %bb4
  store %struct.kernel_sigaction* %kact, %struct.kernel_sigaction** %iftmp.1, align 8, !dbg !1239
  br label %bb7, !dbg !1239

bb6:                                              ; preds = %bb4
  store %struct.kernel_sigaction* null, %struct.kernel_sigaction** %iftmp.1, align 8, !dbg !1239
  br label %bb7, !dbg !1239

bb7:                                              ; preds = %bb6, %bb5
  %27 = load i32* %sig_addr, align 4, !dbg !1239
  %28 = load %struct.kernel_sigaction** %iftmp.1, align 8, !dbg !1239
  %29 = load %struct.kernel_sigaction** %iftmp.0, align 8, !dbg !1239
  %30 = call i32 @__syscall_rt_sigaction(i32 %27, %struct.kernel_sigaction* %28, %struct.kernel_sigaction* %29, i64 8) nounwind, !dbg !1239
  store i32 %30, i32* %result, align 4, !dbg !1239
  %31 = load %struct.sigaction** %oact_addr, align 8, !dbg !1240
  %32 = icmp ne %struct.sigaction* %31, null, !dbg !1240
  br i1 %32, label %bb8, label %bb10, !dbg !1240

bb8:                                              ; preds = %bb7
  %33 = load i32* %result, align 4, !dbg !1240
  %34 = icmp sge i32 %33, 0, !dbg !1240
  br i1 %34, label %bb9, label %bb10, !dbg !1240

bb9:                                              ; preds = %bb8
  %35 = getelementptr inbounds %struct.kernel_sigaction* %koact, i32 0, i32 0, !dbg !1241
  %36 = load void (i32)** %35, align 8, !dbg !1241
  %37 = load %struct.sigaction** %oact_addr, align 8, !dbg !1241
  %38 = getelementptr inbounds %struct.sigaction* %37, i32 0, i32 0, !dbg !1241
  %39 = getelementptr inbounds %0* %38, i32 0, i32 0, !dbg !1241
  store void (i32)* %36, void (i32)** %39, align 8, !dbg !1241
  %40 = load %struct.sigaction** %oact_addr, align 8, !dbg !1242
  %41 = getelementptr inbounds %struct.sigaction* %40, i32 0, i32 1, !dbg !1242
  %42 = bitcast %struct.__sigset_t* %41 to i8*, !dbg !1242
  %43 = getelementptr inbounds %struct.kernel_sigaction* %koact, i32 0, i32 3, !dbg !1242
  %44 = bitcast %struct.__sigset_t* %43 to i8*, !dbg !1242
  %45 = call i8* @memcpy(i8* noalias %42, i8* noalias %44, i64 128) nounwind, !dbg !1242
  %46 = getelementptr inbounds %struct.kernel_sigaction* %koact, i32 0, i32 1, !dbg !1243
  %47 = load i64* %46, align 8, !dbg !1243
  %48 = trunc i64 %47 to i32, !dbg !1243
  %49 = load %struct.sigaction** %oact_addr, align 8, !dbg !1243
  %50 = getelementptr inbounds %struct.sigaction* %49, i32 0, i32 2, !dbg !1243
  store i32 %48, i32* %50, align 8, !dbg !1243
  %51 = getelementptr inbounds %struct.kernel_sigaction* %koact, i32 0, i32 2, !dbg !1244
  %52 = load void ()** %51, align 8, !dbg !1244
  %53 = load %struct.sigaction** %oact_addr, align 8, !dbg !1244
  %54 = getelementptr inbounds %struct.sigaction* %53, i32 0, i32 3, !dbg !1244
  store void ()* %52, void ()** %54, align 8, !dbg !1244
  br label %bb10, !dbg !1244

bb10:                                             ; preds = %bb9, %bb8, %bb7
  %55 = load i32* %result, align 4, !dbg !1245
  store i32 %55, i32* %0, align 4, !dbg !1245
  %56 = load i32* %0, align 4, !dbg !1245
  store i32 %56, i32* %retval, align 4, !dbg !1245
  %retval11 = load i32* %retval, !dbg !1245
  ret i32 %retval11, !dbg !1245
}

declare hidden i32 @__syscall_rt_sigaction(i32, %struct.kernel_sigaction*, %struct.kernel_sigaction*, i64)

define i64 @strlen(i8* %s) nounwind readonly {
entry:
  %s_addr = alloca i8*, align 8
  %retval = alloca i64
  %0 = alloca i64
  %p = alloca i8*
  %"alloca point" = bitcast i32 0 to i32
  store i8* %s, i8** %s_addr
  %1 = load i8** %s_addr, align 8, !dbg !1246
  store i8* %1, i8** %p, align 8, !dbg !1246
  br label %bb1, !dbg !1246

bb:                                               ; preds = %bb1
  %2 = getelementptr inbounds i8* %6, i64 1, !dbg !1246
  store i8* %2, i8** %p, align 8, !dbg !1246
  br label %bb1, !dbg !1246

bb1:                                              ; preds = %bb, %entry
  %3 = load i8** %p, align 8, !dbg !1246
  %4 = load i8* %3, align 1, !dbg !1246
  %5 = icmp ne i8 %4, 0, !dbg !1246
  %6 = load i8** %p, align 8, !dbg !1246
  br i1 %5, label %bb, label %bb2, !dbg !1246

bb2:                                              ; preds = %bb1
  %7 = ptrtoint i8* %6 to i64, !dbg !1248
  %8 = load i8** %s_addr, align 8, !dbg !1248
  %9 = ptrtoint i8* %8 to i64, !dbg !1248
  %10 = sub nsw i64 %7, %9, !dbg !1248
  store i64 %10, i64* %0, align 8, !dbg !1248
  %11 = load i64* %0, align 8, !dbg !1248
  store i64 %11, i64* %retval, align 8, !dbg !1248
  %retval3 = load i64* %retval, !dbg !1248
  ret i64 %retval3, !dbg !1248
}

define hidden i64 @__stdio_fwrite(i8* noalias %buffer, i64 %bytes, %struct.FILE* noalias %stream) nounwind {
entry:
  %buffer_addr = alloca i8*, align 8
  %bytes_addr = alloca i64, align 8
  %stream_addr = alloca %struct.FILE*, align 8
  %retval = alloca i64
  %0 = alloca i64
  %pending = alloca i64
  %p = alloca i8*
  %"alloca point" = bitcast i32 0 to i32
  store i8* %buffer, i8** %buffer_addr
  store i64 %bytes, i64* %bytes_addr
  store %struct.FILE* %stream, %struct.FILE** %stream_addr
  %1 = load %struct.FILE** %stream_addr, align 8, !dbg !1249
  %2 = getelementptr inbounds %struct.FILE* %1, i32 0, i32 0, !dbg !1249
  %3 = load i16* %2, align 8, !dbg !1249
  %4 = zext i16 %3 to i32, !dbg !1249
  %5 = and i32 %4, 512, !dbg !1249
  %6 = icmp eq i32 %5, 0, !dbg !1249
  br i1 %6, label %bb, label %bb16, !dbg !1249

bb:                                               ; preds = %entry
  %7 = load %struct.FILE** %stream_addr, align 8, !dbg !1251
  %8 = getelementptr inbounds %struct.FILE* %7, i32 0, i32 2, !dbg !1251
  %9 = load i32* %8, align 4, !dbg !1251
  %10 = icmp eq i32 %9, -2, !dbg !1251
  %11 = load %struct.FILE** %stream_addr, align 8, !dbg !1252
  %12 = getelementptr inbounds %struct.FILE* %11, i32 0, i32 4, !dbg !1252
  %13 = load i8** %12, align 8, !dbg !1252
  %14 = ptrtoint i8* %13 to i64, !dbg !1252
  %15 = load %struct.FILE** %stream_addr, align 8, !dbg !1252
  %16 = getelementptr inbounds %struct.FILE* %15, i32 0, i32 5, !dbg !1252
  %17 = load i8** %16, align 8, !dbg !1252
  %18 = ptrtoint i8* %17 to i64, !dbg !1252
  %19 = sub nsw i64 %14, %18, !dbg !1252
  br i1 %10, label %bb1, label %bb4, !dbg !1251

bb1:                                              ; preds = %bb
  store i64 %19, i64* %pending, align 8, !dbg !1252
  %20 = load i64* %pending, align 8, !dbg !1253
  %21 = load i64* %bytes_addr, align 8, !dbg !1253
  %22 = icmp ugt i64 %20, %21, !dbg !1253
  br i1 %22, label %bb2, label %bb3, !dbg !1253

bb2:                                              ; preds = %bb1
  %23 = load i64* %bytes_addr, align 8, !dbg !1254
  store i64 %23, i64* %pending, align 8, !dbg !1254
  br label %bb3, !dbg !1254

bb3:                                              ; preds = %bb2, %bb1
  %24 = load %struct.FILE** %stream_addr, align 8, !dbg !1255
  %25 = getelementptr inbounds %struct.FILE* %24, i32 0, i32 5, !dbg !1255
  %26 = load i8** %25, align 8, !dbg !1255
  %27 = load i8** %buffer_addr, align 8, !dbg !1255
  %28 = load i64* %pending, align 8, !dbg !1255
  %29 = call i8* @memcpy(i8* noalias %26, i8* noalias %27, i64 %28) nounwind, !dbg !1255
  %30 = load %struct.FILE** %stream_addr, align 8, !dbg !1256
  %31 = getelementptr inbounds %struct.FILE* %30, i32 0, i32 5, !dbg !1256
  %32 = load i8** %31, align 8, !dbg !1256
  %33 = load i64* %pending, align 8, !dbg !1256
  %34 = getelementptr inbounds i8* %32, i64 %33, !dbg !1256
  %35 = load %struct.FILE** %stream_addr, align 8, !dbg !1256
  %36 = getelementptr inbounds %struct.FILE* %35, i32 0, i32 5, !dbg !1256
  store i8* %34, i8** %36, align 8, !dbg !1256
  %37 = load i64* %bytes_addr, align 8, !dbg !1257
  store i64 %37, i64* %0, align 8, !dbg !1257
  br label %bb17, !dbg !1257

bb4:                                              ; preds = %bb
  %38 = load i64* %bytes_addr, align 8, !dbg !1258
  %39 = icmp uge i64 %19, %38, !dbg !1258
  %40 = load %struct.FILE** %stream_addr, align 8, !dbg !1259
  %41 = getelementptr inbounds %struct.FILE* %40, i32 0, i32 5, !dbg !1259
  %42 = load i8** %41, align 8, !dbg !1259
  br i1 %39, label %bb5, label %bb13, !dbg !1258

bb5:                                              ; preds = %bb4
  %43 = load i8** %buffer_addr, align 8, !dbg !1259
  %44 = load i64* %bytes_addr, align 8, !dbg !1259
  %45 = call i8* @memcpy(i8* noalias %42, i8* noalias %43, i64 %44) nounwind, !dbg !1259
  %46 = load %struct.FILE** %stream_addr, align 8, !dbg !1260
  %47 = getelementptr inbounds %struct.FILE* %46, i32 0, i32 5, !dbg !1260
  %48 = load i8** %47, align 8, !dbg !1260
  %49 = load i64* %bytes_addr, align 8, !dbg !1260
  %50 = getelementptr inbounds i8* %48, i64 %49, !dbg !1260
  %51 = load %struct.FILE** %stream_addr, align 8, !dbg !1260
  %52 = getelementptr inbounds %struct.FILE* %51, i32 0, i32 5, !dbg !1260
  store i8* %50, i8** %52, align 8, !dbg !1260
  %53 = load %struct.FILE** %stream_addr, align 8, !dbg !1261
  %54 = getelementptr inbounds %struct.FILE* %53, i32 0, i32 0, !dbg !1261
  %55 = load i16* %54, align 8, !dbg !1261
  %56 = zext i16 %55 to i32, !dbg !1261
  %57 = and i32 %56, 256, !dbg !1261
  %58 = icmp ne i32 %57, 0, !dbg !1261
  br i1 %58, label %bb6, label %bb12, !dbg !1261

bb6:                                              ; preds = %bb5
  %59 = load i8** %buffer_addr, align 8, !dbg !1261
  %60 = load i64* %bytes_addr, align 8, !dbg !1261
  %61 = call i8* @memrchr(i8* %59, i32 10, i64 %60) nounwind readonly, !dbg !1261
  %62 = icmp ne i8* %61, null, !dbg !1261
  br i1 %62, label %bb7, label %bb12, !dbg !1261

bb7:                                              ; preds = %bb6
  %63 = load %struct.FILE** %stream_addr, align 8, !dbg !1262
  %64 = call i64 @__stdio_wcommit(%struct.FILE* noalias %63) nounwind, !dbg !1262
  store i64 %64, i64* %pending, align 8, !dbg !1262
  %65 = load i64* %pending, align 8, !dbg !1262
  %66 = icmp ne i64 %65, 0, !dbg !1262
  br i1 %66, label %bb8, label %bb12, !dbg !1262

bb8:                                              ; preds = %bb7
  %67 = load i64* %pending, align 8, !dbg !1263
  %68 = load i64* %bytes_addr, align 8, !dbg !1263
  %69 = icmp ugt i64 %67, %68, !dbg !1263
  br i1 %69, label %bb9, label %bb10, !dbg !1263

bb9:                                              ; preds = %bb8
  %70 = load i64* %bytes_addr, align 8, !dbg !1264
  store i64 %70, i64* %pending, align 8, !dbg !1264
  br label %bb10, !dbg !1264

bb10:                                             ; preds = %bb9, %bb8
  %71 = load i64* %bytes_addr, align 8, !dbg !1265
  %72 = load i64* %pending, align 8, !dbg !1265
  %73 = sub i64 %71, %72, !dbg !1265
  %74 = load i8** %buffer_addr, align 8, !dbg !1265
  %75 = getelementptr inbounds i8* %74, i64 %73, !dbg !1265
  store i8* %75, i8** %buffer_addr, align 8, !dbg !1265
  %76 = load i8** %buffer_addr, align 8, !dbg !1266
  %77 = load i64* %pending, align 8, !dbg !1266
  %78 = call i8* @memchr(i8* %76, i32 10, i64 %77) nounwind readonly, !dbg !1266
  store i8* %78, i8** %p, align 8, !dbg !1266
  %79 = load i8** %p, align 8, !dbg !1266
  %80 = icmp ne i8* %79, null, !dbg !1266
  br i1 %80, label %bb11, label %bb12, !dbg !1266

bb11:                                             ; preds = %bb10
  %81 = load i8** %buffer_addr, align 8, !dbg !1267
  %82 = load i64* %pending, align 8, !dbg !1267
  %83 = getelementptr inbounds i8* %81, i64 %82, !dbg !1267
  %84 = ptrtoint i8* %83 to i64, !dbg !1267
  %85 = load i8** %p, align 8, !dbg !1267
  %86 = ptrtoint i8* %85 to i64, !dbg !1267
  %87 = sub nsw i64 %84, %86, !dbg !1267
  store i64 %87, i64* %pending, align 8, !dbg !1267
  %88 = load i64* %bytes_addr, align 8, !dbg !1268
  %89 = load i64* %pending, align 8, !dbg !1268
  %90 = sub i64 %88, %89, !dbg !1268
  store i64 %90, i64* %bytes_addr, align 8, !dbg !1268
  %91 = load %struct.FILE** %stream_addr, align 8, !dbg !1269
  %92 = getelementptr inbounds %struct.FILE* %91, i32 0, i32 5, !dbg !1269
  %93 = load i8** %92, align 8, !dbg !1269
  %94 = load i64* %pending, align 8, !dbg !1269
  %95 = sub nsw i64 0, %94, !dbg !1269
  %96 = getelementptr inbounds i8* %93, i64 %95, !dbg !1269
  %97 = load %struct.FILE** %stream_addr, align 8, !dbg !1269
  %98 = getelementptr inbounds %struct.FILE* %97, i32 0, i32 5, !dbg !1269
  store i8* %96, i8** %98, align 8, !dbg !1269
  br label %bb12, !dbg !1269

bb12:                                             ; preds = %bb11, %bb10, %bb7, %bb6, %bb5
  %99 = load i64* %bytes_addr, align 8, !dbg !1270
  store i64 %99, i64* %0, align 8, !dbg !1270
  br label %bb17, !dbg !1270

bb13:                                             ; preds = %bb4
  %100 = load %struct.FILE** %stream_addr, align 8, !dbg !1271
  %101 = getelementptr inbounds %struct.FILE* %100, i32 0, i32 3, !dbg !1271
  %102 = load i8** %101, align 8, !dbg !1271
  %103 = icmp ne i8* %42, %102, !dbg !1271
  br i1 %103, label %bb14, label %bb16, !dbg !1271

bb14:                                             ; preds = %bb13
  %104 = load %struct.FILE** %stream_addr, align 8, !dbg !1272
  %105 = call i64 @__stdio_wcommit(%struct.FILE* noalias %104) nounwind, !dbg !1272
  %106 = icmp ne i64 %105, 0, !dbg !1272
  br i1 %106, label %bb15, label %bb16, !dbg !1272

bb15:                                             ; preds = %bb14
  store i64 0, i64* %0, align 8, !dbg !1273
  br label %bb17, !dbg !1273

bb16:                                             ; preds = %bb14, %bb13, %entry
  %107 = load %struct.FILE** %stream_addr, align 8, !dbg !1274
  %108 = load i8** %buffer_addr, align 8, !dbg !1274
  %109 = load i64* %bytes_addr, align 8, !dbg !1274
  %110 = call i64 @__stdio_WRITE(%struct.FILE* %107, i8* %108, i64 %109) nounwind, !dbg !1274
  store i64 %110, i64* %0, align 8, !dbg !1274
  br label %bb17, !dbg !1274

bb17:                                             ; preds = %bb16, %bb15, %bb12, %bb3
  %111 = load i64* %0, align 8, !dbg !1257
  store i64 %111, i64* %retval, align 8, !dbg !1257
  %retval18 = load i64* %retval, !dbg !1257
  ret i64 %retval18, !dbg !1257
}

define i32 @fseek(%struct.FILE* %stream, i64 %offset, i32 %whence) nounwind {
entry:
  %stream_addr = alloca %struct.FILE*, align 8
  %offset_addr = alloca i64, align 8
  %whence_addr = alloca i32, align 4
  %retval = alloca i32
  %0 = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  store %struct.FILE* %stream, %struct.FILE** %stream_addr
  store i64 %offset, i64* %offset_addr
  store i32 %whence, i32* %whence_addr
  %1 = load %struct.FILE** %stream_addr, align 8, !dbg !1275
  %2 = load i64* %offset_addr, align 8, !dbg !1275
  %3 = load i32* %whence_addr, align 4, !dbg !1275
  %4 = call i32 @fseeko64(%struct.FILE* %1, i64 %2, i32 %3) nounwind, !dbg !1275
  store i32 %4, i32* %0, align 4, !dbg !1275
  %5 = load i32* %0, align 4, !dbg !1275
  store i32 %5, i32* %retval, align 4, !dbg !1275
  %retval1 = load i32* %retval, !dbg !1275
  ret i32 %retval1, !dbg !1275
}

define i32 @tcgetattr(i32 %fd, %struct.termios* %termios_p) nounwind {
entry:
  %fd_addr = alloca i32, align 4
  %termios_p_addr = alloca %struct.termios*, align 8
  %retval = alloca i32
  %0 = alloca i32
  %k_termios = alloca %struct.__kernel_termios
  %retval1 = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  store i32 %fd, i32* %fd_addr
  store %struct.termios* %termios_p, %struct.termios** %termios_p_addr
  %1 = load i32* %fd_addr, align 4, !dbg !1277
  %2 = call i32 (i32, i64, ...)* @ioctl(i32 %1, i64 21505, %struct.__kernel_termios* %k_termios) nounwind, !dbg !1277
  store i32 %2, i32* %retval1, align 4, !dbg !1277
  %3 = getelementptr inbounds %struct.__kernel_termios* %k_termios, i32 0, i32 0, !dbg !1279
  %4 = load i32* %3, align 4, !dbg !1279
  %5 = load %struct.termios** %termios_p_addr, align 8, !dbg !1279
  %6 = getelementptr inbounds %struct.termios* %5, i32 0, i32 0, !dbg !1279
  store i32 %4, i32* %6, align 4, !dbg !1279
  %7 = getelementptr inbounds %struct.__kernel_termios* %k_termios, i32 0, i32 1, !dbg !1280
  %8 = load i32* %7, align 4, !dbg !1280
  %9 = load %struct.termios** %termios_p_addr, align 8, !dbg !1280
  %10 = getelementptr inbounds %struct.termios* %9, i32 0, i32 1, !dbg !1280
  store i32 %8, i32* %10, align 4, !dbg !1280
  %11 = getelementptr inbounds %struct.__kernel_termios* %k_termios, i32 0, i32 2, !dbg !1281
  %12 = load i32* %11, align 4, !dbg !1281
  %13 = load %struct.termios** %termios_p_addr, align 8, !dbg !1281
  %14 = getelementptr inbounds %struct.termios* %13, i32 0, i32 2, !dbg !1281
  store i32 %12, i32* %14, align 4, !dbg !1281
  %15 = getelementptr inbounds %struct.__kernel_termios* %k_termios, i32 0, i32 3, !dbg !1282
  %16 = load i32* %15, align 4, !dbg !1282
  %17 = load %struct.termios** %termios_p_addr, align 8, !dbg !1282
  %18 = getelementptr inbounds %struct.termios* %17, i32 0, i32 3, !dbg !1282
  store i32 %16, i32* %18, align 4, !dbg !1282
  %19 = getelementptr inbounds %struct.__kernel_termios* %k_termios, i32 0, i32 4, !dbg !1283
  %20 = load i8* %19, align 4, !dbg !1283
  %21 = load %struct.termios** %termios_p_addr, align 8, !dbg !1283
  %22 = getelementptr inbounds %struct.termios* %21, i32 0, i32 4, !dbg !1283
  store i8 %20, i8* %22, align 4, !dbg !1283
  %23 = load %struct.termios** %termios_p_addr, align 8, !dbg !1284
  %24 = getelementptr inbounds %struct.termios* %23, i32 0, i32 5, !dbg !1284
  %25 = getelementptr inbounds [32 x i8]* %24, i64 0, i64 0, !dbg !1284
  %26 = getelementptr inbounds %struct.__kernel_termios* %k_termios, i32 0, i32 5, !dbg !1284
  %27 = getelementptr inbounds [19 x i8]* %26, i64 0, i64 0, !dbg !1284
  %28 = call i8* @mempcpy(i8* noalias %25, i8* noalias %27, i64 19) nounwind, !dbg !1284
  %29 = call i8* @memset(i8* %28, i32 0, i64 13) nounwind, !dbg !1284
  %30 = load i32* %retval1, align 4, !dbg !1285
  store i32 %30, i32* %0, align 4, !dbg !1285
  %31 = load i32* %0, align 4, !dbg !1285
  store i32 %31, i32* %retval, align 4, !dbg !1285
  %retval2 = load i32* %retval, !dbg !1285
  ret i32 %retval2, !dbg !1285
}

declare i32 @ioctl(i32, i64, ...) nounwind

define i32 @fseeko64(%struct.FILE* %stream, i64 %offset, i32 %whence) nounwind {
entry:
  %stream_addr = alloca %struct.FILE*, align 8
  %offset_addr = alloca i64, align 8
  %whence_addr = alloca i32, align 4
  %retval = alloca i32
  %0 = alloca i32
  %pos = alloca i64
  %retval1 = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  store %struct.FILE* %stream, %struct.FILE** %stream_addr
  store i64 %offset, i64* %offset_addr
  store i32 %whence, i32* %whence_addr
  %1 = load i64* %offset_addr, align 8, !dbg !1286
  store i64 %1, i64* %pos, align 8, !dbg !1286
  store i32 -1, i32* %retval1, align 4, !dbg !1288
  %2 = load i32* %whence_addr, align 4, !dbg !1289
  %3 = icmp ugt i32 %2, 2, !dbg !1289
  br i1 %3, label %bb, label %bb2, !dbg !1289

bb:                                               ; preds = %entry
  store i32 22, i32* @errno, align 4, !dbg !1290
  br label %bb8, !dbg !1290

bb2:                                              ; preds = %entry
  %4 = load %struct.FILE** %stream_addr, align 8, !dbg !1291
  %5 = getelementptr inbounds %struct.FILE* %4, i32 0, i32 0, !dbg !1291
  %6 = load i16* %5, align 8, !dbg !1291
  %7 = zext i16 %6 to i32, !dbg !1291
  %8 = and i32 %7, 64, !dbg !1291
  %9 = icmp eq i32 %8, 0, !dbg !1291
  br i1 %9, label %bb4, label %bb3, !dbg !1291

bb3:                                              ; preds = %bb2
  %10 = load %struct.FILE** %stream_addr, align 8, !dbg !1291
  %11 = call i64 @__stdio_wcommit(%struct.FILE* noalias %10) nounwind, !dbg !1291
  %12 = icmp eq i64 %11, 0, !dbg !1291
  br i1 %12, label %bb4, label %bb8, !dbg !1291

bb4:                                              ; preds = %bb3, %bb2
  %13 = load i32* %whence_addr, align 4, !dbg !1291
  %14 = icmp ne i32 %13, 1, !dbg !1291
  br i1 %14, label %bb6, label %bb5, !dbg !1291

bb5:                                              ; preds = %bb4
  %15 = load %struct.FILE** %stream_addr, align 8, !dbg !1291
  %16 = call i32 @__stdio_adjust_position(%struct.FILE* noalias %15, i64* %pos) nounwind, !dbg !1291
  %17 = icmp sge i32 %16, 0, !dbg !1291
  br i1 %17, label %bb6, label %bb8, !dbg !1291

bb6:                                              ; preds = %bb5, %bb4
  %18 = load %struct.FILE** %stream_addr, align 8, !dbg !1291
  %19 = load i32* %whence_addr, align 4, !dbg !1291
  %20 = call i32 @__stdio_seek(%struct.FILE* %18, i64* %pos, i32 %19) nounwind, !dbg !1291
  %21 = icmp sge i32 %20, 0, !dbg !1291
  br i1 %21, label %bb7, label %bb8, !dbg !1291

bb7:                                              ; preds = %bb6
  %22 = load %struct.FILE** %stream_addr, align 8, !dbg !1292
  %23 = getelementptr inbounds %struct.FILE* %22, i32 0, i32 0, !dbg !1292
  %24 = load i16* %23, align 8, !dbg !1292
  %25 = and i16 %24, -72, !dbg !1292
  %26 = load %struct.FILE** %stream_addr, align 8, !dbg !1292
  %27 = getelementptr inbounds %struct.FILE* %26, i32 0, i32 0, !dbg !1292
  store i16 %25, i16* %27, align 8, !dbg !1292
  %28 = load %struct.FILE** %stream_addr, align 8, !dbg !1293
  %29 = getelementptr inbounds %struct.FILE* %28, i32 0, i32 3, !dbg !1293
  %30 = load i8** %29, align 8, !dbg !1293
  %31 = load %struct.FILE** %stream_addr, align 8, !dbg !1293
  %32 = getelementptr inbounds %struct.FILE* %31, i32 0, i32 5, !dbg !1293
  store i8* %30, i8** %32, align 8, !dbg !1293
  %33 = load %struct.FILE** %stream_addr, align 8, !dbg !1293
  %34 = getelementptr inbounds %struct.FILE* %33, i32 0, i32 5, !dbg !1293
  %35 = load i8** %34, align 8, !dbg !1293
  %36 = load %struct.FILE** %stream_addr, align 8, !dbg !1293
  %37 = getelementptr inbounds %struct.FILE* %36, i32 0, i32 6, !dbg !1293
  store i8* %35, i8** %37, align 8, !dbg !1293
  %38 = load %struct.FILE** %stream_addr, align 8, !dbg !1294
  %39 = getelementptr inbounds %struct.FILE* %38, i32 0, i32 3, !dbg !1294
  %40 = load i8** %39, align 8, !dbg !1294
  %41 = load %struct.FILE** %stream_addr, align 8, !dbg !1294
  %42 = getelementptr inbounds %struct.FILE* %41, i32 0, i32 7, !dbg !1294
  store i8* %40, i8** %42, align 8, !dbg !1294
  %43 = load %struct.FILE** %stream_addr, align 8, !dbg !1295
  %44 = getelementptr inbounds %struct.FILE* %43, i32 0, i32 3, !dbg !1295
  %45 = load i8** %44, align 8, !dbg !1295
  %46 = load %struct.FILE** %stream_addr, align 8, !dbg !1295
  %47 = getelementptr inbounds %struct.FILE* %46, i32 0, i32 8, !dbg !1295
  store i8* %45, i8** %47, align 8, !dbg !1295
  %48 = load %struct.FILE** %stream_addr, align 8, !dbg !1296
  %49 = getelementptr inbounds %struct.FILE* %48, i32 0, i32 11, !dbg !1296
  %50 = getelementptr inbounds %struct.__mbstate_t* %49, i32 0, i32 0, !dbg !1296
  store i32 0, i32* %50, align 8, !dbg !1296
  %51 = load %struct.FILE** %stream_addr, align 8, !dbg !1297
  %52 = getelementptr inbounds %struct.FILE* %51, i32 0, i32 1, !dbg !1297
  %53 = getelementptr inbounds [2 x i8]* %52, i64 0, i64 0, !dbg !1297
  store i8 0, i8* %53, align 1, !dbg !1297
  store i32 0, i32* %retval1, align 4, !dbg !1298
  br label %bb8, !dbg !1298

bb8:                                              ; preds = %bb7, %bb6, %bb5, %bb3, %bb
  %54 = load i32* %retval1, align 4, !dbg !1299
  store i32 %54, i32* %0, align 4, !dbg !1299
  %55 = load i32* %0, align 4, !dbg !1299
  store i32 %55, i32* %retval, align 4, !dbg !1299
  %retval9 = load i32* %retval, !dbg !1299
  ret i32 %retval9, !dbg !1299
}

define i8* @memchr(i8* %s, i32 %c, i64 %n) nounwind readonly {
entry:
  %s_addr = alloca i8*, align 8
  %c_addr = alloca i32, align 4
  %n_addr = alloca i64, align 8
  %retval = alloca i8*
  %0 = alloca i8*
  %r = alloca i8*
  %"alloca point" = bitcast i32 0 to i32
  store i8* %s, i8** %s_addr
  store i32 %c, i32* %c_addr
  store i64 %n, i64* %n_addr
  %1 = load i8** %s_addr, align 8, !dbg !1300
  store i8* %1, i8** %r, align 8, !dbg !1300
  br label %bb3, !dbg !1300

bb:                                               ; preds = %bb3
  %2 = load i8** %r, align 8, !dbg !1302
  %3 = load i8* %2, align 1, !dbg !1302
  %4 = load i32* %c_addr, align 4, !dbg !1302
  %5 = trunc i32 %4 to i8, !dbg !1302
  %6 = icmp eq i8 %3, %5, !dbg !1302
  %7 = load i8** %r, align 8, !dbg !1303
  br i1 %6, label %bb1, label %bb2, !dbg !1302

bb1:                                              ; preds = %bb
  store i8* %7, i8** %0, align 8, !dbg !1303
  br label %bb5, !dbg !1303

bb2:                                              ; preds = %bb
  %8 = getelementptr inbounds i8* %7, i64 1, !dbg !1304
  store i8* %8, i8** %r, align 8, !dbg !1304
  %9 = load i64* %n_addr, align 8, !dbg !1305
  %10 = sub i64 %9, 1, !dbg !1305
  store i64 %10, i64* %n_addr, align 8, !dbg !1305
  br label %bb3, !dbg !1305

bb3:                                              ; preds = %bb2, %entry
  %11 = load i64* %n_addr, align 8, !dbg !1306
  %12 = icmp ne i64 %11, 0, !dbg !1306
  br i1 %12, label %bb, label %bb4, !dbg !1306

bb4:                                              ; preds = %bb3
  store i8* null, i8** %0, align 8, !dbg !1307
  br label %bb5, !dbg !1307

bb5:                                              ; preds = %bb4, %bb1
  %13 = load i8** %0, align 8, !dbg !1303
  store i8* %13, i8** %retval, align 8, !dbg !1303
  %retval6 = load i8** %retval, !dbg !1303
  ret i8* %retval6, !dbg !1303
}

define i8* @mempcpy(i8* noalias %s1, i8* noalias %s2, i64 %n) nounwind {
entry:
  %s1_addr = alloca i8*, align 8
  %s2_addr = alloca i8*, align 8
  %n_addr = alloca i64, align 8
  %retval = alloca i8*
  %0 = alloca i8*
  %r1 = alloca i8*
  %r2 = alloca i8*
  %"alloca point" = bitcast i32 0 to i32
  store i8* %s1, i8** %s1_addr
  store i8* %s2, i8** %s2_addr
  store i64 %n, i64* %n_addr
  %1 = load i8** %s1_addr, align 8, !dbg !1308
  store i8* %1, i8** %r1, align 8, !dbg !1308
  %2 = load i8** %s2_addr, align 8, !dbg !1310
  store i8* %2, i8** %r2, align 8, !dbg !1310
  br label %bb1, !dbg !1310

bb:                                               ; preds = %bb1
  %3 = load i8** %r2, align 8, !dbg !1311
  %4 = load i8* %3, align 1, !dbg !1311
  %5 = load i8** %r1, align 8, !dbg !1311
  store i8 %4, i8* %5, align 1, !dbg !1311
  %6 = load i8** %r1, align 8, !dbg !1311
  %7 = getelementptr inbounds i8* %6, i64 1, !dbg !1311
  store i8* %7, i8** %r1, align 8, !dbg !1311
  %8 = load i8** %r2, align 8, !dbg !1311
  %9 = getelementptr inbounds i8* %8, i64 1, !dbg !1311
  store i8* %9, i8** %r2, align 8, !dbg !1311
  %10 = load i64* %n_addr, align 8, !dbg !1312
  %11 = sub i64 %10, 1, !dbg !1312
  store i64 %11, i64* %n_addr, align 8, !dbg !1312
  br label %bb1, !dbg !1312

bb1:                                              ; preds = %bb, %entry
  %12 = load i64* %n_addr, align 8, !dbg !1313
  %13 = icmp ne i64 %12, 0, !dbg !1313
  br i1 %13, label %bb, label %bb2, !dbg !1313

bb2:                                              ; preds = %bb1
  %14 = load i8** %r1, align 8, !dbg !1314
  store i8* %14, i8** %0, align 8, !dbg !1314
  %15 = load i8** %0, align 8, !dbg !1314
  store i8* %15, i8** %retval, align 8, !dbg !1314
  %retval3 = load i8** %retval, !dbg !1314
  ret i8* %retval3, !dbg !1314
}

define i8* @memrchr(i8* %s, i32 %c, i64 %n) nounwind readonly {
entry:
  %s_addr = alloca i8*, align 8
  %c_addr = alloca i32, align 4
  %n_addr = alloca i64, align 8
  %retval = alloca i8*
  %0 = alloca i8*
  %r = alloca i8*
  %"alloca point" = bitcast i32 0 to i32
  store i8* %s, i8** %s_addr
  store i32 %c, i32* %c_addr
  store i64 %n, i64* %n_addr
  %1 = load i8** %s_addr, align 8, !dbg !1315
  %2 = load i64* %n_addr, align 8, !dbg !1315
  %3 = getelementptr inbounds i8* %1, i64 %2, !dbg !1315
  store i8* %3, i8** %r, align 8, !dbg !1315
  br label %bb3, !dbg !1315

bb:                                               ; preds = %bb3
  %4 = load i8** %r, align 8, !dbg !1317
  %5 = getelementptr inbounds i8* %4, i64 -1, !dbg !1317
  store i8* %5, i8** %r, align 8, !dbg !1317
  %6 = load i8** %r, align 8, !dbg !1317
  %7 = load i8* %6, align 1, !dbg !1317
  %8 = load i32* %c_addr, align 4, !dbg !1317
  %9 = trunc i32 %8 to i8, !dbg !1317
  %10 = icmp eq i8 %7, %9, !dbg !1317
  br i1 %10, label %bb1, label %bb2, !dbg !1317

bb1:                                              ; preds = %bb
  %11 = load i8** %r, align 8, !dbg !1318
  store i8* %11, i8** %0, align 8, !dbg !1318
  br label %bb5, !dbg !1318

bb2:                                              ; preds = %bb
  %12 = load i64* %n_addr, align 8, !dbg !1319
  %13 = sub i64 %12, 1, !dbg !1319
  store i64 %13, i64* %n_addr, align 8, !dbg !1319
  br label %bb3, !dbg !1319

bb3:                                              ; preds = %bb2, %entry
  %14 = load i64* %n_addr, align 8, !dbg !1320
  %15 = icmp ne i64 %14, 0, !dbg !1320
  br i1 %15, label %bb, label %bb4, !dbg !1320

bb4:                                              ; preds = %bb3
  store i8* null, i8** %0, align 8, !dbg !1321
  br label %bb5, !dbg !1321

bb5:                                              ; preds = %bb4, %bb1
  %16 = load i8** %0, align 8, !dbg !1318
  store i8* %16, i8** %retval, align 8, !dbg !1318
  %retval6 = load i8** %retval, !dbg !1318
  ret i8* %retval6, !dbg !1318
}

define hidden i32 @__stdio_adjust_position(%struct.FILE* noalias %stream, i64* %pos) nounwind {
entry:
  %stream_addr = alloca %struct.FILE*, align 8
  %pos_addr = alloca i64*, align 8
  %retval = alloca i32
  %iftmp.0 = alloca i8*
  %0 = alloca i32
  %oldpos = alloca i64
  %corr = alloca i32
  %"alloca point" = bitcast i32 0 to i32
  store %struct.FILE* %stream, %struct.FILE** %stream_addr
  store i64* %pos, i64** %pos_addr
  %1 = load %struct.FILE** %stream_addr, align 8, !dbg !1322
  %2 = getelementptr inbounds %struct.FILE* %1, i32 0, i32 0, !dbg !1322
  %3 = load i16* %2, align 8, !dbg !1322
  %4 = zext i16 %3 to i32, !dbg !1322
  %5 = and i32 %4, 3, !dbg !1322
  store i32 %5, i32* %corr, align 4, !dbg !1322
  %6 = load i32* %corr, align 4, !dbg !1322
  %7 = icmp ne i32 %6, 0, !dbg !1322
  br i1 %7, label %bb, label %bb1, !dbg !1322

bb:                                               ; preds = %entry
  %8 = load i32* %corr, align 4, !dbg !1324
  %9 = sub nsw i32 %8, 1, !dbg !1324
  store i32 %9, i32* %corr, align 4, !dbg !1324
  br label %bb1, !dbg !1324

bb1:                                              ; preds = %bb, %entry
  %10 = load i32* %corr, align 4, !dbg !1325
  %11 = icmp ne i32 %10, 0, !dbg !1325
  br i1 %11, label %bb2, label %bb8, !dbg !1325

bb2:                                              ; preds = %bb1
  %12 = load %struct.FILE** %stream_addr, align 8, !dbg !1325
  %13 = getelementptr inbounds %struct.FILE* %12, i32 0, i32 0, !dbg !1325
  %14 = load i16* %13, align 8, !dbg !1325
  %15 = zext i16 %14 to i32, !dbg !1325
  %16 = and i32 %15, 2048, !dbg !1325
  %17 = icmp ne i32 %16, 0, !dbg !1325
  br i1 %17, label %bb3, label %bb8, !dbg !1325

bb3:                                              ; preds = %bb2
  %18 = load i32* %corr, align 4, !dbg !1326
  %19 = icmp sgt i32 %18, 1, !dbg !1326
  br i1 %19, label %bb5, label %bb4, !dbg !1326

bb4:                                              ; preds = %bb3
  %20 = load %struct.FILE** %stream_addr, align 8, !dbg !1326
  %21 = getelementptr inbounds %struct.FILE* %20, i32 0, i32 10, !dbg !1326
  %22 = getelementptr inbounds [2 x i32]* %21, i64 0, i64 1, !dbg !1326
  %23 = load i32* %22, align 4, !dbg !1326
  %24 = icmp ne i32 %23, 0, !dbg !1326
  br i1 %24, label %bb5, label %bb6, !dbg !1326

bb5:                                              ; preds = %bb4, %bb3
  store i32 -1, i32* %0, align 4, !dbg !1327
  br label %bb16, !dbg !1327

bb6:                                              ; preds = %bb4
  %25 = load %struct.FILE** %stream_addr, align 8, !dbg !1328
  %26 = getelementptr inbounds %struct.FILE* %25, i32 0, i32 1, !dbg !1328
  %27 = getelementptr inbounds [2 x i8]* %26, i64 0, i64 1, !dbg !1328
  %28 = load i8* %27, align 1, !dbg !1328
  %29 = zext i8 %28 to i32, !dbg !1328
  %30 = add nsw i32 %29, 1, !dbg !1328
  %31 = load i32* %corr, align 4, !dbg !1328
  %32 = sub nsw i32 %31, %30, !dbg !1328
  store i32 %32, i32* %corr, align 4, !dbg !1328
  %33 = load %struct.FILE** %stream_addr, align 8, !dbg !1329
  %34 = getelementptr inbounds %struct.FILE* %33, i32 0, i32 11, !dbg !1329
  %35 = getelementptr inbounds %struct.__mbstate_t* %34, i32 0, i32 0, !dbg !1329
  %36 = load i32* %35, align 8, !dbg !1329
  %37 = icmp sgt i32 %36, 0, !dbg !1329
  br i1 %37, label %bb7, label %bb8, !dbg !1329

bb7:                                              ; preds = %bb6
  %38 = load %struct.FILE** %stream_addr, align 8, !dbg !1330
  %39 = getelementptr inbounds %struct.FILE* %38, i32 0, i32 1, !dbg !1330
  %40 = getelementptr inbounds [2 x i8]* %39, i64 0, i64 0, !dbg !1330
  %41 = load i8* %40, align 1, !dbg !1330
  %42 = zext i8 %41 to i32, !dbg !1330
  %43 = load i32* %corr, align 4, !dbg !1330
  %44 = sub nsw i32 %43, %42, !dbg !1330
  store i32 %44, i32* %corr, align 4, !dbg !1330
  br label %bb8, !dbg !1330

bb8:                                              ; preds = %bb7, %bb6, %bb2, %bb1
  %45 = load %struct.FILE** %stream_addr, align 8, !dbg !1331
  %46 = getelementptr inbounds %struct.FILE* %45, i32 0, i32 0, !dbg !1331
  %47 = load i16* %46, align 8, !dbg !1331
  %48 = zext i16 %47 to i32, !dbg !1331
  %49 = and i32 %48, 64, !dbg !1331
  %50 = icmp ne i32 %49, 0, !dbg !1331
  %51 = load %struct.FILE** %stream_addr, align 8, !dbg !1331
  br i1 %50, label %bb9, label %bb10, !dbg !1331

bb9:                                              ; preds = %bb8
  %52 = getelementptr inbounds %struct.FILE* %51, i32 0, i32 3, !dbg !1331
  %53 = load i8** %52, align 8, !dbg !1331
  store i8* %53, i8** %iftmp.0, align 8, !dbg !1331
  br label %bb11, !dbg !1331

bb10:                                             ; preds = %bb8
  %54 = getelementptr inbounds %struct.FILE* %51, i32 0, i32 6, !dbg !1331
  %55 = load i8** %54, align 8, !dbg !1331
  store i8* %55, i8** %iftmp.0, align 8, !dbg !1331
  br label %bb11, !dbg !1331

bb11:                                             ; preds = %bb10, %bb9
  %56 = load i8** %iftmp.0, align 8, !dbg !1331
  %57 = ptrtoint i8* %56 to i64, !dbg !1331
  %58 = trunc i64 %57 to i32, !dbg !1331
  %59 = load %struct.FILE** %stream_addr, align 8, !dbg !1331
  %60 = getelementptr inbounds %struct.FILE* %59, i32 0, i32 5, !dbg !1331
  %61 = load i8** %60, align 8, !dbg !1331
  %62 = ptrtoint i8* %61 to i64, !dbg !1331
  %63 = trunc i64 %62 to i32, !dbg !1331
  %64 = sub i32 %58, %63, !dbg !1331
  %65 = load i32* %corr, align 4, !dbg !1331
  %66 = add i32 %64, %65, !dbg !1331
  store i32 %66, i32* %corr, align 4, !dbg !1331
  %67 = load i64** %pos_addr, align 8, !dbg !1332
  %68 = load i64* %67, align 8, !dbg !1332
  store i64 %68, i64* %oldpos, align 8, !dbg !1332
  %69 = load i64** %pos_addr, align 8, !dbg !1333
  %70 = load i64* %69, align 8, !dbg !1333
  %71 = load i32* %corr, align 4, !dbg !1333
  %72 = sext i32 %71 to i64, !dbg !1333
  %73 = sub nsw i64 %70, %72, !dbg !1333
  %74 = load i64** %pos_addr, align 8, !dbg !1333
  store i64 %73, i64* %74, align 8, !dbg !1333
  %75 = load i64** %pos_addr, align 8, !dbg !1333
  %76 = load i64* %75, align 8, !dbg !1333
  %77 = load i64* %oldpos, align 8, !dbg !1333
  %78 = icmp sgt i64 %76, %77, !dbg !1333
  br i1 %78, label %bb12, label %bb13, !dbg !1333

bb12:                                             ; preds = %bb11
  %79 = load i32* %corr, align 4, !dbg !1334
  %80 = sub nsw i32 0, %79, !dbg !1334
  store i32 %80, i32* %corr, align 4, !dbg !1334
  br label %bb13, !dbg !1334

bb13:                                             ; preds = %bb12, %bb11
  %81 = load i32* %corr, align 4, !dbg !1335
  %82 = icmp slt i32 %81, 0, !dbg !1335
  br i1 %82, label %bb14, label %bb15, !dbg !1335

bb14:                                             ; preds = %bb13
  store i32 75, i32* @errno, align 4, !dbg !1336
  br label %bb15, !dbg !1336

bb15:                                             ; preds = %bb14, %bb13
  %83 = load i32* %corr, align 4, !dbg !1337
  store i32 %83, i32* %0, align 4, !dbg !1337
  br label %bb16, !dbg !1337

bb16:                                             ; preds = %bb15, %bb5
  %84 = load i32* %0, align 4, !dbg !1327
  store i32 %84, i32* %retval, align 4, !dbg !1327
  %retval17 = load i32* %retval, !dbg !1327
  ret i32 %retval17, !dbg !1327
}

define hidden i32 @__stdio_seek(%struct.FILE* %stream, i64* %pos, i32 %whence) nounwind {
entry:
  %stream_addr = alloca %struct.FILE*, align 8
  %pos_addr = alloca i64*, align 8
  %whence_addr = alloca i32, align 4
  %retval = alloca i32
  %iftmp.0 = alloca i32
  %0 = alloca i32
  %res = alloca i64
  %"alloca point" = bitcast i32 0 to i32
  store %struct.FILE* %stream, %struct.FILE** %stream_addr
  store i64* %pos, i64** %pos_addr
  store i32 %whence, i32* %whence_addr
  %1 = load i64** %pos_addr, align 8, !dbg !1338
  %2 = load i64* %1, align 8, !dbg !1338
  %3 = load %struct.FILE** %stream_addr, align 8, !dbg !1338
  %4 = getelementptr inbounds %struct.FILE* %3, i32 0, i32 2, !dbg !1338
  %5 = load i32* %4, align 4, !dbg !1338
  %6 = load i32* %whence_addr, align 4, !dbg !1338
  %7 = call i64 @lseek64(i32 %5, i64 %2, i32 %6) nounwind, !dbg !1338
  store i64 %7, i64* %res, align 8, !dbg !1338
  %8 = load i64* %res, align 8, !dbg !1340
  %9 = icmp sge i64 %8, 0, !dbg !1340
  br i1 %9, label %bb, label %bb1, !dbg !1340

bb:                                               ; preds = %entry
  %10 = load i64** %pos_addr, align 8, !dbg !1340
  %11 = load i64* %res, align 8, !dbg !1340
  store i64 %11, i64* %10, align 8, !dbg !1340
  store i32 0, i32* %iftmp.0, align 4, !dbg !1340
  br label %bb2, !dbg !1340

bb1:                                              ; preds = %entry
  %12 = load i64* %res, align 8, !dbg !1340
  %13 = trunc i64 %12 to i32, !dbg !1340
  store i32 %13, i32* %iftmp.0, align 4, !dbg !1340
  br label %bb2, !dbg !1340

bb2:                                              ; preds = %bb1, %bb
  %14 = load i32* %iftmp.0, align 4, !dbg !1340
  store i32 %14, i32* %0, align 4, !dbg !1340
  %15 = load i32* %0, align 4, !dbg !1340
  store i32 %15, i32* %retval, align 4, !dbg !1340
  %retval3 = load i32* %retval, !dbg !1340
  ret i32 %retval3, !dbg !1340
}

declare i64 @lseek64(i32, i64, i32) nounwind

define i32 @main(i32, i8**) {
entry:
  call void @__uClibc_main(i32 (i32, i8**, i8**)* bitcast (i32 ()* @__user_main to i32 (i32, i8**, i8**)*), i32 %0, i8** %1, void ()* null, void ()* null, void ()* null, i8* null)
  unreachable
}

define void @klee_div_zero_check(i64 %z) nounwind {
entry:
  %0 = icmp eq i64 %z, 0, !dbg !1341
  br i1 %0, label %bb, label %return, !dbg !1341

bb:                                               ; preds = %entry
  tail call void @klee_report_error(i8* getelementptr inbounds ([22 x i8]* @.str50, i64 0, i64 0), i32 14, i8* getelementptr inbounds ([15 x i8]* @.str151, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str252, i64 0, i64 0)) noreturn nounwind, !
  unreachable, !dbg !1343

return:                                           ; preds = %entry
  ret void, !dbg !1344
}

declare void @klee_report_error(i8*, i32, i8*, i8*) noreturn

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define i32 @klee_int(i8* %name) nounwind {
entry:
  %x = alloca i32, align 4
  %x1 = bitcast i32* %x to i8*, !dbg !1345
  call void bitcast (void (i8*, i32, i8*)* @klee_make_symbolic to void (i8*, i64, i8*)*)(i8* %x1, i64 4, i8* %name) nounwind, !dbg !1345
  %0 = load i32* %x, align 4, !dbg !1346
  ret i32 %0, !dbg !1346
}

define void @klee_overshift_check(i64 %bitWidth, i64 %shift) nounwind {
entry:
  %0 = icmp ult i64 %shift, %bitWidth, !dbg !1347
  br i1 %0, label %return, label %bb, !dbg !1347

bb:                                               ; preds = %entry
  tail call void @klee_report_error(i8* getelementptr inbounds ([8 x i8]* @.str353, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([16 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str25, i64 0, i64 0)) noreturn nounwind, !db
  unreachable, !dbg !1349

return:                                           ; preds = %entry
  ret void, !dbg !1350
}

define i32 @klee_range(i32 %start, i32 %end, i8* %name) nounwind {
entry:
  %x = alloca i32, align 4
  %0 = icmp slt i32 %start, %end, !dbg !1351
  br i1 %0, label %bb1, label %bb, !dbg !1351

bb:                                               ; preds = %entry
  call void @klee_report_error(i8* getelementptr inbounds ([13 x i8]* @.str654, i64 0, i64 0), i32 17, i8* getelementptr inbounds ([14 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str28, i64 0, i64 0)) noreturn nounwind, !dbg !1
  unreachable, !dbg !1352

bb1:                                              ; preds = %entry
  %1 = add nsw i32 %start, 1, !dbg !1353
  %2 = icmp eq i32 %1, %end, !dbg !1353
  br i1 %2, label %bb8, label %bb3, !dbg !1353

bb3:                                              ; preds = %bb1
  %x4 = bitcast i32* %x to i8*, !dbg !1354
  call void bitcast (void (i8*, i32, i8*)* @klee_make_symbolic to void (i8*, i64, i8*)*)(i8* %x4, i64 4, i8* %name) nounwind, !dbg !1354
  %3 = icmp eq i32 %start, 0, !dbg !1355
  %4 = load i32* %x, align 4, !dbg !1356
  br i1 %3, label %bb5, label %bb6, !dbg !1355

bb5:                                              ; preds = %bb3
  %5 = icmp ult i32 %4, %end, !dbg !1356
  %6 = zext i1 %5 to i64, !dbg !1356
  call void @klee_assume(i64 %6) nounwind, !dbg !1356
  br label %bb7, !dbg !1356

bb6:                                              ; preds = %bb3
  %7 = icmp sge i32 %4, %start, !dbg !1357
  %8 = zext i1 %7 to i64, !dbg !1357
  call void @klee_assume(i64 %8) nounwind, !dbg !1357
  %9 = load i32* %x, align 4, !dbg !1358
  %10 = icmp slt i32 %9, %end, !dbg !1358
  %11 = zext i1 %10 to i64, !dbg !1358
  call void @klee_assume(i64 %11) nounwind, !dbg !1358
  br label %bb7, !dbg !1358

bb7:                                              ; preds = %bb6, %bb5
  %12 = load i32* %x, align 4, !dbg !1359
  br label %bb8, !dbg !1359

bb8:                                              ; preds = %bb7, %bb1
  %.0 = phi i32 [ %12, %bb7 ], [ %start, %bb1 ]
  ret i32 %.0, !dbg !1360
}

declare void @klee_assume(i64)

define weak i8* @memmove(i8* %dst, i8* %src, i64 %count) nounwind {
entry:
  %0 = icmp eq i8* %src, %dst, !dbg !1361
  br i1 %0, label %bb8, label %bb1, !dbg !1361

bb1:                                              ; preds = %entry
  %1 = icmp ugt i8* %src, %dst, !dbg !1362
  %2 = icmp eq i64 %count, 0, !dbg !1363
  br i1 %1, label %bb3.preheader, label %bb4, !dbg !1362

bb3.preheader:                                    ; preds = %bb1
  br i1 %2, label %bb8, label %bb2, !dbg !1363

bb2:                                              ; preds = %bb2, %bb3.preheader
  %indvar19 = phi i64 [ %indvar.next20, %bb2 ], [ 0, %bb3.preheader ]
  %a.015 = getelementptr i8* %dst, i64 %indvar19
  %b.016 = getelementptr i8* %src, i64 %indvar19
  %3 = load i8* %b.016, align 1, !dbg !1363
  store i8 %3, i8* %a.015, align 1, !dbg !1363
  %indvar.next20 = add i64 %indvar19, 1
  %exitcond = icmp eq i64 %indvar.next20, %count
  br i1 %exitcond, label %bb8, label %bb2, !dbg !1363

bb4:                                              ; preds = %bb1
  br i1 %2, label %bb8, label %bb5.lr.ph, !dbg !1364

bb5.lr.ph:                                        ; preds = %bb4
  %tmp17 = add i64 %count, -1
  br label %bb5

bb5:                                              ; preds = %bb5, %bb5.lr.ph
  %indvar = phi i64 [ 0, %bb5.lr.ph ], [ %indvar.next, %bb5 ]
  %tmp3 = sub i64 %tmp17, %indvar
  %a.111 = getelementptr i8* %dst, i64 %tmp3
  %b.112 = getelementptr i8* %src, i64 %tmp3
  %4 = load i8* %b.112, align 1, !dbg !1364
  store i8 %4, i8* %a.111, align 1, !dbg !1364
  %indvar.next = add i64 %indvar, 1
  %exitcond2 = icmp eq i64 %indvar.next, %count
  br i1 %exitcond2, label %bb8, label %bb5, !dbg !1364

bb8:                                              ; preds = %bb5, %bb4, %bb2, %bb3.preheader, %entry
  ret i8* %dst, !dbg !1365
}

!llvm.dbg.sp = !{!0, !6, !11, !17, !23, !26, !29, !30, !41, !48, !57, !69, !78, !85, !126, !133, !137, !138, !142, !152, !194, !203, !214, !224, !240, !241, !242, !284, !322, !362, !404, !410, !416, !514, !525, !567, !606, !632, !674, !684, !693, !703, !
!llvm.dbg.gv = !{!852, !853, !856, !857, !861, !862, !863, !864, !866, !902, !904, !905, !906, !907, !908, !909, !911, !919, !923}
!llvm.dbg.lv.klee_div_zero_check = !{!924}
!llvm.dbg.lv.klee_int = !{!925, !926}
!llvm.dbg.lv.klee_overshift_check = !{!928, !929}
!llvm.dbg.lv.klee_range = !{!930, !931, !932, !933}
!llvm.dbg.lv.memcpy = !{!935, !936, !937, !938, !942}
!llvm.dbg.lv.memmove = !{!945, !946, !947, !948, !952}
!llvm.dbg.lv.mempcpy = !{!955, !956, !957, !958, !962}
!llvm.dbg.lv.memset = !{!965, !966, !967, !968}

!0 = metadata !{i32 589870, i32 0, metadata !1, metadata !"main", metadata !"main", metadata !"main", metadata !1, i32 21, metadata !3, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ()* @__user_main} ; [ DW_TAG_subprogram ]
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
!11 = metadata !{i32 589870, i32 0, metadata !12, metadata !"__check_one_fd", metadata !"__check_one_fd", metadata !"", metadata !12, i32 137, metadata !14, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32)* @__check_one_fd} ; [ DW
!12 = metadata !{i32 589865, metadata !"__uClibc_main.c", metadata !"/home/ecwong/klee-uclibc/libc/misc/internals", metadata !13} ; [ DW_TAG_file_type ]
!13 = metadata !{i32 589841, i32 0, i32 1, metadata !"__uClibc_main.c", metadata !"/home/ecwong/klee-uclibc/libc/misc/internals", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_comp
!14 = metadata !{i32 589845, metadata !12, metadata !"", metadata !12, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, null} ; [ DW_TAG_subroutine_type ]
!15 = metadata !{null, metadata !16, metadata !16}
!16 = metadata !{i32 589860, metadata !12, metadata !"int", metadata !12, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!17 = metadata !{i32 589870, i32 0, metadata !12, metadata !"gnu_dev_makedev", metadata !"gnu_dev_makedev", metadata !"", metadata !18, i32 55, metadata !19, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i32, i32)* @gnu_dev_makedev} ; [ D
!18 = metadata !{i32 589865, metadata !"sysmacros.h", metadata !"/home/ecwong/klee-uclibc/./include/sys", metadata !13} ; [ DW_TAG_file_type ]
!19 = metadata !{i32 589845, metadata !12, metadata !"", metadata !12, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !20, i32 0, null} ; [ DW_TAG_subroutine_type ]
!20 = metadata !{metadata !21, metadata !22, metadata !22}
!21 = metadata !{i32 589860, metadata !12, metadata !"long long unsigned int", metadata !12, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!22 = metadata !{i32 589860, metadata !12, metadata !"unsigned int", metadata !12, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!23 = metadata !{i32 589870, i32 0, metadata !12, metadata !"__check_suid", metadata !"__check_suid", metadata !"", metadata !12, i32 156, metadata !24, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ()* @__check_suid} ; [ DW_TAG_subprogram
!24 = metadata !{i32 589845, metadata !12, metadata !"", metadata !12, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !25, i32 0, null} ; [ DW_TAG_subroutine_type ]
!25 = metadata !{metadata !16}
!26 = metadata !{i32 589870, i32 0, metadata !12, metadata !"__uClibc_init", metadata !"__uClibc_init", metadata !"__uClibc_init", metadata !12, i32 188, metadata !27, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @__uClibc_init} ; [
!27 = metadata !{i32 589845, metadata !12, metadata !"", metadata !12, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !28, i32 0, null} ; [ DW_TAG_subroutine_type ]
!28 = metadata !{null}
!29 = metadata !{i32 589870, i32 0, metadata !12, metadata !"__uClibc_fini", metadata !"__uClibc_fini", metadata !"__uClibc_fini", metadata !12, i32 252, metadata !27, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @__uClibc_fini} ; [
!30 = metadata !{i32 589870, i32 0, metadata !12, metadata !"__uClibc_main", metadata !"__uClibc_main", metadata !"__uClibc_main", metadata !12, i32 281, metadata !31, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32 (i32, i8**, i8**)*
!31 = metadata !{i32 589845, metadata !12, metadata !"", metadata !12, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !32, i32 0, null} ; [ DW_TAG_subroutine_type ]
!32 = metadata !{null, metadata !33, metadata !16, metadata !36, metadata !39, metadata !39, metadata !39, metadata !40}
!33 = metadata !{i32 589839, metadata !12, metadata !"", metadata !12, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !34} ; [ DW_TAG_pointer_type ]
!34 = metadata !{i32 589845, metadata !12, metadata !"", metadata !12, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !35, i32 0, null} ; [ DW_TAG_subroutine_type ]
!35 = metadata !{metadata !16, metadata !16, metadata !36, metadata !36}
!36 = metadata !{i32 589839, metadata !12, metadata !"", metadata !12, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !37} ; [ DW_TAG_pointer_type ]
!37 = metadata !{i32 589839, metadata !12, metadata !"", metadata !12, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !38} ; [ DW_TAG_pointer_type ]
!38 = metadata !{i32 589860, metadata !12, metadata !"char", metadata !12, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!39 = metadata !{i32 589839, metadata !12, metadata !"", metadata !12, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !27} ; [ DW_TAG_pointer_type ]
!40 = metadata !{i32 589839, metadata !12, metadata !"", metadata !12, i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ]
!41 = metadata !{i32 589870, i32 0, metadata !42, metadata !"exit", metadata !"exit", metadata !"exit", metadata !44, i32 319, metadata !45, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32)* @exit} ; [ DW_TAG_subprogram ]
!42 = metadata !{i32 589865, metadata !"exit.c", metadata !"/home/ecwong/klee-uclibc/libc/stdlib", metadata !43} ; [ DW_TAG_file_type ]
!43 = metadata !{i32 589841, i32 0, i32 1, metadata !"exit.c", metadata !"/home/ecwong/klee-uclibc/libc/stdlib", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!44 = metadata !{i32 589865, metadata !"_atexit.c", metadata !"/home/ecwong/klee-uclibc/libc/stdlib", metadata !43} ; [ DW_TAG_file_type ]
!45 = metadata !{i32 589845, metadata !42, metadata !"", metadata !42, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !46, i32 0, null} ; [ DW_TAG_subroutine_type ]
!46 = metadata !{null, metadata !47}
!47 = metadata !{i32 589860, metadata !42, metadata !"int", metadata !42, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!48 = metadata !{i32 589870, i32 0, metadata !49, metadata !"puts", metadata !"puts", metadata !"puts", metadata !49, i32 14, metadata !51, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*)* @puts} ; [ DW_TAG_subprogram ]
!49 = metadata !{i32 589865, metadata !"puts.c", metadata !"/home/ecwong/klee-uclibc/libc/stdio", metadata !50} ; [ DW_TAG_file_type ]
!50 = metadata !{i32 589841, i32 0, i32 1, metadata !"puts.c", metadata !"/home/ecwong/klee-uclibc/libc/stdio", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!51 = metadata !{i32 589845, metadata !49, metadata !"", metadata !49, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !52, i32 0, null} ; [ DW_TAG_subroutine_type ]
!52 = metadata !{metadata !53, metadata !54}
!53 = metadata !{i32 589860, metadata !49, metadata !"int", metadata !49, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!54 = metadata !{i32 589839, metadata !49, metadata !"", metadata !49, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !55} ; [ DW_TAG_pointer_type ]
!55 = metadata !{i32 589862, metadata !49, metadata !"", metadata !49, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !56} ; [ DW_TAG_const_type ]
!56 = metadata !{i32 589860, metadata !49, metadata !"char", metadata !49, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!57 = metadata !{i32 589870, i32 0, metadata !58, metadata !"strncpy", metadata !"strncpy", metadata !"strncpy", metadata !58, i32 19, metadata !60, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i8*, i64)* @strncpy} ; [ DW_TAG_subpr
!58 = metadata !{i32 589865, metadata !"strncpy.c", metadata !"/home/ecwong/klee-uclibc/libc/string", metadata !59} ; [ DW_TAG_file_type ]
!59 = metadata !{i32 589841, i32 0, i32 1, metadata !"strncpy.c", metadata !"/home/ecwong/klee-uclibc/libc/string", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!60 = metadata !{i32 589845, metadata !58, metadata !"", metadata !58, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !61, i32 0, null} ; [ DW_TAG_subroutine_type ]
!61 = metadata !{metadata !62, metadata !62, metadata !64, metadata !66}
!62 = metadata !{i32 589839, metadata !58, metadata !"", metadata !58, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !63} ; [ DW_TAG_pointer_type ]
!63 = metadata !{i32 589860, metadata !58, metadata !"char", metadata !58, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!64 = metadata !{i32 589839, metadata !58, metadata !"", metadata !58, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !65} ; [ DW_TAG_pointer_type ]
!65 = metadata !{i32 589862, metadata !58, metadata !"", metadata !58, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !63} ; [ DW_TAG_const_type ]
!66 = metadata !{i32 589846, metadata !67, metadata !"size_t", metadata !67, i32 214, i64 0, i64 0, i64 0, i32 0, metadata !68} ; [ DW_TAG_typedef ]
!67 = metadata !{i32 589865, metadata !"stddef.h", metadata !"/home/ecwong/llvm-gcc4.2-2.9-x86_64-linux/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.2.1/include", metadata !59} ; [ DW_TAG_file_type ]
!68 = metadata !{i32 589860, metadata !58, metadata !"long unsigned int", metadata !58, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!69 = metadata !{i32 589870, i32 0, metadata !70, metadata !"__libc_system", metadata !"__libc_system", metadata !"__libc_system", metadata !70, i32 29, metadata !72, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*)* @__libc_system} ; 
!70 = metadata !{i32 589865, metadata !"system.c", metadata !"/home/ecwong/klee-uclibc/libc/stdlib", metadata !71} ; [ DW_TAG_file_type ]
!71 = metadata !{i32 589841, i32 0, i32 1, metadata !"system.c", metadata !"/home/ecwong/klee-uclibc/libc/stdlib", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!72 = metadata !{i32 589845, metadata !70, metadata !"", metadata !70, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !73, i32 0, null} ; [ DW_TAG_subroutine_type ]
!73 = metadata !{metadata !74, metadata !75}
!74 = metadata !{i32 589860, metadata !70, metadata !"int", metadata !70, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!75 = metadata !{i32 589839, metadata !70, metadata !"", metadata !70, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !76} ; [ DW_TAG_pointer_type ]
!76 = metadata !{i32 589862, metadata !70, metadata !"", metadata !70, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !77} ; [ DW_TAG_const_type ]
!77 = metadata !{i32 589860, metadata !70, metadata !"char", metadata !70, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!78 = metadata !{i32 589870, i32 0, metadata !79, metadata !"__errno_location", metadata !"__errno_location", metadata !"__errno_location", metadata !79, i32 12, metadata !81, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32* ()* @__errno_lo
!79 = metadata !{i32 589865, metadata !"__errno_location.c", metadata !"/home/ecwong/klee-uclibc/libc/misc/internals", metadata !80} ; [ DW_TAG_file_type ]
!80 = metadata !{i32 589841, i32 0, i32 1, metadata !"__errno_location.c", metadata !"/home/ecwong/klee-uclibc/libc/misc/internals", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_c
!81 = metadata !{i32 589845, metadata !79, metadata !"", metadata !79, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !82, i32 0, null} ; [ DW_TAG_subroutine_type ]
!82 = metadata !{metadata !83}
!83 = metadata !{i32 589839, metadata !79, metadata !"", metadata !79, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !84} ; [ DW_TAG_pointer_type ]
!84 = metadata !{i32 589860, metadata !79, metadata !"int", metadata !79, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!85 = metadata !{i32 589870, i32 0, metadata !86, metadata !"__fputc_unlocked", metadata !"__fputc_unlocked", metadata !"__fputc_unlocked", metadata !88, i32 20, metadata !89, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, %struct.FI
!86 = metadata !{i32 589865, metadata !"fputc_unlocked.c", metadata !"/home/ecwong/klee-uclibc/libc/stdio", metadata !87} ; [ DW_TAG_file_type ]
!87 = metadata !{i32 589841, i32 0, i32 1, metadata !"fputc_unlocked.c", metadata !"/home/ecwong/klee-uclibc/libc/stdio", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit
!88 = metadata !{i32 589865, metadata !"fputc.c", metadata !"/home/ecwong/klee-uclibc/libc/stdio", metadata !87} ; [ DW_TAG_file_type ]
!89 = metadata !{i32 589845, metadata !86, metadata !"", metadata !86, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !90, i32 0, null} ; [ DW_TAG_subroutine_type ]
!90 = metadata !{metadata !91, metadata !91, metadata !92}
!91 = metadata !{i32 589860, metadata !86, metadata !"int", metadata !86, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!92 = metadata !{i32 589839, metadata !86, metadata !"", metadata !86, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !93} ; [ DW_TAG_pointer_type ]
!93 = metadata !{i32 589846, metadata !94, metadata !"FILE", metadata !94, i32 46, i64 0, i64 0, i64 0, i32 0, metadata !95} ; [ DW_TAG_typedef ]
!94 = metadata !{i32 589865, metadata !"stdio.h", metadata !"/home/ecwong/klee-uclibc/./include", metadata !87} ; [ DW_TAG_file_type ]
!95 = metadata !{i32 589843, metadata !86, metadata !"__STDIO_FILE_STRUCT", metadata !94, i32 46, i64 640, i64 64, i64 0, i32 0, null, metadata !96, i32 0, null} ; [ DW_TAG_structure_type ]
!96 = metadata !{metadata !97, metadata !100, metadata !105, metadata !106, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !115, metadata !119}
!97 = metadata !{i32 589837, metadata !95, metadata !"__modeflags", metadata !98, i32 234, i64 16, i64 16, i64 0, i32 0, metadata !99} ; [ DW_TAG_member ]
!98 = metadata !{i32 589865, metadata !"uClibc_stdio.h", metadata !"/home/ecwong/klee-uclibc/./include/bits", metadata !87} ; [ DW_TAG_file_type ]
!99 = metadata !{i32 589860, metadata !86, metadata !"short unsigned int", metadata !86, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!100 = metadata !{i32 589837, metadata !95, metadata !"__ungot_width", metadata !98, i32 237, i64 16, i64 8, i64 16, i32 0, metadata !101} ; [ DW_TAG_member ]
!101 = metadata !{i32 589825, metadata !86, metadata !"", metadata !86, i32 0, i64 16, i64 8, i64 0, i32 0, metadata !102, metadata !103, i32 0, null} ; [ DW_TAG_array_type ]
!102 = metadata !{i32 589860, metadata !86, metadata !"unsigned char", metadata !86, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!103 = metadata !{metadata !104}
!104 = metadata !{i32 589857, i64 0, i64 1}       ; [ DW_TAG_subrange_type ]
!105 = metadata !{i32 589837, metadata !95, metadata !"__filedes", metadata !98, i32 244, i64 32, i64 32, i64 32, i32 0, metadata !91} ; [ DW_TAG_member ]
!106 = metadata !{i32 589837, metadata !95, metadata !"__bufstart", metadata !98, i32 246, i64 64, i64 64, i64 64, i32 0, metadata !107} ; [ DW_TAG_member ]
!107 = metadata !{i32 589839, metadata !86, metadata !"", metadata !86, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !102} ; [ DW_TAG_pointer_type ]
!108 = metadata !{i32 589837, metadata !95, metadata !"__bufend", metadata !98, i32 247, i64 64, i64 64, i64 128, i32 0, metadata !107} ; [ DW_TAG_member ]
!109 = metadata !{i32 589837, metadata !95, metadata !"__bufpos", metadata !98, i32 248, i64 64, i64 64, i64 192, i32 0, metadata !107} ; [ DW_TAG_member ]
!110 = metadata !{i32 589837, metadata !95, metadata !"__bufread", metadata !98, i32 249, i64 64, i64 64, i64 256, i32 0, metadata !107} ; [ DW_TAG_member ]
!111 = metadata !{i32 589837, metadata !95, metadata !"__bufgetc_u", metadata !98, i32 252, i64 64, i64 64, i64 320, i32 0, metadata !107} ; [ DW_TAG_member ]
!112 = metadata !{i32 589837, metadata !95, metadata !"__bufputc_u", metadata !98, i32 255, i64 64, i64 64, i64 384, i32 0, metadata !107} ; [ DW_TAG_member ]
!113 = metadata !{i32 589837, metadata !95, metadata !"__nextopen", metadata !98, i32 261, i64 64, i64 64, i64 448, i32 0, metadata !114} ; [ DW_TAG_member ]
!114 = metadata !{i32 589839, metadata !86, metadata !"", metadata !86, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !95} ; [ DW_TAG_pointer_type ]
!115 = metadata !{i32 589837, metadata !95, metadata !"__ungot", metadata !98, i32 268, i64 64, i64 32, i64 512, i32 0, metadata !116} ; [ DW_TAG_member ]
!116 = metadata !{i32 589825, metadata !86, metadata !"", metadata !86, i32 0, i64 64, i64 32, i64 0, i32 0, metadata !117, metadata !103, i32 0, null} ; [ DW_TAG_array_type ]
!117 = metadata !{i32 589846, metadata !118, metadata !"wchar_t", metadata !118, i32 326, i64 0, i64 0, i64 0, i32 0, metadata !91} ; [ DW_TAG_typedef ]
!118 = metadata !{i32 589865, metadata !"stddef.h", metadata !"/home/ecwong/llvm-gcc4.2-2.9-x86_64-linux/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.2.1/include", metadata !87} ; [ DW_TAG_file_type ]
!119 = metadata !{i32 589837, metadata !95, metadata !"__state", metadata !98, i32 271, i64 64, i64 32, i64 576, i32 0, metadata !120} ; [ DW_TAG_member ]
!120 = metadata !{i32 589846, metadata !121, metadata !"__mbstate_t", metadata !121, i32 85, i64 0, i64 0, i64 0, i32 0, metadata !122} ; [ DW_TAG_typedef ]
!121 = metadata !{i32 589865, metadata !"wchar.h", metadata !"/home/ecwong/klee-uclibc/./include", metadata !87} ; [ DW_TAG_file_type ]
!122 = metadata !{i32 589843, metadata !86, metadata !"", metadata !121, i32 82, i64 64, i64 32, i64 0, i32 0, null, metadata !123, i32 0, null} ; [ DW_TAG_structure_type ]
!123 = metadata !{metadata !124, metadata !125}
!124 = metadata !{i32 589837, metadata !122, metadata !"__mask", metadata !121, i32 83, i64 32, i64 32, i64 0, i32 0, metadata !117} ; [ DW_TAG_member ]
!125 = metadata !{i32 589837, metadata !122, metadata !"__wc", metadata !121, i32 84, i64 32, i64 32, i64 32, i32 0, metadata !117} ; [ DW_TAG_member ]
!126 = metadata !{i32 589870, i32 0, metadata !127, metadata !"__h_errno_location", metadata !"__h_errno_location", metadata !"__h_errno_location", metadata !127, i32 11, metadata !129, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32* ()* @
!127 = metadata !{i32 589865, metadata !"__h_errno_location.c", metadata !"/home/ecwong/klee-uclibc/libc/misc/internals", metadata !128} ; [ DW_TAG_file_type ]
!128 = metadata !{i32 589841, i32 0, i32 1, metadata !"__h_errno_location.c", metadata !"/home/ecwong/klee-uclibc/libc/misc/internals", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TA
!129 = metadata !{i32 589845, metadata !127, metadata !"", metadata !127, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !130, i32 0, null} ; [ DW_TAG_subroutine_type ]
!130 = metadata !{metadata !131}
!131 = metadata !{i32 589839, metadata !127, metadata !"", metadata !127, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !132} ; [ DW_TAG_pointer_type ]
!132 = metadata !{i32 589860, metadata !127, metadata !"int", metadata !127, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!133 = metadata !{i32 589870, i32 0, metadata !134, metadata !"_stdio_term", metadata !"_stdio_term", metadata !"_stdio_term", metadata !134, i32 211, metadata !136, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @_stdio_term} ; [ DW_
!134 = metadata !{i32 589865, metadata !"_stdio.c", metadata !"/home/ecwong/klee-uclibc/libc/stdio", metadata !135} ; [ DW_TAG_file_type ]
!135 = metadata !{i32 589841, i32 0, i32 1, metadata !"_stdio.c", metadata !"/home/ecwong/klee-uclibc/libc/stdio", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!136 = metadata !{i32 589845, metadata !134, metadata !"", metadata !134, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !28, i32 0, null} ; [ DW_TAG_subroutine_type ]
!137 = metadata !{i32 589870, i32 0, metadata !134, metadata !"_stdio_init", metadata !"_stdio_init", metadata !"_stdio_init", metadata !134, i32 278, metadata !136, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @_stdio_init} ; [ DW_
!138 = metadata !{i32 589870, i32 0, metadata !139, metadata !"abort", metadata !"abort", metadata !"abort", metadata !139, i32 57, metadata !141, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @abort} ; [ DW_TAG_subprogram ]
!139 = metadata !{i32 589865, metadata !"abort.c", metadata !"/home/ecwong/klee-uclibc/libc/stdlib", metadata !140} ; [ DW_TAG_file_type ]
!140 = metadata !{i32 589841, i32 0, i32 1, metadata !"abort.c", metadata !"/home/ecwong/klee-uclibc/libc/stdlib", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!141 = metadata !{i32 589845, metadata !139, metadata !"", metadata !139, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !28, i32 0, null} ; [ DW_TAG_subroutine_type ]
!142 = metadata !{i32 589870, i32 0, metadata !143, metadata !"execl", metadata !"execl", metadata !"execl", metadata !145, i32 114, metadata !146, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*, i8*, ...)* @execl} ; [ DW_TAG_subprogr
!143 = metadata !{i32 589865, metadata !"execl.c", metadata !"/home/ecwong/klee-uclibc/libc/unistd", metadata !144} ; [ DW_TAG_file_type ]
!144 = metadata !{i32 589841, i32 0, i32 1, metadata !"execl.c", metadata !"/home/ecwong/klee-uclibc/libc/unistd", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!145 = metadata !{i32 589865, metadata !"exec.c", metadata !"/home/ecwong/klee-uclibc/libc/unistd", metadata !144} ; [ DW_TAG_file_type ]
!146 = metadata !{i32 589845, metadata !143, metadata !"", metadata !143, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !147, i32 0, null} ; [ DW_TAG_subroutine_type ]
!147 = metadata !{metadata !148, metadata !149, metadata !149}
!148 = metadata !{i32 589860, metadata !143, metadata !"int", metadata !143, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!149 = metadata !{i32 589839, metadata !143, metadata !"", metadata !143, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !150} ; [ DW_TAG_pointer_type ]
!150 = metadata !{i32 589862, metadata !143, metadata !"", metadata !143, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !151} ; [ DW_TAG_const_type ]
!151 = metadata !{i32 589860, metadata !143, metadata !"char", metadata !143, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!152 = metadata !{i32 589870, i32 0, metadata !153, metadata !"fputs_unlocked", metadata !"fputs_unlocked", metadata !"fputs_unlocked", metadata !155, i32 24, metadata !156, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*, %struct.FILE
!153 = metadata !{i32 589865, metadata !"fputs_unlocked.c", metadata !"/home/ecwong/klee-uclibc/libc/stdio", metadata !154} ; [ DW_TAG_file_type ]
!154 = metadata !{i32 589841, i32 0, i32 1, metadata !"fputs_unlocked.c", metadata !"/home/ecwong/klee-uclibc/libc/stdio", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_uni
!155 = metadata !{i32 589865, metadata !"fputs.c", metadata !"/home/ecwong/klee-uclibc/libc/stdio", metadata !154} ; [ DW_TAG_file_type ]
!156 = metadata !{i32 589845, metadata !153, metadata !"", metadata !153, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !157, i32 0, null} ; [ DW_TAG_subroutine_type ]
!157 = metadata !{metadata !158, metadata !159, metadata !162}
!158 = metadata !{i32 589860, metadata !153, metadata !"int", metadata !153, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!159 = metadata !{i32 589839, metadata !153, metadata !"", metadata !153, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !160} ; [ DW_TAG_pointer_type ]
!160 = metadata !{i32 589862, metadata !153, metadata !"", metadata !153, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !161} ; [ DW_TAG_const_type ]
!161 = metadata !{i32 589860, metadata !153, metadata !"char", metadata !153, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!162 = metadata !{i32 589839, metadata !153, metadata !"", metadata !153, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !163} ; [ DW_TAG_pointer_type ]
!163 = metadata !{i32 589846, metadata !164, metadata !"FILE", metadata !164, i32 46, i64 0, i64 0, i64 0, i32 0, metadata !165} ; [ DW_TAG_typedef ]
!164 = metadata !{i32 589865, metadata !"stdio.h", metadata !"/home/ecwong/klee-uclibc/./include", metadata !154} ; [ DW_TAG_file_type ]
!165 = metadata !{i32 589843, metadata !153, metadata !"__STDIO_FILE_STRUCT", metadata !164, i32 46, i64 640, i64 64, i64 0, i32 0, null, metadata !166, i32 0, null} ; [ DW_TAG_structure_type ]
!166 = metadata !{metadata !167, metadata !170, metadata !173, metadata !174, metadata !176, metadata !177, metadata !178, metadata !179, metadata !180, metadata !181, metadata !183, metadata !187}
!167 = metadata !{i32 589837, metadata !165, metadata !"__modeflags", metadata !168, i32 234, i64 16, i64 16, i64 0, i32 0, metadata !169} ; [ DW_TAG_member ]
!168 = metadata !{i32 589865, metadata !"uClibc_stdio.h", metadata !"/home/ecwong/klee-uclibc/./include/bits", metadata !154} ; [ DW_TAG_file_type ]
!169 = metadata !{i32 589860, metadata !153, metadata !"short unsigned int", metadata !153, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!170 = metadata !{i32 589837, metadata !165, metadata !"__ungot_width", metadata !168, i32 237, i64 16, i64 8, i64 16, i32 0, metadata !171} ; [ DW_TAG_member ]
!171 = metadata !{i32 589825, metadata !153, metadata !"", metadata !153, i32 0, i64 16, i64 8, i64 0, i32 0, metadata !172, metadata !103, i32 0, null} ; [ DW_TAG_array_type ]
!172 = metadata !{i32 589860, metadata !153, metadata !"unsigned char", metadata !153, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!173 = metadata !{i32 589837, metadata !165, metadata !"__filedes", metadata !168, i32 244, i64 32, i64 32, i64 32, i32 0, metadata !158} ; [ DW_TAG_member ]
!174 = metadata !{i32 589837, metadata !165, metadata !"__bufstart", metadata !168, i32 246, i64 64, i64 64, i64 64, i32 0, metadata !175} ; [ DW_TAG_member ]
!175 = metadata !{i32 589839, metadata !153, metadata !"", metadata !153, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !172} ; [ DW_TAG_pointer_type ]
!176 = metadata !{i32 589837, metadata !165, metadata !"__bufend", metadata !168, i32 247, i64 64, i64 64, i64 128, i32 0, metadata !175} ; [ DW_TAG_member ]
!177 = metadata !{i32 589837, metadata !165, metadata !"__bufpos", metadata !168, i32 248, i64 64, i64 64, i64 192, i32 0, metadata !175} ; [ DW_TAG_member ]
!178 = metadata !{i32 589837, metadata !165, metadata !"__bufread", metadata !168, i32 249, i64 64, i64 64, i64 256, i32 0, metadata !175} ; [ DW_TAG_member ]
!179 = metadata !{i32 589837, metadata !165, metadata !"__bufgetc_u", metadata !168, i32 252, i64 64, i64 64, i64 320, i32 0, metadata !175} ; [ DW_TAG_member ]
!180 = metadata !{i32 589837, metadata !165, metadata !"__bufputc_u", metadata !168, i32 255, i64 64, i64 64, i64 384, i32 0, metadata !175} ; [ DW_TAG_member ]
!181 = metadata !{i32 589837, metadata !165, metadata !"__nextopen", metadata !168, i32 261, i64 64, i64 64, i64 448, i32 0, metadata !182} ; [ DW_TAG_member ]
!182 = metadata !{i32 589839, metadata !153, metadata !"", metadata !153, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !165} ; [ DW_TAG_pointer_type ]
!183 = metadata !{i32 589837, metadata !165, metadata !"__ungot", metadata !168, i32 268, i64 64, i64 32, i64 512, i32 0, metadata !184} ; [ DW_TAG_member ]
!184 = metadata !{i32 589825, metadata !153, metadata !"", metadata !153, i32 0, i64 64, i64 32, i64 0, i32 0, metadata !185, metadata !103, i32 0, null} ; [ DW_TAG_array_type ]
!185 = metadata !{i32 589846, metadata !186, metadata !"wchar_t", metadata !186, i32 326, i64 0, i64 0, i64 0, i32 0, metadata !158} ; [ DW_TAG_typedef ]
!186 = metadata !{i32 589865, metadata !"stddef.h", metadata !"/home/ecwong/llvm-gcc4.2-2.9-x86_64-linux/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.2.1/include", metadata !154} ; [ DW_TAG_file_type ]
!187 = metadata !{i32 589837, metadata !165, metadata !"__state", metadata !168, i32 271, i64 64, i64 32, i64 576, i32 0, metadata !188} ; [ DW_TAG_member ]
!188 = metadata !{i32 589846, metadata !189, metadata !"__mbstate_t", metadata !189, i32 85, i64 0, i64 0, i64 0, i32 0, metadata !190} ; [ DW_TAG_typedef ]
!189 = metadata !{i32 589865, metadata !"wchar.h", metadata !"/home/ecwong/klee-uclibc/./include", metadata !154} ; [ DW_TAG_file_type ]
!190 = metadata !{i32 589843, metadata !153, metadata !"", metadata !189, i32 82, i64 64, i64 32, i64 0, i32 0, null, metadata !191, i32 0, null} ; [ DW_TAG_structure_type ]
!191 = metadata !{metadata !192, metadata !193}
!192 = metadata !{i32 589837, metadata !190, metadata !"__mask", metadata !189, i32 83, i64 32, i64 32, i64 0, i32 0, metadata !185} ; [ DW_TAG_member ]
!193 = metadata !{i32 589837, metadata !190, metadata !"__wc", metadata !189, i32 84, i64 32, i64 32, i64 32, i32 0, metadata !185} ; [ DW_TAG_member ]
!194 = metadata !{i32 589870, i32 0, metadata !195, metadata !"memcpy", metadata !"memcpy", metadata !"memcpy", metadata !195, i32 19, metadata !197, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i8*, i64)* @memcpy} ; [ DW_TAG_subpr
!195 = metadata !{i32 589865, metadata !"memcpy.c", metadata !"/home/ecwong/klee-uclibc/libc/string", metadata !196} ; [ DW_TAG_file_type ]
!196 = metadata !{i32 589841, i32 0, i32 1, metadata !"memcpy.c", metadata !"/home/ecwong/klee-uclibc/libc/string", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!197 = metadata !{i32 589845, metadata !195, metadata !"", metadata !195, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !198, i32 0, null} ; [ DW_TAG_subroutine_type ]
!198 = metadata !{metadata !199, metadata !199, metadata !199, metadata !200}
!199 = metadata !{i32 589839, metadata !195, metadata !"", metadata !195, i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ]
!200 = metadata !{i32 589846, metadata !201, metadata !"size_t", metadata !201, i32 214, i64 0, i64 0, i64 0, i32 0, metadata !202} ; [ DW_TAG_typedef ]
!201 = metadata !{i32 589865, metadata !"stddef.h", metadata !"/home/ecwong/llvm-gcc4.2-2.9-x86_64-linux/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.2.1/include", metadata !196} ; [ DW_TAG_file_type ]
!202 = metadata !{i32 589860, metadata !195, metadata !"long unsigned int", metadata !195, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!203 = metadata !{i32 589870, i32 0, metadata !204, metadata !"__bsd_signal", metadata !"__bsd_signal", metadata !"__bsd_signal", metadata !204, i32 34, metadata !206, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32)* (i32, void (i32)
!204 = metadata !{i32 589865, metadata !"signal.c", metadata !"/home/ecwong/klee-uclibc/libc/signal", metadata !205} ; [ DW_TAG_file_type ]
!205 = metadata !{i32 589841, i32 0, i32 1, metadata !"signal.c", metadata !"/home/ecwong/klee-uclibc/libc/signal", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!206 = metadata !{i32 589845, metadata !204, metadata !"", metadata !204, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !207, i32 0, null} ; [ DW_TAG_subroutine_type ]
!207 = metadata !{metadata !208, metadata !213, metadata !208}
!208 = metadata !{i32 589846, metadata !209, metadata !"__sighandler_t", metadata !209, i32 75, i64 0, i64 0, i64 0, i32 0, metadata !210} ; [ DW_TAG_typedef ]
!209 = metadata !{i32 589865, metadata !"signal.h", metadata !"/home/ecwong/klee-uclibc/./include", metadata !205} ; [ DW_TAG_file_type ]
!210 = metadata !{i32 589839, metadata !204, metadata !"", metadata !204, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !211} ; [ DW_TAG_pointer_type ]
!211 = metadata !{i32 589845, metadata !204, metadata !"", metadata !204, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !212, i32 0, null} ; [ DW_TAG_subroutine_type ]
!212 = metadata !{null, metadata !213}
!213 = metadata !{i32 589860, metadata !204, metadata !"int", metadata !204, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!214 = metadata !{i32 589870, i32 0, metadata !215, metadata !"memset", metadata !"memset", metadata !"memset", metadata !215, i32 18, metadata !217, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i32, i64)* @memset} ; [ DW_TAG_subpr
!215 = metadata !{i32 589865, metadata !"memset.c", metadata !"/home/ecwong/klee-uclibc/libc/string", metadata !216} ; [ DW_TAG_file_type ]
!216 = metadata !{i32 589841, i32 0, i32 1, metadata !"memset.c", metadata !"/home/ecwong/klee-uclibc/libc/string", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!217 = metadata !{i32 589845, metadata !215, metadata !"", metadata !215, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !218, i32 0, null} ; [ DW_TAG_subroutine_type ]
!218 = metadata !{metadata !219, metadata !219, metadata !220, metadata !221}
!219 = metadata !{i32 589839, metadata !215, metadata !"", metadata !215, i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ]
!220 = metadata !{i32 589860, metadata !215, metadata !"int", metadata !215, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!221 = metadata !{i32 589846, metadata !222, metadata !"size_t", metadata !222, i32 214, i64 0, i64 0, i64 0, i32 0, metadata !223} ; [ DW_TAG_typedef ]
!222 = metadata !{i32 589865, metadata !"stddef.h", metadata !"/home/ecwong/llvm-gcc4.2-2.9-x86_64-linux/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.2.1/include", metadata !216} ; [ DW_TAG_file_type ]
!223 = metadata !{i32 589860, metadata !215, metadata !"long unsigned int", metadata !215, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!224 = metadata !{i32 589870, i32 0, metadata !225, metadata !"__sigismember", metadata !"__sigismember", metadata !"__sigismember", metadata !227, i32 117, metadata !228, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.__sigset_t*
!225 = metadata !{i32 589865, metadata !"sigsetops.c", metadata !"/home/ecwong/klee-uclibc/libc/signal", metadata !226} ; [ DW_TAG_file_type ]
!226 = metadata !{i32 589841, i32 0, i32 1, metadata !"sigsetops.c", metadata !"/home/ecwong/klee-uclibc/libc/signal", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!227 = metadata !{i32 589865, metadata !"sigset.h", metadata !"/home/ecwong/klee-uclibc/./include/bits", metadata !226} ; [ DW_TAG_file_type ]
!228 = metadata !{i32 589845, metadata !225, metadata !"", metadata !225, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !229, i32 0, null} ; [ DW_TAG_subroutine_type ]
!229 = metadata !{metadata !230, metadata !231, metadata !230}
!230 = metadata !{i32 589860, metadata !225, metadata !"int", metadata !225, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!231 = metadata !{i32 589839, metadata !225, metadata !"", metadata !225, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !232} ; [ DW_TAG_pointer_type ]
!232 = metadata !{i32 589846, metadata !227, metadata !"__sigset_t", metadata !227, i32 31, i64 0, i64 0, i64 0, i32 0, metadata !233} ; [ DW_TAG_typedef ]
!233 = metadata !{i32 589843, metadata !225, metadata !"", metadata !227, i32 29, i64 1024, i64 64, i64 0, i32 0, null, metadata !234, i32 0, null} ; [ DW_TAG_structure_type ]
!234 = metadata !{metadata !235}
!235 = metadata !{i32 589837, metadata !233, metadata !"__val", metadata !227, i32 30, i64 1024, i64 64, i64 0, i32 0, metadata !236} ; [ DW_TAG_member ]
!236 = metadata !{i32 589825, metadata !225, metadata !"", metadata !225, i32 0, i64 1024, i64 64, i64 0, i32 0, metadata !237, metadata !238, i32 0, null} ; [ DW_TAG_array_type ]
!237 = metadata !{i32 589860, metadata !225, metadata !"long unsigned int", metadata !225, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!238 = metadata !{metadata !239}
!239 = metadata !{i32 589857, i64 0, i64 15}      ; [ DW_TAG_subrange_type ]
!240 = metadata !{i32 589870, i32 0, metadata !225, metadata !"__sigaddset", metadata !"__sigaddset", metadata !"__sigaddset", metadata !227, i32 118, metadata !228, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.__sigset_t*, i32)
!241 = metadata !{i32 589870, i32 0, metadata !225, metadata !"__sigdelset", metadata !"__sigdelset", metadata !"__sigdelset", metadata !227, i32 119, metadata !228, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.__sigset_t*, i32)
!242 = metadata !{i32 589870, i32 0, metadata !243, metadata !"__stdio_WRITE", metadata !"__stdio_WRITE", metadata !"__stdio_WRITE", metadata !243, i32 35, metadata !245, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (%struct.FILE*, i8*, 
!243 = metadata !{i32 589865, metadata !"_WRITE.c", metadata !"/home/ecwong/klee-uclibc/libc/stdio", metadata !244} ; [ DW_TAG_file_type ]
!244 = metadata !{i32 589841, i32 0, i32 1, metadata !"_WRITE.c", metadata !"/home/ecwong/klee-uclibc/libc/stdio", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!245 = metadata !{i32 589845, metadata !243, metadata !"", metadata !243, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !246, i32 0, null} ; [ DW_TAG_subroutine_type ]
!246 = metadata !{metadata !247, metadata !250, metadata !282, metadata !247}
!247 = metadata !{i32 589846, metadata !248, metadata !"size_t", metadata !248, i32 214, i64 0, i64 0, i64 0, i32 0, metadata !249} ; [ DW_TAG_typedef ]
!248 = metadata !{i32 589865, metadata !"stddef.h", metadata !"/home/ecwong/llvm-gcc4.2-2.9-x86_64-linux/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.2.1/include", metadata !244} ; [ DW_TAG_file_type ]
!249 = metadata !{i32 589860, metadata !243, metadata !"long unsigned int", metadata !243, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!250 = metadata !{i32 589839, metadata !243, metadata !"", metadata !243, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !251} ; [ DW_TAG_pointer_type ]
!251 = metadata !{i32 589846, metadata !252, metadata !"FILE", metadata !252, i32 46, i64 0, i64 0, i64 0, i32 0, metadata !253} ; [ DW_TAG_typedef ]
!252 = metadata !{i32 589865, metadata !"stdio.h", metadata !"/home/ecwong/klee-uclibc/./include", metadata !244} ; [ DW_TAG_file_type ]
!253 = metadata !{i32 589843, metadata !243, metadata !"__STDIO_FILE_STRUCT", metadata !252, i32 46, i64 640, i64 64, i64 0, i32 0, null, metadata !254, i32 0, null} ; [ DW_TAG_structure_type ]
!254 = metadata !{metadata !255, metadata !258, metadata !261, metadata !263, metadata !265, metadata !266, metadata !267, metadata !268, metadata !269, metadata !270, metadata !272, metadata !275}
!255 = metadata !{i32 589837, metadata !253, metadata !"__modeflags", metadata !256, i32 234, i64 16, i64 16, i64 0, i32 0, metadata !257} ; [ DW_TAG_member ]
!256 = metadata !{i32 589865, metadata !"uClibc_stdio.h", metadata !"/home/ecwong/klee-uclibc/./include/bits", metadata !244} ; [ DW_TAG_file_type ]
!257 = metadata !{i32 589860, metadata !243, metadata !"short unsigned int", metadata !243, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!258 = metadata !{i32 589837, metadata !253, metadata !"__ungot_width", metadata !256, i32 237, i64 16, i64 8, i64 16, i32 0, metadata !259} ; [ DW_TAG_member ]
!259 = metadata !{i32 589825, metadata !243, metadata !"", metadata !243, i32 0, i64 16, i64 8, i64 0, i32 0, metadata !260, metadata !103, i32 0, null} ; [ DW_TAG_array_type ]
!260 = metadata !{i32 589860, metadata !243, metadata !"unsigned char", metadata !243, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!261 = metadata !{i32 589837, metadata !253, metadata !"__filedes", metadata !256, i32 244, i64 32, i64 32, i64 32, i32 0, metadata !262} ; [ DW_TAG_member ]
!262 = metadata !{i32 589860, metadata !243, metadata !"int", metadata !243, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!263 = metadata !{i32 589837, metadata !253, metadata !"__bufstart", metadata !256, i32 246, i64 64, i64 64, i64 64, i32 0, metadata !264} ; [ DW_TAG_member ]
!264 = metadata !{i32 589839, metadata !243, metadata !"", metadata !243, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !260} ; [ DW_TAG_pointer_type ]
!265 = metadata !{i32 589837, metadata !253, metadata !"__bufend", metadata !256, i32 247, i64 64, i64 64, i64 128, i32 0, metadata !264} ; [ DW_TAG_member ]
!266 = metadata !{i32 589837, metadata !253, metadata !"__bufpos", metadata !256, i32 248, i64 64, i64 64, i64 192, i32 0, metadata !264} ; [ DW_TAG_member ]
!267 = metadata !{i32 589837, metadata !253, metadata !"__bufread", metadata !256, i32 249, i64 64, i64 64, i64 256, i32 0, metadata !264} ; [ DW_TAG_member ]
!268 = metadata !{i32 589837, metadata !253, metadata !"__bufgetc_u", metadata !256, i32 252, i64 64, i64 64, i64 320, i32 0, metadata !264} ; [ DW_TAG_member ]
!269 = metadata !{i32 589837, metadata !253, metadata !"__bufputc_u", metadata !256, i32 255, i64 64, i64 64, i64 384, i32 0, metadata !264} ; [ DW_TAG_member ]
!270 = metadata !{i32 589837, metadata !253, metadata !"__nextopen", metadata !256, i32 261, i64 64, i64 64, i64 448, i32 0, metadata !271} ; [ DW_TAG_member ]
!271 = metadata !{i32 589839, metadata !243, metadata !"", metadata !243, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !253} ; [ DW_TAG_pointer_type ]
!272 = metadata !{i32 589837, metadata !253, metadata !"__ungot", metadata !256, i32 268, i64 64, i64 32, i64 512, i32 0, metadata !273} ; [ DW_TAG_member ]
!273 = metadata !{i32 589825, metadata !243, metadata !"", metadata !243, i32 0, i64 64, i64 32, i64 0, i32 0, metadata !274, metadata !103, i32 0, null} ; [ DW_TAG_array_type ]
!274 = metadata !{i32 589846, metadata !248, metadata !"wchar_t", metadata !248, i32 326, i64 0, i64 0, i64 0, i32 0, metadata !262} ; [ DW_TAG_typedef ]
!275 = metadata !{i32 589837, metadata !253, metadata !"__state", metadata !256, i32 271, i64 64, i64 32, i64 576, i32 0, metadata !276} ; [ DW_TAG_member ]
!276 = metadata !{i32 589846, metadata !277, metadata !"__mbstate_t", metadata !277, i32 85, i64 0, i64 0, i64 0, i32 0, metadata !278} ; [ DW_TAG_typedef ]
!277 = metadata !{i32 589865, metadata !"wchar.h", metadata !"/home/ecwong/klee-uclibc/./include", metadata !244} ; [ DW_TAG_file_type ]
!278 = metadata !{i32 589843, metadata !243, metadata !"", metadata !277, i32 82, i64 64, i64 32, i64 0, i32 0, null, metadata !279, i32 0, null} ; [ DW_TAG_structure_type ]
!279 = metadata !{metadata !280, metadata !281}
!280 = metadata !{i32 589837, metadata !278, metadata !"__mask", metadata !277, i32 83, i64 32, i64 32, i64 0, i32 0, metadata !274} ; [ DW_TAG_member ]
!281 = metadata !{i32 589837, metadata !278, metadata !"__wc", metadata !277, i32 84, i64 32, i64 32, i64 32, i32 0, metadata !274} ; [ DW_TAG_member ]
!282 = metadata !{i32 589839, metadata !243, metadata !"", metadata !243, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !283} ; [ DW_TAG_pointer_type ]
!283 = metadata !{i32 589862, metadata !243, metadata !"", metadata !243, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !260} ; [ DW_TAG_const_type ]
!284 = metadata !{i32 589870, i32 0, metadata !285, metadata !"__stdio_trans2w_o", metadata !"__stdio_trans2w_o", metadata !"__stdio_trans2w_o", metadata !285, i32 30, metadata !287, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.
!285 = metadata !{i32 589865, metadata !"_trans2w.c", metadata !"/home/ecwong/klee-uclibc/libc/stdio", metadata !286} ; [ DW_TAG_file_type ]
!286 = metadata !{i32 589841, i32 0, i32 1, metadata !"_trans2w.c", metadata !"/home/ecwong/klee-uclibc/libc/stdio", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!287 = metadata !{i32 589845, metadata !285, metadata !"", metadata !285, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !288, i32 0, null} ; [ DW_TAG_subroutine_type ]
!288 = metadata !{metadata !289, metadata !290, metadata !289}
!289 = metadata !{i32 589860, metadata !285, metadata !"int", metadata !285, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!290 = metadata !{i32 589839, metadata !285, metadata !"", metadata !285, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !291} ; [ DW_TAG_pointer_type ]
!291 = metadata !{i32 589846, metadata !292, metadata !"FILE", metadata !292, i32 46, i64 0, i64 0, i64 0, i32 0, metadata !293} ; [ DW_TAG_typedef ]
!292 = metadata !{i32 589865, metadata !"stdio.h", metadata !"/home/ecwong/klee-uclibc/./include", metadata !286} ; [ DW_TAG_file_type ]
!293 = metadata !{i32 589843, metadata !285, metadata !"__STDIO_FILE_STRUCT", metadata !292, i32 46, i64 640, i64 64, i64 0, i32 0, null, metadata !294, i32 0, null} ; [ DW_TAG_structure_type ]
!294 = metadata !{metadata !295, metadata !298, metadata !301, metadata !302, metadata !304, metadata !305, metadata !306, metadata !307, metadata !308, metadata !309, metadata !311, metadata !315}
!295 = metadata !{i32 589837, metadata !293, metadata !"__modeflags", metadata !296, i32 234, i64 16, i64 16, i64 0, i32 0, metadata !297} ; [ DW_TAG_member ]
!296 = metadata !{i32 589865, metadata !"uClibc_stdio.h", metadata !"/home/ecwong/klee-uclibc/./include/bits", metadata !286} ; [ DW_TAG_file_type ]
!297 = metadata !{i32 589860, metadata !285, metadata !"short unsigned int", metadata !285, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!298 = metadata !{i32 589837, metadata !293, metadata !"__ungot_width", metadata !296, i32 237, i64 16, i64 8, i64 16, i32 0, metadata !299} ; [ DW_TAG_member ]
!299 = metadata !{i32 589825, metadata !285, metadata !"", metadata !285, i32 0, i64 16, i64 8, i64 0, i32 0, metadata !300, metadata !103, i32 0, null} ; [ DW_TAG_array_type ]
!300 = metadata !{i32 589860, metadata !285, metadata !"unsigned char", metadata !285, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!301 = metadata !{i32 589837, metadata !293, metadata !"__filedes", metadata !296, i32 244, i64 32, i64 32, i64 32, i32 0, metadata !289} ; [ DW_TAG_member ]
!302 = metadata !{i32 589837, metadata !293, metadata !"__bufstart", metadata !296, i32 246, i64 64, i64 64, i64 64, i32 0, metadata !303} ; [ DW_TAG_member ]
!303 = metadata !{i32 589839, metadata !285, metadata !"", metadata !285, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !300} ; [ DW_TAG_pointer_type ]
!304 = metadata !{i32 589837, metadata !293, metadata !"__bufend", metadata !296, i32 247, i64 64, i64 64, i64 128, i32 0, metadata !303} ; [ DW_TAG_member ]
!305 = metadata !{i32 589837, metadata !293, metadata !"__bufpos", metadata !296, i32 248, i64 64, i64 64, i64 192, i32 0, metadata !303} ; [ DW_TAG_member ]
!306 = metadata !{i32 589837, metadata !293, metadata !"__bufread", metadata !296, i32 249, i64 64, i64 64, i64 256, i32 0, metadata !303} ; [ DW_TAG_member ]
!307 = metadata !{i32 589837, metadata !293, metadata !"__bufgetc_u", metadata !296, i32 252, i64 64, i64 64, i64 320, i32 0, metadata !303} ; [ DW_TAG_member ]
!308 = metadata !{i32 589837, metadata !293, metadata !"__bufputc_u", metadata !296, i32 255, i64 64, i64 64, i64 384, i32 0, metadata !303} ; [ DW_TAG_member ]
!309 = metadata !{i32 589837, metadata !293, metadata !"__nextopen", metadata !296, i32 261, i64 64, i64 64, i64 448, i32 0, metadata !310} ; [ DW_TAG_member ]
!310 = metadata !{i32 589839, metadata !285, metadata !"", metadata !285, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !293} ; [ DW_TAG_pointer_type ]
!311 = metadata !{i32 589837, metadata !293, metadata !"__ungot", metadata !296, i32 268, i64 64, i64 32, i64 512, i32 0, metadata !312} ; [ DW_TAG_member ]
!312 = metadata !{i32 589825, metadata !285, metadata !"", metadata !285, i32 0, i64 64, i64 32, i64 0, i32 0, metadata !313, metadata !103, i32 0, null} ; [ DW_TAG_array_type ]
!313 = metadata !{i32 589846, metadata !314, metadata !"wchar_t", metadata !314, i32 326, i64 0, i64 0, i64 0, i32 0, metadata !289} ; [ DW_TAG_typedef ]
!314 = metadata !{i32 589865, metadata !"stddef.h", metadata !"/home/ecwong/llvm-gcc4.2-2.9-x86_64-linux/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.2.1/include", metadata !286} ; [ DW_TAG_file_type ]
!315 = metadata !{i32 589837, metadata !293, metadata !"__state", metadata !296, i32 271, i64 64, i64 32, i64 576, i32 0, metadata !316} ; [ DW_TAG_member ]
!316 = metadata !{i32 589846, metadata !317, metadata !"__mbstate_t", metadata !317, i32 85, i64 0, i64 0, i64 0, i32 0, metadata !318} ; [ DW_TAG_typedef ]
!317 = metadata !{i32 589865, metadata !"wchar.h", metadata !"/home/ecwong/klee-uclibc/./include", metadata !286} ; [ DW_TAG_file_type ]
!318 = metadata !{i32 589843, metadata !285, metadata !"", metadata !317, i32 82, i64 64, i64 32, i64 0, i32 0, null, metadata !319, i32 0, null} ; [ DW_TAG_structure_type ]
!319 = metadata !{metadata !320, metadata !321}
!320 = metadata !{i32 589837, metadata !318, metadata !"__mask", metadata !317, i32 83, i64 32, i64 32, i64 0, i32 0, metadata !313} ; [ DW_TAG_member ]
!321 = metadata !{i32 589837, metadata !318, metadata !"__wc", metadata !317, i32 84, i64 32, i64 32, i64 32, i32 0, metadata !313} ; [ DW_TAG_member ]
!322 = metadata !{i32 589870, i32 0, metadata !323, metadata !"__stdio_wcommit", metadata !"__stdio_wcommit", metadata !"__stdio_wcommit", metadata !323, i32 18, metadata !325, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (%struct.FILE*)
!323 = metadata !{i32 589865, metadata !"_wcommit.c", metadata !"/home/ecwong/klee-uclibc/libc/stdio", metadata !324} ; [ DW_TAG_file_type ]
!324 = metadata !{i32 589841, i32 0, i32 1, metadata !"_wcommit.c", metadata !"/home/ecwong/klee-uclibc/libc/stdio", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!325 = metadata !{i32 589845, metadata !323, metadata !"", metadata !323, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !326, i32 0, null} ; [ DW_TAG_subroutine_type ]
!326 = metadata !{metadata !327, metadata !330}
!327 = metadata !{i32 589846, metadata !328, metadata !"size_t", metadata !328, i32 214, i64 0, i64 0, i64 0, i32 0, metadata !329} ; [ DW_TAG_typedef ]
!328 = metadata !{i32 589865, metadata !"stddef.h", metadata !"/home/ecwong/llvm-gcc4.2-2.9-x86_64-linux/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.2.1/include", metadata !324} ; [ DW_TAG_file_type ]
!329 = metadata !{i32 589860, metadata !323, metadata !"long unsigned int", metadata !323, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!330 = metadata !{i32 589839, metadata !323, metadata !"", metadata !323, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !331} ; [ DW_TAG_pointer_type ]
!331 = metadata !{i32 589846, metadata !332, metadata !"FILE", metadata !332, i32 46, i64 0, i64 0, i64 0, i32 0, metadata !333} ; [ DW_TAG_typedef ]
!332 = metadata !{i32 589865, metadata !"stdio.h", metadata !"/home/ecwong/klee-uclibc/./include", metadata !324} ; [ DW_TAG_file_type ]
!333 = metadata !{i32 589843, metadata !323, metadata !"__STDIO_FILE_STRUCT", metadata !332, i32 46, i64 640, i64 64, i64 0, i32 0, null, metadata !334, i32 0, null} ; [ DW_TAG_structure_type ]
!334 = metadata !{metadata !335, metadata !338, metadata !341, metadata !343, metadata !345, metadata !346, metadata !347, metadata !348, metadata !349, metadata !350, metadata !352, metadata !355}
!335 = metadata !{i32 589837, metadata !333, metadata !"__modeflags", metadata !336, i32 234, i64 16, i64 16, i64 0, i32 0, metadata !337} ; [ DW_TAG_member ]
!336 = metadata !{i32 589865, metadata !"uClibc_stdio.h", metadata !"/home/ecwong/klee-uclibc/./include/bits", metadata !324} ; [ DW_TAG_file_type ]
!337 = metadata !{i32 589860, metadata !323, metadata !"short unsigned int", metadata !323, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!338 = metadata !{i32 589837, metadata !333, metadata !"__ungot_width", metadata !336, i32 237, i64 16, i64 8, i64 16, i32 0, metadata !339} ; [ DW_TAG_member ]
!339 = metadata !{i32 589825, metadata !323, metadata !"", metadata !323, i32 0, i64 16, i64 8, i64 0, i32 0, metadata !340, metadata !103, i32 0, null} ; [ DW_TAG_array_type ]
!340 = metadata !{i32 589860, metadata !323, metadata !"unsigned char", metadata !323, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!341 = metadata !{i32 589837, metadata !333, metadata !"__filedes", metadata !336, i32 244, i64 32, i64 32, i64 32, i32 0, metadata !342} ; [ DW_TAG_member ]
!342 = metadata !{i32 589860, metadata !323, metadata !"int", metadata !323, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!343 = metadata !{i32 589837, metadata !333, metadata !"__bufstart", metadata !336, i32 246, i64 64, i64 64, i64 64, i32 0, metadata !344} ; [ DW_TAG_member ]
!344 = metadata !{i32 589839, metadata !323, metadata !"", metadata !323, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !340} ; [ DW_TAG_pointer_type ]
!345 = metadata !{i32 589837, metadata !333, metadata !"__bufend", metadata !336, i32 247, i64 64, i64 64, i64 128, i32 0, metadata !344} ; [ DW_TAG_member ]
!346 = metadata !{i32 589837, metadata !333, metadata !"__bufpos", metadata !336, i32 248, i64 64, i64 64, i64 192, i32 0, metadata !344} ; [ DW_TAG_member ]
!347 = metadata !{i32 589837, metadata !333, metadata !"__bufread", metadata !336, i32 249, i64 64, i64 64, i64 256, i32 0, metadata !344} ; [ DW_TAG_member ]
!348 = metadata !{i32 589837, metadata !333, metadata !"__bufgetc_u", metadata !336, i32 252, i64 64, i64 64, i64 320, i32 0, metadata !344} ; [ DW_TAG_member ]
!349 = metadata !{i32 589837, metadata !333, metadata !"__bufputc_u", metadata !336, i32 255, i64 64, i64 64, i64 384, i32 0, metadata !344} ; [ DW_TAG_member ]
!350 = metadata !{i32 589837, metadata !333, metadata !"__nextopen", metadata !336, i32 261, i64 64, i64 64, i64 448, i32 0, metadata !351} ; [ DW_TAG_member ]
!351 = metadata !{i32 589839, metadata !323, metadata !"", metadata !323, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !333} ; [ DW_TAG_pointer_type ]
!352 = metadata !{i32 589837, metadata !333, metadata !"__ungot", metadata !336, i32 268, i64 64, i64 32, i64 512, i32 0, metadata !353} ; [ DW_TAG_member ]
!353 = metadata !{i32 589825, metadata !323, metadata !"", metadata !323, i32 0, i64 64, i64 32, i64 0, i32 0, metadata !354, metadata !103, i32 0, null} ; [ DW_TAG_array_type ]
!354 = metadata !{i32 589846, metadata !328, metadata !"wchar_t", metadata !328, i32 326, i64 0, i64 0, i64 0, i32 0, metadata !342} ; [ DW_TAG_typedef ]
!355 = metadata !{i32 589837, metadata !333, metadata !"__state", metadata !336, i32 271, i64 64, i64 32, i64 576, i32 0, metadata !356} ; [ DW_TAG_member ]
!356 = metadata !{i32 589846, metadata !357, metadata !"__mbstate_t", metadata !357, i32 85, i64 0, i64 0, i64 0, i32 0, metadata !358} ; [ DW_TAG_typedef ]
!357 = metadata !{i32 589865, metadata !"wchar.h", metadata !"/home/ecwong/klee-uclibc/./include", metadata !324} ; [ DW_TAG_file_type ]
!358 = metadata !{i32 589843, metadata !323, metadata !"", metadata !357, i32 82, i64 64, i64 32, i64 0, i32 0, null, metadata !359, i32 0, null} ; [ DW_TAG_structure_type ]
!359 = metadata !{metadata !360, metadata !361}
!360 = metadata !{i32 589837, metadata !358, metadata !"__mask", metadata !357, i32 83, i64 32, i64 32, i64 0, i32 0, metadata !354} ; [ DW_TAG_member ]
!361 = metadata !{i32 589837, metadata !358, metadata !"__wc", metadata !357, i32 84, i64 32, i64 32, i64 32, i32 0, metadata !354} ; [ DW_TAG_member ]
!362 = metadata !{i32 589870, i32 0, metadata !363, metadata !"fwrite_unlocked", metadata !"fwrite_unlocked", metadata !"fwrite_unlocked", metadata !365, i32 16, metadata !366, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i8*, i64, i64,
!363 = metadata !{i32 589865, metadata !"fwrite_unlocked.c", metadata !"/home/ecwong/klee-uclibc/libc/stdio", metadata !364} ; [ DW_TAG_file_type ]
!364 = metadata !{i32 589841, i32 0, i32 1, metadata !"fwrite_unlocked.c", metadata !"/home/ecwong/klee-uclibc/libc/stdio", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_un
!365 = metadata !{i32 589865, metadata !"fwrite.c", metadata !"/home/ecwong/klee-uclibc/libc/stdio", metadata !364} ; [ DW_TAG_file_type ]
!366 = metadata !{i32 589845, metadata !363, metadata !"", metadata !363, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !367, i32 0, null} ; [ DW_TAG_subroutine_type ]
!367 = metadata !{metadata !368, metadata !371, metadata !368, metadata !368, metadata !372}
!368 = metadata !{i32 589846, metadata !369, metadata !"size_t", metadata !369, i32 214, i64 0, i64 0, i64 0, i32 0, metadata !370} ; [ DW_TAG_typedef ]
!369 = metadata !{i32 589865, metadata !"stddef.h", metadata !"/home/ecwong/llvm-gcc4.2-2.9-x86_64-linux/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.2.1/include", metadata !364} ; [ DW_TAG_file_type ]
!370 = metadata !{i32 589860, metadata !363, metadata !"long unsigned int", metadata !363, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!371 = metadata !{i32 589839, metadata !363, metadata !"", metadata !363, i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ]
!372 = metadata !{i32 589839, metadata !363, metadata !"", metadata !363, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !373} ; [ DW_TAG_pointer_type ]
!373 = metadata !{i32 589846, metadata !374, metadata !"FILE", metadata !374, i32 46, i64 0, i64 0, i64 0, i32 0, metadata !375} ; [ DW_TAG_typedef ]
!374 = metadata !{i32 589865, metadata !"stdio.h", metadata !"/home/ecwong/klee-uclibc/./include", metadata !364} ; [ DW_TAG_file_type ]
!375 = metadata !{i32 589843, metadata !363, metadata !"__STDIO_FILE_STRUCT", metadata !374, i32 46, i64 640, i64 64, i64 0, i32 0, null, metadata !376, i32 0, null} ; [ DW_TAG_structure_type ]
!376 = metadata !{metadata !377, metadata !380, metadata !383, metadata !385, metadata !387, metadata !388, metadata !389, metadata !390, metadata !391, metadata !392, metadata !394, metadata !397}
!377 = metadata !{i32 589837, metadata !375, metadata !"__modeflags", metadata !378, i32 234, i64 16, i64 16, i64 0, i32 0, metadata !379} ; [ DW_TAG_member ]
!378 = metadata !{i32 589865, metadata !"uClibc_stdio.h", metadata !"/home/ecwong/klee-uclibc/./include/bits", metadata !364} ; [ DW_TAG_file_type ]
!379 = metadata !{i32 589860, metadata !363, metadata !"short unsigned int", metadata !363, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!380 = metadata !{i32 589837, metadata !375, metadata !"__ungot_width", metadata !378, i32 237, i64 16, i64 8, i64 16, i32 0, metadata !381} ; [ DW_TAG_member ]
!381 = metadata !{i32 589825, metadata !363, metadata !"", metadata !363, i32 0, i64 16, i64 8, i64 0, i32 0, metadata !382, metadata !103, i32 0, null} ; [ DW_TAG_array_type ]
!382 = metadata !{i32 589860, metadata !363, metadata !"unsigned char", metadata !363, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!383 = metadata !{i32 589837, metadata !375, metadata !"__filedes", metadata !378, i32 244, i64 32, i64 32, i64 32, i32 0, metadata !384} ; [ DW_TAG_member ]
!384 = metadata !{i32 589860, metadata !363, metadata !"int", metadata !363, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!385 = metadata !{i32 589837, metadata !375, metadata !"__bufstart", metadata !378, i32 246, i64 64, i64 64, i64 64, i32 0, metadata !386} ; [ DW_TAG_member ]
!386 = metadata !{i32 589839, metadata !363, metadata !"", metadata !363, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !382} ; [ DW_TAG_pointer_type ]
!387 = metadata !{i32 589837, metadata !375, metadata !"__bufend", metadata !378, i32 247, i64 64, i64 64, i64 128, i32 0, metadata !386} ; [ DW_TAG_member ]
!388 = metadata !{i32 589837, metadata !375, metadata !"__bufpos", metadata !378, i32 248, i64 64, i64 64, i64 192, i32 0, metadata !386} ; [ DW_TAG_member ]
!389 = metadata !{i32 589837, metadata !375, metadata !"__bufread", metadata !378, i32 249, i64 64, i64 64, i64 256, i32 0, metadata !386} ; [ DW_TAG_member ]
!390 = metadata !{i32 589837, metadata !375, metadata !"__bufgetc_u", metadata !378, i32 252, i64 64, i64 64, i64 320, i32 0, metadata !386} ; [ DW_TAG_member ]
!391 = metadata !{i32 589837, metadata !375, metadata !"__bufputc_u", metadata !378, i32 255, i64 64, i64 64, i64 384, i32 0, metadata !386} ; [ DW_TAG_member ]
!392 = metadata !{i32 589837, metadata !375, metadata !"__nextopen", metadata !378, i32 261, i64 64, i64 64, i64 448, i32 0, metadata !393} ; [ DW_TAG_member ]
!393 = metadata !{i32 589839, metadata !363, metadata !"", metadata !363, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !375} ; [ DW_TAG_pointer_type ]
!394 = metadata !{i32 589837, metadata !375, metadata !"__ungot", metadata !378, i32 268, i64 64, i64 32, i64 512, i32 0, metadata !395} ; [ DW_TAG_member ]
!395 = metadata !{i32 589825, metadata !363, metadata !"", metadata !363, i32 0, i64 64, i64 32, i64 0, i32 0, metadata !396, metadata !103, i32 0, null} ; [ DW_TAG_array_type ]
!396 = metadata !{i32 589846, metadata !369, metadata !"wchar_t", metadata !369, i32 326, i64 0, i64 0, i64 0, i32 0, metadata !384} ; [ DW_TAG_typedef ]
!397 = metadata !{i32 589837, metadata !375, metadata !"__state", metadata !378, i32 271, i64 64, i64 32, i64 576, i32 0, metadata !398} ; [ DW_TAG_member ]
!398 = metadata !{i32 589846, metadata !399, metadata !"__mbstate_t", metadata !399, i32 85, i64 0, i64 0, i64 0, i32 0, metadata !400} ; [ DW_TAG_typedef ]
!399 = metadata !{i32 589865, metadata !"wchar.h", metadata !"/home/ecwong/klee-uclibc/./include", metadata !364} ; [ DW_TAG_file_type ]
!400 = metadata !{i32 589843, metadata !363, metadata !"", metadata !399, i32 82, i64 64, i64 32, i64 0, i32 0, null, metadata !401, i32 0, null} ; [ DW_TAG_structure_type ]
!401 = metadata !{metadata !402, metadata !403}
!402 = metadata !{i32 589837, metadata !400, metadata !"__mask", metadata !399, i32 83, i64 32, i64 32, i64 0, i32 0, metadata !396} ; [ DW_TAG_member ]
!403 = metadata !{i32 589837, metadata !400, metadata !"__wc", metadata !399, i32 84, i64 32, i64 32, i64 32, i32 0, metadata !396} ; [ DW_TAG_member ]
!404 = metadata !{i32 589870, i32 0, metadata !405, metadata !"isatty", metadata !"isatty", metadata !"isatty", metadata !405, i32 27, metadata !407, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @isatty} ; [ DW_TAG_subprogram ]
!405 = metadata !{i32 589865, metadata !"isatty.c", metadata !"/home/ecwong/klee-uclibc/libc/termios", metadata !406} ; [ DW_TAG_file_type ]
!406 = metadata !{i32 589841, i32 0, i32 1, metadata !"isatty.c", metadata !"/home/ecwong/klee-uclibc/libc/termios", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!407 = metadata !{i32 589845, metadata !405, metadata !"", metadata !405, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !408, i32 0, null} ; [ DW_TAG_subroutine_type ]
!408 = metadata !{metadata !409, metadata !409}
!409 = metadata !{i32 589860, metadata !405, metadata !"int", metadata !405, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!410 = metadata !{i32 589870, i32 0, metadata !411, metadata !"__raise", metadata !"__raise", metadata !"__raise", metadata !411, i32 16, metadata !413, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @__raise} ; [ DW_TAG_subprogram 
!411 = metadata !{i32 589865, metadata !"raise.c", metadata !"/home/ecwong/klee-uclibc/libc/signal", metadata !412} ; [ DW_TAG_file_type ]
!412 = metadata !{i32 589841, i32 0, i32 1, metadata !"raise.c", metadata !"/home/ecwong/klee-uclibc/libc/signal", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!413 = metadata !{i32 589845, metadata !411, metadata !"", metadata !411, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !414, i32 0, null} ; [ DW_TAG_subroutine_type ]
!414 = metadata !{metadata !415, metadata !415}
!415 = metadata !{i32 589860, metadata !411, metadata !"int", metadata !411, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!416 = metadata !{i32 589870, i32 0, metadata !417, metadata !"__libc_sigaction", metadata !"__libc_sigaction", metadata !"__libc_sigaction", metadata !417, i32 43, metadata !419, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, %struc
!417 = metadata !{i32 589865, metadata !"sigaction.c", metadata !"/home/ecwong/klee-uclibc/libc/signal", metadata !418} ; [ DW_TAG_file_type ]
!418 = metadata !{i32 589841, i32 0, i32 1, metadata !"sigaction.c", metadata !"/home/ecwong/klee-uclibc/libc/signal", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!419 = metadata !{i32 589845, metadata !417, metadata !"", metadata !417, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !420, i32 0, null} ; [ DW_TAG_subroutine_type ]
!420 = metadata !{metadata !421, metadata !421, metadata !422, metadata !513}
!421 = metadata !{i32 589860, metadata !417, metadata !"int", metadata !417, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!422 = metadata !{i32 589839, metadata !417, metadata !"", metadata !417, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !423} ; [ DW_TAG_pointer_type ]
!423 = metadata !{i32 589862, metadata !417, metadata !"", metadata !417, i32 0, i64 1216, i64 64, i64 0, i32 0, metadata !424} ; [ DW_TAG_const_type ]
!424 = metadata !{i32 589843, metadata !417, metadata !"sigaction", metadata !425, i32 26, i64 1216, i64 64, i64 0, i32 0, null, metadata !426, i32 0, null} ; [ DW_TAG_structure_type ]
!425 = metadata !{i32 589865, metadata !"sigaction.h", metadata !"/home/ecwong/klee-uclibc/./include/bits", metadata !418} ; [ DW_TAG_file_type ]
!426 = metadata !{metadata !427, metadata !501, metadata !509, metadata !510}
!427 = metadata !{i32 589837, metadata !424, metadata !"__sigaction_handler", metadata !425, i32 36, i64 64, i64 64, i64 0, i32 0, metadata !428} ; [ DW_TAG_member ]
!428 = metadata !{i32 589847, metadata !417, metadata !"", metadata !425, i32 30, i64 64, i64 64, i64 0, i32 0, null, metadata !429, i32 0, null} ; [ DW_TAG_union_type ]
!429 = metadata !{metadata !430, metadata !436}
!430 = metadata !{i32 589837, metadata !428, metadata !"sa_handler", metadata !425, i32 32, i64 64, i64 64, i64 0, i32 0, metadata !431} ; [ DW_TAG_member ]
!431 = metadata !{i32 589846, metadata !432, metadata !"__sighandler_t", metadata !432, i32 75, i64 0, i64 0, i64 0, i32 0, metadata !433} ; [ DW_TAG_typedef ]
!432 = metadata !{i32 589865, metadata !"signal.h", metadata !"/home/ecwong/klee-uclibc/./include", metadata !418} ; [ DW_TAG_file_type ]
!433 = metadata !{i32 589839, metadata !417, metadata !"", metadata !417, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !434} ; [ DW_TAG_pointer_type ]
!434 = metadata !{i32 589845, metadata !417, metadata !"", metadata !417, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !435, i32 0, null} ; [ DW_TAG_subroutine_type ]
!435 = metadata !{null, metadata !421}
!436 = metadata !{i32 589837, metadata !428, metadata !"sa_sigaction", metadata !425, i32 34, i64 64, i64 64, i64 0, i32 0, metadata !437} ; [ DW_TAG_member ]
!437 = metadata !{i32 589839, metadata !417, metadata !"", metadata !417, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !438} ; [ DW_TAG_pointer_type ]
!438 = metadata !{i32 589845, metadata !417, metadata !"", metadata !417, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !439, i32 0, null} ; [ DW_TAG_subroutine_type ]
!439 = metadata !{null, metadata !421, metadata !440, metadata !475}
!440 = metadata !{i32 589839, metadata !417, metadata !"", metadata !417, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !441} ; [ DW_TAG_pointer_type ]
!441 = metadata !{i32 589846, metadata !442, metadata !"siginfo_t", metadata !442, i32 108, i64 0, i64 0, i64 0, i32 0, metadata !443} ; [ DW_TAG_typedef ]
!442 = metadata !{i32 589865, metadata !"siginfo.h", metadata !"/home/ecwong/klee-uclibc/./include/bits", metadata !418} ; [ DW_TAG_file_type ]
!443 = metadata !{i32 589843, metadata !417, metadata !"siginfo", metadata !442, i32 52, i64 1024, i64 64, i64 0, i32 0, null, metadata !444, i32 0, null} ; [ DW_TAG_structure_type ]
!444 = metadata !{metadata !445, metadata !446, metadata !447, metadata !448}
!445 = metadata !{i32 589837, metadata !443, metadata !"si_signo", metadata !442, i32 53, i64 32, i64 32, i64 0, i32 0, metadata !421} ; [ DW_TAG_member ]
!446 = metadata !{i32 589837, metadata !443, metadata !"si_errno", metadata !442, i32 54, i64 32, i64 32, i64 32, i32 0, metadata !421} ; [ DW_TAG_member ]
!447 = metadata !{i32 589837, metadata !443, metadata !"si_code", metadata !442, i32 56, i64 32, i64 32, i64 64, i32 0, metadata !421} ; [ DW_TAG_member ]
!448 = metadata !{i32 589837, metadata !443, metadata !"_sifields", metadata !442, i32 107, i64 896, i64 64, i64 128, i32 0, metadata !449} ; [ DW_TAG_member ]
!449 = metadata !{i32 589847, metadata !417, metadata !"", metadata !442, i32 59, i64 896, i64 64, i64 0, i32 0, null, metadata !450, i32 0, null} ; [ DW_TAG_union_type ]
!450 = metadata !{metadata !451, metadata !455, metadata !464, metadata !476, metadata !482, metadata !492, metadata !496}
!451 = metadata !{i32 589837, metadata !449, metadata !"_pad", metadata !442, i32 60, i64 896, i64 32, i64 0, i32 0, metadata !452} ; [ DW_TAG_member ]
!452 = metadata !{i32 589825, metadata !417, metadata !"", metadata !417, i32 0, i64 896, i64 32, i64 0, i32 0, metadata !421, metadata !453, i32 0, null} ; [ DW_TAG_array_type ]
!453 = metadata !{metadata !454}
!454 = metadata !{i32 589857, i64 0, i64 27}      ; [ DW_TAG_subrange_type ]
!455 = metadata !{i32 589837, metadata !449, metadata !"_kill", metadata !442, i32 67, i64 64, i64 32, i64 0, i32 0, metadata !456} ; [ DW_TAG_member ]
!456 = metadata !{i32 589843, metadata !417, metadata !"", metadata !442, i32 64, i64 64, i64 32, i64 0, i32 0, null, metadata !457, i32 0, null} ; [ DW_TAG_structure_type ]
!457 = metadata !{metadata !458, metadata !461}
!458 = metadata !{i32 589837, metadata !456, metadata !"si_pid", metadata !442, i32 65, i64 32, i64 32, i64 0, i32 0, metadata !459} ; [ DW_TAG_member ]
!459 = metadata !{i32 589846, metadata !460, metadata !"__pid_t", metadata !460, i32 147, i64 0, i64 0, i64 0, i32 0, metadata !421} ; [ DW_TAG_typedef ]
!460 = metadata !{i32 589865, metadata !"types.h", metadata !"/home/ecwong/klee-uclibc/./include/bits", metadata !418} ; [ DW_TAG_file_type ]
!461 = metadata !{i32 589837, metadata !456, metadata !"si_uid", metadata !442, i32 66, i64 32, i64 32, i64 32, i32 0, metadata !462} ; [ DW_TAG_member ]
!462 = metadata !{i32 589846, metadata !460, metadata !"__uid_t", metadata !460, i32 139, i64 0, i64 0, i64 0, i32 0, metadata !463} ; [ DW_TAG_typedef ]
!463 = metadata !{i32 589860, metadata !417, metadata !"unsigned int", metadata !417, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!464 = metadata !{i32 589837, metadata !449, metadata !"_timer", metadata !442, i32 75, i64 128, i64 64, i64 0, i32 0, metadata !465} ; [ DW_TAG_member ]
!465 = metadata !{i32 589843, metadata !417, metadata !"", metadata !442, i32 71, i64 128, i64 64, i64 0, i32 0, null, metadata !466, i32 0, null} ; [ DW_TAG_structure_type ]
!466 = metadata !{metadata !467, metadata !468, metadata !469}
!467 = metadata !{i32 589837, metadata !465, metadata !"si_tid", metadata !442, i32 72, i64 32, i64 32, i64 0, i32 0, metadata !421} ; [ DW_TAG_member ]
!468 = metadata !{i32 589837, metadata !465, metadata !"si_overrun", metadata !442, i32 73, i64 32, i64 32, i64 32, i32 0, metadata !421} ; [ DW_TAG_member ]
!469 = metadata !{i32 589837, metadata !465, metadata !"si_sigval", metadata !442, i32 74, i64 64, i64 64, i64 64, i32 0, metadata !470} ; [ DW_TAG_member ]
!470 = metadata !{i32 589846, metadata !442, metadata !"sigval_t", metadata !442, i32 37, i64 0, i64 0, i64 0, i32 0, metadata !471} ; [ DW_TAG_typedef ]
!471 = metadata !{i32 589847, metadata !417, metadata !"sigval", metadata !442, i32 34, i64 64, i64 64, i64 0, i32 0, null, metadata !472, i32 0, null} ; [ DW_TAG_union_type ]
!472 = metadata !{metadata !473, metadata !474}
!473 = metadata !{i32 589837, metadata !471, metadata !"sival_int", metadata !442, i32 35, i64 32, i64 32, i64 0, i32 0, metadata !421} ; [ DW_TAG_member ]
!474 = metadata !{i32 589837, metadata !471, metadata !"sival_ptr", metadata !442, i32 36, i64 64, i64 64, i64 0, i32 0, metadata !475} ; [ DW_TAG_member ]
!475 = metadata !{i32 589839, metadata !417, metadata !"", metadata !417, i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ]
!476 = metadata !{i32 589837, metadata !449, metadata !"_rt", metadata !442, i32 83, i64 128, i64 64, i64 0, i32 0, metadata !477} ; [ DW_TAG_member ]
!477 = metadata !{i32 589843, metadata !417, metadata !"", metadata !442, i32 79, i64 128, i64 64, i64 0, i32 0, null, metadata !478, i32 0, null} ; [ DW_TAG_structure_type ]
!478 = metadata !{metadata !479, metadata !480, metadata !481}
!479 = metadata !{i32 589837, metadata !477, metadata !"si_pid", metadata !442, i32 80, i64 32, i64 32, i64 0, i32 0, metadata !459} ; [ DW_TAG_member ]
!480 = metadata !{i32 589837, metadata !477, metadata !"si_uid", metadata !442, i32 81, i64 32, i64 32, i64 32, i32 0, metadata !462} ; [ DW_TAG_member ]
!481 = metadata !{i32 589837, metadata !477, metadata !"si_sigval", metadata !442, i32 82, i64 64, i64 64, i64 64, i32 0, metadata !470} ; [ DW_TAG_member ]
!482 = metadata !{i32 589837, metadata !449, metadata !"_sigchld", metadata !442, i32 93, i64 256, i64 64, i64 0, i32 0, metadata !483} ; [ DW_TAG_member ]
!483 = metadata !{i32 589843, metadata !417, metadata !"", metadata !442, i32 87, i64 256, i64 64, i64 0, i32 0, null, metadata !484, i32 0, null} ; [ DW_TAG_structure_type ]
!484 = metadata !{metadata !485, metadata !486, metadata !487, metadata !488, metadata !491}
!485 = metadata !{i32 589837, metadata !483, metadata !"si_pid", metadata !442, i32 88, i64 32, i64 32, i64 0, i32 0, metadata !459} ; [ DW_TAG_member ]
!486 = metadata !{i32 589837, metadata !483, metadata !"si_uid", metadata !442, i32 89, i64 32, i64 32, i64 32, i32 0, metadata !462} ; [ DW_TAG_member ]
!487 = metadata !{i32 589837, metadata !483, metadata !"si_status", metadata !442, i32 90, i64 32, i64 32, i64 64, i32 0, metadata !421} ; [ DW_TAG_member ]
!488 = metadata !{i32 589837, metadata !483, metadata !"si_utime", metadata !442, i32 91, i64 64, i64 64, i64 128, i32 0, metadata !489} ; [ DW_TAG_member ]
!489 = metadata !{i32 589846, metadata !460, metadata !"__clock_t", metadata !460, i32 149, i64 0, i64 0, i64 0, i32 0, metadata !490} ; [ DW_TAG_typedef ]
!490 = metadata !{i32 589860, metadata !417, metadata !"long int", metadata !417, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!491 = metadata !{i32 589837, metadata !483, metadata !"si_stime", metadata !442, i32 92, i64 64, i64 64, i64 192, i32 0, metadata !489} ; [ DW_TAG_member ]
!492 = metadata !{i32 589837, metadata !449, metadata !"_sigfault", metadata !442, i32 99, i64 64, i64 64, i64 0, i32 0, metadata !493} ; [ DW_TAG_member ]
!493 = metadata !{i32 589843, metadata !417, metadata !"", metadata !442, i32 97, i64 64, i64 64, i64 0, i32 0, null, metadata !494, i32 0, null} ; [ DW_TAG_structure_type ]
!494 = metadata !{metadata !495}
!495 = metadata !{i32 589837, metadata !493, metadata !"si_addr", metadata !442, i32 98, i64 64, i64 64, i64 0, i32 0, metadata !475} ; [ DW_TAG_member ]
!496 = metadata !{i32 589837, metadata !449, metadata !"_sigpoll", metadata !442, i32 106, i64 128, i64 64, i64 0, i32 0, metadata !497} ; [ DW_TAG_member ]
!497 = metadata !{i32 589843, metadata !417, metadata !"", metadata !442, i32 103, i64 128, i64 64, i64 0, i32 0, null, metadata !498, i32 0, null} ; [ DW_TAG_structure_type ]
!498 = metadata !{metadata !499, metadata !500}
!499 = metadata !{i32 589837, metadata !497, metadata !"si_band", metadata !442, i32 104, i64 64, i64 64, i64 0, i32 0, metadata !490} ; [ DW_TAG_member ]
!500 = metadata !{i32 589837, metadata !497, metadata !"si_fd", metadata !442, i32 105, i64 32, i64 32, i64 64, i32 0, metadata !421} ; [ DW_TAG_member ]
!501 = metadata !{i32 589837, metadata !424, metadata !"sa_mask", metadata !425, i32 44, i64 1024, i64 64, i64 64, i32 0, metadata !502} ; [ DW_TAG_member ]
!502 = metadata !{i32 589846, metadata !503, metadata !"__sigset_t", metadata !503, i32 31, i64 0, i64 0, i64 0, i32 0, metadata !504} ; [ DW_TAG_typedef ]
!503 = metadata !{i32 589865, metadata !"sigset.h", metadata !"/home/ecwong/klee-uclibc/./include/bits", metadata !418} ; [ DW_TAG_file_type ]
!504 = metadata !{i32 589843, metadata !417, metadata !"", metadata !503, i32 29, i64 1024, i64 64, i64 0, i32 0, null, metadata !505, i32 0, null} ; [ DW_TAG_structure_type ]
!505 = metadata !{metadata !506}
!506 = metadata !{i32 589837, metadata !504, metadata !"__val", metadata !503, i32 30, i64 1024, i64 64, i64 0, i32 0, metadata !507} ; [ DW_TAG_member ]
!507 = metadata !{i32 589825, metadata !417, metadata !"", metadata !417, i32 0, i64 1024, i64 64, i64 0, i32 0, metadata !508, metadata !238, i32 0, null} ; [ DW_TAG_array_type ]
!508 = metadata !{i32 589860, metadata !417, metadata !"long unsigned int", metadata !417, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!509 = metadata !{i32 589837, metadata !424, metadata !"sa_flags", metadata !425, i32 47, i64 32, i64 32, i64 1088, i32 0, metadata !421} ; [ DW_TAG_member ]
!510 = metadata !{i32 589837, metadata !424, metadata !"sa_restorer", metadata !425, i32 50, i64 64, i64 64, i64 1152, i32 0, metadata !511} ; [ DW_TAG_member ]
!511 = metadata !{i32 589839, metadata !417, metadata !"", metadata !417, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !512} ; [ DW_TAG_pointer_type ]
!512 = metadata !{i32 589845, metadata !417, metadata !"", metadata !417, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !28, i32 0, null} ; [ DW_TAG_subroutine_type ]
!513 = metadata !{i32 589839, metadata !417, metadata !"", metadata !417, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !424} ; [ DW_TAG_pointer_type ]
!514 = metadata !{i32 589870, i32 0, metadata !515, metadata !"strlen", metadata !"strlen", metadata !"strlen", metadata !515, i32 19, metadata !517, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i8*)* @strlen} ; [ DW_TAG_subprogram ]
!515 = metadata !{i32 589865, metadata !"strlen.c", metadata !"/home/ecwong/klee-uclibc/libc/string", metadata !516} ; [ DW_TAG_file_type ]
!516 = metadata !{i32 589841, i32 0, i32 1, metadata !"strlen.c", metadata !"/home/ecwong/klee-uclibc/libc/string", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!517 = metadata !{i32 589845, metadata !515, metadata !"", metadata !515, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !518, i32 0, null} ; [ DW_TAG_subroutine_type ]
!518 = metadata !{metadata !519, metadata !522}
!519 = metadata !{i32 589846, metadata !520, metadata !"size_t", metadata !520, i32 214, i64 0, i64 0, i64 0, i32 0, metadata !521} ; [ DW_TAG_typedef ]
!520 = metadata !{i32 589865, metadata !"stddef.h", metadata !"/home/ecwong/llvm-gcc4.2-2.9-x86_64-linux/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.2.1/include", metadata !516} ; [ DW_TAG_file_type ]
!521 = metadata !{i32 589860, metadata !515, metadata !"long unsigned int", metadata !515, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!522 = metadata !{i32 589839, metadata !515, metadata !"", metadata !515, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !523} ; [ DW_TAG_pointer_type ]
!523 = metadata !{i32 589862, metadata !515, metadata !"", metadata !515, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !524} ; [ DW_TAG_const_type ]
!524 = metadata !{i32 589860, metadata !515, metadata !"char", metadata !515, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!525 = metadata !{i32 589870, i32 0, metadata !526, metadata !"__stdio_fwrite", metadata !"__stdio_fwrite", metadata !"__stdio_fwrite", metadata !526, i32 21, metadata !528, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i8*, i64, %struct
!526 = metadata !{i32 589865, metadata !"_fwrite.c", metadata !"/home/ecwong/klee-uclibc/libc/stdio", metadata !527} ; [ DW_TAG_file_type ]
!527 = metadata !{i32 589841, i32 0, i32 1, metadata !"_fwrite.c", metadata !"/home/ecwong/klee-uclibc/libc/stdio", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!528 = metadata !{i32 589845, metadata !526, metadata !"", metadata !526, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !529, i32 0, null} ; [ DW_TAG_subroutine_type ]
!529 = metadata !{metadata !530, metadata !533, metadata !530, metadata !536}
!530 = metadata !{i32 589846, metadata !531, metadata !"size_t", metadata !531, i32 214, i64 0, i64 0, i64 0, i32 0, metadata !532} ; [ DW_TAG_typedef ]
!531 = metadata !{i32 589865, metadata !"stddef.h", metadata !"/home/ecwong/llvm-gcc4.2-2.9-x86_64-linux/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.2.1/include", metadata !527} ; [ DW_TAG_file_type ]
!532 = metadata !{i32 589860, metadata !526, metadata !"long unsigned int", metadata !526, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!533 = metadata !{i32 589839, metadata !526, metadata !"", metadata !526, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !534} ; [ DW_TAG_pointer_type ]
!534 = metadata !{i32 589862, metadata !526, metadata !"", metadata !526, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !535} ; [ DW_TAG_const_type ]
!535 = metadata !{i32 589860, metadata !526, metadata !"unsigned char", metadata !526, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!536 = metadata !{i32 589839, metadata !526, metadata !"", metadata !526, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !537} ; [ DW_TAG_pointer_type ]
!537 = metadata !{i32 589846, metadata !538, metadata !"FILE", metadata !538, i32 46, i64 0, i64 0, i64 0, i32 0, metadata !539} ; [ DW_TAG_typedef ]
!538 = metadata !{i32 589865, metadata !"stdio.h", metadata !"/home/ecwong/klee-uclibc/./include", metadata !527} ; [ DW_TAG_file_type ]
!539 = metadata !{i32 589843, metadata !526, metadata !"__STDIO_FILE_STRUCT", metadata !538, i32 46, i64 640, i64 64, i64 0, i32 0, null, metadata !540, i32 0, null} ; [ DW_TAG_structure_type ]
!540 = metadata !{metadata !541, metadata !544, metadata !546, metadata !548, metadata !550, metadata !551, metadata !552, metadata !553, metadata !554, metadata !555, metadata !557, metadata !560}
!541 = metadata !{i32 589837, metadata !539, metadata !"__modeflags", metadata !542, i32 234, i64 16, i64 16, i64 0, i32 0, metadata !543} ; [ DW_TAG_member ]
!542 = metadata !{i32 589865, metadata !"uClibc_stdio.h", metadata !"/home/ecwong/klee-uclibc/./include/bits", metadata !527} ; [ DW_TAG_file_type ]
!543 = metadata !{i32 589860, metadata !526, metadata !"short unsigned int", metadata !526, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!544 = metadata !{i32 589837, metadata !539, metadata !"__ungot_width", metadata !542, i32 237, i64 16, i64 8, i64 16, i32 0, metadata !545} ; [ DW_TAG_member ]
!545 = metadata !{i32 589825, metadata !526, metadata !"", metadata !526, i32 0, i64 16, i64 8, i64 0, i32 0, metadata !535, metadata !103, i32 0, null} ; [ DW_TAG_array_type ]
!546 = metadata !{i32 589837, metadata !539, metadata !"__filedes", metadata !542, i32 244, i64 32, i64 32, i64 32, i32 0, metadata !547} ; [ DW_TAG_member ]
!547 = metadata !{i32 589860, metadata !526, metadata !"int", metadata !526, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!548 = metadata !{i32 589837, metadata !539, metadata !"__bufstart", metadata !542, i32 246, i64 64, i64 64, i64 64, i32 0, metadata !549} ; [ DW_TAG_member ]
!549 = metadata !{i32 589839, metadata !526, metadata !"", metadata !526, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !535} ; [ DW_TAG_pointer_type ]
!550 = metadata !{i32 589837, metadata !539, metadata !"__bufend", metadata !542, i32 247, i64 64, i64 64, i64 128, i32 0, metadata !549} ; [ DW_TAG_member ]
!551 = metadata !{i32 589837, metadata !539, metadata !"__bufpos", metadata !542, i32 248, i64 64, i64 64, i64 192, i32 0, metadata !549} ; [ DW_TAG_member ]
!552 = metadata !{i32 589837, metadata !539, metadata !"__bufread", metadata !542, i32 249, i64 64, i64 64, i64 256, i32 0, metadata !549} ; [ DW_TAG_member ]
!553 = metadata !{i32 589837, metadata !539, metadata !"__bufgetc_u", metadata !542, i32 252, i64 64, i64 64, i64 320, i32 0, metadata !549} ; [ DW_TAG_member ]
!554 = metadata !{i32 589837, metadata !539, metadata !"__bufputc_u", metadata !542, i32 255, i64 64, i64 64, i64 384, i32 0, metadata !549} ; [ DW_TAG_member ]
!555 = metadata !{i32 589837, metadata !539, metadata !"__nextopen", metadata !542, i32 261, i64 64, i64 64, i64 448, i32 0, metadata !556} ; [ DW_TAG_member ]
!556 = metadata !{i32 589839, metadata !526, metadata !"", metadata !526, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !539} ; [ DW_TAG_pointer_type ]
!557 = metadata !{i32 589837, metadata !539, metadata !"__ungot", metadata !542, i32 268, i64 64, i64 32, i64 512, i32 0, metadata !558} ; [ DW_TAG_member ]
!558 = metadata !{i32 589825, metadata !526, metadata !"", metadata !526, i32 0, i64 64, i64 32, i64 0, i32 0, metadata !559, metadata !103, i32 0, null} ; [ DW_TAG_array_type ]
!559 = metadata !{i32 589846, metadata !531, metadata !"wchar_t", metadata !531, i32 326, i64 0, i64 0, i64 0, i32 0, metadata !547} ; [ DW_TAG_typedef ]
!560 = metadata !{i32 589837, metadata !539, metadata !"__state", metadata !542, i32 271, i64 64, i64 32, i64 576, i32 0, metadata !561} ; [ DW_TAG_member ]
!561 = metadata !{i32 589846, metadata !562, metadata !"__mbstate_t", metadata !562, i32 85, i64 0, i64 0, i64 0, i32 0, metadata !563} ; [ DW_TAG_typedef ]
!562 = metadata !{i32 589865, metadata !"wchar.h", metadata !"/home/ecwong/klee-uclibc/./include", metadata !527} ; [ DW_TAG_file_type ]
!563 = metadata !{i32 589843, metadata !526, metadata !"", metadata !562, i32 82, i64 64, i64 32, i64 0, i32 0, null, metadata !564, i32 0, null} ; [ DW_TAG_structure_type ]
!564 = metadata !{metadata !565, metadata !566}
!565 = metadata !{i32 589837, metadata !563, metadata !"__mask", metadata !562, i32 83, i64 32, i64 32, i64 0, i32 0, metadata !559} ; [ DW_TAG_member ]
!566 = metadata !{i32 589837, metadata !563, metadata !"__wc", metadata !562, i32 84, i64 32, i64 32, i64 32, i32 0, metadata !559} ; [ DW_TAG_member ]
!567 = metadata !{i32 589870, i32 0, metadata !568, metadata !"fseek", metadata !"fseek", metadata !"fseek", metadata !568, i32 25, metadata !570, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.FILE*, i64, i32)* @fseek} ; [ DW_TAG
!568 = metadata !{i32 589865, metadata !"fseeko.c", metadata !"/home/ecwong/klee-uclibc/libc/stdio", metadata !569} ; [ DW_TAG_file_type ]
!569 = metadata !{i32 589841, i32 0, i32 1, metadata !"fseeko.c", metadata !"/home/ecwong/klee-uclibc/libc/stdio", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!570 = metadata !{i32 589845, metadata !568, metadata !"", metadata !568, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !571, i32 0, null} ; [ DW_TAG_subroutine_type ]
!571 = metadata !{metadata !572, metadata !573, metadata !605, metadata !572}
!572 = metadata !{i32 589860, metadata !568, metadata !"int", metadata !568, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!573 = metadata !{i32 589839, metadata !568, metadata !"", metadata !568, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !574} ; [ DW_TAG_pointer_type ]
!574 = metadata !{i32 589846, metadata !575, metadata !"FILE", metadata !575, i32 46, i64 0, i64 0, i64 0, i32 0, metadata !576} ; [ DW_TAG_typedef ]
!575 = metadata !{i32 589865, metadata !"stdio.h", metadata !"/home/ecwong/klee-uclibc/./include", metadata !569} ; [ DW_TAG_file_type ]
!576 = metadata !{i32 589843, metadata !568, metadata !"__STDIO_FILE_STRUCT", metadata !575, i32 46, i64 640, i64 64, i64 0, i32 0, null, metadata !577, i32 0, null} ; [ DW_TAG_structure_type ]
!577 = metadata !{metadata !578, metadata !581, metadata !584, metadata !585, metadata !587, metadata !588, metadata !589, metadata !590, metadata !591, metadata !592, metadata !594, metadata !598}
!578 = metadata !{i32 589837, metadata !576, metadata !"__modeflags", metadata !579, i32 234, i64 16, i64 16, i64 0, i32 0, metadata !580} ; [ DW_TAG_member ]
!579 = metadata !{i32 589865, metadata !"uClibc_stdio.h", metadata !"/home/ecwong/klee-uclibc/./include/bits", metadata !569} ; [ DW_TAG_file_type ]
!580 = metadata !{i32 589860, metadata !568, metadata !"short unsigned int", metadata !568, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!581 = metadata !{i32 589837, metadata !576, metadata !"__ungot_width", metadata !579, i32 237, i64 16, i64 8, i64 16, i32 0, metadata !582} ; [ DW_TAG_member ]
!582 = metadata !{i32 589825, metadata !568, metadata !"", metadata !568, i32 0, i64 16, i64 8, i64 0, i32 0, metadata !583, metadata !103, i32 0, null} ; [ DW_TAG_array_type ]
!583 = metadata !{i32 589860, metadata !568, metadata !"unsigned char", metadata !568, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!584 = metadata !{i32 589837, metadata !576, metadata !"__filedes", metadata !579, i32 244, i64 32, i64 32, i64 32, i32 0, metadata !572} ; [ DW_TAG_member ]
!585 = metadata !{i32 589837, metadata !576, metadata !"__bufstart", metadata !579, i32 246, i64 64, i64 64, i64 64, i32 0, metadata !586} ; [ DW_TAG_member ]
!586 = metadata !{i32 589839, metadata !568, metadata !"", metadata !568, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !583} ; [ DW_TAG_pointer_type ]
!587 = metadata !{i32 589837, metadata !576, metadata !"__bufend", metadata !579, i32 247, i64 64, i64 64, i64 128, i32 0, metadata !586} ; [ DW_TAG_member ]
!588 = metadata !{i32 589837, metadata !576, metadata !"__bufpos", metadata !579, i32 248, i64 64, i64 64, i64 192, i32 0, metadata !586} ; [ DW_TAG_member ]
!589 = metadata !{i32 589837, metadata !576, metadata !"__bufread", metadata !579, i32 249, i64 64, i64 64, i64 256, i32 0, metadata !586} ; [ DW_TAG_member ]
!590 = metadata !{i32 589837, metadata !576, metadata !"__bufgetc_u", metadata !579, i32 252, i64 64, i64 64, i64 320, i32 0, metadata !586} ; [ DW_TAG_member ]
!591 = metadata !{i32 589837, metadata !576, metadata !"__bufputc_u", metadata !579, i32 255, i64 64, i64 64, i64 384, i32 0, metadata !586} ; [ DW_TAG_member ]
!592 = metadata !{i32 589837, metadata !576, metadata !"__nextopen", metadata !579, i32 261, i64 64, i64 64, i64 448, i32 0, metadata !593} ; [ DW_TAG_member ]
!593 = metadata !{i32 589839, metadata !568, metadata !"", metadata !568, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !576} ; [ DW_TAG_pointer_type ]
!594 = metadata !{i32 589837, metadata !576, metadata !"__ungot", metadata !579, i32 268, i64 64, i64 32, i64 512, i32 0, metadata !595} ; [ DW_TAG_member ]
!595 = metadata !{i32 589825, metadata !568, metadata !"", metadata !568, i32 0, i64 64, i64 32, i64 0, i32 0, metadata !596, metadata !103, i32 0, null} ; [ DW_TAG_array_type ]
!596 = metadata !{i32 589846, metadata !597, metadata !"wchar_t", metadata !597, i32 326, i64 0, i64 0, i64 0, i32 0, metadata !572} ; [ DW_TAG_typedef ]
!597 = metadata !{i32 589865, metadata !"stddef.h", metadata !"/home/ecwong/llvm-gcc4.2-2.9-x86_64-linux/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.2.1/include", metadata !569} ; [ DW_TAG_file_type ]
!598 = metadata !{i32 589837, metadata !576, metadata !"__state", metadata !579, i32 271, i64 64, i64 32, i64 576, i32 0, metadata !599} ; [ DW_TAG_member ]
!599 = metadata !{i32 589846, metadata !600, metadata !"__mbstate_t", metadata !600, i32 85, i64 0, i64 0, i64 0, i32 0, metadata !601} ; [ DW_TAG_typedef ]
!600 = metadata !{i32 589865, metadata !"wchar.h", metadata !"/home/ecwong/klee-uclibc/./include", metadata !569} ; [ DW_TAG_file_type ]
!601 = metadata !{i32 589843, metadata !568, metadata !"", metadata !600, i32 82, i64 64, i64 32, i64 0, i32 0, null, metadata !602, i32 0, null} ; [ DW_TAG_structure_type ]
!602 = metadata !{metadata !603, metadata !604}
!603 = metadata !{i32 589837, metadata !601, metadata !"__mask", metadata !600, i32 83, i64 32, i64 32, i64 0, i32 0, metadata !596} ; [ DW_TAG_member ]
!604 = metadata !{i32 589837, metadata !601, metadata !"__wc", metadata !600, i32 84, i64 32, i64 32, i64 32, i32 0, metadata !596} ; [ DW_TAG_member ]
!605 = metadata !{i32 589860, metadata !568, metadata !"long int", metadata !568, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!606 = metadata !{i32 589870, i32 0, metadata !607, metadata !"tcgetattr", metadata !"tcgetattr", metadata !"tcgetattr", metadata !607, i32 39, metadata !609, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, %struct.termios*)* @tcgetat
!607 = metadata !{i32 589865, metadata !"tcgetattr.c", metadata !"/home/ecwong/klee-uclibc/libc/termios", metadata !608} ; [ DW_TAG_file_type ]
!608 = metadata !{i32 589841, i32 0, i32 1, metadata !"tcgetattr.c", metadata !"/home/ecwong/klee-uclibc/libc/termios", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!609 = metadata !{i32 589845, metadata !607, metadata !"", metadata !607, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !610, i32 0, null} ; [ DW_TAG_subroutine_type ]
!610 = metadata !{metadata !611, metadata !611, metadata !612}
!611 = metadata !{i32 589860, metadata !607, metadata !"int", metadata !607, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!612 = metadata !{i32 589839, metadata !607, metadata !"", metadata !607, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !613} ; [ DW_TAG_pointer_type ]
!613 = metadata !{i32 589843, metadata !607, metadata !"termios", metadata !614, i32 31, i64 480, i64 32, i64 0, i32 0, null, metadata !615, i32 0, null} ; [ DW_TAG_structure_type ]
!614 = metadata !{i32 589865, metadata !"termios.h", metadata !"/home/ecwong/klee-uclibc/./include/bits", metadata !608} ; [ DW_TAG_file_type ]
!615 = metadata !{metadata !616, metadata !619, metadata !620, metadata !621, metadata !622, metadata !625, metadata !629, metadata !631}
!616 = metadata !{i32 589837, metadata !613, metadata !"c_iflag", metadata !614, i32 32, i64 32, i64 32, i64 0, i32 0, metadata !617} ; [ DW_TAG_member ]
!617 = metadata !{i32 589846, metadata !614, metadata !"tcflag_t", metadata !614, i32 27, i64 0, i64 0, i64 0, i32 0, metadata !618} ; [ DW_TAG_typedef ]
!618 = metadata !{i32 589860, metadata !607, metadata !"unsigned int", metadata !607, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!619 = metadata !{i32 589837, metadata !613, metadata !"c_oflag", metadata !614, i32 33, i64 32, i64 32, i64 32, i32 0, metadata !617} ; [ DW_TAG_member ]
!620 = metadata !{i32 589837, metadata !613, metadata !"c_cflag", metadata !614, i32 34, i64 32, i64 32, i64 64, i32 0, metadata !617} ; [ DW_TAG_member ]
!621 = metadata !{i32 589837, metadata !613, metadata !"c_lflag", metadata !614, i32 35, i64 32, i64 32, i64 96, i32 0, metadata !617} ; [ DW_TAG_member ]
!622 = metadata !{i32 589837, metadata !613, metadata !"c_line", metadata !614, i32 36, i64 8, i64 8, i64 128, i32 0, metadata !623} ; [ DW_TAG_member ]
!623 = metadata !{i32 589846, metadata !614, metadata !"cc_t", metadata !614, i32 25, i64 0, i64 0, i64 0, i32 0, metadata !624} ; [ DW_TAG_typedef ]
!624 = metadata !{i32 589860, metadata !607, metadata !"unsigned char", metadata !607, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!625 = metadata !{i32 589837, metadata !613, metadata !"c_cc", metadata !614, i32 37, i64 256, i64 8, i64 136, i32 0, metadata !626} ; [ DW_TAG_member ]
!626 = metadata !{i32 589825, metadata !607, metadata !"", metadata !607, i32 0, i64 256, i64 8, i64 0, i32 0, metadata !623, metadata !627, i32 0, null} ; [ DW_TAG_array_type ]
!627 = metadata !{metadata !628}
!628 = metadata !{i32 589857, i64 0, i64 31}      ; [ DW_TAG_subrange_type ]
!629 = metadata !{i32 589837, metadata !613, metadata !"c_ispeed", metadata !614, i32 38, i64 32, i64 32, i64 416, i32 0, metadata !630} ; [ DW_TAG_member ]
!630 = metadata !{i32 589846, metadata !614, metadata !"speed_t", metadata !614, i32 26, i64 0, i64 0, i64 0, i32 0, metadata !618} ; [ DW_TAG_typedef ]
!631 = metadata !{i32 589837, metadata !613, metadata !"c_ospeed", metadata !614, i32 39, i64 32, i64 32, i64 448, i32 0, metadata !630} ; [ DW_TAG_member ]
!632 = metadata !{i32 589870, i32 0, metadata !633, metadata !"fseeko64", metadata !"fseeko64", metadata !"fseeko64", metadata !635, i32 25, metadata !636, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.FILE*, i64, i32)* @fseeko64
!633 = metadata !{i32 589865, metadata !"fseeko64.c", metadata !"/home/ecwong/klee-uclibc/libc/stdio", metadata !634} ; [ DW_TAG_file_type ]
!634 = metadata !{i32 589841, i32 0, i32 1, metadata !"fseeko64.c", metadata !"/home/ecwong/klee-uclibc/libc/stdio", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!635 = metadata !{i32 589865, metadata !"fseeko.c", metadata !"/home/ecwong/klee-uclibc/libc/stdio", metadata !634} ; [ DW_TAG_file_type ]
!636 = metadata !{i32 589845, metadata !633, metadata !"", metadata !633, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !637, i32 0, null} ; [ DW_TAG_subroutine_type ]
!637 = metadata !{metadata !638, metadata !639, metadata !671, metadata !638}
!638 = metadata !{i32 589860, metadata !633, metadata !"int", metadata !633, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!639 = metadata !{i32 589839, metadata !633, metadata !"", metadata !633, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !640} ; [ DW_TAG_pointer_type ]
!640 = metadata !{i32 589846, metadata !641, metadata !"FILE", metadata !641, i32 46, i64 0, i64 0, i64 0, i32 0, metadata !642} ; [ DW_TAG_typedef ]
!641 = metadata !{i32 589865, metadata !"stdio.h", metadata !"/home/ecwong/klee-uclibc/./include", metadata !634} ; [ DW_TAG_file_type ]
!642 = metadata !{i32 589843, metadata !633, metadata !"__STDIO_FILE_STRUCT", metadata !641, i32 46, i64 640, i64 64, i64 0, i32 0, null, metadata !643, i32 0, null} ; [ DW_TAG_structure_type ]
!643 = metadata !{metadata !644, metadata !647, metadata !650, metadata !651, metadata !653, metadata !654, metadata !655, metadata !656, metadata !657, metadata !658, metadata !660, metadata !664}
!644 = metadata !{i32 589837, metadata !642, metadata !"__modeflags", metadata !645, i32 234, i64 16, i64 16, i64 0, i32 0, metadata !646} ; [ DW_TAG_member ]
!645 = metadata !{i32 589865, metadata !"uClibc_stdio.h", metadata !"/home/ecwong/klee-uclibc/./include/bits", metadata !634} ; [ DW_TAG_file_type ]
!646 = metadata !{i32 589860, metadata !633, metadata !"short unsigned int", metadata !633, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!647 = metadata !{i32 589837, metadata !642, metadata !"__ungot_width", metadata !645, i32 237, i64 16, i64 8, i64 16, i32 0, metadata !648} ; [ DW_TAG_member ]
!648 = metadata !{i32 589825, metadata !633, metadata !"", metadata !633, i32 0, i64 16, i64 8, i64 0, i32 0, metadata !649, metadata !103, i32 0, null} ; [ DW_TAG_array_type ]
!649 = metadata !{i32 589860, metadata !633, metadata !"unsigned char", metadata !633, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!650 = metadata !{i32 589837, metadata !642, metadata !"__filedes", metadata !645, i32 244, i64 32, i64 32, i64 32, i32 0, metadata !638} ; [ DW_TAG_member ]
!651 = metadata !{i32 589837, metadata !642, metadata !"__bufstart", metadata !645, i32 246, i64 64, i64 64, i64 64, i32 0, metadata !652} ; [ DW_TAG_member ]
!652 = metadata !{i32 589839, metadata !633, metadata !"", metadata !633, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !649} ; [ DW_TAG_pointer_type ]
!653 = metadata !{i32 589837, metadata !642, metadata !"__bufend", metadata !645, i32 247, i64 64, i64 64, i64 128, i32 0, metadata !652} ; [ DW_TAG_member ]
!654 = metadata !{i32 589837, metadata !642, metadata !"__bufpos", metadata !645, i32 248, i64 64, i64 64, i64 192, i32 0, metadata !652} ; [ DW_TAG_member ]
!655 = metadata !{i32 589837, metadata !642, metadata !"__bufread", metadata !645, i32 249, i64 64, i64 64, i64 256, i32 0, metadata !652} ; [ DW_TAG_member ]
!656 = metadata !{i32 589837, metadata !642, metadata !"__bufgetc_u", metadata !645, i32 252, i64 64, i64 64, i64 320, i32 0, metadata !652} ; [ DW_TAG_member ]
!657 = metadata !{i32 589837, metadata !642, metadata !"__bufputc_u", metadata !645, i32 255, i64 64, i64 64, i64 384, i32 0, metadata !652} ; [ DW_TAG_member ]
!658 = metadata !{i32 589837, metadata !642, metadata !"__nextopen", metadata !645, i32 261, i64 64, i64 64, i64 448, i32 0, metadata !659} ; [ DW_TAG_member ]
!659 = metadata !{i32 589839, metadata !633, metadata !"", metadata !633, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !642} ; [ DW_TAG_pointer_type ]
!660 = metadata !{i32 589837, metadata !642, metadata !"__ungot", metadata !645, i32 268, i64 64, i64 32, i64 512, i32 0, metadata !661} ; [ DW_TAG_member ]
!661 = metadata !{i32 589825, metadata !633, metadata !"", metadata !633, i32 0, i64 64, i64 32, i64 0, i32 0, metadata !662, metadata !103, i32 0, null} ; [ DW_TAG_array_type ]
!662 = metadata !{i32 589846, metadata !663, metadata !"wchar_t", metadata !663, i32 326, i64 0, i64 0, i64 0, i32 0, metadata !638} ; [ DW_TAG_typedef ]
!663 = metadata !{i32 589865, metadata !"stddef.h", metadata !"/home/ecwong/llvm-gcc4.2-2.9-x86_64-linux/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.2.1/include", metadata !634} ; [ DW_TAG_file_type ]
!664 = metadata !{i32 589837, metadata !642, metadata !"__state", metadata !645, i32 271, i64 64, i64 32, i64 576, i32 0, metadata !665} ; [ DW_TAG_member ]
!665 = metadata !{i32 589846, metadata !666, metadata !"__mbstate_t", metadata !666, i32 85, i64 0, i64 0, i64 0, i32 0, metadata !667} ; [ DW_TAG_typedef ]
!666 = metadata !{i32 589865, metadata !"wchar.h", metadata !"/home/ecwong/klee-uclibc/./include", metadata !634} ; [ DW_TAG_file_type ]
!667 = metadata !{i32 589843, metadata !633, metadata !"", metadata !666, i32 82, i64 64, i64 32, i64 0, i32 0, null, metadata !668, i32 0, null} ; [ DW_TAG_structure_type ]
!668 = metadata !{metadata !669, metadata !670}
!669 = metadata !{i32 589837, metadata !667, metadata !"__mask", metadata !666, i32 83, i64 32, i64 32, i64 0, i32 0, metadata !662} ; [ DW_TAG_member ]
!670 = metadata !{i32 589837, metadata !667, metadata !"__wc", metadata !666, i32 84, i64 32, i64 32, i64 32, i32 0, metadata !662} ; [ DW_TAG_member ]
!671 = metadata !{i32 589846, metadata !672, metadata !"__off64_t", metadata !672, i32 146, i64 0, i64 0, i64 0, i32 0, metadata !673} ; [ DW_TAG_typedef ]
!672 = metadata !{i32 589865, metadata !"types.h", metadata !"/home/ecwong/klee-uclibc/./include/bits", metadata !634} ; [ DW_TAG_file_type ]
!673 = metadata !{i32 589860, metadata !633, metadata !"long int", metadata !633, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!674 = metadata !{i32 589870, i32 0, metadata !675, metadata !"memchr", metadata !"memchr", metadata !"memchr", metadata !675, i32 19, metadata !677, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i32, i64)* @memchr} ; [ DW_TAG_subpr
!675 = metadata !{i32 589865, metadata !"memchr.c", metadata !"/home/ecwong/klee-uclibc/libc/string", metadata !676} ; [ DW_TAG_file_type ]
!676 = metadata !{i32 589841, i32 0, i32 1, metadata !"memchr.c", metadata !"/home/ecwong/klee-uclibc/libc/string", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!677 = metadata !{i32 589845, metadata !675, metadata !"", metadata !675, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !678, i32 0, null} ; [ DW_TAG_subroutine_type ]
!678 = metadata !{metadata !679, metadata !679, metadata !680, metadata !681}
!679 = metadata !{i32 589839, metadata !675, metadata !"", metadata !675, i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ]
!680 = metadata !{i32 589860, metadata !675, metadata !"int", metadata !675, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!681 = metadata !{i32 589846, metadata !682, metadata !"size_t", metadata !682, i32 214, i64 0, i64 0, i64 0, i32 0, metadata !683} ; [ DW_TAG_typedef ]
!682 = metadata !{i32 589865, metadata !"stddef.h", metadata !"/home/ecwong/llvm-gcc4.2-2.9-x86_64-linux/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.2.1/include", metadata !676} ; [ DW_TAG_file_type ]
!683 = metadata !{i32 589860, metadata !675, metadata !"long unsigned int", metadata !675, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!684 = metadata !{i32 589870, i32 0, metadata !685, metadata !"mempcpy", metadata !"mempcpy", metadata !"mempcpy", metadata !685, i32 21, metadata !687, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i8*, i64)* @mempcpy} ; [ DW_TAG_s
!685 = metadata !{i32 589865, metadata !"mempcpy.c", metadata !"/home/ecwong/klee-uclibc/libc/string", metadata !686} ; [ DW_TAG_file_type ]
!686 = metadata !{i32 589841, i32 0, i32 1, metadata !"mempcpy.c", metadata !"/home/ecwong/klee-uclibc/libc/string", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!687 = metadata !{i32 589845, metadata !685, metadata !"", metadata !685, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !688, i32 0, null} ; [ DW_TAG_subroutine_type ]
!688 = metadata !{metadata !689, metadata !689, metadata !689, metadata !690}
!689 = metadata !{i32 589839, metadata !685, metadata !"", metadata !685, i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ]
!690 = metadata !{i32 589846, metadata !691, metadata !"size_t", metadata !691, i32 214, i64 0, i64 0, i64 0, i32 0, metadata !692} ; [ DW_TAG_typedef ]
!691 = metadata !{i32 589865, metadata !"stddef.h", metadata !"/home/ecwong/llvm-gcc4.2-2.9-x86_64-linux/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.2.1/include", metadata !686} ; [ DW_TAG_file_type ]
!692 = metadata !{i32 589860, metadata !685, metadata !"long unsigned int", metadata !685, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!693 = metadata !{i32 589870, i32 0, metadata !694, metadata !"memrchr", metadata !"memrchr", metadata !"memrchr", metadata !694, i32 15, metadata !696, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i32, i64)* @memrchr} ; [ DW_TAG_s
!694 = metadata !{i32 589865, metadata !"memrchr.c", metadata !"/home/ecwong/klee-uclibc/libc/string", metadata !695} ; [ DW_TAG_file_type ]
!695 = metadata !{i32 589841, i32 0, i32 1, metadata !"memrchr.c", metadata !"/home/ecwong/klee-uclibc/libc/string", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!696 = metadata !{i32 589845, metadata !694, metadata !"", metadata !694, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !697, i32 0, null} ; [ DW_TAG_subroutine_type ]
!697 = metadata !{metadata !698, metadata !698, metadata !699, metadata !700}
!698 = metadata !{i32 589839, metadata !694, metadata !"", metadata !694, i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ]
!699 = metadata !{i32 589860, metadata !694, metadata !"int", metadata !694, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!700 = metadata !{i32 589846, metadata !701, metadata !"size_t", metadata !701, i32 214, i64 0, i64 0, i64 0, i32 0, metadata !702} ; [ DW_TAG_typedef ]
!701 = metadata !{i32 589865, metadata !"stddef.h", metadata !"/home/ecwong/llvm-gcc4.2-2.9-x86_64-linux/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.2.1/include", metadata !695} ; [ DW_TAG_file_type ]
!702 = metadata !{i32 589860, metadata !694, metadata !"long unsigned int", metadata !694, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!703 = metadata !{i32 589870, i32 0, metadata !704, metadata !"__stdio_adjust_position", metadata !"__stdio_adjust_position", metadata !"__stdio_adjust_position", metadata !704, i32 21, metadata !706, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 fa
!704 = metadata !{i32 589865, metadata !"_adjust_pos.c", metadata !"/home/ecwong/klee-uclibc/libc/stdio", metadata !705} ; [ DW_TAG_file_type ]
!705 = metadata !{i32 589841, i32 0, i32 1, metadata !"_adjust_pos.c", metadata !"/home/ecwong/klee-uclibc/libc/stdio", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!706 = metadata !{i32 589845, metadata !704, metadata !"", metadata !704, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !707, i32 0, null} ; [ DW_TAG_subroutine_type ]
!707 = metadata !{metadata !708, metadata !709, metadata !741}
!708 = metadata !{i32 589860, metadata !704, metadata !"int", metadata !704, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!709 = metadata !{i32 589839, metadata !704, metadata !"", metadata !704, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !710} ; [ DW_TAG_pointer_type ]
!710 = metadata !{i32 589846, metadata !711, metadata !"FILE", metadata !711, i32 46, i64 0, i64 0, i64 0, i32 0, metadata !712} ; [ DW_TAG_typedef ]
!711 = metadata !{i32 589865, metadata !"stdio.h", metadata !"/home/ecwong/klee-uclibc/./include", metadata !705} ; [ DW_TAG_file_type ]
!712 = metadata !{i32 589843, metadata !704, metadata !"__STDIO_FILE_STRUCT", metadata !711, i32 46, i64 640, i64 64, i64 0, i32 0, null, metadata !713, i32 0, null} ; [ DW_TAG_structure_type ]
!713 = metadata !{metadata !714, metadata !717, metadata !720, metadata !721, metadata !723, metadata !724, metadata !725, metadata !726, metadata !727, metadata !728, metadata !730, metadata !734}
!714 = metadata !{i32 589837, metadata !712, metadata !"__modeflags", metadata !715, i32 234, i64 16, i64 16, i64 0, i32 0, metadata !716} ; [ DW_TAG_member ]
!715 = metadata !{i32 589865, metadata !"uClibc_stdio.h", metadata !"/home/ecwong/klee-uclibc/./include/bits", metadata !705} ; [ DW_TAG_file_type ]
!716 = metadata !{i32 589860, metadata !704, metadata !"short unsigned int", metadata !704, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!717 = metadata !{i32 589837, metadata !712, metadata !"__ungot_width", metadata !715, i32 237, i64 16, i64 8, i64 16, i32 0, metadata !718} ; [ DW_TAG_member ]
!718 = metadata !{i32 589825, metadata !704, metadata !"", metadata !704, i32 0, i64 16, i64 8, i64 0, i32 0, metadata !719, metadata !103, i32 0, null} ; [ DW_TAG_array_type ]
!719 = metadata !{i32 589860, metadata !704, metadata !"unsigned char", metadata !704, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!720 = metadata !{i32 589837, metadata !712, metadata !"__filedes", metadata !715, i32 244, i64 32, i64 32, i64 32, i32 0, metadata !708} ; [ DW_TAG_member ]
!721 = metadata !{i32 589837, metadata !712, metadata !"__bufstart", metadata !715, i32 246, i64 64, i64 64, i64 64, i32 0, metadata !722} ; [ DW_TAG_member ]
!722 = metadata !{i32 589839, metadata !704, metadata !"", metadata !704, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !719} ; [ DW_TAG_pointer_type ]
!723 = metadata !{i32 589837, metadata !712, metadata !"__bufend", metadata !715, i32 247, i64 64, i64 64, i64 128, i32 0, metadata !722} ; [ DW_TAG_member ]
!724 = metadata !{i32 589837, metadata !712, metadata !"__bufpos", metadata !715, i32 248, i64 64, i64 64, i64 192, i32 0, metadata !722} ; [ DW_TAG_member ]
!725 = metadata !{i32 589837, metadata !712, metadata !"__bufread", metadata !715, i32 249, i64 64, i64 64, i64 256, i32 0, metadata !722} ; [ DW_TAG_member ]
!726 = metadata !{i32 589837, metadata !712, metadata !"__bufgetc_u", metadata !715, i32 252, i64 64, i64 64, i64 320, i32 0, metadata !722} ; [ DW_TAG_member ]
!727 = metadata !{i32 589837, metadata !712, metadata !"__bufputc_u", metadata !715, i32 255, i64 64, i64 64, i64 384, i32 0, metadata !722} ; [ DW_TAG_member ]
!728 = metadata !{i32 589837, metadata !712, metadata !"__nextopen", metadata !715, i32 261, i64 64, i64 64, i64 448, i32 0, metadata !729} ; [ DW_TAG_member ]
!729 = metadata !{i32 589839, metadata !704, metadata !"", metadata !704, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !712} ; [ DW_TAG_pointer_type ]
!730 = metadata !{i32 589837, metadata !712, metadata !"__ungot", metadata !715, i32 268, i64 64, i64 32, i64 512, i32 0, metadata !731} ; [ DW_TAG_member ]
!731 = metadata !{i32 589825, metadata !704, metadata !"", metadata !704, i32 0, i64 64, i64 32, i64 0, i32 0, metadata !732, metadata !103, i32 0, null} ; [ DW_TAG_array_type ]
!732 = metadata !{i32 589846, metadata !733, metadata !"wchar_t", metadata !733, i32 326, i64 0, i64 0, i64 0, i32 0, metadata !708} ; [ DW_TAG_typedef ]
!733 = metadata !{i32 589865, metadata !"stddef.h", metadata !"/home/ecwong/llvm-gcc4.2-2.9-x86_64-linux/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.2.1/include", metadata !705} ; [ DW_TAG_file_type ]
!734 = metadata !{i32 589837, metadata !712, metadata !"__state", metadata !715, i32 271, i64 64, i64 32, i64 576, i32 0, metadata !735} ; [ DW_TAG_member ]
!735 = metadata !{i32 589846, metadata !736, metadata !"__mbstate_t", metadata !736, i32 85, i64 0, i64 0, i64 0, i32 0, metadata !737} ; [ DW_TAG_typedef ]
!736 = metadata !{i32 589865, metadata !"wchar.h", metadata !"/home/ecwong/klee-uclibc/./include", metadata !705} ; [ DW_TAG_file_type ]
!737 = metadata !{i32 589843, metadata !704, metadata !"", metadata !736, i32 82, i64 64, i64 32, i64 0, i32 0, null, metadata !738, i32 0, null} ; [ DW_TAG_structure_type ]
!738 = metadata !{metadata !739, metadata !740}
!739 = metadata !{i32 589837, metadata !737, metadata !"__mask", metadata !736, i32 83, i64 32, i64 32, i64 0, i32 0, metadata !732} ; [ DW_TAG_member ]
!740 = metadata !{i32 589837, metadata !737, metadata !"__wc", metadata !736, i32 84, i64 32, i64 32, i64 32, i32 0, metadata !732} ; [ DW_TAG_member ]
!741 = metadata !{i32 589839, metadata !704, metadata !"", metadata !704, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !742} ; [ DW_TAG_pointer_type ]
!742 = metadata !{i32 589846, metadata !715, metadata !"__offmax_t", metadata !715, i32 194, i64 0, i64 0, i64 0, i32 0, metadata !743} ; [ DW_TAG_typedef ]
!743 = metadata !{i32 589860, metadata !704, metadata !"long int", metadata !704, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!744 = metadata !{i32 589870, i32 0, metadata !745, metadata !"__stdio_seek", metadata !"__stdio_seek", metadata !"__stdio_seek", metadata !745, i32 62, metadata !747, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.FILE*, i64*, i3
!745 = metadata !{i32 589865, metadata !"_cs_funcs.c", metadata !"/home/ecwong/klee-uclibc/libc/stdio", metadata !746} ; [ DW_TAG_file_type ]
!746 = metadata !{i32 589841, i32 0, i32 1, metadata !"_cs_funcs.c", metadata !"/home/ecwong/klee-uclibc/libc/stdio", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!747 = metadata !{i32 589845, metadata !745, metadata !"", metadata !745, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !748, i32 0, null} ; [ DW_TAG_subroutine_type ]
!748 = metadata !{metadata !749, metadata !750, metadata !782, metadata !749}
!749 = metadata !{i32 589860, metadata !745, metadata !"int", metadata !745, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!750 = metadata !{i32 589839, metadata !745, metadata !"", metadata !745, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !751} ; [ DW_TAG_pointer_type ]
!751 = metadata !{i32 589846, metadata !752, metadata !"FILE", metadata !752, i32 46, i64 0, i64 0, i64 0, i32 0, metadata !753} ; [ DW_TAG_typedef ]
!752 = metadata !{i32 589865, metadata !"stdio.h", metadata !"/home/ecwong/klee-uclibc/./include", metadata !746} ; [ DW_TAG_file_type ]
!753 = metadata !{i32 589843, metadata !745, metadata !"__STDIO_FILE_STRUCT", metadata !752, i32 46, i64 640, i64 64, i64 0, i32 0, null, metadata !754, i32 0, null} ; [ DW_TAG_structure_type ]
!754 = metadata !{metadata !755, metadata !758, metadata !761, metadata !762, metadata !764, metadata !765, metadata !766, metadata !767, metadata !768, metadata !769, metadata !771, metadata !775}
!755 = metadata !{i32 589837, metadata !753, metadata !"__modeflags", metadata !756, i32 234, i64 16, i64 16, i64 0, i32 0, metadata !757} ; [ DW_TAG_member ]
!756 = metadata !{i32 589865, metadata !"uClibc_stdio.h", metadata !"/home/ecwong/klee-uclibc/./include/bits", metadata !746} ; [ DW_TAG_file_type ]
!757 = metadata !{i32 589860, metadata !745, metadata !"short unsigned int", metadata !745, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!758 = metadata !{i32 589837, metadata !753, metadata !"__ungot_width", metadata !756, i32 237, i64 16, i64 8, i64 16, i32 0, metadata !759} ; [ DW_TAG_member ]
!759 = metadata !{i32 589825, metadata !745, metadata !"", metadata !745, i32 0, i64 16, i64 8, i64 0, i32 0, metadata !760, metadata !103, i32 0, null} ; [ DW_TAG_array_type ]
!760 = metadata !{i32 589860, metadata !745, metadata !"unsigned char", metadata !745, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!761 = metadata !{i32 589837, metadata !753, metadata !"__filedes", metadata !756, i32 244, i64 32, i64 32, i64 32, i32 0, metadata !749} ; [ DW_TAG_member ]
!762 = metadata !{i32 589837, metadata !753, metadata !"__bufstart", metadata !756, i32 246, i64 64, i64 64, i64 64, i32 0, metadata !763} ; [ DW_TAG_member ]
!763 = metadata !{i32 589839, metadata !745, metadata !"", metadata !745, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !760} ; [ DW_TAG_pointer_type ]
!764 = metadata !{i32 589837, metadata !753, metadata !"__bufend", metadata !756, i32 247, i64 64, i64 64, i64 128, i32 0, metadata !763} ; [ DW_TAG_member ]
!765 = metadata !{i32 589837, metadata !753, metadata !"__bufpos", metadata !756, i32 248, i64 64, i64 64, i64 192, i32 0, metadata !763} ; [ DW_TAG_member ]
!766 = metadata !{i32 589837, metadata !753, metadata !"__bufread", metadata !756, i32 249, i64 64, i64 64, i64 256, i32 0, metadata !763} ; [ DW_TAG_member ]
!767 = metadata !{i32 589837, metadata !753, metadata !"__bufgetc_u", metadata !756, i32 252, i64 64, i64 64, i64 320, i32 0, metadata !763} ; [ DW_TAG_member ]
!768 = metadata !{i32 589837, metadata !753, metadata !"__bufputc_u", metadata !756, i32 255, i64 64, i64 64, i64 384, i32 0, metadata !763} ; [ DW_TAG_member ]
!769 = metadata !{i32 589837, metadata !753, metadata !"__nextopen", metadata !756, i32 261, i64 64, i64 64, i64 448, i32 0, metadata !770} ; [ DW_TAG_member ]
!770 = metadata !{i32 589839, metadata !745, metadata !"", metadata !745, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !753} ; [ DW_TAG_pointer_type ]
!771 = metadata !{i32 589837, metadata !753, metadata !"__ungot", metadata !756, i32 268, i64 64, i64 32, i64 512, i32 0, metadata !772} ; [ DW_TAG_member ]
!772 = metadata !{i32 589825, metadata !745, metadata !"", metadata !745, i32 0, i64 64, i64 32, i64 0, i32 0, metadata !773, metadata !103, i32 0, null} ; [ DW_TAG_array_type ]
!773 = metadata !{i32 589846, metadata !774, metadata !"wchar_t", metadata !774, i32 326, i64 0, i64 0, i64 0, i32 0, metadata !749} ; [ DW_TAG_typedef ]
!774 = metadata !{i32 589865, metadata !"stddef.h", metadata !"/home/ecwong/llvm-gcc4.2-2.9-x86_64-linux/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.2.1/include", metadata !746} ; [ DW_TAG_file_type ]
!775 = metadata !{i32 589837, metadata !753, metadata !"__state", metadata !756, i32 271, i64 64, i64 32, i64 576, i32 0, metadata !776} ; [ DW_TAG_member ]
!776 = metadata !{i32 589846, metadata !777, metadata !"__mbstate_t", metadata !777, i32 85, i64 0, i64 0, i64 0, i32 0, metadata !778} ; [ DW_TAG_typedef ]
!777 = metadata !{i32 589865, metadata !"wchar.h", metadata !"/home/ecwong/klee-uclibc/./include", metadata !746} ; [ DW_TAG_file_type ]
!778 = metadata !{i32 589843, metadata !745, metadata !"", metadata !777, i32 82, i64 64, i64 32, i64 0, i32 0, null, metadata !779, i32 0, null} ; [ DW_TAG_structure_type ]
!779 = metadata !{metadata !780, metadata !781}
!780 = metadata !{i32 589837, metadata !778, metadata !"__mask", metadata !777, i32 83, i64 32, i64 32, i64 0, i32 0, metadata !773} ; [ DW_TAG_member ]
!781 = metadata !{i32 589837, metadata !778, metadata !"__wc", metadata !777, i32 84, i64 32, i64 32, i64 32, i32 0, metadata !773} ; [ DW_TAG_member ]
!782 = metadata !{i32 589839, metadata !745, metadata !"", metadata !745, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !783} ; [ DW_TAG_pointer_type ]
!783 = metadata !{i32 589846, metadata !756, metadata !"__offmax_t", metadata !756, i32 194, i64 0, i64 0, i64 0, i32 0, metadata !784} ; [ DW_TAG_typedef ]
!784 = metadata !{i32 589860, metadata !745, metadata !"long int", metadata !745, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!785 = metadata !{i32 589870, i32 0, metadata !786, metadata !"klee_div_zero_check", metadata !"klee_div_zero_check", metadata !"klee_div_zero_check", metadata !786, i32 12, metadata !788, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i6
!786 = metadata !{i32 589865, metadata !"klee_div_zero_check.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !787} ; [ DW_TAG_file_type ]
!787 = metadata !{i32 589841, i32 0, i32 1, metadata !"klee_div_zero_check.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compil
!788 = metadata !{i32 589845, metadata !786, metadata !"", metadata !786, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !789, i32 0, null} ; [ DW_TAG_subroutine_type ]
!789 = metadata !{null, metadata !790}
!790 = metadata !{i32 589860, metadata !786, metadata !"long long int", metadata !786, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!791 = metadata !{i32 589870, i32 0, metadata !792, metadata !"klee_int", metadata !"klee_int", metadata !"klee_int", metadata !792, i32 13, metadata !794, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @klee_int} ; [ DW_TAG_subprogr
!792 = metadata !{i32 589865, metadata !"klee_int.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !793} ; [ DW_TAG_file_type ]
!793 = metadata !{i32 589841, i32 0, i32 1, metadata !"klee_int.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!794 = metadata !{i32 589845, metadata !792, metadata !"", metadata !792, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !795, i32 0, null} ; [ DW_TAG_subroutine_type ]
!795 = metadata !{metadata !796, metadata !797}
!796 = metadata !{i32 589860, metadata !792, metadata !"int", metadata !792, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!797 = metadata !{i32 589839, metadata !792, metadata !"", metadata !792, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !798} ; [ DW_TAG_pointer_type ]
!798 = metadata !{i32 589862, metadata !792, metadata !"", metadata !792, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !799} ; [ DW_TAG_const_type ]
!799 = metadata !{i32 589860, metadata !792, metadata !"char", metadata !792, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!800 = metadata !{i32 589870, i32 0, metadata !801, metadata !"klee_overshift_check", metadata !"klee_overshift_check", metadata !"klee_overshift_check", metadata !801, i32 20, metadata !803, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void 
!801 = metadata !{i32 589865, metadata !"klee_overshift_check.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !802} ; [ DW_TAG_file_type ]
!802 = metadata !{i32 589841, i32 0, i32 1, metadata !"klee_overshift_check.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compi
!803 = metadata !{i32 589845, metadata !801, metadata !"", metadata !801, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !804, i32 0, null} ; [ DW_TAG_subroutine_type ]
!804 = metadata !{null, metadata !805, metadata !805}
!805 = metadata !{i32 589860, metadata !801, metadata !"long long unsigned int", metadata !801, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!806 = metadata !{i32 589870, i32 0, metadata !807, metadata !"klee_range", metadata !"klee_range", metadata !"klee_range", metadata !807, i32 13, metadata !809, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i8*)* @klee_range} ;
!807 = metadata !{i32 589865, metadata !"klee_range.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !808} ; [ DW_TAG_file_type ]
!808 = metadata !{i32 589841, i32 0, i32 1, metadata !"klee_range.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!809 = metadata !{i32 589845, metadata !807, metadata !"", metadata !807, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !810, i32 0, null} ; [ DW_TAG_subroutine_type ]
!810 = metadata !{metadata !811, metadata !811, metadata !811, metadata !812}
!811 = metadata !{i32 589860, metadata !807, metadata !"int", metadata !807, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!812 = metadata !{i32 589839, metadata !807, metadata !"", metadata !807, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !813} ; [ DW_TAG_pointer_type ]
!813 = metadata !{i32 589862, metadata !807, metadata !"", metadata !807, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !814} ; [ DW_TAG_const_type ]
!814 = metadata !{i32 589860, metadata !807, metadata !"char", metadata !807, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!815 = metadata !{i32 589870, i32 0, metadata !816, metadata !"memcpy", metadata !"memcpy", metadata !"memcpy", metadata !816, i32 12, metadata !818, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memcpy} ; [ DW_TAG_subpro
!816 = metadata !{i32 589865, metadata !"memcpy.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !817} ; [ DW_TAG_file_type ]
!817 = metadata !{i32 589841, i32 0, i32 1, metadata !"memcpy.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!818 = metadata !{i32 589845, metadata !816, metadata !"", metadata !816, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !819, i32 0, null} ; [ DW_TAG_subroutine_type ]
!819 = metadata !{metadata !820, metadata !820, metadata !820, metadata !821}
!820 = metadata !{i32 589839, metadata !816, metadata !"", metadata !816, i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ]
!821 = metadata !{i32 589846, metadata !822, metadata !"size_t", metadata !822, i32 326, i64 0, i64 0, i64 0, i32 0, metadata !823} ; [ DW_TAG_typedef ]
!822 = metadata !{i32 589865, metadata !"stddef.h", metadata !"/home/ecwong/llvm-gcc4.2-2.9-x86_64-linux/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.2.1/include", metadata !817} ; [ DW_TAG_file_type ]
!823 = metadata !{i32 589860, metadata !816, metadata !"long unsigned int", metadata !816, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!824 = metadata !{i32 589870, i32 0, metadata !825, metadata !"memmove", metadata !"memmove", metadata !"memmove", metadata !825, i32 12, metadata !827, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memmove} ; [ DW_TAG_su
!825 = metadata !{i32 589865, metadata !"memmove.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !826} ; [ DW_TAG_file_type ]
!826 = metadata !{i32 589841, i32 0, i32 1, metadata !"memmove.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!827 = metadata !{i32 589845, metadata !825, metadata !"", metadata !825, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !828, i32 0, null} ; [ DW_TAG_subroutine_type ]
!828 = metadata !{metadata !829, metadata !829, metadata !829, metadata !830}
!829 = metadata !{i32 589839, metadata !825, metadata !"", metadata !825, i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ]
!830 = metadata !{i32 589846, metadata !831, metadata !"size_t", metadata !831, i32 326, i64 0, i64 0, i64 0, i32 0, metadata !832} ; [ DW_TAG_typedef ]
!831 = metadata !{i32 589865, metadata !"stddef.h", metadata !"/home/ecwong/llvm-gcc4.2-2.9-x86_64-linux/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.2.1/include", metadata !826} ; [ DW_TAG_file_type ]
!832 = metadata !{i32 589860, metadata !825, metadata !"long unsigned int", metadata !825, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!833 = metadata !{i32 589870, i32 0, metadata !834, metadata !"mempcpy", metadata !"mempcpy", metadata !"mempcpy", metadata !834, i32 11, metadata !836, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @mempcpy} ; [ DW_TAG_su
!834 = metadata !{i32 589865, metadata !"mempcpy.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !835} ; [ DW_TAG_file_type ]
!835 = metadata !{i32 589841, i32 0, i32 1, metadata !"mempcpy.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!836 = metadata !{i32 589845, metadata !834, metadata !"", metadata !834, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !837, i32 0, null} ; [ DW_TAG_subroutine_type ]
!837 = metadata !{metadata !838, metadata !838, metadata !838, metadata !839}
!838 = metadata !{i32 589839, metadata !834, metadata !"", metadata !834, i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ]
!839 = metadata !{i32 589846, metadata !840, metadata !"size_t", metadata !840, i32 326, i64 0, i64 0, i64 0, i32 0, metadata !841} ; [ DW_TAG_typedef ]
!840 = metadata !{i32 589865, metadata !"stddef.h", metadata !"/home/ecwong/llvm-gcc4.2-2.9-x86_64-linux/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.2.1/include", metadata !835} ; [ DW_TAG_file_type ]
!841 = metadata !{i32 589860, metadata !834, metadata !"long unsigned int", metadata !834, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!842 = metadata !{i32 589870, i32 0, metadata !843, metadata !"memset", metadata !"memset", metadata !"memset", metadata !843, i32 11, metadata !845, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i32, i64)* @memset} ; [ DW_TAG_subpro
!843 = metadata !{i32 589865, metadata !"memset.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !844} ; [ DW_TAG_file_type ]
!844 = metadata !{i32 589841, i32 0, i32 1, metadata !"memset.c", metadata !"/home/ecwong/klee/runtime/Intrinsic/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!845 = metadata !{i32 589845, metadata !843, metadata !"", metadata !843, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !846, i32 0, null} ; [ DW_TAG_subroutine_type ]
!846 = metadata !{metadata !847, metadata !847, metadata !848, metadata !849}
!847 = metadata !{i32 589839, metadata !843, metadata !"", metadata !843, i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ]
!848 = metadata !{i32 589860, metadata !843, metadata !"int", metadata !843, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!849 = metadata !{i32 589846, metadata !850, metadata !"size_t", metadata !850, i32 326, i64 0, i64 0, i64 0, i32 0, metadata !851} ; [ DW_TAG_typedef ]
!850 = metadata !{i32 589865, metadata !"stddef.h", metadata !"/home/ecwong/llvm-gcc4.2-2.9-x86_64-linux/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.2.1/include", metadata !844} ; [ DW_TAG_file_type ]
!851 = metadata !{i32 589860, metadata !843, metadata !"long unsigned int", metadata !843, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!852 = metadata !{i32 589876, i32 0, metadata !12, metadata !"__libc_stack_end", metadata !"__libc_stack_end", metadata !"", metadata !12, i32 52, metadata !40, i1 false, i1 true, i8** @__libc_stack_end} ; [ DW_TAG_variable ]
!853 = metadata !{i32 589876, i32 0, metadata !12, metadata !"__uclibc_progname", metadata !"__uclibc_progname", metadata !"", metadata !12, i32 110, metadata !854, i1 false, i1 true, i8** @__uclibc_progname} ; [ DW_TAG_variable ]
!854 = metadata !{i32 589839, metadata !12, metadata !"", metadata !12, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !855} ; [ DW_TAG_pointer_type ]
!855 = metadata !{i32 589862, metadata !12, metadata !"", metadata !12, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !38} ; [ DW_TAG_const_type ]
!856 = metadata !{i32 589876, i32 0, metadata !12, metadata !"__environ", metadata !"__environ", metadata !"", metadata !12, i32 125, metadata !36, i1 false, i1 true, i8*** @__environ} ; [ DW_TAG_variable ]
!857 = metadata !{i32 589876, i32 0, metadata !12, metadata !"__pagesize", metadata !"__pagesize", metadata !"", metadata !12, i32 129, metadata !858, i1 false, i1 true, i64* @__pagesize} ; [ DW_TAG_variable ]
!858 = metadata !{i32 589846, metadata !859, metadata !"size_t", metadata !859, i32 214, i64 0, i64 0, i64 0, i32 0, metadata !860} ; [ DW_TAG_typedef ]
!859 = metadata !{i32 589865, metadata !"stddef.h", metadata !"/home/ecwong/llvm-gcc4.2-2.9-x86_64-linux/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.2.1/include", metadata !13} ; [ DW_TAG_file_type ]
!860 = metadata !{i32 589860, metadata !12, metadata !"long unsigned int", metadata !12, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!861 = metadata !{i32 589876, i32 0, metadata !26, metadata !"been_there_done_that", metadata !"been_there_done_that", metadata !"", metadata !12, i32 189, metadata !16, i1 true, i1 true, i32* @been_there_done_that.2848} ; [ DW_TAG_variable ]
!862 = metadata !{i32 589876, i32 0, metadata !12, metadata !"__app_fini", metadata !"__app_fini", metadata !"", metadata !12, i32 244, metadata !39, i1 false, i1 true, void ()** @__app_fini} ; [ DW_TAG_variable ]
!863 = metadata !{i32 589876, i32 0, metadata !12, metadata !"__rtld_fini", metadata !"__rtld_fini", metadata !"", metadata !12, i32 247, metadata !39, i1 false, i1 true, void ()** @__rtld_fini} ; [ DW_TAG_variable ]
!864 = metadata !{i32 589876, i32 0, metadata !44, metadata !"__exit_cleanup", metadata !"__exit_cleanup", metadata !"", metadata !44, i32 309, metadata !865, i1 false, i1 true, void (i32)** @__exit_cleanup} ; [ DW_TAG_variable ]
!865 = metadata !{i32 589839, metadata !42, metadata !"", metadata !42, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !45} ; [ DW_TAG_pointer_type ]
!866 = metadata !{i32 589876, i32 0, metadata !134, metadata !"_stdio_streams", metadata !"_stdio_streams", metadata !"", metadata !134, i32 131, metadata !867, i1 true, i1 true, [3 x %struct.FILE]* @_stdio_streams} ; [ DW_TAG_variable ]
!867 = metadata !{i32 589825, metadata !134, metadata !"", metadata !134, i32 0, i64 1920, i64 64, i64 0, i32 0, metadata !868, metadata !900, i32 0, null} ; [ DW_TAG_array_type ]
!868 = metadata !{i32 589846, metadata !869, metadata !"FILE", metadata !869, i32 46, i64 0, i64 0, i64 0, i32 0, metadata !870} ; [ DW_TAG_typedef ]
!869 = metadata !{i32 589865, metadata !"stdio.h", metadata !"/home/ecwong/klee-uclibc/./include", metadata !135} ; [ DW_TAG_file_type ]
!870 = metadata !{i32 589843, metadata !134, metadata !"__STDIO_FILE_STRUCT", metadata !869, i32 46, i64 640, i64 64, i64 0, i32 0, null, metadata !871, i32 0, null} ; [ DW_TAG_structure_type ]
!871 = metadata !{metadata !872, metadata !875, metadata !878, metadata !880, metadata !882, metadata !883, metadata !884, metadata !885, metadata !886, metadata !887, metadata !889, metadata !893}
!872 = metadata !{i32 589837, metadata !870, metadata !"__modeflags", metadata !873, i32 234, i64 16, i64 16, i64 0, i32 0, metadata !874} ; [ DW_TAG_member ]
!873 = metadata !{i32 589865, metadata !"uClibc_stdio.h", metadata !"/home/ecwong/klee-uclibc/./include/bits", metadata !135} ; [ DW_TAG_file_type ]
!874 = metadata !{i32 589860, metadata !134, metadata !"short unsigned int", metadata !134, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!875 = metadata !{i32 589837, metadata !870, metadata !"__ungot_width", metadata !873, i32 237, i64 16, i64 8, i64 16, i32 0, metadata !876} ; [ DW_TAG_member ]
!876 = metadata !{i32 589825, metadata !134, metadata !"", metadata !134, i32 0, i64 16, i64 8, i64 0, i32 0, metadata !877, metadata !103, i32 0, null} ; [ DW_TAG_array_type ]
!877 = metadata !{i32 589860, metadata !134, metadata !"unsigned char", metadata !134, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!878 = metadata !{i32 589837, metadata !870, metadata !"__filedes", metadata !873, i32 244, i64 32, i64 32, i64 32, i32 0, metadata !879} ; [ DW_TAG_member ]
!879 = metadata !{i32 589860, metadata !134, metadata !"int", metadata !134, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!880 = metadata !{i32 589837, metadata !870, metadata !"__bufstart", metadata !873, i32 246, i64 64, i64 64, i64 64, i32 0, metadata !881} ; [ DW_TAG_member ]
!881 = metadata !{i32 589839, metadata !134, metadata !"", metadata !134, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !877} ; [ DW_TAG_pointer_type ]
!882 = metadata !{i32 589837, metadata !870, metadata !"__bufend", metadata !873, i32 247, i64 64, i64 64, i64 128, i32 0, metadata !881} ; [ DW_TAG_member ]
!883 = metadata !{i32 589837, metadata !870, metadata !"__bufpos", metadata !873, i32 248, i64 64, i64 64, i64 192, i32 0, metadata !881} ; [ DW_TAG_member ]
!884 = metadata !{i32 589837, metadata !870, metadata !"__bufread", metadata !873, i32 249, i64 64, i64 64, i64 256, i32 0, metadata !881} ; [ DW_TAG_member ]
!885 = metadata !{i32 589837, metadata !870, metadata !"__bufgetc_u", metadata !873, i32 252, i64 64, i64 64, i64 320, i32 0, metadata !881} ; [ DW_TAG_member ]
!886 = metadata !{i32 589837, metadata !870, metadata !"__bufputc_u", metadata !873, i32 255, i64 64, i64 64, i64 384, i32 0, metadata !881} ; [ DW_TAG_member ]
!887 = metadata !{i32 589837, metadata !870, metadata !"__nextopen", metadata !873, i32 261, i64 64, i64 64, i64 448, i32 0, metadata !888} ; [ DW_TAG_member ]
!888 = metadata !{i32 589839, metadata !134, metadata !"", metadata !134, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !870} ; [ DW_TAG_pointer_type ]
!889 = metadata !{i32 589837, metadata !870, metadata !"__ungot", metadata !873, i32 268, i64 64, i64 32, i64 512, i32 0, metadata !890} ; [ DW_TAG_member ]
!890 = metadata !{i32 589825, metadata !134, metadata !"", metadata !134, i32 0, i64 64, i64 32, i64 0, i32 0, metadata !891, metadata !103, i32 0, null} ; [ DW_TAG_array_type ]
!891 = metadata !{i32 589846, metadata !892, metadata !"wchar_t", metadata !892, i32 326, i64 0, i64 0, i64 0, i32 0, metadata !879} ; [ DW_TAG_typedef ]
!892 = metadata !{i32 589865, metadata !"stddef.h", metadata !"/home/ecwong/llvm-gcc4.2-2.9-x86_64-linux/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.2.1/include", metadata !135} ; [ DW_TAG_file_type ]
!893 = metadata !{i32 589837, metadata !870, metadata !"__state", metadata !873, i32 271, i64 64, i64 32, i64 576, i32 0, metadata !894} ; [ DW_TAG_member ]
!894 = metadata !{i32 589846, metadata !895, metadata !"__mbstate_t", metadata !895, i32 85, i64 0, i64 0, i64 0, i32 0, metadata !896} ; [ DW_TAG_typedef ]
!895 = metadata !{i32 589865, metadata !"wchar.h", metadata !"/home/ecwong/klee-uclibc/./include", metadata !135} ; [ DW_TAG_file_type ]
!896 = metadata !{i32 589843, metadata !134, metadata !"", metadata !895, i32 82, i64 64, i64 32, i64 0, i32 0, null, metadata !897, i32 0, null} ; [ DW_TAG_structure_type ]
!897 = metadata !{metadata !898, metadata !899}
!898 = metadata !{i32 589837, metadata !896, metadata !"__mask", metadata !895, i32 83, i64 32, i64 32, i64 0, i32 0, metadata !891} ; [ DW_TAG_member ]
!899 = metadata !{i32 589837, metadata !896, metadata !"__wc", metadata !895, i32 84, i64 32, i64 32, i64 32, i32 0, metadata !891} ; [ DW_TAG_member ]
!900 = metadata !{metadata !901}
!901 = metadata !{i32 589857, i64 0, i64 2}       ; [ DW_TAG_subrange_type ]
!902 = metadata !{i32 589876, i32 0, metadata !134, metadata !"stdin", metadata !"stdin", metadata !"", metadata !134, i32 154, metadata !903, i1 false, i1 true, %struct.FILE** @stdin} ; [ DW_TAG_variable ]
!903 = metadata !{i32 589839, metadata !134, metadata !"", metadata !134, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !868} ; [ DW_TAG_pointer_type ]
!904 = metadata !{i32 589876, i32 0, metadata !134, metadata !"stdout", metadata !"stdout", metadata !"", metadata !134, i32 155, metadata !903, i1 false, i1 true, %struct.FILE** @stdout} ; [ DW_TAG_variable ]
!905 = metadata !{i32 589876, i32 0, metadata !134, metadata !"stderr", metadata !"stderr", metadata !"", metadata !134, i32 156, metadata !903, i1 false, i1 true, %struct.FILE** @stderr} ; [ DW_TAG_variable ]
!906 = metadata !{i32 589876, i32 0, metadata !134, metadata !"__stdin", metadata !"__stdin", metadata !"", metadata !134, i32 159, metadata !903, i1 false, i1 true, %struct.FILE** @__stdin} ; [ DW_TAG_variable ]
!907 = metadata !{i32 589876, i32 0, metadata !134, metadata !"__stdout", metadata !"__stdout", metadata !"", metadata !134, i32 162, metadata !903, i1 false, i1 true, %struct.FILE** @__stdout} ; [ DW_TAG_variable ]
!908 = metadata !{i32 589876, i32 0, metadata !134, metadata !"_stdio_openlist", metadata !"_stdio_openlist", metadata !"", metadata !134, i32 180, metadata !888, i1 false, i1 true, %struct.FILE** @_stdio_openlist} ; [ DW_TAG_variable ]
!909 = metadata !{i32 589876, i32 0, metadata !139, metadata !"been_there_done_that", metadata !"been_there_done_that", metadata !"", metadata !139, i32 49, metadata !910, i1 true, i1 true, i32* @been_there_done_that} ; [ DW_TAG_variable ]
!910 = metadata !{i32 589860, metadata !139, metadata !"int", metadata !139, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!911 = metadata !{i32 589876, i32 0, metadata !204, metadata !"_sigintr", metadata !"_sigintr", metadata !"", metadata !204, i32 27, metadata !912, i1 false, i1 true, %struct.__sigset_t* @_sigintr} ; [ DW_TAG_variable ]
!912 = metadata !{i32 589846, metadata !209, metadata !"sigset_t", metadata !209, i32 50, i64 0, i64 0, i64 0, i32 0, metadata !913} ; [ DW_TAG_typedef ]
!913 = metadata !{i32 589843, metadata !204, metadata !"", metadata !914, i32 29, i64 1024, i64 64, i64 0, i32 0, null, metadata !915, i32 0, null} ; [ DW_TAG_structure_type ]
!914 = metadata !{i32 589865, metadata !"sigset.h", metadata !"/home/ecwong/klee-uclibc/./include/bits", metadata !205} ; [ DW_TAG_file_type ]
!915 = metadata !{metadata !916}
!916 = metadata !{i32 589837, metadata !913, metadata !"__val", metadata !914, i32 30, i64 1024, i64 64, i64 0, i32 0, metadata !917} ; [ DW_TAG_member ]
!917 = metadata !{i32 589825, metadata !204, metadata !"", metadata !204, i32 0, i64 1024, i64 64, i64 0, i32 0, metadata !918, metadata !238, i32 0, null} ; [ DW_TAG_array_type ]
!918 = metadata !{i32 589860, metadata !204, metadata !"long unsigned int", metadata !204, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!919 = metadata !{i32 589876, i32 0, metadata !920, metadata !"errno", metadata !"errno", metadata !"", metadata !920, i32 7, metadata !922, i1 false, i1 true, i32* @errno} ; [ DW_TAG_variable ]
!920 = metadata !{i32 589865, metadata !"errno.c", metadata !"/home/ecwong/klee-uclibc/libc/misc/internals", metadata !921} ; [ DW_TAG_file_type ]
!921 = metadata !{i32 589841, i32 0, i32 1, metadata !"errno.c", metadata !"/home/ecwong/klee-uclibc/libc/misc/internals", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_uni
!922 = metadata !{i32 589860, metadata !920, metadata !"int", metadata !920, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!923 = metadata !{i32 589876, i32 0, metadata !920, metadata !"h_errno", metadata !"h_errno", metadata !"", metadata !920, i32 8, metadata !922, i1 false, i1 true, i32* @h_errno} ; [ DW_TAG_variable ]
!924 = metadata !{i32 590081, metadata !785, metadata !"z", metadata !786, i32 12, metadata !790, i32 0} ; [ DW_TAG_arg_variable ]
!925 = metadata !{i32 590081, metadata !791, metadata !"name", metadata !792, i32 13, metadata !797, i32 0} ; [ DW_TAG_arg_variable ]
!926 = metadata !{i32 590080, metadata !927, metadata !"x", metadata !792, i32 14, metadata !796, i32 0} ; [ DW_TAG_auto_variable ]
!927 = metadata !{i32 589835, metadata !791, i32 13, i32 0, metadata !792, i32 0} ; [ DW_TAG_lexical_block ]
!928 = metadata !{i32 590081, metadata !800, metadata !"bitWidth", metadata !801, i32 20, metadata !805, i32 0} ; [ DW_TAG_arg_variable ]
!929 = metadata !{i32 590081, metadata !800, metadata !"shift", metadata !801, i32 20, metadata !805, i32 0} ; [ DW_TAG_arg_variable ]
!930 = metadata !{i32 590081, metadata !806, metadata !"start", metadata !807, i32 13, metadata !811, i32 0} ; [ DW_TAG_arg_variable ]
!931 = metadata !{i32 590081, metadata !806, metadata !"end", metadata !807, i32 13, metadata !811, i32 0} ; [ DW_TAG_arg_variable ]
!932 = metadata !{i32 590081, metadata !806, metadata !"name", metadata !807, i32 13, metadata !812, i32 0} ; [ DW_TAG_arg_variable ]
!933 = metadata !{i32 590080, metadata !934, metadata !"x", metadata !807, i32 14, metadata !811, i32 0} ; [ DW_TAG_auto_variable ]
!934 = metadata !{i32 589835, metadata !806, i32 13, i32 0, metadata !807, i32 0} ; [ DW_TAG_lexical_block ]
!935 = metadata !{i32 590081, metadata !815, metadata !"destaddr", metadata !816, i32 12, metadata !820, i32 0} ; [ DW_TAG_arg_variable ]
!936 = metadata !{i32 590081, metadata !815, metadata !"srcaddr", metadata !816, i32 12, metadata !820, i32 0} ; [ DW_TAG_arg_variable ]
!937 = metadata !{i32 590081, metadata !815, metadata !"len", metadata !816, i32 12, metadata !821, i32 0} ; [ DW_TAG_arg_variable ]
!938 = metadata !{i32 590080, metadata !939, metadata !"dest", metadata !816, i32 13, metadata !940, i32 0} ; [ DW_TAG_auto_variable ]
!939 = metadata !{i32 589835, metadata !815, i32 12, i32 0, metadata !816, i32 0} ; [ DW_TAG_lexical_block ]
!940 = metadata !{i32 589839, metadata !816, metadata !"", metadata !816, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !941} ; [ DW_TAG_pointer_type ]
!941 = metadata !{i32 589860, metadata !816, metadata !"char", metadata !816, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!942 = metadata !{i32 590080, metadata !939, metadata !"src", metadata !816, i32 14, metadata !943, i32 0} ; [ DW_TAG_auto_variable ]
!943 = metadata !{i32 589839, metadata !816, metadata !"", metadata !816, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !944} ; [ DW_TAG_pointer_type ]
!944 = metadata !{i32 589862, metadata !816, metadata !"", metadata !816, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !941} ; [ DW_TAG_const_type ]
!945 = metadata !{i32 590081, metadata !824, metadata !"dst", metadata !825, i32 12, metadata !829, i32 0} ; [ DW_TAG_arg_variable ]
!946 = metadata !{i32 590081, metadata !824, metadata !"src", metadata !825, i32 12, metadata !829, i32 0} ; [ DW_TAG_arg_variable ]
!947 = metadata !{i32 590081, metadata !824, metadata !"count", metadata !825, i32 12, metadata !830, i32 0} ; [ DW_TAG_arg_variable ]
!948 = metadata !{i32 590080, metadata !949, metadata !"a", metadata !825, i32 13, metadata !950, i32 0} ; [ DW_TAG_auto_variable ]
!949 = metadata !{i32 589835, metadata !824, i32 12, i32 0, metadata !825, i32 0} ; [ DW_TAG_lexical_block ]
!950 = metadata !{i32 589839, metadata !825, metadata !"", metadata !825, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !951} ; [ DW_TAG_pointer_type ]
!951 = metadata !{i32 589860, metadata !825, metadata !"char", metadata !825, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!952 = metadata !{i32 590080, metadata !949, metadata !"b", metadata !825, i32 14, metadata !953, i32 0} ; [ DW_TAG_auto_variable ]
!953 = metadata !{i32 589839, metadata !825, metadata !"", metadata !825, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !954} ; [ DW_TAG_pointer_type ]
!954 = metadata !{i32 589862, metadata !825, metadata !"", metadata !825, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !951} ; [ DW_TAG_const_type ]
!955 = metadata !{i32 590081, metadata !833, metadata !"destaddr", metadata !834, i32 11, metadata !838, i32 0} ; [ DW_TAG_arg_variable ]
!956 = metadata !{i32 590081, metadata !833, metadata !"srcaddr", metadata !834, i32 11, metadata !838, i32 0} ; [ DW_TAG_arg_variable ]
!957 = metadata !{i32 590081, metadata !833, metadata !"len", metadata !834, i32 11, metadata !839, i32 0} ; [ DW_TAG_arg_variable ]
!958 = metadata !{i32 590080, metadata !959, metadata !"dest", metadata !834, i32 12, metadata !960, i32 0} ; [ DW_TAG_auto_variable ]
!959 = metadata !{i32 589835, metadata !833, i32 11, i32 0, metadata !834, i32 0} ; [ DW_TAG_lexical_block ]
!960 = metadata !{i32 589839, metadata !834, metadata !"", metadata !834, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !961} ; [ DW_TAG_pointer_type ]
!961 = metadata !{i32 589860, metadata !834, metadata !"char", metadata !834, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!962 = metadata !{i32 590080, metadata !959, metadata !"src", metadata !834, i32 13, metadata !963, i32 0} ; [ DW_TAG_auto_variable ]
!963 = metadata !{i32 589839, metadata !834, metadata !"", metadata !834, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !964} ; [ DW_TAG_pointer_type ]
!964 = metadata !{i32 589862, metadata !834, metadata !"", metadata !834, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !961} ; [ DW_TAG_const_type ]
!965 = metadata !{i32 590081, metadata !842, metadata !"dst", metadata !843, i32 11, metadata !847, i32 0} ; [ DW_TAG_arg_variable ]
!966 = metadata !{i32 590081, metadata !842, metadata !"s", metadata !843, i32 11, metadata !848, i32 0} ; [ DW_TAG_arg_variable ]
!967 = metadata !{i32 590081, metadata !842, metadata !"count", metadata !843, i32 11, metadata !849, i32 0} ; [ DW_TAG_arg_variable ]
!968 = metadata !{i32 590080, metadata !969, metadata !"a", metadata !843, i32 12, metadata !970, i32 0} ; [ DW_TAG_auto_variable ]
!969 = metadata !{i32 589835, metadata !842, i32 11, i32 0, metadata !843, i32 0} ; [ DW_TAG_lexical_block ]
!970 = metadata !{i32 589839, metadata !843, metadata !"", metadata !843, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !971} ; [ DW_TAG_pointer_type ]
!971 = metadata !{i32 589877, metadata !843, metadata !"", metadata !843, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !972} ; [ DW_TAG_volatile_type ]
!972 = metadata !{i32 589860, metadata !843, metadata !"char", metadata !843, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!973 = metadata !{i32 24, i32 0, metadata !974, null}
!974 = metadata !{i32 589835, metadata !0, i32 21, i32 0, metadata !1, i32 0} ; [ DW_TAG_lexical_block ]
!975 = metadata !{i32 26, i32 0, metadata !974, null}
!976 = metadata !{i32 30, i32 0, metadata !977, null}
!977 = metadata !{i32 589835, metadata !6, i32 28, i32 0, metadata !1, i32 1} ; [ DW_TAG_lexical_block ]
!978 = metadata !{i32 33, i32 0, metadata !977, null}
!979 = metadata !{i32 34, i32 0, metadata !977, null}
!980 = metadata !{i32 36, i32 0, metadata !977, null}
!981 = metadata !{i32 38, i32 0, metadata !977, null}
!982 = metadata !{i32 39, i32 0, metadata !977, null}
!983 = metadata !{i32 41, i32 0, metadata !977, null}
!984 = metadata !{i32 42, i32 0, metadata !977, null}
!985 = metadata !{i32 48, i32 0, metadata !977, null}
!986 = metadata !{i32 45, i32 0, metadata !977, null}
!987 = metadata !{i32 44, i32 0, metadata !977, null}
!988 = metadata !{i32 139, i32 0, metadata !989, null}
!989 = metadata !{i32 589835, metadata !11, i32 137, i32 0, metadata !12, i32 0} ; [ DW_TAG_lexical_block ]
!990 = metadata !{i32 143, i32 0, metadata !991, null}
!991 = metadata !{i32 589835, metadata !989, i32 137, i32 0, metadata !12, i32 1} ; [ DW_TAG_lexical_block ]
!992 = metadata !{i32 147, i32 0, metadata !991, null}
!993 = metadata !{i32 150, i32 0, metadata !991, null}
!994 = metadata !{i32 153, i32 0, metadata !991, null}
!995 = metadata !{i32 56, i32 0, metadata !996, null}
!996 = metadata !{i32 589835, metadata !17, i32 55, i32 0, metadata !18, i32 2} ; [ DW_TAG_lexical_block ]
!997 = metadata !{i32 160, i32 0, metadata !998, null}
!998 = metadata !{i32 589835, metadata !23, i32 156, i32 0, metadata !12, i32 3} ; [ DW_TAG_lexical_block ]
!999 = metadata !{i32 161, i32 0, metadata !998, null}
!1000 = metadata !{i32 162, i32 0, metadata !998, null}
!1001 = metadata !{i32 163, i32 0, metadata !998, null}
!1002 = metadata !{i32 165, i32 0, metadata !998, null}
!1003 = metadata !{i32 166, i32 0, metadata !998, null}
!1004 = metadata !{i32 168, i32 0, metadata !998, null}
!1005 = metadata !{i32 191, i32 0, metadata !1006, null}
!1006 = metadata !{i32 589835, metadata !26, i32 188, i32 0, metadata !12, i32 4} ; [ DW_TAG_lexical_block ]
!1007 = metadata !{i32 193, i32 0, metadata !1006, null}
!1008 = metadata !{i32 197, i32 0, metadata !1006, null}
!1009 = metadata !{i32 239, i32 0, metadata !1006, null}
!1010 = metadata !{i32 192, i32 0, metadata !1006, null}
!1011 = metadata !{i32 263, i32 0, metadata !1012, null}
!1012 = metadata !{i32 589835, metadata !29, i32 252, i32 0, metadata !12, i32 5} ; [ DW_TAG_lexical_block ]
!1013 = metadata !{i32 264, i32 0, metadata !1012, null}
!1014 = metadata !{i32 266, i32 0, metadata !1012, null}
!1015 = metadata !{i32 267, i32 0, metadata !1012, null}
!1016 = metadata !{i32 268, i32 0, metadata !1012, null}
!1017 = metadata !{i32 288, i32 0, metadata !1018, null}
!1018 = metadata !{i32 589835, metadata !30, i32 281, i32 0, metadata !12, i32 6} ; [ DW_TAG_lexical_block ]
!1019 = metadata !{i32 291, i32 0, metadata !1018, null}
!1020 = metadata !{i32 294, i32 0, metadata !1018, null}
!1021 = metadata !{i32 298, i32 0, metadata !1018, null}
!1022 = metadata !{i32 300, i32 0, metadata !1018, null}
!1023 = metadata !{i32 305, i32 0, metadata !1018, null}
!1024 = metadata !{i32 306, i32 0, metadata !1018, null}
!1025 = metadata !{i32 307, i32 0, metadata !1018, null}
!1026 = metadata !{i32 308, i32 0, metadata !1018, null}
!1027 = metadata !{i32 312, i32 0, metadata !1028, null}
!1028 = metadata !{i32 589835, metadata !1018, i32 312, i32 0, metadata !12, i32 7} ; [ DW_TAG_lexical_block ]
!1029 = metadata !{i32 313, i32 0, metadata !1028, null}
!1030 = metadata !{i32 314, i32 0, metadata !1028, null}
!1031 = metadata !{i32 316, i32 0, metadata !1028, null}
!1032 = metadata !{i32 311, i32 0, metadata !1018, null}
!1033 = metadata !{i32 323, i32 0, metadata !1018, null}
!1034 = metadata !{i32 327, i32 0, metadata !1018, null}
!1035 = metadata !{i32 331, i32 0, metadata !1018, null}
!1036 = metadata !{i32 336, i32 0, metadata !1018, null}
!1037 = metadata !{i32 337, i32 0, metadata !1018, null}
!1038 = metadata !{i32 338, i32 0, metadata !1018, null}
!1039 = metadata !{i32 342, i32 0, metadata !1018, null}
!1040 = metadata !{i32 354, i32 0, metadata !1018, null}
!1041 = metadata !{i32 370, i32 0, metadata !1018, null}
!1042 = metadata !{i32 371, i32 0, metadata !1018, null}
!1043 = metadata !{i32 391, i32 0, metadata !1018, null}
!1044 = metadata !{i32 392, i32 0, metadata !1018, null}
!1045 = metadata !{i32 395, i32 0, metadata !1018, null}
!1046 = metadata !{i32 396, i32 0, metadata !1018, null}
!1047 = metadata !{i32 401, i32 0, metadata !1018, null}
!1048 = metadata !{i32 322, i32 0, metadata !1049, null}
!1049 = metadata !{i32 589835, metadata !41, i32 319, i32 0, metadata !44, i32 0} ; [ DW_TAG_lexical_block ]
!1050 = metadata !{i32 323, i32 0, metadata !1049, null}
!1051 = metadata !{i32 327, i32 0, metadata !1049, null}
!1052 = metadata !{i32 334, i32 0, metadata !1049, null}
!1053 = metadata !{i32 336, i32 0, metadata !1049, null}
!1054 = metadata !{i32 15, i32 0, metadata !1055, null}
!1055 = metadata !{i32 589835, metadata !48, i32 14, i32 0, metadata !49, i32 0} ; [ DW_TAG_lexical_block ]
!1056 = metadata !{i32 26, i32 0, metadata !1055, null}
!1057 = metadata !{i32 27, i32 0, metadata !1055, null}
!1058 = metadata !{i32 28, i32 0, metadata !1055, null}
!1059 = metadata !{i32 29, i32 0, metadata !1055, null}
!1060 = metadata !{i32 35, i32 0, metadata !1055, null}
!1061 = metadata !{i32 20, i32 0, metadata !1062, null}
!1062 = metadata !{i32 589835, metadata !57, i32 19, i32 0, metadata !58, i32 0} ; [ DW_TAG_lexical_block ]
!1063 = metadata !{i32 29, i32 0, metadata !1062, null}
!1064 = metadata !{i32 30, i32 0, metadata !1062, null}
!1065 = metadata !{i32 31, i32 0, metadata !1062, null}
!1066 = metadata !{i32 28, i32 0, metadata !1062, null}
!1067 = metadata !{i32 35, i32 0, metadata !1062, null}
!1068 = metadata !{i32 33, i32 0, metadata !1069, null}
!1069 = metadata !{i32 589835, metadata !69, i32 29, i32 0, metadata !70, i32 0} ; [ DW_TAG_lexical_block ]
!1070 = metadata !{i32 34, i32 0, metadata !1069, null}
!1071 = metadata !{i32 36, i32 0, metadata !1069, null}
!1072 = metadata !{i32 37, i32 0, metadata !1069, null}
!1073 = metadata !{i32 38, i32 0, metadata !1069, null}
!1074 = metadata !{i32 40, i32 0, metadata !1069, null}
!1075 = metadata !{i32 41, i32 0, metadata !1069, null}
!1076 = metadata !{i32 42, i32 0, metadata !1069, null}
!1077 = metadata !{i32 43, i32 0, metadata !1069, null}
!1078 = metadata !{i32 44, i32 0, metadata !1069, null}
!1079 = metadata !{i32 46, i32 0, metadata !1069, null}
!1080 = metadata !{i32 47, i32 0, metadata !1069, null}
!1081 = metadata !{i32 48, i32 0, metadata !1069, null}
!1082 = metadata !{i32 49, i32 0, metadata !1069, null}
!1083 = metadata !{i32 51, i32 0, metadata !1069, null}
!1084 = metadata !{i32 52, i32 0, metadata !1069, null}
!1085 = metadata !{i32 55, i32 0, metadata !1069, null}
!1086 = metadata !{i32 56, i32 0, metadata !1069, null}
!1087 = metadata !{i32 62, i32 0, metadata !1069, null}
!1088 = metadata !{i32 63, i32 0, metadata !1069, null}
!1089 = metadata !{i32 65, i32 0, metadata !1069, null}
!1090 = metadata !{i32 66, i32 0, metadata !1069, null}
!1091 = metadata !{i32 67, i32 0, metadata !1069, null}
!1092 = metadata !{i32 68, i32 0, metadata !1069, null}
!1093 = metadata !{i32 13, i32 0, metadata !1094, null}
!1094 = metadata !{i32 589835, metadata !78, i32 12, i32 0, metadata !79, i32 0} ; [ DW_TAG_lexical_block ]
!1095 = metadata !{i32 24, i32 0, metadata !1096, null}
!1096 = metadata !{i32 589835, metadata !85, i32 20, i32 0, metadata !88, i32 0} ; [ DW_TAG_lexical_block ]
!1097 = metadata !{i32 25, i32 0, metadata !1096, null}
!1098 = metadata !{i32 26, i32 0, metadata !1096, null}
!1099 = metadata !{i32 31, i32 0, metadata !1096, null}
!1100 = metadata !{i32 34, i32 0, metadata !1096, null}
!1101 = metadata !{i32 35, i32 0, metadata !1096, null}
!1102 = metadata !{i32 38, i32 0, metadata !1096, null}
!1103 = metadata !{i32 40, i32 0, metadata !1096, null}
!1104 = metadata !{i32 49, i32 0, metadata !1096, null}
!1105 = metadata !{i32 51, i32 0, metadata !1096, null}
!1106 = metadata !{i32 52, i32 0, metadata !1096, null}
!1107 = metadata !{i32 55, i32 0, metadata !1096, null}
!1108 = metadata !{i32 62, i32 0, metadata !1109, null}
!1109 = metadata !{i32 589835, metadata !1096, i32 62, i32 0, metadata !88, i32 1} ; [ DW_TAG_lexical_block ]
!1110 = metadata !{i32 63, i32 0, metadata !1109, null}
!1111 = metadata !{i32 67, i32 0, metadata !1096, null}
!1112 = metadata !{i32 71, i32 0, metadata !1096, null}
!1113 = metadata !{i32 12, i32 0, metadata !1114, null}
!1114 = metadata !{i32 589835, metadata !126, i32 11, i32 0, metadata !127, i32 0} ; [ DW_TAG_lexical_block ]
!1115 = metadata !{i32 258, i32 0, metadata !1116, null}
!1116 = metadata !{i32 589835, metadata !133, i32 211, i32 0, metadata !134, i32 0} ; [ DW_TAG_lexical_block ]
!1117 = metadata !{i32 261, i32 0, metadata !1116, null}
!1118 = metadata !{i32 262, i32 0, metadata !1116, null}
!1119 = metadata !{i32 274, i32 0, metadata !1116, null}
!1120 = metadata !{i32 280, i32 0, metadata !1121, null}
!1121 = metadata !{i32 589835, metadata !137, i32 278, i32 0, metadata !134, i32 1} ; [ DW_TAG_lexical_block ]
!1122 = metadata !{i32 282, i32 0, metadata !1121, null}
!1123 = metadata !{i32 283, i32 0, metadata !1121, null}
!1124 = metadata !{i32 284, i32 0, metadata !1121, null}
!1125 = metadata !{i32 291, i32 0, metadata !1121, null}
!1126 = metadata !{i32 121, i32 0, metadata !1127, null}
!1127 = metadata !{i32 589835, metadata !142, i32 114, i32 0, metadata !145, i32 0} ; [ DW_TAG_lexical_block ]
!1128 = metadata !{i32 122, i32 0, metadata !1127, null}
!1129 = metadata !{i32 124, i32 0, metadata !1127, null}
!1130 = metadata !{i32 125, i32 0, metadata !1127, null}
!1131 = metadata !{i32 126, i32 0, metadata !1127, null}
!1132 = metadata !{i32 128, i32 0, metadata !1127, null}
!1133 = metadata !{i32 130, i32 0, metadata !1127, null}
!1134 = metadata !{i32 132, i32 0, metadata !1127, null}
!1135 = metadata !{i32 134, i32 0, metadata !1127, null}
!1136 = metadata !{i32 135, i32 0, metadata !1127, null}
!1137 = metadata !{i32 136, i32 0, metadata !1127, null}
!1138 = metadata !{i32 138, i32 0, metadata !1127, null}
!1139 = metadata !{i32 142, i32 0, metadata !1127, null}
!1140 = metadata !{i32 25, i32 0, metadata !1141, null}
!1141 = metadata !{i32 589835, metadata !152, i32 24, i32 0, metadata !155, i32 0} ; [ DW_TAG_lexical_block ]
!1142 = metadata !{i32 27, i32 0, metadata !1141, null}
!1143 = metadata !{i32 20, i32 0, metadata !1144, null}
!1144 = metadata !{i32 589835, metadata !194, i32 19, i32 0, metadata !195, i32 0} ; [ DW_TAG_lexical_block ]
!1145 = metadata !{i32 21, i32 0, metadata !1144, null}
!1146 = metadata !{i32 29, i32 0, metadata !1144, null}
!1147 = metadata !{i32 30, i32 0, metadata !1144, null}
!1148 = metadata !{i32 28, i32 0, metadata !1144, null}
!1149 = metadata !{i32 34, i32 0, metadata !1144, null}
!1150 = metadata !{i32 38, i32 0, metadata !1151, null}
!1151 = metadata !{i32 589835, metadata !203, i32 34, i32 0, metadata !204, i32 0} ; [ DW_TAG_lexical_block ]
!1152 = metadata !{i32 40, i32 0, metadata !1151, null}
!1153 = metadata !{i32 41, i32 0, metadata !1151, null}
!1154 = metadata !{i32 44, i32 0, metadata !1151, null}
!1155 = metadata !{i32 45, i32 0, metadata !1156, null}
!1156 = metadata !{i32 589835, metadata !1151, i32 45, i32 0, metadata !204, i32 1} ; [ DW_TAG_lexical_block ]
!1157 = metadata !{i32 47, i32 0, metadata !1151, null}
!1158 = metadata !{i32 48, i32 0, metadata !1151, null}
!1159 = metadata !{i32 49, i32 0, metadata !1151, null}
!1160 = metadata !{i32 50, i32 0, metadata !1151, null}
!1161 = metadata !{i32 52, i32 0, metadata !1151, null}
!1162 = metadata !{i32 19, i32 0, metadata !1163, null}
!1163 = metadata !{i32 589835, metadata !214, i32 18, i32 0, metadata !215, i32 0} ; [ DW_TAG_lexical_block ]
!1164 = metadata !{i32 28, i32 0, metadata !1163, null}
!1165 = metadata !{i32 29, i32 0, metadata !1163, null}
!1166 = metadata !{i32 27, i32 0, metadata !1163, null}
!1167 = metadata !{i32 32, i32 0, metadata !1163, null}
!1168 = metadata !{i32 117, i32 0, metadata !224, null}
!1169 = metadata !{i32 117, i32 0, metadata !1170, null}
!1170 = metadata !{i32 589835, metadata !224, i32 117, i32 0, metadata !227, i32 0} ; [ DW_TAG_lexical_block ]
!1171 = metadata !{i32 118, i32 0, metadata !240, null}
!1172 = metadata !{i32 118, i32 0, metadata !1173, null}
!1173 = metadata !{i32 589835, metadata !240, i32 118, i32 0, metadata !227, i32 1} ; [ DW_TAG_lexical_block ]
!1174 = metadata !{i32 119, i32 0, metadata !241, null}
!1175 = metadata !{i32 119, i32 0, metadata !1176, null}
!1176 = metadata !{i32 589835, metadata !241, i32 119, i32 0, metadata !227, i32 2} ; [ DW_TAG_lexical_block ]
!1177 = metadata !{i32 44, i32 0, metadata !1178, null}
!1178 = metadata !{i32 589835, metadata !242, i32 35, i32 0, metadata !243, i32 0} ; [ DW_TAG_lexical_block ]
!1179 = metadata !{i32 47, i32 0, metadata !1178, null}
!1180 = metadata !{i32 49, i32 0, metadata !1178, null}
!1181 = metadata !{i32 51, i32 0, metadata !1178, null}
!1182 = metadata !{i32 52, i32 0, metadata !1178, null}
!1183 = metadata !{i32 62, i32 0, metadata !1178, null}
!1184 = metadata !{i32 63, i32 0, metadata !1178, null}
!1185 = metadata !{i32 70, i32 0, metadata !1178, null}
!1186 = metadata !{i32 73, i32 0, metadata !1178, null}
!1187 = metadata !{i32 76, i32 0, metadata !1188, null}
!1188 = metadata !{i32 589835, metadata !1178, i32 76, i32 0, metadata !243, i32 1} ; [ DW_TAG_lexical_block ]
!1189 = metadata !{i32 77, i32 0, metadata !1188, null}
!1190 = metadata !{i32 80, i32 0, metadata !1188, null}
!1191 = metadata !{i32 83, i32 0, metadata !1188, null}
!1192 = metadata !{i32 88, i32 0, metadata !1188, null}
!1193 = metadata !{i32 89, i32 0, metadata !1188, null}
!1194 = metadata !{i32 90, i32 0, metadata !1188, null}
!1195 = metadata !{i32 92, i32 0, metadata !1188, null}
!1196 = metadata !{i32 94, i32 0, metadata !1188, null}
!1197 = metadata !{i32 99, i32 0, metadata !1178, null}
!1198 = metadata !{i32 35, i32 0, metadata !1199, null}
!1199 = metadata !{i32 589835, metadata !284, i32 30, i32 0, metadata !285, i32 0} ; [ DW_TAG_lexical_block ]
!1200 = metadata !{i32 36, i32 0, metadata !1199, null}
!1201 = metadata !{i32 40, i32 0, metadata !1199, null}
!1202 = metadata !{i32 44, i32 0, metadata !1199, null}
!1203 = metadata !{i32 48, i32 0, metadata !1199, null}
!1204 = metadata !{i32 50, i32 0, metadata !1199, null}
!1205 = metadata !{i32 52, i32 0, metadata !1199, null}
!1206 = metadata !{i32 54, i32 0, metadata !1199, null}
!1207 = metadata !{i32 57, i32 0, metadata !1199, null}
!1208 = metadata !{i32 58, i32 0, metadata !1199, null}
!1209 = metadata !{i32 67, i32 0, metadata !1199, null}
!1210 = metadata !{i32 82, i32 0, metadata !1199, null}
!1211 = metadata !{i32 83, i32 0, metadata !1199, null}
!1212 = metadata !{i32 85, i32 0, metadata !1199, null}
!1213 = metadata !{i32 88, i32 0, metadata !1199, null}
!1214 = metadata !{i32 89, i32 0, metadata !1199, null}
!1215 = metadata !{i32 90, i32 0, metadata !1199, null}
!1216 = metadata !{i32 94, i32 0, metadata !1199, null}
!1217 = metadata !{i32 23, i32 0, metadata !1218, null}
!1218 = metadata !{i32 589835, metadata !322, i32 18, i32 0, metadata !323, i32 0} ; [ DW_TAG_lexical_block ]
!1219 = metadata !{i32 24, i32 0, metadata !1218, null}
!1220 = metadata !{i32 25, i32 0, metadata !1218, null}
!1221 = metadata !{i32 28, i32 0, metadata !1218, null}
!1222 = metadata !{i32 22, i32 0, metadata !1223, null}
!1223 = metadata !{i32 589835, metadata !362, i32 16, i32 0, metadata !365, i32 0} ; [ DW_TAG_lexical_block ]
!1224 = metadata !{i32 27, i32 0, metadata !1223, null}
!1225 = metadata !{i32 28, i32 0, metadata !1223, null}
!1226 = metadata !{i32 32, i32 0, metadata !1223, null}
!1227 = metadata !{i32 33, i32 0, metadata !1223, null}
!1228 = metadata !{i32 36, i32 0, metadata !1223, null}
!1229 = metadata !{i32 30, i32 0, metadata !1230, null}
!1230 = metadata !{i32 589835, metadata !404, i32 27, i32 0, metadata !405, i32 0} ; [ DW_TAG_lexical_block ]
!1231 = metadata !{i32 17, i32 0, metadata !1232, null}
!1232 = metadata !{i32 589835, metadata !410, i32 16, i32 0, metadata !411, i32 0} ; [ DW_TAG_lexical_block ]
!1233 = metadata !{i32 47, i32 0, metadata !1234, null}
!1234 = metadata !{i32 589835, metadata !416, i32 43, i32 0, metadata !417, i32 0} ; [ DW_TAG_lexical_block ]
!1235 = metadata !{i32 48, i32 0, metadata !1234, null}
!1236 = metadata !{i32 49, i32 0, metadata !1234, null}
!1237 = metadata !{i32 50, i32 0, metadata !1234, null}
!1238 = metadata !{i32 52, i32 0, metadata !1234, null}
!1239 = metadata !{i32 58, i32 0, metadata !1234, null}
!1240 = metadata !{i32 62, i32 0, metadata !1234, null}
!1241 = metadata !{i32 63, i32 0, metadata !1234, null}
!1242 = metadata !{i32 64, i32 0, metadata !1234, null}
!1243 = metadata !{i32 65, i32 0, metadata !1234, null}
!1244 = metadata !{i32 67, i32 0, metadata !1234, null}
!1245 = metadata !{i32 71, i32 0, metadata !1234, null}
!1246 = metadata !{i32 22, i32 0, metadata !1247, null}
!1247 = metadata !{i32 589835, metadata !514, i32 19, i32 0, metadata !515, i32 0} ; [ DW_TAG_lexical_block ]
!1248 = metadata !{i32 24, i32 0, metadata !1247, null}
!1249 = metadata !{i32 30, i32 0, metadata !1250, null}
!1250 = metadata !{i32 589835, metadata !525, i32 21, i32 0, metadata !526, i32 0} ; [ DW_TAG_lexical_block ]
!1251 = metadata !{i32 34, i32 0, metadata !1250, null}
!1252 = metadata !{i32 35, i32 0, metadata !1250, null}
!1253 = metadata !{i32 36, i32 0, metadata !1250, null}
!1254 = metadata !{i32 37, i32 0, metadata !1250, null}
!1255 = metadata !{i32 39, i32 0, metadata !1250, null}
!1256 = metadata !{i32 40, i32 0, metadata !1250, null}
!1257 = metadata !{i32 42, i32 0, metadata !1250, null}
!1258 = metadata !{i32 46, i32 0, metadata !1250, null}
!1259 = metadata !{i32 47, i32 0, metadata !1250, null}
!1260 = metadata !{i32 48, i32 0, metadata !1250, null}
!1261 = metadata !{i32 49, i32 0, metadata !1250, null}
!1262 = metadata !{i32 52, i32 0, metadata !1250, null}
!1263 = metadata !{i32 53, i32 0, metadata !1250, null}
!1264 = metadata !{i32 54, i32 0, metadata !1250, null}
!1265 = metadata !{i32 56, i32 0, metadata !1250, null}
!1266 = metadata !{i32 57, i32 0, metadata !1250, null}
!1267 = metadata !{i32 58, i32 0, metadata !1250, null}
!1268 = metadata !{i32 59, i32 0, metadata !1250, null}
!1269 = metadata !{i32 60, i32 0, metadata !1250, null}
!1270 = metadata !{i32 65, i32 0, metadata !1250, null}
!1271 = metadata !{i32 68, i32 0, metadata !1250, null}
!1272 = metadata !{i32 69, i32 0, metadata !1250, null}
!1273 = metadata !{i32 70, i32 0, metadata !1250, null}
!1274 = metadata !{i32 79, i32 0, metadata !1250, null}
!1275 = metadata !{i32 28, i32 0, metadata !1276, null}
!1276 = metadata !{i32 589835, metadata !567, i32 25, i32 0, metadata !568, i32 0} ; [ DW_TAG_lexical_block ]
!1277 = metadata !{i32 43, i32 0, metadata !1278, null}
!1278 = metadata !{i32 589835, metadata !606, i32 39, i32 0, metadata !607, i32 0} ; [ DW_TAG_lexical_block ]
!1279 = metadata !{i32 45, i32 0, metadata !1278, null}
!1280 = metadata !{i32 46, i32 0, metadata !1278, null}
!1281 = metadata !{i32 47, i32 0, metadata !1278, null}
!1282 = metadata !{i32 48, i32 0, metadata !1278, null}
!1283 = metadata !{i32 49, i32 0, metadata !1278, null}
!1284 = metadata !{i32 61, i32 0, metadata !1278, null}
!1285 = metadata !{i32 79, i32 0, metadata !1278, null}
!1286 = metadata !{i32 32, i32 0, metadata !1287, null}
!1287 = metadata !{i32 589835, metadata !632, i32 25, i32 0, metadata !635, i32 0} ; [ DW_TAG_lexical_block ]
!1288 = metadata !{i32 33, i32 0, metadata !1287, null}
!1289 = metadata !{i32 36, i32 0, metadata !1287, null}
!1290 = metadata !{i32 37, i32 0, metadata !1287, null}
!1291 = metadata !{i32 43, i32 0, metadata !1287, null}
!1292 = metadata !{i32 51, i32 0, metadata !1287, null}
!1293 = metadata !{i32 55, i32 0, metadata !1287, null}
!1294 = metadata !{i32 56, i32 0, metadata !1287, null}
!1295 = metadata !{i32 57, i32 0, metadata !1287, null}
!1296 = metadata !{i32 62, i32 0, metadata !1287, null}
!1297 = metadata !{i32 65, i32 0, metadata !1287, null}
!1298 = metadata !{i32 68, i32 0, metadata !1287, null}
!1299 = metadata !{i32 76, i32 0, metadata !1287, null}
!1300 = metadata !{i32 20, i32 0, metadata !1301, null}
!1301 = metadata !{i32 589835, metadata !674, i32 19, i32 0, metadata !675, i32 0} ; [ DW_TAG_lexical_block ]
!1302 = metadata !{i32 29, i32 0, metadata !1301, null}
!1303 = metadata !{i32 30, i32 0, metadata !1301, null}
!1304 = metadata !{i32 32, i32 0, metadata !1301, null}
!1305 = metadata !{i32 33, i32 0, metadata !1301, null}
!1306 = metadata !{i32 28, i32 0, metadata !1301, null}
!1307 = metadata !{i32 36, i32 0, metadata !1301, null}
!1308 = metadata !{i32 22, i32 0, metadata !1309, null}
!1309 = metadata !{i32 589835, metadata !684, i32 21, i32 0, metadata !685, i32 0} ; [ DW_TAG_lexical_block ]
!1310 = metadata !{i32 23, i32 0, metadata !1309, null}
!1311 = metadata !{i32 31, i32 0, metadata !1309, null}
!1312 = metadata !{i32 32, i32 0, metadata !1309, null}
!1313 = metadata !{i32 30, i32 0, metadata !1309, null}
!1314 = metadata !{i32 36, i32 0, metadata !1309, null}
!1315 = metadata !{i32 24, i32 0, metadata !1316, null}
!1316 = metadata !{i32 589835, metadata !693, i32 15, i32 0, metadata !694, i32 0} ; [ DW_TAG_lexical_block ]
!1317 = metadata !{i32 27, i32 0, metadata !1316, null}
!1318 = metadata !{i32 28, i32 0, metadata !1316, null}
!1319 = metadata !{i32 30, i32 0, metadata !1316, null}
!1320 = metadata !{i32 26, i32 0, metadata !1316, null}
!1321 = metadata !{i32 33, i32 0, metadata !1316, null}
!1322 = metadata !{i32 25, i32 0, metadata !1323, null}
!1323 = metadata !{i32 589835, metadata !703, i32 21, i32 0, metadata !704, i32 0} ; [ DW_TAG_lexical_block ]
!1324 = metadata !{i32 26, i32 0, metadata !1323, null}
!1325 = metadata !{i32 30, i32 0, metadata !1323, null}
!1326 = metadata !{i32 34, i32 0, metadata !1323, null}
!1327 = metadata !{i32 35, i32 0, metadata !1323, null}
!1328 = metadata !{i32 37, i32 0, metadata !1323, null}
!1329 = metadata !{i32 38, i32 0, metadata !1323, null}
!1330 = metadata !{i32 39, i32 0, metadata !1323, null}
!1331 = metadata !{i32 45, i32 0, metadata !1323, null}
!1332 = metadata !{i32 50, i32 0, metadata !1323, null}
!1333 = metadata !{i32 59, i32 0, metadata !1323, null}
!1334 = metadata !{i32 60, i32 0, metadata !1323, null}
!1335 = metadata !{i32 63, i32 0, metadata !1323, null}
!1336 = metadata !{i32 64, i32 0, metadata !1323, null}
!1337 = metadata !{i32 67, i32 0, metadata !1323, null}
!1338 = metadata !{i32 66, i32 0, metadata !1339, null}
!1339 = metadata !{i32 589835, metadata !744, i32 62, i32 0, metadata !745, i32 0} ; [ DW_TAG_lexical_block ]
!1340 = metadata !{i32 71, i32 0, metadata !1339, null}
!1341 = metadata !{i32 13, i32 0, metadata !1342, null}
!1342 = metadata !{i32 589835, metadata !785, i32 12, i32 0, metadata !786, i32 0} ; [ DW_TAG_lexical_block ]
!1343 = metadata !{i32 14, i32 0, metadata !1342, null}
!1344 = metadata !{i32 15, i32 0, metadata !1342, null}
!1345 = metadata !{i32 15, i32 0, metadata !927, null}
!1346 = metadata !{i32 16, i32 0, metadata !927, null}
!1347 = metadata !{i32 21, i32 0, metadata !1348, null}
!1348 = metadata !{i32 589835, metadata !800, i32 20, i32 0, metadata !801, i32 0} ; [ DW_TAG_lexical_block ]
!1349 = metadata !{i32 27, i32 0, metadata !1348, null}
!1350 = metadata !{i32 29, i32 0, metadata !1348, null}
!1351 = metadata !{i32 16, i32 0, metadata !934, null}
!1352 = metadata !{i32 17, i32 0, metadata !934, null}
!1353 = metadata !{i32 19, i32 0, metadata !934, null}
!1354 = metadata !{i32 22, i32 0, metadata !934, null}
!1355 = metadata !{i32 25, i32 0, metadata !934, null}
!1356 = metadata !{i32 26, i32 0, metadata !934, null}
!1357 = metadata !{i32 28, i32 0, metadata !934, null}
!1358 = metadata !{i32 29, i32 0, metadata !934, null}
!1359 = metadata !{i32 32, i32 0, metadata !934, null}
!1360 = metadata !{i32 20, i32 0, metadata !934, null}
!1361 = metadata !{i32 16, i32 0, metadata !949, null}
!1362 = metadata !{i32 19, i32 0, metadata !949, null}
!1363 = metadata !{i32 20, i32 0, metadata !949, null}
!1364 = metadata !{i32 24, i32 0, metadata !949, null}
!1365 = metadata !{i32 17, i32 0, metadata !949, null}
