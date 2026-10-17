import S7_ParameterChoice.Source.HullTangent
import S7_ParameterChoice.Source.HullCells

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.HullGrounded

open DiagRamsey HullTangent

-- Exact proof reused from Bridge/P06LinesP0r12_2.lean, line_P0r12_117.
theorem tangent0117 : ∀ s : ℝ, 0 < s →
    symmetricProfile luWangSource 1 s ≤ (((1329002316235187855425983/10000000000000000000000000 : ℚ)) : ℝ) + (((17931929973354275213872297/10000000000000000000000000 : ℚ)) : ℝ) * s := by
  intro s hs
  have h := (line_atS 452 1125899906842624 6939999385543077 (by norm_num) (by norm_num) (by norm_num)
    (by decide +kernel) (by decide +kernel) (by decide +kernel) (by decide +kernel)
    17931929973354275213872297 10000000000000000000000000 (by norm_num) (by decide +kernel)
    1329002316235187855425983 10000000000000000000000000 (by norm_num) (by decide +kernel) s hs).2
  push_cast at h ⊢; linarith

-- Exact proof reused from Bridge/P06LinesP0r12_3.lean, line_P0r12_132.
theorem tangent0132 : ∀ s : ℝ, 0 < s →
    symmetricProfile luWangSource 1 s ≤ (((1682997085793369584947631/10000000000000000000000000 : ℚ)) : ℝ) + (((16039026725297261491534141/10000000000000000000000000 : ℚ)) : ℝ) * s := by
  intro s hs
  have h := (line_atS 567 1125899906842624 5237146902988505 (by norm_num) (by norm_num) (by norm_num)
    (by decide +kernel) (by decide +kernel) (by decide +kernel) (by decide +kernel)
    16039026725297261491534141 10000000000000000000000000 (by norm_num) (by decide +kernel)
    1682997085793369584947631 10000000000000000000000000 (by norm_num) (by decide +kernel) s hs).2
  push_cast at h ⊢; linarith

-- Exact proof reused from Bridge/P06LinesP0r12_3.lean, line_P0r12_140.
theorem tangent0140 : ∀ s : ℝ, 0 < s →
    symmetricProfile luWangSource 1 s ≤ (((1828009856601208256961447/10000000000000000000000000 : ℚ)) : ℝ) + (((15397797099683570375497539/10000000000000000000000000 : ℚ)) : ℝ) * s := by
  intro s hs
  have h := (line_atS 617 1125899906842624 4734393900518619 (by norm_num) (by norm_num) (by norm_num)
    (by decide +kernel) (by decide +kernel) (by decide +kernel) (by decide +kernel)
    15397797099683570375497539 10000000000000000000000000 (by norm_num) (by decide +kernel)
    1828009856601208256961447 10000000000000000000000000 (by norm_num) (by decide +kernel) s hs).2
  push_cast at h ⊢; linarith

-- Exact proof reused from Bridge/P06LinesP0r12_24.lean, line_P0r12_994.
theorem tangent0994 : ∀ s : ℝ, 0 < s →
    symmetricProfile luWangSource 1 s ≤ (((8321282143195886632280237/5000000000000000000000000 : ℚ)) : ℝ) + (((389770127391892721102143/2500000000000000000000000 : ℚ)) : ℝ) * s := by
  intro s hs
  have h := (line_atS 526 7062646987684827 36028797018963968 (by norm_num) (by norm_num) (by norm_num)
    (by decide +kernel) (by decide +kernel) (by decide +kernel) (by decide +kernel)
    16642564286391773264560474 10000000000000000000000000 (by norm_num) (by decide +kernel)
    1559080509567570884408572 10000000000000000000000000 (by norm_num) (by decide +kernel) s hs).1
  push_cast at h ⊢; linarith

-- Exact proof reused from Bridge/P06LinesP0r12_24.lean, line_P0r12_995.
theorem tangent0995 : ∀ s : ℝ, 0 < s →
    symmetricProfile luWangSource 1 s ≤ (((4215433516679169510787853/2500000000000000000000000 : ℚ)) : ℝ) + (((189602191736962917994503/1250000000000000000000000 : ℚ)) : ℝ) * s := by
  intro s hs
  have h := (line_atS 512 6833994362844859 36028797018963968 (by norm_num) (by norm_num) (by norm_num)
    (by decide +kernel) (by decide +kernel) (by decide +kernel) (by decide +kernel)
    16861734066716678043151412 10000000000000000000000000 (by norm_num) (by decide +kernel)
    1516817533895703343956024 10000000000000000000000000 (by norm_num) (by decide +kernel) s hs).1
  push_cast at h ⊢; linarith

-- Exact proof reused from Bridge/P06LinesP0r12_24.lean, line_P0r12_996.
theorem tangent0996 : ∀ s : ℝ, 0 < s →
    symmetricProfile luWangSource 1 s ≤ (((1708379014459632883427891/1000000000000000000000000 : ℚ)) : ℝ) + (((737693298033041368753/5000000000000000000000 : ℚ)) : ℝ) * s := by
  intro s hs
  have h := (line_atS 499 6611998600198061 36028797018963968 (by norm_num) (by norm_num) (by norm_num)
    (by decide +kernel) (by decide +kernel) (by decide +kernel) (by decide +kernel)
    17083790144596328834278910 10000000000000000000000000 (by norm_num) (by decide +kernel)
    1475386596066082737506000 10000000000000000000000000 (by norm_num) (by decide +kernel) s hs).1
  push_cast at h ⊢; linarith

-- Exact proof reused from Bridge/P06LinesP0r12_24.lean, line_P0r12_997.
theorem tangent0997 : ∀ s : ℝ, 0 < s →
    symmetricProfile luWangSource 1 s ≤ (((8654385265175676849413121/5000000000000000000000000 : ℚ)) : ℝ) + (((717387950279519710410373/5000000000000000000000000 : ℚ)) : ℝ) * s := by
  intro s hs
  have h := (line_atS 486 799561411484533 4503599627370496 (by norm_num) (by norm_num) (by norm_num)
    (by decide +kernel) (by decide +kernel) (by decide +kernel) (by decide +kernel)
    17308770530351353698826242 10000000000000000000000000 (by norm_num) (by decide +kernel)
    1434775900559039420820746 10000000000000000000000000 (by norm_num) (by decide +kernel) s hs).1
  push_cast at h ⊢; linarith

-- Exact proof reused from Bridge/P06LinesP0r12_24.lean, line_P0r12_998.
theorem tangent0998 : ∀ s : ℝ, 0 < s →
    symmetricProfile luWangSource 1 s ≤ (((17536713734868891501412811/10000000000000000000000000 : ℚ)) : ℝ) + (((697486854014099815556987/5000000000000000000000000 : ℚ)) : ℝ) * s := by
  intro s hs
  have h := (line_atS 473 3093653527438143 18014398509481984 (by norm_num) (by norm_num) (by norm_num)
    (by decide +kernel) (by decide +kernel) (by decide +kernel) (by decide +kernel)
    17536713734868891501412811 10000000000000000000000000 (by norm_num) (by decide +kernel)
    1394973708028199631113974 10000000000000000000000000 (by norm_num) (by decide +kernel) s hs).1
  push_cast at h ⊢; linarith

-- Exact proof reused from Bridge/P06LinesP0r12_24.lean, line_P0r12_999.
theorem tangent0999 : ∀ s : ℝ, 0 < s →
    symmetricProfile luWangSource 1 s ≤ (((2250205648276592096943799/1250000000000000000000000 : ℚ)) : ℝ) + (((263549646980110444024523/2000000000000000000000000 : ℚ)) : ℝ) * s := by
  intro s hs
  have h := (line_atS 449 180851812993117 1125899906842624 (by norm_num) (by norm_num) (by norm_num)
    (by decide +kernel) (by decide +kernel) (by decide +kernel) (by decide +kernel)
    18001645186212736775550392 10000000000000000000000000 (by norm_num) (by decide +kernel)
    1317748234900552220122615 10000000000000000000000000 (by norm_num) (by decide +kernel) s hs).1
  push_cast at h ⊢; linarith

