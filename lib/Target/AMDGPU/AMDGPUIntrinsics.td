//===-- AMDGPUIntrinsics.td - Common intrinsics  -*- tablegen -*-----------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file defines intrinsics that are used by all hw codegen targets.
//
//===----------------------------------------------------------------------===//

let TargetPrefix = "AMDGPU", isTarget = 1 in {
  def int_AMDGPU_kill : Intrinsic<[], [llvm_float_ty], []>;
  def int_AMDGPU_kilp : Intrinsic<[], [], []>;

  // Deprecated in favor of expanded bit operations
  def int_AMDGPU_bfe_i32 : Intrinsic<[llvm_i32_ty], [llvm_i32_ty, llvm_i32_ty, llvm_i32_ty], [IntrNoMem]>;
  def int_AMDGPU_bfe_u32 : Intrinsic<[llvm_i32_ty], [llvm_i32_ty, llvm_i32_ty, llvm_i32_ty], [IntrNoMem]>;
}

include "SIIntrinsics.td"
