; ModuleID = 'dstruct.cpp'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::num_get" = type { %"class.std::locale::facet.base", [4 x i8] }
%class.Assignment = type { i32*, i8, i8, i32 }
%class.AssignmentStack = type <{ i32*, i32, i8, [3 x i8] }>
%class.Solution = type { %class.Solution*, i32, %class.Assignment*, %class.Assignment* }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external global i8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Assignment::setVarValue(int i, int val) - i=\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c" is out of range\0A\00", align 1
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str.3 = private unnamed_addr constant [48 x i8] c"Assignment::setVarValue(int i, int val) - val= \00", align 1
@.str.4 = private unnamed_addr constant [76 x i8] c"Assignment::compare can not be used between assignments of different sizes\0A\00", align 1
@.str.5 = private unnamed_addr constant [77 x i8] c"AssignmentStack::AssignmentStack(int levels, int* sizes) 'sizes' is invalid\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.9 = private unnamed_addr constant [70 x i8] c"Solution::incPointings - negative number of pointings is not allowed\0A\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_dstruct.cpp, i8* null }]

@_ZN10AssignmentC1Ev = alias void (%class.Assignment*), void (%class.Assignment*)* @_ZN10AssignmentC2Ev
@_ZN10AssignmentC1EPji = alias void (%class.Assignment*, i32*, i32), void (%class.Assignment*, i32*, i32)* @_ZN10AssignmentC2EPji
@_ZN10AssignmentC1Eii = alias void (%class.Assignment*, i32, i32), void (%class.Assignment*, i32, i32)* @_ZN10AssignmentC2Eii
@_ZN10AssignmentD1Ev = alias void (%class.Assignment*), void (%class.Assignment*)* @_ZN10AssignmentD2Ev
@_ZN15AssignmentStackC1EjPj = alias void (%class.AssignmentStack*, i32, i32*), void (%class.AssignmentStack*, i32, i32*)* @_ZN15AssignmentStackC2EjPj
@_ZN15AssignmentStackC1EPj = alias void (%class.AssignmentStack*, i32*), void (%class.AssignmentStack*, i32*)* @_ZN15AssignmentStackC2EPj
@_ZN15AssignmentStackD1Ev = alias void (%class.AssignmentStack*), void (%class.AssignmentStack*)* @_ZN15AssignmentStackD2Ev
@_ZN8SolutionC1EP10AssignmentS1_PS_ = alias void (%class.Solution*, %class.Assignment*, %class.Assignment*, %class.Solution*), void (%class.Solution*, %class.Assignment*, %class.Assignment*, %class.Solution*)* @_ZN8SolutionC2EP10AssignmentS1_PS_
@_ZN8SolutionD1Ev = alias void (%class.Solution*), void (%class.Solution*)* @_ZN8SolutionD2Ev

; Function Attrs: uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #2
  ret void
}

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) #1

declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) #1

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @_ZN10AssignmentC2Ev(%class.Assignment* %this) unnamed_addr #3 align 2 {
  %1 = alloca %class.Assignment*, align 8
  store %class.Assignment* %this, %class.Assignment** %1, align 8
  %2 = load %class.Assignment*, %class.Assignment** %1, align 8
  %3 = getelementptr inbounds %class.Assignment, %class.Assignment* %2, i32 0, i32 1
  store i8 0, i8* %3, align 8
  %4 = getelementptr inbounds %class.Assignment, %class.Assignment* %2, i32 0, i32 2
  store i8 0, i8* %4, align 1
  %5 = getelementptr inbounds %class.Assignment, %class.Assignment* %2, i32 0, i32 3
  store i32 0, i32* %5, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @_ZN10AssignmentC2EPji(%class.Assignment* %this, i32* %data, i32 %offset) unnamed_addr #3 align 2 {
  %1 = alloca %class.Assignment*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store %class.Assignment* %this, %class.Assignment** %1, align 8
  store i32* %data, i32** %2, align 8
  store i32 %offset, i32* %3, align 4
  %4 = load %class.Assignment*, %class.Assignment** %1, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = getelementptr inbounds %class.Assignment, %class.Assignment* %4, i32 0, i32 0
  store i32* %5, i32** %6, align 8
  %7 = getelementptr inbounds %class.Assignment, %class.Assignment* %4, i32 0, i32 1
  store i8 0, i8* %7, align 8
  %8 = getelementptr inbounds %class.Assignment, %class.Assignment* %4, i32 0, i32 2
  store i8 1, i8* %8, align 1
  %9 = load i32, i32* %3, align 4
  %10 = getelementptr inbounds %class.Assignment, %class.Assignment* %4, i32 0, i32 3
  store i32 %9, i32* %10, align 4
  ret void
}

; Function Attrs: uwtable
define void @_ZN10AssignmentC2Eii(%class.Assignment* %this, i32 %numOfVars, i32 %offset) unnamed_addr #0 align 2 {
  %1 = alloca %class.Assignment*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %loop = alloca i32, align 4
  %len = alloca i32, align 4
  store %class.Assignment* %this, %class.Assignment** %1, align 8
  store i32 %numOfVars, i32* %2, align 4
  store i32 %offset, i32* %3, align 4
  %4 = load %class.Assignment*, %class.Assignment** %1, align 8
  %5 = load i32, i32* %2, align 4
  %6 = srem i32 %5, 16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

; <label>:8                                       ; preds = %0
  %9 = load i32, i32* %2, align 4
  %10 = sdiv i32 %9, 16
  %11 = add nsw i32 %10, 2
  store i32 %11, i32* %len, align 4
  br label %16

; <label>:12                                      ; preds = %0
  %13 = load i32, i32* %2, align 4
  %14 = sdiv i32 %13, 16
  %15 = add nsw i32 %14, 3
  store i32 %15, i32* %len, align 4
  br label %16

; <label>:16                                      ; preds = %12, %8
  %17 = load i32, i32* %len, align 4
  %18 = sext i32 %17 to i64
  %19 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %18, i64 4)
  %20 = extractvalue { i64, i1 } %19, 1
  %21 = extractvalue { i64, i1 } %19, 0
  %22 = select i1 %20, i64 -1, i64 %21
  %23 = call noalias i8* @_Znam(i64 %22) #8
  %24 = bitcast i8* %23 to i32*
  %25 = getelementptr inbounds %class.Assignment, %class.Assignment* %4, i32 0, i32 0
  store i32* %24, i32** %25, align 8
  %26 = load i32, i32* %2, align 4
  %27 = getelementptr inbounds %class.Assignment, %class.Assignment* %4, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* %len, align 4
  %31 = getelementptr inbounds %class.Assignment, %class.Assignment* %4, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 %30, i32* %33, align 4
  store i32 2, i32* %loop, align 4
  br label %34

; <label>:34                                      ; preds = %44, %16
  %35 = load i32, i32* %loop, align 4
  %36 = load i32, i32* %len, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %47

; <label>:38                                      ; preds = %34
  %39 = load i32, i32* %loop, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %class.Assignment, %class.Assignment* %4, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 %40
  store i32 -1431655766, i32* %43, align 4
  br label %44

; <label>:44                                      ; preds = %38
  %45 = load i32, i32* %loop, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %loop, align 4
  br label %34