-- Exact proof reused from Bridge/P06LinesP0r12_25.lean, line_P0r12_1000.
theorem tangent1000 : ∀ s : ℝ, 0 < s →
    symmetricProfile luWangSource 1 s ≤ (((18238713017410658509447811/10000000000000000000000000 : ℚ)) : ℝ) + (((320075467903044734720523/2500000000000000000000000 : ℚ)) : ℝ) * s := by
  intro s hs
  have h := (line_atS 437 2798035566631855 18014398509481984 (by norm_num) (by norm_num) (by norm_num)
    (by decide +kernel) (by decide +kernel) (by decide +kernel) (by decide +kernel)
    18238713017410658509447811 10000000000000000000000000 (by norm_num) (by decide +kernel)
    1280301871612178938882092 10000000000000000000000000 (by norm_num) (by decide +kernel) s hs).1
  push_cast at h ⊢; linarith

-- Exact proof reused from Bridge/P06LinesP0r12_25.lean, line_P0r12_1001.
theorem tangent1001 : ∀ s : ℝ, 0 < s →
    symmetricProfile luWangSource 1 s ≤ (((9239451424868628333562543/5000000000000000000000000 : ℚ)) : ℝ) + (((1243617869599627554229641/10000000000000000000000000 : ℚ)) : ℝ) * s := by
  intro s hs
  have h := (line_atS 426 676320711223963 4503599627370496 (by norm_num) (by norm_num) (by norm_num)
    (by decide +kernel) (by decide +kernel) (by decide +kernel) (by decide +kernel)
    18478902849737256667125086 10000000000000000000000000 (by norm_num) (by decide +kernel)
    1243617869599627554229641 10000000000000000000000000 (by norm_num) (by decide +kernel) s hs).1
  push_cast at h ⊢; linarith

-- Exact proof reused from Bridge/P06LinesP0r12_25.lean, line_P0r12_1002.
theorem tangent1002 : ∀ s : ℝ, 0 < s →
    symmetricProfile luWangSource 1 s ≤ (((9361127898773923530415639/5000000000000000000000000 : ℚ)) : ℝ) + (((48307398254951352486939/400000000000000000000000 : ℚ)) : ℝ) * s := by
  intro s hs
  have h := (line_atS 415 2615292962211989 18014398509481984 (by norm_num) (by norm_num) (by norm_num)
    (by decide +kernel) (by decide +kernel) (by decide +kernel) (by decide +kernel)
    18722255797547847060831278 10000000000000000000000000 (by norm_num) (by decide +kernel)
    1207684956373783812173475 10000000000000000000000000 (by norm_num) (by decide +kernel) s hs).1
  push_cast at h ⊢; linarith

-- Exact proof reused from Bridge/P06LinesP0r12_25.lean, line_P0r12_1003.
theorem tangent1003 : ∀ s : ℝ, 0 < s →
    symmetricProfile luWangSource 1 s ≤ (((18968813516642186555941163/10000000000000000000000000 : ℚ)) : ℝ) + (((1172491990411597951401321/10000000000000000000000000 : ℚ)) : ℝ) * s := by
  intro s hs
  have h := (line_atS 404 2527989075242293 18014398509481984 (by norm_num) (by norm_num) (by norm_num)
    (by decide +kernel) (by decide +kernel) (by decide +kernel) (by decide +kernel)
    18968813516642186555941163 10000000000000000000000000 (by norm_num) (by decide +kernel)
    1172491990411597951401321 10000000000000000000000000 (by norm_num) (by decide +kernel) s hs).1
  push_cast at h ⊢; linarith

-- Exact proof reused from Bridge/P06LinesP0r12_25.lean, line_P0r12_1004.
theorem tangent1004 : ∀ s : ℝ, 0 < s →
    symmetricProfile luWangSource 1 s ≤ (((19218618211394852166818101/10000000000000000000000000 : ℚ)) : ℝ) + (((569013987942732488774401/5000000000000000000000000 : ℚ)) : ℝ) * s := by
  intro s hs
  have h := (line_atS 394 4886590415554341 36028797018963968 (by norm_num) (by norm_num) (by norm_num)
    (by decide +kernel) (by decide +kernel) (by decide +kernel) (by decide +kernel)
    19218618211394852166818101 10000000000000000000000000 (by norm_num) (by decide +kernel)
    1138027975885464977548802 10000000000000000000000000 (by norm_num) (by decide +kernel) s hs).1
  push_cast at h ⊢; linarith

-- Exact proof reused from Bridge/P06LinesP0r12_25.lean, line_P0r12_1005.
theorem tangent1005 : ∀ s : ℝ, 0 < s →
    symmetricProfile luWangSource 1 s ≤ (((19471712641979842397839449/10000000000000000000000000 : ℚ)) : ℝ) + (((1104282078260528266863067/10000000000000000000000000 : ℚ)) : ℝ) * s := by
  intro s hs
  have h := (line_atS 384 4722272074393301 36028797018963968 (by norm_num) (by norm_num) (by norm_num)
    (by decide +kernel) (by decide +kernel) (by decide +kernel) (by decide +kernel)
    19471712641979842397839449 10000000000000000000000000 (by norm_num) (by decide +kernel)
    1104282078260528266863067 10000000000000000000000000 (by norm_num) (by decide +kernel) s hs).1
  push_cast at h ⊢; linarith

-- Exact proof reused from Bridge/P06LinesP0r12_25.lean, line_P0r12_1006.
theorem tangent1006 : ∀ s : ℝ, 0 < s →
    symmetricProfile luWangSource 1 s ≤ (((24984930717938157287701/12500000000000000000000 : ℚ)) : ℝ) + (((1038902230763885010024629/10000000000000000000000000 : ℚ)) : ℝ) * s := by
  intro s hs
  have h := (line_atS 365 4408242132687873 36028797018963968 (by norm_num) (by norm_num) (by norm_num)
    (by decide +kernel) (by decide +kernel) (by decide +kernel) (by decide +kernel)
    19987944574350525830160800 10000000000000000000000000 (by norm_num) (by decide +kernel)
    1038902230763885010024629 10000000000000000000000000 (by norm_num) (by decide +kernel) s hs).1
  push_cast at h ⊢; linarith

-- Exact proof reused from Bridge/P06LinesP0r12_25.lean, line_P0r12_1007.
theorem tangent1007 : ∀ s : ℝ, 0 < s →
    symmetricProfile luWangSource 1 s ≤ (((4050234088367667907540269/2000000000000000000000000 : ℚ)) : ℝ) + (((503623810475386366692193/5000000000000000000000000 : ℚ)) : ℝ) * s := by
  intro s hs
  have h := (line_atS 356 8516465321769915 72057594037927936 (by norm_num) (by norm_num) (by norm_num)
    (by decide +kernel) (by decide +kernel) (by decide +kernel) (by decide +kernel)
    20251170441838339537701345 10000000000000000000000000 (by norm_num) (by decide +kernel)
    1007247620950772733384386 10000000000000000000000000 (by norm_num) (by decide +kernel) s hs).1
  push_cast at h ⊢; linarith

