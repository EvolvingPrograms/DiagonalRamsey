import S7_ParameterChoice.Source.Joint.Routes.Remaining.Rows

set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 100000

-- Bound pending kernel checks; parallelism comes from independent modules.
set_option Elab.async false

namespace DiagonalRamsey.JointRemainingRoutes
open DiagRamsey.V5 JointGeometry JointFamily JointCachedRoutes
open JointInheritedRoutes

theorem checked0 : rows0.all (Row.check expTable) = true := by decide +kernel

theorem length0 : rows0.length = 32 := by decide

def runs0 : List (Run expTable) := (List.finRange rows0.length).map (Run.ofGroup expTable rows0 checked0)

#print axioms checked0

theorem checked16 : rows16.all (Row.check expTable) = true := by decide +kernel

theorem length16 : rows16.length = 32 := by decide

def runs16 : List (Run expTable) := (List.finRange rows16.length).map (Run.ofGroup expTable rows16 checked16)

#print axioms checked16

theorem checked32 : rows32.all (Row.check expTable) = true := by decide +kernel

theorem length32 : rows32.length = 32 := by decide

def runs32 : List (Run expTable) := (List.finRange rows32.length).map (Run.ofGroup expTable rows32 checked32)

#print axioms checked32

theorem checked48 : rows48.all (Row.check expTable) = true := by decide +kernel

theorem length48 : rows48.length = 32 := by decide

def runs48 : List (Run expTable) := (List.finRange rows48.length).map (Run.ofGroup expTable rows48 checked48)

#print axioms checked48

theorem checked64 : rows64.all (Row.check expTable) = true := by decide +kernel

theorem length64 : rows64.length = 32 := by decide

def runs64 : List (Run expTable) := (List.finRange rows64.length).map (Run.ofGroup expTable rows64 checked64)

#print axioms checked64

theorem checked80 : rows80.all (Row.check expTable) = true := by decide +kernel

theorem length80 : rows80.length = 32 := by decide

def runs80 : List (Run expTable) := (List.finRange rows80.length).map (Run.ofGroup expTable rows80 checked80)

#print axioms checked80

theorem checked96 : rows96.all (Row.check expTable) = true := by decide +kernel

theorem length96 : rows96.length = 32 := by decide

def runs96 : List (Run expTable) := (List.finRange rows96.length).map (Run.ofGroup expTable rows96 checked96)

#print axioms checked96

theorem checked112 : rows112.all (Row.check expTable) = true := by decide +kernel

theorem length112 : rows112.length = 32 := by decide

def runs112 : List (Run expTable) := (List.finRange rows112.length).map (Run.ofGroup expTable rows112 checked112)

#print axioms checked112

theorem checked128 : rows128.all (Row.check expTable) = true := by decide +kernel

theorem length128 : rows128.length = 32 := by decide

def runs128 : List (Run expTable) := (List.finRange rows128.length).map (Run.ofGroup expTable rows128 checked128)

#print axioms checked128

theorem checked144 : rows144.all (Row.check expTable) = true := by decide +kernel

theorem length144 : rows144.length = 32 := by decide

def runs144 : List (Run expTable) := (List.finRange rows144.length).map (Run.ofGroup expTable rows144 checked144)

#print axioms checked144

theorem checked160 : rows160.all (Row.check expTable) = true := by decide +kernel

theorem length160 : rows160.length = 8 := by decide

def runs160 : List (Run expTable) := (List.finRange rows160.length).map (Run.ofGroup expTable rows160 checked160)

#print axioms checked160

theorem checked176 : rows176.all (Row.check expTable) = true := by decide +kernel

theorem length176 : rows176.length = 5 := by decide

def runs176 : List (Run expTable) := (List.finRange rows176.length).map (Run.ofGroup expTable rows176 checked176)

#print axioms checked176

theorem checked192 : rows192.all (Row.check expTable) = true := by decide +kernel

theorem length192 : rows192.length = 3 := by decide

def runs192 : List (Run expTable) := (List.finRange rows192.length).map (Run.ofGroup expTable rows192 checked192)

#print axioms checked192

theorem checked208 : rows208.all (Row.check expTable) = true := by decide +kernel

theorem length208 : rows208.length = 2 := by decide

