import S7_ParameterChoice.Source.Joint.Routes.Remaining.Rows

set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 100000

-- Bound pending kernel checks; parallelism comes from independent modules.
set_option Elab.async false

namespace DiagonalRamsey.JointRemainingRoutes
open DiagRamsey.V5 JointGeometry JointFamily JointCachedRoutes
open JointInheritedRoutes

theorem checked7 : rows7.all (Row.check expTable) = true := by decide +kernel

theorem length7 : rows7.length = 32 := by decide

def runs7 : List (Run expTable) := (List.finRange rows7.length).map (Run.ofGroup expTable rows7 checked7)

#print axioms checked7

theorem checked23 : rows23.all (Row.check expTable) = true := by decide +kernel

theorem length23 : rows23.length = 32 := by decide

def runs23 : List (Run expTable) := (List.finRange rows23.length).map (Run.ofGroup expTable rows23 checked23)

#print axioms checked23

theorem checked39 : rows39.all (Row.check expTable) = true := by decide +kernel

theorem length39 : rows39.length = 32 := by decide

def runs39 : List (Run expTable) := (List.finRange rows39.length).map (Run.ofGroup expTable rows39 checked39)

#print axioms checked39

theorem checked55 : rows55.all (Row.check expTable) = true := by decide +kernel

theorem length55 : rows55.length = 32 := by decide

def runs55 : List (Run expTable) := (List.finRange rows55.length).map (Run.ofGroup expTable rows55 checked55)

#print axioms checked55

theorem checked71 : rows71.all (Row.check expTable) = true := by decide +kernel

theorem length71 : rows71.length = 32 := by decide

def runs71 : List (Run expTable) := (List.finRange rows71.length).map (Run.ofGroup expTable rows71 checked71)

#print axioms checked71

theorem checked87 : rows87.all (Row.check expTable) = true := by decide +kernel

theorem length87 : rows87.length = 32 := by decide

def runs87 : List (Run expTable) := (List.finRange rows87.length).map (Run.ofGroup expTable rows87 checked87)

#print axioms checked87

theorem checked103 : rows103.all (Row.check expTable) = true := by decide +kernel

theorem length103 : rows103.length = 32 := by decide

def runs103 : List (Run expTable) := (List.finRange rows103.length).map (Run.ofGroup expTable rows103 checked103)

#print axioms checked103

theorem checked119 : rows119.all (Row.check expTable) = true := by decide +kernel

theorem length119 : rows119.length = 32 := by decide

def runs119 : List (Run expTable) := (List.finRange rows119.length).map (Run.ofGroup expTable rows119 checked119)

#print axioms checked119

theorem checked135 : rows135.all (Row.check expTable) = true := by decide +kernel

theorem length135 : rows135.length = 32 := by decide

def runs135 : List (Run expTable) := (List.finRange rows135.length).map (Run.ofGroup expTable rows135 checked135)

#print axioms checked135

theorem checked151 : rows151.all (Row.check expTable) = true := by decide +kernel

theorem length151 : rows151.length = 16 := by decide

def runs151 : List (Run expTable) := (List.finRange rows151.length).map (Run.ofGroup expTable rows151 checked151)

#print axioms checked151

theorem checked167 : rows167.all (Row.check expTable) = true := by decide +kernel

theorem length167 : rows167.length = 6 := by decide

def runs167 : List (Run expTable) := (List.finRange rows167.length).map (Run.ofGroup expTable rows167 checked167)

#print axioms checked167

theorem checked183 : rows183.all (Row.check expTable) = true := by decide +kernel

theorem length183 : rows183.length = 4 := by decide

def runs183 : List (Run expTable) := (List.finRange rows183.length).map (Run.ofGroup expTable rows183 checked183)

#print axioms checked183

theorem checked199 : rows199.all (Row.check expTable) = true := by decide +kernel

theorem length199 : rows199.length = 3 := by decide

def runs199 : List (Run expTable) := (List.finRange rows199.length).map (Run.ofGroup expTable rows199 checked199)

#print axioms checked199

theorem checked215 : rows215.all (Row.check expTable) = true := by decide +kernel