-- Exact proof reused from Bridge/P06LinesP0r12_25.lean, line_P0r12_1009.
theorem tangent1009 : ∀ s : ℝ, 0 < s →
    symmetricProfile luWangSource 1 s ≤ (((10394033637403654758102881/5000000000000000000000000 : ℚ)) : ℝ) + (((1513534929223488213643/16000000000000000000000 : ℚ)) : ℝ) * s := by
  intro s hs
  have h := (line_atS 339 7942947557349811 72057594037927936 (by norm_num) (by norm_num) (by norm_num)
    (by decide +kernel) (by decide +kernel) (by decide +kernel) (by decide +kernel)
    20788067274807309516205762 10000000000000000000000000 (by norm_num) (by decide +kernel)
    945959330764680133526875 10000000000000000000000000 (by norm_num) (by decide +kernel) s hs).1
  push_cast at h ⊢; linarith

-- Exact proof reused from Bridge/P06LinesP0r12_25.lean, line_P0r12_1010.
theorem tangent1010 : ∀ s : ℝ, 0 < s →
    symmetricProfile luWangSource 1 s ≤ (((4267839651668912768526589/2000000000000000000000000 : ℚ)) : ℝ) + (((13864112126385205932191/156250000000000000000000 : ℚ)) : ℝ) * s := by
  intro s hs
  have h := (line_atS 322 7402740200085375 72057594037927936 (by norm_num) (by norm_num) (by norm_num)
    (by decide +kernel) (by decide +kernel) (by decide +kernel) (by decide +kernel)
    21339198258344563842632945 10000000000000000000000000 (by norm_num) (by decide +kernel)
    887303176088653179660224 10000000000000000000000000 (by norm_num) (by decide +kernel) s hs).1
  push_cast at h ⊢; linarith

-- Exact proof reused from Bridge/P06LinesP0r12_25.lean, line_P0r12_1011.
theorem tangent1011 : ∀ s : ℝ, 0 < s →
    symmetricProfile luWangSource 1 s ≤ (((5405054774572215505808469/2500000000000000000000000 : ℚ)) : ℝ) + (((858940309126467888408709/10000000000000000000000000 : ℚ)) : ℝ) * s := by
  intro s hs
  have h := (line_atS 315 1786082604066871 18014398509481984 (by norm_num) (by norm_num) (by norm_num)
    (by decide +kernel) (by decide +kernel) (by decide +kernel) (by decide +kernel)
    21620219098288862023233876 10000000000000000000000000 (by norm_num) (by decide +kernel)
    858940309126467888408709 10000000000000000000000000 (by norm_num) (by decide +kernel) s hs).1
  push_cast at h ⊢; linarith

-- Exact proof reused from Bridge/P06LinesP0r12_25.lean, line_P0r12_1012.
theorem tangent1012 : ∀ s : ℝ, 0 < s →
    symmetricProfile luWangSource 1 s ≤ (((11242841089524639914601123/5000000000000000000000000 : ℚ)) : ℝ) + (((777621468307429355245401/10000000000000000000000000 : ℚ)) : ℝ) * s := by
  intro s hs
  have h := (line_atS 292 6411690826762715 72057594037927936 (by norm_num) (by norm_num) (by norm_num)
    (by decide +kernel) (by decide +kernel) (by decide +kernel) (by decide +kernel)
    22485682179049279829202246 10000000000000000000000000 (by norm_num) (by decide +kernel)
    777621468307429355245401 10000000000000000000000000 (by norm_num) (by decide +kernel) s hs).1
  push_cast at h ⊢; linarith

-- Exact proof reused from Bridge/P06LinesP0r12_25.lean, line_P0r12_1013.
theorem tangent1013 : ∀ s : ℝ, 0 < s →
    symmetricProfile luWangSource 1 s ≤ (((23385789975515638584004321/10000000000000000000000000 : ℚ)) : ℝ) + (((175459876052341085003079/2500000000000000000000000 : ℚ)) : ℝ) * s := by
  intro s hs
  have h := (line_atS 272 5734202131222259 72057594037927936 (by norm_num) (by norm_num) (by norm_num)
    (by decide +kernel) (by decide +kernel) (by decide +kernel) (by decide +kernel)
    23385789975515638584004321 10000000000000000000000000 (by norm_num) (by decide +kernel)
    701839504209364340012316 10000000000000000000000000 (by norm_num) (by decide +kernel) s hs).1
  push_cast at h ⊢; linarith

-- Exact proof reused from Bridge/P06LinesP0r12_25.lean, line_P0r12_1014.
theorem tangent1014 : ∀ s : ℝ, 0 < s →
    symmetricProfile luWangSource 1 s ≤ (((24642230440396862170155773/10000000000000000000000000 : ℚ)) : ℝ) + (((30463759865790178853029/500000000000000000000000 : ℚ)) : ℝ) * s := by
  intro s hs
  have h := (line_atS 247 2453593978455261 36028797018963968 (by norm_num) (by norm_num) (by norm_num)
    (by decide +kernel) (by decide +kernel) (by decide +kernel) (by decide +kernel)
    24642230440396862170155773 10000000000000000000000000 (by norm_num) (by decide +kernel)
    609275197315803577060580 10000000000000000000000000 (by norm_num) (by decide +kernel) s hs).1
  push_cast at h ⊢; linarith

-- Exact proof reused from Bridge/P06LinesP0r12_25.lean, line_P0r12_1015.
theorem tangent1015 : ∀ s : ℝ, 0 < s →
    symmetricProfile luWangSource 1 s ≤ (((6407166358336230261136149/2500000000000000000000000 : ℚ)) : ℝ) + (((109194957608147832980619/2000000000000000000000000 : ℚ)) : ℝ) * s := by
  intro s hs
  have h := (line_atS 230 4353598256575107 72057594037927936 (by norm_num) (by norm_num) (by norm_num)
    (by decide +kernel) (by decide +kernel) (by decide +kernel) (by decide +kernel)
    25628665433344921044544596 10000000000000000000000000 (by norm_num) (by decide +kernel)
    545974788040739164903095 10000000000000000000000000 (by norm_num) (by decide +kernel) s hs).1
  push_cast at h ⊢; linarith

-- Exact proof reused from Bridge/P06LinesP0r12_25.lean, line_P0r12_1019.
theorem tangent1019 : ∀ s : ℝ, 0 < s →
    symmetricProfile luWangSource 1 s ≤ (((2280446054721525143540637/625000000000000000000000 : ℚ)) : ℝ) + (((8570048697478554559689/500000000000000000000000 : ℚ)) : ℝ) * s := by
  intro s hs
  have h := (line_atS 141 5131577175456063 288230376151711744 (by norm_num) (by norm_num) (by norm_num)
    (by decide +kernel) (by decide +kernel) (by decide +kernel) (by decide +kernel)
    36487136875544402296650192 10000000000000000000000000 (by norm_num) (by decide +kernel)
    171400973949571091193780 10000000000000000000000000 (by norm_num) (by decide +kernel) s hs).1
  push_cast at h ⊢; linarith

-- Exact proof reused from Bridge/P06LinesP0r12_25.lean, line_P0r12_1021.
theorem tangent1021 : ∀ s : ℝ, 0 < s →
    symmetricProfile luWangSource 1 s ≤ (((19733392060002514053293257/5000000000000000000000000 : ℚ)) : ℝ) + (((62979445831627578093769/5000000000000000000000000 : ℚ)) : ℝ) * s := by
  intro s hs
  have h := (line_atS 137 7474507311790247 576460752303423488 (by norm_num) (by norm_num) (by norm_num)
    (by decide +kernel) (by decide +kernel) (by decide +kernel) (by decide +kernel)
    39466784120005028106586514 10000000000000000000000000 (by norm_num) (by decide +kernel)
    125958891663255156187538 10000000000000000000000000 (by norm_num) (by decide +kernel) s hs).1
  push_cast at h ⊢; linarith