; <label>:47                                      ; preds = %34
  %48 = load i32, i32* %3, align 4
  %49 = getelementptr inbounds %class.Assignment, %class.Assignment* %4, i32 0, i32 3
  store i32 %48, i32* %49, align 4
  %50 = getelementptr inbounds %class.Assignment, %class.Assignment* %4, i32 0, i32 1
  store i8 1, i8* %50, align 8
  %51 = getelementptr inbounds %class.Assignment, %class.Assignment* %4, i32 0, i32 2
  store i8 1, i8* %51, align 1
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #4

; Function Attrs: nobuiltin
declare noalias i8* @_Znam(i64) #5

; Function Attrs: uwtable
define void @_ZN10AssignmentD2Ev(%class.Assignment* %this) unnamed_addr #0 align 2 {
  %1 = alloca %class.Assignment*, align 8
  %l = alloca i32, align 4
  store %class.Assignment* %this, %class.Assignment** %1, align 8
  %2 = load %class.Assignment*, %class.Assignment** %1, align 8
  %3 = getelementptr inbounds %class.Assignment, %class.Assignment* %2, i32 0, i32 2
  %4 = load i8, i8* %3, align 1
  %5 = trunc i8 %4 to i1
  br i1 %5, label %6, label %26

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %class.Assignment, %class.Assignment* %2, i32 0, i32 1
  %8 = load i8, i8* %7, align 8
  %9 = trunc i8 %8 to i1
  br i1 %9, label %10, label %17

; <label>:10                                      ; preds = %6
  %11 = getelementptr inbounds %class.Assignment, %class.Assignment* %2, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %16, label %14

; <label>:14                                      ; preds = %10
  %15 = bitcast i32* %12 to i8*
  call void @_ZdlPv(i8* %15) #9
  br label %16

; <label>:16                                      ; preds = %14, %10
  br label %25

; <label>:17                                      ; preds = %6
  %18 = call i32 @_ZNK10Assignment4sizeEv(%class.Assignment* %2)
  store i32 %18, i32* %l, align 4
  %19 = getelementptr inbounds %class.Assignment, %class.Assignment* %2, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %24, label %22

; <label>:22                                      ; preds = %17
  %23 = bitcast i32* %20 to i8*
  call void @_ZdlPv(i8* %23) #9
  br label %24

; <label>:24                                      ; preds = %22, %17
  br label %25

; <label>:25                                      ; preds = %24, %16
  br label %26

; <label>:26                                      ; preds = %25, %0
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #6

; Function Attrs: nounwind uwtable
define i32 @_ZNK10Assignment4sizeEv(%class.Assignment* %this) #3 align 2 {
  %1 = alloca i32, align 4
  %2 = alloca %class.Assignment*, align 8
  store %class.Assignment* %this, %class.Assignment** %2, align 8
  %3 = load %class.Assignment*, %class.Assignment** %2, align 8
  %4 = getelementptr inbounds %class.Assignment, %class.Assignment* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  store i32 0, i32* %1, align 4
  br label %13

; <label>:8                                       ; preds = %0
  %9 = getelementptr inbounds %class.Assignment, %class.Assignment* %3, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %1, align 4
  br label %13

; <label>:13                                      ; preds = %8, %7
  %14 = load i32, i32* %1, align 4
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define i32 @_ZNK10Assignment9numOfVarsEv(%class.Assignment* %this) #3 align 2 {
  %1 = alloca i32, align 4
  %2 = alloca %class.Assignment*, align 8
  store %class.Assignment* %this, %class.Assignment** %2, align 8
  %3 = load %class.Assignment*, %class.Assignment** %2, align 8
  %4 = getelementptr inbounds %class.Assignment, %class.Assignment* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %13

; <label>:8                                       ; preds = %0
  %9 = getelementptr inbounds %class.Assignment, %class.Assignment* %3, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %1, align 4
  br label %13

; <label>:13                                      ; preds = %8, %7
  %14 = load i32, i32* %1, align 4
  ret i32 %14
}

; Function Attrs: uwtable
define void @_ZNK10Assignment5printEv(%class.Assignment* %this) #0 align 2 {
  %1 = alloca %class.Assignment*, align 8
  %i = alloca i32, align 4
  %val = alloca i32, align 4
  store %class.Assignment* %this, %class.Assignment** %1, align 8
  %2 = load %class.Assignment*, %class.Assignment** %1, align 8
  store i32 1, i32* %i, align 4
  br label %3

; <label>:3                                       ; preds = %21, %0
  %4 = load i32, i32* %i, align 4
  %5 = getelementptr inbounds %class.Assignment, %class.Assignment* %2, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 1
  %8 = load i32, i32* %7, align 4
  %9 = icmp ule i32 %4, %8
  br i1 %9, label %10, label %24

; <label>:10                                      ; preds = %3
  %11 = load i32, i32* %i, align 4
  %12 = call i32 @_ZNK10Assignment10valueOfVarEi(%class.Assignment* %2, i32 %11)
  store i32 %12, i32* %val, align 4
  %13 = load i32, i32* %val, align 4
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %17

; <label>:15                                      ; preds = %10
  %16 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8 signext 45)
  br label %20

; <label>:17                                      ; preds = %10
  %18 = load i32, i32* %val, align 4
  %19 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %18)
  br label %20

; <label>:20                                      ; preds = %17, %15
  br label %21

; <label>:21                                      ; preds = %20
  %22 = load i32, i32* %i, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %i, align 4
  br label %3

; <label>:24                                      ; preds = %3
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @_ZNK10Assignment10valueOfVarEi(%class.Assignment* %this, i32 %i) #3 align 2 {
  %1 = alloca i32, align 4
  %2 = alloca %class.Assignment*, align 8
  %3 = alloca i32, align 4
  store %class.Assignment* %this, %class.Assignment** %2, align 8
  store i32 %i, i32* %3, align 4
  %4 = load %class.Assignment*, %class.Assignment** %2, align 8
  %5 = getelementptr inbounds %class.Assignment, %class.Assignment* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %0
  store i32 -2, i32* %1, align 4
  br label %41

; <label>:9                                       ; preds = %0
  %10 = load i32, i32* %3, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %3, align 4
  %12 = getelementptr inbounds %class.Assignment, %class.Assignment* %4, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %3, align 4
  %15 = sub nsw i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = getelementptr inbounds %class.Assignment, %class.Assignment* %4, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp uge i32 %16, %20
  br i1 %21, label %25, label %22

; <label>:22                                      ; preds = %9
  %23 = load i32, i32* %3, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

; <label>:25                                      ; preds = %22, %9
  store i32 -1, i32* %1, align 4
  br label %41

; <label>:26                                      ; preds = %22
  %27 = load i32, i32* %3, align 4
  %28 = sdiv i32 %27, 16
  %29 = add nsw i32 %28, 2
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %class.Assignment, %class.Assignment* %4, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 %30
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %3, align 4
  %36 = srem i32 %35, 16
  %37 = sub nsw i32 15, %36
  %38 = mul nsw i32 %37, 2
  %39 = lshr i32 %34, %38
  %40 = urem i32 %39, 4
  store i32 %40, i32* %1, align 4
  br label %41

; <label>:41                                      ; preds = %26, %25, %8
  %42 = load i32, i32* %1, align 4
  ret i32 %42
}

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(%"class.std::basic_ostream"* dereferenceable(272), i8 signext) #1

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

