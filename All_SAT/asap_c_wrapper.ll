; ModuleID = 'asap_c_wrapper.cpp'
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
%class.CSolver = type { %class.CDatabase, i64, i32, %"class.std::vector.13", %"class.std::queue.20", %struct.CSolverParameters, %"class.std::vector.27", i32, [2 x %"class.std::vector.18"], %"class.std::vector.34", i32, %"class.std::vector.18", %"class.std::vector.18", %"class.std::vector.40"*, i32, %struct.CSolverStats }
%class.CDatabase = type { %struct.CDatabaseStats, %class.CLitPoolElement*, %class.CLitPoolElement*, %class.CLitPoolElement*, %"class.std::vector", %"class.std::vector.5", %"class.std::queue", i32, i32 }
%struct.CDatabaseStats = type { i32, i8, i32, i32, i32, i32, i32, i32 }
%class.CLitPoolElement = type { i32 }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl" }
%"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl" = type { %class.CVariable*, %class.CVariable*, %class.CVariable* }
%class.CVariable = type <{ i32, i16, i16, [2 x %"class.std::vector.0"], [2 x i32], [2 x i32], i32, [4 x i8] }>
%"class.std::vector.0" = type { %"struct.std::_Vector_base.1" }
%"struct.std::_Vector_base.1" = type { %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl" }
%"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl" = type { %class.CLitPoolElement**, %class.CLitPoolElement**, %class.CLitPoolElement** }
%"class.std::vector.5" = type { %"struct.std::_Vector_base.6" }
%"struct.std::_Vector_base.6" = type { %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl" }
%"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl" = type { %class.CClause*, %class.CClause*, %class.CClause* }
%class.CClause = type <{ %class.CLitPoolElement*, i32, i8, [3 x i8] }>
%"class.std::queue" = type { %"class.std::deque" }
%"class.std::deque" = type { %"class.std::_Deque_base" }
%"class.std::_Deque_base" = type { %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl" }
%"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl" = type { i32**, i64, %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator" }
%"struct.std::_Deque_iterator" = type { i32*, i32*, i32*, i32** }
%"class.std::vector.13" = type { %"struct.std::_Vector_base.14" }
%"struct.std::_Vector_base.14" = type { %"struct.std::_Vector_base<std::vector<int, std::allocator<int> > *, std::allocator<std::vector<int, std::allocator<int> > *> >::_Vector_impl" }
%"struct.std::_Vector_base<std::vector<int, std::allocator<int> > *, std::allocator<std::vector<int, std::allocator<int> > *> >::_Vector_impl" = type { %"class.std::vector.18"**, %"class.std::vector.18"**, %"class.std::vector.18"** }
%"class.std::queue.20" = type { %"class.std::deque.21" }
%"class.std::deque.21" = type { %"class.std::_Deque_base.22" }
%"class.std::_Deque_base.22" = type { %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl" }
%"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl" = type { %"struct.std::pair"**, i64, %"struct.std::_Deque_iterator.26", %"struct.std::_Deque_iterator.26" }
%"struct.std::pair" = type { i32, i32 }
%"struct.std::_Deque_iterator.26" = type { %"struct.std::pair"*, %"struct.std::pair"*, %"struct.std::pair"*, %"struct.std::pair"** }
%struct.CSolverParameters = type { float, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i8, float, float, float, i32, i32, i32, i32, i32, i8, i32, i8, i8, i8, %class.AssignmentStack*, %class.Assignment*, %struct.Assignments*, i32, i32, i32, i32, i32, i32, i32, i8, i8, %class.Timers* }
%class.AssignmentStack = type <{ i32*, i32, i8, [3 x i8] }>
%class.Assignment = type { i32*, i8, i8, i32 }
%struct.Assignments = type { i32*, i32* }
%class.Timers = type { i32, i64*, i64, i64 }
%"class.std::vector.27" = type { %"struct.std::_Vector_base.28" }
%"struct.std::_Vector_base.28" = type { %"struct.std::_Vector_base<std::pair<int, std::pair<void (*)(void *), int> >, std::allocator<std::pair<int, std::pair<void (*)(void *), int> > > >::_Vector_impl" }
%"struct.std::_Vector_base<std::pair<int, std::pair<void (*)(void *), int> >, std::allocator<std::pair<int, std::pair<void (*)(void *), int> > > >::_Vector_impl" = type { %"struct.std::pair.32"*, %"struct.std::pair.32"*, %"struct.std::pair.32"* }
%"struct.std::pair.32" = type { i32, [4 x i8], %"struct.std::pair.33" }
%"struct.std::pair.33" = type <{ void (i8*)*, i32, [4 x i8] }>
%"class.std::vector.34" = type { %"struct.std::_Vector_base.35" }
%"struct.std::_Vector_base.35" = type { %"struct.std::_Vector_base<std::pair<CVariable *, int>, std::allocator<std::pair<CVariable *, int> > >::_Vector_impl" }
%"struct.std::_Vector_base<std::pair<CVariable *, int>, std::allocator<std::pair<CVariable *, int> > >::_Vector_impl" = type { %"struct.std::pair.39"*, %"struct.std::pair.39"*, %"struct.std::pair.39"* }
%"struct.std::pair.39" = type opaque
%"class.std::vector.18" = type { %"struct.std::_Vector_base.19" }
%"struct.std::_Vector_base.19" = type { %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl" = type { i32*, i32*, i32* }
%"class.std::vector.40" = type opaque
%struct.CSolverStats = type { i8, i32, i8, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32 }
%struct.rusage = type { %struct.timeval, %struct.timeval, %union.anon, %union.anon.47, %union.anon.48, %union.anon.49, %union.anon.50, %union.anon.51, %union.anon.52, %union.anon.53, %union.anon.54, %union.anon.55, %union.anon.56, %union.anon.57, %union.anon.58, %union.anon.59 }
%struct.timeval = type { i64, i64 }
%union.anon = type { i64 }
%union.anon.47 = type { i64 }
%union.anon.48 = type { i64 }
%union.anon.49 = type { i64 }
%union.anon.50 = type { i64 }
%union.anon.51 = type { i64 }
%union.anon.52 = type { i64 }
%union.anon.53 = type { i64 }
%union.anon.54 = type { i64 }
%union.anon.55 = type { i64 }
%union.anon.56 = type { i64 }
%union.anon.57 = type { i64 }
%union.anon.58 = type { i64 }
%union.anon.59 = type { i64 }
%class.CClause_Gen = type { i8 }
%"class.__gnu_cxx::__normal_iterator.60" = type { i32* }
%"class.__gnu_cxx::__normal_iterator" = type { %class.CVariable* }
%"class.std::allocator" = type { i8 }
%"class.__gnu_cxx::__normal_iterator.41" = type { %class.CLitPoolElement** }
%"class.std::allocator.2" = type { i8 }
%"class.__gnu_cxx::new_allocator.3" = type { i8 }
%"class.__gnu_cxx::__normal_iterator.42" = type { %class.CLitPoolElement** }
%"class.__gnu_cxx::new_allocator" = type { i8 }
%"class.__gnu_cxx::__normal_iterator.43" = type { %"struct.std::pair.32"* }
%"class.std::allocator.29" = type { i8 }
%"class.__gnu_cxx::new_allocator.30" = type { i8 }
%struct.timezone = type { i32, i32 }
%"class.std::allocator.23" = type { i8 }
%"class.__gnu_cxx::new_allocator.24" = type { i8 }
%"class.std::allocator.44" = type { i8 }
%"class.__gnu_cxx::new_allocator.45" = type { i8 }
%"class.std::allocator.10" = type { i8 }
%"class.__gnu_cxx::new_allocator.11" = type { i8 }

$_ZN7CSolver7versionEv = comdat any

$_ZN9CDatabase19set_variable_numberEi = comdat any

$_ZN9CDatabase12add_variableEv = comdat any

$_ZN7CSolver14set_time_limitEf = comdat any

$_ZN7CSolver13set_mem_limitEi = comdat any

$_ZN7CSolver8add_hookEPFvPvEi = comdat any

$_ZN7CSolver14set_randomnessEi = comdat any

$_ZN7CSolver15set_random_seedEi = comdat any

$_ZN7CSolver17queue_implicationEii = comdat any

$_ZN7CSolver6dlevelEv = comdat any

$_ZN9CDatabase9variablesEv = comdat any

$_ZNKSt6vectorI9CVariableSaIS0_EE4sizeEv = comdat any

$_ZN9CDatabase8variableEi = comdat any

$_ZN9CVariable5valueEv = comdat any

$_ZN7CSolver18estimate_mem_usageEv = comdat any

$_ZN7CSolver16elapsed_cpu_timeEv = comdat any

$_ZN7CSolver16current_cpu_timeEv = comdat any

$_ZN7CSolver12cpu_run_timeEv = comdat any

$_ZN7CSolver14world_run_timeEv = comdat any

$_ZN9CDatabase12num_literalsEv = comdat any

$_ZN9CDatabase11num_clausesEv = comdat any

$_ZN9CDatabase13num_variablesEv = comdat any

$_ZN9CDatabase17init_num_literalsEv = comdat any

$_ZN9CDatabase16init_num_clausesEv = comdat any

$_ZN9CDatabase18num_added_literalsEv = comdat any

$_ZN9CDatabase17num_added_clausesEv = comdat any

$_ZN9CDatabase19num_deleted_clausesEv = comdat any

$_ZN9CDatabase20num_deleted_literalsEv = comdat any

$_ZN7CSolver13num_decisionsEv = comdat any

$_ZN7CSolver16num_implicationsEv = comdat any

$_ZN7CSolver10max_dlevelEv = comdat any

$_ZN9CDatabase7clausesEv = comdat any

$_ZNKSt6vectorI7CClauseSaIS0_EE4sizeEv = comdat any

$_ZN9CDatabase6clauseEi = comdat any

$_ZN7CClause6in_useEv = comdat any

$_ZN7CClause8num_litsEv = comdat any

$_ZN7CClause7literalEi = comdat any

$_ZN15CLitPoolElement5s_varEv = comdat any

$_ZN7CSolver19enable_cls_deletionEb = comdat any

$_ZN7CSolver20set_cls_del_intervalEi = comdat any

$_ZN7CSolver19set_max_unrelevanceEi = comdat any

$_ZN7CSolver34set_min_num_clause_lits_for_deleteEi = comdat any

$_ZN7CSolver30set_max_conflict_clause_lengthEi = comdat any

$_ZN11CClause_Gen4and2ER7CSolveriii = comdat any

$_ZN11CClause_Gen5and_nER7CSolverPiii = comdat any

$_ZN11CClause_Gen3or2ER7CSolveriii = comdat any

$_ZN11CClause_Gen4or_nER7CSolverPiii = comdat any

$_ZN11CClause_Gen5nand2ER7CSolveriii = comdat any

$_ZN11CClause_Gen6nand_nER7CSolverPiii = comdat any

$_ZN11CClause_Gen4nor2ER7CSolveriii = comdat any

$_ZN11CClause_Gen5nor_nER7CSolverPiii = comdat any

$_ZN11CClause_Gen4xor2ER7CSolveriii = comdat any

$_ZN11CClause_Gen4not1ER7CSolverii = comdat any

$_ZNSt6vectorI9CVariableSaIS0_EE6resizeEmS0_ = comdat any

$_ZN9CVariableC2Ev = comdat any

$_ZN9CVariableD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt6vectorI9CVariableSaIS0_EE6insertEN9__gnu_cxx17__normal_iteratorIPS0_S2_EEmRKS0_ = comdat any

$_ZNSt6vectorI9CVariableSaIS0_EE3endEv = comdat any

$_ZNSt6vectorI9CVariableSaIS0_EE15_M_erase_at_endEPS0_ = comdat any

$_ZNSt6vectorI9CVariableSaIS0_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS0_S2_EEmRKS0_ = comdat any

$_ZN9CVariableC2ERKS_ = comdat any

$_ZN9__gnu_cxxmiIP9CVariableSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_ = comdat any

$_ZSt22__uninitialized_move_aIP9CVariableS1_SaIS0_EET0_T_S4_S3_RT1_ = comdat any

$_ZNSt12_Vector_baseI9CVariableSaIS0_EE19_M_get_Tp_allocatorEv = comdat any

$_ZSt13copy_backwardIP9CVariableS1_ET0_T_S3_S2_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIP9CVariableSt6vectorIS1_SaIS1_EEE4baseEv = comdat any

$_ZSt4fillIP9CVariableS0_EvT_S2_RKT0_ = comdat any

$_ZSt24__uninitialized_fill_n_aIP9CVariablemS0_S0_ET_S2_T0_RKT1_RSaIT2_E = comdat any

$_ZNKSt6vectorI9CVariableSaIS0_EE12_M_check_lenEmPKc = comdat any

$_ZNSt6vectorI9CVariableSaIS0_EE5beginEv = comdat any

$_ZNSt12_Vector_baseI9CVariableSaIS0_EE11_M_allocateEm = comdat any

$_ZSt34__uninitialized_move_if_noexcept_aIP9CVariableS1_SaIS0_EET0_T_S4_S3_RT1_ = comdat any

$_ZSt8_DestroyIP9CVariableS0_EvT_S2_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseI9CVariableSaIS0_EE13_M_deallocateEPS0_m = comdat any

$_ZNSt6vectorIP15CLitPoolElementSaIS1_EEC2ERKS3_ = comdat any

$_ZNKSt6vectorIP15CLitPoolElementSaIS1_EE4sizeEv = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIP15CLitPoolElementEE17_S_select_on_copyERKS3_ = comdat any

$_ZNKSt12_Vector_baseIP15CLitPoolElementSaIS1_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIP15CLitPoolElementSaIS1_EEC2EmRKS2_ = comdat any

$_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKP15CLitPoolElementSt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E = comdat any

$_ZNKSt6vectorIP15CLitPoolElementSaIS1_EE5beginEv = comdat any

$_ZNKSt6vectorIP15CLitPoolElementSaIS1_EE3endEv = comdat any

$_ZNSt12_Vector_baseIP15CLitPoolElementSaIS1_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIP15CLitPoolElementSaIS1_EED2Ev = comdat any

$_ZNSt12_Vector_baseIP15CLitPoolElementSaIS1_EE12_Vector_implC2ERKS2_ = comdat any

$_ZNSt12_Vector_baseIP15CLitPoolElementSaIS1_EE17_M_create_storageEm = comdat any

$_ZNSt12_Vector_baseIP15CLitPoolElementSaIS1_EE12_Vector_implD2Ev = comdat any

$_ZNSaIP15CLitPoolElementEC2ERKS1_ = comdat any

$_ZN9__gnu_cxx13new_allocatorIP15CLitPoolElementEC2ERKS3_ = comdat any

$_ZNSt12_Vector_baseIP15CLitPoolElementSaIS1_EE11_M_allocateEm = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIP15CLitPoolElementEE8allocateERS3_m = comdat any

$_ZN9__gnu_cxx13new_allocatorIP15CLitPoolElementE8allocateEmPKv = comdat any

$_ZNK9__gnu_cxx13new_allocatorIP15CLitPoolElementE8max_sizeEv = comdat any

$_ZNSaIP15CLitPoolElementED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIP15CLitPoolElementED2Ev = comdat any

$_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKP15CLitPoolElementSt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_ = comdat any

$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKP15CLitPoolElementSt6vectorIS5_SaIS5_EEEEPS5_EET0_T_SE_SD_ = comdat any

$_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP15CLitPoolElementSt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_ = comdat any

$_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKP15CLitPoolElementSt6vectorIS3_SaIS3_EEEEPS3_ET1_T0_SC_SB_ = comdat any

$_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKP15CLitPoolElementSt6vectorIS3_SaIS3_EEEEENSt11_Miter_baseIT_E13iterator_typeESB_ = comdat any

$_ZSt13__copy_move_aILb0EPKP15CLitPoolElementPS1_ET1_T0_S6_S5_ = comdat any

$_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPKP15CLitPoolElementSt6vectorIS3_SaIS3_EEEEENSt11_Niter_baseIT_E13iterator_typeESB_ = comdat any

$_ZSt12__niter_baseIPP15CLitPoolElementENSt11_Niter_baseIT_E13iterator_typeES4_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP15CLitPoolElementEEPT_PKS5_S8_S6_ = comdat any

$_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPKP15CLitPoolElementSt6vectorIS3_SaIS3_EEEELb1EE7_S_baseES9_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPKP15CLitPoolElementSt6vectorIS2_SaIS2_EEE4baseEv = comdat any

$_ZNSt10_Iter_baseIPP15CLitPoolElementLb0EE7_S_baseES2_ = comdat any

$_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPKP15CLitPoolElementSt6vectorIS3_SaIS3_EEEELb0EE7_S_baseES9_ = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPKP15CLitPoolElementSt6vectorIS2_SaIS2_EEEC2ERKS4_ = comdat any

$_ZNSt12_Vector_baseIP15CLitPoolElementSaIS1_EE13_M_deallocateEPS1_m = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIP15CLitPoolElementEE10deallocateERS3_PS2_m = comdat any

$_ZN9__gnu_cxx13new_allocatorIP15CLitPoolElementE10deallocateEPS2_m = comdat any

$_ZSt22__uninitialized_copy_aIP9CVariableS1_S0_ET0_T_S3_S2_RSaIT1_E = comdat any

$_ZSt18uninitialized_copyIP9CVariableS1_ET0_T_S3_S2_ = comdat any

$_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIP9CVariableS3_EET0_T_S5_S4_ = comdat any

$_ZSt10_ConstructI9CVariableS0_EvPT_RKT0_ = comdat any

$_ZSt11__addressofI9CVariableEPT_RS1_ = comdat any

$_ZSt8_DestroyIP9CVariableEvT_S2_ = comdat any

$_ZNSt12_Destroy_auxILb0EE9__destroyIP9CVariableEEvT_S4_ = comdat any

$_ZSt8_DestroyI9CVariableEvPT_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EP9CVariableS1_ET1_T0_S3_S2_ = comdat any

$_ZSt12__miter_baseIP9CVariableENSt11_Miter_baseIT_E13iterator_typeES3_ = comdat any

$_ZSt22__copy_move_backward_aILb0EP9CVariableS1_ET1_T0_S3_S2_ = comdat any

$_ZSt12__niter_baseIP9CVariableENSt11_Niter_baseIT_E13iterator_typeES3_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIP9CVariableS4_EET0_T_S6_S5_ = comdat any

$_ZN9CVariableaSERKS_ = comdat any

$_ZNSt6vectorIP15CLitPoolElementSaIS1_EEaSERKS3_ = comdat any

$_ZNKSt6vectorIP15CLitPoolElementSaIS1_EE8capacityEv = comdat any

$_ZNSt6vectorIP15CLitPoolElementSaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_ = comdat any

$_ZSt8_DestroyIPP15CLitPoolElementS1_EvT_S3_RSaIT0_E = comdat any

$_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPP15CLitPoolElementSt6vectorIS3_SaIS3_EEEES3_EvT_S9_RSaIT0_E = comdat any

$_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP15CLitPoolElementSt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_ = comdat any

$_ZNSt6vectorIP15CLitPoolElementSaIS1_EE5beginEv = comdat any

$_ZNSt6vectorIP15CLitPoolElementSaIS1_EE3endEv = comdat any

$_ZSt4copyIPP15CLitPoolElementS2_ET0_T_S4_S3_ = comdat any

$_ZSt22__uninitialized_copy_aIPP15CLitPoolElementS2_S1_ET0_T_S4_S3_RSaIT1_E = comdat any

$_ZSt8_DestroyIPP15CLitPoolElementEvT_S3_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPP15CLitPoolElementEEvT_S5_ = comdat any

$_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPP15CLitPoolElementSt6vectorIS3_SaIS3_EEEEEvT_S9_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPP15CLitPoolElementSt6vectorIS5_SaIS5_EEEEEEvT_SB_ = comdat any

$_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKP15CLitPoolElementSt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET1_T0_SD_SC_ = comdat any

$_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPP15CLitPoolElementSt6vectorIS3_SaIS3_EEEEENSt11_Niter_baseIT_E13iterator_typeESA_ = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPP15CLitPoolElementSt6vectorIS2_SaIS2_EEEC2ERKS3_ = comdat any

$_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPP15CLitPoolElementSt6vectorIS3_SaIS3_EEEELb1EE7_S_baseES8_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPP15CLitPoolElementSt6vectorIS2_SaIS2_EEE4baseEv = comdat any

$_ZSt14__copy_move_a2ILb0EPP15CLitPoolElementS2_ET1_T0_S4_S3_ = comdat any

$_ZSt12__miter_baseIPP15CLitPoolElementENSt11_Miter_baseIT_E13iterator_typeES4_ = comdat any

$_ZSt13__copy_move_aILb0EPP15CLitPoolElementS2_ET1_T0_S4_S3_ = comdat any

$_ZSt18uninitialized_copyIPP15CLitPoolElementS2_ET0_T_S4_S3_ = comdat any

$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPP15CLitPoolElementS4_EET0_T_S6_S5_ = comdat any

$_ZNSt10_Iter_baseIP9CVariableLb0EE7_S_baseES1_ = comdat any

$_ZSt8__fill_aIP9CVariableS0_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_S7_RKS4_ = comdat any

$_ZSt20uninitialized_fill_nIP9CVariablemS0_ET_S2_T0_RKT1_ = comdat any

$_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIP9CVariablemS2_EET_S4_T0_RKT1_ = comdat any

$_ZNKSt6vectorI9CVariableSaIS0_EE8max_sizeEv = comdat any

$_ZSt3maxImERKT_S2_S2_ = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaI9CVariableEE8max_sizeERKS2_ = comdat any

$_ZNKSt12_Vector_baseI9CVariableSaIS0_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNK9__gnu_cxx13new_allocatorI9CVariableE8max_sizeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIP9CVariableSt6vectorIS1_SaIS1_EEEC2ERKS2_ = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaI9CVariableEE8allocateERS2_m = comdat any

$_ZN9__gnu_cxx13new_allocatorI9CVariableE8allocateEmPKv = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaI9CVariableEE10deallocateERS2_PS1_m = comdat any

$_ZN9__gnu_cxx13new_allocatorI9CVariableE10deallocateEPS1_m = comdat any

$_ZNSt6vectorIP15CLitPoolElementSaIS1_EEC2Ev = comdat any

$_ZNSt6vectorIP15CLitPoolElementSaIS1_EED2Ev = comdat any

$_ZNSt12_Vector_baseIP15CLitPoolElementSaIS1_EEC2Ev = comdat any

$_ZNSt12_Vector_baseIP15CLitPoolElementSaIS1_EE12_Vector_implC2Ev = comdat any

$_ZNSaIP15CLitPoolElementEC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIP15CLitPoolElementEC2Ev = comdat any

$_ZN9CDatabase13set_mem_limitEj = comdat any

$_ZNSt4pairIPFvPvEiEC2ERKS2_RKi = comdat any

$_ZNSt6vectorISt4pairIiS0_IPFvPvEiEESaIS5_EE9push_backERKS5_ = comdat any

$_ZNSt4pairIiS_IPFvPvEiEEC2ERKiRKS3_ = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaISt4pairIiS1_IPFvPvEiEEEE9constructIS6_EEvRS7_PS6_RKT_ = comdat any

$_ZNSt6vectorISt4pairIiS0_IPFvPvEiEESaIS5_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS5_S7_EERKS5_ = comdat any

$_ZNSt6vectorISt4pairIiS0_IPFvPvEiEESaIS5_EE3endEv = comdat any

$_ZN9__gnu_cxx13new_allocatorISt4pairIiS1_IPFvPvEiEEE9constructEPS6_RKS6_ = comdat any

$_ZSt13copy_backwardIPSt4pairIiS0_IPFvPvEiEES6_ET0_T_S8_S7_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIiS1_IPFvPvEiEESt6vectorIS6_SaIS6_EEE4baseEv = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIiS1_IPFvPvEiEESt6vectorIS6_SaIS6_EEEdeEv = comdat any

$_ZNKSt6vectorISt4pairIiS0_IPFvPvEiEESaIS5_EE12_M_check_lenEmPKc = comdat any

$_ZN9__gnu_cxxmiIPSt4pairIiS1_IPFvPvEiEESt6vectorIS6_SaIS6_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSE_SH_ = comdat any

$_ZNSt6vectorISt4pairIiS0_IPFvPvEiEESaIS5_EE5beginEv = comdat any

$_ZNSt12_Vector_baseISt4pairIiS0_IPFvPvEiEESaIS5_EE11_M_allocateEm = comdat any

$_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIiS0_IPFvPvEiEES6_SaIS5_EET0_T_S9_S8_RT1_ = comdat any

$_ZNSt12_Vector_baseISt4pairIiS0_IPFvPvEiEESaIS5_EE19_M_get_Tp_allocatorEv = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaISt4pairIiS1_IPFvPvEiEEEE7destroyERS7_PS6_ = comdat any

$_ZSt8_DestroyIPSt4pairIiS0_IPFvPvEiEES5_EvT_S7_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseISt4pairIiS0_IPFvPvEiEESaIS5_EE13_M_deallocateEPS5_m = comdat any

$_ZSt23__copy_move_backward_a2ILb0EPSt4pairIiS0_IPFvPvEiEES6_ET1_T0_S8_S7_ = comdat any

$_ZSt12__miter_baseIPSt4pairIiS0_IPFvPvEiEEENSt11_Miter_baseIT_E13iterator_typeES8_ = comdat any

$_ZSt22__copy_move_backward_aILb0EPSt4pairIiS0_IPFvPvEiEES6_ET1_T0_S8_S7_ = comdat any

$_ZSt12__niter_baseIPSt4pairIiS0_IPFvPvEiEEENSt11_Niter_baseIT_E13iterator_typeES8_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIPSt4pairIiS3_IPFvPvEiEES9_EET0_T_SB_SA_ = comdat any

$_ZNSt10_Iter_baseIPSt4pairIiS0_IPFvPvEiEELb0EE7_S_baseES6_ = comdat any

$_ZNKSt6vectorISt4pairIiS0_IPFvPvEiEESaIS5_EE8max_sizeEv = comdat any

$_ZNKSt6vectorISt4pairIiS0_IPFvPvEiEESaIS5_EE4sizeEv = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaISt4pairIiS1_IPFvPvEiEEEE8max_sizeERKS7_ = comdat any

$_ZNKSt12_Vector_baseISt4pairIiS0_IPFvPvEiEESaIS5_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNK9__gnu_cxx13new_allocatorISt4pairIiS1_IPFvPvEiEEE8max_sizeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIiS1_IPFvPvEiEESt6vectorIS6_SaIS6_EEEC2ERKS7_ = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaISt4pairIiS1_IPFvPvEiEEEE8allocateERS7_m = comdat any

$_ZN9__gnu_cxx13new_allocatorISt4pairIiS1_IPFvPvEiEEE8allocateEmPKv = comdat any

$_ZSt22__uninitialized_copy_aIPSt4pairIiS0_IPFvPvEiEES6_S5_ET0_T_S8_S7_RSaIT1_E = comdat any

$_ZSt18uninitialized_copyIPSt4pairIiS0_IPFvPvEiEES6_ET0_T_S8_S7_ = comdat any

$_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPSt4pairIiS2_IPFvPvEiEES8_EET0_T_SA_S9_ = comdat any

$_ZSt10_ConstructISt4pairIiS0_IPFvPvEiEES5_EvPT_RKT0_ = comdat any

$_ZSt11__addressofISt4pairIiS0_IPFvPvEiEEEPT_RS6_ = comdat any

$_ZSt8_DestroyIPSt4pairIiS0_IPFvPvEiEEEvT_S7_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIiS2_IPFvPvEiEEEEvT_S9_ = comdat any

$_ZN9__gnu_cxx13new_allocatorISt4pairIiS1_IPFvPvEiEEE7destroyEPS6_ = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaISt4pairIiS1_IPFvPvEiEEEE10deallocateERS7_PS6_m = comdat any

$_ZN9__gnu_cxx13new_allocatorISt4pairIiS1_IPFvPvEiEEE10deallocateEPS6_m = comdat any

$_ZN7CSolver18current_world_timeEv = comdat any

$_ZNSt5queueISt4pairIiiESt5dequeIS1_SaIS1_EEE4pushERKS1_ = comdat any

$_ZNSt4pairIiiEC2ERKiS2_ = comdat any

$_ZNSt5dequeISt4pairIiiESaIS1_EE9push_backERKS1_ = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaISt4pairIiiEEE9constructIS2_EEvRS3_PS2_RKT_ = comdat any

$_ZNSt5dequeISt4pairIiiESaIS1_EE16_M_push_back_auxERKS1_ = comdat any

$_ZN9__gnu_cxx13new_allocatorISt4pairIiiEE9constructEPS2_RKS2_ = comdat any

$_ZNSt5dequeISt4pairIiiESaIS1_EE22_M_reserve_map_at_backEm = comdat any

$_ZNSt11_Deque_baseISt4pairIiiESaIS1_EE16_M_allocate_nodeEv = comdat any

$_ZNSt15_Deque_iteratorISt4pairIiiERS1_PS1_E11_M_set_nodeEPS3_ = comdat any

$_ZNSt11_Deque_baseISt4pairIiiESaIS1_EE18_M_deallocate_nodeEPS1_ = comdat any

$_ZNSt5dequeISt4pairIiiESaIS1_EE17_M_reallocate_mapEmb = comdat any

$_ZSt4copyIPPSt4pairIiiES3_ET0_T_S5_S4_ = comdat any

$_ZSt13copy_backwardIPPSt4pairIiiES3_ET0_T_S5_S4_ = comdat any

$_ZNSt11_Deque_baseISt4pairIiiESaIS1_EE15_M_allocate_mapEm = comdat any

$_ZNSt11_Deque_baseISt4pairIiiESaIS1_EE17_M_deallocate_mapEPPS1_m = comdat any

$_ZSt14__copy_move_a2ILb0EPPSt4pairIiiES3_ET1_T0_S5_S4_ = comdat any

$_ZSt12__miter_baseIPPSt4pairIiiEENSt11_Miter_baseIT_E13iterator_typeES5_ = comdat any

$_ZSt13__copy_move_aILb0EPPSt4pairIiiES3_ET1_T0_S5_S4_ = comdat any

$_ZSt12__niter_baseIPPSt4pairIiiEENSt11_Niter_baseIT_E13iterator_typeES5_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPSt4pairIiiEEEPT_PKS6_S9_S7_ = comdat any

$_ZNSt10_Iter_baseIPPSt4pairIiiELb0EE7_S_baseES3_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EPPSt4pairIiiES3_ET1_T0_S5_S4_ = comdat any

$_ZSt22__copy_move_backward_aILb0EPPSt4pairIiiES3_ET1_T0_S5_S4_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPSt4pairIiiEEEPT_PKS6_S9_S7_ = comdat any

$_ZNKSt11_Deque_baseISt4pairIiiESaIS1_EE20_M_get_map_allocatorEv = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIPSt4pairIiiEEE8allocateERS4_m = comdat any

$_ZNSaIPSt4pairIiiEED2Ev = comdat any

$_ZNKSt11_Deque_baseISt4pairIiiESaIS1_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSaIPSt4pairIiiEEC2IS0_EERKSaIT_E = comdat any

$_ZN9__gnu_cxx13new_allocatorIPSt4pairIiiEEC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIPSt4pairIiiEE8allocateEmPKv = comdat any

$_ZNK9__gnu_cxx13new_allocatorIPSt4pairIiiEE8max_sizeEv = comdat any

$_ZN9__gnu_cxx13new_allocatorIPSt4pairIiiEED2Ev = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIPSt4pairIiiEEE10deallocateERS4_PS3_m = comdat any

$_ZN9__gnu_cxx13new_allocatorIPSt4pairIiiEE10deallocateEPS3_m = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaISt4pairIiiEEE8allocateERS3_m = comdat any

$_ZSt16__deque_buf_sizem = comdat any

$_ZN9__gnu_cxx13new_allocatorISt4pairIiiEE8allocateEmPKv = comdat any

$_ZNK9__gnu_cxx13new_allocatorISt4pairIiiEE8max_sizeEv = comdat any

$_ZNSt15_Deque_iteratorISt4pairIiiERS1_PS1_E14_S_buffer_sizeEv = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaISt4pairIiiEEE10deallocateERS3_PS2_m = comdat any

$_ZN9__gnu_cxx13new_allocatorISt4pairIiiEE10deallocateEPS2_m = comdat any

$_ZNSt6vectorI9CVariableSaIS0_EEixEm = comdat any

$_ZN9CDatabase18estimate_mem_usageEv = comdat any

$_ZN9CDatabase13lit_pool_sizeEv = comdat any

$_ZN9CDatabase19lit_pool_free_spaceEv = comdat any

$_ZNKSt6vectorI9CVariableSaIS0_EE8capacityEv = comdat any

$_ZNKSt6vectorI7CClauseSaIS0_EE8capacityEv = comdat any

$_ZNKSt5queueIiSt5dequeIiSaIiEEE4sizeEv = comdat any

$_ZNKSt5dequeIiSaIiEE4sizeEv = comdat any

$_ZStmiIiRiPiENSt15_Deque_iteratorIT_T0_T1_E15difference_typeERKS6_S9_ = comdat any

$_ZNSt15_Deque_iteratorIiRiPiE14_S_buffer_sizeEv = comdat any

$_ZNSt6vectorI7CClauseSaIS0_EEixEm = comdat any

$_ZN7CClause8literalsEv = comdat any

$_ZNSt6vectorIiSaIiEEC2Ev = comdat any

$_ZNSt6vectorIiSaIiEE5clearEv = comdat any

$_ZNSt6vectorIiSaIiEE9push_backERKi = comdat any

$_ZN11CClause_Gen3posEi = comdat any

$_ZN11CClause_Gen3negEi = comdat any

$_ZNSt6vectorIiSaIiEE5beginEv = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEixEl = comdat any

$_ZNKSt6vectorIiSaIiEE4sizeEv = comdat any

$_ZNSt6vectorIiSaIiEED2Ev = comdat any

$_ZNSt12_Vector_baseIiSaIiEEC2Ev = comdat any

$_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev = comdat any

$_ZNSaIiEC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIiEC2Ev = comdat any

$_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi = comdat any

$_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv = comdat any

$_ZSt8_DestroyIPiEvT_S1_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_ = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIiEE9constructIiEEvRS1_PiRKT_ = comdat any

$_ZNSt6vectorIiSaIiEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPiS1_EERKi = comdat any

$_ZNSt6vectorIiSaIiEE3endEv = comdat any

$_ZN9__gnu_cxx13new_allocatorIiE9constructEPiRKi = comdat any

$_ZSt13copy_backwardIPiS0_ET0_T_S2_S1_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv = comdat any

$_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc = comdat any

$_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_ = comdat any

$_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm = comdat any

$_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_ = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIiEE7destroyERS1_Pi = comdat any

$_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim = comdat any

$_ZSt23__copy_move_backward_a2ILb0EPiS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__miter_baseIPiENSt11_Miter_baseIT_E13iterator_typeES2_ = comdat any

$_ZSt22__copy_move_backward_aILb0EPiS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__niter_baseIPiENSt11_Niter_baseIT_E13iterator_typeES2_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIiEEPT_PKS3_S6_S4_ = comdat any

$_ZNSt10_Iter_baseIPiLb0EE7_S_baseES0_ = comdat any

$_ZNKSt6vectorIiSaIiEE8max_sizeEv = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIiEE8max_sizeERKS1_ = comdat any

$_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv = comdat any

$_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIiEE8allocateERS1_m = comdat any

$_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv = comdat any

$_ZSt22__uninitialized_copy_aIPiS0_iET0_T_S2_S1_RSaIT1_E = comdat any

$_ZSt18uninitialized_copyIPiS0_ET0_T_S2_S1_ = comdat any

$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPiS2_EET0_T_S4_S3_ = comdat any

$_ZSt4copyIPiS0_ET0_T_S2_S1_ = comdat any

$_ZSt14__copy_move_a2ILb0EPiS0_ET1_T0_S2_S1_ = comdat any

$_ZSt13__copy_move_aILb0EPiS0_ET1_T0_S2_S1_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_ = comdat any

$_ZN9__gnu_cxx13new_allocatorIiE7destroyEPi = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIiEE10deallocateERS1_Pim = comdat any

$_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_ = comdat any

$_ZNSt12_Vector_baseIiSaIiEED2Ev = comdat any

$_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev = comdat any

$_ZNSaIiED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIiED2Ev = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external global i8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [48 x i8] c"v_idx > 0 && v_idx < solver->variables().size()\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"asap_c_wrapper.cpp\00", align 1
@__PRETTY_FUNCTION__.SAT_GetVarAsgnment = private unnamed_addr constant [36 x i8] c"int SAT_GetVarAsgnment(void *, int)\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Z2001.2.17\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"vector::_M_fill_insert\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"vector::_M_insert_aux\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"\09\09\09\09\09\09Queueing \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c" -\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c" +\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c" because of  \00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_asap_c_wrapper.cpp, i8* null }]

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
define i8* @SAT_InitManager() #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %solver = alloca %class.CSolver*, align 8
  %1 = alloca i8*
  %2 = alloca i32
  %3 = call noalias i8* @_Znwm(i64 736) #14
  %4 = bitcast i8* %3 to %class.CSolver*
  invoke void @_ZN7CSolverC1Ev(%class.CSolver* %4)
          to label %5 unwind label %8

; <label>:5                                       ; preds = %0
  store %class.CSolver* %4, %class.CSolver** %solver, align 8
  %6 = load %class.CSolver*, %class.CSolver** %solver, align 8
  %7 = bitcast %class.CSolver* %6 to i8*
  ret i8* %7

; <label>:8                                       ; preds = %0
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  store i8* %10, i8** %1, align 8
  %11 = extractvalue { i8*, i32 } %9, 1
  store i32 %11, i32* %2, align 4
  call void @_ZdlPv(i8* %3) #15
  br label %12

; <label>:12                                      ; preds = %8
  %13 = load i8*, i8** %1, align 8
  %14 = load i32, i32* %2, align 4
  %15 = insertvalue { i8*, i32 } undef, i8* %13, 0
  %16 = insertvalue { i8*, i32 } %15, i32 %14, 1
  resume { i8*, i32 } %16
}

; Function Attrs: nobuiltin
declare noalias i8* @_Znwm(i64) #3

declare void @_ZN7CSolverC1Ev(%class.CSolver*) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #4

; Function Attrs: uwtable
define i8* @SAT_Version(i8* %mng) #0 {
  %1 = alloca i8*, align 8
  %solver = alloca %class.CSolver*, align 8
  store i8* %mng, i8** %1, align 8
  %2 = load i8*, i8** %1, align 8
  %3 = bitcast i8* %2 to %class.CSolver*
  store %class.CSolver* %3, %class.CSolver** %solver, align 8
  %4 = load %class.CSolver*, %class.CSolver** %solver, align 8
  %5 = call i8* @_ZN7CSolver7versionEv(%class.CSolver* %4)
  ret i8* %5
}

; Function Attrs: nounwind uwtable
define linkonce_odr i8* @_ZN7CSolver7versionEv(%class.CSolver* %this) #5 comdat align 2 {
  %1 = alloca %class.CSolver*, align 8
  store %class.CSolver* %this, %class.CSolver** %1, align 8
  %2 = load %class.CSolver*, %class.CSolver** %1, align 8
  ret i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0)
}

; Function Attrs: uwtable
define void @SAT_SetNumVariables(i8* %mng, i32 %n_var) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %solver = alloca %class.CSolver*, align 8
  store i8* %mng, i8** %1, align 8
  store i32 %n_var, i32* %2, align 4
  %3 = load i8*, i8** %1, align 8
  %4 = bitcast i8* %3 to %class.CSolver*
  store %class.CSolver* %4, %class.CSolver** %solver, align 8
  %5 = load %class.CSolver*, %class.CSolver** %solver, align 8
  %6 = bitcast %class.CSolver* %5 to %class.CDatabase*
  %7 = load i32, i32* %2, align 4
  call void @_ZN9CDatabase19set_variable_numberEi(%class.CDatabase* %6, i32 %7)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN9CDatabase19set_variable_numberEi(%class.CDatabase* %this, i32 %n) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %class.CDatabase*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %class.CVariable, align 8
  %4 = alloca i8*
  %5 = alloca i32
  store %class.CDatabase* %this, %class.CDatabase** %1, align 8
  store i32 %n, i32* %2, align 4
  %6 = load %class.CDatabase*, %class.CDatabase** %1, align 8
  %7 = call dereferenceable(24) %"class.std::vector"* @_ZN9CDatabase9variablesEv(%class.CDatabase* %6)
  %8 = load i32, i32* %2, align 4
  %9 = add nsw i32 %8, 1
  %10 = sext i32 %9 to i64
  call void @_ZN9CVariableC2Ev(%class.CVariable* %3)
  invoke void @_ZNSt6vectorI9CVariableSaIS0_EE6resizeEmS0_(%"class.std::vector"* %7, i64 %10, %class.CVariable* %3)
          to label %11 unwind label %12

; <label>:11                                      ; preds = %0
  call void @_ZN9CVariableD2Ev(%class.CVariable* %3)
  ret void

; <label>:12                                      ; preds = %0
  %13 = landingpad { i8*, i32 }
          cleanup
  %14 = extractvalue { i8*, i32 } %13, 0
  store i8* %14, i8** %4, align 8
  %15 = extractvalue { i8*, i32 } %13, 1
  store i32 %15, i32* %5, align 4
  invoke void @_ZN9CVariableD2Ev(%class.CVariable* %3)
          to label %16 unwind label %22

; <label>:16                                      ; preds = %12
  br label %17

; <label>:17                                      ; preds = %16
  %18 = load i8*, i8** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = insertvalue { i8*, i32 } undef, i8* %18, 0
  %21 = insertvalue { i8*, i32 } %20, i32 %19, 1
  resume { i8*, i32 } %21

; <label>:22                                      ; preds = %12
  %23 = landingpad { i8*, i32 }
          catch i8* null
  %24 = extractvalue { i8*, i32 } %23, 0
  call void @__clang_call_terminate(i8* %24) #12
  unreachable
}

; Function Attrs: uwtable
define void @SAT_ReleaseManager(i8* %mng) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca i8*, align 8
  %solver = alloca %class.CSolver*, align 8
  %2 = alloca i8*
  %3 = alloca i32
  store i8* %mng, i8** %1, align 8
  %4 = load i8*, i8** %1, align 8
  %5 = bitcast i8* %4 to %class.CSolver*
  store %class.CSolver* %5, %class.CSolver** %solver, align 8
  %6 = load %class.CSolver*, %class.CSolver** %solver, align 8
  %7 = icmp eq %class.CSolver* %6, null
  br i1 %7, label %11, label %8

; <label>:8                                       ; preds = %0
  invoke void @_ZN7CSolverD1Ev(%class.CSolver* %6)
          to label %9 unwind label %12

; <label>:9                                       ; preds = %8
  %10 = bitcast %class.CSolver* %6 to i8*
  call void @_ZdlPv(i8* %10) #15
  br label %11

; <label>:11                                      ; preds = %9, %0
  ret void

; <label>:12                                      ; preds = %8
  %13 = landingpad { i8*, i32 }
          cleanup
  %14 = extractvalue { i8*, i32 } %13, 0
  store i8* %14, i8** %2, align 8
  %15 = extractvalue { i8*, i32 } %13, 1
  store i32 %15, i32* %3, align 4
  %16 = bitcast %class.CSolver* %6 to i8*
  call void @_ZdlPv(i8* %16) #15
  br label %17

; <label>:17                                      ; preds = %12
  %18 = load i8*, i8** %2, align 8
  %19 = load i32, i32* %3, align 4
  %20 = insertvalue { i8*, i32 } undef, i8* %18, 0
  %21 = insertvalue { i8*, i32 } %20, i32 %19, 1
  resume { i8*, i32 } %21
}

declare void @_ZN7CSolverD1Ev(%class.CSolver*) #1

; Function Attrs: uwtable
define i32 @SAT_AddVariable(i8* %mng) #0 {
  %1 = alloca i8*, align 8
  %solver = alloca %class.CSolver*, align 8
  store i8* %mng, i8** %1, align 8
  %2 = load i8*, i8** %1, align 8
  %3 = bitcast i8* %2 to %class.CSolver*
  store %class.CSolver* %3, %class.CSolver** %solver, align 8
  %4 = load %class.CSolver*, %class.CSolver** %solver, align 8
  %5 = bitcast %class.CSolver* %4 to %class.CDatabase*
  %6 = call i32 @_ZN9CDatabase12add_variableEv(%class.CDatabase* %5)
  ret i32 %6
}

; Function Attrs: uwtable
define linkonce_odr i32 @_ZN9CDatabase12add_variableEv(%class.CDatabase* %this) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %class.CDatabase*, align 8
  %2 = alloca %class.CVariable, align 8
  %3 = alloca i8*
  %4 = alloca i32
  store %class.CDatabase* %this, %class.CDatabase** %1, align 8
  %5 = load %class.CDatabase*, %class.CDatabase** %1, align 8
  %6 = call dereferenceable(24) %"class.std::vector"* @_ZN9CDatabase9variablesEv(%class.CDatabase* %5)
  %7 = call dereferenceable(24) %"class.std::vector"* @_ZN9CDatabase9variablesEv(%class.CDatabase* %5)
  %8 = call i64 @_ZNKSt6vectorI9CVariableSaIS0_EE4sizeEv(%"class.std::vector"* %7)
  %9 = add i64 %8, 1
  call void @_ZN9CVariableC2Ev(%class.CVariable* %2)
  invoke void @_ZNSt6vectorI9CVariableSaIS0_EE6resizeEmS0_(%"class.std::vector"* %6, i64 %9, %class.CVariable* %2)
          to label %10 unwind label %15

; <label>:10                                      ; preds = %0
  call void @_ZN9CVariableD2Ev(%class.CVariable* %2)
  %11 = call dereferenceable(24) %"class.std::vector"* @_ZN9CDatabase9variablesEv(%class.CDatabase* %5)
  %12 = call i64 @_ZNKSt6vectorI9CVariableSaIS0_EE4sizeEv(%"class.std::vector"* %11)
  %13 = sub i64 %12, 1
  %14 = trunc i64 %13 to i32
  ret i32 %14

; <label>:15                                      ; preds = %0
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = extractvalue { i8*, i32 } %16, 0
  store i8* %17, i8** %3, align 8
  %18 = extractvalue { i8*, i32 } %16, 1
  store i32 %18, i32* %4, align 4
  invoke void @_ZN9CVariableD2Ev(%class.CVariable* %2)
          to label %19 unwind label %25

; <label>:19                                      ; preds = %15
  br label %20

; <label>:20                                      ; preds = %19
  %21 = load i8*, i8** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = insertvalue { i8*, i32 } undef, i8* %21, 0
  %24 = insertvalue { i8*, i32 } %23, i32 %22, 1
  resume { i8*, i32 } %24

; <label>:25                                      ; preds = %15
  %26 = landingpad { i8*, i32 }
          catch i8* null
  %27 = extractvalue { i8*, i32 } %26, 0
  call void @__clang_call_terminate(i8* %27) #12
  unreachable
}

; Function Attrs: uwtable
define void @SAT_SetTimeLimit(i8* %mng, float %runtime) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca float, align 4
  %solver = alloca %class.CSolver*, align 8
  store i8* %mng, i8** %1, align 8
  store float %runtime, float* %2, align 4
  %3 = load i8*, i8** %1, align 8
  %4 = bitcast i8* %3 to %class.CSolver*
  store %class.CSolver* %4, %class.CSolver** %solver, align 8
  %5 = load %class.CSolver*, %class.CSolver** %solver, align 8
  %6 = load float, float* %2, align 4
  call void @_ZN7CSolver14set_time_limitEf(%class.CSolver* %5, float %6)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN7CSolver14set_time_limitEf(%class.CSolver* %this, float %t) #5 comdat align 2 {
  %1 = alloca %class.CSolver*, align 8
  %2 = alloca float, align 4
  store %class.CSolver* %this, %class.CSolver** %1, align 8
  store float %t, float* %2, align 4
  %3 = load %class.CSolver*, %class.CSolver** %1, align 8
  %4 = load float, float* %2, align 4
  %5 = getelementptr inbounds %class.CSolver, %class.CSolver* %3, i32 0, i32 5
  %6 = getelementptr inbounds %struct.CSolverParameters, %struct.CSolverParameters* %5, i32 0, i32 0
  store float %4, float* %6, align 8
  ret void
}

; Function Attrs: uwtable
define void @SAT_SetMemLimit(i8* %mng, i32 %mem_limit) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %solver = alloca %class.CSolver*, align 8
  store i8* %mng, i8** %1, align 8
  store i32 %mem_limit, i32* %2, align 4
  %3 = load i8*, i8** %1, align 8
  %4 = bitcast i8* %3 to %class.CSolver*
  store %class.CSolver* %4, %class.CSolver** %solver, align 8
  %5 = load %class.CSolver*, %class.CSolver** %solver, align 8
  %6 = load i32, i32* %2, align 4
  call void @_ZN7CSolver13set_mem_limitEi(%class.CSolver* %5, i32 %6)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN7CSolver13set_mem_limitEi(%class.CSolver* %this, i32 %s) #0 comdat align 2 {
  %1 = alloca %class.CSolver*, align 8
  %2 = alloca i32, align 4
  store %class.CSolver* %this, %class.CSolver** %1, align 8
  store i32 %s, i32* %2, align 4
  %3 = load %class.CSolver*, %class.CSolver** %1, align 8
  %4 = bitcast %class.CSolver* %3 to %class.CDatabase*
  %5 = load i32, i32* %2, align 4
  call void @_ZN9CDatabase13set_mem_limitEj(%class.CDatabase* %4, i32 %5)
  ret void
}

; Function Attrs: uwtable
define void @SAT_AddClause(i8* %mng, i32* %clause_lits, i32 %num_lits) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %solver = alloca %class.CSolver*, align 8
  store i8* %mng, i8** %1, align 8
  store i32* %clause_lits, i32** %2, align 8
  store i32 %num_lits, i32* %3, align 4
  %4 = load i8*, i8** %1, align 8
  %5 = bitcast i8* %4 to %class.CSolver*
  store %class.CSolver* %5, %class.CSolver** %solver, align 8
  %6 = load %class.CSolver*, %class.CSolver** %solver, align 8
  %7 = bitcast %class.CSolver* %6 to %class.CDatabase*
  %8 = load i32*, i32** %2, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @_ZN9CDatabase10add_clauseEPii(%class.CDatabase* %7, i32* %8, i32 %9)
  ret void
}

declare i32 @_ZN9CDatabase10add_clauseEPii(%class.CDatabase*, i32*, i32) #1

; Function Attrs: uwtable
define i32 @SAT_Solve(i8* %mng, %struct.Assignments* %results, %class.AssignmentStack** %stopPoint, i32* %solFound) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.Assignments*, align 8
  %3 = alloca %class.AssignmentStack**, align 8
  %4 = alloca i32*, align 8
  %solver = alloca %class.CSolver*, align 8
  store i8* %mng, i8** %1, align 8
  store %struct.Assignments* %results, %struct.Assignments** %2, align 8
  store %class.AssignmentStack** %stopPoint, %class.AssignmentStack*** %3, align 8
  store i32* %solFound, i32** %4, align 8
  %5 = load i8*, i8** %1, align 8
  %6 = bitcast i8* %5 to %class.CSolver*
  store %class.CSolver* %6, %class.CSolver** %solver, align 8
  %7 = load %class.CSolver*, %class.CSolver** %solver, align 8
  %8 = load %struct.Assignments*, %struct.Assignments** %2, align 8
  %9 = load %class.AssignmentStack**, %class.AssignmentStack*** %3, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @_ZN7CSolver5solveEP11AssignmentsPP15AssignmentStackPi(%class.CSolver* %7, %struct.Assignments* %8, %class.AssignmentStack** %9, i32* %10)
  ret i32 %11
}

declare i32 @_ZN7CSolver5solveEP11AssignmentsPP15AssignmentStackPi(%class.CSolver*, %struct.Assignments*, %class.AssignmentStack**, i32*) #1

; Function Attrs: uwtable
define void @SAT_AddHookFun(i8* %mng, void (i8*)* %fun, i32 %interval) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca void (i8*)*, align 8
  %3 = alloca i32, align 4
  %solver = alloca %class.CSolver*, align 8
  store i8* %mng, i8** %1, align 8
  store void (i8*)* %fun, void (i8*)** %2, align 8
  store i32 %interval, i32* %3, align 4
  %4 = load i8*, i8** %1, align 8
  %5 = bitcast i8* %4 to %class.CSolver*
  store %class.CSolver* %5, %class.CSolver** %solver, align 8
  %6 = load %class.CSolver*, %class.CSolver** %solver, align 8
  %7 = load void (i8*)*, void (i8*)** %2, align 8
  %8 = load i32, i32* %3, align 4
  call void @_ZN7CSolver8add_hookEPFvPvEi(%class.CSolver* %6, void (i8*)* %7, i32 %8)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN7CSolver8add_hookEPFvPvEi(%class.CSolver* %this, void (i8*)* %fun, i32 %interval) #0 comdat align 2 {
  %1 = alloca %class.CSolver*, align 8
  %2 = alloca void (i8*)*, align 8
  %3 = alloca i32, align 4
  %a = alloca %"struct.std::pair.33", align 8
  %4 = alloca %"struct.std::pair.32", align 8
  %5 = alloca i32, align 4
  store %class.CSolver* %this, %class.CSolver** %1, align 8
  store void (i8*)* %fun, void (i8*)** %2, align 8
  store i32 %interval, i32* %3, align 4
  %6 = load %class.CSolver*, %class.CSolver** %1, align 8
  call void @_ZNSt4pairIPFvPvEiEC2ERKS2_RKi(%"struct.std::pair.33"* %a, void (i8*)** dereferenceable(8) %2, i32* dereferenceable(4) %3)
  %7 = getelementptr inbounds %class.CSolver, %class.CSolver* %6, i32 0, i32 6
  store i32 0, i32* %5, align 4
  call void @_ZNSt4pairIiS_IPFvPvEiEEC2ERKiRKS3_(%"struct.std::pair.32"* %4, i32* dereferenceable(4) %5, %"struct.std::pair.33"* dereferenceable(16) %a)
  call void @_ZNSt6vectorISt4pairIiS0_IPFvPvEiEESaIS5_EE9push_backERKS5_(%"class.std::vector.27"* %7, %"struct.std::pair.32"* dereferenceable(24) %4)
  ret void
}

; Function Attrs: uwtable
define void @SAT_SetRandomness(i8* %mng, i32 %n) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %solver = alloca %class.CSolver*, align 8
  store i8* %mng, i8** %1, align 8
  store i32 %n, i32* %2, align 4
  %3 = load i8*, i8** %1, align 8
  %4 = bitcast i8* %3 to %class.CSolver*
  store %class.CSolver* %4, %class.CSolver** %solver, align 8
  %5 = load %class.CSolver*, %class.CSolver** %solver, align 8
  %6 = load i32, i32* %2, align 4
  call void @_ZN7CSolver14set_randomnessEi(%class.CSolver* %5, i32 %6)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN7CSolver14set_randomnessEi(%class.CSolver* %this, i32 %n) #5 comdat align 2 {
  %1 = alloca %class.CSolver*, align 8
  %2 = alloca i32, align 4
  store %class.CSolver* %this, %class.CSolver** %1, align 8
  store i32 %n, i32* %2, align 4
  %3 = load %class.CSolver*, %class.CSolver** %1, align 8
  %4 = load i32, i32* %2, align 4
  %5 = getelementptr inbounds %class.CSolver, %class.CSolver* %3, i32 0, i32 5
  %6 = getelementptr inbounds %struct.CSolverParameters, %struct.CSolverParameters* %5, i32 0, i32 19
  store i32 %4, i32* %6, align 4
  ret void
}

; Function Attrs: uwtable
define void @SAT_SetRandSeed(i8* %mng, i32 %seed) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %solver = alloca %class.CSolver*, align 8
  store i8* %mng, i8** %1, align 8
  store i32 %seed, i32* %2, align 4
  %3 = load i8*, i8** %1, align 8
  %4 = bitcast i8* %3 to %class.CSolver*
  store %class.CSolver* %4, %class.CSolver** %solver, align 8
  %5 = load %class.CSolver*, %class.CSolver** %solver, align 8
  %6 = load i32, i32* %2, align 4
  call void @_ZN7CSolver15set_random_seedEi(%class.CSolver* %5, i32 %6)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN7CSolver15set_random_seedEi(%class.CSolver* %this, i32 %seed) #0 comdat align 2 {
  %1 = alloca %class.CSolver*, align 8
  %2 = alloca i32, align 4
  store %class.CSolver* %this, %class.CSolver** %1, align 8
  store i32 %seed, i32* %2, align 4
  %3 = load %class.CSolver*, %class.CSolver** %1, align 8
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %8

; <label>:6                                       ; preds = %0
  %7 = call i32 @_ZN7CSolver18current_world_timeEv(%class.CSolver* %3)
  call void @srand(i32 %7) #2
  br label %10

; <label>:8                                       ; preds = %0
  %9 = load i32, i32* %2, align 4
  call void @srand(i32 %9) #2
  br label %10

; <label>:10                                      ; preds = %8, %6
  ret void
}

; Function Attrs: uwtable
define void @SAT_MakeDecision(i8* %mng, i32 %vid, i32 %sign) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %solver = alloca %class.CSolver*, align 8
  store i8* %mng, i8** %1, align 8
  store i32 %vid, i32* %2, align 4
  store i32 %sign, i32* %3, align 4
  %4 = load i8*, i8** %1, align 8
  %5 = bitcast i8* %4 to %class.CSolver*
  store %class.CSolver* %5, %class.CSolver** %solver, align 8
  %6 = load %class.CSolver*, %class.CSolver** %solver, align 8
  %7 = load i32, i32* %2, align 4
  %8 = mul nsw i32 %7, 2
  %9 = load i32, i32* %3, align 4
  %10 = add nsw i32 %8, %9
  call void @_ZN7CSolver17queue_implicationEii(%class.CSolver* %6, i32 %10, i32 -1)
  %11 = load %class.CSolver*, %class.CSolver** %solver, align 8
  %12 = call dereferenceable(4) i32* @_ZN7CSolver6dlevelEv(%class.CSolver* %11)
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 4
  %15 = load %class.CSolver*, %class.CSolver** %solver, align 8
  %16 = call dereferenceable(4) i32* @_ZN7CSolver6dlevelEv(%class.CSolver* %15)
  %17 = load i32, i32* %16, align 4
  %18 = load %class.CSolver*, %class.CSolver** %solver, align 8
  %19 = getelementptr inbounds %class.CSolver, %class.CSolver* %18, i32 0, i32 15
  %20 = getelementptr inbounds %struct.CSolverStats, %struct.CSolverStats* %19, i32 0, i32 11
  %21 = load i32, i32* %20, align 8
  %22 = icmp sgt i32 %17, %21
  br i1 %22, label %23, label %30

; <label>:23                                      ; preds = %0
  %24 = load %class.CSolver*, %class.CSolver** %solver, align 8
  %25 = call dereferenceable(4) i32* @_ZN7CSolver6dlevelEv(%class.CSolver* %24)
  %26 = load i32, i32* %25, align 4
  %27 = load %class.CSolver*, %class.CSolver** %solver, align 8
  %28 = getelementptr inbounds %class.CSolver, %class.CSolver* %27, i32 0, i32 15
  %29 = getelementptr inbounds %struct.CSolverStats, %struct.CSolverStats* %28, i32 0, i32 11
  store i32 %26, i32* %29, align 8
  br label %30

; <label>:30                                      ; preds = %23, %0
  %31 = load %class.CSolver*, %class.CSolver** %solver, align 8
  call void @_ZN7CSolver21dump_assignment_stackERSo(%class.CSolver* %31, %"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN7CSolver17queue_implicationEii(%class.CSolver* %this, i32 %lit, i32 %ante_clause) #0 comdat align 2 {
  %1 = alloca %class.CSolver*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %"struct.std::pair", align 4
  store %class.CSolver* %this, %class.CSolver** %1, align 8
  store i32 %lit, i32* %2, align 4
  store i32 %ante_clause, i32* %3, align 4
  %5 = load %class.CSolver*, %class.CSolver** %1, align 8
  %6 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0))
  %7 = load i32, i32* %2, align 4
  %8 = and i32 %7, 1
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %0
  br label %12

; <label>:11                                      ; preds = %0
  br label %12

; <label>:12                                      ; preds = %11, %10
  %13 = phi [3 x i8]* [ @.str.6, %10 ], [ @.str.7, %11 ]
  %14 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i32 0, i32 0
  %15 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %6, i8* %14)
  %16 = load i32, i32* %2, align 4
  %17 = ashr i32 %16, 1
  %18 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %15, i32 %17)
  %19 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0))
  %20 = load i32, i32* %3, align 4
  %21 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %19, i32 %20)
  %22 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %21, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %23 = getelementptr inbounds %class.CSolver, %class.CSolver* %5, i32 0, i32 4
  call void @_ZNSt4pairIiiEC2ERKiS2_(%"struct.std::pair"* %4, i32* dereferenceable(4) %2, i32* dereferenceable(4) %3)
  call void @_ZNSt5queueISt4pairIiiESt5dequeIS1_SaIS1_EEE4pushERKS1_(%"class.std::queue.20"* %23, %"struct.std::pair"* dereferenceable(8) %4)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(4) i32* @_ZN7CSolver6dlevelEv(%class.CSolver* %this) #5 comdat align 2 {
  %1 = alloca %class.CSolver*, align 8
  store %class.CSolver* %this, %class.CSolver** %1, align 8
  %2 = load %class.CSolver*, %class.CSolver** %1, align 8
  %3 = getelementptr inbounds %class.CSolver, %class.CSolver* %2, i32 0, i32 2
  ret i32* %3
}

declare void @_ZN7CSolver21dump_assignment_stackERSo(%class.CSolver*, %"class.std::basic_ostream"* dereferenceable(272)) #1

; Function Attrs: uwtable
define i32 @SAT_GetVarAsgnment(i8* %mng, i32 %v_idx) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %solver = alloca %class.CSolver*, align 8
  store i8* %mng, i8** %1, align 8
  store i32 %v_idx, i32* %2, align 4
  %3 = load i8*, i8** %1, align 8
  %4 = bitcast i8* %3 to %class.CSolver*
  store %class.CSolver* %4, %class.CSolver** %solver, align 8
  %5 = load i32, i32* %2, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %16

; <label>:7                                       ; preds = %0
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = load %class.CSolver*, %class.CSolver** %solver, align 8
  %11 = bitcast %class.CSolver* %10 to %class.CDatabase*
  %12 = call dereferenceable(24) %"class.std::vector"* @_ZN9CDatabase9variablesEv(%class.CDatabase* %11)
  %13 = call i64 @_ZNKSt6vectorI9CVariableSaIS0_EE4sizeEv(%"class.std::vector"* %12)
  %14 = icmp ult i64 %9, %13
  br i1 %14, label %15, label %16

; <label>:15                                      ; preds = %7
  br label %18

; <label>:16                                      ; preds = %7, %0
  call void @__assert_fail(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 151, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.SAT_GetVarAsgnment, i32 0, i32 0)) #12
  unreachable
                                                  ; No predecessors!
  br label %18

; <label>:18                                      ; preds = %17, %15
  %19 = load %class.CSolver*, %class.CSolver** %solver, align 8
  %20 = bitcast %class.CSolver* %19 to %class.CDatabase*
  %21 = load i32, i32* %2, align 4
  %22 = call dereferenceable(80) %class.CVariable* @_ZN9CDatabase8variableEi(%class.CDatabase* %20, i32 %21)
  %23 = call dereferenceable(2) i16* @_ZN9CVariable5valueEv(%class.CVariable* %22)
  %24 = load i16, i16* %23, align 2
  %25 = sext i16 %24 to i32
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(24) %"class.std::vector"* @_ZN9CDatabase9variablesEv(%class.CDatabase* %this) #5 comdat align 2 {
  %1 = alloca %class.CDatabase*, align 8
  store %class.CDatabase* %this, %class.CDatabase** %1, align 8
  %2 = load %class.CDatabase*, %class.CDatabase** %1, align 8
  %3 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %2, i32 0, i32 4
  ret %"class.std::vector"* %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNKSt6vectorI9CVariableSaIS0_EE4sizeEv(%"class.std::vector"* %this) #5 comdat align 2 {
  %1 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 8
  %2 = load %"class.std::vector"*, %"class.std::vector"** %1, align 8
  %3 = bitcast %"class.std::vector"* %2 to %"struct.std::_Vector_base"*
  %4 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl", %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl"* %4, i32 0, i32 1
  %6 = load %class.CVariable*, %class.CVariable** %5, align 8
  %7 = bitcast %"class.std::vector"* %2 to %"struct.std::_Vector_base"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %7, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl", %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl"* %8, i32 0, i32 0
  %10 = load %class.CVariable*, %class.CVariable** %9, align 8
  %11 = ptrtoint %class.CVariable* %6 to i64
  %12 = ptrtoint %class.CVariable* %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 80
  ret i64 %14
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #6

; Function Attrs: uwtable
define linkonce_odr dereferenceable(80) %class.CVariable* @_ZN9CDatabase8variableEi(%class.CDatabase* %this, i32 %idx) #0 comdat align 2 {
  %1 = alloca %class.CDatabase*, align 8
  %2 = alloca i32, align 4
  store %class.CDatabase* %this, %class.CDatabase** %1, align 8
  store i32 %idx, i32* %2, align 4
  %3 = load %class.CDatabase*, %class.CDatabase** %1, align 8
  %4 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %3, i32 0, i32 4
  %5 = load i32, i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = call dereferenceable(80) %class.CVariable* @_ZNSt6vectorI9CVariableSaIS0_EEixEm(%"class.std::vector"* %4, i64 %6)
  ret %class.CVariable* %7
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(2) i16* @_ZN9CVariable5valueEv(%class.CVariable* %this) #5 comdat align 2 {
  %1 = alloca %class.CVariable*, align 8
  store %class.CVariable* %this, %class.CVariable** %1, align 8
  %2 = load %class.CVariable*, %class.CVariable** %1, align 8
  %3 = getelementptr inbounds %class.CVariable, %class.CVariable* %2, i32 0, i32 1
  ret i16* %3
}

; Function Attrs: uwtable
define i32 @SAT_EstimateMemUsage(i8* %mng) #0 {
  %1 = alloca i8*, align 8
  %solver = alloca %class.CSolver*, align 8
  store i8* %mng, i8** %1, align 8
  %2 = load i8*, i8** %1, align 8
  %3 = bitcast i8* %2 to %class.CSolver*
  store %class.CSolver* %3, %class.CSolver** %solver, align 8
  %4 = load %class.CSolver*, %class.CSolver** %solver, align 8
  %5 = call i32 @_ZN7CSolver18estimate_mem_usageEv(%class.CSolver* %4)
  ret i32 %5
}

; Function Attrs: uwtable
define linkonce_odr i32 @_ZN7CSolver18estimate_mem_usageEv(%class.CSolver* %this) #0 comdat align 2 {
  %1 = alloca %class.CSolver*, align 8
  store %class.CSolver* %this, %class.CSolver** %1, align 8
  %2 = load %class.CSolver*, %class.CSolver** %1, align 8
  %3 = bitcast %class.CSolver* %2 to %class.CDatabase*
  %4 = call i32 @_ZN9CDatabase18estimate_mem_usageEv(%class.CDatabase* %3)
  ret i32 %4
}

; Function Attrs: uwtable
define float @SAT_GetElapsedCPUTime(i8* %mng) #0 {
  %1 = alloca i8*, align 8
  %solver = alloca %class.CSolver*, align 8
  store i8* %mng, i8** %1, align 8
  %2 = load i8*, i8** %1, align 8
  %3 = bitcast i8* %2 to %class.CSolver*
  store %class.CSolver* %3, %class.CSolver** %solver, align 8
  %4 = load %class.CSolver*, %class.CSolver** %solver, align 8
  %5 = call float @_ZN7CSolver16elapsed_cpu_timeEv(%class.CSolver* %4)
  ret float %5
}

; Function Attrs: uwtable
define linkonce_odr float @_ZN7CSolver16elapsed_cpu_timeEv(%class.CSolver* %this) #0 comdat align 2 {
  %1 = alloca %class.CSolver*, align 8
  %current = alloca i32, align 4
  %diff = alloca i32, align 4
  store %class.CSolver* %this, %class.CSolver** %1, align 8
  %2 = load %class.CSolver*, %class.CSolver** %1, align 8
  %3 = call i32 @_ZN7CSolver16current_cpu_timeEv(%class.CSolver* %2)
  store i32 %3, i32* %current, align 4
  %4 = load i32, i32* %current, align 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds %class.CSolver, %class.CSolver* %2, i32 0, i32 15
  %7 = getelementptr inbounds %struct.CSolverStats, %struct.CSolverStats* %6, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = sub nsw i64 %5, %8
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %diff, align 4
  %11 = load i32, i32* %current, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %class.CSolver, %class.CSolver* %2, i32 0, i32 15
  %14 = getelementptr inbounds %struct.CSolverStats, %struct.CSolverStats* %13, i32 0, i32 4
  store i64 %12, i64* %14, align 8
  %15 = load i32, i32* %diff, align 4
  %16 = sitofp i32 %15 to double
  %17 = fdiv double %16, 1.000000e+03
  %18 = fptrunc double %17 to float
  ret float %18
}

; Function Attrs: uwtable
define float @SAT_GetCurrentCPUTime(i8* %mng) #0 {
  %1 = alloca i8*, align 8
  %solver = alloca %class.CSolver*, align 8
  store i8* %mng, i8** %1, align 8
  %2 = load i8*, i8** %1, align 8
  %3 = bitcast i8* %2 to %class.CSolver*
  store %class.CSolver* %3, %class.CSolver** %solver, align 8
  %4 = load %class.CSolver*, %class.CSolver** %solver, align 8
  %5 = call i32 @_ZN7CSolver16current_cpu_timeEv(%class.CSolver* %4)
  %6 = sitofp i32 %5 to double
  %7 = fdiv double %6, 1.000000e+03
  %8 = fptrunc double %7 to float
  ret float %8
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32 @_ZN7CSolver16current_cpu_timeEv(%class.CSolver* %this) #5 comdat align 2 {
  %1 = alloca %class.CSolver*, align 8
  %ru = alloca %struct.rusage, align 8
  store %class.CSolver* %this, %class.CSolver** %1, align 8
  %2 = load %class.CSolver*, %class.CSolver** %1, align 8
  %3 = call i32 @getrusage(i32 0, %struct.rusage* %ru) #2
  %4 = getelementptr inbounds %struct.rusage, %struct.rusage* %ru, i32 0, i32 0
  %5 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = mul nsw i64 %6, 1000
  %8 = getelementptr inbounds %struct.rusage, %struct.rusage* %ru, i32 0, i32 0
  %9 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = sdiv i64 %10, 1000
  %12 = add nsw i64 %7, %11
  %13 = getelementptr inbounds %struct.rusage, %struct.rusage* %ru, i32 0, i32 1
  %14 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = mul nsw i64 %15, 1000
  %17 = add nsw i64 %12, %16
  %18 = getelementptr inbounds %struct.rusage, %struct.rusage* %ru, i32 0, i32 1
  %19 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = sdiv i64 %20, 1000
  %22 = add nsw i64 %17, %21
  %23 = trunc i64 %22 to i32
  ret i32 %23
}

; Function Attrs: uwtable
define float @SAT_GetCPUTime(i8* %mng) #0 {
  %1 = alloca i8*, align 8
  %solver = alloca %class.CSolver*, align 8
  store i8* %mng, i8** %1, align 8
  %2 = load i8*, i8** %1, align 8
  %3 = bitcast i8* %2 to %class.CSolver*
  store %class.CSolver* %3, %class.CSolver** %solver, align 8
  %4 = load %class.CSolver*, %class.CSolver** %solver, align 8
  %5 = call float @_ZN7CSolver12cpu_run_timeEv(%class.CSolver* %4)
  ret float %5
}

; Function Attrs: nounwind uwtable
define linkonce_odr float @_ZN7CSolver12cpu_run_timeEv(%class.CSolver* %this) #5 comdat align 2 {
  %1 = alloca %class.CSolver*, align 8
  store %class.CSolver* %this, %class.CSolver** %1, align 8
  %2 = load %class.CSolver*, %class.CSolver** %1, align 8
  %3 = getelementptr inbounds %class.CSolver, %class.CSolver* %2, i32 0, i32 15
  %4 = getelementptr inbounds %struct.CSolverStats, %struct.CSolverStats* %3, i32 0, i32 5
  %5 = load i64, i64* %4, align 8
  %6 = getelementptr inbounds %class.CSolver, %class.CSolver* %2, i32 0, i32 15
  %7 = getelementptr inbounds %struct.CSolverStats, %struct.CSolverStats* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = sub nsw i64 %5, %8
  %10 = sitofp i64 %9 to double
  %11 = fdiv double %10, 1.000000e+03
  %12 = fptrunc double %11 to float
  ret float %12
}

; Function Attrs: uwtable
define float @SAT_GetWorldTime(i8* %mng) #0 {
  %1 = alloca i8*, align 8
  %solver = alloca %class.CSolver*, align 8
  store i8* %mng, i8** %1, align 8
  %2 = load i8*, i8** %1, align 8
  %3 = bitcast i8* %2 to %class.CSolver*
  store %class.CSolver* %3, %class.CSolver** %solver, align 8
  %4 = load %class.CSolver*, %class.CSolver** %solver, align 8
  %5 = call float @_ZN7CSolver14world_run_timeEv(%class.CSolver* %4)
  ret float %5
}

; Function Attrs: nounwind uwtable
define linkonce_odr float @_ZN7CSolver14world_run_timeEv(%class.CSolver* %this) #5 comdat align 2 {
  %1 = alloca %class.CSolver*, align 8
  store %class.CSolver* %this, %class.CSolver** %1, align 8
  %2 = load %class.CSolver*, %class.CSolver** %1, align 8
  %3 = getelementptr inbounds %class.CSolver, %class.CSolver* %2, i32 0, i32 15
  %4 = getelementptr inbounds %struct.CSolverStats, %struct.CSolverStats* %3, i32 0, i32 7
  %5 = load i64, i64* %4, align 8
  %6 = getelementptr inbounds %class.CSolver, %class.CSolver* %2, i32 0, i32 15
  %7 = getelementptr inbounds %struct.CSolverStats, %struct.CSolverStats* %6, i32 0, i32 6
  %8 = load i64, i64* %7, align 8
  %9 = sub nsw i64 %5, %8
  %10 = sitofp i64 %9 to double
  %11 = fdiv double %10, 1.000000e+03
  %12 = fptrunc double %11 to float
  ret float %12
}

; Function Attrs: uwtable
define i32 @SAT_NumLiterals(i8* %mng) #0 {
  %1 = alloca i8*, align 8
  %solver = alloca %class.CSolver*, align 8
  store i8* %mng, i8** %1, align 8
  %2 = load i8*, i8** %1, align 8
  %3 = bitcast i8* %2 to %class.CSolver*
  store %class.CSolver* %3, %class.CSolver** %solver, align 8
  %4 = load %class.CSolver*, %class.CSolver** %solver, align 8
  %5 = bitcast %class.CSolver* %4 to %class.CDatabase*
  %6 = call i32 @_ZN9CDatabase12num_literalsEv(%class.CDatabase* %5)
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32 @_ZN9CDatabase12num_literalsEv(%class.CDatabase* %this) #5 comdat align 2 {
  %1 = alloca %class.CDatabase*, align 8
  store %class.CDatabase* %this, %class.CDatabase** %1, align 8
  %2 = load %class.CDatabase*, %class.CDatabase** %1, align 8
  %3 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %2, i32 0, i32 0
  %4 = getelementptr inbounds %struct.CDatabaseStats, %struct.CDatabaseStats* %3, i32 0, i32 5
  %5 = load i32, i32* %4, align 4
  %6 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %2, i32 0, i32 0
  %7 = getelementptr inbounds %struct.CDatabaseStats, %struct.CDatabaseStats* %6, i32 0, i32 7
  %8 = load i32, i32* %7, align 4
  %9 = sub nsw i32 %5, %8
  ret i32 %9
}

; Function Attrs: uwtable
define i32 @SAT_NumClauses(i8* %mng) #0 {
  %1 = alloca i8*, align 8
  %solver = alloca %class.CSolver*, align 8
  store i8* %mng, i8** %1, align 8
  %2 = load i8*, i8** %1, align 8
  %3 = bitcast i8* %2 to %class.CSolver*
  store %class.CSolver* %3, %class.CSolver** %solver, align 8
  %4 = load %class.CSolver*, %class.CSolver** %solver, align 8
  %5 = bitcast %class.CSolver* %4 to %class.CDatabase*
  %6 = call i32 @_ZN9CDatabase11num_clausesEv(%class.CDatabase* %5)
  ret i32 %6
}

; Function Attrs: uwtable
define linkonce_odr i32 @_ZN9CDatabase11num_clausesEv(%class.CDatabase* %this) #0 comdat align 2 {
  %1 = alloca %class.CDatabase*, align 8
  store %class.CDatabase* %this, %class.CDatabase** %1, align 8
  %2 = load %class.CDatabase*, %class.CDatabase** %1, align 8
  %3 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %2, i32 0, i32 5
  %4 = call i64 @_ZNKSt6vectorI7CClauseSaIS0_EE4sizeEv(%"class.std::vector.5"* %3)
  %5 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %2, i32 0, i32 6
  %6 = call i64 @_ZNKSt5queueIiSt5dequeIiSaIiEEE4sizeEv(%"class.std::queue"* %5)
  %7 = sub i64 %4, %6
  %8 = trunc i64 %7 to i32
  ret i32 %8
}

; Function Attrs: uwtable
define i32 @SAT_NumVariables(i8* %mng) #0 {
  %1 = alloca i8*, align 8
  %solver = alloca %class.CSolver*, align 8
  store i8* %mng, i8** %1, align 8
  %2 = load i8*, i8** %1, align 8
  %3 = bitcast i8* %2 to %class.CSolver*
  store %class.CSolver* %3, %class.CSolver** %solver, align 8
  %4 = load %class.CSolver*, %class.CSolver** %solver, align 8
  %5 = bitcast %class.CSolver* %4 to %class.CDatabase*
  %6 = call i32 @_ZN9CDatabase13num_variablesEv(%class.CDatabase* %5)
  ret i32 %6
}

; Function Attrs: uwtable
define linkonce_odr i32 @_ZN9CDatabase13num_variablesEv(%class.CDatabase* %this) #0 comdat align 2 {
  %1 = alloca %class.CDatabase*, align 8
  store %class.CDatabase* %this, %class.CDatabase** %1, align 8
  %2 = load %class.CDatabase*, %class.CDatabase** %1, align 8
  %3 = call dereferenceable(24) %"class.std::vector"* @_ZN9CDatabase9variablesEv(%class.CDatabase* %2)
  %4 = call i64 @_ZNKSt6vectorI9CVariableSaIS0_EE4sizeEv(%"class.std::vector"* %3)
  %5 = sub i64 %4, 1
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: uwtable
define i32 @SAT_InitNumLiterals(i8* %mng) #0 {
  %1 = alloca i8*, align 8
  %solver = alloca %class.CSolver*, align 8
  store i8* %mng, i8** %1, align 8
  %2 = load i8*, i8** %1, align 8
  %3 = bitcast i8* %2 to %class.CSolver*
  store %class.CSolver* %3, %class.CSolver** %solver, align 8
  %4 = load %class.CSolver*, %class.CSolver** %solver, align 8
  %5 = bitcast %class.CSolver* %4 to %class.CDatabase*
  %6 = call dereferenceable(4) i32* @_ZN9CDatabase17init_num_literalsEv(%class.CDatabase* %5)
  %7 = load i32, i32* %6, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(4) i32* @_ZN9CDatabase17init_num_literalsEv(%class.CDatabase* %this) #5 comdat align 2 {
  %1 = alloca %class.CDatabase*, align 8
  store %class.CDatabase* %this, %class.CDatabase** %1, align 8
  %2 = load %class.CDatabase*, %class.CDatabase** %1, align 8
  %3 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %2, i32 0, i32 0
  %4 = getelementptr inbounds %struct.CDatabaseStats, %struct.CDatabaseStats* %3, i32 0, i32 3
  ret i32* %4
}

; Function Attrs: uwtable
define i32 @SAT_InitNumClauses(i8* %mng) #0 {
  %1 = alloca i8*, align 8
  %solver = alloca %class.CSolver*, align 8
  store i8* %mng, i8** %1, align 8
  %2 = load i8*, i8** %1, align 8
  %3 = bitcast i8* %2 to %class.CSolver*
  store %class.CSolver* %3, %class.CSolver** %solver, align 8
  %4 = load %class.CSolver*, %class.CSolver** %solver, align 8
  %5 = bitcast %class.CSolver* %4 to %class.CDatabase*
  %6 = call dereferenceable(4) i32* @_ZN9CDatabase16init_num_clausesEv(%class.CDatabase* %5)
  %7 = load i32, i32* %6, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(4) i32* @_ZN9CDatabase16init_num_clausesEv(%class.CDatabase* %this) #5 comdat align 2 {
  %1 = alloca %class.CDatabase*, align 8
  store %class.CDatabase* %this, %class.CDatabase** %1, align 8
  %2 = load %class.CDatabase*, %class.CDatabase** %1, align 8
  %3 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %2, i32 0, i32 0
  %4 = getelementptr inbounds %struct.CDatabaseStats, %struct.CDatabaseStats* %3, i32 0, i32 2
  ret i32* %4
}

; Function Attrs: uwtable
define i32 @SAT_NumAddedLiterals(i8* %mng) #0 {
  %1 = alloca i8*, align 8
  %solver = alloca %class.CSolver*, align 8
  store i8* %mng, i8** %1, align 8
  %2 = load i8*, i8** %1, align 8
  %3 = bitcast i8* %2 to %class.CSolver*
  store %class.CSolver* %3, %class.CSolver** %solver, align 8
  %4 = load %class.CSolver*, %class.CSolver** %solver, align 8
  %5 = bitcast %class.CSolver* %4 to %class.CDatabase*
  %6 = call dereferenceable(4) i32* @_ZN9CDatabase18num_added_literalsEv(%class.CDatabase* %5)
  %7 = load i32, i32* %6, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(4) i32* @_ZN9CDatabase18num_added_literalsEv(%class.CDatabase* %this) #5 comdat align 2 {
  %1 = alloca %class.CDatabase*, align 8
  store %class.CDatabase* %this, %class.CDatabase** %1, align 8
  %2 = load %class.CDatabase*, %class.CDatabase** %1, align 8
  %3 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %2, i32 0, i32 0
  %4 = getelementptr inbounds %struct.CDatabaseStats, %struct.CDatabaseStats* %3, i32 0, i32 5
  ret i32* %4
}

; Function Attrs: uwtable
define i32 @SAT_NumAddedClauses(i8* %mng) #0 {
  %1 = alloca i8*, align 8
  %solver = alloca %class.CSolver*, align 8
  store i8* %mng, i8** %1, align 8
  %2 = load i8*, i8** %1, align 8
  %3 = bitcast i8* %2 to %class.CSolver*
  store %class.CSolver* %3, %class.CSolver** %solver, align 8
  %4 = load %class.CSolver*, %class.CSolver** %solver, align 8
  %5 = bitcast %class.CSolver* %4 to %class.CDatabase*
  %6 = call dereferenceable(4) i32* @_ZN9CDatabase17num_added_clausesEv(%class.CDatabase* %5)
  %7 = load i32, i32* %6, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(4) i32* @_ZN9CDatabase17num_added_clausesEv(%class.CDatabase* %this) #5 comdat align 2 {
  %1 = alloca %class.CDatabase*, align 8
  store %class.CDatabase* %this, %class.CDatabase** %1, align 8
  %2 = load %class.CDatabase*, %class.CDatabase** %1, align 8
  %3 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %2, i32 0, i32 0
  %4 = getelementptr inbounds %struct.CDatabaseStats, %struct.CDatabaseStats* %3, i32 0, i32 4
  ret i32* %4
}

; Function Attrs: uwtable
define i32 @SAT_NumDeletedClauses(i8* %mng) #0 {
  %1 = alloca i8*, align 8
  %solver = alloca %class.CSolver*, align 8
  store i8* %mng, i8** %1, align 8
  %2 = load i8*, i8** %1, align 8
  %3 = bitcast i8* %2 to %class.CSolver*
  store %class.CSolver* %3, %class.CSolver** %solver, align 8
  %4 = load %class.CSolver*, %class.CSolver** %solver, align 8
  %5 = bitcast %class.CSolver* %4 to %class.CDatabase*
  %6 = call dereferenceable(4) i32* @_ZN9CDatabase19num_deleted_clausesEv(%class.CDatabase* %5)
  %7 = load i32, i32* %6, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(4) i32* @_ZN9CDatabase19num_deleted_clausesEv(%class.CDatabase* %this) #5 comdat align 2 {
  %1 = alloca %class.CDatabase*, align 8
  store %class.CDatabase* %this, %class.CDatabase** %1, align 8
  %2 = load %class.CDatabase*, %class.CDatabase** %1, align 8
  %3 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %2, i32 0, i32 0
  %4 = getelementptr inbounds %struct.CDatabaseStats, %struct.CDatabaseStats* %3, i32 0, i32 6
  ret i32* %4
}

; Function Attrs: uwtable
define i32 @SAT_NumDeletedLiterals(i8* %mng) #0 {
  %1 = alloca i8*, align 8
  %solver = alloca %class.CSolver*, align 8
  store i8* %mng, i8** %1, align 8
  %2 = load i8*, i8** %1, align 8
  %3 = bitcast i8* %2 to %class.CSolver*
  store %class.CSolver* %3, %class.CSolver** %solver, align 8
  %4 = load %class.CSolver*, %class.CSolver** %solver, align 8
  %5 = bitcast %class.CSolver* %4 to %class.CDatabase*
  %6 = call dereferenceable(4) i32* @_ZN9CDatabase20num_deleted_literalsEv(%class.CDatabase* %5)
  %7 = load i32, i32* %6, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(4) i32* @_ZN9CDatabase20num_deleted_literalsEv(%class.CDatabase* %this) #5 comdat align 2 {
  %1 = alloca %class.CDatabase*, align 8
  store %class.CDatabase* %this, %class.CDatabase** %1, align 8
  %2 = load %class.CDatabase*, %class.CDatabase** %1, align 8
  %3 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %2, i32 0, i32 0
  %4 = getelementptr inbounds %struct.CDatabaseStats, %struct.CDatabaseStats* %3, i32 0, i32 7
  ret i32* %4
}

; Function Attrs: uwtable
define i32 @SAT_NumDecisions(i8* %mng) #0 {
  %1 = alloca i8*, align 8
  %solver = alloca %class.CSolver*, align 8
  store i8* %mng, i8** %1, align 8
  %2 = load i8*, i8** %1, align 8
  %3 = bitcast i8* %2 to %class.CSolver*
  store %class.CSolver* %3, %class.CSolver** %solver, align 8
  %4 = load %class.CSolver*, %class.CSolver** %solver, align 8
  %5 = call i32 @_ZN7CSolver13num_decisionsEv(%class.CSolver* %4)
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32 @_ZN7CSolver13num_decisionsEv(%class.CSolver* %this) #5 comdat align 2 {
  %1 = alloca %class.CSolver*, align 8
  store %class.CSolver* %this, %class.CSolver** %1, align 8
  %2 = load %class.CSolver*, %class.CSolver** %1, align 8
  %3 = getelementptr inbounds %class.CSolver, %class.CSolver* %2, i32 0, i32 15
  %4 = getelementptr inbounds %struct.CSolverStats, %struct.CSolverStats* %3, i32 0, i32 9
  %5 = load i32, i32* %4, align 8
  ret i32 %5
}

; Function Attrs: uwtable
define i32 @SAT_NumImplications(i8* %mng) #0 {
  %1 = alloca i8*, align 8
  %solver = alloca %class.CSolver*, align 8
  store i8* %mng, i8** %1, align 8
  %2 = load i8*, i8** %1, align 8
  %3 = bitcast i8* %2 to %class.CSolver*
  store %class.CSolver* %3, %class.CSolver** %solver, align 8
  %4 = load %class.CSolver*, %class.CSolver** %solver, align 8
  %5 = call i32 @_ZN7CSolver16num_implicationsEv(%class.CSolver* %4)
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32 @_ZN7CSolver16num_implicationsEv(%class.CSolver* %this) #5 comdat align 2 {
  %1 = alloca %class.CSolver*, align 8
  store %class.CSolver* %this, %class.CSolver** %1, align 8
  %2 = load %class.CSolver*, %class.CSolver** %1, align 8
  %3 = getelementptr inbounds %class.CSolver, %class.CSolver* %2, i32 0, i32 15
  %4 = getelementptr inbounds %struct.CSolverStats, %struct.CSolverStats* %3, i32 0, i32 12
  %5 = load i32, i32* %4, align 4
  ret i32 %5
}

; Function Attrs: uwtable
define i32 @SAT_MaxDLevel(i8* %mng) #0 {
  %1 = alloca i8*, align 8
  %solver = alloca %class.CSolver*, align 8
  store i8* %mng, i8** %1, align 8
  %2 = load i8*, i8** %1, align 8
  %3 = bitcast i8* %2 to %class.CSolver*
  store %class.CSolver* %3, %class.CSolver** %solver, align 8
  %4 = load %class.CSolver*, %class.CSolver** %solver, align 8
  %5 = call i32 @_ZN7CSolver10max_dlevelEv(%class.CSolver* %4)
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32 @_ZN7CSolver10max_dlevelEv(%class.CSolver* %this) #5 comdat align 2 {
  %1 = alloca %class.CSolver*, align 8
  store %class.CSolver* %this, %class.CSolver** %1, align 8
  %2 = load %class.CSolver*, %class.CSolver** %1, align 8
  %3 = getelementptr inbounds %class.CSolver, %class.CSolver* %2, i32 0, i32 15
  %4 = getelementptr inbounds %struct.CSolverStats, %struct.CSolverStats* %3, i32 0, i32 11
  %5 = load i32, i32* %4, align 8
  ret i32 %5
}

; Function Attrs: uwtable
define i32 @SAT_GetFirstClause(i8* %mng) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %solver = alloca %class.CSolver*, align 8
  %i = alloca i32, align 4
  store i8* %mng, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = bitcast i8* %3 to %class.CSolver*
  store %class.CSolver* %4, %class.CSolver** %solver, align 8
  store i32 0, i32* %i, align 4
  br label %5

; <label>:5                                       ; preds = %24, %0
  %6 = load i32, i32* %i, align 4
  %7 = sext i32 %6 to i64
  %8 = load %class.CSolver*, %class.CSolver** %solver, align 8
  %9 = bitcast %class.CSolver* %8 to %class.CDatabase*
  %10 = call dereferenceable(24) %"class.std::vector.5"* @_ZN9CDatabase7clausesEv(%class.CDatabase* %9)
  %11 = call i64 @_ZNKSt6vectorI7CClauseSaIS0_EE4sizeEv(%"class.std::vector.5"* %10)
  %12 = icmp ult i64 %7, %11
  br i1 %12, label %13, label %27

; <label>:13                                      ; preds = %5
  %14 = load %class.CSolver*, %class.CSolver** %solver, align 8
  %15 = bitcast %class.CSolver* %14 to %class.CDatabase*
  %16 = load i32, i32* %i, align 4
  %17 = call dereferenceable(16) %class.CClause* @_ZN9CDatabase6clauseEi(%class.CDatabase* %15, i32 %16)
  %18 = call dereferenceable(1) i8* @_ZN7CClause6in_useEv(%class.CClause* %17)
  %19 = load i8, i8* %18, align 1
  %20 = trunc i8 %19 to i1
  br i1 %20, label %21, label %23

; <label>:21                                      ; preds = %13
  %22 = load i32, i32* %i, align 4
  store i32 %22, i32* %1, align 4
  br label %28

; <label>:23                                      ; preds = %13
  br label %24

; <label>:24                                      ; preds = %23
  %25 = load i32, i32* %i, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %i, align 4
  br label %5

; <label>:27                                      ; preds = %5
  store i32 -1, i32* %1, align 4
  br label %28

; <label>:28                                      ; preds = %27, %21
  %29 = load i32, i32* %1, align 4
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(24) %"class.std::vector.5"* @_ZN9CDatabase7clausesEv(%class.CDatabase* %this) #5 comdat align 2 {
  %1 = alloca %class.CDatabase*, align 8
  store %class.CDatabase* %this, %class.CDatabase** %1, align 8
  %2 = load %class.CDatabase*, %class.CDatabase** %1, align 8
  %3 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %2, i32 0, i32 5
  ret %"class.std::vector.5"* %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNKSt6vectorI7CClauseSaIS0_EE4sizeEv(%"class.std::vector.5"* %this) #5 comdat align 2 {
  %1 = alloca %"class.std::vector.5"*, align 8
  store %"class.std::vector.5"* %this, %"class.std::vector.5"** %1, align 8
  %2 = load %"class.std::vector.5"*, %"class.std::vector.5"** %1, align 8
  %3 = bitcast %"class.std::vector.5"* %2 to %"struct.std::_Vector_base.6"*
  %4 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl", %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl"* %4, i32 0, i32 1
  %6 = load %class.CClause*, %class.CClause** %5, align 8
  %7 = bitcast %"class.std::vector.5"* %2 to %"struct.std::_Vector_base.6"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %7, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl", %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl"* %8, i32 0, i32 0
  %10 = load %class.CClause*, %class.CClause** %9, align 8
  %11 = ptrtoint %class.CClause* %6 to i64
  %12 = ptrtoint %class.CClause* %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 16
  ret i64 %14
}

; Function Attrs: uwtable
define linkonce_odr dereferenceable(16) %class.CClause* @_ZN9CDatabase6clauseEi(%class.CDatabase* %this, i32 %idx) #0 comdat align 2 {
  %1 = alloca %class.CDatabase*, align 8
  %2 = alloca i32, align 4
  store %class.CDatabase* %this, %class.CDatabase** %1, align 8
  store i32 %idx, i32* %2, align 4
  %3 = load %class.CDatabase*, %class.CDatabase** %1, align 8
  %4 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %3, i32 0, i32 5
  %5 = load i32, i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = call dereferenceable(16) %class.CClause* @_ZNSt6vectorI7CClauseSaIS0_EEixEm(%"class.std::vector.5"* %4, i64 %6)
  ret %class.CClause* %7
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(1) i8* @_ZN7CClause6in_useEv(%class.CClause* %this) #5 comdat align 2 {
  %1 = alloca %class.CClause*, align 8
  store %class.CClause* %this, %class.CClause** %1, align 8
  %2 = load %class.CClause*, %class.CClause** %1, align 8
  %3 = getelementptr inbounds %class.CClause, %class.CClause* %2, i32 0, i32 2
  ret i8* %3
}

; Function Attrs: uwtable
define i32 @SAT_GetFirstAddedClause(i8* %mng) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %solver = alloca %class.CSolver*, align 8
  %i = alloca i32, align 4
  store i8* %mng, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = bitcast i8* %3 to %class.CSolver*
  store %class.CSolver* %4, %class.CSolver** %solver, align 8
  %5 = load %class.CSolver*, %class.CSolver** %solver, align 8
  %6 = bitcast %class.CSolver* %5 to %class.CDatabase*
  %7 = call dereferenceable(4) i32* @_ZN9CDatabase16init_num_clausesEv(%class.CDatabase* %6)
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %i, align 4
  br label %9

; <label>:9                                       ; preds = %28, %0
  %10 = load i32, i32* %i, align 4
  %11 = sext i32 %10 to i64
  %12 = load %class.CSolver*, %class.CSolver** %solver, align 8
  %13 = bitcast %class.CSolver* %12 to %class.CDatabase*
  %14 = call dereferenceable(24) %"class.std::vector.5"* @_ZN9CDatabase7clausesEv(%class.CDatabase* %13)
  %15 = call i64 @_ZNKSt6vectorI7CClauseSaIS0_EE4sizeEv(%"class.std::vector.5"* %14)
  %16 = icmp ult i64 %11, %15
  br i1 %16, label %17, label %31

; <label>:17                                      ; preds = %9
  %18 = load %class.CSolver*, %class.CSolver** %solver, align 8
  %19 = bitcast %class.CSolver* %18 to %class.CDatabase*
  %20 = load i32, i32* %i, align 4
  %21 = call dereferenceable(16) %class.CClause* @_ZN9CDatabase6clauseEi(%class.CDatabase* %19, i32 %20)
  %22 = call dereferenceable(1) i8* @_ZN7CClause6in_useEv(%class.CClause* %21)
  %23 = load i8, i8* %22, align 1
  %24 = trunc i8 %23 to i1
  br i1 %24, label %25, label %27

; <label>:25                                      ; preds = %17
  %26 = load i32, i32* %i, align 4
  store i32 %26, i32* %1, align 4
  br label %32

; <label>:27                                      ; preds = %17
  br label %28

; <label>:28                                      ; preds = %27
  %29 = load i32, i32* %i, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %i, align 4
  br label %9

; <label>:31                                      ; preds = %9
  store i32 -1, i32* %1, align 4
  br label %32

; <label>:32                                      ; preds = %31, %25
  %33 = load i32, i32* %1, align 4
  ret i32 %33
}

; Function Attrs: uwtable
define i32 @SAT_GetNextClause(i8* %mng, i32 %cl_idx) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %solver = alloca %class.CSolver*, align 8
  %i = alloca i32, align 4
  store i8* %mng, i8** %2, align 8
  store i32 %cl_idx, i32* %3, align 4
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %class.CSolver*
  store %class.CSolver* %5, %class.CSolver** %solver, align 8
  %6 = load i32, i32* %3, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* %i, align 4
  br label %8

; <label>:8                                       ; preds = %27, %0
  %9 = load i32, i32* %i, align 4
  %10 = sext i32 %9 to i64
  %11 = load %class.CSolver*, %class.CSolver** %solver, align 8
  %12 = bitcast %class.CSolver* %11 to %class.CDatabase*
  %13 = call dereferenceable(24) %"class.std::vector.5"* @_ZN9CDatabase7clausesEv(%class.CDatabase* %12)
  %14 = call i64 @_ZNKSt6vectorI7CClauseSaIS0_EE4sizeEv(%"class.std::vector.5"* %13)
  %15 = icmp ult i64 %10, %14
  br i1 %15, label %16, label %30

; <label>:16                                      ; preds = %8
  %17 = load %class.CSolver*, %class.CSolver** %solver, align 8
  %18 = bitcast %class.CSolver* %17 to %class.CDatabase*
  %19 = load i32, i32* %i, align 4
  %20 = call dereferenceable(16) %class.CClause* @_ZN9CDatabase6clauseEi(%class.CDatabase* %18, i32 %19)
  %21 = call dereferenceable(1) i8* @_ZN7CClause6in_useEv(%class.CClause* %20)
  %22 = load i8, i8* %21, align 1
  %23 = trunc i8 %22 to i1
  br i1 %23, label %24, label %26

; <label>:24                                      ; preds = %16
  %25 = load i32, i32* %i, align 4
  store i32 %25, i32* %1, align 4
  br label %31

; <label>:26                                      ; preds = %16
  br label %27

; <label>:27                                      ; preds = %26
  %28 = load i32, i32* %i, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %i, align 4
  br label %8

; <label>:30                                      ; preds = %8
  store i32 -1, i32* %1, align 4
  br label %31

; <label>:31                                      ; preds = %30, %24
  %32 = load i32, i32* %1, align 4
  ret i32 %32
}

; Function Attrs: uwtable
define i32 @SAT_GetClauseNumLits(i8* %mng, i32 %cl_idx) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %solver = alloca %class.CSolver*, align 8
  store i8* %mng, i8** %1, align 8
  store i32 %cl_idx, i32* %2, align 4
  %3 = load i8*, i8** %1, align 8
  %4 = bitcast i8* %3 to %class.CSolver*
  store %class.CSolver* %4, %class.CSolver** %solver, align 8
  %5 = load %class.CSolver*, %class.CSolver** %solver, align 8
  %6 = bitcast %class.CSolver* %5 to %class.CDatabase*
  %7 = load i32, i32* %2, align 4
  %8 = call dereferenceable(16) %class.CClause* @_ZN9CDatabase6clauseEi(%class.CDatabase* %6, i32 %7)
  %9 = call dereferenceable(4) i32* @_ZN7CClause8num_litsEv(%class.CClause* %8)
  %10 = load i32, i32* %9, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(4) i32* @_ZN7CClause8num_litsEv(%class.CClause* %this) #5 comdat align 2 {
  %1 = alloca %class.CClause*, align 8
  store %class.CClause* %this, %class.CClause** %1, align 8
  %2 = load %class.CClause*, %class.CClause** %1, align 8
  %3 = getelementptr inbounds %class.CClause, %class.CClause* %2, i32 0, i32 1
  ret i32* %3
}

; Function Attrs: uwtable
define void @SAT_GetClauseLits(i8* %mng, i32 %cl_idx, i32* %lits) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %solver = alloca %class.CSolver*, align 8
  %i = alloca i32, align 4
  store i8* %mng, i8** %1, align 8
  store i32 %cl_idx, i32* %2, align 4
  store i32* %lits, i32** %3, align 8
  %4 = load i8*, i8** %1, align 8
  %5 = bitcast i8* %4 to %class.CSolver*
  store %class.CSolver* %5, %class.CSolver** %solver, align 8
  store i32 0, i32* %i, align 4
  br label %6

; <label>:6                                       ; preds = %27, %0
  %7 = load i32, i32* %i, align 4
  %8 = load %class.CSolver*, %class.CSolver** %solver, align 8
  %9 = bitcast %class.CSolver* %8 to %class.CDatabase*
  %10 = load i32, i32* %2, align 4
  %11 = call dereferenceable(16) %class.CClause* @_ZN9CDatabase6clauseEi(%class.CDatabase* %9, i32 %10)
  %12 = call dereferenceable(4) i32* @_ZN7CClause8num_litsEv(%class.CClause* %11)
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %7, %13
  br i1 %14, label %15, label %30

; <label>:15                                      ; preds = %6
  %16 = load %class.CSolver*, %class.CSolver** %solver, align 8
  %17 = bitcast %class.CSolver* %16 to %class.CDatabase*
  %18 = load i32, i32* %2, align 4
  %19 = call dereferenceable(16) %class.CClause* @_ZN9CDatabase6clauseEi(%class.CDatabase* %17, i32 %18)
  %20 = load i32, i32* %i, align 4
  %21 = call dereferenceable(4) %class.CLitPoolElement* @_ZN7CClause7literalEi(%class.CClause* %19, i32 %20)
  %22 = call i32 @_ZN15CLitPoolElement5s_varEv(%class.CLitPoolElement* %21)
  %23 = load i32, i32* %i, align 4
  %24 = sext i32 %23 to i64
  %25 = load i32*, i32** %3, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 %24
  store i32 %22, i32* %26, align 4
  br label %27

; <label>:27                                      ; preds = %15
  %28 = load i32, i32* %i, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %i, align 4
  br label %6

; <label>:30                                      ; preds = %6
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dereferenceable(4) %class.CLitPoolElement* @_ZN7CClause7literalEi(%class.CClause* %this, i32 %idx) #0 comdat align 2 {
  %1 = alloca %class.CClause*, align 8
  %2 = alloca i32, align 4
  store %class.CClause* %this, %class.CClause** %1, align 8
  store i32 %idx, i32* %2, align 4
  %3 = load %class.CClause*, %class.CClause** %1, align 8
  %4 = load i32, i32* %2, align 4
  %5 = sext i32 %4 to i64
  %6 = call %class.CLitPoolElement* @_ZN7CClause8literalsEv(%class.CClause* %3)
  %7 = getelementptr inbounds %class.CLitPoolElement, %class.CLitPoolElement* %6, i64 %5
  ret %class.CLitPoolElement* %7
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32 @_ZN15CLitPoolElement5s_varEv(%class.CLitPoolElement* %this) #5 comdat align 2 {
  %1 = alloca %class.CLitPoolElement*, align 8
  store %class.CLitPoolElement* %this, %class.CLitPoolElement** %1, align 8
  %2 = load %class.CLitPoolElement*, %class.CLitPoolElement** %1, align 8
  %3 = getelementptr inbounds %class.CLitPoolElement, %class.CLitPoolElement* %2, i32 0, i32 0
  %4 = load i32, i32* %3, align 4
  %5 = ashr i32 %4, 2
  ret i32 %5
}

; Function Attrs: uwtable
define void @SAT_EnableConfClsDeletion(i8* %mng) #0 {
  %1 = alloca i8*, align 8
  %solver = alloca %class.CSolver*, align 8
  store i8* %mng, i8** %1, align 8
  %2 = load i8*, i8** %1, align 8
  %3 = bitcast i8* %2 to %class.CSolver*
  store %class.CSolver* %3, %class.CSolver** %solver, align 8
  %4 = load %class.CSolver*, %class.CSolver** %solver, align 8
  call void @_ZN7CSolver19enable_cls_deletionEb(%class.CSolver* %4, i1 zeroext true)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN7CSolver19enable_cls_deletionEb(%class.CSolver* %this, i1 zeroext %allow) #5 comdat align 2 {
  %1 = alloca %class.CSolver*, align 8
  %2 = alloca i8, align 1
  store %class.CSolver* %this, %class.CSolver** %1, align 8
  %3 = zext i1 %allow to i8
  store i8 %3, i8* %2, align 1
  %4 = load %class.CSolver*, %class.CSolver** %1, align 8
  %5 = load i8, i8* %2, align 1
  %6 = trunc i8 %5 to i1
  %7 = getelementptr inbounds %class.CSolver, %class.CSolver* %4, i32 0, i32 5
  %8 = getelementptr inbounds %struct.CSolverParameters, %struct.CSolverParameters* %7, i32 0, i32 3
  %9 = zext i1 %6 to i8
  store i8 %9, i8* %8, align 4
  ret void
}

; Function Attrs: uwtable
define void @SAT_DisableConfClsDeletion(i8* %mng) #0 {
  %1 = alloca i8*, align 8
  %solver = alloca %class.CSolver*, align 8
  store i8* %mng, i8** %1, align 8
  %2 = load i8*, i8** %1, align 8
  %3 = bitcast i8* %2 to %class.CSolver*
  store %class.CSolver* %3, %class.CSolver** %solver, align 8
  %4 = load %class.CSolver*, %class.CSolver** %solver, align 8
  call void @_ZN7CSolver19enable_cls_deletionEb(%class.CSolver* %4, i1 zeroext false)
  ret void
}

; Function Attrs: uwtable
define void @SAT_SetClsDeletionInterval(i8* %mng, i32 %n) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %solver = alloca %class.CSolver*, align 8
  store i8* %mng, i8** %1, align 8
  store i32 %n, i32* %2, align 4
  %3 = load i8*, i8** %1, align 8
  %4 = bitcast i8* %3 to %class.CSolver*
  store %class.CSolver* %4, %class.CSolver** %solver, align 8
  %5 = load %class.CSolver*, %class.CSolver** %solver, align 8
  %6 = load i32, i32* %2, align 4
  call void @_ZN7CSolver20set_cls_del_intervalEi(%class.CSolver* %5, i32 %6)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN7CSolver20set_cls_del_intervalEi(%class.CSolver* %this, i32 %n) #5 comdat align 2 {
  %1 = alloca %class.CSolver*, align 8
  %2 = alloca i32, align 4
  store %class.CSolver* %this, %class.CSolver** %1, align 8
  store i32 %n, i32* %2, align 4
  %3 = load %class.CSolver*, %class.CSolver** %1, align 8
  %4 = load i32, i32* %2, align 4
  %5 = getelementptr inbounds %class.CSolver, %class.CSolver* %3, i32 0, i32 5
  %6 = getelementptr inbounds %struct.CSolverParameters, %struct.CSolverParameters* %5, i32 0, i32 4
  store i32 %4, i32* %6, align 8
  ret void
}

; Function Attrs: uwtable
define void @SAT_SetMaxUnrelevance(i8* %mng, i32 %n) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %solver = alloca %class.CSolver*, align 8
  store i8* %mng, i8** %1, align 8
  store i32 %n, i32* %2, align 4
  %3 = load i8*, i8** %1, align 8
  %4 = bitcast i8* %3 to %class.CSolver*
  store %class.CSolver* %4, %class.CSolver** %solver, align 8
  %5 = load %class.CSolver*, %class.CSolver** %solver, align 8
  %6 = load i32, i32* %2, align 4
  call void @_ZN7CSolver19set_max_unrelevanceEi(%class.CSolver* %5, i32 %6)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN7CSolver19set_max_unrelevanceEi(%class.CSolver* %this, i32 %n) #5 comdat align 2 {
  %1 = alloca %class.CSolver*, align 8
  %2 = alloca i32, align 4
  store %class.CSolver* %this, %class.CSolver** %1, align 8
  store i32 %n, i32* %2, align 4
  %3 = load %class.CSolver*, %class.CSolver** %1, align 8
  %4 = load i32, i32* %2, align 4
  %5 = getelementptr inbounds %class.CSolver, %class.CSolver* %3, i32 0, i32 5
  %6 = getelementptr inbounds %struct.CSolverParameters, %struct.CSolverParameters* %5, i32 0, i32 5
  store i32 %4, i32* %6, align 4
  ret void
}

; Function Attrs: uwtable
define void @SAT_SetMinClsLenForDelete(i8* %mng, i32 %n) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %solver = alloca %class.CSolver*, align 8
  store i8* %mng, i8** %1, align 8
  store i32 %n, i32* %2, align 4
  %3 = load i8*, i8** %1, align 8
  %4 = bitcast i8* %3 to %class.CSolver*
  store %class.CSolver* %4, %class.CSolver** %solver, align 8
  %5 = load %class.CSolver*, %class.CSolver** %solver, align 8
  %6 = load i32, i32* %2, align 4
  call void @_ZN7CSolver34set_min_num_clause_lits_for_deleteEi(%class.CSolver* %5, i32 %6)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN7CSolver34set_min_num_clause_lits_for_deleteEi(%class.CSolver* %this, i32 %n) #5 comdat align 2 {
  %1 = alloca %class.CSolver*, align 8
  %2 = alloca i32, align 4
  store %class.CSolver* %this, %class.CSolver** %1, align 8
  store i32 %n, i32* %2, align 4
  %3 = load %class.CSolver*, %class.CSolver** %1, align 8
  %4 = load i32, i32* %2, align 4
  %5 = getelementptr inbounds %class.CSolver, %class.CSolver* %3, i32 0, i32 5
  %6 = getelementptr inbounds %struct.CSolverParameters, %struct.CSolverParameters* %5, i32 0, i32 6
  store i32 %4, i32* %6, align 8
  ret void
}

; Function Attrs: uwtable
define void @SAT_SetMaxConfClsLenAllowed(i8* %mng, i32 %n) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %solver = alloca %class.CSolver*, align 8
  store i8* %mng, i8** %1, align 8
  store i32 %n, i32* %2, align 4
  %3 = load i8*, i8** %1, align 8
  %4 = bitcast i8* %3 to %class.CSolver*
  store %class.CSolver* %4, %class.CSolver** %solver, align 8
  %5 = load %class.CSolver*, %class.CSolver** %solver, align 8
  %6 = load i32, i32* %2, align 4
  call void @_ZN7CSolver30set_max_conflict_clause_lengthEi(%class.CSolver* %5, i32 %6)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN7CSolver30set_max_conflict_clause_lengthEi(%class.CSolver* %this, i32 %l) #5 comdat align 2 {
  %1 = alloca %class.CSolver*, align 8
  %2 = alloca i32, align 4
  store %class.CSolver* %this, %class.CSolver** %1, align 8
  store i32 %l, i32* %2, align 4
  %3 = load %class.CSolver*, %class.CSolver** %1, align 8
  %4 = load i32, i32* %2, align 4
  %5 = getelementptr inbounds %class.CSolver, %class.CSolver* %3, i32 0, i32 5
  %6 = getelementptr inbounds %struct.CSolverParameters, %struct.CSolverParameters* %5, i32 0, i32 7
  store i32 %4, i32* %6, align 4
  ret void
}

; Function Attrs: uwtable
define void @SAT_GenClsAnd2(i8* %mng, i32 %a, i32 %b, i32 %o) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %solver = alloca %class.CSolver*, align 8
  %cls_gen = alloca %class.CClause_Gen, align 1
  store i8* %mng, i8** %1, align 8
  store i32 %a, i32* %2, align 4
  store i32 %b, i32* %3, align 4
  store i32 %o, i32* %4, align 4
  %5 = load i8*, i8** %1, align 8
  %6 = bitcast i8* %5 to %class.CSolver*
  store %class.CSolver* %6, %class.CSolver** %solver, align 8
  %7 = load %class.CSolver*, %class.CSolver** %solver, align 8
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %4, align 4
  call void @_ZN11CClause_Gen4and2ER7CSolveriii(%class.CClause_Gen* %cls_gen, %class.CSolver* dereferenceable(736) %7, i32 %8, i32 %9, i32 %10)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN11CClause_Gen4and2ER7CSolveriii(%class.CClause_Gen* %this, %class.CSolver* dereferenceable(736) %solver, i32 %a, i32 %b, i32 %o) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %class.CClause_Gen*, align 8
  %2 = alloca %class.CSolver*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %lits = alloca %"class.std::vector.18", align 8
  %6 = alloca i8*
  %7 = alloca i32
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %"class.__gnu_cxx::__normal_iterator.60", align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %"class.__gnu_cxx::__normal_iterator.60", align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %"class.__gnu_cxx::__normal_iterator.60", align 8
  store %class.CClause_Gen* %this, %class.CClause_Gen** %1, align 8
  store %class.CSolver* %solver, %class.CSolver** %2, align 8
  store i32 %a, i32* %3, align 4
  store i32 %b, i32* %4, align 4
  store i32 %o, i32* %5, align 4
  %18 = load %class.CClause_Gen*, %class.CClause_Gen** %1, align 8
  call void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector.18"* %lits)
  invoke void @_ZNSt6vectorIiSaIiEE5clearEv(%"class.std::vector.18"* %lits)
          to label %19 unwind label %86

; <label>:19                                      ; preds = %0
  %20 = load i32, i32* %3, align 4
  %21 = invoke i32 @_ZN11CClause_Gen3posEi(%class.CClause_Gen* %18, i32 %20)
          to label %22 unwind label %86

; <label>:22                                      ; preds = %19
  store i32 %21, i32* %8, align 4
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.18"* %lits, i32* dereferenceable(4) %8)
          to label %23 unwind label %86

; <label>:23                                      ; preds = %22
  %24 = load i32, i32* %5, align 4
  %25 = invoke i32 @_ZN11CClause_Gen3negEi(%class.CClause_Gen* %18, i32 %24)
          to label %26 unwind label %86

; <label>:26                                      ; preds = %23
  store i32 %25, i32* %9, align 4
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.18"* %lits, i32* dereferenceable(4) %9)
          to label %27 unwind label %86

; <label>:27                                      ; preds = %26
  %28 = load %class.CSolver*, %class.CSolver** %2, align 8
  %29 = bitcast %class.CSolver* %28 to %class.CDatabase*
  %30 = invoke i32* @_ZNSt6vectorIiSaIiEE5beginEv(%"class.std::vector.18"* %lits)
          to label %31 unwind label %86

; <label>:31                                      ; preds = %27
  %32 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.60", %"class.__gnu_cxx::__normal_iterator.60"* %10, i32 0, i32 0
  store i32* %30, i32** %32, align 8
  %33 = invoke dereferenceable(4) i32* @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEixEl(%"class.__gnu_cxx::__normal_iterator.60"* %10, i64 0)
          to label %34 unwind label %86

; <label>:34                                      ; preds = %31
  %35 = invoke i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.18"* %lits)
          to label %36 unwind label %86

; <label>:36                                      ; preds = %34
  %37 = trunc i64 %35 to i32
  %38 = invoke i32 @_ZN9CDatabase10add_clauseEPii(%class.CDatabase* %29, i32* %33, i32 %37)
          to label %39 unwind label %86

; <label>:39                                      ; preds = %36
  invoke void @_ZNSt6vectorIiSaIiEE5clearEv(%"class.std::vector.18"* %lits)
          to label %40 unwind label %86

; <label>:40                                      ; preds = %39
  %41 = load i32, i32* %4, align 4
  %42 = invoke i32 @_ZN11CClause_Gen3posEi(%class.CClause_Gen* %18, i32 %41)
          to label %43 unwind label %86

; <label>:43                                      ; preds = %40
  store i32 %42, i32* %11, align 4
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.18"* %lits, i32* dereferenceable(4) %11)
          to label %44 unwind label %86

; <label>:44                                      ; preds = %43
  %45 = load i32, i32* %5, align 4
  %46 = invoke i32 @_ZN11CClause_Gen3negEi(%class.CClause_Gen* %18, i32 %45)
          to label %47 unwind label %86

; <label>:47                                      ; preds = %44
  store i32 %46, i32* %12, align 4
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.18"* %lits, i32* dereferenceable(4) %12)
          to label %48 unwind label %86

; <label>:48                                      ; preds = %47
  %49 = load %class.CSolver*, %class.CSolver** %2, align 8
  %50 = bitcast %class.CSolver* %49 to %class.CDatabase*
  %51 = invoke i32* @_ZNSt6vectorIiSaIiEE5beginEv(%"class.std::vector.18"* %lits)
          to label %52 unwind label %86

; <label>:52                                      ; preds = %48
  %53 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.60", %"class.__gnu_cxx::__normal_iterator.60"* %13, i32 0, i32 0
  store i32* %51, i32** %53, align 8
  %54 = invoke dereferenceable(4) i32* @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEixEl(%"class.__gnu_cxx::__normal_iterator.60"* %13, i64 0)
          to label %55 unwind label %86

; <label>:55                                      ; preds = %52
  %56 = invoke i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.18"* %lits)
          to label %57 unwind label %86

; <label>:57                                      ; preds = %55
  %58 = trunc i64 %56 to i32
  %59 = invoke i32 @_ZN9CDatabase10add_clauseEPii(%class.CDatabase* %50, i32* %54, i32 %58)
          to label %60 unwind label %86

; <label>:60                                      ; preds = %57
  invoke void @_ZNSt6vectorIiSaIiEE5clearEv(%"class.std::vector.18"* %lits)
          to label %61 unwind label %86

; <label>:61                                      ; preds = %60
  %62 = load i32, i32* %3, align 4
  %63 = invoke i32 @_ZN11CClause_Gen3negEi(%class.CClause_Gen* %18, i32 %62)
          to label %64 unwind label %86

; <label>:64                                      ; preds = %61
  store i32 %63, i32* %14, align 4
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.18"* %lits, i32* dereferenceable(4) %14)
          to label %65 unwind label %86

; <label>:65                                      ; preds = %64
  %66 = load i32, i32* %4, align 4
  %67 = invoke i32 @_ZN11CClause_Gen3negEi(%class.CClause_Gen* %18, i32 %66)
          to label %68 unwind label %86

; <label>:68                                      ; preds = %65
  store i32 %67, i32* %15, align 4
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.18"* %lits, i32* dereferenceable(4) %15)
          to label %69 unwind label %86

; <label>:69                                      ; preds = %68
  %70 = load i32, i32* %5, align 4
  %71 = invoke i32 @_ZN11CClause_Gen3posEi(%class.CClause_Gen* %18, i32 %70)
          to label %72 unwind label %86

; <label>:72                                      ; preds = %69
  store i32 %71, i32* %16, align 4
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.18"* %lits, i32* dereferenceable(4) %16)
          to label %73 unwind label %86

; <label>:73                                      ; preds = %72
  %74 = load %class.CSolver*, %class.CSolver** %2, align 8
  %75 = bitcast %class.CSolver* %74 to %class.CDatabase*
  %76 = invoke i32* @_ZNSt6vectorIiSaIiEE5beginEv(%"class.std::vector.18"* %lits)
          to label %77 unwind label %86

; <label>:77                                      ; preds = %73
  %78 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.60", %"class.__gnu_cxx::__normal_iterator.60"* %17, i32 0, i32 0
  store i32* %76, i32** %78, align 8
  %79 = invoke dereferenceable(4) i32* @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEixEl(%"class.__gnu_cxx::__normal_iterator.60"* %17, i64 0)
          to label %80 unwind label %86

; <label>:80                                      ; preds = %77
  %81 = invoke i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.18"* %lits)
          to label %82 unwind label %86

; <label>:82                                      ; preds = %80
  %83 = trunc i64 %81 to i32
  %84 = invoke i32 @_ZN9CDatabase10add_clauseEPii(%class.CDatabase* %75, i32* %79, i32 %83)
          to label %85 unwind label %86

; <label>:85                                      ; preds = %82
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.18"* %lits)
  ret void

; <label>:86                                      ; preds = %82, %80, %77, %73, %72, %69, %68, %65, %64, %61, %60, %57, %55, %52, %48, %47, %44, %43, %40, %39, %36, %34, %31, %27, %26, %23, %22, %19, %0
  %87 = landingpad { i8*, i32 }
          cleanup
  %88 = extractvalue { i8*, i32 } %87, 0
  store i8* %88, i8** %6, align 8
  %89 = extractvalue { i8*, i32 } %87, 1
  store i32 %89, i32* %7, align 4
  invoke void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.18"* %lits)
          to label %90 unwind label %96

; <label>:90                                      ; preds = %86
  br label %91

; <label>:91                                      ; preds = %90
  %92 = load i8*, i8** %6, align 8
  %93 = load i32, i32* %7, align 4
  %94 = insertvalue { i8*, i32 } undef, i8* %92, 0
  %95 = insertvalue { i8*, i32 } %94, i32 %93, 1
  resume { i8*, i32 } %95

; <label>:96                                      ; preds = %86
  %97 = landingpad { i8*, i32 }
          catch i8* null
  %98 = extractvalue { i8*, i32 } %97, 0
  call void @__clang_call_terminate(i8* %98) #12
  unreachable
}

; Function Attrs: uwtable
define void @SAT_GenClsAndN(i8* %mng, i32* %inputs, i32 %num_inputs, i32 %o) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %solver = alloca %class.CSolver*, align 8
  %cls_gen = alloca %class.CClause_Gen, align 1
  store i8* %mng, i8** %1, align 8
  store i32* %inputs, i32** %2, align 8
  store i32 %num_inputs, i32* %3, align 4
  store i32 %o, i32* %4, align 4
  %5 = load i8*, i8** %1, align 8
  %6 = bitcast i8* %5 to %class.CSolver*
  store %class.CSolver* %6, %class.CSolver** %solver, align 8
  %7 = load %class.CSolver*, %class.CSolver** %solver, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %4, align 4
  call void @_ZN11CClause_Gen5and_nER7CSolverPiii(%class.CClause_Gen* %cls_gen, %class.CSolver* dereferenceable(736) %7, i32* %8, i32 %9, i32 %10)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN11CClause_Gen5and_nER7CSolverPiii(%class.CClause_Gen* %this, %class.CSolver* dereferenceable(736) %solver, i32* %inputs, i32 %num_input, i32 %o) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %class.CClause_Gen*, align 8
  %2 = alloca %class.CSolver*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %lits = alloca %"class.std::vector.18", align 8
  %i = alloca i32, align 4
  %6 = alloca i8*
  %7 = alloca i32
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %"class.__gnu_cxx::__normal_iterator.60", align 8
  %i1 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %"class.__gnu_cxx::__normal_iterator.60", align 8
  store %class.CClause_Gen* %this, %class.CClause_Gen** %1, align 8
  store %class.CSolver* %solver, %class.CSolver** %2, align 8
  store i32* %inputs, i32** %3, align 8
  store i32 %num_input, i32* %4, align 4
  store i32 %o, i32* %5, align 4
  %14 = load %class.CClause_Gen*, %class.CClause_Gen** %1, align 8
  call void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector.18"* %lits)
  store i32 0, i32* %i, align 4
  br label %15

; <label>:15                                      ; preds = %45, %0
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %52

; <label>:19                                      ; preds = %15
  invoke void @_ZNSt6vectorIiSaIiEE5clearEv(%"class.std::vector.18"* %lits)
          to label %20 unwind label %48

; <label>:20                                      ; preds = %19
  %21 = load i32, i32* %i, align 4
  %22 = sext i32 %21 to i64
  %23 = load i32*, i32** %3, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 %22
  %25 = load i32, i32* %24, align 4
  %26 = invoke i32 @_ZN11CClause_Gen3posEi(%class.CClause_Gen* %14, i32 %25)
          to label %27 unwind label %48

; <label>:27                                      ; preds = %20
  store i32 %26, i32* %8, align 4
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.18"* %lits, i32* dereferenceable(4) %8)
          to label %28 unwind label %48

; <label>:28                                      ; preds = %27
  %29 = load i32, i32* %5, align 4
  %30 = invoke i32 @_ZN11CClause_Gen3negEi(%class.CClause_Gen* %14, i32 %29)
          to label %31 unwind label %48

; <label>:31                                      ; preds = %28
  store i32 %30, i32* %9, align 4
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.18"* %lits, i32* dereferenceable(4) %9)
          to label %32 unwind label %48

; <label>:32                                      ; preds = %31
  %33 = load %class.CSolver*, %class.CSolver** %2, align 8
  %34 = bitcast %class.CSolver* %33 to %class.CDatabase*
  %35 = invoke i32* @_ZNSt6vectorIiSaIiEE5beginEv(%"class.std::vector.18"* %lits)
          to label %36 unwind label %48

; <label>:36                                      ; preds = %32
  %37 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.60", %"class.__gnu_cxx::__normal_iterator.60"* %10, i32 0, i32 0
  store i32* %35, i32** %37, align 8
  %38 = invoke dereferenceable(4) i32* @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEixEl(%"class.__gnu_cxx::__normal_iterator.60"* %10, i64 0)
          to label %39 unwind label %48

; <label>:39                                      ; preds = %36
  %40 = invoke i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.18"* %lits)
          to label %41 unwind label %48

; <label>:41                                      ; preds = %39
  %42 = trunc i64 %40 to i32
  %43 = invoke i32 @_ZN9CDatabase10add_clauseEPii(%class.CDatabase* %34, i32* %38, i32 %42)
          to label %44 unwind label %48

; <label>:44                                      ; preds = %41
  br label %45

; <label>:45                                      ; preds = %44
  %46 = load i32, i32* %i, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %i, align 4
  br label %15

; <label>:48                                      ; preds = %83, %81, %78, %74, %73, %70, %65, %58, %52, %41, %39, %36, %32, %31, %28, %27, %20, %19
  %49 = landingpad { i8*, i32 }
          cleanup
  %50 = extractvalue { i8*, i32 } %49, 0
  store i8* %50, i8** %6, align 8
  %51 = extractvalue { i8*, i32 } %49, 1
  store i32 %51, i32* %7, align 4
  invoke void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.18"* %lits)
          to label %87 unwind label %93

; <label>:52                                      ; preds = %15
  invoke void @_ZNSt6vectorIiSaIiEE5clearEv(%"class.std::vector.18"* %lits)
          to label %53 unwind label %48

; <label>:53                                      ; preds = %52
  store i32 0, i32* %i1, align 4
  br label %54

; <label>:54                                      ; preds = %67, %53
  %55 = load i32, i32* %i1, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %70

; <label>:58                                      ; preds = %54
  %59 = load i32, i32* %i1, align 4
  %60 = sext i32 %59 to i64
  %61 = load i32*, i32** %3, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 %60
  %63 = load i32, i32* %62, align 4
  %64 = invoke i32 @_ZN11CClause_Gen3negEi(%class.CClause_Gen* %14, i32 %63)
          to label %65 unwind label %48

; <label>:65                                      ; preds = %58
  store i32 %64, i32* %11, align 4
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.18"* %lits, i32* dereferenceable(4) %11)
          to label %66 unwind label %48

; <label>:66                                      ; preds = %65
  br label %67

; <label>:67                                      ; preds = %66
  %68 = load i32, i32* %i1, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %i1, align 4
  br label %54

; <label>:70                                      ; preds = %54
  %71 = load i32, i32* %5, align 4
  %72 = invoke i32 @_ZN11CClause_Gen3posEi(%class.CClause_Gen* %14, i32 %71)
          to label %73 unwind label %48

; <label>:73                                      ; preds = %70
  store i32 %72, i32* %12, align 4
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.18"* %lits, i32* dereferenceable(4) %12)
          to label %74 unwind label %48

; <label>:74                                      ; preds = %73
  %75 = load %class.CSolver*, %class.CSolver** %2, align 8
  %76 = bitcast %class.CSolver* %75 to %class.CDatabase*
  %77 = invoke i32* @_ZNSt6vectorIiSaIiEE5beginEv(%"class.std::vector.18"* %lits)
          to label %78 unwind label %48

; <label>:78                                      ; preds = %74
  %79 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.60", %"class.__gnu_cxx::__normal_iterator.60"* %13, i32 0, i32 0
  store i32* %77, i32** %79, align 8
  %80 = invoke dereferenceable(4) i32* @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEixEl(%"class.__gnu_cxx::__normal_iterator.60"* %13, i64 0)
          to label %81 unwind label %48

; <label>:81                                      ; preds = %78
  %82 = invoke i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.18"* %lits)
          to label %83 unwind label %48

; <label>:83                                      ; preds = %81
  %84 = trunc i64 %82 to i32
  %85 = invoke i32 @_ZN9CDatabase10add_clauseEPii(%class.CDatabase* %76, i32* %80, i32 %84)
          to label %86 unwind label %48

; <label>:86                                      ; preds = %83
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.18"* %lits)
  ret void

; <label>:87                                      ; preds = %48
  br label %88

; <label>:88                                      ; preds = %87
  %89 = load i8*, i8** %6, align 8
  %90 = load i32, i32* %7, align 4
  %91 = insertvalue { i8*, i32 } undef, i8* %89, 0
  %92 = insertvalue { i8*, i32 } %91, i32 %90, 1
  resume { i8*, i32 } %92

; <label>:93                                      ; preds = %48
  %94 = landingpad { i8*, i32 }
          catch i8* null
  %95 = extractvalue { i8*, i32 } %94, 0
  call void @__clang_call_terminate(i8* %95) #12
  unreachable
}

; Function Attrs: uwtable
define void @SAT_GenClsOr2(i8* %mng, i32 %a, i32 %b, i32 %o) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %solver = alloca %class.CSolver*, align 8
  %cls_gen = alloca %class.CClause_Gen, align 1
  store i8* %mng, i8** %1, align 8
  store i32 %a, i32* %2, align 4
  store i32 %b, i32* %3, align 4
  store i32 %o, i32* %4, align 4
  %5 = load i8*, i8** %1, align 8
  %6 = bitcast i8* %5 to %class.CSolver*
  store %class.CSolver* %6, %class.CSolver** %solver, align 8
  %7 = load %class.CSolver*, %class.CSolver** %solver, align 8
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %4, align 4
  call void @_ZN11CClause_Gen3or2ER7CSolveriii(%class.CClause_Gen* %cls_gen, %class.CSolver* dereferenceable(736) %7, i32 %8, i32 %9, i32 %10)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN11CClause_Gen3or2ER7CSolveriii(%class.CClause_Gen* %this, %class.CSolver* dereferenceable(736) %solver, i32 %a, i32 %b, i32 %o) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %class.CClause_Gen*, align 8
  %2 = alloca %class.CSolver*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %lits = alloca %"class.std::vector.18", align 8
  %6 = alloca i8*
  %7 = alloca i32
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %"class.__gnu_cxx::__normal_iterator.60", align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %"class.__gnu_cxx::__normal_iterator.60", align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %"class.__gnu_cxx::__normal_iterator.60", align 8
  store %class.CClause_Gen* %this, %class.CClause_Gen** %1, align 8
  store %class.CSolver* %solver, %class.CSolver** %2, align 8
  store i32 %a, i32* %3, align 4
  store i32 %b, i32* %4, align 4
  store i32 %o, i32* %5, align 4
  %18 = load %class.CClause_Gen*, %class.CClause_Gen** %1, align 8
  call void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector.18"* %lits)
  invoke void @_ZNSt6vectorIiSaIiEE5clearEv(%"class.std::vector.18"* %lits)
          to label %19 unwind label %86

; <label>:19                                      ; preds = %0
  %20 = load i32, i32* %3, align 4
  %21 = invoke i32 @_ZN11CClause_Gen3negEi(%class.CClause_Gen* %18, i32 %20)
          to label %22 unwind label %86

; <label>:22                                      ; preds = %19
  store i32 %21, i32* %8, align 4
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.18"* %lits, i32* dereferenceable(4) %8)
          to label %23 unwind label %86

; <label>:23                                      ; preds = %22
  %24 = load i32, i32* %5, align 4
  %25 = invoke i32 @_ZN11CClause_Gen3posEi(%class.CClause_Gen* %18, i32 %24)
          to label %26 unwind label %86

; <label>:26                                      ; preds = %23
  store i32 %25, i32* %9, align 4
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.18"* %lits, i32* dereferenceable(4) %9)
          to label %27 unwind label %86

; <label>:27                                      ; preds = %26
  %28 = load %class.CSolver*, %class.CSolver** %2, align 8
  %29 = bitcast %class.CSolver* %28 to %class.CDatabase*
  %30 = invoke i32* @_ZNSt6vectorIiSaIiEE5beginEv(%"class.std::vector.18"* %lits)
          to label %31 unwind label %86

; <label>:31                                      ; preds = %27
  %32 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.60", %"class.__gnu_cxx::__normal_iterator.60"* %10, i32 0, i32 0
  store i32* %30, i32** %32, align 8
  %33 = invoke dereferenceable(4) i32* @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEixEl(%"class.__gnu_cxx::__normal_iterator.60"* %10, i64 0)
          to label %34 unwind label %86

; <label>:34                                      ; preds = %31
  %35 = invoke i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.18"* %lits)
          to label %36 unwind label %86

; <label>:36                                      ; preds = %34
  %37 = trunc i64 %35 to i32
  %38 = invoke i32 @_ZN9CDatabase10add_clauseEPii(%class.CDatabase* %29, i32* %33, i32 %37)
          to label %39 unwind label %86

; <label>:39                                      ; preds = %36
  invoke void @_ZNSt6vectorIiSaIiEE5clearEv(%"class.std::vector.18"* %lits)
          to label %40 unwind label %86

; <label>:40                                      ; preds = %39
  %41 = load i32, i32* %4, align 4
  %42 = invoke i32 @_ZN11CClause_Gen3negEi(%class.CClause_Gen* %18, i32 %41)
          to label %43 unwind label %86

; <label>:43                                      ; preds = %40
  store i32 %42, i32* %11, align 4
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.18"* %lits, i32* dereferenceable(4) %11)
          to label %44 unwind label %86

; <label>:44                                      ; preds = %43
  %45 = load i32, i32* %5, align 4
  %46 = invoke i32 @_ZN11CClause_Gen3posEi(%class.CClause_Gen* %18, i32 %45)
          to label %47 unwind label %86

; <label>:47                                      ; preds = %44
  store i32 %46, i32* %12, align 4
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.18"* %lits, i32* dereferenceable(4) %12)
          to label %48 unwind label %86

; <label>:48                                      ; preds = %47
  %49 = load %class.CSolver*, %class.CSolver** %2, align 8
  %50 = bitcast %class.CSolver* %49 to %class.CDatabase*
  %51 = invoke i32* @_ZNSt6vectorIiSaIiEE5beginEv(%"class.std::vector.18"* %lits)
          to label %52 unwind label %86

; <label>:52                                      ; preds = %48
  %53 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.60", %"class.__gnu_cxx::__normal_iterator.60"* %13, i32 0, i32 0
  store i32* %51, i32** %53, align 8
  %54 = invoke dereferenceable(4) i32* @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEixEl(%"class.__gnu_cxx::__normal_iterator.60"* %13, i64 0)
          to label %55 unwind label %86

; <label>:55                                      ; preds = %52
  %56 = invoke i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.18"* %lits)
          to label %57 unwind label %86

; <label>:57                                      ; preds = %55
  %58 = trunc i64 %56 to i32
  %59 = invoke i32 @_ZN9CDatabase10add_clauseEPii(%class.CDatabase* %50, i32* %54, i32 %58)
          to label %60 unwind label %86

; <label>:60                                      ; preds = %57
  invoke void @_ZNSt6vectorIiSaIiEE5clearEv(%"class.std::vector.18"* %lits)
          to label %61 unwind label %86

; <label>:61                                      ; preds = %60
  %62 = load i32, i32* %3, align 4
  %63 = invoke i32 @_ZN11CClause_Gen3posEi(%class.CClause_Gen* %18, i32 %62)
          to label %64 unwind label %86

; <label>:64                                      ; preds = %61
  store i32 %63, i32* %14, align 4
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.18"* %lits, i32* dereferenceable(4) %14)
          to label %65 unwind label %86

; <label>:65                                      ; preds = %64
  %66 = load i32, i32* %4, align 4
  %67 = invoke i32 @_ZN11CClause_Gen3posEi(%class.CClause_Gen* %18, i32 %66)
          to label %68 unwind label %86

; <label>:68                                      ; preds = %65
  store i32 %67, i32* %15, align 4
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.18"* %lits, i32* dereferenceable(4) %15)
          to label %69 unwind label %86

; <label>:69                                      ; preds = %68
  %70 = load i32, i32* %5, align 4
  %71 = invoke i32 @_ZN11CClause_Gen3negEi(%class.CClause_Gen* %18, i32 %70)
          to label %72 unwind label %86

; <label>:72                                      ; preds = %69
  store i32 %71, i32* %16, align 4
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.18"* %lits, i32* dereferenceable(4) %16)
          to label %73 unwind label %86

; <label>:73                                      ; preds = %72
  %74 = load %class.CSolver*, %class.CSolver** %2, align 8
  %75 = bitcast %class.CSolver* %74 to %class.CDatabase*
  %76 = invoke i32* @_ZNSt6vectorIiSaIiEE5beginEv(%"class.std::vector.18"* %lits)
          to label %77 unwind label %86

; <label>:77                                      ; preds = %73
  %78 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.60", %"class.__gnu_cxx::__normal_iterator.60"* %17, i32 0, i32 0
  store i32* %76, i32** %78, align 8
  %79 = invoke dereferenceable(4) i32* @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEixEl(%"class.__gnu_cxx::__normal_iterator.60"* %17, i64 0)
          to label %80 unwind label %86

; <label>:80                                      ; preds = %77
  %81 = invoke i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.18"* %lits)
          to label %82 unwind label %86

; <label>:82                                      ; preds = %80
  %83 = trunc i64 %81 to i32
  %84 = invoke i32 @_ZN9CDatabase10add_clauseEPii(%class.CDatabase* %75, i32* %79, i32 %83)
          to label %85 unwind label %86

; <label>:85                                      ; preds = %82
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.18"* %lits)
  ret void

; <label>:86                                      ; preds = %82, %80, %77, %73, %72, %69, %68, %65, %64, %61, %60, %57, %55, %52, %48, %47, %44, %43, %40, %39, %36, %34, %31, %27, %26, %23, %22, %19, %0
  %87 = landingpad { i8*, i32 }
          cleanup
  %88 = extractvalue { i8*, i32 } %87, 0
  store i8* %88, i8** %6, align 8
  %89 = extractvalue { i8*, i32 } %87, 1
  store i32 %89, i32* %7, align 4
  invoke void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.18"* %lits)
          to label %90 unwind label %96

; <label>:90                                      ; preds = %86
  br label %91

; <label>:91                                      ; preds = %90
  %92 = load i8*, i8** %6, align 8
  %93 = load i32, i32* %7, align 4
  %94 = insertvalue { i8*, i32 } undef, i8* %92, 0
  %95 = insertvalue { i8*, i32 } %94, i32 %93, 1
  resume { i8*, i32 } %95

; <label>:96                                      ; preds = %86
  %97 = landingpad { i8*, i32 }
          catch i8* null
  %98 = extractvalue { i8*, i32 } %97, 0
  call void @__clang_call_terminate(i8* %98) #12
  unreachable
}

; Function Attrs: uwtable
define void @SAT_GenClsOrN(i8* %mng, i32* %inputs, i32 %num_inputs, i32 %o) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %solver = alloca %class.CSolver*, align 8
  %cls_gen = alloca %class.CClause_Gen, align 1
  store i8* %mng, i8** %1, align 8
  store i32* %inputs, i32** %2, align 8
  store i32 %num_inputs, i32* %3, align 4
  store i32 %o, i32* %4, align 4
  %5 = load i8*, i8** %1, align 8
  %6 = bitcast i8* %5 to %class.CSolver*
  store %class.CSolver* %6, %class.CSolver** %solver, align 8
  %7 = load %class.CSolver*, %class.CSolver** %solver, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %4, align 4
  call void @_ZN11CClause_Gen4or_nER7CSolverPiii(%class.CClause_Gen* %cls_gen, %class.CSolver* dereferenceable(736) %7, i32* %8, i32 %9, i32 %10)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN11CClause_Gen4or_nER7CSolverPiii(%class.CClause_Gen* %this, %class.CSolver* dereferenceable(736) %solver, i32* %inputs, i32 %num_input, i32 %o) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %class.CClause_Gen*, align 8
  %2 = alloca %class.CSolver*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %lits = alloca %"class.std::vector.18", align 8
  %i = alloca i32, align 4
  %6 = alloca i8*
  %7 = alloca i32
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %"class.__gnu_cxx::__normal_iterator.60", align 8
  %i1 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %"class.__gnu_cxx::__normal_iterator.60", align 8
  store %class.CClause_Gen* %this, %class.CClause_Gen** %1, align 8
  store %class.CSolver* %solver, %class.CSolver** %2, align 8
  store i32* %inputs, i32** %3, align 8
  store i32 %num_input, i32* %4, align 4
  store i32 %o, i32* %5, align 4
  %14 = load %class.CClause_Gen*, %class.CClause_Gen** %1, align 8
  call void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector.18"* %lits)
  store i32 0, i32* %i, align 4
  br label %15

; <label>:15                                      ; preds = %45, %0
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %52

; <label>:19                                      ; preds = %15
  invoke void @_ZNSt6vectorIiSaIiEE5clearEv(%"class.std::vector.18"* %lits)
          to label %20 unwind label %48

; <label>:20                                      ; preds = %19
  %21 = load i32, i32* %i, align 4
  %22 = sext i32 %21 to i64
  %23 = load i32*, i32** %3, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 %22
  %25 = load i32, i32* %24, align 4
  %26 = invoke i32 @_ZN11CClause_Gen3negEi(%class.CClause_Gen* %14, i32 %25)
          to label %27 unwind label %48

; <label>:27                                      ; preds = %20
  store i32 %26, i32* %8, align 4
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.18"* %lits, i32* dereferenceable(4) %8)
          to label %28 unwind label %48

; <label>:28                                      ; preds = %27
  %29 = load i32, i32* %5, align 4
  %30 = invoke i32 @_ZN11CClause_Gen3posEi(%class.CClause_Gen* %14, i32 %29)
          to label %31 unwind label %48

; <label>:31                                      ; preds = %28
  store i32 %30, i32* %9, align 4
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.18"* %lits, i32* dereferenceable(4) %9)
          to label %32 unwind label %48

; <label>:32                                      ; preds = %31
  %33 = load %class.CSolver*, %class.CSolver** %2, align 8
  %34 = bitcast %class.CSolver* %33 to %class.CDatabase*
  %35 = invoke i32* @_ZNSt6vectorIiSaIiEE5beginEv(%"class.std::vector.18"* %lits)
          to label %36 unwind label %48

; <label>:36                                      ; preds = %32
  %37 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.60", %"class.__gnu_cxx::__normal_iterator.60"* %10, i32 0, i32 0
  store i32* %35, i32** %37, align 8
  %38 = invoke dereferenceable(4) i32* @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEixEl(%"class.__gnu_cxx::__normal_iterator.60"* %10, i64 0)
          to label %39 unwind label %48

; <label>:39                                      ; preds = %36
  %40 = invoke i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.18"* %lits)
          to label %41 unwind label %48

; <label>:41                                      ; preds = %39
  %42 = trunc i64 %40 to i32
  %43 = invoke i32 @_ZN9CDatabase10add_clauseEPii(%class.CDatabase* %34, i32* %38, i32 %42)
          to label %44 unwind label %48

; <label>:44                                      ; preds = %41
  br label %45

; <label>:45                                      ; preds = %44
  %46 = load i32, i32* %i, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %i, align 4
  br label %15

; <label>:48                                      ; preds = %83, %81, %78, %74, %73, %70, %65, %58, %52, %41, %39, %36, %32, %31, %28, %27, %20, %19
  %49 = landingpad { i8*, i32 }
          cleanup
  %50 = extractvalue { i8*, i32 } %49, 0
  store i8* %50, i8** %6, align 8
  %51 = extractvalue { i8*, i32 } %49, 1
  store i32 %51, i32* %7, align 4
  invoke void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.18"* %lits)
          to label %87 unwind label %93

; <label>:52                                      ; preds = %15
  invoke void @_ZNSt6vectorIiSaIiEE5clearEv(%"class.std::vector.18"* %lits)
          to label %53 unwind label %48

; <label>:53                                      ; preds = %52
  store i32 0, i32* %i1, align 4
  br label %54

; <label>:54                                      ; preds = %67, %53
  %55 = load i32, i32* %i1, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %70

; <label>:58                                      ; preds = %54
  %59 = load i32, i32* %i1, align 4
  %60 = sext i32 %59 to i64
  %61 = load i32*, i32** %3, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 %60
  %63 = load i32, i32* %62, align 4
  %64 = invoke i32 @_ZN11CClause_Gen3posEi(%class.CClause_Gen* %14, i32 %63)
          to label %65 unwind label %48

; <label>:65                                      ; preds = %58
  store i32 %64, i32* %11, align 4
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.18"* %lits, i32* dereferenceable(4) %11)
          to label %66 unwind label %48

; <label>:66                                      ; preds = %65
  br label %67

; <label>:67                                      ; preds = %66
  %68 = load i32, i32* %i1, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %i1, align 4
  br label %54

; <label>:70                                      ; preds = %54
  %71 = load i32, i32* %5, align 4
  %72 = invoke i32 @_ZN11CClause_Gen3negEi(%class.CClause_Gen* %14, i32 %71)
          to label %73 unwind label %48

; <label>:73                                      ; preds = %70
  store i32 %72, i32* %12, align 4
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.18"* %lits, i32* dereferenceable(4) %12)
          to label %74 unwind label %48

; <label>:74                                      ; preds = %73
  %75 = load %class.CSolver*, %class.CSolver** %2, align 8
  %76 = bitcast %class.CSolver* %75 to %class.CDatabase*
  %77 = invoke i32* @_ZNSt6vectorIiSaIiEE5beginEv(%"class.std::vector.18"* %lits)
          to label %78 unwind label %48

; <label>:78                                      ; preds = %74
  %79 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.60", %"class.__gnu_cxx::__normal_iterator.60"* %13, i32 0, i32 0
  store i32* %77, i32** %79, align 8
  %80 = invoke dereferenceable(4) i32* @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEixEl(%"class.__gnu_cxx::__normal_iterator.60"* %13, i64 0)
          to label %81 unwind label %48

; <label>:81                                      ; preds = %78
  %82 = invoke i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.18"* %lits)
          to label %83 unwind label %48

; <label>:83                                      ; preds = %81
  %84 = trunc i64 %82 to i32
  %85 = invoke i32 @_ZN9CDatabase10add_clauseEPii(%class.CDatabase* %76, i32* %80, i32 %84)
          to label %86 unwind label %48

; <label>:86                                      ; preds = %83
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.18"* %lits)
  ret void

; <label>:87                                      ; preds = %48
  br label %88

; <label>:88                                      ; preds = %87
  %89 = load i8*, i8** %6, align 8
  %90 = load i32, i32* %7, align 4
  %91 = insertvalue { i8*, i32 } undef, i8* %89, 0
  %92 = insertvalue { i8*, i32 } %91, i32 %90, 1
  resume { i8*, i32 } %92

; <label>:93                                      ; preds = %48
  %94 = landingpad { i8*, i32 }
          catch i8* null
  %95 = extractvalue { i8*, i32 } %94, 0
  call void @__clang_call_terminate(i8* %95) #12
  unreachable
}

; Function Attrs: uwtable
define void @SAT_GenClsNand2(i8* %mng, i32 %a, i32 %b, i32 %o) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %solver = alloca %class.CSolver*, align 8
  %cls_gen = alloca %class.CClause_Gen, align 1
  store i8* %mng, i8** %1, align 8
  store i32 %a, i32* %2, align 4
  store i32 %b, i32* %3, align 4
  store i32 %o, i32* %4, align 4
  %5 = load i8*, i8** %1, align 8
  %6 = bitcast i8* %5 to %class.CSolver*
  store %class.CSolver* %6, %class.CSolver** %solver, align 8
  %7 = load %class.CSolver*, %class.CSolver** %solver, align 8
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %4, align 4
  call void @_ZN11CClause_Gen5nand2ER7CSolveriii(%class.CClause_Gen* %cls_gen, %class.CSolver* dereferenceable(736) %7, i32 %8, i32 %9, i32 %10)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN11CClause_Gen5nand2ER7CSolveriii(%class.CClause_Gen* %this, %class.CSolver* dereferenceable(736) %solver, i32 %a, i32 %b, i32 %o) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %class.CClause_Gen*, align 8
  %2 = alloca %class.CSolver*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %lits = alloca %"class.std::vector.18", align 8
  %6 = alloca i8*
  %7 = alloca i32
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %"class.__gnu_cxx::__normal_iterator.60", align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %"class.__gnu_cxx::__normal_iterator.60", align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %"class.__gnu_cxx::__normal_iterator.60", align 8
  store %class.CClause_Gen* %this, %class.CClause_Gen** %1, align 8
  store %class.CSolver* %solver, %class.CSolver** %2, align 8
  store i32 %a, i32* %3, align 4
  store i32 %b, i32* %4, align 4
  store i32 %o, i32* %5, align 4
  %18 = load %class.CClause_Gen*, %class.CClause_Gen** %1, align 8
  call void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector.18"* %lits)
  invoke void @_ZNSt6vectorIiSaIiEE5clearEv(%"class.std::vector.18"* %lits)
          to label %19 unwind label %86

; <label>:19                                      ; preds = %0
  %20 = load i32, i32* %3, align 4
  %21 = invoke i32 @_ZN11CClause_Gen3posEi(%class.CClause_Gen* %18, i32 %20)
          to label %22 unwind label %86

; <label>:22                                      ; preds = %19
  store i32 %21, i32* %8, align 4
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.18"* %lits, i32* dereferenceable(4) %8)
          to label %23 unwind label %86

; <label>:23                                      ; preds = %22
  %24 = load i32, i32* %5, align 4
  %25 = invoke i32 @_ZN11CClause_Gen3posEi(%class.CClause_Gen* %18, i32 %24)
          to label %26 unwind label %86

; <label>:26                                      ; preds = %23
  store i32 %25, i32* %9, align 4
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.18"* %lits, i32* dereferenceable(4) %9)
          to label %27 unwind label %86

; <label>:27                                      ; preds = %26
  %28 = load %class.CSolver*, %class.CSolver** %2, align 8
  %29 = bitcast %class.CSolver* %28 to %class.CDatabase*
  %30 = invoke i32* @_ZNSt6vectorIiSaIiEE5beginEv(%"class.std::vector.18"* %lits)
          to label %31 unwind label %86

; <label>:31                                      ; preds = %27
  %32 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.60", %"class.__gnu_cxx::__normal_iterator.60"* %10, i32 0, i32 0
  store i32* %30, i32** %32, align 8
  %33 = invoke dereferenceable(4) i32* @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEixEl(%"class.__gnu_cxx::__normal_iterator.60"* %10, i64 0)
          to label %34 unwind label %86

; <label>:34                                      ; preds = %31
  %35 = invoke i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.18"* %lits)
          to label %36 unwind label %86

; <label>:36                                      ; preds = %34
  %37 = trunc i64 %35 to i32
  %38 = invoke i32 @_ZN9CDatabase10add_clauseEPii(%class.CDatabase* %29, i32* %33, i32 %37)
          to label %39 unwind label %86

; <label>:39                                      ; preds = %36
  invoke void @_ZNSt6vectorIiSaIiEE5clearEv(%"class.std::vector.18"* %lits)
          to label %40 unwind label %86

; <label>:40                                      ; preds = %39
  %41 = load i32, i32* %4, align 4
  %42 = invoke i32 @_ZN11CClause_Gen3posEi(%class.CClause_Gen* %18, i32 %41)
          to label %43 unwind label %86

; <label>:43                                      ; preds = %40
  store i32 %42, i32* %11, align 4
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.18"* %lits, i32* dereferenceable(4) %11)
          to label %44 unwind label %86

; <label>:44                                      ; preds = %43
  %45 = load i32, i32* %5, align 4
  %46 = invoke i32 @_ZN11CClause_Gen3posEi(%class.CClause_Gen* %18, i32 %45)
          to label %47 unwind label %86

; <label>:47                                      ; preds = %44
  store i32 %46, i32* %12, align 4
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.18"* %lits, i32* dereferenceable(4) %12)
          to label %48 unwind label %86

; <label>:48                                      ; preds = %47
  %49 = load %class.CSolver*, %class.CSolver** %2, align 8
  %50 = bitcast %class.CSolver* %49 to %class.CDatabase*
  %51 = invoke i32* @_ZNSt6vectorIiSaIiEE5beginEv(%"class.std::vector.18"* %lits)
          to label %52 unwind label %86

; <label>:52                                      ; preds = %48
  %53 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.60", %"class.__gnu_cxx::__normal_iterator.60"* %13, i32 0, i32 0
  store i32* %51, i32** %53, align 8
  %54 = invoke dereferenceable(4) i32* @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEixEl(%"class.__gnu_cxx::__normal_iterator.60"* %13, i64 0)
          to label %55 unwind label %86

; <label>:55                                      ; preds = %52
  %56 = invoke i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.18"* %lits)
          to label %57 unwind label %86

; <label>:57                                      ; preds = %55
  %58 = trunc i64 %56 to i32
  %59 = invoke i32 @_ZN9CDatabase10add_clauseEPii(%class.CDatabase* %50, i32* %54, i32 %58)
          to label %60 unwind label %86

; <label>:60                                      ; preds = %57
  invoke void @_ZNSt6vectorIiSaIiEE5clearEv(%"class.std::vector.18"* %lits)
          to label %61 unwind label %86

; <label>:61                                      ; preds = %60
  %62 = load i32, i32* %3, align 4
  %63 = invoke i32 @_ZN11CClause_Gen3negEi(%class.CClause_Gen* %18, i32 %62)
          to label %64 unwind label %86

; <label>:64                                      ; preds = %61
  store i32 %63, i32* %14, align 4
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.18"* %lits, i32* dereferenceable(4) %14)
          to label %65 unwind label %86

; <label>:65                                      ; preds = %64
  %66 = load i32, i32* %4, align 4
  %67 = invoke i32 @_ZN11CClause_Gen3negEi(%class.CClause_Gen* %18, i32 %66)
          to label %68 unwind label %86

; <label>:68                                      ; preds = %65
  store i32 %67, i32* %15, align 4
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.18"* %lits, i32* dereferenceable(4) %15)
          to label %69 unwind label %86

; <label>:69                                      ; preds = %68
  %70 = load i32, i32* %5, align 4
  %71 = invoke i32 @_ZN11CClause_Gen3negEi(%class.CClause_Gen* %18, i32 %70)
          to label %72 unwind label %86

; <label>:72                                      ; preds = %69
  store i32 %71, i32* %16, align 4
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.18"* %lits, i32* dereferenceable(4) %16)
          to label %73 unwind label %86

; <label>:73                                      ; preds = %72
  %74 = load %class.CSolver*, %class.CSolver** %2, align 8
  %75 = bitcast %class.CSolver* %74 to %class.CDatabase*
  %76 = invoke i32* @_ZNSt6vectorIiSaIiEE5beginEv(%"class.std::vector.18"* %lits)
          to label %77 unwind label %86

; <label>:77                                      ; preds = %73
  %78 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.60", %"class.__gnu_cxx::__normal_iterator.60"* %17, i32 0, i32 0
  store i32* %76, i32** %78, align 8
  %79 = invoke dereferenceable(4) i32* @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEixEl(%"class.__gnu_cxx::__normal_iterator.60"* %17, i64 0)
          to label %80 unwind label %86

; <label>:80                                      ; preds = %77
  %81 = invoke i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.18"* %lits)
          to label %82 unwind label %86

; <label>:82                                      ; preds = %80
  %83 = trunc i64 %81 to i32
  %84 = invoke i32 @_ZN9CDatabase10add_clauseEPii(%class.CDatabase* %75, i32* %79, i32 %83)
          to label %85 unwind label %86

; <label>:85                                      ; preds = %82
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.18"* %lits)
  ret void

; <label>:86                                      ; preds = %82, %80, %77, %73, %72, %69, %68, %65, %64, %61, %60, %57, %55, %52, %48, %47, %44, %43, %40, %39, %36, %34, %31, %27, %26, %23, %22, %19, %0
  %87 = landingpad { i8*, i32 }
          cleanup
  %88 = extractvalue { i8*, i32 } %87, 0
  store i8* %88, i8** %6, align 8
  %89 = extractvalue { i8*, i32 } %87, 1
  store i32 %89, i32* %7, align 4
  invoke void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.18"* %lits)
          to label %90 unwind label %96

; <label>:90                                      ; preds = %86
  br label %91

; <label>:91                                      ; preds = %90
  %92 = load i8*, i8** %6, align 8
  %93 = load i32, i32* %7, align 4
  %94 = insertvalue { i8*, i32 } undef, i8* %92, 0
  %95 = insertvalue { i8*, i32 } %94, i32 %93, 1
  resume { i8*, i32 } %95

; <label>:96                                      ; preds = %86
  %97 = landingpad { i8*, i32 }
          catch i8* null
  %98 = extractvalue { i8*, i32 } %97, 0
  call void @__clang_call_terminate(i8* %98) #12
  unreachable
}

; Function Attrs: uwtable
define void @SAT_GenClsNandN(i8* %mng, i32* %inputs, i32 %num_inputs, i32 %o) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %solver = alloca %class.CSolver*, align 8
  %cls_gen = alloca %class.CClause_Gen, align 1
  store i8* %mng, i8** %1, align 8
  store i32* %inputs, i32** %2, align 8
  store i32 %num_inputs, i32* %3, align 4
  store i32 %o, i32* %4, align 4
  %5 = load i8*, i8** %1, align 8
  %6 = bitcast i8* %5 to %class.CSolver*
  store %class.CSolver* %6, %class.CSolver** %solver, align 8
  %7 = load %class.CSolver*, %class.CSolver** %solver, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %4, align 4
  call void @_ZN11CClause_Gen6nand_nER7CSolverPiii(%class.CClause_Gen* %cls_gen, %class.CSolver* dereferenceable(736) %7, i32* %8, i32 %9, i32 %10)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN11CClause_Gen6nand_nER7CSolverPiii(%class.CClause_Gen* %this, %class.CSolver* dereferenceable(736) %solver, i32* %inputs, i32 %num_input, i32 %o) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %class.CClause_Gen*, align 8
  %2 = alloca %class.CSolver*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %lits = alloca %"class.std::vector.18", align 8
  %i = alloca i32, align 4
  %6 = alloca i8*
  %7 = alloca i32
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %"class.__gnu_cxx::__normal_iterator.60", align 8
  %i1 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %"class.__gnu_cxx::__normal_iterator.60", align 8
  store %class.CClause_Gen* %this, %class.CClause_Gen** %1, align 8
  store %class.CSolver* %solver, %class.CSolver** %2, align 8
  store i32* %inputs, i32** %3, align 8
  store i32 %num_input, i32* %4, align 4
  store i32 %o, i32* %5, align 4
  %14 = load %class.CClause_Gen*, %class.CClause_Gen** %1, align 8
  call void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector.18"* %lits)
  store i32 0, i32* %i, align 4
  br label %15

; <label>:15                                      ; preds = %45, %0
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %52

; <label>:19                                      ; preds = %15
  invoke void @_ZNSt6vectorIiSaIiEE5clearEv(%"class.std::vector.18"* %lits)
          to label %20 unwind label %48

; <label>:20                                      ; preds = %19
  %21 = load i32, i32* %i, align 4
  %22 = sext i32 %21 to i64
  %23 = load i32*, i32** %3, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 %22
  %25 = load i32, i32* %24, align 4
  %26 = invoke i32 @_ZN11CClause_Gen3posEi(%class.CClause_Gen* %14, i32 %25)
          to label %27 unwind label %48

; <label>:27                                      ; preds = %20
  store i32 %26, i32* %8, align 4
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.18"* %lits, i32* dereferenceable(4) %8)
          to label %28 unwind label %48

; <label>:28                                      ; preds = %27
  %29 = load i32, i32* %5, align 4
  %30 = invoke i32 @_ZN11CClause_Gen3posEi(%class.CClause_Gen* %14, i32 %29)
          to label %31 unwind label %48

; <label>:31                                      ; preds = %28
  store i32 %30, i32* %9, align 4
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.18"* %lits, i32* dereferenceable(4) %9)
          to label %32 unwind label %48

; <label>:32                                      ; preds = %31
  %33 = load %class.CSolver*, %class.CSolver** %2, align 8
  %34 = bitcast %class.CSolver* %33 to %class.CDatabase*
  %35 = invoke i32* @_ZNSt6vectorIiSaIiEE5beginEv(%"class.std::vector.18"* %lits)
          to label %36 unwind label %48

; <label>:36                                      ; preds = %32
  %37 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.60", %"class.__gnu_cxx::__normal_iterator.60"* %10, i32 0, i32 0
  store i32* %35, i32** %37, align 8
  %38 = invoke dereferenceable(4) i32* @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEixEl(%"class.__gnu_cxx::__normal_iterator.60"* %10, i64 0)
          to label %39 unwind label %48

; <label>:39                                      ; preds = %36
  %40 = invoke i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.18"* %lits)
          to label %41 unwind label %48

; <label>:41                                      ; preds = %39
  %42 = trunc i64 %40 to i32
  %43 = invoke i32 @_ZN9CDatabase10add_clauseEPii(%class.CDatabase* %34, i32* %38, i32 %42)
          to label %44 unwind label %48

; <label>:44                                      ; preds = %41
  br label %45

; <label>:45                                      ; preds = %44
  %46 = load i32, i32* %i, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %i, align 4
  br label %15

; <label>:48                                      ; preds = %83, %81, %78, %74, %73, %70, %65, %58, %52, %41, %39, %36, %32, %31, %28, %27, %20, %19
  %49 = landingpad { i8*, i32 }
          cleanup
  %50 = extractvalue { i8*, i32 } %49, 0
  store i8* %50, i8** %6, align 8
  %51 = extractvalue { i8*, i32 } %49, 1
  store i32 %51, i32* %7, align 4
  invoke void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.18"* %lits)
          to label %87 unwind label %93

; <label>:52                                      ; preds = %15
  invoke void @_ZNSt6vectorIiSaIiEE5clearEv(%"class.std::vector.18"* %lits)
          to label %53 unwind label %48

; <label>:53                                      ; preds = %52
  store i32 0, i32* %i1, align 4
  br label %54

; <label>:54                                      ; preds = %67, %53
  %55 = load i32, i32* %i1, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %70

; <label>:58                                      ; preds = %54
  %59 = load i32, i32* %i1, align 4
  %60 = sext i32 %59 to i64
  %61 = load i32*, i32** %3, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 %60
  %63 = load i32, i32* %62, align 4
  %64 = invoke i32 @_ZN11CClause_Gen3negEi(%class.CClause_Gen* %14, i32 %63)
          to label %65 unwind label %48

; <label>:65                                      ; preds = %58
  store i32 %64, i32* %11, align 4
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.18"* %lits, i32* dereferenceable(4) %11)
          to label %66 unwind label %48

; <label>:66                                      ; preds = %65
  br label %67

; <label>:67                                      ; preds = %66
  %68 = load i32, i32* %i1, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %i1, align 4
  br label %54

; <label>:70                                      ; preds = %54
  %71 = load i32, i32* %5, align 4
  %72 = invoke i32 @_ZN11CClause_Gen3negEi(%class.CClause_Gen* %14, i32 %71)
          to label %73 unwind label %48

; <label>:73                                      ; preds = %70
  store i32 %72, i32* %12, align 4
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.18"* %lits, i32* dereferenceable(4) %12)
          to label %74 unwind label %48

; <label>:74                                      ; preds = %73
  %75 = load %class.CSolver*, %class.CSolver** %2, align 8
  %76 = bitcast %class.CSolver* %75 to %class.CDatabase*
  %77 = invoke i32* @_ZNSt6vectorIiSaIiEE5beginEv(%"class.std::vector.18"* %lits)
          to label %78 unwind label %48

; <label>:78                                      ; preds = %74
  %79 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.60", %"class.__gnu_cxx::__normal_iterator.60"* %13, i32 0, i32 0
  store i32* %77, i32** %79, align 8
  %80 = invoke dereferenceable(4) i32* @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEixEl(%"class.__gnu_cxx::__normal_iterator.60"* %13, i64 0)
          to label %81 unwind label %48

; <label>:81                                      ; preds = %78
  %82 = invoke i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.18"* %lits)
          to label %83 unwind label %48

; <label>:83                                      ; preds = %81
  %84 = trunc i64 %82 to i32
  %85 = invoke i32 @_ZN9CDatabase10add_clauseEPii(%class.CDatabase* %76, i32* %80, i32 %84)
          to label %86 unwind label %48

; <label>:86                                      ; preds = %83
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.18"* %lits)
  ret void

; <label>:87                                      ; preds = %48
  br label %88

; <label>:88                                      ; preds = %87
  %89 = load i8*, i8** %6, align 8
  %90 = load i32, i32* %7, align 4
  %91 = insertvalue { i8*, i32 } undef, i8* %89, 0
  %92 = insertvalue { i8*, i32 } %91, i32 %90, 1
  resume { i8*, i32 } %92

; <label>:93                                      ; preds = %48
  %94 = landingpad { i8*, i32 }
          catch i8* null
  %95 = extractvalue { i8*, i32 } %94, 0
  call void @__clang_call_terminate(i8* %95) #12
  unreachable
}

; Function Attrs: uwtable
define void @SAT_GenClsNor2(i8* %mng, i32 %a, i32 %b, i32 %o) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %solver = alloca %class.CSolver*, align 8
  %cls_gen = alloca %class.CClause_Gen, align 1
  store i8* %mng, i8** %1, align 8
  store i32 %a, i32* %2, align 4
  store i32 %b, i32* %3, align 4
  store i32 %o, i32* %4, align 4
  %5 = load i8*, i8** %1, align 8
  %6 = bitcast i8* %5 to %class.CSolver*
  store %class.CSolver* %6, %class.CSolver** %solver, align 8
  %7 = load %class.CSolver*, %class.CSolver** %solver, align 8
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %4, align 4
  call void @_ZN11CClause_Gen4nor2ER7CSolveriii(%class.CClause_Gen* %cls_gen, %class.CSolver* dereferenceable(736) %7, i32 %8, i32 %9, i32 %10)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN11CClause_Gen4nor2ER7CSolveriii(%class.CClause_Gen* %this, %class.CSolver* dereferenceable(736) %solver, i32 %a, i32 %b, i32 %o) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %class.CClause_Gen*, align 8
  %2 = alloca %class.CSolver*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %lits = alloca %"class.std::vector.18", align 8
  %6 = alloca i8*
  %7 = alloca i32
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %"class.__gnu_cxx::__normal_iterator.60", align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %"class.__gnu_cxx::__normal_iterator.60", align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %"class.__gnu_cxx::__normal_iterator.60", align 8
  store %class.CClause_Gen* %this, %class.CClause_Gen** %1, align 8
  store %class.CSolver* %solver, %class.CSolver** %2, align 8
  store i32 %a, i32* %3, align 4
  store i32 %b, i32* %4, align 4
  store i32 %o, i32* %5, align 4
  %18 = load %class.CClause_Gen*, %class.CClause_Gen** %1, align 8
  call void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector.18"* %lits)
  invoke void @_ZNSt6vectorIiSaIiEE5clearEv(%"class.std::vector.18"* %lits)
          to label %19 unwind label %86

; <label>:19                                      ; preds = %0
  %20 = load i32, i32* %3, align 4
  %21 = invoke i32 @_ZN11CClause_Gen3negEi(%class.CClause_Gen* %18, i32 %20)
          to label %22 unwind label %86

; <label>:22                                      ; preds = %19
  store i32 %21, i32* %8, align 4
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.18"* %lits, i32* dereferenceable(4) %8)
          to label %23 unwind label %86

; <label>:23                                      ; preds = %22
  %24 = load i32, i32* %5, align 4
  %25 = invoke i32 @_ZN11CClause_Gen3negEi(%class.CClause_Gen* %18, i32 %24)
          to label %26 unwind label %86

; <label>:26                                      ; preds = %23
  store i32 %25, i32* %9, align 4
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.18"* %lits, i32* dereferenceable(4) %9)
          to label %27 unwind label %86

; <label>:27                                      ; preds = %26
  %28 = load %class.CSolver*, %class.CSolver** %2, align 8
  %29 = bitcast %class.CSolver* %28 to %class.CDatabase*
  %30 = invoke i32* @_ZNSt6vectorIiSaIiEE5beginEv(%"class.std::vector.18"* %lits)
          to label %31 unwind label %86

; <label>:31                                      ; preds = %27
  %32 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.60", %"class.__gnu_cxx::__normal_iterator.60"* %10, i32 0, i32 0
  store i32* %30, i32** %32, align 8
  %33 = invoke dereferenceable(4) i32* @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEixEl(%"class.__gnu_cxx::__normal_iterator.60"* %10, i64 0)
          to label %34 unwind label %86

; <label>:34                                      ; preds = %31
  %35 = invoke i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.18"* %lits)
          to label %36 unwind label %86

; <label>:36                                      ; preds = %34
  %37 = trunc i64 %35 to i32
  %38 = invoke i32 @_ZN9CDatabase10add_clauseEPii(%class.CDatabase* %29, i32* %33, i32 %37)
          to label %39 unwind label %86

; <label>:39                                      ; preds = %36
  invoke void @_ZNSt6vectorIiSaIiEE5clearEv(%"class.std::vector.18"* %lits)
          to label %40 unwind label %86

; <label>:40                                      ; preds = %39
  %41 = load i32, i32* %4, align 4
  %42 = invoke i32 @_ZN11CClause_Gen3negEi(%class.CClause_Gen* %18, i32 %41)
          to label %43 unwind label %86

; <label>:43                                      ; preds = %40
  store i32 %42, i32* %11, align 4
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.18"* %lits, i32* dereferenceable(4) %11)
          to label %44 unwind label %86

; <label>:44                                      ; preds = %43
  %45 = load i32, i32* %5, align 4
  %46 = invoke i32 @_ZN11CClause_Gen3negEi(%class.CClause_Gen* %18, i32 %45)
          to label %47 unwind label %86

; <label>:47                                      ; preds = %44
  store i32 %46, i32* %12, align 4
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.18"* %lits, i32* dereferenceable(4) %12)
          to label %48 unwind label %86

; <label>:48                                      ; preds = %47
  %49 = load %class.CSolver*, %class.CSolver** %2, align 8
  %50 = bitcast %class.CSolver* %49 to %class.CDatabase*
  %51 = invoke i32* @_ZNSt6vectorIiSaIiEE5beginEv(%"class.std::vector.18"* %lits)
          to label %52 unwind label %86

; <label>:52                                      ; preds = %48
  %53 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.60", %"class.__gnu_cxx::__normal_iterator.60"* %13, i32 0, i32 0
  store i32* %51, i32** %53, align 8
  %54 = invoke dereferenceable(4) i32* @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEixEl(%"class.__gnu_cxx::__normal_iterator.60"* %13, i64 0)
          to label %55 unwind label %86

; <label>:55                                      ; preds = %52
  %56 = invoke i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.18"* %lits)
          to label %57 unwind label %86

; <label>:57                                      ; preds = %55
  %58 = trunc i64 %56 to i32
  %59 = invoke i32 @_ZN9CDatabase10add_clauseEPii(%class.CDatabase* %50, i32* %54, i32 %58)
          to label %60 unwind label %86

; <label>:60                                      ; preds = %57
  invoke void @_ZNSt6vectorIiSaIiEE5clearEv(%"class.std::vector.18"* %lits)
          to label %61 unwind label %86

; <label>:61                                      ; preds = %60
  %62 = load i32, i32* %3, align 4
  %63 = invoke i32 @_ZN11CClause_Gen3posEi(%class.CClause_Gen* %18, i32 %62)
          to label %64 unwind label %86

; <label>:64                                      ; preds = %61
  store i32 %63, i32* %14, align 4
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.18"* %lits, i32* dereferenceable(4) %14)
          to label %65 unwind label %86

; <label>:65                                      ; preds = %64
  %66 = load i32, i32* %4, align 4
  %67 = invoke i32 @_ZN11CClause_Gen3posEi(%class.CClause_Gen* %18, i32 %66)
          to label %68 unwind label %86

; <label>:68                                      ; preds = %65
  store i32 %67, i32* %15, align 4
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.18"* %lits, i32* dereferenceable(4) %15)
          to label %69 unwind label %86

; <label>:69                                      ; preds = %68
  %70 = load i32, i32* %5, align 4
  %71 = invoke i32 @_ZN11CClause_Gen3posEi(%class.CClause_Gen* %18, i32 %70)
          to label %72 unwind label %86

; <label>:72                                      ; preds = %69
  store i32 %71, i32* %16, align 4
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.18"* %lits, i32* dereferenceable(4) %16)
          to label %73 unwind label %86

; <label>:73                                      ; preds = %72
  %74 = load %class.CSolver*, %class.CSolver** %2, align 8
  %75 = bitcast %class.CSolver* %74 to %class.CDatabase*
  %76 = invoke i32* @_ZNSt6vectorIiSaIiEE5beginEv(%"class.std::vector.18"* %lits)
          to label %77 unwind label %86

; <label>:77                                      ; preds = %73
  %78 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.60", %"class.__gnu_cxx::__normal_iterator.60"* %17, i32 0, i32 0
  store i32* %76, i32** %78, align 8
  %79 = invoke dereferenceable(4) i32* @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEixEl(%"class.__gnu_cxx::__normal_iterator.60"* %17, i64 0)
          to label %80 unwind label %86

; <label>:80                                      ; preds = %77
  %81 = invoke i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.18"* %lits)
          to label %82 unwind label %86

; <label>:82                                      ; preds = %80
  %83 = trunc i64 %81 to i32
  %84 = invoke i32 @_ZN9CDatabase10add_clauseEPii(%class.CDatabase* %75, i32* %79, i32 %83)
          to label %85 unwind label %86

; <label>:85                                      ; preds = %82
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.18"* %lits)
  ret void

; <label>:86                                      ; preds = %82, %80, %77, %73, %72, %69, %68, %65, %64, %61, %60, %57, %55, %52, %48, %47, %44, %43, %40, %39, %36, %34, %31, %27, %26, %23, %22, %19, %0
  %87 = landingpad { i8*, i32 }
          cleanup
  %88 = extractvalue { i8*, i32 } %87, 0
  store i8* %88, i8** %6, align 8
  %89 = extractvalue { i8*, i32 } %87, 1
  store i32 %89, i32* %7, align 4
  invoke void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.18"* %lits)
          to label %90 unwind label %96

; <label>:90                                      ; preds = %86
  br label %91

; <label>:91                                      ; preds = %90
  %92 = load i8*, i8** %6, align 8
  %93 = load i32, i32* %7, align 4
  %94 = insertvalue { i8*, i32 } undef, i8* %92, 0
  %95 = insertvalue { i8*, i32 } %94, i32 %93, 1
  resume { i8*, i32 } %95

; <label>:96                                      ; preds = %86
  %97 = landingpad { i8*, i32 }
          catch i8* null
  %98 = extractvalue { i8*, i32 } %97, 0
  call void @__clang_call_terminate(i8* %98) #12
  unreachable
}

; Function Attrs: uwtable
define void @SAT_GenClsNorN(i8* %mng, i32* %inputs, i32 %num_inputs, i32 %o) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %solver = alloca %class.CSolver*, align 8
  %cls_gen = alloca %class.CClause_Gen, align 1
  store i8* %mng, i8** %1, align 8
  store i32* %inputs, i32** %2, align 8
  store i32 %num_inputs, i32* %3, align 4
  store i32 %o, i32* %4, align 4
  %5 = load i8*, i8** %1, align 8
  %6 = bitcast i8* %5 to %class.CSolver*
  store %class.CSolver* %6, %class.CSolver** %solver, align 8
  %7 = load %class.CSolver*, %class.CSolver** %solver, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %4, align 4
  call void @_ZN11CClause_Gen5nor_nER7CSolverPiii(%class.CClause_Gen* %cls_gen, %class.CSolver* dereferenceable(736) %7, i32* %8, i32 %9, i32 %10)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN11CClause_Gen5nor_nER7CSolverPiii(%class.CClause_Gen* %this, %class.CSolver* dereferenceable(736) %solver, i32* %inputs, i32 %num_input, i32 %o) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %class.CClause_Gen*, align 8
  %2 = alloca %class.CSolver*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %lits = alloca %"class.std::vector.18", align 8
  %i = alloca i32, align 4
  %6 = alloca i8*
  %7 = alloca i32
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %"class.__gnu_cxx::__normal_iterator.60", align 8
  %i1 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %"class.__gnu_cxx::__normal_iterator.60", align 8
  store %class.CClause_Gen* %this, %class.CClause_Gen** %1, align 8
  store %class.CSolver* %solver, %class.CSolver** %2, align 8
  store i32* %inputs, i32** %3, align 8
  store i32 %num_input, i32* %4, align 4
  store i32 %o, i32* %5, align 4
  %14 = load %class.CClause_Gen*, %class.CClause_Gen** %1, align 8
  call void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector.18"* %lits)
  store i32 0, i32* %i, align 4
  br label %15

; <label>:15                                      ; preds = %45, %0
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %52

; <label>:19                                      ; preds = %15
  invoke void @_ZNSt6vectorIiSaIiEE5clearEv(%"class.std::vector.18"* %lits)
          to label %20 unwind label %48

; <label>:20                                      ; preds = %19
  %21 = load i32, i32* %i, align 4
  %22 = sext i32 %21 to i64
  %23 = load i32*, i32** %3, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 %22
  %25 = load i32, i32* %24, align 4
  %26 = invoke i32 @_ZN11CClause_Gen3negEi(%class.CClause_Gen* %14, i32 %25)
          to label %27 unwind label %48

; <label>:27                                      ; preds = %20
  store i32 %26, i32* %8, align 4
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.18"* %lits, i32* dereferenceable(4) %8)
          to label %28 unwind label %48

; <label>:28                                      ; preds = %27
  %29 = load i32, i32* %5, align 4
  %30 = invoke i32 @_ZN11CClause_Gen3negEi(%class.CClause_Gen* %14, i32 %29)
          to label %31 unwind label %48

; <label>:31                                      ; preds = %28
  store i32 %30, i32* %9, align 4
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.18"* %lits, i32* dereferenceable(4) %9)
          to label %32 unwind label %48

; <label>:32                                      ; preds = %31
  %33 = load %class.CSolver*, %class.CSolver** %2, align 8
  %34 = bitcast %class.CSolver* %33 to %class.CDatabase*
  %35 = invoke i32* @_ZNSt6vectorIiSaIiEE5beginEv(%"class.std::vector.18"* %lits)
          to label %36 unwind label %48

; <label>:36                                      ; preds = %32
  %37 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.60", %"class.__gnu_cxx::__normal_iterator.60"* %10, i32 0, i32 0
  store i32* %35, i32** %37, align 8
  %38 = invoke dereferenceable(4) i32* @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEixEl(%"class.__gnu_cxx::__normal_iterator.60"* %10, i64 0)
          to label %39 unwind label %48

; <label>:39                                      ; preds = %36
  %40 = invoke i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.18"* %lits)
          to label %41 unwind label %48

; <label>:41                                      ; preds = %39
  %42 = trunc i64 %40 to i32
  %43 = invoke i32 @_ZN9CDatabase10add_clauseEPii(%class.CDatabase* %34, i32* %38, i32 %42)
          to label %44 unwind label %48

; <label>:44                                      ; preds = %41
  br label %45

; <label>:45                                      ; preds = %44
  %46 = load i32, i32* %i, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %i, align 4
  br label %15

; <label>:48                                      ; preds = %83, %81, %78, %74, %73, %70, %65, %58, %52, %41, %39, %36, %32, %31, %28, %27, %20, %19
  %49 = landingpad { i8*, i32 }
          cleanup
  %50 = extractvalue { i8*, i32 } %49, 0
  store i8* %50, i8** %6, align 8
  %51 = extractvalue { i8*, i32 } %49, 1
  store i32 %51, i32* %7, align 4
  invoke void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.18"* %lits)
          to label %87 unwind label %93

; <label>:52                                      ; preds = %15
  invoke void @_ZNSt6vectorIiSaIiEE5clearEv(%"class.std::vector.18"* %lits)
          to label %53 unwind label %48

; <label>:53                                      ; preds = %52
  store i32 0, i32* %i1, align 4
  br label %54

; <label>:54                                      ; preds = %67, %53
  %55 = load i32, i32* %i1, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %70

; <label>:58                                      ; preds = %54
  %59 = load i32, i32* %i1, align 4
  %60 = sext i32 %59 to i64
  %61 = load i32*, i32** %3, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 %60
  %63 = load i32, i32* %62, align 4
  %64 = invoke i32 @_ZN11CClause_Gen3posEi(%class.CClause_Gen* %14, i32 %63)
          to label %65 unwind label %48

; <label>:65                                      ; preds = %58
  store i32 %64, i32* %11, align 4
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.18"* %lits, i32* dereferenceable(4) %11)
          to label %66 unwind label %48

; <label>:66                                      ; preds = %65
  br label %67

; <label>:67                                      ; preds = %66
  %68 = load i32, i32* %i1, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %i1, align 4
  br label %54

; <label>:70                                      ; preds = %54
  %71 = load i32, i32* %5, align 4
  %72 = invoke i32 @_ZN11CClause_Gen3posEi(%class.CClause_Gen* %14, i32 %71)
          to label %73 unwind label %48

; <label>:73                                      ; preds = %70
  store i32 %72, i32* %12, align 4
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.18"* %lits, i32* dereferenceable(4) %12)
          to label %74 unwind label %48

; <label>:74                                      ; preds = %73
  %75 = load %class.CSolver*, %class.CSolver** %2, align 8
  %76 = bitcast %class.CSolver* %75 to %class.CDatabase*
  %77 = invoke i32* @_ZNSt6vectorIiSaIiEE5beginEv(%"class.std::vector.18"* %lits)
          to label %78 unwind label %48

; <label>:78                                      ; preds = %74
  %79 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.60", %"class.__gnu_cxx::__normal_iterator.60"* %13, i32 0, i32 0
  store i32* %77, i32** %79, align 8
  %80 = invoke dereferenceable(4) i32* @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEixEl(%"class.__gnu_cxx::__normal_iterator.60"* %13, i64 0)
          to label %81 unwind label %48

; <label>:81                                      ; preds = %78
  %82 = invoke i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.18"* %lits)
          to label %83 unwind label %48

; <label>:83                                      ; preds = %81
  %84 = trunc i64 %82 to i32
  %85 = invoke i32 @_ZN9CDatabase10add_clauseEPii(%class.CDatabase* %76, i32* %80, i32 %84)
          to label %86 unwind label %48

; <label>:86                                      ; preds = %83
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.18"* %lits)
  ret void

; <label>:87                                      ; preds = %48
  br label %88

; <label>:88                                      ; preds = %87
  %89 = load i8*, i8** %6, align 8
  %90 = load i32, i32* %7, align 4
  %91 = insertvalue { i8*, i32 } undef, i8* %89, 0
  %92 = insertvalue { i8*, i32 } %91, i32 %90, 1
  resume { i8*, i32 } %92

; <label>:93                                      ; preds = %48
  %94 = landingpad { i8*, i32 }
          catch i8* null
  %95 = extractvalue { i8*, i32 } %94, 0
  call void @__clang_call_terminate(i8* %95) #12
  unreachable
}

; Function Attrs: uwtable
define void @SAT_GenClsXor(i8* %mng, i32 %a, i32 %b, i32 %o) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %solver = alloca %class.CSolver*, align 8
  %cls_gen = alloca %class.CClause_Gen, align 1
  store i8* %mng, i8** %1, align 8
  store i32 %a, i32* %2, align 4
  store i32 %b, i32* %3, align 4
  store i32 %o, i32* %4, align 4
  %5 = load i8*, i8** %1, align 8
  %6 = bitcast i8* %5 to %class.CSolver*
  store %class.CSolver* %6, %class.CSolver** %solver, align 8
  %7 = load %class.CSolver*, %class.CSolver** %solver, align 8
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %4, align 4
  call void @_ZN11CClause_Gen4xor2ER7CSolveriii(%class.CClause_Gen* %cls_gen, %class.CSolver* dereferenceable(736) %7, i32 %8, i32 %9, i32 %10)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN11CClause_Gen4xor2ER7CSolveriii(%class.CClause_Gen* %this, %class.CSolver* dereferenceable(736) %solver, i32 %a, i32 %b, i32 %o) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %class.CClause_Gen*, align 8
  %2 = alloca %class.CSolver*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %lits = alloca %"class.std::vector.18", align 8
  %6 = alloca i8*
  %7 = alloca i32
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %"class.__gnu_cxx::__normal_iterator.60", align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %"class.__gnu_cxx::__normal_iterator.60", align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %"class.__gnu_cxx::__normal_iterator.60", align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %"class.__gnu_cxx::__normal_iterator.60", align 8
  store %class.CClause_Gen* %this, %class.CClause_Gen** %1, align 8
  store %class.CSolver* %solver, %class.CSolver** %2, align 8
  store i32 %a, i32* %3, align 4
  store i32 %b, i32* %4, align 4
  store i32 %o, i32* %5, align 4
  %24 = load %class.CClause_Gen*, %class.CClause_Gen** %1, align 8
  call void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector.18"* %lits)
  invoke void @_ZNSt6vectorIiSaIiEE5clearEv(%"class.std::vector.18"* %lits)
          to label %25 unwind label %125

; <label>:25                                      ; preds = %0
  %26 = load i32, i32* %3, align 4
  %27 = invoke i32 @_ZN11CClause_Gen3negEi(%class.CClause_Gen* %24, i32 %26)
          to label %28 unwind label %125

; <label>:28                                      ; preds = %25
  store i32 %27, i32* %8, align 4
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.18"* %lits, i32* dereferenceable(4) %8)
          to label %29 unwind label %125

; <label>:29                                      ; preds = %28
  %30 = load i32, i32* %4, align 4
  %31 = invoke i32 @_ZN11CClause_Gen3negEi(%class.CClause_Gen* %24, i32 %30)
          to label %32 unwind label %125

; <label>:32                                      ; preds = %29
  store i32 %31, i32* %9, align 4
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.18"* %lits, i32* dereferenceable(4) %9)
          to label %33 unwind label %125

; <label>:33                                      ; preds = %32
  %34 = load i32, i32* %5, align 4
  %35 = invoke i32 @_ZN11CClause_Gen3negEi(%class.CClause_Gen* %24, i32 %34)
          to label %36 unwind label %125

; <label>:36                                      ; preds = %33
  store i32 %35, i32* %10, align 4
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.18"* %lits, i32* dereferenceable(4) %10)
          to label %37 unwind label %125

; <label>:37                                      ; preds = %36
  %38 = load %class.CSolver*, %class.CSolver** %2, align 8
  %39 = bitcast %class.CSolver* %38 to %class.CDatabase*
  %40 = invoke i32* @_ZNSt6vectorIiSaIiEE5beginEv(%"class.std::vector.18"* %lits)
          to label %41 unwind label %125

; <label>:41                                      ; preds = %37
  %42 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.60", %"class.__gnu_cxx::__normal_iterator.60"* %11, i32 0, i32 0
  store i32* %40, i32** %42, align 8
  %43 = invoke dereferenceable(4) i32* @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEixEl(%"class.__gnu_cxx::__normal_iterator.60"* %11, i64 0)
          to label %44 unwind label %125

; <label>:44                                      ; preds = %41
  %45 = invoke i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.18"* %lits)
          to label %46 unwind label %125

; <label>:46                                      ; preds = %44
  %47 = trunc i64 %45 to i32
  %48 = invoke i32 @_ZN9CDatabase10add_clauseEPii(%class.CDatabase* %39, i32* %43, i32 %47)
          to label %49 unwind label %125

; <label>:49                                      ; preds = %46
  invoke void @_ZNSt6vectorIiSaIiEE5clearEv(%"class.std::vector.18"* %lits)
          to label %50 unwind label %125

; <label>:50                                      ; preds = %49
  %51 = load i32, i32* %3, align 4
  %52 = invoke i32 @_ZN11CClause_Gen3posEi(%class.CClause_Gen* %24, i32 %51)
          to label %53 unwind label %125

; <label>:53                                      ; preds = %50
  store i32 %52, i32* %12, align 4
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.18"* %lits, i32* dereferenceable(4) %12)
          to label %54 unwind label %125

; <label>:54                                      ; preds = %53
  %55 = load i32, i32* %4, align 4
  %56 = invoke i32 @_ZN11CClause_Gen3posEi(%class.CClause_Gen* %24, i32 %55)
          to label %57 unwind label %125

; <label>:57                                      ; preds = %54
  store i32 %56, i32* %13, align 4
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.18"* %lits, i32* dereferenceable(4) %13)
          to label %58 unwind label %125

; <label>:58                                      ; preds = %57
  %59 = load i32, i32* %5, align 4
  %60 = invoke i32 @_ZN11CClause_Gen3negEi(%class.CClause_Gen* %24, i32 %59)
          to label %61 unwind label %125

; <label>:61                                      ; preds = %58
  store i32 %60, i32* %14, align 4
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.18"* %lits, i32* dereferenceable(4) %14)
          to label %62 unwind label %125

; <label>:62                                      ; preds = %61
  %63 = load %class.CSolver*, %class.CSolver** %2, align 8
  %64 = bitcast %class.CSolver* %63 to %class.CDatabase*
  %65 = invoke i32* @_ZNSt6vectorIiSaIiEE5beginEv(%"class.std::vector.18"* %lits)
          to label %66 unwind label %125

; <label>:66                                      ; preds = %62
  %67 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.60", %"class.__gnu_cxx::__normal_iterator.60"* %15, i32 0, i32 0
  store i32* %65, i32** %67, align 8
  %68 = invoke dereferenceable(4) i32* @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEixEl(%"class.__gnu_cxx::__normal_iterator.60"* %15, i64 0)
          to label %69 unwind label %125

; <label>:69                                      ; preds = %66
  %70 = invoke i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.18"* %lits)
          to label %71 unwind label %125

; <label>:71                                      ; preds = %69
  %72 = trunc i64 %70 to i32
  %73 = invoke i32 @_ZN9CDatabase10add_clauseEPii(%class.CDatabase* %64, i32* %68, i32 %72)
          to label %74 unwind label %125

; <label>:74                                      ; preds = %71
  invoke void @_ZNSt6vectorIiSaIiEE5clearEv(%"class.std::vector.18"* %lits)
          to label %75 unwind label %125

; <label>:75                                      ; preds = %74
  %76 = load i32, i32* %3, align 4
  %77 = invoke i32 @_ZN11CClause_Gen3negEi(%class.CClause_Gen* %24, i32 %76)
          to label %78 unwind label %125

; <label>:78                                      ; preds = %75
  store i32 %77, i32* %16, align 4
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.18"* %lits, i32* dereferenceable(4) %16)
          to label %79 unwind label %125

; <label>:79                                      ; preds = %78
  %80 = load i32, i32* %4, align 4
  %81 = invoke i32 @_ZN11CClause_Gen3posEi(%class.CClause_Gen* %24, i32 %80)
          to label %82 unwind label %125

; <label>:82                                      ; preds = %79
  store i32 %81, i32* %17, align 4
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.18"* %lits, i32* dereferenceable(4) %17)
          to label %83 unwind label %125

; <label>:83                                      ; preds = %82
  %84 = load i32, i32* %5, align 4
  %85 = invoke i32 @_ZN11CClause_Gen3posEi(%class.CClause_Gen* %24, i32 %84)
          to label %86 unwind label %125

; <label>:86                                      ; preds = %83
  store i32 %85, i32* %18, align 4
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.18"* %lits, i32* dereferenceable(4) %18)
          to label %87 unwind label %125

; <label>:87                                      ; preds = %86
  %88 = load %class.CSolver*, %class.CSolver** %2, align 8
  %89 = bitcast %class.CSolver* %88 to %class.CDatabase*
  %90 = invoke i32* @_ZNSt6vectorIiSaIiEE5beginEv(%"class.std::vector.18"* %lits)
          to label %91 unwind label %125

; <label>:91                                      ; preds = %87
  %92 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.60", %"class.__gnu_cxx::__normal_iterator.60"* %19, i32 0, i32 0
  store i32* %90, i32** %92, align 8
  %93 = invoke dereferenceable(4) i32* @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEixEl(%"class.__gnu_cxx::__normal_iterator.60"* %19, i64 0)
          to label %94 unwind label %125

; <label>:94                                      ; preds = %91
  %95 = invoke i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.18"* %lits)
          to label %96 unwind label %125

; <label>:96                                      ; preds = %94
  %97 = trunc i64 %95 to i32
  %98 = invoke i32 @_ZN9CDatabase10add_clauseEPii(%class.CDatabase* %89, i32* %93, i32 %97)
          to label %99 unwind label %125

; <label>:99                                      ; preds = %96
  invoke void @_ZNSt6vectorIiSaIiEE5clearEv(%"class.std::vector.18"* %lits)
          to label %100 unwind label %125

; <label>:100                                     ; preds = %99
  %101 = load i32, i32* %3, align 4
  %102 = invoke i32 @_ZN11CClause_Gen3posEi(%class.CClause_Gen* %24, i32 %101)
          to label %103 unwind label %125

; <label>:103                                     ; preds = %100
  store i32 %102, i32* %20, align 4
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.18"* %lits, i32* dereferenceable(4) %20)
          to label %104 unwind label %125

; <label>:104                                     ; preds = %103
  %105 = load i32, i32* %4, align 4
  %106 = invoke i32 @_ZN11CClause_Gen3negEi(%class.CClause_Gen* %24, i32 %105)
          to label %107 unwind label %125

; <label>:107                                     ; preds = %104
  store i32 %106, i32* %21, align 4
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.18"* %lits, i32* dereferenceable(4) %21)
          to label %108 unwind label %125

; <label>:108                                     ; preds = %107
  %109 = load i32, i32* %5, align 4
  %110 = invoke i32 @_ZN11CClause_Gen3posEi(%class.CClause_Gen* %24, i32 %109)
          to label %111 unwind label %125

; <label>:111                                     ; preds = %108
  store i32 %110, i32* %22, align 4
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.18"* %lits, i32* dereferenceable(4) %22)
          to label %112 unwind label %125

; <label>:112                                     ; preds = %111
  %113 = load %class.CSolver*, %class.CSolver** %2, align 8
  %114 = bitcast %class.CSolver* %113 to %class.CDatabase*
  %115 = invoke i32* @_ZNSt6vectorIiSaIiEE5beginEv(%"class.std::vector.18"* %lits)
          to label %116 unwind label %125

; <label>:116                                     ; preds = %112
  %117 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.60", %"class.__gnu_cxx::__normal_iterator.60"* %23, i32 0, i32 0
  store i32* %115, i32** %117, align 8
  %118 = invoke dereferenceable(4) i32* @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEixEl(%"class.__gnu_cxx::__normal_iterator.60"* %23, i64 0)
          to label %119 unwind label %125

; <label>:119                                     ; preds = %116
  %120 = invoke i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.18"* %lits)
          to label %121 unwind label %125

; <label>:121                                     ; preds = %119
  %122 = trunc i64 %120 to i32
  %123 = invoke i32 @_ZN9CDatabase10add_clauseEPii(%class.CDatabase* %114, i32* %118, i32 %122)
          to label %124 unwind label %125

; <label>:124                                     ; preds = %121
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.18"* %lits)
  ret void

; <label>:125                                     ; preds = %121, %119, %116, %112, %111, %108, %107, %104, %103, %100, %99, %96, %94, %91, %87, %86, %83, %82, %79, %78, %75, %74, %71, %69, %66, %62, %61, %58, %57, %54, %53, %50, %49, %46, %44, %41, %37, %36, %33, %32, %29, %28, %25, %0
  %126 = landingpad { i8*, i32 }
          cleanup
  %127 = extractvalue { i8*, i32 } %126, 0
  store i8* %127, i8** %6, align 8
  %128 = extractvalue { i8*, i32 } %126, 1
  store i32 %128, i32* %7, align 4
  invoke void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.18"* %lits)
          to label %129 unwind label %135

; <label>:129                                     ; preds = %125
  br label %130

; <label>:130                                     ; preds = %129
  %131 = load i8*, i8** %6, align 8
  %132 = load i32, i32* %7, align 4
  %133 = insertvalue { i8*, i32 } undef, i8* %131, 0
  %134 = insertvalue { i8*, i32 } %133, i32 %132, 1
  resume { i8*, i32 } %134

; <label>:135                                     ; preds = %125
  %136 = landingpad { i8*, i32 }
          catch i8* null
  %137 = extractvalue { i8*, i32 } %136, 0
  call void @__clang_call_terminate(i8* %137) #12
  unreachable
}

; Function Attrs: uwtable
define void @SAT_GenClsNot(i8* %mng, i32 %a, i32 %o) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %solver = alloca %class.CSolver*, align 8
  %cls_gen = alloca %class.CClause_Gen, align 1
  store i8* %mng, i8** %1, align 8
  store i32 %a, i32* %2, align 4
  store i32 %o, i32* %3, align 4
  %4 = load i8*, i8** %1, align 8
  %5 = bitcast i8* %4 to %class.CSolver*
  store %class.CSolver* %5, %class.CSolver** %solver, align 8
  %6 = load %class.CSolver*, %class.CSolver** %solver, align 8
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* %3, align 4
  call void @_ZN11CClause_Gen4not1ER7CSolverii(%class.CClause_Gen* %cls_gen, %class.CSolver* dereferenceable(736) %6, i32 %7, i32 %8)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN11CClause_Gen4not1ER7CSolverii(%class.CClause_Gen* %this, %class.CSolver* dereferenceable(736) %solver, i32 %a, i32 %o) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %class.CClause_Gen*, align 8
  %2 = alloca %class.CSolver*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %lits = alloca %"class.std::vector.18", align 8
  %5 = alloca i8*
  %6 = alloca i32
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %"class.__gnu_cxx::__normal_iterator.60", align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %"class.__gnu_cxx::__normal_iterator.60", align 8
  store %class.CClause_Gen* %this, %class.CClause_Gen** %1, align 8
  store %class.CSolver* %solver, %class.CSolver** %2, align 8
  store i32 %a, i32* %3, align 4
  store i32 %o, i32* %4, align 4
  %13 = load %class.CClause_Gen*, %class.CClause_Gen** %1, align 8
  call void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector.18"* %lits)
  invoke void @_ZNSt6vectorIiSaIiEE5clearEv(%"class.std::vector.18"* %lits)
          to label %14 unwind label %56

; <label>:14                                      ; preds = %0
  %15 = load i32, i32* %3, align 4
  %16 = invoke i32 @_ZN11CClause_Gen3negEi(%class.CClause_Gen* %13, i32 %15)
          to label %17 unwind label %56

; <label>:17                                      ; preds = %14
  store i32 %16, i32* %7, align 4
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.18"* %lits, i32* dereferenceable(4) %7)
          to label %18 unwind label %56

; <label>:18                                      ; preds = %17
  %19 = load i32, i32* %4, align 4
  %20 = invoke i32 @_ZN11CClause_Gen3negEi(%class.CClause_Gen* %13, i32 %19)
          to label %21 unwind label %56

; <label>:21                                      ; preds = %18
  store i32 %20, i32* %8, align 4
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.18"* %lits, i32* dereferenceable(4) %8)
          to label %22 unwind label %56

; <label>:22                                      ; preds = %21
  %23 = load %class.CSolver*, %class.CSolver** %2, align 8
  %24 = bitcast %class.CSolver* %23 to %class.CDatabase*
  %25 = invoke i32* @_ZNSt6vectorIiSaIiEE5beginEv(%"class.std::vector.18"* %lits)
          to label %26 unwind label %56

; <label>:26                                      ; preds = %22
  %27 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.60", %"class.__gnu_cxx::__normal_iterator.60"* %9, i32 0, i32 0
  store i32* %25, i32** %27, align 8
  %28 = invoke dereferenceable(4) i32* @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEixEl(%"class.__gnu_cxx::__normal_iterator.60"* %9, i64 0)
          to label %29 unwind label %56

; <label>:29                                      ; preds = %26
  %30 = invoke i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.18"* %lits)
          to label %31 unwind label %56

; <label>:31                                      ; preds = %29
  %32 = trunc i64 %30 to i32
  %33 = invoke i32 @_ZN9CDatabase10add_clauseEPii(%class.CDatabase* %24, i32* %28, i32 %32)
          to label %34 unwind label %56

; <label>:34                                      ; preds = %31
  invoke void @_ZNSt6vectorIiSaIiEE5clearEv(%"class.std::vector.18"* %lits)
          to label %35 unwind label %56

; <label>:35                                      ; preds = %34
  %36 = load i32, i32* %3, align 4
  %37 = invoke i32 @_ZN11CClause_Gen3posEi(%class.CClause_Gen* %13, i32 %36)
          to label %38 unwind label %56

; <label>:38                                      ; preds = %35
  store i32 %37, i32* %10, align 4
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.18"* %lits, i32* dereferenceable(4) %10)
          to label %39 unwind label %56

; <label>:39                                      ; preds = %38
  %40 = load i32, i32* %4, align 4
  %41 = invoke i32 @_ZN11CClause_Gen3posEi(%class.CClause_Gen* %13, i32 %40)
          to label %42 unwind label %56

; <label>:42                                      ; preds = %39
  store i32 %41, i32* %11, align 4
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.18"* %lits, i32* dereferenceable(4) %11)
          to label %43 unwind label %56

; <label>:43                                      ; preds = %42
  %44 = load %class.CSolver*, %class.CSolver** %2, align 8
  %45 = bitcast %class.CSolver* %44 to %class.CDatabase*
  %46 = invoke i32* @_ZNSt6vectorIiSaIiEE5beginEv(%"class.std::vector.18"* %lits)
          to label %47 unwind label %56

; <label>:47                                      ; preds = %43
  %48 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.60", %"class.__gnu_cxx::__normal_iterator.60"* %12, i32 0, i32 0
  store i32* %46, i32** %48, align 8
  %49 = invoke dereferenceable(4) i32* @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEixEl(%"class.__gnu_cxx::__normal_iterator.60"* %12, i64 0)
          to label %50 unwind label %56

; <label>:50                                      ; preds = %47
  %51 = invoke i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.18"* %lits)
          to label %52 unwind label %56

; <label>:52                                      ; preds = %50
  %53 = trunc i64 %51 to i32
  %54 = invoke i32 @_ZN9CDatabase10add_clauseEPii(%class.CDatabase* %45, i32* %49, i32 %53)
          to label %55 unwind label %56

; <label>:55                                      ; preds = %52
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.18"* %lits)
  ret void

; <label>:56                                      ; preds = %52, %50, %47, %43, %42, %39, %38, %35, %34, %31, %29, %26, %22, %21, %18, %17, %14, %0
  %57 = landingpad { i8*, i32 }
          cleanup
  %58 = extractvalue { i8*, i32 } %57, 0
  store i8* %58, i8** %5, align 8
  %59 = extractvalue { i8*, i32 } %57, 1
  store i32 %59, i32* %6, align 4
  invoke void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.18"* %lits)
          to label %60 unwind label %66

; <label>:60                                      ; preds = %56
  br label %61

; <label>:61                                      ; preds = %60
  %62 = load i8*, i8** %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = insertvalue { i8*, i32 } undef, i8* %62, 0
  %65 = insertvalue { i8*, i32 } %64, i32 %63, 1
  resume { i8*, i32 } %65

; <label>:66                                      ; preds = %56
  %67 = landingpad { i8*, i32 }
          catch i8* null
  %68 = extractvalue { i8*, i32 } %67, 0
  call void @__clang_call_terminate(i8* %68) #12
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorI9CVariableSaIS0_EE6resizeEmS0_(%"class.std::vector"* %this, i64 %__new_size, %class.CVariable* %__x) #0 comdat align 2 {
  %1 = alloca %"class.std::vector"*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 8
  store i64 %__new_size, i64* %2, align 8
  %4 = load %"class.std::vector"*, %"class.std::vector"** %1, align 8
  %5 = load i64, i64* %2, align 8
  %6 = call i64 @_ZNKSt6vectorI9CVariableSaIS0_EE4sizeEv(%"class.std::vector"* %4)
  %7 = icmp ugt i64 %5, %6
  br i1 %7, label %8, label %16

; <label>:8                                       ; preds = %0
  %9 = call %class.CVariable* @_ZNSt6vectorI9CVariableSaIS0_EE3endEv(%"class.std::vector"* %4)
  %10 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %3, i32 0, i32 0
  store %class.CVariable* %9, %class.CVariable** %10, align 8
  %11 = load i64, i64* %2, align 8
  %12 = call i64 @_ZNKSt6vectorI9CVariableSaIS0_EE4sizeEv(%"class.std::vector"* %4)
  %13 = sub i64 %11, %12
  %14 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %3, i32 0, i32 0
  %15 = load %class.CVariable*, %class.CVariable** %14, align 8
  call void @_ZNSt6vectorI9CVariableSaIS0_EE6insertEN9__gnu_cxx17__normal_iteratorIPS0_S2_EEmRKS0_(%"class.std::vector"* %4, %class.CVariable* %15, i64 %13, %class.CVariable* dereferenceable(80) %__x)
  br label %28

; <label>:16                                      ; preds = %0
  %17 = load i64, i64* %2, align 8
  %18 = call i64 @_ZNKSt6vectorI9CVariableSaIS0_EE4sizeEv(%"class.std::vector"* %4)
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %27

; <label>:20                                      ; preds = %16
  %21 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*
  %22 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %21, i32 0, i32 0
  %23 = getelementptr inbounds %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl", %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl"* %22, i32 0, i32 0
  %24 = load %class.CVariable*, %class.CVariable** %23, align 8
  %25 = load i64, i64* %2, align 8
  %26 = getelementptr inbounds %class.CVariable, %class.CVariable* %24, i64 %25
  call void @_ZNSt6vectorI9CVariableSaIS0_EE15_M_erase_at_endEPS0_(%"class.std::vector"* %4, %class.CVariable* %26)
  br label %27

; <label>:27                                      ; preds = %20, %16
  br label %28

; <label>:28                                      ; preds = %27, %8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN9CVariableC2Ev(%class.CVariable* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %class.CVariable*, align 8
  %2 = alloca i8*
  %3 = alloca i32
  store %class.CVariable* %this, %class.CVariable** %1, align 8
  %4 = load %class.CVariable*, %class.CVariable** %1, align 8
  %5 = getelementptr inbounds %class.CVariable, %class.CVariable* %4, i32 0, i32 3
  %6 = getelementptr inbounds [2 x %"class.std::vector.0"], [2 x %"class.std::vector.0"]* %5, i32 0, i32 0
  %7 = getelementptr inbounds %"class.std::vector.0", %"class.std::vector.0"* %6, i64 2
  br label %8

; <label>:8                                       ; preds = %10, %0
  %9 = phi %"class.std::vector.0"* [ %6, %0 ], [ %11, %10 ]
  invoke void @_ZNSt6vectorIP15CLitPoolElementSaIS1_EEC2Ev(%"class.std::vector.0"* %9)
          to label %10 unwind label %35

; <label>:10                                      ; preds = %8
  %11 = getelementptr inbounds %"class.std::vector.0", %"class.std::vector.0"* %9, i64 1
  %12 = icmp eq %"class.std::vector.0"* %11, %7
  br i1 %12, label %13, label %8

; <label>:13                                      ; preds = %10
  %14 = getelementptr inbounds %class.CVariable, %class.CVariable* %4, i32 0, i32 1
  store i16 -1, i16* %14, align 4
  %15 = bitcast %class.CVariable* %4 to i32*
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, 7
  %18 = or i32 %17, -8
  store i32 %18, i32* %15, align 8
  %19 = getelementptr inbounds %class.CVariable, %class.CVariable* %4, i32 0, i32 2
  store i16 -1, i16* %19, align 2
  %20 = bitcast %class.CVariable* %4 to i32*
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %21, -7
  %23 = or i32 %22, 6
  store i32 %23, i32* %20, align 8
  %24 = bitcast %class.CVariable* %4 to i32*
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, -2
  store i32 %26, i32* %24, align 8
  %27 = getelementptr inbounds %class.CVariable, %class.CVariable* %4, i32 0, i32 5
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %27, i64 0, i64 1
  store i32 0, i32* %28, align 4
  %29 = getelementptr inbounds %class.CVariable, %class.CVariable* %4, i32 0, i32 5
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 0
  store i32 0, i32* %30, align 8
  %31 = getelementptr inbounds %class.CVariable, %class.CVariable* %4, i32 0, i32 4
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %31, i64 0, i64 1
  store i32 0, i32* %32, align 4
  %33 = getelementptr inbounds %class.CVariable, %class.CVariable* %4, i32 0, i32 4
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %33, i64 0, i64 0
  store i32 0, i32* %34, align 8
  ret void

; <label>:35                                      ; preds = %8
  %36 = landingpad { i8*, i32 }
          cleanup
  %37 = extractvalue { i8*, i32 } %36, 0
  store i8* %37, i8** %2, align 8
  %38 = extractvalue { i8*, i32 } %36, 1
  store i32 %38, i32* %3, align 4
  %39 = icmp eq %"class.std::vector.0"* %6, %9
  br i1 %39, label %45, label %40

; <label>:40                                      ; preds = %43, %35
  %41 = phi %"class.std::vector.0"* [ %9, %35 ], [ %42, %43 ]
  %42 = getelementptr inbounds %"class.std::vector.0", %"class.std::vector.0"* %41, i64 -1
  invoke void @_ZNSt6vectorIP15CLitPoolElementSaIS1_EED2Ev(%"class.std::vector.0"* %42)
          to label %43 unwind label %51

; <label>:43                                      ; preds = %40
  %44 = icmp eq %"class.std::vector.0"* %42, %6
  br i1 %44, label %45, label %40

; <label>:45                                      ; preds = %43, %35
  br label %46

; <label>:46                                      ; preds = %45
  %47 = load i8*, i8** %2, align 8
  %48 = load i32, i32* %3, align 4
  %49 = insertvalue { i8*, i32 } undef, i8* %47, 0
  %50 = insertvalue { i8*, i32 } %49, i32 %48, 1
  resume { i8*, i32 } %50

; <label>:51                                      ; preds = %40
  %52 = landingpad { i8*, i32 }
          catch i8* null
  %53 = extractvalue { i8*, i32 } %52, 0
  call void @__clang_call_terminate(i8* %53) #12
  unreachable
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZN9CVariableD2Ev(%class.CVariable* %this) unnamed_addr #7 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %class.CVariable*, align 8
  %2 = alloca i8*
  %3 = alloca i32
  store %class.CVariable* %this, %class.CVariable** %1, align 8
  %4 = load %class.CVariable*, %class.CVariable** %1, align 8
  %5 = getelementptr inbounds %class.CVariable, %class.CVariable* %4, i32 0, i32 3
  %6 = getelementptr inbounds [2 x %"class.std::vector.0"], [2 x %"class.std::vector.0"]* %5, i32 0, i32 0
  %7 = getelementptr inbounds %"class.std::vector.0", %"class.std::vector.0"* %6, i64 2
  br label %8

; <label>:8                                       ; preds = %11, %0
  %9 = phi %"class.std::vector.0"* [ %7, %0 ], [ %10, %11 ]
  %10 = getelementptr inbounds %"class.std::vector.0", %"class.std::vector.0"* %9, i64 -1
  invoke void @_ZNSt6vectorIP15CLitPoolElementSaIS1_EED2Ev(%"class.std::vector.0"* %10)
          to label %11 unwind label %14

; <label>:11                                      ; preds = %8
  %12 = icmp eq %"class.std::vector.0"* %10, %6
  br i1 %12, label %13, label %8

; <label>:13                                      ; preds = %11
  ret void

; <label>:14                                      ; preds = %8
  %15 = landingpad { i8*, i32 }
          cleanup
  %16 = extractvalue { i8*, i32 } %15, 0
  store i8* %16, i8** %2, align 8
  %17 = extractvalue { i8*, i32 } %15, 1
  store i32 %17, i32* %3, align 4
  %18 = icmp eq %"class.std::vector.0"* %6, %10
  br i1 %18, label %24, label %19

; <label>:19                                      ; preds = %22, %14
  %20 = phi %"class.std::vector.0"* [ %10, %14 ], [ %21, %22 ]
  %21 = getelementptr inbounds %"class.std::vector.0", %"class.std::vector.0"* %20, i64 -1
  invoke void @_ZNSt6vectorIP15CLitPoolElementSaIS1_EED2Ev(%"class.std::vector.0"* %21)
          to label %22 unwind label %30

; <label>:22                                      ; preds = %19
  %23 = icmp eq %"class.std::vector.0"* %21, %6
  br i1 %23, label %24, label %19

; <label>:24                                      ; preds = %22, %14
  br label %25

; <label>:25                                      ; preds = %24
  %26 = load i8*, i8** %2, align 8
  %27 = load i32, i32* %3, align 4
  %28 = insertvalue { i8*, i32 } undef, i8* %26, 0
  %29 = insertvalue { i8*, i32 } %28, i32 %27, 1
  resume { i8*, i32 } %29

; <label>:30                                      ; preds = %19
  %31 = landingpad { i8*, i32 }
          catch i8* null
  %32 = extractvalue { i8*, i32 } %31, 0
  call void @__clang_call_terminate(i8* %32) #12
  unreachable
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) #8 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #2
  call void @_ZSt9terminatev() #12
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorI9CVariableSaIS0_EE6insertEN9__gnu_cxx17__normal_iteratorIPS0_S2_EEmRKS0_(%"class.std::vector"* %this, %class.CVariable* %__position.coerce, i64 %__n, %class.CVariable* dereferenceable(80) %__x) #0 comdat align 2 {
  %__position = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %1 = alloca %"class.std::vector"*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %class.CVariable*, align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__position, i32 0, i32 0
  store %class.CVariable* %__position.coerce, %class.CVariable** %5, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 8
  store i64 %__n, i64* %2, align 8
  store %class.CVariable* %__x, %class.CVariable** %3, align 8
  %6 = load %"class.std::vector"*, %"class.std::vector"** %1, align 8
  %7 = bitcast %"class.__gnu_cxx::__normal_iterator"* %4 to i8*
  %8 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__position to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 8, i32 8, i1 false)
  %9 = load i64, i64* %2, align 8
  %10 = load %class.CVariable*, %class.CVariable** %3, align 8
  %11 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %4, i32 0, i32 0
  %12 = load %class.CVariable*, %class.CVariable** %11, align 8
  call void @_ZNSt6vectorI9CVariableSaIS0_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS0_S2_EEmRKS0_(%"class.std::vector"* %6, %class.CVariable* %12, i64 %9, %class.CVariable* dereferenceable(80) %10)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr %class.CVariable* @_ZNSt6vectorI9CVariableSaIS0_EE3endEv(%"class.std::vector"* %this) #0 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %2 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %2, align 8
  %3 = load %"class.std::vector"*, %"class.std::vector"** %2, align 8
  %4 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %5 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl", %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl"* %5, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIP9CVariableSt6vectorIS1_SaIS1_EEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator"* %1, %class.CVariable** dereferenceable(8) %6)
  %7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %1, i32 0, i32 0
  %8 = load %class.CVariable*, %class.CVariable** %7, align 8
  ret %class.CVariable* %8
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorI9CVariableSaIS0_EE15_M_erase_at_endEPS0_(%"class.std::vector"* %this, %class.CVariable* %__pos) #0 comdat align 2 {
  %1 = alloca %"class.std::vector"*, align 8
  %2 = alloca %class.CVariable*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 8
  store %class.CVariable* %__pos, %class.CVariable** %2, align 8
  %3 = load %"class.std::vector"*, %"class.std::vector"** %1, align 8
  %4 = load %class.CVariable*, %class.CVariable** %2, align 8
  %5 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl", %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl"* %6, i32 0, i32 1
  %8 = load %class.CVariable*, %class.CVariable** %7, align 8
  %9 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %10 = call dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseI9CVariableSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %9)
  call void @_ZSt8_DestroyIP9CVariableS0_EvT_S2_RSaIT0_E(%class.CVariable* %4, %class.CVariable* %8, %"class.std::allocator"* dereferenceable(1) %10)
  %11 = load %class.CVariable*, %class.CVariable** %2, align 8
  %12 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %13 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %12, i32 0, i32 0
  %14 = getelementptr inbounds %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl", %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl"* %13, i32 0, i32 1
  store %class.CVariable* %11, %class.CVariable** %14, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorI9CVariableSaIS0_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS0_S2_EEmRKS0_(%"class.std::vector"* %this, %class.CVariable* %__position.coerce, i64 %__n, %class.CVariable* dereferenceable(80) %__x) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %__position = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %1 = alloca %"class.std::vector"*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %class.CVariable*, align 8
  %__x_copy = alloca %class.CVariable, align 8
  %__elems_after = alloca i64, align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca i8*
  %6 = alloca i32
  %__old_finish = alloca %class.CVariable*, align 8
  %__len = alloca i64, align 8
  %__elems_before = alloca i64, align 8
  %7 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__new_start = alloca %class.CVariable*, align 8
  %__new_finish = alloca %class.CVariable*, align 8
  %8 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__position, i32 0, i32 0
  store %class.CVariable* %__position.coerce, %class.CVariable** %8, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 8
  store i64 %__n, i64* %2, align 8
  store %class.CVariable* %__x, %class.CVariable** %3, align 8
  %9 = load %"class.std::vector"*, %"class.std::vector"** %1, align 8
  %10 = load i64, i64* %2, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %264

; <label>:12                                      ; preds = %0
  %13 = bitcast %"class.std::vector"* %9 to %"struct.std::_Vector_base"*
  %14 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %13, i32 0, i32 0
  %15 = getelementptr inbounds %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl", %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl"* %14, i32 0, i32 2
  %16 = load %class.CVariable*, %class.CVariable** %15, align 8
  %17 = bitcast %"class.std::vector"* %9 to %"struct.std::_Vector_base"*
  %18 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %17, i32 0, i32 0
  %19 = getelementptr inbounds %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl", %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl"* %18, i32 0, i32 1
  %20 = load %class.CVariable*, %class.CVariable** %19, align 8
  %21 = ptrtoint %class.CVariable* %16 to i64
  %22 = ptrtoint %class.CVariable* %20 to i64
  %23 = sub i64 %21, %22
  %24 = sdiv exact i64 %23, 80
  %25 = load i64, i64* %2, align 8
  %26 = icmp uge i64 %24, %25
  br i1 %26, label %27, label %133

; <label>:27                                      ; preds = %12
  %28 = load %class.CVariable*, %class.CVariable** %3, align 8
  call void @_ZN9CVariableC2ERKS_(%class.CVariable* %__x_copy, %class.CVariable* dereferenceable(80) %28)
  %29 = invoke %class.CVariable* @_ZNSt6vectorI9CVariableSaIS0_EE3endEv(%"class.std::vector"* %9)
          to label %30 unwind label %87

; <label>:30                                      ; preds = %27
  %31 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %4, i32 0, i32 0
  store %class.CVariable* %29, %class.CVariable** %31, align 8
  %32 = invoke i64 @_ZN9__gnu_cxxmiIP9CVariableSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %4, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__position)
          to label %33 unwind label %87

; <label>:33                                      ; preds = %30
  store i64 %32, i64* %__elems_after, align 8
  %34 = bitcast %"class.std::vector"* %9 to %"struct.std::_Vector_base"*
  %35 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %34, i32 0, i32 0
  %36 = getelementptr inbounds %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl", %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl"* %35, i32 0, i32 1
  %37 = load %class.CVariable*, %class.CVariable** %36, align 8
  store %class.CVariable* %37, %class.CVariable** %__old_finish, align 8
  %38 = load i64, i64* %__elems_after, align 8
  %39 = load i64, i64* %2, align 8
  %40 = icmp ugt i64 %38, %39
  br i1 %40, label %41, label %91

; <label>:41                                      ; preds = %33
  %42 = bitcast %"class.std::vector"* %9 to %"struct.std::_Vector_base"*
  %43 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %42, i32 0, i32 0
  %44 = getelementptr inbounds %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl", %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl"* %43, i32 0, i32 1
  %45 = load %class.CVariable*, %class.CVariable** %44, align 8
  %46 = load i64, i64* %2, align 8
  %47 = sub i64 0, %46
  %48 = getelementptr inbounds %class.CVariable, %class.CVariable* %45, i64 %47
  %49 = bitcast %"class.std::vector"* %9 to %"struct.std::_Vector_base"*
  %50 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %49, i32 0, i32 0
  %51 = getelementptr inbounds %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl", %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl"* %50, i32 0, i32 1
  %52 = load %class.CVariable*, %class.CVariable** %51, align 8
  %53 = bitcast %"class.std::vector"* %9 to %"struct.std::_Vector_base"*
  %54 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %53, i32 0, i32 0
  %55 = getelementptr inbounds %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl", %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl"* %54, i32 0, i32 1
  %56 = load %class.CVariable*, %class.CVariable** %55, align 8
  %57 = bitcast %"class.std::vector"* %9 to %"struct.std::_Vector_base"*
  %58 = invoke dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseI9CVariableSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %57)
          to label %59 unwind label %87

; <label>:59                                      ; preds = %41
  %60 = invoke %class.CVariable* @_ZSt22__uninitialized_move_aIP9CVariableS1_SaIS0_EET0_T_S4_S3_RT1_(%class.CVariable* %48, %class.CVariable* %52, %class.CVariable* %56, %"class.std::allocator"* dereferenceable(1) %58)
          to label %61 unwind label %87

; <label>:61                                      ; preds = %59
  %62 = load i64, i64* %2, align 8
  %63 = bitcast %"class.std::vector"* %9 to %"struct.std::_Vector_base"*
  %64 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %63, i32 0, i32 0
  %65 = getelementptr inbounds %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl", %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl"* %64, i32 0, i32 1
  %66 = load %class.CVariable*, %class.CVariable** %65, align 8
  %67 = getelementptr inbounds %class.CVariable, %class.CVariable* %66, i64 %62
  store %class.CVariable* %67, %class.CVariable** %65, align 8
  %68 = invoke dereferenceable(8) %class.CVariable** @_ZNK9__gnu_cxx17__normal_iteratorIP9CVariableSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %__position)
          to label %69 unwind label %87

; <label>:69                                      ; preds = %61
  %70 = load %class.CVariable*, %class.CVariable** %68, align 8
  %71 = load %class.CVariable*, %class.CVariable** %__old_finish, align 8
  %72 = load i64, i64* %2, align 8
  %73 = sub i64 0, %72
  %74 = getelementptr inbounds %class.CVariable, %class.CVariable* %71, i64 %73
  %75 = load %class.CVariable*, %class.CVariable** %__old_finish, align 8
  %76 = invoke %class.CVariable* @_ZSt13copy_backwardIP9CVariableS1_ET0_T_S3_S2_(%class.CVariable* %70, %class.CVariable* %74, %class.CVariable* %75)
          to label %77 unwind label %87

; <label>:77                                      ; preds = %69
  %78 = invoke dereferenceable(8) %class.CVariable** @_ZNK9__gnu_cxx17__normal_iteratorIP9CVariableSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %__position)
          to label %79 unwind label %87

; <label>:79                                      ; preds = %77
  %80 = load %class.CVariable*, %class.CVariable** %78, align 8
  %81 = invoke dereferenceable(8) %class.CVariable** @_ZNK9__gnu_cxx17__normal_iteratorIP9CVariableSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %__position)
          to label %82 unwind label %87

; <label>:82                                      ; preds = %79
  %83 = load %class.CVariable*, %class.CVariable** %81, align 8
  %84 = load i64, i64* %2, align 8
  %85 = getelementptr inbounds %class.CVariable, %class.CVariable* %83, i64 %84
  invoke void @_ZSt4fillIP9CVariableS0_EvT_S2_RKT0_(%class.CVariable* %80, %class.CVariable* %85, %class.CVariable* dereferenceable(80) %__x_copy)
          to label %86 unwind label %87

; <label>:86                                      ; preds = %82
  br label %131

; <label>:87                                      ; preds = %127, %119, %117, %108, %103, %101, %91, %82, %79, %77, %69, %61, %59, %41, %30, %27
  %88 = landingpad { i8*, i32 }
          cleanup
  %89 = extractvalue { i8*, i32 } %88, 0
  store i8* %89, i8** %5, align 8
  %90 = extractvalue { i8*, i32 } %88, 1
  store i32 %90, i32* %6, align 4
  invoke void @_ZN9CVariableD2Ev(%class.CVariable* %__x_copy)
          to label %132 unwind label %270

; <label>:91                                      ; preds = %33
  %92 = bitcast %"class.std::vector"* %9 to %"struct.std::_Vector_base"*
  %93 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %92, i32 0, i32 0
  %94 = getelementptr inbounds %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl", %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl"* %93, i32 0, i32 1
  %95 = load %class.CVariable*, %class.CVariable** %94, align 8
  %96 = load i64, i64* %2, align 8
  %97 = load i64, i64* %__elems_after, align 8
  %98 = sub i64 %96, %97
  %99 = bitcast %"class.std::vector"* %9 to %"struct.std::_Vector_base"*
  %100 = invoke dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseI9CVariableSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %99)
          to label %101 unwind label %87

; <label>:101                                     ; preds = %91
  %102 = invoke %class.CVariable* @_ZSt24__uninitialized_fill_n_aIP9CVariablemS0_S0_ET_S2_T0_RKT1_RSaIT2_E(%class.CVariable* %95, i64 %98, %class.CVariable* dereferenceable(80) %__x_copy, %"class.std::allocator"* dereferenceable(1) %100)
          to label %103 unwind label %87

; <label>:103                                     ; preds = %101
  %104 = bitcast %"class.std::vector"* %9 to %"struct.std::_Vector_base"*
  %105 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %104, i32 0, i32 0
  %106 = getelementptr inbounds %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl", %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl"* %105, i32 0, i32 1
  store %class.CVariable* %102, %class.CVariable** %106, align 8
  %107 = invoke dereferenceable(8) %class.CVariable** @_ZNK9__gnu_cxx17__normal_iteratorIP9CVariableSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %__position)
          to label %108 unwind label %87

; <label>:108                                     ; preds = %103
  %109 = load %class.CVariable*, %class.CVariable** %107, align 8
  %110 = load %class.CVariable*, %class.CVariable** %__old_finish, align 8
  %111 = bitcast %"class.std::vector"* %9 to %"struct.std::_Vector_base"*
  %112 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %111, i32 0, i32 0
  %113 = getelementptr inbounds %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl", %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl"* %112, i32 0, i32 1
  %114 = load %class.CVariable*, %class.CVariable** %113, align 8
  %115 = bitcast %"class.std::vector"* %9 to %"struct.std::_Vector_base"*
  %116 = invoke dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseI9CVariableSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %115)
          to label %117 unwind label %87

; <label>:117                                     ; preds = %108
  %118 = invoke %class.CVariable* @_ZSt22__uninitialized_move_aIP9CVariableS1_SaIS0_EET0_T_S4_S3_RT1_(%class.CVariable* %109, %class.CVariable* %110, %class.CVariable* %114, %"class.std::allocator"* dereferenceable(1) %116)
          to label %119 unwind label %87

; <label>:119                                     ; preds = %117
  %120 = load i64, i64* %__elems_after, align 8
  %121 = bitcast %"class.std::vector"* %9 to %"struct.std::_Vector_base"*
  %122 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %121, i32 0, i32 0
  %123 = getelementptr inbounds %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl", %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl"* %122, i32 0, i32 1
  %124 = load %class.CVariable*, %class.CVariable** %123, align 8
  %125 = getelementptr inbounds %class.CVariable, %class.CVariable* %124, i64 %120
  store %class.CVariable* %125, %class.CVariable** %123, align 8
  %126 = invoke dereferenceable(8) %class.CVariable** @_ZNK9__gnu_cxx17__normal_iteratorIP9CVariableSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %__position)
          to label %127 unwind label %87

; <label>:127                                     ; preds = %119
  %128 = load %class.CVariable*, %class.CVariable** %126, align 8
  %129 = load %class.CVariable*, %class.CVariable** %__old_finish, align 8
  invoke void @_ZSt4fillIP9CVariableS0_EvT_S2_RKT0_(%class.CVariable* %128, %class.CVariable* %129, %class.CVariable* dereferenceable(80) %__x_copy)
          to label %130 unwind label %87

; <label>:130                                     ; preds = %127
  br label %131

; <label>:131                                     ; preds = %130, %86
  call void @_ZN9CVariableD2Ev(%class.CVariable* %__x_copy)
  br label %263

; <label>:132                                     ; preds = %87
  br label %265

; <label>:133                                     ; preds = %12
  %134 = load i64, i64* %2, align 8
  %135 = call i64 @_ZNKSt6vectorI9CVariableSaIS0_EE12_M_check_lenEmPKc(%"class.std::vector"* %9, i64 %134, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0))
  store i64 %135, i64* %__len, align 8
  %136 = call %class.CVariable* @_ZNSt6vectorI9CVariableSaIS0_EE5beginEv(%"class.std::vector"* %9)
  %137 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %7, i32 0, i32 0
  store %class.CVariable* %136, %class.CVariable** %137, align 8
  %138 = call i64 @_ZN9__gnu_cxxmiIP9CVariableSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__position, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %7)
  store i64 %138, i64* %__elems_before, align 8
  %139 = bitcast %"class.std::vector"* %9 to %"struct.std::_Vector_base"*
  %140 = load i64, i64* %__len, align 8
  %141 = call %class.CVariable* @_ZNSt12_Vector_baseI9CVariableSaIS0_EE11_M_allocateEm(%"struct.std::_Vector_base"* %139, i64 %140)
  store %class.CVariable* %141, %class.CVariable** %__new_start, align 8
  %142 = load %class.CVariable*, %class.CVariable** %__new_start, align 8
  store %class.CVariable* %142, %class.CVariable** %__new_finish, align 8
  %143 = load %class.CVariable*, %class.CVariable** %__new_start, align 8
  %144 = load i64, i64* %__elems_before, align 8
  %145 = getelementptr inbounds %class.CVariable, %class.CVariable* %143, i64 %144
  %146 = load i64, i64* %2, align 8
  %147 = load %class.CVariable*, %class.CVariable** %3, align 8
  %148 = bitcast %"class.std::vector"* %9 to %"struct.std::_Vector_base"*
  %149 = invoke dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseI9CVariableSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %148)
          to label %150 unwind label %182

; <label>:150                                     ; preds = %133
  %151 = invoke %class.CVariable* @_ZSt24__uninitialized_fill_n_aIP9CVariablemS0_S0_ET_S2_T0_RKT1_RSaIT2_E(%class.CVariable* %145, i64 %146, %class.CVariable* dereferenceable(80) %147, %"class.std::allocator"* dereferenceable(1) %149)
          to label %152 unwind label %182

; <label>:152                                     ; preds = %150
  store %class.CVariable* null, %class.CVariable** %__new_finish, align 8
  %153 = bitcast %"class.std::vector"* %9 to %"struct.std::_Vector_base"*
  %154 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %153, i32 0, i32 0
  %155 = getelementptr inbounds %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl", %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl"* %154, i32 0, i32 0
  %156 = load %class.CVariable*, %class.CVariable** %155, align 8
  %157 = invoke dereferenceable(8) %class.CVariable** @_ZNK9__gnu_cxx17__normal_iteratorIP9CVariableSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %__position)
          to label %158 unwind label %182

; <label>:158                                     ; preds = %152
  %159 = load %class.CVariable*, %class.CVariable** %157, align 8
  %160 = load %class.CVariable*, %class.CVariable** %__new_start, align 8
  %161 = bitcast %"class.std::vector"* %9 to %"struct.std::_Vector_base"*
  %162 = invoke dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseI9CVariableSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %161)
          to label %163 unwind label %182

; <label>:163                                     ; preds = %158
  %164 = invoke %class.CVariable* @_ZSt34__uninitialized_move_if_noexcept_aIP9CVariableS1_SaIS0_EET0_T_S4_S3_RT1_(%class.CVariable* %156, %class.CVariable* %159, %class.CVariable* %160, %"class.std::allocator"* dereferenceable(1) %162)
          to label %165 unwind label %182

; <label>:165                                     ; preds = %163
  store %class.CVariable* %164, %class.CVariable** %__new_finish, align 8
  %166 = load i64, i64* %2, align 8
  %167 = load %class.CVariable*, %class.CVariable** %__new_finish, align 8
  %168 = getelementptr inbounds %class.CVariable, %class.CVariable* %167, i64 %166
  store %class.CVariable* %168, %class.CVariable** %__new_finish, align 8
  %169 = invoke dereferenceable(8) %class.CVariable** @_ZNK9__gnu_cxx17__normal_iteratorIP9CVariableSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %__position)
          to label %170 unwind label %182

; <label>:170                                     ; preds = %165
  %171 = load %class.CVariable*, %class.CVariable** %169, align 8
  %172 = bitcast %"class.std::vector"* %9 to %"struct.std::_Vector_base"*
  %173 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %172, i32 0, i32 0
  %174 = getelementptr inbounds %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl", %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl"* %173, i32 0, i32 1
  %175 = load %class.CVariable*, %class.CVariable** %174, align 8
  %176 = load %class.CVariable*, %class.CVariable** %__new_finish, align 8
  %177 = bitcast %"class.std::vector"* %9 to %"struct.std::_Vector_base"*
  %178 = invoke dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseI9CVariableSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %177)
          to label %179 unwind label %182

; <label>:179                                     ; preds = %170
  %180 = invoke %class.CVariable* @_ZSt34__uninitialized_move_if_noexcept_aIP9CVariableS1_SaIS0_EET0_T_S4_S3_RT1_(%class.CVariable* %171, %class.CVariable* %175, %class.CVariable* %176, %"class.std::allocator"* dereferenceable(1) %178)
          to label %181 unwind label %182

; <label>:181                                     ; preds = %179
  store %class.CVariable* %180, %class.CVariable** %__new_finish, align 8
  br label %221

; <label>:182                                     ; preds = %179, %170, %165, %163, %158, %152, %150, %133
  %183 = landingpad { i8*, i32 }
          catch i8* null
  %184 = extractvalue { i8*, i32 } %183, 0
  store i8* %184, i8** %5, align 8
  %185 = extractvalue { i8*, i32 } %183, 1
  store i32 %185, i32* %6, align 4
  br label %186

; <label>:186                                     ; preds = %182
  %187 = load i8*, i8** %5, align 8
  %188 = call i8* @__cxa_begin_catch(i8* %187) #2
  %189 = load %class.CVariable*, %class.CVariable** %__new_finish, align 8
  %190 = icmp ne %class.CVariable* %189, null
  br i1 %190, label %208, label %191

; <label>:191                                     ; preds = %186
  %192 = load %class.CVariable*, %class.CVariable** %__new_start, align 8
  %193 = load i64, i64* %__elems_before, align 8
  %194 = getelementptr inbounds %class.CVariable, %class.CVariable* %192, i64 %193
  %195 = load %class.CVariable*, %class.CVariable** %__new_start, align 8
  %196 = load i64, i64* %__elems_before, align 8
  %197 = getelementptr inbounds %class.CVariable, %class.CVariable* %195, i64 %196
  %198 = load i64, i64* %2, align 8
  %199 = getelementptr inbounds %class.CVariable, %class.CVariable* %197, i64 %198
  %200 = bitcast %"class.std::vector"* %9 to %"struct.std::_Vector_base"*
  %201 = invoke dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseI9CVariableSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %200)
          to label %202 unwind label %204

; <label>:202                                     ; preds = %191
  invoke void @_ZSt8_DestroyIP9CVariableS0_EvT_S2_RSaIT0_E(%class.CVariable* %194, %class.CVariable* %199, %"class.std::allocator"* dereferenceable(1) %201)
          to label %203 unwind label %204

; <label>:203                                     ; preds = %202
  br label %215

; <label>:204                                     ; preds = %219, %215, %213, %208, %202, %191
  %205 = landingpad { i8*, i32 }
          cleanup
  %206 = extractvalue { i8*, i32 } %205, 0
  store i8* %206, i8** %5, align 8
  %207 = extractvalue { i8*, i32 } %205, 1
  store i32 %207, i32* %6, align 4
  invoke void @__cxa_end_catch()
          to label %220 unwind label %270

; <label>:208                                     ; preds = %186
  %209 = load %class.CVariable*, %class.CVariable** %__new_start, align 8
  %210 = load %class.CVariable*, %class.CVariable** %__new_finish, align 8
  %211 = bitcast %"class.std::vector"* %9 to %"struct.std::_Vector_base"*
  %212 = invoke dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseI9CVariableSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %211)
          to label %213 unwind label %204

; <label>:213                                     ; preds = %208
  invoke void @_ZSt8_DestroyIP9CVariableS0_EvT_S2_RSaIT0_E(%class.CVariable* %209, %class.CVariable* %210, %"class.std::allocator"* dereferenceable(1) %212)
          to label %214 unwind label %204

; <label>:214                                     ; preds = %213
  br label %215

; <label>:215                                     ; preds = %214, %203
  %216 = bitcast %"class.std::vector"* %9 to %"struct.std::_Vector_base"*
  %217 = load %class.CVariable*, %class.CVariable** %__new_start, align 8
  %218 = load i64, i64* %__len, align 8
  invoke void @_ZNSt12_Vector_baseI9CVariableSaIS0_EE13_M_deallocateEPS0_m(%"struct.std::_Vector_base"* %216, %class.CVariable* %217, i64 %218)
          to label %219 unwind label %204

; <label>:219                                     ; preds = %215
  invoke void @__cxa_rethrow() #16
          to label %273 unwind label %204

; <label>:220                                     ; preds = %204
  br label %265

; <label>:221                                     ; preds = %181
  %222 = bitcast %"class.std::vector"* %9 to %"struct.std::_Vector_base"*
  %223 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %222, i32 0, i32 0
  %224 = getelementptr inbounds %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl", %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl"* %223, i32 0, i32 0
  %225 = load %class.CVariable*, %class.CVariable** %224, align 8
  %226 = bitcast %"class.std::vector"* %9 to %"struct.std::_Vector_base"*
  %227 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %226, i32 0, i32 0
  %228 = getelementptr inbounds %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl", %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl"* %227, i32 0, i32 1
  %229 = load %class.CVariable*, %class.CVariable** %228, align 8
  %230 = bitcast %"class.std::vector"* %9 to %"struct.std::_Vector_base"*
  %231 = call dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseI9CVariableSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %230)
  call void @_ZSt8_DestroyIP9CVariableS0_EvT_S2_RSaIT0_E(%class.CVariable* %225, %class.CVariable* %229, %"class.std::allocator"* dereferenceable(1) %231)
  %232 = bitcast %"class.std::vector"* %9 to %"struct.std::_Vector_base"*
  %233 = bitcast %"class.std::vector"* %9 to %"struct.std::_Vector_base"*
  %234 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %233, i32 0, i32 0
  %235 = getelementptr inbounds %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl", %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl"* %234, i32 0, i32 0
  %236 = load %class.CVariable*, %class.CVariable** %235, align 8
  %237 = bitcast %"class.std::vector"* %9 to %"struct.std::_Vector_base"*
  %238 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %237, i32 0, i32 0
  %239 = getelementptr inbounds %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl", %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl"* %238, i32 0, i32 2
  %240 = load %class.CVariable*, %class.CVariable** %239, align 8
  %241 = bitcast %"class.std::vector"* %9 to %"struct.std::_Vector_base"*
  %242 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %241, i32 0, i32 0
  %243 = getelementptr inbounds %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl", %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl"* %242, i32 0, i32 0
  %244 = load %class.CVariable*, %class.CVariable** %243, align 8
  %245 = ptrtoint %class.CVariable* %240 to i64
  %246 = ptrtoint %class.CVariable* %244 to i64
  %247 = sub i64 %245, %246
  %248 = sdiv exact i64 %247, 80
  call void @_ZNSt12_Vector_baseI9CVariableSaIS0_EE13_M_deallocateEPS0_m(%"struct.std::_Vector_base"* %232, %class.CVariable* %236, i64 %248)
  %249 = load %class.CVariable*, %class.CVariable** %__new_start, align 8
  %250 = bitcast %"class.std::vector"* %9 to %"struct.std::_Vector_base"*
  %251 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %250, i32 0, i32 0
  %252 = getelementptr inbounds %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl", %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl"* %251, i32 0, i32 0
  store %class.CVariable* %249, %class.CVariable** %252, align 8
  %253 = load %class.CVariable*, %class.CVariable** %__new_finish, align 8
  %254 = bitcast %"class.std::vector"* %9 to %"struct.std::_Vector_base"*
  %255 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %254, i32 0, i32 0
  %256 = getelementptr inbounds %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl", %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl"* %255, i32 0, i32 1
  store %class.CVariable* %253, %class.CVariable** %256, align 8
  %257 = load %class.CVariable*, %class.CVariable** %__new_start, align 8
  %258 = load i64, i64* %__len, align 8
  %259 = getelementptr inbounds %class.CVariable, %class.CVariable* %257, i64 %258
  %260 = bitcast %"class.std::vector"* %9 to %"struct.std::_Vector_base"*
  %261 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %260, i32 0, i32 0
  %262 = getelementptr inbounds %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl", %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl"* %261, i32 0, i32 2
  store %class.CVariable* %259, %class.CVariable** %262, align 8
  br label %263

; <label>:263                                     ; preds = %221, %131
  br label %264

; <label>:264                                     ; preds = %263, %0
  ret void

; <label>:265                                     ; preds = %220, %132
  %266 = load i8*, i8** %5, align 8
  %267 = load i32, i32* %6, align 4
  %268 = insertvalue { i8*, i32 } undef, i8* %266, 0
  %269 = insertvalue { i8*, i32 } %268, i32 %267, 1
  resume { i8*, i32 } %269

; <label>:270                                     ; preds = %204, %87
  %271 = landingpad { i8*, i32 }
          catch i8* null
  %272 = extractvalue { i8*, i32 } %271, 0
  call void @__clang_call_terminate(i8* %272) #12
  unreachable

; <label>:273                                     ; preds = %219
  unreachable
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #9

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZN9CVariableC2ERKS_(%class.CVariable* %this, %class.CVariable* dereferenceable(80)) unnamed_addr #7 comdat align 2 {
  %2 = alloca %class.CVariable*, align 8
  %3 = alloca %class.CVariable*, align 8
  %4 = alloca i64, align 8
  %__i0 = alloca i64, align 8
  store %class.CVariable* %this, %class.CVariable** %2, align 8
  store %class.CVariable* %0, %class.CVariable** %3, align 8
  %5 = load %class.CVariable*, %class.CVariable** %2, align 8
  %6 = bitcast %class.CVariable* %5 to i32*
  %7 = load %class.CVariable*, %class.CVariable** %3, align 8
  %8 = bitcast %class.CVariable* %7 to i32*
  %9 = bitcast i32* %6 to i8*
  %10 = bitcast i32* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 8, i32 8, i1 false)
  %11 = getelementptr inbounds %class.CVariable, %class.CVariable* %5, i32 0, i32 3
  %12 = bitcast [2 x %"class.std::vector.0"]* %11 to %"class.std::vector.0"*
  store i64 0, i64* %4, align 8
  store i64 0, i64* %__i0, align 8
  br label %13

; <label>:13                                      ; preds = %24, %1
  %14 = load i64, i64* %__i0, align 8
  %15 = icmp ult i64 %14, 2
  br i1 %15, label %16, label %27

; <label>:16                                      ; preds = %13
  %17 = load i64, i64* %4, align 8
  %18 = getelementptr inbounds %"class.std::vector.0", %"class.std::vector.0"* %12, i64 %17
  %19 = add i64 %17, 1
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* %__i0, align 8
  %21 = load %class.CVariable*, %class.CVariable** %3, align 8
  %22 = getelementptr inbounds %class.CVariable, %class.CVariable* %21, i32 0, i32 3
  %23 = getelementptr inbounds [2 x %"class.std::vector.0"], [2 x %"class.std::vector.0"]* %22, i64 0, i64 %20
  call void @_ZNSt6vectorIP15CLitPoolElementSaIS1_EEC2ERKS3_(%"class.std::vector.0"* %18, %"class.std::vector.0"* dereferenceable(24) %23)
  br label %24

; <label>:24                                      ; preds = %16
  %25 = load i64, i64* %__i0, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %__i0, align 8
  br label %13

; <label>:27                                      ; preds = %13
  %28 = getelementptr inbounds %class.CVariable, %class.CVariable* %5, i32 0, i32 4
  %29 = load %class.CVariable*, %class.CVariable** %3, align 8
  %30 = getelementptr inbounds %class.CVariable, %class.CVariable* %29, i32 0, i32 4
  %31 = bitcast [2 x i32]* %28 to i8*
  %32 = bitcast [2 x i32]* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 20, i32 8, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i64 @_ZN9__gnu_cxxmiIP9CVariableSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__lhs, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__rhs) #7 comdat {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %2 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__lhs, %"class.__gnu_cxx::__normal_iterator"** %1, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__rhs, %"class.__gnu_cxx::__normal_iterator"** %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %1, align 8
  %4 = call dereferenceable(8) %class.CVariable** @_ZNK9__gnu_cxx17__normal_iteratorIP9CVariableSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %3)
  %5 = load %class.CVariable*, %class.CVariable** %4, align 8
  %6 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %2, align 8
  %7 = call dereferenceable(8) %class.CVariable** @_ZNK9__gnu_cxx17__normal_iteratorIP9CVariableSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %6)
  %8 = load %class.CVariable*, %class.CVariable** %7, align 8
  %9 = ptrtoint %class.CVariable* %5 to i64
  %10 = ptrtoint %class.CVariable* %8 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 80
  ret i64 %12
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %class.CVariable* @_ZSt22__uninitialized_move_aIP9CVariableS1_SaIS0_EET0_T_S4_S3_RT1_(%class.CVariable* %__first, %class.CVariable* %__last, %class.CVariable* %__result, %"class.std::allocator"* dereferenceable(1) %__alloc) #7 comdat {
  %1 = alloca %class.CVariable*, align 8
  %2 = alloca %class.CVariable*, align 8
  %3 = alloca %class.CVariable*, align 8
  %4 = alloca %"class.std::allocator"*, align 8
  store %class.CVariable* %__first, %class.CVariable** %1, align 8
  store %class.CVariable* %__last, %class.CVariable** %2, align 8
  store %class.CVariable* %__result, %class.CVariable** %3, align 8
  store %"class.std::allocator"* %__alloc, %"class.std::allocator"** %4, align 8
  %5 = load %class.CVariable*, %class.CVariable** %1, align 8
  %6 = load %class.CVariable*, %class.CVariable** %2, align 8
  %7 = load %class.CVariable*, %class.CVariable** %3, align 8
  %8 = load %"class.std::allocator"*, %"class.std::allocator"** %4, align 8
  %9 = call %class.CVariable* @_ZSt22__uninitialized_copy_aIP9CVariableS1_S0_ET0_T_S3_S2_RSaIT1_E(%class.CVariable* %5, %class.CVariable* %6, %class.CVariable* %7, %"class.std::allocator"* dereferenceable(1) %8)
  ret %class.CVariable* %9
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseI9CVariableSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %this) #5 comdat align 2 {
  %1 = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %1, align 8
  %2 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %1, align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %4 = bitcast %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl"* %3 to %"class.std::allocator"*
  ret %"class.std::allocator"* %4
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %class.CVariable* @_ZSt13copy_backwardIP9CVariableS1_ET0_T_S3_S2_(%class.CVariable* %__first, %class.CVariable* %__last, %class.CVariable* %__result) #7 comdat {
  %1 = alloca %class.CVariable*, align 8
  %2 = alloca %class.CVariable*, align 8
  %3 = alloca %class.CVariable*, align 8
  store %class.CVariable* %__first, %class.CVariable** %1, align 8
  store %class.CVariable* %__last, %class.CVariable** %2, align 8
  store %class.CVariable* %__result, %class.CVariable** %3, align 8
  %4 = load %class.CVariable*, %class.CVariable** %1, align 8
  %5 = call %class.CVariable* @_ZSt12__miter_baseIP9CVariableENSt11_Miter_baseIT_E13iterator_typeES3_(%class.CVariable* %4)
  %6 = load %class.CVariable*, %class.CVariable** %2, align 8
  %7 = call %class.CVariable* @_ZSt12__miter_baseIP9CVariableENSt11_Miter_baseIT_E13iterator_typeES3_(%class.CVariable* %6)
  %8 = load %class.CVariable*, %class.CVariable** %3, align 8
  %9 = call %class.CVariable* @_ZSt23__copy_move_backward_a2ILb0EP9CVariableS1_ET1_T0_S3_S2_(%class.CVariable* %5, %class.CVariable* %7, %class.CVariable* %8)
  ret %class.CVariable* %9
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(8) %class.CVariable** @_ZNK9__gnu_cxx17__normal_iteratorIP9CVariableSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %this) #5 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %1, align 8
  %2 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %1, align 8
  %3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %2, i32 0, i32 0
  ret %class.CVariable** %3
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt4fillIP9CVariableS0_EvT_S2_RKT0_(%class.CVariable* %__first, %class.CVariable* %__last, %class.CVariable* dereferenceable(80) %__value) #7 comdat {
  %1 = alloca %class.CVariable*, align 8
  %2 = alloca %class.CVariable*, align 8
  %3 = alloca %class.CVariable*, align 8
  store %class.CVariable* %__first, %class.CVariable** %1, align 8
  store %class.CVariable* %__last, %class.CVariable** %2, align 8
  store %class.CVariable* %__value, %class.CVariable** %3, align 8
  %4 = load %class.CVariable*, %class.CVariable** %1, align 8
  %5 = call %class.CVariable* @_ZSt12__niter_baseIP9CVariableENSt11_Niter_baseIT_E13iterator_typeES3_(%class.CVariable* %4)
  %6 = load %class.CVariable*, %class.CVariable** %2, align 8
  %7 = call %class.CVariable* @_ZSt12__niter_baseIP9CVariableENSt11_Niter_baseIT_E13iterator_typeES3_(%class.CVariable* %6)
  %8 = load %class.CVariable*, %class.CVariable** %3, align 8
  call void @_ZSt8__fill_aIP9CVariableS0_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_S7_RKS4_(%class.CVariable* %5, %class.CVariable* %7, %class.CVariable* dereferenceable(80) %8)
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %class.CVariable* @_ZSt24__uninitialized_fill_n_aIP9CVariablemS0_S0_ET_S2_T0_RKT1_RSaIT2_E(%class.CVariable* %__first, i64 %__n, %class.CVariable* dereferenceable(80) %__x, %"class.std::allocator"* dereferenceable(1)) #7 comdat {
  %2 = alloca %class.CVariable*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %class.CVariable*, align 8
  %5 = alloca %"class.std::allocator"*, align 8
  store %class.CVariable* %__first, %class.CVariable** %2, align 8
  store i64 %__n, i64* %3, align 8
  store %class.CVariable* %__x, %class.CVariable** %4, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %5, align 8
  %6 = load %class.CVariable*, %class.CVariable** %2, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load %class.CVariable*, %class.CVariable** %4, align 8
  %9 = call %class.CVariable* @_ZSt20uninitialized_fill_nIP9CVariablemS0_ET_S2_T0_RKT1_(%class.CVariable* %6, i64 %7, %class.CVariable* dereferenceable(80) %8)
  ret %class.CVariable* %9
}

; Function Attrs: uwtable
define linkonce_odr i64 @_ZNKSt6vectorI9CVariableSaIS0_EE12_M_check_lenEmPKc(%"class.std::vector"* %this, i64 %__n, i8* %__s) #0 comdat align 2 {
  %1 = alloca %"class.std::vector"*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %__len = alloca i64, align 8
  %4 = alloca i64, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 8
  store i64 %__n, i64* %2, align 8
  store i8* %__s, i8** %3, align 8
  %5 = load %"class.std::vector"*, %"class.std::vector"** %1, align 8
  %6 = call i64 @_ZNKSt6vectorI9CVariableSaIS0_EE8max_sizeEv(%"class.std::vector"* %5)
  %7 = call i64 @_ZNKSt6vectorI9CVariableSaIS0_EE4sizeEv(%"class.std::vector"* %5)
  %8 = sub i64 %6, %7
  %9 = load i64, i64* %2, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %13

; <label>:11                                      ; preds = %0
  %12 = load i8*, i8** %3, align 8
  call void @_ZSt20__throw_length_errorPKc(i8* %12) #16
  unreachable

; <label>:13                                      ; preds = %0
  %14 = call i64 @_ZNKSt6vectorI9CVariableSaIS0_EE4sizeEv(%"class.std::vector"* %5)
  %15 = call i64 @_ZNKSt6vectorI9CVariableSaIS0_EE4sizeEv(%"class.std::vector"* %5)
  store i64 %15, i64* %4, align 8
  %16 = call dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* dereferenceable(8) %4, i64* dereferenceable(8) %2)
  %17 = load i64, i64* %16, align 8
  %18 = add i64 %14, %17
  store i64 %18, i64* %__len, align 8
  %19 = load i64, i64* %__len, align 8
  %20 = call i64 @_ZNKSt6vectorI9CVariableSaIS0_EE4sizeEv(%"class.std::vector"* %5)
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %26, label %22

; <label>:22                                      ; preds = %13
  %23 = load i64, i64* %__len, align 8
  %24 = call i64 @_ZNKSt6vectorI9CVariableSaIS0_EE8max_sizeEv(%"class.std::vector"* %5)
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %28

; <label>:26                                      ; preds = %22, %13
  %27 = call i64 @_ZNKSt6vectorI9CVariableSaIS0_EE8max_sizeEv(%"class.std::vector"* %5)
  br label %30

; <label>:28                                      ; preds = %22
  %29 = load i64, i64* %__len, align 8
  br label %30

; <label>:30                                      ; preds = %28, %26
  %31 = phi i64 [ %27, %26 ], [ %29, %28 ]
  ret i64 %31
}

; Function Attrs: uwtable
define linkonce_odr %class.CVariable* @_ZNSt6vectorI9CVariableSaIS0_EE5beginEv(%"class.std::vector"* %this) #0 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %2 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %2, align 8
  %3 = load %"class.std::vector"*, %"class.std::vector"** %2, align 8
  %4 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %5 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl", %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl"* %5, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIP9CVariableSt6vectorIS1_SaIS1_EEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator"* %1, %class.CVariable** dereferenceable(8) %6)
  %7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %1, i32 0, i32 0
  %8 = load %class.CVariable*, %class.CVariable** %7, align 8
  ret %class.CVariable* %8
}

; Function Attrs: uwtable
define linkonce_odr %class.CVariable* @_ZNSt12_Vector_baseI9CVariableSaIS0_EE11_M_allocateEm(%"struct.std::_Vector_base"* %this, i64 %__n) #0 comdat align 2 {
  %1 = alloca %"struct.std::_Vector_base"*, align 8
  %2 = alloca i64, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %3 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %1, align 8
  %4 = load i64, i64* %2, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %11

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %3, i32 0, i32 0
  %8 = bitcast %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl"* %7 to %"class.std::allocator"*
  %9 = load i64, i64* %2, align 8
  %10 = call %class.CVariable* @_ZN9__gnu_cxx14__alloc_traitsISaI9CVariableEE8allocateERS2_m(%"class.std::allocator"* dereferenceable(1) %8, i64 %9)
  br label %12

; <label>:11                                      ; preds = %0
  br label %12

; <label>:12                                      ; preds = %11, %6
  %13 = phi %class.CVariable* [ %10, %6 ], [ null, %11 ]
  ret %class.CVariable* %13
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %class.CVariable* @_ZSt34__uninitialized_move_if_noexcept_aIP9CVariableS1_SaIS0_EET0_T_S4_S3_RT1_(%class.CVariable* %__first, %class.CVariable* %__last, %class.CVariable* %__result, %"class.std::allocator"* dereferenceable(1) %__alloc) #7 comdat {
  %1 = alloca %class.CVariable*, align 8
  %2 = alloca %class.CVariable*, align 8
  %3 = alloca %class.CVariable*, align 8
  %4 = alloca %"class.std::allocator"*, align 8
  store %class.CVariable* %__first, %class.CVariable** %1, align 8
  store %class.CVariable* %__last, %class.CVariable** %2, align 8
  store %class.CVariable* %__result, %class.CVariable** %3, align 8
  store %"class.std::allocator"* %__alloc, %"class.std::allocator"** %4, align 8
  %5 = load %class.CVariable*, %class.CVariable** %1, align 8
  %6 = load %class.CVariable*, %class.CVariable** %2, align 8
  %7 = load %class.CVariable*, %class.CVariable** %3, align 8
  %8 = load %"class.std::allocator"*, %"class.std::allocator"** %4, align 8
  %9 = call %class.CVariable* @_ZSt22__uninitialized_copy_aIP9CVariableS1_S0_ET0_T_S3_S2_RSaIT1_E(%class.CVariable* %5, %class.CVariable* %6, %class.CVariable* %7, %"class.std::allocator"* dereferenceable(1) %8)
  ret %class.CVariable* %9
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt8_DestroyIP9CVariableS0_EvT_S2_RSaIT0_E(%class.CVariable* %__first, %class.CVariable* %__last, %"class.std::allocator"* dereferenceable(1)) #7 comdat {
  %2 = alloca %class.CVariable*, align 8
  %3 = alloca %class.CVariable*, align 8
  %4 = alloca %"class.std::allocator"*, align 8
  store %class.CVariable* %__first, %class.CVariable** %2, align 8
  store %class.CVariable* %__last, %class.CVariable** %3, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %4, align 8
  %5 = load %class.CVariable*, %class.CVariable** %2, align 8
  %6 = load %class.CVariable*, %class.CVariable** %3, align 8
  call void @_ZSt8_DestroyIP9CVariableEvT_S2_(%class.CVariable* %5, %class.CVariable* %6)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt12_Vector_baseI9CVariableSaIS0_EE13_M_deallocateEPS0_m(%"struct.std::_Vector_base"* %this, %class.CVariable* %__p, i64 %__n) #0 comdat align 2 {
  %1 = alloca %"struct.std::_Vector_base"*, align 8
  %2 = alloca %class.CVariable*, align 8
  %3 = alloca i64, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %1, align 8
  store %class.CVariable* %__p, %class.CVariable** %2, align 8
  store i64 %__n, i64* %3, align 8
  %4 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %1, align 8
  %5 = load %class.CVariable*, %class.CVariable** %2, align 8
  %6 = icmp ne %class.CVariable* %5, null
  br i1 %6, label %7, label %12

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %4, i32 0, i32 0
  %9 = bitcast %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl"* %8 to %"class.std::allocator"*
  %10 = load %class.CVariable*, %class.CVariable** %2, align 8
  %11 = load i64, i64* %3, align 8
  call void @_ZN9__gnu_cxx14__alloc_traitsISaI9CVariableEE10deallocateERS2_PS1_m(%"class.std::allocator"* dereferenceable(1) %9, %class.CVariable* %10, i64 %11)
  br label %12

; <label>:12                                      ; preds = %7, %0
  ret void
}

declare void @__cxa_rethrow()

declare void @__cxa_end_catch()

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIP15CLitPoolElementSaIS1_EEC2ERKS3_(%"class.std::vector.0"* %this, %"class.std::vector.0"* dereferenceable(24) %__x) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %"class.std::vector.0"*, align 8
  %2 = alloca %"class.std::vector.0"*, align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.41", align 8
  %4 = alloca i8*
  %5 = alloca i32
  %6 = alloca %"class.__gnu_cxx::__normal_iterator.41", align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %1, align 8
  store %"class.std::vector.0"* %__x, %"class.std::vector.0"** %2, align 8
  %7 = load %"class.std::vector.0"*, %"class.std::vector.0"** %1, align 8
  %8 = bitcast %"class.std::vector.0"* %7 to %"struct.std::_Vector_base.1"*
  %9 = load %"class.std::vector.0"*, %"class.std::vector.0"** %2, align 8
  %10 = call i64 @_ZNKSt6vectorIP15CLitPoolElementSaIS1_EE4sizeEv(%"class.std::vector.0"* %9)
  %11 = load %"class.std::vector.0"*, %"class.std::vector.0"** %2, align 8
  %12 = bitcast %"class.std::vector.0"* %11 to %"struct.std::_Vector_base.1"*
  %13 = call dereferenceable(1) %"class.std::allocator.2"* @_ZNKSt12_Vector_baseIP15CLitPoolElementSaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %12)
  %14 = call dereferenceable(1) %"class.std::allocator.2"* @_ZN9__gnu_cxx14__alloc_traitsISaIP15CLitPoolElementEE17_S_select_on_copyERKS3_(%"class.std::allocator.2"* dereferenceable(1) %13)
  call void @_ZNSt12_Vector_baseIP15CLitPoolElementSaIS1_EEC2EmRKS2_(%"struct.std::_Vector_base.1"* %8, i64 %10, %"class.std::allocator.2"* dereferenceable(1) %14)
  %15 = load %"class.std::vector.0"*, %"class.std::vector.0"** %2, align 8
  %16 = invoke %class.CLitPoolElement** @_ZNKSt6vectorIP15CLitPoolElementSaIS1_EE5beginEv(%"class.std::vector.0"* %15)
          to label %17 unwind label %39

; <label>:17                                      ; preds = %0
  %18 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %3, i32 0, i32 0
  store %class.CLitPoolElement** %16, %class.CLitPoolElement*** %18, align 8
  %19 = load %"class.std::vector.0"*, %"class.std::vector.0"** %2, align 8
  %20 = invoke %class.CLitPoolElement** @_ZNKSt6vectorIP15CLitPoolElementSaIS1_EE3endEv(%"class.std::vector.0"* %19)
          to label %21 unwind label %39

; <label>:21                                      ; preds = %17
  %22 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %6, i32 0, i32 0
  store %class.CLitPoolElement** %20, %class.CLitPoolElement*** %22, align 8
  %23 = bitcast %"class.std::vector.0"* %7 to %"struct.std::_Vector_base.1"*
  %24 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %23, i32 0, i32 0
  %25 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %24, i32 0, i32 0
  %26 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %25, align 8
  %27 = bitcast %"class.std::vector.0"* %7 to %"struct.std::_Vector_base.1"*
  %28 = invoke dereferenceable(1) %"class.std::allocator.2"* @_ZNSt12_Vector_baseIP15CLitPoolElementSaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %27)
          to label %29 unwind label %39

; <label>:29                                      ; preds = %21
  %30 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %3, i32 0, i32 0
  %31 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %30, align 8
  %32 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %6, i32 0, i32 0
  %33 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %32, align 8
  %34 = invoke %class.CLitPoolElement** @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKP15CLitPoolElementSt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E(%class.CLitPoolElement** %31, %class.CLitPoolElement** %33, %class.CLitPoolElement** %26, %"class.std::allocator.2"* dereferenceable(1) %28)
          to label %35 unwind label %39

; <label>:35                                      ; preds = %29
  %36 = bitcast %"class.std::vector.0"* %7 to %"struct.std::_Vector_base.1"*
  %37 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %36, i32 0, i32 0
  %38 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %37, i32 0, i32 1
  store %class.CLitPoolElement** %34, %class.CLitPoolElement*** %38, align 8
  ret void

; <label>:39                                      ; preds = %29, %21, %17, %0
  %40 = landingpad { i8*, i32 }
          cleanup
  %41 = extractvalue { i8*, i32 } %40, 0
  store i8* %41, i8** %4, align 8
  %42 = extractvalue { i8*, i32 } %40, 1
  store i32 %42, i32* %5, align 4
  %43 = bitcast %"class.std::vector.0"* %7 to %"struct.std::_Vector_base.1"*
  invoke void @_ZNSt12_Vector_baseIP15CLitPoolElementSaIS1_EED2Ev(%"struct.std::_Vector_base.1"* %43)
          to label %44 unwind label %50

; <label>:44                                      ; preds = %39
  br label %45

; <label>:45                                      ; preds = %44
  %46 = load i8*, i8** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = insertvalue { i8*, i32 } undef, i8* %46, 0
  %49 = insertvalue { i8*, i32 } %48, i32 %47, 1
  resume { i8*, i32 } %49

; <label>:50                                      ; preds = %39
  %51 = landingpad { i8*, i32 }
          catch i8* null
  %52 = extractvalue { i8*, i32 } %51, 0
  call void @__clang_call_terminate(i8* %52) #12
  unreachable
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNKSt6vectorIP15CLitPoolElementSaIS1_EE4sizeEv(%"class.std::vector.0"* %this) #5 comdat align 2 {
  %1 = alloca %"class.std::vector.0"*, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %1, align 8
  %2 = load %"class.std::vector.0"*, %"class.std::vector.0"** %1, align 8
  %3 = bitcast %"class.std::vector.0"* %2 to %"struct.std::_Vector_base.1"*
  %4 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %4, i32 0, i32 1
  %6 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %5, align 8
  %7 = bitcast %"class.std::vector.0"* %2 to %"struct.std::_Vector_base.1"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %7, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %8, i32 0, i32 0
  %10 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %9, align 8
  %11 = ptrtoint %class.CLitPoolElement** %6 to i64
  %12 = ptrtoint %class.CLitPoolElement** %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 8
  ret i64 %14
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(1) %"class.std::allocator.2"* @_ZN9__gnu_cxx14__alloc_traitsISaIP15CLitPoolElementEE17_S_select_on_copyERKS3_(%"class.std::allocator.2"* dereferenceable(1) %__a) #5 comdat align 2 {
  %1 = alloca %"class.std::allocator.2"*, align 8
  store %"class.std::allocator.2"* %__a, %"class.std::allocator.2"** %1, align 8
  %2 = load %"class.std::allocator.2"*, %"class.std::allocator.2"** %1, align 8
  ret %"class.std::allocator.2"* %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(1) %"class.std::allocator.2"* @_ZNKSt12_Vector_baseIP15CLitPoolElementSaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %this) #5 comdat align 2 {
  %1 = alloca %"struct.std::_Vector_base.1"*, align 8
  store %"struct.std::_Vector_base.1"* %this, %"struct.std::_Vector_base.1"** %1, align 8
  %2 = load %"struct.std::_Vector_base.1"*, %"struct.std::_Vector_base.1"** %1, align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %2, i32 0, i32 0
  %4 = bitcast %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %3 to %"class.std::allocator.2"*
  ret %"class.std::allocator.2"* %4
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIP15CLitPoolElementSaIS1_EEC2EmRKS2_(%"struct.std::_Vector_base.1"* %this, i64 %__n, %"class.std::allocator.2"* dereferenceable(1) %__a) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %"struct.std::_Vector_base.1"*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %"class.std::allocator.2"*, align 8
  %4 = alloca i8*
  %5 = alloca i32
  store %"struct.std::_Vector_base.1"* %this, %"struct.std::_Vector_base.1"** %1, align 8
  store i64 %__n, i64* %2, align 8
  store %"class.std::allocator.2"* %__a, %"class.std::allocator.2"** %3, align 8
  %6 = load %"struct.std::_Vector_base.1"*, %"struct.std::_Vector_base.1"** %1, align 8
  %7 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %6, i32 0, i32 0
  %8 = load %"class.std::allocator.2"*, %"class.std::allocator.2"** %3, align 8
  call void @_ZNSt12_Vector_baseIP15CLitPoolElementSaIS1_EE12_Vector_implC2ERKS2_(%"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %7, %"class.std::allocator.2"* dereferenceable(1) %8)
  %9 = load i64, i64* %2, align 8
  invoke void @_ZNSt12_Vector_baseIP15CLitPoolElementSaIS1_EE17_M_create_storageEm(%"struct.std::_Vector_base.1"* %6, i64 %9)
          to label %10 unwind label %11

; <label>:10                                      ; preds = %0
  ret void

; <label>:11                                      ; preds = %0
  %12 = landingpad { i8*, i32 }
          cleanup
  %13 = extractvalue { i8*, i32 } %12, 0
  store i8* %13, i8** %4, align 8
  %14 = extractvalue { i8*, i32 } %12, 1
  store i32 %14, i32* %5, align 4
  call void @_ZNSt12_Vector_baseIP15CLitPoolElementSaIS1_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %7) #2
  br label %15

; <label>:15                                      ; preds = %11
  %16 = load i8*, i8** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = insertvalue { i8*, i32 } undef, i8* %16, 0
  %19 = insertvalue { i8*, i32 } %18, i32 %17, 1
  resume { i8*, i32 } %19
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %class.CLitPoolElement** @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKP15CLitPoolElementSt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E(%class.CLitPoolElement** %__first.coerce, %class.CLitPoolElement** %__last.coerce, %class.CLitPoolElement** %__result, %"class.std::allocator.2"* dereferenceable(1)) #7 comdat {
  %__first = alloca %"class.__gnu_cxx::__normal_iterator.41", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator.41", align 8
  %2 = alloca %class.CLitPoolElement**, align 8
  %3 = alloca %"class.std::allocator.2"*, align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.41", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.41", align 8
  %6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %__first, i32 0, i32 0
  store %class.CLitPoolElement** %__first.coerce, %class.CLitPoolElement*** %6, align 8
  %7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %__last, i32 0, i32 0
  store %class.CLitPoolElement** %__last.coerce, %class.CLitPoolElement*** %7, align 8
  store %class.CLitPoolElement** %__result, %class.CLitPoolElement*** %2, align 8
  store %"class.std::allocator.2"* %0, %"class.std::allocator.2"** %3, align 8
  %8 = bitcast %"class.__gnu_cxx::__normal_iterator.41"* %4 to i8*
  %9 = bitcast %"class.__gnu_cxx::__normal_iterator.41"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false)
  %10 = bitcast %"class.__gnu_cxx::__normal_iterator.41"* %5 to i8*
  %11 = bitcast %"class.__gnu_cxx::__normal_iterator.41"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 8, i32 8, i1 false)
  %12 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %2, align 8
  %13 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %4, i32 0, i32 0
  %14 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %13, align 8
  %15 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %5, i32 0, i32 0
  %16 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %15, align 8
  %17 = call %class.CLitPoolElement** @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKP15CLitPoolElementSt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(%class.CLitPoolElement** %14, %class.CLitPoolElement** %16, %class.CLitPoolElement** %12)
  ret %class.CLitPoolElement** %17
}

; Function Attrs: uwtable
define linkonce_odr %class.CLitPoolElement** @_ZNKSt6vectorIP15CLitPoolElementSaIS1_EE5beginEv(%"class.std::vector.0"* %this) #0 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.41", align 8
  %2 = alloca %"class.std::vector.0"*, align 8
  %3 = alloca %class.CLitPoolElement**, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %2, align 8
  %4 = load %"class.std::vector.0"*, %"class.std::vector.0"** %2, align 8
  %5 = bitcast %"class.std::vector.0"* %4 to %"struct.std::_Vector_base.1"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %6, i32 0, i32 0
  %8 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %7, align 8
  store %class.CLitPoolElement** %8, %class.CLitPoolElement*** %3, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKP15CLitPoolElementSt6vectorIS2_SaIS2_EEEC2ERKS4_(%"class.__gnu_cxx::__normal_iterator.41"* %1, %class.CLitPoolElement*** dereferenceable(8) %3)
  %9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %1, i32 0, i32 0
  %10 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %9, align 8
  ret %class.CLitPoolElement** %10
}

; Function Attrs: uwtable
define linkonce_odr %class.CLitPoolElement** @_ZNKSt6vectorIP15CLitPoolElementSaIS1_EE3endEv(%"class.std::vector.0"* %this) #0 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.41", align 8
  %2 = alloca %"class.std::vector.0"*, align 8
  %3 = alloca %class.CLitPoolElement**, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %2, align 8
  %4 = load %"class.std::vector.0"*, %"class.std::vector.0"** %2, align 8
  %5 = bitcast %"class.std::vector.0"* %4 to %"struct.std::_Vector_base.1"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %6, i32 0, i32 1
  %8 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %7, align 8
  store %class.CLitPoolElement** %8, %class.CLitPoolElement*** %3, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKP15CLitPoolElementSt6vectorIS2_SaIS2_EEEC2ERKS4_(%"class.__gnu_cxx::__normal_iterator.41"* %1, %class.CLitPoolElement*** dereferenceable(8) %3)
  %9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %1, i32 0, i32 0
  %10 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %9, align 8
  ret %class.CLitPoolElement** %10
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(1) %"class.std::allocator.2"* @_ZNSt12_Vector_baseIP15CLitPoolElementSaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %this) #5 comdat align 2 {
  %1 = alloca %"struct.std::_Vector_base.1"*, align 8
  store %"struct.std::_Vector_base.1"* %this, %"struct.std::_Vector_base.1"** %1, align 8
  %2 = load %"struct.std::_Vector_base.1"*, %"struct.std::_Vector_base.1"** %1, align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %2, i32 0, i32 0
  %4 = bitcast %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %3 to %"class.std::allocator.2"*
  ret %"class.std::allocator.2"* %4
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIP15CLitPoolElementSaIS1_EED2Ev(%"struct.std::_Vector_base.1"* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %"struct.std::_Vector_base.1"*, align 8
  %2 = alloca i8*
  %3 = alloca i32
  store %"struct.std::_Vector_base.1"* %this, %"struct.std::_Vector_base.1"** %1, align 8
  %4 = load %"struct.std::_Vector_base.1"*, %"struct.std::_Vector_base.1"** %1, align 8
  %5 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %5, i32 0, i32 0
  %7 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %6, align 8
  %8 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %4, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %8, i32 0, i32 2
  %10 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %9, align 8
  %11 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %4, i32 0, i32 0
  %12 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %11, i32 0, i32 0
  %13 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %12, align 8
  %14 = ptrtoint %class.CLitPoolElement** %10 to i64
  %15 = ptrtoint %class.CLitPoolElement** %13 to i64
  %16 = sub i64 %14, %15
  %17 = sdiv exact i64 %16, 8
  invoke void @_ZNSt12_Vector_baseIP15CLitPoolElementSaIS1_EE13_M_deallocateEPS1_m(%"struct.std::_Vector_base.1"* %4, %class.CLitPoolElement** %7, i64 %17)
          to label %18 unwind label %20

; <label>:18                                      ; preds = %0
  %19 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %4, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIP15CLitPoolElementSaIS1_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %19) #2
  ret void

; <label>:20                                      ; preds = %0
  %21 = landingpad { i8*, i32 }
          cleanup
  %22 = extractvalue { i8*, i32 } %21, 0
  store i8* %22, i8** %2, align 8
  %23 = extractvalue { i8*, i32 } %21, 1
  store i32 %23, i32* %3, align 4
  %24 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %4, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIP15CLitPoolElementSaIS1_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %24) #2
  br label %25

; <label>:25                                      ; preds = %20
  %26 = load i8*, i8** %2, align 8
  %27 = load i32, i32* %3, align 4
  %28 = insertvalue { i8*, i32 } undef, i8* %26, 0
  %29 = insertvalue { i8*, i32 } %28, i32 %27, 1
  resume { i8*, i32 } %29
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIP15CLitPoolElementSaIS1_EE12_Vector_implC2ERKS2_(%"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %this, %"class.std::allocator.2"* dereferenceable(1) %__a) unnamed_addr #5 comdat align 2 {
  %1 = alloca %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"*, align 8
  %2 = alloca %"class.std::allocator.2"*, align 8
  store %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %this, %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"** %1, align 8
  store %"class.std::allocator.2"* %__a, %"class.std::allocator.2"** %2, align 8
  %3 = load %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"*, %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"** %1, align 8
  %4 = bitcast %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %3 to %"class.std::allocator.2"*
  %5 = load %"class.std::allocator.2"*, %"class.std::allocator.2"** %2, align 8
  call void @_ZNSaIP15CLitPoolElementEC2ERKS1_(%"class.std::allocator.2"* %4, %"class.std::allocator.2"* dereferenceable(1) %5) #2
  %6 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %3, i32 0, i32 0
  store %class.CLitPoolElement** null, %class.CLitPoolElement*** %6, align 8
  %7 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %3, i32 0, i32 1
  store %class.CLitPoolElement** null, %class.CLitPoolElement*** %7, align 8
  %8 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %3, i32 0, i32 2
  store %class.CLitPoolElement** null, %class.CLitPoolElement*** %8, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIP15CLitPoolElementSaIS1_EE17_M_create_storageEm(%"struct.std::_Vector_base.1"* %this, i64 %__n) #0 comdat align 2 {
  %1 = alloca %"struct.std::_Vector_base.1"*, align 8
  %2 = alloca i64, align 8
  store %"struct.std::_Vector_base.1"* %this, %"struct.std::_Vector_base.1"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %3 = load %"struct.std::_Vector_base.1"*, %"struct.std::_Vector_base.1"** %1, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call %class.CLitPoolElement** @_ZNSt12_Vector_baseIP15CLitPoolElementSaIS1_EE11_M_allocateEm(%"struct.std::_Vector_base.1"* %3, i64 %4)
  %6 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %3, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %6, i32 0, i32 0
  store %class.CLitPoolElement** %5, %class.CLitPoolElement*** %7, align 8
  %8 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %3, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %8, i32 0, i32 0
  %10 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %9, align 8
  %11 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %3, i32 0, i32 0
  %12 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %11, i32 0, i32 1
  store %class.CLitPoolElement** %10, %class.CLitPoolElement*** %12, align 8
  %13 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %3, i32 0, i32 0
  %14 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %13, i32 0, i32 0
  %15 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %14, align 8
  %16 = load i64, i64* %2, align 8
  %17 = getelementptr inbounds %class.CLitPoolElement*, %class.CLitPoolElement** %15, i64 %16
  %18 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %3, i32 0, i32 0
  %19 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %18, i32 0, i32 2
  store %class.CLitPoolElement** %17, %class.CLitPoolElement*** %19, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIP15CLitPoolElementSaIS1_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %this) unnamed_addr #10 comdat align 2 {
  %1 = alloca %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %this, %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"** %1, align 8
  %2 = load %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"*, %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"** %1, align 8
  %3 = bitcast %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %2 to %"class.std::allocator.2"*
  call void @_ZNSaIP15CLitPoolElementED2Ev(%"class.std::allocator.2"* %3) #2
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIP15CLitPoolElementEC2ERKS1_(%"class.std::allocator.2"* %this, %"class.std::allocator.2"* dereferenceable(1) %__a) unnamed_addr #5 comdat align 2 {
  %1 = alloca %"class.std::allocator.2"*, align 8
  %2 = alloca %"class.std::allocator.2"*, align 8
  store %"class.std::allocator.2"* %this, %"class.std::allocator.2"** %1, align 8
  store %"class.std::allocator.2"* %__a, %"class.std::allocator.2"** %2, align 8
  %3 = load %"class.std::allocator.2"*, %"class.std::allocator.2"** %1, align 8
  %4 = bitcast %"class.std::allocator.2"* %3 to %"class.__gnu_cxx::new_allocator.3"*
  %5 = load %"class.std::allocator.2"*, %"class.std::allocator.2"** %2, align 8
  %6 = bitcast %"class.std::allocator.2"* %5 to %"class.__gnu_cxx::new_allocator.3"*
  call void @_ZN9__gnu_cxx13new_allocatorIP15CLitPoolElementEC2ERKS3_(%"class.__gnu_cxx::new_allocator.3"* %4, %"class.__gnu_cxx::new_allocator.3"* dereferenceable(1) %6) #2
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIP15CLitPoolElementEC2ERKS3_(%"class.__gnu_cxx::new_allocator.3"* %this, %"class.__gnu_cxx::new_allocator.3"* dereferenceable(1)) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.3"*, align 8
  %3 = alloca %"class.__gnu_cxx::new_allocator.3"*, align 8
  store %"class.__gnu_cxx::new_allocator.3"* %this, %"class.__gnu_cxx::new_allocator.3"** %2, align 8
  store %"class.__gnu_cxx::new_allocator.3"* %0, %"class.__gnu_cxx::new_allocator.3"** %3, align 8
  %4 = load %"class.__gnu_cxx::new_allocator.3"*, %"class.__gnu_cxx::new_allocator.3"** %2, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr %class.CLitPoolElement** @_ZNSt12_Vector_baseIP15CLitPoolElementSaIS1_EE11_M_allocateEm(%"struct.std::_Vector_base.1"* %this, i64 %__n) #0 comdat align 2 {
  %1 = alloca %"struct.std::_Vector_base.1"*, align 8
  %2 = alloca i64, align 8
  store %"struct.std::_Vector_base.1"* %this, %"struct.std::_Vector_base.1"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %3 = load %"struct.std::_Vector_base.1"*, %"struct.std::_Vector_base.1"** %1, align 8
  %4 = load i64, i64* %2, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %11

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %3, i32 0, i32 0
  %8 = bitcast %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %7 to %"class.std::allocator.2"*
  %9 = load i64, i64* %2, align 8
  %10 = call %class.CLitPoolElement** @_ZN9__gnu_cxx14__alloc_traitsISaIP15CLitPoolElementEE8allocateERS3_m(%"class.std::allocator.2"* dereferenceable(1) %8, i64 %9)
  br label %12

; <label>:11                                      ; preds = %0
  br label %12

; <label>:12                                      ; preds = %11, %6
  %13 = phi %class.CLitPoolElement** [ %10, %6 ], [ null, %11 ]
  ret %class.CLitPoolElement** %13
}

; Function Attrs: uwtable
define linkonce_odr %class.CLitPoolElement** @_ZN9__gnu_cxx14__alloc_traitsISaIP15CLitPoolElementEE8allocateERS3_m(%"class.std::allocator.2"* dereferenceable(1) %__a, i64 %__n) #0 comdat align 2 {
  %1 = alloca %"class.std::allocator.2"*, align 8
  %2 = alloca i64, align 8
  store %"class.std::allocator.2"* %__a, %"class.std::allocator.2"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %3 = load %"class.std::allocator.2"*, %"class.std::allocator.2"** %1, align 8
  %4 = bitcast %"class.std::allocator.2"* %3 to %"class.__gnu_cxx::new_allocator.3"*
  %5 = load i64, i64* %2, align 8
  %6 = call %class.CLitPoolElement** @_ZN9__gnu_cxx13new_allocatorIP15CLitPoolElementE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.3"* %4, i64 %5, i8* null)
  ret %class.CLitPoolElement** %6
}

; Function Attrs: uwtable
define linkonce_odr %class.CLitPoolElement** @_ZN9__gnu_cxx13new_allocatorIP15CLitPoolElementE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.3"* %this, i64 %__n, i8*) #0 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.3"*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator.3"* %this, %"class.__gnu_cxx::new_allocator.3"** %2, align 8
  store i64 %__n, i64* %3, align 8
  store i8* %0, i8** %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.3"*, %"class.__gnu_cxx::new_allocator.3"** %2, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @_ZNK9__gnu_cxx13new_allocatorIP15CLitPoolElementE8max_sizeEv(%"class.__gnu_cxx::new_allocator.3"* %5) #2
  %8 = icmp ugt i64 %6, %7
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %1
  call void @_ZSt17__throw_bad_allocv() #16
  unreachable

; <label>:10                                      ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = mul i64 %11, 8
  %13 = call noalias i8* @_Znwm(i64 %12)
  %14 = bitcast i8* %13 to %class.CLitPoolElement**
  ret %class.CLitPoolElement** %14
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorIP15CLitPoolElementE8max_sizeEv(%"class.__gnu_cxx::new_allocator.3"* %this) #5 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.3"*, align 8
  store %"class.__gnu_cxx::new_allocator.3"* %this, %"class.__gnu_cxx::new_allocator.3"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.3"*, %"class.__gnu_cxx::new_allocator.3"** %1, align 8
  ret i64 2305843009213693951
}

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() #11

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIP15CLitPoolElementED2Ev(%"class.std::allocator.2"* %this) unnamed_addr #5 comdat align 2 {
  %1 = alloca %"class.std::allocator.2"*, align 8
  store %"class.std::allocator.2"* %this, %"class.std::allocator.2"** %1, align 8
  %2 = load %"class.std::allocator.2"*, %"class.std::allocator.2"** %1, align 8
  %3 = bitcast %"class.std::allocator.2"* %2 to %"class.__gnu_cxx::new_allocator.3"*
  call void @_ZN9__gnu_cxx13new_allocatorIP15CLitPoolElementED2Ev(%"class.__gnu_cxx::new_allocator.3"* %3) #2
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIP15CLitPoolElementED2Ev(%"class.__gnu_cxx::new_allocator.3"* %this) unnamed_addr #5 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.3"*, align 8
  store %"class.__gnu_cxx::new_allocator.3"* %this, %"class.__gnu_cxx::new_allocator.3"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.3"*, %"class.__gnu_cxx::new_allocator.3"** %1, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %class.CLitPoolElement** @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKP15CLitPoolElementSt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(%class.CLitPoolElement** %__first.coerce, %class.CLitPoolElement** %__last.coerce, %class.CLitPoolElement** %__result) #7 comdat {
  %__first = alloca %"class.__gnu_cxx::__normal_iterator.41", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator.41", align 8
  %1 = alloca %class.CLitPoolElement**, align 8
  %__assignable = alloca i8, align 1
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.41", align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.41", align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %__first, i32 0, i32 0
  store %class.CLitPoolElement** %__first.coerce, %class.CLitPoolElement*** %4, align 8
  %5 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %__last, i32 0, i32 0
  store %class.CLitPoolElement** %__last.coerce, %class.CLitPoolElement*** %5, align 8
  store %class.CLitPoolElement** %__result, %class.CLitPoolElement*** %1, align 8
  store i8 1, i8* %__assignable, align 1
  %6 = bitcast %"class.__gnu_cxx::__normal_iterator.41"* %2 to i8*
  %7 = bitcast %"class.__gnu_cxx::__normal_iterator.41"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %8 = bitcast %"class.__gnu_cxx::__normal_iterator.41"* %3 to i8*
  %9 = bitcast %"class.__gnu_cxx::__normal_iterator.41"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false)
  %10 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %1, align 8
  %11 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %2, i32 0, i32 0
  %12 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %11, align 8
  %13 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %3, i32 0, i32 0
  %14 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %13, align 8
  %15 = call %class.CLitPoolElement** @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKP15CLitPoolElementSt6vectorIS5_SaIS5_EEEEPS5_EET0_T_SE_SD_(%class.CLitPoolElement** %12, %class.CLitPoolElement** %14, %class.CLitPoolElement** %10)
  ret %class.CLitPoolElement** %15
}

; Function Attrs: uwtable
define linkonce_odr %class.CLitPoolElement** @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKP15CLitPoolElementSt6vectorIS5_SaIS5_EEEEPS5_EET0_T_SE_SD_(%class.CLitPoolElement** %__first.coerce, %class.CLitPoolElement** %__last.coerce, %class.CLitPoolElement** %__result) #0 comdat align 2 {
  %__first = alloca %"class.__gnu_cxx::__normal_iterator.41", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator.41", align 8
  %1 = alloca %class.CLitPoolElement**, align 8
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.41", align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.41", align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %__first, i32 0, i32 0
  store %class.CLitPoolElement** %__first.coerce, %class.CLitPoolElement*** %4, align 8
  %5 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %__last, i32 0, i32 0
  store %class.CLitPoolElement** %__last.coerce, %class.CLitPoolElement*** %5, align 8
  store %class.CLitPoolElement** %__result, %class.CLitPoolElement*** %1, align 8
  %6 = bitcast %"class.__gnu_cxx::__normal_iterator.41"* %2 to i8*
  %7 = bitcast %"class.__gnu_cxx::__normal_iterator.41"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %8 = bitcast %"class.__gnu_cxx::__normal_iterator.41"* %3 to i8*
  %9 = bitcast %"class.__gnu_cxx::__normal_iterator.41"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false)
  %10 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %1, align 8
  %11 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %2, i32 0, i32 0
  %12 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %11, align 8
  %13 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %3, i32 0, i32 0
  %14 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %13, align 8
  %15 = call %class.CLitPoolElement** @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP15CLitPoolElementSt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(%class.CLitPoolElement** %12, %class.CLitPoolElement** %14, %class.CLitPoolElement** %10)
  ret %class.CLitPoolElement** %15
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %class.CLitPoolElement** @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP15CLitPoolElementSt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(%class.CLitPoolElement** %__first.coerce, %class.CLitPoolElement** %__last.coerce, %class.CLitPoolElement** %__result) #7 comdat {
  %__first = alloca %"class.__gnu_cxx::__normal_iterator.41", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator.41", align 8
  %1 = alloca %class.CLitPoolElement**, align 8
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.41", align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.41", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.41", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.41", align 8
  %6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %__first, i32 0, i32 0
  store %class.CLitPoolElement** %__first.coerce, %class.CLitPoolElement*** %6, align 8
  %7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %__last, i32 0, i32 0
  store %class.CLitPoolElement** %__last.coerce, %class.CLitPoolElement*** %7, align 8
  store %class.CLitPoolElement** %__result, %class.CLitPoolElement*** %1, align 8
  %8 = bitcast %"class.__gnu_cxx::__normal_iterator.41"* %3 to i8*
  %9 = bitcast %"class.__gnu_cxx::__normal_iterator.41"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false)
  %10 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %3, i32 0, i32 0
  %11 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %10, align 8
  %12 = call %class.CLitPoolElement** @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKP15CLitPoolElementSt6vectorIS3_SaIS3_EEEEENSt11_Miter_baseIT_E13iterator_typeESB_(%class.CLitPoolElement** %11)
  %13 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %2, i32 0, i32 0
  store %class.CLitPoolElement** %12, %class.CLitPoolElement*** %13, align 8
  %14 = bitcast %"class.__gnu_cxx::__normal_iterator.41"* %5 to i8*
  %15 = bitcast %"class.__gnu_cxx::__normal_iterator.41"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 8, i32 8, i1 false)
  %16 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %5, i32 0, i32 0
  %17 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %16, align 8
  %18 = call %class.CLitPoolElement** @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKP15CLitPoolElementSt6vectorIS3_SaIS3_EEEEENSt11_Miter_baseIT_E13iterator_typeESB_(%class.CLitPoolElement** %17)
  %19 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %4, i32 0, i32 0
  store %class.CLitPoolElement** %18, %class.CLitPoolElement*** %19, align 8
  %20 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %1, align 8
  %21 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %2, i32 0, i32 0
  %22 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %21, align 8
  %23 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %4, i32 0, i32 0
  %24 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %23, align 8
  %25 = call %class.CLitPoolElement** @_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKP15CLitPoolElementSt6vectorIS3_SaIS3_EEEEPS3_ET1_T0_SC_SB_(%class.CLitPoolElement** %22, %class.CLitPoolElement** %24, %class.CLitPoolElement** %20)
  ret %class.CLitPoolElement** %25
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %class.CLitPoolElement** @_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKP15CLitPoolElementSt6vectorIS3_SaIS3_EEEEPS3_ET1_T0_SC_SB_(%class.CLitPoolElement** %__first.coerce, %class.CLitPoolElement** %__last.coerce, %class.CLitPoolElement** %__result) #7 comdat {
  %__first = alloca %"class.__gnu_cxx::__normal_iterator.41", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator.41", align 8
  %1 = alloca %class.CLitPoolElement**, align 8
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.41", align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.41", align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %__first, i32 0, i32 0
  store %class.CLitPoolElement** %__first.coerce, %class.CLitPoolElement*** %4, align 8
  %5 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %__last, i32 0, i32 0
  store %class.CLitPoolElement** %__last.coerce, %class.CLitPoolElement*** %5, align 8
  store %class.CLitPoolElement** %__result, %class.CLitPoolElement*** %1, align 8
  %6 = bitcast %"class.__gnu_cxx::__normal_iterator.41"* %2 to i8*
  %7 = bitcast %"class.__gnu_cxx::__normal_iterator.41"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %8 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %2, i32 0, i32 0
  %9 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %8, align 8
  %10 = call %class.CLitPoolElement** @_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPKP15CLitPoolElementSt6vectorIS3_SaIS3_EEEEENSt11_Niter_baseIT_E13iterator_typeESB_(%class.CLitPoolElement** %9)
  %11 = bitcast %"class.__gnu_cxx::__normal_iterator.41"* %3 to i8*
  %12 = bitcast %"class.__gnu_cxx::__normal_iterator.41"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 8, i32 8, i1 false)
  %13 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %3, i32 0, i32 0
  %14 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %13, align 8
  %15 = call %class.CLitPoolElement** @_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPKP15CLitPoolElementSt6vectorIS3_SaIS3_EEEEENSt11_Niter_baseIT_E13iterator_typeESB_(%class.CLitPoolElement** %14)
  %16 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %1, align 8
  %17 = call %class.CLitPoolElement** @_ZSt12__niter_baseIPP15CLitPoolElementENSt11_Niter_baseIT_E13iterator_typeES4_(%class.CLitPoolElement** %16)
  %18 = call %class.CLitPoolElement** @_ZSt13__copy_move_aILb0EPKP15CLitPoolElementPS1_ET1_T0_S6_S5_(%class.CLitPoolElement** %10, %class.CLitPoolElement** %15, %class.CLitPoolElement** %17)
  ret %class.CLitPoolElement** %18
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %class.CLitPoolElement** @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKP15CLitPoolElementSt6vectorIS3_SaIS3_EEEEENSt11_Miter_baseIT_E13iterator_typeESB_(%class.CLitPoolElement** %__it.coerce) #7 comdat {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.41", align 8
  %__it = alloca %"class.__gnu_cxx::__normal_iterator.41", align 8
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.41", align 8
  %3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %__it, i32 0, i32 0
  store %class.CLitPoolElement** %__it.coerce, %class.CLitPoolElement*** %3, align 8
  %4 = bitcast %"class.__gnu_cxx::__normal_iterator.41"* %2 to i8*
  %5 = bitcast %"class.__gnu_cxx::__normal_iterator.41"* %__it to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  %6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %2, i32 0, i32 0
  %7 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %6, align 8
  %8 = call %class.CLitPoolElement** @_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPKP15CLitPoolElementSt6vectorIS3_SaIS3_EEEELb0EE7_S_baseES9_(%class.CLitPoolElement** %7)
  %9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %1, i32 0, i32 0
  store %class.CLitPoolElement** %8, %class.CLitPoolElement*** %9, align 8
  %10 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %1, i32 0, i32 0
  %11 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %10, align 8
  ret %class.CLitPoolElement** %11
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %class.CLitPoolElement** @_ZSt13__copy_move_aILb0EPKP15CLitPoolElementPS1_ET1_T0_S6_S5_(%class.CLitPoolElement** %__first, %class.CLitPoolElement** %__last, %class.CLitPoolElement** %__result) #7 comdat {
  %1 = alloca %class.CLitPoolElement**, align 8
  %2 = alloca %class.CLitPoolElement**, align 8
  %3 = alloca %class.CLitPoolElement**, align 8
  %__simple = alloca i8, align 1
  store %class.CLitPoolElement** %__first, %class.CLitPoolElement*** %1, align 8
  store %class.CLitPoolElement** %__last, %class.CLitPoolElement*** %2, align 8
  store %class.CLitPoolElement** %__result, %class.CLitPoolElement*** %3, align 8
  store i8 1, i8* %__simple, align 1
  %4 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %1, align 8
  %5 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %2, align 8
  %6 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %3, align 8
  %7 = call %class.CLitPoolElement** @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP15CLitPoolElementEEPT_PKS5_S8_S6_(%class.CLitPoolElement** %4, %class.CLitPoolElement** %5, %class.CLitPoolElement** %6)
  ret %class.CLitPoolElement** %7
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %class.CLitPoolElement** @_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPKP15CLitPoolElementSt6vectorIS3_SaIS3_EEEEENSt11_Niter_baseIT_E13iterator_typeESB_(%class.CLitPoolElement** %__it.coerce) #7 comdat {
  %__it = alloca %"class.__gnu_cxx::__normal_iterator.41", align 8
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.41", align 8
  %2 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %__it, i32 0, i32 0
  store %class.CLitPoolElement** %__it.coerce, %class.CLitPoolElement*** %2, align 8
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator.41"* %1 to i8*
  %4 = bitcast %"class.__gnu_cxx::__normal_iterator.41"* %__it to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 8, i1 false)
  %5 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %1, i32 0, i32 0
  %6 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %5, align 8
  %7 = call %class.CLitPoolElement** @_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPKP15CLitPoolElementSt6vectorIS3_SaIS3_EEEELb1EE7_S_baseES9_(%class.CLitPoolElement** %6)
  ret %class.CLitPoolElement** %7
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %class.CLitPoolElement** @_ZSt12__niter_baseIPP15CLitPoolElementENSt11_Niter_baseIT_E13iterator_typeES4_(%class.CLitPoolElement** %__it) #7 comdat {
  %1 = alloca %class.CLitPoolElement**, align 8
  store %class.CLitPoolElement** %__it, %class.CLitPoolElement*** %1, align 8
  %2 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %1, align 8
  %3 = call %class.CLitPoolElement** @_ZNSt10_Iter_baseIPP15CLitPoolElementLb0EE7_S_baseES2_(%class.CLitPoolElement** %2)
  ret %class.CLitPoolElement** %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr %class.CLitPoolElement** @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP15CLitPoolElementEEPT_PKS5_S8_S6_(%class.CLitPoolElement** %__first, %class.CLitPoolElement** %__last, %class.CLitPoolElement** %__result) #5 comdat align 2 {
  %1 = alloca %class.CLitPoolElement**, align 8
  %2 = alloca %class.CLitPoolElement**, align 8
  %3 = alloca %class.CLitPoolElement**, align 8
  %_Num = alloca i64, align 8
  store %class.CLitPoolElement** %__first, %class.CLitPoolElement*** %1, align 8
  store %class.CLitPoolElement** %__last, %class.CLitPoolElement*** %2, align 8
  store %class.CLitPoolElement** %__result, %class.CLitPoolElement*** %3, align 8
  %4 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %2, align 8
  %5 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %1, align 8
  %6 = ptrtoint %class.CLitPoolElement** %4 to i64
  %7 = ptrtoint %class.CLitPoolElement** %5 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 8
  store i64 %9, i64* %_Num, align 8
  %10 = load i64, i64* %_Num, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

; <label>:12                                      ; preds = %0
  %13 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %3, align 8
  %14 = bitcast %class.CLitPoolElement** %13 to i8*
  %15 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %1, align 8
  %16 = bitcast %class.CLitPoolElement** %15 to i8*
  %17 = load i64, i64* %_Num, align 8
  %18 = mul i64 8, %17
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %14, i8* %16, i64 %18, i32 8, i1 false)
  br label %19

; <label>:19                                      ; preds = %12, %0
  %20 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %3, align 8
  %21 = load i64, i64* %_Num, align 8
  %22 = getelementptr inbounds %class.CLitPoolElement*, %class.CLitPoolElement** %20, i64 %21
  ret %class.CLitPoolElement** %22
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #9

; Function Attrs: uwtable
define linkonce_odr %class.CLitPoolElement** @_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPKP15CLitPoolElementSt6vectorIS3_SaIS3_EEEELb1EE7_S_baseES9_(%class.CLitPoolElement** %__it.coerce) #0 comdat align 2 {
  %__it = alloca %"class.__gnu_cxx::__normal_iterator.41", align 8
  %1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %__it, i32 0, i32 0
  store %class.CLitPoolElement** %__it.coerce, %class.CLitPoolElement*** %1, align 8
  %2 = call dereferenceable(8) %class.CLitPoolElement*** @_ZNK9__gnu_cxx17__normal_iteratorIPKP15CLitPoolElementSt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.41"* %__it)
  %3 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %2, align 8
  ret %class.CLitPoolElement** %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(8) %class.CLitPoolElement*** @_ZNK9__gnu_cxx17__normal_iteratorIPKP15CLitPoolElementSt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.41"* %this) #5 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.41"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.41"* %this, %"class.__gnu_cxx::__normal_iterator.41"** %1, align 8
  %2 = load %"class.__gnu_cxx::__normal_iterator.41"*, %"class.__gnu_cxx::__normal_iterator.41"** %1, align 8
  %3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %2, i32 0, i32 0
  ret %class.CLitPoolElement*** %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr %class.CLitPoolElement** @_ZNSt10_Iter_baseIPP15CLitPoolElementLb0EE7_S_baseES2_(%class.CLitPoolElement** %__it) #5 comdat align 2 {
  %1 = alloca %class.CLitPoolElement**, align 8
  store %class.CLitPoolElement** %__it, %class.CLitPoolElement*** %1, align 8
  %2 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %1, align 8
  ret %class.CLitPoolElement** %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr %class.CLitPoolElement** @_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPKP15CLitPoolElementSt6vectorIS3_SaIS3_EEEELb0EE7_S_baseES9_(%class.CLitPoolElement** %__it.coerce) #5 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.41", align 8
  %__it = alloca %"class.__gnu_cxx::__normal_iterator.41", align 8
  %2 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %__it, i32 0, i32 0
  store %class.CLitPoolElement** %__it.coerce, %class.CLitPoolElement*** %2, align 8
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator.41"* %1 to i8*
  %4 = bitcast %"class.__gnu_cxx::__normal_iterator.41"* %__it to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 8, i1 false)
  %5 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %1, i32 0, i32 0
  %6 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %5, align 8
  ret %class.CLitPoolElement** %6
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx17__normal_iteratorIPKP15CLitPoolElementSt6vectorIS2_SaIS2_EEEC2ERKS4_(%"class.__gnu_cxx::__normal_iterator.41"* %this, %class.CLitPoolElement*** dereferenceable(8) %__i) unnamed_addr #5 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.41"*, align 8
  %2 = alloca %class.CLitPoolElement***, align 8
  store %"class.__gnu_cxx::__normal_iterator.41"* %this, %"class.__gnu_cxx::__normal_iterator.41"** %1, align 8
  store %class.CLitPoolElement*** %__i, %class.CLitPoolElement**** %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator.41"*, %"class.__gnu_cxx::__normal_iterator.41"** %1, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %3, i32 0, i32 0
  %5 = load %class.CLitPoolElement***, %class.CLitPoolElement**** %2, align 8
  %6 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %5, align 8
  store %class.CLitPoolElement** %6, %class.CLitPoolElement*** %4, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIP15CLitPoolElementSaIS1_EE13_M_deallocateEPS1_m(%"struct.std::_Vector_base.1"* %this, %class.CLitPoolElement** %__p, i64 %__n) #0 comdat align 2 {
  %1 = alloca %"struct.std::_Vector_base.1"*, align 8
  %2 = alloca %class.CLitPoolElement**, align 8
  %3 = alloca i64, align 8
  store %"struct.std::_Vector_base.1"* %this, %"struct.std::_Vector_base.1"** %1, align 8
  store %class.CLitPoolElement** %__p, %class.CLitPoolElement*** %2, align 8
  store i64 %__n, i64* %3, align 8
  %4 = load %"struct.std::_Vector_base.1"*, %"struct.std::_Vector_base.1"** %1, align 8
  %5 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %2, align 8
  %6 = icmp ne %class.CLitPoolElement** %5, null
  br i1 %6, label %7, label %12

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %4, i32 0, i32 0
  %9 = bitcast %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %8 to %"class.std::allocator.2"*
  %10 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %2, align 8
  %11 = load i64, i64* %3, align 8
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIP15CLitPoolElementEE10deallocateERS3_PS2_m(%"class.std::allocator.2"* dereferenceable(1) %9, %class.CLitPoolElement** %10, i64 %11)
  br label %12

; <label>:12                                      ; preds = %7, %0
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaIP15CLitPoolElementEE10deallocateERS3_PS2_m(%"class.std::allocator.2"* dereferenceable(1) %__a, %class.CLitPoolElement** %__p, i64 %__n) #0 comdat align 2 {
  %1 = alloca %"class.std::allocator.2"*, align 8
  %2 = alloca %class.CLitPoolElement**, align 8
  %3 = alloca i64, align 8
  store %"class.std::allocator.2"* %__a, %"class.std::allocator.2"** %1, align 8
  store %class.CLitPoolElement** %__p, %class.CLitPoolElement*** %2, align 8
  store i64 %__n, i64* %3, align 8
  %4 = load %"class.std::allocator.2"*, %"class.std::allocator.2"** %1, align 8
  %5 = bitcast %"class.std::allocator.2"* %4 to %"class.__gnu_cxx::new_allocator.3"*
  %6 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %2, align 8
  %7 = load i64, i64* %3, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIP15CLitPoolElementE10deallocateEPS2_m(%"class.__gnu_cxx::new_allocator.3"* %5, %class.CLitPoolElement** %6, i64 %7)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIP15CLitPoolElementE10deallocateEPS2_m(%"class.__gnu_cxx::new_allocator.3"* %this, %class.CLitPoolElement** %__p, i64) #5 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.3"*, align 8
  %3 = alloca %class.CLitPoolElement**, align 8
  %4 = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.3"* %this, %"class.__gnu_cxx::new_allocator.3"** %2, align 8
  store %class.CLitPoolElement** %__p, %class.CLitPoolElement*** %3, align 8
  store i64 %0, i64* %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.3"*, %"class.__gnu_cxx::new_allocator.3"** %2, align 8
  %6 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %3, align 8
  %7 = bitcast %class.CLitPoolElement** %6 to i8*
  call void @_ZdlPv(i8* %7) #2
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %class.CVariable* @_ZSt22__uninitialized_copy_aIP9CVariableS1_S0_ET0_T_S3_S2_RSaIT1_E(%class.CVariable* %__first, %class.CVariable* %__last, %class.CVariable* %__result, %"class.std::allocator"* dereferenceable(1)) #7 comdat {
  %2 = alloca %class.CVariable*, align 8
  %3 = alloca %class.CVariable*, align 8
  %4 = alloca %class.CVariable*, align 8
  %5 = alloca %"class.std::allocator"*, align 8
  store %class.CVariable* %__first, %class.CVariable** %2, align 8
  store %class.CVariable* %__last, %class.CVariable** %3, align 8
  store %class.CVariable* %__result, %class.CVariable** %4, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %5, align 8
  %6 = load %class.CVariable*, %class.CVariable** %2, align 8
  %7 = load %class.CVariable*, %class.CVariable** %3, align 8
  %8 = load %class.CVariable*, %class.CVariable** %4, align 8
  %9 = call %class.CVariable* @_ZSt18uninitialized_copyIP9CVariableS1_ET0_T_S3_S2_(%class.CVariable* %6, %class.CVariable* %7, %class.CVariable* %8)
  ret %class.CVariable* %9
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %class.CVariable* @_ZSt18uninitialized_copyIP9CVariableS1_ET0_T_S3_S2_(%class.CVariable* %__first, %class.CVariable* %__last, %class.CVariable* %__result) #7 comdat {
  %1 = alloca %class.CVariable*, align 8
  %2 = alloca %class.CVariable*, align 8
  %3 = alloca %class.CVariable*, align 8
  %__assignable = alloca i8, align 1
  store %class.CVariable* %__first, %class.CVariable** %1, align 8
  store %class.CVariable* %__last, %class.CVariable** %2, align 8
  store %class.CVariable* %__result, %class.CVariable** %3, align 8
  store i8 1, i8* %__assignable, align 1
  %4 = load %class.CVariable*, %class.CVariable** %1, align 8
  %5 = load %class.CVariable*, %class.CVariable** %2, align 8
  %6 = load %class.CVariable*, %class.CVariable** %3, align 8
  %7 = call %class.CVariable* @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIP9CVariableS3_EET0_T_S5_S4_(%class.CVariable* %4, %class.CVariable* %5, %class.CVariable* %6)
  ret %class.CVariable* %7
}

; Function Attrs: uwtable
define linkonce_odr %class.CVariable* @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIP9CVariableS3_EET0_T_S5_S4_(%class.CVariable* %__first, %class.CVariable* %__last, %class.CVariable* %__result) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %class.CVariable*, align 8
  %2 = alloca %class.CVariable*, align 8
  %3 = alloca %class.CVariable*, align 8
  %__cur = alloca %class.CVariable*, align 8
  %4 = alloca i8*
  %5 = alloca i32
  store %class.CVariable* %__first, %class.CVariable** %1, align 8
  store %class.CVariable* %__last, %class.CVariable** %2, align 8
  store %class.CVariable* %__result, %class.CVariable** %3, align 8
  %6 = load %class.CVariable*, %class.CVariable** %3, align 8
  store %class.CVariable* %6, %class.CVariable** %__cur, align 8
  br label %7

; <label>:7                                       ; preds = %17, %0
  %8 = load %class.CVariable*, %class.CVariable** %1, align 8
  %9 = load %class.CVariable*, %class.CVariable** %2, align 8
  %10 = icmp ne %class.CVariable* %8, %9
  br i1 %10, label %11, label %32

; <label>:11                                      ; preds = %7
  %12 = load %class.CVariable*, %class.CVariable** %__cur, align 8
  %13 = invoke %class.CVariable* @_ZSt11__addressofI9CVariableEPT_RS1_(%class.CVariable* dereferenceable(80) %12)
          to label %14 unwind label %22

; <label>:14                                      ; preds = %11
  %15 = load %class.CVariable*, %class.CVariable** %1, align 8
  invoke void @_ZSt10_ConstructI9CVariableS0_EvPT_RKT0_(%class.CVariable* %13, %class.CVariable* dereferenceable(80) %15)
          to label %16 unwind label %22

; <label>:16                                      ; preds = %14
  br label %17

; <label>:17                                      ; preds = %16
  %18 = load %class.CVariable*, %class.CVariable** %1, align 8
  %19 = getelementptr inbounds %class.CVariable, %class.CVariable* %18, i32 1
  store %class.CVariable* %19, %class.CVariable** %1, align 8
  %20 = load %class.CVariable*, %class.CVariable** %__cur, align 8
  %21 = getelementptr inbounds %class.CVariable, %class.CVariable* %20, i32 1
  store %class.CVariable* %21, %class.CVariable** %__cur, align 8
  br label %7

; <label>:22                                      ; preds = %14, %11
  %23 = landingpad { i8*, i32 }
          catch i8* null
  %24 = extractvalue { i8*, i32 } %23, 0
  store i8* %24, i8** %4, align 8
  %25 = extractvalue { i8*, i32 } %23, 1
  store i32 %25, i32* %5, align 4
  br label %26

; <label>:26                                      ; preds = %22
  %27 = load i8*, i8** %4, align 8
  %28 = call i8* @__cxa_begin_catch(i8* %27) #2
  %29 = load %class.CVariable*, %class.CVariable** %3, align 8
  %30 = load %class.CVariable*, %class.CVariable** %__cur, align 8
  invoke void @_ZSt8_DestroyIP9CVariableEvT_S2_(%class.CVariable* %29, %class.CVariable* %30)
          to label %31 unwind label %34

; <label>:31                                      ; preds = %26
  invoke void @__cxa_rethrow() #16
          to label %48 unwind label %34

; <label>:32                                      ; preds = %7
  %33 = load %class.CVariable*, %class.CVariable** %__cur, align 8
  ret %class.CVariable* %33

; <label>:34                                      ; preds = %31, %26
  %35 = landingpad { i8*, i32 }
          cleanup
  %36 = extractvalue { i8*, i32 } %35, 0
  store i8* %36, i8** %4, align 8
  %37 = extractvalue { i8*, i32 } %35, 1
  store i32 %37, i32* %5, align 4
  invoke void @__cxa_end_catch()
          to label %38 unwind label %45

; <label>:38                                      ; preds = %34
  br label %40
                                                  ; No predecessors!
  call void @llvm.trap()
  unreachable

; <label>:40                                      ; preds = %38
  %41 = load i8*, i8** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = insertvalue { i8*, i32 } undef, i8* %41, 0
  %44 = insertvalue { i8*, i32 } %43, i32 %42, 1
  resume { i8*, i32 } %44

; <label>:45                                      ; preds = %34
  %46 = landingpad { i8*, i32 }
          catch i8* null
  %47 = extractvalue { i8*, i32 } %46, 0
  call void @__clang_call_terminate(i8* %47) #12
  unreachable

; <label>:48                                      ; preds = %31
  unreachable
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt10_ConstructI9CVariableS0_EvPT_RKT0_(%class.CVariable* %__p, %class.CVariable* dereferenceable(80) %__value) #7 comdat {
  %1 = alloca %class.CVariable*, align 8
  %2 = alloca %class.CVariable*, align 8
  store %class.CVariable* %__p, %class.CVariable** %1, align 8
  store %class.CVariable* %__value, %class.CVariable** %2, align 8
  %3 = load %class.CVariable*, %class.CVariable** %1, align 8
  %4 = bitcast %class.CVariable* %3 to i8*
  %5 = bitcast i8* %4 to %class.CVariable*
  %6 = load %class.CVariable*, %class.CVariable** %2, align 8
  call void @_ZN9CVariableC2ERKS_(%class.CVariable* %5, %class.CVariable* dereferenceable(80) %6)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %class.CVariable* @_ZSt11__addressofI9CVariableEPT_RS1_(%class.CVariable* dereferenceable(80) %__r) #10 comdat {
  %1 = alloca %class.CVariable*, align 8
  store %class.CVariable* %__r, %class.CVariable** %1, align 8
  %2 = load %class.CVariable*, %class.CVariable** %1, align 8
  %3 = bitcast %class.CVariable* %2 to i8*
  %4 = bitcast i8* %3 to %class.CVariable*
  ret %class.CVariable* %4
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt8_DestroyIP9CVariableEvT_S2_(%class.CVariable* %__first, %class.CVariable* %__last) #7 comdat {
  %1 = alloca %class.CVariable*, align 8
  %2 = alloca %class.CVariable*, align 8
  store %class.CVariable* %__first, %class.CVariable** %1, align 8
  store %class.CVariable* %__last, %class.CVariable** %2, align 8
  %3 = load %class.CVariable*, %class.CVariable** %1, align 8
  %4 = load %class.CVariable*, %class.CVariable** %2, align 8
  call void @_ZNSt12_Destroy_auxILb0EE9__destroyIP9CVariableEEvT_S4_(%class.CVariable* %3, %class.CVariable* %4)
  ret void
}

; Function Attrs: noreturn nounwind
declare void @llvm.trap() #12

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt12_Destroy_auxILb0EE9__destroyIP9CVariableEEvT_S4_(%class.CVariable* %__first, %class.CVariable* %__last) #0 comdat align 2 {
  %1 = alloca %class.CVariable*, align 8
  %2 = alloca %class.CVariable*, align 8
  store %class.CVariable* %__first, %class.CVariable** %1, align 8
  store %class.CVariable* %__last, %class.CVariable** %2, align 8
  br label %3

; <label>:3                                       ; preds = %10, %0
  %4 = load %class.CVariable*, %class.CVariable** %1, align 8
  %5 = load %class.CVariable*, %class.CVariable** %2, align 8
  %6 = icmp ne %class.CVariable* %4, %5
  br i1 %6, label %7, label %13

; <label>:7                                       ; preds = %3
  %8 = load %class.CVariable*, %class.CVariable** %1, align 8
  %9 = call %class.CVariable* @_ZSt11__addressofI9CVariableEPT_RS1_(%class.CVariable* dereferenceable(80) %8)
  call void @_ZSt8_DestroyI9CVariableEvPT_(%class.CVariable* %9)
  br label %10

; <label>:10                                      ; preds = %7
  %11 = load %class.CVariable*, %class.CVariable** %1, align 8
  %12 = getelementptr inbounds %class.CVariable, %class.CVariable* %11, i32 1
  store %class.CVariable* %12, %class.CVariable** %1, align 8
  br label %3

; <label>:13                                      ; preds = %3
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt8_DestroyI9CVariableEvPT_(%class.CVariable* %__pointer) #7 comdat {
  %1 = alloca %class.CVariable*, align 8
  store %class.CVariable* %__pointer, %class.CVariable** %1, align 8
  %2 = load %class.CVariable*, %class.CVariable** %1, align 8
  call void @_ZN9CVariableD2Ev(%class.CVariable* %2)
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %class.CVariable* @_ZSt23__copy_move_backward_a2ILb0EP9CVariableS1_ET1_T0_S3_S2_(%class.CVariable* %__first, %class.CVariable* %__last, %class.CVariable* %__result) #7 comdat {
  %1 = alloca %class.CVariable*, align 8
  %2 = alloca %class.CVariable*, align 8
  %3 = alloca %class.CVariable*, align 8
  store %class.CVariable* %__first, %class.CVariable** %1, align 8
  store %class.CVariable* %__last, %class.CVariable** %2, align 8
  store %class.CVariable* %__result, %class.CVariable** %3, align 8
  %4 = load %class.CVariable*, %class.CVariable** %1, align 8
  %5 = call %class.CVariable* @_ZSt12__niter_baseIP9CVariableENSt11_Niter_baseIT_E13iterator_typeES3_(%class.CVariable* %4)
  %6 = load %class.CVariable*, %class.CVariable** %2, align 8
  %7 = call %class.CVariable* @_ZSt12__niter_baseIP9CVariableENSt11_Niter_baseIT_E13iterator_typeES3_(%class.CVariable* %6)
  %8 = load %class.CVariable*, %class.CVariable** %3, align 8
  %9 = call %class.CVariable* @_ZSt12__niter_baseIP9CVariableENSt11_Niter_baseIT_E13iterator_typeES3_(%class.CVariable* %8)
  %10 = call %class.CVariable* @_ZSt22__copy_move_backward_aILb0EP9CVariableS1_ET1_T0_S3_S2_(%class.CVariable* %5, %class.CVariable* %7, %class.CVariable* %9)
  ret %class.CVariable* %10
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %class.CVariable* @_ZSt12__miter_baseIP9CVariableENSt11_Miter_baseIT_E13iterator_typeES3_(%class.CVariable* %__it) #10 comdat {
  %1 = alloca %class.CVariable*, align 8
  store %class.CVariable* %__it, %class.CVariable** %1, align 8
  %2 = load %class.CVariable*, %class.CVariable** %1, align 8
  %3 = call %class.CVariable* @_ZNSt10_Iter_baseIP9CVariableLb0EE7_S_baseES1_(%class.CVariable* %2)
  ret %class.CVariable* %3
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %class.CVariable* @_ZSt22__copy_move_backward_aILb0EP9CVariableS1_ET1_T0_S3_S2_(%class.CVariable* %__first, %class.CVariable* %__last, %class.CVariable* %__result) #7 comdat {
  %1 = alloca %class.CVariable*, align 8
  %2 = alloca %class.CVariable*, align 8
  %3 = alloca %class.CVariable*, align 8
  %__simple = alloca i8, align 1
  store %class.CVariable* %__first, %class.CVariable** %1, align 8
  store %class.CVariable* %__last, %class.CVariable** %2, align 8
  store %class.CVariable* %__result, %class.CVariable** %3, align 8
  store i8 0, i8* %__simple, align 1
  %4 = load %class.CVariable*, %class.CVariable** %1, align 8
  %5 = load %class.CVariable*, %class.CVariable** %2, align 8
  %6 = load %class.CVariable*, %class.CVariable** %3, align 8
  %7 = call %class.CVariable* @_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIP9CVariableS4_EET0_T_S6_S5_(%class.CVariable* %4, %class.CVariable* %5, %class.CVariable* %6)
  ret %class.CVariable* %7
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %class.CVariable* @_ZSt12__niter_baseIP9CVariableENSt11_Niter_baseIT_E13iterator_typeES3_(%class.CVariable* %__it) #7 comdat {
  %1 = alloca %class.CVariable*, align 8
  store %class.CVariable* %__it, %class.CVariable** %1, align 8
  %2 = load %class.CVariable*, %class.CVariable** %1, align 8
  %3 = call %class.CVariable* @_ZNSt10_Iter_baseIP9CVariableLb0EE7_S_baseES1_(%class.CVariable* %2)
  ret %class.CVariable* %3
}

; Function Attrs: uwtable
define linkonce_odr %class.CVariable* @_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIP9CVariableS4_EET0_T_S6_S5_(%class.CVariable* %__first, %class.CVariable* %__last, %class.CVariable* %__result) #0 comdat align 2 {
  %1 = alloca %class.CVariable*, align 8
  %2 = alloca %class.CVariable*, align 8
  %3 = alloca %class.CVariable*, align 8
  %__n = alloca i64, align 8
  store %class.CVariable* %__first, %class.CVariable** %1, align 8
  store %class.CVariable* %__last, %class.CVariable** %2, align 8
  store %class.CVariable* %__result, %class.CVariable** %3, align 8
  %4 = load %class.CVariable*, %class.CVariable** %2, align 8
  %5 = load %class.CVariable*, %class.CVariable** %1, align 8
  %6 = ptrtoint %class.CVariable* %4 to i64
  %7 = ptrtoint %class.CVariable* %5 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 80
  store i64 %9, i64* %__n, align 8
  br label %10

; <label>:10                                      ; preds = %19, %0
  %11 = load i64, i64* %__n, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %22

; <label>:13                                      ; preds = %10
  %14 = load %class.CVariable*, %class.CVariable** %3, align 8
  %15 = getelementptr inbounds %class.CVariable, %class.CVariable* %14, i32 -1
  store %class.CVariable* %15, %class.CVariable** %3, align 8
  %16 = load %class.CVariable*, %class.CVariable** %2, align 8
  %17 = getelementptr inbounds %class.CVariable, %class.CVariable* %16, i32 -1
  store %class.CVariable* %17, %class.CVariable** %2, align 8
  %18 = call dereferenceable(80) %class.CVariable* @_ZN9CVariableaSERKS_(%class.CVariable* %15, %class.CVariable* dereferenceable(80) %17)
  br label %19

; <label>:19                                      ; preds = %13
  %20 = load i64, i64* %__n, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, i64* %__n, align 8
  br label %10

; <label>:22                                      ; preds = %10
  %23 = load %class.CVariable*, %class.CVariable** %3, align 8
  ret %class.CVariable* %23
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dereferenceable(80) %class.CVariable* @_ZN9CVariableaSERKS_(%class.CVariable* %this, %class.CVariable* dereferenceable(80)) #7 comdat align 2 {
  %2 = alloca %class.CVariable*, align 8
  %3 = alloca %class.CVariable*, align 8
  %__i0 = alloca i64, align 8
  store %class.CVariable* %this, %class.CVariable** %2, align 8
  store %class.CVariable* %0, %class.CVariable** %3, align 8
  %4 = load %class.CVariable*, %class.CVariable** %2, align 8
  %5 = bitcast %class.CVariable* %4 to i32*
  %6 = load %class.CVariable*, %class.CVariable** %3, align 8
  %7 = bitcast %class.CVariable* %6 to i32*
  %8 = bitcast i32* %5 to i8*
  %9 = bitcast i32* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false)
  store i64 0, i64* %__i0, align 8
  br label %10

; <label>:10                                      ; preds = %22, %1
  %11 = load i64, i64* %__i0, align 8
  %12 = icmp ne i64 %11, 2
  br i1 %12, label %13, label %25

; <label>:13                                      ; preds = %10
  %14 = load i64, i64* %__i0, align 8
  %15 = getelementptr inbounds %class.CVariable, %class.CVariable* %4, i32 0, i32 3
  %16 = getelementptr inbounds [2 x %"class.std::vector.0"], [2 x %"class.std::vector.0"]* %15, i64 0, i64 %14
  %17 = load i64, i64* %__i0, align 8
  %18 = load %class.CVariable*, %class.CVariable** %3, align 8
  %19 = getelementptr inbounds %class.CVariable, %class.CVariable* %18, i32 0, i32 3
  %20 = getelementptr inbounds [2 x %"class.std::vector.0"], [2 x %"class.std::vector.0"]* %19, i64 0, i64 %17
  %21 = call dereferenceable(24) %"class.std::vector.0"* @_ZNSt6vectorIP15CLitPoolElementSaIS1_EEaSERKS3_(%"class.std::vector.0"* %16, %"class.std::vector.0"* dereferenceable(24) %20)
  br label %22

; <label>:22                                      ; preds = %13
  %23 = load i64, i64* %__i0, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %__i0, align 8
  br label %10

; <label>:25                                      ; preds = %10
  %26 = getelementptr inbounds %class.CVariable, %class.CVariable* %4, i32 0, i32 4
  %27 = load %class.CVariable*, %class.CVariable** %3, align 8
  %28 = getelementptr inbounds %class.CVariable, %class.CVariable* %27, i32 0, i32 4
  %29 = bitcast [2 x i32]* %26 to i8*
  %30 = bitcast [2 x i32]* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 20, i32 8, i1 false)
  ret %class.CVariable* %4
}

; Function Attrs: uwtable
define linkonce_odr dereferenceable(24) %"class.std::vector.0"* @_ZNSt6vectorIP15CLitPoolElementSaIS1_EEaSERKS3_(%"class.std::vector.0"* %this, %"class.std::vector.0"* dereferenceable(24) %__x) #0 comdat align 2 {
  %1 = alloca %"class.std::vector.0"*, align 8
  %2 = alloca %"class.std::vector.0"*, align 8
  %__xlen = alloca i64, align 8
  %__tmp = alloca %class.CLitPoolElement**, align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.41", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.41", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.42", align 8
  %6 = alloca %"class.__gnu_cxx::__normal_iterator.41", align 8
  %7 = alloca %"class.__gnu_cxx::__normal_iterator.41", align 8
  %8 = alloca %"class.__gnu_cxx::__normal_iterator.42", align 8
  %9 = alloca %"class.__gnu_cxx::__normal_iterator.42", align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %1, align 8
  store %"class.std::vector.0"* %__x, %"class.std::vector.0"** %2, align 8
  %10 = load %"class.std::vector.0"*, %"class.std::vector.0"** %1, align 8
  %11 = load %"class.std::vector.0"*, %"class.std::vector.0"** %2, align 8
  %12 = icmp ne %"class.std::vector.0"* %11, %10
  br i1 %12, label %13, label %149

; <label>:13                                      ; preds = %0
  %14 = load %"class.std::vector.0"*, %"class.std::vector.0"** %2, align 8
  %15 = call i64 @_ZNKSt6vectorIP15CLitPoolElementSaIS1_EE4sizeEv(%"class.std::vector.0"* %14)
  store i64 %15, i64* %__xlen, align 8
  %16 = load i64, i64* %__xlen, align 8
  %17 = call i64 @_ZNKSt6vectorIP15CLitPoolElementSaIS1_EE8capacityEv(%"class.std::vector.0"* %10)
  %18 = icmp ugt i64 %16, %17
  br i1 %18, label %19, label %72

; <label>:19                                      ; preds = %13
  %20 = load i64, i64* %__xlen, align 8
  %21 = load %"class.std::vector.0"*, %"class.std::vector.0"** %2, align 8
  %22 = call %class.CLitPoolElement** @_ZNKSt6vectorIP15CLitPoolElementSaIS1_EE5beginEv(%"class.std::vector.0"* %21)
  %23 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %3, i32 0, i32 0
  store %class.CLitPoolElement** %22, %class.CLitPoolElement*** %23, align 8
  %24 = load %"class.std::vector.0"*, %"class.std::vector.0"** %2, align 8
  %25 = call %class.CLitPoolElement** @_ZNKSt6vectorIP15CLitPoolElementSaIS1_EE3endEv(%"class.std::vector.0"* %24)
  %26 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %4, i32 0, i32 0
  store %class.CLitPoolElement** %25, %class.CLitPoolElement*** %26, align 8
  %27 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %3, i32 0, i32 0
  %28 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %27, align 8
  %29 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %4, i32 0, i32 0
  %30 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %29, align 8
  %31 = call %class.CLitPoolElement** @_ZNSt6vectorIP15CLitPoolElementSaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_(%"class.std::vector.0"* %10, i64 %20, %class.CLitPoolElement** %28, %class.CLitPoolElement** %30)
  store %class.CLitPoolElement** %31, %class.CLitPoolElement*** %__tmp, align 8
  %32 = bitcast %"class.std::vector.0"* %10 to %"struct.std::_Vector_base.1"*
  %33 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %32, i32 0, i32 0
  %34 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %33, i32 0, i32 0
  %35 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %34, align 8
  %36 = bitcast %"class.std::vector.0"* %10 to %"struct.std::_Vector_base.1"*
  %37 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %36, i32 0, i32 0
  %38 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %37, i32 0, i32 1
  %39 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %38, align 8
  %40 = bitcast %"class.std::vector.0"* %10 to %"struct.std::_Vector_base.1"*
  %41 = call dereferenceable(1) %"class.std::allocator.2"* @_ZNSt12_Vector_baseIP15CLitPoolElementSaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %40)
  call void @_ZSt8_DestroyIPP15CLitPoolElementS1_EvT_S3_RSaIT0_E(%class.CLitPoolElement** %35, %class.CLitPoolElement** %39, %"class.std::allocator.2"* dereferenceable(1) %41)
  %42 = bitcast %"class.std::vector.0"* %10 to %"struct.std::_Vector_base.1"*
  %43 = bitcast %"class.std::vector.0"* %10 to %"struct.std::_Vector_base.1"*
  %44 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %43, i32 0, i32 0
  %45 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %44, i32 0, i32 0
  %46 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %45, align 8
  %47 = bitcast %"class.std::vector.0"* %10 to %"struct.std::_Vector_base.1"*
  %48 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %47, i32 0, i32 0
  %49 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %48, i32 0, i32 2
  %50 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %49, align 8
  %51 = bitcast %"class.std::vector.0"* %10 to %"struct.std::_Vector_base.1"*
  %52 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %51, i32 0, i32 0
  %53 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %52, i32 0, i32 0
  %54 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %53, align 8
  %55 = ptrtoint %class.CLitPoolElement** %50 to i64
  %56 = ptrtoint %class.CLitPoolElement** %54 to i64
  %57 = sub i64 %55, %56
  %58 = sdiv exact i64 %57, 8
  call void @_ZNSt12_Vector_baseIP15CLitPoolElementSaIS1_EE13_M_deallocateEPS1_m(%"struct.std::_Vector_base.1"* %42, %class.CLitPoolElement** %46, i64 %58)
  %59 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %__tmp, align 8
  %60 = bitcast %"class.std::vector.0"* %10 to %"struct.std::_Vector_base.1"*
  %61 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %60, i32 0, i32 0
  %62 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %61, i32 0, i32 0
  store %class.CLitPoolElement** %59, %class.CLitPoolElement*** %62, align 8
  %63 = bitcast %"class.std::vector.0"* %10 to %"struct.std::_Vector_base.1"*
  %64 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %63, i32 0, i32 0
  %65 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %64, i32 0, i32 0
  %66 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %65, align 8
  %67 = load i64, i64* %__xlen, align 8
  %68 = getelementptr inbounds %class.CLitPoolElement*, %class.CLitPoolElement** %66, i64 %67
  %69 = bitcast %"class.std::vector.0"* %10 to %"struct.std::_Vector_base.1"*
  %70 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %69, i32 0, i32 0
  %71 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %70, i32 0, i32 2
  store %class.CLitPoolElement** %68, %class.CLitPoolElement*** %71, align 8
  br label %139

; <label>:72                                      ; preds = %13
  %73 = call i64 @_ZNKSt6vectorIP15CLitPoolElementSaIS1_EE4sizeEv(%"class.std::vector.0"* %10)
  %74 = load i64, i64* %__xlen, align 8
  %75 = icmp uge i64 %73, %74
  br i1 %75, label %76, label %101

; <label>:76                                      ; preds = %72
  %77 = load %"class.std::vector.0"*, %"class.std::vector.0"** %2, align 8
  %78 = call %class.CLitPoolElement** @_ZNKSt6vectorIP15CLitPoolElementSaIS1_EE5beginEv(%"class.std::vector.0"* %77)
  %79 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %6, i32 0, i32 0
  store %class.CLitPoolElement** %78, %class.CLitPoolElement*** %79, align 8
  %80 = load %"class.std::vector.0"*, %"class.std::vector.0"** %2, align 8
  %81 = call %class.CLitPoolElement** @_ZNKSt6vectorIP15CLitPoolElementSaIS1_EE3endEv(%"class.std::vector.0"* %80)
  %82 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %7, i32 0, i32 0
  store %class.CLitPoolElement** %81, %class.CLitPoolElement*** %82, align 8
  %83 = call %class.CLitPoolElement** @_ZNSt6vectorIP15CLitPoolElementSaIS1_EE5beginEv(%"class.std::vector.0"* %10)
  %84 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.42", %"class.__gnu_cxx::__normal_iterator.42"* %8, i32 0, i32 0
  store %class.CLitPoolElement** %83, %class.CLitPoolElement*** %84, align 8
  %85 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %6, i32 0, i32 0
  %86 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %85, align 8
  %87 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %7, i32 0, i32 0
  %88 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %87, align 8
  %89 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.42", %"class.__gnu_cxx::__normal_iterator.42"* %8, i32 0, i32 0
  %90 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %89, align 8
  %91 = call %class.CLitPoolElement** @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP15CLitPoolElementSt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_(%class.CLitPoolElement** %86, %class.CLitPoolElement** %88, %class.CLitPoolElement** %90)
  %92 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.42", %"class.__gnu_cxx::__normal_iterator.42"* %5, i32 0, i32 0
  store %class.CLitPoolElement** %91, %class.CLitPoolElement*** %92, align 8
  %93 = call %class.CLitPoolElement** @_ZNSt6vectorIP15CLitPoolElementSaIS1_EE3endEv(%"class.std::vector.0"* %10)
  %94 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.42", %"class.__gnu_cxx::__normal_iterator.42"* %9, i32 0, i32 0
  store %class.CLitPoolElement** %93, %class.CLitPoolElement*** %94, align 8
  %95 = bitcast %"class.std::vector.0"* %10 to %"struct.std::_Vector_base.1"*
  %96 = call dereferenceable(1) %"class.std::allocator.2"* @_ZNSt12_Vector_baseIP15CLitPoolElementSaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %95)
  %97 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.42", %"class.__gnu_cxx::__normal_iterator.42"* %5, i32 0, i32 0
  %98 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %97, align 8
  %99 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.42", %"class.__gnu_cxx::__normal_iterator.42"* %9, i32 0, i32 0
  %100 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %99, align 8
  call void @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPP15CLitPoolElementSt6vectorIS3_SaIS3_EEEES3_EvT_S9_RSaIT0_E(%class.CLitPoolElement** %98, %class.CLitPoolElement** %100, %"class.std::allocator.2"* dereferenceable(1) %96)
  br label %138

; <label>:101                                     ; preds = %72
  %102 = load %"class.std::vector.0"*, %"class.std::vector.0"** %2, align 8
  %103 = bitcast %"class.std::vector.0"* %102 to %"struct.std::_Vector_base.1"*
  %104 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %103, i32 0, i32 0
  %105 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %104, i32 0, i32 0
  %106 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %105, align 8
  %107 = load %"class.std::vector.0"*, %"class.std::vector.0"** %2, align 8
  %108 = bitcast %"class.std::vector.0"* %107 to %"struct.std::_Vector_base.1"*
  %109 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %108, i32 0, i32 0
  %110 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %109, i32 0, i32 0
  %111 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %110, align 8
  %112 = call i64 @_ZNKSt6vectorIP15CLitPoolElementSaIS1_EE4sizeEv(%"class.std::vector.0"* %10)
  %113 = getelementptr inbounds %class.CLitPoolElement*, %class.CLitPoolElement** %111, i64 %112
  %114 = bitcast %"class.std::vector.0"* %10 to %"struct.std::_Vector_base.1"*
  %115 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %114, i32 0, i32 0
  %116 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %115, i32 0, i32 0
  %117 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %116, align 8
  %118 = call %class.CLitPoolElement** @_ZSt4copyIPP15CLitPoolElementS2_ET0_T_S4_S3_(%class.CLitPoolElement** %106, %class.CLitPoolElement** %113, %class.CLitPoolElement** %117)
  %119 = load %"class.std::vector.0"*, %"class.std::vector.0"** %2, align 8
  %120 = bitcast %"class.std::vector.0"* %119 to %"struct.std::_Vector_base.1"*
  %121 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %120, i32 0, i32 0
  %122 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %121, i32 0, i32 0
  %123 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %122, align 8
  %124 = call i64 @_ZNKSt6vectorIP15CLitPoolElementSaIS1_EE4sizeEv(%"class.std::vector.0"* %10)
  %125 = getelementptr inbounds %class.CLitPoolElement*, %class.CLitPoolElement** %123, i64 %124
  %126 = load %"class.std::vector.0"*, %"class.std::vector.0"** %2, align 8
  %127 = bitcast %"class.std::vector.0"* %126 to %"struct.std::_Vector_base.1"*
  %128 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %127, i32 0, i32 0
  %129 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %128, i32 0, i32 1
  %130 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %129, align 8
  %131 = bitcast %"class.std::vector.0"* %10 to %"struct.std::_Vector_base.1"*
  %132 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %131, i32 0, i32 0
  %133 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %132, i32 0, i32 1
  %134 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %133, align 8
  %135 = bitcast %"class.std::vector.0"* %10 to %"struct.std::_Vector_base.1"*
  %136 = call dereferenceable(1) %"class.std::allocator.2"* @_ZNSt12_Vector_baseIP15CLitPoolElementSaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %135)
  %137 = call %class.CLitPoolElement** @_ZSt22__uninitialized_copy_aIPP15CLitPoolElementS2_S1_ET0_T_S4_S3_RSaIT1_E(%class.CLitPoolElement** %125, %class.CLitPoolElement** %130, %class.CLitPoolElement** %134, %"class.std::allocator.2"* dereferenceable(1) %136)
  br label %138

; <label>:138                                     ; preds = %101, %76
  br label %139

; <label>:139                                     ; preds = %138, %19
  %140 = bitcast %"class.std::vector.0"* %10 to %"struct.std::_Vector_base.1"*
  %141 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %140, i32 0, i32 0
  %142 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %141, i32 0, i32 0
  %143 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %142, align 8
  %144 = load i64, i64* %__xlen, align 8
  %145 = getelementptr inbounds %class.CLitPoolElement*, %class.CLitPoolElement** %143, i64 %144
  %146 = bitcast %"class.std::vector.0"* %10 to %"struct.std::_Vector_base.1"*
  %147 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %146, i32 0, i32 0
  %148 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %147, i32 0, i32 1
  store %class.CLitPoolElement** %145, %class.CLitPoolElement*** %148, align 8
  br label %149

; <label>:149                                     ; preds = %139, %0
  ret %"class.std::vector.0"* %10
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNKSt6vectorIP15CLitPoolElementSaIS1_EE8capacityEv(%"class.std::vector.0"* %this) #5 comdat align 2 {
  %1 = alloca %"class.std::vector.0"*, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %1, align 8
  %2 = load %"class.std::vector.0"*, %"class.std::vector.0"** %1, align 8
  %3 = bitcast %"class.std::vector.0"* %2 to %"struct.std::_Vector_base.1"*
  %4 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %4, i32 0, i32 2
  %6 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %5, align 8
  %7 = bitcast %"class.std::vector.0"* %2 to %"struct.std::_Vector_base.1"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %7, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %8, i32 0, i32 0
  %10 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %9, align 8
  %11 = ptrtoint %class.CLitPoolElement** %6 to i64
  %12 = ptrtoint %class.CLitPoolElement** %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 8
  ret i64 %14
}

; Function Attrs: uwtable
define linkonce_odr %class.CLitPoolElement** @_ZNSt6vectorIP15CLitPoolElementSaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_(%"class.std::vector.0"* %this, i64 %__n, %class.CLitPoolElement** %__first.coerce, %class.CLitPoolElement** %__last.coerce) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %__first = alloca %"class.__gnu_cxx::__normal_iterator.41", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator.41", align 8
  %1 = alloca %"class.std::vector.0"*, align 8
  %2 = alloca i64, align 8
  %__result = alloca %class.CLitPoolElement**, align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.41", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.41", align 8
  %5 = alloca i8*
  %6 = alloca i32
  %7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %__first, i32 0, i32 0
  store %class.CLitPoolElement** %__first.coerce, %class.CLitPoolElement*** %7, align 8
  %8 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %__last, i32 0, i32 0
  store %class.CLitPoolElement** %__last.coerce, %class.CLitPoolElement*** %8, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %9 = load %"class.std::vector.0"*, %"class.std::vector.0"** %1, align 8
  %10 = bitcast %"class.std::vector.0"* %9 to %"struct.std::_Vector_base.1"*
  %11 = load i64, i64* %2, align 8
  %12 = call %class.CLitPoolElement** @_ZNSt12_Vector_baseIP15CLitPoolElementSaIS1_EE11_M_allocateEm(%"struct.std::_Vector_base.1"* %10, i64 %11)
  store %class.CLitPoolElement** %12, %class.CLitPoolElement*** %__result, align 8
  %13 = bitcast %"class.__gnu_cxx::__normal_iterator.41"* %3 to i8*
  %14 = bitcast %"class.__gnu_cxx::__normal_iterator.41"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 8, i32 8, i1 false)
  %15 = bitcast %"class.__gnu_cxx::__normal_iterator.41"* %4 to i8*
  %16 = bitcast %"class.__gnu_cxx::__normal_iterator.41"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 8, i32 8, i1 false)
  %17 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %__result, align 8
  %18 = bitcast %"class.std::vector.0"* %9 to %"struct.std::_Vector_base.1"*
  %19 = invoke dereferenceable(1) %"class.std::allocator.2"* @_ZNSt12_Vector_baseIP15CLitPoolElementSaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %18)
          to label %20 unwind label %28

; <label>:20                                      ; preds = %0
  %21 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %3, i32 0, i32 0
  %22 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %21, align 8
  %23 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %4, i32 0, i32 0
  %24 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %23, align 8
  %25 = invoke %class.CLitPoolElement** @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKP15CLitPoolElementSt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E(%class.CLitPoolElement** %22, %class.CLitPoolElement** %24, %class.CLitPoolElement** %17, %"class.std::allocator.2"* dereferenceable(1) %19)
          to label %26 unwind label %28

; <label>:26                                      ; preds = %20
  %27 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %__result, align 8
  ret %class.CLitPoolElement** %27

; <label>:28                                      ; preds = %20, %0
  %29 = landingpad { i8*, i32 }
          catch i8* null
  %30 = extractvalue { i8*, i32 } %29, 0
  store i8* %30, i8** %5, align 8
  %31 = extractvalue { i8*, i32 } %29, 1
  store i32 %31, i32* %6, align 4
  br label %32

; <label>:32                                      ; preds = %28
  %33 = load i8*, i8** %5, align 8
  %34 = call i8* @__cxa_begin_catch(i8* %33) #2
  %35 = bitcast %"class.std::vector.0"* %9 to %"struct.std::_Vector_base.1"*
  %36 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %__result, align 8
  %37 = load i64, i64* %2, align 8
  invoke void @_ZNSt12_Vector_baseIP15CLitPoolElementSaIS1_EE13_M_deallocateEPS1_m(%"struct.std::_Vector_base.1"* %35, %class.CLitPoolElement** %36, i64 %37)
          to label %38 unwind label %39

; <label>:38                                      ; preds = %32
  invoke void @__cxa_rethrow() #16
          to label %53 unwind label %39

; <label>:39                                      ; preds = %38, %32
  %40 = landingpad { i8*, i32 }
          cleanup
  %41 = extractvalue { i8*, i32 } %40, 0
  store i8* %41, i8** %5, align 8
  %42 = extractvalue { i8*, i32 } %40, 1
  store i32 %42, i32* %6, align 4
  invoke void @__cxa_end_catch()
          to label %43 unwind label %50

; <label>:43                                      ; preds = %39
  br label %45
                                                  ; No predecessors!
  call void @llvm.trap()
  unreachable

; <label>:45                                      ; preds = %43
  %46 = load i8*, i8** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = insertvalue { i8*, i32 } undef, i8* %46, 0
  %49 = insertvalue { i8*, i32 } %48, i32 %47, 1
  resume { i8*, i32 } %49

; <label>:50                                      ; preds = %39
  %51 = landingpad { i8*, i32 }
          catch i8* null
  %52 = extractvalue { i8*, i32 } %51, 0
  call void @__clang_call_terminate(i8* %52) #12
  unreachable

; <label>:53                                      ; preds = %38
  unreachable
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt8_DestroyIPP15CLitPoolElementS1_EvT_S3_RSaIT0_E(%class.CLitPoolElement** %__first, %class.CLitPoolElement** %__last, %"class.std::allocator.2"* dereferenceable(1)) #7 comdat {
  %2 = alloca %class.CLitPoolElement**, align 8
  %3 = alloca %class.CLitPoolElement**, align 8
  %4 = alloca %"class.std::allocator.2"*, align 8
  store %class.CLitPoolElement** %__first, %class.CLitPoolElement*** %2, align 8
  store %class.CLitPoolElement** %__last, %class.CLitPoolElement*** %3, align 8
  store %"class.std::allocator.2"* %0, %"class.std::allocator.2"** %4, align 8
  %5 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %2, align 8
  %6 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %3, align 8
  call void @_ZSt8_DestroyIPP15CLitPoolElementEvT_S3_(%class.CLitPoolElement** %5, %class.CLitPoolElement** %6)
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPP15CLitPoolElementSt6vectorIS3_SaIS3_EEEES3_EvT_S9_RSaIT0_E(%class.CLitPoolElement** %__first.coerce, %class.CLitPoolElement** %__last.coerce, %"class.std::allocator.2"* dereferenceable(1)) #7 comdat {
  %__first = alloca %"class.__gnu_cxx::__normal_iterator.42", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator.42", align 8
  %2 = alloca %"class.std::allocator.2"*, align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.42", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.42", align 8
  %5 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.42", %"class.__gnu_cxx::__normal_iterator.42"* %__first, i32 0, i32 0
  store %class.CLitPoolElement** %__first.coerce, %class.CLitPoolElement*** %5, align 8
  %6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.42", %"class.__gnu_cxx::__normal_iterator.42"* %__last, i32 0, i32 0
  store %class.CLitPoolElement** %__last.coerce, %class.CLitPoolElement*** %6, align 8
  store %"class.std::allocator.2"* %0, %"class.std::allocator.2"** %2, align 8
  %7 = bitcast %"class.__gnu_cxx::__normal_iterator.42"* %3 to i8*
  %8 = bitcast %"class.__gnu_cxx::__normal_iterator.42"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 8, i32 8, i1 false)
  %9 = bitcast %"class.__gnu_cxx::__normal_iterator.42"* %4 to i8*
  %10 = bitcast %"class.__gnu_cxx::__normal_iterator.42"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 8, i32 8, i1 false)
  %11 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.42", %"class.__gnu_cxx::__normal_iterator.42"* %3, i32 0, i32 0
  %12 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %11, align 8
  %13 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.42", %"class.__gnu_cxx::__normal_iterator.42"* %4, i32 0, i32 0
  %14 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %13, align 8
  call void @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPP15CLitPoolElementSt6vectorIS3_SaIS3_EEEEEvT_S9_(%class.CLitPoolElement** %12, %class.CLitPoolElement** %14)
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %class.CLitPoolElement** @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP15CLitPoolElementSt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_(%class.CLitPoolElement** %__first.coerce, %class.CLitPoolElement** %__last.coerce, %class.CLitPoolElement** %__result.coerce) #7 comdat {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.42", align 8
  %__first = alloca %"class.__gnu_cxx::__normal_iterator.41", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator.41", align 8
  %__result = alloca %"class.__gnu_cxx::__normal_iterator.42", align 8
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.41", align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.41", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.41", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.41", align 8
  %6 = alloca %"class.__gnu_cxx::__normal_iterator.42", align 8
  %7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %__first, i32 0, i32 0
  store %class.CLitPoolElement** %__first.coerce, %class.CLitPoolElement*** %7, align 8
  %8 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %__last, i32 0, i32 0
  store %class.CLitPoolElement** %__last.coerce, %class.CLitPoolElement*** %8, align 8
  %9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.42", %"class.__gnu_cxx::__normal_iterator.42"* %__result, i32 0, i32 0
  store %class.CLitPoolElement** %__result.coerce, %class.CLitPoolElement*** %9, align 8
  %10 = bitcast %"class.__gnu_cxx::__normal_iterator.41"* %3 to i8*
  %11 = bitcast %"class.__gnu_cxx::__normal_iterator.41"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 8, i32 8, i1 false)
  %12 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %3, i32 0, i32 0
  %13 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %12, align 8
  %14 = call %class.CLitPoolElement** @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKP15CLitPoolElementSt6vectorIS3_SaIS3_EEEEENSt11_Miter_baseIT_E13iterator_typeESB_(%class.CLitPoolElement** %13)
  %15 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %2, i32 0, i32 0
  store %class.CLitPoolElement** %14, %class.CLitPoolElement*** %15, align 8
  %16 = bitcast %"class.__gnu_cxx::__normal_iterator.41"* %5 to i8*
  %17 = bitcast %"class.__gnu_cxx::__normal_iterator.41"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 8, i32 8, i1 false)
  %18 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %5, i32 0, i32 0
  %19 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %18, align 8
  %20 = call %class.CLitPoolElement** @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKP15CLitPoolElementSt6vectorIS3_SaIS3_EEEEENSt11_Miter_baseIT_E13iterator_typeESB_(%class.CLitPoolElement** %19)
  %21 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %4, i32 0, i32 0
  store %class.CLitPoolElement** %20, %class.CLitPoolElement*** %21, align 8
  %22 = bitcast %"class.__gnu_cxx::__normal_iterator.42"* %6 to i8*
  %23 = bitcast %"class.__gnu_cxx::__normal_iterator.42"* %__result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 8, i32 8, i1 false)
  %24 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %2, i32 0, i32 0
  %25 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %24, align 8
  %26 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %4, i32 0, i32 0
  %27 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %26, align 8
  %28 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.42", %"class.__gnu_cxx::__normal_iterator.42"* %6, i32 0, i32 0
  %29 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %28, align 8
  %30 = call %class.CLitPoolElement** @_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKP15CLitPoolElementSt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET1_T0_SD_SC_(%class.CLitPoolElement** %25, %class.CLitPoolElement** %27, %class.CLitPoolElement** %29)
  %31 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.42", %"class.__gnu_cxx::__normal_iterator.42"* %1, i32 0, i32 0
  store %class.CLitPoolElement** %30, %class.CLitPoolElement*** %31, align 8
  %32 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.42", %"class.__gnu_cxx::__normal_iterator.42"* %1, i32 0, i32 0
  %33 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %32, align 8
  ret %class.CLitPoolElement** %33
}

; Function Attrs: uwtable
define linkonce_odr %class.CLitPoolElement** @_ZNSt6vectorIP15CLitPoolElementSaIS1_EE5beginEv(%"class.std::vector.0"* %this) #0 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.42", align 8
  %2 = alloca %"class.std::vector.0"*, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %2, align 8
  %3 = load %"class.std::vector.0"*, %"class.std::vector.0"** %2, align 8
  %4 = bitcast %"class.std::vector.0"* %3 to %"struct.std::_Vector_base.1"*
  %5 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %5, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIPP15CLitPoolElementSt6vectorIS2_SaIS2_EEEC2ERKS3_(%"class.__gnu_cxx::__normal_iterator.42"* %1, %class.CLitPoolElement*** dereferenceable(8) %6)
  %7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.42", %"class.__gnu_cxx::__normal_iterator.42"* %1, i32 0, i32 0
  %8 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %7, align 8
  ret %class.CLitPoolElement** %8
}

; Function Attrs: uwtable
define linkonce_odr %class.CLitPoolElement** @_ZNSt6vectorIP15CLitPoolElementSaIS1_EE3endEv(%"class.std::vector.0"* %this) #0 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.42", align 8
  %2 = alloca %"class.std::vector.0"*, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %2, align 8
  %3 = load %"class.std::vector.0"*, %"class.std::vector.0"** %2, align 8
  %4 = bitcast %"class.std::vector.0"* %3 to %"struct.std::_Vector_base.1"*
  %5 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %5, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPP15CLitPoolElementSt6vectorIS2_SaIS2_EEEC2ERKS3_(%"class.__gnu_cxx::__normal_iterator.42"* %1, %class.CLitPoolElement*** dereferenceable(8) %6)
  %7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.42", %"class.__gnu_cxx::__normal_iterator.42"* %1, i32 0, i32 0
  %8 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %7, align 8
  ret %class.CLitPoolElement** %8
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %class.CLitPoolElement** @_ZSt4copyIPP15CLitPoolElementS2_ET0_T_S4_S3_(%class.CLitPoolElement** %__first, %class.CLitPoolElement** %__last, %class.CLitPoolElement** %__result) #7 comdat {
  %1 = alloca %class.CLitPoolElement**, align 8
  %2 = alloca %class.CLitPoolElement**, align 8
  %3 = alloca %class.CLitPoolElement**, align 8
  store %class.CLitPoolElement** %__first, %class.CLitPoolElement*** %1, align 8
  store %class.CLitPoolElement** %__last, %class.CLitPoolElement*** %2, align 8
  store %class.CLitPoolElement** %__result, %class.CLitPoolElement*** %3, align 8
  %4 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %1, align 8
  %5 = call %class.CLitPoolElement** @_ZSt12__miter_baseIPP15CLitPoolElementENSt11_Miter_baseIT_E13iterator_typeES4_(%class.CLitPoolElement** %4)
  %6 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %2, align 8
  %7 = call %class.CLitPoolElement** @_ZSt12__miter_baseIPP15CLitPoolElementENSt11_Miter_baseIT_E13iterator_typeES4_(%class.CLitPoolElement** %6)
  %8 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %3, align 8
  %9 = call %class.CLitPoolElement** @_ZSt14__copy_move_a2ILb0EPP15CLitPoolElementS2_ET1_T0_S4_S3_(%class.CLitPoolElement** %5, %class.CLitPoolElement** %7, %class.CLitPoolElement** %8)
  ret %class.CLitPoolElement** %9
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %class.CLitPoolElement** @_ZSt22__uninitialized_copy_aIPP15CLitPoolElementS2_S1_ET0_T_S4_S3_RSaIT1_E(%class.CLitPoolElement** %__first, %class.CLitPoolElement** %__last, %class.CLitPoolElement** %__result, %"class.std::allocator.2"* dereferenceable(1)) #7 comdat {
  %2 = alloca %class.CLitPoolElement**, align 8
  %3 = alloca %class.CLitPoolElement**, align 8
  %4 = alloca %class.CLitPoolElement**, align 8
  %5 = alloca %"class.std::allocator.2"*, align 8
  store %class.CLitPoolElement** %__first, %class.CLitPoolElement*** %2, align 8
  store %class.CLitPoolElement** %__last, %class.CLitPoolElement*** %3, align 8
  store %class.CLitPoolElement** %__result, %class.CLitPoolElement*** %4, align 8
  store %"class.std::allocator.2"* %0, %"class.std::allocator.2"** %5, align 8
  %6 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %2, align 8
  %7 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %3, align 8
  %8 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %4, align 8
  %9 = call %class.CLitPoolElement** @_ZSt18uninitialized_copyIPP15CLitPoolElementS2_ET0_T_S4_S3_(%class.CLitPoolElement** %6, %class.CLitPoolElement** %7, %class.CLitPoolElement** %8)
  ret %class.CLitPoolElement** %9
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt8_DestroyIPP15CLitPoolElementEvT_S3_(%class.CLitPoolElement** %__first, %class.CLitPoolElement** %__last) #7 comdat {
  %1 = alloca %class.CLitPoolElement**, align 8
  %2 = alloca %class.CLitPoolElement**, align 8
  store %class.CLitPoolElement** %__first, %class.CLitPoolElement*** %1, align 8
  store %class.CLitPoolElement** %__last, %class.CLitPoolElement*** %2, align 8
  %3 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %1, align 8
  %4 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %2, align 8
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPP15CLitPoolElementEEvT_S5_(%class.CLitPoolElement** %3, %class.CLitPoolElement** %4)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Destroy_auxILb1EE9__destroyIPP15CLitPoolElementEEvT_S5_(%class.CLitPoolElement**, %class.CLitPoolElement**) #5 comdat align 2 {
  %3 = alloca %class.CLitPoolElement**, align 8
  %4 = alloca %class.CLitPoolElement**, align 8
  store %class.CLitPoolElement** %0, %class.CLitPoolElement*** %3, align 8
  store %class.CLitPoolElement** %1, %class.CLitPoolElement*** %4, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPP15CLitPoolElementSt6vectorIS3_SaIS3_EEEEEvT_S9_(%class.CLitPoolElement** %__first.coerce, %class.CLitPoolElement** %__last.coerce) #7 comdat {
  %__first = alloca %"class.__gnu_cxx::__normal_iterator.42", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator.42", align 8
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.42", align 8
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.42", align 8
  %3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.42", %"class.__gnu_cxx::__normal_iterator.42"* %__first, i32 0, i32 0
  store %class.CLitPoolElement** %__first.coerce, %class.CLitPoolElement*** %3, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.42", %"class.__gnu_cxx::__normal_iterator.42"* %__last, i32 0, i32 0
  store %class.CLitPoolElement** %__last.coerce, %class.CLitPoolElement*** %4, align 8
  %5 = bitcast %"class.__gnu_cxx::__normal_iterator.42"* %1 to i8*
  %6 = bitcast %"class.__gnu_cxx::__normal_iterator.42"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 8, i32 8, i1 false)
  %7 = bitcast %"class.__gnu_cxx::__normal_iterator.42"* %2 to i8*
  %8 = bitcast %"class.__gnu_cxx::__normal_iterator.42"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 8, i32 8, i1 false)
  %9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.42", %"class.__gnu_cxx::__normal_iterator.42"* %1, i32 0, i32 0
  %10 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %9, align 8
  %11 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.42", %"class.__gnu_cxx::__normal_iterator.42"* %2, i32 0, i32 0
  %12 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %11, align 8
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPP15CLitPoolElementSt6vectorIS5_SaIS5_EEEEEEvT_SB_(%class.CLitPoolElement** %10, %class.CLitPoolElement** %12)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPP15CLitPoolElementSt6vectorIS5_SaIS5_EEEEEEvT_SB_(%class.CLitPoolElement** %.coerce, %class.CLitPoolElement** %.coerce1) #5 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.42", align 8
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.42", align 8
  %3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.42", %"class.__gnu_cxx::__normal_iterator.42"* %1, i32 0, i32 0
  store %class.CLitPoolElement** %.coerce, %class.CLitPoolElement*** %3, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.42", %"class.__gnu_cxx::__normal_iterator.42"* %2, i32 0, i32 0
  store %class.CLitPoolElement** %.coerce1, %class.CLitPoolElement*** %4, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %class.CLitPoolElement** @_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKP15CLitPoolElementSt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET1_T0_SD_SC_(%class.CLitPoolElement** %__first.coerce, %class.CLitPoolElement** %__last.coerce, %class.CLitPoolElement** %__result.coerce) #7 comdat {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.42", align 8
  %__first = alloca %"class.__gnu_cxx::__normal_iterator.41", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator.41", align 8
  %__result = alloca %"class.__gnu_cxx::__normal_iterator.42", align 8
  %2 = alloca %class.CLitPoolElement**, align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.41", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.41", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.42", align 8
  %6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %__first, i32 0, i32 0
  store %class.CLitPoolElement** %__first.coerce, %class.CLitPoolElement*** %6, align 8
  %7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %__last, i32 0, i32 0
  store %class.CLitPoolElement** %__last.coerce, %class.CLitPoolElement*** %7, align 8
  %8 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.42", %"class.__gnu_cxx::__normal_iterator.42"* %__result, i32 0, i32 0
  store %class.CLitPoolElement** %__result.coerce, %class.CLitPoolElement*** %8, align 8
  %9 = bitcast %"class.__gnu_cxx::__normal_iterator.41"* %3 to i8*
  %10 = bitcast %"class.__gnu_cxx::__normal_iterator.41"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 8, i32 8, i1 false)
  %11 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %3, i32 0, i32 0
  %12 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %11, align 8
  %13 = call %class.CLitPoolElement** @_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPKP15CLitPoolElementSt6vectorIS3_SaIS3_EEEEENSt11_Niter_baseIT_E13iterator_typeESB_(%class.CLitPoolElement** %12)
  %14 = bitcast %"class.__gnu_cxx::__normal_iterator.41"* %4 to i8*
  %15 = bitcast %"class.__gnu_cxx::__normal_iterator.41"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 8, i32 8, i1 false)
  %16 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.41", %"class.__gnu_cxx::__normal_iterator.41"* %4, i32 0, i32 0
  %17 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %16, align 8
  %18 = call %class.CLitPoolElement** @_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPKP15CLitPoolElementSt6vectorIS3_SaIS3_EEEEENSt11_Niter_baseIT_E13iterator_typeESB_(%class.CLitPoolElement** %17)
  %19 = bitcast %"class.__gnu_cxx::__normal_iterator.42"* %5 to i8*
  %20 = bitcast %"class.__gnu_cxx::__normal_iterator.42"* %__result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 8, i32 8, i1 false)
  %21 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.42", %"class.__gnu_cxx::__normal_iterator.42"* %5, i32 0, i32 0
  %22 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %21, align 8
  %23 = call %class.CLitPoolElement** @_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPP15CLitPoolElementSt6vectorIS3_SaIS3_EEEEENSt11_Niter_baseIT_E13iterator_typeESA_(%class.CLitPoolElement** %22)
  %24 = call %class.CLitPoolElement** @_ZSt13__copy_move_aILb0EPKP15CLitPoolElementPS1_ET1_T0_S6_S5_(%class.CLitPoolElement** %13, %class.CLitPoolElement** %18, %class.CLitPoolElement** %23)
  store %class.CLitPoolElement** %24, %class.CLitPoolElement*** %2, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPP15CLitPoolElementSt6vectorIS2_SaIS2_EEEC2ERKS3_(%"class.__gnu_cxx::__normal_iterator.42"* %1, %class.CLitPoolElement*** dereferenceable(8) %2)
  %25 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.42", %"class.__gnu_cxx::__normal_iterator.42"* %1, i32 0, i32 0
  %26 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %25, align 8
  ret %class.CLitPoolElement** %26
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %class.CLitPoolElement** @_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPP15CLitPoolElementSt6vectorIS3_SaIS3_EEEEENSt11_Niter_baseIT_E13iterator_typeESA_(%class.CLitPoolElement** %__it.coerce) #7 comdat {
  %__it = alloca %"class.__gnu_cxx::__normal_iterator.42", align 8
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.42", align 8
  %2 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.42", %"class.__gnu_cxx::__normal_iterator.42"* %__it, i32 0, i32 0
  store %class.CLitPoolElement** %__it.coerce, %class.CLitPoolElement*** %2, align 8
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator.42"* %1 to i8*
  %4 = bitcast %"class.__gnu_cxx::__normal_iterator.42"* %__it to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 8, i1 false)
  %5 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.42", %"class.__gnu_cxx::__normal_iterator.42"* %1, i32 0, i32 0
  %6 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %5, align 8
  %7 = call %class.CLitPoolElement** @_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPP15CLitPoolElementSt6vectorIS3_SaIS3_EEEELb1EE7_S_baseES8_(%class.CLitPoolElement** %6)
  ret %class.CLitPoolElement** %7
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx17__normal_iteratorIPP15CLitPoolElementSt6vectorIS2_SaIS2_EEEC2ERKS3_(%"class.__gnu_cxx::__normal_iterator.42"* %this, %class.CLitPoolElement*** dereferenceable(8) %__i) unnamed_addr #5 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.42"*, align 8
  %2 = alloca %class.CLitPoolElement***, align 8
  store %"class.__gnu_cxx::__normal_iterator.42"* %this, %"class.__gnu_cxx::__normal_iterator.42"** %1, align 8
  store %class.CLitPoolElement*** %__i, %class.CLitPoolElement**** %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator.42"*, %"class.__gnu_cxx::__normal_iterator.42"** %1, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.42", %"class.__gnu_cxx::__normal_iterator.42"* %3, i32 0, i32 0
  %5 = load %class.CLitPoolElement***, %class.CLitPoolElement**** %2, align 8
  %6 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %5, align 8
  store %class.CLitPoolElement** %6, %class.CLitPoolElement*** %4, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr %class.CLitPoolElement** @_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPP15CLitPoolElementSt6vectorIS3_SaIS3_EEEELb1EE7_S_baseES8_(%class.CLitPoolElement** %__it.coerce) #0 comdat align 2 {
  %__it = alloca %"class.__gnu_cxx::__normal_iterator.42", align 8
  %1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.42", %"class.__gnu_cxx::__normal_iterator.42"* %__it, i32 0, i32 0
  store %class.CLitPoolElement** %__it.coerce, %class.CLitPoolElement*** %1, align 8
  %2 = call dereferenceable(8) %class.CLitPoolElement*** @_ZNK9__gnu_cxx17__normal_iteratorIPP15CLitPoolElementSt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.42"* %__it)
  %3 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %2, align 8
  ret %class.CLitPoolElement** %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(8) %class.CLitPoolElement*** @_ZNK9__gnu_cxx17__normal_iteratorIPP15CLitPoolElementSt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.42"* %this) #5 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.42"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.42"* %this, %"class.__gnu_cxx::__normal_iterator.42"** %1, align 8
  %2 = load %"class.__gnu_cxx::__normal_iterator.42"*, %"class.__gnu_cxx::__normal_iterator.42"** %1, align 8
  %3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.42", %"class.__gnu_cxx::__normal_iterator.42"* %2, i32 0, i32 0
  ret %class.CLitPoolElement*** %3
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %class.CLitPoolElement** @_ZSt14__copy_move_a2ILb0EPP15CLitPoolElementS2_ET1_T0_S4_S3_(%class.CLitPoolElement** %__first, %class.CLitPoolElement** %__last, %class.CLitPoolElement** %__result) #7 comdat {
  %1 = alloca %class.CLitPoolElement**, align 8
  %2 = alloca %class.CLitPoolElement**, align 8
  %3 = alloca %class.CLitPoolElement**, align 8
  store %class.CLitPoolElement** %__first, %class.CLitPoolElement*** %1, align 8
  store %class.CLitPoolElement** %__last, %class.CLitPoolElement*** %2, align 8
  store %class.CLitPoolElement** %__result, %class.CLitPoolElement*** %3, align 8
  %4 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %1, align 8
  %5 = call %class.CLitPoolElement** @_ZSt12__niter_baseIPP15CLitPoolElementENSt11_Niter_baseIT_E13iterator_typeES4_(%class.CLitPoolElement** %4)
  %6 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %2, align 8
  %7 = call %class.CLitPoolElement** @_ZSt12__niter_baseIPP15CLitPoolElementENSt11_Niter_baseIT_E13iterator_typeES4_(%class.CLitPoolElement** %6)
  %8 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %3, align 8
  %9 = call %class.CLitPoolElement** @_ZSt12__niter_baseIPP15CLitPoolElementENSt11_Niter_baseIT_E13iterator_typeES4_(%class.CLitPoolElement** %8)
  %10 = call %class.CLitPoolElement** @_ZSt13__copy_move_aILb0EPP15CLitPoolElementS2_ET1_T0_S4_S3_(%class.CLitPoolElement** %5, %class.CLitPoolElement** %7, %class.CLitPoolElement** %9)
  ret %class.CLitPoolElement** %10
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %class.CLitPoolElement** @_ZSt12__miter_baseIPP15CLitPoolElementENSt11_Miter_baseIT_E13iterator_typeES4_(%class.CLitPoolElement** %__it) #10 comdat {
  %1 = alloca %class.CLitPoolElement**, align 8
  store %class.CLitPoolElement** %__it, %class.CLitPoolElement*** %1, align 8
  %2 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %1, align 8
  %3 = call %class.CLitPoolElement** @_ZNSt10_Iter_baseIPP15CLitPoolElementLb0EE7_S_baseES2_(%class.CLitPoolElement** %2)
  ret %class.CLitPoolElement** %3
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %class.CLitPoolElement** @_ZSt13__copy_move_aILb0EPP15CLitPoolElementS2_ET1_T0_S4_S3_(%class.CLitPoolElement** %__first, %class.CLitPoolElement** %__last, %class.CLitPoolElement** %__result) #10 comdat {
  %1 = alloca %class.CLitPoolElement**, align 8
  %2 = alloca %class.CLitPoolElement**, align 8
  %3 = alloca %class.CLitPoolElement**, align 8
  %__simple = alloca i8, align 1
  store %class.CLitPoolElement** %__first, %class.CLitPoolElement*** %1, align 8
  store %class.CLitPoolElement** %__last, %class.CLitPoolElement*** %2, align 8
  store %class.CLitPoolElement** %__result, %class.CLitPoolElement*** %3, align 8
  store i8 1, i8* %__simple, align 1
  %4 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %1, align 8
  %5 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %2, align 8
  %6 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %3, align 8
  %7 = call %class.CLitPoolElement** @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP15CLitPoolElementEEPT_PKS5_S8_S6_(%class.CLitPoolElement** %4, %class.CLitPoolElement** %5, %class.CLitPoolElement** %6)
  ret %class.CLitPoolElement** %7
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %class.CLitPoolElement** @_ZSt18uninitialized_copyIPP15CLitPoolElementS2_ET0_T_S4_S3_(%class.CLitPoolElement** %__first, %class.CLitPoolElement** %__last, %class.CLitPoolElement** %__result) #7 comdat {
  %1 = alloca %class.CLitPoolElement**, align 8
  %2 = alloca %class.CLitPoolElement**, align 8
  %3 = alloca %class.CLitPoolElement**, align 8
  %__assignable = alloca i8, align 1
  store %class.CLitPoolElement** %__first, %class.CLitPoolElement*** %1, align 8
  store %class.CLitPoolElement** %__last, %class.CLitPoolElement*** %2, align 8
  store %class.CLitPoolElement** %__result, %class.CLitPoolElement*** %3, align 8
  store i8 1, i8* %__assignable, align 1
  %4 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %1, align 8
  %5 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %2, align 8
  %6 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %3, align 8
  %7 = call %class.CLitPoolElement** @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPP15CLitPoolElementS4_EET0_T_S6_S5_(%class.CLitPoolElement** %4, %class.CLitPoolElement** %5, %class.CLitPoolElement** %6)
  ret %class.CLitPoolElement** %7
}

; Function Attrs: uwtable
define linkonce_odr %class.CLitPoolElement** @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPP15CLitPoolElementS4_EET0_T_S6_S5_(%class.CLitPoolElement** %__first, %class.CLitPoolElement** %__last, %class.CLitPoolElement** %__result) #0 comdat align 2 {
  %1 = alloca %class.CLitPoolElement**, align 8
  %2 = alloca %class.CLitPoolElement**, align 8
  %3 = alloca %class.CLitPoolElement**, align 8
  store %class.CLitPoolElement** %__first, %class.CLitPoolElement*** %1, align 8
  store %class.CLitPoolElement** %__last, %class.CLitPoolElement*** %2, align 8
  store %class.CLitPoolElement** %__result, %class.CLitPoolElement*** %3, align 8
  %4 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %1, align 8
  %5 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %2, align 8
  %6 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %3, align 8
  %7 = call %class.CLitPoolElement** @_ZSt4copyIPP15CLitPoolElementS2_ET0_T_S4_S3_(%class.CLitPoolElement** %4, %class.CLitPoolElement** %5, %class.CLitPoolElement** %6)
  ret %class.CLitPoolElement** %7
}

; Function Attrs: nounwind uwtable
define linkonce_odr %class.CVariable* @_ZNSt10_Iter_baseIP9CVariableLb0EE7_S_baseES1_(%class.CVariable* %__it) #5 comdat align 2 {
  %1 = alloca %class.CVariable*, align 8
  store %class.CVariable* %__it, %class.CVariable** %1, align 8
  %2 = load %class.CVariable*, %class.CVariable** %1, align 8
  ret %class.CVariable* %2
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt8__fill_aIP9CVariableS0_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_S7_RKS4_(%class.CVariable* %__first, %class.CVariable* %__last, %class.CVariable* dereferenceable(80) %__value) #7 comdat {
  %1 = alloca %class.CVariable*, align 8
  %2 = alloca %class.CVariable*, align 8
  %3 = alloca %class.CVariable*, align 8
  store %class.CVariable* %__first, %class.CVariable** %1, align 8
  store %class.CVariable* %__last, %class.CVariable** %2, align 8
  store %class.CVariable* %__value, %class.CVariable** %3, align 8
  br label %4

; <label>:4                                       ; preds = %12, %0
  %5 = load %class.CVariable*, %class.CVariable** %1, align 8
  %6 = load %class.CVariable*, %class.CVariable** %2, align 8
  %7 = icmp ne %class.CVariable* %5, %6
  br i1 %7, label %8, label %15

; <label>:8                                       ; preds = %4
  %9 = load %class.CVariable*, %class.CVariable** %1, align 8
  %10 = load %class.CVariable*, %class.CVariable** %3, align 8
  %11 = call dereferenceable(80) %class.CVariable* @_ZN9CVariableaSERKS_(%class.CVariable* %9, %class.CVariable* dereferenceable(80) %10)
  br label %12

; <label>:12                                      ; preds = %8
  %13 = load %class.CVariable*, %class.CVariable** %1, align 8
  %14 = getelementptr inbounds %class.CVariable, %class.CVariable* %13, i32 1
  store %class.CVariable* %14, %class.CVariable** %1, align 8
  br label %4

; <label>:15                                      ; preds = %4
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %class.CVariable* @_ZSt20uninitialized_fill_nIP9CVariablemS0_ET_S2_T0_RKT1_(%class.CVariable* %__first, i64 %__n, %class.CVariable* dereferenceable(80) %__x) #7 comdat {
  %1 = alloca %class.CVariable*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %class.CVariable*, align 8
  %__assignable = alloca i8, align 1
  store %class.CVariable* %__first, %class.CVariable** %1, align 8
  store i64 %__n, i64* %2, align 8
  store %class.CVariable* %__x, %class.CVariable** %3, align 8
  store i8 1, i8* %__assignable, align 1
  %4 = load %class.CVariable*, %class.CVariable** %1, align 8
  %5 = load i64, i64* %2, align 8
  %6 = load %class.CVariable*, %class.CVariable** %3, align 8
  %7 = call %class.CVariable* @_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIP9CVariablemS2_EET_S4_T0_RKT1_(%class.CVariable* %4, i64 %5, %class.CVariable* dereferenceable(80) %6)
  ret %class.CVariable* %7
}

; Function Attrs: uwtable
define linkonce_odr %class.CVariable* @_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIP9CVariablemS2_EET_S4_T0_RKT1_(%class.CVariable* %__first, i64 %__n, %class.CVariable* dereferenceable(80) %__x) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %class.CVariable*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %class.CVariable*, align 8
  %__cur = alloca %class.CVariable*, align 8
  %4 = alloca i8*
  %5 = alloca i32
  store %class.CVariable* %__first, %class.CVariable** %1, align 8
  store i64 %__n, i64* %2, align 8
  store %class.CVariable* %__x, %class.CVariable** %3, align 8
  %6 = load %class.CVariable*, %class.CVariable** %1, align 8
  store %class.CVariable* %6, %class.CVariable** %__cur, align 8
  br label %7

; <label>:7                                       ; preds = %16, %0
  %8 = load i64, i64* %2, align 8
  %9 = icmp ugt i64 %8, 0
  br i1 %9, label %10, label %31

; <label>:10                                      ; preds = %7
  %11 = load %class.CVariable*, %class.CVariable** %__cur, align 8
  %12 = invoke %class.CVariable* @_ZSt11__addressofI9CVariableEPT_RS1_(%class.CVariable* dereferenceable(80) %11)
          to label %13 unwind label %21

; <label>:13                                      ; preds = %10
  %14 = load %class.CVariable*, %class.CVariable** %3, align 8
  invoke void @_ZSt10_ConstructI9CVariableS0_EvPT_RKT0_(%class.CVariable* %12, %class.CVariable* dereferenceable(80) %14)
          to label %15 unwind label %21

; <label>:15                                      ; preds = %13
  br label %16

; <label>:16                                      ; preds = %15
  %17 = load i64, i64* %2, align 8
  %18 = add i64 %17, -1
  store i64 %18, i64* %2, align 8
  %19 = load %class.CVariable*, %class.CVariable** %__cur, align 8
  %20 = getelementptr inbounds %class.CVariable, %class.CVariable* %19, i32 1
  store %class.CVariable* %20, %class.CVariable** %__cur, align 8
  br label %7

; <label>:21                                      ; preds = %13, %10
  %22 = landingpad { i8*, i32 }
          catch i8* null
  %23 = extractvalue { i8*, i32 } %22, 0
  store i8* %23, i8** %4, align 8
  %24 = extractvalue { i8*, i32 } %22, 1
  store i32 %24, i32* %5, align 4
  br label %25

; <label>:25                                      ; preds = %21
  %26 = load i8*, i8** %4, align 8
  %27 = call i8* @__cxa_begin_catch(i8* %26) #2
  %28 = load %class.CVariable*, %class.CVariable** %1, align 8
  %29 = load %class.CVariable*, %class.CVariable** %__cur, align 8
  invoke void @_ZSt8_DestroyIP9CVariableEvT_S2_(%class.CVariable* %28, %class.CVariable* %29)
          to label %30 unwind label %33

; <label>:30                                      ; preds = %25
  invoke void @__cxa_rethrow() #16
          to label %47 unwind label %33

; <label>:31                                      ; preds = %7
  %32 = load %class.CVariable*, %class.CVariable** %__cur, align 8
  ret %class.CVariable* %32

; <label>:33                                      ; preds = %30, %25
  %34 = landingpad { i8*, i32 }
          cleanup
  %35 = extractvalue { i8*, i32 } %34, 0
  store i8* %35, i8** %4, align 8
  %36 = extractvalue { i8*, i32 } %34, 1
  store i32 %36, i32* %5, align 4
  invoke void @__cxa_end_catch()
          to label %37 unwind label %44

; <label>:37                                      ; preds = %33
  br label %39
                                                  ; No predecessors!
  call void @llvm.trap()
  unreachable

; <label>:39                                      ; preds = %37
  %40 = load i8*, i8** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = insertvalue { i8*, i32 } undef, i8* %40, 0
  %43 = insertvalue { i8*, i32 } %42, i32 %41, 1
  resume { i8*, i32 } %43

; <label>:44                                      ; preds = %33
  %45 = landingpad { i8*, i32 }
          catch i8* null
  %46 = extractvalue { i8*, i32 } %45, 0
  call void @__clang_call_terminate(i8* %46) #12
  unreachable

; <label>:47                                      ; preds = %30
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr i64 @_ZNKSt6vectorI9CVariableSaIS0_EE8max_sizeEv(%"class.std::vector"* %this) #0 comdat align 2 {
  %1 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 8
  %2 = load %"class.std::vector"*, %"class.std::vector"** %1, align 8
  %3 = bitcast %"class.std::vector"* %2 to %"struct.std::_Vector_base"*
  %4 = call dereferenceable(1) %"class.std::allocator"* @_ZNKSt12_Vector_baseI9CVariableSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %3)
  %5 = call i64 @_ZN9__gnu_cxx14__alloc_traitsISaI9CVariableEE8max_sizeERKS2_(%"class.std::allocator"* dereferenceable(1) %4)
  ret i64 %5
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(i8*) #11

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* dereferenceable(8) %__a, i64* dereferenceable(8) %__b) #5 comdat {
  %1 = alloca i64*, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i64*, align 8
  store i64* %__a, i64** %2, align 8
  store i64* %__b, i64** %3, align 8
  %4 = load i64*, i64** %2, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load i64*, i64** %3, align 8
  %7 = load i64, i64* %6, align 8
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %11

; <label>:9                                       ; preds = %0
  %10 = load i64*, i64** %3, align 8
  store i64* %10, i64** %1, align 8
  br label %13

; <label>:11                                      ; preds = %0
  %12 = load i64*, i64** %2, align 8
  store i64* %12, i64** %1, align 8
  br label %13

; <label>:13                                      ; preds = %11, %9
  %14 = load i64*, i64** %1, align 8
  ret i64* %14
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZN9__gnu_cxx14__alloc_traitsISaI9CVariableEE8max_sizeERKS2_(%"class.std::allocator"* dereferenceable(1) %__a) #5 comdat align 2 {
  %1 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %1, align 8
  %2 = load %"class.std::allocator"*, %"class.std::allocator"** %1, align 8
  %3 = bitcast %"class.std::allocator"* %2 to %"class.__gnu_cxx::new_allocator"*
  %4 = call i64 @_ZNK9__gnu_cxx13new_allocatorI9CVariableE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %3) #2
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(1) %"class.std::allocator"* @_ZNKSt12_Vector_baseI9CVariableSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %this) #5 comdat align 2 {
  %1 = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %1, align 8
  %2 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %1, align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %4 = bitcast %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl"* %3 to %"class.std::allocator"*
  ret %"class.std::allocator"* %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorI9CVariableE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %this) #5 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %1, align 8
  ret i64 230584300921369395
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx17__normal_iteratorIP9CVariableSt6vectorIS1_SaIS1_EEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator"* %this, %class.CVariable** dereferenceable(8) %__i) unnamed_addr #5 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %2 = alloca %class.CVariable**, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %1, align 8
  store %class.CVariable** %__i, %class.CVariable*** %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %1, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %3, i32 0, i32 0
  %5 = load %class.CVariable**, %class.CVariable*** %2, align 8
  %6 = load %class.CVariable*, %class.CVariable** %5, align 8
  store %class.CVariable* %6, %class.CVariable** %4, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr %class.CVariable* @_ZN9__gnu_cxx14__alloc_traitsISaI9CVariableEE8allocateERS2_m(%"class.std::allocator"* dereferenceable(1) %__a, i64 %__n) #0 comdat align 2 {
  %1 = alloca %"class.std::allocator"*, align 8
  %2 = alloca i64, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %3 = load %"class.std::allocator"*, %"class.std::allocator"** %1, align 8
  %4 = bitcast %"class.std::allocator"* %3 to %"class.__gnu_cxx::new_allocator"*
  %5 = load i64, i64* %2, align 8
  %6 = call %class.CVariable* @_ZN9__gnu_cxx13new_allocatorI9CVariableE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* %4, i64 %5, i8* null)
  ret %class.CVariable* %6
}

; Function Attrs: uwtable
define linkonce_odr %class.CVariable* @_ZN9__gnu_cxx13new_allocatorI9CVariableE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* %this, i64 %__n, i8*) #0 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %2, align 8
  store i64 %__n, i64* %3, align 8
  store i8* %0, i8** %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %2, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @_ZNK9__gnu_cxx13new_allocatorI9CVariableE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %5) #2
  %8 = icmp ugt i64 %6, %7
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %1
  call void @_ZSt17__throw_bad_allocv() #16
  unreachable

; <label>:10                                      ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = mul i64 %11, 80
  %13 = call noalias i8* @_Znwm(i64 %12)
  %14 = bitcast i8* %13 to %class.CVariable*
  ret %class.CVariable* %14
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaI9CVariableEE10deallocateERS2_PS1_m(%"class.std::allocator"* dereferenceable(1) %__a, %class.CVariable* %__p, i64 %__n) #0 comdat align 2 {
  %1 = alloca %"class.std::allocator"*, align 8
  %2 = alloca %class.CVariable*, align 8
  %3 = alloca i64, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %1, align 8
  store %class.CVariable* %__p, %class.CVariable** %2, align 8
  store i64 %__n, i64* %3, align 8
  %4 = load %"class.std::allocator"*, %"class.std::allocator"** %1, align 8
  %5 = bitcast %"class.std::allocator"* %4 to %"class.__gnu_cxx::new_allocator"*
  %6 = load %class.CVariable*, %class.CVariable** %2, align 8
  %7 = load i64, i64* %3, align 8
  call void @_ZN9__gnu_cxx13new_allocatorI9CVariableE10deallocateEPS1_m(%"class.__gnu_cxx::new_allocator"* %5, %class.CVariable* %6, i64 %7)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorI9CVariableE10deallocateEPS1_m(%"class.__gnu_cxx::new_allocator"* %this, %class.CVariable* %__p, i64) #5 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %3 = alloca %class.CVariable*, align 8
  %4 = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %2, align 8
  store %class.CVariable* %__p, %class.CVariable** %3, align 8
  store i64 %0, i64* %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %2, align 8
  %6 = load %class.CVariable*, %class.CVariable** %3, align 8
  %7 = bitcast %class.CVariable* %6 to i8*
  call void @_ZdlPv(i8* %7) #2
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIP15CLitPoolElementSaIS1_EEC2Ev(%"class.std::vector.0"* %this) unnamed_addr #0 comdat align 2 {
  %1 = alloca %"class.std::vector.0"*, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %1, align 8
  %2 = load %"class.std::vector.0"*, %"class.std::vector.0"** %1, align 8
  %3 = bitcast %"class.std::vector.0"* %2 to %"struct.std::_Vector_base.1"*
  call void @_ZNSt12_Vector_baseIP15CLitPoolElementSaIS1_EEC2Ev(%"struct.std::_Vector_base.1"* %3)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIP15CLitPoolElementSaIS1_EED2Ev(%"class.std::vector.0"* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %"class.std::vector.0"*, align 8
  %2 = alloca i8*
  %3 = alloca i32
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %1, align 8
  %4 = load %"class.std::vector.0"*, %"class.std::vector.0"** %1, align 8
  %5 = bitcast %"class.std::vector.0"* %4 to %"struct.std::_Vector_base.1"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %6, i32 0, i32 0
  %8 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %7, align 8
  %9 = bitcast %"class.std::vector.0"* %4 to %"struct.std::_Vector_base.1"*
  %10 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %9, i32 0, i32 0
  %11 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %10, i32 0, i32 1
  %12 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %11, align 8
  %13 = bitcast %"class.std::vector.0"* %4 to %"struct.std::_Vector_base.1"*
  %14 = invoke dereferenceable(1) %"class.std::allocator.2"* @_ZNSt12_Vector_baseIP15CLitPoolElementSaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %13)
          to label %15 unwind label %18

; <label>:15                                      ; preds = %0
  invoke void @_ZSt8_DestroyIPP15CLitPoolElementS1_EvT_S3_RSaIT0_E(%class.CLitPoolElement** %8, %class.CLitPoolElement** %12, %"class.std::allocator.2"* dereferenceable(1) %14)
          to label %16 unwind label %18

; <label>:16                                      ; preds = %15
  %17 = bitcast %"class.std::vector.0"* %4 to %"struct.std::_Vector_base.1"*
  call void @_ZNSt12_Vector_baseIP15CLitPoolElementSaIS1_EED2Ev(%"struct.std::_Vector_base.1"* %17)
  ret void

; <label>:18                                      ; preds = %15, %0
  %19 = landingpad { i8*, i32 }
          cleanup
  %20 = extractvalue { i8*, i32 } %19, 0
  store i8* %20, i8** %2, align 8
  %21 = extractvalue { i8*, i32 } %19, 1
  store i32 %21, i32* %3, align 4
  %22 = bitcast %"class.std::vector.0"* %4 to %"struct.std::_Vector_base.1"*
  invoke void @_ZNSt12_Vector_baseIP15CLitPoolElementSaIS1_EED2Ev(%"struct.std::_Vector_base.1"* %22)
          to label %23 unwind label %29

; <label>:23                                      ; preds = %18
  br label %24

; <label>:24                                      ; preds = %23
  %25 = load i8*, i8** %2, align 8
  %26 = load i32, i32* %3, align 4
  %27 = insertvalue { i8*, i32 } undef, i8* %25, 0
  %28 = insertvalue { i8*, i32 } %27, i32 %26, 1
  resume { i8*, i32 } %28

; <label>:29                                      ; preds = %18
  %30 = landingpad { i8*, i32 }
          catch i8* null
  %31 = extractvalue { i8*, i32 } %30, 0
  call void @__clang_call_terminate(i8* %31) #12
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIP15CLitPoolElementSaIS1_EEC2Ev(%"struct.std::_Vector_base.1"* %this) unnamed_addr #0 comdat align 2 {
  %1 = alloca %"struct.std::_Vector_base.1"*, align 8
  store %"struct.std::_Vector_base.1"* %this, %"struct.std::_Vector_base.1"** %1, align 8
  %2 = load %"struct.std::_Vector_base.1"*, %"struct.std::_Vector_base.1"** %1, align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %2, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIP15CLitPoolElementSaIS1_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIP15CLitPoolElementSaIS1_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %this) unnamed_addr #5 comdat align 2 {
  %1 = alloca %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %this, %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"** %1, align 8
  %2 = load %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"*, %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"** %1, align 8
  %3 = bitcast %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %2 to %"class.std::allocator.2"*
  call void @_ZNSaIP15CLitPoolElementEC2Ev(%"class.std::allocator.2"* %3) #2
  %4 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %2, i32 0, i32 0
  store %class.CLitPoolElement** null, %class.CLitPoolElement*** %4, align 8
  %5 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %2, i32 0, i32 1
  store %class.CLitPoolElement** null, %class.CLitPoolElement*** %5, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %2, i32 0, i32 2
  store %class.CLitPoolElement** null, %class.CLitPoolElement*** %6, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIP15CLitPoolElementEC2Ev(%"class.std::allocator.2"* %this) unnamed_addr #5 comdat align 2 {
  %1 = alloca %"class.std::allocator.2"*, align 8
  store %"class.std::allocator.2"* %this, %"class.std::allocator.2"** %1, align 8
  %2 = load %"class.std::allocator.2"*, %"class.std::allocator.2"** %1, align 8
  %3 = bitcast %"class.std::allocator.2"* %2 to %"class.__gnu_cxx::new_allocator.3"*
  call void @_ZN9__gnu_cxx13new_allocatorIP15CLitPoolElementEC2Ev(%"class.__gnu_cxx::new_allocator.3"* %3) #2
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIP15CLitPoolElementEC2Ev(%"class.__gnu_cxx::new_allocator.3"* %this) unnamed_addr #5 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.3"*, align 8
  store %"class.__gnu_cxx::new_allocator.3"* %this, %"class.__gnu_cxx::new_allocator.3"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.3"*, %"class.__gnu_cxx::new_allocator.3"** %1, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9CDatabase13set_mem_limitEj(%class.CDatabase* %this, i32 %n) #5 comdat align 2 {
  %1 = alloca %class.CDatabase*, align 8
  %2 = alloca i32, align 4
  store %class.CDatabase* %this, %class.CDatabase** %1, align 8
  store i32 %n, i32* %2, align 4
  %3 = load %class.CDatabase*, %class.CDatabase** %1, align 8
  %4 = load i32, i32* %2, align 4
  %5 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %3, i32 0, i32 8
  store i32 %4, i32* %5, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt4pairIPFvPvEiEC2ERKS2_RKi(%"struct.std::pair.33"* %this, void (i8*)** dereferenceable(8) %__a, i32* dereferenceable(4) %__b) unnamed_addr #5 comdat align 2 {
  %1 = alloca %"struct.std::pair.33"*, align 8
  %2 = alloca void (i8*)**, align 8
  %3 = alloca i32*, align 8
  store %"struct.std::pair.33"* %this, %"struct.std::pair.33"** %1, align 8
  store void (i8*)** %__a, void (i8*)*** %2, align 8
  store i32* %__b, i32** %3, align 8
  %4 = load %"struct.std::pair.33"*, %"struct.std::pair.33"** %1, align 8
  %5 = getelementptr inbounds %"struct.std::pair.33", %"struct.std::pair.33"* %4, i32 0, i32 0
  %6 = load void (i8*)**, void (i8*)*** %2, align 8
  %7 = load void (i8*)*, void (i8*)** %6, align 8
  store void (i8*)* %7, void (i8*)** %5, align 8
  %8 = getelementptr inbounds %"struct.std::pair.33", %"struct.std::pair.33"* %4, i32 0, i32 1
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %8, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairIiS0_IPFvPvEiEESaIS5_EE9push_backERKS5_(%"class.std::vector.27"* %this, %"struct.std::pair.32"* dereferenceable(24) %__x) #0 comdat align 2 {
  %1 = alloca %"class.std::vector.27"*, align 8
  %2 = alloca %"struct.std::pair.32"*, align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.43", align 8
  store %"class.std::vector.27"* %this, %"class.std::vector.27"** %1, align 8
  store %"struct.std::pair.32"* %__x, %"struct.std::pair.32"** %2, align 8
  %4 = load %"class.std::vector.27"*, %"class.std::vector.27"** %1, align 8
  %5 = bitcast %"class.std::vector.27"* %4 to %"struct.std::_Vector_base.28"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base.28", %"struct.std::_Vector_base.28"* %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<int, std::pair<void (*)(void *), int> >, std::allocator<std::pair<int, std::pair<void (*)(void *), int> > > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<int, std::pair<void (*)(void *), int> >, std::allocator<std::pair<int, std::pair<void (*)(void *), int> > > >::_Vector_impl"* %6, i32 0, i32 1
  %8 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %7, align 8
  %9 = bitcast %"class.std::vector.27"* %4 to %"struct.std::_Vector_base.28"*
  %10 = getelementptr inbounds %"struct.std::_Vector_base.28", %"struct.std::_Vector_base.28"* %9, i32 0, i32 0
  %11 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<int, std::pair<void (*)(void *), int> >, std::allocator<std::pair<int, std::pair<void (*)(void *), int> > > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<int, std::pair<void (*)(void *), int> >, std::allocator<std::pair<int, std::pair<void (*)(void *), int> > > >::_Vector_impl"* %10, i32 0, i32 2
  %12 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %11, align 8
  %13 = icmp ne %"struct.std::pair.32"* %8, %12
  br i1 %13, label %14, label %28

; <label>:14                                      ; preds = %0
  %15 = bitcast %"class.std::vector.27"* %4 to %"struct.std::_Vector_base.28"*
  %16 = getelementptr inbounds %"struct.std::_Vector_base.28", %"struct.std::_Vector_base.28"* %15, i32 0, i32 0
  %17 = bitcast %"struct.std::_Vector_base<std::pair<int, std::pair<void (*)(void *), int> >, std::allocator<std::pair<int, std::pair<void (*)(void *), int> > > >::_Vector_impl"* %16 to %"class.std::allocator.29"*
  %18 = bitcast %"class.std::vector.27"* %4 to %"struct.std::_Vector_base.28"*
  %19 = getelementptr inbounds %"struct.std::_Vector_base.28", %"struct.std::_Vector_base.28"* %18, i32 0, i32 0
  %20 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<int, std::pair<void (*)(void *), int> >, std::allocator<std::pair<int, std::pair<void (*)(void *), int> > > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<int, std::pair<void (*)(void *), int> >, std::allocator<std::pair<int, std::pair<void (*)(void *), int> > > >::_Vector_impl"* %19, i32 0, i32 1
  %21 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %20, align 8
  %22 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %2, align 8
  call void @_ZN9__gnu_cxx14__alloc_traitsISaISt4pairIiS1_IPFvPvEiEEEE9constructIS6_EEvRS7_PS6_RKT_(%"class.std::allocator.29"* dereferenceable(1) %17, %"struct.std::pair.32"* %21, %"struct.std::pair.32"* dereferenceable(24) %22)
  %23 = bitcast %"class.std::vector.27"* %4 to %"struct.std::_Vector_base.28"*
  %24 = getelementptr inbounds %"struct.std::_Vector_base.28", %"struct.std::_Vector_base.28"* %23, i32 0, i32 0
  %25 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<int, std::pair<void (*)(void *), int> >, std::allocator<std::pair<int, std::pair<void (*)(void *), int> > > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<int, std::pair<void (*)(void *), int> >, std::allocator<std::pair<int, std::pair<void (*)(void *), int> > > >::_Vector_impl"* %24, i32 0, i32 1
  %26 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %25, align 8
  %27 = getelementptr inbounds %"struct.std::pair.32", %"struct.std::pair.32"* %26, i32 1
  store %"struct.std::pair.32"* %27, %"struct.std::pair.32"** %25, align 8
  br label %34

; <label>:28                                      ; preds = %0
  %29 = call %"struct.std::pair.32"* @_ZNSt6vectorISt4pairIiS0_IPFvPvEiEESaIS5_EE3endEv(%"class.std::vector.27"* %4)
  %30 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.43", %"class.__gnu_cxx::__normal_iterator.43"* %3, i32 0, i32 0
  store %"struct.std::pair.32"* %29, %"struct.std::pair.32"** %30, align 8
  %31 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %2, align 8
  %32 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.43", %"class.__gnu_cxx::__normal_iterator.43"* %3, i32 0, i32 0
  %33 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %32, align 8
  call void @_ZNSt6vectorISt4pairIiS0_IPFvPvEiEESaIS5_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS5_S7_EERKS5_(%"class.std::vector.27"* %4, %"struct.std::pair.32"* %33, %"struct.std::pair.32"* dereferenceable(24) %31)
  br label %34

; <label>:34                                      ; preds = %28, %14
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt4pairIiS_IPFvPvEiEEC2ERKiRKS3_(%"struct.std::pair.32"* %this, i32* dereferenceable(4) %__a, %"struct.std::pair.33"* dereferenceable(16) %__b) unnamed_addr #5 comdat align 2 {
  %1 = alloca %"struct.std::pair.32"*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %"struct.std::pair.33"*, align 8
  store %"struct.std::pair.32"* %this, %"struct.std::pair.32"** %1, align 8
  store i32* %__a, i32** %2, align 8
  store %"struct.std::pair.33"* %__b, %"struct.std::pair.33"** %3, align 8
  %4 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %1, align 8
  %5 = getelementptr inbounds %"struct.std::pair.32", %"struct.std::pair.32"* %4, i32 0, i32 0
  %6 = load i32*, i32** %2, align 8
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %5, align 8
  %8 = getelementptr inbounds %"struct.std::pair.32", %"struct.std::pair.32"* %4, i32 0, i32 2
  %9 = load %"struct.std::pair.33"*, %"struct.std::pair.33"** %3, align 8
  %10 = bitcast %"struct.std::pair.33"* %8 to i8*
  %11 = bitcast %"struct.std::pair.33"* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 16, i32 8, i1 false)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaISt4pairIiS1_IPFvPvEiEEEE9constructIS6_EEvRS7_PS6_RKT_(%"class.std::allocator.29"* dereferenceable(1) %__a, %"struct.std::pair.32"* %__p, %"struct.std::pair.32"* dereferenceable(24) %__arg) #0 comdat align 2 {
  %1 = alloca %"class.std::allocator.29"*, align 8
  %2 = alloca %"struct.std::pair.32"*, align 8
  %3 = alloca %"struct.std::pair.32"*, align 8
  store %"class.std::allocator.29"* %__a, %"class.std::allocator.29"** %1, align 8
  store %"struct.std::pair.32"* %__p, %"struct.std::pair.32"** %2, align 8
  store %"struct.std::pair.32"* %__arg, %"struct.std::pair.32"** %3, align 8
  %4 = load %"class.std::allocator.29"*, %"class.std::allocator.29"** %1, align 8
  %5 = bitcast %"class.std::allocator.29"* %4 to %"class.__gnu_cxx::new_allocator.30"*
  %6 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %2, align 8
  %7 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %3, align 8
  call void @_ZN9__gnu_cxx13new_allocatorISt4pairIiS1_IPFvPvEiEEE9constructEPS6_RKS6_(%"class.__gnu_cxx::new_allocator.30"* %5, %"struct.std::pair.32"* %6, %"struct.std::pair.32"* dereferenceable(24) %7)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairIiS0_IPFvPvEiEESaIS5_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS5_S7_EERKS5_(%"class.std::vector.27"* %this, %"struct.std::pair.32"* %__position.coerce, %"struct.std::pair.32"* dereferenceable(24) %__x) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %__position = alloca %"class.__gnu_cxx::__normal_iterator.43", align 8
  %1 = alloca %"class.std::vector.27"*, align 8
  %2 = alloca %"struct.std::pair.32"*, align 8
  %__x_copy = alloca %"struct.std::pair.32", align 8
  %__len = alloca i64, align 8
  %__elems_before = alloca i64, align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.43", align 8
  %__new_start = alloca %"struct.std::pair.32"*, align 8
  %__new_finish = alloca %"struct.std::pair.32"*, align 8
  %4 = alloca i8*
  %5 = alloca i32
  %6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.43", %"class.__gnu_cxx::__normal_iterator.43"* %__position, i32 0, i32 0
  store %"struct.std::pair.32"* %__position.coerce, %"struct.std::pair.32"** %6, align 8
  store %"class.std::vector.27"* %this, %"class.std::vector.27"** %1, align 8
  store %"struct.std::pair.32"* %__x, %"struct.std::pair.32"** %2, align 8
  %7 = load %"class.std::vector.27"*, %"class.std::vector.27"** %1, align 8
  %8 = bitcast %"class.std::vector.27"* %7 to %"struct.std::_Vector_base.28"*
  %9 = getelementptr inbounds %"struct.std::_Vector_base.28", %"struct.std::_Vector_base.28"* %8, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<int, std::pair<void (*)(void *), int> >, std::allocator<std::pair<int, std::pair<void (*)(void *), int> > > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<int, std::pair<void (*)(void *), int> >, std::allocator<std::pair<int, std::pair<void (*)(void *), int> > > >::_Vector_impl"* %9, i32 0, i32 1
  %11 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %10, align 8
  %12 = bitcast %"class.std::vector.27"* %7 to %"struct.std::_Vector_base.28"*
  %13 = getelementptr inbounds %"struct.std::_Vector_base.28", %"struct.std::_Vector_base.28"* %12, i32 0, i32 0
  %14 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<int, std::pair<void (*)(void *), int> >, std::allocator<std::pair<int, std::pair<void (*)(void *), int> > > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<int, std::pair<void (*)(void *), int> >, std::allocator<std::pair<int, std::pair<void (*)(void *), int> > > >::_Vector_impl"* %13, i32 0, i32 2
  %15 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %14, align 8
  %16 = icmp ne %"struct.std::pair.32"* %11, %15
  br i1 %16, label %17, label %54

; <label>:17                                      ; preds = %0
  %18 = bitcast %"class.std::vector.27"* %7 to %"struct.std::_Vector_base.28"*
  %19 = getelementptr inbounds %"struct.std::_Vector_base.28", %"struct.std::_Vector_base.28"* %18, i32 0, i32 0
  %20 = bitcast %"struct.std::_Vector_base<std::pair<int, std::pair<void (*)(void *), int> >, std::allocator<std::pair<int, std::pair<void (*)(void *), int> > > >::_Vector_impl"* %19 to %"class.std::allocator.29"*
  %21 = bitcast %"class.std::vector.27"* %7 to %"struct.std::_Vector_base.28"*
  %22 = getelementptr inbounds %"struct.std::_Vector_base.28", %"struct.std::_Vector_base.28"* %21, i32 0, i32 0
  %23 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<int, std::pair<void (*)(void *), int> >, std::allocator<std::pair<int, std::pair<void (*)(void *), int> > > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<int, std::pair<void (*)(void *), int> >, std::allocator<std::pair<int, std::pair<void (*)(void *), int> > > >::_Vector_impl"* %22, i32 0, i32 1
  %24 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %23, align 8
  %25 = bitcast %"class.std::vector.27"* %7 to %"struct.std::_Vector_base.28"*
  %26 = getelementptr inbounds %"struct.std::_Vector_base.28", %"struct.std::_Vector_base.28"* %25, i32 0, i32 0
  %27 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<int, std::pair<void (*)(void *), int> >, std::allocator<std::pair<int, std::pair<void (*)(void *), int> > > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<int, std::pair<void (*)(void *), int> >, std::allocator<std::pair<int, std::pair<void (*)(void *), int> > > >::_Vector_impl"* %26, i32 0, i32 1
  %28 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %27, align 8
  %29 = getelementptr inbounds %"struct.std::pair.32", %"struct.std::pair.32"* %28, i64 -1
  call void @_ZN9__gnu_cxx14__alloc_traitsISaISt4pairIiS1_IPFvPvEiEEEE9constructIS6_EEvRS7_PS6_RKT_(%"class.std::allocator.29"* dereferenceable(1) %20, %"struct.std::pair.32"* %24, %"struct.std::pair.32"* dereferenceable(24) %29)
  %30 = bitcast %"class.std::vector.27"* %7 to %"struct.std::_Vector_base.28"*
  %31 = getelementptr inbounds %"struct.std::_Vector_base.28", %"struct.std::_Vector_base.28"* %30, i32 0, i32 0
  %32 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<int, std::pair<void (*)(void *), int> >, std::allocator<std::pair<int, std::pair<void (*)(void *), int> > > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<int, std::pair<void (*)(void *), int> >, std::allocator<std::pair<int, std::pair<void (*)(void *), int> > > >::_Vector_impl"* %31, i32 0, i32 1
  %33 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %32, align 8
  %34 = getelementptr inbounds %"struct.std::pair.32", %"struct.std::pair.32"* %33, i32 1
  store %"struct.std::pair.32"* %34, %"struct.std::pair.32"** %32, align 8
  %35 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %2, align 8
  %36 = bitcast %"struct.std::pair.32"* %__x_copy to i8*
  %37 = bitcast %"struct.std::pair.32"* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 24, i32 8, i1 false)
  %38 = call dereferenceable(8) %"struct.std::pair.32"** @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIiS1_IPFvPvEiEESt6vectorIS6_SaIS6_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.43"* %__position)
  %39 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %38, align 8
  %40 = bitcast %"class.std::vector.27"* %7 to %"struct.std::_Vector_base.28"*
  %41 = getelementptr inbounds %"struct.std::_Vector_base.28", %"struct.std::_Vector_base.28"* %40, i32 0, i32 0
  %42 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<int, std::pair<void (*)(void *), int> >, std::allocator<std::pair<int, std::pair<void (*)(void *), int> > > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<int, std::pair<void (*)(void *), int> >, std::allocator<std::pair<int, std::pair<void (*)(void *), int> > > >::_Vector_impl"* %41, i32 0, i32 1
  %43 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %42, align 8
  %44 = getelementptr inbounds %"struct.std::pair.32", %"struct.std::pair.32"* %43, i64 -2
  %45 = bitcast %"class.std::vector.27"* %7 to %"struct.std::_Vector_base.28"*
  %46 = getelementptr inbounds %"struct.std::_Vector_base.28", %"struct.std::_Vector_base.28"* %45, i32 0, i32 0
  %47 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<int, std::pair<void (*)(void *), int> >, std::allocator<std::pair<int, std::pair<void (*)(void *), int> > > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<int, std::pair<void (*)(void *), int> >, std::allocator<std::pair<int, std::pair<void (*)(void *), int> > > >::_Vector_impl"* %46, i32 0, i32 1
  %48 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %47, align 8
  %49 = getelementptr inbounds %"struct.std::pair.32", %"struct.std::pair.32"* %48, i64 -1
  %50 = call %"struct.std::pair.32"* @_ZSt13copy_backwardIPSt4pairIiS0_IPFvPvEiEES6_ET0_T_S8_S7_(%"struct.std::pair.32"* %39, %"struct.std::pair.32"* %44, %"struct.std::pair.32"* %49)
  %51 = call dereferenceable(24) %"struct.std::pair.32"* @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIiS1_IPFvPvEiEESt6vectorIS6_SaIS6_EEEdeEv(%"class.__gnu_cxx::__normal_iterator.43"* %__position)
  %52 = bitcast %"struct.std::pair.32"* %51 to i8*
  %53 = bitcast %"struct.std::pair.32"* %__x_copy to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %52, i8* %53, i64 24, i32 8, i1 false)
  br label %175

; <label>:54                                      ; preds = %0
  %55 = call i64 @_ZNKSt6vectorISt4pairIiS0_IPFvPvEiEESaIS5_EE12_M_check_lenEmPKc(%"class.std::vector.27"* %7, i64 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0))
  store i64 %55, i64* %__len, align 8
  %56 = call %"struct.std::pair.32"* @_ZNSt6vectorISt4pairIiS0_IPFvPvEiEESaIS5_EE5beginEv(%"class.std::vector.27"* %7)
  %57 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.43", %"class.__gnu_cxx::__normal_iterator.43"* %3, i32 0, i32 0
  store %"struct.std::pair.32"* %56, %"struct.std::pair.32"** %57, align 8
  %58 = call i64 @_ZN9__gnu_cxxmiIPSt4pairIiS1_IPFvPvEiEESt6vectorIS6_SaIS6_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSE_SH_(%"class.__gnu_cxx::__normal_iterator.43"* dereferenceable(8) %__position, %"class.__gnu_cxx::__normal_iterator.43"* dereferenceable(8) %3)
  store i64 %58, i64* %__elems_before, align 8
  %59 = bitcast %"class.std::vector.27"* %7 to %"struct.std::_Vector_base.28"*
  %60 = load i64, i64* %__len, align 8
  %61 = call %"struct.std::pair.32"* @_ZNSt12_Vector_baseISt4pairIiS0_IPFvPvEiEESaIS5_EE11_M_allocateEm(%"struct.std::_Vector_base.28"* %59, i64 %60)
  store %"struct.std::pair.32"* %61, %"struct.std::pair.32"** %__new_start, align 8
  %62 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %__new_start, align 8
  store %"struct.std::pair.32"* %62, %"struct.std::pair.32"** %__new_finish, align 8
  %63 = bitcast %"class.std::vector.27"* %7 to %"struct.std::_Vector_base.28"*
  %64 = getelementptr inbounds %"struct.std::_Vector_base.28", %"struct.std::_Vector_base.28"* %63, i32 0, i32 0
  %65 = bitcast %"struct.std::_Vector_base<std::pair<int, std::pair<void (*)(void *), int> >, std::allocator<std::pair<int, std::pair<void (*)(void *), int> > > >::_Vector_impl"* %64 to %"class.std::allocator.29"*
  %66 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %__new_start, align 8
  %67 = load i64, i64* %__elems_before, align 8
  %68 = getelementptr inbounds %"struct.std::pair.32", %"struct.std::pair.32"* %66, i64 %67
  %69 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %2, align 8
  invoke void @_ZN9__gnu_cxx14__alloc_traitsISaISt4pairIiS1_IPFvPvEiEEEE9constructIS6_EEvRS7_PS6_RKT_(%"class.std::allocator.29"* dereferenceable(1) %65, %"struct.std::pair.32"* %68, %"struct.std::pair.32"* dereferenceable(24) %69)
          to label %70 unwind label %99

; <label>:70                                      ; preds = %54
  store %"struct.std::pair.32"* null, %"struct.std::pair.32"** %__new_finish, align 8
  %71 = bitcast %"class.std::vector.27"* %7 to %"struct.std::_Vector_base.28"*
  %72 = getelementptr inbounds %"struct.std::_Vector_base.28", %"struct.std::_Vector_base.28"* %71, i32 0, i32 0
  %73 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<int, std::pair<void (*)(void *), int> >, std::allocator<std::pair<int, std::pair<void (*)(void *), int> > > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<int, std::pair<void (*)(void *), int> >, std::allocator<std::pair<int, std::pair<void (*)(void *), int> > > >::_Vector_impl"* %72, i32 0, i32 0
  %74 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %73, align 8
  %75 = invoke dereferenceable(8) %"struct.std::pair.32"** @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIiS1_IPFvPvEiEESt6vectorIS6_SaIS6_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.43"* %__position)
          to label %76 unwind label %99

; <label>:76                                      ; preds = %70
  %77 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %75, align 8
  %78 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %__new_start, align 8
  %79 = bitcast %"class.std::vector.27"* %7 to %"struct.std::_Vector_base.28"*
  %80 = invoke dereferenceable(1) %"class.std::allocator.29"* @_ZNSt12_Vector_baseISt4pairIiS0_IPFvPvEiEESaIS5_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.28"* %79)
          to label %81 unwind label %99

; <label>:81                                      ; preds = %76
  %82 = invoke %"struct.std::pair.32"* @_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIiS0_IPFvPvEiEES6_SaIS5_EET0_T_S9_S8_RT1_(%"struct.std::pair.32"* %74, %"struct.std::pair.32"* %77, %"struct.std::pair.32"* %78, %"class.std::allocator.29"* dereferenceable(1) %80)
          to label %83 unwind label %99

; <label>:83                                      ; preds = %81
  store %"struct.std::pair.32"* %82, %"struct.std::pair.32"** %__new_finish, align 8
  %84 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %__new_finish, align 8
  %85 = getelementptr inbounds %"struct.std::pair.32", %"struct.std::pair.32"* %84, i32 1
  store %"struct.std::pair.32"* %85, %"struct.std::pair.32"** %__new_finish, align 8
  %86 = invoke dereferenceable(8) %"struct.std::pair.32"** @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIiS1_IPFvPvEiEESt6vectorIS6_SaIS6_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.43"* %__position)
          to label %87 unwind label %99

; <label>:87                                      ; preds = %83
  %88 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %86, align 8
  %89 = bitcast %"class.std::vector.27"* %7 to %"struct.std::_Vector_base.28"*
  %90 = getelementptr inbounds %"struct.std::_Vector_base.28", %"struct.std::_Vector_base.28"* %89, i32 0, i32 0
  %91 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<int, std::pair<void (*)(void *), int> >, std::allocator<std::pair<int, std::pair<void (*)(void *), int> > > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<int, std::pair<void (*)(void *), int> >, std::allocator<std::pair<int, std::pair<void (*)(void *), int> > > >::_Vector_impl"* %90, i32 0, i32 1
  %92 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %91, align 8
  %93 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %__new_finish, align 8
  %94 = bitcast %"class.std::vector.27"* %7 to %"struct.std::_Vector_base.28"*
  %95 = invoke dereferenceable(1) %"class.std::allocator.29"* @_ZNSt12_Vector_baseISt4pairIiS0_IPFvPvEiEESaIS5_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.28"* %94)
          to label %96 unwind label %99

; <label>:96                                      ; preds = %87
  %97 = invoke %"struct.std::pair.32"* @_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIiS0_IPFvPvEiEES6_SaIS5_EET0_T_S9_S8_RT1_(%"struct.std::pair.32"* %88, %"struct.std::pair.32"* %92, %"struct.std::pair.32"* %93, %"class.std::allocator.29"* dereferenceable(1) %95)
          to label %98 unwind label %99

; <label>:98                                      ; preds = %96
  store %"struct.std::pair.32"* %97, %"struct.std::pair.32"** %__new_finish, align 8
  br label %133

; <label>:99                                      ; preds = %96, %87, %83, %81, %76, %70, %54
  %100 = landingpad { i8*, i32 }
          catch i8* null
  %101 = extractvalue { i8*, i32 } %100, 0
  store i8* %101, i8** %4, align 8
  %102 = extractvalue { i8*, i32 } %100, 1
  store i32 %102, i32* %5, align 4
  br label %103

; <label>:103                                     ; preds = %99
  %104 = load i8*, i8** %4, align 8
  %105 = call i8* @__cxa_begin_catch(i8* %104) #2
  %106 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %__new_finish, align 8
  %107 = icmp ne %"struct.std::pair.32"* %106, null
  br i1 %107, label %120, label %108

; <label>:108                                     ; preds = %103
  %109 = bitcast %"class.std::vector.27"* %7 to %"struct.std::_Vector_base.28"*
  %110 = getelementptr inbounds %"struct.std::_Vector_base.28", %"struct.std::_Vector_base.28"* %109, i32 0, i32 0
  %111 = bitcast %"struct.std::_Vector_base<std::pair<int, std::pair<void (*)(void *), int> >, std::allocator<std::pair<int, std::pair<void (*)(void *), int> > > >::_Vector_impl"* %110 to %"class.std::allocator.29"*
  %112 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %__new_start, align 8
  %113 = load i64, i64* %__elems_before, align 8
  %114 = getelementptr inbounds %"struct.std::pair.32", %"struct.std::pair.32"* %112, i64 %113
  invoke void @_ZN9__gnu_cxx14__alloc_traitsISaISt4pairIiS1_IPFvPvEiEEEE7destroyERS7_PS6_(%"class.std::allocator.29"* dereferenceable(1) %111, %"struct.std::pair.32"* %114)
          to label %115 unwind label %116

; <label>:115                                     ; preds = %108
  br label %127

; <label>:116                                     ; preds = %131, %127, %125, %120, %108
  %117 = landingpad { i8*, i32 }
          cleanup
  %118 = extractvalue { i8*, i32 } %117, 0
  store i8* %118, i8** %4, align 8
  %119 = extractvalue { i8*, i32 } %117, 1
  store i32 %119, i32* %5, align 4
  invoke void @__cxa_end_catch()
          to label %132 unwind label %181

; <label>:120                                     ; preds = %103
  %121 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %__new_start, align 8
  %122 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %__new_finish, align 8
  %123 = bitcast %"class.std::vector.27"* %7 to %"struct.std::_Vector_base.28"*
  %124 = invoke dereferenceable(1) %"class.std::allocator.29"* @_ZNSt12_Vector_baseISt4pairIiS0_IPFvPvEiEESaIS5_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.28"* %123)
          to label %125 unwind label %116

; <label>:125                                     ; preds = %120
  invoke void @_ZSt8_DestroyIPSt4pairIiS0_IPFvPvEiEES5_EvT_S7_RSaIT0_E(%"struct.std::pair.32"* %121, %"struct.std::pair.32"* %122, %"class.std::allocator.29"* dereferenceable(1) %124)
          to label %126 unwind label %116

; <label>:126                                     ; preds = %125
  br label %127

; <label>:127                                     ; preds = %126, %115
  %128 = bitcast %"class.std::vector.27"* %7 to %"struct.std::_Vector_base.28"*
  %129 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %__new_start, align 8
  %130 = load i64, i64* %__len, align 8
  invoke void @_ZNSt12_Vector_baseISt4pairIiS0_IPFvPvEiEESaIS5_EE13_M_deallocateEPS5_m(%"struct.std::_Vector_base.28"* %128, %"struct.std::pair.32"* %129, i64 %130)
          to label %131 unwind label %116

; <label>:131                                     ; preds = %127
  invoke void @__cxa_rethrow() #16
          to label %184 unwind label %116

; <label>:132                                     ; preds = %116
  br label %176

; <label>:133                                     ; preds = %98
  %134 = bitcast %"class.std::vector.27"* %7 to %"struct.std::_Vector_base.28"*
  %135 = getelementptr inbounds %"struct.std::_Vector_base.28", %"struct.std::_Vector_base.28"* %134, i32 0, i32 0
  %136 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<int, std::pair<void (*)(void *), int> >, std::allocator<std::pair<int, std::pair<void (*)(void *), int> > > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<int, std::pair<void (*)(void *), int> >, std::allocator<std::pair<int, std::pair<void (*)(void *), int> > > >::_Vector_impl"* %135, i32 0, i32 0
  %137 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %136, align 8
  %138 = bitcast %"class.std::vector.27"* %7 to %"struct.std::_Vector_base.28"*
  %139 = getelementptr inbounds %"struct.std::_Vector_base.28", %"struct.std::_Vector_base.28"* %138, i32 0, i32 0
  %140 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<int, std::pair<void (*)(void *), int> >, std::allocator<std::pair<int, std::pair<void (*)(void *), int> > > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<int, std::pair<void (*)(void *), int> >, std::allocator<std::pair<int, std::pair<void (*)(void *), int> > > >::_Vector_impl"* %139, i32 0, i32 1
  %141 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %140, align 8
  %142 = bitcast %"class.std::vector.27"* %7 to %"struct.std::_Vector_base.28"*
  %143 = call dereferenceable(1) %"class.std::allocator.29"* @_ZNSt12_Vector_baseISt4pairIiS0_IPFvPvEiEESaIS5_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.28"* %142)
  call void @_ZSt8_DestroyIPSt4pairIiS0_IPFvPvEiEES5_EvT_S7_RSaIT0_E(%"struct.std::pair.32"* %137, %"struct.std::pair.32"* %141, %"class.std::allocator.29"* dereferenceable(1) %143)
  %144 = bitcast %"class.std::vector.27"* %7 to %"struct.std::_Vector_base.28"*
  %145 = bitcast %"class.std::vector.27"* %7 to %"struct.std::_Vector_base.28"*
  %146 = getelementptr inbounds %"struct.std::_Vector_base.28", %"struct.std::_Vector_base.28"* %145, i32 0, i32 0
  %147 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<int, std::pair<void (*)(void *), int> >, std::allocator<std::pair<int, std::pair<void (*)(void *), int> > > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<int, std::pair<void (*)(void *), int> >, std::allocator<std::pair<int, std::pair<void (*)(void *), int> > > >::_Vector_impl"* %146, i32 0, i32 0
  %148 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %147, align 8
  %149 = bitcast %"class.std::vector.27"* %7 to %"struct.std::_Vector_base.28"*
  %150 = getelementptr inbounds %"struct.std::_Vector_base.28", %"struct.std::_Vector_base.28"* %149, i32 0, i32 0
  %151 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<int, std::pair<void (*)(void *), int> >, std::allocator<std::pair<int, std::pair<void (*)(void *), int> > > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<int, std::pair<void (*)(void *), int> >, std::allocator<std::pair<int, std::pair<void (*)(void *), int> > > >::_Vector_impl"* %150, i32 0, i32 2
  %152 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %151, align 8
  %153 = bitcast %"class.std::vector.27"* %7 to %"struct.std::_Vector_base.28"*
  %154 = getelementptr inbounds %"struct.std::_Vector_base.28", %"struct.std::_Vector_base.28"* %153, i32 0, i32 0
  %155 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<int, std::pair<void (*)(void *), int> >, std::allocator<std::pair<int, std::pair<void (*)(void *), int> > > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<int, std::pair<void (*)(void *), int> >, std::allocator<std::pair<int, std::pair<void (*)(void *), int> > > >::_Vector_impl"* %154, i32 0, i32 0
  %156 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %155, align 8
  %157 = ptrtoint %"struct.std::pair.32"* %152 to i64
  %158 = ptrtoint %"struct.std::pair.32"* %156 to i64
  %159 = sub i64 %157, %158
  %160 = sdiv exact i64 %159, 24
  call void @_ZNSt12_Vector_baseISt4pairIiS0_IPFvPvEiEESaIS5_EE13_M_deallocateEPS5_m(%"struct.std::_Vector_base.28"* %144, %"struct.std::pair.32"* %148, i64 %160)
  %161 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %__new_start, align 8
  %162 = bitcast %"class.std::vector.27"* %7 to %"struct.std::_Vector_base.28"*
  %163 = getelementptr inbounds %"struct.std::_Vector_base.28", %"struct.std::_Vector_base.28"* %162, i32 0, i32 0
  %164 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<int, std::pair<void (*)(void *), int> >, std::allocator<std::pair<int, std::pair<void (*)(void *), int> > > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<int, std::pair<void (*)(void *), int> >, std::allocator<std::pair<int, std::pair<void (*)(void *), int> > > >::_Vector_impl"* %163, i32 0, i32 0
  store %"struct.std::pair.32"* %161, %"struct.std::pair.32"** %164, align 8
  %165 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %__new_finish, align 8
  %166 = bitcast %"class.std::vector.27"* %7 to %"struct.std::_Vector_base.28"*
  %167 = getelementptr inbounds %"struct.std::_Vector_base.28", %"struct.std::_Vector_base.28"* %166, i32 0, i32 0
  %168 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<int, std::pair<void (*)(void *), int> >, std::allocator<std::pair<int, std::pair<void (*)(void *), int> > > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<int, std::pair<void (*)(void *), int> >, std::allocator<std::pair<int, std::pair<void (*)(void *), int> > > >::_Vector_impl"* %167, i32 0, i32 1
  store %"struct.std::pair.32"* %165, %"struct.std::pair.32"** %168, align 8
  %169 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %__new_start, align 8
  %170 = load i64, i64* %__len, align 8
  %171 = getelementptr inbounds %"struct.std::pair.32", %"struct.std::pair.32"* %169, i64 %170
  %172 = bitcast %"class.std::vector.27"* %7 to %"struct.std::_Vector_base.28"*
  %173 = getelementptr inbounds %"struct.std::_Vector_base.28", %"struct.std::_Vector_base.28"* %172, i32 0, i32 0
  %174 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<int, std::pair<void (*)(void *), int> >, std::allocator<std::pair<int, std::pair<void (*)(void *), int> > > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<int, std::pair<void (*)(void *), int> >, std::allocator<std::pair<int, std::pair<void (*)(void *), int> > > >::_Vector_impl"* %173, i32 0, i32 2
  store %"struct.std::pair.32"* %171, %"struct.std::pair.32"** %174, align 8
  br label %175

; <label>:175                                     ; preds = %133, %17
  ret void

; <label>:176                                     ; preds = %132
  %177 = load i8*, i8** %4, align 8
  %178 = load i32, i32* %5, align 4
  %179 = insertvalue { i8*, i32 } undef, i8* %177, 0
  %180 = insertvalue { i8*, i32 } %179, i32 %178, 1
  resume { i8*, i32 } %180

; <label>:181                                     ; preds = %116
  %182 = landingpad { i8*, i32 }
          catch i8* null
  %183 = extractvalue { i8*, i32 } %182, 0
  call void @__clang_call_terminate(i8* %183) #12
  unreachable

; <label>:184                                     ; preds = %131
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::pair.32"* @_ZNSt6vectorISt4pairIiS0_IPFvPvEiEESaIS5_EE3endEv(%"class.std::vector.27"* %this) #0 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.43", align 8
  %2 = alloca %"class.std::vector.27"*, align 8
  store %"class.std::vector.27"* %this, %"class.std::vector.27"** %2, align 8
  %3 = load %"class.std::vector.27"*, %"class.std::vector.27"** %2, align 8
  %4 = bitcast %"class.std::vector.27"* %3 to %"struct.std::_Vector_base.28"*
  %5 = getelementptr inbounds %"struct.std::_Vector_base.28", %"struct.std::_Vector_base.28"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<int, std::pair<void (*)(void *), int> >, std::allocator<std::pair<int, std::pair<void (*)(void *), int> > > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<int, std::pair<void (*)(void *), int> >, std::allocator<std::pair<int, std::pair<void (*)(void *), int> > > >::_Vector_impl"* %5, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIiS1_IPFvPvEiEESt6vectorIS6_SaIS6_EEEC2ERKS7_(%"class.__gnu_cxx::__normal_iterator.43"* %1, %"struct.std::pair.32"** dereferenceable(8) %6)
  %7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.43", %"class.__gnu_cxx::__normal_iterator.43"* %1, i32 0, i32 0
  %8 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %7, align 8
  ret %"struct.std::pair.32"* %8
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt4pairIiS1_IPFvPvEiEEE9constructEPS6_RKS6_(%"class.__gnu_cxx::new_allocator.30"* %this, %"struct.std::pair.32"* %__p, %"struct.std::pair.32"* dereferenceable(24) %__val) #5 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.30"*, align 8
  %2 = alloca %"struct.std::pair.32"*, align 8
  %3 = alloca %"struct.std::pair.32"*, align 8
  store %"class.__gnu_cxx::new_allocator.30"* %this, %"class.__gnu_cxx::new_allocator.30"** %1, align 8
  store %"struct.std::pair.32"* %__p, %"struct.std::pair.32"** %2, align 8
  store %"struct.std::pair.32"* %__val, %"struct.std::pair.32"** %3, align 8
  %4 = load %"class.__gnu_cxx::new_allocator.30"*, %"class.__gnu_cxx::new_allocator.30"** %1, align 8
  %5 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %2, align 8
  %6 = bitcast %"struct.std::pair.32"* %5 to i8*
  %7 = bitcast i8* %6 to %"struct.std::pair.32"*
  %8 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %3, align 8
  %9 = bitcast %"struct.std::pair.32"* %7 to i8*
  %10 = bitcast %"struct.std::pair.32"* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 24, i32 8, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %"struct.std::pair.32"* @_ZSt13copy_backwardIPSt4pairIiS0_IPFvPvEiEES6_ET0_T_S8_S7_(%"struct.std::pair.32"* %__first, %"struct.std::pair.32"* %__last, %"struct.std::pair.32"* %__result) #7 comdat {
  %1 = alloca %"struct.std::pair.32"*, align 8
  %2 = alloca %"struct.std::pair.32"*, align 8
  %3 = alloca %"struct.std::pair.32"*, align 8
  store %"struct.std::pair.32"* %__first, %"struct.std::pair.32"** %1, align 8
  store %"struct.std::pair.32"* %__last, %"struct.std::pair.32"** %2, align 8
  store %"struct.std::pair.32"* %__result, %"struct.std::pair.32"** %3, align 8
  %4 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %1, align 8
  %5 = call %"struct.std::pair.32"* @_ZSt12__miter_baseIPSt4pairIiS0_IPFvPvEiEEENSt11_Miter_baseIT_E13iterator_typeES8_(%"struct.std::pair.32"* %4)
  %6 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %2, align 8
  %7 = call %"struct.std::pair.32"* @_ZSt12__miter_baseIPSt4pairIiS0_IPFvPvEiEEENSt11_Miter_baseIT_E13iterator_typeES8_(%"struct.std::pair.32"* %6)
  %8 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %3, align 8
  %9 = call %"struct.std::pair.32"* @_ZSt23__copy_move_backward_a2ILb0EPSt4pairIiS0_IPFvPvEiEES6_ET1_T0_S8_S7_(%"struct.std::pair.32"* %5, %"struct.std::pair.32"* %7, %"struct.std::pair.32"* %8)
  ret %"struct.std::pair.32"* %9
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(8) %"struct.std::pair.32"** @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIiS1_IPFvPvEiEESt6vectorIS6_SaIS6_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.43"* %this) #5 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.43"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.43"* %this, %"class.__gnu_cxx::__normal_iterator.43"** %1, align 8
  %2 = load %"class.__gnu_cxx::__normal_iterator.43"*, %"class.__gnu_cxx::__normal_iterator.43"** %1, align 8
  %3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.43", %"class.__gnu_cxx::__normal_iterator.43"* %2, i32 0, i32 0
  ret %"struct.std::pair.32"** %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(24) %"struct.std::pair.32"* @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIiS1_IPFvPvEiEESt6vectorIS6_SaIS6_EEEdeEv(%"class.__gnu_cxx::__normal_iterator.43"* %this) #5 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.43"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.43"* %this, %"class.__gnu_cxx::__normal_iterator.43"** %1, align 8
  %2 = load %"class.__gnu_cxx::__normal_iterator.43"*, %"class.__gnu_cxx::__normal_iterator.43"** %1, align 8
  %3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.43", %"class.__gnu_cxx::__normal_iterator.43"* %2, i32 0, i32 0
  %4 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %3, align 8
  ret %"struct.std::pair.32"* %4
}

; Function Attrs: uwtable
define linkonce_odr i64 @_ZNKSt6vectorISt4pairIiS0_IPFvPvEiEESaIS5_EE12_M_check_lenEmPKc(%"class.std::vector.27"* %this, i64 %__n, i8* %__s) #0 comdat align 2 {
  %1 = alloca %"class.std::vector.27"*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %__len = alloca i64, align 8
  %4 = alloca i64, align 8
  store %"class.std::vector.27"* %this, %"class.std::vector.27"** %1, align 8
  store i64 %__n, i64* %2, align 8
  store i8* %__s, i8** %3, align 8
  %5 = load %"class.std::vector.27"*, %"class.std::vector.27"** %1, align 8
  %6 = call i64 @_ZNKSt6vectorISt4pairIiS0_IPFvPvEiEESaIS5_EE8max_sizeEv(%"class.std::vector.27"* %5)
  %7 = call i64 @_ZNKSt6vectorISt4pairIiS0_IPFvPvEiEESaIS5_EE4sizeEv(%"class.std::vector.27"* %5)
  %8 = sub i64 %6, %7
  %9 = load i64, i64* %2, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %13

; <label>:11                                      ; preds = %0
  %12 = load i8*, i8** %3, align 8
  call void @_ZSt20__throw_length_errorPKc(i8* %12) #16
  unreachable

; <label>:13                                      ; preds = %0
  %14 = call i64 @_ZNKSt6vectorISt4pairIiS0_IPFvPvEiEESaIS5_EE4sizeEv(%"class.std::vector.27"* %5)
  %15 = call i64 @_ZNKSt6vectorISt4pairIiS0_IPFvPvEiEESaIS5_EE4sizeEv(%"class.std::vector.27"* %5)
  store i64 %15, i64* %4, align 8
  %16 = call dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* dereferenceable(8) %4, i64* dereferenceable(8) %2)
  %17 = load i64, i64* %16, align 8
  %18 = add i64 %14, %17
  store i64 %18, i64* %__len, align 8
  %19 = load i64, i64* %__len, align 8
  %20 = call i64 @_ZNKSt6vectorISt4pairIiS0_IPFvPvEiEESaIS5_EE4sizeEv(%"class.std::vector.27"* %5)
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %26, label %22

; <label>:22                                      ; preds = %13
  %23 = load i64, i64* %__len, align 8
  %24 = call i64 @_ZNKSt6vectorISt4pairIiS0_IPFvPvEiEESaIS5_EE8max_sizeEv(%"class.std::vector.27"* %5)
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %28

; <label>:26                                      ; preds = %22, %13
  %27 = call i64 @_ZNKSt6vectorISt4pairIiS0_IPFvPvEiEESaIS5_EE8max_sizeEv(%"class.std::vector.27"* %5)
  br label %30

; <label>:28                                      ; preds = %22
  %29 = load i64, i64* %__len, align 8
  br label %30

; <label>:30                                      ; preds = %28, %26
  %31 = phi i64 [ %27, %26 ], [ %29, %28 ]
  ret i64 %31
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i64 @_ZN9__gnu_cxxmiIPSt4pairIiS1_IPFvPvEiEESt6vectorIS6_SaIS6_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSE_SH_(%"class.__gnu_cxx::__normal_iterator.43"* dereferenceable(8) %__lhs, %"class.__gnu_cxx::__normal_iterator.43"* dereferenceable(8) %__rhs) #10 comdat {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.43"*, align 8
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.43"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.43"* %__lhs, %"class.__gnu_cxx::__normal_iterator.43"** %1, align 8
  store %"class.__gnu_cxx::__normal_iterator.43"* %__rhs, %"class.__gnu_cxx::__normal_iterator.43"** %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator.43"*, %"class.__gnu_cxx::__normal_iterator.43"** %1, align 8
  %4 = call dereferenceable(8) %"struct.std::pair.32"** @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIiS1_IPFvPvEiEESt6vectorIS6_SaIS6_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.43"* %3)
  %5 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %4, align 8
  %6 = load %"class.__gnu_cxx::__normal_iterator.43"*, %"class.__gnu_cxx::__normal_iterator.43"** %2, align 8
  %7 = call dereferenceable(8) %"struct.std::pair.32"** @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIiS1_IPFvPvEiEESt6vectorIS6_SaIS6_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.43"* %6)
  %8 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %7, align 8
  %9 = ptrtoint %"struct.std::pair.32"* %5 to i64
  %10 = ptrtoint %"struct.std::pair.32"* %8 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 24
  ret i64 %12
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::pair.32"* @_ZNSt6vectorISt4pairIiS0_IPFvPvEiEESaIS5_EE5beginEv(%"class.std::vector.27"* %this) #0 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.43", align 8
  %2 = alloca %"class.std::vector.27"*, align 8
  store %"class.std::vector.27"* %this, %"class.std::vector.27"** %2, align 8
  %3 = load %"class.std::vector.27"*, %"class.std::vector.27"** %2, align 8
  %4 = bitcast %"class.std::vector.27"* %3 to %"struct.std::_Vector_base.28"*
  %5 = getelementptr inbounds %"struct.std::_Vector_base.28", %"struct.std::_Vector_base.28"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<int, std::pair<void (*)(void *), int> >, std::allocator<std::pair<int, std::pair<void (*)(void *), int> > > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<int, std::pair<void (*)(void *), int> >, std::allocator<std::pair<int, std::pair<void (*)(void *), int> > > >::_Vector_impl"* %5, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIiS1_IPFvPvEiEESt6vectorIS6_SaIS6_EEEC2ERKS7_(%"class.__gnu_cxx::__normal_iterator.43"* %1, %"struct.std::pair.32"** dereferenceable(8) %6)
  %7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.43", %"class.__gnu_cxx::__normal_iterator.43"* %1, i32 0, i32 0
  %8 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %7, align 8
  ret %"struct.std::pair.32"* %8
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::pair.32"* @_ZNSt12_Vector_baseISt4pairIiS0_IPFvPvEiEESaIS5_EE11_M_allocateEm(%"struct.std::_Vector_base.28"* %this, i64 %__n) #0 comdat align 2 {
  %1 = alloca %"struct.std::_Vector_base.28"*, align 8
  %2 = alloca i64, align 8
  store %"struct.std::_Vector_base.28"* %this, %"struct.std::_Vector_base.28"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %3 = load %"struct.std::_Vector_base.28"*, %"struct.std::_Vector_base.28"** %1, align 8
  %4 = load i64, i64* %2, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %11

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %"struct.std::_Vector_base.28", %"struct.std::_Vector_base.28"* %3, i32 0, i32 0
  %8 = bitcast %"struct.std::_Vector_base<std::pair<int, std::pair<void (*)(void *), int> >, std::allocator<std::pair<int, std::pair<void (*)(void *), int> > > >::_Vector_impl"* %7 to %"class.std::allocator.29"*
  %9 = load i64, i64* %2, align 8
  %10 = call %"struct.std::pair.32"* @_ZN9__gnu_cxx14__alloc_traitsISaISt4pairIiS1_IPFvPvEiEEEE8allocateERS7_m(%"class.std::allocator.29"* dereferenceable(1) %8, i64 %9)
  br label %12

; <label>:11                                      ; preds = %0
  br label %12

; <label>:12                                      ; preds = %11, %6
  %13 = phi %"struct.std::pair.32"* [ %10, %6 ], [ null, %11 ]
  ret %"struct.std::pair.32"* %13
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %"struct.std::pair.32"* @_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIiS0_IPFvPvEiEES6_SaIS5_EET0_T_S9_S8_RT1_(%"struct.std::pair.32"* %__first, %"struct.std::pair.32"* %__last, %"struct.std::pair.32"* %__result, %"class.std::allocator.29"* dereferenceable(1) %__alloc) #7 comdat {
  %1 = alloca %"struct.std::pair.32"*, align 8
  %2 = alloca %"struct.std::pair.32"*, align 8
  %3 = alloca %"struct.std::pair.32"*, align 8
  %4 = alloca %"class.std::allocator.29"*, align 8
  store %"struct.std::pair.32"* %__first, %"struct.std::pair.32"** %1, align 8
  store %"struct.std::pair.32"* %__last, %"struct.std::pair.32"** %2, align 8
  store %"struct.std::pair.32"* %__result, %"struct.std::pair.32"** %3, align 8
  store %"class.std::allocator.29"* %__alloc, %"class.std::allocator.29"** %4, align 8
  %5 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %1, align 8
  %6 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %2, align 8
  %7 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %3, align 8
  %8 = load %"class.std::allocator.29"*, %"class.std::allocator.29"** %4, align 8
  %9 = call %"struct.std::pair.32"* @_ZSt22__uninitialized_copy_aIPSt4pairIiS0_IPFvPvEiEES6_S5_ET0_T_S8_S7_RSaIT1_E(%"struct.std::pair.32"* %5, %"struct.std::pair.32"* %6, %"struct.std::pair.32"* %7, %"class.std::allocator.29"* dereferenceable(1) %8)
  ret %"struct.std::pair.32"* %9
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(1) %"class.std::allocator.29"* @_ZNSt12_Vector_baseISt4pairIiS0_IPFvPvEiEESaIS5_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.28"* %this) #5 comdat align 2 {
  %1 = alloca %"struct.std::_Vector_base.28"*, align 8
  store %"struct.std::_Vector_base.28"* %this, %"struct.std::_Vector_base.28"** %1, align 8
  %2 = load %"struct.std::_Vector_base.28"*, %"struct.std::_Vector_base.28"** %1, align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base.28", %"struct.std::_Vector_base.28"* %2, i32 0, i32 0
  %4 = bitcast %"struct.std::_Vector_base<std::pair<int, std::pair<void (*)(void *), int> >, std::allocator<std::pair<int, std::pair<void (*)(void *), int> > > >::_Vector_impl"* %3 to %"class.std::allocator.29"*
  ret %"class.std::allocator.29"* %4
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaISt4pairIiS1_IPFvPvEiEEEE7destroyERS7_PS6_(%"class.std::allocator.29"* dereferenceable(1) %__a, %"struct.std::pair.32"* %__p) #0 comdat align 2 {
  %1 = alloca %"class.std::allocator.29"*, align 8
  %2 = alloca %"struct.std::pair.32"*, align 8
  store %"class.std::allocator.29"* %__a, %"class.std::allocator.29"** %1, align 8
  store %"struct.std::pair.32"* %__p, %"struct.std::pair.32"** %2, align 8
  %3 = load %"class.std::allocator.29"*, %"class.std::allocator.29"** %1, align 8
  %4 = bitcast %"class.std::allocator.29"* %3 to %"class.__gnu_cxx::new_allocator.30"*
  %5 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %2, align 8
  call void @_ZN9__gnu_cxx13new_allocatorISt4pairIiS1_IPFvPvEiEEE7destroyEPS6_(%"class.__gnu_cxx::new_allocator.30"* %4, %"struct.std::pair.32"* %5)
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt8_DestroyIPSt4pairIiS0_IPFvPvEiEES5_EvT_S7_RSaIT0_E(%"struct.std::pair.32"* %__first, %"struct.std::pair.32"* %__last, %"class.std::allocator.29"* dereferenceable(1)) #7 comdat {
  %2 = alloca %"struct.std::pair.32"*, align 8
  %3 = alloca %"struct.std::pair.32"*, align 8
  %4 = alloca %"class.std::allocator.29"*, align 8
  store %"struct.std::pair.32"* %__first, %"struct.std::pair.32"** %2, align 8
  store %"struct.std::pair.32"* %__last, %"struct.std::pair.32"** %3, align 8
  store %"class.std::allocator.29"* %0, %"class.std::allocator.29"** %4, align 8
  %5 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %2, align 8
  %6 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %3, align 8
  call void @_ZSt8_DestroyIPSt4pairIiS0_IPFvPvEiEEEvT_S7_(%"struct.std::pair.32"* %5, %"struct.std::pair.32"* %6)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt12_Vector_baseISt4pairIiS0_IPFvPvEiEESaIS5_EE13_M_deallocateEPS5_m(%"struct.std::_Vector_base.28"* %this, %"struct.std::pair.32"* %__p, i64 %__n) #0 comdat align 2 {
  %1 = alloca %"struct.std::_Vector_base.28"*, align 8
  %2 = alloca %"struct.std::pair.32"*, align 8
  %3 = alloca i64, align 8
  store %"struct.std::_Vector_base.28"* %this, %"struct.std::_Vector_base.28"** %1, align 8
  store %"struct.std::pair.32"* %__p, %"struct.std::pair.32"** %2, align 8
  store i64 %__n, i64* %3, align 8
  %4 = load %"struct.std::_Vector_base.28"*, %"struct.std::_Vector_base.28"** %1, align 8
  %5 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %2, align 8
  %6 = icmp ne %"struct.std::pair.32"* %5, null
  br i1 %6, label %7, label %12

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds %"struct.std::_Vector_base.28", %"struct.std::_Vector_base.28"* %4, i32 0, i32 0
  %9 = bitcast %"struct.std::_Vector_base<std::pair<int, std::pair<void (*)(void *), int> >, std::allocator<std::pair<int, std::pair<void (*)(void *), int> > > >::_Vector_impl"* %8 to %"class.std::allocator.29"*
  %10 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %2, align 8
  %11 = load i64, i64* %3, align 8
  call void @_ZN9__gnu_cxx14__alloc_traitsISaISt4pairIiS1_IPFvPvEiEEEE10deallocateERS7_PS6_m(%"class.std::allocator.29"* dereferenceable(1) %9, %"struct.std::pair.32"* %10, i64 %11)
  br label %12

; <label>:12                                      ; preds = %7, %0
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %"struct.std::pair.32"* @_ZSt23__copy_move_backward_a2ILb0EPSt4pairIiS0_IPFvPvEiEES6_ET1_T0_S8_S7_(%"struct.std::pair.32"* %__first, %"struct.std::pair.32"* %__last, %"struct.std::pair.32"* %__result) #7 comdat {
  %1 = alloca %"struct.std::pair.32"*, align 8
  %2 = alloca %"struct.std::pair.32"*, align 8
  %3 = alloca %"struct.std::pair.32"*, align 8
  store %"struct.std::pair.32"* %__first, %"struct.std::pair.32"** %1, align 8
  store %"struct.std::pair.32"* %__last, %"struct.std::pair.32"** %2, align 8
  store %"struct.std::pair.32"* %__result, %"struct.std::pair.32"** %3, align 8
  %4 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %1, align 8
  %5 = call %"struct.std::pair.32"* @_ZSt12__niter_baseIPSt4pairIiS0_IPFvPvEiEEENSt11_Niter_baseIT_E13iterator_typeES8_(%"struct.std::pair.32"* %4)
  %6 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %2, align 8
  %7 = call %"struct.std::pair.32"* @_ZSt12__niter_baseIPSt4pairIiS0_IPFvPvEiEEENSt11_Niter_baseIT_E13iterator_typeES8_(%"struct.std::pair.32"* %6)
  %8 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %3, align 8
  %9 = call %"struct.std::pair.32"* @_ZSt12__niter_baseIPSt4pairIiS0_IPFvPvEiEEENSt11_Niter_baseIT_E13iterator_typeES8_(%"struct.std::pair.32"* %8)
  %10 = call %"struct.std::pair.32"* @_ZSt22__copy_move_backward_aILb0EPSt4pairIiS0_IPFvPvEiEES6_ET1_T0_S8_S7_(%"struct.std::pair.32"* %5, %"struct.std::pair.32"* %7, %"struct.std::pair.32"* %9)
  ret %"struct.std::pair.32"* %10
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %"struct.std::pair.32"* @_ZSt12__miter_baseIPSt4pairIiS0_IPFvPvEiEEENSt11_Miter_baseIT_E13iterator_typeES8_(%"struct.std::pair.32"* %__it) #10 comdat {
  %1 = alloca %"struct.std::pair.32"*, align 8
  store %"struct.std::pair.32"* %__it, %"struct.std::pair.32"** %1, align 8
  %2 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %1, align 8
  %3 = call %"struct.std::pair.32"* @_ZNSt10_Iter_baseIPSt4pairIiS0_IPFvPvEiEELb0EE7_S_baseES6_(%"struct.std::pair.32"* %2)
  ret %"struct.std::pair.32"* %3
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %"struct.std::pair.32"* @_ZSt22__copy_move_backward_aILb0EPSt4pairIiS0_IPFvPvEiEES6_ET1_T0_S8_S7_(%"struct.std::pair.32"* %__first, %"struct.std::pair.32"* %__last, %"struct.std::pair.32"* %__result) #7 comdat {
  %1 = alloca %"struct.std::pair.32"*, align 8
  %2 = alloca %"struct.std::pair.32"*, align 8
  %3 = alloca %"struct.std::pair.32"*, align 8
  %__simple = alloca i8, align 1
  store %"struct.std::pair.32"* %__first, %"struct.std::pair.32"** %1, align 8
  store %"struct.std::pair.32"* %__last, %"struct.std::pair.32"** %2, align 8
  store %"struct.std::pair.32"* %__result, %"struct.std::pair.32"** %3, align 8
  store i8 0, i8* %__simple, align 1
  %4 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %1, align 8
  %5 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %2, align 8
  %6 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %3, align 8
  %7 = call %"struct.std::pair.32"* @_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIPSt4pairIiS3_IPFvPvEiEES9_EET0_T_SB_SA_(%"struct.std::pair.32"* %4, %"struct.std::pair.32"* %5, %"struct.std::pair.32"* %6)
  ret %"struct.std::pair.32"* %7
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %"struct.std::pair.32"* @_ZSt12__niter_baseIPSt4pairIiS0_IPFvPvEiEEENSt11_Niter_baseIT_E13iterator_typeES8_(%"struct.std::pair.32"* %__it) #7 comdat {
  %1 = alloca %"struct.std::pair.32"*, align 8
  store %"struct.std::pair.32"* %__it, %"struct.std::pair.32"** %1, align 8
  %2 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %1, align 8
  %3 = call %"struct.std::pair.32"* @_ZNSt10_Iter_baseIPSt4pairIiS0_IPFvPvEiEELb0EE7_S_baseES6_(%"struct.std::pair.32"* %2)
  ret %"struct.std::pair.32"* %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::pair.32"* @_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIPSt4pairIiS3_IPFvPvEiEES9_EET0_T_SB_SA_(%"struct.std::pair.32"* %__first, %"struct.std::pair.32"* %__last, %"struct.std::pair.32"* %__result) #5 comdat align 2 {
  %1 = alloca %"struct.std::pair.32"*, align 8
  %2 = alloca %"struct.std::pair.32"*, align 8
  %3 = alloca %"struct.std::pair.32"*, align 8
  %__n = alloca i64, align 8
  store %"struct.std::pair.32"* %__first, %"struct.std::pair.32"** %1, align 8
  store %"struct.std::pair.32"* %__last, %"struct.std::pair.32"** %2, align 8
  store %"struct.std::pair.32"* %__result, %"struct.std::pair.32"** %3, align 8
  %4 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %2, align 8
  %5 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %1, align 8
  %6 = ptrtoint %"struct.std::pair.32"* %4 to i64
  %7 = ptrtoint %"struct.std::pair.32"* %5 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 24
  store i64 %9, i64* %__n, align 8
  br label %10

; <label>:10                                      ; preds = %20, %0
  %11 = load i64, i64* %__n, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %23

; <label>:13                                      ; preds = %10
  %14 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %3, align 8
  %15 = getelementptr inbounds %"struct.std::pair.32", %"struct.std::pair.32"* %14, i32 -1
  store %"struct.std::pair.32"* %15, %"struct.std::pair.32"** %3, align 8
  %16 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %2, align 8
  %17 = getelementptr inbounds %"struct.std::pair.32", %"struct.std::pair.32"* %16, i32 -1
  store %"struct.std::pair.32"* %17, %"struct.std::pair.32"** %2, align 8
  %18 = bitcast %"struct.std::pair.32"* %15 to i8*
  %19 = bitcast %"struct.std::pair.32"* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 24, i32 8, i1 false)
  br label %20

; <label>:20                                      ; preds = %13
  %21 = load i64, i64* %__n, align 8
  %22 = add nsw i64 %21, -1
  store i64 %22, i64* %__n, align 8
  br label %10

; <label>:23                                      ; preds = %10
  %24 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %3, align 8
  ret %"struct.std::pair.32"* %24
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::pair.32"* @_ZNSt10_Iter_baseIPSt4pairIiS0_IPFvPvEiEELb0EE7_S_baseES6_(%"struct.std::pair.32"* %__it) #5 comdat align 2 {
  %1 = alloca %"struct.std::pair.32"*, align 8
  store %"struct.std::pair.32"* %__it, %"struct.std::pair.32"** %1, align 8
  %2 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %1, align 8
  ret %"struct.std::pair.32"* %2
}

; Function Attrs: uwtable
define linkonce_odr i64 @_ZNKSt6vectorISt4pairIiS0_IPFvPvEiEESaIS5_EE8max_sizeEv(%"class.std::vector.27"* %this) #0 comdat align 2 {
  %1 = alloca %"class.std::vector.27"*, align 8
  store %"class.std::vector.27"* %this, %"class.std::vector.27"** %1, align 8
  %2 = load %"class.std::vector.27"*, %"class.std::vector.27"** %1, align 8
  %3 = bitcast %"class.std::vector.27"* %2 to %"struct.std::_Vector_base.28"*
  %4 = call dereferenceable(1) %"class.std::allocator.29"* @_ZNKSt12_Vector_baseISt4pairIiS0_IPFvPvEiEESaIS5_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.28"* %3)
  %5 = call i64 @_ZN9__gnu_cxx14__alloc_traitsISaISt4pairIiS1_IPFvPvEiEEEE8max_sizeERKS7_(%"class.std::allocator.29"* dereferenceable(1) %4)
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNKSt6vectorISt4pairIiS0_IPFvPvEiEESaIS5_EE4sizeEv(%"class.std::vector.27"* %this) #5 comdat align 2 {
  %1 = alloca %"class.std::vector.27"*, align 8
  store %"class.std::vector.27"* %this, %"class.std::vector.27"** %1, align 8
  %2 = load %"class.std::vector.27"*, %"class.std::vector.27"** %1, align 8
  %3 = bitcast %"class.std::vector.27"* %2 to %"struct.std::_Vector_base.28"*
  %4 = getelementptr inbounds %"struct.std::_Vector_base.28", %"struct.std::_Vector_base.28"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<int, std::pair<void (*)(void *), int> >, std::allocator<std::pair<int, std::pair<void (*)(void *), int> > > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<int, std::pair<void (*)(void *), int> >, std::allocator<std::pair<int, std::pair<void (*)(void *), int> > > >::_Vector_impl"* %4, i32 0, i32 1
  %6 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %5, align 8
  %7 = bitcast %"class.std::vector.27"* %2 to %"struct.std::_Vector_base.28"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base.28", %"struct.std::_Vector_base.28"* %7, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<int, std::pair<void (*)(void *), int> >, std::allocator<std::pair<int, std::pair<void (*)(void *), int> > > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<int, std::pair<void (*)(void *), int> >, std::allocator<std::pair<int, std::pair<void (*)(void *), int> > > >::_Vector_impl"* %8, i32 0, i32 0
  %10 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %9, align 8
  %11 = ptrtoint %"struct.std::pair.32"* %6 to i64
  %12 = ptrtoint %"struct.std::pair.32"* %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 24
  ret i64 %14
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZN9__gnu_cxx14__alloc_traitsISaISt4pairIiS1_IPFvPvEiEEEE8max_sizeERKS7_(%"class.std::allocator.29"* dereferenceable(1) %__a) #5 comdat align 2 {
  %1 = alloca %"class.std::allocator.29"*, align 8
  store %"class.std::allocator.29"* %__a, %"class.std::allocator.29"** %1, align 8
  %2 = load %"class.std::allocator.29"*, %"class.std::allocator.29"** %1, align 8
  %3 = bitcast %"class.std::allocator.29"* %2 to %"class.__gnu_cxx::new_allocator.30"*
  %4 = call i64 @_ZNK9__gnu_cxx13new_allocatorISt4pairIiS1_IPFvPvEiEEE8max_sizeEv(%"class.__gnu_cxx::new_allocator.30"* %3) #2
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(1) %"class.std::allocator.29"* @_ZNKSt12_Vector_baseISt4pairIiS0_IPFvPvEiEESaIS5_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.28"* %this) #5 comdat align 2 {
  %1 = alloca %"struct.std::_Vector_base.28"*, align 8
  store %"struct.std::_Vector_base.28"* %this, %"struct.std::_Vector_base.28"** %1, align 8
  %2 = load %"struct.std::_Vector_base.28"*, %"struct.std::_Vector_base.28"** %1, align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base.28", %"struct.std::_Vector_base.28"* %2, i32 0, i32 0
  %4 = bitcast %"struct.std::_Vector_base<std::pair<int, std::pair<void (*)(void *), int> >, std::allocator<std::pair<int, std::pair<void (*)(void *), int> > > >::_Vector_impl"* %3 to %"class.std::allocator.29"*
  ret %"class.std::allocator.29"* %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorISt4pairIiS1_IPFvPvEiEEE8max_sizeEv(%"class.__gnu_cxx::new_allocator.30"* %this) #5 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.30"*, align 8
  store %"class.__gnu_cxx::new_allocator.30"* %this, %"class.__gnu_cxx::new_allocator.30"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.30"*, %"class.__gnu_cxx::new_allocator.30"** %1, align 8
  ret i64 768614336404564650
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIiS1_IPFvPvEiEESt6vectorIS6_SaIS6_EEEC2ERKS7_(%"class.__gnu_cxx::__normal_iterator.43"* %this, %"struct.std::pair.32"** dereferenceable(8) %__i) unnamed_addr #5 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.43"*, align 8
  %2 = alloca %"struct.std::pair.32"**, align 8
  store %"class.__gnu_cxx::__normal_iterator.43"* %this, %"class.__gnu_cxx::__normal_iterator.43"** %1, align 8
  store %"struct.std::pair.32"** %__i, %"struct.std::pair.32"*** %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator.43"*, %"class.__gnu_cxx::__normal_iterator.43"** %1, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.43", %"class.__gnu_cxx::__normal_iterator.43"* %3, i32 0, i32 0
  %5 = load %"struct.std::pair.32"**, %"struct.std::pair.32"*** %2, align 8
  %6 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %5, align 8
  store %"struct.std::pair.32"* %6, %"struct.std::pair.32"** %4, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::pair.32"* @_ZN9__gnu_cxx14__alloc_traitsISaISt4pairIiS1_IPFvPvEiEEEE8allocateERS7_m(%"class.std::allocator.29"* dereferenceable(1) %__a, i64 %__n) #0 comdat align 2 {
  %1 = alloca %"class.std::allocator.29"*, align 8
  %2 = alloca i64, align 8
  store %"class.std::allocator.29"* %__a, %"class.std::allocator.29"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %3 = load %"class.std::allocator.29"*, %"class.std::allocator.29"** %1, align 8
  %4 = bitcast %"class.std::allocator.29"* %3 to %"class.__gnu_cxx::new_allocator.30"*
  %5 = load i64, i64* %2, align 8
  %6 = call %"struct.std::pair.32"* @_ZN9__gnu_cxx13new_allocatorISt4pairIiS1_IPFvPvEiEEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.30"* %4, i64 %5, i8* null)
  ret %"struct.std::pair.32"* %6
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::pair.32"* @_ZN9__gnu_cxx13new_allocatorISt4pairIiS1_IPFvPvEiEEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.30"* %this, i64 %__n, i8*) #0 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.30"*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator.30"* %this, %"class.__gnu_cxx::new_allocator.30"** %2, align 8
  store i64 %__n, i64* %3, align 8
  store i8* %0, i8** %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.30"*, %"class.__gnu_cxx::new_allocator.30"** %2, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @_ZNK9__gnu_cxx13new_allocatorISt4pairIiS1_IPFvPvEiEEE8max_sizeEv(%"class.__gnu_cxx::new_allocator.30"* %5) #2
  %8 = icmp ugt i64 %6, %7
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %1
  call void @_ZSt17__throw_bad_allocv() #16
  unreachable

; <label>:10                                      ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = mul i64 %11, 24
  %13 = call noalias i8* @_Znwm(i64 %12)
  %14 = bitcast i8* %13 to %"struct.std::pair.32"*
  ret %"struct.std::pair.32"* %14
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %"struct.std::pair.32"* @_ZSt22__uninitialized_copy_aIPSt4pairIiS0_IPFvPvEiEES6_S5_ET0_T_S8_S7_RSaIT1_E(%"struct.std::pair.32"* %__first, %"struct.std::pair.32"* %__last, %"struct.std::pair.32"* %__result, %"class.std::allocator.29"* dereferenceable(1)) #7 comdat {
  %2 = alloca %"struct.std::pair.32"*, align 8
  %3 = alloca %"struct.std::pair.32"*, align 8
  %4 = alloca %"struct.std::pair.32"*, align 8
  %5 = alloca %"class.std::allocator.29"*, align 8
  store %"struct.std::pair.32"* %__first, %"struct.std::pair.32"** %2, align 8
  store %"struct.std::pair.32"* %__last, %"struct.std::pair.32"** %3, align 8
  store %"struct.std::pair.32"* %__result, %"struct.std::pair.32"** %4, align 8
  store %"class.std::allocator.29"* %0, %"class.std::allocator.29"** %5, align 8
  %6 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %2, align 8
  %7 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %3, align 8
  %8 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %4, align 8
  %9 = call %"struct.std::pair.32"* @_ZSt18uninitialized_copyIPSt4pairIiS0_IPFvPvEiEES6_ET0_T_S8_S7_(%"struct.std::pair.32"* %6, %"struct.std::pair.32"* %7, %"struct.std::pair.32"* %8)
  ret %"struct.std::pair.32"* %9
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %"struct.std::pair.32"* @_ZSt18uninitialized_copyIPSt4pairIiS0_IPFvPvEiEES6_ET0_T_S8_S7_(%"struct.std::pair.32"* %__first, %"struct.std::pair.32"* %__last, %"struct.std::pair.32"* %__result) #7 comdat {
  %1 = alloca %"struct.std::pair.32"*, align 8
  %2 = alloca %"struct.std::pair.32"*, align 8
  %3 = alloca %"struct.std::pair.32"*, align 8
  %__assignable = alloca i8, align 1
  store %"struct.std::pair.32"* %__first, %"struct.std::pair.32"** %1, align 8
  store %"struct.std::pair.32"* %__last, %"struct.std::pair.32"** %2, align 8
  store %"struct.std::pair.32"* %__result, %"struct.std::pair.32"** %3, align 8
  store i8 1, i8* %__assignable, align 1
  %4 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %1, align 8
  %5 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %2, align 8
  %6 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %3, align 8
  %7 = call %"struct.std::pair.32"* @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPSt4pairIiS2_IPFvPvEiEES8_EET0_T_SA_S9_(%"struct.std::pair.32"* %4, %"struct.std::pair.32"* %5, %"struct.std::pair.32"* %6)
  ret %"struct.std::pair.32"* %7
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::pair.32"* @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPSt4pairIiS2_IPFvPvEiEES8_EET0_T_SA_S9_(%"struct.std::pair.32"* %__first, %"struct.std::pair.32"* %__last, %"struct.std::pair.32"* %__result) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %"struct.std::pair.32"*, align 8
  %2 = alloca %"struct.std::pair.32"*, align 8
  %3 = alloca %"struct.std::pair.32"*, align 8
  %__cur = alloca %"struct.std::pair.32"*, align 8
  %4 = alloca i8*
  %5 = alloca i32
  store %"struct.std::pair.32"* %__first, %"struct.std::pair.32"** %1, align 8
  store %"struct.std::pair.32"* %__last, %"struct.std::pair.32"** %2, align 8
  store %"struct.std::pair.32"* %__result, %"struct.std::pair.32"** %3, align 8
  %6 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %3, align 8
  store %"struct.std::pair.32"* %6, %"struct.std::pair.32"** %__cur, align 8
  br label %7

; <label>:7                                       ; preds = %17, %0
  %8 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %1, align 8
  %9 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %2, align 8
  %10 = icmp ne %"struct.std::pair.32"* %8, %9
  br i1 %10, label %11, label %32

; <label>:11                                      ; preds = %7
  %12 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %__cur, align 8
  %13 = invoke %"struct.std::pair.32"* @_ZSt11__addressofISt4pairIiS0_IPFvPvEiEEEPT_RS6_(%"struct.std::pair.32"* dereferenceable(24) %12)
          to label %14 unwind label %22

; <label>:14                                      ; preds = %11
  %15 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %1, align 8
  invoke void @_ZSt10_ConstructISt4pairIiS0_IPFvPvEiEES5_EvPT_RKT0_(%"struct.std::pair.32"* %13, %"struct.std::pair.32"* dereferenceable(24) %15)
          to label %16 unwind label %22

; <label>:16                                      ; preds = %14
  br label %17

; <label>:17                                      ; preds = %16
  %18 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %1, align 8
  %19 = getelementptr inbounds %"struct.std::pair.32", %"struct.std::pair.32"* %18, i32 1
  store %"struct.std::pair.32"* %19, %"struct.std::pair.32"** %1, align 8
  %20 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %__cur, align 8
  %21 = getelementptr inbounds %"struct.std::pair.32", %"struct.std::pair.32"* %20, i32 1
  store %"struct.std::pair.32"* %21, %"struct.std::pair.32"** %__cur, align 8
  br label %7

; <label>:22                                      ; preds = %14, %11
  %23 = landingpad { i8*, i32 }
          catch i8* null
  %24 = extractvalue { i8*, i32 } %23, 0
  store i8* %24, i8** %4, align 8
  %25 = extractvalue { i8*, i32 } %23, 1
  store i32 %25, i32* %5, align 4
  br label %26

; <label>:26                                      ; preds = %22
  %27 = load i8*, i8** %4, align 8
  %28 = call i8* @__cxa_begin_catch(i8* %27) #2
  %29 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %3, align 8
  %30 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %__cur, align 8
  invoke void @_ZSt8_DestroyIPSt4pairIiS0_IPFvPvEiEEEvT_S7_(%"struct.std::pair.32"* %29, %"struct.std::pair.32"* %30)
          to label %31 unwind label %34

; <label>:31                                      ; preds = %26
  invoke void @__cxa_rethrow() #16
          to label %48 unwind label %34

; <label>:32                                      ; preds = %7
  %33 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %__cur, align 8
  ret %"struct.std::pair.32"* %33

; <label>:34                                      ; preds = %31, %26
  %35 = landingpad { i8*, i32 }
          cleanup
  %36 = extractvalue { i8*, i32 } %35, 0
  store i8* %36, i8** %4, align 8
  %37 = extractvalue { i8*, i32 } %35, 1
  store i32 %37, i32* %5, align 4
  invoke void @__cxa_end_catch()
          to label %38 unwind label %45

; <label>:38                                      ; preds = %34
  br label %40
                                                  ; No predecessors!
  call void @llvm.trap()
  unreachable

; <label>:40                                      ; preds = %38
  %41 = load i8*, i8** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = insertvalue { i8*, i32 } undef, i8* %41, 0
  %44 = insertvalue { i8*, i32 } %43, i32 %42, 1
  resume { i8*, i32 } %44

; <label>:45                                      ; preds = %34
  %46 = landingpad { i8*, i32 }
          catch i8* null
  %47 = extractvalue { i8*, i32 } %46, 0
  call void @__clang_call_terminate(i8* %47) #12
  unreachable

; <label>:48                                      ; preds = %31
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZSt10_ConstructISt4pairIiS0_IPFvPvEiEES5_EvPT_RKT0_(%"struct.std::pair.32"* %__p, %"struct.std::pair.32"* dereferenceable(24) %__value) #10 comdat {
  %1 = alloca %"struct.std::pair.32"*, align 8
  %2 = alloca %"struct.std::pair.32"*, align 8
  store %"struct.std::pair.32"* %__p, %"struct.std::pair.32"** %1, align 8
  store %"struct.std::pair.32"* %__value, %"struct.std::pair.32"** %2, align 8
  %3 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %1, align 8
  %4 = bitcast %"struct.std::pair.32"* %3 to i8*
  %5 = bitcast i8* %4 to %"struct.std::pair.32"*
  %6 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %2, align 8
  %7 = bitcast %"struct.std::pair.32"* %5 to i8*
  %8 = bitcast %"struct.std::pair.32"* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 24, i32 8, i1 false)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %"struct.std::pair.32"* @_ZSt11__addressofISt4pairIiS0_IPFvPvEiEEEPT_RS6_(%"struct.std::pair.32"* dereferenceable(24) %__r) #10 comdat {
  %1 = alloca %"struct.std::pair.32"*, align 8
  store %"struct.std::pair.32"* %__r, %"struct.std::pair.32"** %1, align 8
  %2 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %1, align 8
  %3 = bitcast %"struct.std::pair.32"* %2 to i8*
  %4 = bitcast i8* %3 to %"struct.std::pair.32"*
  ret %"struct.std::pair.32"* %4
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt8_DestroyIPSt4pairIiS0_IPFvPvEiEEEvT_S7_(%"struct.std::pair.32"* %__first, %"struct.std::pair.32"* %__last) #7 comdat {
  %1 = alloca %"struct.std::pair.32"*, align 8
  %2 = alloca %"struct.std::pair.32"*, align 8
  store %"struct.std::pair.32"* %__first, %"struct.std::pair.32"** %1, align 8
  store %"struct.std::pair.32"* %__last, %"struct.std::pair.32"** %2, align 8
  %3 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %1, align 8
  %4 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %2, align 8
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIiS2_IPFvPvEiEEEEvT_S9_(%"struct.std::pair.32"* %3, %"struct.std::pair.32"* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIiS2_IPFvPvEiEEEEvT_S9_(%"struct.std::pair.32"*, %"struct.std::pair.32"*) #5 comdat align 2 {
  %3 = alloca %"struct.std::pair.32"*, align 8
  %4 = alloca %"struct.std::pair.32"*, align 8
  store %"struct.std::pair.32"* %0, %"struct.std::pair.32"** %3, align 8
  store %"struct.std::pair.32"* %1, %"struct.std::pair.32"** %4, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt4pairIiS1_IPFvPvEiEEE7destroyEPS6_(%"class.__gnu_cxx::new_allocator.30"* %this, %"struct.std::pair.32"* %__p) #5 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.30"*, align 8
  %2 = alloca %"struct.std::pair.32"*, align 8
  store %"class.__gnu_cxx::new_allocator.30"* %this, %"class.__gnu_cxx::new_allocator.30"** %1, align 8
  store %"struct.std::pair.32"* %__p, %"struct.std::pair.32"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator.30"*, %"class.__gnu_cxx::new_allocator.30"** %1, align 8
  %4 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %2, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaISt4pairIiS1_IPFvPvEiEEEE10deallocateERS7_PS6_m(%"class.std::allocator.29"* dereferenceable(1) %__a, %"struct.std::pair.32"* %__p, i64 %__n) #0 comdat align 2 {
  %1 = alloca %"class.std::allocator.29"*, align 8
  %2 = alloca %"struct.std::pair.32"*, align 8
  %3 = alloca i64, align 8
  store %"class.std::allocator.29"* %__a, %"class.std::allocator.29"** %1, align 8
  store %"struct.std::pair.32"* %__p, %"struct.std::pair.32"** %2, align 8
  store i64 %__n, i64* %3, align 8
  %4 = load %"class.std::allocator.29"*, %"class.std::allocator.29"** %1, align 8
  %5 = bitcast %"class.std::allocator.29"* %4 to %"class.__gnu_cxx::new_allocator.30"*
  %6 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %2, align 8
  %7 = load i64, i64* %3, align 8
  call void @_ZN9__gnu_cxx13new_allocatorISt4pairIiS1_IPFvPvEiEEE10deallocateEPS6_m(%"class.__gnu_cxx::new_allocator.30"* %5, %"struct.std::pair.32"* %6, i64 %7)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt4pairIiS1_IPFvPvEiEEE10deallocateEPS6_m(%"class.__gnu_cxx::new_allocator.30"* %this, %"struct.std::pair.32"* %__p, i64) #5 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.30"*, align 8
  %3 = alloca %"struct.std::pair.32"*, align 8
  %4 = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.30"* %this, %"class.__gnu_cxx::new_allocator.30"** %2, align 8
  store %"struct.std::pair.32"* %__p, %"struct.std::pair.32"** %3, align 8
  store i64 %0, i64* %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.30"*, %"class.__gnu_cxx::new_allocator.30"** %2, align 8
  %6 = load %"struct.std::pair.32"*, %"struct.std::pair.32"** %3, align 8
  %7 = bitcast %"struct.std::pair.32"* %6 to i8*
  call void @_ZdlPv(i8* %7) #2
  ret void
}

; Function Attrs: nounwind
declare void @srand(i32) #13

; Function Attrs: nounwind uwtable
define linkonce_odr i32 @_ZN7CSolver18current_world_timeEv(%class.CSolver* %this) #5 comdat align 2 {
  %1 = alloca %class.CSolver*, align 8
  %tv = alloca %struct.timeval, align 8
  %tz = alloca %struct.timezone, align 4
  store %class.CSolver* %this, %class.CSolver** %1, align 8
  %2 = load %class.CSolver*, %class.CSolver** %1, align 8
  %3 = call i32 @gettimeofday(%struct.timeval* %tv, %struct.timezone* %tz) #2
  %4 = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = mul nsw i64 %5, 1000
  %7 = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = sdiv i64 %8, 1000
  %10 = add nsw i64 %6, %9
  %11 = trunc i64 %10 to i32
  ret i32 %11
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #13

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #1

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"*, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*) #1

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272)) #1

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt5queueISt4pairIiiESt5dequeIS1_SaIS1_EEE4pushERKS1_(%"class.std::queue.20"* %this, %"struct.std::pair"* dereferenceable(8) %__x) #0 comdat align 2 {
  %1 = alloca %"class.std::queue.20"*, align 8
  %2 = alloca %"struct.std::pair"*, align 8
  store %"class.std::queue.20"* %this, %"class.std::queue.20"** %1, align 8
  store %"struct.std::pair"* %__x, %"struct.std::pair"** %2, align 8
  %3 = load %"class.std::queue.20"*, %"class.std::queue.20"** %1, align 8
  %4 = getelementptr inbounds %"class.std::queue.20", %"class.std::queue.20"* %3, i32 0, i32 0
  %5 = load %"struct.std::pair"*, %"struct.std::pair"** %2, align 8
  call void @_ZNSt5dequeISt4pairIiiESaIS1_EE9push_backERKS1_(%"class.std::deque.21"* %4, %"struct.std::pair"* dereferenceable(8) %5)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt4pairIiiEC2ERKiS2_(%"struct.std::pair"* %this, i32* dereferenceable(4) %__a, i32* dereferenceable(4) %__b) unnamed_addr #5 comdat align 2 {
  %1 = alloca %"struct.std::pair"*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store %"struct.std::pair"* %this, %"struct.std::pair"** %1, align 8
  store i32* %__a, i32** %2, align 8
  store i32* %__b, i32** %3, align 8
  %4 = load %"struct.std::pair"*, %"struct.std::pair"** %1, align 8
  %5 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %4, i32 0, i32 0
  %6 = load i32*, i32** %2, align 8
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %5, align 4
  %8 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %4, i32 0, i32 1
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %8, align 4
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt5dequeISt4pairIiiESaIS1_EE9push_backERKS1_(%"class.std::deque.21"* %this, %"struct.std::pair"* dereferenceable(8) %__x) #0 comdat align 2 {
  %1 = alloca %"class.std::deque.21"*, align 8
  %2 = alloca %"struct.std::pair"*, align 8
  store %"class.std::deque.21"* %this, %"class.std::deque.21"** %1, align 8
  store %"struct.std::pair"* %__x, %"struct.std::pair"** %2, align 8
  %3 = load %"class.std::deque.21"*, %"class.std::deque.21"** %1, align 8
  %4 = bitcast %"class.std::deque.21"* %3 to %"class.std::_Deque_base.22"*
  %5 = getelementptr inbounds %"class.std::_Deque_base.22", %"class.std::_Deque_base.22"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl", %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl"* %5, i32 0, i32 3
  %7 = getelementptr inbounds %"struct.std::_Deque_iterator.26", %"struct.std::_Deque_iterator.26"* %6, i32 0, i32 0
  %8 = load %"struct.std::pair"*, %"struct.std::pair"** %7, align 8
  %9 = bitcast %"class.std::deque.21"* %3 to %"class.std::_Deque_base.22"*
  %10 = getelementptr inbounds %"class.std::_Deque_base.22", %"class.std::_Deque_base.22"* %9, i32 0, i32 0
  %11 = getelementptr inbounds %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl", %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl"* %10, i32 0, i32 3
  %12 = getelementptr inbounds %"struct.std::_Deque_iterator.26", %"struct.std::_Deque_iterator.26"* %11, i32 0, i32 2
  %13 = load %"struct.std::pair"*, %"struct.std::pair"** %12, align 8
  %14 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %13, i64 -1
  %15 = icmp ne %"struct.std::pair"* %8, %14
  br i1 %15, label %16, label %32

; <label>:16                                      ; preds = %0
  %17 = bitcast %"class.std::deque.21"* %3 to %"class.std::_Deque_base.22"*
  %18 = getelementptr inbounds %"class.std::_Deque_base.22", %"class.std::_Deque_base.22"* %17, i32 0, i32 0
  %19 = bitcast %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl"* %18 to %"class.std::allocator.23"*
  %20 = bitcast %"class.std::deque.21"* %3 to %"class.std::_Deque_base.22"*
  %21 = getelementptr inbounds %"class.std::_Deque_base.22", %"class.std::_Deque_base.22"* %20, i32 0, i32 0
  %22 = getelementptr inbounds %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl", %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl"* %21, i32 0, i32 3
  %23 = getelementptr inbounds %"struct.std::_Deque_iterator.26", %"struct.std::_Deque_iterator.26"* %22, i32 0, i32 0
  %24 = load %"struct.std::pair"*, %"struct.std::pair"** %23, align 8
  %25 = load %"struct.std::pair"*, %"struct.std::pair"** %2, align 8
  call void @_ZN9__gnu_cxx14__alloc_traitsISaISt4pairIiiEEE9constructIS2_EEvRS3_PS2_RKT_(%"class.std::allocator.23"* dereferenceable(1) %19, %"struct.std::pair"* %24, %"struct.std::pair"* dereferenceable(8) %25)
  %26 = bitcast %"class.std::deque.21"* %3 to %"class.std::_Deque_base.22"*
  %27 = getelementptr inbounds %"class.std::_Deque_base.22", %"class.std::_Deque_base.22"* %26, i32 0, i32 0
  %28 = getelementptr inbounds %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl", %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl"* %27, i32 0, i32 3
  %29 = getelementptr inbounds %"struct.std::_Deque_iterator.26", %"struct.std::_Deque_iterator.26"* %28, i32 0, i32 0
  %30 = load %"struct.std::pair"*, %"struct.std::pair"** %29, align 8
  %31 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %30, i32 1
  store %"struct.std::pair"* %31, %"struct.std::pair"** %29, align 8
  br label %34

; <label>:32                                      ; preds = %0
  %33 = load %"struct.std::pair"*, %"struct.std::pair"** %2, align 8
  call void @_ZNSt5dequeISt4pairIiiESaIS1_EE16_M_push_back_auxERKS1_(%"class.std::deque.21"* %3, %"struct.std::pair"* dereferenceable(8) %33)
  br label %34

; <label>:34                                      ; preds = %32, %16
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaISt4pairIiiEEE9constructIS2_EEvRS3_PS2_RKT_(%"class.std::allocator.23"* dereferenceable(1) %__a, %"struct.std::pair"* %__p, %"struct.std::pair"* dereferenceable(8) %__arg) #0 comdat align 2 {
  %1 = alloca %"class.std::allocator.23"*, align 8
  %2 = alloca %"struct.std::pair"*, align 8
  %3 = alloca %"struct.std::pair"*, align 8
  store %"class.std::allocator.23"* %__a, %"class.std::allocator.23"** %1, align 8
  store %"struct.std::pair"* %__p, %"struct.std::pair"** %2, align 8
  store %"struct.std::pair"* %__arg, %"struct.std::pair"** %3, align 8
  %4 = load %"class.std::allocator.23"*, %"class.std::allocator.23"** %1, align 8
  %5 = bitcast %"class.std::allocator.23"* %4 to %"class.__gnu_cxx::new_allocator.24"*
  %6 = load %"struct.std::pair"*, %"struct.std::pair"** %2, align 8
  %7 = load %"struct.std::pair"*, %"struct.std::pair"** %3, align 8
  call void @_ZN9__gnu_cxx13new_allocatorISt4pairIiiEE9constructEPS2_RKS2_(%"class.__gnu_cxx::new_allocator.24"* %5, %"struct.std::pair"* %6, %"struct.std::pair"* dereferenceable(8) %7)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt5dequeISt4pairIiiESaIS1_EE16_M_push_back_auxERKS1_(%"class.std::deque.21"* %this, %"struct.std::pair"* dereferenceable(8) %__t) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %"class.std::deque.21"*, align 8
  %2 = alloca %"struct.std::pair"*, align 8
  %3 = alloca i8*
  %4 = alloca i32
  store %"class.std::deque.21"* %this, %"class.std::deque.21"** %1, align 8
  store %"struct.std::pair"* %__t, %"struct.std::pair"** %2, align 8
  %5 = load %"class.std::deque.21"*, %"class.std::deque.21"** %1, align 8
  call void @_ZNSt5dequeISt4pairIiiESaIS1_EE22_M_reserve_map_at_backEm(%"class.std::deque.21"* %5, i64 1)
  %6 = bitcast %"class.std::deque.21"* %5 to %"class.std::_Deque_base.22"*
  %7 = call %"struct.std::pair"* @_ZNSt11_Deque_baseISt4pairIiiESaIS1_EE16_M_allocate_nodeEv(%"class.std::_Deque_base.22"* %6)
  %8 = bitcast %"class.std::deque.21"* %5 to %"class.std::_Deque_base.22"*
  %9 = getelementptr inbounds %"class.std::_Deque_base.22", %"class.std::_Deque_base.22"* %8, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl", %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl"* %9, i32 0, i32 3
  %11 = getelementptr inbounds %"struct.std::_Deque_iterator.26", %"struct.std::_Deque_iterator.26"* %10, i32 0, i32 3
  %12 = load %"struct.std::pair"**, %"struct.std::pair"*** %11, align 8
  %13 = getelementptr inbounds %"struct.std::pair"*, %"struct.std::pair"** %12, i64 1
  store %"struct.std::pair"* %7, %"struct.std::pair"** %13, align 8
  %14 = bitcast %"class.std::deque.21"* %5 to %"class.std::_Deque_base.22"*
  %15 = getelementptr inbounds %"class.std::_Deque_base.22", %"class.std::_Deque_base.22"* %14, i32 0, i32 0
  %16 = bitcast %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl"* %15 to %"class.__gnu_cxx::new_allocator.24"*
  %17 = bitcast %"class.std::deque.21"* %5 to %"class.std::_Deque_base.22"*
  %18 = getelementptr inbounds %"class.std::_Deque_base.22", %"class.std::_Deque_base.22"* %17, i32 0, i32 0
  %19 = getelementptr inbounds %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl", %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl"* %18, i32 0, i32 3
  %20 = getelementptr inbounds %"struct.std::_Deque_iterator.26", %"struct.std::_Deque_iterator.26"* %19, i32 0, i32 0
  %21 = load %"struct.std::pair"*, %"struct.std::pair"** %20, align 8
  %22 = load %"struct.std::pair"*, %"struct.std::pair"** %2, align 8
  invoke void @_ZN9__gnu_cxx13new_allocatorISt4pairIiiEE9constructEPS2_RKS2_(%"class.__gnu_cxx::new_allocator.24"* %16, %"struct.std::pair"* %21, %"struct.std::pair"* dereferenceable(8) %22)
          to label %23 unwind label %43

; <label>:23                                      ; preds = %0
  %24 = bitcast %"class.std::deque.21"* %5 to %"class.std::_Deque_base.22"*
  %25 = getelementptr inbounds %"class.std::_Deque_base.22", %"class.std::_Deque_base.22"* %24, i32 0, i32 0
  %26 = getelementptr inbounds %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl", %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl"* %25, i32 0, i32 3
  %27 = bitcast %"class.std::deque.21"* %5 to %"class.std::_Deque_base.22"*
  %28 = getelementptr inbounds %"class.std::_Deque_base.22", %"class.std::_Deque_base.22"* %27, i32 0, i32 0
  %29 = getelementptr inbounds %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl", %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl"* %28, i32 0, i32 3
  %30 = getelementptr inbounds %"struct.std::_Deque_iterator.26", %"struct.std::_Deque_iterator.26"* %29, i32 0, i32 3
  %31 = load %"struct.std::pair"**, %"struct.std::pair"*** %30, align 8
  %32 = getelementptr inbounds %"struct.std::pair"*, %"struct.std::pair"** %31, i64 1
  invoke void @_ZNSt15_Deque_iteratorISt4pairIiiERS1_PS1_E11_M_set_nodeEPS3_(%"struct.std::_Deque_iterator.26"* %26, %"struct.std::pair"** %32)
          to label %33 unwind label %43

; <label>:33                                      ; preds = %23
  %34 = bitcast %"class.std::deque.21"* %5 to %"class.std::_Deque_base.22"*
  %35 = getelementptr inbounds %"class.std::_Deque_base.22", %"class.std::_Deque_base.22"* %34, i32 0, i32 0
  %36 = getelementptr inbounds %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl", %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl"* %35, i32 0, i32 3
  %37 = getelementptr inbounds %"struct.std::_Deque_iterator.26", %"struct.std::_Deque_iterator.26"* %36, i32 0, i32 1
  %38 = load %"struct.std::pair"*, %"struct.std::pair"** %37, align 8
  %39 = bitcast %"class.std::deque.21"* %5 to %"class.std::_Deque_base.22"*
  %40 = getelementptr inbounds %"class.std::_Deque_base.22", %"class.std::_Deque_base.22"* %39, i32 0, i32 0
  %41 = getelementptr inbounds %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl", %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl"* %40, i32 0, i32 3
  %42 = getelementptr inbounds %"struct.std::_Deque_iterator.26", %"struct.std::_Deque_iterator.26"* %41, i32 0, i32 0
  store %"struct.std::pair"* %38, %"struct.std::pair"** %42, align 8
  br label %64

; <label>:43                                      ; preds = %23, %0
  %44 = landingpad { i8*, i32 }
          catch i8* null
  %45 = extractvalue { i8*, i32 } %44, 0
  store i8* %45, i8** %3, align 8
  %46 = extractvalue { i8*, i32 } %44, 1
  store i32 %46, i32* %4, align 4
  br label %47

; <label>:47                                      ; preds = %43
  %48 = load i8*, i8** %3, align 8
  %49 = call i8* @__cxa_begin_catch(i8* %48) #2
  %50 = bitcast %"class.std::deque.21"* %5 to %"class.std::_Deque_base.22"*
  %51 = bitcast %"class.std::deque.21"* %5 to %"class.std::_Deque_base.22"*
  %52 = getelementptr inbounds %"class.std::_Deque_base.22", %"class.std::_Deque_base.22"* %51, i32 0, i32 0
  %53 = getelementptr inbounds %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl", %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl"* %52, i32 0, i32 3
  %54 = getelementptr inbounds %"struct.std::_Deque_iterator.26", %"struct.std::_Deque_iterator.26"* %53, i32 0, i32 3
  %55 = load %"struct.std::pair"**, %"struct.std::pair"*** %54, align 8
  %56 = getelementptr inbounds %"struct.std::pair"*, %"struct.std::pair"** %55, i64 1
  %57 = load %"struct.std::pair"*, %"struct.std::pair"** %56, align 8
  invoke void @_ZNSt11_Deque_baseISt4pairIiiESaIS1_EE18_M_deallocate_nodeEPS1_(%"class.std::_Deque_base.22"* %50, %"struct.std::pair"* %57)
          to label %58 unwind label %59

; <label>:58                                      ; preds = %47
  invoke void @__cxa_rethrow() #16
          to label %73 unwind label %59

; <label>:59                                      ; preds = %58, %47
  %60 = landingpad { i8*, i32 }
          cleanup
  %61 = extractvalue { i8*, i32 } %60, 0
  store i8* %61, i8** %3, align 8
  %62 = extractvalue { i8*, i32 } %60, 1
  store i32 %62, i32* %4, align 4
  invoke void @__cxa_end_catch()
          to label %63 unwind label %70

; <label>:63                                      ; preds = %59
  br label %65

; <label>:64                                      ; preds = %33
  ret void

; <label>:65                                      ; preds = %63
  %66 = load i8*, i8** %3, align 8
  %67 = load i32, i32* %4, align 4
  %68 = insertvalue { i8*, i32 } undef, i8* %66, 0
  %69 = insertvalue { i8*, i32 } %68, i32 %67, 1
  resume { i8*, i32 } %69

; <label>:70                                      ; preds = %59
  %71 = landingpad { i8*, i32 }
          catch i8* null
  %72 = extractvalue { i8*, i32 } %71, 0
  call void @__clang_call_terminate(i8* %72) #12
  unreachable

; <label>:73                                      ; preds = %58
  unreachable
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt4pairIiiEE9constructEPS2_RKS2_(%"class.__gnu_cxx::new_allocator.24"* %this, %"struct.std::pair"* %__p, %"struct.std::pair"* dereferenceable(8) %__val) #5 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.24"*, align 8
  %2 = alloca %"struct.std::pair"*, align 8
  %3 = alloca %"struct.std::pair"*, align 8
  store %"class.__gnu_cxx::new_allocator.24"* %this, %"class.__gnu_cxx::new_allocator.24"** %1, align 8
  store %"struct.std::pair"* %__p, %"struct.std::pair"** %2, align 8
  store %"struct.std::pair"* %__val, %"struct.std::pair"** %3, align 8
  %4 = load %"class.__gnu_cxx::new_allocator.24"*, %"class.__gnu_cxx::new_allocator.24"** %1, align 8
  %5 = load %"struct.std::pair"*, %"struct.std::pair"** %2, align 8
  %6 = bitcast %"struct.std::pair"* %5 to i8*
  %7 = bitcast i8* %6 to %"struct.std::pair"*
  %8 = load %"struct.std::pair"*, %"struct.std::pair"** %3, align 8
  %9 = bitcast %"struct.std::pair"* %7 to i8*
  %10 = bitcast %"struct.std::pair"* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 8, i32 4, i1 false)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt5dequeISt4pairIiiESaIS1_EE22_M_reserve_map_at_backEm(%"class.std::deque.21"* %this, i64 %__nodes_to_add) #0 comdat align 2 {
  %1 = alloca %"class.std::deque.21"*, align 8
  %2 = alloca i64, align 8
  store %"class.std::deque.21"* %this, %"class.std::deque.21"** %1, align 8
  store i64 %__nodes_to_add, i64* %2, align 8
  %3 = load %"class.std::deque.21"*, %"class.std::deque.21"** %1, align 8
  %4 = load i64, i64* %2, align 8
  %5 = add i64 %4, 1
  %6 = bitcast %"class.std::deque.21"* %3 to %"class.std::_Deque_base.22"*
  %7 = getelementptr inbounds %"class.std::_Deque_base.22", %"class.std::_Deque_base.22"* %6, i32 0, i32 0
  %8 = getelementptr inbounds %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl", %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl"* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = bitcast %"class.std::deque.21"* %3 to %"class.std::_Deque_base.22"*
  %11 = getelementptr inbounds %"class.std::_Deque_base.22", %"class.std::_Deque_base.22"* %10, i32 0, i32 0
  %12 = getelementptr inbounds %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl", %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl"* %11, i32 0, i32 3
  %13 = getelementptr inbounds %"struct.std::_Deque_iterator.26", %"struct.std::_Deque_iterator.26"* %12, i32 0, i32 3
  %14 = load %"struct.std::pair"**, %"struct.std::pair"*** %13, align 8
  %15 = bitcast %"class.std::deque.21"* %3 to %"class.std::_Deque_base.22"*
  %16 = getelementptr inbounds %"class.std::_Deque_base.22", %"class.std::_Deque_base.22"* %15, i32 0, i32 0
  %17 = getelementptr inbounds %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl", %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl"* %16, i32 0, i32 0
  %18 = load %"struct.std::pair"**, %"struct.std::pair"*** %17, align 8
  %19 = ptrtoint %"struct.std::pair"** %14 to i64
  %20 = ptrtoint %"struct.std::pair"** %18 to i64
  %21 = sub i64 %19, %20
  %22 = sdiv exact i64 %21, 8
  %23 = sub i64 %9, %22
  %24 = icmp ugt i64 %5, %23
  br i1 %24, label %25, label %27

; <label>:25                                      ; preds = %0
  %26 = load i64, i64* %2, align 8
  call void @_ZNSt5dequeISt4pairIiiESaIS1_EE17_M_reallocate_mapEmb(%"class.std::deque.21"* %3, i64 %26, i1 zeroext false)
  br label %27

; <label>:27                                      ; preds = %25, %0
  ret void
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::pair"* @_ZNSt11_Deque_baseISt4pairIiiESaIS1_EE16_M_allocate_nodeEv(%"class.std::_Deque_base.22"* %this) #0 comdat align 2 {
  %1 = alloca %"class.std::_Deque_base.22"*, align 8
  store %"class.std::_Deque_base.22"* %this, %"class.std::_Deque_base.22"** %1, align 8
  %2 = load %"class.std::_Deque_base.22"*, %"class.std::_Deque_base.22"** %1, align 8
  %3 = getelementptr inbounds %"class.std::_Deque_base.22", %"class.std::_Deque_base.22"* %2, i32 0, i32 0
  %4 = bitcast %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl"* %3 to %"class.std::allocator.23"*
  %5 = call i64 @_ZSt16__deque_buf_sizem(i64 8)
  %6 = call %"struct.std::pair"* @_ZN9__gnu_cxx14__alloc_traitsISaISt4pairIiiEEE8allocateERS3_m(%"class.std::allocator.23"* dereferenceable(1) %4, i64 %5)
  ret %"struct.std::pair"* %6
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt15_Deque_iteratorISt4pairIiiERS1_PS1_E11_M_set_nodeEPS3_(%"struct.std::_Deque_iterator.26"* %this, %"struct.std::pair"** %__new_node) #0 comdat align 2 {
  %1 = alloca %"struct.std::_Deque_iterator.26"*, align 8
  %2 = alloca %"struct.std::pair"**, align 8
  store %"struct.std::_Deque_iterator.26"* %this, %"struct.std::_Deque_iterator.26"** %1, align 8
  store %"struct.std::pair"** %__new_node, %"struct.std::pair"*** %2, align 8
  %3 = load %"struct.std::_Deque_iterator.26"*, %"struct.std::_Deque_iterator.26"** %1, align 8
  %4 = load %"struct.std::pair"**, %"struct.std::pair"*** %2, align 8
  %5 = getelementptr inbounds %"struct.std::_Deque_iterator.26", %"struct.std::_Deque_iterator.26"* %3, i32 0, i32 3
  store %"struct.std::pair"** %4, %"struct.std::pair"*** %5, align 8
  %6 = load %"struct.std::pair"**, %"struct.std::pair"*** %2, align 8
  %7 = load %"struct.std::pair"*, %"struct.std::pair"** %6, align 8
  %8 = getelementptr inbounds %"struct.std::_Deque_iterator.26", %"struct.std::_Deque_iterator.26"* %3, i32 0, i32 1
  store %"struct.std::pair"* %7, %"struct.std::pair"** %8, align 8
  %9 = getelementptr inbounds %"struct.std::_Deque_iterator.26", %"struct.std::_Deque_iterator.26"* %3, i32 0, i32 1
  %10 = load %"struct.std::pair"*, %"struct.std::pair"** %9, align 8
  %11 = call i64 @_ZNSt15_Deque_iteratorISt4pairIiiERS1_PS1_E14_S_buffer_sizeEv()
  %12 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %10, i64 %11
  %13 = getelementptr inbounds %"struct.std::_Deque_iterator.26", %"struct.std::_Deque_iterator.26"* %3, i32 0, i32 2
  store %"struct.std::pair"* %12, %"struct.std::pair"** %13, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt11_Deque_baseISt4pairIiiESaIS1_EE18_M_deallocate_nodeEPS1_(%"class.std::_Deque_base.22"* %this, %"struct.std::pair"* %__p) #0 comdat align 2 {
  %1 = alloca %"class.std::_Deque_base.22"*, align 8
  %2 = alloca %"struct.std::pair"*, align 8
  store %"class.std::_Deque_base.22"* %this, %"class.std::_Deque_base.22"** %1, align 8
  store %"struct.std::pair"* %__p, %"struct.std::pair"** %2, align 8
  %3 = load %"class.std::_Deque_base.22"*, %"class.std::_Deque_base.22"** %1, align 8
  %4 = getelementptr inbounds %"class.std::_Deque_base.22", %"class.std::_Deque_base.22"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl"* %4 to %"class.std::allocator.23"*
  %6 = load %"struct.std::pair"*, %"struct.std::pair"** %2, align 8
  %7 = call i64 @_ZSt16__deque_buf_sizem(i64 8)
  call void @_ZN9__gnu_cxx14__alloc_traitsISaISt4pairIiiEEE10deallocateERS3_PS2_m(%"class.std::allocator.23"* dereferenceable(1) %5, %"struct.std::pair"* %6, i64 %7)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt5dequeISt4pairIiiESaIS1_EE17_M_reallocate_mapEmb(%"class.std::deque.21"* %this, i64 %__nodes_to_add, i1 zeroext %__add_at_front) #0 comdat align 2 {
  %1 = alloca %"class.std::deque.21"*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8, align 1
  %__old_num_nodes = alloca i64, align 8
  %__new_num_nodes = alloca i64, align 8
  %__new_nstart = alloca %"struct.std::pair"**, align 8
  %__new_map_size = alloca i64, align 8
  %__new_map = alloca %"struct.std::pair"**, align 8
  store %"class.std::deque.21"* %this, %"class.std::deque.21"** %1, align 8
  store i64 %__nodes_to_add, i64* %2, align 8
  %4 = zext i1 %__add_at_front to i8
  store i8 %4, i8* %3, align 1
  %5 = load %"class.std::deque.21"*, %"class.std::deque.21"** %1, align 8
  %6 = bitcast %"class.std::deque.21"* %5 to %"class.std::_Deque_base.22"*
  %7 = getelementptr inbounds %"class.std::_Deque_base.22", %"class.std::_Deque_base.22"* %6, i32 0, i32 0
  %8 = getelementptr inbounds %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl", %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl"* %7, i32 0, i32 3
  %9 = getelementptr inbounds %"struct.std::_Deque_iterator.26", %"struct.std::_Deque_iterator.26"* %8, i32 0, i32 3
  %10 = load %"struct.std::pair"**, %"struct.std::pair"*** %9, align 8
  %11 = bitcast %"class.std::deque.21"* %5 to %"class.std::_Deque_base.22"*
  %12 = getelementptr inbounds %"class.std::_Deque_base.22", %"class.std::_Deque_base.22"* %11, i32 0, i32 0
  %13 = getelementptr inbounds %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl", %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl"* %12, i32 0, i32 2
  %14 = getelementptr inbounds %"struct.std::_Deque_iterator.26", %"struct.std::_Deque_iterator.26"* %13, i32 0, i32 3
  %15 = load %"struct.std::pair"**, %"struct.std::pair"*** %14, align 8
  %16 = ptrtoint %"struct.std::pair"** %10 to i64
  %17 = ptrtoint %"struct.std::pair"** %15 to i64
  %18 = sub i64 %16, %17
  %19 = sdiv exact i64 %18, 8
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* %__old_num_nodes, align 8
  %21 = load i64, i64* %__old_num_nodes, align 8
  %22 = load i64, i64* %2, align 8
  %23 = add i64 %21, %22
  store i64 %23, i64* %__new_num_nodes, align 8
  %24 = bitcast %"class.std::deque.21"* %5 to %"class.std::_Deque_base.22"*
  %25 = getelementptr inbounds %"class.std::_Deque_base.22", %"class.std::_Deque_base.22"* %24, i32 0, i32 0
  %26 = getelementptr inbounds %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl", %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl"* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %__new_num_nodes, align 8
  %29 = mul i64 2, %28
  %30 = icmp ugt i64 %27, %29
  br i1 %30, label %31, label %90

; <label>:31                                      ; preds = %0
  %32 = bitcast %"class.std::deque.21"* %5 to %"class.std::_Deque_base.22"*
  %33 = getelementptr inbounds %"class.std::_Deque_base.22", %"class.std::_Deque_base.22"* %32, i32 0, i32 0
  %34 = getelementptr inbounds %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl", %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl"* %33, i32 0, i32 0
  %35 = load %"struct.std::pair"**, %"struct.std::pair"*** %34, align 8
  %36 = bitcast %"class.std::deque.21"* %5 to %"class.std::_Deque_base.22"*
  %37 = getelementptr inbounds %"class.std::_Deque_base.22", %"class.std::_Deque_base.22"* %36, i32 0, i32 0
  %38 = getelementptr inbounds %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl", %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl"* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %__new_num_nodes, align 8
  %41 = sub i64 %39, %40
  %42 = udiv i64 %41, 2
  %43 = getelementptr inbounds %"struct.std::pair"*, %"struct.std::pair"** %35, i64 %42
  %44 = load i8, i8* %3, align 1
  %45 = trunc i8 %44 to i1
  br i1 %45, label %46, label %48

; <label>:46                                      ; preds = %31
  %47 = load i64, i64* %2, align 8
  br label %49

; <label>:48                                      ; preds = %31
  br label %49

; <label>:49                                      ; preds = %48, %46
  %50 = phi i64 [ %47, %46 ], [ 0, %48 ]
  %51 = getelementptr inbounds %"struct.std::pair"*, %"struct.std::pair"** %43, i64 %50
  store %"struct.std::pair"** %51, %"struct.std::pair"*** %__new_nstart, align 8
  %52 = load %"struct.std::pair"**, %"struct.std::pair"*** %__new_nstart, align 8
  %53 = bitcast %"class.std::deque.21"* %5 to %"class.std::_Deque_base.22"*
  %54 = getelementptr inbounds %"class.std::_Deque_base.22", %"class.std::_Deque_base.22"* %53, i32 0, i32 0
  %55 = getelementptr inbounds %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl", %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl"* %54, i32 0, i32 2
  %56 = getelementptr inbounds %"struct.std::_Deque_iterator.26", %"struct.std::_Deque_iterator.26"* %55, i32 0, i32 3
  %57 = load %"struct.std::pair"**, %"struct.std::pair"*** %56, align 8
  %58 = icmp ult %"struct.std::pair"** %52, %57
  br i1 %58, label %59, label %73

; <label>:59                                      ; preds = %49
  %60 = bitcast %"class.std::deque.21"* %5 to %"class.std::_Deque_base.22"*
  %61 = getelementptr inbounds %"class.std::_Deque_base.22", %"class.std::_Deque_base.22"* %60, i32 0, i32 0
  %62 = getelementptr inbounds %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl", %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl"* %61, i32 0, i32 2
  %63 = getelementptr inbounds %"struct.std::_Deque_iterator.26", %"struct.std::_Deque_iterator.26"* %62, i32 0, i32 3
  %64 = load %"struct.std::pair"**, %"struct.std::pair"*** %63, align 8
  %65 = bitcast %"class.std::deque.21"* %5 to %"class.std::_Deque_base.22"*
  %66 = getelementptr inbounds %"class.std::_Deque_base.22", %"class.std::_Deque_base.22"* %65, i32 0, i32 0
  %67 = getelementptr inbounds %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl", %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl"* %66, i32 0, i32 3
  %68 = getelementptr inbounds %"struct.std::_Deque_iterator.26", %"struct.std::_Deque_iterator.26"* %67, i32 0, i32 3
  %69 = load %"struct.std::pair"**, %"struct.std::pair"*** %68, align 8
  %70 = getelementptr inbounds %"struct.std::pair"*, %"struct.std::pair"** %69, i64 1
  %71 = load %"struct.std::pair"**, %"struct.std::pair"*** %__new_nstart, align 8
  %72 = call %"struct.std::pair"** @_ZSt4copyIPPSt4pairIiiES3_ET0_T_S5_S4_(%"struct.std::pair"** %64, %"struct.std::pair"** %70, %"struct.std::pair"** %71)
  br label %89

; <label>:73                                      ; preds = %49
  %74 = bitcast %"class.std::deque.21"* %5 to %"class.std::_Deque_base.22"*
  %75 = getelementptr inbounds %"class.std::_Deque_base.22", %"class.std::_Deque_base.22"* %74, i32 0, i32 0
  %76 = getelementptr inbounds %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl", %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl"* %75, i32 0, i32 2
  %77 = getelementptr inbounds %"struct.std::_Deque_iterator.26", %"struct.std::_Deque_iterator.26"* %76, i32 0, i32 3
  %78 = load %"struct.std::pair"**, %"struct.std::pair"*** %77, align 8
  %79 = bitcast %"class.std::deque.21"* %5 to %"class.std::_Deque_base.22"*
  %80 = getelementptr inbounds %"class.std::_Deque_base.22", %"class.std::_Deque_base.22"* %79, i32 0, i32 0
  %81 = getelementptr inbounds %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl", %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl"* %80, i32 0, i32 3
  %82 = getelementptr inbounds %"struct.std::_Deque_iterator.26", %"struct.std::_Deque_iterator.26"* %81, i32 0, i32 3
  %83 = load %"struct.std::pair"**, %"struct.std::pair"*** %82, align 8
  %84 = getelementptr inbounds %"struct.std::pair"*, %"struct.std::pair"** %83, i64 1
  %85 = load %"struct.std::pair"**, %"struct.std::pair"*** %__new_nstart, align 8
  %86 = load i64, i64* %__old_num_nodes, align 8
  %87 = getelementptr inbounds %"struct.std::pair"*, %"struct.std::pair"** %85, i64 %86
  %88 = call %"struct.std::pair"** @_ZSt13copy_backwardIPPSt4pairIiiES3_ET0_T_S5_S4_(%"struct.std::pair"** %78, %"struct.std::pair"** %84, %"struct.std::pair"** %87)
  br label %89

; <label>:89                                      ; preds = %73, %59
  br label %149

; <label>:90                                      ; preds = %0
  %91 = bitcast %"class.std::deque.21"* %5 to %"class.std::_Deque_base.22"*
  %92 = getelementptr inbounds %"class.std::_Deque_base.22", %"class.std::_Deque_base.22"* %91, i32 0, i32 0
  %93 = getelementptr inbounds %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl", %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl"* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = bitcast %"class.std::deque.21"* %5 to %"class.std::_Deque_base.22"*
  %96 = getelementptr inbounds %"class.std::_Deque_base.22", %"class.std::_Deque_base.22"* %95, i32 0, i32 0
  %97 = getelementptr inbounds %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl", %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl"* %96, i32 0, i32 1
  %98 = call dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* dereferenceable(8) %97, i64* dereferenceable(8) %2)
  %99 = load i64, i64* %98, align 8
  %100 = add i64 %94, %99
  %101 = add i64 %100, 2
  store i64 %101, i64* %__new_map_size, align 8
  %102 = bitcast %"class.std::deque.21"* %5 to %"class.std::_Deque_base.22"*
  %103 = load i64, i64* %__new_map_size, align 8
  %104 = call %"struct.std::pair"** @_ZNSt11_Deque_baseISt4pairIiiESaIS1_EE15_M_allocate_mapEm(%"class.std::_Deque_base.22"* %102, i64 %103)
  store %"struct.std::pair"** %104, %"struct.std::pair"*** %__new_map, align 8
  %105 = load %"struct.std::pair"**, %"struct.std::pair"*** %__new_map, align 8
  %106 = load i64, i64* %__new_map_size, align 8
  %107 = load i64, i64* %__new_num_nodes, align 8
  %108 = sub i64 %106, %107
  %109 = udiv i64 %108, 2
  %110 = getelementptr inbounds %"struct.std::pair"*, %"struct.std::pair"** %105, i64 %109
  %111 = load i8, i8* %3, align 1
  %112 = trunc i8 %111 to i1
  br i1 %112, label %113, label %115

; <label>:113                                     ; preds = %90
  %114 = load i64, i64* %2, align 8
  br label %116

; <label>:115                                     ; preds = %90
  br label %116

; <label>:116                                     ; preds = %115, %113
  %117 = phi i64 [ %114, %113 ], [ 0, %115 ]
  %118 = getelementptr inbounds %"struct.std::pair"*, %"struct.std::pair"** %110, i64 %117
  store %"struct.std::pair"** %118, %"struct.std::pair"*** %__new_nstart, align 8
  %119 = bitcast %"class.std::deque.21"* %5 to %"class.std::_Deque_base.22"*
  %120 = getelementptr inbounds %"class.std::_Deque_base.22", %"class.std::_Deque_base.22"* %119, i32 0, i32 0
  %121 = getelementptr inbounds %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl", %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl"* %120, i32 0, i32 2
  %122 = getelementptr inbounds %"struct.std::_Deque_iterator.26", %"struct.std::_Deque_iterator.26"* %121, i32 0, i32 3
  %123 = load %"struct.std::pair"**, %"struct.std::pair"*** %122, align 8
  %124 = bitcast %"class.std::deque.21"* %5 to %"class.std::_Deque_base.22"*
  %125 = getelementptr inbounds %"class.std::_Deque_base.22", %"class.std::_Deque_base.22"* %124, i32 0, i32 0
  %126 = getelementptr inbounds %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl", %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl"* %125, i32 0, i32 3
  %127 = getelementptr inbounds %"struct.std::_Deque_iterator.26", %"struct.std::_Deque_iterator.26"* %126, i32 0, i32 3
  %128 = load %"struct.std::pair"**, %"struct.std::pair"*** %127, align 8
  %129 = getelementptr inbounds %"struct.std::pair"*, %"struct.std::pair"** %128, i64 1
  %130 = load %"struct.std::pair"**, %"struct.std::pair"*** %__new_nstart, align 8
  %131 = call %"struct.std::pair"** @_ZSt4copyIPPSt4pairIiiES3_ET0_T_S5_S4_(%"struct.std::pair"** %123, %"struct.std::pair"** %129, %"struct.std::pair"** %130)
  %132 = bitcast %"class.std::deque.21"* %5 to %"class.std::_Deque_base.22"*
  %133 = bitcast %"class.std::deque.21"* %5 to %"class.std::_Deque_base.22"*
  %134 = getelementptr inbounds %"class.std::_Deque_base.22", %"class.std::_Deque_base.22"* %133, i32 0, i32 0
  %135 = getelementptr inbounds %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl", %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl"* %134, i32 0, i32 0
  %136 = load %"struct.std::pair"**, %"struct.std::pair"*** %135, align 8
  %137 = bitcast %"class.std::deque.21"* %5 to %"class.std::_Deque_base.22"*
  %138 = getelementptr inbounds %"class.std::_Deque_base.22", %"class.std::_Deque_base.22"* %137, i32 0, i32 0
  %139 = getelementptr inbounds %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl", %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl"* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  call void @_ZNSt11_Deque_baseISt4pairIiiESaIS1_EE17_M_deallocate_mapEPPS1_m(%"class.std::_Deque_base.22"* %132, %"struct.std::pair"** %136, i64 %140)
  %141 = load %"struct.std::pair"**, %"struct.std::pair"*** %__new_map, align 8
  %142 = bitcast %"class.std::deque.21"* %5 to %"class.std::_Deque_base.22"*
  %143 = getelementptr inbounds %"class.std::_Deque_base.22", %"class.std::_Deque_base.22"* %142, i32 0, i32 0
  %144 = getelementptr inbounds %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl", %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl"* %143, i32 0, i32 0
  store %"struct.std::pair"** %141, %"struct.std::pair"*** %144, align 8
  %145 = load i64, i64* %__new_map_size, align 8
  %146 = bitcast %"class.std::deque.21"* %5 to %"class.std::_Deque_base.22"*
  %147 = getelementptr inbounds %"class.std::_Deque_base.22", %"class.std::_Deque_base.22"* %146, i32 0, i32 0
  %148 = getelementptr inbounds %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl", %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl"* %147, i32 0, i32 1
  store i64 %145, i64* %148, align 8
  br label %149

; <label>:149                                     ; preds = %116, %89
  %150 = bitcast %"class.std::deque.21"* %5 to %"class.std::_Deque_base.22"*
  %151 = getelementptr inbounds %"class.std::_Deque_base.22", %"class.std::_Deque_base.22"* %150, i32 0, i32 0
  %152 = getelementptr inbounds %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl", %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl"* %151, i32 0, i32 2
  %153 = load %"struct.std::pair"**, %"struct.std::pair"*** %__new_nstart, align 8
  call void @_ZNSt15_Deque_iteratorISt4pairIiiERS1_PS1_E11_M_set_nodeEPS3_(%"struct.std::_Deque_iterator.26"* %152, %"struct.std::pair"** %153)
  %154 = bitcast %"class.std::deque.21"* %5 to %"class.std::_Deque_base.22"*
  %155 = getelementptr inbounds %"class.std::_Deque_base.22", %"class.std::_Deque_base.22"* %154, i32 0, i32 0
  %156 = getelementptr inbounds %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl", %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl"* %155, i32 0, i32 3
  %157 = load %"struct.std::pair"**, %"struct.std::pair"*** %__new_nstart, align 8
  %158 = load i64, i64* %__old_num_nodes, align 8
  %159 = getelementptr inbounds %"struct.std::pair"*, %"struct.std::pair"** %157, i64 %158
  %160 = getelementptr inbounds %"struct.std::pair"*, %"struct.std::pair"** %159, i64 -1
  call void @_ZNSt15_Deque_iteratorISt4pairIiiERS1_PS1_E11_M_set_nodeEPS3_(%"struct.std::_Deque_iterator.26"* %156, %"struct.std::pair"** %160)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::pair"** @_ZSt4copyIPPSt4pairIiiES3_ET0_T_S5_S4_(%"struct.std::pair"** %__first, %"struct.std::pair"** %__last, %"struct.std::pair"** %__result) #0 comdat {
  %1 = alloca %"struct.std::pair"**, align 8
  %2 = alloca %"struct.std::pair"**, align 8
  %3 = alloca %"struct.std::pair"**, align 8
  store %"struct.std::pair"** %__first, %"struct.std::pair"*** %1, align 8
  store %"struct.std::pair"** %__last, %"struct.std::pair"*** %2, align 8
  store %"struct.std::pair"** %__result, %"struct.std::pair"*** %3, align 8
  %4 = load %"struct.std::pair"**, %"struct.std::pair"*** %1, align 8
  %5 = call %"struct.std::pair"** @_ZSt12__miter_baseIPPSt4pairIiiEENSt11_Miter_baseIT_E13iterator_typeES5_(%"struct.std::pair"** %4)
  %6 = load %"struct.std::pair"**, %"struct.std::pair"*** %2, align 8
  %7 = call %"struct.std::pair"** @_ZSt12__miter_baseIPPSt4pairIiiEENSt11_Miter_baseIT_E13iterator_typeES5_(%"struct.std::pair"** %6)
  %8 = load %"struct.std::pair"**, %"struct.std::pair"*** %3, align 8
  %9 = call %"struct.std::pair"** @_ZSt14__copy_move_a2ILb0EPPSt4pairIiiES3_ET1_T0_S5_S4_(%"struct.std::pair"** %5, %"struct.std::pair"** %7, %"struct.std::pair"** %8)
  ret %"struct.std::pair"** %9
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::pair"** @_ZSt13copy_backwardIPPSt4pairIiiES3_ET0_T_S5_S4_(%"struct.std::pair"** %__first, %"struct.std::pair"** %__last, %"struct.std::pair"** %__result) #0 comdat {
  %1 = alloca %"struct.std::pair"**, align 8
  %2 = alloca %"struct.std::pair"**, align 8
  %3 = alloca %"struct.std::pair"**, align 8
  store %"struct.std::pair"** %__first, %"struct.std::pair"*** %1, align 8
  store %"struct.std::pair"** %__last, %"struct.std::pair"*** %2, align 8
  store %"struct.std::pair"** %__result, %"struct.std::pair"*** %3, align 8
  %4 = load %"struct.std::pair"**, %"struct.std::pair"*** %1, align 8
  %5 = call %"struct.std::pair"** @_ZSt12__miter_baseIPPSt4pairIiiEENSt11_Miter_baseIT_E13iterator_typeES5_(%"struct.std::pair"** %4)
  %6 = load %"struct.std::pair"**, %"struct.std::pair"*** %2, align 8
  %7 = call %"struct.std::pair"** @_ZSt12__miter_baseIPPSt4pairIiiEENSt11_Miter_baseIT_E13iterator_typeES5_(%"struct.std::pair"** %6)
  %8 = load %"struct.std::pair"**, %"struct.std::pair"*** %3, align 8
  %9 = call %"struct.std::pair"** @_ZSt23__copy_move_backward_a2ILb0EPPSt4pairIiiES3_ET1_T0_S5_S4_(%"struct.std::pair"** %5, %"struct.std::pair"** %7, %"struct.std::pair"** %8)
  ret %"struct.std::pair"** %9
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::pair"** @_ZNSt11_Deque_baseISt4pairIiiESaIS1_EE15_M_allocate_mapEm(%"class.std::_Deque_base.22"* %this, i64 %__n) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %"class.std::_Deque_base.22"*, align 8
  %2 = alloca i64, align 8
  %__map_alloc = alloca %"class.std::allocator.44", align 1
  %3 = alloca i8*
  %4 = alloca i32
  store %"class.std::_Deque_base.22"* %this, %"class.std::_Deque_base.22"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %5 = load %"class.std::_Deque_base.22"*, %"class.std::_Deque_base.22"** %1, align 8
  call void @_ZNKSt11_Deque_baseISt4pairIiiESaIS1_EE20_M_get_map_allocatorEv(%"class.std::allocator.44"* sret %__map_alloc, %"class.std::_Deque_base.22"* %5)
  %6 = load i64, i64* %2, align 8
  %7 = invoke %"struct.std::pair"** @_ZN9__gnu_cxx14__alloc_traitsISaIPSt4pairIiiEEE8allocateERS4_m(%"class.std::allocator.44"* dereferenceable(1) %__map_alloc, i64 %6)
          to label %8 unwind label %9

; <label>:8                                       ; preds = %0
  call void @_ZNSaIPSt4pairIiiEED2Ev(%"class.std::allocator.44"* %__map_alloc) #2
  ret %"struct.std::pair"** %7

; <label>:9                                       ; preds = %0
  %10 = landingpad { i8*, i32 }
          cleanup
  %11 = extractvalue { i8*, i32 } %10, 0
  store i8* %11, i8** %3, align 8
  %12 = extractvalue { i8*, i32 } %10, 1
  store i32 %12, i32* %4, align 4
  call void @_ZNSaIPSt4pairIiiEED2Ev(%"class.std::allocator.44"* %__map_alloc) #2
  br label %13

; <label>:13                                      ; preds = %9
  %14 = load i8*, i8** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = insertvalue { i8*, i32 } undef, i8* %14, 0
  %17 = insertvalue { i8*, i32 } %16, i32 %15, 1
  resume { i8*, i32 } %17
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt11_Deque_baseISt4pairIiiESaIS1_EE17_M_deallocate_mapEPPS1_m(%"class.std::_Deque_base.22"* %this, %"struct.std::pair"** %__p, i64 %__n) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %"class.std::_Deque_base.22"*, align 8
  %2 = alloca %"struct.std::pair"**, align 8
  %3 = alloca i64, align 8
  %__map_alloc = alloca %"class.std::allocator.44", align 1
  %4 = alloca i8*
  %5 = alloca i32
  store %"class.std::_Deque_base.22"* %this, %"class.std::_Deque_base.22"** %1, align 8
  store %"struct.std::pair"** %__p, %"struct.std::pair"*** %2, align 8
  store i64 %__n, i64* %3, align 8
  %6 = load %"class.std::_Deque_base.22"*, %"class.std::_Deque_base.22"** %1, align 8
  call void @_ZNKSt11_Deque_baseISt4pairIiiESaIS1_EE20_M_get_map_allocatorEv(%"class.std::allocator.44"* sret %__map_alloc, %"class.std::_Deque_base.22"* %6)
  %7 = load %"struct.std::pair"**, %"struct.std::pair"*** %2, align 8
  %8 = load i64, i64* %3, align 8
  invoke void @_ZN9__gnu_cxx14__alloc_traitsISaIPSt4pairIiiEEE10deallocateERS4_PS3_m(%"class.std::allocator.44"* dereferenceable(1) %__map_alloc, %"struct.std::pair"** %7, i64 %8)
          to label %9 unwind label %10

; <label>:9                                       ; preds = %0
  call void @_ZNSaIPSt4pairIiiEED2Ev(%"class.std::allocator.44"* %__map_alloc) #2
  ret void

; <label>:10                                      ; preds = %0
  %11 = landingpad { i8*, i32 }
          cleanup
  %12 = extractvalue { i8*, i32 } %11, 0
  store i8* %12, i8** %4, align 8
  %13 = extractvalue { i8*, i32 } %11, 1
  store i32 %13, i32* %5, align 4
  call void @_ZNSaIPSt4pairIiiEED2Ev(%"class.std::allocator.44"* %__map_alloc) #2
  br label %14

; <label>:14                                      ; preds = %10
  %15 = load i8*, i8** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = insertvalue { i8*, i32 } undef, i8* %15, 0
  %18 = insertvalue { i8*, i32 } %17, i32 %16, 1
  resume { i8*, i32 } %18
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %"struct.std::pair"** @_ZSt14__copy_move_a2ILb0EPPSt4pairIiiES3_ET1_T0_S5_S4_(%"struct.std::pair"** %__first, %"struct.std::pair"** %__last, %"struct.std::pair"** %__result) #7 comdat {
  %1 = alloca %"struct.std::pair"**, align 8
  %2 = alloca %"struct.std::pair"**, align 8
  %3 = alloca %"struct.std::pair"**, align 8
  store %"struct.std::pair"** %__first, %"struct.std::pair"*** %1, align 8
  store %"struct.std::pair"** %__last, %"struct.std::pair"*** %2, align 8
  store %"struct.std::pair"** %__result, %"struct.std::pair"*** %3, align 8
  %4 = load %"struct.std::pair"**, %"struct.std::pair"*** %1, align 8
  %5 = call %"struct.std::pair"** @_ZSt12__niter_baseIPPSt4pairIiiEENSt11_Niter_baseIT_E13iterator_typeES5_(%"struct.std::pair"** %4)
  %6 = load %"struct.std::pair"**, %"struct.std::pair"*** %2, align 8
  %7 = call %"struct.std::pair"** @_ZSt12__niter_baseIPPSt4pairIiiEENSt11_Niter_baseIT_E13iterator_typeES5_(%"struct.std::pair"** %6)
  %8 = load %"struct.std::pair"**, %"struct.std::pair"*** %3, align 8
  %9 = call %"struct.std::pair"** @_ZSt12__niter_baseIPPSt4pairIiiEENSt11_Niter_baseIT_E13iterator_typeES5_(%"struct.std::pair"** %8)
  %10 = call %"struct.std::pair"** @_ZSt13__copy_move_aILb0EPPSt4pairIiiES3_ET1_T0_S5_S4_(%"struct.std::pair"** %5, %"struct.std::pair"** %7, %"struct.std::pair"** %9)
  ret %"struct.std::pair"** %10
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %"struct.std::pair"** @_ZSt12__miter_baseIPPSt4pairIiiEENSt11_Miter_baseIT_E13iterator_typeES5_(%"struct.std::pair"** %__it) #10 comdat {
  %1 = alloca %"struct.std::pair"**, align 8
  store %"struct.std::pair"** %__it, %"struct.std::pair"*** %1, align 8
  %2 = load %"struct.std::pair"**, %"struct.std::pair"*** %1, align 8
  %3 = call %"struct.std::pair"** @_ZNSt10_Iter_baseIPPSt4pairIiiELb0EE7_S_baseES3_(%"struct.std::pair"** %2)
  ret %"struct.std::pair"** %3
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %"struct.std::pair"** @_ZSt13__copy_move_aILb0EPPSt4pairIiiES3_ET1_T0_S5_S4_(%"struct.std::pair"** %__first, %"struct.std::pair"** %__last, %"struct.std::pair"** %__result) #7 comdat {
  %1 = alloca %"struct.std::pair"**, align 8
  %2 = alloca %"struct.std::pair"**, align 8
  %3 = alloca %"struct.std::pair"**, align 8
  %__simple = alloca i8, align 1
  store %"struct.std::pair"** %__first, %"struct.std::pair"*** %1, align 8
  store %"struct.std::pair"** %__last, %"struct.std::pair"*** %2, align 8
  store %"struct.std::pair"** %__result, %"struct.std::pair"*** %3, align 8
  store i8 1, i8* %__simple, align 1
  %4 = load %"struct.std::pair"**, %"struct.std::pair"*** %1, align 8
  %5 = load %"struct.std::pair"**, %"struct.std::pair"*** %2, align 8
  %6 = load %"struct.std::pair"**, %"struct.std::pair"*** %3, align 8
  %7 = call %"struct.std::pair"** @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPSt4pairIiiEEEPT_PKS6_S9_S7_(%"struct.std::pair"** %4, %"struct.std::pair"** %5, %"struct.std::pair"** %6)
  ret %"struct.std::pair"** %7
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %"struct.std::pair"** @_ZSt12__niter_baseIPPSt4pairIiiEENSt11_Niter_baseIT_E13iterator_typeES5_(%"struct.std::pair"** %__it) #7 comdat {
  %1 = alloca %"struct.std::pair"**, align 8
  store %"struct.std::pair"** %__it, %"struct.std::pair"*** %1, align 8
  %2 = load %"struct.std::pair"**, %"struct.std::pair"*** %1, align 8
  %3 = call %"struct.std::pair"** @_ZNSt10_Iter_baseIPPSt4pairIiiELb0EE7_S_baseES3_(%"struct.std::pair"** %2)
  ret %"struct.std::pair"** %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::pair"** @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPSt4pairIiiEEEPT_PKS6_S9_S7_(%"struct.std::pair"** %__first, %"struct.std::pair"** %__last, %"struct.std::pair"** %__result) #5 comdat align 2 {
  %1 = alloca %"struct.std::pair"**, align 8
  %2 = alloca %"struct.std::pair"**, align 8
  %3 = alloca %"struct.std::pair"**, align 8
  %_Num = alloca i64, align 8
  store %"struct.std::pair"** %__first, %"struct.std::pair"*** %1, align 8
  store %"struct.std::pair"** %__last, %"struct.std::pair"*** %2, align 8
  store %"struct.std::pair"** %__result, %"struct.std::pair"*** %3, align 8
  %4 = load %"struct.std::pair"**, %"struct.std::pair"*** %2, align 8
  %5 = load %"struct.std::pair"**, %"struct.std::pair"*** %1, align 8
  %6 = ptrtoint %"struct.std::pair"** %4 to i64
  %7 = ptrtoint %"struct.std::pair"** %5 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 8
  store i64 %9, i64* %_Num, align 8
  %10 = load i64, i64* %_Num, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

; <label>:12                                      ; preds = %0
  %13 = load %"struct.std::pair"**, %"struct.std::pair"*** %3, align 8
  %14 = bitcast %"struct.std::pair"** %13 to i8*
  %15 = load %"struct.std::pair"**, %"struct.std::pair"*** %1, align 8
  %16 = bitcast %"struct.std::pair"** %15 to i8*
  %17 = load i64, i64* %_Num, align 8
  %18 = mul i64 8, %17
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %14, i8* %16, i64 %18, i32 8, i1 false)
  br label %19

; <label>:19                                      ; preds = %12, %0
  %20 = load %"struct.std::pair"**, %"struct.std::pair"*** %3, align 8
  %21 = load i64, i64* %_Num, align 8
  %22 = getelementptr inbounds %"struct.std::pair"*, %"struct.std::pair"** %20, i64 %21
  ret %"struct.std::pair"** %22
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::pair"** @_ZNSt10_Iter_baseIPPSt4pairIiiELb0EE7_S_baseES3_(%"struct.std::pair"** %__it) #5 comdat align 2 {
  %1 = alloca %"struct.std::pair"**, align 8
  store %"struct.std::pair"** %__it, %"struct.std::pair"*** %1, align 8
  %2 = load %"struct.std::pair"**, %"struct.std::pair"*** %1, align 8
  ret %"struct.std::pair"** %2
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %"struct.std::pair"** @_ZSt23__copy_move_backward_a2ILb0EPPSt4pairIiiES3_ET1_T0_S5_S4_(%"struct.std::pair"** %__first, %"struct.std::pair"** %__last, %"struct.std::pair"** %__result) #7 comdat {
  %1 = alloca %"struct.std::pair"**, align 8
  %2 = alloca %"struct.std::pair"**, align 8
  %3 = alloca %"struct.std::pair"**, align 8
  store %"struct.std::pair"** %__first, %"struct.std::pair"*** %1, align 8
  store %"struct.std::pair"** %__last, %"struct.std::pair"*** %2, align 8
  store %"struct.std::pair"** %__result, %"struct.std::pair"*** %3, align 8
  %4 = load %"struct.std::pair"**, %"struct.std::pair"*** %1, align 8
  %5 = call %"struct.std::pair"** @_ZSt12__niter_baseIPPSt4pairIiiEENSt11_Niter_baseIT_E13iterator_typeES5_(%"struct.std::pair"** %4)
  %6 = load %"struct.std::pair"**, %"struct.std::pair"*** %2, align 8
  %7 = call %"struct.std::pair"** @_ZSt12__niter_baseIPPSt4pairIiiEENSt11_Niter_baseIT_E13iterator_typeES5_(%"struct.std::pair"** %6)
  %8 = load %"struct.std::pair"**, %"struct.std::pair"*** %3, align 8
  %9 = call %"struct.std::pair"** @_ZSt12__niter_baseIPPSt4pairIiiEENSt11_Niter_baseIT_E13iterator_typeES5_(%"struct.std::pair"** %8)
  %10 = call %"struct.std::pair"** @_ZSt22__copy_move_backward_aILb0EPPSt4pairIiiES3_ET1_T0_S5_S4_(%"struct.std::pair"** %5, %"struct.std::pair"** %7, %"struct.std::pair"** %9)
  ret %"struct.std::pair"** %10
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %"struct.std::pair"** @_ZSt22__copy_move_backward_aILb0EPPSt4pairIiiES3_ET1_T0_S5_S4_(%"struct.std::pair"** %__first, %"struct.std::pair"** %__last, %"struct.std::pair"** %__result) #7 comdat {
  %1 = alloca %"struct.std::pair"**, align 8
  %2 = alloca %"struct.std::pair"**, align 8
  %3 = alloca %"struct.std::pair"**, align 8
  %__simple = alloca i8, align 1
  store %"struct.std::pair"** %__first, %"struct.std::pair"*** %1, align 8
  store %"struct.std::pair"** %__last, %"struct.std::pair"*** %2, align 8
  store %"struct.std::pair"** %__result, %"struct.std::pair"*** %3, align 8
  store i8 1, i8* %__simple, align 1
  %4 = load %"struct.std::pair"**, %"struct.std::pair"*** %1, align 8
  %5 = load %"struct.std::pair"**, %"struct.std::pair"*** %2, align 8
  %6 = load %"struct.std::pair"**, %"struct.std::pair"*** %3, align 8
  %7 = call %"struct.std::pair"** @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPSt4pairIiiEEEPT_PKS6_S9_S7_(%"struct.std::pair"** %4, %"struct.std::pair"** %5, %"struct.std::pair"** %6)
  ret %"struct.std::pair"** %7
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::pair"** @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPSt4pairIiiEEEPT_PKS6_S9_S7_(%"struct.std::pair"** %__first, %"struct.std::pair"** %__last, %"struct.std::pair"** %__result) #5 comdat align 2 {
  %1 = alloca %"struct.std::pair"**, align 8
  %2 = alloca %"struct.std::pair"**, align 8
  %3 = alloca %"struct.std::pair"**, align 8
  %_Num = alloca i64, align 8
  store %"struct.std::pair"** %__first, %"struct.std::pair"*** %1, align 8
  store %"struct.std::pair"** %__last, %"struct.std::pair"*** %2, align 8
  store %"struct.std::pair"** %__result, %"struct.std::pair"*** %3, align 8
  %4 = load %"struct.std::pair"**, %"struct.std::pair"*** %2, align 8
  %5 = load %"struct.std::pair"**, %"struct.std::pair"*** %1, align 8
  %6 = ptrtoint %"struct.std::pair"** %4 to i64
  %7 = ptrtoint %"struct.std::pair"** %5 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 8
  store i64 %9, i64* %_Num, align 8
  %10 = load i64, i64* %_Num, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

; <label>:12                                      ; preds = %0
  %13 = load %"struct.std::pair"**, %"struct.std::pair"*** %3, align 8
  %14 = load i64, i64* %_Num, align 8
  %15 = sub i64 0, %14
  %16 = getelementptr inbounds %"struct.std::pair"*, %"struct.std::pair"** %13, i64 %15
  %17 = bitcast %"struct.std::pair"** %16 to i8*
  %18 = load %"struct.std::pair"**, %"struct.std::pair"*** %1, align 8
  %19 = bitcast %"struct.std::pair"** %18 to i8*
  %20 = load i64, i64* %_Num, align 8
  %21 = mul i64 8, %20
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %17, i8* %19, i64 %21, i32 8, i1 false)
  br label %22

; <label>:22                                      ; preds = %12, %0
  %23 = load %"struct.std::pair"**, %"struct.std::pair"*** %3, align 8
  %24 = load i64, i64* %_Num, align 8
  %25 = sub i64 0, %24
  %26 = getelementptr inbounds %"struct.std::pair"*, %"struct.std::pair"** %23, i64 %25
  ret %"struct.std::pair"** %26
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNKSt11_Deque_baseISt4pairIiiESaIS1_EE20_M_get_map_allocatorEv(%"class.std::allocator.44"* noalias sret %agg.result, %"class.std::_Deque_base.22"* %this) #0 comdat align 2 {
  %1 = alloca %"class.std::_Deque_base.22"*, align 8
  store %"class.std::_Deque_base.22"* %this, %"class.std::_Deque_base.22"** %1, align 8
  %2 = load %"class.std::_Deque_base.22"*, %"class.std::_Deque_base.22"** %1, align 8
  %3 = call dereferenceable(1) %"class.std::allocator.23"* @_ZNKSt11_Deque_baseISt4pairIiiESaIS1_EE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base.22"* %2)
  call void @_ZNSaIPSt4pairIiiEEC2IS0_EERKSaIT_E(%"class.std::allocator.44"* %agg.result, %"class.std::allocator.23"* dereferenceable(1) %3) #2
  ret void
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::pair"** @_ZN9__gnu_cxx14__alloc_traitsISaIPSt4pairIiiEEE8allocateERS4_m(%"class.std::allocator.44"* dereferenceable(1) %__a, i64 %__n) #0 comdat align 2 {
  %1 = alloca %"class.std::allocator.44"*, align 8
  %2 = alloca i64, align 8
  store %"class.std::allocator.44"* %__a, %"class.std::allocator.44"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %3 = load %"class.std::allocator.44"*, %"class.std::allocator.44"** %1, align 8
  %4 = bitcast %"class.std::allocator.44"* %3 to %"class.__gnu_cxx::new_allocator.45"*
  %5 = load i64, i64* %2, align 8
  %6 = call %"struct.std::pair"** @_ZN9__gnu_cxx13new_allocatorIPSt4pairIiiEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.45"* %4, i64 %5, i8* null)
  ret %"struct.std::pair"** %6
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIPSt4pairIiiEED2Ev(%"class.std::allocator.44"* %this) unnamed_addr #5 comdat align 2 {
  %1 = alloca %"class.std::allocator.44"*, align 8
  store %"class.std::allocator.44"* %this, %"class.std::allocator.44"** %1, align 8
  %2 = load %"class.std::allocator.44"*, %"class.std::allocator.44"** %1, align 8
  %3 = bitcast %"class.std::allocator.44"* %2 to %"class.__gnu_cxx::new_allocator.45"*
  call void @_ZN9__gnu_cxx13new_allocatorIPSt4pairIiiEED2Ev(%"class.__gnu_cxx::new_allocator.45"* %3) #2
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(1) %"class.std::allocator.23"* @_ZNKSt11_Deque_baseISt4pairIiiESaIS1_EE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base.22"* %this) #5 comdat align 2 {
  %1 = alloca %"class.std::_Deque_base.22"*, align 8
  store %"class.std::_Deque_base.22"* %this, %"class.std::_Deque_base.22"** %1, align 8
  %2 = load %"class.std::_Deque_base.22"*, %"class.std::_Deque_base.22"** %1, align 8
  %3 = getelementptr inbounds %"class.std::_Deque_base.22", %"class.std::_Deque_base.22"* %2, i32 0, i32 0
  %4 = bitcast %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl"* %3 to %"class.std::allocator.23"*
  ret %"class.std::allocator.23"* %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIPSt4pairIiiEEC2IS0_EERKSaIT_E(%"class.std::allocator.44"* %this, %"class.std::allocator.23"* dereferenceable(1)) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.std::allocator.44"*, align 8
  %3 = alloca %"class.std::allocator.23"*, align 8
  store %"class.std::allocator.44"* %this, %"class.std::allocator.44"** %2, align 8
  store %"class.std::allocator.23"* %0, %"class.std::allocator.23"** %3, align 8
  %4 = load %"class.std::allocator.44"*, %"class.std::allocator.44"** %2, align 8
  %5 = bitcast %"class.std::allocator.44"* %4 to %"class.__gnu_cxx::new_allocator.45"*
  call void @_ZN9__gnu_cxx13new_allocatorIPSt4pairIiiEEC2Ev(%"class.__gnu_cxx::new_allocator.45"* %5) #2
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIPSt4pairIiiEEC2Ev(%"class.__gnu_cxx::new_allocator.45"* %this) unnamed_addr #5 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.45"*, align 8
  store %"class.__gnu_cxx::new_allocator.45"* %this, %"class.__gnu_cxx::new_allocator.45"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.45"*, %"class.__gnu_cxx::new_allocator.45"** %1, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::pair"** @_ZN9__gnu_cxx13new_allocatorIPSt4pairIiiEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.45"* %this, i64 %__n, i8*) #0 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.45"*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator.45"* %this, %"class.__gnu_cxx::new_allocator.45"** %2, align 8
  store i64 %__n, i64* %3, align 8
  store i8* %0, i8** %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.45"*, %"class.__gnu_cxx::new_allocator.45"** %2, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @_ZNK9__gnu_cxx13new_allocatorIPSt4pairIiiEE8max_sizeEv(%"class.__gnu_cxx::new_allocator.45"* %5) #2
  %8 = icmp ugt i64 %6, %7
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %1
  call void @_ZSt17__throw_bad_allocv() #16
  unreachable

; <label>:10                                      ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = mul i64 %11, 8
  %13 = call noalias i8* @_Znwm(i64 %12)
  %14 = bitcast i8* %13 to %"struct.std::pair"**
  ret %"struct.std::pair"** %14
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorIPSt4pairIiiEE8max_sizeEv(%"class.__gnu_cxx::new_allocator.45"* %this) #5 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.45"*, align 8
  store %"class.__gnu_cxx::new_allocator.45"* %this, %"class.__gnu_cxx::new_allocator.45"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.45"*, %"class.__gnu_cxx::new_allocator.45"** %1, align 8
  ret i64 2305843009213693951
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIPSt4pairIiiEED2Ev(%"class.__gnu_cxx::new_allocator.45"* %this) unnamed_addr #5 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.45"*, align 8
  store %"class.__gnu_cxx::new_allocator.45"* %this, %"class.__gnu_cxx::new_allocator.45"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.45"*, %"class.__gnu_cxx::new_allocator.45"** %1, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaIPSt4pairIiiEEE10deallocateERS4_PS3_m(%"class.std::allocator.44"* dereferenceable(1) %__a, %"struct.std::pair"** %__p, i64 %__n) #0 comdat align 2 {
  %1 = alloca %"class.std::allocator.44"*, align 8
  %2 = alloca %"struct.std::pair"**, align 8
  %3 = alloca i64, align 8
  store %"class.std::allocator.44"* %__a, %"class.std::allocator.44"** %1, align 8
  store %"struct.std::pair"** %__p, %"struct.std::pair"*** %2, align 8
  store i64 %__n, i64* %3, align 8
  %4 = load %"class.std::allocator.44"*, %"class.std::allocator.44"** %1, align 8
  %5 = bitcast %"class.std::allocator.44"* %4 to %"class.__gnu_cxx::new_allocator.45"*
  %6 = load %"struct.std::pair"**, %"struct.std::pair"*** %2, align 8
  %7 = load i64, i64* %3, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIPSt4pairIiiEE10deallocateEPS3_m(%"class.__gnu_cxx::new_allocator.45"* %5, %"struct.std::pair"** %6, i64 %7)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIPSt4pairIiiEE10deallocateEPS3_m(%"class.__gnu_cxx::new_allocator.45"* %this, %"struct.std::pair"** %__p, i64) #5 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.45"*, align 8
  %3 = alloca %"struct.std::pair"**, align 8
  %4 = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.45"* %this, %"class.__gnu_cxx::new_allocator.45"** %2, align 8
  store %"struct.std::pair"** %__p, %"struct.std::pair"*** %3, align 8
  store i64 %0, i64* %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.45"*, %"class.__gnu_cxx::new_allocator.45"** %2, align 8
  %6 = load %"struct.std::pair"**, %"struct.std::pair"*** %3, align 8
  %7 = bitcast %"struct.std::pair"** %6 to i8*
  call void @_ZdlPv(i8* %7) #2
  ret void
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::pair"* @_ZN9__gnu_cxx14__alloc_traitsISaISt4pairIiiEEE8allocateERS3_m(%"class.std::allocator.23"* dereferenceable(1) %__a, i64 %__n) #0 comdat align 2 {
  %1 = alloca %"class.std::allocator.23"*, align 8
  %2 = alloca i64, align 8
  store %"class.std::allocator.23"* %__a, %"class.std::allocator.23"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %3 = load %"class.std::allocator.23"*, %"class.std::allocator.23"** %1, align 8
  %4 = bitcast %"class.std::allocator.23"* %3 to %"class.__gnu_cxx::new_allocator.24"*
  %5 = load i64, i64* %2, align 8
  %6 = call %"struct.std::pair"* @_ZN9__gnu_cxx13new_allocatorISt4pairIiiEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.24"* %4, i64 %5, i8* null)
  ret %"struct.std::pair"* %6
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i64 @_ZSt16__deque_buf_sizem(i64 %__size) #10 comdat {
  %1 = alloca i64, align 8
  store i64 %__size, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  %3 = icmp ult i64 %2, 512
  br i1 %3, label %4, label %7

; <label>:4                                       ; preds = %0
  %5 = load i64, i64* %1, align 8
  %6 = udiv i64 512, %5
  br label %8

; <label>:7                                       ; preds = %0
  br label %8

; <label>:8                                       ; preds = %7, %4
  %9 = phi i64 [ %6, %4 ], [ 1, %7 ]
  ret i64 %9
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::pair"* @_ZN9__gnu_cxx13new_allocatorISt4pairIiiEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.24"* %this, i64 %__n, i8*) #0 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.24"*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator.24"* %this, %"class.__gnu_cxx::new_allocator.24"** %2, align 8
  store i64 %__n, i64* %3, align 8
  store i8* %0, i8** %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.24"*, %"class.__gnu_cxx::new_allocator.24"** %2, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @_ZNK9__gnu_cxx13new_allocatorISt4pairIiiEE8max_sizeEv(%"class.__gnu_cxx::new_allocator.24"* %5) #2
  %8 = icmp ugt i64 %6, %7
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %1
  call void @_ZSt17__throw_bad_allocv() #16
  unreachable

; <label>:10                                      ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = mul i64 %11, 8
  %13 = call noalias i8* @_Znwm(i64 %12)
  %14 = bitcast i8* %13 to %"struct.std::pair"*
  ret %"struct.std::pair"* %14
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorISt4pairIiiEE8max_sizeEv(%"class.__gnu_cxx::new_allocator.24"* %this) #5 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.24"*, align 8
  store %"class.__gnu_cxx::new_allocator.24"* %this, %"class.__gnu_cxx::new_allocator.24"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.24"*, %"class.__gnu_cxx::new_allocator.24"** %1, align 8
  ret i64 2305843009213693951
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNSt15_Deque_iteratorISt4pairIiiERS1_PS1_E14_S_buffer_sizeEv() #5 comdat align 2 {
  %1 = call i64 @_ZSt16__deque_buf_sizem(i64 8)
  ret i64 %1
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaISt4pairIiiEEE10deallocateERS3_PS2_m(%"class.std::allocator.23"* dereferenceable(1) %__a, %"struct.std::pair"* %__p, i64 %__n) #0 comdat align 2 {
  %1 = alloca %"class.std::allocator.23"*, align 8
  %2 = alloca %"struct.std::pair"*, align 8
  %3 = alloca i64, align 8
  store %"class.std::allocator.23"* %__a, %"class.std::allocator.23"** %1, align 8
  store %"struct.std::pair"* %__p, %"struct.std::pair"** %2, align 8
  store i64 %__n, i64* %3, align 8
  %4 = load %"class.std::allocator.23"*, %"class.std::allocator.23"** %1, align 8
  %5 = bitcast %"class.std::allocator.23"* %4 to %"class.__gnu_cxx::new_allocator.24"*
  %6 = load %"struct.std::pair"*, %"struct.std::pair"** %2, align 8
  %7 = load i64, i64* %3, align 8
  call void @_ZN9__gnu_cxx13new_allocatorISt4pairIiiEE10deallocateEPS2_m(%"class.__gnu_cxx::new_allocator.24"* %5, %"struct.std::pair"* %6, i64 %7)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt4pairIiiEE10deallocateEPS2_m(%"class.__gnu_cxx::new_allocator.24"* %this, %"struct.std::pair"* %__p, i64) #5 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.24"*, align 8
  %3 = alloca %"struct.std::pair"*, align 8
  %4 = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.24"* %this, %"class.__gnu_cxx::new_allocator.24"** %2, align 8
  store %"struct.std::pair"* %__p, %"struct.std::pair"** %3, align 8
  store i64 %0, i64* %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.24"*, %"class.__gnu_cxx::new_allocator.24"** %2, align 8
  %6 = load %"struct.std::pair"*, %"struct.std::pair"** %3, align 8
  %7 = bitcast %"struct.std::pair"* %6 to i8*
  call void @_ZdlPv(i8* %7) #2
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(80) %class.CVariable* @_ZNSt6vectorI9CVariableSaIS0_EEixEm(%"class.std::vector"* %this, i64 %__n) #5 comdat align 2 {
  %1 = alloca %"class.std::vector"*, align 8
  %2 = alloca i64, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %3 = load %"class.std::vector"*, %"class.std::vector"** %1, align 8
  %4 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %5 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl", %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl"* %5, i32 0, i32 0
  %7 = load %class.CVariable*, %class.CVariable** %6, align 8
  %8 = load i64, i64* %2, align 8
  %9 = getelementptr inbounds %class.CVariable, %class.CVariable* %7, i64 %8
  ret %class.CVariable* %9
}

; Function Attrs: uwtable
define linkonce_odr i32 @_ZN9CDatabase18estimate_mem_usageEv(%class.CDatabase* %this) #0 comdat align 2 {
  %1 = alloca %class.CDatabase*, align 8
  %lit_pool = alloca i32, align 4
  %mem_vars = alloca i32, align 4
  %mem_cls = alloca i32, align 4
  %mem_cls_queue = alloca i32, align 4
  %mem_ht_ptrs = alloca i32, align 4
  %mem_lit_clauses = alloca i32, align 4
  store %class.CDatabase* %this, %class.CDatabase** %1, align 8
  %2 = load %class.CDatabase*, %class.CDatabase** %1, align 8
  %3 = call i32 @_ZN9CDatabase13lit_pool_sizeEv(%class.CDatabase* %2)
  %4 = call i32 @_ZN9CDatabase19lit_pool_free_spaceEv(%class.CDatabase* %2)
  %5 = add i32 %3, %4
  %6 = zext i32 %5 to i64
  %7 = mul i64 4, %6
  %8 = trunc i64 %7 to i32
  store i32 %8, i32* %lit_pool, align 4
  %9 = call dereferenceable(24) %"class.std::vector"* @_ZN9CDatabase9variablesEv(%class.CDatabase* %2)
  %10 = call i64 @_ZNKSt6vectorI9CVariableSaIS0_EE8capacityEv(%"class.std::vector"* %9)
  %11 = mul i64 80, %10
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %mem_vars, align 4
  %13 = call dereferenceable(24) %"class.std::vector.5"* @_ZN9CDatabase7clausesEv(%class.CDatabase* %2)
  %14 = call i64 @_ZNKSt6vectorI7CClauseSaIS0_EE8capacityEv(%"class.std::vector.5"* %13)
  %15 = mul i64 16, %14
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %mem_cls, align 4
  %17 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %2, i32 0, i32 6
  %18 = call i64 @_ZNKSt5queueIiSt5dequeIiSaIiEEE4sizeEv(%"class.std::queue"* %17)
  %19 = mul i64 4, %18
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %mem_cls_queue, align 4
  store i32 0, i32* %mem_ht_ptrs, align 4
  store i32 0, i32* %mem_lit_clauses, align 4
  %21 = call dereferenceable(24) %"class.std::vector.5"* @_ZN9CDatabase7clausesEv(%class.CDatabase* %2)
  %22 = call i64 @_ZNKSt6vectorI7CClauseSaIS0_EE4sizeEv(%"class.std::vector.5"* %21)
  %23 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %2, i32 0, i32 6
  %24 = call i64 @_ZNKSt5queueIiSt5dequeIiSaIiEEE4sizeEv(%"class.std::queue"* %23)
  %25 = sub i64 %22, %24
  %26 = mul i64 8, %25
  %27 = mul i64 %26, 2
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %mem_ht_ptrs, align 4
  %29 = load i32, i32* %lit_pool, align 4
  %30 = load i32, i32* %mem_vars, align 4
  %31 = add i32 %29, %30
  %32 = load i32, i32* %mem_cls, align 4
  %33 = add i32 %31, %32
  %34 = load i32, i32* %mem_cls_queue, align 4
  %35 = add i32 %33, %34
  %36 = load i32, i32* %mem_ht_ptrs, align 4
  %37 = add i32 %35, %36
  %38 = load i32, i32* %mem_lit_clauses, align 4
  %39 = add i32 %37, %38
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32 @_ZN9CDatabase13lit_pool_sizeEv(%class.CDatabase* %this) #5 comdat align 2 {
  %1 = alloca %class.CDatabase*, align 8
  store %class.CDatabase* %this, %class.CDatabase** %1, align 8
  %2 = load %class.CDatabase*, %class.CDatabase** %1, align 8
  %3 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %2, i32 0, i32 2
  %4 = load %class.CLitPoolElement*, %class.CLitPoolElement** %3, align 8
  %5 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %2, i32 0, i32 1
  %6 = load %class.CLitPoolElement*, %class.CLitPoolElement** %5, align 8
  %7 = ptrtoint %class.CLitPoolElement* %4 to i64
  %8 = ptrtoint %class.CLitPoolElement* %6 to i64
  %9 = sub i64 %7, %8
  %10 = sdiv exact i64 %9, 4
  %11 = trunc i64 %10 to i32
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32 @_ZN9CDatabase19lit_pool_free_spaceEv(%class.CDatabase* %this) #5 comdat align 2 {
  %1 = alloca %class.CDatabase*, align 8
  store %class.CDatabase* %this, %class.CDatabase** %1, align 8
  %2 = load %class.CDatabase*, %class.CDatabase** %1, align 8
  %3 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %2, i32 0, i32 3
  %4 = load %class.CLitPoolElement*, %class.CLitPoolElement** %3, align 8
  %5 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %2, i32 0, i32 2
  %6 = load %class.CLitPoolElement*, %class.CLitPoolElement** %5, align 8
  %7 = ptrtoint %class.CLitPoolElement* %4 to i64
  %8 = ptrtoint %class.CLitPoolElement* %6 to i64
  %9 = sub i64 %7, %8
  %10 = sdiv exact i64 %9, 4
  %11 = trunc i64 %10 to i32
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNKSt6vectorI9CVariableSaIS0_EE8capacityEv(%"class.std::vector"* %this) #5 comdat align 2 {
  %1 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 8
  %2 = load %"class.std::vector"*, %"class.std::vector"** %1, align 8
  %3 = bitcast %"class.std::vector"* %2 to %"struct.std::_Vector_base"*
  %4 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl", %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl"* %4, i32 0, i32 2
  %6 = load %class.CVariable*, %class.CVariable** %5, align 8
  %7 = bitcast %"class.std::vector"* %2 to %"struct.std::_Vector_base"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %7, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl", %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl"* %8, i32 0, i32 0
  %10 = load %class.CVariable*, %class.CVariable** %9, align 8
  %11 = ptrtoint %class.CVariable* %6 to i64
  %12 = ptrtoint %class.CVariable* %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 80
  ret i64 %14
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNKSt6vectorI7CClauseSaIS0_EE8capacityEv(%"class.std::vector.5"* %this) #5 comdat align 2 {
  %1 = alloca %"class.std::vector.5"*, align 8
  store %"class.std::vector.5"* %this, %"class.std::vector.5"** %1, align 8
  %2 = load %"class.std::vector.5"*, %"class.std::vector.5"** %1, align 8
  %3 = bitcast %"class.std::vector.5"* %2 to %"struct.std::_Vector_base.6"*
  %4 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl", %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl"* %4, i32 0, i32 2
  %6 = load %class.CClause*, %class.CClause** %5, align 8
  %7 = bitcast %"class.std::vector.5"* %2 to %"struct.std::_Vector_base.6"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %7, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl", %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl"* %8, i32 0, i32 0
  %10 = load %class.CClause*, %class.CClause** %9, align 8
  %11 = ptrtoint %class.CClause* %6 to i64
  %12 = ptrtoint %class.CClause* %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 16
  ret i64 %14
}

; Function Attrs: uwtable
define linkonce_odr i64 @_ZNKSt5queueIiSt5dequeIiSaIiEEE4sizeEv(%"class.std::queue"* %this) #0 comdat align 2 {
  %1 = alloca %"class.std::queue"*, align 8
  store %"class.std::queue"* %this, %"class.std::queue"** %1, align 8
  %2 = load %"class.std::queue"*, %"class.std::queue"** %1, align 8
  %3 = getelementptr inbounds %"class.std::queue", %"class.std::queue"* %2, i32 0, i32 0
  %4 = call i64 @_ZNKSt5dequeIiSaIiEE4sizeEv(%"class.std::deque"* %3)
  ret i64 %4
}

; Function Attrs: uwtable
define linkonce_odr i64 @_ZNKSt5dequeIiSaIiEE4sizeEv(%"class.std::deque"* %this) #0 comdat align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  %2 = load %"class.std::deque"*, %"class.std::deque"** %1, align 8
  %3 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %4 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %4, i32 0, i32 3
  %6 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %7 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %6, i32 0, i32 0
  %8 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %7, i32 0, i32 2
  %9 = call i64 @_ZStmiIiRiPiENSt15_Deque_iteratorIT_T0_T1_E15difference_typeERKS6_S9_(%"struct.std::_Deque_iterator"* dereferenceable(32) %5, %"struct.std::_Deque_iterator"* dereferenceable(32) %8)
  ret i64 %9
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i64 @_ZStmiIiRiPiENSt15_Deque_iteratorIT_T0_T1_E15difference_typeERKS6_S9_(%"struct.std::_Deque_iterator"* dereferenceable(32) %__x, %"struct.std::_Deque_iterator"* dereferenceable(32) %__y) #7 comdat {
  %1 = alloca %"struct.std::_Deque_iterator"*, align 8
  %2 = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %__x, %"struct.std::_Deque_iterator"** %1, align 8
  store %"struct.std::_Deque_iterator"* %__y, %"struct.std::_Deque_iterator"** %2, align 8
  %3 = call i64 @_ZNSt15_Deque_iteratorIiRiPiE14_S_buffer_sizeEv()
  %4 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %1, align 8
  %5 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %4, i32 0, i32 3
  %6 = load i32**, i32*** %5, align 8
  %7 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %2, align 8
  %8 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %7, i32 0, i32 3
  %9 = load i32**, i32*** %8, align 8
  %10 = ptrtoint i32** %6 to i64
  %11 = ptrtoint i32** %9 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 8
  %14 = sub nsw i64 %13, 1
  %15 = mul nsw i64 %3, %14
  %16 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %1, align 8
  %17 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %1, align 8
  %20 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = ptrtoint i32* %18 to i64
  %23 = ptrtoint i32* %21 to i64
  %24 = sub i64 %22, %23
  %25 = sdiv exact i64 %24, 4
  %26 = add nsw i64 %15, %25
  %27 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %2, align 8
  %28 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %2, align 8
  %31 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = ptrtoint i32* %29 to i64
  %34 = ptrtoint i32* %32 to i64
  %35 = sub i64 %33, %34
  %36 = sdiv exact i64 %35, 4
  %37 = add nsw i64 %26, %36
  ret i64 %37
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNSt15_Deque_iteratorIiRiPiE14_S_buffer_sizeEv() #5 comdat align 2 {
  %1 = call i64 @_ZSt16__deque_buf_sizem(i64 4)
  ret i64 %1
}

; Function Attrs: nounwind
declare i32 @getrusage(i32, %struct.rusage*) #13

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(16) %class.CClause* @_ZNSt6vectorI7CClauseSaIS0_EEixEm(%"class.std::vector.5"* %this, i64 %__n) #5 comdat align 2 {
  %1 = alloca %"class.std::vector.5"*, align 8
  %2 = alloca i64, align 8
  store %"class.std::vector.5"* %this, %"class.std::vector.5"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %3 = load %"class.std::vector.5"*, %"class.std::vector.5"** %1, align 8
  %4 = bitcast %"class.std::vector.5"* %3 to %"struct.std::_Vector_base.6"*
  %5 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl", %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl"* %5, i32 0, i32 0
  %7 = load %class.CClause*, %class.CClause** %6, align 8
  %8 = load i64, i64* %2, align 8
  %9 = getelementptr inbounds %class.CClause, %class.CClause* %7, i64 %8
  ret %class.CClause* %9
}

; Function Attrs: nounwind uwtable
define linkonce_odr %class.CLitPoolElement* @_ZN7CClause8literalsEv(%class.CClause* %this) #5 comdat align 2 {
  %1 = alloca %class.CClause*, align 8
  store %class.CClause* %this, %class.CClause** %1, align 8
  %2 = load %class.CClause*, %class.CClause** %1, align 8
  %3 = getelementptr inbounds %class.CClause, %class.CClause* %2, i32 0, i32 0
  %4 = load %class.CLitPoolElement*, %class.CLitPoolElement** %3, align 8
  ret %class.CLitPoolElement* %4
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector.18"* %this) unnamed_addr #0 comdat align 2 {
  %1 = alloca %"class.std::vector.18"*, align 8
  store %"class.std::vector.18"* %this, %"class.std::vector.18"** %1, align 8
  %2 = load %"class.std::vector.18"*, %"class.std::vector.18"** %1, align 8
  %3 = bitcast %"class.std::vector.18"* %2 to %"struct.std::_Vector_base.19"*
  call void @_ZNSt12_Vector_baseIiSaIiEEC2Ev(%"struct.std::_Vector_base.19"* %3)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE5clearEv(%"class.std::vector.18"* %this) #0 comdat align 2 {
  %1 = alloca %"class.std::vector.18"*, align 8
  store %"class.std::vector.18"* %this, %"class.std::vector.18"** %1, align 8
  %2 = load %"class.std::vector.18"*, %"class.std::vector.18"** %1, align 8
  %3 = bitcast %"class.std::vector.18"* %2 to %"struct.std::_Vector_base.19"*
  %4 = getelementptr inbounds %"struct.std::_Vector_base.19", %"struct.std::_Vector_base.19"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  call void @_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi(%"class.std::vector.18"* %2, i32* %6)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.18"* %this, i32* dereferenceable(4) %__x) #0 comdat align 2 {
  %1 = alloca %"class.std::vector.18"*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.60", align 8
  store %"class.std::vector.18"* %this, %"class.std::vector.18"** %1, align 8
  store i32* %__x, i32** %2, align 8
  %4 = load %"class.std::vector.18"*, %"class.std::vector.18"** %1, align 8
  %5 = bitcast %"class.std::vector.18"* %4 to %"struct.std::_Vector_base.19"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base.19", %"struct.std::_Vector_base.19"* %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = bitcast %"class.std::vector.18"* %4 to %"struct.std::_Vector_base.19"*
  %10 = getelementptr inbounds %"struct.std::_Vector_base.19", %"struct.std::_Vector_base.19"* %9, i32 0, i32 0
  %11 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %8, %12
  br i1 %13, label %14, label %28

; <label>:14                                      ; preds = %0
  %15 = bitcast %"class.std::vector.18"* %4 to %"struct.std::_Vector_base.19"*
  %16 = getelementptr inbounds %"struct.std::_Vector_base.19", %"struct.std::_Vector_base.19"* %15, i32 0, i32 0
  %17 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %16 to %"class.std::allocator.10"*
  %18 = bitcast %"class.std::vector.18"* %4 to %"struct.std::_Vector_base.19"*
  %19 = getelementptr inbounds %"struct.std::_Vector_base.19", %"struct.std::_Vector_base.19"* %18, i32 0, i32 0
  %20 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32*, i32** %2, align 8
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIiEE9constructIiEEvRS1_PiRKT_(%"class.std::allocator.10"* dereferenceable(1) %17, i32* %21, i32* dereferenceable(4) %22)
  %23 = bitcast %"class.std::vector.18"* %4 to %"struct.std::_Vector_base.19"*
  %24 = getelementptr inbounds %"struct.std::_Vector_base.19", %"struct.std::_Vector_base.19"* %23, i32 0, i32 0
  %25 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %25, align 8
  br label %34

; <label>:28                                      ; preds = %0
  %29 = call i32* @_ZNSt6vectorIiSaIiEE3endEv(%"class.std::vector.18"* %4)
  %30 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.60", %"class.__gnu_cxx::__normal_iterator.60"* %3, i32 0, i32 0
  store i32* %29, i32** %30, align 8
  %31 = load i32*, i32** %2, align 8
  %32 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.60", %"class.__gnu_cxx::__normal_iterator.60"* %3, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  call void @_ZNSt6vectorIiSaIiEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPiS1_EERKi(%"class.std::vector.18"* %4, i32* %33, i32* dereferenceable(4) %31)
  br label %34

; <label>:34                                      ; preds = %28, %14
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32 @_ZN11CClause_Gen3posEi(%class.CClause_Gen* %this, i32 %i) #5 comdat align 2 {
  %1 = alloca %class.CClause_Gen*, align 8
  %2 = alloca i32, align 4
  store %class.CClause_Gen* %this, %class.CClause_Gen** %1, align 8
  store i32 %i, i32* %2, align 4
  %3 = load %class.CClause_Gen*, %class.CClause_Gen** %1, align 8
  %4 = load i32, i32* %2, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32 @_ZN11CClause_Gen3negEi(%class.CClause_Gen* %this, i32 %i) #5 comdat align 2 {
  %1 = alloca %class.CClause_Gen*, align 8
  %2 = alloca i32, align 4
  store %class.CClause_Gen* %this, %class.CClause_Gen** %1, align 8
  store i32 %i, i32* %2, align 4
  %3 = load %class.CClause_Gen*, %class.CClause_Gen** %1, align 8
  %4 = load i32, i32* %2, align 4
  %5 = xor i32 %4, 1
  ret i32 %5
}

; Function Attrs: uwtable
define linkonce_odr i32* @_ZNSt6vectorIiSaIiEE5beginEv(%"class.std::vector.18"* %this) #0 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.60", align 8
  %2 = alloca %"class.std::vector.18"*, align 8
  store %"class.std::vector.18"* %this, %"class.std::vector.18"** %2, align 8
  %3 = load %"class.std::vector.18"*, %"class.std::vector.18"** %2, align 8
  %4 = bitcast %"class.std::vector.18"* %3 to %"struct.std::_Vector_base.19"*
  %5 = getelementptr inbounds %"struct.std::_Vector_base.19", %"struct.std::_Vector_base.19"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %5, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(%"class.__gnu_cxx::__normal_iterator.60"* %1, i32** dereferenceable(8) %6)
  %7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.60", %"class.__gnu_cxx::__normal_iterator.60"* %1, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  ret i32* %8
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(4) i32* @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEixEl(%"class.__gnu_cxx::__normal_iterator.60"* %this, i64 %__n) #5 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.60"*, align 8
  %2 = alloca i64, align 8
  store %"class.__gnu_cxx::__normal_iterator.60"* %this, %"class.__gnu_cxx::__normal_iterator.60"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator.60"*, %"class.__gnu_cxx::__normal_iterator.60"** %1, align 8
  %4 = load i64, i64* %2, align 8
  %5 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.60", %"class.__gnu_cxx::__normal_iterator.60"* %3, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 %4
  ret i32* %7
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.18"* %this) #5 comdat align 2 {
  %1 = alloca %"class.std::vector.18"*, align 8
  store %"class.std::vector.18"* %this, %"class.std::vector.18"** %1, align 8
  %2 = load %"class.std::vector.18"*, %"class.std::vector.18"** %1, align 8
  %3 = bitcast %"class.std::vector.18"* %2 to %"struct.std::_Vector_base.19"*
  %4 = getelementptr inbounds %"struct.std::_Vector_base.19", %"struct.std::_Vector_base.19"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %4, i32 0, i32 1
  %6 = load i32*, i32** %5, align 8
  %7 = bitcast %"class.std::vector.18"* %2 to %"struct.std::_Vector_base.19"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base.19", %"struct.std::_Vector_base.19"* %7, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = ptrtoint i32* %6 to i64
  %12 = ptrtoint i32* %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 4
  ret i64 %14
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.18"* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %"class.std::vector.18"*, align 8
  %2 = alloca i8*
  %3 = alloca i32
  store %"class.std::vector.18"* %this, %"class.std::vector.18"** %1, align 8
  %4 = load %"class.std::vector.18"*, %"class.std::vector.18"** %1, align 8
  %5 = bitcast %"class.std::vector.18"* %4 to %"struct.std::_Vector_base.19"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base.19", %"struct.std::_Vector_base.19"* %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = bitcast %"class.std::vector.18"* %4 to %"struct.std::_Vector_base.19"*
  %10 = getelementptr inbounds %"struct.std::_Vector_base.19", %"struct.std::_Vector_base.19"* %9, i32 0, i32 0
  %11 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = bitcast %"class.std::vector.18"* %4 to %"struct.std::_Vector_base.19"*
  %14 = invoke dereferenceable(1) %"class.std::allocator.10"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.19"* %13)
          to label %15 unwind label %18

; <label>:15                                      ; preds = %0
  invoke void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(i32* %8, i32* %12, %"class.std::allocator.10"* dereferenceable(1) %14)
          to label %16 unwind label %18

; <label>:16                                      ; preds = %15
  %17 = bitcast %"class.std::vector.18"* %4 to %"struct.std::_Vector_base.19"*
  call void @_ZNSt12_Vector_baseIiSaIiEED2Ev(%"struct.std::_Vector_base.19"* %17)
  ret void

; <label>:18                                      ; preds = %15, %0
  %19 = landingpad { i8*, i32 }
          cleanup
  %20 = extractvalue { i8*, i32 } %19, 0
  store i8* %20, i8** %2, align 8
  %21 = extractvalue { i8*, i32 } %19, 1
  store i32 %21, i32* %3, align 4
  %22 = bitcast %"class.std::vector.18"* %4 to %"struct.std::_Vector_base.19"*
  invoke void @_ZNSt12_Vector_baseIiSaIiEED2Ev(%"struct.std::_Vector_base.19"* %22)
          to label %23 unwind label %29

; <label>:23                                      ; preds = %18
  br label %24

; <label>:24                                      ; preds = %23
  %25 = load i8*, i8** %2, align 8
  %26 = load i32, i32* %3, align 4
  %27 = insertvalue { i8*, i32 } undef, i8* %25, 0
  %28 = insertvalue { i8*, i32 } %27, i32 %26, 1
  resume { i8*, i32 } %28

; <label>:29                                      ; preds = %18
  %30 = landingpad { i8*, i32 }
          catch i8* null
  %31 = extractvalue { i8*, i32 } %30, 0
  call void @__clang_call_terminate(i8* %31) #12
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIiSaIiEEC2Ev(%"struct.std::_Vector_base.19"* %this) unnamed_addr #0 comdat align 2 {
  %1 = alloca %"struct.std::_Vector_base.19"*, align 8
  store %"struct.std::_Vector_base.19"* %this, %"struct.std::_Vector_base.19"** %1, align 8
  %2 = load %"struct.std::_Vector_base.19"*, %"struct.std::_Vector_base.19"** %1, align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base.19", %"struct.std::_Vector_base.19"* %2, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev(%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev(%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this) unnamed_addr #5 comdat align 2 {
  %1 = alloca %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this, %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"** %1, align 8
  %2 = load %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"*, %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"** %1, align 8
  %3 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %2 to %"class.std::allocator.10"*
  call void @_ZNSaIiEC2Ev(%"class.std::allocator.10"* %3) #2
  %4 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %2, i32 0, i32 0
  store i32* null, i32** %4, align 8
  %5 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %2, i32 0, i32 1
  store i32* null, i32** %5, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %2, i32 0, i32 2
  store i32* null, i32** %6, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIiEC2Ev(%"class.std::allocator.10"* %this) unnamed_addr #5 comdat align 2 {
  %1 = alloca %"class.std::allocator.10"*, align 8
  store %"class.std::allocator.10"* %this, %"class.std::allocator.10"** %1, align 8
  %2 = load %"class.std::allocator.10"*, %"class.std::allocator.10"** %1, align 8
  %3 = bitcast %"class.std::allocator.10"* %2 to %"class.__gnu_cxx::new_allocator.11"*
  call void @_ZN9__gnu_cxx13new_allocatorIiEC2Ev(%"class.__gnu_cxx::new_allocator.11"* %3) #2
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIiEC2Ev(%"class.__gnu_cxx::new_allocator.11"* %this) unnamed_addr #5 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.11"*, align 8
  store %"class.__gnu_cxx::new_allocator.11"* %this, %"class.__gnu_cxx::new_allocator.11"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.11"*, %"class.__gnu_cxx::new_allocator.11"** %1, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi(%"class.std::vector.18"* %this, i32* %__pos) #0 comdat align 2 {
  %1 = alloca %"class.std::vector.18"*, align 8
  %2 = alloca i32*, align 8
  store %"class.std::vector.18"* %this, %"class.std::vector.18"** %1, align 8
  store i32* %__pos, i32** %2, align 8
  %3 = load %"class.std::vector.18"*, %"class.std::vector.18"** %1, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = bitcast %"class.std::vector.18"* %3 to %"struct.std::_Vector_base.19"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base.19", %"struct.std::_Vector_base.19"* %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = bitcast %"class.std::vector.18"* %3 to %"struct.std::_Vector_base.19"*
  %10 = call dereferenceable(1) %"class.std::allocator.10"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.19"* %9)
  call void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(i32* %4, i32* %8, %"class.std::allocator.10"* dereferenceable(1) %10)
  %11 = load i32*, i32** %2, align 8
  %12 = bitcast %"class.std::vector.18"* %3 to %"struct.std::_Vector_base.19"*
  %13 = getelementptr inbounds %"struct.std::_Vector_base.19", %"struct.std::_Vector_base.19"* %12, i32 0, i32 0
  %14 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %13, i32 0, i32 1
  store i32* %11, i32** %14, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(i32* %__first, i32* %__last, %"class.std::allocator.10"* dereferenceable(1)) #7 comdat {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %"class.std::allocator.10"*, align 8
  store i32* %__first, i32** %2, align 8
  store i32* %__last, i32** %3, align 8
  store %"class.std::allocator.10"* %0, %"class.std::allocator.10"** %4, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = load i32*, i32** %3, align 8
  call void @_ZSt8_DestroyIPiEvT_S1_(i32* %5, i32* %6)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(1) %"class.std::allocator.10"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.19"* %this) #5 comdat align 2 {
  %1 = alloca %"struct.std::_Vector_base.19"*, align 8
  store %"struct.std::_Vector_base.19"* %this, %"struct.std::_Vector_base.19"** %1, align 8
  %2 = load %"struct.std::_Vector_base.19"*, %"struct.std::_Vector_base.19"** %1, align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base.19", %"struct.std::_Vector_base.19"* %2, i32 0, i32 0
  %4 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %3 to %"class.std::allocator.10"*
  ret %"class.std::allocator.10"* %4
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt8_DestroyIPiEvT_S1_(i32* %__first, i32* %__last) #7 comdat {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  store i32* %__first, i32** %1, align 8
  store i32* %__last, i32** %2, align 8
  %3 = load i32*, i32** %1, align 8
  %4 = load i32*, i32** %2, align 8
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_(i32* %3, i32* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_(i32*, i32*) #5 comdat align 2 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaIiEE9constructIiEEvRS1_PiRKT_(%"class.std::allocator.10"* dereferenceable(1) %__a, i32* %__p, i32* dereferenceable(4) %__arg) #0 comdat align 2 {
  %1 = alloca %"class.std::allocator.10"*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store %"class.std::allocator.10"* %__a, %"class.std::allocator.10"** %1, align 8
  store i32* %__p, i32** %2, align 8
  store i32* %__arg, i32** %3, align 8
  %4 = load %"class.std::allocator.10"*, %"class.std::allocator.10"** %1, align 8
  %5 = bitcast %"class.std::allocator.10"* %4 to %"class.__gnu_cxx::new_allocator.11"*
  %6 = load i32*, i32** %2, align 8
  %7 = load i32*, i32** %3, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIiE9constructEPiRKi(%"class.__gnu_cxx::new_allocator.11"* %5, i32* %6, i32* dereferenceable(4) %7)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPiS1_EERKi(%"class.std::vector.18"* %this, i32* %__position.coerce, i32* dereferenceable(4) %__x) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %__position = alloca %"class.__gnu_cxx::__normal_iterator.60", align 8
  %1 = alloca %"class.std::vector.18"*, align 8
  %2 = alloca i32*, align 8
  %__x_copy = alloca i32, align 4
  %__len = alloca i64, align 8
  %__elems_before = alloca i64, align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.60", align 8
  %__new_start = alloca i32*, align 8
  %__new_finish = alloca i32*, align 8
  %4 = alloca i8*
  %5 = alloca i32
  %6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.60", %"class.__gnu_cxx::__normal_iterator.60"* %__position, i32 0, i32 0
  store i32* %__position.coerce, i32** %6, align 8
  store %"class.std::vector.18"* %this, %"class.std::vector.18"** %1, align 8
  store i32* %__x, i32** %2, align 8
  %7 = load %"class.std::vector.18"*, %"class.std::vector.18"** %1, align 8
  %8 = bitcast %"class.std::vector.18"* %7 to %"struct.std::_Vector_base.19"*
  %9 = getelementptr inbounds %"struct.std::_Vector_base.19", %"struct.std::_Vector_base.19"* %8, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = bitcast %"class.std::vector.18"* %7 to %"struct.std::_Vector_base.19"*
  %13 = getelementptr inbounds %"struct.std::_Vector_base.19", %"struct.std::_Vector_base.19"* %12, i32 0, i32 0
  %14 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %11, %15
  br i1 %16, label %17, label %52

; <label>:17                                      ; preds = %0
  %18 = bitcast %"class.std::vector.18"* %7 to %"struct.std::_Vector_base.19"*
  %19 = getelementptr inbounds %"struct.std::_Vector_base.19", %"struct.std::_Vector_base.19"* %18, i32 0, i32 0
  %20 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %19 to %"class.std::allocator.10"*
  %21 = bitcast %"class.std::vector.18"* %7 to %"struct.std::_Vector_base.19"*
  %22 = getelementptr inbounds %"struct.std::_Vector_base.19", %"struct.std::_Vector_base.19"* %21, i32 0, i32 0
  %23 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = bitcast %"class.std::vector.18"* %7 to %"struct.std::_Vector_base.19"*
  %26 = getelementptr inbounds %"struct.std::_Vector_base.19", %"struct.std::_Vector_base.19"* %25, i32 0, i32 0
  %27 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 -1
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIiEE9constructIiEEvRS1_PiRKT_(%"class.std::allocator.10"* dereferenceable(1) %20, i32* %24, i32* dereferenceable(4) %29)
  %30 = bitcast %"class.std::vector.18"* %7 to %"struct.std::_Vector_base.19"*
  %31 = getelementptr inbounds %"struct.std::_Vector_base.19", %"struct.std::_Vector_base.19"* %30, i32 0, i32 0
  %32 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %32, align 8
  %35 = load i32*, i32** %2, align 8
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %__x_copy, align 4
  %37 = call dereferenceable(8) i32** @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator.60"* %__position)
  %38 = load i32*, i32** %37, align 8
  %39 = bitcast %"class.std::vector.18"* %7 to %"struct.std::_Vector_base.19"*
  %40 = getelementptr inbounds %"struct.std::_Vector_base.19", %"struct.std::_Vector_base.19"* %39, i32 0, i32 0
  %41 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 -2
  %44 = bitcast %"class.std::vector.18"* %7 to %"struct.std::_Vector_base.19"*
  %45 = getelementptr inbounds %"struct.std::_Vector_base.19", %"struct.std::_Vector_base.19"* %44, i32 0, i32 0
  %46 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 -1
  %49 = call i32* @_ZSt13copy_backwardIPiS0_ET0_T_S2_S1_(i32* %38, i32* %43, i32* %48)
  %50 = load i32, i32* %__x_copy, align 4
  %51 = call dereferenceable(4) i32* @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv(%"class.__gnu_cxx::__normal_iterator.60"* %__position)
  store i32 %50, i32* %51, align 4
  br label %173

; <label>:52                                      ; preds = %0
  %53 = call i64 @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc(%"class.std::vector.18"* %7, i64 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0))
  store i64 %53, i64* %__len, align 8
  %54 = call i32* @_ZNSt6vectorIiSaIiEE5beginEv(%"class.std::vector.18"* %7)
  %55 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.60", %"class.__gnu_cxx::__normal_iterator.60"* %3, i32 0, i32 0
  store i32* %54, i32** %55, align 8
  %56 = call i64 @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%"class.__gnu_cxx::__normal_iterator.60"* dereferenceable(8) %__position, %"class.__gnu_cxx::__normal_iterator.60"* dereferenceable(8) %3)
  store i64 %56, i64* %__elems_before, align 8
  %57 = bitcast %"class.std::vector.18"* %7 to %"struct.std::_Vector_base.19"*
  %58 = load i64, i64* %__len, align 8
  %59 = call i32* @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%"struct.std::_Vector_base.19"* %57, i64 %58)
  store i32* %59, i32** %__new_start, align 8
  %60 = load i32*, i32** %__new_start, align 8
  store i32* %60, i32** %__new_finish, align 8
  %61 = bitcast %"class.std::vector.18"* %7 to %"struct.std::_Vector_base.19"*
  %62 = getelementptr inbounds %"struct.std::_Vector_base.19", %"struct.std::_Vector_base.19"* %61, i32 0, i32 0
  %63 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %62 to %"class.std::allocator.10"*
  %64 = load i32*, i32** %__new_start, align 8
  %65 = load i64, i64* %__elems_before, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32*, i32** %2, align 8
  invoke void @_ZN9__gnu_cxx14__alloc_traitsISaIiEE9constructIiEEvRS1_PiRKT_(%"class.std::allocator.10"* dereferenceable(1) %63, i32* %66, i32* dereferenceable(4) %67)
          to label %68 unwind label %97

; <label>:68                                      ; preds = %52
  store i32* null, i32** %__new_finish, align 8
  %69 = bitcast %"class.std::vector.18"* %7 to %"struct.std::_Vector_base.19"*
  %70 = getelementptr inbounds %"struct.std::_Vector_base.19", %"struct.std::_Vector_base.19"* %69, i32 0, i32 0
  %71 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = invoke dereferenceable(8) i32** @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator.60"* %__position)
          to label %74 unwind label %97

; <label>:74                                      ; preds = %68
  %75 = load i32*, i32** %73, align 8
  %76 = load i32*, i32** %__new_start, align 8
  %77 = bitcast %"class.std::vector.18"* %7 to %"struct.std::_Vector_base.19"*
  %78 = invoke dereferenceable(1) %"class.std::allocator.10"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.19"* %77)
          to label %79 unwind label %97

; <label>:79                                      ; preds = %74
  %80 = invoke i32* @_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_(i32* %72, i32* %75, i32* %76, %"class.std::allocator.10"* dereferenceable(1) %78)
          to label %81 unwind label %97

; <label>:81                                      ; preds = %79
  store i32* %80, i32** %__new_finish, align 8
  %82 = load i32*, i32** %__new_finish, align 8
  %83 = getelementptr inbounds i32, i32* %82, i32 1
  store i32* %83, i32** %__new_finish, align 8
  %84 = invoke dereferenceable(8) i32** @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator.60"* %__position)
          to label %85 unwind label %97

; <label>:85                                      ; preds = %81
  %86 = load i32*, i32** %84, align 8
  %87 = bitcast %"class.std::vector.18"* %7 to %"struct.std::_Vector_base.19"*
  %88 = getelementptr inbounds %"struct.std::_Vector_base.19", %"struct.std::_Vector_base.19"* %87, i32 0, i32 0
  %89 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i32*, i32** %__new_finish, align 8
  %92 = bitcast %"class.std::vector.18"* %7 to %"struct.std::_Vector_base.19"*
  %93 = invoke dereferenceable(1) %"class.std::allocator.10"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.19"* %92)
          to label %94 unwind label %97

; <label>:94                                      ; preds = %85
  %95 = invoke i32* @_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_(i32* %86, i32* %90, i32* %91, %"class.std::allocator.10"* dereferenceable(1) %93)
          to label %96 unwind label %97

; <label>:96                                      ; preds = %94
  store i32* %95, i32** %__new_finish, align 8
  br label %131

; <label>:97                                      ; preds = %94, %85, %81, %79, %74, %68, %52
  %98 = landingpad { i8*, i32 }
          catch i8* null
  %99 = extractvalue { i8*, i32 } %98, 0
  store i8* %99, i8** %4, align 8
  %100 = extractvalue { i8*, i32 } %98, 1
  store i32 %100, i32* %5, align 4
  br label %101

; <label>:101                                     ; preds = %97
  %102 = load i8*, i8** %4, align 8
  %103 = call i8* @__cxa_begin_catch(i8* %102) #2
  %104 = load i32*, i32** %__new_finish, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %118, label %106

; <label>:106                                     ; preds = %101
  %107 = bitcast %"class.std::vector.18"* %7 to %"struct.std::_Vector_base.19"*
  %108 = getelementptr inbounds %"struct.std::_Vector_base.19", %"struct.std::_Vector_base.19"* %107, i32 0, i32 0
  %109 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %108 to %"class.std::allocator.10"*
  %110 = load i32*, i32** %__new_start, align 8
  %111 = load i64, i64* %__elems_before, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  invoke void @_ZN9__gnu_cxx14__alloc_traitsISaIiEE7destroyERS1_Pi(%"class.std::allocator.10"* dereferenceable(1) %109, i32* %112)
          to label %113 unwind label %114

; <label>:113                                     ; preds = %106
  br label %125

; <label>:114                                     ; preds = %129, %125, %123, %118, %106
  %115 = landingpad { i8*, i32 }
          cleanup
  %116 = extractvalue { i8*, i32 } %115, 0
  store i8* %116, i8** %4, align 8
  %117 = extractvalue { i8*, i32 } %115, 1
  store i32 %117, i32* %5, align 4
  invoke void @__cxa_end_catch()
          to label %130 unwind label %179

; <label>:118                                     ; preds = %101
  %119 = load i32*, i32** %__new_start, align 8
  %120 = load i32*, i32** %__new_finish, align 8
  %121 = bitcast %"class.std::vector.18"* %7 to %"struct.std::_Vector_base.19"*
  %122 = invoke dereferenceable(1) %"class.std::allocator.10"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.19"* %121)
          to label %123 unwind label %114

; <label>:123                                     ; preds = %118
  invoke void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(i32* %119, i32* %120, %"class.std::allocator.10"* dereferenceable(1) %122)
          to label %124 unwind label %114

; <label>:124                                     ; preds = %123
  br label %125

; <label>:125                                     ; preds = %124, %113
  %126 = bitcast %"class.std::vector.18"* %7 to %"struct.std::_Vector_base.19"*
  %127 = load i32*, i32** %__new_start, align 8
  %128 = load i64, i64* %__len, align 8
  invoke void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%"struct.std::_Vector_base.19"* %126, i32* %127, i64 %128)
          to label %129 unwind label %114

; <label>:129                                     ; preds = %125
  invoke void @__cxa_rethrow() #16
          to label %182 unwind label %114

; <label>:130                                     ; preds = %114
  br label %174

; <label>:131                                     ; preds = %96
  %132 = bitcast %"class.std::vector.18"* %7 to %"struct.std::_Vector_base.19"*
  %133 = getelementptr inbounds %"struct.std::_Vector_base.19", %"struct.std::_Vector_base.19"* %132, i32 0, i32 0
  %134 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = bitcast %"class.std::vector.18"* %7 to %"struct.std::_Vector_base.19"*
  %137 = getelementptr inbounds %"struct.std::_Vector_base.19", %"struct.std::_Vector_base.19"* %136, i32 0, i32 0
  %138 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %137, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = bitcast %"class.std::vector.18"* %7 to %"struct.std::_Vector_base.19"*
  %141 = call dereferenceable(1) %"class.std::allocator.10"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.19"* %140)
  call void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(i32* %135, i32* %139, %"class.std::allocator.10"* dereferenceable(1) %141)
  %142 = bitcast %"class.std::vector.18"* %7 to %"struct.std::_Vector_base.19"*
  %143 = bitcast %"class.std::vector.18"* %7 to %"struct.std::_Vector_base.19"*
  %144 = getelementptr inbounds %"struct.std::_Vector_base.19", %"struct.std::_Vector_base.19"* %143, i32 0, i32 0
  %145 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = bitcast %"class.std::vector.18"* %7 to %"struct.std::_Vector_base.19"*
  %148 = getelementptr inbounds %"struct.std::_Vector_base.19", %"struct.std::_Vector_base.19"* %147, i32 0, i32 0
  %149 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %148, i32 0, i32 2
  %150 = load i32*, i32** %149, align 8
  %151 = bitcast %"class.std::vector.18"* %7 to %"struct.std::_Vector_base.19"*
  %152 = getelementptr inbounds %"struct.std::_Vector_base.19", %"struct.std::_Vector_base.19"* %151, i32 0, i32 0
  %153 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = ptrtoint i32* %150 to i64
  %156 = ptrtoint i32* %154 to i64
  %157 = sub i64 %155, %156
  %158 = sdiv exact i64 %157, 4
  call void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%"struct.std::_Vector_base.19"* %142, i32* %146, i64 %158)
  %159 = load i32*, i32** %__new_start, align 8
  %160 = bitcast %"class.std::vector.18"* %7 to %"struct.std::_Vector_base.19"*
  %161 = getelementptr inbounds %"struct.std::_Vector_base.19", %"struct.std::_Vector_base.19"* %160, i32 0, i32 0
  %162 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %161, i32 0, i32 0
  store i32* %159, i32** %162, align 8
  %163 = load i32*, i32** %__new_finish, align 8
  %164 = bitcast %"class.std::vector.18"* %7 to %"struct.std::_Vector_base.19"*
  %165 = getelementptr inbounds %"struct.std::_Vector_base.19", %"struct.std::_Vector_base.19"* %164, i32 0, i32 0
  %166 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %165, i32 0, i32 1
  store i32* %163, i32** %166, align 8
  %167 = load i32*, i32** %__new_start, align 8
  %168 = load i64, i64* %__len, align 8
  %169 = getelementptr inbounds i32, i32* %167, i64 %168
  %170 = bitcast %"class.std::vector.18"* %7 to %"struct.std::_Vector_base.19"*
  %171 = getelementptr inbounds %"struct.std::_Vector_base.19", %"struct.std::_Vector_base.19"* %170, i32 0, i32 0
  %172 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %171, i32 0, i32 2
  store i32* %169, i32** %172, align 8
  br label %173

; <label>:173                                     ; preds = %131, %17
  ret void

; <label>:174                                     ; preds = %130
  %175 = load i8*, i8** %4, align 8
  %176 = load i32, i32* %5, align 4
  %177 = insertvalue { i8*, i32 } undef, i8* %175, 0
  %178 = insertvalue { i8*, i32 } %177, i32 %176, 1
  resume { i8*, i32 } %178

; <label>:179                                     ; preds = %114
  %180 = landingpad { i8*, i32 }
          catch i8* null
  %181 = extractvalue { i8*, i32 } %180, 0
  call void @__clang_call_terminate(i8* %181) #12
  unreachable

; <label>:182                                     ; preds = %129
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr i32* @_ZNSt6vectorIiSaIiEE3endEv(%"class.std::vector.18"* %this) #0 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.60", align 8
  %2 = alloca %"class.std::vector.18"*, align 8
  store %"class.std::vector.18"* %this, %"class.std::vector.18"** %2, align 8
  %3 = load %"class.std::vector.18"*, %"class.std::vector.18"** %2, align 8
  %4 = bitcast %"class.std::vector.18"* %3 to %"struct.std::_Vector_base.19"*
  %5 = getelementptr inbounds %"struct.std::_Vector_base.19", %"struct.std::_Vector_base.19"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %5, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(%"class.__gnu_cxx::__normal_iterator.60"* %1, i32** dereferenceable(8) %6)
  %7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.60", %"class.__gnu_cxx::__normal_iterator.60"* %1, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  ret i32* %8
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIiE9constructEPiRKi(%"class.__gnu_cxx::new_allocator.11"* %this, i32* %__p, i32* dereferenceable(4) %__val) #5 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.11"*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store %"class.__gnu_cxx::new_allocator.11"* %this, %"class.__gnu_cxx::new_allocator.11"** %1, align 8
  store i32* %__p, i32** %2, align 8
  store i32* %__val, i32** %3, align 8
  %4 = load %"class.__gnu_cxx::new_allocator.11"*, %"class.__gnu_cxx::new_allocator.11"** %1, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = bitcast i32* %5 to i8*
  %7 = bitcast i8* %6 to i32*
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %7, align 4
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i32* @_ZSt13copy_backwardIPiS0_ET0_T_S2_S1_(i32* %__first, i32* %__last, i32* %__result) #7 comdat {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* %__first, i32** %1, align 8
  store i32* %__last, i32** %2, align 8
  store i32* %__result, i32** %3, align 8
  %4 = load i32*, i32** %1, align 8
  %5 = call i32* @_ZSt12__miter_baseIPiENSt11_Miter_baseIT_E13iterator_typeES2_(i32* %4)
  %6 = load i32*, i32** %2, align 8
  %7 = call i32* @_ZSt12__miter_baseIPiENSt11_Miter_baseIT_E13iterator_typeES2_(i32* %6)
  %8 = load i32*, i32** %3, align 8
  %9 = call i32* @_ZSt23__copy_move_backward_a2ILb0EPiS0_ET1_T0_S2_S1_(i32* %5, i32* %7, i32* %8)
  ret i32* %9
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(8) i32** @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator.60"* %this) #5 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.60"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.60"* %this, %"class.__gnu_cxx::__normal_iterator.60"** %1, align 8
  %2 = load %"class.__gnu_cxx::__normal_iterator.60"*, %"class.__gnu_cxx::__normal_iterator.60"** %1, align 8
  %3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.60", %"class.__gnu_cxx::__normal_iterator.60"* %2, i32 0, i32 0
  ret i32** %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(4) i32* @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv(%"class.__gnu_cxx::__normal_iterator.60"* %this) #5 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.60"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.60"* %this, %"class.__gnu_cxx::__normal_iterator.60"** %1, align 8
  %2 = load %"class.__gnu_cxx::__normal_iterator.60"*, %"class.__gnu_cxx::__normal_iterator.60"** %1, align 8
  %3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.60", %"class.__gnu_cxx::__normal_iterator.60"* %2, i32 0, i32 0
  %4 = load i32*, i32** %3, align 8
  ret i32* %4
}

; Function Attrs: uwtable
define linkonce_odr i64 @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc(%"class.std::vector.18"* %this, i64 %__n, i8* %__s) #0 comdat align 2 {
  %1 = alloca %"class.std::vector.18"*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %__len = alloca i64, align 8
  %4 = alloca i64, align 8
  store %"class.std::vector.18"* %this, %"class.std::vector.18"** %1, align 8
  store i64 %__n, i64* %2, align 8
  store i8* %__s, i8** %3, align 8
  %5 = load %"class.std::vector.18"*, %"class.std::vector.18"** %1, align 8
  %6 = call i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%"class.std::vector.18"* %5)
  %7 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.18"* %5)
  %8 = sub i64 %6, %7
  %9 = load i64, i64* %2, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %13

; <label>:11                                      ; preds = %0
  %12 = load i8*, i8** %3, align 8
  call void @_ZSt20__throw_length_errorPKc(i8* %12) #16
  unreachable

; <label>:13                                      ; preds = %0
  %14 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.18"* %5)
  %15 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.18"* %5)
  store i64 %15, i64* %4, align 8
  %16 = call dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* dereferenceable(8) %4, i64* dereferenceable(8) %2)
  %17 = load i64, i64* %16, align 8
  %18 = add i64 %14, %17
  store i64 %18, i64* %__len, align 8
  %19 = load i64, i64* %__len, align 8
  %20 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.18"* %5)
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %26, label %22

; <label>:22                                      ; preds = %13
  %23 = load i64, i64* %__len, align 8
  %24 = call i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%"class.std::vector.18"* %5)
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %28

; <label>:26                                      ; preds = %22, %13
  %27 = call i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%"class.std::vector.18"* %5)
  br label %30

; <label>:28                                      ; preds = %22
  %29 = load i64, i64* %__len, align 8
  br label %30

; <label>:30                                      ; preds = %28, %26
  %31 = phi i64 [ %27, %26 ], [ %29, %28 ]
  ret i64 %31
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i64 @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%"class.__gnu_cxx::__normal_iterator.60"* dereferenceable(8) %__lhs, %"class.__gnu_cxx::__normal_iterator.60"* dereferenceable(8) %__rhs) #10 comdat {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.60"*, align 8
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.60"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.60"* %__lhs, %"class.__gnu_cxx::__normal_iterator.60"** %1, align 8
  store %"class.__gnu_cxx::__normal_iterator.60"* %__rhs, %"class.__gnu_cxx::__normal_iterator.60"** %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator.60"*, %"class.__gnu_cxx::__normal_iterator.60"** %1, align 8
  %4 = call dereferenceable(8) i32** @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator.60"* %3)
  %5 = load i32*, i32** %4, align 8
  %6 = load %"class.__gnu_cxx::__normal_iterator.60"*, %"class.__gnu_cxx::__normal_iterator.60"** %2, align 8
  %7 = call dereferenceable(8) i32** @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator.60"* %6)
  %8 = load i32*, i32** %7, align 8
  %9 = ptrtoint i32* %5 to i64
  %10 = ptrtoint i32* %8 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 4
  ret i64 %12
}

; Function Attrs: uwtable
define linkonce_odr i32* @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%"struct.std::_Vector_base.19"* %this, i64 %__n) #0 comdat align 2 {
  %1 = alloca %"struct.std::_Vector_base.19"*, align 8
  %2 = alloca i64, align 8
  store %"struct.std::_Vector_base.19"* %this, %"struct.std::_Vector_base.19"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %3 = load %"struct.std::_Vector_base.19"*, %"struct.std::_Vector_base.19"** %1, align 8
  %4 = load i64, i64* %2, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %11

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %"struct.std::_Vector_base.19", %"struct.std::_Vector_base.19"* %3, i32 0, i32 0
  %8 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %7 to %"class.std::allocator.10"*
  %9 = load i64, i64* %2, align 8
  %10 = call i32* @_ZN9__gnu_cxx14__alloc_traitsISaIiEE8allocateERS1_m(%"class.std::allocator.10"* dereferenceable(1) %8, i64 %9)
  br label %12

; <label>:11                                      ; preds = %0
  br label %12

; <label>:12                                      ; preds = %11, %6
  %13 = phi i32* [ %10, %6 ], [ null, %11 ]
  ret i32* %13
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i32* @_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_(i32* %__first, i32* %__last, i32* %__result, %"class.std::allocator.10"* dereferenceable(1) %__alloc) #7 comdat {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %"class.std::allocator.10"*, align 8
  store i32* %__first, i32** %1, align 8
  store i32* %__last, i32** %2, align 8
  store i32* %__result, i32** %3, align 8
  store %"class.std::allocator.10"* %__alloc, %"class.std::allocator.10"** %4, align 8
  %5 = load i32*, i32** %1, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load %"class.std::allocator.10"*, %"class.std::allocator.10"** %4, align 8
  %9 = call i32* @_ZSt22__uninitialized_copy_aIPiS0_iET0_T_S2_S1_RSaIT1_E(i32* %5, i32* %6, i32* %7, %"class.std::allocator.10"* dereferenceable(1) %8)
  ret i32* %9
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaIiEE7destroyERS1_Pi(%"class.std::allocator.10"* dereferenceable(1) %__a, i32* %__p) #0 comdat align 2 {
  %1 = alloca %"class.std::allocator.10"*, align 8
  %2 = alloca i32*, align 8
  store %"class.std::allocator.10"* %__a, %"class.std::allocator.10"** %1, align 8
  store i32* %__p, i32** %2, align 8
  %3 = load %"class.std::allocator.10"*, %"class.std::allocator.10"** %1, align 8
  %4 = bitcast %"class.std::allocator.10"* %3 to %"class.__gnu_cxx::new_allocator.11"*
  %5 = load i32*, i32** %2, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIiE7destroyEPi(%"class.__gnu_cxx::new_allocator.11"* %4, i32* %5)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%"struct.std::_Vector_base.19"* %this, i32* %__p, i64 %__n) #0 comdat align 2 {
  %1 = alloca %"struct.std::_Vector_base.19"*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  store %"struct.std::_Vector_base.19"* %this, %"struct.std::_Vector_base.19"** %1, align 8
  store i32* %__p, i32** %2, align 8
  store i64 %__n, i64* %3, align 8
  %4 = load %"struct.std::_Vector_base.19"*, %"struct.std::_Vector_base.19"** %1, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %12

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds %"struct.std::_Vector_base.19", %"struct.std::_Vector_base.19"* %4, i32 0, i32 0
  %9 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %8 to %"class.std::allocator.10"*
  %10 = load i32*, i32** %2, align 8
  %11 = load i64, i64* %3, align 8
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIiEE10deallocateERS1_Pim(%"class.std::allocator.10"* dereferenceable(1) %9, i32* %10, i64 %11)
  br label %12

; <label>:12                                      ; preds = %7, %0
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i32* @_ZSt23__copy_move_backward_a2ILb0EPiS0_ET1_T0_S2_S1_(i32* %__first, i32* %__last, i32* %__result) #7 comdat {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* %__first, i32** %1, align 8
  store i32* %__last, i32** %2, align 8
  store i32* %__result, i32** %3, align 8
  %4 = load i32*, i32** %1, align 8
  %5 = call i32* @_ZSt12__niter_baseIPiENSt11_Niter_baseIT_E13iterator_typeES2_(i32* %4)
  %6 = load i32*, i32** %2, align 8
  %7 = call i32* @_ZSt12__niter_baseIPiENSt11_Niter_baseIT_E13iterator_typeES2_(i32* %6)
  %8 = load i32*, i32** %3, align 8
  %9 = call i32* @_ZSt12__niter_baseIPiENSt11_Niter_baseIT_E13iterator_typeES2_(i32* %8)
  %10 = call i32* @_ZSt22__copy_move_backward_aILb0EPiS0_ET1_T0_S2_S1_(i32* %5, i32* %7, i32* %9)
  ret i32* %10
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i32* @_ZSt12__miter_baseIPiENSt11_Miter_baseIT_E13iterator_typeES2_(i32* %__it) #10 comdat {
  %1 = alloca i32*, align 8
  store i32* %__it, i32** %1, align 8
  %2 = load i32*, i32** %1, align 8
  %3 = call i32* @_ZNSt10_Iter_baseIPiLb0EE7_S_baseES0_(i32* %2)
  ret i32* %3
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i32* @_ZSt22__copy_move_backward_aILb0EPiS0_ET1_T0_S2_S1_(i32* %__first, i32* %__last, i32* %__result) #7 comdat {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %__simple = alloca i8, align 1
  store i32* %__first, i32** %1, align 8
  store i32* %__last, i32** %2, align 8
  store i32* %__result, i32** %3, align 8
  store i8 1, i8* %__simple, align 1
  %4 = load i32*, i32** %1, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32* @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIiEEPT_PKS3_S6_S4_(i32* %4, i32* %5, i32* %6)
  ret i32* %7
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i32* @_ZSt12__niter_baseIPiENSt11_Niter_baseIT_E13iterator_typeES2_(i32* %__it) #7 comdat {
  %1 = alloca i32*, align 8
  store i32* %__it, i32** %1, align 8
  %2 = load i32*, i32** %1, align 8
  %3 = call i32* @_ZNSt10_Iter_baseIPiLb0EE7_S_baseES0_(i32* %2)
  ret i32* %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32* @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIiEEPT_PKS3_S6_S4_(i32* %__first, i32* %__last, i32* %__result) #5 comdat align 2 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %_Num = alloca i64, align 8
  store i32* %__first, i32** %1, align 8
  store i32* %__last, i32** %2, align 8
  store i32* %__result, i32** %3, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = load i32*, i32** %1, align 8
  %6 = ptrtoint i32* %4 to i64
  %7 = ptrtoint i32* %5 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 4
  store i64 %9, i64* %_Num, align 8
  %10 = load i64, i64* %_Num, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

; <label>:12                                      ; preds = %0
  %13 = load i32*, i32** %3, align 8
  %14 = load i64, i64* %_Num, align 8
  %15 = sub i64 0, %14
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = bitcast i32* %16 to i8*
  %18 = load i32*, i32** %1, align 8
  %19 = bitcast i32* %18 to i8*
  %20 = load i64, i64* %_Num, align 8
  %21 = mul i64 4, %20
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %17, i8* %19, i64 %21, i32 4, i1 false)
  br label %22

; <label>:22                                      ; preds = %12, %0
  %23 = load i32*, i32** %3, align 8
  %24 = load i64, i64* %_Num, align 8
  %25 = sub i64 0, %24
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  ret i32* %26
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32* @_ZNSt10_Iter_baseIPiLb0EE7_S_baseES0_(i32* %__it) #5 comdat align 2 {
  %1 = alloca i32*, align 8
  store i32* %__it, i32** %1, align 8
  %2 = load i32*, i32** %1, align 8
  ret i32* %2
}

; Function Attrs: uwtable
define linkonce_odr i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%"class.std::vector.18"* %this) #0 comdat align 2 {
  %1 = alloca %"class.std::vector.18"*, align 8
  store %"class.std::vector.18"* %this, %"class.std::vector.18"** %1, align 8
  %2 = load %"class.std::vector.18"*, %"class.std::vector.18"** %1, align 8
  %3 = bitcast %"class.std::vector.18"* %2 to %"struct.std::_Vector_base.19"*
  %4 = call dereferenceable(1) %"class.std::allocator.10"* @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.19"* %3)
  %5 = call i64 @_ZN9__gnu_cxx14__alloc_traitsISaIiEE8max_sizeERKS1_(%"class.std::allocator.10"* dereferenceable(1) %4)
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZN9__gnu_cxx14__alloc_traitsISaIiEE8max_sizeERKS1_(%"class.std::allocator.10"* dereferenceable(1) %__a) #5 comdat align 2 {
  %1 = alloca %"class.std::allocator.10"*, align 8
  store %"class.std::allocator.10"* %__a, %"class.std::allocator.10"** %1, align 8
  %2 = load %"class.std::allocator.10"*, %"class.std::allocator.10"** %1, align 8
  %3 = bitcast %"class.std::allocator.10"* %2 to %"class.__gnu_cxx::new_allocator.11"*
  %4 = call i64 @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(%"class.__gnu_cxx::new_allocator.11"* %3) #2
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(1) %"class.std::allocator.10"* @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.19"* %this) #5 comdat align 2 {
  %1 = alloca %"struct.std::_Vector_base.19"*, align 8
  store %"struct.std::_Vector_base.19"* %this, %"struct.std::_Vector_base.19"** %1, align 8
  %2 = load %"struct.std::_Vector_base.19"*, %"struct.std::_Vector_base.19"** %1, align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base.19", %"struct.std::_Vector_base.19"* %2, i32 0, i32 0
  %4 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %3 to %"class.std::allocator.10"*
  ret %"class.std::allocator.10"* %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(%"class.__gnu_cxx::new_allocator.11"* %this) #5 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.11"*, align 8
  store %"class.__gnu_cxx::new_allocator.11"* %this, %"class.__gnu_cxx::new_allocator.11"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.11"*, %"class.__gnu_cxx::new_allocator.11"** %1, align 8
  ret i64 4611686018427387903
}

; Function Attrs: uwtable
define linkonce_odr i32* @_ZN9__gnu_cxx14__alloc_traitsISaIiEE8allocateERS1_m(%"class.std::allocator.10"* dereferenceable(1) %__a, i64 %__n) #0 comdat align 2 {
  %1 = alloca %"class.std::allocator.10"*, align 8
  %2 = alloca i64, align 8
  store %"class.std::allocator.10"* %__a, %"class.std::allocator.10"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %3 = load %"class.std::allocator.10"*, %"class.std::allocator.10"** %1, align 8
  %4 = bitcast %"class.std::allocator.10"* %3 to %"class.__gnu_cxx::new_allocator.11"*
  %5 = load i64, i64* %2, align 8
  %6 = call i32* @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.11"* %4, i64 %5, i8* null)
  ret i32* %6
}

; Function Attrs: uwtable
define linkonce_odr i32* @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.11"* %this, i64 %__n, i8*) #0 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.11"*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator.11"* %this, %"class.__gnu_cxx::new_allocator.11"** %2, align 8
  store i64 %__n, i64* %3, align 8
  store i8* %0, i8** %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.11"*, %"class.__gnu_cxx::new_allocator.11"** %2, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(%"class.__gnu_cxx::new_allocator.11"* %5) #2
  %8 = icmp ugt i64 %6, %7
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %1
  call void @_ZSt17__throw_bad_allocv() #16
  unreachable

; <label>:10                                      ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = mul i64 %11, 4
  %13 = call noalias i8* @_Znwm(i64 %12)
  %14 = bitcast i8* %13 to i32*
  ret i32* %14
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i32* @_ZSt22__uninitialized_copy_aIPiS0_iET0_T_S2_S1_RSaIT1_E(i32* %__first, i32* %__last, i32* %__result, %"class.std::allocator.10"* dereferenceable(1)) #7 comdat {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %"class.std::allocator.10"*, align 8
  store i32* %__first, i32** %2, align 8
  store i32* %__last, i32** %3, align 8
  store i32* %__result, i32** %4, align 8
  store %"class.std::allocator.10"* %0, %"class.std::allocator.10"** %5, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32* @_ZSt18uninitialized_copyIPiS0_ET0_T_S2_S1_(i32* %6, i32* %7, i32* %8)
  ret i32* %9
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i32* @_ZSt18uninitialized_copyIPiS0_ET0_T_S2_S1_(i32* %__first, i32* %__last, i32* %__result) #7 comdat {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %__assignable = alloca i8, align 1
  store i32* %__first, i32** %1, align 8
  store i32* %__last, i32** %2, align 8
  store i32* %__result, i32** %3, align 8
  store i8 1, i8* %__assignable, align 1
  %4 = load i32*, i32** %1, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPiS2_EET0_T_S4_S3_(i32* %4, i32* %5, i32* %6)
  ret i32* %7
}

; Function Attrs: uwtable
define linkonce_odr i32* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPiS2_EET0_T_S4_S3_(i32* %__first, i32* %__last, i32* %__result) #0 comdat align 2 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* %__first, i32** %1, align 8
  store i32* %__last, i32** %2, align 8
  store i32* %__result, i32** %3, align 8
  %4 = load i32*, i32** %1, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32* @_ZSt4copyIPiS0_ET0_T_S2_S1_(i32* %4, i32* %5, i32* %6)
  ret i32* %7
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i32* @_ZSt4copyIPiS0_ET0_T_S2_S1_(i32* %__first, i32* %__last, i32* %__result) #7 comdat {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* %__first, i32** %1, align 8
  store i32* %__last, i32** %2, align 8
  store i32* %__result, i32** %3, align 8
  %4 = load i32*, i32** %1, align 8
  %5 = call i32* @_ZSt12__miter_baseIPiENSt11_Miter_baseIT_E13iterator_typeES2_(i32* %4)
  %6 = load i32*, i32** %2, align 8
  %7 = call i32* @_ZSt12__miter_baseIPiENSt11_Miter_baseIT_E13iterator_typeES2_(i32* %6)
  %8 = load i32*, i32** %3, align 8
  %9 = call i32* @_ZSt14__copy_move_a2ILb0EPiS0_ET1_T0_S2_S1_(i32* %5, i32* %7, i32* %8)
  ret i32* %9
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i32* @_ZSt14__copy_move_a2ILb0EPiS0_ET1_T0_S2_S1_(i32* %__first, i32* %__last, i32* %__result) #7 comdat {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* %__first, i32** %1, align 8
  store i32* %__last, i32** %2, align 8
  store i32* %__result, i32** %3, align 8
  %4 = load i32*, i32** %1, align 8
  %5 = call i32* @_ZSt12__niter_baseIPiENSt11_Niter_baseIT_E13iterator_typeES2_(i32* %4)
  %6 = load i32*, i32** %2, align 8
  %7 = call i32* @_ZSt12__niter_baseIPiENSt11_Niter_baseIT_E13iterator_typeES2_(i32* %6)
  %8 = load i32*, i32** %3, align 8
  %9 = call i32* @_ZSt12__niter_baseIPiENSt11_Niter_baseIT_E13iterator_typeES2_(i32* %8)
  %10 = call i32* @_ZSt13__copy_move_aILb0EPiS0_ET1_T0_S2_S1_(i32* %5, i32* %7, i32* %9)
  ret i32* %10
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i32* @_ZSt13__copy_move_aILb0EPiS0_ET1_T0_S2_S1_(i32* %__first, i32* %__last, i32* %__result) #7 comdat {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %__simple = alloca i8, align 1
  store i32* %__first, i32** %1, align 8
  store i32* %__last, i32** %2, align 8
  store i32* %__result, i32** %3, align 8
  store i8 1, i8* %__simple, align 1
  %4 = load i32*, i32** %1, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32* @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(i32* %4, i32* %5, i32* %6)
  ret i32* %7
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32* @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(i32* %__first, i32* %__last, i32* %__result) #5 comdat align 2 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %_Num = alloca i64, align 8
  store i32* %__first, i32** %1, align 8
  store i32* %__last, i32** %2, align 8
  store i32* %__result, i32** %3, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = load i32*, i32** %1, align 8
  %6 = ptrtoint i32* %4 to i64
  %7 = ptrtoint i32* %5 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 4
  store i64 %9, i64* %_Num, align 8
  %10 = load i64, i64* %_Num, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

; <label>:12                                      ; preds = %0
  %13 = load i32*, i32** %3, align 8
  %14 = bitcast i32* %13 to i8*
  %15 = load i32*, i32** %1, align 8
  %16 = bitcast i32* %15 to i8*
  %17 = load i64, i64* %_Num, align 8
  %18 = mul i64 4, %17
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %14, i8* %16, i64 %18, i32 4, i1 false)
  br label %19

; <label>:19                                      ; preds = %12, %0
  %20 = load i32*, i32** %3, align 8
  %21 = load i64, i64* %_Num, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  ret i32* %22
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIiE7destroyEPi(%"class.__gnu_cxx::new_allocator.11"* %this, i32* %__p) #5 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.11"*, align 8
  %2 = alloca i32*, align 8
  store %"class.__gnu_cxx::new_allocator.11"* %this, %"class.__gnu_cxx::new_allocator.11"** %1, align 8
  store i32* %__p, i32** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator.11"*, %"class.__gnu_cxx::new_allocator.11"** %1, align 8
  %4 = load i32*, i32** %2, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaIiEE10deallocateERS1_Pim(%"class.std::allocator.10"* dereferenceable(1) %__a, i32* %__p, i64 %__n) #0 comdat align 2 {
  %1 = alloca %"class.std::allocator.10"*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  store %"class.std::allocator.10"* %__a, %"class.std::allocator.10"** %1, align 8
  store i32* %__p, i32** %2, align 8
  store i64 %__n, i64* %3, align 8
  %4 = load %"class.std::allocator.10"*, %"class.std::allocator.10"** %1, align 8
  %5 = bitcast %"class.std::allocator.10"* %4 to %"class.__gnu_cxx::new_allocator.11"*
  %6 = load i32*, i32** %2, align 8
  %7 = load i64, i64* %3, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim(%"class.__gnu_cxx::new_allocator.11"* %5, i32* %6, i64 %7)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim(%"class.__gnu_cxx::new_allocator.11"* %this, i32* %__p, i64) #5 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.11"*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.11"* %this, %"class.__gnu_cxx::new_allocator.11"** %2, align 8
  store i32* %__p, i32** %3, align 8
  store i64 %0, i64* %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.11"*, %"class.__gnu_cxx::new_allocator.11"** %2, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = bitcast i32* %6 to i8*
  call void @_ZdlPv(i8* %7) #2
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(%"class.__gnu_cxx::__normal_iterator.60"* %this, i32** dereferenceable(8) %__i) unnamed_addr #5 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.60"*, align 8
  %2 = alloca i32**, align 8
  store %"class.__gnu_cxx::__normal_iterator.60"* %this, %"class.__gnu_cxx::__normal_iterator.60"** %1, align 8
  store i32** %__i, i32*** %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator.60"*, %"class.__gnu_cxx::__normal_iterator.60"** %1, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.60", %"class.__gnu_cxx::__normal_iterator.60"* %3, i32 0, i32 0
  %5 = load i32**, i32*** %2, align 8
  %6 = load i32*, i32** %5, align 8
  store i32* %6, i32** %4, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIiSaIiEED2Ev(%"struct.std::_Vector_base.19"* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %"struct.std::_Vector_base.19"*, align 8
  %2 = alloca i8*
  %3 = alloca i32
  store %"struct.std::_Vector_base.19"* %this, %"struct.std::_Vector_base.19"** %1, align 8
  %4 = load %"struct.std::_Vector_base.19"*, %"struct.std::_Vector_base.19"** %1, align 8
  %5 = getelementptr inbounds %"struct.std::_Vector_base.19", %"struct.std::_Vector_base.19"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds %"struct.std::_Vector_base.19", %"struct.std::_Vector_base.19"* %4, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds %"struct.std::_Vector_base.19", %"struct.std::_Vector_base.19"* %4, i32 0, i32 0
  %12 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = ptrtoint i32* %10 to i64
  %15 = ptrtoint i32* %13 to i64
  %16 = sub i64 %14, %15
  %17 = sdiv exact i64 %16, 4
  invoke void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%"struct.std::_Vector_base.19"* %4, i32* %7, i64 %17)
          to label %18 unwind label %20

; <label>:18                                      ; preds = %0
  %19 = getelementptr inbounds %"struct.std::_Vector_base.19", %"struct.std::_Vector_base.19"* %4, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev(%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %19) #2
  ret void

; <label>:20                                      ; preds = %0
  %21 = landingpad { i8*, i32 }
          cleanup
  %22 = extractvalue { i8*, i32 } %21, 0
  store i8* %22, i8** %2, align 8
  %23 = extractvalue { i8*, i32 } %21, 1
  store i32 %23, i32* %3, align 4
  %24 = getelementptr inbounds %"struct.std::_Vector_base.19", %"struct.std::_Vector_base.19"* %4, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev(%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %24) #2
  br label %25

; <label>:25                                      ; preds = %20
  %26 = load i8*, i8** %2, align 8
  %27 = load i32, i32* %3, align 4
  %28 = insertvalue { i8*, i32 } undef, i8* %26, 0
  %29 = insertvalue { i8*, i32 } %28, i32 %27, 1
  resume { i8*, i32 } %29
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev(%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this) unnamed_addr #10 comdat align 2 {
  %1 = alloca %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this, %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"** %1, align 8
  %2 = load %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"*, %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"** %1, align 8
  %3 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %2 to %"class.std::allocator.10"*
  call void @_ZNSaIiED2Ev(%"class.std::allocator.10"* %3) #2
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIiED2Ev(%"class.std::allocator.10"* %this) unnamed_addr #5 comdat align 2 {
  %1 = alloca %"class.std::allocator.10"*, align 8
  store %"class.std::allocator.10"* %this, %"class.std::allocator.10"** %1, align 8
  %2 = load %"class.std::allocator.10"*, %"class.std::allocator.10"** %1, align 8
  %3 = bitcast %"class.std::allocator.10"* %2 to %"class.__gnu_cxx::new_allocator.11"*
  call void @_ZN9__gnu_cxx13new_allocatorIiED2Ev(%"class.__gnu_cxx::new_allocator.11"* %3) #2
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIiED2Ev(%"class.__gnu_cxx::new_allocator.11"* %this) unnamed_addr #5 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.11"*, align 8
  store %"class.__gnu_cxx::new_allocator.11"* %this, %"class.__gnu_cxx::new_allocator.11"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.11"*, %"class.__gnu_cxx::new_allocator.11"** %1, align 8
  ret void
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_asap_c_wrapper.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nobuiltin "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { inlinehint uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noinline noreturn nounwind }
attributes #9 = { argmemonly nounwind }
attributes #10 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { builtin }
attributes #15 = { builtin nounwind }
attributes #16 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0-2ubuntu4 (tags/RELEASE_380/final)"}