def runs208 : List (Run expTable) := (List.finRange rows208.length).map (Run.ofGroup expTable rows208 checked208)

#print axioms checked208

theorem checked224 : rows224.all (Row.check expTable) = true := by decide +kernel

theorem length224 : rows224.length = 1 := by decide

def runs224 : List (Run expTable) := (List.finRange rows224.length).map (Run.ofGroup expTable rows224 checked224)

#print axioms checked224

theorem checked240 : rows240.all (Row.check expTable) = true := by decide +kernel

theorem length240 : rows240.length = 1 := by decide

def runs240 : List (Run expTable) := (List.finRange rows240.length).map (Run.ofGroup expTable rows240 checked240)

#print axioms checked240

theorem checked256 : rows256.all (Row.check expTable) = true := by decide +kernel

theorem length256 : rows256.length = 1 := by decide

def runs256 : List (Run expTable) := (List.finRange rows256.length).map (Run.ofGroup expTable rows256 checked256)

#print axioms checked256

theorem checked272 : rows272.all (Row.check expTable) = true := by decide +kernel

theorem length272 : rows272.length = 1 := by decide

def runs272 : List (Run expTable) := (List.finRange rows272.length).map (Run.ofGroup expTable rows272 checked272)

#print axioms checked272

theorem checked288 : rows288.all (Row.check expTable) = true := by decide +kernel

theorem length288 : rows288.length = 1 := by decide

def runs288 : List (Run expTable) := (List.finRange rows288.length).map (Run.ofGroup expTable rows288 checked288)

#print axioms checked288

theorem checked304 : rows304.all (Row.check expTable) = true := by decide +kernel

theorem length304 : rows304.length = 1 := by decide

def runs304 : List (Run expTable) := (List.finRange rows304.length).map (Run.ofGroup expTable rows304 checked304)

#print axioms checked304

theorem checked320 : rows320.all (Row.check expTable) = true := by decide +kernel

theorem length320 : rows320.length = 1 := by decide

def runs320 : List (Run expTable) := (List.finRange rows320.length).map (Run.ofGroup expTable rows320 checked320)

#print axioms checked320

theorem checked336 : rows336.all (Row.check expTable) = true := by decide +kernel

theorem length336 : rows336.length = 1 := by decide

def runs336 : List (Run expTable) := (List.finRange rows336.length).map (Run.ofGroup expTable rows336 checked336)

#print axioms checked336

theorem checked352 : rows352.all (Row.check expTable) = true := by decide +kernel

theorem length352 : rows352.length = 1 := by decide

def runs352 : List (Run expTable) := (List.finRange rows352.length).map (Run.ofGroup expTable rows352 checked352)

#print axioms checked352

theorem checked368 : rows368.all (Row.check expTable) = true := by decide +kernel

theorem length368 : rows368.length = 1 := by decide

def runs368 : List (Run expTable) := (List.finRange rows368.length).map (Run.ofGroup expTable rows368 checked368)

#print axioms checked368

theorem checked384 : rows384.all (Row.check expTable) = true := by decide +kernel

theorem length384 : rows384.length = 1 := by decide

def runs384 : List (Run expTable) := (List.finRange rows384.length).map (Run.ofGroup expTable rows384 checked384)

#print axioms checked384

theorem checked400 : rows400.all (Row.check expTable) = true := by decide +kernel

theorem length400 : rows400.length = 1 := by decide

def runs400 : List (Run expTable) := (List.finRange rows400.length).map (Run.ofGroup expTable rows400 checked400)

#print axioms checked400

theorem checked416 : rows416.all (Row.check expTable) = true := by decide +kernel

theorem length416 : rows416.length = 1 := by decide

def runs416 : List (Run expTable) := (List.finRange rows416.length).map (Run.ofGroup expTable rows416 checked416)

#print axioms checked416

theorem checked432 : rows432.all (Row.check expTable) = true := by decide +kernel

theorem length432 : rows432.length = 1 := by decide

def runs432 : List (Run expTable) := (List.finRange rows432.length).map (Run.ofGroup expTable rows432 checked432)

#print axioms checked432

theorem checked448 : rows448.all (Row.check expTable) = true := by decide +kernel