; Function Attrs: uwtable
define void @_ZNK10Assignment5printEi(%class.Assignment* %this, i32 %out) #0 align 2 {
  %1 = alloca %class.Assignment*, align 8
  %2 = alloca i32, align 4
  %i = alloca i32, align 4
  %val = alloca i32, align 4
  %word = alloca i8, align 1
  store %class.Assignment* %this, %class.Assignment** %1, align 8
  store i32 %out, i32* %2, align 4
  %3 = load %class.Assignment*, %class.Assignment** %1, align 8
  store i32 1, i32* %i, align 4
  br label %4

; <label>:4                                       ; preds = %26, %0
  %5 = load i32, i32* %i, align 4
  %6 = getelementptr inbounds %class.Assignment, %class.Assignment* %3, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ule i32 %5, %9
  br i1 %10, label %11, label %29

; <label>:11                                      ; preds = %4
  %12 = load i32, i32* %i, align 4
  %13 = call i32 @_ZNK10Assignment10valueOfVarEi(%class.Assignment* %3, i32 %12)
  store i32 %13, i32* %val, align 4
  %14 = load i32, i32* %val, align 4
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %19

; <label>:16                                      ; preds = %11
  %17 = load i32, i32* %2, align 4
  %18 = call i64 @write(i32 %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i64 1)
  br label %25

; <label>:19                                      ; preds = %11
  %20 = load i32, i32* %val, align 4
  %21 = add nsw i32 %20, 48
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %word, align 1
  %23 = load i32, i32* %2, align 4
  %24 = call i64 @write(i32 %23, i8* %word, i64 1)
  br label %25

; <label>:25                                      ; preds = %19, %16
  br label %26

; <label>:26                                      ; preds = %25
  %27 = load i32, i32* %i, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %i, align 4
  br label %4

; <label>:29                                      ; preds = %4
  ret void
}

declare i64 @write(i32, i8*, i64) #1

; Function Attrs: uwtable
define i32 @_ZN10Assignment11setVarValueEii(%class.Assignment* %this, i32 %i, i32 %val) #0 align 2 {
  %1 = alloca i32, align 4
  %2 = alloca %class.Assignment*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %d1 = alloca i32, align 4
  %d2 = alloca i32, align 4
  %d3 = alloca i32, align 4
  store %class.Assignment* %this, %class.Assignment** %2, align 8
  store i32 %i, i32* %3, align 4
  store i32 %val, i32* %4, align 4
  %5 = load %class.Assignment*, %class.Assignment** %2, align 8
  %6 = getelementptr inbounds %class.Assignment, %class.Assignment* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %0
  store i32 -3, i32* %1, align 4
  br label %114

; <label>:10                                      ; preds = %0
  %11 = load i32, i32* %3, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %3, align 4
  %13 = getelementptr inbounds %class.Assignment, %class.Assignment* %5, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %3, align 4
  %16 = sub nsw i32 %15, %14
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = getelementptr inbounds %class.Assignment, %class.Assignment* %5, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp uge i32 %17, %21
  br i1 %22, label %26, label %23

; <label>:23                                      ; preds = %10
  %24 = load i32, i32* %3, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %35

; <label>:26                                      ; preds = %23, %10
  %27 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0))
  %28 = load i32, i32* %3, align 4
  %29 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %27, i32 %28)
  %30 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0))
  %31 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cerr, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0))
  %32 = load i32, i32* %3, align 4
  %33 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %31, i32 %32)
  %34 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  br label %114

; <label>:35                                      ; preds = %23
  %36 = load i32, i32* %4, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %41, label %38

; <label>:38                                      ; preds = %35
  %39 = load i32, i32* %4, align 4
  %40 = icmp sgt i32 %39, 2
  br i1 %40, label %41, label %50

; <label>:41                                      ; preds = %38, %35
  %42 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i32 0, i32 0))
  %43 = load i32, i32* %4, align 4
  %44 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %42, i32 %43)
  %45 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %44, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0))
  %46 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cerr, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i32 0, i32 0))
  %47 = load i32, i32* %4, align 4
  %48 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %46, i32 %47)
  %49 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0))
  store i32 -2, i32* %1, align 4
  br label %114

; <label>:50                                      ; preds = %38
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %3, align 4
  %53 = srem i32 %52, 16
  %54 = sub nsw i32 15, %53
  %55 = mul nsw i32 %54, 2
  %56 = shl i32 %51, %55
  store i32 %56, i32* %d3, align 4
  %57 = load i32, i32* %3, align 4
  %58 = srem i32 %57, 16
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

; <label>:60                                      ; preds = %50
  store i32 0, i32* %d1, align 4
  br label %81

; <label>:61                                      ; preds = %50
  %62 = load i32, i32* %3, align 4
  %63 = sdiv i32 %62, 16
  %64 = add nsw i32 %63, 2
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %class.Assignment, %class.Assignment* %5, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 %65
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %3, align 4
  %71 = srem i32 %70, 16
  %72 = sub nsw i32 16, %71
  %73 = mul nsw i32 %72, 2
  %74 = shl i32 1, %73
  %75 = udiv i32 %69, %74
  %76 = load i32, i32* %3, align 4
  %77 = srem i32 %76, 16
  %78 = sub nsw i32 16, %77
  %79 = mul nsw i32 %78, 2
  %80 = shl i32 %75, %79
  store i32 %80, i32* %d1, align 4
  br label %81

; <label>:81                                      ; preds = %61, %60
  %82 = load i32, i32* %3, align 4
  %83 = srem i32 %82, 16
  %84 = icmp eq i32 %83, 15
  br i1 %84, label %85, label %86

; <label>:85                                      ; preds = %81
  store i32 0, i32* %d2, align 4
  br label %101

; <label>:86                                      ; preds = %81
  %87 = load i32, i32* %3, align 4
  %88 = sdiv i32 %87, 16
  %89 = add nsw i32 %88, 2
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %class.Assignment, %class.Assignment* %5, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 %90
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %3, align 4
  %96 = srem i32 %95, 16
  %97 = sub nsw i32 15, %96
  %98 = mul nsw i32 %97, 2
  %99 = shl i32 1, %98
  %100 = urem i32 %94, %99
  store i32 %100, i32* %d2, align 4
  br label %101

; <label>:101                                     ; preds = %86, %85
  %102 = load i32, i32* %d1, align 4
  %103 = load i32, i32* %d2, align 4
  %104 = add i32 %102, %103
  %105 = load i32, i32* %d3, align 4
  %106 = add i32 %104, %105
  %107 = load i32, i32* %3, align 4
  %108 = sdiv i32 %107, 16
  %109 = add nsw i32 %108, 2
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %class.Assignment, %class.Assignment* %5, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 %110
  store i32 %106, i32* %113, align 4
  store i32 0, i32* %1, align 4
  br label %114

; <label>:114                                     ; preds = %101, %41, %26, %9
  %115 = load i32, i32* %1, align 4
  ret i32 %115
}

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #1

; Function Attrs: nounwind uwtable
define i32* @_ZNK10Assignment7getDataEv(%class.Assignment* %this) #3 align 2 {
  %1 = alloca %class.Assignment*, align 8
  store %class.Assignment* %this, %class.Assignment** %1, align 8
  %2 = load %class.Assignment*, %class.Assignment** %1, align 8
  %3 = getelementptr inbounds %class.Assignment, %class.Assignment* %2, i32 0, i32 0
  %4 = load i32*, i32** %3, align 8
  ret i32* %4
}

