; ModuleID = 'Timers.cpp'
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
%class.Timers = type { i32, i64*, i64, i64 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external global i8
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [49 x i8] c"Timers::Timers(int) - 0 timers are now allowed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Timers::updateTimers - timer \00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c" does not exist.\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Timers::valOfTimer - timer \00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_Timers.cpp, i8* null }]

@_ZN6TimersC1Ei = alias void (%class.Timers*, i32), void (%class.Timers*, i32)* @_ZN6TimersC2Ei
@_ZN6TimersD1Ev = alias void (%class.Timers*), void (%class.Timers*)* @_ZN6TimersD2Ev

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

; Function Attrs: uwtable
define void @_ZN6TimersC2Ei(%class.Timers* %this, i32 %n) unnamed_addr #0 align 2 {
  %1 = alloca %class.Timers*, align 8
  %2 = alloca i32, align 4
  %i = alloca i32, align 4
  store %class.Timers* %this, %class.Timers** %1, align 8
  store i32 %n, i32* %2, align 4
  %3 = load %class.Timers*, %class.Timers** %1, align 8
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %6, label %8

; <label>:6                                       ; preds = %0
  %7 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cerr, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 -1) #9
  unreachable

; <label>:8                                       ; preds = %0
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %10, i64 8)
  %12 = extractvalue { i64, i1 } %11, 1
  %13 = extractvalue { i64, i1 } %11, 0
  %14 = select i1 %12, i64 -1, i64 %13
  %15 = call noalias i8* @_Znam(i64 %14) #10
  %16 = bitcast i8* %15 to i64*
  %17 = getelementptr inbounds %class.Timers, %class.Timers* %3, i32 0, i32 1
  store i64* %16, i64** %17, align 8
  %18 = load i32, i32* %2, align 4
  %19 = getelementptr inbounds %class.Timers, %class.Timers* %3, i32 0, i32 0
  store i32 %18, i32* %19, align 8
  store i32 0, i32* %i, align 4
  br label %20

; <label>:20                                      ; preds = %30, %8
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* %2, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %33

; <label>:24                                      ; preds = %20
  %25 = load i32, i32* %i, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %class.Timers, %class.Timers* %3, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 %26
  store i64 0, i64* %29, align 8
  br label %30

; <label>:30                                      ; preds = %24
  %31 = load i32, i32* %i, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %i, align 4
  br label %20

; <label>:33                                      ; preds = %20
  %34 = call i64 @time(i64* null) #2
  %35 = getelementptr inbounds %class.Timers, %class.Timers* %3, i32 0, i32 2
  store i64 %34, i64* %35, align 8
  %36 = getelementptr inbounds %class.Timers, %class.Timers* %3, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %class.Timers, %class.Timers* %3, i32 0, i32 3
  store i64 %37, i64* %38, align 8
  ret void
}

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #4

; Function Attrs: nobuiltin
declare noalias i8* @_Znam(i64) #5

; Function Attrs: nounwind
declare i64 @time(i64*) #6

; Function Attrs: nounwind uwtable
define void @_ZN6TimersD2Ev(%class.Timers* %this) unnamed_addr #7 align 2 {
  %1 = alloca %class.Timers*, align 8
  store %class.Timers* %this, %class.Timers** %1, align 8
  %2 = load %class.Timers*, %class.Timers** %1, align 8
  %3 = getelementptr inbounds %class.Timers, %class.Timers* %2, i32 0, i32 1
  %4 = load i64*, i64** %3, align 8
  %5 = icmp eq i64* %4, null
  br i1 %5, label %8, label %6

; <label>:6                                       ; preds = %0
  %7 = bitcast i64* %4 to i8*
  call void @_ZdlPv(i8* %7) #11
  br label %8

; <label>:8                                       ; preds = %6, %0
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #8

; Function Attrs: nounwind uwtable
define void @_ZN6Timers5resetEv(%class.Timers* %this) #7 align 2 {
  %1 = alloca %class.Timers*, align 8
  %i = alloca i32, align 4
  store %class.Timers* %this, %class.Timers** %1, align 8
  %2 = load %class.Timers*, %class.Timers** %1, align 8
  store i32 0, i32* %i, align 4
  br label %3

; <label>:3                                       ; preds = %14, %0
  %4 = load i32, i32* %i, align 4
  %5 = getelementptr inbounds %class.Timers, %class.Timers* %2, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp slt i32 %4, %6
  br i1 %7, label %8, label %17