-- Exact proof reused from Bridge/P06LinesP0r12_25.lean, line_P0r12_1022.
theorem tangent1022 : ∀ s : ℝ, 0 < s →
    symmetricProfile luWangSource 1 s ≤ (((3998653133304602298172507/1000000000000000000000000 : ℚ)) : ℝ) + (((119401232011432973279703/10000000000000000000000000 : ℚ)) : ℝ) * s := by
  intro s hs
  have h := (line_atS 137 3537851218448653 288230376151711744 (by norm_num) (by norm_num) (by norm_num)
    (by decide +kernel) (by decide +kernel) (by decide +kernel) (by decide +kernel)
    39986531333046022981725070 10000000000000000000000000 (by norm_num) (by decide +kernel)
    119401232011432973279703 10000000000000000000000000 (by norm_num) (by decide +kernel) s hs).1
  push_cast at h ⊢; linarith

-- Exact proof reused from Bridge/P06LinesP0r12_25.lean, line_P0r12_1023.
theorem tangent1023 : ∀ s : ℝ, 0 < s →
    symmetricProfile luWangSource 1 s ≤ (((10955386096081669046265733/2500000000000000000000000 : ℚ)) : ℝ) + (((16127696513240241214153/2000000000000000000000000 : ℚ)) : ℝ) * s := by
  intro s hs
  have h := (line_atS 132 2369582695175987 288230376151711744 (by norm_num) (by norm_num) (by norm_num)
    (by decide +kernel) (by decide +kernel) (by decide +kernel) (by decide +kernel)
    43821544384326676185062932 10000000000000000000000000 (by norm_num) (by decide +kernel)
    80638482566201206070765 10000000000000000000000000 (by norm_num) (by decide +kernel) s hs).1
  push_cast at h ⊢; linarith

-- Exact proof reused from Bridge/P06LinesP0r12_25.lean, line_P0r12_1025.
theorem tangent1025 : ∀ s : ℝ, 0 < s →
    symmetricProfile luWangSource 1 s ≤ (((47400140984496864775348053/10000000000000000000000000 : ℚ)) : ℝ) + (((56046840901463904375529/10000000000000000000000000 : ℚ)) : ℝ) * s := by
  intro s hs
  have h := (line_atS 127 1637952149775965 288230376151711744 (by norm_num) (by norm_num) (by norm_num)
    (by decide +kernel) (by decide +kernel) (by decide +kernel) (by decide +kernel)
    47400140984496864775348053 10000000000000000000000000 (by norm_num) (by decide +kernel)
    56046840901463904375529 10000000000000000000000000 (by norm_num) (by decide +kernel) s hs).1
  push_cast at h ⊢; linarith

-- Exact proof reused from Bridge/P06LinesP0r12_24.lean, line_P0r12_960.
theorem tangent0960 : ∀ s : ℝ, 0 < s →
    symmetricProfile luWangSource 1 s ≤ (((3246833372774980118262017/2000000000000000000000000 : ℚ)) : ℝ) + (((32833431554753767609933/200000000000000000000000 : ℚ)) : ℝ) * s := by
  intro s hs
  have h := (line_atS 553 562949953421312 2698641339213415 (by norm_num) (by norm_num) (by norm_num)
    (by decide +kernel) (by decide +kernel) (by decide +kernel) (by decide +kernel)
    16234166863874900591310085 10000000000000000000000000 (by norm_num) (by decide +kernel)
    1641671577737688380496650 10000000000000000000000000 (by norm_num) (by decide +kernel) s hs).1
  push_cast at h ⊢; linarith

-- Exact proof reused from Bridge/P06LinesP0r12_24.lean, line_P0r12_961.
theorem tangent0961 : ∀ s : ℝ, 0 < s →
    symmetricProfile luWangSource 1 s ≤ (((8125560259341354858929621/5000000000000000000000000 : ℚ)) : ℝ) + (((65525582517396747104319/400000000000000000000000 : ℚ)) : ℝ) * s := by
  intro s hs
  have h := (line_atS 552 562949953421312 2705678213631181 (by norm_num) (by norm_num) (by norm_num)
    (by decide +kernel) (by decide +kernel) (by decide +kernel) (by decide +kernel)
    16251120518682709717859242 10000000000000000000000000 (by norm_num) (by decide +kernel)
    1638139562934918677607975 10000000000000000000000000 (by norm_num) (by decide +kernel) s hs).1
  push_cast at h ⊢; linarith

-- Exact proof reused from Bridge/P06LinesP0r12_24.lean, line_P0r12_962.
theorem tangent0962 : ∀ s : ℝ, 0 < s →
    symmetricProfile luWangSource 1 s ≤ (((3253608609654688499789741/2000000000000000000000000 : ℚ)) : ℝ) + (((8173115949223327278887/50000000000000000000000 : ℚ)) : ℝ) * s := by
  intro s hs
  have h := (line_atS 551 562949953421312 2712715088048947 (by norm_num) (by norm_num) (by norm_num)
    (by decide +kernel) (by decide +kernel) (by decide +kernel) (by decide +kernel)
    16268043048273442498948705 10000000000000000000000000 (by norm_num) (by decide +kernel)
    1634623189844665455777400 10000000000000000000000000 (by norm_num) (by decide +kernel) s hs).1
  push_cast at h ⊢; linarith

-- Exact proof reused from Bridge/P06LinesP0r12_24.lean, line_P0r12_963.
theorem tangent0963 : ∀ s : ℝ, 0 < s →
    symmetricProfile luWangSource 1 s ≤ (((8142467250220165134839147/5000000000000000000000000 : ℚ)) : ℝ) + (((815561183750264694234979/5000000000000000000000000 : ℚ)) : ℝ) * s := by
  intro s hs
  have h := (line_atS 549 281474976710656 1359875981233357 (by norm_num) (by norm_num) (by norm_num)
    (by decide +kernel) (by decide +kernel) (by decide +kernel) (by decide +kernel)
    16284934500440330269678294 10000000000000000000000000 (by norm_num) (by decide +kernel)
    1631122367500529388469958 10000000000000000000000000 (by norm_num) (by decide +kernel) s hs).1
  push_cast at h ⊢; linarith

-- Exact proof reused from Bridge/P06LinesP0r12_24.lean, line_P0r12_964.
theorem tangent0964 : ∀ s : ℝ, 0 < s →
    symmetricProfile luWangSource 1 s ≤ (((16301794971299331498607371/10000000000000000000000000 : ℚ)) : ℝ) + (((203454624452712869599367/1250000000000000000000000 : ℚ)) : ℝ) * s := by
  intro s hs
  have h := (line_atS 548 32 155 (by norm_num) (by norm_num) (by norm_num)
    (by decide +kernel) (by decide +kernel) (by decide +kernel) (by decide +kernel)
    16301794971299331498607371 10000000000000000000000000 (by norm_num) (by decide +kernel)
    1627636995621702956794936 10000000000000000000000000 (by norm_num) (by decide +kernel) s hs).1
  push_cast at h ⊢; linarith

-- Exact proof reused from Bridge/P06LinesP0r12_24.lean, line_P0r12_965.
theorem tangent0965 : ∀ s : ℝ, 0 < s →
    symmetricProfile luWangSource 1 s ≤ (((16318624732668047667957837/10000000000000000000000000 : ℚ)) : ℝ) + (((1624166938495783430428427/10000000000000000000000000 : ℚ)) : ℝ) * s := by
  intro s hs
  have h := (line_atS 547 562949953421312 2733825711302247 (by norm_num) (by norm_num) (by norm_num)
    (by decide +kernel) (by decide +kernel) (by decide +kernel) (by decide +kernel)
    16318624732668047667957837 10000000000000000000000000 (by norm_num) (by decide +kernel)
    1624166938495783430428427 10000000000000000000000000 (by norm_num) (by decide +kernel) s hs).1
  push_cast at h ⊢; linarith