; Function Attrs: nounwind uwtable
define void @_ZN10Assignment7setDataEPj(%class.Assignment* %this, i32* %data) #3 align 2 {
  %1 = alloca %class.Assignment*, align 8
  %2 = alloca i32*, align 8
  store %class.Assignment* %this, %class.Assignment** %1, align 8
  store i32* %data, i32** %2, align 8
  %3 = load %class.Assignment*, %class.Assignment** %1, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = getelementptr inbounds %class.Assignment, %class.Assignment* %3, i32 0, i32 0
  store i32* %4, i32** %5, align 8
  %6 = getelementptr inbounds %class.Assignment, %class.Assignment* %3, i32 0, i32 1
  store i8 0, i8* %6, align 8
  ret void
}

; Function Attrs: uwtable
define i32 @_ZNK10Assignment7compareERKS_(%class.Assignment* %this, %class.Assignment* dereferenceable(16) %a2) #0 align 2 {
  %1 = alloca i32, align 4
  %2 = alloca %class.Assignment*, align 8
  %3 = alloca %class.Assignment*, align 8
  %i = alloca i32, align 4
  store %class.Assignment* %this, %class.Assignment** %2, align 8
  store %class.Assignment* %a2, %class.Assignment** %3, align 8
  %4 = load %class.Assignment*, %class.Assignment** %2, align 8
  %5 = getelementptr inbounds %class.Assignment, %class.Assignment* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 1
  %8 = load i32, i32* %7, align 4
  %9 = load %class.Assignment*, %class.Assignment** %3, align 8
  %10 = getelementptr inbounds %class.Assignment, %class.Assignment* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %8, %13
  br i1 %14, label %15, label %17

; <label>:15                                      ; preds = %0
  %16 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cerr, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.4, i32 0, i32 0))
  call void @exit(i32 -1) #10
  unreachable

; <label>:17                                      ; preds = %0
  store i32 2, i32* %i, align 4
  br label %18

; <label>:18                                      ; preds = %59, %17
  %19 = load i32, i32* %i, align 4
  %20 = getelementptr inbounds %class.Assignment, %class.Assignment* %4, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ult i32 %19, %23
  br i1 %24, label %25, label %62

; <label>:25                                      ; preds = %18
  %26 = load i32, i32* %i, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %class.Assignment, %class.Assignment* %4, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 %27
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %i, align 4
  %33 = sext i32 %32 to i64
  %34 = load %class.Assignment*, %class.Assignment** %3, align 8
  %35 = getelementptr inbounds %class.Assignment, %class.Assignment* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 %33
  %38 = load i32, i32* %37, align 4
  %39 = icmp ult i32 %31, %38
  br i1 %39, label %40, label %41

; <label>:40                                      ; preds = %25
  store i32 -1, i32* %1, align 4
  br label %63

; <label>:41                                      ; preds = %25
  %42 = load i32, i32* %i, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %class.Assignment, %class.Assignment* %4, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 %43
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %i, align 4
  %49 = sext i32 %48 to i64
  %50 = load %class.Assignment*, %class.Assignment** %3, align 8
  %51 = getelementptr inbounds %class.Assignment, %class.Assignment* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 %49
  %54 = load i32, i32* %53, align 4
  %55 = icmp ugt i32 %47, %54
  br i1 %55, label %56, label %57

; <label>:56                                      ; preds = %41
  store i32 1, i32* %1, align 4
  br label %63

; <label>:57                                      ; preds = %41
  br label %58

; <label>:58                                      ; preds = %57
  br label %59

; <label>:59                                      ; preds = %58
  %60 = load i32, i32* %i, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %i, align 4
  br label %18

; <label>:62                                      ; preds = %18
  store i32 0, i32* %1, align 4
  br label %63

; <label>:63                                      ; preds = %62, %56, %40
  %64 = load i32, i32* %1, align 4
  ret i32 %64
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #7

; Function Attrs: uwtable
define void @_ZN15AssignmentStackC2EjPj(%class.AssignmentStack* %this, i32 %levels, i32* %sizes) unnamed_addr #0 align 2 {
  %1 = alloca %class.AssignmentStack*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %loop = alloca i32, align 4
  %lits = alloca i32, align 4
  store %class.AssignmentStack* %this, %class.AssignmentStack** %1, align 8
  store i32 %levels, i32* %2, align 4
  store i32* %sizes, i32** %3, align 8
  %4 = load %class.AssignmentStack*, %class.AssignmentStack** %1, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %9

; <label>:7                                       ; preds = %0
  %8 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cerr, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.5, i32 0, i32 0))
  call void @exit(i32 -1) #10
  unreachable

; <label>:9                                       ; preds = %0
  store i32 0, i32* %loop, align 4
  store i32 0, i32* %lits, align 4
  br label %10

; <label>:10                                      ; preds = %22, %9
  %11 = load i32, i32* %loop, align 4
  %12 = load i32, i32* %2, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %25

; <label>:14                                      ; preds = %10
  %15 = load i32, i32* %loop, align 4
  %16 = sext i32 %15 to i64
  %17 = load i32*, i32** %3, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 %16
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %lits, align 4
  %21 = add i32 %20, %19
  store i32 %21, i32* %lits, align 4
  br label %22

; <label>:22                                      ; preds = %14
  %23 = load i32, i32* %loop, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %loop, align 4
  br label %10

; <label>:25                                      ; preds = %10
  %26 = load i32, i32* %lits, align 4
  %27 = getelementptr inbounds %class.AssignmentStack, %class.AssignmentStack* %4, i32 0, i32 1
  store i32 %26, i32* %27, align 8
  %28 = load i32, i32* %2, align 4
  %29 = add i32 1, %28
  %30 = load i32, i32* %lits, align 4
  %31 = add i32 %29, %30
  %32 = zext i32 %31 to i64
  %33 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %32, i64 4)
  %34 = extractvalue { i64, i1 } %33, 1
  %35 = extractvalue { i64, i1 } %33, 0
  %36 = select i1 %34, i64 -1, i64 %35
  %37 = call noalias i8* @_Znam(i64 %36) #8
  %38 = bitcast i8* %37 to i32*
  %39 = getelementptr inbounds %class.AssignmentStack, %class.AssignmentStack* %4, i32 0, i32 0
  store i32* %38, i32** %39, align 8
  %40 = load i32, i32* %2, align 4
  %41 = getelementptr inbounds %class.AssignmentStack, %class.AssignmentStack* %4, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 %40, i32* %43, align 4
  store i32 0, i32* %loop, align 4
  br label %44

; <label>:44                                      ; preds = %60, %25
  %45 = load i32, i32* %loop, align 4
  %46 = load i32, i32* %2, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %63

; <label>:48                                      ; preds = %44
  %49 = load i32, i32* %loop, align 4
  %50 = sext i32 %49 to i64
  %51 = load i32*, i32** %3, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 %50
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %loop, align 4
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %class.AssignmentStack, %class.AssignmentStack* %4, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 %56
  store i32 %53, i32* %59, align 4
  br label %60

; <label>:60                                      ; preds = %48
  %61 = load i32, i32* %loop, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %loop, align 4
  br label %44

; <label>:63                                      ; preds = %44
  store i32 0, i32* %loop, align 4
  br label %64

; <label>:64                                      ; preds = %77, %63
  %65 = load i32, i32* %loop, align 4
  %66 = load i32, i32* %lits, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %80

; <label>:68                                      ; preds = %64
  %69 = load i32, i32* %2, align 4
  %70 = add i32 1, %69
  %71 = load i32, i32* %loop, align 4
  %72 = add i32 %70, %71
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %class.AssignmentStack, %class.AssignmentStack* %4, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 %73
  store i32 0, i32* %76, align 4
  br label %77