theorem length215 : rows215.length = 2 := by decide

def runs215 : List (Run expTable) := (List.finRange rows215.length).map (Run.ofGroup expTable rows215 checked215)

#print axioms checked215

theorem checked231 : rows231.all (Row.check expTable) = true := by decide +kernel

theorem length231 : rows231.length = 1 := by decide

def runs231 : List (Run expTable) := (List.finRange rows231.length).map (Run.ofGroup expTable rows231 checked231)

#print axioms checked231

theorem checked247 : rows247.all (Row.check expTable) = true := by decide +kernel

theorem length247 : rows247.length = 1 := by decide

def runs247 : List (Run expTable) := (List.finRange rows247.length).map (Run.ofGroup expTable rows247 checked247)

#print axioms checked247

theorem checked263 : rows263.all (Row.check expTable) = true := by decide +kernel

theorem length263 : rows263.length = 1 := by decide

def runs263 : List (Run expTable) := (List.finRange rows263.length).map (Run.ofGroup expTable rows263 checked263)

#print axioms checked263

theorem checked279 : rows279.all (Row.check expTable) = true := by decide +kernel

theorem length279 : rows279.length = 1 := by decide

def runs279 : List (Run expTable) := (List.finRange rows279.length).map (Run.ofGroup expTable rows279 checked279)

#print axioms checked279

theorem checked295 : rows295.all (Row.check expTable) = true := by decide +kernel

theorem length295 : rows295.length = 1 := by decide

def runs295 : List (Run expTable) := (List.finRange rows295.length).map (Run.ofGroup expTable rows295 checked295)

#print axioms checked295

theorem checked311 : rows311.all (Row.check expTable) = true := by decide +kernel

theorem length311 : rows311.length = 1 := by decide

def runs311 : List (Run expTable) := (List.finRange rows311.length).map (Run.ofGroup expTable rows311 checked311)

#print axioms checked311

theorem checked327 : rows327.all (Row.check expTable) = true := by decide +kernel

theorem length327 : rows327.length = 1 := by decide

def runs327 : List (Run expTable) := (List.finRange rows327.length).map (Run.ofGroup expTable rows327 checked327)

#print axioms checked327

theorem checked343 : rows343.all (Row.check expTable) = true := by decide +kernel

theorem length343 : rows343.length = 1 := by decide

def runs343 : List (Run expTable) := (List.finRange rows343.length).map (Run.ofGroup expTable rows343 checked343)

#print axioms checked343

theorem checked359 : rows359.all (Row.check expTable) = true := by decide +kernel

theorem length359 : rows359.length = 1 := by decide

def runs359 : List (Run expTable) := (List.finRange rows359.length).map (Run.ofGroup expTable rows359 checked359)

#print axioms checked359

theorem checked375 : rows375.all (Row.check expTable) = true := by decide +kernel

theorem length375 : rows375.length = 1 := by decide

def runs375 : List (Run expTable) := (List.finRange rows375.length).map (Run.ofGroup expTable rows375 checked375)

#print axioms checked375

theorem checked391 : rows391.all (Row.check expTable) = true := by decide +kernel

theorem length391 : rows391.length = 1 := by decide

def runs391 : List (Run expTable) := (List.finRange rows391.length).map (Run.ofGroup expTable rows391 checked391)

#print axioms checked391

theorem checked407 : rows407.all (Row.check expTable) = true := by decide +kernel

theorem length407 : rows407.length = 1 := by decide

def runs407 : List (Run expTable) := (List.finRange rows407.length).map (Run.ofGroup expTable rows407 checked407)

#print axioms checked407

theorem checked423 : rows423.all (Row.check expTable) = true := by decide +kernel

theorem length423 : rows423.length = 1 := by decide

def runs423 : List (Run expTable) := (List.finRange rows423.length).map (Run.ofGroup expTable rows423 checked423)

#print axioms checked423

theorem checked439 : rows439.all (Row.check expTable) = true := by decide +kernel

theorem length439 : rows439.length = 1 := by decide

def runs439 : List (Run expTable) := (List.finRange rows439.length).map (Run.ofGroup expTable rows439 checked439)