-- Exact proof reused from Bridge/P06LinesP0r12_26.lean, line_P0r12_1057.
theorem tangent1057 : ∀ s : ℝ, 0 < s →
    symmetricProfile luWangSource 1 s ≤ (((4441914694048733630079839/2500000000000000000000000 : ℚ)) : ℝ) + (((677984174410913153493361/5000000000000000000000000 : ℚ)) : ℝ) * s := by
  intro s hs
  have h := (line_atS 461 5984283599991283 36028797018963968 (by norm_num) (by norm_num) (by norm_num)
    (by decide +kernel) (by decide +kernel) (by decide +kernel) (by decide +kernel)
    17767658776194934520319356 10000000000000000000000000 (by norm_num) (by decide +kernel)
    1355968348821826306986722 10000000000000000000000000 (by norm_num) (by decide +kernel) s hs).1
  push_cast at h ⊢; linarith

-- Exact proof reused from Bridge/P06LinesP0r12_26.lean, line_P0r12_1058.
theorem tangent1058 : ∀ s : ℝ, 0 < s →
    symmetricProfile luWangSource 1 s ≤ (((641183212240243746780737/312500000000000000000000 : ℚ)) : ℝ) + (((48813493402069394592859/500000000000000000000000 : ℚ)) : ℝ) * s := by
  intro s hs
  have h := (line_atS 347 8225388058097113 72057594037927936 (by norm_num) (by norm_num) (by norm_num)
    (by decide +kernel) (by decide +kernel) (by decide +kernel) (by decide +kernel)
    20517862791687799896983584 10000000000000000000000000 (by norm_num) (by decide +kernel)
    976269868041387891857180 10000000000000000000000000 (by norm_num) (by decide +kernel) s hs).1
  push_cast at h ⊢; linarith

-- Exact proof reused from Bridge/P06LinesP0r12_26.lean, line_P0r12_1059.
theorem tangent1059 : ∀ s : ℝ, 0 < s →
    symmetricProfile luWangSource 1 s ≤ (((13502804056427765138035017/5000000000000000000000000 : ℚ)) : ℝ) + (((234626943012881140595061/5000000000000000000000000 : ℚ)) : ℝ) * s := by
  intro s hs
  have h := (line_atS 210 7393448872629333 144115188075855872 (by norm_num) (by norm_num) (by norm_num)
    (by decide +kernel) (by decide +kernel) (by decide +kernel) (by decide +kernel)
    27005608112855530276070034 10000000000000000000000000 (by norm_num) (by decide +kernel)
    469253886025762281190122 10000000000000000000000000 (by norm_num) (by decide +kernel) s hs).1
  push_cast at h ⊢; linarith

-- Exact proof reused from Bridge/P06LinesP0r12_26.lean, line_P0r12_1060.
theorem tangent1060 : ∀ s : ℝ, 0 < s →
    symmetricProfile luWangSource 1 s ≤ (((14415639973979219572125377/5000000000000000000000000 : ℚ)) : ℝ) + (((384874544007478070300363/10000000000000000000000000 : ℚ)) : ℝ) * s := by
  intro s hs
  have h := (line_atS 189 5983714536199119 144115188075855872 (by norm_num) (by norm_num) (by norm_num)
    (by decide +kernel) (by decide +kernel) (by decide +kernel) (by decide +kernel)
    28831279947958439144250754 10000000000000000000000000 (by norm_num) (by decide +kernel)
    384874544007478070300363 10000000000000000000000000 (by norm_num) (by decide +kernel) s hs).1
  push_cast at h ⊢; linarith

-- Exact proof reused from Bridge/P06LinesP0r12_26.lean, line_P0r12_1061.
theorem tangent1061 : ∀ s : ℝ, 0 < s →
    symmetricProfile luWangSource 1 s ≤ (((1539018673387793603525179/500000000000000000000000 : ℚ)) : ℝ) + (((156142491993957363631139/5000000000000000000000000 : ℚ)) : ℝ) * s := by
  intro s hs
  have h := (line_atS 171 149945493755047 4503599627370496 (by norm_num) (by norm_num) (by norm_num)
    (by decide +kernel) (by decide +kernel) (by decide +kernel) (by decide +kernel)
    30780373467755872070503580 10000000000000000000000000 (by norm_num) (by decide +kernel)
    312284983987914727262278 10000000000000000000000000 (by norm_num) (by decide +kernel) s hs).1
  push_cast at h ⊢; linarith

-- Exact proof reused from Bridge/P06LinesP0r12_26.lean, line_P0r12_1062.
theorem tangent1062 : ∀ s : ℝ, 0 < s →
    symmetricProfile luWangSource 1 s ≤ (((32861232401914861176076731/10000000000000000000000000 : ℚ)) : ℝ) + (((62615558553043637330321/2500000000000000000000000 : ℚ)) : ℝ) * s := by
  intro s hs
  have h := (line_atS 155 475757192828359 18014398509481984 (by norm_num) (by norm_num) (by norm_num)
    (by decide +kernel) (by decide +kernel) (by decide +kernel) (by decide +kernel)
    32861232401914861176076731 10000000000000000000000000 (by norm_num) (by decide +kernel)
    250462234212174549321284 10000000000000000000000000 (by norm_num) (by decide +kernel) s hs).1
  push_cast at h ⊢; linarith

-- Exact proof reused from Bridge/P06LinesP0r12_26.lean, line_P0r12_1063.
theorem tangent1063 : ∀ s : ℝ, 0 < s →
    symmetricProfile luWangSource 1 s ≤ (((18006437495543688293816367/5000000000000000000000000 : ℚ)) : ℝ) + (((90031651551261888495299/5000000000000000000000000 : ℚ)) : ℝ) * s := by
  intro s hs
  have h := (line_atS 141 1349971862528141 72057594037927936 (by norm_num) (by norm_num) (by norm_num)
    (by decide +kernel) (by decide +kernel) (by decide +kernel) (by decide +kernel)
    36012874991087376587632734 10000000000000000000000000 (by norm_num) (by decide +kernel)
    180063303102523776990598 10000000000000000000000000 (by norm_num) (by decide +kernel) s hs).1
  push_cast at h ⊢; linarith

-- Exact proof reused from Bridge/P06LinesP0r12_27.lean, line_P0r12_1092.
theorem tangent1092 : ∀ s : ℝ, 0 < s →
    symmetricProfile luWangSource 1 s ≤ (((943663549306101082148543/10000000000000000000000000 : ℚ)) : ℝ) + (((4161784467534876294353243/2000000000000000000000000 : ℚ)) : ℝ) * s := by
  intro s hs
  have h := (line_atS 338 562949953421312 5120753365465249 (by norm_num) (by norm_num) (by norm_num)
    (by decide +kernel) (by decide +kernel) (by decide +kernel) (by decide +kernel)
    20808922337674381471766215 10000000000000000000000000 (by norm_num) (by decide +kernel)
    943663549306101082148543 10000000000000000000000000 (by norm_num) (by decide +kernel) s hs).2
  push_cast at h ⊢; linarith

-- Exact proof reused from Bridge/P06LinesP0r12_27.lean, line_P0r12_1104.
theorem tangent1104 : ∀ s : ℝ, 0 < s →
    symmetricProfile luWangSource 1 s ≤ (((147623989482856111692469/1250000000000000000000000 : ℚ)) : ℝ) + (((9454246722919299970678463/5000000000000000000000000 : ℚ)) : ℝ) * s := by
  intro s hs
  have h := (line_atS 406 562949953421312 3978503327691889 (by norm_num) (by norm_num) (by norm_num)
    (by decide +kernel) (by decide +kernel) (by decide +kernel) (by decide +kernel)
    18908493445838599941356926 10000000000000000000000000 (by norm_num) (by decide +kernel)
    1180991915862848893539752 10000000000000000000000000 (by norm_num) (by decide +kernel) s hs).2
  push_cast at h ⊢; linarith