; <label>:77                                      ; preds = %68
  %78 = load i32, i32* %loop, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %loop, align 4
  br label %64

; <label>:80                                      ; preds = %64
  %81 = getelementptr inbounds %class.AssignmentStack, %class.AssignmentStack* %4, i32 0, i32 2
  store i8 1, i8* %81, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @_ZN15AssignmentStackC2EPj(%class.AssignmentStack* %this, i32* %data) unnamed_addr #3 align 2 {
  %1 = alloca %class.AssignmentStack*, align 8
  %2 = alloca i32*, align 8
  %loop = alloca i32, align 4
  store %class.AssignmentStack* %this, %class.AssignmentStack** %1, align 8
  store i32* %data, i32** %2, align 8
  %3 = load %class.AssignmentStack*, %class.AssignmentStack** %1, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = getelementptr inbounds %class.AssignmentStack, %class.AssignmentStack* %3, i32 0, i32 0
  store i32* %4, i32** %5, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %30

; <label>:8                                       ; preds = %0
  %9 = getelementptr inbounds %class.AssignmentStack, %class.AssignmentStack* %3, i32 0, i32 1
  store i32 0, i32* %9, align 8
  store i32 1, i32* %loop, align 4
  br label %10

; <label>:10                                      ; preds = %26, %8
  %11 = load i32, i32* %loop, align 4
  %12 = getelementptr inbounds %class.AssignmentStack, %class.AssignmentStack* %3, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ule i32 %11, %15
  br i1 %16, label %17, label %29

; <label>:17                                      ; preds = %10
  %18 = load i32, i32* %loop, align 4
  %19 = sext i32 %18 to i64
  %20 = load i32*, i32** %2, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 %19
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %class.AssignmentStack, %class.AssignmentStack* %3, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = add i32 %24, %22
  store i32 %25, i32* %23, align 8
  br label %26

; <label>:26                                      ; preds = %17
  %27 = load i32, i32* %loop, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %loop, align 4
  br label %10

; <label>:29                                      ; preds = %10
  br label %30

; <label>:30                                      ; preds = %29, %0
  %31 = getelementptr inbounds %class.AssignmentStack, %class.AssignmentStack* %3, i32 0, i32 2
  store i8 0, i8* %31, align 4
  ret void
}

; Function Attrs: uwtable
define void @_ZN15AssignmentStackD2Ev(%class.AssignmentStack* %this) unnamed_addr #0 align 2 {
  %1 = alloca %class.AssignmentStack*, align 8
  %len = alloca i32, align 4
  store %class.AssignmentStack* %this, %class.AssignmentStack** %1, align 8
  %2 = load %class.AssignmentStack*, %class.AssignmentStack** %1, align 8
  %3 = getelementptr inbounds %class.AssignmentStack, %class.AssignmentStack* %2, i32 0, i32 2
  %4 = load i8, i8* %3, align 4
  %5 = trunc i8 %4 to i1
  br i1 %5, label %6, label %13

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %class.AssignmentStack, %class.AssignmentStack* %2, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %12, label %10

; <label>:10                                      ; preds = %6
  %11 = bitcast i32* %8 to i8*
  call void @_ZdlPv(i8* %11) #9
  br label %12

; <label>:12                                      ; preds = %10, %6
  br label %26

; <label>:13                                      ; preds = %0
  %14 = getelementptr inbounds %class.AssignmentStack, %class.AssignmentStack* %2, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %25

; <label>:17                                      ; preds = %13
  %18 = call i32 @_ZNK15AssignmentStack4sizeEv(%class.AssignmentStack* %2)
  store i32 %18, i32* %len, align 4
  %19 = getelementptr inbounds %class.AssignmentStack, %class.AssignmentStack* %2, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %24, label %22

; <label>:22                                      ; preds = %17
  %23 = bitcast i32* %20 to i8*
  call void @_ZdlPv(i8* %23) #9
  br label %24

; <label>:24                                      ; preds = %22, %17
  br label %25

; <label>:25                                      ; preds = %24, %13
  br label %26

; <label>:26                                      ; preds = %25, %12
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @_ZNK15AssignmentStack4sizeEv(%class.AssignmentStack* %this) #3 align 2 {
  %1 = alloca i32, align 4
  %2 = alloca %class.AssignmentStack*, align 8
  store %class.AssignmentStack* %this, %class.AssignmentStack** %2, align 8
  %3 = load %class.AssignmentStack*, %class.AssignmentStack** %2, align 8
  %4 = getelementptr inbounds %class.AssignmentStack, %class.AssignmentStack* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %8, label %7

; <label>:7                                       ; preds = %0
  store i32 0, i32* %1, align 4
  br label %17

; <label>:8                                       ; preds = %0
  %9 = getelementptr inbounds %class.AssignmentStack, %class.AssignmentStack* %3, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = getelementptr inbounds %class.AssignmentStack, %class.AssignmentStack* %3, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = add i32 %10, %14
  %16 = add i32 %15, 1
  store i32 %16, i32* %1, align 4
  br label %17

; <label>:17                                      ; preds = %8, %7
  %18 = load i32, i32* %1, align 4
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define i32 @_ZNK15AssignmentStack11numOfLevelsEv(%class.AssignmentStack* %this) #3 align 2 {
  %1 = alloca i32, align 4
  %2 = alloca %class.AssignmentStack*, align 8
  store %class.AssignmentStack* %this, %class.AssignmentStack** %2, align 8
  %3 = load %class.AssignmentStack*, %class.AssignmentStack** %2, align 8
  %4 = getelementptr inbounds %class.AssignmentStack, %class.AssignmentStack* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %13

; <label>:8                                       ; preds = %0
  %9 = getelementptr inbounds %class.AssignmentStack, %class.AssignmentStack* %3, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %1, align 4
  br label %13

; <label>:13                                      ; preds = %8, %7
  %14 = load i32, i32* %1, align 4
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define i32 @_ZNK15AssignmentStack11sizeOfLevelEi(%class.AssignmentStack* %this, i32 %level) #3 align 2 {
  %1 = alloca i32, align 4
  %2 = alloca %class.AssignmentStack*, align 8
  %3 = alloca i32, align 4
  store %class.AssignmentStack* %this, %class.AssignmentStack** %2, align 8
  store i32 %level, i32* %3, align 4
  %4 = load %class.AssignmentStack*, %class.AssignmentStack** %2, align 8
  %5 = getelementptr inbounds %class.AssignmentStack, %class.AssignmentStack* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %15, label %8

; <label>:8                                       ; preds = %0
  %9 = load i32, i32* %3, align 4
  %10 = getelementptr inbounds %class.AssignmentStack, %class.AssignmentStack* %4, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp uge i32 %9, %13
  br i1 %14, label %15, label %16

; <label>:15                                      ; preds = %8, %0
  store i32 -1, i32* %1, align 4
  br label %24

; <label>:16                                      ; preds = %8
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %class.AssignmentStack, %class.AssignmentStack* %4, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 %19
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %1, align 4
  br label %24

