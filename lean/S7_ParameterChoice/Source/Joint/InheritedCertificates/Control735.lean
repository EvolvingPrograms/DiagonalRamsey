import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate735
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (62281079645693/502236855550600 : ℚ), (5618157508003/10000000000 : ℚ), (-69773199439979/1000000000000 : ℚ)⟩,
  ⟨(62281079645693/502236855550600 : ℚ), (996633963939/7989336771520 : ℚ), (595788952497/10000000000 : ℚ), (-3746059897143/500000000000 : ℚ)⟩,
  ⟨(996633963939/7989336771520 : ℚ), (49062948869/389531027125 : ℚ), (196322113921/10000000000 : ℚ), (-2508949974591/1000000000000 : ℚ)⟩,
  ⟨(49062948869/389531027125 : ℚ), (566248783607/4438326838000 : ℚ), (43626713163/5000000000 : ℚ), (-1135187406259/1000000000000 : ℚ)⟩,
  ⟨(566248783607/4438326838000 : ℚ), (71886734816/554828392275 : ℚ), (21435078973/5000000000 : ℚ), (-142234655663/250000000000 : ℚ)⟩,
  ⟨(71886734816/554828392275 : ℚ), (166233646173/1260969526100 : ℚ), (4135404451/2000000000 : ℚ), (-70347920847/250000000000 : ℚ)⟩,
  ⟨(166233646173/1260969526100 : ℚ), (8752141671/65174658725 : ℚ), (4033663497/5000000000 : ℚ), (-23031607443/200000000000 : ℚ)⟩,
  ⟨(8752141671/65174658725 : ℚ), (70730610727/516872214700 : ℚ), (246367947/10000000000 : ℚ), (-10132337163/1000000000000 : ℚ)⟩,
  ⟨(70730610727/516872214700 : ℚ), (24935999121/178881469750 : ℚ), (-24611771/50000000 : ℚ), (15149568391/250000000000 : ℚ)⟩,
  ⟨(24935999121/178881469750 : ℚ), (9062050573/63881556050 : ℚ), (-1699996719/2000000000 : ℚ), (55235135903/500000000000 : ℚ)⟩,
  ⟨(9062050573/63881556050 : ℚ), (26719261333/185394218000 : ℚ), (-11055245837/10000000000 : ℚ), (73359237049/500000000000 : ℚ)⟩,
  ⟨(26719261333/185394218000 : ℚ), (9786212049/66980566000 : ℚ), (-12909188017/10000000000 : ℚ), (173437735431/1000000000000 : ℚ)⟩,
  ⟨(9786212049/66980566000 : ℚ), (6909491091/46770209500 : ℚ), (-14248799337/10000000000 : ℚ), (193010159529/1000000000000 : ℚ)⟩,
  ⟨(6909491091/46770209500 : ℚ), (2216120663/14879124175 : ℚ), (-15184203527/10000000000 : ℚ), (206829141711/1000000000000 : ℚ)⟩,
  ⟨(2216120663/14879124175 : ℚ), (80357663/536842250 : ℚ), (-7889684247/5000000000 : ℚ), (215693624363/1000000000000 : ℚ)⟩,
  ⟨(80357663/536842250 : ℚ), (26916489/179480950 : ℚ), (-16069263309/10000000000 : ℚ), (44006587633/200000000000 : ℚ)⟩,
  ⟨(26916489/179480950 : ℚ), (3/20 : ℚ), (-16105159499/10000000000 : ℚ), (44114253589/200000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (3894840501/20000000000 : ℚ), (-3/10 : ℚ), (13949693773/50000000000 : ℚ)⟩,
  ⟨(3894840501/20000000000 : ℚ), (3930736691/20000000000 : ℚ), (-26916489/89740475 : ℚ), (1001437677273304933/3589619000000000000 : ℚ)⟩,
  ⟨(3930736691/20000000000 : ℚ), (2110315753/10000000000 : ℚ), (-80357663/268421125 : ℚ), (427741311526630813/1533835000000000000 : ℚ)⟩,
  ⟨(2110315753/10000000000 : ℚ), (4815796473/20000000000 : ℚ), (-4432241326/14879124175 : ℚ), (165787003591536924933/595164967000000000000 : ℚ)⟩,
  ⟨(4815796473/20000000000 : ℚ), (5751200663/20000000000 : ℚ), (-6909491091/23385104750 : ℚ), (32502281427887326647/116925523750000000000 : ℚ)⟩,
  ⟨(5751200663/20000000000 : ℚ), (7090811983/20000000000 : ℚ), (-9786212049/33490283000 : ℚ), (185561766514494522627/669805660000000000000 : ℚ)⟩,
  ⟨(7090811983/20000000000 : ℚ), (8944754163/20000000000 : ℚ), (-26719261333/92697109000 : ℚ), (511004791756156332919/1853942180000000000000 : ℚ)⟩,
  ⟨(8944754163/20000000000 : ℚ), (2300003281/4000000000 : ℚ), (-9062050573/31940778025 : ℚ), (5461995589211777729/19962986265625000000 : ℚ)⟩,
  ⟨(2300003281/4000000000 : ℚ), (75388229/100000000 : ℚ), (-24935999121/89440734875 : ℚ), (48437524480995824869/178881469750000000000 : ℚ)⟩,
  ⟨(75388229/100000000 : ℚ), (20246367947/20000000000 : ℚ), (-70730610727/258436107350 : ℚ), (344916683599899479627/1292180536750000000000 : ℚ)⟩,
  ⟨(20246367947/20000000000 : ℚ), (14033663497/10000000000 : ℚ), (-17504283342/65174658725 : ℚ), (682381457713943289861/2606986349000000000000 : ℚ)⟩,
  ⟨(14033663497/10000000000 : ℚ), (8135404451/4000000000 : ℚ), (-166233646173/630484763050 : ℚ), (3213626348406440555847/12609695261000000000000 : ℚ)⟩,
  ⟨(8135404451/4000000000 : ℚ), (31435078973/10000000000 : ℚ), (-143773469632/554828392275 : ℚ), (1362897359012516679803/5548283922750000000000 : ℚ)⟩,
  ⟨(31435078973/10000000000 : ℚ), (53626713163/10000000000 : ℚ), (-566248783607/2219163419000 : ℚ), (5174397440595601123731/22191634190000000000000 : ℚ)⟩,
  ⟨(53626713163/10000000000 : ℚ), (216322113921/20000000000 : ℚ), (-98125897738/389531027125 : ℚ), (3361048833853069150161/15581241085000000000000 : ℚ)⟩,
  ⟨(216322113921/20000000000 : ℚ), (615788952497/20000000000 : ℚ), (-996633963939/3994668385760 : ℚ), (75727514928548520851679/399466838576000000000000 : ℚ)⟩,
  ⟨(615788952497/20000000000 : ℚ), (32/1 : ℚ), (-62281079645693/251118427775300 : ℚ), (144762785299486535001341/1004473711101200000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (712499/1000000 : ℚ)
  x := (246921557717/500000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (2/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(61957572411/500000000000 : ℚ), (5618157508003/10000000000 : ℚ), (-69773199439979/1000000000000 : ℚ), 12⟩,
    ⟨(31103787087/250000000000 : ℚ), (595788952497/10000000000 : ℚ), (-3746059897143/500000000000 : ℚ), 9⟩,
    ⟨(62697970273/500000000000 : ℚ), (196322113921/10000000000 : ℚ), (-2508949974591/1000000000000 : ℚ), 7⟩,
    ⟨(3170495753/25000000000 : ℚ), (43626713163/5000000000 : ℚ), (-1135187406259/1000000000000 : ℚ), 6⟩,
    ⟨(64316048897/500000000000 : ℚ), (21435078973/5000000000 : ℚ), (-142234655663/250000000000 : ℚ), 6⟩,
    ⟨(130763099137/1000000000000 : ℚ), (4135404451/2000000000 : ℚ), (-70347920847/250000000000 : ℚ), 5⟩,
    ⟨(66565470481/500000000000 : ℚ), (4033663497/5000000000 : ℚ), (-23031607443/200000000000 : ℚ), 5⟩,
    ⟨(135644628437/1000000000000 : ℚ), (246367947/10000000000 : ℚ), (-10132337163/1000000000000 : ℚ), 5⟩,
    ⟨(3455189049/25000000000 : ℚ), (-24611771/50000000 : ℚ), (15149568391/250000000000 : ℚ), 4⟩,
    ⟨(70360624717/500000000000 : ℚ), (-1699996719/2000000000 : ℚ), (55235135903/500000000000 : ℚ), 4⟩,
    ⟨(143089091259/1000000000000 : ℚ), (-11055245837/10000000000 : ℚ), (73359237049/500000000000 : ℚ), 4⟩,
    ⟨(72610046301/500000000000 : ℚ), (-12909188017/10000000000 : ℚ), (173437735431/1000000000000 : ℚ), 4⟩,
    ⟨(36758090069/250000000000 : ℚ), (-14248799337/10000000000 : ℚ), (193010159529/1000000000000 : ℚ), 4⟩,
    ⟨(148456249851/1000000000000 : ℚ), (-15184203527/10000000000 : ℚ), (206829141711/1000000000000 : ℚ), 4⟩,
    ⟨(149437042049/1000000000000 : ℚ), (-7889684247/5000000000 : ℚ), (215693624363/1000000000000 : ℚ), 4⟩,
    ⟨(5997481823/40000000000 : ℚ), (-16069263309/10000000000 : ℚ), (44006587633/200000000000 : ℚ), 4⟩,
    ⟨(3/20 : ℚ), (-16105159499/10000000000 : ℚ), (44114253589/200000000000 : ℚ), 4⟩]
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem row0 : JointControlDomain.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by decide +kernel
theorem row1 : JointControlDomain.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by decide +kernel
theorem row2 : JointControlDomain.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by decide +kernel
theorem row3 : JointControlDomain.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by decide +kernel
theorem row4 : JointControlDomain.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by decide +kernel
theorem row5 : JointControlDomain.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by decide +kernel
theorem row6 : JointControlDomain.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by decide +kernel
theorem row7 : JointControlDomain.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by decide +kernel
theorem row8 : JointControlDomain.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by decide +kernel
theorem row9 : JointControlDomain.rowCheck data (data.tangents.get ⟨9, by decide⟩) = true := by decide +kernel
theorem row10 : JointControlDomain.rowCheck data (data.tangents.get ⟨10, by decide⟩) = true := by decide +kernel
theorem row11 : JointControlDomain.rowCheck data (data.tangents.get ⟨11, by decide⟩) = true := by decide +kernel
theorem row12 : JointControlDomain.rowCheck data (data.tangents.get ⟨12, by decide⟩) = true := by decide +kernel
theorem row13 : JointControlDomain.rowCheck data (data.tangents.get ⟨13, by decide⟩) = true := by decide +kernel
theorem row14 : JointControlDomain.rowCheck data (data.tangents.get ⟨14, by decide⟩) = true := by decide +kernel
theorem row15 : JointControlDomain.rowCheck data (data.tangents.get ⟨15, by decide⟩) = true := by decide +kernel
theorem row16 : JointControlDomain.rowCheck data (data.tangents.get ⟨16, by decide⟩) = true := by decide +kernel
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i
  · exact row0
  · exact row1
  · exact row2
  · exact row3
  · exact row4
  · exact row5
  · exact row6
  · exact row7
  · exact row8
  · exact row9
  · exact row10
  · exact row11
  · exact row12
  · exact row13
  · exact row14
  · exact row15
  · exact row16
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data := by decide +kernel
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true := by decide +kernel
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control735.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control735.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate735