-- Exact proof reused from Bridge/P06LinesP0r12_27.lean, line_P0r12_1108.
theorem tangent1108 : ∀ s : ℝ, 0 < s →
    symmetricProfile luWangSource 1 s ≤ (((1313402554225786787931493/10000000000000000000000000 : ℚ)) : ℝ) + (((9014375806012817772519987/5000000000000000000000000 : ℚ)) : ℝ) * s := by
  intro s hs
  have h := (line_atS 448 1125899906842624 7036423273353731 (by norm_num) (by norm_num) (by norm_num)
    (by decide +kernel) (by decide +kernel) (by decide +kernel) (by decide +kernel)
    18028751612025635545039974 10000000000000000000000000 (by norm_num) (by decide +kernel)
    1313402554225786787931493 10000000000000000000000000 (by norm_num) (by decide +kernel) s hs).2
  push_cast at h ⊢; linarith

-- Exact proof reused from Bridge/P06LinesP0r12_27.lean, line_P0r12_1110.
theorem tangent1110 : ∀ s : ℝ, 0 < s →
    symmetricProfile luWangSource 1 s ≤ (((730329414738832022802087/5000000000000000000000000 : ℚ)) : ℝ) + (((686580864682220465533541/400000000000000000000000 : ℚ)) : ℝ) * s := by
  intro s hs
  have h := (line_atS 493 562949953421312 3104322760617201 (by norm_num) (by norm_num) (by norm_num)
    (by decide +kernel) (by decide +kernel) (by decide +kernel) (by decide +kernel)
    17164521617055511638338525 10000000000000000000000000 (by norm_num) (by decide +kernel)
    1460658829477664045604174 10000000000000000000000000 (by norm_num) (by decide +kernel) s hs).2
  push_cast at h ⊢; linarith

-- Exact proof reused from Bridge/P06LinesP0r12_27.lean, line_P0r12_1112.
theorem tangent1112 : ∀ s : ℝ, 0 < s →
    symmetricProfile luWangSource 1 s ≤ (((344642730366300512045401/2000000000000000000000000 : ℚ)) : ℝ) + (((15854627216168379189530017/10000000000000000000000000 : ℚ)) : ℝ) * s := by
  intro s hs
  have h := (line_atS 581 1125899906842624 5088929657427735 (by norm_num) (by norm_num) (by norm_num)
    (by decide +kernel) (by decide +kernel) (by decide +kernel) (by decide +kernel)
    15854627216168379189530017 10000000000000000000000000 (by norm_num) (by decide +kernel)
    1723213651831502560227005 10000000000000000000000000 (by norm_num) (by decide +kernel) s hs).2
  push_cast at h ⊢; linarith

-- Exact proof reused from Bridge/P06LinesP0r12_27.lean, line_P0r12_1116.
theorem tangent1116 : ∀ s : ℝ, 0 < s →
    symmetricProfile luWangSource 1 s ≤ (((783945877173492923958821/5000000000000000000000000 : ℚ)) : ℝ) + (((4149441794501208275396891/2500000000000000000000000 : ℚ)) : ℝ) * s := by
  intro s hs
  have h := (line_atS 528 562949953421312 2852421022292505 (by norm_num) (by norm_num) (by norm_num)
    (by decide +kernel) (by decide +kernel) (by decide +kernel) (by decide +kernel)
    16597767178004833101587564 10000000000000000000000000 (by norm_num) (by decide +kernel)
    1567891754346985847917642 10000000000000000000000000 (by norm_num) (by decide +kernel) s hs).2
  push_cast at h ⊢; linarith

-- Exact proof reused from Bridge/P06LinesP0r12_28.lean, line_P0r12_1120.
theorem tangent1120 : ∀ s : ℝ, 0 < s →
    symmetricProfile luWangSource 1 s ≤ (((21061830143292832757657771/10000000000000000000000000 : ℚ)) : ℝ) + (((916306723346531651985831/10000000000000000000000000 : ℚ)) : ℝ) * s := by
  intro s hs
  have h := (line_atS 330 479302433154999 4503599627370496 (by norm_num) (by norm_num) (by norm_num)
    (by decide +kernel) (by decide +kernel) (by decide +kernel) (by decide +kernel)
    21061830143292832757657771 10000000000000000000000000 (by norm_num) (by decide +kernel)
    916306723346531651985831 10000000000000000000000000 (by norm_num) (by decide +kernel) s hs).1
  push_cast at h ⊢; linarith

-- Exact proof reused from Bridge/P06LinesP0r12_28.lean, line_P0r12_1123.
theorem tangent1123 : ∀ s : ℝ, 0 < s →
    symmetricProfile luWangSource 1 s ≤ (((3945628026337913382204871/2000000000000000000000000 : ℚ)) : ℝ) + (((1071243645473272363531283/10000000000000000000000000 : ℚ)) : ℝ) * s := by
  intro s hs
  have h := (line_atS 375 570358988408477 4503599627370496 (by norm_num) (by norm_num) (by norm_num)
    (by decide +kernel) (by decide +kernel) (by decide +kernel) (by decide +kernel)
    19728140131689566911024355 10000000000000000000000000 (by norm_num) (by decide +kernel)
    1071243645473272363531283 10000000000000000000000000 (by norm_num) (by decide +kernel) s hs).1
  push_cast at h ⊢; linarith

-- Exact proof reused from Bridge/P06LinesP0r12_28.lean, line_P0r12_1124.
theorem tangent1124 : ∀ s : ℝ, 0 < s →
    symmetricProfile luWangSource 1 s ≤ (((11096706000329893489296049/5000000000000000000000000 : ℚ)) : ℝ) + (((402053063857419008631757/5000000000000000000000000 : ℚ)) : ℝ) * s := by
  intro s hs
  have h := (line_atS 299 3324591163343973 36028797018963968 (by norm_num) (by norm_num) (by norm_num)
    (by decide +kernel) (by decide +kernel) (by decide +kernel) (by decide +kernel)
    22193412000659786978592098 10000000000000000000000000 (by norm_num) (by decide +kernel)
    804106127714838017263514 10000000000000000000000000 (by norm_num) (by decide +kernel) s hs).1
  push_cast at h ⊢; linarith

-- Exact proof reused from Bridge/P06LinesP0r12_28.lean, line_P0r12_1126.
theorem tangent1126 : ∀ s : ℝ, 0 < s →
    symmetricProfile luWangSource 1 s ≤ (((2053280410920220088109349/1250000000000000000000000 : ℚ)) : ℝ) + (((320437471968019114231603/2000000000000000000000000 : ℚ)) : ℝ) * s := by
  intro s hs
  have h := (line_atS 540 7298123073910525 36028797018963968 (by norm_num) (by norm_num) (by norm_num)
    (by decide +kernel) (by decide +kernel) (by decide +kernel) (by decide +kernel)
    16426243287361760704874792 10000000000000000000000000 (by norm_num) (by decide +kernel)
    1602187359840095571158015 10000000000000000000000000 (by norm_num) (by decide +kernel) s hs).1
  push_cast at h ⊢; linarith

-- Exact proof reused from Bridge/P06LinesP0r12_28.lean, line_P0r12_1127.
theorem tangent1127 : ∀ s : ℝ, 0 < s →
    symmetricProfile luWangSource 1 s ≤ (((273811759583813508186043/125000000000000000000000 : ℚ)) : ℝ) + (((166242065156557954731901/2000000000000000000000000 : ℚ)) : ℝ) * s := by
  intro s hs
  have h := (line_atS 307 3446632505262115 36028797018963968 (by norm_num) (by norm_num) (by norm_num)
    (by decide +kernel) (by decide +kernel) (by decide +kernel) (by decide +kernel)
    21904940766705080654883440 10000000000000000000000000 (by norm_num) (by decide +kernel)
    831210325782789773659505 10000000000000000000000000 (by norm_num) (by decide +kernel) s hs).1
  push_cast at h ⊢; linarith