; <label>:24                                      ; preds = %16, %15
  %25 = load i32, i32* %1, align 4
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define i32 @_ZNK15AssignmentStack9numOfLitsEv(%class.AssignmentStack* %this) #3 align 2 {
  %1 = alloca %class.AssignmentStack*, align 8
  store %class.AssignmentStack* %this, %class.AssignmentStack** %1, align 8
  %2 = load %class.AssignmentStack*, %class.AssignmentStack** %1, align 8
  %3 = getelementptr inbounds %class.AssignmentStack, %class.AssignmentStack* %2, i32 0, i32 1
  %4 = load i32, i32* %3, align 8
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @_ZNK15AssignmentStack10getLit_l_iEii(%class.AssignmentStack* %this, i32 %level, i32 %index) #3 align 2 {
  %1 = alloca i32, align 4
  %2 = alloca %class.AssignmentStack*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %offset = alloca i32, align 4
  %loop = alloca i32, align 4
  store %class.AssignmentStack* %this, %class.AssignmentStack** %2, align 8
  store i32 %level, i32* %3, align 4
  store i32 %index, i32* %4, align 4
  %5 = load %class.AssignmentStack*, %class.AssignmentStack** %2, align 8
  %6 = getelementptr inbounds %class.AssignmentStack, %class.AssignmentStack* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %26, label %9

; <label>:9                                       ; preds = %0
  %10 = load i32, i32* %3, align 4
  %11 = getelementptr inbounds %class.AssignmentStack, %class.AssignmentStack* %5, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp uge i32 %10, %14
  br i1 %15, label %26, label %16

; <label>:16                                      ; preds = %9
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %class.AssignmentStack, %class.AssignmentStack* %5, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 %19
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %27

; <label>:26                                      ; preds = %16, %9, %0
  store i32 0, i32* %1, align 4
  br label %53

; <label>:27                                      ; preds = %16
  store i32 1, i32* %offset, align 4
  store i32 0, i32* %loop, align 4
  br label %28

; <label>:28                                      ; preds = %41, %27
  %29 = load i32, i32* %loop, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp sle i32 %29, %30
  br i1 %31, label %32, label %44

; <label>:32                                      ; preds = %28
  %33 = load i32, i32* %loop, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %class.AssignmentStack, %class.AssignmentStack* %5, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 %34
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %offset, align 4
  %40 = add i32 %39, %38
  store i32 %40, i32* %offset, align 4
  br label %41

; <label>:41                                      ; preds = %32
  %42 = load i32, i32* %loop, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %loop, align 4
  br label %28

; <label>:44                                      ; preds = %28
  %45 = load i32, i32* %offset, align 4
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %class.AssignmentStack, %class.AssignmentStack* %5, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 %48
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %1, align 4
  br label %53

; <label>:53                                      ; preds = %44, %26
  %54 = load i32, i32* %1, align 4
  ret i32 %54
}

; Function Attrs: nounwind uwtable
define i32 @_ZN15AssignmentStack10setLit_l_iEiij(%class.AssignmentStack* %this, i32 %level, i32 %index, i32 %lit) #3 align 2 {
  %1 = alloca i32, align 4
  %2 = alloca %class.AssignmentStack*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %offset = alloca i32, align 4
  %loop = alloca i32, align 4
  store %class.AssignmentStack* %this, %class.AssignmentStack** %2, align 8
  store i32 %level, i32* %3, align 4
  store i32 %index, i32* %4, align 4
  store i32 %lit, i32* %5, align 4
  %6 = load %class.AssignmentStack*, %class.AssignmentStack** %2, align 8
  %7 = getelementptr inbounds %class.AssignmentStack, %class.AssignmentStack* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %27, label %10

; <label>:10                                      ; preds = %0
  %11 = load i32, i32* %3, align 4
  %12 = getelementptr inbounds %class.AssignmentStack, %class.AssignmentStack* %6, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp uge i32 %11, %15
  br i1 %16, label %27, label %17

; <label>:17                                      ; preds = %10
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %class.AssignmentStack, %class.AssignmentStack* %6, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 %20
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %28

; <label>:27                                      ; preds = %17, %10, %0
  store i32 -1, i32* %1, align 4
  br label %55

; <label>:28                                      ; preds = %17
  store i32 1, i32* %offset, align 4
  store i32 0, i32* %loop, align 4
  br label %29

; <label>:29                                      ; preds = %42, %28
  %30 = load i32, i32* %loop, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp sle i32 %30, %31
  br i1 %32, label %33, label %45

; <label>:33                                      ; preds = %29
  %34 = load i32, i32* %loop, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %class.AssignmentStack, %class.AssignmentStack* %6, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 %35
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %offset, align 4
  %41 = add i32 %40, %39
  store i32 %41, i32* %offset, align 4
  br label %42

; <label>:42                                      ; preds = %33
  %43 = load i32, i32* %loop, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %loop, align 4
  br label %29

; <label>:45                                      ; preds = %29
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %offset, align 4
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %class.AssignmentStack, %class.AssignmentStack* %6, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 %50
  store i32 %46, i32* %53, align 4
  br label %54

; <label>:54                                      ; preds = %45
  store i32 0, i32* %1, align 4
  br label %55

; <label>:55                                      ; preds = %54, %27
  %56 = load i32, i32* %1, align 4
  ret i32 %56
}

; Function Attrs: nounwind uwtable
define i32* @_ZN15AssignmentStack7getDataEv(%class.AssignmentStack* %this) #3 align 2 {
  %1 = alloca %class.AssignmentStack*, align 8
  store %class.AssignmentStack* %this, %class.AssignmentStack** %1, align 8
  %2 = load %class.AssignmentStack*, %class.AssignmentStack** %1, align 8
  %3 = getelementptr inbounds %class.AssignmentStack, %class.AssignmentStack* %2, i32 0, i32 0
  %4 = load i32*, i32** %3, align 8
  ret i32* %4
}

; Function Attrs: nounwind uwtable
define void @_ZN15AssignmentStack7setDataEPj(%class.AssignmentStack* %this, i32* %data) #3 align 2 {
  %1 = alloca %class.AssignmentStack*, align 8
  %2 = alloca i32*, align 8
  %loop = alloca i32, align 4
  store %class.AssignmentStack* %this, %class.AssignmentStack** %1, align 8
  store i32* %data, i32** %2, align 8
  %3 = load %class.AssignmentStack*, %class.AssignmentStack** %1, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = getelementptr inbounds %class.AssignmentStack, %class.AssignmentStack* %3, i32 0, i32 0
  store i32* %4, i32** %5, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %30

; <label>:8                                       ; preds = %0
  %9 = getelementptr inbounds %class.AssignmentStack, %class.AssignmentStack* %3, i32 0, i32 1
  store i32 0, i32* %9, align 8
  store i32 1, i32* %loop, align 4
  br label %10

; <label>:10                                      ; preds = %26, %8
  %11 = load i32, i32* %loop, align 4
  %12 = getelementptr inbounds %class.AssignmentStack, %class.AssignmentStack* %3, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ule i32 %11, %15
  br i1 %16, label %17, label %29

; <label>:17                                      ; preds = %10
  %18 = load i32, i32* %loop, align 4
  %19 = sext i32 %18 to i64
  %20 = load i32*, i32** %2, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 %19
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %class.AssignmentStack, %class.AssignmentStack* %3, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = add i32 %24, %22
  store i32 %25, i32* %23, align 8
  br label %26

; <label>:26                                      ; preds = %17
  %27 = load i32, i32* %loop, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %loop, align 4
  br label %10

; <label>:29                                      ; preds = %10
  br label %30

; <label>:30                                      ; preds = %29, %0
  %31 = getelementptr inbounds %class.AssignmentStack, %class.AssignmentStack* %3, i32 0, i32 2
  store i8 0, i8* %31, align 4
  ret void
}

