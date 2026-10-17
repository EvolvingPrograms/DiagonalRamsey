import Support.LuWang.SourceGeometryCertificates.Chunk0000
import Support.LuWang.SourceGeometryCertificates.Chunk0001
import Support.LuWang.SourceGeometryCertificates.Chunk0002
import Support.LuWang.SourceGeometryCertificates.Chunk0003
import Support.LuWang.SourceGeometryCertificates.Chunk0004
import Support.LuWang.SourceGeometryCertificates.Chunk0005
import Support.LuWang.SourceGeometryCertificates.Chunk0006
import Support.LuWang.SourceGeometryCertificates.Chunk0007
import Support.LuWang.SourceGeometryCertificates.Chunk0008
import Support.LuWang.SourceGeometryCertificates.Chunk0009
import Support.LuWang.SourceGeometryCertificates.Chunk0010
import Support.LuWang.SourceGeometryCertificates.Chunk0011
import Support.LuWang.SourceGeometryCertificates.Chunk0012
import Support.LuWang.SourceGeometryCertificates.Chunk0013
import Support.LuWang.SourceGeometryCertificates.Chunk0014
import Support.LuWang.SourceGeometryCertificates.Chunk0015
import Support.LuWang.SourceGeometryCertificates.Chunk0016
import Support.LuWang.SourceGeometryCertificates.Chunk0017
import Support.LuWang.SourceGeometryCertificates.Chunk0018
import Support.LuWang.SourceGeometryCertificates.Chunk0019
import Support.LuWang.SourceGeometryCertificates.Chunk0020
import Support.LuWang.SourceGeometryCertificates.Chunk0021
import Support.LuWang.SourceGeometryCertificates.Chunk0022
import Support.LuWang.SourceGeometryCertificates.Chunk0023
import Support.LuWang.SourceGeometryCertificates.Chunk0024
import Support.LuWang.SourceGeometryCertificates.Chunk0025
import Support.LuWang.SourceGeometryCertificates.Chunk0026
import Support.LuWang.SourceGeometryCertificates.Chunk0027
import Support.LuWang.SourceGeometryCertificates.Chunk0028
import Support.LuWang.SourceGeometryCertificates.Chunk0029
import Support.LuWang.SourceGeometryCertificates.Chunk0030
import Support.LuWang.SourceGeometryCertificates.Chunk0031
import Support.LuWang.SourceGeometryCertificates.Chunk0032
import Support.LuWang.SourceGeometryCertificates.Chunk0033
import Support.LuWang.SourceGeometryCertificates.Chunk0034
import Support.LuWang.SourceGeometryCertificates.Chunk0035
import Support.LuWang.SourceGeometryCertificates.Chunk0036
import Support.LuWang.SourceGeometryCertificates.Chunk0037
import Support.LuWang.SourceGeometryCertificates.Chunk0038
import Support.LuWang.SourceGeometryCertificates.Chunk0039
import Support.LuWang.SourceGeometryCertificates.Chunk0040
import Support.LuWang.SourceGeometryCertificates.Chunk0041
import Support.LuWang.SourceGeometryCertificates.Chunk0042
import Support.LuWang.SourceGeometryCertificates.Chunk0043
import Support.LuWang.SourceGeometryCertificates.Chunk0044
import Support.LuWang.SourceGeometryCertificates.Chunk0045
import Support.LuWang.SourceGeometryCertificates.Chunk0046
import Support.LuWang.SourceGeometryCertificates.Chunk0047
import Support.LuWang.SourceGeometryCertificates.Chunk0048
import Support.LuWang.SourceGeometryCertificates.Chunk0049
import Support.LuWang.SourceGeometryCertificates.Chunk0050
import Support.LuWang.SourceGeometryCertificates.Chunk0051
import Support.LuWang.SourceGeometryCertificates.Chunk0052
import Support.LuWang.SourceGeometryCertificates.Chunk0053
import Support.LuWang.SourceGeometryCertificates.Chunk0054
import Support.LuWang.SourceGeometryCertificates.Chunk0055
import Support.LuWang.SourceGeometryCertificates.Chunk0056
import Support.LuWang.SourceGeometryCertificates.Chunk0057
import Support.LuWang.SourceGeometryCertificates.Chunk0058
import Support.LuWang.SourceGeometryCertificates.Chunk0059
import Support.LuWang.SourceGeometryCertificates.Chunk0060
import Support.LuWang.SourceGeometryCertificates.Chunk0061
import Support.LuWang.SourceGeometryCertificates.Chunk0062
import Support.LuWang.SourceGeometryCertificates.Chunk0063
import Support.LuWang.SourceGeometryCertificates.Chunk0064
import Support.LuWang.SourceGeometryCertificates.Chunk0065
import Support.LuWang.SourceGeometryCertificates.Chunk0066
import Support.LuWang.SourceGeometryCertificates.Chunk0067
import Support.LuWang.SourceGeometryCertificates.Chunk0068
import Support.LuWang.SourceGeometryCertificates.Chunk0069
import Support.LuWang.SourceGeometryCertificates.Chunk0070
import Support.LuWang.SourceGeometryCertificates.Chunk0071

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace LuWang.CurrentSourceGeometry