structure WholeRow where
  source : Fin 130
  c : ℚ
  d : ℚ

def wholes : List WholeRow := [
  -- S0_238, existing tangent 117
  ⟨3, 1329002316235187855425983/10000000000000000000000000, 17931929973354275213872297/10000000000000000000000000⟩,
  -- S0_258, existing tangent 132
  ⟨6, 1682997085793369584947631/10000000000000000000000000, 16039026725297261491534141/10000000000000000000000000⟩,
  -- S0_265, existing tangent 140
  ⟨8, 1828009856601208256961447/10000000000000000000000000, 15397797099683570375497539/10000000000000000000000000⟩,
  -- S0_3904, existing tangent 994
  ⟨93, 8321282143195886632280237/5000000000000000000000000, 389770127391892721102143/2500000000000000000000000⟩,
  -- S0_3905, existing tangent 995
  ⟨94, 4215433516679169510787853/2500000000000000000000000, 189602191736962917994503/1250000000000000000000000⟩,
  -- S0_3906, existing tangent 996
  ⟨95, 1708379014459632883427891/1000000000000000000000000, 737693298033041368753/5000000000000000000000⟩,
  -- S0_3907, existing tangent 997
  ⟨96, 8654385265175676849413121/5000000000000000000000000, 717387950279519710410373/5000000000000000000000000⟩,
  -- S0_3908, existing tangent 998
  ⟨97, 17536713734868891501412811/10000000000000000000000000, 697486854014099815556987/5000000000000000000000000⟩,
  -- S0_3910, existing tangent 999
  ⟨99, 2250205648276592096943799/1250000000000000000000000, 263549646980110444024523/2000000000000000000000000⟩,
  -- S0_3911, existing tangent 1000
  ⟨100, 18238713017410658509447811/10000000000000000000000000, 320075467903044734720523/2500000000000000000000000⟩,
  -- S0_3912, existing tangent 1001
  ⟨101, 9239451424868628333562543/5000000000000000000000000, 1243617869599627554229641/10000000000000000000000000⟩,
  -- S0_3913, existing tangent 1002
  ⟨102, 9361127898773923530415639/5000000000000000000000000, 48307398254951352486939/400000000000000000000000⟩,
  -- S0_3914, existing tangent 1003
  ⟨103, 18968813516642186555941163/10000000000000000000000000, 1172491990411597951401321/10000000000000000000000000⟩,
  -- S0_3915, existing tangent 1004
  ⟨104, 19218618211394852166818101/10000000000000000000000000, 569013987942732488774401/5000000000000000000000000⟩,
  -- S0_3916, existing tangent 1005
  ⟨105, 19471712641979842397839449/10000000000000000000000000, 1104282078260528266863067/10000000000000000000000000⟩,
  -- S0_3918, existing tangent 1006
  ⟨107, 24984930717938157287701/12500000000000000000000, 1038902230763885010024629/10000000000000000000000000⟩,
  -- S0_3919, existing tangent 1007
  ⟨108, 4050234088367667907540269/2000000000000000000000000, 503623810475386366692193/5000000000000000000000000⟩,
  -- S0_3921, existing tangent 1009
  ⟨110, 10394033637403654758102881/5000000000000000000000000, 1513534929223488213643/16000000000000000000000⟩,
  -- S0_3923, existing tangent 1010
  ⟨112, 4267839651668912768526589/2000000000000000000000000, 13864112126385205932191/156250000000000000000000⟩,
  -- S0_3924, existing tangent 1011
  ⟨113, 5405054774572215505808469/2500000000000000000000000, 858940309126467888408709/10000000000000000000000000⟩,
  -- S0_3927, existing tangent 1012
  ⟨116, 11242841089524639914601123/5000000000000000000000000, 777621468307429355245401/10000000000000000000000000⟩,
  -- S0_3930, existing tangent 1013
  ⟨117, 23385789975515638584004321/10000000000000000000000000, 175459876052341085003079/2500000000000000000000000⟩,
  -- S0_3934, existing tangent 1014
  ⟨118, 24642230440396862170155773/10000000000000000000000000, 30463759865790178853029/500000000000000000000000⟩,
  -- S0_3937, existing tangent 1015
  ⟨119, 6407166358336230261136149/2500000000000000000000000, 109194957608147832980619/2000000000000000000000000⟩,
  -- S0_3964, existing tangent 1019
  ⟨125, 2280446054721525143540637/625000000000000000000000, 8570048697478554559689/500000000000000000000000⟩,
  -- S0_3970, existing tangent 1021
  ⟨126, 19733392060002514053293257/5000000000000000000000000, 62979445831627578093769/5000000000000000000000000⟩,
  -- S0_3971, existing tangent 1022
  ⟨127, 3998653133304602298172507/1000000000000000000000000, 119401232011432973279703/10000000000000000000000000⟩,
  -- S0_3978, existing tangent 1023
  ⟨128, 10955386096081669046265733/2500000000000000000000000, 16127696513240241214153/2000000000000000000000000⟩,
  -- S0_3984, existing tangent 1025
  ⟨129, 47400140984496864775348053/10000000000000000000000000, 56046840901463904375529/10000000000000000000000000⟩,
  -- S10_3909, existing tangent 1057
  ⟨98, 4441914694048733630079839/2500000000000000000000000, 677984174410913153493361/5000000000000000000000000⟩,
  -- S10_3920, existing tangent 1058
  ⟨109, 641183212240243746780737/312500000000000000000000, 48813493402069394592859/500000000000000000000000⟩,
  -- S10_3941, existing tangent 1059
  ⟨120, 13502804056427765138035017/5000000000000000000000000, 234626943012881140595061/5000000000000000000000000⟩,
  -- S10_3946, existing tangent 1060
  ⟨121, 14415639973979219572125377/5000000000000000000000000, 384874544007478070300363/10000000000000000000000000⟩,
  -- S10_3951, existing tangent 1061
  ⟨122, 1539018673387793603525179/500000000000000000000000, 156142491993957363631139/5000000000000000000000000⟩,
  -- S10_3956, existing tangent 1062
  ⟨123, 32861232401914861176076731/10000000000000000000000000, 62615558553043637330321/2500000000000000000000000⟩,
  -- S10_3963, existing tangent 1063
  ⟨124, 18006437495543688293816367/5000000000000000000000000, 90031651551261888495299/5000000000000000000000000⟩,
  -- S1_209, existing tangent 1092
  ⟨0, 943663549306101082148543/10000000000000000000000000, 4161784467534876294353243/2000000000000000000000000⟩,
  -- S1_228, existing tangent 1104
  ⟨1, 147623989482856111692469/1250000000000000000000000, 9454246722919299970678463/5000000000000000000000000⟩,
  -- S1_237, existing tangent 1108
  ⟨2, 1313402554225786787931493/10000000000000000000000000, 9014375806012817772519987/5000000000000000000000000⟩,
  -- S1_246, existing tangent 1110
  ⟨4, 730329414738832022802087/5000000000000000000000000, 686580864682220465533541/400000000000000000000000⟩,
  -- S1_260, existing tangent 1112
  ⟨7, 344642730366300512045401/2000000000000000000000000, 15854627216168379189530017/10000000000000000000000000⟩,
  -- S2_252, existing tangent 1116
  ⟨5, 783945877173492923958821/5000000000000000000000000, 4149441794501208275396891/2500000000000000000000000⟩,
  -- S2_3922, existing tangent 1120
  ⟨111, 21061830143292832757657771/10000000000000000000000000, 916306723346531651985831/10000000000000000000000000⟩,
  -- S3_3917, existing tangent 1123
  ⟨106, 3945628026337913382204871/2000000000000000000000000, 1071243645473272363531283/10000000000000000000000000⟩,
  -- S5_3926, existing tangent 1124
  ⟨115, 11096706000329893489296049/5000000000000000000000000, 402053063857419008631757/5000000000000000000000000⟩,
  -- S6_3903, existing tangent 1126
  ⟨92, 2053280410920220088109349/1250000000000000000000000, 320437471968019114231603/2000000000000000000000000⟩,
  -- S9_3925, existing tangent 1127
  ⟨114, 273811759583813508186043/125000000000000000000000, 166242065156557954731901/2000000000000000000000000⟩]

