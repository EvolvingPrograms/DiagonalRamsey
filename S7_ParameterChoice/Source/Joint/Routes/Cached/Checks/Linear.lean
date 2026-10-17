import S7_ParameterChoice.Source.Joint.Routes.Cached.Data
import S7_ParameterChoice.Source.Joint.Routes.RoutePrefixAdapter
import S7_ParameterChoice.Source.Joint.Routes.FastRouteExpZip
import S7_ParameterChoice.Source.Joint.Routes.FastRouteNoKnot
import S7_ParameterChoice.Source.Joint.Routes.FastRouteZip

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

theorem fastChecked100 : entries100.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries100 (routePrefixes entries100) (by decide +kernel)

theorem fastChecked101 : entries101.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries101 (routePrefixes entries101) (by decide +kernel)

theorem fastChecked102 : entries102.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries102 (routePrefixes entries102) (by decide +kernel)

theorem fastChecked103 : entries103.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries103 (routePrefixes entries103) (by decide +kernel)

theorem fastChecked104 : entries104.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries104 (routePrefixes entries104) (by decide +kernel)

theorem fastChecked105 : entries105.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries105 (routePrefixes entries105) (by decide +kernel)

theorem fastChecked106 : entries106.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries106 (routePrefixes entries106) (by decide +kernel)

theorem fastChecked107 : entries107.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries107 (routePrefixes entries107) (by decide +kernel)

theorem fastChecked108 : entries108.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries108 (routePrefixes entries108) (by decide +kernel)

theorem fastChecked109 : entries109.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries109 (routePrefixes entries109) (by decide +kernel)

theorem fastChecked110 : entries110.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries110 (routePrefixes entries110) (by decide +kernel)

theorem fastChecked111 : entries111.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries111 (routePrefixes entries111) (by decide +kernel)

theorem fastChecked112 : entries112.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries112 (routePrefixes entries112) (by decide +kernel)

theorem fastChecked113 : entries113.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries113 (routePrefixes entries113) (by decide +kernel)

theorem fastChecked114 : entries114.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries114 (routePrefixes entries114) (by decide +kernel)

theorem fastChecked115 : entries115.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries115 (routePrefixes entries115) (by decide +kernel)

theorem fastChecked116 : entries116.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries116 (routePrefixes entries116) (by decide +kernel)

theorem fastChecked117 : entries117.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries117 (routePrefixes entries117) (by decide +kernel)

theorem fastChecked118 : entries118.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries118 (routePrefixes entries118) (by decide +kernel)

theorem fastChecked119 : entries119.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries119 (routePrefixes entries119) (by decide +kernel)

theorem fastChecked120 : entries120.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries120 (routePrefixes entries120) (by decide +kernel)

theorem fastChecked121 : entries121.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries121 (routePrefixes entries121) (by decide +kernel)

theorem fastChecked122 : entries122.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries122 (routePrefixes entries122) (by decide +kernel)

theorem fastChecked123 : entries123.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries123 (routePrefixes entries123) (by decide +kernel)

theorem fastChecked124 : entries124.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries124 (routePrefixes entries124) (by decide +kernel)

theorem fastChecked125 : entries125.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries125 (routePrefixes entries125) (by decide +kernel)

theorem fastChecked126 : entries126.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries126 (routePrefixes entries126) (by decide +kernel)

theorem fastChecked127 : entries127.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries127 (routePrefixes entries127) (by decide +kernel)

theorem fastChecked128 : entries128.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries128 (routePrefixes entries128) (by decide +kernel)

theorem fastChecked129 : entries129.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries129 (routePrefixes entries129) (by decide +kernel)

theorem fastChecked130 : entries130.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries130 (routePrefixes entries130) (by decide +kernel)

theorem fastChecked131 : entries131.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries131 (routePrefixes entries131) (by decide +kernel)

theorem fastChecked132 : entries132.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries132 (routePrefixes entries132) (by decide +kernel)

theorem fastChecked133 : entries133.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries133 (routePrefixes entries133) (by decide +kernel)

theorem fastChecked134 : entries134.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries134 (routePrefixes entries134) (by decide +kernel)

theorem fastChecked135 : entries135.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries135 (routePrefixes entries135) (by decide +kernel)

theorem fastChecked136 : entries136.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries136 (routePrefixes entries136) (by decide +kernel)

theorem fastChecked137 : entries137.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries137 (routePrefixes entries137) (by decide +kernel)

theorem fastChecked138 : entries138.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries138 (routePrefixes entries138) (by decide +kernel)

theorem fastChecked139 : entries139.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries139 (routePrefixes entries139) (by decide +kernel)

theorem fastChecked140 : entries140.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries140 (routePrefixes entries140) (by decide +kernel)

theorem fastChecked141 : entries141.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries141 (routePrefixes entries141) (by decide +kernel)

theorem fastChecked142 : entries142.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries142 (routePrefixes entries142) (by decide +kernel)

theorem fastChecked143 : entries143.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries143 (routePrefixes entries143) (by decide +kernel)

theorem fastChecked144 : entries144.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries144 (routePrefixes entries144) (by decide +kernel)

theorem fastChecked145 : entries145.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries145 (routePrefixes entries145) (by decide +kernel)

theorem fastChecked146 : entries146.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries146 (routePrefixes entries146) (by decide +kernel)

end DiagonalRamsey.JointCachedRoutes