#print axioms checked439

theorem checked455 : rows455.all (Row.check expTable) = true := by decide +kernel

theorem length455 : rows455.length = 1 := by decide

def runs455 : List (Run expTable) := (List.finRange rows455.length).map (Run.ofGroup expTable rows455 checked455)

#print axioms checked455

theorem checked471 : rows471.all (Row.check expTable) = true := by decide +kernel

theorem length471 : rows471.length = 1 := by decide

def runs471 : List (Run expTable) := (List.finRange rows471.length).map (Run.ofGroup expTable rows471 checked471)

#print axioms checked471

theorem checked487 : rows487.all (Row.check expTable) = true := by decide +kernel

theorem length487 : rows487.length = 1 := by decide

def runs487 : List (Run expTable) := (List.finRange rows487.length).map (Run.ofGroup expTable rows487 checked487)

#print axioms checked487

theorem checked503 : rows503.all (Row.check expTable) = true := by decide +kernel

theorem length503 : rows503.length = 1 := by decide

def runs503 : List (Run expTable) := (List.finRange rows503.length).map (Run.ofGroup expTable rows503 checked503)

#print axioms checked503

theorem checked519 : rows519.all (Row.check expTable) = true := by decide +kernel

theorem length519 : rows519.length = 1 := by decide

def runs519 : List (Run expTable) := (List.finRange rows519.length).map (Run.ofGroup expTable rows519 checked519)

#print axioms checked519

theorem checked535 : rows535.all (Row.check expTable) = true := by decide +kernel

theorem length535 : rows535.length = 1 := by decide

def runs535 : List (Run expTable) := (List.finRange rows535.length).map (Run.ofGroup expTable rows535 checked535)

#print axioms checked535

theorem checked551 : rows551.all (Row.check expTable) = true := by decide +kernel

theorem length551 : rows551.length = 1 := by decide

def runs551 : List (Run expTable) := (List.finRange rows551.length).map (Run.ofGroup expTable rows551 checked551)

#print axioms checked551

theorem checked567 : rows567.all (Row.check expTable) = true := by decide +kernel

theorem length567 : rows567.length = 1 := by decide

def runs567 : List (Run expTable) := (List.finRange rows567.length).map (Run.ofGroup expTable rows567 checked567)

#print axioms checked567

theorem checked583 : rows583.all (Row.check expTable) = true := by decide +kernel

theorem length583 : rows583.length = 1 := by decide

def runs583 : List (Run expTable) := (List.finRange rows583.length).map (Run.ofGroup expTable rows583 checked583)

#print axioms checked583

theorem checked599 : rows599.all (Row.check expTable) = true := by decide +kernel

theorem length599 : rows599.length = 1 := by decide

def runs599 : List (Run expTable) := (List.finRange rows599.length).map (Run.ofGroup expTable rows599 checked599)

#print axioms checked599

theorem checked615 : rows615.all (Row.check expTable) = true := by decide +kernel

theorem length615 : rows615.length = 1 := by decide

def runs615 : List (Run expTable) := (List.finRange rows615.length).map (Run.ofGroup expTable rows615 checked615)

#print axioms checked615

theorem checked631 : rows631.all (Row.check expTable) = true := by decide +kernel

theorem length631 : rows631.length = 1 := by decide

def runs631 : List (Run expTable) := (List.finRange rows631.length).map (Run.ofGroup expTable rows631 checked631)

#print axioms checked631

theorem checked647 : rows647.all (Row.check expTable) = true := by decide +kernel

theorem length647 : rows647.length = 1 := by decide

def runs647 : List (Run expTable) := (List.finRange rows647.length).map (Run.ofGroup expTable rows647 checked647)

#print axioms checked647

theorem checked663 : rows663.all (Row.check expTable) = true := by decide +kernel

theorem length663 : rows663.length = 1 := by decide

def runs663 : List (Run expTable) := (List.finRange rows663.length).map (Run.ofGroup expTable rows663 checked663)

#print axioms checked663

end DiagonalRamsey.JointRemainingRoutes
