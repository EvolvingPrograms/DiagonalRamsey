import S7_ParameterChoice.Source.Joint.RawCoverageLaw
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group3
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group10
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group18
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group31
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group38
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group43
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group44
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group50
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group59
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group66
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group76
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group83
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group90
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group96
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group125
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group136
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group140
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group143
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group151
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group152
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group153
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group156
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group157
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group160
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group161
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group162
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group164
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group165
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group166
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group171
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group173
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group175
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group190
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group194
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group198
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group566
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group571
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group576
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group581
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group586
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group591
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group596
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group601
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group606
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group611
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group616
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group621
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group626
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group630
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group633
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group636
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group639
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group642
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group645
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group647
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group649
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group651
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group653
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group655
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group657
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group659
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group661
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group663
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group665
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group667

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointRawSelector

def coverageRows20 : List CoverageRow := [
  (640, [.cached 554, .cached 563, .cached 568, .cached 577, .cached 583, .cached 591, .cached 598, .cached 605, .cached 610]),
  (641, [.cached 682, .cached 688, .cached 694]),
  (642, [.cached 442, .cached 454, .cached 466, .cached 477, .cached 491, .cached 505, .cached 9, .cached 528, .cached 540, .cached 555]),
  (643, [.cached 406, .cached 418, .cached 430]),
  (644, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows140 JointRemainingRoutes.length140 JointRemainingRoutes.checked140 23, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows143 JointRemainingRoutes.length143 JointRemainingRoutes.checked143 5]),
  (645, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows164 JointRemainingRoutes.length164 JointRemainingRoutes.checked164 4, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows165 JointRemainingRoutes.length165 JointRemainingRoutes.checked165 4, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows166 JointRemainingRoutes.length166 JointRemainingRoutes.checked166 4]),
  (646, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows566 JointRemainingRoutes.length566 JointRemainingRoutes.checked566 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows571 JointRemainingRoutes.length571 JointRemainingRoutes.checked571 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows576 JointRemainingRoutes.length576 JointRemainingRoutes.checked576 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows581 JointRemainingRoutes.length581 JointRemainingRoutes.checked581 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows586 JointRemainingRoutes.length586 JointRemainingRoutes.checked586 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows591 JointRemainingRoutes.length591 JointRemainingRoutes.checked591 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows596 JointRemainingRoutes.length596 JointRemainingRoutes.checked596 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows601 JointRemainingRoutes.length601 JointRemainingRoutes.checked601 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows606 JointRemainingRoutes.length606 JointRemainingRoutes.checked606 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows611 JointRemainingRoutes.length611 JointRemainingRoutes.checked611 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows616 JointRemainingRoutes.length616 JointRemainingRoutes.checked616 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows621 JointRemainingRoutes.length621 JointRemainingRoutes.checked621 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows626 JointRemainingRoutes.length626 JointRemainingRoutes.checked626 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows630 JointRemainingRoutes.length630 JointRemainingRoutes.checked630 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows633 JointRemainingRoutes.length633 JointRemainingRoutes.checked633 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows636 JointRemainingRoutes.length636 JointRemainingRoutes.checked636 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows639 JointRemainingRoutes.length639 JointRemainingRoutes.checked639 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows642 JointRemainingRoutes.length642 JointRemainingRoutes.checked642 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows645 JointRemainingRoutes.length645 JointRemainingRoutes.checked645 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows647 JointRemainingRoutes.length647 JointRemainingRoutes.checked647 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows649 JointRemainingRoutes.length649 JointRemainingRoutes.checked649 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows651 JointRemainingRoutes.length651 JointRemainingRoutes.checked651 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows653 JointRemainingRoutes.length653 JointRemainingRoutes.checked653 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows655 JointRemainingRoutes.length655 JointRemainingRoutes.checked655 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows657 JointRemainingRoutes.length657 JointRemainingRoutes.checked657 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows659 JointRemainingRoutes.length659 JointRemainingRoutes.checked659 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows661 JointRemainingRoutes.length661 JointRemainingRoutes.checked661 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows663 JointRemainingRoutes.length663 JointRemainingRoutes.checked663 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows665 JointRemainingRoutes.length665 JointRemainingRoutes.checked665 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows667 JointRemainingRoutes.length667 JointRemainingRoutes.checked667 0]),
  (647, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows136 JointRemainingRoutes.length136 JointRemainingRoutes.checked136 8]),
  (648, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows190 JointRemainingRoutes.length190 JointRemainingRoutes.checked190 1, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows194 JointRemainingRoutes.length194 JointRemainingRoutes.checked194 1, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows198 JointRemainingRoutes.length198 JointRemainingRoutes.checked198 0]),
  (649, [.cached 349]),
  (650, [.cached 388]),
  (651, [.cached 657, .cached 661, .cached 666, .cached 674]),
  (652, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows125 JointRemainingRoutes.length125 JointRemainingRoutes.checked125 19]),
  (653, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows171 JointRemainingRoutes.length171 JointRemainingRoutes.checked171 1, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows173 JointRemainingRoutes.length173 JointRemainingRoutes.checked173 2, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows175 JointRemainingRoutes.length175 JointRemainingRoutes.checked175 3]),
  (654, [.cached 328]),
  (655, [.cached 615, .cached 622, .cached 628]),
  (656, [.cached 321, .cached 329]),
  (657, [.cached 314]),
  (658, [.cached 478, .cached 492, .cached 506, .cached 10]),
  (659, [.cached 762, .cached 763, .cached 765, .cached 767, .cached 769, .cached 771, .cached 773, .cached 775, .cached 777]),
  (660, [.cached 300, .cached 308]),
  (661, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows96 JointRemainingRoutes.length96 JointRemainingRoutes.checked96 4]),
  (662, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows90 JointRemainingRoutes.length90 JointRemainingRoutes.checked90 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows96 JointRemainingRoutes.length96 JointRemainingRoutes.checked96 5]),
  (663, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows160 JointRemainingRoutes.length160 JointRemainingRoutes.checked160 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows161 JointRemainingRoutes.length161 JointRemainingRoutes.checked161 3, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows162 JointRemainingRoutes.length162 JointRemainingRoutes.checked162 7]),
  (664, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows151 JointRemainingRoutes.length151 JointRemainingRoutes.checked151 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows151 JointRemainingRoutes.length151 JointRemainingRoutes.checked151 10, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows152 JointRemainingRoutes.length152 JointRemainingRoutes.checked152 4, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows152 JointRemainingRoutes.length152 JointRemainingRoutes.checked152 12, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows153 JointRemainingRoutes.length153 JointRemainingRoutes.checked153 9]),
  (665, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows76 JointRemainingRoutes.length76 JointRemainingRoutes.checked76 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows83 JointRemainingRoutes.length83 JointRemainingRoutes.checked83 2]),
  (666, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows156 JointRemainingRoutes.length156 JointRemainingRoutes.checked156 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows157 JointRemainingRoutes.length157 JointRemainingRoutes.checked157 1, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows157 JointRemainingRoutes.length157 JointRemainingRoutes.checked157 10]),
  (667, [.cached 274]),
  (668, [.cached 27, .cached 64, .cached 101, .cached 137, .cached 170, .cached 201, .cached 227, .cached 245, .cached 259]),
  (669, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows3 JointRemainingRoutes.length3 JointRemainingRoutes.checked3 10, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows10 JointRemainingRoutes.length10 JointRemainingRoutes.checked10 17, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows18 JointRemainingRoutes.length18 JointRemainingRoutes.checked18 19, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows31 JointRemainingRoutes.length31 JointRemainingRoutes.checked31 2, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows38 JointRemainingRoutes.length38 JointRemainingRoutes.checked38 16, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows43 JointRemainingRoutes.length43 JointRemainingRoutes.checked43 30, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows50 JointRemainingRoutes.length50 JointRemainingRoutes.checked50 3, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows59 JointRemainingRoutes.length59 JointRemainingRoutes.checked59 17, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows66 JointRemainingRoutes.length66 JointRemainingRoutes.checked66 11]),
  (670, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows3 JointRemainingRoutes.length3 JointRemainingRoutes.checked3 11, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows10 JointRemainingRoutes.length10 JointRemainingRoutes.checked10 18, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows18 JointRemainingRoutes.length18 JointRemainingRoutes.checked18 20, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows31 JointRemainingRoutes.length31 JointRemainingRoutes.checked31 3, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows38 JointRemainingRoutes.length38 JointRemainingRoutes.checked38 17, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows43 JointRemainingRoutes.length43 JointRemainingRoutes.checked43 31, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows50 JointRemainingRoutes.length50 JointRemainingRoutes.checked50 4]),
  (671, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows3 JointRemainingRoutes.length3 JointRemainingRoutes.checked3 12, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows10 JointRemainingRoutes.length10 JointRemainingRoutes.checked10 19, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows18 JointRemainingRoutes.length18 JointRemainingRoutes.checked18 21, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows31 JointRemainingRoutes.length31 JointRemainingRoutes.checked31 4, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows38 JointRemainingRoutes.length38 JointRemainingRoutes.checked38 18, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows44 JointRemainingRoutes.length44 JointRemainingRoutes.checked44 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows50 JointRemainingRoutes.length50 JointRemainingRoutes.checked50 5, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows59 JointRemainingRoutes.length59 JointRemainingRoutes.checked59 18])]

theorem coverageChecked20 : coverageRows20.all CoverageRow.check = true := by decide +kernel

#print axioms coverageChecked20
end DiagonalRamsey.JointRawSelector