theorem all_checked (i : Fin 2279) :
    rationalData.exactCheck i = true ∧ rationalData.shapeCheck i = true ∧ metadataCheck i = true := by
  by_cases h0 : i.val < 32
  · have hc := LuWang.SourceGeometryCertificates.Chunk0000.checked ⟨i.val - 0, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 0 + 0, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 0 + 0 = i.val by omega)
    simpa only [heq] using hc
  by_cases h32 : i.val < 64
  · have hc := LuWang.SourceGeometryCertificates.Chunk0001.checked ⟨i.val - 32, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 32 + 32, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 32 + 32 = i.val by omega)
    simpa only [heq] using hc
  by_cases h64 : i.val < 96
  · have hc := LuWang.SourceGeometryCertificates.Chunk0002.checked ⟨i.val - 64, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 64 + 64, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 64 + 64 = i.val by omega)
    simpa only [heq] using hc
  by_cases h96 : i.val < 128
  · have hc := LuWang.SourceGeometryCertificates.Chunk0003.checked ⟨i.val - 96, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 96 + 96, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 96 + 96 = i.val by omega)
    simpa only [heq] using hc
  by_cases h128 : i.val < 160
  · have hc := LuWang.SourceGeometryCertificates.Chunk0004.checked ⟨i.val - 128, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 128 + 128, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 128 + 128 = i.val by omega)
    simpa only [heq] using hc
  by_cases h160 : i.val < 192
  · have hc := LuWang.SourceGeometryCertificates.Chunk0005.checked ⟨i.val - 160, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 160 + 160, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 160 + 160 = i.val by omega)
    simpa only [heq] using hc
  by_cases h192 : i.val < 224
  · have hc := LuWang.SourceGeometryCertificates.Chunk0006.checked ⟨i.val - 192, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 192 + 192, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 192 + 192 = i.val by omega)
    simpa only [heq] using hc
  by_cases h224 : i.val < 256
  · have hc := LuWang.SourceGeometryCertificates.Chunk0007.checked ⟨i.val - 224, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 224 + 224, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 224 + 224 = i.val by omega)
    simpa only [heq] using hc
  by_cases h256 : i.val < 288
  · have hc := LuWang.SourceGeometryCertificates.Chunk0008.checked ⟨i.val - 256, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 256 + 256, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 256 + 256 = i.val by omega)
    simpa only [heq] using hc
  by_cases h288 : i.val < 320
  · have hc := LuWang.SourceGeometryCertificates.Chunk0009.checked ⟨i.val - 288, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 288 + 288, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 288 + 288 = i.val by omega)
    simpa only [heq] using hc
  by_cases h320 : i.val < 352
  · have hc := LuWang.SourceGeometryCertificates.Chunk0010.checked ⟨i.val - 320, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 320 + 320, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 320 + 320 = i.val by omega)
    simpa only [heq] using hc
  by_cases h352 : i.val < 384
  · have hc := LuWang.SourceGeometryCertificates.Chunk0011.checked ⟨i.val - 352, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 352 + 352, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 352 + 352 = i.val by omega)
    simpa only [heq] using hc
  by_cases h384 : i.val < 416
  · have hc := LuWang.SourceGeometryCertificates.Chunk0012.checked ⟨i.val - 384, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 384 + 384, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 384 + 384 = i.val by omega)
    simpa only [heq] using hc
  by_cases h416 : i.val < 448
  · have hc := LuWang.SourceGeometryCertificates.Chunk0013.checked ⟨i.val - 416, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 416 + 416, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 416 + 416 = i.val by omega)
    simpa only [heq] using hc
  by_cases h448 : i.val < 480
  · have hc := LuWang.SourceGeometryCertificates.Chunk0014.checked ⟨i.val - 448, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 448 + 448, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 448 + 448 = i.val by omega)
    simpa only [heq] using hc
  by_cases h480 : i.val < 512
  · have hc := LuWang.SourceGeometryCertificates.Chunk0015.checked ⟨i.val - 480, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 480 + 480, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 480 + 480 = i.val by omega)
    simpa only [heq] using hc
  by_cases h512 : i.val < 544
  · have hc := LuWang.SourceGeometryCertificates.Chunk0016.checked ⟨i.val - 512, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 512 + 512, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 512 + 512 = i.val by omega)
    simpa only [heq] using hc
  by_cases h544 : i.val < 576
  · have hc := LuWang.SourceGeometryCertificates.Chunk0017.checked ⟨i.val - 544, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 544 + 544, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 544 + 544 = i.val by omega)
    simpa only [heq] using hc
  by_cases h576 : i.val < 608
  · have hc := LuWang.SourceGeometryCertificates.Chunk0018.checked ⟨i.val - 576, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 576 + 576, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 576 + 576 = i.val by omega)
    simpa only [heq] using hc
  by_cases h608 : i.val < 640
  · have hc := LuWang.SourceGeometryCertificates.Chunk0019.checked ⟨i.val - 608, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 608 + 608, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 608 + 608 = i.val by omega)
    simpa only [heq] using hc
  by_cases h640 : i.val < 672
  · have hc := LuWang.SourceGeometryCertificates.Chunk0020.checked ⟨i.val - 640, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 640 + 640, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 640 + 640 = i.val by omega)
    simpa only [heq] using hc
  by_cases h672 : i.val < 704
  · have hc := LuWang.SourceGeometryCertificates.Chunk0021.checked ⟨i.val - 672, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 672 + 672, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 672 + 672 = i.val by omega)
    simpa only [heq] using hc
  by_cases h704 : i.val < 736
  · have hc := LuWang.SourceGeometryCertificates.Chunk0022.checked ⟨i.val - 704, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 704 + 704, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 704 + 704 = i.val by omega)
    simpa only [heq] using hc
  by_cases h736 : i.val < 768
  · have hc := LuWang.SourceGeometryCertificates.Chunk0023.checked ⟨i.val - 736, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 736 + 736, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 736 + 736 = i.val by omega)
    simpa only [heq] using hc
  by_cases h768 : i.val < 800
  · have hc := LuWang.SourceGeometryCertificates.Chunk0024.checked ⟨i.val - 768, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 768 + 768, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 768 + 768 = i.val by omega)
    simpa only [heq] using hc
  by_cases h800 : i.val < 832
  · have hc := LuWang.SourceGeometryCertificates.Chunk0025.checked ⟨i.val - 800, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 800 + 800, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 800 + 800 = i.val by omega)
    simpa only [heq] using hc
  by_cases h832 : i.val < 864
  · have hc := LuWang.SourceGeometryCertificates.Chunk0026.checked ⟨i.val - 832, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 832 + 832, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 832 + 832 = i.val by omega)
    simpa only [heq] using hc
  by_cases h864 : i.val < 896
  · have hc := LuWang.SourceGeometryCertificates.Chunk0027.checked ⟨i.val - 864, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 864 + 864, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 864 + 864 = i.val by omega)
    simpa only [heq] using hc
  by_cases h896 : i.val < 928
  · have hc := LuWang.SourceGeometryCertificates.Chunk0028.checked ⟨i.val - 896, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 896 + 896, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 896 + 896 = i.val by omega)
    simpa only [heq] using hc
  by_cases h928 : i.val < 960
  · have hc := LuWang.SourceGeometryCertificates.Chunk0029.checked ⟨i.val - 928, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 928 + 928, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 928 + 928 = i.val by omega)
    simpa only [heq] using hc
  by_cases h960 : i.val < 992
  · have hc := LuWang.SourceGeometryCertificates.Chunk0030.checked ⟨i.val - 960, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 960 + 960, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 960 + 960 = i.val by omega)
    simpa only [heq] using hc
  by_cases h992 : i.val < 1024
  · have hc := LuWang.SourceGeometryCertificates.Chunk0031.checked ⟨i.val - 992, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 992 + 992, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 992 + 992 = i.val by omega)
    simpa only [heq] using hc
  by_cases h1024 : i.val < 1056
  · have hc := LuWang.SourceGeometryCertificates.Chunk0032.checked ⟨i.val - 1024, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 1024 + 1024, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 1024 + 1024 = i.val by omega)
    simpa only [heq] using hc
  by_cases h1056 : i.val < 1088
  · have hc := LuWang.SourceGeometryCertificates.Chunk0033.checked ⟨i.val - 1056, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 1056 + 1056, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 1056 + 1056 = i.val by omega)
    simpa only [heq] using hc
  by_cases h1088 : i.val < 1120
  · have hc := LuWang.SourceGeometryCertificates.Chunk0034.checked ⟨i.val - 1088, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 1088 + 1088, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 1088 + 1088 = i.val by omega)
    simpa only [heq] using hc
  by_cases h1120 : i.val < 1152
  · have hc := LuWang.SourceGeometryCertificates.Chunk0035.checked ⟨i.val - 1120, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 1120 + 1120, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 1120 + 1120 = i.val by omega)
    simpa only [heq] using hc
  by_cases h1152 : i.val < 1184
  · have hc := LuWang.SourceGeometryCertificates.Chunk0036.checked ⟨i.val - 1152, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 1152 + 1152, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 1152 + 1152 = i.val by omega)
    simpa only [heq] using hc
  by_cases h1184 : i.val < 1216
  · have hc := LuWang.SourceGeometryCertificates.Chunk0037.checked ⟨i.val - 1184, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 1184 + 1184, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 1184 + 1184 = i.val by omega)
    simpa only [heq] using hc
  by_cases h1216 : i.val < 1248
  · have hc := LuWang.SourceGeometryCertificates.Chunk0038.checked ⟨i.val - 1216, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 1216 + 1216, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 1216 + 1216 = i.val by omega)
    simpa only [heq] using hc
  by_cases h1248 : i.val < 1280
  · have hc := LuWang.SourceGeometryCertificates.Chunk0039.checked ⟨i.val - 1248, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 1248 + 1248, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 1248 + 1248 = i.val by omega)
    simpa only [heq] using hc
  by_cases h1280 : i.val < 1312
  · have hc := LuWang.SourceGeometryCertificates.Chunk0040.checked ⟨i.val - 1280, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 1280 + 1280, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 1280 + 1280 = i.val by omega)
    simpa only [heq] using hc
  by_cases h1312 : i.val < 1344
  · have hc := LuWang.SourceGeometryCertificates.Chunk0041.checked ⟨i.val - 1312, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 1312 + 1312, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 1312 + 1312 = i.val by omega)
    simpa only [heq] using hc
  by_cases h1344 : i.val < 1376
  · have hc := LuWang.SourceGeometryCertificates.Chunk0042.checked ⟨i.val - 1344, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 1344 + 1344, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 1344 + 1344 = i.val by omega)
    simpa only [heq] using hc
  by_cases h1376 : i.val < 1408
  · have hc := LuWang.SourceGeometryCertificates.Chunk0043.checked ⟨i.val - 1376, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 1376 + 1376, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 1376 + 1376 = i.val by omega)
    simpa only [heq] using hc
  by_cases h1408 : i.val < 1440
  · have hc := LuWang.SourceGeometryCertificates.Chunk0044.checked ⟨i.val - 1408, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 1408 + 1408, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 1408 + 1408 = i.val by omega)
    simpa only [heq] using hc
  by_cases h1440 : i.val < 1472
  · have hc := LuWang.SourceGeometryCertificates.Chunk0045.checked ⟨i.val - 1440, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 1440 + 1440, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 1440 + 1440 = i.val by omega)
    simpa only [heq] using hc
  by_cases h1472 : i.val < 1504
  · have hc := LuWang.SourceGeometryCertificates.Chunk0046.checked ⟨i.val - 1472, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 1472 + 1472, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 1472 + 1472 = i.val by omega)
    simpa only [heq] using hc
  by_cases h1504 : i.val < 1536
  · have hc := LuWang.SourceGeometryCertificates.Chunk0047.checked ⟨i.val - 1504, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 1504 + 1504, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 1504 + 1504 = i.val by omega)
    simpa only [heq] using hc
  by_cases h1536 : i.val < 1568
  · have hc := LuWang.SourceGeometryCertificates.Chunk0048.checked ⟨i.val - 1536, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 1536 + 1536, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 1536 + 1536 = i.val by omega)
    simpa only [heq] using hc
  by_cases h1568 : i.val < 1600
  · have hc := LuWang.SourceGeometryCertificates.Chunk0049.checked ⟨i.val - 1568, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 1568 + 1568, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 1568 + 1568 = i.val by omega)
    simpa only [heq] using hc
  by_cases h1600 : i.val < 1632
  · have hc := LuWang.SourceGeometryCertificates.Chunk0050.checked ⟨i.val - 1600, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 1600 + 1600, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 1600 + 1600 = i.val by omega)
    simpa only [heq] using hc
  by_cases h1632 : i.val < 1664
  · have hc := LuWang.SourceGeometryCertificates.Chunk0051.checked ⟨i.val - 1632, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 1632 + 1632, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 1632 + 1632 = i.val by omega)
    simpa only [heq] using hc
  by_cases h1664 : i.val < 1696
  · have hc := LuWang.SourceGeometryCertificates.Chunk0052.checked ⟨i.val - 1664, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 1664 + 1664, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 1664 + 1664 = i.val by omega)
    simpa only [heq] using hc
  by_cases h1696 : i.val < 1728
  · have hc := LuWang.SourceGeometryCertificates.Chunk0053.checked ⟨i.val - 1696, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 1696 + 1696, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 1696 + 1696 = i.val by omega)
    simpa only [heq] using hc
  by_cases h1728 : i.val < 1760
  · have hc := LuWang.SourceGeometryCertificates.Chunk0054.checked ⟨i.val - 1728, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 1728 + 1728, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 1728 + 1728 = i.val by omega)
    simpa only [heq] using hc
  by_cases h1760 : i.val < 1792
  · have hc := LuWang.SourceGeometryCertificates.Chunk0055.checked ⟨i.val - 1760, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 1760 + 1760, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 1760 + 1760 = i.val by omega)
    simpa only [heq] using hc
  by_cases h1792 : i.val < 1824
  · have hc := LuWang.SourceGeometryCertificates.Chunk0056.checked ⟨i.val - 1792, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 1792 + 1792, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 1792 + 1792 = i.val by omega)
    simpa only [heq] using hc
  by_cases h1824 : i.val < 1856
  · have hc := LuWang.SourceGeometryCertificates.Chunk0057.checked ⟨i.val - 1824, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 1824 + 1824, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 1824 + 1824 = i.val by omega)
    simpa only [heq] using hc
  by_cases h1856 : i.val < 1888
  · have hc := LuWang.SourceGeometryCertificates.Chunk0058.checked ⟨i.val - 1856, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 1856 + 1856, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 1856 + 1856 = i.val by omega)
    simpa only [heq] using hc
  by_cases h1888 : i.val < 1920
  · have hc := LuWang.SourceGeometryCertificates.Chunk0059.checked ⟨i.val - 1888, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 1888 + 1888, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 1888 + 1888 = i.val by omega)
    simpa only [heq] using hc
  by_cases h1920 : i.val < 1952
  · have hc := LuWang.SourceGeometryCertificates.Chunk0060.checked ⟨i.val - 1920, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 1920 + 1920, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 1920 + 1920 = i.val by omega)
    simpa only [heq] using hc
  by_cases h1952 : i.val < 1984
  · have hc := LuWang.SourceGeometryCertificates.Chunk0061.checked ⟨i.val - 1952, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 1952 + 1952, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 1952 + 1952 = i.val by omega)
    simpa only [heq] using hc
  by_cases h1984 : i.val < 2016
  · have hc := LuWang.SourceGeometryCertificates.Chunk0062.checked ⟨i.val - 1984, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 1984 + 1984, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 1984 + 1984 = i.val by omega)
    simpa only [heq] using hc
  by_cases h2016 : i.val < 2048
  · have hc := LuWang.SourceGeometryCertificates.Chunk0063.checked ⟨i.val - 2016, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 2016 + 2016, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 2016 + 2016 = i.val by omega)
    simpa only [heq] using hc
  by_cases h2048 : i.val < 2080
  · have hc := LuWang.SourceGeometryCertificates.Chunk0064.checked ⟨i.val - 2048, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 2048 + 2048, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 2048 + 2048 = i.val by omega)
    simpa only [heq] using hc
  by_cases h2080 : i.val < 2112
  · have hc := LuWang.SourceGeometryCertificates.Chunk0065.checked ⟨i.val - 2080, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 2080 + 2080, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 2080 + 2080 = i.val by omega)
    simpa only [heq] using hc
  by_cases h2112 : i.val < 2144
  · have hc := LuWang.SourceGeometryCertificates.Chunk0066.checked ⟨i.val - 2112, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 2112 + 2112, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 2112 + 2112 = i.val by omega)
    simpa only [heq] using hc
  by_cases h2144 : i.val < 2176
  · have hc := LuWang.SourceGeometryCertificates.Chunk0067.checked ⟨i.val - 2144, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 2144 + 2144, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 2144 + 2144 = i.val by omega)
    simpa only [heq] using hc
  by_cases h2176 : i.val < 2208
  · have hc := LuWang.SourceGeometryCertificates.Chunk0068.checked ⟨i.val - 2176, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 2176 + 2176, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 2176 + 2176 = i.val by omega)
    simpa only [heq] using hc
  by_cases h2208 : i.val < 2240
  · have hc := LuWang.SourceGeometryCertificates.Chunk0069.checked ⟨i.val - 2208, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 2208 + 2208, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 2208 + 2208 = i.val by omega)
    simpa only [heq] using hc
  by_cases h2240 : i.val < 2272
  · have hc := LuWang.SourceGeometryCertificates.Chunk0070.checked ⟨i.val - 2240, by omega⟩
    dsimp only at hc
    have heq : (⟨i.val - 2240 + 2240, by omega⟩ : Fin 2279) = i := by
      exact Fin.ext (show i.val - 2240 + 2240 = i.val by omega)
    simpa only [heq] using hc
  have hc := LuWang.SourceGeometryCertificates.Chunk0071.checked ⟨i.val - 2272, by omega⟩
  dsimp only at hc
  have heq : (⟨i.val - 2272 + 2272, by omega⟩ : Fin 2279) = i := by
    exact Fin.ext (show i.val - 2272 + 2272 = i.val by omega)
  simpa only [heq] using hc

theorem exact_checked (i : Fin 2279) : rationalData.exactCheck i = true := (all_checked i).1
theorem shape_checked (i : Fin 2279) : rationalData.shapeCheck i = true := (all_checked i).2.1
theorem metadata_checked (i : Fin 2279) : metadataCheck i = true := (all_checked i).2.2

#print axioms all_checked
end LuWang.CurrentSourceGeometry
