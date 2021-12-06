; ModuleID = 'array.055010fa-cgu.0'
source_filename = "array.055010fa-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"cstr_core::CStr" = type { [0 x i8] }

@alloc11 = private unnamed_addr constant <{ [4 x i8] }> <{ [4 x i8] c"arr\00" }>, align 1
@alloc12 = private unnamed_addr constant <{ [2 x i8] }> <{ [2 x i8] c"i\00" }>, align 1

; Function Attrs: nounwind nonlazybind
define dso_local void @main() unnamed_addr #0 personality i32 (...)* @rust_eh_personality !dbg !7 {
start:
  %i = alloca i64, align 8
  %arr = alloca i64, align 8
  %0 = bitcast i64* %arr to i8*, !dbg !24
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0), !dbg !24
  call void @llvm.dbg.value(metadata i64 0, metadata !13, metadata !DIExpression()), !dbg !25
  store i64 0, i64* %arr, align 8, !dbg !26
  %1 = bitcast i64* %i to i8*, !dbg !27
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1), !dbg !27
  call void @llvm.dbg.value(metadata i64 0, metadata !19, metadata !DIExpression()), !dbg !28
  store i64 0, i64* %i, align 8, !dbg !29
  call void @llvm.dbg.value(metadata i64* %arr, metadata !30, metadata !DIExpression()) #4, !dbg !52
  call void @llvm.dbg.value(metadata %"cstr_core::CStr"* undef, metadata !49, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #4, !dbg !52
  call void @llvm.dbg.value(metadata i64 undef, metadata !49, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #4, !dbg !52
  call void @llvm.dbg.value(metadata i64* %arr, metadata !13, metadata !DIExpression(DW_OP_deref)), !dbg !25
  call void @klee_make_symbolic(i8* nonnull %0, i64 8, i8* nonnull getelementptr inbounds (<{ [4 x i8] }>, <{ [4 x i8] }>* @alloc11, i64 0, i32 0, i64 0)) #4, !dbg !54
  call void @llvm.dbg.value(metadata i64* %i, metadata !19, metadata !DIExpression(DW_OP_deref)), !dbg !28
  call void @llvm.dbg.value(metadata i64* %i, metadata !55, metadata !DIExpression()) #4, !dbg !64
  call void @llvm.dbg.value(metadata %"cstr_core::CStr"* undef, metadata !61, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #4, !dbg !64
  call void @llvm.dbg.value(metadata i64 undef, metadata !61, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #4, !dbg !64
  call void @klee_make_symbolic(i8* nonnull %1, i64 8, i8* nonnull getelementptr inbounds (<{ [2 x i8] }>, <{ [2 x i8] }>* @alloc12, i64 0, i32 0, i64 0)) #4, !dbg !66
  call void @llvm.dbg.value(metadata i64 undef, metadata !19, metadata !DIExpression()), !dbg !28
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1), !dbg !67
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0), !dbg !68
  ret void, !dbg !69
}

; Function Attrs: nounwind nonlazybind
declare i32 @rust_eh_personality(...) unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind nonlazybind
declare void @klee_make_symbolic(i8*, i64, i8*) unnamed_addr #0

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { nounwind nonlazybind "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #1 = { nounwind nonlazybind "target-cpu"="x86-64" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.dbg.cu = !{!4}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !5, producer: "clang LLVM (rustc version 1.57.0 (f1edd0429 2021-11-29))", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !6)
!5 = !DIFile(filename: "examples/array.rs", directory: "/home/hector/Documents/GitHub/d7020e_klee/cargo_klee_examples")
!6 = !{}
!7 = distinct !DISubprogram(name: "main", scope: !9, file: !8, line: 23, type: !10, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !6, retainedNodes: !12)
!8 = !DIFile(filename: "examples/array.rs", directory: "/home/hector/Documents/GitHub/d7020e_klee/cargo_klee_examples", checksumkind: CSK_MD5, checksum: "d47db19a7c305a49e06ea94b3dd3c0f0")
!9 = !DINamespace(name: "array", scope: null)
!10 = !DISubroutineType(types: !11)
!11 = !{null}
!12 = !{!13, !19, !22}
!13 = !DILocalVariable(name: "arr", scope: !14, file: !8, line: 24, type: !15, align: 1)
!14 = distinct !DILexicalBlock(scope: !7, file: !8, line: 24, column: 5)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 64, align: 8, elements: !17)
!16 = !DIBasicType(name: "u8", size: 8, encoding: DW_ATE_unsigned)
!17 = !{!18}
!18 = !DISubrange(count: 8, lowerBound: 0)
!19 = !DILocalVariable(name: "i", scope: !20, file: !8, line: 25, type: !21, align: 8)
!20 = distinct !DILexicalBlock(scope: !14, file: !8, line: 25, column: 5)
!21 = !DIBasicType(name: "usize", size: 64, encoding: DW_ATE_unsigned)
!22 = !DILocalVariable(name: "b", scope: !23, file: !8, line: 28, type: !16, align: 1)
!23 = distinct !DILexicalBlock(scope: !20, file: !8, line: 28, column: 5)
!24 = !DILocation(line: 24, column: 9, scope: !7)
!25 = !DILocation(line: 0, scope: !14)
!26 = !DILocation(line: 24, column: 19, scope: !7)
!27 = !DILocation(line: 25, column: 9, scope: !14)
!28 = !DILocation(line: 0, scope: !20)
!29 = !DILocation(line: 25, column: 24, scope: !14)
!30 = !DILocalVariable(name: "t", arg: 1, scope: !31, file: !32, line: 17, type: !37)
!31 = distinct !DISubprogram(name: "klee_make_symbolic<[u8; 8]>", linkageName: "_ZN8klee_sys17lib_klee_analysis18klee_make_symbolic17he2e2c1d97bbde161E", scope: !33, file: !32, line: 17, type: !35, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !50, retainedNodes: !48)
!32 = !DIFile(filename: "/home/hector/.cargo/git/checkouts/klee-sys-7ee2aa8a1a6bbc46/9f462cc/src/lib_klee_analysis.rs", directory: "", checksumkind: CSK_MD5, checksum: "e3bdc37403934781364daca8b62851bf")
!33 = !DINamespace(name: "lib_klee_analysis", scope: !34)
!34 = !DINamespace(name: "klee_sys", scope: null)
!35 = !DISubroutineType(types: !36)
!36 = !{null, !37, !38}
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut [u8; 8]", baseType: !15, size: 64, align: 64, dwarfAddressSpace: 0)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&CStr", baseType: !39, size: 128, align: 64, dwarfAddressSpace: 0)
!39 = !DICompositeType(tag: DW_TAG_structure_type, name: "CStr", scope: !41, file: !40, align: 8, elements: !42, templateParams: !6, identifier: "efed7fa612e3dcf357bcd9aa89e4e2c6")
!40 = !DIFile(filename: "<unknown>", directory: "")
!41 = !DINamespace(name: "cstr_core", scope: null)
!42 = !{!43}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !39, file: !40, baseType: !44, align: 8)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, align: 8, elements: !46)
!45 = !DIBasicType(name: "i8", size: 8, encoding: DW_ATE_signed)
!46 = !{!47}
!47 = !DISubrange(count: -1, lowerBound: 0)
!48 = !{!30, !49}
!49 = !DILocalVariable(name: "name", arg: 2, scope: !31, file: !32, line: 17, type: !38)
!50 = !{!51}
!51 = !DITemplateTypeParameter(name: "T", type: !15)
!52 = !DILocation(line: 0, scope: !31, inlinedAt: !53)
!53 = distinct !DILocation(line: 26, column: 5, scope: !20)
!54 = !DILocation(line: 19, column: 9, scope: !31, inlinedAt: !53)
!55 = !DILocalVariable(name: "t", arg: 1, scope: !56, file: !32, line: 17, type: !59)
!56 = distinct !DISubprogram(name: "klee_make_symbolic<usize>", linkageName: "_ZN8klee_sys17lib_klee_analysis18klee_make_symbolic17h033537c1d9077de8E", scope: !33, file: !32, line: 17, type: !57, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !62, retainedNodes: !60)
!57 = !DISubroutineType(types: !58)
!58 = !{null, !59, !38}
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut usize", baseType: !21, size: 64, align: 64, dwarfAddressSpace: 0)
!60 = !{!55, !61}
!61 = !DILocalVariable(name: "name", arg: 2, scope: !56, file: !32, line: 17, type: !38)
!62 = !{!63}
!63 = !DITemplateTypeParameter(name: "T", type: !21)
!64 = !DILocation(line: 0, scope: !56, inlinedAt: !65)
!65 = distinct !DILocation(line: 27, column: 5, scope: !20)
!66 = !DILocation(line: 19, column: 9, scope: !56, inlinedAt: !65)
!67 = !DILocation(line: 29, column: 1, scope: !14)
!68 = !DILocation(line: 29, column: 1, scope: !7)
!69 = !DILocation(line: 29, column: 2, scope: !7)
