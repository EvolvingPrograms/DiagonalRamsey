import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData
import S7_ParameterChoice.Source.Joint.FastRouteExpZip
import S7_ParameterChoice.Source.Joint.FastRouteNoKnot
import S7_ParameterChoice.Source.Joint.FastRouteZip

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

theorem fastChecked100 : entries100.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries100 prefixData100 (by decide +kernel)

theorem fastChecked101 : entries101.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries101 prefixData101 (by decide +kernel)

theorem fastChecked102 : entries102.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries102 prefixData102 (by decide +kernel)

theorem fastChecked103 : entries103.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries103 prefixData103 (by decide +kernel)

theorem fastChecked104 : entries104.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries104 prefixData104 (by decide +kernel)

theorem fastChecked105 : entries105.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries105 prefixData105 (by decide +kernel)

theorem fastChecked106 : entries106.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries106 prefixData106 (by decide +kernel)

theorem fastChecked107 : entries107.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries107 prefixData107 (by decide +kernel)

theorem fastChecked108 : entries108.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries108 prefixData108 (by decide +kernel)

theorem fastChecked109 : entries109.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries109 prefixData109 (by decide +kernel)

theorem fastChecked110 : entries110.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries110 prefixData110 (by decide +kernel)

theorem fastChecked111 : entries111.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries111 prefixData111 (by decide +kernel)

theorem fastChecked112 : entries112.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries112 prefixData112 (by decide +kernel)

theorem fastChecked113 : entries113.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries113 prefixData113 (by decide +kernel)

theorem fastChecked114 : entries114.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries114 prefixData114 (by decide +kernel)

theorem fastChecked115 : entries115.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries115 prefixData115 (by decide +kernel)

theorem fastChecked116 : entries116.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries116 prefixData116 (by decide +kernel)

theorem fastChecked117 : entries117.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries117 prefixData117 (by decide +kernel)

theorem fastChecked118 : entries118.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries118 prefixData118 (by decide +kernel)

theorem fastChecked119 : entries119.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries119 prefixData119 (by decide +kernel)

theorem fastChecked120 : entries120.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries120 prefixData120 (by decide +kernel)

theorem fastChecked121 : entries121.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries121 prefixData121 (by decide +kernel)

theorem fastChecked122 : entries122.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries122 prefixData122 (by decide +kernel)

theorem fastChecked123 : entries123.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries123 prefixData123 (by decide +kernel)

theorem fastChecked124 : entries124.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries124 prefixData124 (by decide +kernel)

theorem fastChecked125 : entries125.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries125 prefixData125 (by decide +kernel)

theorem fastChecked126 : entries126.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries126 prefixData126 (by decide +kernel)

theorem fastChecked127 : entries127.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries127 prefixData127 (by decide +kernel)

theorem fastChecked128 : entries128.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries128 prefixData128 (by decide +kernel)

theorem fastChecked129 : entries129.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries129 prefixData129 (by decide +kernel)

theorem fastChecked130 : entries130.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries130 prefixData130 (by decide +kernel)

theorem fastChecked131 : entries131.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries131 prefixData131 (by decide +kernel)

theorem fastChecked132 : entries132.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries132 prefixData132 (by decide +kernel)

theorem fastChecked133 : entries133.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries133 prefixData133 (by decide +kernel)

theorem fastChecked134 : entries134.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries134 prefixData134 (by decide +kernel)

theorem fastChecked135 : entries135.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries135 prefixData135 (by decide +kernel)

theorem fastChecked136 : entries136.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries136 prefixData136 (by decide +kernel)

theorem fastChecked137 : entries137.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries137 prefixData137 (by decide +kernel)

theorem fastChecked138 : entries138.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries138 prefixData138 (by decide +kernel)

theorem fastChecked139 : entries139.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries139 prefixData139 (by decide +kernel)

theorem fastChecked140 : entries140.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries140 prefixData140 (by decide +kernel)

theorem fastChecked141 : entries141.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries141 prefixData141 (by decide +kernel)

theorem fastChecked142 : entries142.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries142 prefixData142 (by decide +kernel)

theorem fastChecked143 : entries143.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries143 prefixData143 (by decide +kernel)

theorem fastChecked144 : entries144.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries144 prefixData144 (by decide +kernel)

theorem fastChecked145 : entries145.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries145 prefixData145 (by decide +kernel)

theorem fastChecked146 : entries146.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries146 prefixData146 (by decide +kernel)

end DiagonalRamsey.JointCachedRoutes
