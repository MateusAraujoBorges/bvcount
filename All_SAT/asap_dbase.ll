; ModuleID = 'asap_dbase.cpp'
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
%"class.std::allocator.10" = type { i8 }
%"class.std::allocator.7" = type { i8 }
%"class.std::allocator" = type { i8 }
%"class.__gnu_cxx::__normal_iterator" = type { %class.CLitPoolElement** }
%"class.std::allocator.2" = type { i8 }
%"class.__gnu_cxx::__normal_iterator.17" = type { %class.CClause* }
%"class.__gnu_cxx::new_allocator.3" = type { i8 }
%"class.__gnu_cxx::new_allocator" = type { i8 }
%"class.__gnu_cxx::new_allocator.8" = type { i8 }
%"class.std::allocator.13" = type { i8 }
%"class.__gnu_cxx::new_allocator.11" = type { i8 }
%"class.__gnu_cxx::new_allocator.14" = type { i8 }
%"struct.std::_Deque_iterator.16" = type { i32*, i32*, i32*, i32** }

$_ZNSt6vectorI9CVariableSaIS0_EEC2Ev = comdat any

$_ZNSt6vectorI7CClauseSaIS0_EEC2Ev = comdat any

$_ZNSt5dequeIiSaIiEEC2Ev = comdat any

$_ZNSt5queueIiSt5dequeIiSaIiEEEC2ERKS2_ = comdat any

$_ZNSt5dequeIiSaIiEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN15CLitPoolElementC2Ev = comdat any

$_ZN9CDatabase18lit_pool_push_backEi = comdat any

$_ZNSt5queueIiSt5dequeIiSaIiEEED2Ev = comdat any

$_ZNSt6vectorI7CClauseSaIS0_EED2Ev = comdat any

$_ZNSt6vectorI9CVariableSaIS0_EED2Ev = comdat any

$_ZN9CDatabase13lit_pool_sizeEv = comdat any

$_ZN9CDatabase8lit_poolEi = comdat any

$_ZN15CLitPoolElement3valEv = comdat any

$_ZN9CDatabase14lit_pool_beginEv = comdat any

$_ZN9CDatabase9variablesEv = comdat any

$_ZNKSt6vectorI9CVariableSaIS0_EE4sizeEv = comdat any

$_ZN9CDatabase8variableEi = comdat any

$_ZN9CVariable6ht_ptrEi = comdat any

$_ZNSt6vectorIP15CLitPoolElementSaIS1_EE5clearEv = comdat any

$_ZN15CLitPoolElement5is_htEv = comdat any

$_ZN15CLitPoolElement9var_indexEv = comdat any

$_ZN15CLitPoolElement8var_signEv = comdat any

$_ZNSt6vectorIP15CLitPoolElementSaIS1_EE9push_backERKS1_ = comdat any

$_ZN9CDatabase6clauseEi = comdat any

$_ZN7CClause8num_litsEv = comdat any

$_ZN7CClause9first_litEv = comdat any

$_ZN9CDatabase11num_clausesEv = comdat any

$_ZN9CDatabase12num_literalsEv = comdat any

$_ZN9CDatabase18estimate_mem_usageEv = comdat any

$_ZN9CDatabase7clausesEv = comdat any

$_ZNKSt6vectorI7CClauseSaIS0_EE4sizeEv = comdat any

$_ZN7CClause6in_useEv = comdat any

$_ZNKSt6vectorIP15CLitPoolElementSaIS1_EE4sizeEv = comdat any

$_ZNSt6vectorIP15CLitPoolElementSaIS1_EEixEm = comdat any

$_ZN9CDatabase19lit_pool_free_spaceEv = comdat any

$_ZNKSt5queueIiSt5dequeIiSaIiEEE5emptyEv = comdat any

$_ZNSt6vectorI7CClauseSaIS0_EE6resizeEmS0_ = comdat any

$_ZN7CClauseC2Ev = comdat any

$_ZN7CClauseD2Ev = comdat any

$_ZNSt5queueIiSt5dequeIiSaIiEEE5frontEv = comdat any

$_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv = comdat any

$_ZN7CClause4initEP15CLitPoolElementi = comdat any

$_ZN9CDatabase12lit_pool_endEv = comdat any

$_ZN9CVariable10lits_countEi = comdat any

$_ZN9CDatabase13literal_valueE15CLitPoolElement = comdat any

$_ZN7CClause7literalEi = comdat any

$_ZN7CClause8literalsEv = comdat any

$_ZN9CVariable5valueEv = comdat any

$_ZN15CLitPoolElement6set_htEi = comdat any

$_ZN9CVariable6dlevelEv = comdat any

$_ZlsRSoR15CLitPoolElement = comdat any

$_ZlsRSoR9CVariable = comdat any

$_ZNSt6vectorI9CVariableSaIS0_EEixEm = comdat any

$_ZNSt6vectorI7CClauseSaIS0_EEixEm = comdat any

$_ZNKSt5queueIiSt5dequeIiSaIiEEE4sizeEv = comdat any

$_ZNKSt5dequeIiSaIiEE4sizeEv = comdat any

$_ZStmiIiRiPiENSt15_Deque_iteratorIT_T0_T1_E15difference_typeERKS6_S9_ = comdat any

$_ZNSt15_Deque_iteratorIiRiPiE14_S_buffer_sizeEv = comdat any

$_ZSt16__deque_buf_sizem = comdat any

$_ZNKSt6vectorI9CVariableSaIS0_EE8capacityEv = comdat any

$_ZNKSt6vectorI7CClauseSaIS0_EE8capacityEv = comdat any

$_ZN15CLitPoolElement4dumpERSo = comdat any

$_ZN9CVariable4dumpERSo = comdat any

$_ZN9CVariable9is_markedEv = comdat any

$_ZN15CLitPoolElement15find_clause_idxEv = comdat any

$_ZN15CLitPoolElement10is_literalEv = comdat any

$_ZN15CLitPoolElement16get_clause_indexEv = comdat any

$_ZSt8_DestroyIP9CVariableS0_EvT_S2_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseI9CVariableSaIS0_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseI9CVariableSaIS0_EED2Ev = comdat any

$_ZSt8_DestroyIP9CVariableEvT_S2_ = comdat any

$_ZNSt12_Destroy_auxILb0EE9__destroyIP9CVariableEEvT_S4_ = comdat any

$_ZSt8_DestroyI9CVariableEvPT_ = comdat any

$_ZSt11__addressofI9CVariableEPT_RS1_ = comdat any

$_ZN9CVariableD2Ev = comdat any

$_ZNSt6vectorIP15CLitPoolElementSaIS1_EED2Ev = comdat any

$_ZSt8_DestroyIPP15CLitPoolElementS1_EvT_S3_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIP15CLitPoolElementSaIS1_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIP15CLitPoolElementSaIS1_EED2Ev = comdat any

$_ZSt8_DestroyIPP15CLitPoolElementEvT_S3_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPP15CLitPoolElementEEvT_S5_ = comdat any

$_ZNSt12_Vector_baseIP15CLitPoolElementSaIS1_EE13_M_deallocateEPS1_m = comdat any

$_ZNSt12_Vector_baseIP15CLitPoolElementSaIS1_EE12_Vector_implD2Ev = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIP15CLitPoolElementEE10deallocateERS3_PS2_m = comdat any

$_ZN9__gnu_cxx13new_allocatorIP15CLitPoolElementE10deallocateEPS2_m = comdat any

$_ZNSaIP15CLitPoolElementED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIP15CLitPoolElementED2Ev = comdat any

$_ZNSt12_Vector_baseI9CVariableSaIS0_EE13_M_deallocateEPS0_m = comdat any

$_ZNSt12_Vector_baseI9CVariableSaIS0_EE12_Vector_implD2Ev = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaI9CVariableEE10deallocateERS2_PS1_m = comdat any

$_ZN9__gnu_cxx13new_allocatorI9CVariableE10deallocateEPS1_m = comdat any

$_ZNSaI9CVariableED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorI9CVariableED2Ev = comdat any

$_ZSt8_DestroyIP7CClauseS0_EvT_S2_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseI7CClauseSaIS0_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseI7CClauseSaIS0_EED2Ev = comdat any

$_ZSt8_DestroyIP7CClauseEvT_S2_ = comdat any

$_ZNSt12_Destroy_auxILb0EE9__destroyIP7CClauseEEvT_S4_ = comdat any

$_ZSt8_DestroyI7CClauseEvPT_ = comdat any

$_ZSt11__addressofI7CClauseEPT_RS1_ = comdat any

$_ZNSt12_Vector_baseI7CClauseSaIS0_EE13_M_deallocateEPS0_m = comdat any

$_ZNSt12_Vector_baseI7CClauseSaIS0_EE12_Vector_implD2Ev = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaI7CClauseEE10deallocateERS2_PS1_m = comdat any

$_ZN9__gnu_cxx13new_allocatorI7CClauseE10deallocateEPS1_m = comdat any

$_ZNSaI7CClauseED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorI7CClauseED2Ev = comdat any

$_ZNSt5dequeIiSaIiEE15_M_destroy_dataESt15_Deque_iteratorIiRiPiES5_RKS0_ = comdat any

$_ZNSt5dequeIiSaIiEE5beginEv = comdat any

$_ZNSt5dequeIiSaIiEE3endEv = comdat any

$_ZNSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt11_Deque_baseIiSaIiEED2Ev = comdat any

$_ZNSt15_Deque_iteratorIiRiPiEC2ERKS2_ = comdat any

$_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_ = comdat any

$_ZNSt11_Deque_baseIiSaIiEE17_M_deallocate_mapEPPim = comdat any

$_ZNSt11_Deque_baseIiSaIiEE11_Deque_implD2Ev = comdat any

$_ZNSt11_Deque_baseIiSaIiEE18_M_deallocate_nodeEPi = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIiEE10deallocateERS1_Pim = comdat any

$_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim = comdat any

$_ZNKSt11_Deque_baseIiSaIiEE20_M_get_map_allocatorEv = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIPiEE10deallocateERS2_PS1_m = comdat any

$_ZNSaIPiED2Ev = comdat any

$_ZNKSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv = comdat any

$_ZNSaIPiEC2IiEERKSaIT_E = comdat any

$_ZN9__gnu_cxx13new_allocatorIPiEC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIPiE10deallocateEPS1_m = comdat any

$_ZN9__gnu_cxx13new_allocatorIPiED2Ev = comdat any

$_ZNSaIiED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIiED2Ev = comdat any

$_ZNSt12_Vector_baseI9CVariableSaIS0_EEC2Ev = comdat any

$_ZNSt12_Vector_baseI9CVariableSaIS0_EE12_Vector_implC2Ev = comdat any

$_ZNSaI9CVariableEC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorI9CVariableEC2Ev = comdat any

$_ZNSt12_Vector_baseI7CClauseSaIS0_EEC2Ev = comdat any

$_ZNSt12_Vector_baseI7CClauseSaIS0_EE12_Vector_implC2Ev = comdat any

$_ZNSaI7CClauseEC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorI7CClauseEC2Ev = comdat any

$_ZNSt11_Deque_baseIiSaIiEEC2Ev = comdat any

$_ZNSt11_Deque_baseIiSaIiEE11_Deque_implC2Ev = comdat any

$_ZNSt11_Deque_baseIiSaIiEE17_M_initialize_mapEm = comdat any

$_ZNSaIiEC2Ev = comdat any

$_ZNSt15_Deque_iteratorIiRiPiEC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIiEC2Ev = comdat any

$_ZSt3maxImERKT_S2_S2_ = comdat any

$_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm = comdat any

$_ZNSt11_Deque_baseIiSaIiEE15_M_create_nodesEPPiS3_ = comdat any

$_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_ = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIPiEE8allocateERS2_m = comdat any

$_ZN9__gnu_cxx13new_allocatorIPiE8allocateEmPKv = comdat any

$_ZNK9__gnu_cxx13new_allocatorIPiE8max_sizeEv = comdat any

$_ZNSt11_Deque_baseIiSaIiEE16_M_allocate_nodeEv = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIiEE8allocateERS1_m = comdat any

$_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv = comdat any

$_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv = comdat any

$_ZNSt5dequeIiSaIiEEC2ERKS1_ = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIiEE17_S_select_on_copyERKS1_ = comdat any

$_ZNSt11_Deque_baseIiSaIiEEC2ERKS0_m = comdat any

$_ZSt22__uninitialized_copy_aISt15_Deque_iteratorIiRKiPS1_ES0_IiRiPiEiET0_T_S9_S8_RSaIT1_E = comdat any

$_ZNKSt5dequeIiSaIiEE5beginEv = comdat any

$_ZNKSt5dequeIiSaIiEE3endEv = comdat any

$_ZNSt11_Deque_baseIiSaIiEE11_Deque_implC2ERKS0_ = comdat any

$_ZNSaIiEC2ERKS_ = comdat any

$_ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_ = comdat any

$_ZSt18uninitialized_copyISt15_Deque_iteratorIiRKiPS1_ES0_IiRiPiEET0_T_S9_S8_ = comdat any

$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt15_Deque_iteratorIiRKiPS3_ES2_IiRiPiEEET0_T_SB_SA_ = comdat any

$_ZSt4copyISt15_Deque_iteratorIiRKiPS1_ES0_IiRiPiEET0_T_S9_S8_ = comdat any

$_ZSt14__copy_move_a2ILb0ESt15_Deque_iteratorIiRKiPS1_ES0_IiRiPiEET1_T0_S9_S8_ = comdat any

$_ZSt12__miter_baseISt15_Deque_iteratorIiRKiPS1_EENSt11_Miter_baseIT_E13iterator_typeES6_ = comdat any

$_ZSt13__copy_move_aILb0ESt15_Deque_iteratorIiRKiPS1_ES0_IiRiPiEET1_T0_S9_S8_ = comdat any

$_ZSt12__niter_baseISt15_Deque_iteratorIiRKiPS1_EENSt11_Niter_baseIT_E13iterator_typeES6_ = comdat any

$_ZSt12__niter_baseISt15_Deque_iteratorIiRiPiEENSt11_Niter_baseIT_E13iterator_typeES5_ = comdat any

$_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mISt15_Deque_iteratorIiRKiPS4_ES3_IiRiPiEEET0_T_SC_SB_ = comdat any

$_ZStmiIiRKiPS0_ENSt15_Deque_iteratorIT_T0_T1_E15difference_typeERKS7_SA_ = comdat any

$_ZNKSt15_Deque_iteratorIiRKiPS0_EdeEv = comdat any

$_ZNKSt15_Deque_iteratorIiRiPiEdeEv = comdat any

$_ZNSt15_Deque_iteratorIiRKiPS0_EppEv = comdat any

$_ZNSt15_Deque_iteratorIiRiPiEppEv = comdat any

$_ZNSt15_Deque_iteratorIiRKiPS0_E14_S_buffer_sizeEv = comdat any

$_ZNSt15_Deque_iteratorIiRKiPS0_E11_M_set_nodeEPPi = comdat any

$_ZNSt10_Iter_baseISt15_Deque_iteratorIiRKiPS1_ELb0EE7_S_baseES4_ = comdat any

$_ZNSt10_Iter_baseISt15_Deque_iteratorIiRiPiELb0EE7_S_baseES3_ = comdat any

$_ZNSt15_Deque_iteratorIiRKiPS0_EC2ERKS_IiRiPiE = comdat any

$_ZNSt6vectorIP15CLitPoolElementSaIS1_EE15_M_erase_at_endEPS1_ = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIP15CLitPoolElementEE9constructIS2_EEvRS3_PS2_RKT_ = comdat any

$_ZNSt6vectorIP15CLitPoolElementSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_ = comdat any

$_ZNSt6vectorIP15CLitPoolElementSaIS1_EE3endEv = comdat any

$_ZN9__gnu_cxx13new_allocatorIP15CLitPoolElementE9constructEPS2_RKS2_ = comdat any

$_ZSt13copy_backwardIPP15CLitPoolElementS2_ET0_T_S4_S3_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPP15CLitPoolElementSt6vectorIS2_SaIS2_EEE4baseEv = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPP15CLitPoolElementSt6vectorIS2_SaIS2_EEEdeEv = comdat any

$_ZNKSt6vectorIP15CLitPoolElementSaIS1_EE12_M_check_lenEmPKc = comdat any

$_ZN9__gnu_cxxmiIPP15CLitPoolElementSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_ = comdat any

$_ZNSt6vectorIP15CLitPoolElementSaIS1_EE5beginEv = comdat any

$_ZNSt12_Vector_baseIP15CLitPoolElementSaIS1_EE11_M_allocateEm = comdat any

$_ZSt34__uninitialized_move_if_noexcept_aIPP15CLitPoolElementS2_SaIS1_EET0_T_S5_S4_RT1_ = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIP15CLitPoolElementEE7destroyERS3_PS2_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EPP15CLitPoolElementS2_ET1_T0_S4_S3_ = comdat any

$_ZSt12__miter_baseIPP15CLitPoolElementENSt11_Miter_baseIT_E13iterator_typeES4_ = comdat any

$_ZSt22__copy_move_backward_aILb0EPP15CLitPoolElementS2_ET1_T0_S4_S3_ = comdat any

$_ZSt12__niter_baseIPP15CLitPoolElementENSt11_Niter_baseIT_E13iterator_typeES4_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIP15CLitPoolElementEEPT_PKS5_S8_S6_ = comdat any

$_ZNSt10_Iter_baseIPP15CLitPoolElementLb0EE7_S_baseES2_ = comdat any

$_ZNKSt6vectorIP15CLitPoolElementSaIS1_EE8max_sizeEv = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIP15CLitPoolElementEE8max_sizeERKS3_ = comdat any

$_ZNKSt12_Vector_baseIP15CLitPoolElementSaIS1_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNK9__gnu_cxx13new_allocatorIP15CLitPoolElementE8max_sizeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPP15CLitPoolElementSt6vectorIS2_SaIS2_EEEC2ERKS3_ = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIP15CLitPoolElementEE8allocateERS3_m = comdat any

$_ZN9__gnu_cxx13new_allocatorIP15CLitPoolElementE8allocateEmPKv = comdat any

$_ZSt22__uninitialized_copy_aIPP15CLitPoolElementS2_S1_ET0_T_S4_S3_RSaIT1_E = comdat any

$_ZSt18uninitialized_copyIPP15CLitPoolElementS2_ET0_T_S4_S3_ = comdat any

$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPP15CLitPoolElementS4_EET0_T_S6_S5_ = comdat any

$_ZSt4copyIPP15CLitPoolElementS2_ET0_T_S4_S3_ = comdat any

$_ZSt14__copy_move_a2ILb0EPP15CLitPoolElementS2_ET1_T0_S4_S3_ = comdat any

$_ZSt13__copy_move_aILb0EPP15CLitPoolElementS2_ET1_T0_S4_S3_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP15CLitPoolElementEEPT_PKS5_S8_S6_ = comdat any

$_ZN9__gnu_cxx13new_allocatorIP15CLitPoolElementE7destroyEPS2_ = comdat any

$_ZNKSt5dequeIiSaIiEE5emptyEv = comdat any

$_ZSteqIiRiPiEbRKSt15_Deque_iteratorIT_T0_T1_ES8_ = comdat any

$_ZNSt6vectorI7CClauseSaIS0_EE6insertEN9__gnu_cxx17__normal_iteratorIPS0_S2_EEmRKS0_ = comdat any

$_ZNSt6vectorI7CClauseSaIS0_EE3endEv = comdat any

$_ZNSt6vectorI7CClauseSaIS0_EE15_M_erase_at_endEPS0_ = comdat any

$_ZNSt6vectorI7CClauseSaIS0_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS0_S2_EEmRKS0_ = comdat any

$_ZN9__gnu_cxxmiIP7CClauseSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_ = comdat any

$_ZSt22__uninitialized_move_aIP7CClauseS1_SaIS0_EET0_T_S4_S3_RT1_ = comdat any

$_ZSt13copy_backwardIP7CClauseS1_ET0_T_S3_S2_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIP7CClauseSt6vectorIS1_SaIS1_EEE4baseEv = comdat any

$_ZSt4fillIP7CClauseS0_EvT_S2_RKT0_ = comdat any

$_ZSt24__uninitialized_fill_n_aIP7CClausemS0_S0_ET_S2_T0_RKT1_RSaIT2_E = comdat any

$_ZNKSt6vectorI7CClauseSaIS0_EE12_M_check_lenEmPKc = comdat any

$_ZNSt6vectorI7CClauseSaIS0_EE5beginEv = comdat any

$_ZNSt12_Vector_baseI7CClauseSaIS0_EE11_M_allocateEm = comdat any

$_ZSt34__uninitialized_move_if_noexcept_aIP7CClauseS1_SaIS0_EET0_T_S4_S3_RT1_ = comdat any

$_ZSt22__uninitialized_copy_aIP7CClauseS1_S0_ET0_T_S3_S2_RSaIT1_E = comdat any

$_ZSt18uninitialized_copyIP7CClauseS1_ET0_T_S3_S2_ = comdat any

$_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIP7CClauseS3_EET0_T_S5_S4_ = comdat any

$_ZSt10_ConstructI7CClauseS0_EvPT_RKT0_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EP7CClauseS1_ET1_T0_S3_S2_ = comdat any

$_ZSt12__miter_baseIP7CClauseENSt11_Miter_baseIT_E13iterator_typeES3_ = comdat any

$_ZSt22__copy_move_backward_aILb0EP7CClauseS1_ET1_T0_S3_S2_ = comdat any

$_ZSt12__niter_baseIP7CClauseENSt11_Niter_baseIT_E13iterator_typeES3_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIP7CClauseS4_EET0_T_S6_S5_ = comdat any

$_ZNSt10_Iter_baseIP7CClauseLb0EE7_S_baseES1_ = comdat any

$_ZSt8__fill_aIP7CClauseS0_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_S7_RKS4_ = comdat any

$_ZSt20uninitialized_fill_nIP7CClausemS0_ET_S2_T0_RKT1_ = comdat any

$_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIP7CClausemS2_EET_S4_T0_RKT1_ = comdat any

$_ZNKSt6vectorI7CClauseSaIS0_EE8max_sizeEv = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaI7CClauseEE8max_sizeERKS2_ = comdat any

$_ZNKSt12_Vector_baseI7CClauseSaIS0_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNK9__gnu_cxx13new_allocatorI7CClauseE8max_sizeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIP7CClauseSt6vectorIS1_SaIS1_EEEC2ERKS2_ = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaI7CClauseEE8allocateERS2_m = comdat any

$_ZN9__gnu_cxx13new_allocatorI7CClauseE8allocateEmPKv = comdat any

$_ZNSt5dequeIiSaIiEE5frontEv = comdat any

$_ZNSt5dequeIiSaIiEE9pop_frontEv = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIiEE7destroyERS1_Pi = comdat any

$_ZNSt5dequeIiSaIiEE16_M_pop_front_auxEv = comdat any

$_ZN9__gnu_cxx13new_allocatorIiE7destroyEPi = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external global i8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [18 x i8] c"Begin Compaction \00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Begin Enlarge Lit Pool\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"var_idx < variables().size()\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"asap_dbase.cpp\00", align 1
@__PRETTY_FUNCTION__._ZN9CDatabase10add_clauseEPii = private unnamed_addr constant [44 x i8] c"ClauseIdx CDatabase::add_clause(int *, int)\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"all_zero_lits || all_free_lits\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Lit_Pool Used \00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c" Free \00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c" Total \00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c" Num. Cl \00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c" Num. Lit \00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c" Efficiency \00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"Clause : \00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"\09\09\09======removed=====\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c">> \00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c")  \00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"Dump Database: \00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"VID: \00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.23 = private unnamed_addr constant [42 x i8] c"_lit_pool_finish <= _lit_pool_end_storage\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"./asap_dbase.h\00", align 1
@__PRETTY_FUNCTION__._ZN9CDatabase18lit_pool_push_backEi = private unnamed_addr constant [40 x i8] c"void CDatabase::lit_pool_push_back(int)\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c" -\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c" +\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"V: \00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"  DL: \00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"  Ante: \00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"Pos \00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"Neg \00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"vector::_M_insert_aux\00", align 1
@.str.36 = private unnamed_addr constant [23 x i8] c"vector::_M_fill_insert\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_asap_dbase.cpp, i8* null }]

@_ZN9CDatabaseC1Ev = alias void (%class.CDatabase*), void (%class.CDatabase*)* @_ZN9CDatabaseC2Ev

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
define void @_ZN9CDatabaseC2Ev(%class.CDatabase* %this) unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %class.CDatabase*, align 8
  %2 = alloca i8*
  %3 = alloca i32
  %4 = alloca %"class.std::deque", align 8
  store %class.CDatabase* %this, %class.CDatabase** %1, align 8
  %5 = load %class.CDatabase*, %class.CDatabase** %1, align 8
  %6 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %5, i32 0, i32 0
  %7 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %5, i32 0, i32 4
  call void @_ZNSt6vectorI9CVariableSaIS0_EEC2Ev(%"class.std::vector"* %7)
  %8 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %5, i32 0, i32 5
  invoke void @_ZNSt6vectorI7CClauseSaIS0_EEC2Ev(%"class.std::vector.5"* %8)
          to label %9 unwind label %50

; <label>:9                                       ; preds = %0
  %10 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %5, i32 0, i32 6
  invoke void @_ZNSt5dequeIiSaIiEEC2Ev(%"class.std::deque"* %4)
          to label %11 unwind label %54

; <label>:11                                      ; preds = %9
  invoke void @_ZNSt5queueIiSt5dequeIiSaIiEEEC2ERKS2_(%"class.std::queue"* %10, %"class.std::deque"* dereferenceable(80) %4)
          to label %12 unwind label %58

; <label>:12                                      ; preds = %11
  invoke void @_ZNSt5dequeIiSaIiEED2Ev(%"class.std::deque"* %4)
          to label %13 unwind label %54

; <label>:13                                      ; preds = %12
  %14 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %5, i32 0, i32 0
  %15 = getelementptr inbounds %struct.CDatabaseStats, %struct.CDatabaseStats* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %5, i32 0, i32 0
  %17 = getelementptr inbounds %struct.CDatabaseStats, %struct.CDatabaseStats* %16, i32 0, i32 1
  store i8 0, i8* %17, align 4
  %18 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %5, i32 0, i32 0
  %19 = getelementptr inbounds %struct.CDatabaseStats, %struct.CDatabaseStats* %18, i32 0, i32 2
  store i32 0, i32* %19, align 8
  %20 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %5, i32 0, i32 0
  %21 = getelementptr inbounds %struct.CDatabaseStats, %struct.CDatabaseStats* %20, i32 0, i32 3
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %5, i32 0, i32 0
  %23 = getelementptr inbounds %struct.CDatabaseStats, %struct.CDatabaseStats* %22, i32 0, i32 4
  store i32 0, i32* %23, align 8
  %24 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %5, i32 0, i32 0
  %25 = getelementptr inbounds %struct.CDatabaseStats, %struct.CDatabaseStats* %24, i32 0, i32 5
  store i32 0, i32* %25, align 4
  %26 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %5, i32 0, i32 0
  %27 = getelementptr inbounds %struct.CDatabaseStats, %struct.CDatabaseStats* %26, i32 0, i32 6
  store i32 0, i32* %27, align 8
  %28 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %5, i32 0, i32 0
  %29 = getelementptr inbounds %struct.CDatabaseStats, %struct.CDatabaseStats* %28, i32 0, i32 7
  store i32 0, i32* %29, align 4
  %30 = invoke noalias i8* @_Znam(i64 16384) #14
          to label %31 unwind label %63

; <label>:31                                      ; preds = %13
  %32 = bitcast i8* %30 to %class.CLitPoolElement*
  %33 = getelementptr inbounds %class.CLitPoolElement, %class.CLitPoolElement* %32, i64 4096
  br label %34

; <label>:34                                      ; preds = %36, %31
  %35 = phi %class.CLitPoolElement* [ %32, %31 ], [ %37, %36 ]
  invoke void @_ZN15CLitPoolElementC2Ev(%class.CLitPoolElement* %35)
          to label %36 unwind label %67

; <label>:36                                      ; preds = %34
  %37 = getelementptr inbounds %class.CLitPoolElement, %class.CLitPoolElement* %35, i64 1
  %38 = icmp eq %class.CLitPoolElement* %37, %33
  br i1 %38, label %39, label %34

; <label>:39                                      ; preds = %36
  %40 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %5, i32 0, i32 1
  store %class.CLitPoolElement* %32, %class.CLitPoolElement** %40, align 8
  %41 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %5, i32 0, i32 1
  %42 = load %class.CLitPoolElement*, %class.CLitPoolElement** %41, align 8
  %43 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %5, i32 0, i32 2
  store %class.CLitPoolElement* %42, %class.CLitPoolElement** %43, align 8
  %44 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %5, i32 0, i32 1
  %45 = load %class.CLitPoolElement*, %class.CLitPoolElement** %44, align 8
  %46 = getelementptr inbounds %class.CLitPoolElement, %class.CLitPoolElement* %45, i64 4096
  %47 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %5, i32 0, i32 3
  store %class.CLitPoolElement* %46, %class.CLitPoolElement** %47, align 8
  invoke void @_ZN9CDatabase18lit_pool_push_backEi(%class.CDatabase* %5, i32 0)
          to label %48 unwind label %63

; <label>:48                                      ; preds = %39
  %49 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %5, i32 0, i32 8
  store i32 536870912, i32* %49, align 4
  ret void

; <label>:50                                      ; preds = %0
  %51 = landingpad { i8*, i32 }
          cleanup
  %52 = extractvalue { i8*, i32 } %51, 0
  store i8* %52, i8** %2, align 8
  %53 = extractvalue { i8*, i32 } %51, 1
  store i32 %53, i32* %3, align 4
  br label %75

; <label>:54                                      ; preds = %12, %9
  %55 = landingpad { i8*, i32 }
          cleanup
  %56 = extractvalue { i8*, i32 } %55, 0
  store i8* %56, i8** %2, align 8
  %57 = extractvalue { i8*, i32 } %55, 1
  store i32 %57, i32* %3, align 4
  br label %73

; <label>:58                                      ; preds = %11
  %59 = landingpad { i8*, i32 }
          cleanup
  %60 = extractvalue { i8*, i32 } %59, 0
  store i8* %60, i8** %2, align 8
  %61 = extractvalue { i8*, i32 } %59, 1
  store i32 %61, i32* %3, align 4
  invoke void @_ZNSt5dequeIiSaIiEED2Ev(%"class.std::deque"* %4)
          to label %62 unwind label %82

; <label>:62                                      ; preds = %58
  br label %73

; <label>:63                                      ; preds = %39, %13
  %64 = landingpad { i8*, i32 }
          cleanup
  %65 = extractvalue { i8*, i32 } %64, 0
  store i8* %65, i8** %2, align 8
  %66 = extractvalue { i8*, i32 } %64, 1
  store i32 %66, i32* %3, align 4
  br label %71

; <label>:67                                      ; preds = %34
  %68 = landingpad { i8*, i32 }
          cleanup
  %69 = extractvalue { i8*, i32 } %68, 0
  store i8* %69, i8** %2, align 8
  %70 = extractvalue { i8*, i32 } %68, 1
  store i32 %70, i32* %3, align 4
  call void @_ZdaPv(i8* %30) #15
  br label %71

; <label>:71                                      ; preds = %67, %63
  invoke void @_ZNSt5queueIiSt5dequeIiSaIiEEED2Ev(%"class.std::queue"* %10)
          to label %72 unwind label %82

; <label>:72                                      ; preds = %71
  br label %73

; <label>:73                                      ; preds = %72, %62, %54
  invoke void @_ZNSt6vectorI7CClauseSaIS0_EED2Ev(%"class.std::vector.5"* %8)
          to label %74 unwind label %82

; <label>:74                                      ; preds = %73
  br label %75

; <label>:75                                      ; preds = %74, %50
  invoke void @_ZNSt6vectorI9CVariableSaIS0_EED2Ev(%"class.std::vector"* %7)
          to label %76 unwind label %82

; <label>:76                                      ; preds = %75
  br label %77

; <label>:77                                      ; preds = %76
  %78 = load i8*, i8** %2, align 8
  %79 = load i32, i32* %3, align 4
  %80 = insertvalue { i8*, i32 } undef, i8* %78, 0
  %81 = insertvalue { i8*, i32 } %80, i32 %79, 1
  resume { i8*, i32 } %81

; <label>:82                                      ; preds = %75, %73, %71, %58
  %83 = landingpad { i8*, i32 }
          catch i8* null
  %84 = extractvalue { i8*, i32 } %83, 0
  call void @__clang_call_terminate(i8* %84) #13
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorI9CVariableSaIS0_EEC2Ev(%"class.std::vector"* %this) unnamed_addr #0 comdat align 2 {
  %1 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 8
  %2 = load %"class.std::vector"*, %"class.std::vector"** %1, align 8
  %3 = bitcast %"class.std::vector"* %2 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseI9CVariableSaIS0_EEC2Ev(%"struct.std::_Vector_base"* %3)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorI7CClauseSaIS0_EEC2Ev(%"class.std::vector.5"* %this) unnamed_addr #0 comdat align 2 {
  %1 = alloca %"class.std::vector.5"*, align 8
  store %"class.std::vector.5"* %this, %"class.std::vector.5"** %1, align 8
  %2 = load %"class.std::vector.5"*, %"class.std::vector.5"** %1, align 8
  %3 = bitcast %"class.std::vector.5"* %2 to %"struct.std::_Vector_base.6"*
  call void @_ZNSt12_Vector_baseI7CClauseSaIS0_EEC2Ev(%"struct.std::_Vector_base.6"* %3)
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt5dequeIiSaIiEEC2Ev(%"class.std::deque"* %this) unnamed_addr #0 comdat align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  %2 = load %"class.std::deque"*, %"class.std::deque"** %1, align 8
  %3 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  call void @_ZNSt11_Deque_baseIiSaIiEEC2Ev(%"class.std::_Deque_base"* %3)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt5queueIiSt5dequeIiSaIiEEEC2ERKS2_(%"class.std::queue"* %this, %"class.std::deque"* dereferenceable(80) %__c) unnamed_addr #0 comdat align 2 {
  %1 = alloca %"class.std::queue"*, align 8
  %2 = alloca %"class.std::deque"*, align 8
  store %"class.std::queue"* %this, %"class.std::queue"** %1, align 8
  store %"class.std::deque"* %__c, %"class.std::deque"** %2, align 8
  %3 = load %"class.std::queue"*, %"class.std::queue"** %1, align 8
  %4 = getelementptr inbounds %"class.std::queue", %"class.std::queue"* %3, i32 0, i32 0
  %5 = load %"class.std::deque"*, %"class.std::deque"** %2, align 8
  call void @_ZNSt5dequeIiSaIiEEC2ERKS1_(%"class.std::deque"* %4, %"class.std::deque"* dereferenceable(80) %5)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt5dequeIiSaIiEED2Ev(%"class.std::deque"* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %"class.std::deque"*, align 8
  %2 = alloca %"struct.std::_Deque_iterator", align 8
  %3 = alloca i8*
  %4 = alloca i32
  %5 = alloca %"struct.std::_Deque_iterator", align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  %6 = load %"class.std::deque"*, %"class.std::deque"** %1, align 8
  invoke void @_ZNSt5dequeIiSaIiEE5beginEv(%"struct.std::_Deque_iterator"* sret %2, %"class.std::deque"* %6)
          to label %7 unwind label %14

; <label>:7                                       ; preds = %0
  invoke void @_ZNSt5dequeIiSaIiEE3endEv(%"struct.std::_Deque_iterator"* sret %5, %"class.std::deque"* %6)
          to label %8 unwind label %14

; <label>:8                                       ; preds = %7
  %9 = bitcast %"class.std::deque"* %6 to %"class.std::_Deque_base"*
  %10 = invoke dereferenceable(1) %"class.std::allocator.10"* @_ZNSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %9)
          to label %11 unwind label %14

; <label>:11                                      ; preds = %8
  invoke void @_ZNSt5dequeIiSaIiEE15_M_destroy_dataESt15_Deque_iteratorIiRiPiES5_RKS0_(%"class.std::deque"* %6, %"struct.std::_Deque_iterator"* %2, %"struct.std::_Deque_iterator"* %5, %"class.std::allocator.10"* dereferenceable(1) %10)
          to label %12 unwind label %14

; <label>:12                                      ; preds = %11
  %13 = bitcast %"class.std::deque"* %6 to %"class.std::_Deque_base"*
  call void @_ZNSt11_Deque_baseIiSaIiEED2Ev(%"class.std::_Deque_base"* %13)
  ret void

; <label>:14                                      ; preds = %11, %8, %7, %0
  %15 = landingpad { i8*, i32 }
          cleanup
  %16 = extractvalue { i8*, i32 } %15, 0
  store i8* %16, i8** %3, align 8
  %17 = extractvalue { i8*, i32 } %15, 1
  store i32 %17, i32* %4, align 4
  %18 = bitcast %"class.std::deque"* %6 to %"class.std::_Deque_base"*
  invoke void @_ZNSt11_Deque_baseIiSaIiEED2Ev(%"class.std::_Deque_base"* %18)
          to label %19 unwind label %25

; <label>:19                                      ; preds = %14
  br label %20

; <label>:20                                      ; preds = %19
  %21 = load i8*, i8** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = insertvalue { i8*, i32 } undef, i8* %21, 0
  %24 = insertvalue { i8*, i32 } %23, i32 %22, 1
  resume { i8*, i32 } %24

; <label>:25                                      ; preds = %14
  %26 = landingpad { i8*, i32 }
          catch i8* null
  %27 = extractvalue { i8*, i32 } %26, 0
  call void @__clang_call_terminate(i8* %27) #13
  unreachable
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) #3 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #2
  call void @_ZSt9terminatev() #13
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

; Function Attrs: nobuiltin
declare noalias i8* @_Znam(i64) #4

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN15CLitPoolElementC2Ev(%class.CLitPoolElement* %this) unnamed_addr #5 comdat align 2 {
  %1 = alloca %class.CLitPoolElement*, align 8
  store %class.CLitPoolElement* %this, %class.CLitPoolElement** %1, align 8
  %2 = load %class.CLitPoolElement*, %class.CLitPoolElement** %1, align 8
  %3 = getelementptr inbounds %class.CLitPoolElement, %class.CLitPoolElement* %2, i32 0, i32 0
  store i32 0, i32* %3, align 4
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(i8*) #6

; Function Attrs: uwtable
define linkonce_odr void @_ZN9CDatabase18lit_pool_push_backEi(%class.CDatabase* %this, i32 %value) #0 comdat align 2 {
  %1 = alloca %class.CDatabase*, align 8
  %2 = alloca i32, align 4
  store %class.CDatabase* %this, %class.CDatabase** %1, align 8
  store i32 %value, i32* %2, align 4
  %3 = load %class.CDatabase*, %class.CDatabase** %1, align 8
  %4 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %3, i32 0, i32 2
  %5 = load %class.CLitPoolElement*, %class.CLitPoolElement** %4, align 8
  %6 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %3, i32 0, i32 3
  %7 = load %class.CLitPoolElement*, %class.CLitPoolElement** %6, align 8
  %8 = icmp ule %class.CLitPoolElement* %5, %7
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %0
  br label %12

; <label>:10                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0), i32 152, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__._ZN9CDatabase18lit_pool_push_backEi, i32 0, i32 0)) #13
  unreachable
                                                  ; No predecessors!
  br label %12

; <label>:12                                      ; preds = %11, %9
  %13 = load i32, i32* %2, align 4
  %14 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %3, i32 0, i32 2
  %15 = load %class.CLitPoolElement*, %class.CLitPoolElement** %14, align 8
  %16 = call dereferenceable(4) i32* @_ZN15CLitPoolElement3valEv(%class.CLitPoolElement* %15)
  store i32 %13, i32* %16, align 4
  %17 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %3, i32 0, i32 2
  %18 = load %class.CLitPoolElement*, %class.CLitPoolElement** %17, align 8
  %19 = getelementptr inbounds %class.CLitPoolElement, %class.CLitPoolElement* %18, i32 1
  store %class.CLitPoolElement* %19, %class.CLitPoolElement** %17, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZNSt5queueIiSt5dequeIiSaIiEEED2Ev(%"class.std::queue"* %this) unnamed_addr #7 comdat align 2 {
  %1 = alloca %"class.std::queue"*, align 8
  store %"class.std::queue"* %this, %"class.std::queue"** %1, align 8
  %2 = load %"class.std::queue"*, %"class.std::queue"** %1, align 8
  %3 = getelementptr inbounds %"class.std::queue", %"class.std::queue"* %2, i32 0, i32 0
  call void @_ZNSt5dequeIiSaIiEED2Ev(%"class.std::deque"* %3)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorI7CClauseSaIS0_EED2Ev(%"class.std::vector.5"* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %"class.std::vector.5"*, align 8
  %2 = alloca i8*
  %3 = alloca i32
  store %"class.std::vector.5"* %this, %"class.std::vector.5"** %1, align 8
  %4 = load %"class.std::vector.5"*, %"class.std::vector.5"** %1, align 8
  %5 = bitcast %"class.std::vector.5"* %4 to %"struct.std::_Vector_base.6"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl", %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl"* %6, i32 0, i32 0
  %8 = load %class.CClause*, %class.CClause** %7, align 8
  %9 = bitcast %"class.std::vector.5"* %4 to %"struct.std::_Vector_base.6"*
  %10 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %9, i32 0, i32 0
  %11 = getelementptr inbounds %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl", %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl"* %10, i32 0, i32 1
  %12 = load %class.CClause*, %class.CClause** %11, align 8
  %13 = bitcast %"class.std::vector.5"* %4 to %"struct.std::_Vector_base.6"*
  %14 = invoke dereferenceable(1) %"class.std::allocator.7"* @_ZNSt12_Vector_baseI7CClauseSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.6"* %13)
          to label %15 unwind label %18

; <label>:15                                      ; preds = %0
  invoke void @_ZSt8_DestroyIP7CClauseS0_EvT_S2_RSaIT0_E(%class.CClause* %8, %class.CClause* %12, %"class.std::allocator.7"* dereferenceable(1) %14)
          to label %16 unwind label %18

; <label>:16                                      ; preds = %15
  %17 = bitcast %"class.std::vector.5"* %4 to %"struct.std::_Vector_base.6"*
  call void @_ZNSt12_Vector_baseI7CClauseSaIS0_EED2Ev(%"struct.std::_Vector_base.6"* %17)
  ret void

; <label>:18                                      ; preds = %15, %0
  %19 = landingpad { i8*, i32 }
          cleanup
  %20 = extractvalue { i8*, i32 } %19, 0
  store i8* %20, i8** %2, align 8
  %21 = extractvalue { i8*, i32 } %19, 1
  store i32 %21, i32* %3, align 4
  %22 = bitcast %"class.std::vector.5"* %4 to %"struct.std::_Vector_base.6"*
  invoke void @_ZNSt12_Vector_baseI7CClauseSaIS0_EED2Ev(%"struct.std::_Vector_base.6"* %22)
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
  call void @__clang_call_terminate(i8* %31) #13
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorI9CVariableSaIS0_EED2Ev(%"class.std::vector"* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %"class.std::vector"*, align 8
  %2 = alloca i8*
  %3 = alloca i32
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 8
  %4 = load %"class.std::vector"*, %"class.std::vector"** %1, align 8
  %5 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl", %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl"* %6, i32 0, i32 0
  %8 = load %class.CVariable*, %class.CVariable** %7, align 8
  %9 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*
  %10 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %9, i32 0, i32 0
  %11 = getelementptr inbounds %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl", %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl"* %10, i32 0, i32 1
  %12 = load %class.CVariable*, %class.CVariable** %11, align 8
  %13 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*
  %14 = invoke dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseI9CVariableSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %13)
          to label %15 unwind label %18

; <label>:15                                      ; preds = %0
  invoke void @_ZSt8_DestroyIP9CVariableS0_EvT_S2_RSaIT0_E(%class.CVariable* %8, %class.CVariable* %12, %"class.std::allocator"* dereferenceable(1) %14)
          to label %16 unwind label %18

; <label>:16                                      ; preds = %15
  %17 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseI9CVariableSaIS0_EED2Ev(%"struct.std::_Vector_base"* %17)
  ret void

; <label>:18                                      ; preds = %15, %0
  %19 = landingpad { i8*, i32 }
          cleanup
  %20 = extractvalue { i8*, i32 } %19, 0
  store i8* %20, i8** %2, align 8
  %21 = extractvalue { i8*, i32 } %19, 1
  store i32 %21, i32* %3, align 4
  %22 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*
  invoke void @_ZNSt12_Vector_baseI9CVariableSaIS0_EED2Ev(%"struct.std::_Vector_base"* %22)
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
  call void @__clang_call_terminate(i8* %31) #13
  unreachable
}

; Function Attrs: uwtable
define void @_ZN9CDatabase16compact_lit_poolEv(%class.CDatabase* %this) #0 align 2 {
  %1 = alloca %class.CDatabase*, align 8
  %new_index = alloca i32, align 4
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %var_idx = alloca i32, align 4
  %sign = alloca i32, align 4
  %2 = alloca %class.CLitPoolElement*, align 8
  %i3 = alloca i32, align 4
  %cls_idx = alloca i32, align 4
  store %class.CDatabase* %this, %class.CDatabase** %1, align 8
  %3 = load %class.CDatabase*, %class.CDatabase** %1, align 8
  %4 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0))
  %5 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %4, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  store i32 1, i32* %new_index, align 4
  store i32 1, i32* %i, align 4
  br label %6

; <label>:6                                       ; preds = %34, %0
  %7 = load i32, i32* %i, align 4
  %8 = call i32 @_ZN9CDatabase13lit_pool_sizeEv(%class.CDatabase* %3)
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %37

; <label>:10                                      ; preds = %6
  %11 = load i32, i32* %i, align 4
  %12 = call dereferenceable(4) %class.CLitPoolElement* @_ZN9CDatabase8lit_poolEi(%class.CDatabase* %3, i32 %11)
  %13 = call dereferenceable(4) i32* @_ZN15CLitPoolElement3valEv(%class.CLitPoolElement* %12)
  %14 = load i32, i32* %13, align 4
  %15 = icmp sle i32 %14, 0
  br i1 %15, label %16, label %24

; <label>:16                                      ; preds = %10
  %17 = load i32, i32* %i, align 4
  %18 = sub nsw i32 %17, 1
  %19 = call dereferenceable(4) %class.CLitPoolElement* @_ZN9CDatabase8lit_poolEi(%class.CDatabase* %3, i32 %18)
  %20 = call dereferenceable(4) i32* @_ZN15CLitPoolElement3valEv(%class.CLitPoolElement* %19)
  %21 = load i32, i32* %20, align 4
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %23, label %24

; <label>:23                                      ; preds = %16
  br label %34

; <label>:24                                      ; preds = %16, %10
  %25 = load i32, i32* %new_index, align 4
  %26 = call dereferenceable(4) %class.CLitPoolElement* @_ZN9CDatabase8lit_poolEi(%class.CDatabase* %3, i32 %25)
  %27 = load i32, i32* %i, align 4
  %28 = call dereferenceable(4) %class.CLitPoolElement* @_ZN9CDatabase8lit_poolEi(%class.CDatabase* %3, i32 %27)
  %29 = bitcast %class.CLitPoolElement* %26 to i8*
  %30 = bitcast %class.CLitPoolElement* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 4, i32 4, i1 false)
  %31 = load i32, i32* %new_index, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %new_index, align 4
  br label %33

; <label>:33                                      ; preds = %24
  br label %34

; <label>:34                                      ; preds = %33, %23
  %35 = load i32, i32* %i, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %i, align 4
  br label %6

; <label>:37                                      ; preds = %6
  %38 = call %class.CLitPoolElement* @_ZN9CDatabase14lit_pool_beginEv(%class.CDatabase* %3)
  %39 = load i32, i32* %new_index, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %class.CLitPoolElement, %class.CLitPoolElement* %38, i64 %40
  %42 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %3, i32 0, i32 2
  store %class.CLitPoolElement* %41, %class.CLitPoolElement** %42, align 8
  store i32 1, i32* %i1, align 4
  br label %43

; <label>:43                                      ; preds = %56, %37
  %44 = load i32, i32* %i1, align 4
  %45 = sext i32 %44 to i64
  %46 = call dereferenceable(24) %"class.std::vector"* @_ZN9CDatabase9variablesEv(%class.CDatabase* %3)
  %47 = call i64 @_ZNKSt6vectorI9CVariableSaIS0_EE4sizeEv(%"class.std::vector"* %46)
  %48 = icmp ult i64 %45, %47
  br i1 %48, label %49, label %59

; <label>:49                                      ; preds = %43
  %50 = load i32, i32* %i1, align 4
  %51 = call dereferenceable(80) %class.CVariable* @_ZN9CDatabase8variableEi(%class.CDatabase* %3, i32 %50)
  %52 = call dereferenceable(24) %"class.std::vector.0"* @_ZN9CVariable6ht_ptrEi(%class.CVariable* %51, i32 0)
  call void @_ZNSt6vectorIP15CLitPoolElementSaIS1_EE5clearEv(%"class.std::vector.0"* %52)
  %53 = load i32, i32* %i1, align 4
  %54 = call dereferenceable(80) %class.CVariable* @_ZN9CDatabase8variableEi(%class.CDatabase* %3, i32 %53)
  %55 = call dereferenceable(24) %"class.std::vector.0"* @_ZN9CVariable6ht_ptrEi(%class.CVariable* %54, i32 1)
  call void @_ZNSt6vectorIP15CLitPoolElementSaIS1_EE5clearEv(%"class.std::vector.0"* %55)
  br label %56

; <label>:56                                      ; preds = %49
  %57 = load i32, i32* %i1, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %i1, align 4
  br label %43

; <label>:59                                      ; preds = %43
  store i32 1, i32* %i2, align 4
  br label %60

; <label>:60                                      ; preds = %89, %59
  %61 = load i32, i32* %i2, align 4
  %62 = call i32 @_ZN9CDatabase13lit_pool_sizeEv(%class.CDatabase* %3)
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %64, label %92

; <label>:64                                      ; preds = %60
  %65 = load i32, i32* %i2, align 4
  %66 = call dereferenceable(4) %class.CLitPoolElement* @_ZN9CDatabase8lit_poolEi(%class.CDatabase* %3, i32 %65)
  %67 = call dereferenceable(4) i32* @_ZN15CLitPoolElement3valEv(%class.CLitPoolElement* %66)
  %68 = load i32, i32* %67, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %88

; <label>:70                                      ; preds = %64
  %71 = load i32, i32* %i2, align 4
  %72 = call dereferenceable(4) %class.CLitPoolElement* @_ZN9CDatabase8lit_poolEi(%class.CDatabase* %3, i32 %71)
  %73 = call zeroext i1 @_ZN15CLitPoolElement5is_htEv(%class.CLitPoolElement* %72)
  br i1 %73, label %74, label %88

; <label>:74                                      ; preds = %70
  %75 = load i32, i32* %i2, align 4
  %76 = call dereferenceable(4) %class.CLitPoolElement* @_ZN9CDatabase8lit_poolEi(%class.CDatabase* %3, i32 %75)
  %77 = call i32 @_ZN15CLitPoolElement9var_indexEv(%class.CLitPoolElement* %76)
  store i32 %77, i32* %var_idx, align 4
  %78 = load i32, i32* %i2, align 4
  %79 = call dereferenceable(4) %class.CLitPoolElement* @_ZN9CDatabase8lit_poolEi(%class.CDatabase* %3, i32 %78)
  %80 = call zeroext i1 @_ZN15CLitPoolElement8var_signEv(%class.CLitPoolElement* %79)
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %sign, align 4
  %82 = load i32, i32* %var_idx, align 4
  %83 = call dereferenceable(80) %class.CVariable* @_ZN9CDatabase8variableEi(%class.CDatabase* %3, i32 %82)
  %84 = load i32, i32* %sign, align 4
  %85 = call dereferenceable(24) %"class.std::vector.0"* @_ZN9CVariable6ht_ptrEi(%class.CVariable* %83, i32 %84)
  %86 = load i32, i32* %i2, align 4
  %87 = call dereferenceable(4) %class.CLitPoolElement* @_ZN9CDatabase8lit_poolEi(%class.CDatabase* %3, i32 %86)
  store %class.CLitPoolElement* %87, %class.CLitPoolElement** %2, align 8
  call void @_ZNSt6vectorIP15CLitPoolElementSaIS1_EE9push_backERKS1_(%"class.std::vector.0"* %85, %class.CLitPoolElement** dereferenceable(8) %2)
  br label %88

; <label>:88                                      ; preds = %74, %70, %64
  br label %89

; <label>:89                                      ; preds = %88
  %90 = load i32, i32* %i2, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %i2, align 4
  br label %60

; <label>:92                                      ; preds = %60
  store i32 1, i32* %i3, align 4
  br label %93

; <label>:93                                      ; preds = %122, %92
  %94 = load i32, i32* %i3, align 4
  %95 = call i32 @_ZN9CDatabase13lit_pool_sizeEv(%class.CDatabase* %3)
  %96 = icmp ult i32 %94, %95
  br i1 %96, label %97, label %125

; <label>:97                                      ; preds = %93
  %98 = load i32, i32* %i3, align 4
  %99 = call dereferenceable(4) %class.CLitPoolElement* @_ZN9CDatabase8lit_poolEi(%class.CDatabase* %3, i32 %98)
  %100 = call dereferenceable(4) i32* @_ZN15CLitPoolElement3valEv(%class.CLitPoolElement* %99)
  %101 = load i32, i32* %100, align 4
  %102 = icmp sle i32 %101, 0
  br i1 %102, label %103, label %121

; <label>:103                                     ; preds = %97
  %104 = load i32, i32* %i3, align 4
  %105 = call dereferenceable(4) %class.CLitPoolElement* @_ZN9CDatabase8lit_poolEi(%class.CDatabase* %3, i32 %104)
  %106 = call dereferenceable(4) i32* @_ZN15CLitPoolElement3valEv(%class.CLitPoolElement* %105)
  %107 = load i32, i32* %106, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %cls_idx, align 4
  %109 = load i32, i32* %i3, align 4
  %110 = call dereferenceable(4) %class.CLitPoolElement* @_ZN9CDatabase8lit_poolEi(%class.CDatabase* %3, i32 %109)
  %111 = load i32, i32* %cls_idx, align 4
  %112 = call dereferenceable(16) %class.CClause* @_ZN9CDatabase6clauseEi(%class.CDatabase* %3, i32 %111)
  %113 = call dereferenceable(4) i32* @_ZN7CClause8num_litsEv(%class.CClause* %112)
  %114 = load i32, i32* %113, align 4
  %115 = sext i32 %114 to i64
  %116 = sub i64 0, %115
  %117 = getelementptr inbounds %class.CLitPoolElement, %class.CLitPoolElement* %110, i64 %116
  %118 = load i32, i32* %cls_idx, align 4
  %119 = call dereferenceable(16) %class.CClause* @_ZN9CDatabase6clauseEi(%class.CDatabase* %3, i32 %118)
  %120 = call dereferenceable(8) %class.CLitPoolElement** @_ZN7CClause9first_litEv(%class.CClause* %119)
  store %class.CLitPoolElement* %117, %class.CLitPoolElement** %120, align 8
  br label %121

; <label>:121                                     ; preds = %103, %97
  br label %122

; <label>:122                                     ; preds = %121
  %123 = load i32, i32* %i3, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %i3, align 4
  br label %93

; <label>:125                                     ; preds = %93
  call void @_ZN9CDatabase21output_lit_pool_stateEv(%class.CDatabase* %3)
  %126 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* @_ZSt4cout, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %127 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %126, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret void
}

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #1

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"*, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*) #1

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272)) #1

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
define linkonce_odr dereferenceable(4) %class.CLitPoolElement* @_ZN9CDatabase8lit_poolEi(%class.CDatabase* %this, i32 %i) #5 comdat align 2 {
  %1 = alloca %class.CDatabase*, align 8
  %2 = alloca i32, align 4
  store %class.CDatabase* %this, %class.CDatabase** %1, align 8
  store i32 %i, i32* %2, align 4
  %3 = load %class.CDatabase*, %class.CDatabase** %1, align 8
  %4 = load i32, i32* %2, align 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %3, i32 0, i32 1
  %7 = load %class.CLitPoolElement*, %class.CLitPoolElement** %6, align 8
  %8 = getelementptr inbounds %class.CLitPoolElement, %class.CLitPoolElement* %7, i64 %5
  ret %class.CLitPoolElement* %8
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(4) i32* @_ZN15CLitPoolElement3valEv(%class.CLitPoolElement* %this) #5 comdat align 2 {
  %1 = alloca %class.CLitPoolElement*, align 8
  store %class.CLitPoolElement* %this, %class.CLitPoolElement** %1, align 8
  %2 = load %class.CLitPoolElement*, %class.CLitPoolElement** %1, align 8
  %3 = getelementptr inbounds %class.CLitPoolElement, %class.CLitPoolElement* %2, i32 0, i32 0
  ret i32* %3
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #8

; Function Attrs: nounwind uwtable
define linkonce_odr %class.CLitPoolElement* @_ZN9CDatabase14lit_pool_beginEv(%class.CDatabase* %this) #5 comdat align 2 {
  %1 = alloca %class.CDatabase*, align 8
  store %class.CDatabase* %this, %class.CDatabase** %1, align 8
  %2 = load %class.CDatabase*, %class.CDatabase** %1, align 8
  %3 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %2, i32 0, i32 1
  %4 = load %class.CLitPoolElement*, %class.CLitPoolElement** %3, align 8
  ret %class.CLitPoolElement* %4
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
define linkonce_odr dereferenceable(24) %"class.std::vector.0"* @_ZN9CVariable6ht_ptrEi(%class.CVariable* %this, i32 %i) #5 comdat align 2 {
  %1 = alloca %class.CVariable*, align 8
  %2 = alloca i32, align 4
  store %class.CVariable* %this, %class.CVariable** %1, align 8
  store i32 %i, i32* %2, align 4
  %3 = load %class.CVariable*, %class.CVariable** %1, align 8
  %4 = load i32, i32* %2, align 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds %class.CVariable, %class.CVariable* %3, i32 0, i32 3
  %7 = getelementptr inbounds [2 x %"class.std::vector.0"], [2 x %"class.std::vector.0"]* %6, i64 0, i64 %5
  ret %"class.std::vector.0"* %7
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIP15CLitPoolElementSaIS1_EE5clearEv(%"class.std::vector.0"* %this) #0 comdat align 2 {
  %1 = alloca %"class.std::vector.0"*, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %1, align 8
  %2 = load %"class.std::vector.0"*, %"class.std::vector.0"** %1, align 8
  %3 = bitcast %"class.std::vector.0"* %2 to %"struct.std::_Vector_base.1"*
  %4 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %4, i32 0, i32 0
  %6 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %5, align 8
  call void @_ZNSt6vectorIP15CLitPoolElementSaIS1_EE15_M_erase_at_endEPS1_(%"class.std::vector.0"* %2, %class.CLitPoolElement** %6)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr zeroext i1 @_ZN15CLitPoolElement5is_htEv(%class.CLitPoolElement* %this) #5 comdat align 2 {
  %1 = alloca %class.CLitPoolElement*, align 8
  store %class.CLitPoolElement* %this, %class.CLitPoolElement** %1, align 8
  %2 = load %class.CLitPoolElement*, %class.CLitPoolElement** %1, align 8
  %3 = getelementptr inbounds %class.CLitPoolElement, %class.CLitPoolElement* %2, i32 0, i32 0
  %4 = load i32, i32* %3, align 4
  %5 = and i32 %4, 3
  %6 = icmp ne i32 %5, 0
  ret i1 %6
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32 @_ZN15CLitPoolElement9var_indexEv(%class.CLitPoolElement* %this) #5 comdat align 2 {
  %1 = alloca %class.CLitPoolElement*, align 8
  store %class.CLitPoolElement* %this, %class.CLitPoolElement** %1, align 8
  %2 = load %class.CLitPoolElement*, %class.CLitPoolElement** %1, align 8
  %3 = getelementptr inbounds %class.CLitPoolElement, %class.CLitPoolElement* %2, i32 0, i32 0
  %4 = load i32, i32* %3, align 4
  %5 = ashr i32 %4, 3
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define linkonce_odr zeroext i1 @_ZN15CLitPoolElement8var_signEv(%class.CLitPoolElement* %this) #5 comdat align 2 {
  %1 = alloca %class.CLitPoolElement*, align 8
  store %class.CLitPoolElement* %this, %class.CLitPoolElement** %1, align 8
  %2 = load %class.CLitPoolElement*, %class.CLitPoolElement** %1, align 8
  %3 = getelementptr inbounds %class.CLitPoolElement, %class.CLitPoolElement* %2, i32 0, i32 0
  %4 = load i32, i32* %3, align 4
  %5 = ashr i32 %4, 2
  %6 = and i32 %5, 1
  %7 = icmp ne i32 %6, 0
  ret i1 %7
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIP15CLitPoolElementSaIS1_EE9push_backERKS1_(%"class.std::vector.0"* %this, %class.CLitPoolElement** dereferenceable(8) %__x) #0 comdat align 2 {
  %1 = alloca %"class.std::vector.0"*, align 8
  %2 = alloca %class.CLitPoolElement**, align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %1, align 8
  store %class.CLitPoolElement** %__x, %class.CLitPoolElement*** %2, align 8
  %4 = load %"class.std::vector.0"*, %"class.std::vector.0"** %1, align 8
  %5 = bitcast %"class.std::vector.0"* %4 to %"struct.std::_Vector_base.1"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %6, i32 0, i32 1
  %8 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %7, align 8
  %9 = bitcast %"class.std::vector.0"* %4 to %"struct.std::_Vector_base.1"*
  %10 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %9, i32 0, i32 0
  %11 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %10, i32 0, i32 2
  %12 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %11, align 8
  %13 = icmp ne %class.CLitPoolElement** %8, %12
  br i1 %13, label %14, label %28

; <label>:14                                      ; preds = %0
  %15 = bitcast %"class.std::vector.0"* %4 to %"struct.std::_Vector_base.1"*
  %16 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %15, i32 0, i32 0
  %17 = bitcast %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %16 to %"class.std::allocator.2"*
  %18 = bitcast %"class.std::vector.0"* %4 to %"struct.std::_Vector_base.1"*
  %19 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %18, i32 0, i32 0
  %20 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %19, i32 0, i32 1
  %21 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %20, align 8
  %22 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %2, align 8
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIP15CLitPoolElementEE9constructIS2_EEvRS3_PS2_RKT_(%"class.std::allocator.2"* dereferenceable(1) %17, %class.CLitPoolElement** %21, %class.CLitPoolElement** dereferenceable(8) %22)
  %23 = bitcast %"class.std::vector.0"* %4 to %"struct.std::_Vector_base.1"*
  %24 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %23, i32 0, i32 0
  %25 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %24, i32 0, i32 1
  %26 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %25, align 8
  %27 = getelementptr inbounds %class.CLitPoolElement*, %class.CLitPoolElement** %26, i32 1
  store %class.CLitPoolElement** %27, %class.CLitPoolElement*** %25, align 8
  br label %34

; <label>:28                                      ; preds = %0
  %29 = call %class.CLitPoolElement** @_ZNSt6vectorIP15CLitPoolElementSaIS1_EE3endEv(%"class.std::vector.0"* %4)
  %30 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %3, i32 0, i32 0
  store %class.CLitPoolElement** %29, %class.CLitPoolElement*** %30, align 8
  %31 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %2, align 8
  %32 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %3, i32 0, i32 0
  %33 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %32, align 8
  call void @_ZNSt6vectorIP15CLitPoolElementSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_(%"class.std::vector.0"* %4, %class.CLitPoolElement** %33, %class.CLitPoolElement** dereferenceable(8) %31)
  br label %34

; <label>:34                                      ; preds = %28, %14
  ret void
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
define linkonce_odr dereferenceable(4) i32* @_ZN7CClause8num_litsEv(%class.CClause* %this) #5 comdat align 2 {
  %1 = alloca %class.CClause*, align 8
  store %class.CClause* %this, %class.CClause** %1, align 8
  %2 = load %class.CClause*, %class.CClause** %1, align 8
  %3 = getelementptr inbounds %class.CClause, %class.CClause* %2, i32 0, i32 1
  ret i32* %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(8) %class.CLitPoolElement** @_ZN7CClause9first_litEv(%class.CClause* %this) #5 comdat align 2 {
  %1 = alloca %class.CClause*, align 8
  store %class.CClause* %this, %class.CClause** %1, align 8
  %2 = load %class.CClause*, %class.CClause** %1, align 8
  %3 = getelementptr inbounds %class.CClause, %class.CClause* %2, i32 0, i32 0
  ret %class.CLitPoolElement** %3
}

; Function Attrs: uwtable
define void @_ZN9CDatabase21output_lit_pool_stateEv(%class.CDatabase* %this) #0 align 2 {
  %1 = alloca %class.CDatabase*, align 8
  store %class.CDatabase* %this, %class.CDatabase** %1, align 8
  %2 = load %class.CDatabase*, %class.CDatabase** %1, align 8
  %3 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0))
  %4 = call i32 @_ZN9CDatabase13lit_pool_sizeEv(%class.CDatabase* %2)
  %5 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEj(%"class.std::basic_ostream"* %3, i32 %4)
  %6 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0))
  %7 = call i32 @_ZN9CDatabase19lit_pool_free_spaceEv(%class.CDatabase* %2)
  %8 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEj(%"class.std::basic_ostream"* %6, i32 %7)
  %9 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0))
  %10 = call i32 @_ZN9CDatabase13lit_pool_sizeEv(%class.CDatabase* %2)
  %11 = call i32 @_ZN9CDatabase19lit_pool_free_spaceEv(%class.CDatabase* %2)
  %12 = add i32 %10, %11
  %13 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEj(%"class.std::basic_ostream"* %9, i32 %12)
  %14 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0))
  %15 = call i32 @_ZN9CDatabase11num_clausesEv(%class.CDatabase* %2)
  %16 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %14, i32 %15)
  %17 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0))
  %18 = call i32 @_ZN9CDatabase12num_literalsEv(%class.CDatabase* %2)
  %19 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %17, i32 %18)
  %20 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0))
  %21 = call i32 @_ZN9CDatabase12num_literalsEv(%class.CDatabase* %2)
  %22 = sitofp i32 %21 to float
  %23 = call i32 @_ZN9CDatabase13lit_pool_sizeEv(%class.CDatabase* %2)
  %24 = call i32 @_ZN9CDatabase11num_clausesEv(%class.CDatabase* %2)
  %25 = sub i32 %23, %24
  %26 = uitofp i32 %25 to float
  %27 = fdiv float %22, %26
  %28 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEf(%"class.std::basic_ostream"* %20, float %27)
  %29 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %28, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret void
}

; Function Attrs: uwtable
define zeroext i1 @_ZN9CDatabase16enlarge_lit_poolEv(%class.CDatabase* %this) #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca i1, align 1
  %2 = alloca %class.CDatabase*, align 8
  %current_mem = alloca i32, align 4
  %grow_ratio = alloca float, align 4
  %old_start = alloca %class.CLitPoolElement*, align 8
  %old_finish = alloca %class.CLitPoolElement*, align 8
  %old_size = alloca i32, align 4
  %new_size = alloca i32, align 4
  %3 = alloca i8*
  %4 = alloca i32
  %ptr = alloca %class.CLitPoolElement*, align 8
  %displacement = alloca i32, align 4
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  %v = alloca %class.CVariable*, align 8
  %j = alloca i32, align 4
  %ht_ptr = alloca %"class.std::vector.0"*, align 8
  %k = alloca i32, align 4
  store %class.CDatabase* %this, %class.CDatabase** %2, align 8
  %5 = load %class.CDatabase*, %class.CDatabase** %2, align 8
  call void @_ZN9CDatabase21output_lit_pool_stateEv(%class.CDatabase* %5)
  %6 = call i32 @_ZN9CDatabase13lit_pool_sizeEv(%class.CDatabase* %5)
  %7 = call i32 @_ZN9CDatabase11num_clausesEv(%class.CDatabase* %5)
  %8 = sub i32 %6, %7
  %9 = call i32 @_ZN9CDatabase12num_literalsEv(%class.CDatabase* %5)
  %10 = mul nsw i32 %9, 2
  %11 = icmp ugt i32 %8, %10
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %0
  call void @_ZN9CDatabase16compact_lit_poolEv(%class.CDatabase* %5)
  store i1 true, i1* %1, align 1
  br label %197

; <label>:13                                      ; preds = %0
  %14 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0))
  %15 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %14, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %16 = call i32 @_ZN9CDatabase18estimate_mem_usageEv(%class.CDatabase* %5)
  store i32 %16, i32* %current_mem, align 4
  %17 = load i32, i32* %current_mem, align 4
  %18 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %5, i32 0, i32 8
  %19 = load i32, i32* %18, align 4
  %20 = udiv i32 %19, 2
  %21 = icmp ult i32 %17, %20
  br i1 %21, label %22, label %23

; <label>:22                                      ; preds = %13
  store float 2.000000e+00, float* %grow_ratio, align 4
  br label %46

; <label>:23                                      ; preds = %13
  %24 = load i32, i32* %current_mem, align 4
  %25 = uitofp i32 %24 to double
  %26 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %5, i32 0, i32 8
  %27 = load i32, i32* %26, align 4
  %28 = uitofp i32 %27 to double
  %29 = fmul double %28, 8.000000e-01
  %30 = fcmp olt double %25, %29
  br i1 %30, label %31, label %32

; <label>:31                                      ; preds = %23
  store float 0x3FF3333340000000, float* %grow_ratio, align 4
  br label %45

; <label>:32                                      ; preds = %23
  %33 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %5, i32 0, i32 0
  %34 = getelementptr inbounds %struct.CDatabaseStats, %struct.CDatabaseStats* %33, i32 0, i32 1
  store i8 1, i8* %34, align 4
  %35 = call i32 @_ZN9CDatabase13lit_pool_sizeEv(%class.CDatabase* %5)
  %36 = call i32 @_ZN9CDatabase11num_clausesEv(%class.CDatabase* %5)
  %37 = sub i32 %35, %36
  %38 = uitofp i32 %37 to double
  %39 = call i32 @_ZN9CDatabase12num_literalsEv(%class.CDatabase* %5)
  %40 = sitofp i32 %39 to double
  %41 = fmul double %40, 1.100000e+00
  %42 = fcmp ogt double %38, %41
  br i1 %42, label %43, label %44

; <label>:43                                      ; preds = %32
  call void @_ZN9CDatabase16compact_lit_poolEv(%class.CDatabase* %5)
  store i1 true, i1* %1, align 1
  br label %197

; <label>:44                                      ; preds = %32
  store i1 false, i1* %1, align 1
  br label %197

; <label>:45                                      ; preds = %31
  br label %46

; <label>:46                                      ; preds = %45, %22
  %47 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %5, i32 0, i32 1
  %48 = load %class.CLitPoolElement*, %class.CLitPoolElement** %47, align 8
  store %class.CLitPoolElement* %48, %class.CLitPoolElement** %old_start, align 8
  %49 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %5, i32 0, i32 2
  %50 = load %class.CLitPoolElement*, %class.CLitPoolElement** %49, align 8
  store %class.CLitPoolElement* %50, %class.CLitPoolElement** %old_finish, align 8
  %51 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %5, i32 0, i32 3
  %52 = load %class.CLitPoolElement*, %class.CLitPoolElement** %51, align 8
  %53 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %5, i32 0, i32 1
  %54 = load %class.CLitPoolElement*, %class.CLitPoolElement** %53, align 8
  %55 = ptrtoint %class.CLitPoolElement* %52 to i64
  %56 = ptrtoint %class.CLitPoolElement* %54 to i64
  %57 = sub i64 %55, %56
  %58 = sdiv exact i64 %57, 4
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %old_size, align 4
  %60 = load i32, i32* %old_size, align 4
  %61 = sitofp i32 %60 to float
  %62 = load float, float* %grow_ratio, align 4
  %63 = fmul float %61, %62
  %64 = fptosi float %63 to i32
  store i32 %64, i32* %new_size, align 4
  %65 = load i32, i32* %new_size, align 4
  %66 = sext i32 %65 to i64
  %67 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %66, i64 4)
  %68 = extractvalue { i64, i1 } %67, 1
  %69 = extractvalue { i64, i1 } %67, 0
  %70 = select i1 %68, i64 -1, i64 %69
  %71 = call noalias i8* @_Znam(i64 %70) #14
  %72 = bitcast i8* %71 to %class.CLitPoolElement*
  %73 = icmp eq i64 %66, 0
  br i1 %73, label %81, label %74

; <label>:74                                      ; preds = %46
  %75 = getelementptr inbounds %class.CLitPoolElement, %class.CLitPoolElement* %72, i64 %66
  br label %76

; <label>:76                                      ; preds = %78, %74
  %77 = phi %class.CLitPoolElement* [ %72, %74 ], [ %79, %78 ]
  invoke void @_ZN15CLitPoolElementC2Ev(%class.CLitPoolElement* %77)
          to label %78 unwind label %109

; <label>:78                                      ; preds = %76
  %79 = getelementptr inbounds %class.CLitPoolElement, %class.CLitPoolElement* %77, i64 1
  %80 = icmp eq %class.CLitPoolElement* %79, %75
  br i1 %80, label %81, label %76

; <label>:81                                      ; preds = %46, %78
  %82 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %5, i32 0, i32 1
  store %class.CLitPoolElement* %72, %class.CLitPoolElement** %82, align 8
  %83 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %5, i32 0, i32 1
  %84 = load %class.CLitPoolElement*, %class.CLitPoolElement** %83, align 8
  %85 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %5, i32 0, i32 2
  store %class.CLitPoolElement* %84, %class.CLitPoolElement** %85, align 8
  %86 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %5, i32 0, i32 1
  %87 = load %class.CLitPoolElement*, %class.CLitPoolElement** %86, align 8
  %88 = load i32, i32* %new_size, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %class.CLitPoolElement, %class.CLitPoolElement* %87, i64 %89
  %91 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %5, i32 0, i32 3
  store %class.CLitPoolElement* %90, %class.CLitPoolElement** %91, align 8
  %92 = load %class.CLitPoolElement*, %class.CLitPoolElement** %old_start, align 8
  store %class.CLitPoolElement* %92, %class.CLitPoolElement** %ptr, align 8
  br label %93

; <label>:93                                      ; preds = %106, %81
  %94 = load %class.CLitPoolElement*, %class.CLitPoolElement** %ptr, align 8
  %95 = load %class.CLitPoolElement*, %class.CLitPoolElement** %old_finish, align 8
  %96 = icmp ne %class.CLitPoolElement* %94, %95
  br i1 %96, label %97, label %113

; <label>:97                                      ; preds = %93
  %98 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %5, i32 0, i32 2
  %99 = load %class.CLitPoolElement*, %class.CLitPoolElement** %98, align 8
  %100 = load %class.CLitPoolElement*, %class.CLitPoolElement** %ptr, align 8
  %101 = bitcast %class.CLitPoolElement* %99 to i8*
  %102 = bitcast %class.CLitPoolElement* %100 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %101, i8* %102, i64 4, i32 4, i1 false)
  %103 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %5, i32 0, i32 2
  %104 = load %class.CLitPoolElement*, %class.CLitPoolElement** %103, align 8
  %105 = getelementptr inbounds %class.CLitPoolElement, %class.CLitPoolElement* %104, i32 1
  store %class.CLitPoolElement* %105, %class.CLitPoolElement** %103, align 8
  br label %106

; <label>:106                                     ; preds = %97
  %107 = load %class.CLitPoolElement*, %class.CLitPoolElement** %ptr, align 8
  %108 = getelementptr inbounds %class.CLitPoolElement, %class.CLitPoolElement* %107, i32 1
  store %class.CLitPoolElement* %108, %class.CLitPoolElement** %ptr, align 8
  br label %93

; <label>:109                                     ; preds = %76
  %110 = landingpad { i8*, i32 }
          cleanup
  %111 = extractvalue { i8*, i32 } %110, 0
  store i8* %111, i8** %3, align 8
  %112 = extractvalue { i8*, i32 } %110, 1
  store i32 %112, i32* %4, align 4
  call void @_ZdaPv(i8* %71) #15
  br label %199

; <label>:113                                     ; preds = %93
  %114 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %5, i32 0, i32 1
  %115 = load %class.CLitPoolElement*, %class.CLitPoolElement** %114, align 8
  %116 = load %class.CLitPoolElement*, %class.CLitPoolElement** %old_start, align 8
  %117 = ptrtoint %class.CLitPoolElement* %115 to i64
  %118 = ptrtoint %class.CLitPoolElement* %116 to i64
  %119 = sub i64 %117, %118
  %120 = sdiv exact i64 %119, 4
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %displacement, align 4
  store i32 0, i32* %i, align 4
  br label %122

; <label>:122                                     ; preds = %143, %113
  %123 = load i32, i32* %i, align 4
  %124 = sext i32 %123 to i64
  %125 = call dereferenceable(24) %"class.std::vector.5"* @_ZN9CDatabase7clausesEv(%class.CDatabase* %5)
  %126 = call i64 @_ZNKSt6vectorI7CClauseSaIS0_EE4sizeEv(%"class.std::vector.5"* %125)
  %127 = icmp ult i64 %124, %126
  br i1 %127, label %128, label %146

; <label>:128                                     ; preds = %122
  %129 = load i32, i32* %i, align 4
  %130 = call dereferenceable(16) %class.CClause* @_ZN9CDatabase6clauseEi(%class.CDatabase* %5, i32 %129)
  %131 = call dereferenceable(1) i8* @_ZN7CClause6in_useEv(%class.CClause* %130)
  %132 = load i8, i8* %131, align 1
  %133 = trunc i8 %132 to i1
  br i1 %133, label %134, label %142

; <label>:134                                     ; preds = %128
  %135 = load i32, i32* %displacement, align 4
  %136 = load i32, i32* %i, align 4
  %137 = call dereferenceable(16) %class.CClause* @_ZN9CDatabase6clauseEi(%class.CDatabase* %5, i32 %136)
  %138 = call dereferenceable(8) %class.CLitPoolElement** @_ZN7CClause9first_litEv(%class.CClause* %137)
  %139 = load %class.CLitPoolElement*, %class.CLitPoolElement** %138, align 8
  %140 = sext i32 %135 to i64
  %141 = getelementptr inbounds %class.CLitPoolElement, %class.CLitPoolElement* %139, i64 %140
  store %class.CLitPoolElement* %141, %class.CLitPoolElement** %138, align 8
  br label %142

; <label>:142                                     ; preds = %134, %128
  br label %143

; <label>:143                                     ; preds = %142
  %144 = load i32, i32* %i, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %i, align 4
  br label %122

; <label>:146                                     ; preds = %122
  store i32 0, i32* %i1, align 4
  br label %147

; <label>:147                                     ; preds = %186, %146
  %148 = load i32, i32* %i1, align 4
  %149 = sext i32 %148 to i64
  %150 = call dereferenceable(24) %"class.std::vector"* @_ZN9CDatabase9variablesEv(%class.CDatabase* %5)
  %151 = call i64 @_ZNKSt6vectorI9CVariableSaIS0_EE4sizeEv(%"class.std::vector"* %150)
  %152 = icmp ult i64 %149, %151
  br i1 %152, label %153, label %189

; <label>:153                                     ; preds = %147
  %154 = load i32, i32* %i1, align 4
  %155 = call dereferenceable(80) %class.CVariable* @_ZN9CDatabase8variableEi(%class.CDatabase* %5, i32 %154)
  store %class.CVariable* %155, %class.CVariable** %v, align 8
  store i32 0, i32* %j, align 4
  br label %156

; <label>:156                                     ; preds = %182, %153
  %157 = load i32, i32* %j, align 4
  %158 = icmp slt i32 %157, 2
  br i1 %158, label %159, label %185

; <label>:159                                     ; preds = %156
  %160 = load %class.CVariable*, %class.CVariable** %v, align 8
  %161 = load i32, i32* %j, align 4
  %162 = call dereferenceable(24) %"class.std::vector.0"* @_ZN9CVariable6ht_ptrEi(%class.CVariable* %160, i32 %161)
  store %"class.std::vector.0"* %162, %"class.std::vector.0"** %ht_ptr, align 8
  store i32 0, i32* %k, align 4
  br label %163

; <label>:163                                     ; preds = %178, %159
  %164 = load i32, i32* %k, align 4
  %165 = sext i32 %164 to i64
  %166 = load %"class.std::vector.0"*, %"class.std::vector.0"** %ht_ptr, align 8
  %167 = call i64 @_ZNKSt6vectorIP15CLitPoolElementSaIS1_EE4sizeEv(%"class.std::vector.0"* %166)
  %168 = icmp ult i64 %165, %167
  br i1 %168, label %169, label %181

; <label>:169                                     ; preds = %163
  %170 = load i32, i32* %displacement, align 4
  %171 = load %"class.std::vector.0"*, %"class.std::vector.0"** %ht_ptr, align 8
  %172 = load i32, i32* %k, align 4
  %173 = sext i32 %172 to i64
  %174 = call dereferenceable(8) %class.CLitPoolElement** @_ZNSt6vectorIP15CLitPoolElementSaIS1_EEixEm(%"class.std::vector.0"* %171, i64 %173)
  %175 = load %class.CLitPoolElement*, %class.CLitPoolElement** %174, align 8
  %176 = sext i32 %170 to i64
  %177 = getelementptr inbounds %class.CLitPoolElement, %class.CLitPoolElement* %175, i64 %176
  store %class.CLitPoolElement* %177, %class.CLitPoolElement** %174, align 8
  br label %178

; <label>:178                                     ; preds = %169
  %179 = load i32, i32* %k, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %k, align 4
  br label %163

; <label>:181                                     ; preds = %163
  br label %182

; <label>:182                                     ; preds = %181
  %183 = load i32, i32* %j, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %j, align 4
  br label %156

; <label>:185                                     ; preds = %156
  br label %186

; <label>:186                                     ; preds = %185
  %187 = load i32, i32* %i1, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %i1, align 4
  br label %147

; <label>:189                                     ; preds = %147
  %190 = load %class.CLitPoolElement*, %class.CLitPoolElement** %old_start, align 8
  %191 = icmp eq %class.CLitPoolElement* %190, null
  br i1 %191, label %194, label %192

; <label>:192                                     ; preds = %189
  %193 = bitcast %class.CLitPoolElement* %190 to i8*
  call void @_ZdaPv(i8* %193) #15
  br label %194

; <label>:194                                     ; preds = %192, %189
  call void @_ZN9CDatabase21output_lit_pool_stateEv(%class.CDatabase* %5)
  %195 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* @_ZSt4cout, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %196 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %195, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  store i1 true, i1* %1, align 1
  br label %197

; <label>:197                                     ; preds = %194, %44, %43, %12
  %198 = load i1, i1* %1, align 1
  ret i1 %198

; <label>:199                                     ; preds = %109
  %200 = load i8*, i8** %3, align 8
  %201 = load i32, i32* %4, align 4
  %202 = insertvalue { i8*, i32 } undef, i8* %200, 0
  %203 = insertvalue { i8*, i32 } %202, i32 %201, 1
  resume { i8*, i32 } %203
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

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #9

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

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(1) i8* @_ZN7CClause6in_useEv(%class.CClause* %this) #5 comdat align 2 {
  %1 = alloca %class.CClause*, align 8
  store %class.CClause* %this, %class.CClause** %1, align 8
  %2 = load %class.CClause*, %class.CClause** %1, align 8
  %3 = getelementptr inbounds %class.CClause, %class.CClause* %2, i32 0, i32 2
  ret i8* %3
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
define linkonce_odr dereferenceable(8) %class.CLitPoolElement** @_ZNSt6vectorIP15CLitPoolElementSaIS1_EEixEm(%"class.std::vector.0"* %this, i64 %__n) #5 comdat align 2 {
  %1 = alloca %"class.std::vector.0"*, align 8
  %2 = alloca i64, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %3 = load %"class.std::vector.0"*, %"class.std::vector.0"** %1, align 8
  %4 = bitcast %"class.std::vector.0"* %3 to %"struct.std::_Vector_base.1"*
  %5 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %5, i32 0, i32 0
  %7 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %6, align 8
  %8 = load i64, i64* %2, align 8
  %9 = getelementptr inbounds %class.CLitPoolElement*, %class.CLitPoolElement** %7, i64 %8
  ret %class.CLitPoolElement** %9
}

; Function Attrs: uwtable
define i32 @_ZN9CDatabase10add_clauseEPii(%class.CDatabase* %this, i32* %lits, i32 %n_lits) #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca i32, align 4
  %2 = alloca %class.CDatabase*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %new_cl = alloca i32, align 4
  %5 = alloca %class.CClause, align 8
  %6 = alloca i8*
  %7 = alloca i32
  %all_free_lits = alloca i8, align 1
  %all_zero_lits = alloca i8, align 1
  %i = alloca i32, align 4
  %var_idx = alloca i32, align 4
  %var_sign = alloca i32, align 4
  %lit_value = alloca i32, align 4
  %8 = alloca %class.CLitPoolElement, align 4
  %max_idx = alloca i32, align 4
  %max_dl = alloca i32, align 4
  %cl = alloca %class.CClause*, align 8
  %i1 = alloca i32, align 4
  %sz = alloca i32, align 4
  %other_ht_idx = alloca i32, align 4
  %my_var = alloca %class.CVariable*, align 8
  %v_idx = alloca i32, align 4
  %v_sign = alloca i32, align 4
  %9 = alloca %class.CLitPoolElement*, align 8
  %v_idx2 = alloca i32, align 4
  %v_sign3 = alloca i32, align 4
  %10 = alloca %class.CLitPoolElement*, align 8
  %l = alloca %class.CLitPoolElement*, align 8
  %v_idx4 = alloca i32, align 4
  %v_sign5 = alloca i32, align 4
  %11 = alloca %class.CLitPoolElement*, align 8
  %v_idx6 = alloca i32, align 4
  %v_sign7 = alloca i32, align 4
  %lit_ptr = alloca %class.CLitPoolElement*, align 8
  store %class.CDatabase* %this, %class.CDatabase** %2, align 8
  store i32* %lits, i32** %3, align 8
  store i32 %n_lits, i32* %4, align 4
  %12 = load %class.CDatabase*, %class.CDatabase** %2, align 8
  br label %13

; <label>:13                                      ; preds = %23, %0
  %14 = call i32 @_ZN9CDatabase19lit_pool_free_spaceEv(%class.CDatabase* %12)
  %15 = load i32, i32* %4, align 4
  %16 = add nsw i32 %15, 1
  %17 = icmp ule i32 %14, %16
  br i1 %17, label %18, label %24

; <label>:18                                      ; preds = %13
  %19 = call zeroext i1 @_ZN9CDatabase16enlarge_lit_poolEv(%class.CDatabase* %12)
  %20 = zext i1 %19 to i32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

; <label>:22                                      ; preds = %18
  store i32 -1, i32* %1, align 4
  br label %345

; <label>:23                                      ; preds = %18
  br label %13

; <label>:24                                      ; preds = %13
  %25 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %12, i32 0, i32 6
  %26 = call zeroext i1 @_ZNKSt5queueIiSt5dequeIiSaIiEEE5emptyEv(%"class.std::queue"* %25)
  br i1 %26, label %27, label %41

; <label>:27                                      ; preds = %24
  %28 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %12, i32 0, i32 5
  %29 = call i64 @_ZNKSt6vectorI7CClauseSaIS0_EE4sizeEv(%"class.std::vector.5"* %28)
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %new_cl, align 4
  %31 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %12, i32 0, i32 5
  %32 = load i32, i32* %new_cl, align 4
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  call void @_ZN7CClauseC2Ev(%class.CClause* %5)
  invoke void @_ZNSt6vectorI7CClauseSaIS0_EE6resizeEmS0_(%"class.std::vector.5"* %31, i64 %34, %class.CClause* %5)
          to label %35 unwind label %36

; <label>:35                                      ; preds = %27
  call void @_ZN7CClauseD2Ev(%class.CClause* %5)
  br label %46

; <label>:36                                      ; preds = %27
  %37 = landingpad { i8*, i32 }
          cleanup
  %38 = extractvalue { i8*, i32 } %37, 0
  store i8* %38, i8** %6, align 8
  %39 = extractvalue { i8*, i32 } %37, 1
  store i32 %39, i32* %7, align 4
  invoke void @_ZN7CClauseD2Ev(%class.CClause* %5)
          to label %40 unwind label %352

; <label>:40                                      ; preds = %36
  br label %347

; <label>:41                                      ; preds = %24
  %42 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %12, i32 0, i32 6
  %43 = call dereferenceable(4) i32* @_ZNSt5queueIiSt5dequeIiSaIiEEE5frontEv(%"class.std::queue"* %42)
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %new_cl, align 4
  %45 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %12, i32 0, i32 6
  call void @_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv(%"class.std::queue"* %45)
  br label %46

; <label>:46                                      ; preds = %41, %35
  %47 = load i32, i32* %new_cl, align 4
  %48 = call dereferenceable(16) %class.CClause* @_ZN9CDatabase6clauseEi(%class.CDatabase* %12, i32 %47)
  %49 = call %class.CLitPoolElement* @_ZN9CDatabase12lit_pool_endEv(%class.CDatabase* %12)
  %50 = load i32, i32* %4, align 4
  call void @_ZN7CClause4initEP15CLitPoolElementi(%class.CClause* %48, %class.CLitPoolElement* %49, i32 %50)
  store i8 1, i8* %all_free_lits, align 1
  store i8 1, i8* %all_zero_lits, align 1
  store i32 0, i32* %i, align 4
  br label %51

; <label>:51                                      ; preds = %108, %46
  %52 = load i32, i32* %i, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %111

; <label>:55                                      ; preds = %51
  %56 = load i32, i32* %i, align 4
  %57 = sext i32 %56 to i64
  %58 = load i32*, i32** %3, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 %57
  %60 = load i32, i32* %59, align 4
  %61 = ashr i32 %60, 1
  store i32 %61, i32* %var_idx, align 4
  %62 = load i32, i32* %var_idx, align 4
  %63 = sext i32 %62 to i64
  %64 = call dereferenceable(24) %"class.std::vector"* @_ZN9CDatabase9variablesEv(%class.CDatabase* %12)
  %65 = call i64 @_ZNKSt6vectorI9CVariableSaIS0_EE4sizeEv(%"class.std::vector"* %64)
  %66 = icmp ult i64 %63, %65
  br i1 %66, label %67, label %68

; <label>:67                                      ; preds = %55
  br label %70

; <label>:68                                      ; preds = %55
  call void @__assert_fail(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i32 191, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__._ZN9CDatabase10add_clauseEPii, i32 0, i32 0)) #13
  unreachable
                                                  ; No predecessors!
  br label %70

; <label>:70                                      ; preds = %69, %67
  %71 = load i32, i32* %i, align 4
  %72 = sext i32 %71 to i64
  %73 = load i32*, i32** %3, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 %72
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, 1
  store i32 %76, i32* %var_sign, align 4
  %77 = load i32, i32* %var_idx, align 4
  %78 = shl i32 %77, 1
  %79 = load i32, i32* %var_sign, align 4
  %80 = add nsw i32 %78, %79
  %81 = shl i32 %80, 2
  call void @_ZN9CDatabase18lit_pool_push_backEi(%class.CDatabase* %12, i32 %81)
  %82 = load i32, i32* %var_idx, align 4
  %83 = call dereferenceable(80) %class.CVariable* @_ZN9CDatabase8variableEi(%class.CDatabase* %12, i32 %82)
  %84 = load i32, i32* %var_sign, align 4
  %85 = call dereferenceable(4) i32* @_ZN9CVariable10lits_countEi(%class.CVariable* %83, i32 %84)
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  %88 = load i32, i32* %new_cl, align 4
  %89 = call dereferenceable(16) %class.CClause* @_ZN9CDatabase6clauseEi(%class.CDatabase* %12, i32 %88)
  %90 = load i32, i32* %i, align 4
  %91 = call dereferenceable(4) %class.CLitPoolElement* @_ZN7CClause7literalEi(%class.CClause* %89, i32 %90)
  %92 = bitcast %class.CLitPoolElement* %8 to i8*
  %93 = bitcast %class.CLitPoolElement* %91 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %92, i8* %93, i64 4, i32 4, i1 false)
  %94 = getelementptr inbounds %class.CLitPoolElement, %class.CLitPoolElement* %8, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @_ZN9CDatabase13literal_valueE15CLitPoolElement(%class.CDatabase* %12, i32 %95)
  store i32 %96, i32* %lit_value, align 4
  %97 = load i32, i32* %lit_value, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

; <label>:99                                      ; preds = %70
  store i8 0, i8* %all_zero_lits, align 1
  br label %100

; <label>:100                                     ; preds = %99, %70
  %101 = load i32, i32* %lit_value, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %106, label %103

; <label>:103                                     ; preds = %100
  %104 = load i32, i32* %lit_value, align 4
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %106, label %107

; <label>:106                                     ; preds = %103, %100
  store i8 0, i8* %all_free_lits, align 1
  br label %107

; <label>:107                                     ; preds = %106, %103
  br label %108

; <label>:108                                     ; preds = %107
  %109 = load i32, i32* %i, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %i, align 4
  br label %51

; <label>:111                                     ; preds = %51
  %112 = load i8, i8* %all_zero_lits, align 1
  %113 = trunc i8 %112 to i1
  br i1 %113, label %117, label %114

; <label>:114                                     ; preds = %111
  %115 = load i8, i8* %all_free_lits, align 1
  %116 = trunc i8 %115 to i1
  br i1 %116, label %117, label %118

; <label>:117                                     ; preds = %114, %111
  br label %120

; <label>:118                                     ; preds = %114
  call void @__assert_fail(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i32 202, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__._ZN9CDatabase10add_clauseEPii, i32 0, i32 0)) #13
  unreachable
                                                  ; No predecessors!
  br label %120

; <label>:120                                     ; preds = %119, %117
  %121 = load i32, i32* %new_cl, align 4
  %122 = sub nsw i32 0, %121
  call void @_ZN9CDatabase18lit_pool_push_backEi(%class.CDatabase* %12, i32 %122)
  %123 = load i32, i32* %new_cl, align 4
  %124 = call dereferenceable(16) %class.CClause* @_ZN9CDatabase6clauseEi(%class.CDatabase* %12, i32 %123)
  %125 = call dereferenceable(4) i32* @_ZN7CClause8num_litsEv(%class.CClause* %124)
  %126 = load i32, i32* %125, align 4
  %127 = icmp sgt i32 %126, 1
  br i1 %127, label %128, label %334

; <label>:128                                     ; preds = %120
  store i32 -1, i32* %max_idx, align 4
  store i32 -1, i32* %max_dl, align 4
  %129 = load i32, i32* %new_cl, align 4
  %130 = call dereferenceable(16) %class.CClause* @_ZN9CDatabase6clauseEi(%class.CDatabase* %12, i32 %129)
  store %class.CClause* %130, %class.CClause** %cl, align 8
  %131 = load %class.CClause*, %class.CClause** %cl, align 8
  %132 = call dereferenceable(4) i32* @_ZN7CClause8num_litsEv(%class.CClause* %131)
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %sz, align 4
  store i32 0, i32* %i1, align 4
  br label %134

; <label>:134                                     ; preds = %193, %128
  %135 = load i32, i32* %i1, align 4
  %136 = load i32, i32* %sz, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %196

; <label>:138                                     ; preds = %134
  %139 = load i32, i32* %i1, align 4
  %140 = sext i32 %139 to i64
  %141 = load %class.CClause*, %class.CClause** %cl, align 8
  %142 = call %class.CLitPoolElement* @_ZN7CClause8literalsEv(%class.CClause* %141)
  %143 = getelementptr inbounds %class.CLitPoolElement, %class.CLitPoolElement* %142, i64 %140
  %144 = call i32 @_ZN15CLitPoolElement9var_indexEv(%class.CLitPoolElement* %143)
  store i32 %144, i32* %v_idx, align 4
  %145 = load i32, i32* %v_idx, align 4
  %146 = call dereferenceable(80) %class.CVariable* @_ZN9CDatabase8variableEi(%class.CDatabase* %12, i32 %145)
  store %class.CVariable* %146, %class.CVariable** %my_var, align 8
  %147 = load i32, i32* %v_idx, align 4
  %148 = call dereferenceable(80) %class.CVariable* @_ZN9CDatabase8variableEi(%class.CDatabase* %12, i32 %147)
  %149 = call dereferenceable(2) i16* @_ZN9CVariable5valueEv(%class.CVariable* %148)
  %150 = load i16, i16* %149, align 2
  %151 = sext i16 %150 to i32
  %152 = icmp eq i32 %151, -1
  br i1 %152, label %153, label %176

; <label>:153                                     ; preds = %138
  %154 = load i32, i32* %i1, align 4
  %155 = sext i32 %154 to i64
  %156 = load %class.CClause*, %class.CClause** %cl, align 8
  %157 = call %class.CLitPoolElement* @_ZN7CClause8literalsEv(%class.CClause* %156)
  %158 = getelementptr inbounds %class.CLitPoolElement, %class.CLitPoolElement* %157, i64 %155
  %159 = call zeroext i1 @_ZN15CLitPoolElement8var_signEv(%class.CLitPoolElement* %158)
  %160 = zext i1 %159 to i32
  store i32 %160, i32* %v_sign, align 4
  %161 = load i32, i32* %v_idx, align 4
  %162 = call dereferenceable(80) %class.CVariable* @_ZN9CDatabase8variableEi(%class.CDatabase* %12, i32 %161)
  %163 = load i32, i32* %v_sign, align 4
  %164 = call dereferenceable(24) %"class.std::vector.0"* @_ZN9CVariable6ht_ptrEi(%class.CVariable* %162, i32 %163)
  %165 = load i32, i32* %i1, align 4
  %166 = sext i32 %165 to i64
  %167 = load %class.CClause*, %class.CClause** %cl, align 8
  %168 = call %class.CLitPoolElement* @_ZN7CClause8literalsEv(%class.CClause* %167)
  %169 = getelementptr inbounds %class.CLitPoolElement, %class.CLitPoolElement* %168, i64 %166
  store %class.CLitPoolElement* %169, %class.CLitPoolElement** %9, align 8
  call void @_ZNSt6vectorIP15CLitPoolElementSaIS1_EE9push_backERKS1_(%"class.std::vector.0"* %164, %class.CLitPoolElement** dereferenceable(8) %9)
  %170 = load i32, i32* %i1, align 4
  %171 = sext i32 %170 to i64
  %172 = load %class.CClause*, %class.CClause** %cl, align 8
  %173 = call %class.CLitPoolElement* @_ZN7CClause8literalsEv(%class.CClause* %172)
  %174 = getelementptr inbounds %class.CLitPoolElement, %class.CLitPoolElement* %173, i64 %171
  call void @_ZN15CLitPoolElement6set_htEi(%class.CLitPoolElement* %174, i32 1)
  %175 = load i32, i32* %i1, align 4
  store i32 %175, i32* %other_ht_idx, align 4
  br label %196

; <label>:176                                     ; preds = %138
  %177 = load i32, i32* %v_idx, align 4
  %178 = call dereferenceable(80) %class.CVariable* @_ZN9CDatabase8variableEi(%class.CDatabase* %12, i32 %177)
  %179 = call dereferenceable(2) i16* @_ZN9CVariable6dlevelEv(%class.CVariable* %178)
  %180 = load i16, i16* %179, align 2
  %181 = sext i16 %180 to i32
  %182 = load i32, i32* %max_dl, align 4
  %183 = icmp sgt i32 %181, %182
  br i1 %183, label %184, label %191

; <label>:184                                     ; preds = %176
  %185 = load i32, i32* %v_idx, align 4
  %186 = call dereferenceable(80) %class.CVariable* @_ZN9CDatabase8variableEi(%class.CDatabase* %12, i32 %185)
  %187 = call dereferenceable(2) i16* @_ZN9CVariable6dlevelEv(%class.CVariable* %186)
  %188 = load i16, i16* %187, align 2
  %189 = sext i16 %188 to i32
  store i32 %189, i32* %max_dl, align 4
  %190 = load i32, i32* %i1, align 4
  store i32 %190, i32* %max_idx, align 4
  br label %191

; <label>:191                                     ; preds = %184, %176
  br label %192

; <label>:192                                     ; preds = %191
  br label %193

; <label>:193                                     ; preds = %192
  %194 = load i32, i32* %i1, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %i1, align 4
  br label %134

; <label>:196                                     ; preds = %153, %134
  %197 = load i32, i32* %i1, align 4
  %198 = load i32, i32* %sz, align 4
  %199 = icmp sge i32 %197, %198
  br i1 %199, label %200, label %229

; <label>:200                                     ; preds = %196
  %201 = load i32, i32* %max_idx, align 4
  %202 = sext i32 %201 to i64
  %203 = load %class.CClause*, %class.CClause** %cl, align 8
  %204 = call %class.CLitPoolElement* @_ZN7CClause8literalsEv(%class.CClause* %203)
  %205 = getelementptr inbounds %class.CLitPoolElement, %class.CLitPoolElement* %204, i64 %202
  %206 = call i32 @_ZN15CLitPoolElement9var_indexEv(%class.CLitPoolElement* %205)
  store i32 %206, i32* %v_idx2, align 4
  %207 = load i32, i32* %max_idx, align 4
  %208 = sext i32 %207 to i64
  %209 = load %class.CClause*, %class.CClause** %cl, align 8
  %210 = call %class.CLitPoolElement* @_ZN7CClause8literalsEv(%class.CClause* %209)
  %211 = getelementptr inbounds %class.CLitPoolElement, %class.CLitPoolElement* %210, i64 %208
  %212 = call zeroext i1 @_ZN15CLitPoolElement8var_signEv(%class.CLitPoolElement* %211)
  %213 = zext i1 %212 to i32
  store i32 %213, i32* %v_sign3, align 4
  %214 = load i32, i32* %v_idx2, align 4
  %215 = call dereferenceable(80) %class.CVariable* @_ZN9CDatabase8variableEi(%class.CDatabase* %12, i32 %214)
  %216 = load i32, i32* %v_sign3, align 4
  %217 = call dereferenceable(24) %"class.std::vector.0"* @_ZN9CVariable6ht_ptrEi(%class.CVariable* %215, i32 %216)
  %218 = load i32, i32* %max_idx, align 4
  %219 = sext i32 %218 to i64
  %220 = load %class.CClause*, %class.CClause** %cl, align 8
  %221 = call %class.CLitPoolElement* @_ZN7CClause8literalsEv(%class.CClause* %220)
  %222 = getelementptr inbounds %class.CLitPoolElement, %class.CLitPoolElement* %221, i64 %219
  store %class.CLitPoolElement* %222, %class.CLitPoolElement** %10, align 8
  call void @_ZNSt6vectorIP15CLitPoolElementSaIS1_EE9push_backERKS1_(%"class.std::vector.0"* %217, %class.CLitPoolElement** dereferenceable(8) %10)
  %223 = load i32, i32* %max_idx, align 4
  %224 = sext i32 %223 to i64
  %225 = load %class.CClause*, %class.CClause** %cl, align 8
  %226 = call %class.CLitPoolElement* @_ZN7CClause8literalsEv(%class.CClause* %225)
  %227 = getelementptr inbounds %class.CLitPoolElement, %class.CLitPoolElement* %226, i64 %224
  call void @_ZN15CLitPoolElement6set_htEi(%class.CLitPoolElement* %227, i32 1)
  %228 = load i32, i32* %max_idx, align 4
  store i32 %228, i32* %other_ht_idx, align 4
  br label %229

; <label>:229                                     ; preds = %200, %196
  store i32 -1, i32* %max_idx, align 4
  store i32 -1, i32* %max_dl, align 4
  %230 = load i32, i32* %sz, align 4
  %231 = sub nsw i32 %230, 1
  store i32 %231, i32* %i1, align 4
  br label %232

; <label>:232                                     ; preds = %299, %229
  %233 = load i32, i32* %i1, align 4
  %234 = icmp sge i32 %233, 0
  br i1 %234, label %235, label %302

; <label>:235                                     ; preds = %232
  %236 = load i32, i32* %i1, align 4
  %237 = load i32, i32* %other_ht_idx, align 4
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %239, label %240

; <label>:239                                     ; preds = %235
  br label %299

; <label>:240                                     ; preds = %235
  %241 = load i32, i32* %i1, align 4
  %242 = sext i32 %241 to i64
  %243 = load %class.CClause*, %class.CClause** %cl, align 8
  %244 = call %class.CLitPoolElement* @_ZN7CClause8literalsEv(%class.CClause* %243)
  %245 = getelementptr inbounds %class.CLitPoolElement, %class.CLitPoolElement* %244, i64 %242
  store %class.CLitPoolElement* %245, %class.CLitPoolElement** %l, align 8
  %246 = load i32, i32* %i1, align 4
  %247 = sext i32 %246 to i64
  %248 = load %class.CClause*, %class.CClause** %cl, align 8
  %249 = call %class.CLitPoolElement* @_ZN7CClause8literalsEv(%class.CClause* %248)
  %250 = getelementptr inbounds %class.CLitPoolElement, %class.CLitPoolElement* %249, i64 %247
  %251 = call i32 @_ZN15CLitPoolElement9var_indexEv(%class.CLitPoolElement* %250)
  store i32 %251, i32* %v_idx4, align 4
  %252 = load i32, i32* %v_idx4, align 4
  %253 = call dereferenceable(80) %class.CVariable* @_ZN9CDatabase8variableEi(%class.CDatabase* %12, i32 %252)
  store %class.CVariable* %253, %class.CVariable** %my_var, align 8
  %254 = load i32, i32* %v_idx4, align 4
  %255 = call dereferenceable(80) %class.CVariable* @_ZN9CDatabase8variableEi(%class.CDatabase* %12, i32 %254)
  %256 = call dereferenceable(2) i16* @_ZN9CVariable5valueEv(%class.CVariable* %255)
  %257 = load i16, i16* %256, align 2
  %258 = sext i16 %257 to i32
  %259 = icmp eq i32 %258, -1
  br i1 %259, label %260, label %282

; <label>:260                                     ; preds = %240
  %261 = load i32, i32* %i1, align 4
  %262 = sext i32 %261 to i64
  %263 = load %class.CClause*, %class.CClause** %cl, align 8
  %264 = call %class.CLitPoolElement* @_ZN7CClause8literalsEv(%class.CClause* %263)
  %265 = getelementptr inbounds %class.CLitPoolElement, %class.CLitPoolElement* %264, i64 %262
  %266 = call zeroext i1 @_ZN15CLitPoolElement8var_signEv(%class.CLitPoolElement* %265)
  %267 = zext i1 %266 to i32
  store i32 %267, i32* %v_sign5, align 4
  %268 = load i32, i32* %v_idx4, align 4
  %269 = call dereferenceable(80) %class.CVariable* @_ZN9CDatabase8variableEi(%class.CDatabase* %12, i32 %268)
  %270 = load i32, i32* %v_sign5, align 4
  %271 = call dereferenceable(24) %"class.std::vector.0"* @_ZN9CVariable6ht_ptrEi(%class.CVariable* %269, i32 %270)
  %272 = load i32, i32* %i1, align 4
  %273 = sext i32 %272 to i64
  %274 = load %class.CClause*, %class.CClause** %cl, align 8
  %275 = call %class.CLitPoolElement* @_ZN7CClause8literalsEv(%class.CClause* %274)
  %276 = getelementptr inbounds %class.CLitPoolElement, %class.CLitPoolElement* %275, i64 %273
  store %class.CLitPoolElement* %276, %class.CLitPoolElement** %11, align 8
  call void @_ZNSt6vectorIP15CLitPoolElementSaIS1_EE9push_backERKS1_(%"class.std::vector.0"* %271, %class.CLitPoolElement** dereferenceable(8) %11)
  %277 = load i32, i32* %i1, align 4
  %278 = sext i32 %277 to i64
  %279 = load %class.CClause*, %class.CClause** %cl, align 8
  %280 = call %class.CLitPoolElement* @_ZN7CClause8literalsEv(%class.CClause* %279)
  %281 = getelementptr inbounds %class.CLitPoolElement, %class.CLitPoolElement* %280, i64 %278
  call void @_ZN15CLitPoolElement6set_htEi(%class.CLitPoolElement* %281, i32 -1)
  br label %302

; <label>:282                                     ; preds = %240
  %283 = load i32, i32* %v_idx4, align 4
  %284 = call dereferenceable(80) %class.CVariable* @_ZN9CDatabase8variableEi(%class.CDatabase* %12, i32 %283)
  %285 = call dereferenceable(2) i16* @_ZN9CVariable6dlevelEv(%class.CVariable* %284)
  %286 = load i16, i16* %285, align 2
  %287 = sext i16 %286 to i32
  %288 = load i32, i32* %max_dl, align 4
  %289 = icmp sgt i32 %287, %288
  br i1 %289, label %290, label %297

; <label>:290                                     ; preds = %282
  %291 = load i32, i32* %v_idx4, align 4
  %292 = call dereferenceable(80) %class.CVariable* @_ZN9CDatabase8variableEi(%class.CDatabase* %12, i32 %291)
  %293 = call dereferenceable(2) i16* @_ZN9CVariable6dlevelEv(%class.CVariable* %292)
  %294 = load i16, i16* %293, align 2
  %295 = sext i16 %294 to i32
  store i32 %295, i32* %max_dl, align 4
  %296 = load i32, i32* %i1, align 4
  store i32 %296, i32* %max_idx, align 4
  br label %297

; <label>:297                                     ; preds = %290, %282
  br label %298

; <label>:298                                     ; preds = %297
  br label %299

; <label>:299                                     ; preds = %298, %239
  %300 = load i32, i32* %i1, align 4
  %301 = add nsw i32 %300, -1
  store i32 %301, i32* %i1, align 4
  br label %232

; <label>:302                                     ; preds = %260, %232
  %303 = load i32, i32* %i1, align 4
  %304 = icmp slt i32 %303, 0
  br i1 %304, label %305, label %333

; <label>:305                                     ; preds = %302
  %306 = load i32, i32* %max_idx, align 4
  %307 = sext i32 %306 to i64
  %308 = load %class.CClause*, %class.CClause** %cl, align 8
  %309 = call %class.CLitPoolElement* @_ZN7CClause8literalsEv(%class.CClause* %308)
  %310 = getelementptr inbounds %class.CLitPoolElement, %class.CLitPoolElement* %309, i64 %307
  %311 = call i32 @_ZN15CLitPoolElement9var_indexEv(%class.CLitPoolElement* %310)
  store i32 %311, i32* %v_idx6, align 4
  %312 = load i32, i32* %max_idx, align 4
  %313 = sext i32 %312 to i64
  %314 = load %class.CClause*, %class.CClause** %cl, align 8
  %315 = call %class.CLitPoolElement* @_ZN7CClause8literalsEv(%class.CClause* %314)
  %316 = getelementptr inbounds %class.CLitPoolElement, %class.CLitPoolElement* %315, i64 %313
  %317 = call zeroext i1 @_ZN15CLitPoolElement8var_signEv(%class.CLitPoolElement* %316)
  %318 = zext i1 %317 to i32
  store i32 %318, i32* %v_sign7, align 4
  %319 = load i32, i32* %max_idx, align 4
  %320 = sext i32 %319 to i64
  %321 = load %class.CClause*, %class.CClause** %cl, align 8
  %322 = call %class.CLitPoolElement* @_ZN7CClause8literalsEv(%class.CClause* %321)
  %323 = getelementptr inbounds %class.CLitPoolElement, %class.CLitPoolElement* %322, i64 %320
  store %class.CLitPoolElement* %323, %class.CLitPoolElement** %lit_ptr, align 8
  %324 = load i32, i32* %v_idx6, align 4
  %325 = call dereferenceable(80) %class.CVariable* @_ZN9CDatabase8variableEi(%class.CDatabase* %12, i32 %324)
  %326 = load i32, i32* %v_sign7, align 4
  %327 = call dereferenceable(24) %"class.std::vector.0"* @_ZN9CVariable6ht_ptrEi(%class.CVariable* %325, i32 %326)
  call void @_ZNSt6vectorIP15CLitPoolElementSaIS1_EE9push_backERKS1_(%"class.std::vector.0"* %327, %class.CLitPoolElement** dereferenceable(8) %lit_ptr)
  %328 = load i32, i32* %max_idx, align 4
  %329 = sext i32 %328 to i64
  %330 = load %class.CClause*, %class.CClause** %cl, align 8
  %331 = call %class.CLitPoolElement* @_ZN7CClause8literalsEv(%class.CClause* %330)
  %332 = getelementptr inbounds %class.CLitPoolElement, %class.CLitPoolElement* %331, i64 %329
  call void @_ZN15CLitPoolElement6set_htEi(%class.CLitPoolElement* %332, i32 -1)
  br label %333

; <label>:333                                     ; preds = %305, %302
  br label %334

; <label>:334                                     ; preds = %333, %120
  %335 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %12, i32 0, i32 0
  %336 = getelementptr inbounds %struct.CDatabaseStats, %struct.CDatabaseStats* %335, i32 0, i32 4
  %337 = load i32, i32* %336, align 8
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %336, align 8
  %339 = load i32, i32* %4, align 4
  %340 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %12, i32 0, i32 0
  %341 = getelementptr inbounds %struct.CDatabaseStats, %struct.CDatabaseStats* %340, i32 0, i32 5
  %342 = load i32, i32* %341, align 4
  %343 = add nsw i32 %342, %339
  store i32 %343, i32* %341, align 4
  %344 = load i32, i32* %new_cl, align 4
  store i32 %344, i32* %1, align 4
  br label %345

; <label>:345                                     ; preds = %334, %22
  %346 = load i32, i32* %1, align 4
  ret i32 %346

; <label>:347                                     ; preds = %40
  %348 = load i8*, i8** %6, align 8
  %349 = load i32, i32* %7, align 4
  %350 = insertvalue { i8*, i32 } undef, i8* %348, 0
  %351 = insertvalue { i8*, i32 } %350, i32 %349, 1
  resume { i8*, i32 } %351

; <label>:352                                     ; preds = %36
  %353 = landingpad { i8*, i32 }
          catch i8* null
  %354 = extractvalue { i8*, i32 } %353, 0
  call void @__clang_call_terminate(i8* %354) #13
  unreachable
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

; Function Attrs: uwtable
define linkonce_odr zeroext i1 @_ZNKSt5queueIiSt5dequeIiSaIiEEE5emptyEv(%"class.std::queue"* %this) #0 comdat align 2 {
  %1 = alloca %"class.std::queue"*, align 8
  store %"class.std::queue"* %this, %"class.std::queue"** %1, align 8
  %2 = load %"class.std::queue"*, %"class.std::queue"** %1, align 8
  %3 = getelementptr inbounds %"class.std::queue", %"class.std::queue"* %2, i32 0, i32 0
  %4 = call zeroext i1 @_ZNKSt5dequeIiSaIiEE5emptyEv(%"class.std::deque"* %3)
  ret i1 %4
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorI7CClauseSaIS0_EE6resizeEmS0_(%"class.std::vector.5"* %this, i64 %__new_size, %class.CClause* %__x) #0 comdat align 2 {
  %1 = alloca %"class.std::vector.5"*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.17", align 8
  store %"class.std::vector.5"* %this, %"class.std::vector.5"** %1, align 8
  store i64 %__new_size, i64* %2, align 8
  %4 = load %"class.std::vector.5"*, %"class.std::vector.5"** %1, align 8
  %5 = load i64, i64* %2, align 8
  %6 = call i64 @_ZNKSt6vectorI7CClauseSaIS0_EE4sizeEv(%"class.std::vector.5"* %4)
  %7 = icmp ugt i64 %5, %6
  br i1 %7, label %8, label %16

; <label>:8                                       ; preds = %0
  %9 = call %class.CClause* @_ZNSt6vectorI7CClauseSaIS0_EE3endEv(%"class.std::vector.5"* %4)
  %10 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.17", %"class.__gnu_cxx::__normal_iterator.17"* %3, i32 0, i32 0
  store %class.CClause* %9, %class.CClause** %10, align 8
  %11 = load i64, i64* %2, align 8
  %12 = call i64 @_ZNKSt6vectorI7CClauseSaIS0_EE4sizeEv(%"class.std::vector.5"* %4)
  %13 = sub i64 %11, %12
  %14 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.17", %"class.__gnu_cxx::__normal_iterator.17"* %3, i32 0, i32 0
  %15 = load %class.CClause*, %class.CClause** %14, align 8
  call void @_ZNSt6vectorI7CClauseSaIS0_EE6insertEN9__gnu_cxx17__normal_iteratorIPS0_S2_EEmRKS0_(%"class.std::vector.5"* %4, %class.CClause* %15, i64 %13, %class.CClause* dereferenceable(16) %__x)
  br label %28

; <label>:16                                      ; preds = %0
  %17 = load i64, i64* %2, align 8
  %18 = call i64 @_ZNKSt6vectorI7CClauseSaIS0_EE4sizeEv(%"class.std::vector.5"* %4)
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %27

; <label>:20                                      ; preds = %16
  %21 = bitcast %"class.std::vector.5"* %4 to %"struct.std::_Vector_base.6"*
  %22 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %21, i32 0, i32 0
  %23 = getelementptr inbounds %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl", %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl"* %22, i32 0, i32 0
  %24 = load %class.CClause*, %class.CClause** %23, align 8
  %25 = load i64, i64* %2, align 8
  %26 = getelementptr inbounds %class.CClause, %class.CClause* %24, i64 %25
  call void @_ZNSt6vectorI7CClauseSaIS0_EE15_M_erase_at_endEPS0_(%"class.std::vector.5"* %4, %class.CClause* %26)
  br label %27

; <label>:27                                      ; preds = %20, %16
  br label %28

; <label>:28                                      ; preds = %27, %8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN7CClauseC2Ev(%class.CClause* %this) unnamed_addr #5 comdat align 2 {
  %1 = alloca %class.CClause*, align 8
  store %class.CClause* %this, %class.CClause** %1, align 8
  %2 = load %class.CClause*, %class.CClause** %1, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN7CClauseD2Ev(%class.CClause* %this) unnamed_addr #5 comdat align 2 {
  %1 = alloca %class.CClause*, align 8
  store %class.CClause* %this, %class.CClause** %1, align 8
  %2 = load %class.CClause*, %class.CClause** %1, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dereferenceable(4) i32* @_ZNSt5queueIiSt5dequeIiSaIiEEE5frontEv(%"class.std::queue"* %this) #0 comdat align 2 {
  %1 = alloca %"class.std::queue"*, align 8
  store %"class.std::queue"* %this, %"class.std::queue"** %1, align 8
  %2 = load %"class.std::queue"*, %"class.std::queue"** %1, align 8
  %3 = getelementptr inbounds %"class.std::queue", %"class.std::queue"* %2, i32 0, i32 0
  %4 = call dereferenceable(4) i32* @_ZNSt5dequeIiSaIiEE5frontEv(%"class.std::deque"* %3)
  ret i32* %4
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv(%"class.std::queue"* %this) #0 comdat align 2 {
  %1 = alloca %"class.std::queue"*, align 8
  store %"class.std::queue"* %this, %"class.std::queue"** %1, align 8
  %2 = load %"class.std::queue"*, %"class.std::queue"** %1, align 8
  %3 = getelementptr inbounds %"class.std::queue", %"class.std::queue"* %2, i32 0, i32 0
  call void @_ZNSt5dequeIiSaIiEE9pop_frontEv(%"class.std::deque"* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN7CClause4initEP15CLitPoolElementi(%class.CClause* %this, %class.CLitPoolElement* %head, i32 %num_lits) #5 comdat align 2 {
  %1 = alloca %class.CClause*, align 8
  %2 = alloca %class.CLitPoolElement*, align 8
  %3 = alloca i32, align 4
  store %class.CClause* %this, %class.CClause** %1, align 8
  store %class.CLitPoolElement* %head, %class.CLitPoolElement** %2, align 8
  store i32 %num_lits, i32* %3, align 4
  %4 = load %class.CClause*, %class.CClause** %1, align 8
  %5 = load %class.CLitPoolElement*, %class.CLitPoolElement** %2, align 8
  %6 = getelementptr inbounds %class.CClause, %class.CClause* %4, i32 0, i32 0
  store %class.CLitPoolElement* %5, %class.CLitPoolElement** %6, align 8
  %7 = load i32, i32* %3, align 4
  %8 = getelementptr inbounds %class.CClause, %class.CClause* %4, i32 0, i32 1
  store i32 %7, i32* %8, align 8
  %9 = getelementptr inbounds %class.CClause, %class.CClause* %4, i32 0, i32 2
  store i8 1, i8* %9, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %class.CLitPoolElement* @_ZN9CDatabase12lit_pool_endEv(%class.CDatabase* %this) #5 comdat align 2 {
  %1 = alloca %class.CDatabase*, align 8
  store %class.CDatabase* %this, %class.CDatabase** %1, align 8
  %2 = load %class.CDatabase*, %class.CDatabase** %1, align 8
  %3 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %2, i32 0, i32 2
  %4 = load %class.CLitPoolElement*, %class.CLitPoolElement** %3, align 8
  ret %class.CLitPoolElement* %4
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #10

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(4) i32* @_ZN9CVariable10lits_countEi(%class.CVariable* %this, i32 %i) #5 comdat align 2 {
  %1 = alloca %class.CVariable*, align 8
  %2 = alloca i32, align 4
  store %class.CVariable* %this, %class.CVariable** %1, align 8
  store i32 %i, i32* %2, align 4
  %3 = load %class.CVariable*, %class.CVariable** %1, align 8
  %4 = load i32, i32* %2, align 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds %class.CVariable, %class.CVariable* %3, i32 0, i32 4
  %7 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 %5
  ret i32* %7
}

; Function Attrs: uwtable
define linkonce_odr i32 @_ZN9CDatabase13literal_valueE15CLitPoolElement(%class.CDatabase* %this, i32 %l.coerce) #0 comdat align 2 {
  %l = alloca %class.CLitPoolElement, align 4
  %1 = alloca %class.CDatabase*, align 8
  %2 = getelementptr inbounds %class.CLitPoolElement, %class.CLitPoolElement* %l, i32 0, i32 0
  store i32 %l.coerce, i32* %2, align 4
  store %class.CDatabase* %this, %class.CDatabase** %1, align 8
  %3 = load %class.CDatabase*, %class.CDatabase** %1, align 8
  %4 = call i32 @_ZN15CLitPoolElement9var_indexEv(%class.CLitPoolElement* %l)
  %5 = call dereferenceable(80) %class.CVariable* @_ZN9CDatabase8variableEi(%class.CDatabase* %3, i32 %4)
  %6 = call dereferenceable(2) i16* @_ZN9CVariable5valueEv(%class.CVariable* %5)
  %7 = load i16, i16* %6, align 2
  %8 = sext i16 %7 to i32
  %9 = call zeroext i1 @_ZN15CLitPoolElement8var_signEv(%class.CLitPoolElement* %l)
  %10 = zext i1 %9 to i32
  %11 = xor i32 %8, %10
  ret i32 %11
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
define linkonce_odr %class.CLitPoolElement* @_ZN7CClause8literalsEv(%class.CClause* %this) #5 comdat align 2 {
  %1 = alloca %class.CClause*, align 8
  store %class.CClause* %this, %class.CClause** %1, align 8
  %2 = load %class.CClause*, %class.CClause** %1, align 8
  %3 = getelementptr inbounds %class.CClause, %class.CClause* %2, i32 0, i32 0
  %4 = load %class.CLitPoolElement*, %class.CLitPoolElement** %3, align 8
  ret %class.CLitPoolElement* %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(2) i16* @_ZN9CVariable5valueEv(%class.CVariable* %this) #5 comdat align 2 {
  %1 = alloca %class.CVariable*, align 8
  store %class.CVariable* %this, %class.CVariable** %1, align 8
  %2 = load %class.CVariable*, %class.CVariable** %1, align 8
  %3 = getelementptr inbounds %class.CVariable, %class.CVariable* %2, i32 0, i32 1
  ret i16* %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN15CLitPoolElement6set_htEi(%class.CLitPoolElement* %this, i32 %dir) #5 comdat align 2 {
  %1 = alloca %class.CLitPoolElement*, align 8
  %2 = alloca i32, align 4
  store %class.CLitPoolElement* %this, %class.CLitPoolElement** %1, align 8
  store i32 %dir, i32* %2, align 4
  %3 = load %class.CLitPoolElement*, %class.CLitPoolElement** %1, align 8
  %4 = getelementptr inbounds %class.CLitPoolElement, %class.CLitPoolElement* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* %2, align 4
  %7 = add nsw i32 %5, %6
  %8 = add nsw i32 %7, 2
  %9 = getelementptr inbounds %class.CLitPoolElement, %class.CLitPoolElement* %3, i32 0, i32 0
  store i32 %8, i32* %9, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(2) i16* @_ZN9CVariable6dlevelEv(%class.CVariable* %this) #5 comdat align 2 {
  %1 = alloca %class.CVariable*, align 8
  store %class.CVariable* %this, %class.CVariable** %1, align 8
  %2 = load %class.CVariable*, %class.CVariable** %1, align 8
  %3 = getelementptr inbounds %class.CVariable, %class.CVariable* %2, i32 0, i32 2
  ret i16* %3
}

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEj(%"class.std::basic_ostream"*, i32) #1

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEf(%"class.std::basic_ostream"*, float) #1

; Function Attrs: uwtable
define void @_ZN9CDatabase14detail_dump_clEiRSo(%class.CDatabase* %this, i32 %cl_idx, %"class.std::basic_ostream"* dereferenceable(272) %os) #0 align 2 {
  %1 = alloca %class.CDatabase*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %"class.std::basic_ostream"*, align 8
  %cl = alloca %class.CClause*, align 8
  %value = alloca i8*, align 8
  %i = alloca i32, align 4
  %sz = alloca i32, align 4
  %i1 = alloca i32, align 4
  %4 = alloca %class.CLitPoolElement, align 4
  %5 = alloca %class.CLitPoolElement, align 4
  store %class.CDatabase* %this, %class.CDatabase** %1, align 8
  store i32 %cl_idx, i32* %2, align 4
  store %"class.std::basic_ostream"* %os, %"class.std::basic_ostream"** %3, align 8
  %6 = load %class.CDatabase*, %class.CDatabase** %1, align 8
  %7 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %3, align 8
  %8 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0))
  %9 = load i32, i32* %2, align 4
  %10 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %8, i32 %9)
  %11 = load i32, i32* %2, align 4
  %12 = call dereferenceable(16) %class.CClause* @_ZN9CDatabase6clauseEi(%class.CDatabase* %6, i32 %11)
  store %class.CClause* %12, %class.CClause** %cl, align 8
  %13 = load %class.CClause*, %class.CClause** %cl, align 8
  %14 = call dereferenceable(1) i8* @_ZN7CClause6in_useEv(%class.CClause* %13)
  %15 = load i8, i8* %14, align 1
  %16 = trunc i8 %15 to i1
  br i1 %16, label %20, label %17

; <label>:17                                      ; preds = %0
  %18 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %3, align 8
  %19 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %18, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0))
  br label %20

; <label>:20                                      ; preds = %17, %0
  %21 = load %class.CClause*, %class.CClause** %cl, align 8
  %22 = call dereferenceable(4) i32* @_ZN7CClause8num_litsEv(%class.CClause* %21)
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %sz, align 4
  %24 = load %class.CClause*, %class.CClause** %cl, align 8
  %25 = call dereferenceable(4) i32* @_ZN7CClause8num_litsEv(%class.CClause* %24)
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %33

; <label>:28                                      ; preds = %20
  %29 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %3, align 8
  %30 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0))
  %31 = load i32, i32* %sz, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %sz, align 4
  br label %33

; <label>:33                                      ; preds = %28, %20
  store i32 0, i32* %i1, align 4
  br label %34

; <label>:34                                      ; preds = %87, %33
  %35 = load i32, i32* %i1, align 4
  %36 = load i32, i32* %sz, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %90

; <label>:38                                      ; preds = %34
  %39 = load i32, i32* %i1, align 4
  %40 = sext i32 %39 to i64
  %41 = load %class.CClause*, %class.CClause** %cl, align 8
  %42 = call %class.CLitPoolElement* @_ZN7CClause8literalsEv(%class.CClause* %41)
  %43 = getelementptr inbounds %class.CLitPoolElement, %class.CLitPoolElement* %42, i64 %40
  %44 = bitcast %class.CLitPoolElement* %4 to i8*
  %45 = bitcast %class.CLitPoolElement* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %45, i64 4, i32 4, i1 false)
  %46 = getelementptr inbounds %class.CLitPoolElement, %class.CLitPoolElement* %4, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @_ZN9CDatabase13literal_valueE15CLitPoolElement(%class.CDatabase* %6, i32 %47)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

; <label>:50                                      ; preds = %38
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i8** %value, align 8
  br label %66

; <label>:51                                      ; preds = %38
  %52 = load i32, i32* %i1, align 4
  %53 = sext i32 %52 to i64
  %54 = load %class.CClause*, %class.CClause** %cl, align 8
  %55 = call %class.CLitPoolElement* @_ZN7CClause8literalsEv(%class.CClause* %54)
  %56 = getelementptr inbounds %class.CLitPoolElement, %class.CLitPoolElement* %55, i64 %53
  %57 = bitcast %class.CLitPoolElement* %5 to i8*
  %58 = bitcast %class.CLitPoolElement* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %57, i8* %58, i64 4, i32 4, i1 false)
  %59 = getelementptr inbounds %class.CLitPoolElement, %class.CLitPoolElement* %5, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @_ZN9CDatabase13literal_valueE15CLitPoolElement(%class.CDatabase* %6, i32 %60)
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %64

; <label>:63                                      ; preds = %51
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), i8** %value, align 8
  br label %65

; <label>:64                                      ; preds = %51
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), i8** %value, align 8
  br label %65

; <label>:65                                      ; preds = %64, %63
  br label %66

; <label>:66                                      ; preds = %65, %50
  %67 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %3, align 8
  %68 = load i32, i32* %i1, align 4
  %69 = sext i32 %68 to i64
  %70 = load %class.CClause*, %class.CClause** %cl, align 8
  %71 = call %class.CLitPoolElement* @_ZN7CClause8literalsEv(%class.CClause* %70)
  %72 = getelementptr inbounds %class.CLitPoolElement, %class.CLitPoolElement* %71, i64 %69
  %73 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZlsRSoR15CLitPoolElement(%"class.std::basic_ostream"* dereferenceable(272) %67, %class.CLitPoolElement* dereferenceable(4) %72)
  %74 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0))
  %75 = load i8*, i8** %value, align 8
  %76 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %74, i8* %75)
  %77 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0))
  %78 = load %class.CClause*, %class.CClause** %cl, align 8
  %79 = load i32, i32* %i1, align 4
  %80 = call dereferenceable(4) %class.CLitPoolElement* @_ZN7CClause7literalEi(%class.CClause* %78, i32 %79)
  %81 = call i32 @_ZN15CLitPoolElement9var_indexEv(%class.CLitPoolElement* %80)
  %82 = call dereferenceable(80) %class.CVariable* @_ZN9CDatabase8variableEi(%class.CDatabase* %6, i32 %81)
  %83 = call dereferenceable(2) i16* @_ZN9CVariable6dlevelEv(%class.CVariable* %82)
  %84 = load i16, i16* %83, align 2
  %85 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEs(%"class.std::basic_ostream"* %77, i16 signext %84)
  %86 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0))
  br label %87

; <label>:87                                      ; preds = %66
  %88 = load i32, i32* %i1, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %i1, align 4
  br label %34

; <label>:90                                      ; preds = %34
  %91 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %3, align 8
  %92 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %91, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dereferenceable(272) %"class.std::basic_ostream"* @_ZlsRSoR15CLitPoolElement(%"class.std::basic_ostream"* dereferenceable(272) %os, %class.CLitPoolElement* dereferenceable(4) %l) #0 comdat {
  %1 = alloca %"class.std::basic_ostream"*, align 8
  %2 = alloca %class.CLitPoolElement*, align 8
  store %"class.std::basic_ostream"* %os, %"class.std::basic_ostream"** %1, align 8
  store %class.CLitPoolElement* %l, %class.CLitPoolElement** %2, align 8
  %3 = load %class.CLitPoolElement*, %class.CLitPoolElement** %2, align 8
  %4 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %1, align 8
  call void @_ZN15CLitPoolElement4dumpERSo(%class.CLitPoolElement* %3, %"class.std::basic_ostream"* dereferenceable(272) %4)
  %5 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %1, align 8
  ret %"class.std::basic_ostream"* %5
}

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEs(%"class.std::basic_ostream"*, i16 signext) #1

; Function Attrs: uwtable
define void @_ZN9CDatabase4dumpERSo(%class.CDatabase* %this, %"class.std::basic_ostream"* dereferenceable(272) %os) #0 align 2 {
  %1 = alloca %class.CDatabase*, align 8
  %2 = alloca %"class.std::basic_ostream"*, align 8
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  store %class.CDatabase* %this, %class.CDatabase** %1, align 8
  store %"class.std::basic_ostream"* %os, %"class.std::basic_ostream"** %2, align 8
  %3 = load %class.CDatabase*, %class.CDatabase** %1, align 8
  %4 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %2, align 8
  %5 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i32 0, i32 0))
  %6 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %5, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  store i32 0, i32* %i, align 4
  br label %7

; <label>:7                                       ; preds = %15, %0
  %8 = load i32, i32* %i, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %3, i32 0, i32 5
  %11 = call i64 @_ZNKSt6vectorI7CClauseSaIS0_EE4sizeEv(%"class.std::vector.5"* %10)
  %12 = icmp ult i64 %9, %11
  br i1 %12, label %13, label %18

; <label>:13                                      ; preds = %7
  %14 = load i32, i32* %i, align 4
  call void @_ZN9CDatabase14detail_dump_clEiRSo(%class.CDatabase* %3, i32 %14, %"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout)
  br label %15

; <label>:15                                      ; preds = %13
  %16 = load i32, i32* %i, align 4
  %17 = add i32 %16, 1
  store i32 %17, i32* %i, align 4
  br label %7

; <label>:18                                      ; preds = %7
  store i32 1, i32* %i1, align 4
  br label %19

; <label>:19                                      ; preds = %34, %18
  %20 = load i32, i32* %i1, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %class.CDatabase, %class.CDatabase* %3, i32 0, i32 4
  %23 = call i64 @_ZNKSt6vectorI9CVariableSaIS0_EE4sizeEv(%"class.std::vector"* %22)
  %24 = icmp ult i64 %21, %23
  br i1 %24, label %25, label %37

; <label>:25                                      ; preds = %19
  %26 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %2, align 8
  %27 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0))
  %28 = load i32, i32* %i1, align 4
  %29 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEj(%"class.std::basic_ostream"* %27, i32 %28)
  %30 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0))
  %31 = load i32, i32* %i1, align 4
  %32 = call dereferenceable(80) %class.CVariable* @_ZN9CDatabase8variableEi(%class.CDatabase* %3, i32 %31)
  %33 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZlsRSoR9CVariable(%"class.std::basic_ostream"* dereferenceable(272) %30, %class.CVariable* dereferenceable(80) %32)
  br label %34

; <label>:34                                      ; preds = %25
  %35 = load i32, i32* %i1, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %i1, align 4
  br label %19

; <label>:37                                      ; preds = %19
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dereferenceable(272) %"class.std::basic_ostream"* @_ZlsRSoR9CVariable(%"class.std::basic_ostream"* dereferenceable(272) %os, %class.CVariable* dereferenceable(80) %v) #0 comdat {
  %1 = alloca %"class.std::basic_ostream"*, align 8
  %2 = alloca %class.CVariable*, align 8
  store %"class.std::basic_ostream"* %os, %"class.std::basic_ostream"** %1, align 8
  store %class.CVariable* %v, %class.CVariable** %2, align 8
  %3 = load %class.CVariable*, %class.CVariable** %2, align 8
  %4 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %1, align 8
  call void @_ZN9CVariable4dumpERSo(%class.CVariable* %3, %"class.std::basic_ostream"* dereferenceable(272) %4)
  %5 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %1, align 8
  ret %"class.std::basic_ostream"* %5
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

; Function Attrs: uwtable
define linkonce_odr i64 @_ZNSt15_Deque_iteratorIiRiPiE14_S_buffer_sizeEv() #0 comdat align 2 {
  %1 = call i64 @_ZSt16__deque_buf_sizem(i64 4)
  ret i64 %1
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i64 @_ZSt16__deque_buf_sizem(i64 %__size) #11 comdat {
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
define linkonce_odr void @_ZN15CLitPoolElement4dumpERSo(%class.CLitPoolElement* %this, %"class.std::basic_ostream"* dereferenceable(272) %os) #0 comdat align 2 {
  %1 = alloca %class.CLitPoolElement*, align 8
  %2 = alloca %"class.std::basic_ostream"*, align 8
  store %class.CLitPoolElement* %this, %class.CLitPoolElement** %1, align 8
  store %"class.std::basic_ostream"* %os, %"class.std::basic_ostream"** %2, align 8
  %3 = load %class.CLitPoolElement*, %class.CLitPoolElement** %1, align 8
  %4 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %2, align 8
  %5 = call zeroext i1 @_ZN15CLitPoolElement8var_signEv(%class.CLitPoolElement* %3)
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  br label %8

; <label>:7                                       ; preds = %0
  br label %8

; <label>:8                                       ; preds = %7, %6
  %9 = phi [3 x i8]* [ @.str.25, %6 ], [ @.str.26, %7 ]
  %10 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i32 0, i32 0
  %11 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %4, i8* %10)
  %12 = call i32 @_ZN15CLitPoolElement9var_indexEv(%class.CLitPoolElement* %3)
  %13 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %11, i32 %12)
  %14 = call zeroext i1 @_ZN15CLitPoolElement5is_htEv(%class.CLitPoolElement* %3)
  br i1 %14, label %15, label %18

; <label>:15                                      ; preds = %8
  %16 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %2, align 8
  %17 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0))
  br label %18

; <label>:18                                      ; preds = %15, %8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN9CVariable4dumpERSo(%class.CVariable* %this, %"class.std::basic_ostream"* dereferenceable(272) %os) #0 comdat align 2 {
  %1 = alloca %class.CVariable*, align 8
  %2 = alloca %"class.std::basic_ostream"*, align 8
  %j = alloca i32, align 4
  %i = alloca i32, align 4
  store %class.CVariable* %this, %class.CVariable** %1, align 8
  store %"class.std::basic_ostream"* %os, %"class.std::basic_ostream"** %2, align 8
  %3 = load %class.CVariable*, %class.CVariable** %1, align 8
  %4 = call zeroext i1 @_ZN9CVariable9is_markedEv(%class.CVariable* %3)
  br i1 %4, label %5, label %8

; <label>:5                                       ; preds = %0
  %6 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %2, align 8
  %7 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0))
  br label %8

; <label>:8                                       ; preds = %5, %0
  %9 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %2, align 8
  %10 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0))
  %11 = getelementptr inbounds %class.CVariable, %class.CVariable* %3, i32 0, i32 1
  %12 = load i16, i16* %11, align 4
  %13 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEs(%"class.std::basic_ostream"* %10, i16 signext %12)
  %14 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0))
  %15 = getelementptr inbounds %class.CVariable, %class.CVariable* %3, i32 0, i32 2
  %16 = load i16, i16* %15, align 2
  %17 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEs(%"class.std::basic_ostream"* %14, i16 signext %16)
  %18 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0))
  %19 = bitcast %class.CVariable* %3 to i32*
  %20 = load i32, i32* %19, align 8
  %21 = ashr i32 %20, 3
  %22 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %18, i32 %21)
  %23 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %22, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  store i32 0, i32* %j, align 4
  br label %24

; <label>:24                                      ; preds = %63, %8
  %25 = load i32, i32* %j, align 4
  %26 = icmp slt i32 %25, 2
  br i1 %26, label %27, label %66

; <label>:27                                      ; preds = %24
  %28 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %2, align 8
  %29 = load i32, i32* %j, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

; <label>:31                                      ; preds = %27
  br label %33

; <label>:32                                      ; preds = %27
  br label %33

; <label>:33                                      ; preds = %32, %31
  %34 = phi [5 x i8]* [ @.str.31, %31 ], [ @.str.32, %32 ]
  %35 = getelementptr inbounds [5 x i8], [5 x i8]* %34, i32 0, i32 0
  %36 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %28, i8* %35)
  %37 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %38

; <label>:38                                      ; preds = %56, %33
  %39 = load i32, i32* %i, align 4
  %40 = sext i32 %39 to i64
  %41 = load i32, i32* %j, align 4
  %42 = call dereferenceable(24) %"class.std::vector.0"* @_ZN9CVariable6ht_ptrEi(%class.CVariable* %3, i32 %41)
  %43 = call i64 @_ZNKSt6vectorIP15CLitPoolElementSaIS1_EE4sizeEv(%"class.std::vector.0"* %42)
  %44 = icmp ult i64 %40, %43
  br i1 %44, label %45, label %59

; <label>:45                                      ; preds = %38
  %46 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %2, align 8
  %47 = load i32, i32* %j, align 4
  %48 = call dereferenceable(24) %"class.std::vector.0"* @_ZN9CVariable6ht_ptrEi(%class.CVariable* %3, i32 %47)
  %49 = load i32, i32* %i, align 4
  %50 = sext i32 %49 to i64
  %51 = call dereferenceable(8) %class.CLitPoolElement** @_ZNSt6vectorIP15CLitPoolElementSaIS1_EEixEm(%"class.std::vector.0"* %48, i64 %50)
  %52 = load %class.CLitPoolElement*, %class.CLitPoolElement** %51, align 8
  %53 = call i32 @_ZN15CLitPoolElement15find_clause_idxEv(%class.CLitPoolElement* %52)
  %54 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %46, i32 %53)
  %55 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i32 0, i32 0))
  br label %56

; <label>:56                                      ; preds = %45
  %57 = load i32, i32* %i, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %i, align 4
  br label %38

; <label>:59                                      ; preds = %38
  %60 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %2, align 8
  %61 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i32 0, i32 0))
  %62 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %61, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %63

; <label>:63                                      ; preds = %59
  %64 = load i32, i32* %j, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %j, align 4
  br label %24

; <label>:66                                      ; preds = %24
  %67 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %2, align 8
  %68 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %67, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr zeroext i1 @_ZN9CVariable9is_markedEv(%class.CVariable* %this) #5 comdat align 2 {
  %1 = alloca %class.CVariable*, align 8
  store %class.CVariable* %this, %class.CVariable** %1, align 8
  %2 = load %class.CVariable*, %class.CVariable** %1, align 8
  %3 = bitcast %class.CVariable* %2 to i32*
  %4 = load i32, i32* %3, align 8
  %5 = and i32 %4, 1
  %6 = trunc i32 %5 to i1
  ret i1 %6
}

; Function Attrs: uwtable
define linkonce_odr i32 @_ZN15CLitPoolElement15find_clause_idxEv(%class.CLitPoolElement* %this) #0 comdat align 2 {
  %1 = alloca %class.CLitPoolElement*, align 8
  %ptr = alloca %class.CLitPoolElement*, align 8
  store %class.CLitPoolElement* %this, %class.CLitPoolElement** %1, align 8
  %2 = load %class.CLitPoolElement*, %class.CLitPoolElement** %1, align 8
  store %class.CLitPoolElement* %2, %class.CLitPoolElement** %ptr, align 8
  br label %3

; <label>:3                                       ; preds = %7, %0
  %4 = load %class.CLitPoolElement*, %class.CLitPoolElement** %ptr, align 8
  %5 = call zeroext i1 @_ZN15CLitPoolElement10is_literalEv(%class.CLitPoolElement* %4)
  br i1 %5, label %6, label %10

; <label>:6                                       ; preds = %3
  br label %7

; <label>:7                                       ; preds = %6
  %8 = load %class.CLitPoolElement*, %class.CLitPoolElement** %ptr, align 8
  %9 = getelementptr inbounds %class.CLitPoolElement, %class.CLitPoolElement* %8, i32 1
  store %class.CLitPoolElement* %9, %class.CLitPoolElement** %ptr, align 8
  br label %3

; <label>:10                                      ; preds = %3
  %11 = load %class.CLitPoolElement*, %class.CLitPoolElement** %ptr, align 8
  %12 = call i32 @_ZN15CLitPoolElement16get_clause_indexEv(%class.CLitPoolElement* %11)
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define linkonce_odr zeroext i1 @_ZN15CLitPoolElement10is_literalEv(%class.CLitPoolElement* %this) #5 comdat align 2 {
  %1 = alloca %class.CLitPoolElement*, align 8
  store %class.CLitPoolElement* %this, %class.CLitPoolElement** %1, align 8
  %2 = load %class.CLitPoolElement*, %class.CLitPoolElement** %1, align 8
  %3 = getelementptr inbounds %class.CLitPoolElement, %class.CLitPoolElement* %2, i32 0, i32 0
  %4 = load i32, i32* %3, align 4
  %5 = icmp sgt i32 %4, 0
  ret i1 %5
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32 @_ZN15CLitPoolElement16get_clause_indexEv(%class.CLitPoolElement* %this) #5 comdat align 2 {
  %1 = alloca %class.CLitPoolElement*, align 8
  store %class.CLitPoolElement* %this, %class.CLitPoolElement** %1, align 8
  %2 = load %class.CLitPoolElement*, %class.CLitPoolElement** %1, align 8
  %3 = getelementptr inbounds %class.CLitPoolElement, %class.CLitPoolElement* %2, i32 0, i32 0
  %4 = load i32, i32* %3, align 4
  %5 = sub nsw i32 0, %4
  ret i32 %5
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

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseI9CVariableSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %this) #5 comdat align 2 {
  %1 = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %1, align 8
  %2 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %1, align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %4 = bitcast %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl"* %3 to %"class.std::allocator"*
  ret %"class.std::allocator"* %4
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt12_Vector_baseI9CVariableSaIS0_EED2Ev(%"struct.std::_Vector_base"* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %"struct.std::_Vector_base"*, align 8
  %2 = alloca i8*
  %3 = alloca i32
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %1, align 8
  %4 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %1, align 8
  %5 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl", %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl"* %5, i32 0, i32 0
  %7 = load %class.CVariable*, %class.CVariable** %6, align 8
  %8 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %4, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl", %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl"* %8, i32 0, i32 2
  %10 = load %class.CVariable*, %class.CVariable** %9, align 8
  %11 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %4, i32 0, i32 0
  %12 = getelementptr inbounds %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl", %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl"* %11, i32 0, i32 0
  %13 = load %class.CVariable*, %class.CVariable** %12, align 8
  %14 = ptrtoint %class.CVariable* %10 to i64
  %15 = ptrtoint %class.CVariable* %13 to i64
  %16 = sub i64 %14, %15
  %17 = sdiv exact i64 %16, 80
  invoke void @_ZNSt12_Vector_baseI9CVariableSaIS0_EE13_M_deallocateEPS0_m(%"struct.std::_Vector_base"* %4, %class.CVariable* %7, i64 %17)
          to label %18 unwind label %20

; <label>:18                                      ; preds = %0
  %19 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %4, i32 0, i32 0
  call void @_ZNSt12_Vector_baseI9CVariableSaIS0_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl"* %19) #2
  ret void

; <label>:20                                      ; preds = %0
  %21 = landingpad { i8*, i32 }
          cleanup
  %22 = extractvalue { i8*, i32 } %21, 0
  store i8* %22, i8** %2, align 8
  %23 = extractvalue { i8*, i32 } %21, 1
  store i32 %23, i32* %3, align 4
  %24 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %4, i32 0, i32 0
  call void @_ZNSt12_Vector_baseI9CVariableSaIS0_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl"* %24) #2
  br label %25

; <label>:25                                      ; preds = %20
  %26 = load i8*, i8** %2, align 8
  %27 = load i32, i32* %3, align 4
  %28 = insertvalue { i8*, i32 } undef, i8* %26, 0
  %29 = insertvalue { i8*, i32 } %28, i32 %27, 1
  resume { i8*, i32 } %29
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

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %class.CVariable* @_ZSt11__addressofI9CVariableEPT_RS1_(%class.CVariable* dereferenceable(80) %__r) #11 comdat {
  %1 = alloca %class.CVariable*, align 8
  store %class.CVariable* %__r, %class.CVariable** %1, align 8
  %2 = load %class.CVariable*, %class.CVariable** %1, align 8
  %3 = bitcast %class.CVariable* %2 to i8*
  %4 = bitcast i8* %3 to %class.CVariable*
  ret %class.CVariable* %4
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
  call void @__clang_call_terminate(i8* %32) #13
  unreachable
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
  call void @__clang_call_terminate(i8* %31) #13
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

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIP15CLitPoolElementSaIS1_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %this) unnamed_addr #11 comdat align 2 {
  %1 = alloca %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %this, %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"** %1, align 8
  %2 = load %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"*, %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"** %1, align 8
  %3 = bitcast %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %2 to %"class.std::allocator.2"*
  call void @_ZNSaIP15CLitPoolElementED2Ev(%"class.std::allocator.2"* %3) #2
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

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #6

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

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseI9CVariableSaIS0_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl"* %this) unnamed_addr #11 comdat align 2 {
  %1 = alloca %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl"* %this, %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl"** %1, align 8
  %2 = load %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl"*, %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl"** %1, align 8
  %3 = bitcast %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl"* %2 to %"class.std::allocator"*
  call void @_ZNSaI9CVariableED2Ev(%"class.std::allocator"* %3) #2
  ret void
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

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaI9CVariableED2Ev(%"class.std::allocator"* %this) unnamed_addr #5 comdat align 2 {
  %1 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %1, align 8
  %2 = load %"class.std::allocator"*, %"class.std::allocator"** %1, align 8
  %3 = bitcast %"class.std::allocator"* %2 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorI9CVariableED2Ev(%"class.__gnu_cxx::new_allocator"* %3) #2
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorI9CVariableED2Ev(%"class.__gnu_cxx::new_allocator"* %this) unnamed_addr #5 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %1, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt8_DestroyIP7CClauseS0_EvT_S2_RSaIT0_E(%class.CClause* %__first, %class.CClause* %__last, %"class.std::allocator.7"* dereferenceable(1)) #7 comdat {
  %2 = alloca %class.CClause*, align 8
  %3 = alloca %class.CClause*, align 8
  %4 = alloca %"class.std::allocator.7"*, align 8
  store %class.CClause* %__first, %class.CClause** %2, align 8
  store %class.CClause* %__last, %class.CClause** %3, align 8
  store %"class.std::allocator.7"* %0, %"class.std::allocator.7"** %4, align 8
  %5 = load %class.CClause*, %class.CClause** %2, align 8
  %6 = load %class.CClause*, %class.CClause** %3, align 8
  call void @_ZSt8_DestroyIP7CClauseEvT_S2_(%class.CClause* %5, %class.CClause* %6)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(1) %"class.std::allocator.7"* @_ZNSt12_Vector_baseI7CClauseSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.6"* %this) #5 comdat align 2 {
  %1 = alloca %"struct.std::_Vector_base.6"*, align 8
  store %"struct.std::_Vector_base.6"* %this, %"struct.std::_Vector_base.6"** %1, align 8
  %2 = load %"struct.std::_Vector_base.6"*, %"struct.std::_Vector_base.6"** %1, align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %2, i32 0, i32 0
  %4 = bitcast %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl"* %3 to %"class.std::allocator.7"*
  ret %"class.std::allocator.7"* %4
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt12_Vector_baseI7CClauseSaIS0_EED2Ev(%"struct.std::_Vector_base.6"* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %"struct.std::_Vector_base.6"*, align 8
  %2 = alloca i8*
  %3 = alloca i32
  store %"struct.std::_Vector_base.6"* %this, %"struct.std::_Vector_base.6"** %1, align 8
  %4 = load %"struct.std::_Vector_base.6"*, %"struct.std::_Vector_base.6"** %1, align 8
  %5 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl", %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl"* %5, i32 0, i32 0
  %7 = load %class.CClause*, %class.CClause** %6, align 8
  %8 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %4, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl", %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl"* %8, i32 0, i32 2
  %10 = load %class.CClause*, %class.CClause** %9, align 8
  %11 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %4, i32 0, i32 0
  %12 = getelementptr inbounds %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl", %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl"* %11, i32 0, i32 0
  %13 = load %class.CClause*, %class.CClause** %12, align 8
  %14 = ptrtoint %class.CClause* %10 to i64
  %15 = ptrtoint %class.CClause* %13 to i64
  %16 = sub i64 %14, %15
  %17 = sdiv exact i64 %16, 16
  invoke void @_ZNSt12_Vector_baseI7CClauseSaIS0_EE13_M_deallocateEPS0_m(%"struct.std::_Vector_base.6"* %4, %class.CClause* %7, i64 %17)
          to label %18 unwind label %20

; <label>:18                                      ; preds = %0
  %19 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %4, i32 0, i32 0
  call void @_ZNSt12_Vector_baseI7CClauseSaIS0_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl"* %19) #2
  ret void

; <label>:20                                      ; preds = %0
  %21 = landingpad { i8*, i32 }
          cleanup
  %22 = extractvalue { i8*, i32 } %21, 0
  store i8* %22, i8** %2, align 8
  %23 = extractvalue { i8*, i32 } %21, 1
  store i32 %23, i32* %3, align 4
  %24 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %4, i32 0, i32 0
  call void @_ZNSt12_Vector_baseI7CClauseSaIS0_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl"* %24) #2
  br label %25

; <label>:25                                      ; preds = %20
  %26 = load i8*, i8** %2, align 8
  %27 = load i32, i32* %3, align 4
  %28 = insertvalue { i8*, i32 } undef, i8* %26, 0
  %29 = insertvalue { i8*, i32 } %28, i32 %27, 1
  resume { i8*, i32 } %29
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt8_DestroyIP7CClauseEvT_S2_(%class.CClause* %__first, %class.CClause* %__last) #7 comdat {
  %1 = alloca %class.CClause*, align 8
  %2 = alloca %class.CClause*, align 8
  store %class.CClause* %__first, %class.CClause** %1, align 8
  store %class.CClause* %__last, %class.CClause** %2, align 8
  %3 = load %class.CClause*, %class.CClause** %1, align 8
  %4 = load %class.CClause*, %class.CClause** %2, align 8
  call void @_ZNSt12_Destroy_auxILb0EE9__destroyIP7CClauseEEvT_S4_(%class.CClause* %3, %class.CClause* %4)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt12_Destroy_auxILb0EE9__destroyIP7CClauseEEvT_S4_(%class.CClause* %__first, %class.CClause* %__last) #0 comdat align 2 {
  %1 = alloca %class.CClause*, align 8
  %2 = alloca %class.CClause*, align 8
  store %class.CClause* %__first, %class.CClause** %1, align 8
  store %class.CClause* %__last, %class.CClause** %2, align 8
  br label %3

; <label>:3                                       ; preds = %10, %0
  %4 = load %class.CClause*, %class.CClause** %1, align 8
  %5 = load %class.CClause*, %class.CClause** %2, align 8
  %6 = icmp ne %class.CClause* %4, %5
  br i1 %6, label %7, label %13

; <label>:7                                       ; preds = %3
  %8 = load %class.CClause*, %class.CClause** %1, align 8
  %9 = call %class.CClause* @_ZSt11__addressofI7CClauseEPT_RS1_(%class.CClause* dereferenceable(16) %8)
  call void @_ZSt8_DestroyI7CClauseEvPT_(%class.CClause* %9)
  br label %10

; <label>:10                                      ; preds = %7
  %11 = load %class.CClause*, %class.CClause** %1, align 8
  %12 = getelementptr inbounds %class.CClause, %class.CClause* %11, i32 1
  store %class.CClause* %12, %class.CClause** %1, align 8
  br label %3

; <label>:13                                      ; preds = %3
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt8_DestroyI7CClauseEvPT_(%class.CClause* %__pointer) #7 comdat {
  %1 = alloca %class.CClause*, align 8
  store %class.CClause* %__pointer, %class.CClause** %1, align 8
  %2 = load %class.CClause*, %class.CClause** %1, align 8
  call void @_ZN7CClauseD2Ev(%class.CClause* %2)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %class.CClause* @_ZSt11__addressofI7CClauseEPT_RS1_(%class.CClause* dereferenceable(16) %__r) #11 comdat {
  %1 = alloca %class.CClause*, align 8
  store %class.CClause* %__r, %class.CClause** %1, align 8
  %2 = load %class.CClause*, %class.CClause** %1, align 8
  %3 = bitcast %class.CClause* %2 to i8*
  %4 = bitcast i8* %3 to %class.CClause*
  ret %class.CClause* %4
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt12_Vector_baseI7CClauseSaIS0_EE13_M_deallocateEPS0_m(%"struct.std::_Vector_base.6"* %this, %class.CClause* %__p, i64 %__n) #0 comdat align 2 {
  %1 = alloca %"struct.std::_Vector_base.6"*, align 8
  %2 = alloca %class.CClause*, align 8
  %3 = alloca i64, align 8
  store %"struct.std::_Vector_base.6"* %this, %"struct.std::_Vector_base.6"** %1, align 8
  store %class.CClause* %__p, %class.CClause** %2, align 8
  store i64 %__n, i64* %3, align 8
  %4 = load %"struct.std::_Vector_base.6"*, %"struct.std::_Vector_base.6"** %1, align 8
  %5 = load %class.CClause*, %class.CClause** %2, align 8
  %6 = icmp ne %class.CClause* %5, null
  br i1 %6, label %7, label %12

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %4, i32 0, i32 0
  %9 = bitcast %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl"* %8 to %"class.std::allocator.7"*
  %10 = load %class.CClause*, %class.CClause** %2, align 8
  %11 = load i64, i64* %3, align 8
  call void @_ZN9__gnu_cxx14__alloc_traitsISaI7CClauseEE10deallocateERS2_PS1_m(%"class.std::allocator.7"* dereferenceable(1) %9, %class.CClause* %10, i64 %11)
  br label %12

; <label>:12                                      ; preds = %7, %0
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseI7CClauseSaIS0_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl"* %this) unnamed_addr #11 comdat align 2 {
  %1 = alloca %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl"* %this, %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl"** %1, align 8
  %2 = load %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl"*, %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl"** %1, align 8
  %3 = bitcast %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl"* %2 to %"class.std::allocator.7"*
  call void @_ZNSaI7CClauseED2Ev(%"class.std::allocator.7"* %3) #2
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaI7CClauseEE10deallocateERS2_PS1_m(%"class.std::allocator.7"* dereferenceable(1) %__a, %class.CClause* %__p, i64 %__n) #0 comdat align 2 {
  %1 = alloca %"class.std::allocator.7"*, align 8
  %2 = alloca %class.CClause*, align 8
  %3 = alloca i64, align 8
  store %"class.std::allocator.7"* %__a, %"class.std::allocator.7"** %1, align 8
  store %class.CClause* %__p, %class.CClause** %2, align 8
  store i64 %__n, i64* %3, align 8
  %4 = load %"class.std::allocator.7"*, %"class.std::allocator.7"** %1, align 8
  %5 = bitcast %"class.std::allocator.7"* %4 to %"class.__gnu_cxx::new_allocator.8"*
  %6 = load %class.CClause*, %class.CClause** %2, align 8
  %7 = load i64, i64* %3, align 8
  call void @_ZN9__gnu_cxx13new_allocatorI7CClauseE10deallocateEPS1_m(%"class.__gnu_cxx::new_allocator.8"* %5, %class.CClause* %6, i64 %7)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorI7CClauseE10deallocateEPS1_m(%"class.__gnu_cxx::new_allocator.8"* %this, %class.CClause* %__p, i64) #5 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.8"*, align 8
  %3 = alloca %class.CClause*, align 8
  %4 = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.8"* %this, %"class.__gnu_cxx::new_allocator.8"** %2, align 8
  store %class.CClause* %__p, %class.CClause** %3, align 8
  store i64 %0, i64* %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.8"*, %"class.__gnu_cxx::new_allocator.8"** %2, align 8
  %6 = load %class.CClause*, %class.CClause** %3, align 8
  %7 = bitcast %class.CClause* %6 to i8*
  call void @_ZdlPv(i8* %7) #2
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaI7CClauseED2Ev(%"class.std::allocator.7"* %this) unnamed_addr #5 comdat align 2 {
  %1 = alloca %"class.std::allocator.7"*, align 8
  store %"class.std::allocator.7"* %this, %"class.std::allocator.7"** %1, align 8
  %2 = load %"class.std::allocator.7"*, %"class.std::allocator.7"** %1, align 8
  %3 = bitcast %"class.std::allocator.7"* %2 to %"class.__gnu_cxx::new_allocator.8"*
  call void @_ZN9__gnu_cxx13new_allocatorI7CClauseED2Ev(%"class.__gnu_cxx::new_allocator.8"* %3) #2
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorI7CClauseED2Ev(%"class.__gnu_cxx::new_allocator.8"* %this) unnamed_addr #5 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.8"*, align 8
  store %"class.__gnu_cxx::new_allocator.8"* %this, %"class.__gnu_cxx::new_allocator.8"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.8"*, %"class.__gnu_cxx::new_allocator.8"** %1, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt5dequeIiSaIiEE15_M_destroy_dataESt15_Deque_iteratorIiRiPiES5_RKS0_(%"class.std::deque"* %this, %"struct.std::_Deque_iterator"* %__first, %"struct.std::_Deque_iterator"* %__last, %"class.std::allocator.10"* dereferenceable(1)) #5 comdat align 2 {
  %2 = alloca %"class.std::deque"*, align 8
  %3 = alloca %"class.std::allocator.10"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %2, align 8
  store %"class.std::allocator.10"* %0, %"class.std::allocator.10"** %3, align 8
  %4 = load %"class.std::deque"*, %"class.std::deque"** %2, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt5dequeIiSaIiEE5beginEv(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"class.std::deque"* %this) #0 comdat align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  %2 = load %"class.std::deque"*, %"class.std::deque"** %1, align 8
  %3 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %4 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %4, i32 0, i32 2
  call void @_ZNSt15_Deque_iteratorIiRiPiEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.result, %"struct.std::_Deque_iterator"* dereferenceable(32) %5)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt5dequeIiSaIiEE3endEv(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"class.std::deque"* %this) #0 comdat align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  %2 = load %"class.std::deque"*, %"class.std::deque"** %1, align 8
  %3 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %4 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %4, i32 0, i32 3
  call void @_ZNSt15_Deque_iteratorIiRiPiEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.result, %"struct.std::_Deque_iterator"* dereferenceable(32) %5)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(1) %"class.std::allocator.10"* @_ZNSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %this) #5 comdat align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  %2 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %1, align 8
  %3 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %2, i32 0, i32 0
  %4 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %3 to %"class.std::allocator.10"*
  ret %"class.std::allocator.10"* %4
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIiSaIiEED2Ev(%"class.std::_Deque_base"* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  %2 = alloca i8*
  %3 = alloca i32
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  %4 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %1, align 8
  %5 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %5, i32 0, i32 0
  %7 = load i32**, i32*** %6, align 8
  %8 = icmp ne i32** %7, null
  br i1 %8, label %9, label %32

; <label>:9                                       ; preds = %0
  %10 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %4, i32 0, i32 0
  %11 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %10, i32 0, i32 2
  %12 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %11, i32 0, i32 3
  %13 = load i32**, i32*** %12, align 8
  %14 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %4, i32 0, i32 0
  %15 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %14, i32 0, i32 3
  %16 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %15, i32 0, i32 3
  %17 = load i32**, i32*** %16, align 8
  %18 = getelementptr inbounds i32*, i32** %17, i64 1
  invoke void @_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_(%"class.std::_Deque_base"* %4, i32** %13, i32** %18)
          to label %19 unwind label %27

; <label>:19                                      ; preds = %9
  %20 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %4, i32 0, i32 0
  %21 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %20, i32 0, i32 0
  %22 = load i32**, i32*** %21, align 8
  %23 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %4, i32 0, i32 0
  %24 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  invoke void @_ZNSt11_Deque_baseIiSaIiEE17_M_deallocate_mapEPPim(%"class.std::_Deque_base"* %4, i32** %22, i64 %25)
          to label %26 unwind label %27

; <label>:26                                      ; preds = %19
  br label %32

; <label>:27                                      ; preds = %19, %9
  %28 = landingpad { i8*, i32 }
          cleanup
  %29 = extractvalue { i8*, i32 } %28, 0
  store i8* %29, i8** %2, align 8
  %30 = extractvalue { i8*, i32 } %28, 1
  store i32 %30, i32* %3, align 4
  %31 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %4, i32 0, i32 0
  call void @_ZNSt11_Deque_baseIiSaIiEE11_Deque_implD2Ev(%"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %31) #2
  br label %34

; <label>:32                                      ; preds = %26, %0
  %33 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %4, i32 0, i32 0
  call void @_ZNSt11_Deque_baseIiSaIiEE11_Deque_implD2Ev(%"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %33) #2
  ret void

; <label>:34                                      ; preds = %27
  %35 = load i8*, i8** %2, align 8
  %36 = load i32, i32* %3, align 4
  %37 = insertvalue { i8*, i32 } undef, i8* %35, 0
  %38 = insertvalue { i8*, i32 } %37, i32 %36, 1
  resume { i8*, i32 } %38
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt15_Deque_iteratorIiRiPiEC2ERKS2_(%"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"* dereferenceable(32) %__x) unnamed_addr #5 comdat align 2 {
  %1 = alloca %"struct.std::_Deque_iterator"*, align 8
  %2 = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"** %1, align 8
  store %"struct.std::_Deque_iterator"* %__x, %"struct.std::_Deque_iterator"** %2, align 8
  %3 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %1, align 8
  %4 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %3, i32 0, i32 0
  %5 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %2, align 8
  %6 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  store i32* %7, i32** %4, align 8
  %8 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %3, i32 0, i32 1
  %9 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %2, align 8
  %10 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %8, align 8
  %12 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %3, i32 0, i32 2
  %13 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %2, align 8
  %14 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %12, align 8
  %16 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %3, i32 0, i32 3
  %17 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %2, align 8
  %18 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %17, i32 0, i32 3
  %19 = load i32**, i32*** %18, align 8
  store i32** %19, i32*** %16, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_(%"class.std::_Deque_base"* %this, i32** %__nstart, i32** %__nfinish) #0 comdat align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  %2 = alloca i32**, align 8
  %3 = alloca i32**, align 8
  %__n = alloca i32**, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  store i32** %__nstart, i32*** %2, align 8
  store i32** %__nfinish, i32*** %3, align 8
  %4 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %1, align 8
  %5 = load i32**, i32*** %2, align 8
  store i32** %5, i32*** %__n, align 8
  br label %6

; <label>:6                                       ; preds = %13, %0
  %7 = load i32**, i32*** %__n, align 8
  %8 = load i32**, i32*** %3, align 8
  %9 = icmp ult i32** %7, %8
  br i1 %9, label %10, label %16

; <label>:10                                      ; preds = %6
  %11 = load i32**, i32*** %__n, align 8
  %12 = load i32*, i32** %11, align 8
  call void @_ZNSt11_Deque_baseIiSaIiEE18_M_deallocate_nodeEPi(%"class.std::_Deque_base"* %4, i32* %12)
  br label %13

; <label>:13                                      ; preds = %10
  %14 = load i32**, i32*** %__n, align 8
  %15 = getelementptr inbounds i32*, i32** %14, i32 1
  store i32** %15, i32*** %__n, align 8
  br label %6

; <label>:16                                      ; preds = %6
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIiSaIiEE17_M_deallocate_mapEPPim(%"class.std::_Deque_base"* %this, i32** %__p, i64 %__n) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  %2 = alloca i32**, align 8
  %3 = alloca i64, align 8
  %__map_alloc = alloca %"class.std::allocator.13", align 1
  %4 = alloca i8*
  %5 = alloca i32
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  store i32** %__p, i32*** %2, align 8
  store i64 %__n, i64* %3, align 8
  %6 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %1, align 8
  call void @_ZNKSt11_Deque_baseIiSaIiEE20_M_get_map_allocatorEv(%"class.std::allocator.13"* sret %__map_alloc, %"class.std::_Deque_base"* %6)
  %7 = load i32**, i32*** %2, align 8
  %8 = load i64, i64* %3, align 8
  invoke void @_ZN9__gnu_cxx14__alloc_traitsISaIPiEE10deallocateERS2_PS1_m(%"class.std::allocator.13"* dereferenceable(1) %__map_alloc, i32** %7, i64 %8)
          to label %9 unwind label %10

; <label>:9                                       ; preds = %0
  call void @_ZNSaIPiED2Ev(%"class.std::allocator.13"* %__map_alloc) #2
  ret void

; <label>:10                                      ; preds = %0
  %11 = landingpad { i8*, i32 }
          cleanup
  %12 = extractvalue { i8*, i32 } %11, 0
  store i8* %12, i8** %4, align 8
  %13 = extractvalue { i8*, i32 } %11, 1
  store i32 %13, i32* %5, align 4
  call void @_ZNSaIPiED2Ev(%"class.std::allocator.13"* %__map_alloc) #2
  br label %14

; <label>:14                                      ; preds = %10
  %15 = load i8*, i8** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = insertvalue { i8*, i32 } undef, i8* %15, 0
  %18 = insertvalue { i8*, i32 } %17, i32 %16, 1
  resume { i8*, i32 } %18
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIiSaIiEE11_Deque_implD2Ev(%"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %this) unnamed_addr #11 comdat align 2 {
  %1 = alloca %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"*, align 8
  store %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %this, %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"** %1, align 8
  %2 = load %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"*, %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"** %1, align 8
  %3 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %2 to %"class.std::allocator.10"*
  call void @_ZNSaIiED2Ev(%"class.std::allocator.10"* %3) #2
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIiSaIiEE18_M_deallocate_nodeEPi(%"class.std::_Deque_base"* %this, i32* %__p) #0 comdat align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  %2 = alloca i32*, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  store i32* %__p, i32** %2, align 8
  %3 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %1, align 8
  %4 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %4 to %"class.std::allocator.10"*
  %6 = load i32*, i32** %2, align 8
  %7 = call i64 @_ZSt16__deque_buf_sizem(i64 4)
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIiEE10deallocateERS1_Pim(%"class.std::allocator.10"* dereferenceable(1) %5, i32* %6, i64 %7)
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

; Function Attrs: uwtable
define linkonce_odr void @_ZNKSt11_Deque_baseIiSaIiEE20_M_get_map_allocatorEv(%"class.std::allocator.13"* noalias sret %agg.result, %"class.std::_Deque_base"* %this) #0 comdat align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  %2 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %1, align 8
  %3 = call dereferenceable(1) %"class.std::allocator.10"* @_ZNKSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %2)
  call void @_ZNSaIPiEC2IiEERKSaIT_E(%"class.std::allocator.13"* %agg.result, %"class.std::allocator.10"* dereferenceable(1) %3) #2
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaIPiEE10deallocateERS2_PS1_m(%"class.std::allocator.13"* dereferenceable(1) %__a, i32** %__p, i64 %__n) #0 comdat align 2 {
  %1 = alloca %"class.std::allocator.13"*, align 8
  %2 = alloca i32**, align 8
  %3 = alloca i64, align 8
  store %"class.std::allocator.13"* %__a, %"class.std::allocator.13"** %1, align 8
  store i32** %__p, i32*** %2, align 8
  store i64 %__n, i64* %3, align 8
  %4 = load %"class.std::allocator.13"*, %"class.std::allocator.13"** %1, align 8
  %5 = bitcast %"class.std::allocator.13"* %4 to %"class.__gnu_cxx::new_allocator.14"*
  %6 = load i32**, i32*** %2, align 8
  %7 = load i64, i64* %3, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIPiE10deallocateEPS1_m(%"class.__gnu_cxx::new_allocator.14"* %5, i32** %6, i64 %7)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIPiED2Ev(%"class.std::allocator.13"* %this) unnamed_addr #5 comdat align 2 {
  %1 = alloca %"class.std::allocator.13"*, align 8
  store %"class.std::allocator.13"* %this, %"class.std::allocator.13"** %1, align 8
  %2 = load %"class.std::allocator.13"*, %"class.std::allocator.13"** %1, align 8
  %3 = bitcast %"class.std::allocator.13"* %2 to %"class.__gnu_cxx::new_allocator.14"*
  call void @_ZN9__gnu_cxx13new_allocatorIPiED2Ev(%"class.__gnu_cxx::new_allocator.14"* %3) #2
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(1) %"class.std::allocator.10"* @_ZNKSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %this) #5 comdat align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  %2 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %1, align 8
  %3 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %2, i32 0, i32 0
  %4 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %3 to %"class.std::allocator.10"*
  ret %"class.std::allocator.10"* %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIPiEC2IiEERKSaIT_E(%"class.std::allocator.13"* %this, %"class.std::allocator.10"* dereferenceable(1)) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.std::allocator.13"*, align 8
  %3 = alloca %"class.std::allocator.10"*, align 8
  store %"class.std::allocator.13"* %this, %"class.std::allocator.13"** %2, align 8
  store %"class.std::allocator.10"* %0, %"class.std::allocator.10"** %3, align 8
  %4 = load %"class.std::allocator.13"*, %"class.std::allocator.13"** %2, align 8
  %5 = bitcast %"class.std::allocator.13"* %4 to %"class.__gnu_cxx::new_allocator.14"*
  call void @_ZN9__gnu_cxx13new_allocatorIPiEC2Ev(%"class.__gnu_cxx::new_allocator.14"* %5) #2
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIPiEC2Ev(%"class.__gnu_cxx::new_allocator.14"* %this) unnamed_addr #5 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.14"*, align 8
  store %"class.__gnu_cxx::new_allocator.14"* %this, %"class.__gnu_cxx::new_allocator.14"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.14"*, %"class.__gnu_cxx::new_allocator.14"** %1, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIPiE10deallocateEPS1_m(%"class.__gnu_cxx::new_allocator.14"* %this, i32** %__p, i64) #5 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.14"*, align 8
  %3 = alloca i32**, align 8
  %4 = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.14"* %this, %"class.__gnu_cxx::new_allocator.14"** %2, align 8
  store i32** %__p, i32*** %3, align 8
  store i64 %0, i64* %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.14"*, %"class.__gnu_cxx::new_allocator.14"** %2, align 8
  %6 = load i32**, i32*** %3, align 8
  %7 = bitcast i32** %6 to i8*
  call void @_ZdlPv(i8* %7) #2
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIPiED2Ev(%"class.__gnu_cxx::new_allocator.14"* %this) unnamed_addr #5 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.14"*, align 8
  store %"class.__gnu_cxx::new_allocator.14"* %this, %"class.__gnu_cxx::new_allocator.14"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.14"*, %"class.__gnu_cxx::new_allocator.14"** %1, align 8
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
define linkonce_odr void @_ZNSt12_Vector_baseI9CVariableSaIS0_EEC2Ev(%"struct.std::_Vector_base"* %this) unnamed_addr #0 comdat align 2 {
  %1 = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %1, align 8
  %2 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %1, align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %2, i32 0, i32 0
  call void @_ZNSt12_Vector_baseI9CVariableSaIS0_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl"* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseI9CVariableSaIS0_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl"* %this) unnamed_addr #5 comdat align 2 {
  %1 = alloca %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl"* %this, %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl"** %1, align 8
  %2 = load %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl"*, %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl"** %1, align 8
  %3 = bitcast %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl"* %2 to %"class.std::allocator"*
  call void @_ZNSaI9CVariableEC2Ev(%"class.std::allocator"* %3) #2
  %4 = getelementptr inbounds %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl", %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl"* %2, i32 0, i32 0
  store %class.CVariable* null, %class.CVariable** %4, align 8
  %5 = getelementptr inbounds %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl", %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl"* %2, i32 0, i32 1
  store %class.CVariable* null, %class.CVariable** %5, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl", %"struct.std::_Vector_base<CVariable, std::allocator<CVariable> >::_Vector_impl"* %2, i32 0, i32 2
  store %class.CVariable* null, %class.CVariable** %6, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaI9CVariableEC2Ev(%"class.std::allocator"* %this) unnamed_addr #5 comdat align 2 {
  %1 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %1, align 8
  %2 = load %"class.std::allocator"*, %"class.std::allocator"** %1, align 8
  %3 = bitcast %"class.std::allocator"* %2 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorI9CVariableEC2Ev(%"class.__gnu_cxx::new_allocator"* %3) #2
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorI9CVariableEC2Ev(%"class.__gnu_cxx::new_allocator"* %this) unnamed_addr #5 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %1, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt12_Vector_baseI7CClauseSaIS0_EEC2Ev(%"struct.std::_Vector_base.6"* %this) unnamed_addr #0 comdat align 2 {
  %1 = alloca %"struct.std::_Vector_base.6"*, align 8
  store %"struct.std::_Vector_base.6"* %this, %"struct.std::_Vector_base.6"** %1, align 8
  %2 = load %"struct.std::_Vector_base.6"*, %"struct.std::_Vector_base.6"** %1, align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %2, i32 0, i32 0
  call void @_ZNSt12_Vector_baseI7CClauseSaIS0_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl"* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseI7CClauseSaIS0_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl"* %this) unnamed_addr #5 comdat align 2 {
  %1 = alloca %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl"* %this, %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl"** %1, align 8
  %2 = load %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl"*, %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl"** %1, align 8
  %3 = bitcast %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl"* %2 to %"class.std::allocator.7"*
  call void @_ZNSaI7CClauseEC2Ev(%"class.std::allocator.7"* %3) #2
  %4 = getelementptr inbounds %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl", %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl"* %2, i32 0, i32 0
  store %class.CClause* null, %class.CClause** %4, align 8
  %5 = getelementptr inbounds %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl", %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl"* %2, i32 0, i32 1
  store %class.CClause* null, %class.CClause** %5, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl", %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl"* %2, i32 0, i32 2
  store %class.CClause* null, %class.CClause** %6, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaI7CClauseEC2Ev(%"class.std::allocator.7"* %this) unnamed_addr #5 comdat align 2 {
  %1 = alloca %"class.std::allocator.7"*, align 8
  store %"class.std::allocator.7"* %this, %"class.std::allocator.7"** %1, align 8
  %2 = load %"class.std::allocator.7"*, %"class.std::allocator.7"** %1, align 8
  %3 = bitcast %"class.std::allocator.7"* %2 to %"class.__gnu_cxx::new_allocator.8"*
  call void @_ZN9__gnu_cxx13new_allocatorI7CClauseEC2Ev(%"class.__gnu_cxx::new_allocator.8"* %3) #2
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorI7CClauseEC2Ev(%"class.__gnu_cxx::new_allocator.8"* %this) unnamed_addr #5 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.8"*, align 8
  store %"class.__gnu_cxx::new_allocator.8"* %this, %"class.__gnu_cxx::new_allocator.8"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.8"*, %"class.__gnu_cxx::new_allocator.8"** %1, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIiSaIiEEC2Ev(%"class.std::_Deque_base"* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  %2 = alloca i8*
  %3 = alloca i32
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  %4 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %1, align 8
  %5 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %4, i32 0, i32 0
  call void @_ZNSt11_Deque_baseIiSaIiEE11_Deque_implC2Ev(%"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %5)
  invoke void @_ZNSt11_Deque_baseIiSaIiEE17_M_initialize_mapEm(%"class.std::_Deque_base"* %4, i64 0)
          to label %6 unwind label %7

; <label>:6                                       ; preds = %0
  ret void

; <label>:7                                       ; preds = %0
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %2, align 8
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %3, align 4
  call void @_ZNSt11_Deque_baseIiSaIiEE11_Deque_implD2Ev(%"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %5) #2
  br label %11

; <label>:11                                      ; preds = %7
  %12 = load i8*, i8** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = insertvalue { i8*, i32 } undef, i8* %12, 0
  %15 = insertvalue { i8*, i32 } %14, i32 %13, 1
  resume { i8*, i32 } %15
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIiSaIiEE11_Deque_implC2Ev(%"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"*, align 8
  %2 = alloca i8*
  %3 = alloca i32
  store %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %this, %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"** %1, align 8
  %4 = load %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"*, %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"** %1, align 8
  %5 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %4 to %"class.std::allocator.10"*
  call void @_ZNSaIiEC2Ev(%"class.std::allocator.10"* %5) #2
  %6 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %4, i32 0, i32 0
  store i32** null, i32*** %6, align 8
  %7 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %4, i32 0, i32 1
  store i64 0, i64* %7, align 8
  %8 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %4, i32 0, i32 2
  invoke void @_ZNSt15_Deque_iteratorIiRiPiEC2Ev(%"struct.std::_Deque_iterator"* %8)
          to label %9 unwind label %12

; <label>:9                                       ; preds = %0
  %10 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %4, i32 0, i32 3
  invoke void @_ZNSt15_Deque_iteratorIiRiPiEC2Ev(%"struct.std::_Deque_iterator"* %10)
          to label %11 unwind label %12

; <label>:11                                      ; preds = %9
  ret void

; <label>:12                                      ; preds = %9, %0
  %13 = landingpad { i8*, i32 }
          cleanup
  %14 = extractvalue { i8*, i32 } %13, 0
  store i8* %14, i8** %2, align 8
  %15 = extractvalue { i8*, i32 } %13, 1
  store i32 %15, i32* %3, align 4
  %16 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %4 to %"class.std::allocator.10"*
  call void @_ZNSaIiED2Ev(%"class.std::allocator.10"* %16) #2
  br label %17

; <label>:17                                      ; preds = %12
  %18 = load i8*, i8** %2, align 8
  %19 = load i32, i32* %3, align 4
  %20 = insertvalue { i8*, i32 } undef, i8* %18, 0
  %21 = insertvalue { i8*, i32 } %20, i32 %19, 1
  resume { i8*, i32 } %21
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIiSaIiEE17_M_initialize_mapEm(%"class.std::_Deque_base"* %this, i64 %__num_elements) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  %2 = alloca i64, align 8
  %__num_nodes = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %__nstart = alloca i32**, align 8
  %__nfinish = alloca i32**, align 8
  %5 = alloca i8*
  %6 = alloca i32
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  store i64 %__num_elements, i64* %2, align 8
  %7 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %1, align 8
  %8 = load i64, i64* %2, align 8
  %9 = call i64 @_ZSt16__deque_buf_sizem(i64 4)
  %10 = udiv i64 %8, %9
  %11 = add i64 %10, 1
  store i64 %11, i64* %__num_nodes, align 8
  store i64 8, i64* %3, align 8
  %12 = load i64, i64* %__num_nodes, align 8
  %13 = add i64 %12, 2
  store i64 %13, i64* %4, align 8
  %14 = call dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* dereferenceable(8) %3, i64* dereferenceable(8) %4)
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %7, i32 0, i32 0
  %17 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %16, i32 0, i32 1
  store i64 %15, i64* %17, align 8
  %18 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %7, i32 0, i32 0
  %19 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32** @_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm(%"class.std::_Deque_base"* %7, i64 %20)
  %22 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %7, i32 0, i32 0
  %23 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %22, i32 0, i32 0
  store i32** %21, i32*** %23, align 8
  %24 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %7, i32 0, i32 0
  %25 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %24, i32 0, i32 0
  %26 = load i32**, i32*** %25, align 8
  %27 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %7, i32 0, i32 0
  %28 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %__num_nodes, align 8
  %31 = sub i64 %29, %30
  %32 = udiv i64 %31, 2
  %33 = getelementptr inbounds i32*, i32** %26, i64 %32
  store i32** %33, i32*** %__nstart, align 8
  %34 = load i32**, i32*** %__nstart, align 8
  %35 = load i64, i64* %__num_nodes, align 8
  %36 = getelementptr inbounds i32*, i32** %34, i64 %35
  store i32** %36, i32*** %__nfinish, align 8
  %37 = load i32**, i32*** %__nstart, align 8
  %38 = load i32**, i32*** %__nfinish, align 8
  invoke void @_ZNSt11_Deque_baseIiSaIiEE15_M_create_nodesEPPiS3_(%"class.std::_Deque_base"* %7, i32** %37, i32** %38)
          to label %39 unwind label %40

; <label>:39                                      ; preds = %0
  br label %63

; <label>:40                                      ; preds = %0
  %41 = landingpad { i8*, i32 }
          catch i8* null
  %42 = extractvalue { i8*, i32 } %41, 0
  store i8* %42, i8** %5, align 8
  %43 = extractvalue { i8*, i32 } %41, 1
  store i32 %43, i32* %6, align 4
  br label %44

; <label>:44                                      ; preds = %40
  %45 = load i8*, i8** %5, align 8
  %46 = call i8* @__cxa_begin_catch(i8* %45) #2
  %47 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %7, i32 0, i32 0
  %48 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %47, i32 0, i32 0
  %49 = load i32**, i32*** %48, align 8
  %50 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %7, i32 0, i32 0
  %51 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  invoke void @_ZNSt11_Deque_baseIiSaIiEE17_M_deallocate_mapEPPim(%"class.std::_Deque_base"* %7, i32** %49, i64 %52)
          to label %53 unwind label %58

; <label>:53                                      ; preds = %44
  %54 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %7, i32 0, i32 0
  %55 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %54, i32 0, i32 0
  store i32** null, i32*** %55, align 8
  %56 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %7, i32 0, i32 0
  %57 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %56, i32 0, i32 1
  store i64 0, i64* %57, align 8
  invoke void @__cxa_rethrow() #16
          to label %97 unwind label %58

; <label>:58                                      ; preds = %53, %44
  %59 = landingpad { i8*, i32 }
          cleanup
  %60 = extractvalue { i8*, i32 } %59, 0
  store i8* %60, i8** %5, align 8
  %61 = extractvalue { i8*, i32 } %59, 1
  store i32 %61, i32* %6, align 4
  invoke void @__cxa_end_catch()
          to label %62 unwind label %94

; <label>:62                                      ; preds = %58
  br label %89

; <label>:63                                      ; preds = %39
  %64 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %7, i32 0, i32 0
  %65 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %64, i32 0, i32 2
  %66 = load i32**, i32*** %__nstart, align 8
  call void @_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_(%"struct.std::_Deque_iterator"* %65, i32** %66)
  %67 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %7, i32 0, i32 0
  %68 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %67, i32 0, i32 3
  %69 = load i32**, i32*** %__nfinish, align 8
  %70 = getelementptr inbounds i32*, i32** %69, i64 -1
  call void @_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_(%"struct.std::_Deque_iterator"* %68, i32** %70)
  %71 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %7, i32 0, i32 0
  %72 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %71, i32 0, i32 2
  %73 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %7, i32 0, i32 0
  %76 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %75, i32 0, i32 2
  %77 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %76, i32 0, i32 0
  store i32* %74, i32** %77, align 8
  %78 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %7, i32 0, i32 0
  %79 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %78, i32 0, i32 3
  %80 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* %2, align 8
  %83 = call i64 @_ZSt16__deque_buf_sizem(i64 4)
  %84 = urem i64 %82, %83
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  %86 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %7, i32 0, i32 0
  %87 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %86, i32 0, i32 3
  %88 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %87, i32 0, i32 0
  store i32* %85, i32** %88, align 8
  ret void

; <label>:89                                      ; preds = %62
  %90 = load i8*, i8** %5, align 8
  %91 = load i32, i32* %6, align 4
  %92 = insertvalue { i8*, i32 } undef, i8* %90, 0
  %93 = insertvalue { i8*, i32 } %92, i32 %91, 1
  resume { i8*, i32 } %93

; <label>:94                                      ; preds = %58
  %95 = landingpad { i8*, i32 }
          catch i8* null
  %96 = extractvalue { i8*, i32 } %95, 0
  call void @__clang_call_terminate(i8* %96) #13
  unreachable

; <label>:97                                      ; preds = %53
  unreachable
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
define linkonce_odr void @_ZNSt15_Deque_iteratorIiRiPiEC2Ev(%"struct.std::_Deque_iterator"* %this) unnamed_addr #5 comdat align 2 {
  %1 = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"** %1, align 8
  %2 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %1, align 8
  %3 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %2, i32 0, i32 0
  store i32* null, i32** %3, align 8
  %4 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %2, i32 0, i32 1
  store i32* null, i32** %4, align 8
  %5 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %2, i32 0, i32 2
  store i32* null, i32** %5, align 8
  %6 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %2, i32 0, i32 3
  store i32** null, i32*** %6, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIiEC2Ev(%"class.__gnu_cxx::new_allocator.11"* %this) unnamed_addr #5 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.11"*, align 8
  store %"class.__gnu_cxx::new_allocator.11"* %this, %"class.__gnu_cxx::new_allocator.11"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.11"*, %"class.__gnu_cxx::new_allocator.11"** %1, align 8
  ret void
}

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

; Function Attrs: uwtable
define linkonce_odr i32** @_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm(%"class.std::_Deque_base"* %this, i64 %__n) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  %2 = alloca i64, align 8
  %__map_alloc = alloca %"class.std::allocator.13", align 1
  %3 = alloca i8*
  %4 = alloca i32
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %5 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %1, align 8
  call void @_ZNKSt11_Deque_baseIiSaIiEE20_M_get_map_allocatorEv(%"class.std::allocator.13"* sret %__map_alloc, %"class.std::_Deque_base"* %5)
  %6 = load i64, i64* %2, align 8
  %7 = invoke i32** @_ZN9__gnu_cxx14__alloc_traitsISaIPiEE8allocateERS2_m(%"class.std::allocator.13"* dereferenceable(1) %__map_alloc, i64 %6)
          to label %8 unwind label %9

; <label>:8                                       ; preds = %0
  call void @_ZNSaIPiED2Ev(%"class.std::allocator.13"* %__map_alloc) #2
  ret i32** %7

; <label>:9                                       ; preds = %0
  %10 = landingpad { i8*, i32 }
          cleanup
  %11 = extractvalue { i8*, i32 } %10, 0
  store i8* %11, i8** %3, align 8
  %12 = extractvalue { i8*, i32 } %10, 1
  store i32 %12, i32* %4, align 4
  call void @_ZNSaIPiED2Ev(%"class.std::allocator.13"* %__map_alloc) #2
  br label %13

; <label>:13                                      ; preds = %9
  %14 = load i8*, i8** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = insertvalue { i8*, i32 } undef, i8* %14, 0
  %17 = insertvalue { i8*, i32 } %16, i32 %15, 1
  resume { i8*, i32 } %17
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIiSaIiEE15_M_create_nodesEPPiS3_(%"class.std::_Deque_base"* %this, i32** %__nstart, i32** %__nfinish) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  %2 = alloca i32**, align 8
  %3 = alloca i32**, align 8
  %__cur = alloca i32**, align 8
  %4 = alloca i8*
  %5 = alloca i32
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  store i32** %__nstart, i32*** %2, align 8
  store i32** %__nfinish, i32*** %3, align 8
  %6 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %1, align 8
  %7 = load i32**, i32*** %2, align 8
  store i32** %7, i32*** %__cur, align 8
  br label %8

; <label>:8                                       ; preds = %16, %0
  %9 = load i32**, i32*** %__cur, align 8
  %10 = load i32**, i32*** %3, align 8
  %11 = icmp ult i32** %9, %10
  br i1 %11, label %12, label %29

; <label>:12                                      ; preds = %8
  %13 = invoke i32* @_ZNSt11_Deque_baseIiSaIiEE16_M_allocate_nodeEv(%"class.std::_Deque_base"* %6)
          to label %14 unwind label %19

; <label>:14                                      ; preds = %12
  %15 = load i32**, i32*** %__cur, align 8
  store i32* %13, i32** %15, align 8
  br label %16

; <label>:16                                      ; preds = %14
  %17 = load i32**, i32*** %__cur, align 8
  %18 = getelementptr inbounds i32*, i32** %17, i32 1
  store i32** %18, i32*** %__cur, align 8
  br label %8

; <label>:19                                      ; preds = %12
  %20 = landingpad { i8*, i32 }
          catch i8* null
  %21 = extractvalue { i8*, i32 } %20, 0
  store i8* %21, i8** %4, align 8
  %22 = extractvalue { i8*, i32 } %20, 1
  store i32 %22, i32* %5, align 4
  br label %23

; <label>:23                                      ; preds = %19
  %24 = load i8*, i8** %4, align 8
  %25 = call i8* @__cxa_begin_catch(i8* %24) #2
  %26 = load i32**, i32*** %2, align 8
  %27 = load i32**, i32*** %__cur, align 8
  invoke void @_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_(%"class.std::_Deque_base"* %6, i32** %26, i32** %27)
          to label %28 unwind label %30

; <label>:28                                      ; preds = %23
  invoke void @__cxa_rethrow() #16
          to label %44 unwind label %30

; <label>:29                                      ; preds = %8
  br label %35

; <label>:30                                      ; preds = %28, %23
  %31 = landingpad { i8*, i32 }
          cleanup
  %32 = extractvalue { i8*, i32 } %31, 0
  store i8* %32, i8** %4, align 8
  %33 = extractvalue { i8*, i32 } %31, 1
  store i32 %33, i32* %5, align 4
  invoke void @__cxa_end_catch()
          to label %34 unwind label %41

; <label>:34                                      ; preds = %30
  br label %36

; <label>:35                                      ; preds = %29
  ret void

; <label>:36                                      ; preds = %34
  %37 = load i8*, i8** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = insertvalue { i8*, i32 } undef, i8* %37, 0
  %40 = insertvalue { i8*, i32 } %39, i32 %38, 1
  resume { i8*, i32 } %40

; <label>:41                                      ; preds = %30
  %42 = landingpad { i8*, i32 }
          catch i8* null
  %43 = extractvalue { i8*, i32 } %42, 0
  call void @__clang_call_terminate(i8* %43) #13
  unreachable

; <label>:44                                      ; preds = %28
  unreachable
}

declare void @__cxa_rethrow()

declare void @__cxa_end_catch()

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_(%"struct.std::_Deque_iterator"* %this, i32** %__new_node) #0 comdat align 2 {
  %1 = alloca %"struct.std::_Deque_iterator"*, align 8
  %2 = alloca i32**, align 8
  store %"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"** %1, align 8
  store i32** %__new_node, i32*** %2, align 8
  %3 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %1, align 8
  %4 = load i32**, i32*** %2, align 8
  %5 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %3, i32 0, i32 3
  store i32** %4, i32*** %5, align 8
  %6 = load i32**, i32*** %2, align 8
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %3, i32 0, i32 1
  store i32* %7, i32** %8, align 8
  %9 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %3, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = call i64 @_ZNSt15_Deque_iteratorIiRiPiE14_S_buffer_sizeEv()
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %3, i32 0, i32 2
  store i32* %12, i32** %13, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr i32** @_ZN9__gnu_cxx14__alloc_traitsISaIPiEE8allocateERS2_m(%"class.std::allocator.13"* dereferenceable(1) %__a, i64 %__n) #0 comdat align 2 {
  %1 = alloca %"class.std::allocator.13"*, align 8
  %2 = alloca i64, align 8
  store %"class.std::allocator.13"* %__a, %"class.std::allocator.13"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %3 = load %"class.std::allocator.13"*, %"class.std::allocator.13"** %1, align 8
  %4 = bitcast %"class.std::allocator.13"* %3 to %"class.__gnu_cxx::new_allocator.14"*
  %5 = load i64, i64* %2, align 8
  %6 = call i32** @_ZN9__gnu_cxx13new_allocatorIPiE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.14"* %4, i64 %5, i8* null)
  ret i32** %6
}

; Function Attrs: uwtable
define linkonce_odr i32** @_ZN9__gnu_cxx13new_allocatorIPiE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.14"* %this, i64 %__n, i8*) #0 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.14"*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator.14"* %this, %"class.__gnu_cxx::new_allocator.14"** %2, align 8
  store i64 %__n, i64* %3, align 8
  store i8* %0, i8** %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.14"*, %"class.__gnu_cxx::new_allocator.14"** %2, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @_ZNK9__gnu_cxx13new_allocatorIPiE8max_sizeEv(%"class.__gnu_cxx::new_allocator.14"* %5) #2
  %8 = icmp ugt i64 %6, %7
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %1
  call void @_ZSt17__throw_bad_allocv() #16
  unreachable

; <label>:10                                      ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = mul i64 %11, 8
  %13 = call noalias i8* @_Znwm(i64 %12)
  %14 = bitcast i8* %13 to i32**
  ret i32** %14
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorIPiE8max_sizeEv(%"class.__gnu_cxx::new_allocator.14"* %this) #5 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.14"*, align 8
  store %"class.__gnu_cxx::new_allocator.14"* %this, %"class.__gnu_cxx::new_allocator.14"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.14"*, %"class.__gnu_cxx::new_allocator.14"** %1, align 8
  ret i64 2305843009213693951
}

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() #12

; Function Attrs: nobuiltin
declare noalias i8* @_Znwm(i64) #4

; Function Attrs: uwtable
define linkonce_odr i32* @_ZNSt11_Deque_baseIiSaIiEE16_M_allocate_nodeEv(%"class.std::_Deque_base"* %this) #0 comdat align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  %2 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %1, align 8
  %3 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %2, i32 0, i32 0
  %4 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %3 to %"class.std::allocator.10"*
  %5 = call i64 @_ZSt16__deque_buf_sizem(i64 4)
  %6 = call i32* @_ZN9__gnu_cxx14__alloc_traitsISaIiEE8allocateERS1_m(%"class.std::allocator.10"* dereferenceable(1) %4, i64 %5)
  ret i32* %6
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

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(%"class.__gnu_cxx::new_allocator.11"* %this) #5 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.11"*, align 8
  store %"class.__gnu_cxx::new_allocator.11"* %this, %"class.__gnu_cxx::new_allocator.11"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.11"*, %"class.__gnu_cxx::new_allocator.11"** %1, align 8
  ret i64 4611686018427387903
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt5dequeIiSaIiEEC2ERKS1_(%"class.std::deque"* %this, %"class.std::deque"* dereferenceable(80) %__x) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %"class.std::deque"*, align 8
  %2 = alloca %"class.std::deque"*, align 8
  %3 = alloca %"struct.std::_Deque_iterator.16", align 8
  %4 = alloca i8*
  %5 = alloca i32
  %6 = alloca %"struct.std::_Deque_iterator.16", align 8
  %7 = alloca %"struct.std::_Deque_iterator", align 8
  %8 = alloca %"struct.std::_Deque_iterator", align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  store %"class.std::deque"* %__x, %"class.std::deque"** %2, align 8
  %9 = load %"class.std::deque"*, %"class.std::deque"** %1, align 8
  %10 = bitcast %"class.std::deque"* %9 to %"class.std::_Deque_base"*
  %11 = load %"class.std::deque"*, %"class.std::deque"** %2, align 8
  %12 = bitcast %"class.std::deque"* %11 to %"class.std::_Deque_base"*
  %13 = call dereferenceable(1) %"class.std::allocator.10"* @_ZNKSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %12)
  %14 = call dereferenceable(1) %"class.std::allocator.10"* @_ZN9__gnu_cxx14__alloc_traitsISaIiEE17_S_select_on_copyERKS1_(%"class.std::allocator.10"* dereferenceable(1) %13)
  %15 = load %"class.std::deque"*, %"class.std::deque"** %2, align 8
  %16 = call i64 @_ZNKSt5dequeIiSaIiEE4sizeEv(%"class.std::deque"* %15)
  call void @_ZNSt11_Deque_baseIiSaIiEEC2ERKS0_m(%"class.std::_Deque_base"* %10, %"class.std::allocator.10"* dereferenceable(1) %14, i64 %16)
  %17 = load %"class.std::deque"*, %"class.std::deque"** %2, align 8
  invoke void @_ZNKSt5dequeIiSaIiEE5beginEv(%"struct.std::_Deque_iterator.16"* sret %3, %"class.std::deque"* %17)
          to label %18 unwind label %29

; <label>:18                                      ; preds = %0
  %19 = load %"class.std::deque"*, %"class.std::deque"** %2, align 8
  invoke void @_ZNKSt5dequeIiSaIiEE3endEv(%"struct.std::_Deque_iterator.16"* sret %6, %"class.std::deque"* %19)
          to label %20 unwind label %29

; <label>:20                                      ; preds = %18
  %21 = bitcast %"class.std::deque"* %9 to %"class.std::_Deque_base"*
  %22 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %21, i32 0, i32 0
  %23 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %22, i32 0, i32 2
  invoke void @_ZNSt15_Deque_iteratorIiRiPiEC2ERKS2_(%"struct.std::_Deque_iterator"* %7, %"struct.std::_Deque_iterator"* dereferenceable(32) %23)
          to label %24 unwind label %29

; <label>:24                                      ; preds = %20
  %25 = bitcast %"class.std::deque"* %9 to %"class.std::_Deque_base"*
  %26 = invoke dereferenceable(1) %"class.std::allocator.10"* @_ZNSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %25)
          to label %27 unwind label %29

; <label>:27                                      ; preds = %24
  invoke void @_ZSt22__uninitialized_copy_aISt15_Deque_iteratorIiRKiPS1_ES0_IiRiPiEiET0_T_S9_S8_RSaIT1_E(%"struct.std::_Deque_iterator"* sret %8, %"struct.std::_Deque_iterator.16"* byval align 8 %3, %"struct.std::_Deque_iterator.16"* byval align 8 %6, %"struct.std::_Deque_iterator"* %7, %"class.std::allocator.10"* dereferenceable(1) %26)
          to label %28 unwind label %29

; <label>:28                                      ; preds = %27
  ret void

; <label>:29                                      ; preds = %27, %24, %20, %18, %0
  %30 = landingpad { i8*, i32 }
          cleanup
  %31 = extractvalue { i8*, i32 } %30, 0
  store i8* %31, i8** %4, align 8
  %32 = extractvalue { i8*, i32 } %30, 1
  store i32 %32, i32* %5, align 4
  %33 = bitcast %"class.std::deque"* %9 to %"class.std::_Deque_base"*
  invoke void @_ZNSt11_Deque_baseIiSaIiEED2Ev(%"class.std::_Deque_base"* %33)
          to label %34 unwind label %40

; <label>:34                                      ; preds = %29
  br label %35

; <label>:35                                      ; preds = %34
  %36 = load i8*, i8** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = insertvalue { i8*, i32 } undef, i8* %36, 0
  %39 = insertvalue { i8*, i32 } %38, i32 %37, 1
  resume { i8*, i32 } %39

; <label>:40                                      ; preds = %29
  %41 = landingpad { i8*, i32 }
          catch i8* null
  %42 = extractvalue { i8*, i32 } %41, 0
  call void @__clang_call_terminate(i8* %42) #13
  unreachable
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(1) %"class.std::allocator.10"* @_ZN9__gnu_cxx14__alloc_traitsISaIiEE17_S_select_on_copyERKS1_(%"class.std::allocator.10"* dereferenceable(1) %__a) #5 comdat align 2 {
  %1 = alloca %"class.std::allocator.10"*, align 8
  store %"class.std::allocator.10"* %__a, %"class.std::allocator.10"** %1, align 8
  %2 = load %"class.std::allocator.10"*, %"class.std::allocator.10"** %1, align 8
  ret %"class.std::allocator.10"* %2
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIiSaIiEEC2ERKS0_m(%"class.std::_Deque_base"* %this, %"class.std::allocator.10"* dereferenceable(1) %__a, i64 %__num_elements) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  %2 = alloca %"class.std::allocator.10"*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*
  %5 = alloca i32
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  store %"class.std::allocator.10"* %__a, %"class.std::allocator.10"** %2, align 8
  store i64 %__num_elements, i64* %3, align 8
  %6 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %1, align 8
  %7 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %6, i32 0, i32 0
  %8 = load %"class.std::allocator.10"*, %"class.std::allocator.10"** %2, align 8
  call void @_ZNSt11_Deque_baseIiSaIiEE11_Deque_implC2ERKS0_(%"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %7, %"class.std::allocator.10"* dereferenceable(1) %8)
  %9 = load i64, i64* %3, align 8
  invoke void @_ZNSt11_Deque_baseIiSaIiEE17_M_initialize_mapEm(%"class.std::_Deque_base"* %6, i64 %9)
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
  call void @_ZNSt11_Deque_baseIiSaIiEE11_Deque_implD2Ev(%"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %7) #2
  br label %15

; <label>:15                                      ; preds = %11
  %16 = load i8*, i8** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = insertvalue { i8*, i32 } undef, i8* %16, 0
  %19 = insertvalue { i8*, i32 } %18, i32 %17, 1
  resume { i8*, i32 } %19
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt22__uninitialized_copy_aISt15_Deque_iteratorIiRKiPS1_ES0_IiRiPiEiET0_T_S9_S8_RSaIT1_E(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"struct.std::_Deque_iterator.16"* byval align 8 %__first, %"struct.std::_Deque_iterator.16"* byval align 8 %__last, %"struct.std::_Deque_iterator"* %__result, %"class.std::allocator.10"* dereferenceable(1)) #7 comdat {
  %2 = alloca %"class.std::allocator.10"*, align 8
  %3 = alloca %"struct.std::_Deque_iterator.16", align 8
  %4 = alloca %"struct.std::_Deque_iterator.16", align 8
  %5 = alloca %"struct.std::_Deque_iterator", align 8
  store %"class.std::allocator.10"* %0, %"class.std::allocator.10"** %2, align 8
  %6 = bitcast %"struct.std::_Deque_iterator.16"* %3 to i8*
  %7 = bitcast %"struct.std::_Deque_iterator.16"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 32, i32 8, i1 false)
  %8 = bitcast %"struct.std::_Deque_iterator.16"* %4 to i8*
  %9 = bitcast %"struct.std::_Deque_iterator.16"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 32, i32 8, i1 false)
  call void @_ZNSt15_Deque_iteratorIiRiPiEC2ERKS2_(%"struct.std::_Deque_iterator"* %5, %"struct.std::_Deque_iterator"* dereferenceable(32) %__result)
  call void @_ZSt18uninitialized_copyISt15_Deque_iteratorIiRKiPS1_ES0_IiRiPiEET0_T_S9_S8_(%"struct.std::_Deque_iterator"* sret %agg.result, %"struct.std::_Deque_iterator.16"* byval align 8 %3, %"struct.std::_Deque_iterator.16"* byval align 8 %4, %"struct.std::_Deque_iterator"* %5)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNKSt5dequeIiSaIiEE5beginEv(%"struct.std::_Deque_iterator.16"* noalias sret %agg.result, %"class.std::deque"* %this) #0 comdat align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  %2 = load %"class.std::deque"*, %"class.std::deque"** %1, align 8
  %3 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %4 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %4, i32 0, i32 2
  call void @_ZNSt15_Deque_iteratorIiRKiPS0_EC2ERKS_IiRiPiE(%"struct.std::_Deque_iterator.16"* %agg.result, %"struct.std::_Deque_iterator"* dereferenceable(32) %5)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNKSt5dequeIiSaIiEE3endEv(%"struct.std::_Deque_iterator.16"* noalias sret %agg.result, %"class.std::deque"* %this) #0 comdat align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  %2 = load %"class.std::deque"*, %"class.std::deque"** %1, align 8
  %3 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %4 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %4, i32 0, i32 3
  call void @_ZNSt15_Deque_iteratorIiRKiPS0_EC2ERKS_IiRiPiE(%"struct.std::_Deque_iterator.16"* %agg.result, %"struct.std::_Deque_iterator"* dereferenceable(32) %5)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIiSaIiEE11_Deque_implC2ERKS0_(%"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %this, %"class.std::allocator.10"* dereferenceable(1) %__a) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"*, align 8
  %2 = alloca %"class.std::allocator.10"*, align 8
  %3 = alloca i8*
  %4 = alloca i32
  store %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %this, %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"** %1, align 8
  store %"class.std::allocator.10"* %__a, %"class.std::allocator.10"** %2, align 8
  %5 = load %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"*, %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"** %1, align 8
  %6 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %5 to %"class.std::allocator.10"*
  %7 = load %"class.std::allocator.10"*, %"class.std::allocator.10"** %2, align 8
  call void @_ZNSaIiEC2ERKS_(%"class.std::allocator.10"* %6, %"class.std::allocator.10"* dereferenceable(1) %7) #2
  %8 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %5, i32 0, i32 0
  store i32** null, i32*** %8, align 8
  %9 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %5, i32 0, i32 1
  store i64 0, i64* %9, align 8
  %10 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %5, i32 0, i32 2
  invoke void @_ZNSt15_Deque_iteratorIiRiPiEC2Ev(%"struct.std::_Deque_iterator"* %10)
          to label %11 unwind label %14

; <label>:11                                      ; preds = %0
  %12 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %5, i32 0, i32 3
  invoke void @_ZNSt15_Deque_iteratorIiRiPiEC2Ev(%"struct.std::_Deque_iterator"* %12)
          to label %13 unwind label %14

; <label>:13                                      ; preds = %11
  ret void

; <label>:14                                      ; preds = %11, %0
  %15 = landingpad { i8*, i32 }
          cleanup
  %16 = extractvalue { i8*, i32 } %15, 0
  store i8* %16, i8** %3, align 8
  %17 = extractvalue { i8*, i32 } %15, 1
  store i32 %17, i32* %4, align 4
  %18 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %5 to %"class.std::allocator.10"*
  call void @_ZNSaIiED2Ev(%"class.std::allocator.10"* %18) #2
  br label %19

; <label>:19                                      ; preds = %14
  %20 = load i8*, i8** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = insertvalue { i8*, i32 } undef, i8* %20, 0
  %23 = insertvalue { i8*, i32 } %22, i32 %21, 1
  resume { i8*, i32 } %23
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIiEC2ERKS_(%"class.std::allocator.10"* %this, %"class.std::allocator.10"* dereferenceable(1) %__a) unnamed_addr #5 comdat align 2 {
  %1 = alloca %"class.std::allocator.10"*, align 8
  %2 = alloca %"class.std::allocator.10"*, align 8
  store %"class.std::allocator.10"* %this, %"class.std::allocator.10"** %1, align 8
  store %"class.std::allocator.10"* %__a, %"class.std::allocator.10"** %2, align 8
  %3 = load %"class.std::allocator.10"*, %"class.std::allocator.10"** %1, align 8
  %4 = bitcast %"class.std::allocator.10"* %3 to %"class.__gnu_cxx::new_allocator.11"*
  %5 = load %"class.std::allocator.10"*, %"class.std::allocator.10"** %2, align 8
  %6 = bitcast %"class.std::allocator.10"* %5 to %"class.__gnu_cxx::new_allocator.11"*
  call void @_ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_(%"class.__gnu_cxx::new_allocator.11"* %4, %"class.__gnu_cxx::new_allocator.11"* dereferenceable(1) %6) #2
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_(%"class.__gnu_cxx::new_allocator.11"* %this, %"class.__gnu_cxx::new_allocator.11"* dereferenceable(1)) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.11"*, align 8
  %3 = alloca %"class.__gnu_cxx::new_allocator.11"*, align 8
  store %"class.__gnu_cxx::new_allocator.11"* %this, %"class.__gnu_cxx::new_allocator.11"** %2, align 8
  store %"class.__gnu_cxx::new_allocator.11"* %0, %"class.__gnu_cxx::new_allocator.11"** %3, align 8
  %4 = load %"class.__gnu_cxx::new_allocator.11"*, %"class.__gnu_cxx::new_allocator.11"** %2, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt18uninitialized_copyISt15_Deque_iteratorIiRKiPS1_ES0_IiRiPiEET0_T_S9_S8_(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"struct.std::_Deque_iterator.16"* byval align 8 %__first, %"struct.std::_Deque_iterator.16"* byval align 8 %__last, %"struct.std::_Deque_iterator"* %__result) #7 comdat {
  %__assignable = alloca i8, align 1
  %1 = alloca %"struct.std::_Deque_iterator.16", align 8
  %2 = alloca %"struct.std::_Deque_iterator.16", align 8
  %3 = alloca %"struct.std::_Deque_iterator", align 8
  store i8 1, i8* %__assignable, align 1
  %4 = bitcast %"struct.std::_Deque_iterator.16"* %1 to i8*
  %5 = bitcast %"struct.std::_Deque_iterator.16"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 32, i32 8, i1 false)
  %6 = bitcast %"struct.std::_Deque_iterator.16"* %2 to i8*
  %7 = bitcast %"struct.std::_Deque_iterator.16"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 32, i32 8, i1 false)
  call void @_ZNSt15_Deque_iteratorIiRiPiEC2ERKS2_(%"struct.std::_Deque_iterator"* %3, %"struct.std::_Deque_iterator"* dereferenceable(32) %__result)
  call void @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt15_Deque_iteratorIiRKiPS3_ES2_IiRiPiEEET0_T_SB_SA_(%"struct.std::_Deque_iterator"* sret %agg.result, %"struct.std::_Deque_iterator.16"* byval align 8 %1, %"struct.std::_Deque_iterator.16"* byval align 8 %2, %"struct.std::_Deque_iterator"* %3)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt15_Deque_iteratorIiRKiPS3_ES2_IiRiPiEEET0_T_SB_SA_(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"struct.std::_Deque_iterator.16"* byval align 8 %__first, %"struct.std::_Deque_iterator.16"* byval align 8 %__last, %"struct.std::_Deque_iterator"* %__result) #0 comdat align 2 {
  %1 = alloca %"struct.std::_Deque_iterator.16", align 8
  %2 = alloca %"struct.std::_Deque_iterator.16", align 8
  %3 = alloca %"struct.std::_Deque_iterator", align 8
  %4 = bitcast %"struct.std::_Deque_iterator.16"* %1 to i8*
  %5 = bitcast %"struct.std::_Deque_iterator.16"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 32, i32 8, i1 false)
  %6 = bitcast %"struct.std::_Deque_iterator.16"* %2 to i8*
  %7 = bitcast %"struct.std::_Deque_iterator.16"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 32, i32 8, i1 false)
  call void @_ZNSt15_Deque_iteratorIiRiPiEC2ERKS2_(%"struct.std::_Deque_iterator"* %3, %"struct.std::_Deque_iterator"* dereferenceable(32) %__result)
  call void @_ZSt4copyISt15_Deque_iteratorIiRKiPS1_ES0_IiRiPiEET0_T_S9_S8_(%"struct.std::_Deque_iterator"* sret %agg.result, %"struct.std::_Deque_iterator.16"* byval align 8 %1, %"struct.std::_Deque_iterator.16"* byval align 8 %2, %"struct.std::_Deque_iterator"* %3)
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt4copyISt15_Deque_iteratorIiRKiPS1_ES0_IiRiPiEET0_T_S9_S8_(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"struct.std::_Deque_iterator.16"* byval align 8 %__first, %"struct.std::_Deque_iterator.16"* byval align 8 %__last, %"struct.std::_Deque_iterator"* %__result) #7 comdat {
  %1 = alloca %"struct.std::_Deque_iterator.16", align 8
  %2 = alloca %"struct.std::_Deque_iterator.16", align 8
  %3 = alloca %"struct.std::_Deque_iterator.16", align 8
  %4 = alloca %"struct.std::_Deque_iterator.16", align 8
  %5 = alloca %"struct.std::_Deque_iterator", align 8
  %6 = bitcast %"struct.std::_Deque_iterator.16"* %2 to i8*
  %7 = bitcast %"struct.std::_Deque_iterator.16"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 32, i32 8, i1 false)
  call void @_ZSt12__miter_baseISt15_Deque_iteratorIiRKiPS1_EENSt11_Miter_baseIT_E13iterator_typeES6_(%"struct.std::_Deque_iterator.16"* sret %1, %"struct.std::_Deque_iterator.16"* byval align 8 %2)
  %8 = bitcast %"struct.std::_Deque_iterator.16"* %4 to i8*
  %9 = bitcast %"struct.std::_Deque_iterator.16"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 32, i32 8, i1 false)
  call void @_ZSt12__miter_baseISt15_Deque_iteratorIiRKiPS1_EENSt11_Miter_baseIT_E13iterator_typeES6_(%"struct.std::_Deque_iterator.16"* sret %3, %"struct.std::_Deque_iterator.16"* byval align 8 %4)
  call void @_ZNSt15_Deque_iteratorIiRiPiEC2ERKS2_(%"struct.std::_Deque_iterator"* %5, %"struct.std::_Deque_iterator"* dereferenceable(32) %__result)
  call void @_ZSt14__copy_move_a2ILb0ESt15_Deque_iteratorIiRKiPS1_ES0_IiRiPiEET1_T0_S9_S8_(%"struct.std::_Deque_iterator"* sret %agg.result, %"struct.std::_Deque_iterator.16"* byval align 8 %1, %"struct.std::_Deque_iterator.16"* byval align 8 %3, %"struct.std::_Deque_iterator"* %5)
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt14__copy_move_a2ILb0ESt15_Deque_iteratorIiRKiPS1_ES0_IiRiPiEET1_T0_S9_S8_(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"struct.std::_Deque_iterator.16"* byval align 8 %__first, %"struct.std::_Deque_iterator.16"* byval align 8 %__last, %"struct.std::_Deque_iterator"* %__result) #7 comdat {
  %1 = alloca %"struct.std::_Deque_iterator.16", align 8
  %2 = alloca %"struct.std::_Deque_iterator.16", align 8
  %3 = alloca %"struct.std::_Deque_iterator.16", align 8
  %4 = alloca %"struct.std::_Deque_iterator.16", align 8
  %5 = alloca %"struct.std::_Deque_iterator", align 8
  %6 = alloca %"struct.std::_Deque_iterator", align 8
  %7 = bitcast %"struct.std::_Deque_iterator.16"* %2 to i8*
  %8 = bitcast %"struct.std::_Deque_iterator.16"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 32, i32 8, i1 false)
  call void @_ZSt12__niter_baseISt15_Deque_iteratorIiRKiPS1_EENSt11_Niter_baseIT_E13iterator_typeES6_(%"struct.std::_Deque_iterator.16"* sret %1, %"struct.std::_Deque_iterator.16"* byval align 8 %2)
  %9 = bitcast %"struct.std::_Deque_iterator.16"* %4 to i8*
  %10 = bitcast %"struct.std::_Deque_iterator.16"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 32, i32 8, i1 false)
  call void @_ZSt12__niter_baseISt15_Deque_iteratorIiRKiPS1_EENSt11_Niter_baseIT_E13iterator_typeES6_(%"struct.std::_Deque_iterator.16"* sret %3, %"struct.std::_Deque_iterator.16"* byval align 8 %4)
  call void @_ZNSt15_Deque_iteratorIiRiPiEC2ERKS2_(%"struct.std::_Deque_iterator"* %6, %"struct.std::_Deque_iterator"* dereferenceable(32) %__result)
  call void @_ZSt12__niter_baseISt15_Deque_iteratorIiRiPiEENSt11_Niter_baseIT_E13iterator_typeES5_(%"struct.std::_Deque_iterator"* sret %5, %"struct.std::_Deque_iterator"* %6)
  call void @_ZSt13__copy_move_aILb0ESt15_Deque_iteratorIiRKiPS1_ES0_IiRiPiEET1_T0_S9_S8_(%"struct.std::_Deque_iterator"* sret %agg.result, %"struct.std::_Deque_iterator.16"* byval align 8 %1, %"struct.std::_Deque_iterator.16"* byval align 8 %3, %"struct.std::_Deque_iterator"* %5)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZSt12__miter_baseISt15_Deque_iteratorIiRKiPS1_EENSt11_Miter_baseIT_E13iterator_typeES6_(%"struct.std::_Deque_iterator.16"* noalias sret %agg.result, %"struct.std::_Deque_iterator.16"* byval align 8 %__it) #11 comdat {
  %1 = alloca %"struct.std::_Deque_iterator.16", align 8
  %2 = bitcast %"struct.std::_Deque_iterator.16"* %1 to i8*
  %3 = bitcast %"struct.std::_Deque_iterator.16"* %__it to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 32, i32 8, i1 false)
  call void @_ZNSt10_Iter_baseISt15_Deque_iteratorIiRKiPS1_ELb0EE7_S_baseES4_(%"struct.std::_Deque_iterator.16"* sret %agg.result, %"struct.std::_Deque_iterator.16"* byval align 8 %1)
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt13__copy_move_aILb0ESt15_Deque_iteratorIiRKiPS1_ES0_IiRiPiEET1_T0_S9_S8_(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"struct.std::_Deque_iterator.16"* byval align 8 %__first, %"struct.std::_Deque_iterator.16"* byval align 8 %__last, %"struct.std::_Deque_iterator"* %__result) #7 comdat {
  %__simple = alloca i8, align 1
  %1 = alloca %"struct.std::_Deque_iterator.16", align 8
  %2 = alloca %"struct.std::_Deque_iterator.16", align 8
  %3 = alloca %"struct.std::_Deque_iterator", align 8
  store i8 0, i8* %__simple, align 1
  %4 = bitcast %"struct.std::_Deque_iterator.16"* %1 to i8*
  %5 = bitcast %"struct.std::_Deque_iterator.16"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 32, i32 8, i1 false)
  %6 = bitcast %"struct.std::_Deque_iterator.16"* %2 to i8*
  %7 = bitcast %"struct.std::_Deque_iterator.16"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 32, i32 8, i1 false)
  call void @_ZNSt15_Deque_iteratorIiRiPiEC2ERKS2_(%"struct.std::_Deque_iterator"* %3, %"struct.std::_Deque_iterator"* dereferenceable(32) %__result)
  call void @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mISt15_Deque_iteratorIiRKiPS4_ES3_IiRiPiEEET0_T_SC_SB_(%"struct.std::_Deque_iterator"* sret %agg.result, %"struct.std::_Deque_iterator.16"* byval align 8 %1, %"struct.std::_Deque_iterator.16"* byval align 8 %2, %"struct.std::_Deque_iterator"* %3)
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt12__niter_baseISt15_Deque_iteratorIiRKiPS1_EENSt11_Niter_baseIT_E13iterator_typeES6_(%"struct.std::_Deque_iterator.16"* noalias sret %agg.result, %"struct.std::_Deque_iterator.16"* byval align 8 %__it) #7 comdat {
  %1 = alloca %"struct.std::_Deque_iterator.16", align 8
  %2 = bitcast %"struct.std::_Deque_iterator.16"* %1 to i8*
  %3 = bitcast %"struct.std::_Deque_iterator.16"* %__it to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 32, i32 8, i1 false)
  call void @_ZNSt10_Iter_baseISt15_Deque_iteratorIiRKiPS1_ELb0EE7_S_baseES4_(%"struct.std::_Deque_iterator.16"* sret %agg.result, %"struct.std::_Deque_iterator.16"* byval align 8 %1)
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt12__niter_baseISt15_Deque_iteratorIiRiPiEENSt11_Niter_baseIT_E13iterator_typeES5_(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"struct.std::_Deque_iterator"* %__it) #7 comdat {
  %1 = alloca %"struct.std::_Deque_iterator", align 8
  call void @_ZNSt15_Deque_iteratorIiRiPiEC2ERKS2_(%"struct.std::_Deque_iterator"* %1, %"struct.std::_Deque_iterator"* dereferenceable(32) %__it)
  call void @_ZNSt10_Iter_baseISt15_Deque_iteratorIiRiPiELb0EE7_S_baseES3_(%"struct.std::_Deque_iterator"* sret %agg.result, %"struct.std::_Deque_iterator"* %1)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mISt15_Deque_iteratorIiRKiPS4_ES3_IiRiPiEEET0_T_SC_SB_(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"struct.std::_Deque_iterator.16"* byval align 8 %__first, %"struct.std::_Deque_iterator.16"* byval align 8 %__last, %"struct.std::_Deque_iterator"* %__result) #0 comdat align 2 {
  %__n = alloca i64, align 8
  %1 = call i64 @_ZStmiIiRKiPS0_ENSt15_Deque_iteratorIT_T0_T1_E15difference_typeERKS7_SA_(%"struct.std::_Deque_iterator.16"* dereferenceable(32) %__last, %"struct.std::_Deque_iterator.16"* dereferenceable(32) %__first)
  store i64 %1, i64* %__n, align 8
  br label %2

; <label>:2                                       ; preds = %11, %0
  %3 = load i64, i64* %__n, align 8
  %4 = icmp sgt i64 %3, 0
  br i1 %4, label %5, label %14

; <label>:5                                       ; preds = %2
  %6 = call dereferenceable(4) i32* @_ZNKSt15_Deque_iteratorIiRKiPS0_EdeEv(%"struct.std::_Deque_iterator.16"* %__first)
  %7 = load i32, i32* %6, align 4
  %8 = call dereferenceable(4) i32* @_ZNKSt15_Deque_iteratorIiRiPiEdeEv(%"struct.std::_Deque_iterator"* %__result)
  store i32 %7, i32* %8, align 4
  %9 = call dereferenceable(32) %"struct.std::_Deque_iterator.16"* @_ZNSt15_Deque_iteratorIiRKiPS0_EppEv(%"struct.std::_Deque_iterator.16"* %__first)
  %10 = call dereferenceable(32) %"struct.std::_Deque_iterator"* @_ZNSt15_Deque_iteratorIiRiPiEppEv(%"struct.std::_Deque_iterator"* %__result)
  br label %11

; <label>:11                                      ; preds = %5
  %12 = load i64, i64* %__n, align 8
  %13 = add nsw i64 %12, -1
  store i64 %13, i64* %__n, align 8
  br label %2

; <label>:14                                      ; preds = %2
  call void @_ZNSt15_Deque_iteratorIiRiPiEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.result, %"struct.std::_Deque_iterator"* dereferenceable(32) %__result)
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i64 @_ZStmiIiRKiPS0_ENSt15_Deque_iteratorIT_T0_T1_E15difference_typeERKS7_SA_(%"struct.std::_Deque_iterator.16"* dereferenceable(32) %__x, %"struct.std::_Deque_iterator.16"* dereferenceable(32) %__y) #7 comdat {
  %1 = alloca %"struct.std::_Deque_iterator.16"*, align 8
  %2 = alloca %"struct.std::_Deque_iterator.16"*, align 8
  store %"struct.std::_Deque_iterator.16"* %__x, %"struct.std::_Deque_iterator.16"** %1, align 8
  store %"struct.std::_Deque_iterator.16"* %__y, %"struct.std::_Deque_iterator.16"** %2, align 8
  %3 = call i64 @_ZNSt15_Deque_iteratorIiRKiPS0_E14_S_buffer_sizeEv()
  %4 = load %"struct.std::_Deque_iterator.16"*, %"struct.std::_Deque_iterator.16"** %1, align 8
  %5 = getelementptr inbounds %"struct.std::_Deque_iterator.16", %"struct.std::_Deque_iterator.16"* %4, i32 0, i32 3
  %6 = load i32**, i32*** %5, align 8
  %7 = load %"struct.std::_Deque_iterator.16"*, %"struct.std::_Deque_iterator.16"** %2, align 8
  %8 = getelementptr inbounds %"struct.std::_Deque_iterator.16", %"struct.std::_Deque_iterator.16"* %7, i32 0, i32 3
  %9 = load i32**, i32*** %8, align 8
  %10 = ptrtoint i32** %6 to i64
  %11 = ptrtoint i32** %9 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 8
  %14 = sub nsw i64 %13, 1
  %15 = mul nsw i64 %3, %14
  %16 = load %"struct.std::_Deque_iterator.16"*, %"struct.std::_Deque_iterator.16"** %1, align 8
  %17 = getelementptr inbounds %"struct.std::_Deque_iterator.16", %"struct.std::_Deque_iterator.16"* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load %"struct.std::_Deque_iterator.16"*, %"struct.std::_Deque_iterator.16"** %1, align 8
  %20 = getelementptr inbounds %"struct.std::_Deque_iterator.16", %"struct.std::_Deque_iterator.16"* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = ptrtoint i32* %18 to i64
  %23 = ptrtoint i32* %21 to i64
  %24 = sub i64 %22, %23
  %25 = sdiv exact i64 %24, 4
  %26 = add nsw i64 %15, %25
  %27 = load %"struct.std::_Deque_iterator.16"*, %"struct.std::_Deque_iterator.16"** %2, align 8
  %28 = getelementptr inbounds %"struct.std::_Deque_iterator.16", %"struct.std::_Deque_iterator.16"* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load %"struct.std::_Deque_iterator.16"*, %"struct.std::_Deque_iterator.16"** %2, align 8
  %31 = getelementptr inbounds %"struct.std::_Deque_iterator.16", %"struct.std::_Deque_iterator.16"* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = ptrtoint i32* %29 to i64
  %34 = ptrtoint i32* %32 to i64
  %35 = sub i64 %33, %34
  %36 = sdiv exact i64 %35, 4
  %37 = add nsw i64 %26, %36
  ret i64 %37
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(4) i32* @_ZNKSt15_Deque_iteratorIiRKiPS0_EdeEv(%"struct.std::_Deque_iterator.16"* %this) #5 comdat align 2 {
  %1 = alloca %"struct.std::_Deque_iterator.16"*, align 8
  store %"struct.std::_Deque_iterator.16"* %this, %"struct.std::_Deque_iterator.16"** %1, align 8
  %2 = load %"struct.std::_Deque_iterator.16"*, %"struct.std::_Deque_iterator.16"** %1, align 8
  %3 = getelementptr inbounds %"struct.std::_Deque_iterator.16", %"struct.std::_Deque_iterator.16"* %2, i32 0, i32 0
  %4 = load i32*, i32** %3, align 8
  ret i32* %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(4) i32* @_ZNKSt15_Deque_iteratorIiRiPiEdeEv(%"struct.std::_Deque_iterator"* %this) #5 comdat align 2 {
  %1 = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"** %1, align 8
  %2 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %1, align 8
  %3 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %2, i32 0, i32 0
  %4 = load i32*, i32** %3, align 8
  ret i32* %4
}

; Function Attrs: uwtable
define linkonce_odr dereferenceable(32) %"struct.std::_Deque_iterator.16"* @_ZNSt15_Deque_iteratorIiRKiPS0_EppEv(%"struct.std::_Deque_iterator.16"* %this) #0 comdat align 2 {
  %1 = alloca %"struct.std::_Deque_iterator.16"*, align 8
  store %"struct.std::_Deque_iterator.16"* %this, %"struct.std::_Deque_iterator.16"** %1, align 8
  %2 = load %"struct.std::_Deque_iterator.16"*, %"struct.std::_Deque_iterator.16"** %1, align 8
  %3 = getelementptr inbounds %"struct.std::_Deque_iterator.16", %"struct.std::_Deque_iterator.16"* %2, i32 0, i32 0
  %4 = load i32*, i32** %3, align 8
  %5 = getelementptr inbounds i32, i32* %4, i32 1
  store i32* %5, i32** %3, align 8
  %6 = getelementptr inbounds %"struct.std::_Deque_iterator.16", %"struct.std::_Deque_iterator.16"* %2, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds %"struct.std::_Deque_iterator.16", %"struct.std::_Deque_iterator.16"* %2, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %7, %9
  br i1 %10, label %11, label %18

; <label>:11                                      ; preds = %0
  %12 = getelementptr inbounds %"struct.std::_Deque_iterator.16", %"struct.std::_Deque_iterator.16"* %2, i32 0, i32 3
  %13 = load i32**, i32*** %12, align 8
  %14 = getelementptr inbounds i32*, i32** %13, i64 1
  call void @_ZNSt15_Deque_iteratorIiRKiPS0_E11_M_set_nodeEPPi(%"struct.std::_Deque_iterator.16"* %2, i32** %14)
  %15 = getelementptr inbounds %"struct.std::_Deque_iterator.16", %"struct.std::_Deque_iterator.16"* %2, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds %"struct.std::_Deque_iterator.16", %"struct.std::_Deque_iterator.16"* %2, i32 0, i32 0
  store i32* %16, i32** %17, align 8
  br label %18

; <label>:18                                      ; preds = %11, %0
  ret %"struct.std::_Deque_iterator.16"* %2
}

; Function Attrs: uwtable
define linkonce_odr dereferenceable(32) %"struct.std::_Deque_iterator"* @_ZNSt15_Deque_iteratorIiRiPiEppEv(%"struct.std::_Deque_iterator"* %this) #0 comdat align 2 {
  %1 = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"** %1, align 8
  %2 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %1, align 8
  %3 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %2, i32 0, i32 0
  %4 = load i32*, i32** %3, align 8
  %5 = getelementptr inbounds i32, i32* %4, i32 1
  store i32* %5, i32** %3, align 8
  %6 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %2, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %2, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %7, %9
  br i1 %10, label %11, label %18

; <label>:11                                      ; preds = %0
  %12 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %2, i32 0, i32 3
  %13 = load i32**, i32*** %12, align 8
  %14 = getelementptr inbounds i32*, i32** %13, i64 1
  call void @_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_(%"struct.std::_Deque_iterator"* %2, i32** %14)
  %15 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %2, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %2, i32 0, i32 0
  store i32* %16, i32** %17, align 8
  br label %18

; <label>:18                                      ; preds = %11, %0
  ret %"struct.std::_Deque_iterator"* %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNSt15_Deque_iteratorIiRKiPS0_E14_S_buffer_sizeEv() #5 comdat align 2 {
  %1 = call i64 @_ZSt16__deque_buf_sizem(i64 4)
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt15_Deque_iteratorIiRKiPS0_E11_M_set_nodeEPPi(%"struct.std::_Deque_iterator.16"* %this, i32** %__new_node) #5 comdat align 2 {
  %1 = alloca %"struct.std::_Deque_iterator.16"*, align 8
  %2 = alloca i32**, align 8
  store %"struct.std::_Deque_iterator.16"* %this, %"struct.std::_Deque_iterator.16"** %1, align 8
  store i32** %__new_node, i32*** %2, align 8
  %3 = load %"struct.std::_Deque_iterator.16"*, %"struct.std::_Deque_iterator.16"** %1, align 8
  %4 = load i32**, i32*** %2, align 8
  %5 = getelementptr inbounds %"struct.std::_Deque_iterator.16", %"struct.std::_Deque_iterator.16"* %3, i32 0, i32 3
  store i32** %4, i32*** %5, align 8
  %6 = load i32**, i32*** %2, align 8
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds %"struct.std::_Deque_iterator.16", %"struct.std::_Deque_iterator.16"* %3, i32 0, i32 1
  store i32* %7, i32** %8, align 8
  %9 = getelementptr inbounds %"struct.std::_Deque_iterator.16", %"struct.std::_Deque_iterator.16"* %3, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = call i64 @_ZNSt15_Deque_iteratorIiRKiPS0_E14_S_buffer_sizeEv()
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = getelementptr inbounds %"struct.std::_Deque_iterator.16", %"struct.std::_Deque_iterator.16"* %3, i32 0, i32 2
  store i32* %12, i32** %13, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt10_Iter_baseISt15_Deque_iteratorIiRKiPS1_ELb0EE7_S_baseES4_(%"struct.std::_Deque_iterator.16"* noalias sret %agg.result, %"struct.std::_Deque_iterator.16"* byval align 8 %__it) #5 comdat align 2 {
  %1 = bitcast %"struct.std::_Deque_iterator.16"* %agg.result to i8*
  %2 = bitcast %"struct.std::_Deque_iterator.16"* %__it to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 32, i32 8, i1 false)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt10_Iter_baseISt15_Deque_iteratorIiRiPiELb0EE7_S_baseES3_(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"struct.std::_Deque_iterator"* %__it) #0 comdat align 2 {
  call void @_ZNSt15_Deque_iteratorIiRiPiEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.result, %"struct.std::_Deque_iterator"* dereferenceable(32) %__it)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt15_Deque_iteratorIiRKiPS0_EC2ERKS_IiRiPiE(%"struct.std::_Deque_iterator.16"* %this, %"struct.std::_Deque_iterator"* dereferenceable(32) %__x) unnamed_addr #5 comdat align 2 {
  %1 = alloca %"struct.std::_Deque_iterator.16"*, align 8
  %2 = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator.16"* %this, %"struct.std::_Deque_iterator.16"** %1, align 8
  store %"struct.std::_Deque_iterator"* %__x, %"struct.std::_Deque_iterator"** %2, align 8
  %3 = load %"struct.std::_Deque_iterator.16"*, %"struct.std::_Deque_iterator.16"** %1, align 8
  %4 = getelementptr inbounds %"struct.std::_Deque_iterator.16", %"struct.std::_Deque_iterator.16"* %3, i32 0, i32 0
  %5 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %2, align 8
  %6 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  store i32* %7, i32** %4, align 8
  %8 = getelementptr inbounds %"struct.std::_Deque_iterator.16", %"struct.std::_Deque_iterator.16"* %3, i32 0, i32 1
  %9 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %2, align 8
  %10 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %8, align 8
  %12 = getelementptr inbounds %"struct.std::_Deque_iterator.16", %"struct.std::_Deque_iterator.16"* %3, i32 0, i32 2
  %13 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %2, align 8
  %14 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %12, align 8
  %16 = getelementptr inbounds %"struct.std::_Deque_iterator.16", %"struct.std::_Deque_iterator.16"* %3, i32 0, i32 3
  %17 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %2, align 8
  %18 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %17, i32 0, i32 3
  %19 = load i32**, i32*** %18, align 8
  store i32** %19, i32*** %16, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIP15CLitPoolElementSaIS1_EE15_M_erase_at_endEPS1_(%"class.std::vector.0"* %this, %class.CLitPoolElement** %__pos) #0 comdat align 2 {
  %1 = alloca %"class.std::vector.0"*, align 8
  %2 = alloca %class.CLitPoolElement**, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %1, align 8
  store %class.CLitPoolElement** %__pos, %class.CLitPoolElement*** %2, align 8
  %3 = load %"class.std::vector.0"*, %"class.std::vector.0"** %1, align 8
  %4 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %2, align 8
  %5 = bitcast %"class.std::vector.0"* %3 to %"struct.std::_Vector_base.1"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %6, i32 0, i32 1
  %8 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %7, align 8
  %9 = bitcast %"class.std::vector.0"* %3 to %"struct.std::_Vector_base.1"*
  %10 = call dereferenceable(1) %"class.std::allocator.2"* @_ZNSt12_Vector_baseIP15CLitPoolElementSaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %9)
  call void @_ZSt8_DestroyIPP15CLitPoolElementS1_EvT_S3_RSaIT0_E(%class.CLitPoolElement** %4, %class.CLitPoolElement** %8, %"class.std::allocator.2"* dereferenceable(1) %10)
  %11 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %2, align 8
  %12 = bitcast %"class.std::vector.0"* %3 to %"struct.std::_Vector_base.1"*
  %13 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %12, i32 0, i32 0
  %14 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %13, i32 0, i32 1
  store %class.CLitPoolElement** %11, %class.CLitPoolElement*** %14, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaIP15CLitPoolElementEE9constructIS2_EEvRS3_PS2_RKT_(%"class.std::allocator.2"* dereferenceable(1) %__a, %class.CLitPoolElement** %__p, %class.CLitPoolElement** dereferenceable(8) %__arg) #0 comdat align 2 {
  %1 = alloca %"class.std::allocator.2"*, align 8
  %2 = alloca %class.CLitPoolElement**, align 8
  %3 = alloca %class.CLitPoolElement**, align 8
  store %"class.std::allocator.2"* %__a, %"class.std::allocator.2"** %1, align 8
  store %class.CLitPoolElement** %__p, %class.CLitPoolElement*** %2, align 8
  store %class.CLitPoolElement** %__arg, %class.CLitPoolElement*** %3, align 8
  %4 = load %"class.std::allocator.2"*, %"class.std::allocator.2"** %1, align 8
  %5 = bitcast %"class.std::allocator.2"* %4 to %"class.__gnu_cxx::new_allocator.3"*
  %6 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %2, align 8
  %7 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %3, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIP15CLitPoolElementE9constructEPS2_RKS2_(%"class.__gnu_cxx::new_allocator.3"* %5, %class.CLitPoolElement** %6, %class.CLitPoolElement** dereferenceable(8) %7)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIP15CLitPoolElementSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_(%"class.std::vector.0"* %this, %class.CLitPoolElement** %__position.coerce, %class.CLitPoolElement** dereferenceable(8) %__x) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %__position = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %1 = alloca %"class.std::vector.0"*, align 8
  %2 = alloca %class.CLitPoolElement**, align 8
  %__x_copy = alloca %class.CLitPoolElement*, align 8
  %__len = alloca i64, align 8
  %__elems_before = alloca i64, align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__new_start = alloca %class.CLitPoolElement**, align 8
  %__new_finish = alloca %class.CLitPoolElement**, align 8
  %4 = alloca i8*
  %5 = alloca i32
  %6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__position, i32 0, i32 0
  store %class.CLitPoolElement** %__position.coerce, %class.CLitPoolElement*** %6, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %1, align 8
  store %class.CLitPoolElement** %__x, %class.CLitPoolElement*** %2, align 8
  %7 = load %"class.std::vector.0"*, %"class.std::vector.0"** %1, align 8
  %8 = bitcast %"class.std::vector.0"* %7 to %"struct.std::_Vector_base.1"*
  %9 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %8, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %9, i32 0, i32 1
  %11 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %10, align 8
  %12 = bitcast %"class.std::vector.0"* %7 to %"struct.std::_Vector_base.1"*
  %13 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %12, i32 0, i32 0
  %14 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %13, i32 0, i32 2
  %15 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %14, align 8
  %16 = icmp ne %class.CLitPoolElement** %11, %15
  br i1 %16, label %17, label %52

; <label>:17                                      ; preds = %0
  %18 = bitcast %"class.std::vector.0"* %7 to %"struct.std::_Vector_base.1"*
  %19 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %18, i32 0, i32 0
  %20 = bitcast %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %19 to %"class.std::allocator.2"*
  %21 = bitcast %"class.std::vector.0"* %7 to %"struct.std::_Vector_base.1"*
  %22 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %21, i32 0, i32 0
  %23 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %22, i32 0, i32 1
  %24 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %23, align 8
  %25 = bitcast %"class.std::vector.0"* %7 to %"struct.std::_Vector_base.1"*
  %26 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %25, i32 0, i32 0
  %27 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %26, i32 0, i32 1
  %28 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %27, align 8
  %29 = getelementptr inbounds %class.CLitPoolElement*, %class.CLitPoolElement** %28, i64 -1
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIP15CLitPoolElementEE9constructIS2_EEvRS3_PS2_RKT_(%"class.std::allocator.2"* dereferenceable(1) %20, %class.CLitPoolElement** %24, %class.CLitPoolElement** dereferenceable(8) %29)
  %30 = bitcast %"class.std::vector.0"* %7 to %"struct.std::_Vector_base.1"*
  %31 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %30, i32 0, i32 0
  %32 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %31, i32 0, i32 1
  %33 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %32, align 8
  %34 = getelementptr inbounds %class.CLitPoolElement*, %class.CLitPoolElement** %33, i32 1
  store %class.CLitPoolElement** %34, %class.CLitPoolElement*** %32, align 8
  %35 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %2, align 8
  %36 = load %class.CLitPoolElement*, %class.CLitPoolElement** %35, align 8
  store %class.CLitPoolElement* %36, %class.CLitPoolElement** %__x_copy, align 8
  %37 = call dereferenceable(8) %class.CLitPoolElement*** @_ZNK9__gnu_cxx17__normal_iteratorIPP15CLitPoolElementSt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %__position)
  %38 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %37, align 8
  %39 = bitcast %"class.std::vector.0"* %7 to %"struct.std::_Vector_base.1"*
  %40 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %39, i32 0, i32 0
  %41 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %40, i32 0, i32 1
  %42 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %41, align 8
  %43 = getelementptr inbounds %class.CLitPoolElement*, %class.CLitPoolElement** %42, i64 -2
  %44 = bitcast %"class.std::vector.0"* %7 to %"struct.std::_Vector_base.1"*
  %45 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %44, i32 0, i32 0
  %46 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %45, i32 0, i32 1
  %47 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %46, align 8
  %48 = getelementptr inbounds %class.CLitPoolElement*, %class.CLitPoolElement** %47, i64 -1
  %49 = call %class.CLitPoolElement** @_ZSt13copy_backwardIPP15CLitPoolElementS2_ET0_T_S4_S3_(%class.CLitPoolElement** %38, %class.CLitPoolElement** %43, %class.CLitPoolElement** %48)
  %50 = load %class.CLitPoolElement*, %class.CLitPoolElement** %__x_copy, align 8
  %51 = call dereferenceable(8) %class.CLitPoolElement** @_ZNK9__gnu_cxx17__normal_iteratorIPP15CLitPoolElementSt6vectorIS2_SaIS2_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %__position)
  store %class.CLitPoolElement* %50, %class.CLitPoolElement** %51, align 8
  br label %173

; <label>:52                                      ; preds = %0
  %53 = call i64 @_ZNKSt6vectorIP15CLitPoolElementSaIS1_EE12_M_check_lenEmPKc(%"class.std::vector.0"* %7, i64 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.35, i32 0, i32 0))
  store i64 %53, i64* %__len, align 8
  %54 = call %class.CLitPoolElement** @_ZNSt6vectorIP15CLitPoolElementSaIS1_EE5beginEv(%"class.std::vector.0"* %7)
  %55 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %3, i32 0, i32 0
  store %class.CLitPoolElement** %54, %class.CLitPoolElement*** %55, align 8
  %56 = call i64 @_ZN9__gnu_cxxmiIPP15CLitPoolElementSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__position, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %3)
  store i64 %56, i64* %__elems_before, align 8
  %57 = bitcast %"class.std::vector.0"* %7 to %"struct.std::_Vector_base.1"*
  %58 = load i64, i64* %__len, align 8
  %59 = call %class.CLitPoolElement** @_ZNSt12_Vector_baseIP15CLitPoolElementSaIS1_EE11_M_allocateEm(%"struct.std::_Vector_base.1"* %57, i64 %58)
  store %class.CLitPoolElement** %59, %class.CLitPoolElement*** %__new_start, align 8
  %60 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %__new_start, align 8
  store %class.CLitPoolElement** %60, %class.CLitPoolElement*** %__new_finish, align 8
  %61 = bitcast %"class.std::vector.0"* %7 to %"struct.std::_Vector_base.1"*
  %62 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %61, i32 0, i32 0
  %63 = bitcast %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %62 to %"class.std::allocator.2"*
  %64 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %__new_start, align 8
  %65 = load i64, i64* %__elems_before, align 8
  %66 = getelementptr inbounds %class.CLitPoolElement*, %class.CLitPoolElement** %64, i64 %65
  %67 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %2, align 8
  invoke void @_ZN9__gnu_cxx14__alloc_traitsISaIP15CLitPoolElementEE9constructIS2_EEvRS3_PS2_RKT_(%"class.std::allocator.2"* dereferenceable(1) %63, %class.CLitPoolElement** %66, %class.CLitPoolElement** dereferenceable(8) %67)
          to label %68 unwind label %97

; <label>:68                                      ; preds = %52
  store %class.CLitPoolElement** null, %class.CLitPoolElement*** %__new_finish, align 8
  %69 = bitcast %"class.std::vector.0"* %7 to %"struct.std::_Vector_base.1"*
  %70 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %69, i32 0, i32 0
  %71 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %70, i32 0, i32 0
  %72 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %71, align 8
  %73 = invoke dereferenceable(8) %class.CLitPoolElement*** @_ZNK9__gnu_cxx17__normal_iteratorIPP15CLitPoolElementSt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %__position)
          to label %74 unwind label %97

; <label>:74                                      ; preds = %68
  %75 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %73, align 8
  %76 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %__new_start, align 8
  %77 = bitcast %"class.std::vector.0"* %7 to %"struct.std::_Vector_base.1"*
  %78 = invoke dereferenceable(1) %"class.std::allocator.2"* @_ZNSt12_Vector_baseIP15CLitPoolElementSaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %77)
          to label %79 unwind label %97

; <label>:79                                      ; preds = %74
  %80 = invoke %class.CLitPoolElement** @_ZSt34__uninitialized_move_if_noexcept_aIPP15CLitPoolElementS2_SaIS1_EET0_T_S5_S4_RT1_(%class.CLitPoolElement** %72, %class.CLitPoolElement** %75, %class.CLitPoolElement** %76, %"class.std::allocator.2"* dereferenceable(1) %78)
          to label %81 unwind label %97

; <label>:81                                      ; preds = %79
  store %class.CLitPoolElement** %80, %class.CLitPoolElement*** %__new_finish, align 8
  %82 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %__new_finish, align 8
  %83 = getelementptr inbounds %class.CLitPoolElement*, %class.CLitPoolElement** %82, i32 1
  store %class.CLitPoolElement** %83, %class.CLitPoolElement*** %__new_finish, align 8
  %84 = invoke dereferenceable(8) %class.CLitPoolElement*** @_ZNK9__gnu_cxx17__normal_iteratorIPP15CLitPoolElementSt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %__position)
          to label %85 unwind label %97

; <label>:85                                      ; preds = %81
  %86 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %84, align 8
  %87 = bitcast %"class.std::vector.0"* %7 to %"struct.std::_Vector_base.1"*
  %88 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %87, i32 0, i32 0
  %89 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %88, i32 0, i32 1
  %90 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %89, align 8
  %91 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %__new_finish, align 8
  %92 = bitcast %"class.std::vector.0"* %7 to %"struct.std::_Vector_base.1"*
  %93 = invoke dereferenceable(1) %"class.std::allocator.2"* @_ZNSt12_Vector_baseIP15CLitPoolElementSaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %92)
          to label %94 unwind label %97

; <label>:94                                      ; preds = %85
  %95 = invoke %class.CLitPoolElement** @_ZSt34__uninitialized_move_if_noexcept_aIPP15CLitPoolElementS2_SaIS1_EET0_T_S5_S4_RT1_(%class.CLitPoolElement** %86, %class.CLitPoolElement** %90, %class.CLitPoolElement** %91, %"class.std::allocator.2"* dereferenceable(1) %93)
          to label %96 unwind label %97

; <label>:96                                      ; preds = %94
  store %class.CLitPoolElement** %95, %class.CLitPoolElement*** %__new_finish, align 8
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
  %104 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %__new_finish, align 8
  %105 = icmp ne %class.CLitPoolElement** %104, null
  br i1 %105, label %118, label %106

; <label>:106                                     ; preds = %101
  %107 = bitcast %"class.std::vector.0"* %7 to %"struct.std::_Vector_base.1"*
  %108 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %107, i32 0, i32 0
  %109 = bitcast %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %108 to %"class.std::allocator.2"*
  %110 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %__new_start, align 8
  %111 = load i64, i64* %__elems_before, align 8
  %112 = getelementptr inbounds %class.CLitPoolElement*, %class.CLitPoolElement** %110, i64 %111
  invoke void @_ZN9__gnu_cxx14__alloc_traitsISaIP15CLitPoolElementEE7destroyERS3_PS2_(%"class.std::allocator.2"* dereferenceable(1) %109, %class.CLitPoolElement** %112)
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
  %119 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %__new_start, align 8
  %120 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %__new_finish, align 8
  %121 = bitcast %"class.std::vector.0"* %7 to %"struct.std::_Vector_base.1"*
  %122 = invoke dereferenceable(1) %"class.std::allocator.2"* @_ZNSt12_Vector_baseIP15CLitPoolElementSaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %121)
          to label %123 unwind label %114

; <label>:123                                     ; preds = %118
  invoke void @_ZSt8_DestroyIPP15CLitPoolElementS1_EvT_S3_RSaIT0_E(%class.CLitPoolElement** %119, %class.CLitPoolElement** %120, %"class.std::allocator.2"* dereferenceable(1) %122)
          to label %124 unwind label %114

; <label>:124                                     ; preds = %123
  br label %125

; <label>:125                                     ; preds = %124, %113
  %126 = bitcast %"class.std::vector.0"* %7 to %"struct.std::_Vector_base.1"*
  %127 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %__new_start, align 8
  %128 = load i64, i64* %__len, align 8
  invoke void @_ZNSt12_Vector_baseIP15CLitPoolElementSaIS1_EE13_M_deallocateEPS1_m(%"struct.std::_Vector_base.1"* %126, %class.CLitPoolElement** %127, i64 %128)
          to label %129 unwind label %114

; <label>:129                                     ; preds = %125
  invoke void @__cxa_rethrow() #16
          to label %182 unwind label %114

; <label>:130                                     ; preds = %114
  br label %174

; <label>:131                                     ; preds = %96
  %132 = bitcast %"class.std::vector.0"* %7 to %"struct.std::_Vector_base.1"*
  %133 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %132, i32 0, i32 0
  %134 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %133, i32 0, i32 0
  %135 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %134, align 8
  %136 = bitcast %"class.std::vector.0"* %7 to %"struct.std::_Vector_base.1"*
  %137 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %136, i32 0, i32 0
  %138 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %137, i32 0, i32 1
  %139 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %138, align 8
  %140 = bitcast %"class.std::vector.0"* %7 to %"struct.std::_Vector_base.1"*
  %141 = call dereferenceable(1) %"class.std::allocator.2"* @_ZNSt12_Vector_baseIP15CLitPoolElementSaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %140)
  call void @_ZSt8_DestroyIPP15CLitPoolElementS1_EvT_S3_RSaIT0_E(%class.CLitPoolElement** %135, %class.CLitPoolElement** %139, %"class.std::allocator.2"* dereferenceable(1) %141)
  %142 = bitcast %"class.std::vector.0"* %7 to %"struct.std::_Vector_base.1"*
  %143 = bitcast %"class.std::vector.0"* %7 to %"struct.std::_Vector_base.1"*
  %144 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %143, i32 0, i32 0
  %145 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %144, i32 0, i32 0
  %146 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %145, align 8
  %147 = bitcast %"class.std::vector.0"* %7 to %"struct.std::_Vector_base.1"*
  %148 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %147, i32 0, i32 0
  %149 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %148, i32 0, i32 2
  %150 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %149, align 8
  %151 = bitcast %"class.std::vector.0"* %7 to %"struct.std::_Vector_base.1"*
  %152 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %151, i32 0, i32 0
  %153 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %152, i32 0, i32 0
  %154 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %153, align 8
  %155 = ptrtoint %class.CLitPoolElement** %150 to i64
  %156 = ptrtoint %class.CLitPoolElement** %154 to i64
  %157 = sub i64 %155, %156
  %158 = sdiv exact i64 %157, 8
  call void @_ZNSt12_Vector_baseIP15CLitPoolElementSaIS1_EE13_M_deallocateEPS1_m(%"struct.std::_Vector_base.1"* %142, %class.CLitPoolElement** %146, i64 %158)
  %159 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %__new_start, align 8
  %160 = bitcast %"class.std::vector.0"* %7 to %"struct.std::_Vector_base.1"*
  %161 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %160, i32 0, i32 0
  %162 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %161, i32 0, i32 0
  store %class.CLitPoolElement** %159, %class.CLitPoolElement*** %162, align 8
  %163 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %__new_finish, align 8
  %164 = bitcast %"class.std::vector.0"* %7 to %"struct.std::_Vector_base.1"*
  %165 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %164, i32 0, i32 0
  %166 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %165, i32 0, i32 1
  store %class.CLitPoolElement** %163, %class.CLitPoolElement*** %166, align 8
  %167 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %__new_start, align 8
  %168 = load i64, i64* %__len, align 8
  %169 = getelementptr inbounds %class.CLitPoolElement*, %class.CLitPoolElement** %167, i64 %168
  %170 = bitcast %"class.std::vector.0"* %7 to %"struct.std::_Vector_base.1"*
  %171 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %170, i32 0, i32 0
  %172 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %171, i32 0, i32 2
  store %class.CLitPoolElement** %169, %class.CLitPoolElement*** %172, align 8
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
  call void @__clang_call_terminate(i8* %181) #13
  unreachable

; <label>:182                                     ; preds = %129
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr %class.CLitPoolElement** @_ZNSt6vectorIP15CLitPoolElementSaIS1_EE3endEv(%"class.std::vector.0"* %this) #0 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %2 = alloca %"class.std::vector.0"*, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %2, align 8
  %3 = load %"class.std::vector.0"*, %"class.std::vector.0"** %2, align 8
  %4 = bitcast %"class.std::vector.0"* %3 to %"struct.std::_Vector_base.1"*
  %5 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %5, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPP15CLitPoolElementSt6vectorIS2_SaIS2_EEEC2ERKS3_(%"class.__gnu_cxx::__normal_iterator"* %1, %class.CLitPoolElement*** dereferenceable(8) %6)
  %7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %1, i32 0, i32 0
  %8 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %7, align 8
  ret %class.CLitPoolElement** %8
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIP15CLitPoolElementE9constructEPS2_RKS2_(%"class.__gnu_cxx::new_allocator.3"* %this, %class.CLitPoolElement** %__p, %class.CLitPoolElement** dereferenceable(8) %__val) #5 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.3"*, align 8
  %2 = alloca %class.CLitPoolElement**, align 8
  %3 = alloca %class.CLitPoolElement**, align 8
  store %"class.__gnu_cxx::new_allocator.3"* %this, %"class.__gnu_cxx::new_allocator.3"** %1, align 8
  store %class.CLitPoolElement** %__p, %class.CLitPoolElement*** %2, align 8
  store %class.CLitPoolElement** %__val, %class.CLitPoolElement*** %3, align 8
  %4 = load %"class.__gnu_cxx::new_allocator.3"*, %"class.__gnu_cxx::new_allocator.3"** %1, align 8
  %5 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %2, align 8
  %6 = bitcast %class.CLitPoolElement** %5 to i8*
  %7 = bitcast i8* %6 to %class.CLitPoolElement**
  %8 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %3, align 8
  %9 = load %class.CLitPoolElement*, %class.CLitPoolElement** %8, align 8
  store %class.CLitPoolElement* %9, %class.CLitPoolElement** %7, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %class.CLitPoolElement** @_ZSt13copy_backwardIPP15CLitPoolElementS2_ET0_T_S4_S3_(%class.CLitPoolElement** %__first, %class.CLitPoolElement** %__last, %class.CLitPoolElement** %__result) #7 comdat {
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
  %9 = call %class.CLitPoolElement** @_ZSt23__copy_move_backward_a2ILb0EPP15CLitPoolElementS2_ET1_T0_S4_S3_(%class.CLitPoolElement** %5, %class.CLitPoolElement** %7, %class.CLitPoolElement** %8)
  ret %class.CLitPoolElement** %9
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(8) %class.CLitPoolElement*** @_ZNK9__gnu_cxx17__normal_iteratorIPP15CLitPoolElementSt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %this) #5 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %1, align 8
  %2 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %1, align 8
  %3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %2, i32 0, i32 0
  ret %class.CLitPoolElement*** %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(8) %class.CLitPoolElement** @_ZNK9__gnu_cxx17__normal_iteratorIPP15CLitPoolElementSt6vectorIS2_SaIS2_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %this) #5 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %1, align 8
  %2 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %1, align 8
  %3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %2, i32 0, i32 0
  %4 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %3, align 8
  ret %class.CLitPoolElement** %4
}

; Function Attrs: uwtable
define linkonce_odr i64 @_ZNKSt6vectorIP15CLitPoolElementSaIS1_EE12_M_check_lenEmPKc(%"class.std::vector.0"* %this, i64 %__n, i8* %__s) #0 comdat align 2 {
  %1 = alloca %"class.std::vector.0"*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %__len = alloca i64, align 8
  %4 = alloca i64, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %1, align 8
  store i64 %__n, i64* %2, align 8
  store i8* %__s, i8** %3, align 8
  %5 = load %"class.std::vector.0"*, %"class.std::vector.0"** %1, align 8
  %6 = call i64 @_ZNKSt6vectorIP15CLitPoolElementSaIS1_EE8max_sizeEv(%"class.std::vector.0"* %5)
  %7 = call i64 @_ZNKSt6vectorIP15CLitPoolElementSaIS1_EE4sizeEv(%"class.std::vector.0"* %5)
  %8 = sub i64 %6, %7
  %9 = load i64, i64* %2, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %13

; <label>:11                                      ; preds = %0
  %12 = load i8*, i8** %3, align 8
  call void @_ZSt20__throw_length_errorPKc(i8* %12) #16
  unreachable

; <label>:13                                      ; preds = %0
  %14 = call i64 @_ZNKSt6vectorIP15CLitPoolElementSaIS1_EE4sizeEv(%"class.std::vector.0"* %5)
  %15 = call i64 @_ZNKSt6vectorIP15CLitPoolElementSaIS1_EE4sizeEv(%"class.std::vector.0"* %5)
  store i64 %15, i64* %4, align 8
  %16 = call dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* dereferenceable(8) %4, i64* dereferenceable(8) %2)
  %17 = load i64, i64* %16, align 8
  %18 = add i64 %14, %17
  store i64 %18, i64* %__len, align 8
  %19 = load i64, i64* %__len, align 8
  %20 = call i64 @_ZNKSt6vectorIP15CLitPoolElementSaIS1_EE4sizeEv(%"class.std::vector.0"* %5)
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %26, label %22

; <label>:22                                      ; preds = %13
  %23 = load i64, i64* %__len, align 8
  %24 = call i64 @_ZNKSt6vectorIP15CLitPoolElementSaIS1_EE8max_sizeEv(%"class.std::vector.0"* %5)
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %28

; <label>:26                                      ; preds = %22, %13
  %27 = call i64 @_ZNKSt6vectorIP15CLitPoolElementSaIS1_EE8max_sizeEv(%"class.std::vector.0"* %5)
  br label %30

; <label>:28                                      ; preds = %22
  %29 = load i64, i64* %__len, align 8
  br label %30

; <label>:30                                      ; preds = %28, %26
  %31 = phi i64 [ %27, %26 ], [ %29, %28 ]
  ret i64 %31
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i64 @_ZN9__gnu_cxxmiIPP15CLitPoolElementSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__lhs, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__rhs) #11 comdat {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %2 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__lhs, %"class.__gnu_cxx::__normal_iterator"** %1, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__rhs, %"class.__gnu_cxx::__normal_iterator"** %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %1, align 8
  %4 = call dereferenceable(8) %class.CLitPoolElement*** @_ZNK9__gnu_cxx17__normal_iteratorIPP15CLitPoolElementSt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %3)
  %5 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %4, align 8
  %6 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %2, align 8
  %7 = call dereferenceable(8) %class.CLitPoolElement*** @_ZNK9__gnu_cxx17__normal_iteratorIPP15CLitPoolElementSt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %6)
  %8 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %7, align 8
  %9 = ptrtoint %class.CLitPoolElement** %5 to i64
  %10 = ptrtoint %class.CLitPoolElement** %8 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 8
  ret i64 %12
}

; Function Attrs: uwtable
define linkonce_odr %class.CLitPoolElement** @_ZNSt6vectorIP15CLitPoolElementSaIS1_EE5beginEv(%"class.std::vector.0"* %this) #0 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %2 = alloca %"class.std::vector.0"*, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %2, align 8
  %3 = load %"class.std::vector.0"*, %"class.std::vector.0"** %2, align 8
  %4 = bitcast %"class.std::vector.0"* %3 to %"struct.std::_Vector_base.1"*
  %5 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl", %"struct.std::_Vector_base<CLitPoolElement *, std::allocator<CLitPoolElement *> >::_Vector_impl"* %5, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIPP15CLitPoolElementSt6vectorIS2_SaIS2_EEEC2ERKS3_(%"class.__gnu_cxx::__normal_iterator"* %1, %class.CLitPoolElement*** dereferenceable(8) %6)
  %7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %1, i32 0, i32 0
  %8 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %7, align 8
  ret %class.CLitPoolElement** %8
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

; Function Attrs: inlinehint uwtable
define linkonce_odr %class.CLitPoolElement** @_ZSt34__uninitialized_move_if_noexcept_aIPP15CLitPoolElementS2_SaIS1_EET0_T_S5_S4_RT1_(%class.CLitPoolElement** %__first, %class.CLitPoolElement** %__last, %class.CLitPoolElement** %__result, %"class.std::allocator.2"* dereferenceable(1) %__alloc) #7 comdat {
  %1 = alloca %class.CLitPoolElement**, align 8
  %2 = alloca %class.CLitPoolElement**, align 8
  %3 = alloca %class.CLitPoolElement**, align 8
  %4 = alloca %"class.std::allocator.2"*, align 8
  store %class.CLitPoolElement** %__first, %class.CLitPoolElement*** %1, align 8
  store %class.CLitPoolElement** %__last, %class.CLitPoolElement*** %2, align 8
  store %class.CLitPoolElement** %__result, %class.CLitPoolElement*** %3, align 8
  store %"class.std::allocator.2"* %__alloc, %"class.std::allocator.2"** %4, align 8
  %5 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %1, align 8
  %6 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %2, align 8
  %7 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %3, align 8
  %8 = load %"class.std::allocator.2"*, %"class.std::allocator.2"** %4, align 8
  %9 = call %class.CLitPoolElement** @_ZSt22__uninitialized_copy_aIPP15CLitPoolElementS2_S1_ET0_T_S4_S3_RSaIT1_E(%class.CLitPoolElement** %5, %class.CLitPoolElement** %6, %class.CLitPoolElement** %7, %"class.std::allocator.2"* dereferenceable(1) %8)
  ret %class.CLitPoolElement** %9
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaIP15CLitPoolElementEE7destroyERS3_PS2_(%"class.std::allocator.2"* dereferenceable(1) %__a, %class.CLitPoolElement** %__p) #0 comdat align 2 {
  %1 = alloca %"class.std::allocator.2"*, align 8
  %2 = alloca %class.CLitPoolElement**, align 8
  store %"class.std::allocator.2"* %__a, %"class.std::allocator.2"** %1, align 8
  store %class.CLitPoolElement** %__p, %class.CLitPoolElement*** %2, align 8
  %3 = load %"class.std::allocator.2"*, %"class.std::allocator.2"** %1, align 8
  %4 = bitcast %"class.std::allocator.2"* %3 to %"class.__gnu_cxx::new_allocator.3"*
  %5 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %2, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIP15CLitPoolElementE7destroyEPS2_(%"class.__gnu_cxx::new_allocator.3"* %4, %class.CLitPoolElement** %5)
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %class.CLitPoolElement** @_ZSt23__copy_move_backward_a2ILb0EPP15CLitPoolElementS2_ET1_T0_S4_S3_(%class.CLitPoolElement** %__first, %class.CLitPoolElement** %__last, %class.CLitPoolElement** %__result) #7 comdat {
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
  %10 = call %class.CLitPoolElement** @_ZSt22__copy_move_backward_aILb0EPP15CLitPoolElementS2_ET1_T0_S4_S3_(%class.CLitPoolElement** %5, %class.CLitPoolElement** %7, %class.CLitPoolElement** %9)
  ret %class.CLitPoolElement** %10
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %class.CLitPoolElement** @_ZSt12__miter_baseIPP15CLitPoolElementENSt11_Miter_baseIT_E13iterator_typeES4_(%class.CLitPoolElement** %__it) #11 comdat {
  %1 = alloca %class.CLitPoolElement**, align 8
  store %class.CLitPoolElement** %__it, %class.CLitPoolElement*** %1, align 8
  %2 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %1, align 8
  %3 = call %class.CLitPoolElement** @_ZNSt10_Iter_baseIPP15CLitPoolElementLb0EE7_S_baseES2_(%class.CLitPoolElement** %2)
  ret %class.CLitPoolElement** %3
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %class.CLitPoolElement** @_ZSt22__copy_move_backward_aILb0EPP15CLitPoolElementS2_ET1_T0_S4_S3_(%class.CLitPoolElement** %__first, %class.CLitPoolElement** %__last, %class.CLitPoolElement** %__result) #7 comdat {
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
  %7 = call %class.CLitPoolElement** @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIP15CLitPoolElementEEPT_PKS5_S8_S6_(%class.CLitPoolElement** %4, %class.CLitPoolElement** %5, %class.CLitPoolElement** %6)
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
define linkonce_odr %class.CLitPoolElement** @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIP15CLitPoolElementEEPT_PKS5_S8_S6_(%class.CLitPoolElement** %__first, %class.CLitPoolElement** %__last, %class.CLitPoolElement** %__result) #5 comdat align 2 {
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
  br i1 %11, label %12, label %22

; <label>:12                                      ; preds = %0
  %13 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %3, align 8
  %14 = load i64, i64* %_Num, align 8
  %15 = sub i64 0, %14
  %16 = getelementptr inbounds %class.CLitPoolElement*, %class.CLitPoolElement** %13, i64 %15
  %17 = bitcast %class.CLitPoolElement** %16 to i8*
  %18 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %1, align 8
  %19 = bitcast %class.CLitPoolElement** %18 to i8*
  %20 = load i64, i64* %_Num, align 8
  %21 = mul i64 8, %20
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %17, i8* %19, i64 %21, i32 8, i1 false)
  br label %22

; <label>:22                                      ; preds = %12, %0
  %23 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %3, align 8
  %24 = load i64, i64* %_Num, align 8
  %25 = sub i64 0, %24
  %26 = getelementptr inbounds %class.CLitPoolElement*, %class.CLitPoolElement** %23, i64 %25
  ret %class.CLitPoolElement** %26
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #8

; Function Attrs: nounwind uwtable
define linkonce_odr %class.CLitPoolElement** @_ZNSt10_Iter_baseIPP15CLitPoolElementLb0EE7_S_baseES2_(%class.CLitPoolElement** %__it) #5 comdat align 2 {
  %1 = alloca %class.CLitPoolElement**, align 8
  store %class.CLitPoolElement** %__it, %class.CLitPoolElement*** %1, align 8
  %2 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %1, align 8
  ret %class.CLitPoolElement** %2
}

; Function Attrs: uwtable
define linkonce_odr i64 @_ZNKSt6vectorIP15CLitPoolElementSaIS1_EE8max_sizeEv(%"class.std::vector.0"* %this) #0 comdat align 2 {
  %1 = alloca %"class.std::vector.0"*, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %1, align 8
  %2 = load %"class.std::vector.0"*, %"class.std::vector.0"** %1, align 8
  %3 = bitcast %"class.std::vector.0"* %2 to %"struct.std::_Vector_base.1"*
  %4 = call dereferenceable(1) %"class.std::allocator.2"* @_ZNKSt12_Vector_baseIP15CLitPoolElementSaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %3)
  %5 = call i64 @_ZN9__gnu_cxx14__alloc_traitsISaIP15CLitPoolElementEE8max_sizeERKS3_(%"class.std::allocator.2"* dereferenceable(1) %4)
  ret i64 %5
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(i8*) #12

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZN9__gnu_cxx14__alloc_traitsISaIP15CLitPoolElementEE8max_sizeERKS3_(%"class.std::allocator.2"* dereferenceable(1) %__a) #5 comdat align 2 {
  %1 = alloca %"class.std::allocator.2"*, align 8
  store %"class.std::allocator.2"* %__a, %"class.std::allocator.2"** %1, align 8
  %2 = load %"class.std::allocator.2"*, %"class.std::allocator.2"** %1, align 8
  %3 = bitcast %"class.std::allocator.2"* %2 to %"class.__gnu_cxx::new_allocator.3"*
  %4 = call i64 @_ZNK9__gnu_cxx13new_allocatorIP15CLitPoolElementE8max_sizeEv(%"class.__gnu_cxx::new_allocator.3"* %3) #2
  ret i64 %4
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

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorIP15CLitPoolElementE8max_sizeEv(%"class.__gnu_cxx::new_allocator.3"* %this) #5 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.3"*, align 8
  store %"class.__gnu_cxx::new_allocator.3"* %this, %"class.__gnu_cxx::new_allocator.3"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.3"*, %"class.__gnu_cxx::new_allocator.3"** %1, align 8
  ret i64 2305843009213693951
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx17__normal_iteratorIPP15CLitPoolElementSt6vectorIS2_SaIS2_EEEC2ERKS3_(%"class.__gnu_cxx::__normal_iterator"* %this, %class.CLitPoolElement*** dereferenceable(8) %__i) unnamed_addr #5 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %2 = alloca %class.CLitPoolElement***, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %1, align 8
  store %class.CLitPoolElement*** %__i, %class.CLitPoolElement**** %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %1, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %3, i32 0, i32 0
  %5 = load %class.CLitPoolElement***, %class.CLitPoolElement**** %2, align 8
  %6 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %5, align 8
  store %class.CLitPoolElement** %6, %class.CLitPoolElement*** %4, align 8
  ret void
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

; Function Attrs: inlinehint uwtable
define linkonce_odr %class.CLitPoolElement** @_ZSt13__copy_move_aILb0EPP15CLitPoolElementS2_ET1_T0_S4_S3_(%class.CLitPoolElement** %__first, %class.CLitPoolElement** %__last, %class.CLitPoolElement** %__result) #7 comdat {
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

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIP15CLitPoolElementE7destroyEPS2_(%"class.__gnu_cxx::new_allocator.3"* %this, %class.CLitPoolElement** %__p) #5 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.3"*, align 8
  %2 = alloca %class.CLitPoolElement**, align 8
  store %"class.__gnu_cxx::new_allocator.3"* %this, %"class.__gnu_cxx::new_allocator.3"** %1, align 8
  store %class.CLitPoolElement** %__p, %class.CLitPoolElement*** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator.3"*, %"class.__gnu_cxx::new_allocator.3"** %1, align 8
  %4 = load %class.CLitPoolElement**, %class.CLitPoolElement*** %2, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr zeroext i1 @_ZNKSt5dequeIiSaIiEE5emptyEv(%"class.std::deque"* %this) #0 comdat align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  %2 = load %"class.std::deque"*, %"class.std::deque"** %1, align 8
  %3 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %4 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %4, i32 0, i32 3
  %6 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %7 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %6, i32 0, i32 0
  %8 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %7, i32 0, i32 2
  %9 = call zeroext i1 @_ZSteqIiRiPiEbRKSt15_Deque_iteratorIT_T0_T1_ES8_(%"struct.std::_Deque_iterator"* dereferenceable(32) %5, %"struct.std::_Deque_iterator"* dereferenceable(32) %8)
  ret i1 %9
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr zeroext i1 @_ZSteqIiRiPiEbRKSt15_Deque_iteratorIT_T0_T1_ES8_(%"struct.std::_Deque_iterator"* dereferenceable(32) %__x, %"struct.std::_Deque_iterator"* dereferenceable(32) %__y) #11 comdat {
  %1 = alloca %"struct.std::_Deque_iterator"*, align 8
  %2 = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %__x, %"struct.std::_Deque_iterator"** %1, align 8
  store %"struct.std::_Deque_iterator"* %__y, %"struct.std::_Deque_iterator"** %2, align 8
  %3 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %1, align 8
  %4 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %2, align 8
  %7 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* %5, %8
  ret i1 %9
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorI7CClauseSaIS0_EE6insertEN9__gnu_cxx17__normal_iteratorIPS0_S2_EEmRKS0_(%"class.std::vector.5"* %this, %class.CClause* %__position.coerce, i64 %__n, %class.CClause* dereferenceable(16) %__x) #0 comdat align 2 {
  %__position = alloca %"class.__gnu_cxx::__normal_iterator.17", align 8
  %1 = alloca %"class.std::vector.5"*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %class.CClause*, align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.17", align 8
  %5 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.17", %"class.__gnu_cxx::__normal_iterator.17"* %__position, i32 0, i32 0
  store %class.CClause* %__position.coerce, %class.CClause** %5, align 8
  store %"class.std::vector.5"* %this, %"class.std::vector.5"** %1, align 8
  store i64 %__n, i64* %2, align 8
  store %class.CClause* %__x, %class.CClause** %3, align 8
  %6 = load %"class.std::vector.5"*, %"class.std::vector.5"** %1, align 8
  %7 = bitcast %"class.__gnu_cxx::__normal_iterator.17"* %4 to i8*
  %8 = bitcast %"class.__gnu_cxx::__normal_iterator.17"* %__position to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 8, i32 8, i1 false)
  %9 = load i64, i64* %2, align 8
  %10 = load %class.CClause*, %class.CClause** %3, align 8
  %11 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.17", %"class.__gnu_cxx::__normal_iterator.17"* %4, i32 0, i32 0
  %12 = load %class.CClause*, %class.CClause** %11, align 8
  call void @_ZNSt6vectorI7CClauseSaIS0_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS0_S2_EEmRKS0_(%"class.std::vector.5"* %6, %class.CClause* %12, i64 %9, %class.CClause* dereferenceable(16) %10)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr %class.CClause* @_ZNSt6vectorI7CClauseSaIS0_EE3endEv(%"class.std::vector.5"* %this) #0 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.17", align 8
  %2 = alloca %"class.std::vector.5"*, align 8
  store %"class.std::vector.5"* %this, %"class.std::vector.5"** %2, align 8
  %3 = load %"class.std::vector.5"*, %"class.std::vector.5"** %2, align 8
  %4 = bitcast %"class.std::vector.5"* %3 to %"struct.std::_Vector_base.6"*
  %5 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl", %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl"* %5, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIP7CClauseSt6vectorIS1_SaIS1_EEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator.17"* %1, %class.CClause** dereferenceable(8) %6)
  %7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.17", %"class.__gnu_cxx::__normal_iterator.17"* %1, i32 0, i32 0
  %8 = load %class.CClause*, %class.CClause** %7, align 8
  ret %class.CClause* %8
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorI7CClauseSaIS0_EE15_M_erase_at_endEPS0_(%"class.std::vector.5"* %this, %class.CClause* %__pos) #0 comdat align 2 {
  %1 = alloca %"class.std::vector.5"*, align 8
  %2 = alloca %class.CClause*, align 8
  store %"class.std::vector.5"* %this, %"class.std::vector.5"** %1, align 8
  store %class.CClause* %__pos, %class.CClause** %2, align 8
  %3 = load %"class.std::vector.5"*, %"class.std::vector.5"** %1, align 8
  %4 = load %class.CClause*, %class.CClause** %2, align 8
  %5 = bitcast %"class.std::vector.5"* %3 to %"struct.std::_Vector_base.6"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl", %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl"* %6, i32 0, i32 1
  %8 = load %class.CClause*, %class.CClause** %7, align 8
  %9 = bitcast %"class.std::vector.5"* %3 to %"struct.std::_Vector_base.6"*
  %10 = call dereferenceable(1) %"class.std::allocator.7"* @_ZNSt12_Vector_baseI7CClauseSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.6"* %9)
  call void @_ZSt8_DestroyIP7CClauseS0_EvT_S2_RSaIT0_E(%class.CClause* %4, %class.CClause* %8, %"class.std::allocator.7"* dereferenceable(1) %10)
  %11 = load %class.CClause*, %class.CClause** %2, align 8
  %12 = bitcast %"class.std::vector.5"* %3 to %"struct.std::_Vector_base.6"*
  %13 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %12, i32 0, i32 0
  %14 = getelementptr inbounds %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl", %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl"* %13, i32 0, i32 1
  store %class.CClause* %11, %class.CClause** %14, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorI7CClauseSaIS0_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS0_S2_EEmRKS0_(%"class.std::vector.5"* %this, %class.CClause* %__position.coerce, i64 %__n, %class.CClause* dereferenceable(16) %__x) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %__position = alloca %"class.__gnu_cxx::__normal_iterator.17", align 8
  %1 = alloca %"class.std::vector.5"*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %class.CClause*, align 8
  %__x_copy = alloca %class.CClause, align 8
  %__elems_after = alloca i64, align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.17", align 8
  %5 = alloca i8*
  %6 = alloca i32
  %__old_finish = alloca %class.CClause*, align 8
  %__len = alloca i64, align 8
  %__elems_before = alloca i64, align 8
  %7 = alloca %"class.__gnu_cxx::__normal_iterator.17", align 8
  %__new_start = alloca %class.CClause*, align 8
  %__new_finish = alloca %class.CClause*, align 8
  %8 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.17", %"class.__gnu_cxx::__normal_iterator.17"* %__position, i32 0, i32 0
  store %class.CClause* %__position.coerce, %class.CClause** %8, align 8
  store %"class.std::vector.5"* %this, %"class.std::vector.5"** %1, align 8
  store i64 %__n, i64* %2, align 8
  store %class.CClause* %__x, %class.CClause** %3, align 8
  %9 = load %"class.std::vector.5"*, %"class.std::vector.5"** %1, align 8
  %10 = load i64, i64* %2, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %266

; <label>:12                                      ; preds = %0
  %13 = bitcast %"class.std::vector.5"* %9 to %"struct.std::_Vector_base.6"*
  %14 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %13, i32 0, i32 0
  %15 = getelementptr inbounds %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl", %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl"* %14, i32 0, i32 2
  %16 = load %class.CClause*, %class.CClause** %15, align 8
  %17 = bitcast %"class.std::vector.5"* %9 to %"struct.std::_Vector_base.6"*
  %18 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %17, i32 0, i32 0
  %19 = getelementptr inbounds %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl", %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl"* %18, i32 0, i32 1
  %20 = load %class.CClause*, %class.CClause** %19, align 8
  %21 = ptrtoint %class.CClause* %16 to i64
  %22 = ptrtoint %class.CClause* %20 to i64
  %23 = sub i64 %21, %22
  %24 = sdiv exact i64 %23, 16
  %25 = load i64, i64* %2, align 8
  %26 = icmp uge i64 %24, %25
  br i1 %26, label %27, label %135

; <label>:27                                      ; preds = %12
  %28 = load %class.CClause*, %class.CClause** %3, align 8
  %29 = bitcast %class.CClause* %__x_copy to i8*
  %30 = bitcast %class.CClause* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 16, i32 8, i1 false)
  %31 = invoke %class.CClause* @_ZNSt6vectorI7CClauseSaIS0_EE3endEv(%"class.std::vector.5"* %9)
          to label %32 unwind label %89

; <label>:32                                      ; preds = %27
  %33 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.17", %"class.__gnu_cxx::__normal_iterator.17"* %4, i32 0, i32 0
  store %class.CClause* %31, %class.CClause** %33, align 8
  %34 = invoke i64 @_ZN9__gnu_cxxmiIP7CClauseSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(%"class.__gnu_cxx::__normal_iterator.17"* dereferenceable(8) %4, %"class.__gnu_cxx::__normal_iterator.17"* dereferenceable(8) %__position)
          to label %35 unwind label %89

; <label>:35                                      ; preds = %32
  store i64 %34, i64* %__elems_after, align 8
  %36 = bitcast %"class.std::vector.5"* %9 to %"struct.std::_Vector_base.6"*
  %37 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %36, i32 0, i32 0
  %38 = getelementptr inbounds %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl", %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl"* %37, i32 0, i32 1
  %39 = load %class.CClause*, %class.CClause** %38, align 8
  store %class.CClause* %39, %class.CClause** %__old_finish, align 8
  %40 = load i64, i64* %__elems_after, align 8
  %41 = load i64, i64* %2, align 8
  %42 = icmp ugt i64 %40, %41
  br i1 %42, label %43, label %93

; <label>:43                                      ; preds = %35
  %44 = bitcast %"class.std::vector.5"* %9 to %"struct.std::_Vector_base.6"*
  %45 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %44, i32 0, i32 0
  %46 = getelementptr inbounds %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl", %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl"* %45, i32 0, i32 1
  %47 = load %class.CClause*, %class.CClause** %46, align 8
  %48 = load i64, i64* %2, align 8
  %49 = sub i64 0, %48
  %50 = getelementptr inbounds %class.CClause, %class.CClause* %47, i64 %49
  %51 = bitcast %"class.std::vector.5"* %9 to %"struct.std::_Vector_base.6"*
  %52 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %51, i32 0, i32 0
  %53 = getelementptr inbounds %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl", %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl"* %52, i32 0, i32 1
  %54 = load %class.CClause*, %class.CClause** %53, align 8
  %55 = bitcast %"class.std::vector.5"* %9 to %"struct.std::_Vector_base.6"*
  %56 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %55, i32 0, i32 0
  %57 = getelementptr inbounds %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl", %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl"* %56, i32 0, i32 1
  %58 = load %class.CClause*, %class.CClause** %57, align 8
  %59 = bitcast %"class.std::vector.5"* %9 to %"struct.std::_Vector_base.6"*
  %60 = invoke dereferenceable(1) %"class.std::allocator.7"* @_ZNSt12_Vector_baseI7CClauseSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.6"* %59)
          to label %61 unwind label %89

; <label>:61                                      ; preds = %43
  %62 = invoke %class.CClause* @_ZSt22__uninitialized_move_aIP7CClauseS1_SaIS0_EET0_T_S4_S3_RT1_(%class.CClause* %50, %class.CClause* %54, %class.CClause* %58, %"class.std::allocator.7"* dereferenceable(1) %60)
          to label %63 unwind label %89

; <label>:63                                      ; preds = %61
  %64 = load i64, i64* %2, align 8
  %65 = bitcast %"class.std::vector.5"* %9 to %"struct.std::_Vector_base.6"*
  %66 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %65, i32 0, i32 0
  %67 = getelementptr inbounds %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl", %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl"* %66, i32 0, i32 1
  %68 = load %class.CClause*, %class.CClause** %67, align 8
  %69 = getelementptr inbounds %class.CClause, %class.CClause* %68, i64 %64
  store %class.CClause* %69, %class.CClause** %67, align 8
  %70 = invoke dereferenceable(8) %class.CClause** @_ZNK9__gnu_cxx17__normal_iteratorIP7CClauseSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.17"* %__position)
          to label %71 unwind label %89

; <label>:71                                      ; preds = %63
  %72 = load %class.CClause*, %class.CClause** %70, align 8
  %73 = load %class.CClause*, %class.CClause** %__old_finish, align 8
  %74 = load i64, i64* %2, align 8
  %75 = sub i64 0, %74
  %76 = getelementptr inbounds %class.CClause, %class.CClause* %73, i64 %75
  %77 = load %class.CClause*, %class.CClause** %__old_finish, align 8
  %78 = invoke %class.CClause* @_ZSt13copy_backwardIP7CClauseS1_ET0_T_S3_S2_(%class.CClause* %72, %class.CClause* %76, %class.CClause* %77)
          to label %79 unwind label %89

; <label>:79                                      ; preds = %71
  %80 = invoke dereferenceable(8) %class.CClause** @_ZNK9__gnu_cxx17__normal_iteratorIP7CClauseSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.17"* %__position)
          to label %81 unwind label %89

; <label>:81                                      ; preds = %79
  %82 = load %class.CClause*, %class.CClause** %80, align 8
  %83 = invoke dereferenceable(8) %class.CClause** @_ZNK9__gnu_cxx17__normal_iteratorIP7CClauseSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.17"* %__position)
          to label %84 unwind label %89

; <label>:84                                      ; preds = %81
  %85 = load %class.CClause*, %class.CClause** %83, align 8
  %86 = load i64, i64* %2, align 8
  %87 = getelementptr inbounds %class.CClause, %class.CClause* %85, i64 %86
  invoke void @_ZSt4fillIP7CClauseS0_EvT_S2_RKT0_(%class.CClause* %82, %class.CClause* %87, %class.CClause* dereferenceable(16) %__x_copy)
          to label %88 unwind label %89

; <label>:88                                      ; preds = %84
  br label %133

; <label>:89                                      ; preds = %129, %121, %119, %110, %105, %103, %93, %84, %81, %79, %71, %63, %61, %43, %32, %27
  %90 = landingpad { i8*, i32 }
          cleanup
  %91 = extractvalue { i8*, i32 } %90, 0
  store i8* %91, i8** %5, align 8
  %92 = extractvalue { i8*, i32 } %90, 1
  store i32 %92, i32* %6, align 4
  invoke void @_ZN7CClauseD2Ev(%class.CClause* %__x_copy)
          to label %134 unwind label %272

; <label>:93                                      ; preds = %35
  %94 = bitcast %"class.std::vector.5"* %9 to %"struct.std::_Vector_base.6"*
  %95 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %94, i32 0, i32 0
  %96 = getelementptr inbounds %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl", %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl"* %95, i32 0, i32 1
  %97 = load %class.CClause*, %class.CClause** %96, align 8
  %98 = load i64, i64* %2, align 8
  %99 = load i64, i64* %__elems_after, align 8
  %100 = sub i64 %98, %99
  %101 = bitcast %"class.std::vector.5"* %9 to %"struct.std::_Vector_base.6"*
  %102 = invoke dereferenceable(1) %"class.std::allocator.7"* @_ZNSt12_Vector_baseI7CClauseSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.6"* %101)
          to label %103 unwind label %89

; <label>:103                                     ; preds = %93
  %104 = invoke %class.CClause* @_ZSt24__uninitialized_fill_n_aIP7CClausemS0_S0_ET_S2_T0_RKT1_RSaIT2_E(%class.CClause* %97, i64 %100, %class.CClause* dereferenceable(16) %__x_copy, %"class.std::allocator.7"* dereferenceable(1) %102)
          to label %105 unwind label %89

; <label>:105                                     ; preds = %103
  %106 = bitcast %"class.std::vector.5"* %9 to %"struct.std::_Vector_base.6"*
  %107 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %106, i32 0, i32 0
  %108 = getelementptr inbounds %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl", %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl"* %107, i32 0, i32 1
  store %class.CClause* %104, %class.CClause** %108, align 8
  %109 = invoke dereferenceable(8) %class.CClause** @_ZNK9__gnu_cxx17__normal_iteratorIP7CClauseSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.17"* %__position)
          to label %110 unwind label %89

; <label>:110                                     ; preds = %105
  %111 = load %class.CClause*, %class.CClause** %109, align 8
  %112 = load %class.CClause*, %class.CClause** %__old_finish, align 8
  %113 = bitcast %"class.std::vector.5"* %9 to %"struct.std::_Vector_base.6"*
  %114 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %113, i32 0, i32 0
  %115 = getelementptr inbounds %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl", %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl"* %114, i32 0, i32 1
  %116 = load %class.CClause*, %class.CClause** %115, align 8
  %117 = bitcast %"class.std::vector.5"* %9 to %"struct.std::_Vector_base.6"*
  %118 = invoke dereferenceable(1) %"class.std::allocator.7"* @_ZNSt12_Vector_baseI7CClauseSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.6"* %117)
          to label %119 unwind label %89

; <label>:119                                     ; preds = %110
  %120 = invoke %class.CClause* @_ZSt22__uninitialized_move_aIP7CClauseS1_SaIS0_EET0_T_S4_S3_RT1_(%class.CClause* %111, %class.CClause* %112, %class.CClause* %116, %"class.std::allocator.7"* dereferenceable(1) %118)
          to label %121 unwind label %89

; <label>:121                                     ; preds = %119
  %122 = load i64, i64* %__elems_after, align 8
  %123 = bitcast %"class.std::vector.5"* %9 to %"struct.std::_Vector_base.6"*
  %124 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %123, i32 0, i32 0
  %125 = getelementptr inbounds %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl", %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl"* %124, i32 0, i32 1
  %126 = load %class.CClause*, %class.CClause** %125, align 8
  %127 = getelementptr inbounds %class.CClause, %class.CClause* %126, i64 %122
  store %class.CClause* %127, %class.CClause** %125, align 8
  %128 = invoke dereferenceable(8) %class.CClause** @_ZNK9__gnu_cxx17__normal_iteratorIP7CClauseSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.17"* %__position)
          to label %129 unwind label %89

; <label>:129                                     ; preds = %121
  %130 = load %class.CClause*, %class.CClause** %128, align 8
  %131 = load %class.CClause*, %class.CClause** %__old_finish, align 8
  invoke void @_ZSt4fillIP7CClauseS0_EvT_S2_RKT0_(%class.CClause* %130, %class.CClause* %131, %class.CClause* dereferenceable(16) %__x_copy)
          to label %132 unwind label %89

; <label>:132                                     ; preds = %129
  br label %133

; <label>:133                                     ; preds = %132, %88
  call void @_ZN7CClauseD2Ev(%class.CClause* %__x_copy)
  br label %265

; <label>:134                                     ; preds = %89
  br label %267

; <label>:135                                     ; preds = %12
  %136 = load i64, i64* %2, align 8
  %137 = call i64 @_ZNKSt6vectorI7CClauseSaIS0_EE12_M_check_lenEmPKc(%"class.std::vector.5"* %9, i64 %136, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.36, i32 0, i32 0))
  store i64 %137, i64* %__len, align 8
  %138 = call %class.CClause* @_ZNSt6vectorI7CClauseSaIS0_EE5beginEv(%"class.std::vector.5"* %9)
  %139 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.17", %"class.__gnu_cxx::__normal_iterator.17"* %7, i32 0, i32 0
  store %class.CClause* %138, %class.CClause** %139, align 8
  %140 = call i64 @_ZN9__gnu_cxxmiIP7CClauseSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(%"class.__gnu_cxx::__normal_iterator.17"* dereferenceable(8) %__position, %"class.__gnu_cxx::__normal_iterator.17"* dereferenceable(8) %7)
  store i64 %140, i64* %__elems_before, align 8
  %141 = bitcast %"class.std::vector.5"* %9 to %"struct.std::_Vector_base.6"*
  %142 = load i64, i64* %__len, align 8
  %143 = call %class.CClause* @_ZNSt12_Vector_baseI7CClauseSaIS0_EE11_M_allocateEm(%"struct.std::_Vector_base.6"* %141, i64 %142)
  store %class.CClause* %143, %class.CClause** %__new_start, align 8
  %144 = load %class.CClause*, %class.CClause** %__new_start, align 8
  store %class.CClause* %144, %class.CClause** %__new_finish, align 8
  %145 = load %class.CClause*, %class.CClause** %__new_start, align 8
  %146 = load i64, i64* %__elems_before, align 8
  %147 = getelementptr inbounds %class.CClause, %class.CClause* %145, i64 %146
  %148 = load i64, i64* %2, align 8
  %149 = load %class.CClause*, %class.CClause** %3, align 8
  %150 = bitcast %"class.std::vector.5"* %9 to %"struct.std::_Vector_base.6"*
  %151 = invoke dereferenceable(1) %"class.std::allocator.7"* @_ZNSt12_Vector_baseI7CClauseSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.6"* %150)
          to label %152 unwind label %184

; <label>:152                                     ; preds = %135
  %153 = invoke %class.CClause* @_ZSt24__uninitialized_fill_n_aIP7CClausemS0_S0_ET_S2_T0_RKT1_RSaIT2_E(%class.CClause* %147, i64 %148, %class.CClause* dereferenceable(16) %149, %"class.std::allocator.7"* dereferenceable(1) %151)
          to label %154 unwind label %184

; <label>:154                                     ; preds = %152
  store %class.CClause* null, %class.CClause** %__new_finish, align 8
  %155 = bitcast %"class.std::vector.5"* %9 to %"struct.std::_Vector_base.6"*
  %156 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %155, i32 0, i32 0
  %157 = getelementptr inbounds %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl", %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl"* %156, i32 0, i32 0
  %158 = load %class.CClause*, %class.CClause** %157, align 8
  %159 = invoke dereferenceable(8) %class.CClause** @_ZNK9__gnu_cxx17__normal_iteratorIP7CClauseSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.17"* %__position)
          to label %160 unwind label %184

; <label>:160                                     ; preds = %154
  %161 = load %class.CClause*, %class.CClause** %159, align 8
  %162 = load %class.CClause*, %class.CClause** %__new_start, align 8
  %163 = bitcast %"class.std::vector.5"* %9 to %"struct.std::_Vector_base.6"*
  %164 = invoke dereferenceable(1) %"class.std::allocator.7"* @_ZNSt12_Vector_baseI7CClauseSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.6"* %163)
          to label %165 unwind label %184

; <label>:165                                     ; preds = %160
  %166 = invoke %class.CClause* @_ZSt34__uninitialized_move_if_noexcept_aIP7CClauseS1_SaIS0_EET0_T_S4_S3_RT1_(%class.CClause* %158, %class.CClause* %161, %class.CClause* %162, %"class.std::allocator.7"* dereferenceable(1) %164)
          to label %167 unwind label %184

; <label>:167                                     ; preds = %165
  store %class.CClause* %166, %class.CClause** %__new_finish, align 8
  %168 = load i64, i64* %2, align 8
  %169 = load %class.CClause*, %class.CClause** %__new_finish, align 8
  %170 = getelementptr inbounds %class.CClause, %class.CClause* %169, i64 %168
  store %class.CClause* %170, %class.CClause** %__new_finish, align 8
  %171 = invoke dereferenceable(8) %class.CClause** @_ZNK9__gnu_cxx17__normal_iteratorIP7CClauseSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.17"* %__position)
          to label %172 unwind label %184

; <label>:172                                     ; preds = %167
  %173 = load %class.CClause*, %class.CClause** %171, align 8
  %174 = bitcast %"class.std::vector.5"* %9 to %"struct.std::_Vector_base.6"*
  %175 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %174, i32 0, i32 0
  %176 = getelementptr inbounds %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl", %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl"* %175, i32 0, i32 1
  %177 = load %class.CClause*, %class.CClause** %176, align 8
  %178 = load %class.CClause*, %class.CClause** %__new_finish, align 8
  %179 = bitcast %"class.std::vector.5"* %9 to %"struct.std::_Vector_base.6"*
  %180 = invoke dereferenceable(1) %"class.std::allocator.7"* @_ZNSt12_Vector_baseI7CClauseSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.6"* %179)
          to label %181 unwind label %184

; <label>:181                                     ; preds = %172
  %182 = invoke %class.CClause* @_ZSt34__uninitialized_move_if_noexcept_aIP7CClauseS1_SaIS0_EET0_T_S4_S3_RT1_(%class.CClause* %173, %class.CClause* %177, %class.CClause* %178, %"class.std::allocator.7"* dereferenceable(1) %180)
          to label %183 unwind label %184

; <label>:183                                     ; preds = %181
  store %class.CClause* %182, %class.CClause** %__new_finish, align 8
  br label %223

; <label>:184                                     ; preds = %181, %172, %167, %165, %160, %154, %152, %135
  %185 = landingpad { i8*, i32 }
          catch i8* null
  %186 = extractvalue { i8*, i32 } %185, 0
  store i8* %186, i8** %5, align 8
  %187 = extractvalue { i8*, i32 } %185, 1
  store i32 %187, i32* %6, align 4
  br label %188

; <label>:188                                     ; preds = %184
  %189 = load i8*, i8** %5, align 8
  %190 = call i8* @__cxa_begin_catch(i8* %189) #2
  %191 = load %class.CClause*, %class.CClause** %__new_finish, align 8
  %192 = icmp ne %class.CClause* %191, null
  br i1 %192, label %210, label %193

; <label>:193                                     ; preds = %188
  %194 = load %class.CClause*, %class.CClause** %__new_start, align 8
  %195 = load i64, i64* %__elems_before, align 8
  %196 = getelementptr inbounds %class.CClause, %class.CClause* %194, i64 %195
  %197 = load %class.CClause*, %class.CClause** %__new_start, align 8
  %198 = load i64, i64* %__elems_before, align 8
  %199 = getelementptr inbounds %class.CClause, %class.CClause* %197, i64 %198
  %200 = load i64, i64* %2, align 8
  %201 = getelementptr inbounds %class.CClause, %class.CClause* %199, i64 %200
  %202 = bitcast %"class.std::vector.5"* %9 to %"struct.std::_Vector_base.6"*
  %203 = invoke dereferenceable(1) %"class.std::allocator.7"* @_ZNSt12_Vector_baseI7CClauseSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.6"* %202)
          to label %204 unwind label %206

; <label>:204                                     ; preds = %193
  invoke void @_ZSt8_DestroyIP7CClauseS0_EvT_S2_RSaIT0_E(%class.CClause* %196, %class.CClause* %201, %"class.std::allocator.7"* dereferenceable(1) %203)
          to label %205 unwind label %206

; <label>:205                                     ; preds = %204
  br label %217

; <label>:206                                     ; preds = %221, %217, %215, %210, %204, %193
  %207 = landingpad { i8*, i32 }
          cleanup
  %208 = extractvalue { i8*, i32 } %207, 0
  store i8* %208, i8** %5, align 8
  %209 = extractvalue { i8*, i32 } %207, 1
  store i32 %209, i32* %6, align 4
  invoke void @__cxa_end_catch()
          to label %222 unwind label %272

; <label>:210                                     ; preds = %188
  %211 = load %class.CClause*, %class.CClause** %__new_start, align 8
  %212 = load %class.CClause*, %class.CClause** %__new_finish, align 8
  %213 = bitcast %"class.std::vector.5"* %9 to %"struct.std::_Vector_base.6"*
  %214 = invoke dereferenceable(1) %"class.std::allocator.7"* @_ZNSt12_Vector_baseI7CClauseSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.6"* %213)
          to label %215 unwind label %206

; <label>:215                                     ; preds = %210
  invoke void @_ZSt8_DestroyIP7CClauseS0_EvT_S2_RSaIT0_E(%class.CClause* %211, %class.CClause* %212, %"class.std::allocator.7"* dereferenceable(1) %214)
          to label %216 unwind label %206

; <label>:216                                     ; preds = %215
  br label %217

; <label>:217                                     ; preds = %216, %205
  %218 = bitcast %"class.std::vector.5"* %9 to %"struct.std::_Vector_base.6"*
  %219 = load %class.CClause*, %class.CClause** %__new_start, align 8
  %220 = load i64, i64* %__len, align 8
  invoke void @_ZNSt12_Vector_baseI7CClauseSaIS0_EE13_M_deallocateEPS0_m(%"struct.std::_Vector_base.6"* %218, %class.CClause* %219, i64 %220)
          to label %221 unwind label %206

; <label>:221                                     ; preds = %217
  invoke void @__cxa_rethrow() #16
          to label %275 unwind label %206

; <label>:222                                     ; preds = %206
  br label %267

; <label>:223                                     ; preds = %183
  %224 = bitcast %"class.std::vector.5"* %9 to %"struct.std::_Vector_base.6"*
  %225 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %224, i32 0, i32 0
  %226 = getelementptr inbounds %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl", %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl"* %225, i32 0, i32 0
  %227 = load %class.CClause*, %class.CClause** %226, align 8
  %228 = bitcast %"class.std::vector.5"* %9 to %"struct.std::_Vector_base.6"*
  %229 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %228, i32 0, i32 0
  %230 = getelementptr inbounds %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl", %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl"* %229, i32 0, i32 1
  %231 = load %class.CClause*, %class.CClause** %230, align 8
  %232 = bitcast %"class.std::vector.5"* %9 to %"struct.std::_Vector_base.6"*
  %233 = call dereferenceable(1) %"class.std::allocator.7"* @_ZNSt12_Vector_baseI7CClauseSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.6"* %232)
  call void @_ZSt8_DestroyIP7CClauseS0_EvT_S2_RSaIT0_E(%class.CClause* %227, %class.CClause* %231, %"class.std::allocator.7"* dereferenceable(1) %233)
  %234 = bitcast %"class.std::vector.5"* %9 to %"struct.std::_Vector_base.6"*
  %235 = bitcast %"class.std::vector.5"* %9 to %"struct.std::_Vector_base.6"*
  %236 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %235, i32 0, i32 0
  %237 = getelementptr inbounds %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl", %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl"* %236, i32 0, i32 0
  %238 = load %class.CClause*, %class.CClause** %237, align 8
  %239 = bitcast %"class.std::vector.5"* %9 to %"struct.std::_Vector_base.6"*
  %240 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %239, i32 0, i32 0
  %241 = getelementptr inbounds %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl", %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl"* %240, i32 0, i32 2
  %242 = load %class.CClause*, %class.CClause** %241, align 8
  %243 = bitcast %"class.std::vector.5"* %9 to %"struct.std::_Vector_base.6"*
  %244 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %243, i32 0, i32 0
  %245 = getelementptr inbounds %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl", %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl"* %244, i32 0, i32 0
  %246 = load %class.CClause*, %class.CClause** %245, align 8
  %247 = ptrtoint %class.CClause* %242 to i64
  %248 = ptrtoint %class.CClause* %246 to i64
  %249 = sub i64 %247, %248
  %250 = sdiv exact i64 %249, 16
  call void @_ZNSt12_Vector_baseI7CClauseSaIS0_EE13_M_deallocateEPS0_m(%"struct.std::_Vector_base.6"* %234, %class.CClause* %238, i64 %250)
  %251 = load %class.CClause*, %class.CClause** %__new_start, align 8
  %252 = bitcast %"class.std::vector.5"* %9 to %"struct.std::_Vector_base.6"*
  %253 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %252, i32 0, i32 0
  %254 = getelementptr inbounds %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl", %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl"* %253, i32 0, i32 0
  store %class.CClause* %251, %class.CClause** %254, align 8
  %255 = load %class.CClause*, %class.CClause** %__new_finish, align 8
  %256 = bitcast %"class.std::vector.5"* %9 to %"struct.std::_Vector_base.6"*
  %257 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %256, i32 0, i32 0
  %258 = getelementptr inbounds %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl", %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl"* %257, i32 0, i32 1
  store %class.CClause* %255, %class.CClause** %258, align 8
  %259 = load %class.CClause*, %class.CClause** %__new_start, align 8
  %260 = load i64, i64* %__len, align 8
  %261 = getelementptr inbounds %class.CClause, %class.CClause* %259, i64 %260
  %262 = bitcast %"class.std::vector.5"* %9 to %"struct.std::_Vector_base.6"*
  %263 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %262, i32 0, i32 0
  %264 = getelementptr inbounds %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl", %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl"* %263, i32 0, i32 2
  store %class.CClause* %261, %class.CClause** %264, align 8
  br label %265

; <label>:265                                     ; preds = %223, %133
  br label %266

; <label>:266                                     ; preds = %265, %0
  ret void

; <label>:267                                     ; preds = %222, %134
  %268 = load i8*, i8** %5, align 8
  %269 = load i32, i32* %6, align 4
  %270 = insertvalue { i8*, i32 } undef, i8* %268, 0
  %271 = insertvalue { i8*, i32 } %270, i32 %269, 1
  resume { i8*, i32 } %271

; <label>:272                                     ; preds = %206, %89
  %273 = landingpad { i8*, i32 }
          catch i8* null
  %274 = extractvalue { i8*, i32 } %273, 0
  call void @__clang_call_terminate(i8* %274) #13
  unreachable

; <label>:275                                     ; preds = %221
  unreachable
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i64 @_ZN9__gnu_cxxmiIP7CClauseSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(%"class.__gnu_cxx::__normal_iterator.17"* dereferenceable(8) %__lhs, %"class.__gnu_cxx::__normal_iterator.17"* dereferenceable(8) %__rhs) #7 comdat {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.17"*, align 8
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.17"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.17"* %__lhs, %"class.__gnu_cxx::__normal_iterator.17"** %1, align 8
  store %"class.__gnu_cxx::__normal_iterator.17"* %__rhs, %"class.__gnu_cxx::__normal_iterator.17"** %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator.17"*, %"class.__gnu_cxx::__normal_iterator.17"** %1, align 8
  %4 = call dereferenceable(8) %class.CClause** @_ZNK9__gnu_cxx17__normal_iteratorIP7CClauseSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.17"* %3)
  %5 = load %class.CClause*, %class.CClause** %4, align 8
  %6 = load %"class.__gnu_cxx::__normal_iterator.17"*, %"class.__gnu_cxx::__normal_iterator.17"** %2, align 8
  %7 = call dereferenceable(8) %class.CClause** @_ZNK9__gnu_cxx17__normal_iteratorIP7CClauseSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.17"* %6)
  %8 = load %class.CClause*, %class.CClause** %7, align 8
  %9 = ptrtoint %class.CClause* %5 to i64
  %10 = ptrtoint %class.CClause* %8 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 16
  ret i64 %12
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %class.CClause* @_ZSt22__uninitialized_move_aIP7CClauseS1_SaIS0_EET0_T_S4_S3_RT1_(%class.CClause* %__first, %class.CClause* %__last, %class.CClause* %__result, %"class.std::allocator.7"* dereferenceable(1) %__alloc) #7 comdat {
  %1 = alloca %class.CClause*, align 8
  %2 = alloca %class.CClause*, align 8
  %3 = alloca %class.CClause*, align 8
  %4 = alloca %"class.std::allocator.7"*, align 8
  store %class.CClause* %__first, %class.CClause** %1, align 8
  store %class.CClause* %__last, %class.CClause** %2, align 8
  store %class.CClause* %__result, %class.CClause** %3, align 8
  store %"class.std::allocator.7"* %__alloc, %"class.std::allocator.7"** %4, align 8
  %5 = load %class.CClause*, %class.CClause** %1, align 8
  %6 = load %class.CClause*, %class.CClause** %2, align 8
  %7 = load %class.CClause*, %class.CClause** %3, align 8
  %8 = load %"class.std::allocator.7"*, %"class.std::allocator.7"** %4, align 8
  %9 = call %class.CClause* @_ZSt22__uninitialized_copy_aIP7CClauseS1_S0_ET0_T_S3_S2_RSaIT1_E(%class.CClause* %5, %class.CClause* %6, %class.CClause* %7, %"class.std::allocator.7"* dereferenceable(1) %8)
  ret %class.CClause* %9
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %class.CClause* @_ZSt13copy_backwardIP7CClauseS1_ET0_T_S3_S2_(%class.CClause* %__first, %class.CClause* %__last, %class.CClause* %__result) #7 comdat {
  %1 = alloca %class.CClause*, align 8
  %2 = alloca %class.CClause*, align 8
  %3 = alloca %class.CClause*, align 8
  store %class.CClause* %__first, %class.CClause** %1, align 8
  store %class.CClause* %__last, %class.CClause** %2, align 8
  store %class.CClause* %__result, %class.CClause** %3, align 8
  %4 = load %class.CClause*, %class.CClause** %1, align 8
  %5 = call %class.CClause* @_ZSt12__miter_baseIP7CClauseENSt11_Miter_baseIT_E13iterator_typeES3_(%class.CClause* %4)
  %6 = load %class.CClause*, %class.CClause** %2, align 8
  %7 = call %class.CClause* @_ZSt12__miter_baseIP7CClauseENSt11_Miter_baseIT_E13iterator_typeES3_(%class.CClause* %6)
  %8 = load %class.CClause*, %class.CClause** %3, align 8
  %9 = call %class.CClause* @_ZSt23__copy_move_backward_a2ILb0EP7CClauseS1_ET1_T0_S3_S2_(%class.CClause* %5, %class.CClause* %7, %class.CClause* %8)
  ret %class.CClause* %9
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(8) %class.CClause** @_ZNK9__gnu_cxx17__normal_iteratorIP7CClauseSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.17"* %this) #5 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.17"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.17"* %this, %"class.__gnu_cxx::__normal_iterator.17"** %1, align 8
  %2 = load %"class.__gnu_cxx::__normal_iterator.17"*, %"class.__gnu_cxx::__normal_iterator.17"** %1, align 8
  %3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.17", %"class.__gnu_cxx::__normal_iterator.17"* %2, i32 0, i32 0
  ret %class.CClause** %3
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt4fillIP7CClauseS0_EvT_S2_RKT0_(%class.CClause* %__first, %class.CClause* %__last, %class.CClause* dereferenceable(16) %__value) #7 comdat {
  %1 = alloca %class.CClause*, align 8
  %2 = alloca %class.CClause*, align 8
  %3 = alloca %class.CClause*, align 8
  store %class.CClause* %__first, %class.CClause** %1, align 8
  store %class.CClause* %__last, %class.CClause** %2, align 8
  store %class.CClause* %__value, %class.CClause** %3, align 8
  %4 = load %class.CClause*, %class.CClause** %1, align 8
  %5 = call %class.CClause* @_ZSt12__niter_baseIP7CClauseENSt11_Niter_baseIT_E13iterator_typeES3_(%class.CClause* %4)
  %6 = load %class.CClause*, %class.CClause** %2, align 8
  %7 = call %class.CClause* @_ZSt12__niter_baseIP7CClauseENSt11_Niter_baseIT_E13iterator_typeES3_(%class.CClause* %6)
  %8 = load %class.CClause*, %class.CClause** %3, align 8
  call void @_ZSt8__fill_aIP7CClauseS0_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_S7_RKS4_(%class.CClause* %5, %class.CClause* %7, %class.CClause* dereferenceable(16) %8)
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %class.CClause* @_ZSt24__uninitialized_fill_n_aIP7CClausemS0_S0_ET_S2_T0_RKT1_RSaIT2_E(%class.CClause* %__first, i64 %__n, %class.CClause* dereferenceable(16) %__x, %"class.std::allocator.7"* dereferenceable(1)) #7 comdat {
  %2 = alloca %class.CClause*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %class.CClause*, align 8
  %5 = alloca %"class.std::allocator.7"*, align 8
  store %class.CClause* %__first, %class.CClause** %2, align 8
  store i64 %__n, i64* %3, align 8
  store %class.CClause* %__x, %class.CClause** %4, align 8
  store %"class.std::allocator.7"* %0, %"class.std::allocator.7"** %5, align 8
  %6 = load %class.CClause*, %class.CClause** %2, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load %class.CClause*, %class.CClause** %4, align 8
  %9 = call %class.CClause* @_ZSt20uninitialized_fill_nIP7CClausemS0_ET_S2_T0_RKT1_(%class.CClause* %6, i64 %7, %class.CClause* dereferenceable(16) %8)
  ret %class.CClause* %9
}

; Function Attrs: uwtable
define linkonce_odr i64 @_ZNKSt6vectorI7CClauseSaIS0_EE12_M_check_lenEmPKc(%"class.std::vector.5"* %this, i64 %__n, i8* %__s) #0 comdat align 2 {
  %1 = alloca %"class.std::vector.5"*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %__len = alloca i64, align 8
  %4 = alloca i64, align 8
  store %"class.std::vector.5"* %this, %"class.std::vector.5"** %1, align 8
  store i64 %__n, i64* %2, align 8
  store i8* %__s, i8** %3, align 8
  %5 = load %"class.std::vector.5"*, %"class.std::vector.5"** %1, align 8
  %6 = call i64 @_ZNKSt6vectorI7CClauseSaIS0_EE8max_sizeEv(%"class.std::vector.5"* %5)
  %7 = call i64 @_ZNKSt6vectorI7CClauseSaIS0_EE4sizeEv(%"class.std::vector.5"* %5)
  %8 = sub i64 %6, %7
  %9 = load i64, i64* %2, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %13

; <label>:11                                      ; preds = %0
  %12 = load i8*, i8** %3, align 8
  call void @_ZSt20__throw_length_errorPKc(i8* %12) #16
  unreachable

; <label>:13                                      ; preds = %0
  %14 = call i64 @_ZNKSt6vectorI7CClauseSaIS0_EE4sizeEv(%"class.std::vector.5"* %5)
  %15 = call i64 @_ZNKSt6vectorI7CClauseSaIS0_EE4sizeEv(%"class.std::vector.5"* %5)
  store i64 %15, i64* %4, align 8
  %16 = call dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* dereferenceable(8) %4, i64* dereferenceable(8) %2)
  %17 = load i64, i64* %16, align 8
  %18 = add i64 %14, %17
  store i64 %18, i64* %__len, align 8
  %19 = load i64, i64* %__len, align 8
  %20 = call i64 @_ZNKSt6vectorI7CClauseSaIS0_EE4sizeEv(%"class.std::vector.5"* %5)
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %26, label %22

; <label>:22                                      ; preds = %13
  %23 = load i64, i64* %__len, align 8
  %24 = call i64 @_ZNKSt6vectorI7CClauseSaIS0_EE8max_sizeEv(%"class.std::vector.5"* %5)
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %28

; <label>:26                                      ; preds = %22, %13
  %27 = call i64 @_ZNKSt6vectorI7CClauseSaIS0_EE8max_sizeEv(%"class.std::vector.5"* %5)
  br label %30

; <label>:28                                      ; preds = %22
  %29 = load i64, i64* %__len, align 8
  br label %30

; <label>:30                                      ; preds = %28, %26
  %31 = phi i64 [ %27, %26 ], [ %29, %28 ]
  ret i64 %31
}

; Function Attrs: uwtable
define linkonce_odr %class.CClause* @_ZNSt6vectorI7CClauseSaIS0_EE5beginEv(%"class.std::vector.5"* %this) #0 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.17", align 8
  %2 = alloca %"class.std::vector.5"*, align 8
  store %"class.std::vector.5"* %this, %"class.std::vector.5"** %2, align 8
  %3 = load %"class.std::vector.5"*, %"class.std::vector.5"** %2, align 8
  %4 = bitcast %"class.std::vector.5"* %3 to %"struct.std::_Vector_base.6"*
  %5 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl", %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl"* %5, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIP7CClauseSt6vectorIS1_SaIS1_EEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator.17"* %1, %class.CClause** dereferenceable(8) %6)
  %7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.17", %"class.__gnu_cxx::__normal_iterator.17"* %1, i32 0, i32 0
  %8 = load %class.CClause*, %class.CClause** %7, align 8
  ret %class.CClause* %8
}

; Function Attrs: uwtable
define linkonce_odr %class.CClause* @_ZNSt12_Vector_baseI7CClauseSaIS0_EE11_M_allocateEm(%"struct.std::_Vector_base.6"* %this, i64 %__n) #0 comdat align 2 {
  %1 = alloca %"struct.std::_Vector_base.6"*, align 8
  %2 = alloca i64, align 8
  store %"struct.std::_Vector_base.6"* %this, %"struct.std::_Vector_base.6"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %3 = load %"struct.std::_Vector_base.6"*, %"struct.std::_Vector_base.6"** %1, align 8
  %4 = load i64, i64* %2, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %11

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %3, i32 0, i32 0
  %8 = bitcast %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl"* %7 to %"class.std::allocator.7"*
  %9 = load i64, i64* %2, align 8
  %10 = call %class.CClause* @_ZN9__gnu_cxx14__alloc_traitsISaI7CClauseEE8allocateERS2_m(%"class.std::allocator.7"* dereferenceable(1) %8, i64 %9)
  br label %12

; <label>:11                                      ; preds = %0
  br label %12

; <label>:12                                      ; preds = %11, %6
  %13 = phi %class.CClause* [ %10, %6 ], [ null, %11 ]
  ret %class.CClause* %13
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %class.CClause* @_ZSt34__uninitialized_move_if_noexcept_aIP7CClauseS1_SaIS0_EET0_T_S4_S3_RT1_(%class.CClause* %__first, %class.CClause* %__last, %class.CClause* %__result, %"class.std::allocator.7"* dereferenceable(1) %__alloc) #7 comdat {
  %1 = alloca %class.CClause*, align 8
  %2 = alloca %class.CClause*, align 8
  %3 = alloca %class.CClause*, align 8
  %4 = alloca %"class.std::allocator.7"*, align 8
  store %class.CClause* %__first, %class.CClause** %1, align 8
  store %class.CClause* %__last, %class.CClause** %2, align 8
  store %class.CClause* %__result, %class.CClause** %3, align 8
  store %"class.std::allocator.7"* %__alloc, %"class.std::allocator.7"** %4, align 8
  %5 = load %class.CClause*, %class.CClause** %1, align 8
  %6 = load %class.CClause*, %class.CClause** %2, align 8
  %7 = load %class.CClause*, %class.CClause** %3, align 8
  %8 = load %"class.std::allocator.7"*, %"class.std::allocator.7"** %4, align 8
  %9 = call %class.CClause* @_ZSt22__uninitialized_copy_aIP7CClauseS1_S0_ET0_T_S3_S2_RSaIT1_E(%class.CClause* %5, %class.CClause* %6, %class.CClause* %7, %"class.std::allocator.7"* dereferenceable(1) %8)
  ret %class.CClause* %9
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %class.CClause* @_ZSt22__uninitialized_copy_aIP7CClauseS1_S0_ET0_T_S3_S2_RSaIT1_E(%class.CClause* %__first, %class.CClause* %__last, %class.CClause* %__result, %"class.std::allocator.7"* dereferenceable(1)) #7 comdat {
  %2 = alloca %class.CClause*, align 8
  %3 = alloca %class.CClause*, align 8
  %4 = alloca %class.CClause*, align 8
  %5 = alloca %"class.std::allocator.7"*, align 8
  store %class.CClause* %__first, %class.CClause** %2, align 8
  store %class.CClause* %__last, %class.CClause** %3, align 8
  store %class.CClause* %__result, %class.CClause** %4, align 8
  store %"class.std::allocator.7"* %0, %"class.std::allocator.7"** %5, align 8
  %6 = load %class.CClause*, %class.CClause** %2, align 8
  %7 = load %class.CClause*, %class.CClause** %3, align 8
  %8 = load %class.CClause*, %class.CClause** %4, align 8
  %9 = call %class.CClause* @_ZSt18uninitialized_copyIP7CClauseS1_ET0_T_S3_S2_(%class.CClause* %6, %class.CClause* %7, %class.CClause* %8)
  ret %class.CClause* %9
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %class.CClause* @_ZSt18uninitialized_copyIP7CClauseS1_ET0_T_S3_S2_(%class.CClause* %__first, %class.CClause* %__last, %class.CClause* %__result) #7 comdat {
  %1 = alloca %class.CClause*, align 8
  %2 = alloca %class.CClause*, align 8
  %3 = alloca %class.CClause*, align 8
  %__assignable = alloca i8, align 1
  store %class.CClause* %__first, %class.CClause** %1, align 8
  store %class.CClause* %__last, %class.CClause** %2, align 8
  store %class.CClause* %__result, %class.CClause** %3, align 8
  store i8 1, i8* %__assignable, align 1
  %4 = load %class.CClause*, %class.CClause** %1, align 8
  %5 = load %class.CClause*, %class.CClause** %2, align 8
  %6 = load %class.CClause*, %class.CClause** %3, align 8
  %7 = call %class.CClause* @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIP7CClauseS3_EET0_T_S5_S4_(%class.CClause* %4, %class.CClause* %5, %class.CClause* %6)
  ret %class.CClause* %7
}

; Function Attrs: uwtable
define linkonce_odr %class.CClause* @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIP7CClauseS3_EET0_T_S5_S4_(%class.CClause* %__first, %class.CClause* %__last, %class.CClause* %__result) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %class.CClause*, align 8
  %2 = alloca %class.CClause*, align 8
  %3 = alloca %class.CClause*, align 8
  %__cur = alloca %class.CClause*, align 8
  %4 = alloca i8*
  %5 = alloca i32
  store %class.CClause* %__first, %class.CClause** %1, align 8
  store %class.CClause* %__last, %class.CClause** %2, align 8
  store %class.CClause* %__result, %class.CClause** %3, align 8
  %6 = load %class.CClause*, %class.CClause** %3, align 8
  store %class.CClause* %6, %class.CClause** %__cur, align 8
  br label %7

; <label>:7                                       ; preds = %17, %0
  %8 = load %class.CClause*, %class.CClause** %1, align 8
  %9 = load %class.CClause*, %class.CClause** %2, align 8
  %10 = icmp ne %class.CClause* %8, %9
  br i1 %10, label %11, label %32

; <label>:11                                      ; preds = %7
  %12 = load %class.CClause*, %class.CClause** %__cur, align 8
  %13 = invoke %class.CClause* @_ZSt11__addressofI7CClauseEPT_RS1_(%class.CClause* dereferenceable(16) %12)
          to label %14 unwind label %22

; <label>:14                                      ; preds = %11
  %15 = load %class.CClause*, %class.CClause** %1, align 8
  invoke void @_ZSt10_ConstructI7CClauseS0_EvPT_RKT0_(%class.CClause* %13, %class.CClause* dereferenceable(16) %15)
          to label %16 unwind label %22

; <label>:16                                      ; preds = %14
  br label %17

; <label>:17                                      ; preds = %16
  %18 = load %class.CClause*, %class.CClause** %1, align 8
  %19 = getelementptr inbounds %class.CClause, %class.CClause* %18, i32 1
  store %class.CClause* %19, %class.CClause** %1, align 8
  %20 = load %class.CClause*, %class.CClause** %__cur, align 8
  %21 = getelementptr inbounds %class.CClause, %class.CClause* %20, i32 1
  store %class.CClause* %21, %class.CClause** %__cur, align 8
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
  %29 = load %class.CClause*, %class.CClause** %3, align 8
  %30 = load %class.CClause*, %class.CClause** %__cur, align 8
  invoke void @_ZSt8_DestroyIP7CClauseEvT_S2_(%class.CClause* %29, %class.CClause* %30)
          to label %31 unwind label %34

; <label>:31                                      ; preds = %26
  invoke void @__cxa_rethrow() #16
          to label %48 unwind label %34

; <label>:32                                      ; preds = %7
  %33 = load %class.CClause*, %class.CClause** %__cur, align 8
  ret %class.CClause* %33

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
  call void @__clang_call_terminate(i8* %47) #13
  unreachable

; <label>:48                                      ; preds = %31
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZSt10_ConstructI7CClauseS0_EvPT_RKT0_(%class.CClause* %__p, %class.CClause* dereferenceable(16) %__value) #11 comdat {
  %1 = alloca %class.CClause*, align 8
  %2 = alloca %class.CClause*, align 8
  store %class.CClause* %__p, %class.CClause** %1, align 8
  store %class.CClause* %__value, %class.CClause** %2, align 8
  %3 = load %class.CClause*, %class.CClause** %1, align 8
  %4 = bitcast %class.CClause* %3 to i8*
  %5 = bitcast i8* %4 to %class.CClause*
  %6 = load %class.CClause*, %class.CClause** %2, align 8
  %7 = bitcast %class.CClause* %5 to i8*
  %8 = bitcast %class.CClause* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 16, i32 8, i1 false)
  ret void
}

; Function Attrs: noreturn nounwind
declare void @llvm.trap() #13

; Function Attrs: inlinehint uwtable
define linkonce_odr %class.CClause* @_ZSt23__copy_move_backward_a2ILb0EP7CClauseS1_ET1_T0_S3_S2_(%class.CClause* %__first, %class.CClause* %__last, %class.CClause* %__result) #7 comdat {
  %1 = alloca %class.CClause*, align 8
  %2 = alloca %class.CClause*, align 8
  %3 = alloca %class.CClause*, align 8
  store %class.CClause* %__first, %class.CClause** %1, align 8
  store %class.CClause* %__last, %class.CClause** %2, align 8
  store %class.CClause* %__result, %class.CClause** %3, align 8
  %4 = load %class.CClause*, %class.CClause** %1, align 8
  %5 = call %class.CClause* @_ZSt12__niter_baseIP7CClauseENSt11_Niter_baseIT_E13iterator_typeES3_(%class.CClause* %4)
  %6 = load %class.CClause*, %class.CClause** %2, align 8
  %7 = call %class.CClause* @_ZSt12__niter_baseIP7CClauseENSt11_Niter_baseIT_E13iterator_typeES3_(%class.CClause* %6)
  %8 = load %class.CClause*, %class.CClause** %3, align 8
  %9 = call %class.CClause* @_ZSt12__niter_baseIP7CClauseENSt11_Niter_baseIT_E13iterator_typeES3_(%class.CClause* %8)
  %10 = call %class.CClause* @_ZSt22__copy_move_backward_aILb0EP7CClauseS1_ET1_T0_S3_S2_(%class.CClause* %5, %class.CClause* %7, %class.CClause* %9)
  ret %class.CClause* %10
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %class.CClause* @_ZSt12__miter_baseIP7CClauseENSt11_Miter_baseIT_E13iterator_typeES3_(%class.CClause* %__it) #11 comdat {
  %1 = alloca %class.CClause*, align 8
  store %class.CClause* %__it, %class.CClause** %1, align 8
  %2 = load %class.CClause*, %class.CClause** %1, align 8
  %3 = call %class.CClause* @_ZNSt10_Iter_baseIP7CClauseLb0EE7_S_baseES1_(%class.CClause* %2)
  ret %class.CClause* %3
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %class.CClause* @_ZSt22__copy_move_backward_aILb0EP7CClauseS1_ET1_T0_S3_S2_(%class.CClause* %__first, %class.CClause* %__last, %class.CClause* %__result) #7 comdat {
  %1 = alloca %class.CClause*, align 8
  %2 = alloca %class.CClause*, align 8
  %3 = alloca %class.CClause*, align 8
  %__simple = alloca i8, align 1
  store %class.CClause* %__first, %class.CClause** %1, align 8
  store %class.CClause* %__last, %class.CClause** %2, align 8
  store %class.CClause* %__result, %class.CClause** %3, align 8
  store i8 0, i8* %__simple, align 1
  %4 = load %class.CClause*, %class.CClause** %1, align 8
  %5 = load %class.CClause*, %class.CClause** %2, align 8
  %6 = load %class.CClause*, %class.CClause** %3, align 8
  %7 = call %class.CClause* @_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIP7CClauseS4_EET0_T_S6_S5_(%class.CClause* %4, %class.CClause* %5, %class.CClause* %6)
  ret %class.CClause* %7
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %class.CClause* @_ZSt12__niter_baseIP7CClauseENSt11_Niter_baseIT_E13iterator_typeES3_(%class.CClause* %__it) #7 comdat {
  %1 = alloca %class.CClause*, align 8
  store %class.CClause* %__it, %class.CClause** %1, align 8
  %2 = load %class.CClause*, %class.CClause** %1, align 8
  %3 = call %class.CClause* @_ZNSt10_Iter_baseIP7CClauseLb0EE7_S_baseES1_(%class.CClause* %2)
  ret %class.CClause* %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr %class.CClause* @_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIP7CClauseS4_EET0_T_S6_S5_(%class.CClause* %__first, %class.CClause* %__last, %class.CClause* %__result) #5 comdat align 2 {
  %1 = alloca %class.CClause*, align 8
  %2 = alloca %class.CClause*, align 8
  %3 = alloca %class.CClause*, align 8
  %__n = alloca i64, align 8
  store %class.CClause* %__first, %class.CClause** %1, align 8
  store %class.CClause* %__last, %class.CClause** %2, align 8
  store %class.CClause* %__result, %class.CClause** %3, align 8
  %4 = load %class.CClause*, %class.CClause** %2, align 8
  %5 = load %class.CClause*, %class.CClause** %1, align 8
  %6 = ptrtoint %class.CClause* %4 to i64
  %7 = ptrtoint %class.CClause* %5 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 16
  store i64 %9, i64* %__n, align 8
  br label %10

; <label>:10                                      ; preds = %20, %0
  %11 = load i64, i64* %__n, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %23

; <label>:13                                      ; preds = %10
  %14 = load %class.CClause*, %class.CClause** %3, align 8
  %15 = getelementptr inbounds %class.CClause, %class.CClause* %14, i32 -1
  store %class.CClause* %15, %class.CClause** %3, align 8
  %16 = load %class.CClause*, %class.CClause** %2, align 8
  %17 = getelementptr inbounds %class.CClause, %class.CClause* %16, i32 -1
  store %class.CClause* %17, %class.CClause** %2, align 8
  %18 = bitcast %class.CClause* %15 to i8*
  %19 = bitcast %class.CClause* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 13, i32 8, i1 false)
  br label %20

; <label>:20                                      ; preds = %13
  %21 = load i64, i64* %__n, align 8
  %22 = add nsw i64 %21, -1
  store i64 %22, i64* %__n, align 8
  br label %10

; <label>:23                                      ; preds = %10
  %24 = load %class.CClause*, %class.CClause** %3, align 8
  ret %class.CClause* %24
}

; Function Attrs: nounwind uwtable
define linkonce_odr %class.CClause* @_ZNSt10_Iter_baseIP7CClauseLb0EE7_S_baseES1_(%class.CClause* %__it) #5 comdat align 2 {
  %1 = alloca %class.CClause*, align 8
  store %class.CClause* %__it, %class.CClause** %1, align 8
  %2 = load %class.CClause*, %class.CClause** %1, align 8
  ret %class.CClause* %2
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZSt8__fill_aIP7CClauseS0_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_S7_RKS4_(%class.CClause* %__first, %class.CClause* %__last, %class.CClause* dereferenceable(16) %__value) #11 comdat {
  %1 = alloca %class.CClause*, align 8
  %2 = alloca %class.CClause*, align 8
  %3 = alloca %class.CClause*, align 8
  store %class.CClause* %__first, %class.CClause** %1, align 8
  store %class.CClause* %__last, %class.CClause** %2, align 8
  store %class.CClause* %__value, %class.CClause** %3, align 8
  br label %4

; <label>:4                                       ; preds = %13, %0
  %5 = load %class.CClause*, %class.CClause** %1, align 8
  %6 = load %class.CClause*, %class.CClause** %2, align 8
  %7 = icmp ne %class.CClause* %5, %6
  br i1 %7, label %8, label %16

; <label>:8                                       ; preds = %4
  %9 = load %class.CClause*, %class.CClause** %1, align 8
  %10 = load %class.CClause*, %class.CClause** %3, align 8
  %11 = bitcast %class.CClause* %9 to i8*
  %12 = bitcast %class.CClause* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 13, i32 8, i1 false)
  br label %13

; <label>:13                                      ; preds = %8
  %14 = load %class.CClause*, %class.CClause** %1, align 8
  %15 = getelementptr inbounds %class.CClause, %class.CClause* %14, i32 1
  store %class.CClause* %15, %class.CClause** %1, align 8
  br label %4

; <label>:16                                      ; preds = %4
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %class.CClause* @_ZSt20uninitialized_fill_nIP7CClausemS0_ET_S2_T0_RKT1_(%class.CClause* %__first, i64 %__n, %class.CClause* dereferenceable(16) %__x) #7 comdat {
  %1 = alloca %class.CClause*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %class.CClause*, align 8
  %__assignable = alloca i8, align 1
  store %class.CClause* %__first, %class.CClause** %1, align 8
  store i64 %__n, i64* %2, align 8
  store %class.CClause* %__x, %class.CClause** %3, align 8
  store i8 1, i8* %__assignable, align 1
  %4 = load %class.CClause*, %class.CClause** %1, align 8
  %5 = load i64, i64* %2, align 8
  %6 = load %class.CClause*, %class.CClause** %3, align 8
  %7 = call %class.CClause* @_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIP7CClausemS2_EET_S4_T0_RKT1_(%class.CClause* %4, i64 %5, %class.CClause* dereferenceable(16) %6)
  ret %class.CClause* %7
}

; Function Attrs: uwtable
define linkonce_odr %class.CClause* @_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIP7CClausemS2_EET_S4_T0_RKT1_(%class.CClause* %__first, i64 %__n, %class.CClause* dereferenceable(16) %__x) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %class.CClause*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %class.CClause*, align 8
  %__cur = alloca %class.CClause*, align 8
  %4 = alloca i8*
  %5 = alloca i32
  store %class.CClause* %__first, %class.CClause** %1, align 8
  store i64 %__n, i64* %2, align 8
  store %class.CClause* %__x, %class.CClause** %3, align 8
  %6 = load %class.CClause*, %class.CClause** %1, align 8
  store %class.CClause* %6, %class.CClause** %__cur, align 8
  br label %7

; <label>:7                                       ; preds = %16, %0
  %8 = load i64, i64* %2, align 8
  %9 = icmp ugt i64 %8, 0
  br i1 %9, label %10, label %31

; <label>:10                                      ; preds = %7
  %11 = load %class.CClause*, %class.CClause** %__cur, align 8
  %12 = invoke %class.CClause* @_ZSt11__addressofI7CClauseEPT_RS1_(%class.CClause* dereferenceable(16) %11)
          to label %13 unwind label %21

; <label>:13                                      ; preds = %10
  %14 = load %class.CClause*, %class.CClause** %3, align 8
  invoke void @_ZSt10_ConstructI7CClauseS0_EvPT_RKT0_(%class.CClause* %12, %class.CClause* dereferenceable(16) %14)
          to label %15 unwind label %21

; <label>:15                                      ; preds = %13
  br label %16

; <label>:16                                      ; preds = %15
  %17 = load i64, i64* %2, align 8
  %18 = add i64 %17, -1
  store i64 %18, i64* %2, align 8
  %19 = load %class.CClause*, %class.CClause** %__cur, align 8
  %20 = getelementptr inbounds %class.CClause, %class.CClause* %19, i32 1
  store %class.CClause* %20, %class.CClause** %__cur, align 8
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
  %28 = load %class.CClause*, %class.CClause** %1, align 8
  %29 = load %class.CClause*, %class.CClause** %__cur, align 8
  invoke void @_ZSt8_DestroyIP7CClauseEvT_S2_(%class.CClause* %28, %class.CClause* %29)
          to label %30 unwind label %33

; <label>:30                                      ; preds = %25
  invoke void @__cxa_rethrow() #16
          to label %47 unwind label %33

; <label>:31                                      ; preds = %7
  %32 = load %class.CClause*, %class.CClause** %__cur, align 8
  ret %class.CClause* %32

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
  call void @__clang_call_terminate(i8* %46) #13
  unreachable

; <label>:47                                      ; preds = %30
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr i64 @_ZNKSt6vectorI7CClauseSaIS0_EE8max_sizeEv(%"class.std::vector.5"* %this) #0 comdat align 2 {
  %1 = alloca %"class.std::vector.5"*, align 8
  store %"class.std::vector.5"* %this, %"class.std::vector.5"** %1, align 8
  %2 = load %"class.std::vector.5"*, %"class.std::vector.5"** %1, align 8
  %3 = bitcast %"class.std::vector.5"* %2 to %"struct.std::_Vector_base.6"*
  %4 = call dereferenceable(1) %"class.std::allocator.7"* @_ZNKSt12_Vector_baseI7CClauseSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.6"* %3)
  %5 = call i64 @_ZN9__gnu_cxx14__alloc_traitsISaI7CClauseEE8max_sizeERKS2_(%"class.std::allocator.7"* dereferenceable(1) %4)
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZN9__gnu_cxx14__alloc_traitsISaI7CClauseEE8max_sizeERKS2_(%"class.std::allocator.7"* dereferenceable(1) %__a) #5 comdat align 2 {
  %1 = alloca %"class.std::allocator.7"*, align 8
  store %"class.std::allocator.7"* %__a, %"class.std::allocator.7"** %1, align 8
  %2 = load %"class.std::allocator.7"*, %"class.std::allocator.7"** %1, align 8
  %3 = bitcast %"class.std::allocator.7"* %2 to %"class.__gnu_cxx::new_allocator.8"*
  %4 = call i64 @_ZNK9__gnu_cxx13new_allocatorI7CClauseE8max_sizeEv(%"class.__gnu_cxx::new_allocator.8"* %3) #2
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(1) %"class.std::allocator.7"* @_ZNKSt12_Vector_baseI7CClauseSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.6"* %this) #5 comdat align 2 {
  %1 = alloca %"struct.std::_Vector_base.6"*, align 8
  store %"struct.std::_Vector_base.6"* %this, %"struct.std::_Vector_base.6"** %1, align 8
  %2 = load %"struct.std::_Vector_base.6"*, %"struct.std::_Vector_base.6"** %1, align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %2, i32 0, i32 0
  %4 = bitcast %"struct.std::_Vector_base<CClause, std::allocator<CClause> >::_Vector_impl"* %3 to %"class.std::allocator.7"*
  ret %"class.std::allocator.7"* %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorI7CClauseE8max_sizeEv(%"class.__gnu_cxx::new_allocator.8"* %this) #5 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.8"*, align 8
  store %"class.__gnu_cxx::new_allocator.8"* %this, %"class.__gnu_cxx::new_allocator.8"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.8"*, %"class.__gnu_cxx::new_allocator.8"** %1, align 8
  ret i64 1152921504606846975
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx17__normal_iteratorIP7CClauseSt6vectorIS1_SaIS1_EEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator.17"* %this, %class.CClause** dereferenceable(8) %__i) unnamed_addr #5 comdat align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.17"*, align 8
  %2 = alloca %class.CClause**, align 8
  store %"class.__gnu_cxx::__normal_iterator.17"* %this, %"class.__gnu_cxx::__normal_iterator.17"** %1, align 8
  store %class.CClause** %__i, %class.CClause*** %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator.17"*, %"class.__gnu_cxx::__normal_iterator.17"** %1, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.17", %"class.__gnu_cxx::__normal_iterator.17"* %3, i32 0, i32 0
  %5 = load %class.CClause**, %class.CClause*** %2, align 8
  %6 = load %class.CClause*, %class.CClause** %5, align 8
  store %class.CClause* %6, %class.CClause** %4, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr %class.CClause* @_ZN9__gnu_cxx14__alloc_traitsISaI7CClauseEE8allocateERS2_m(%"class.std::allocator.7"* dereferenceable(1) %__a, i64 %__n) #0 comdat align 2 {
  %1 = alloca %"class.std::allocator.7"*, align 8
  %2 = alloca i64, align 8
  store %"class.std::allocator.7"* %__a, %"class.std::allocator.7"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %3 = load %"class.std::allocator.7"*, %"class.std::allocator.7"** %1, align 8
  %4 = bitcast %"class.std::allocator.7"* %3 to %"class.__gnu_cxx::new_allocator.8"*
  %5 = load i64, i64* %2, align 8
  %6 = call %class.CClause* @_ZN9__gnu_cxx13new_allocatorI7CClauseE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.8"* %4, i64 %5, i8* null)
  ret %class.CClause* %6
}

; Function Attrs: uwtable
define linkonce_odr %class.CClause* @_ZN9__gnu_cxx13new_allocatorI7CClauseE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.8"* %this, i64 %__n, i8*) #0 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.8"*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator.8"* %this, %"class.__gnu_cxx::new_allocator.8"** %2, align 8
  store i64 %__n, i64* %3, align 8
  store i8* %0, i8** %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.8"*, %"class.__gnu_cxx::new_allocator.8"** %2, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @_ZNK9__gnu_cxx13new_allocatorI7CClauseE8max_sizeEv(%"class.__gnu_cxx::new_allocator.8"* %5) #2
  %8 = icmp ugt i64 %6, %7
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %1
  call void @_ZSt17__throw_bad_allocv() #16
  unreachable

; <label>:10                                      ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = mul i64 %11, 16
  %13 = call noalias i8* @_Znwm(i64 %12)
  %14 = bitcast i8* %13 to %class.CClause*
  ret %class.CClause* %14
}

; Function Attrs: uwtable
define linkonce_odr dereferenceable(4) i32* @_ZNSt5dequeIiSaIiEE5frontEv(%"class.std::deque"* %this) #0 comdat align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  %2 = alloca %"struct.std::_Deque_iterator", align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  %3 = load %"class.std::deque"*, %"class.std::deque"** %1, align 8
  call void @_ZNSt5dequeIiSaIiEE5beginEv(%"struct.std::_Deque_iterator"* sret %2, %"class.std::deque"* %3)
  %4 = call dereferenceable(4) i32* @_ZNKSt15_Deque_iteratorIiRiPiEdeEv(%"struct.std::_Deque_iterator"* %2)
  ret i32* %4
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt5dequeIiSaIiEE9pop_frontEv(%"class.std::deque"* %this) #0 comdat align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  %2 = load %"class.std::deque"*, %"class.std::deque"** %1, align 8
  %3 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %4 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %4, i32 0, i32 2
  %6 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %9 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %8, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %9, i32 0, i32 2
  %11 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 -1
  %14 = icmp ne i32* %7, %13
  br i1 %14, label %15, label %30

; <label>:15                                      ; preds = %0
  %16 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %17 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %16, i32 0, i32 0
  %18 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %17 to %"class.std::allocator.10"*
  %19 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %20 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %19, i32 0, i32 0
  %21 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %20, i32 0, i32 2
  %22 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIiEE7destroyERS1_Pi(%"class.std::allocator.10"* dereferenceable(1) %18, i32* %23)
  %24 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %25 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %24, i32 0, i32 0
  %26 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %25, i32 0, i32 2
  %27 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %29, i32** %27, align 8
  br label %31

; <label>:30                                      ; preds = %0
  call void @_ZNSt5dequeIiSaIiEE16_M_pop_front_auxEv(%"class.std::deque"* %2)
  br label %31

; <label>:31                                      ; preds = %30, %15
  ret void
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
define linkonce_odr void @_ZNSt5dequeIiSaIiEE16_M_pop_front_auxEv(%"class.std::deque"* %this) #0 comdat align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  %2 = load %"class.std::deque"*, %"class.std::deque"** %1, align 8
  %3 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %4 = call dereferenceable(1) %"class.std::allocator.10"* @_ZNSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %3)
  %5 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %6 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %6, i32 0, i32 2
  %8 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIiEE7destroyERS1_Pi(%"class.std::allocator.10"* dereferenceable(1) %4, i32* %9)
  %10 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %11 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %12 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %11, i32 0, i32 0
  %13 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %12, i32 0, i32 2
  %14 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  call void @_ZNSt11_Deque_baseIiSaIiEE18_M_deallocate_nodeEPi(%"class.std::_Deque_base"* %10, i32* %15)
  %16 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %17 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %16, i32 0, i32 0
  %18 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %17, i32 0, i32 2
  %19 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %20 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %19, i32 0, i32 0
  %21 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %20, i32 0, i32 2
  %22 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %21, i32 0, i32 3
  %23 = load i32**, i32*** %22, align 8
  %24 = getelementptr inbounds i32*, i32** %23, i64 1
  call void @_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_(%"struct.std::_Deque_iterator"* %18, i32** %24)
  %25 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %26 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %25, i32 0, i32 0
  %27 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %26, i32 0, i32 2
  %28 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %31 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %30, i32 0, i32 0
  %32 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %31, i32 0, i32 2
  %33 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %32, i32 0, i32 0
  store i32* %29, i32** %33, align 8
  ret void
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
define internal void @_GLOBAL__sub_I_asap_dbase.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { noinline noreturn nounwind }
attributes #4 = { nobuiltin "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { inlinehint uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { argmemonly nounwind }
attributes #9 = { nounwind readnone }
attributes #10 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { noreturn nounwind }
attributes #14 = { builtin }
attributes #15 = { builtin nounwind }
attributes #16 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0-2ubuntu4 (tags/RELEASE_380/final)"}
