; ModuleID = '/home/hector/Documents/GitHub/d7020e_klee/cargo_klee_examples/target/release/examples/array-ed2083d00b65a926.ll'
source_filename = "array.055010fa-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"cstr_core::CStr" = type { [0 x i8] }
%"panic::panic_info::PanicInfo" = type { { {}*, [3 x i64]* }, i64*, %"core::panic::location::Location"* }
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }

@alloc9 = private unnamed_addr constant <{ [2 x i8] }> <{ [2 x i8] c"i\00" }>, align 1

; Function Attrs: nounwind nonlazybind
define dso_local void @main() unnamed_addr #0 personality i32 (...)* @rust_eh_personality !dbg !7 {
start:
  %i = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !13, metadata !DIExpression()), !dbg !24
  %0 = bitcast i64* %i to i8*, !dbg !25
  call void @llvm.dbg.value(metadata i64 0, metadata !19, metadata !DIExpression()), !dbg !26
  store i64 0, i64* %i, align 8, !dbg !27
  call void @llvm.dbg.value(metadata i64* %i, metadata !19, metadata !DIExpression(DW_OP_deref)), !dbg !26
  call void @llvm.dbg.value(metadata i64* %i, metadata !28, metadata !DIExpression()) #7, !dbg !50
  call void @llvm.dbg.value(metadata %"cstr_core::CStr"* undef, metadata !47, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #7, !dbg !50
  call void @llvm.dbg.value(metadata i64 2, metadata !47, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #7, !dbg !50
  call void @klee_make_symbolic(i8* nonnull %0, i64 8, i8* getelementptr inbounds (<{ [2 x i8] }>, <{ [2 x i8] }>* @alloc9, i64 0, i32 0, i64 0)) #7, !dbg !52
  %_17 = load i64, i64* %i, align 8, !dbg !53
  call void @llvm.dbg.value(metadata i64 %_17, metadata !19, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.value(metadata [0 x i8]* undef, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #7, !dbg !84
  call void @llvm.dbg.value(metadata i64 8, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #7, !dbg !84
  call void @llvm.dbg.value(metadata i64 %_17, metadata !64, metadata !DIExpression()) #7, !dbg !84
  call void @llvm.dbg.value(metadata i8 0, metadata !65, metadata !DIExpression()) #7, !dbg !86
  call void @llvm.dbg.value(metadata i64 0, metadata !67, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #7, !dbg !87
  call void @llvm.dbg.value(metadata i64 %_17, metadata !67, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #7, !dbg !87
  %.not.i = icmp ult i64 %_17, 9, !dbg !88
  call void @llvm.dbg.value(metadata i64 undef, metadata !67, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #7, !dbg !87
  call void @llvm.dbg.value(metadata i8 poison, metadata !65, metadata !DIExpression()) #7, !dbg !86
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !89, metadata !DIExpression()) #7, !dbg !114
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !116, metadata !DIExpression()) #7, !dbg !122
  call void @llvm.dbg.value(metadata i64 undef, metadata !67, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64)) #7, !dbg !87
  call void @llvm.dbg.value(metadata i64 undef, metadata !67, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64)) #7, !dbg !87
  br i1 %.not.i, label %_ZN5array18sum_first_elements17hf095abb553343020E.exit, label %panic.i, !dbg !124

panic.i:                                          ; preds = %start
  call void @llvm.dbg.value(metadata i64 undef, metadata !78, metadata !DIExpression()) #7, !dbg !125
  call void @llvm.dbg.value(metadata i64 undef, metadata !82, metadata !DIExpression()) #7, !dbg !126
  call fastcc void @_ZN4core9panicking18panic_bounds_check17h0ffbb3014c878e8aE() #8, !dbg !127
  unreachable, !dbg !127

_ZN5array18sum_first_elements17hf095abb553343020E.exit: ; preds = %start
  ret void, !dbg !128
}

; Function Attrs: nounwind nonlazybind
declare i32 @rust_eh_personality(...) unnamed_addr #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind nonlazybind
declare void @klee_make_symbolic(i8*, i64, i8*) unnamed_addr #0

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
define internal fastcc void @_ZN4core9panicking18panic_bounds_check17h0ffbb3014c878e8aE() unnamed_addr #4 !dbg !129 {
  tail call fastcc void @_ZN4core9panicking9panic_fmt17h23b9203e89cc61cfE() #9, !dbg !133
  unreachable, !dbg !133
}

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
define internal fastcc void @_ZN4core9panicking9panic_fmt17h23b9203e89cc61cfE() unnamed_addr #4 !dbg !134 {
  tail call fastcc void @rust_begin_unwind() #9, !dbg !135
  unreachable, !dbg !135
}

; Function Attrs: noinline noreturn nounwind nonlazybind
define internal fastcc void @rust_begin_unwind() unnamed_addr #5 !dbg !136 {
  call void @llvm.dbg.value(metadata %"panic::panic_info::PanicInfo"* undef, metadata !289, metadata !DIExpression()), !dbg !290
  tail call void @abort() #8, !dbg !291
  unreachable, !dbg !291
}