theorem length448 : rows448.length = 1 := by decide

def runs448 : List (Run expTable) := (List.finRange rows448.length).map (Run.ofGroup expTable rows448 checked448)

#print axioms checked448

theorem checked464 : rows464.all (Row.check expTable) = true := by decide +kernel

theorem length464 : rows464.length = 1 := by decide

def runs464 : List (Run expTable) := (List.finRange rows464.length).map (Run.ofGroup expTable rows464 checked464)

#print axioms checked464

theorem checked480 : rows480.all (Row.check expTable) = true := by decide +kernel

theorem length480 : rows480.length = 1 := by decide

def runs480 : List (Run expTable) := (List.finRange rows480.length).map (Run.ofGroup expTable rows480 checked480)

#print axioms checked480

theorem checked496 : rows496.all (Row.check expTable) = true := by decide +kernel

theorem length496 : rows496.length = 1 := by decide

def runs496 : List (Run expTable) := (List.finRange rows496.length).map (Run.ofGroup expTable rows496 checked496)

#print axioms checked496

theorem checked512 : rows512.all (Row.check expTable) = true := by decide +kernel

theorem length512 : rows512.length = 1 := by decide

def runs512 : List (Run expTable) := (List.finRange rows512.length).map (Run.ofGroup expTable rows512 checked512)

#print axioms checked512

theorem checked528 : rows528.all (Row.check expTable) = true := by decide +kernel

theorem length528 : rows528.length = 1 := by decide

def runs528 : List (Run expTable) := (List.finRange rows528.length).map (Run.ofGroup expTable rows528 checked528)

#print axioms checked528

theorem checked544 : rows544.all (Row.check expTable) = true := by decide +kernel

theorem length544 : rows544.length = 1 := by decide

def runs544 : List (Run expTable) := (List.finRange rows544.length).map (Run.ofGroup expTable rows544 checked544)

#print axioms checked544

theorem checked560 : rows560.all (Row.check expTable) = true := by decide +kernel

theorem length560 : rows560.length = 1 := by decide

def runs560 : List (Run expTable) := (List.finRange rows560.length).map (Run.ofGroup expTable rows560 checked560)

#print axioms checked560

theorem checked576 : rows576.all (Row.check expTable) = true := by decide +kernel

theorem length576 : rows576.length = 1 := by decide

def runs576 : List (Run expTable) := (List.finRange rows576.length).map (Run.ofGroup expTable rows576 checked576)

#print axioms checked576

theorem checked592 : rows592.all (Row.check expTable) = true := by decide +kernel

theorem length592 : rows592.length = 1 := by decide

def runs592 : List (Run expTable) := (List.finRange rows592.length).map (Run.ofGroup expTable rows592 checked592)

#print axioms checked592

theorem checked608 : rows608.all (Row.check expTable) = true := by decide +kernel

theorem length608 : rows608.length = 1 := by decide

def runs608 : List (Run expTable) := (List.finRange rows608.length).map (Run.ofGroup expTable rows608 checked608)

#print axioms checked608

theorem checked624 : rows624.all (Row.check expTable) = true := by decide +kernel

theorem length624 : rows624.length = 1 := by decide

def runs624 : List (Run expTable) := (List.finRange rows624.length).map (Run.ofGroup expTable rows624 checked624)

#print axioms checked624

theorem checked640 : rows640.all (Row.check expTable) = true := by decide +kernel

theorem length640 : rows640.length = 1 := by decide

def runs640 : List (Run expTable) := (List.finRange rows640.length).map (Run.ofGroup expTable rows640 checked640)

#print axioms checked640

theorem checked656 : rows656.all (Row.check expTable) = true := by decide +kernel

theorem length656 : rows656.length = 1 := by decide

def runs656 : List (Run expTable) := (List.finRange rows656.length).map (Run.ofGroup expTable rows656 checked656)

#print axioms checked656

theorem checked672 : rows672.all (Row.check expTable) = true := by decide +kernel

theorem length672 : rows672.length = 1 := by decide

def runs672 : List (Run expTable) := (List.finRange rows672.length).map (Run.ofGroup expTable rows672 checked672)

#print axioms checked672

end DiagonalRamsey.JointRemainingRoutes