; <label>:8                                       ; preds = %3
  %9 = load i32, i32* %i, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %class.Timers, %class.Timers* %2, i32 0, i32 1
  %12 = load i64*, i64** %11, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 %10
  store i64 0, i64* %13, align 8
  br label %14

; <label>:14                                      ; preds = %8
  %15 = load i32, i32* %i, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %i, align 4
  br label %3

; <label>:17                                      ; preds = %3
  ret void
}

; Function Attrs: uwtable
define void @_ZN6Timers11updateTimerEi(%class.Timers* %this, i32 %timer) #0 align 2 {
  %1 = alloca %class.Timers*, align 8
  %2 = alloca i32, align 4
  %currentTime = alloca i64, align 8
  %deltaT = alloca i64, align 8
  store %class.Timers* %this, %class.Timers** %1, align 8
  store i32 %timer, i32* %2, align 4
  %3 = load %class.Timers*, %class.Timers** %1, align 8
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %11, label %6

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* %2, align 4
  %8 = getelementptr inbounds %class.Timers, %class.Timers* %3, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp sge i32 %7, %9
  br i1 %10, label %11, label %16

; <label>:11                                      ; preds = %6, %0
  %12 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cerr, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  %13 = load i32, i32* %2, align 4
  %14 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %12, i32 %13)
  %15 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0))
  call void @exit(i32 -1) #9
  unreachable

; <label>:16                                      ; preds = %6
  %17 = call i64 @time(i64* null) #2
  store i64 %17, i64* %currentTime, align 8
  %18 = load i64, i64* %currentTime, align 8
  %19 = getelementptr inbounds %class.Timers, %class.Timers* %3, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = sub nsw i64 %18, %20
  store i64 %21, i64* %deltaT, align 8
  %22 = load i64, i64* %currentTime, align 8
  %23 = getelementptr inbounds %class.Timers, %class.Timers* %3, i32 0, i32 2
  store i64 %22, i64* %23, align 8
  %24 = load i64, i64* %deltaT, align 8
  %25 = load i32, i32* %2, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %class.Timers, %class.Timers* %3, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 %26
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, %24
  store i64 %31, i64* %29, align 8
  ret void
}

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

; Function Attrs: uwtable
define i64 @_ZN6Timers10valOfTimerEi(%class.Timers* %this, i32 %timer) #0 align 2 {
  %1 = alloca %class.Timers*, align 8
  %2 = alloca i32, align 4
  store %class.Timers* %this, %class.Timers** %1, align 8
  store i32 %timer, i32* %2, align 4
  %3 = load %class.Timers*, %class.Timers** %1, align 8
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %11, label %6

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* %2, align 4
  %8 = getelementptr inbounds %class.Timers, %class.Timers* %3, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp sge i32 %7, %9
  br i1 %10, label %11, label %16

; <label>:11                                      ; preds = %6, %0
  %12 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cerr, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0))
  %13 = load i32, i32* %2, align 4
  %14 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %12, i32 %13)
  %15 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0))
  call void @exit(i32 -1) #9
  unreachable

; <label>:16                                      ; preds = %6
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %class.Timers, %class.Timers* %3, i32 0, i32 1
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 %18
  %22 = load i64, i64* %21, align 8
  ret i64 %22
}

; Function Attrs: nounwind uwtable
define i64 @_ZN6Timers9totalTimeEv(%class.Timers* %this) #7 align 2 {
  %1 = alloca %class.Timers*, align 8
  %currentTime = alloca i64, align 8
  store %class.Timers* %this, %class.Timers** %1, align 8
  %2 = load %class.Timers*, %class.Timers** %1, align 8
  %3 = call i64 @time(i64* null) #2
  store i64 %3, i64* %currentTime, align 8
  %4 = load i64, i64* %currentTime, align 8
  %5 = getelementptr inbounds %class.Timers, %class.Timers* %2, i32 0, i32 3
  %6 = load i64, i64* %5, align 8
  %7 = sub nsw i64 %4, %6
  ret i64 %7
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_Timers.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nobuiltin "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nobuiltin nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn nounwind }
attributes #10 = { builtin }
attributes #11 = { builtin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0-2ubuntu4 (tags/RELEASE_380/final)"}