; Function Attrs: alwaysinline noreturn nounwind nonlazybind
declare void @abort() unnamed_addr #6

attributes #0 = { nounwind nonlazybind "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #1 = { nounwind nonlazybind "target-cpu"="x86-64" }
attributes #2 = { argmemonly nofree nosync nounwind willreturn }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #5 = { noinline noreturn nounwind nonlazybind "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #6 = { alwaysinline noreturn nounwind nonlazybind "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.dbg.cu = !{!4}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !5, producer: "clang LLVM (rustc version 1.57.0 (f1edd0429 2021-11-29))", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !6)
!5 = !DIFile(filename: "examples/array.rs", directory: "/home/hector/Documents/GitHub/d7020e_klee/cargo_klee_examples")
!6 = !{}
!7 = distinct !DISubprogram(name: "main", scope: !9, file: !8, line: 20, type: !10, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !6, retainedNodes: !12)
!8 = !DIFile(filename: "examples/array.rs", directory: "/home/hector/Documents/GitHub/d7020e_klee/cargo_klee_examples", checksumkind: CSK_MD5, checksum: "bab6c462ba0d5f3f5a191977e9b8e715")
!9 = !DINamespace(name: "array", scope: null)
!10 = !DISubroutineType(types: !11)
!11 = !{null}
!12 = !{!13, !19, !22}
!13 = !DILocalVariable(name: "arr", scope: !14, file: !8, line: 21, type: !15, align: 1)
!14 = distinct !DILexicalBlock(scope: !7, file: !8, line: 21, column: 5)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 64, align: 8, elements: !17)
!16 = !DIBasicType(name: "u8", size: 8, encoding: DW_ATE_unsigned)
!17 = !{!18}
!18 = !DISubrange(count: 8, lowerBound: 0)
!19 = !DILocalVariable(name: "i", scope: !20, file: !8, line: 22, type: !21, align: 8)
!20 = distinct !DILexicalBlock(scope: !14, file: !8, line: 22, column: 5)
!21 = !DIBasicType(name: "usize", size: 64, encoding: DW_ATE_unsigned)
!22 = !DILocalVariable(name: "b", scope: !23, file: !8, line: 24, type: !16, align: 1)
!23 = distinct !DILexicalBlock(scope: !20, file: !8, line: 24, column: 5)
!24 = !DILocation(line: 0, scope: !14)
!25 = !DILocation(line: 22, column: 9, scope: !14)
!26 = !DILocation(line: 0, scope: !20)
!27 = !DILocation(line: 22, column: 24, scope: !14)
!28 = !DILocalVariable(name: "t", arg: 1, scope: !29, file: !30, line: 17, type: !35)
!29 = distinct !DISubprogram(name: "klee_make_symbolic<usize>", linkageName: "_ZN8klee_sys17lib_klee_analysis18klee_make_symbolic17h033537c1d9077de8E", scope: !31, file: !30, line: 17, type: !33, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !48, retainedNodes: !46)
!30 = !DIFile(filename: "/home/hector/.cargo/git/checkouts/klee-sys-7ee2aa8a1a6bbc46/9f462cc/src/lib_klee_analysis.rs", directory: "", checksumkind: CSK_MD5, checksum: "e3bdc37403934781364daca8b62851bf")
!31 = !DINamespace(name: "lib_klee_analysis", scope: !32)
!32 = !DINamespace(name: "klee_sys", scope: null)
!33 = !DISubroutineType(types: !34)
!34 = !{null, !35, !36}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut usize", baseType: !21, size: 64, align: 64, dwarfAddressSpace: 0)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&CStr", baseType: !37, size: 128, align: 64, dwarfAddressSpace: 0)
!37 = !DICompositeType(tag: DW_TAG_structure_type, name: "CStr", scope: !39, file: !38, align: 8, elements: !40, templateParams: !6, identifier: "efed7fa612e3dcf357bcd9aa89e4e2c6")
!38 = !DIFile(filename: "<unknown>", directory: "")
!39 = !DINamespace(name: "cstr_core", scope: null)
!40 = !{!41}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !37, file: !38, baseType: !42, align: 8)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, align: 8, elements: !44)
!43 = !DIBasicType(name: "i8", size: 8, encoding: DW_ATE_signed)
!44 = !{!45}
!45 = !DISubrange(count: -1, lowerBound: 0)
!46 = !{!28, !47}
!47 = !DILocalVariable(name: "name", arg: 2, scope: !29, file: !30, line: 17, type: !36)
!48 = !{!49}
!49 = !DITemplateTypeParameter(name: "T", type: !21)
!50 = !DILocation(line: 0, scope: !29, inlinedAt: !51)
!51 = distinct !DILocation(line: 23, column: 5, scope: !20)
!52 = !DILocation(line: 19, column: 9, scope: !29, inlinedAt: !51)
!53 = !DILocation(line: 24, column: 38, scope: !20)
!54 = !DILocalVariable(name: "arr", arg: 1, scope: !55, file: !8, line: 11, type: !58)
!55 = distinct !DISubprogram(name: "sum_first_elements", linkageName: "_ZN5array18sum_first_elements17hf095abb553343020E", scope: !9, file: !8, line: 11, type: !56, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !6, retainedNodes: !63)
!56 = !DISubroutineType(types: !57)
!57 = !{!16, !58, !21}
!58 = !DICompositeType(tag: DW_TAG_structure_type, name: "&[u8]", file: !38, size: 128, align: 64, elements: !59, templateParams: !6, identifier: "585202bcfc7dfd1dd72e8befe2491ee4")
!59 = !{!60, !62}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !58, file: !38, baseType: !61, size: 64, align: 64)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const u8", baseType: !16, size: 64, align: 64, dwarfAddressSpace: 0)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !58, file: !38, baseType: !21, size: 64, align: 64, offset: 64)
!63 = !{!54, !64, !65, !67, !78, !80, !82}
!64 = !DILocalVariable(name: "index", arg: 2, scope: !55, file: !8, line: 11, type: !21)
!65 = !DILocalVariable(name: "acc", scope: !66, file: !8, line: 12, type: !16, align: 1)
!66 = distinct !DILexicalBlock(scope: !55, file: !8, line: 12, column: 5)
!67 = !DILocalVariable(name: "iter", scope: !68, file: !8, line: 13, type: !69, align: 8)
!68 = distinct !DILexicalBlock(scope: !66, file: !8, line: 13, column: 5)
!69 = !DICompositeType(tag: DW_TAG_structure_type, name: "Range<usize>", scope: !70, file: !38, size: 128, align: 64, elements: !73, templateParams: !76, identifier: "9c6e1e1d4baceee998995a9b408502e1")
!70 = !DINamespace(name: "range", scope: !71)
!71 = !DINamespace(name: "ops", scope: !72)
!72 = !DINamespace(name: "core", scope: null)
!73 = !{!74, !75}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !69, file: !38, baseType: !21, size: 64, align: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !69, file: !38, baseType: !21, size: 64, align: 64, offset: 64)
!76 = !{!77}
!77 = !DITemplateTypeParameter(name: "Idx", type: !21)
!78 = !DILocalVariable(name: "__next", scope: !79, file: !8, line: 13, type: !21, align: 8)
!79 = distinct !DILexicalBlock(scope: !68, file: !8, line: 13, column: 14)
!80 = !DILocalVariable(name: "val", scope: !81, file: !8, line: 13, type: !21, align: 8)
!81 = distinct !DILexicalBlock(scope: !79, file: !8, line: 13, column: 9)
!82 = !DILocalVariable(name: "i", scope: !83, file: !8, line: 13, type: !21, align: 8)
!83 = distinct !DILexicalBlock(scope: !79, file: !8, line: 13, column: 14)
!84 = !DILocation(line: 0, scope: !55, inlinedAt: !85)
!85 = distinct !DILocation(line: 24, column: 13, scope: !20)
!86 = !DILocation(line: 0, scope: !66, inlinedAt: !85)
!87 = !DILocation(line: 0, scope: !68, inlinedAt: !85)
!88 = !DILocation(line: 13, column: 5, scope: !68, inlinedAt: !85)
!89 = !DILocalVariable(name: "self", arg: 1, scope: !90, file: !91, line: 710, type: !110)
!90 = distinct !DISubprogram(name: "next<usize>", linkageName: "_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hf4b1ee5dc97d03e0E", scope: !92, file: !91, line: 710, type: !95, scopeLine: 710, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !112, retainedNodes: !111)
!91 = !DIFile(filename: "/rustc/f1edd0429582dd29cccacaf50fd134b05593bd9c/library/core/src/iter/range.rs", directory: "", checksumkind: CSK_MD5, checksum: "45fcb37f1eabc668842daa3fc437ff9a")
!92 = !DINamespace(name: "{impl#3}", scope: !93)
!93 = !DINamespace(name: "range", scope: !94)
!94 = !DINamespace(name: "iter", scope: !72)
!95 = !DISubroutineType(types: !96)
!96 = !{!97, !110}
!97 = !DICompositeType(tag: DW_TAG_structure_type, name: "Option<usize>", scope: !98, file: !38, size: 128, align: 64, elements: !99, identifier: "4b805254fa2ee3ca2df3072d2fabafc2")
!98 = !DINamespace(name: "option", scope: !72)
!99 = !{!100}
!100 = !DICompositeType(tag: DW_TAG_variant_part, scope: !98, file: !38, size: 128, align: 64, elements: !101, templateParams: !48, identifier: "4b805254fa2ee3ca2df3072d2fabafc2_variant_part", discriminator: !108)
!101 = !{!102, !104}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !100, file: !38, baseType: !103, size: 128, align: 64, extraData: i64 0)
!103 = !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !97, file: !38, size: 128, align: 64, elements: !6, templateParams: !48, identifier: "4b805254fa2ee3ca2df3072d2fabafc2::None")
!104 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !100, file: !38, baseType: !105, size: 128, align: 64, extraData: i64 1)
!105 = !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !97, file: !38, size: 128, align: 64, elements: !106, templateParams: !48, identifier: "4b805254fa2ee3ca2df3072d2fabafc2::Some")
!106 = !{!107}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !105, file: !38, baseType: !21, size: 64, align: 64, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, scope: !98, file: !38, baseType: !109, size: 64, align: 64, flags: DIFlagArtificial)
!109 = !DIBasicType(name: "u64", size: 64, encoding: DW_ATE_unsigned)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut Range<usize>", baseType: !69, size: 64, align: 64, dwarfAddressSpace: 0)
!111 = !{!89}
!112 = !{!113}
!113 = !DITemplateTypeParameter(name: "A", type: !21)
!114 = !DILocation(line: 0, scope: !90, inlinedAt: !115)
!115 = distinct !DILocation(line: 13, column: 14, scope: !79, inlinedAt: !85)
!116 = !DILocalVariable(name: "self", arg: 1, scope: !117, file: !91, line: 620, type: !110)
!117 = distinct !DISubprogram(name: "spec_next<usize>", linkageName: "_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17hb0162f04548695deE", scope: !118, file: !91, line: 620, type: !95, scopeLine: 620, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !48, retainedNodes: !119)
!118 = !DINamespace(name: "{impl#2}", scope: !93)
!119 = !{!116, !120}
!120 = !DILocalVariable(name: "n", scope: !121, file: !91, line: 623, type: !21, align: 8)
!121 = distinct !DILexicalBlock(scope: !117, file: !91, line: 623, column: 13)
!122 = !DILocation(line: 0, scope: !117, inlinedAt: !123)
!123 = distinct !DILocation(line: 711, column: 9, scope: !90, inlinedAt: !115)
!124 = !DILocation(line: 621, column: 12, scope: !117, inlinedAt: !123)
!125 = !DILocation(line: 0, scope: !79, inlinedAt: !85)
!126 = !DILocation(line: 0, scope: !83, inlinedAt: !85)
!127 = !DILocation(line: 14, column: 16, scope: !83, inlinedAt: !85)
!128 = !DILocation(line: 25, column: 2, scope: !7)
!129 = distinct !DISubprogram(name: "panic_bounds_check", linkageName: "_ZN4core9panicking18panic_bounds_check17h0ffbb3014c878e8aE", scope: !131, file: !130, line: 71, type: !132, scopeLine: 71, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !6, retainedNodes: !6)
!130 = !DIFile(filename: "library/core/src/panicking.rs", directory: "/rustc/f1edd0429582dd29cccacaf50fd134b05593bd9c/", checksumkind: CSK_MD5, checksum: "012fc29aa66aa33bb20c29d4369945ab")
!131 = !DINamespace(name: "panicking", scope: !72)
!132 = !DISubroutineType(types: !6)
!133 = !DILocation(line: 76, column: 5, scope: !129)
!134 = distinct !DISubprogram(name: "panic_fmt", linkageName: "_ZN4core9panicking9panic_fmt17h23b9203e89cc61cfE", scope: !131, file: !130, line: 85, type: !132, scopeLine: 85, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !6, retainedNodes: !6)
!135 = !DILocation(line: 100, column: 14, scope: !134)
!136 = distinct !DISubprogram(name: "panic", linkageName: "rust_begin_unwind", scope: !138, file: !137, line: 6, type: !139, scopeLine: 6, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !6, retainedNodes: !288)
!137 = !DIFile(filename: "/home/hector/.cargo/git/checkouts/panic-klee-aa8d015442188497/3b0c897/src/lib.rs", directory: "/home/hector/.cargo/git/checkouts/panic-klee-aa8d015442188497/3b0c897", checksumkind: CSK_MD5, checksum: "679d388356417fae6fea835aa77aa0fa")
!138 = !DINamespace(name: "panic_klee", scope: null)
!139 = !DISubroutineType(types: !140)
!140 = !{null, !141}
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&PanicInfo", baseType: !142, size: 64, align: 64, dwarfAddressSpace: 0)
!142 = !DICompositeType(tag: DW_TAG_structure_type, name: "PanicInfo", scope: !143, file: !38, size: 256, align: 64, elements: !145, templateParams: !6, identifier: "c09fb7269f5ce7d5410a687c5d5d2061")
!143 = !DINamespace(name: "panic_info", scope: !144)
!144 = !DINamespace(name: "panic", scope: !72)
!145 = !{!146, !156, !280}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !142, file: !38, baseType: !147, size: 128, align: 64)
!147 = !DICompositeType(tag: DW_TAG_structure_type, name: "&(dyn core::any::Any + core::marker::Send)", file: !38, size: 128, align: 64, elements: !148, templateParams: !6, identifier: "d33fc2a42b203df9f4fb9742c138ca9")
!148 = !{!149, !151}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !147, file: !38, baseType: !150, size: 64, align: 64, flags: DIFlagArtificial)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut u8", baseType: !16, size: 64, align: 64, dwarfAddressSpace: 0)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !147, file: !38, baseType: !152, size: 64, align: 64, offset: 64, flags: DIFlagArtificial)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&[usize; 3]", baseType: !153, size: 64, align: 64, dwarfAddressSpace: 0)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 192, align: 64, elements: !154)
!154 = !{!155}
!155 = !DISubrange(count: 3, lowerBound: 0)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !142, file: !38, baseType: !157, size: 64, align: 64, offset: 128)
!157 = !DICompositeType(tag: DW_TAG_structure_type, name: "Option<&core::fmt::Arguments>", scope: !98, file: !38, size: 64, align: 64, elements: !158, identifier: "9b30aab488bd9c938bd16bb4d3581ebc")
!158 = !{!159}
!159 = !DICompositeType(tag: DW_TAG_variant_part, scope: !98, file: !38, size: 64, align: 64, elements: !160, templateParams: !163, identifier: "9b30aab488bd9c938bd16bb4d3581ebc_variant_part", discriminator: !108)
!160 = !{!161, !276}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !159, file: !38, baseType: !162, size: 64, align: 64, extraData: i64 0)
!162 = !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !157, file: !38, size: 64, align: 64, elements: !6, templateParams: !163, identifier: "9b30aab488bd9c938bd16bb4d3581ebc::None")
!163 = !{!164}
!164 = !DITemplateTypeParameter(name: "T", type: !165)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&Arguments", baseType: !166, size: 64, align: 64, dwarfAddressSpace: 0)
!166 = !DICompositeType(tag: DW_TAG_structure_type, name: "Arguments", scope: !167, file: !38, size: 384, align: 64, elements: !168, templateParams: !6, identifier: "a360e155a516935c2edb707fb484e50b")
!167 = !DINamespace(name: "fmt", scope: !72)
!168 = !{!169, !179, !233}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "pieces", scope: !166, file: !38, baseType: !170, size: 128, align: 64)
!170 = !DICompositeType(tag: DW_TAG_structure_type, name: "&[&str]", file: !38, size: 128, align: 64, elements: !171, templateParams: !6, identifier: "e5181a2ba73cefd2b9372dc5646453a9")
!171 = !{!172, !178}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !170, file: !38, baseType: !173, size: 64, align: 64)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const &str", baseType: !174, size: 64, align: 64, dwarfAddressSpace: 0)
!174 = !DICompositeType(tag: DW_TAG_structure_type, name: "&str", file: !38, size: 128, align: 64, elements: !175, templateParams: !6, identifier: "7ef2a91eecc7bcf4b4aaea2dbce79437")
!175 = !{!176, !177}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !174, file: !38, baseType: !61, size: 64, align: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !174, file: !38, baseType: !21, size: 64, align: 64, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !170, file: !38, baseType: !21, size: 64, align: 64, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !166, file: !38, baseType: !180, size: 128, align: 64, offset: 128)
!180 = !DICompositeType(tag: DW_TAG_structure_type, name: "Option<&[core::fmt::rt::v1::Argument]>", scope: !98, file: !38, size: 128, align: 64, elements: !181, identifier: "5f76414d3968d7081799a90ac22875bd")
!181 = !{!182}
!182 = !DICompositeType(tag: DW_TAG_variant_part, scope: !98, file: !38, size: 128, align: 64, elements: !183, templateParams: !186, identifier: "5f76414d3968d7081799a90ac22875bd_variant_part", discriminator: !108)
!183 = !{!184, !229}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !182, file: !38, baseType: !185, size: 128, align: 64, extraData: i64 0)
!185 = !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !180, file: !38, size: 128, align: 64, elements: !6, templateParams: !186, identifier: "5f76414d3968d7081799a90ac22875bd::None")
!186 = !{!187}
!187 = !DITemplateTypeParameter(name: "T", type: !188)
!188 = !DICompositeType(tag: DW_TAG_structure_type, name: "&[core::fmt::rt::v1::Argument]", file: !38, size: 128, align: 64, elements: !189, templateParams: !6, identifier: "add0e6342cb63c6fd291c94d3505b91c")
!189 = !{!190, !228}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !188, file: !38, baseType: !191, size: 64, align: 64)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const Argument", baseType: !192, size: 64, align: 64, dwarfAddressSpace: 0)
!192 = !DICompositeType(tag: DW_TAG_structure_type, name: "Argument", scope: !193, file: !38, size: 448, align: 64, elements: !195, templateParams: !6, identifier: "763ee80a35beebf8b514d3c418f0e312")
!193 = !DINamespace(name: "v1", scope: !194)
!194 = !DINamespace(name: "rt", scope: !167)
!195 = !{!196, !197}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "position", scope: !192, file: !38, baseType: !21, size: 64, align: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !192, file: !38, baseType: !198, size: 384, align: 64, offset: 64)
!198 = !DICompositeType(tag: DW_TAG_structure_type, name: "FormatSpec", scope: !193, file: !38, size: 384, align: 64, elements: !199, templateParams: !6, identifier: "bc399e583737a2b0aabdd4d017584f65")
!199 = !{!200, !202, !209, !211, !227}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !198, file: !38, baseType: !201, size: 32, align: 32, offset: 256)
!201 = !DIBasicType(name: "char", size: 32, encoding: DW_ATE_unsigned_char)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !198, file: !38, baseType: !203, size: 8, align: 8, offset: 320)
!203 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Alignment", scope: !193, file: !38, baseType: !16, size: 8, align: 8, flags: DIFlagEnumClass, elements: !204)
!204 = !{!205, !206, !207, !208}
!205 = !DIEnumerator(name: "Left", value: 0)
!206 = !DIEnumerator(name: "Right", value: 1)
!207 = !DIEnumerator(name: "Center", value: 2)
!208 = !DIEnumerator(name: "Unknown", value: 3)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !198, file: !38, baseType: !210, size: 32, align: 32, offset: 288)
!210 = !DIBasicType(name: "u32", size: 32, encoding: DW_ATE_unsigned)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !198, file: !38, baseType: !212, size: 128, align: 64)
!212 = !DICompositeType(tag: DW_TAG_structure_type, name: "Count", scope: !193, file: !38, size: 128, align: 64, elements: !213, identifier: "38eba57020d20ab810366aace8807a13")
!213 = !{!214}
!214 = !DICompositeType(tag: DW_TAG_variant_part, scope: !193, file: !38, size: 128, align: 64, elements: !215, templateParams: !6, identifier: "38eba57020d20ab810366aace8807a13_variant_part", discriminator: !226)
!215 = !{!216, !220, !224}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "Is", scope: !214, file: !38, baseType: !217, size: 128, align: 64, extraData: i64 0)
!217 = !DICompositeType(tag: DW_TAG_structure_type, name: "Is", scope: !212, file: !38, size: 128, align: 64, elements: !218, templateParams: !6, identifier: "38eba57020d20ab810366aace8807a13::Is")
!218 = !{!219}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !217, file: !38, baseType: !21, size: 64, align: 64, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "Param", scope: !214, file: !38, baseType: !221, size: 128, align: 64, extraData: i64 1)
!221 = !DICompositeType(tag: DW_TAG_structure_type, name: "Param", scope: !212, file: !38, size: 128, align: 64, elements: !222, templateParams: !6, identifier: "38eba57020d20ab810366aace8807a13::Param")
!222 = !{!223}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !221, file: !38, baseType: !21, size: 64, align: 64, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "Implied", scope: !214, file: !38, baseType: !225, size: 128, align: 64, extraData: i64 2)
!225 = !DICompositeType(tag: DW_TAG_structure_type, name: "Implied", scope: !212, file: !38, size: 128, align: 64, elements: !6, templateParams: !6, identifier: "38eba57020d20ab810366aace8807a13::Implied")
!226 = !DIDerivedType(tag: DW_TAG_member, scope: !193, file: !38, baseType: !109, size: 64, align: 64, flags: DIFlagArtificial)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !198, file: !38, baseType: !212, size: 128, align: 64, offset: 128)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !188, file: !38, baseType: !21, size: 64, align: 64, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !182, file: !38, baseType: !230, size: 128, align: 64)
!230 = !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !180, file: !38, size: 128, align: 64, elements: !231, templateParams: !186, identifier: "5f76414d3968d7081799a90ac22875bd::Some")
!231 = !{!232}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !230, file: !38, baseType: !188, size: 128, align: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !166, file: !38, baseType: !234, size: 128, align: 64, offset: 256)
!234 = !DICompositeType(tag: DW_TAG_structure_type, name: "&[core::fmt::ArgumentV1]", file: !38, size: 128, align: 64, elements: !235, templateParams: !6, identifier: "ad7c8b03f48c0dcf73f319360577f3d5")
!235 = !{!236, !275}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !234, file: !38, baseType: !237, size: 64, align: 64)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const ArgumentV1", baseType: !238, size: 64, align: 64, dwarfAddressSpace: 0)
!238 = !DICompositeType(tag: DW_TAG_structure_type, name: "ArgumentV1", scope: !167, file: !38, size: 128, align: 64, elements: !239, templateParams: !6, identifier: "c7ce43acbe4b6205b3d5abdc2e2d3e77")
!239 = !{!240, !243}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !238, file: !38, baseType: !241, size: 64, align: 64)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&Opaque", baseType: !242, size: 64, align: 64, dwarfAddressSpace: 0)
!242 = !DICompositeType(tag: DW_TAG_structure_type, name: "Opaque", file: !38, align: 8, elements: !6, identifier: "db2cc22363e1d99b3a086e242402e769")
!243 = !DIDerivedType(tag: DW_TAG_member, name: "formatter", scope: !238, file: !38, baseType: !244, size: 64, align: 64, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "fn(&core::fmt::::Opaque, &mut core::fmt::Formatter) -> core::result::Result<(), core::fmt::Error>", baseType: !245, size: 64, align: 64, dwarfAddressSpace: 0)
!245 = !DISubroutineType(types: !246)
!246 = !{!247, !241, !252}
!247 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Result", scope: !248, file: !38, baseType: !16, size: 8, align: 8, flags: DIFlagEnumClass, elements: !249)
!248 = !DINamespace(name: "result", scope: !72)
!249 = !{!250, !251}
!250 = !DIEnumerator(name: "Ok", value: 0)
!251 = !DIEnumerator(name: "Err", value: 1)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut Formatter", baseType: !253, size: 64, align: 64, dwarfAddressSpace: 0)
!253 = !DICompositeType(tag: DW_TAG_structure_type, name: "Formatter", scope: !167, file: !38, size: 512, align: 64, elements: !254, templateParams: !6, identifier: "90d9c21992f1292241ad45c3955c5499")
!254 = !{!255, !256, !257, !258, !269, !270}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !253, file: !38, baseType: !210, size: 32, align: 32, offset: 384)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !253, file: !38, baseType: !201, size: 32, align: 32, offset: 416)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !253, file: !38, baseType: !203, size: 8, align: 8, offset: 448)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !253, file: !38, baseType: !259, size: 128, align: 64)
!259 = !DICompositeType(tag: DW_TAG_structure_type, name: "Option<usize>", scope: !98, file: !38, size: 128, align: 64, elements: !260, identifier: "4b805254fa2ee3ca2df3072d2fabafc2")
!260 = !{!261}
!261 = !DICompositeType(tag: DW_TAG_variant_part, scope: !98, file: !38, size: 128, align: 64, elements: !262, templateParams: !48, identifier: "4b805254fa2ee3ca2df3072d2fabafc2_variant_part", discriminator: !108)
!262 = !{!263, !265}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !261, file: !38, baseType: !264, size: 128, align: 64, extraData: i64 0)
!264 = !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !259, file: !38, size: 128, align: 64, elements: !6, templateParams: !48, identifier: "4b805254fa2ee3ca2df3072d2fabafc2::None")
!265 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !261, file: !38, baseType: !266, size: 128, align: 64, extraData: i64 1)
!266 = !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !259, file: !38, size: 128, align: 64, elements: !267, templateParams: !48, identifier: "4b805254fa2ee3ca2df3072d2fabafc2::Some")
!267 = !{!268}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !266, file: !38, baseType: !21, size: 64, align: 64, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !253, file: !38, baseType: !259, size: 128, align: 64, offset: 128)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !253, file: !38, baseType: !271, size: 128, align: 64, offset: 256)
!271 = !DICompositeType(tag: DW_TAG_structure_type, name: "&mut dyn core::fmt::Write", file: !38, size: 128, align: 64, elements: !272, templateParams: !6, identifier: "9405b243a0f4184842c4793de8cc6f20")
!272 = !{!273, !274}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !271, file: !38, baseType: !150, size: 64, align: 64, flags: DIFlagArtificial)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !271, file: !38, baseType: !152, size: 64, align: 64, offset: 64, flags: DIFlagArtificial)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !234, file: !38, baseType: !21, size: 64, align: 64, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !159, file: !38, baseType: !277, size: 64, align: 64)
!277 = !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !157, file: !38, size: 64, align: 64, elements: !278, templateParams: !163, identifier: "9b30aab488bd9c938bd16bb4d3581ebc::Some")
!278 = !{!279}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !277, file: !38, baseType: !165, size: 64, align: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !142, file: !38, baseType: !281, size: 64, align: 64, offset: 192)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&Location", baseType: !282, size: 64, align: 64, dwarfAddressSpace: 0)
!282 = !DICompositeType(tag: DW_TAG_structure_type, name: "Location", scope: !283, file: !38, size: 192, align: 64, elements: !284, templateParams: !6, identifier: "7f4954b44106529814c546bbbd5f8fe0")
!283 = !DINamespace(name: "location", scope: !144)
!284 = !{!285, !286, !287}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !282, file: !38, baseType: !174, size: 128, align: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !282, file: !38, baseType: !210, size: 32, align: 32, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "col", scope: !282, file: !38, baseType: !210, size: 32, align: 32, offset: 160)
!288 = !{!289}
!289 = !DILocalVariable(name: "_info", arg: 1, scope: !136, file: !137, line: 6, type: !141)
!290 = !DILocation(line: 0, scope: !136)
!291 = !DILocation(line: 8, column: 14, scope: !136)