; Function Attrs: uwtable
define void @_ZNK15AssignmentStack5printEv(%class.AssignmentStack* %this) #0 align 2 {
  %1 = alloca %class.AssignmentStack*, align 8
  %loop1 = alloca i32, align 4
  %loop2 = alloca i32, align 4
  store %class.AssignmentStack* %this, %class.AssignmentStack** %1, align 8
  %2 = load %class.AssignmentStack*, %class.AssignmentStack** %1, align 8
  store i32 0, i32* %loop1, align 4
  br label %3

; <label>:3                                       ; preds = %39, %0
  %4 = load i32, i32* %loop1, align 4
  %5 = call i32 @_ZNK15AssignmentStack11numOfLevelsEv(%class.AssignmentStack* %2)
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %42

; <label>:7                                       ; preds = %3
  %8 = load i32, i32* %loop1, align 4
  %9 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %8)
  %10 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %loop2, align 4
  br label %11

; <label>:11                                      ; preds = %34, %7
  %12 = load i32, i32* %loop2, align 4
  %13 = load i32, i32* %loop1, align 4
  %14 = call i32 @_ZNK15AssignmentStack11sizeOfLevelEi(%class.AssignmentStack* %2, i32 %13)
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %37

; <label>:16                                      ; preds = %11
  %17 = load i32, i32* %loop1, align 4
  %18 = load i32, i32* %loop2, align 4
  %19 = call i32 @_ZNK15AssignmentStack10getLit_l_iEii(%class.AssignmentStack* %2, i32 %17, i32 %18)
  %20 = and i32 %19, 1
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

; <label>:22                                      ; preds = %16
  br label %24

; <label>:23                                      ; preds = %16
  br label %24

; <label>:24                                      ; preds = %23, %22
  %25 = phi [2 x i8]* [ @.str, %22 ], [ @.str.7, %23 ]
  %26 = getelementptr inbounds [2 x i8], [2 x i8]* %25, i32 0, i32 0
  %27 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* %26)
  %28 = load i32, i32* %loop1, align 4
  %29 = load i32, i32* %loop2, align 4
  %30 = call i32 @_ZNK15AssignmentStack10getLit_l_iEii(%class.AssignmentStack* %2, i32 %28, i32 %29)
  %31 = lshr i32 %30, 1
  %32 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEj(%"class.std::basic_ostream"* %27, i32 %31)
  %33 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  br label %34

; <label>:34                                      ; preds = %24
  %35 = load i32, i32* %loop2, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %loop2, align 4
  br label %11

; <label>:37                                      ; preds = %11
  %38 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* @_ZSt4cout, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %39

; <label>:39                                      ; preds = %37
  %40 = load i32, i32* %loop1, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %loop1, align 4
  br label %3

; <label>:42                                      ; preds = %3
  ret void
}

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEj(%"class.std::basic_ostream"*, i32) #1

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"*, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*) #1

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272)) #1

; Function Attrs: nounwind uwtable
define void @_ZN8SolutionC2EP10AssignmentS1_PS_(%class.Solution* %this, %class.Assignment* %body, %class.Assignment* %interface, %class.Solution* %prev) unnamed_addr #3 align 2 {
  %1 = alloca %class.Solution*, align 8
  %2 = alloca %class.Assignment*, align 8
  %3 = alloca %class.Assignment*, align 8
  %4 = alloca %class.Solution*, align 8
  store %class.Solution* %this, %class.Solution** %1, align 8
  store %class.Assignment* %body, %class.Assignment** %2, align 8
  store %class.Assignment* %interface, %class.Assignment** %3, align 8
  store %class.Solution* %prev, %class.Solution** %4, align 8
  %5 = load %class.Solution*, %class.Solution** %1, align 8
  %6 = load %class.Solution*, %class.Solution** %4, align 8
  %7 = getelementptr inbounds %class.Solution, %class.Solution* %5, i32 0, i32 0
  store %class.Solution* %6, %class.Solution** %7, align 8
  %8 = getelementptr inbounds %class.Solution, %class.Solution* %5, i32 0, i32 1
  store i32 0, i32* %8, align 8
  %9 = load %class.Assignment*, %class.Assignment** %2, align 8
  %10 = getelementptr inbounds %class.Solution, %class.Solution* %5, i32 0, i32 2
  store %class.Assignment* %9, %class.Assignment** %10, align 8
  %11 = load %class.Assignment*, %class.Assignment** %3, align 8
  %12 = getelementptr inbounds %class.Solution, %class.Solution* %5, i32 0, i32 3
  store %class.Assignment* %11, %class.Assignment** %12, align 8
  ret void
}

; Function Attrs: uwtable
define void @_ZN8SolutionD2Ev(%class.Solution* %this) unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %class.Solution*, align 8
  %2 = alloca i8*
  %3 = alloca i32
  store %class.Solution* %this, %class.Solution** %1, align 8
  %4 = load %class.Solution*, %class.Solution** %1, align 8
  %5 = getelementptr inbounds %class.Solution, %class.Solution* %4, i32 0, i32 2
  %6 = load %class.Assignment*, %class.Assignment** %5, align 8
  %7 = icmp eq %class.Assignment* %6, null
  br i1 %7, label %11, label %8

; <label>:8                                       ; preds = %0
  invoke void @_ZN10AssignmentD1Ev(%class.Assignment* %6)
          to label %9 unwind label %19

; <label>:9                                       ; preds = %8
  %10 = bitcast %class.Assignment* %6 to i8*
  call void @_ZdlPv(i8* %10) #9
  br label %11

; <label>:11                                      ; preds = %9, %0
  %12 = getelementptr inbounds %class.Solution, %class.Solution* %4, i32 0, i32 3
  %13 = load %class.Assignment*, %class.Assignment** %12, align 8
  %14 = icmp eq %class.Assignment* %13, null
  br i1 %14, label %18, label %15

; <label>:15                                      ; preds = %11
  invoke void @_ZN10AssignmentD1Ev(%class.Assignment* %13)
          to label %16 unwind label %24

; <label>:16                                      ; preds = %15
  %17 = bitcast %class.Assignment* %13 to i8*
  call void @_ZdlPv(i8* %17) #9
  br label %18

; <label>:18                                      ; preds = %16, %11
  ret void

; <label>:19                                      ; preds = %8
  %20 = landingpad { i8*, i32 }
          cleanup
  %21 = extractvalue { i8*, i32 } %20, 0
  store i8* %21, i8** %2, align 8
  %22 = extractvalue { i8*, i32 } %20, 1
  store i32 %22, i32* %3, align 4
  %23 = bitcast %class.Assignment* %6 to i8*
  call void @_ZdlPv(i8* %23) #9
  br label %29

; <label>:24                                      ; preds = %15
  %25 = landingpad { i8*, i32 }
          cleanup
  %26 = extractvalue { i8*, i32 } %25, 0
  store i8* %26, i8** %2, align 8
  %27 = extractvalue { i8*, i32 } %25, 1
  store i32 %27, i32* %3, align 4
  %28 = bitcast %class.Assignment* %13 to i8*
  call void @_ZdlPv(i8* %28) #9
  br label %29

