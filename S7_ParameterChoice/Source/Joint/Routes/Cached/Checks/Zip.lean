import S7_ParameterChoice.Source.Joint.Routes.Cached.Data
import S7_ParameterChoice.Source.Joint.Routes.RoutePrefixAdapter
import S7_ParameterChoice.Source.Joint.Routes.FastRouteZip

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

theorem fastChecked30 : entries30.all (FastEntry.check expTable) = true :=
  zipChecks_imp expTable entries30 (routePrefixes entries30) (by decide +kernel)

theorem fastChecked31 : entries31.all (FastEntry.check expTable) = true :=
  zipChecks_imp expTable entries31 (routePrefixes entries31) (by decide +kernel)

theorem fastChecked32 : entries32.all (FastEntry.check expTable) = true :=
  zipChecks_imp expTable entries32 (routePrefixes entries32) (by decide +kernel)

theorem fastChecked33 : entries33.all (FastEntry.check expTable) = true :=
  zipChecks_imp expTable entries33 (routePrefixes entries33) (by decide +kernel)

theorem fastChecked34 : entries34.all (FastEntry.check expTable) = true :=
  zipChecks_imp expTable entries34 (routePrefixes entries34) (by decide +kernel)

theorem fastChecked35 : entries35.all (FastEntry.check expTable) = true :=
  zipChecks_imp expTable entries35 (routePrefixes entries35) (by decide +kernel)

theorem fastChecked36 : entries36.all (FastEntry.check expTable) = true :=
  zipChecks_imp expTable entries36 (routePrefixes entries36) (by decide +kernel)

theorem fastChecked37 : entries37.all (FastEntry.check expTable) = true :=
  zipChecks_imp expTable entries37 (routePrefixes entries37) (by decide +kernel)

theorem fastChecked38 : entries38.all (FastEntry.check expTable) = true :=
  zipChecks_imp expTable entries38 (routePrefixes entries38) (by decide +kernel)

theorem fastChecked39 : entries39.all (FastEntry.check expTable) = true :=
  zipChecks_imp expTable entries39 (routePrefixes entries39) (by decide +kernel)

end DiagonalRamsey.JointCachedRoutes