theorem wholes_length : wholes.length = 47 := by decide
def whole (i : Fin 47) : WholeRow := wholes[i.val]'(by rw [wholes_length]; exact i.isLt)

theorem whole_checks : ∀ i : Fin 47,
    (whole i).c ≤ SourceHull.A (whole i).source - HullCells.reserve ∧
    (whole i).d ≤ SourceHull.B (whole i).source - HullCells.reserve := by decide +kernel

theorem whole_tangent (i : Fin 47) {t : ℝ} (ht : 0 < t) :
    symmetricProfile luWangSource 1 t ≤ ((whole i).c : ℝ) + ((whole i).d : ℝ) * t := by
  fin_cases i
  · exact tangent0117 t ht
  · exact tangent0132 t ht
  · exact tangent0140 t ht
  · exact tangent0994 t ht
  · exact tangent0995 t ht
  · exact tangent0996 t ht
  · exact tangent0997 t ht
  · exact tangent0998 t ht
  · exact tangent0999 t ht
  · exact tangent1000 t ht
  · exact tangent1001 t ht
  · exact tangent1002 t ht
  · exact tangent1003 t ht
  · exact tangent1004 t ht
  · exact tangent1005 t ht
  · exact tangent1006 t ht
  · exact tangent1007 t ht
  · exact tangent1009 t ht
  · exact tangent1010 t ht
  · exact tangent1011 t ht
  · exact tangent1012 t ht
  · exact tangent1013 t ht
  · exact tangent1014 t ht
  · exact tangent1015 t ht
  · exact tangent1019 t ht
  · exact tangent1021 t ht
  · exact tangent1022 t ht
  · exact tangent1023 t ht
  · exact tangent1025 t ht
  · exact tangent1057 t ht
  · exact tangent1058 t ht
  · exact tangent1059 t ht
  · exact tangent1060 t ht
  · exact tangent1061 t ht
  · exact tangent1062 t ht
  · exact tangent1063 t ht
  · exact tangent1092 t ht
  · exact tangent1104 t ht
  · exact tangent1108 t ht
  · exact tangent1110 t ht
  · exact tangent1112 t ht
  · exact tangent1116 t ht
  · exact tangent1120 t ht
  · exact tangent1123 t ht
  · exact tangent1124 t ht
  · exact tangent1126 t ht
  · exact tangent1127 t ht

/-- **Whole-line grounding.** Every globally grounded hull source bounds
the actual symmetric Lu--Wang baseline at the common reserve. -/
theorem whole_bound (i : Fin 47) {t : ℝ} (ht : 0 < t) :
    symmetricProfile luWangSource 1 t ≤
      (SourceHull.A (whole i).source : ℝ) + (SourceHull.B (whole i).source : ℝ) * t -
        (HullCells.reserve : ℝ) * (1 + t) := by
  have ha : ((whole i).c : ℝ) ≤ (SourceHull.A (whole i).source : ℝ) - HullCells.reserve := by
    exact_mod_cast (whole_checks i).1
  have hb : ((whole i).d : ℝ) ≤ (SourceHull.B (whole i).source : ℝ) - HullCells.reserve := by
    exact_mod_cast (whole_checks i).2
  have h := whole_tangent i ht
  have hs := mul_le_mul_of_nonneg_right hb ht.le
  nlinarith only [h, ha, hs]

def groundCoefficients : List (ℚ × ℚ) := [
  (3246833372774980118262017/2000000000000000000000000, 32833431554753767609933/200000000000000000000000),
  (8125560259341354858929621/5000000000000000000000000, 65525582517396747104319/400000000000000000000000),
  (3253608609654688499789741/2000000000000000000000000, 8173115949223327278887/50000000000000000000000),
  (8142467250220165134839147/5000000000000000000000000, 815561183750264694234979/5000000000000000000000000),
  (16301794971299331498607371/10000000000000000000000000, 203454624452712869599367/1250000000000000000000000),
  (16318624732668047667957837/10000000000000000000000000, 1624166938495783430428427/10000000000000000000000000)]

theorem groundCoefficients_length : groundCoefficients.length = 6 := by decide
def groundCoefficient (i : Fin 6) : ℚ × ℚ :=
  groundCoefficients[i.val]'(by rw [groundCoefficients_length]; exact i.isLt)

theorem ground_tangent (i : Fin 6) {t : ℝ} (ht : 0 < t) :
    symmetricProfile luWangSource 1 t ≤
      ((groundCoefficient i).1 : ℝ) + ((groundCoefficient i).2 : ℝ) * t := by
  fin_cases i
  · exact tangent0960 t ht
  · exact tangent0961 t ht
  · exact tangent0962 t ht
  · exact tangent0963 t ht
  · exact tangent0964 t ht
  · exact tangent0965 t ht

theorem ground_checks : ∀ i : Fin 6,
    let R := HullCells.ground i
    let c := (groundCoefficient i).1
    let d := (groundCoefficient i).2
    c + d * R.lo ≤ SourceHull.A R.source - HullCells.reserve +
      (SourceHull.B R.source - HullCells.reserve) * R.lo ∧
    c + d * R.hi ≤ SourceHull.A R.source - HullCells.reserve +
      (SourceHull.B R.source - HullCells.reserve) * R.hi := by decide +kernel

/-- **Restricted grounding.** Each of the six grounded rows has a proved
baseline inequality on its actual closed ratio interval. -/
theorem ground_bound (i : Fin 6) {t : ℝ} (ht : 0 < t)
    (hinterval : t ∈ Set.Icc ((HullCells.ground i).lo : ℝ) (HullCells.ground i).hi) :
    symmetricProfile luWangSource 1 t ≤
      (SourceHull.A (HullCells.ground i).source : ℝ) +
      (SourceHull.B (HullCells.ground i).source : ℝ) * t - (HullCells.reserve : ℝ) * (1 + t) := by
  have hl : ((groundCoefficient i).1 : ℝ) + (groundCoefficient i).2 * (HullCells.ground i).lo ≤
      (SourceHull.A (HullCells.ground i).source : ℝ) - HullCells.reserve +
        ((SourceHull.B (HullCells.ground i).source : ℝ) - HullCells.reserve) * (HullCells.ground i).lo := by
    exact_mod_cast (ground_checks i).1
  have hr : ((groundCoefficient i).1 : ℝ) + (groundCoefficient i).2 * (HullCells.ground i).hi ≤
      (SourceHull.A (HullCells.ground i).source : ℝ) - HullCells.reserve +
        ((SourceHull.B (HullCells.ground i).source : ℝ) - HullCells.reserve) * (HullCells.ground i).hi := by
    exact_mod_cast (ground_checks i).2
  have h := SourceEnvelope.affine_le_on_interval hinterval.1 hinterval.2 hl hr
  have hb := ground_tangent i ht
  linarith only [hb, h]

/-- The 130 hull sources split into globally grounded and covered sources. -/
theorem source_classification : ∀ h : Fin 130,
    (∃ i : Fin 47, (whole i).source = h) ∨
    (∃ i : Fin 83, (HullCells.region i).source = h) := by decide +kernel

#print axioms whole_bound
#print axioms ground_bound
#print axioms source_classification

end DiagonalRamsey.HullGrounded