; <label>:29                                      ; preds = %24, %19
  %30 = load i8*, i8** %2, align 8
  %31 = load i32, i32* %3, align 4
  %32 = insertvalue { i8*, i32 } undef, i8* %30, 0
  %33 = insertvalue { i8*, i32 } %32, i32 %31, 1
  resume { i8*, i32 } %33
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind uwtable
define %class.Assignment* @_ZN8Solution7nullifyEv(%class.Solution* %this) #3 align 2 {
  %1 = alloca %class.Solution*, align 8
  %interface = alloca %class.Assignment*, align 8
  store %class.Solution* %this, %class.Solution** %1, align 8
  %2 = load %class.Solution*, %class.Solution** %1, align 8
  %3 = getelementptr inbounds %class.Solution, %class.Solution* %2, i32 0, i32 3
  %4 = load %class.Assignment*, %class.Assignment** %3, align 8
  store %class.Assignment* %4, %class.Assignment** %interface, align 8
  %5 = getelementptr inbounds %class.Solution, %class.Solution* %2, i32 0, i32 3
  store %class.Assignment* null, %class.Assignment** %5, align 8
  %6 = load %class.Assignment*, %class.Assignment** %interface, align 8
  ret %class.Assignment* %6
}

; Function Attrs: nounwind uwtable
define void @_ZN8Solution7setDataEP10AssignmentS1_PS_i(%class.Solution* %this, %class.Assignment* %body, %class.Assignment* %interface, %class.Solution* %prev, i32 %pointings) #3 align 2 {
  %1 = alloca %class.Solution*, align 8
  %2 = alloca %class.Assignment*, align 8
  %3 = alloca %class.Assignment*, align 8
  %4 = alloca %class.Solution*, align 8
  %5 = alloca i32, align 4
  store %class.Solution* %this, %class.Solution** %1, align 8
  store %class.Assignment* %body, %class.Assignment** %2, align 8
  store %class.Assignment* %interface, %class.Assignment** %3, align 8
  store %class.Solution* %prev, %class.Solution** %4, align 8
  store i32 %pointings, i32* %5, align 4
  %6 = load %class.Solution*, %class.Solution** %1, align 8
  %7 = load %class.Solution*, %class.Solution** %4, align 8
  %8 = getelementptr inbounds %class.Solution, %class.Solution* %6, i32 0, i32 0
  store %class.Solution* %7, %class.Solution** %8, align 8
  %9 = load i32, i32* %5, align 4
  %10 = getelementptr inbounds %class.Solution, %class.Solution* %6, i32 0, i32 1
  store i32 %9, i32* %10, align 8
  %11 = load %class.Assignment*, %class.Assignment** %3, align 8
  %12 = getelementptr inbounds %class.Solution, %class.Solution* %6, i32 0, i32 3
  store %class.Assignment* %11, %class.Assignment** %12, align 8
  %13 = load %class.Assignment*, %class.Assignment** %2, align 8
  %14 = getelementptr inbounds %class.Solution, %class.Solution* %6, i32 0, i32 2
  store %class.Assignment* %13, %class.Assignment** %14, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @_ZN8Solution7setPrevEPS_(%class.Solution* %this, %class.Solution* %prev) #3 align 2 {
  %1 = alloca %class.Solution*, align 8
  %2 = alloca %class.Solution*, align 8
  store %class.Solution* %this, %class.Solution** %1, align 8
  store %class.Solution* %prev, %class.Solution** %2, align 8
  %3 = load %class.Solution*, %class.Solution** %1, align 8
  %4 = load %class.Solution*, %class.Solution** %2, align 8
  %5 = getelementptr inbounds %class.Solution, %class.Solution* %3, i32 0, i32 0
  store %class.Solution* %4, %class.Solution** %5, align 8
  ret void
}

; Function Attrs: uwtable
define i32 @_ZN8Solution12addPointingsEi(%class.Solution* %this, i32 %num) #0 align 2 {
  %1 = alloca %class.Solution*, align 8
  %2 = alloca i32, align 4
  store %class.Solution* %this, %class.Solution** %1, align 8
  store i32 %num, i32* %2, align 4
  %3 = load %class.Solution*, %class.Solution** %1, align 8
  %4 = load i32, i32* %2, align 4
  %5 = getelementptr inbounds %class.Solution, %class.Solution* %3, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = add nsw i32 %6, %4
  store i32 %7, i32* %5, align 8
  %8 = getelementptr inbounds %class.Solution, %class.Solution* %3, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

; <label>:11                                      ; preds = %0
  %12 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cerr, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.9, i32 0, i32 0))
  call void @exit(i32 -1) #10
  unreachable

; <label>:13                                      ; preds = %0
  %14 = getelementptr inbounds %class.Solution, %class.Solution* %3, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define %class.Solution* @_ZNK8Solution15getPrevSolutionEv(%class.Solution* %this) #3 align 2 {
  %1 = alloca %class.Solution*, align 8
  store %class.Solution* %this, %class.Solution** %1, align 8
  %2 = load %class.Solution*, %class.Solution** %1, align 8
  %3 = getelementptr inbounds %class.Solution, %class.Solution* %2, i32 0, i32 0
  %4 = load %class.Solution*, %class.Solution** %3, align 8
  ret %class.Solution* %4
}

; Function Attrs: nounwind uwtable
define %class.Assignment* @_ZNK8Solution7getBodyEv(%class.Solution* %this) #3 align 2 {
  %1 = alloca %class.Solution*, align 8
  store %class.Solution* %this, %class.Solution** %1, align 8
  %2 = load %class.Solution*, %class.Solution** %1, align 8
  %3 = getelementptr inbounds %class.Solution, %class.Solution* %2, i32 0, i32 2
  %4 = load %class.Assignment*, %class.Assignment** %3, align 8
  ret %class.Assignment* %4
}

; Function Attrs: nounwind uwtable
define %class.Assignment* @_ZNK8Solution12getInterfaceEv(%class.Solution* %this) #3 align 2 {
  %1 = alloca %class.Solution*, align 8
  store %class.Solution* %this, %class.Solution** %1, align 8
  %2 = load %class.Solution*, %class.Solution** %1, align 8
  %3 = getelementptr inbounds %class.Solution, %class.Solution* %2, i32 0, i32 3
  %4 = load %class.Assignment*, %class.Assignment** %3, align 8
  ret %class.Assignment* %4
}

; Function Attrs: uwtable
define zeroext i1 @_ZNK8Solution7compareERS_(%class.Solution* %this, %class.Solution* dereferenceable(32) %s2) #0 align 2 {
  %1 = alloca %class.Solution*, align 8
  %2 = alloca %class.Solution*, align 8
  store %class.Solution* %this, %class.Solution** %1, align 8
  store %class.Solution* %s2, %class.Solution** %2, align 8
  %3 = load %class.Solution*, %class.Solution** %1, align 8
  %4 = getelementptr inbounds %class.Solution, %class.Solution* %3, i32 0, i32 3
  %5 = load %class.Assignment*, %class.Assignment** %4, align 8
  %6 = load %class.Solution*, %class.Solution** %2, align 8
  %7 = getelementptr inbounds %class.Solution, %class.Solution* %6, i32 0, i32 3
  %8 = load %class.Assignment*, %class.Assignment** %7, align 8
  %9 = call i32 @_ZNK10Assignment7compareERKS_(%class.Assignment* %5, %class.Assignment* dereferenceable(16) %8)
  %10 = icmp ne i32 %9, 0
  ret i1 %10
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_dstruct.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nobuiltin "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { builtin }
attributes #9 = { builtin nounwind }
attributes #10 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0-2ubuntu4 (tags/RELEASE_380/final)"}
