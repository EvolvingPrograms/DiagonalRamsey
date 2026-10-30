module

public import S7_ParameterChoice.Source.Joint.Assembly.RawCoverageLaw
public import S7_ParameterChoice.Source.Joint.Routes.Remaining.Certificates.Batch00
public import S7_ParameterChoice.Source.Joint.Routes.Remaining.Certificates.Batch01
public import S7_ParameterChoice.Source.Joint.Routes.Remaining.Certificates.Batch02
public import S7_ParameterChoice.Source.Joint.Routes.Remaining.Certificates.Batch03
public import S7_ParameterChoice.Source.Joint.Routes.Remaining.Certificates.Batch04
public import S7_ParameterChoice.Source.Joint.Routes.Remaining.Certificates.Batch05
public import S7_ParameterChoice.Source.Joint.Routes.Remaining.Certificates.Batch06
public import S7_ParameterChoice.Source.Joint.Routes.Remaining.Certificates.Batch07
public import S7_ParameterChoice.Source.Joint.Routes.Remaining.Certificates.Batch08
public import S7_ParameterChoice.Source.Joint.Routes.Remaining.Certificates.Batch09
public import S7_ParameterChoice.Source.Joint.Routes.Remaining.Certificates.Batch10
public import S7_ParameterChoice.Source.Joint.Routes.Remaining.Certificates.Batch11
public import S7_ParameterChoice.Source.Joint.Routes.Remaining.Certificates.Batch12
public import S7_ParameterChoice.Source.Joint.Routes.Remaining.Certificates.Batch13
public import S7_ParameterChoice.Source.Joint.Routes.Remaining.Certificates.Batch14
public import S7_ParameterChoice.Source.Joint.Routes.Remaining.Certificates.Batch15

@[expose] public section

set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 100000

-- Bound pending kernel checks; parallelism comes from independent modules.
set_option Elab.async false

namespace DiagonalRamsey.JointRawSelector

def batch06_route0 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows0 JointRemainingRoutes.length0 JointRemainingRoutes.checked0

def batch06_route1 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows1 JointRemainingRoutes.length1 JointRemainingRoutes.checked1

def batch06_route3 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows3 JointRemainingRoutes.length3 JointRemainingRoutes.checked3

def batch06_route4 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows4 JointRemainingRoutes.length4 JointRemainingRoutes.checked4

def batch06_route5 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows5 JointRemainingRoutes.length5 JointRemainingRoutes.checked5

def batch06_route6 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows6 JointRemainingRoutes.length6 JointRemainingRoutes.checked6

def batch06_route8 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows8 JointRemainingRoutes.length8 JointRemainingRoutes.checked8

def batch06_route11 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows11 JointRemainingRoutes.length11 JointRemainingRoutes.checked11

def batch06_route12 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows12 JointRemainingRoutes.length12 JointRemainingRoutes.checked12

def batch06_route13 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows13 JointRemainingRoutes.length13 JointRemainingRoutes.checked13

def batch06_route14 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows14 JointRemainingRoutes.length14 JointRemainingRoutes.checked14

def batch06_route15 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows15 JointRemainingRoutes.length15 JointRemainingRoutes.checked15

def batch06_route16 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows16 JointRemainingRoutes.length16 JointRemainingRoutes.checked16

def batch06_route17 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows17 JointRemainingRoutes.length17 JointRemainingRoutes.checked17

def batch06_route19 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows19 JointRemainingRoutes.length19 JointRemainingRoutes.checked19

def batch06_route20 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows20 JointRemainingRoutes.length20 JointRemainingRoutes.checked20

def batch06_route21 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows21 JointRemainingRoutes.length21 JointRemainingRoutes.checked21

def batch06_route22 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows22 JointRemainingRoutes.length22 JointRemainingRoutes.checked22

def batch06_route23 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows23 JointRemainingRoutes.length23 JointRemainingRoutes.checked23

def batch06_route24 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows24 JointRemainingRoutes.length24 JointRemainingRoutes.checked24

def batch06_route25 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows25 JointRemainingRoutes.length25 JointRemainingRoutes.checked25

def batch06_route26 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows26 JointRemainingRoutes.length26 JointRemainingRoutes.checked26

def batch06_route27 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows27 JointRemainingRoutes.length27 JointRemainingRoutes.checked27

def batch06_route29 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows29 JointRemainingRoutes.length29 JointRemainingRoutes.checked29

def batch06_route30 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows30 JointRemainingRoutes.length30 JointRemainingRoutes.checked30

def batch06_route31 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows31 JointRemainingRoutes.length31 JointRemainingRoutes.checked31

def batch06_route32 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows32 JointRemainingRoutes.length32 JointRemainingRoutes.checked32

def batch06_route33 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows33 JointRemainingRoutes.length33 JointRemainingRoutes.checked33

def batch06_route34 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows34 JointRemainingRoutes.length34 JointRemainingRoutes.checked34

def batch06_route35 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows35 JointRemainingRoutes.length35 JointRemainingRoutes.checked35

def batch06_route36 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows36 JointRemainingRoutes.length36 JointRemainingRoutes.checked36

def batch06_route37 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows37 JointRemainingRoutes.length37 JointRemainingRoutes.checked37

def batch06_route38 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows38 JointRemainingRoutes.length38 JointRemainingRoutes.checked38

def batch06_route39 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows39 JointRemainingRoutes.length39 JointRemainingRoutes.checked39

def batch06_route40 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows40 JointRemainingRoutes.length40 JointRemainingRoutes.checked40

def batch06_route41 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows41 JointRemainingRoutes.length41 JointRemainingRoutes.checked41

def batch06_route42 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows42 JointRemainingRoutes.length42 JointRemainingRoutes.checked42

def batch06_route44 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows44 JointRemainingRoutes.length44 JointRemainingRoutes.checked44

def batch06_route45 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows45 JointRemainingRoutes.length45 JointRemainingRoutes.checked45

def batch06_route46 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows46 JointRemainingRoutes.length46 JointRemainingRoutes.checked46

def batch06_route47 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows47 JointRemainingRoutes.length47 JointRemainingRoutes.checked47

def batch06_route48 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows48 JointRemainingRoutes.length48 JointRemainingRoutes.checked48

def batch06_route49 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows49 JointRemainingRoutes.length49 JointRemainingRoutes.checked49

def batch06_route51 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows51 JointRemainingRoutes.length51 JointRemainingRoutes.checked51

def batch06_route52 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows52 JointRemainingRoutes.length52 JointRemainingRoutes.checked52

def batch06_route53 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows53 JointRemainingRoutes.length53 JointRemainingRoutes.checked53

def batch06_route54 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows54 JointRemainingRoutes.length54 JointRemainingRoutes.checked54

def batch06_route55 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows55 JointRemainingRoutes.length55 JointRemainingRoutes.checked55

def batch06_route56 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows56 JointRemainingRoutes.length56 JointRemainingRoutes.checked56

def batch06_route58 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows58 JointRemainingRoutes.length58 JointRemainingRoutes.checked58

def batch06_route60 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows60 JointRemainingRoutes.length60 JointRemainingRoutes.checked60

def batch06_route61 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows61 JointRemainingRoutes.length61 JointRemainingRoutes.checked61

def batch06_route62 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows62 JointRemainingRoutes.length62 JointRemainingRoutes.checked62

def batch06_route63 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows63 JointRemainingRoutes.length63 JointRemainingRoutes.checked63

def batch06_route64 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows64 JointRemainingRoutes.length64 JointRemainingRoutes.checked64

def batch06_route65 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows65 JointRemainingRoutes.length65 JointRemainingRoutes.checked65

def batch06_route66 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows66 JointRemainingRoutes.length66 JointRemainingRoutes.checked66

def batch06_route67 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows67 JointRemainingRoutes.length67 JointRemainingRoutes.checked67

def batch06_route69 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows69 JointRemainingRoutes.length69 JointRemainingRoutes.checked69

def batch06_route70 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows70 JointRemainingRoutes.length70 JointRemainingRoutes.checked70

def batch06_route71 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows71 JointRemainingRoutes.length71 JointRemainingRoutes.checked71

def batch06_route72 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows72 JointRemainingRoutes.length72 JointRemainingRoutes.checked72

def batch06_route73 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows73 JointRemainingRoutes.length73 JointRemainingRoutes.checked73

def batch06_route74 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows74 JointRemainingRoutes.length74 JointRemainingRoutes.checked74

def batch06_route75 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows75 JointRemainingRoutes.length75 JointRemainingRoutes.checked75

def batch06_route76 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows76 JointRemainingRoutes.length76 JointRemainingRoutes.checked76

def batch06_route77 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows77 JointRemainingRoutes.length77 JointRemainingRoutes.checked77

def batch06_route78 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows78 JointRemainingRoutes.length78 JointRemainingRoutes.checked78

def batch06_route79 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows79 JointRemainingRoutes.length79 JointRemainingRoutes.checked79

def batch06_route80 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows80 JointRemainingRoutes.length80 JointRemainingRoutes.checked80

def batch06_route81 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows81 JointRemainingRoutes.length81 JointRemainingRoutes.checked81

def batch06_route82 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows82 JointRemainingRoutes.length82 JointRemainingRoutes.checked82

def batch06_route83 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows83 JointRemainingRoutes.length83 JointRemainingRoutes.checked83

def batch06_route85 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows85 JointRemainingRoutes.length85 JointRemainingRoutes.checked85

def batch06_route86 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows86 JointRemainingRoutes.length86 JointRemainingRoutes.checked86

def batch06_route87 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows87 JointRemainingRoutes.length87 JointRemainingRoutes.checked87

def batch06_route88 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows88 JointRemainingRoutes.length88 JointRemainingRoutes.checked88

def batch06_route90 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows90 JointRemainingRoutes.length90 JointRemainingRoutes.checked90

def batch06_route92 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows92 JointRemainingRoutes.length92 JointRemainingRoutes.checked92

def batch06_route93 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows93 JointRemainingRoutes.length93 JointRemainingRoutes.checked93

def batch06_route94 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows94 JointRemainingRoutes.length94 JointRemainingRoutes.checked94

def batch06_route95 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows95 JointRemainingRoutes.length95 JointRemainingRoutes.checked95

def batch06_route96 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows96 JointRemainingRoutes.length96 JointRemainingRoutes.checked96

def batch06_route97 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows97 JointRemainingRoutes.length97 JointRemainingRoutes.checked97

def batch06_route98 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows98 JointRemainingRoutes.length98 JointRemainingRoutes.checked98

def batch06_route99 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows99 JointRemainingRoutes.length99 JointRemainingRoutes.checked99

def batch06_route100 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows100 JointRemainingRoutes.length100 JointRemainingRoutes.checked100

def batch06_route101 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows101 JointRemainingRoutes.length101 JointRemainingRoutes.checked101

def batch06_route102 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows102 JointRemainingRoutes.length102 JointRemainingRoutes.checked102

def batch06_route103 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows103 JointRemainingRoutes.length103 JointRemainingRoutes.checked103

def batch06_route104 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows104 JointRemainingRoutes.length104 JointRemainingRoutes.checked104

def batch06_route105 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows105 JointRemainingRoutes.length105 JointRemainingRoutes.checked105

def batch06_route106 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows106 JointRemainingRoutes.length106 JointRemainingRoutes.checked106

def batch06_route108 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows108 JointRemainingRoutes.length108 JointRemainingRoutes.checked108

def batch06_route109 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows109 JointRemainingRoutes.length109 JointRemainingRoutes.checked109

def batch06_route110 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows110 JointRemainingRoutes.length110 JointRemainingRoutes.checked110

def batch06_route111 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows111 JointRemainingRoutes.length111 JointRemainingRoutes.checked111

def batch06_route112 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows112 JointRemainingRoutes.length112 JointRemainingRoutes.checked112

def batch06_route115 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows115 JointRemainingRoutes.length115 JointRemainingRoutes.checked115

def batch06_route116 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows116 JointRemainingRoutes.length116 JointRemainingRoutes.checked116

def batch06_route117 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows117 JointRemainingRoutes.length117 JointRemainingRoutes.checked117

def batch06_route118 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows118 JointRemainingRoutes.length118 JointRemainingRoutes.checked118

def batch06_route119 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows119 JointRemainingRoutes.length119 JointRemainingRoutes.checked119

def batch06_route121 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows121 JointRemainingRoutes.length121 JointRemainingRoutes.checked121

def batch06_route122 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows122 JointRemainingRoutes.length122 JointRemainingRoutes.checked122

def batch06_route123 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows123 JointRemainingRoutes.length123 JointRemainingRoutes.checked123

def batch06_route124 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows124 JointRemainingRoutes.length124 JointRemainingRoutes.checked124

def batch06_route125 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows125 JointRemainingRoutes.length125 JointRemainingRoutes.checked125

def batch06_route126 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows126 JointRemainingRoutes.length126 JointRemainingRoutes.checked126

def batch06_route128 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows128 JointRemainingRoutes.length128 JointRemainingRoutes.checked128

def batch06_route129 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows129 JointRemainingRoutes.length129 JointRemainingRoutes.checked129

def batch06_route132 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows132 JointRemainingRoutes.length132 JointRemainingRoutes.checked132

def batch06_route133 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows133 JointRemainingRoutes.length133 JointRemainingRoutes.checked133

def batch06_route134 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows134 JointRemainingRoutes.length134 JointRemainingRoutes.checked134

def batch06_route135 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows135 JointRemainingRoutes.length135 JointRemainingRoutes.checked135

def batch06_route136 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows136 JointRemainingRoutes.length136 JointRemainingRoutes.checked136

def batch06_route138 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows138 JointRemainingRoutes.length138 JointRemainingRoutes.checked138

def batch06_route139 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows139 JointRemainingRoutes.length139 JointRemainingRoutes.checked139

def batch06_route140 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows140 JointRemainingRoutes.length140 JointRemainingRoutes.checked140

def batch06_route141 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows141 JointRemainingRoutes.length141 JointRemainingRoutes.checked141

def batch06_route142 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows142 JointRemainingRoutes.length142 JointRemainingRoutes.checked142

def batch06_route143 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows143 JointRemainingRoutes.length143 JointRemainingRoutes.checked143

def batch06_route144 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows144 JointRemainingRoutes.length144 JointRemainingRoutes.checked144

def batch06_route145 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows145 JointRemainingRoutes.length145 JointRemainingRoutes.checked145

def batch06_route146 : Fin 31 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows146 JointRemainingRoutes.length146 JointRemainingRoutes.checked146

def batch06_route147 : Fin 27 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows147 JointRemainingRoutes.length147 JointRemainingRoutes.checked147

def batch06_route148 : Fin 24 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows148 JointRemainingRoutes.length148 JointRemainingRoutes.checked148

def batch06_route149 : Fin 20 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows149 JointRemainingRoutes.length149 JointRemainingRoutes.checked149

def batch06_route151 : Fin 16 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows151 JointRemainingRoutes.length151 JointRemainingRoutes.checked151

def batch06_route152 : Fin 14 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows152 JointRemainingRoutes.length152 JointRemainingRoutes.checked152

def batch06_route153 : Fin 13 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows153 JointRemainingRoutes.length153 JointRemainingRoutes.checked153

def batch06_route154 : Fin 13 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows154 JointRemainingRoutes.length154 JointRemainingRoutes.checked154

def batch06_route160 : Fin 8 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows160 JointRemainingRoutes.length160 JointRemainingRoutes.checked160

def batch06_route162 : Fin 8 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows162 JointRemainingRoutes.length162 JointRemainingRoutes.checked162

def batch06_route163 : Fin 8 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows163 JointRemainingRoutes.length163 JointRemainingRoutes.checked163

def batch06_route164 : Fin 7 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows164 JointRemainingRoutes.length164 JointRemainingRoutes.checked164

def batch06_route173 : Fin 5 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows173 JointRemainingRoutes.length173 JointRemainingRoutes.checked173

def batch06_route185 : Fin 4 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows185 JointRemainingRoutes.length185 JointRemainingRoutes.checked185

def batch06_route187 : Fin 3 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows187 JointRemainingRoutes.length187 JointRemainingRoutes.checked187

def batch06_route188 : Fin 3 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows188 JointRemainingRoutes.length188 JointRemainingRoutes.checked188

def batch06_route191 : Fin 3 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows191 JointRemainingRoutes.length191 JointRemainingRoutes.checked191

def batch06_route195 : Fin 3 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows195 JointRemainingRoutes.length195 JointRemainingRoutes.checked195

def batch06_route199 : Fin 3 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows199 JointRemainingRoutes.length199 JointRemainingRoutes.checked199

def batch06_route261 : Fin 1 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows261 JointRemainingRoutes.length261 JointRemainingRoutes.checked261

def batch06_route266 : Fin 1 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows266 JointRemainingRoutes.length266 JointRemainingRoutes.checked266

def batch06_route267 : Fin 1 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows267 JointRemainingRoutes.length267 JointRemainingRoutes.checked267

def batch06_route268 : Fin 1 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows268 JointRemainingRoutes.length268 JointRemainingRoutes.checked268

def batch06_route269 : Fin 1 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows269 JointRemainingRoutes.length269 JointRemainingRoutes.checked269

def coverageRows6 : List CoverageRow := [
  (192, [.cached 183, .cached 215, .cached 239, .cached 251, .cached 267]),
  (193, [.cached 184, .cached 216]),
  (194, [.cached 252]),
  (195, [.cached 285]),
  (196, [batch06_route36 11, batch06_route41 11]),
  (197, [batch06_route55 28, batch06_route64 17, batch06_route70 19, batch06_route74 15, batch06_route80 18]),
  (198, [batch06_route47 27, batch06_route55 29]),
  (199, [batch06_route70 20]),
  (200, [batch06_route36 12]),
  (201, [batch06_route64 18]),
  (202, [batch06_route80 19, batch06_route87 3]),
  (203, [batch06_route26 28]),
  (204, [batch06_route41 12, batch06_route47 28]),
  (205, [batch06_route70 21, batch06_route74 16]),
  (206, [batch06_route26 29, batch06_route36 13, batch06_route41 13]),
  (207, [batch06_route55 30]),
  (208, [batch06_route80 20, batch06_route87 4, batch06_route94 10, batch06_route100 21, batch06_route104 12]),
  (209, [batch06_route15 2, batch06_route26 30, batch06_route36 14, batch06_route41 14, batch06_route47 29]),
  (210, [batch06_route64 19]),
  (211, [batch06_route74 17]),
  (212, [batch06_route15 3, batch06_route26 31, batch06_route36 15, batch06_route41 15, batch06_route47 30, batch06_route55 31]),
  (213, [.cached 77, .cached 116, .cached 151]),
  (214, [.cached 217, .cached 240, .cached 253, .cached 268]),
  (215, [.cached 289]),
  (216, [.cached 0, .cached 42, .cached 78, .cached 117, .cached 152, .cached 185]),
  (217, [.cached 254]),
  (218, [.cached 293]),
  (219, [batch06_route0 0, batch06_route6 20, batch06_route15 4, batch06_route27 0, batch06_route36 16, batch06_route41 16, batch06_route47 31, batch06_route56 0, batch06_route64 20]),
  (220, [batch06_route87 5]),
  (221, [batch06_route148 3, batch06_route147 12, batch06_route147 13, batch06_route147 14, batch06_route147 15, batch06_route147 16, batch06_route147 17, batch06_route147 18, .leaf 408]),
  (222, [batch06_route0 1, batch06_route6 21, batch06_route15 5, batch06_route27 1, batch06_route36 17, batch06_route41 17, batch06_route48 0, batch06_route56 1]),
  (223, [batch06_route70 22])]

theorem coverageChecked6 : coverageRows6.all CoverageRow.check = true := by decide +kernel

#print axioms coverageChecked6

def coverageRows14 : List CoverageRow := [
  (448, [.cached 18, .cached 55, .cached 92, .cached 131]),
  (449, [batch06_route140 12, batch06_route128 3, batch06_route128 4, batch06_route115 0, batch06_route105 7, batch06_route105 8, batch06_route88 25, batch06_route81 28, batch06_route65 14, batch06_route42 23, batch06_route42 24, batch06_route42 25, batch06_route42 26, batch06_route16 31, batch06_route17 0, batch06_route17 1, .leaf 561, .leaf 562]),
  (450, [.cached 165]),
  (451, [batch06_route142 30, batch06_route124 29, batch06_route124 30, batch06_route108 6, batch06_route108 7, batch06_route101 13, batch06_route81 29, batch06_route81 30, batch06_route65 15, batch06_route65 16, batch06_route42 27, batch06_route17 2, batch06_route17 3, batch06_route17 4, .leaf 563, .leaf 564, .leaf 565, .leaf 566, .leaf 567]),
  (452, [batch06_route132 7, batch06_route132 8, batch06_route108 8, batch06_route108 9, batch06_route95 11, batch06_route81 31, batch06_route75 16, batch06_route65 17, batch06_route65 18, batch06_route42 28, batch06_route42 29, batch06_route8 5, .leaf 568, .leaf 569, .leaf 570, .leaf 571, .leaf 572]),
  (453, [batch06_route135 14, batch06_route135 15, batch06_route121 17, batch06_route115 1, batch06_route115 2, batch06_route88 26, batch06_route75 17, batch06_route58 6, batch06_route58 7, batch06_route37 18, batch06_route37 19, batch06_route8 6, batch06_route8 7, .leaf 573, .leaf 574, .leaf 575]),
  (454, [batch06_route124 31, batch06_route125 0, batch06_route125 1, batch06_route101 14, batch06_route101 15, batch06_route71 16, batch06_route58 8, batch06_route58 9, batch06_route37 20, batch06_route8 8, batch06_route1 15, batch06_route8 9, .leaf 576, .leaf 577, .leaf 578, .leaf 579, .leaf 580]),
  (455, [.leaf 581]),
  (456, [.leaf 582]),
  (457, [.leaf 583, .leaf 584]),
  (458, [batch06_route148 5, batch06_route144 12, batch06_route144 13, batch06_route145 21, batch06_route108 10, batch06_route108 11, batch06_route82 0, batch06_route49 10, batch06_route49 11, batch06_route37 21, batch06_route37 22, batch06_route8 10, .leaf 585, .leaf 586, .leaf 587, .leaf 588, .leaf 589]),
  (459, [.leaf 590]),
  (460, [.cached 19, .cached 56, .cached 93]),
  (461, [batch06_route147 3, batch06_route146 13, batch06_route140 13, batch06_route135 16, batch06_route95 12, batch06_route95 13, batch06_route95 14, batch06_route65 19, batch06_route29 30, batch06_route29 31, batch06_route8 11, .leaf 591, .leaf 592, .leaf 593, .leaf 594, .leaf 595]),
  (462, [.leaf 596]),
  (463, [.leaf 597]),
  (464, [.cached 20, .cached 57, .cached 94, .cached 132]),
  (465, [batch06_route148 6, batch06_route148 14, batch06_route142 31, batch06_route144 14, batch06_route125 2, batch06_route75 18, batch06_route75 19, batch06_route75 20, batch06_route49 12, batch06_route8 12, batch06_route8 13, .leaf 598, .leaf 599, .leaf 600, .leaf 601]),
  (466, [batch06_route153 6, batch06_route148 15, batch06_route149 2, batch06_route147 4, batch06_route135 17, batch06_route140 14, batch06_route115 3, batch06_route115 4, batch06_route65 20, batch06_route65 21, batch06_route58 10, batch06_route30 0, .leaf 602, .leaf 603, .leaf 604, .leaf 605]),
  (467, [.cached 21, .cached 58, .cached 95]),
  (468, [batch06_route148 7, batch06_route148 16]),
  (469, [batch06_route105 9, batch06_route101 16, batch06_route42 30, batch06_route42 31, batch06_route8 14, batch06_route8 15, .leaf 606, .leaf 607]),
  (470, [.leaf 608, .leaf 609, .leaf 610]),
  (471, [.cached 552, batch06_route146 14, batch06_route147 5]),
  (472, [batch06_route140 15, batch06_route88 27, batch06_route88 28, batch06_route30 1, batch06_route30 2, batch06_route30 3, .leaf 611, .leaf 612, .leaf 613]),
  (473, [batch06_route148 17, batch06_route149 3, batch06_route149 10, batch06_route149 18, batch06_route143 0, batch06_route144 15]),
  (474, [batch06_route75 21, batch06_route75 22, batch06_route1 16, batch06_route1 17, batch06_route1 18, .leaf 614, .leaf 615]),
  (475, [batch06_route65 22, batch06_route65 23, .leaf 616, .leaf 617]),
  (476, [batch06_route1 19, batch06_route8 16]),
  (477, [batch06_route49 13, batch06_route49 14, batch06_route49 15, .leaf 618]),
  (478, [batch06_route1 20]),
  (479, [batch06_route105 10, .cached 271, .cached 256, batch06_route37 23, .leaf 619])]

theorem coverageChecked14 : coverageRows14.all CoverageRow.check = true := by decide +kernel

#print axioms coverageChecked14

def coverageRows22 : List CoverageRow := [
  (704, [.leaf 786, .leaf 787]),
  (705, [batch06_route121 29, batch06_route121 30, batch06_route121 31, batch06_route122 0, batch06_route105 27, batch06_route105 28, batch06_route90 13, batch06_route90 14, batch06_route72 14, batch06_route72 15, batch06_route44 22, batch06_route44 23, .leaf 788, .leaf 789]),
  (706, [.leaf 790, .leaf 791]),
  (707, [batch06_route140 26, batch06_route128 26, batch06_route116 7, batch06_route116 8, batch06_route101 27, batch06_route83 19, batch06_route83 20, batch06_route83 21, batch06_route66 18, batch06_route44 24, batch06_route44 25, batch06_route44 26, batch06_route44 27, batch06_route19 29, batch06_route19 30, batch06_route19 31, batch06_route11 12, .leaf 792, .leaf 793]),
  (708, [.cached 515, .cached 529, .cached 541, .cached 556]),
  (709, [batch06_route125 27, batch06_route125 28, batch06_route116 9, batch06_route109 15, batch06_route83 22, batch06_route83 23, batch06_route83 24, batch06_route66 19, batch06_route66 20, batch06_route20 0, batch06_route20 1, batch06_route11 13, batch06_route20 2, .leaf 794, .leaf 795, .leaf 796]),
  (710, [batch06_route133 15, batch06_route133 16, batch06_route109 16, batch06_route109 17, batch06_route96 20, batch06_route76 20, batch06_route83 25, batch06_route66 21, batch06_route66 22, batch06_route44 28, batch06_route20 3, batch06_route20 4, .leaf 797, .leaf 798, .leaf 799, .leaf 800]),
  (711, [batch06_route173 3, batch06_route136 12, batch06_route116 10, batch06_route116 11, batch06_route96 21, batch06_route96 22, batch06_route76 21, batch06_route60 0, batch06_route60 1, batch06_route38 27, batch06_route38 28, batch06_route11 14, batch06_route11 15, .leaf 801, .leaf 802, .leaf 803]),
  (712, [.cached 31, .cached 67, .cached 105, .cached 140]),
  (713, [batch06_route125 29, batch06_route125 30, batch06_route101 28, batch06_route101 29, batch06_route72 16, batch06_route60 2, batch06_route60 3, batch06_route38 29, batch06_route11 16, batch06_route3 23, batch06_route11 17, .leaf 804, .leaf 805, .leaf 806, .leaf 807]),
  (714, [batch06_route3 24, batch06_route11 18, batch06_route20 5, batch06_route31 15]),
  (715, [batch06_route144 24, batch06_route109 18, batch06_route109 19, batch06_route109 20, batch06_route83 26, batch06_route60 4, batch06_route60 5, batch06_route38 30, batch06_route38 31, batch06_route11 19, .leaf 808, .leaf 809, .leaf 810, .leaf 811, .leaf 812]),
  (716, [.leaf 813, .leaf 814]),
  (717, [.leaf 815]),
  (718, [batch06_route136 13, batch06_route136 14, batch06_route96 23, batch06_route96 24, batch06_route72 17, batch06_route72 18, batch06_route39 0, batch06_route39 1, batch06_route11 20, .leaf 816, .leaf 817, .leaf 818, .leaf 819, .leaf 820]),
  (719, [.leaf 821, .leaf 822]),
  (720, [.leaf 823]),
  (721, [.leaf 824, .leaf 825]),
  (722, [batch06_route128 27, batch06_route125 31, batch06_route76 22, batch06_route76 23, batch06_route51 1, batch06_route51 2, batch06_route11 21, batch06_route11 22, .leaf 826, .leaf 827, .leaf 828, .leaf 829]),
  (723, [batch06_route133 17, batch06_route136 15, batch06_route116 12, batch06_route66 23, batch06_route66 24, batch06_route66 25, batch06_route31 16, .leaf 830, .leaf 831, .leaf 832, .leaf 833]),
  (724, [.cached 584, .cached 592, batch06_route126 0, batch06_route128 28, batch06_route105 29, batch06_route44 29, batch06_route44 30, batch06_route44 31, batch06_route11 23, batch06_route11 24, .leaf 834, .leaf 835]),
  (725, [.leaf 836]),
  (726, [batch06_route90 15, batch06_route90 16, batch06_route31 17, batch06_route31 18, .leaf 837, .leaf 838, .leaf 839]),
  (727, [batch06_route11 25, batch06_route20 6]),
  (728, [batch06_route76 24, batch06_route76 25, batch06_route11 26, batch06_route11 27, .leaf 840, .leaf 841]),
  (729, [batch06_route3 25]),
  (730, [batch06_route66 26, batch06_route66 27, .leaf 842, .leaf 843]),
  (731, [batch06_route51 3, batch06_route51 4, .leaf 844]),
  (732, [.leaf 845]),
  (733, [.leaf 846, .leaf 847]),
  (734, [batch06_route105 30, .cached 275, batch06_route39 2, .leaf 848]),
  (735, [.leaf 849, .leaf 850])]

theorem coverageChecked22 : coverageRows22.all CoverageRow.check = true := by decide +kernel

#print axioms coverageChecked22

def coverageRows30 : List CoverageRow := [
  (960, [batch06_route39 25, batch06_route32 28, batch06_route32 29, batch06_route32 30, batch06_route32 31, batch06_route33 0, batch06_route33 1, batch06_route33 2, batch06_route33 3, batch06_route39 26, batch06_route45 22, batch06_route33 4, batch06_route21 28, batch06_route21 29, batch06_route21 30, batch06_route33 5, batch06_route21 31, batch06_route33 6, batch06_route22 0, batch06_route22 1, batch06_route22 2, batch06_route22 3, batch06_route22 4, batch06_route22 5, batch06_route22 6, batch06_route22 7, batch06_route33 7, batch06_route39 27, batch06_route22 8, batch06_route22 9, batch06_route12 26, batch06_route22 10, batch06_route22 11, batch06_route22 12, batch06_route33 8, batch06_route22 13, batch06_route22 14, batch06_route22 15, batch06_route33 9, batch06_route33 10, .leaf 1004]),
  (961, [.cached 711, .cached 714, .cached 717]),
  (962, [batch06_route145 1, batch06_route145 2, batch06_route145 3, batch06_route145 4, batch06_route110 30, batch06_route117 28, batch06_route122 20, batch06_route117 29, batch06_route122 21, batch06_route110 31, batch06_route117 30, batch06_route122 22, batch06_route106 6, batch06_route111 0, batch06_route117 31, .leaf 1005]),
  (963, [.leaf 1006, batch06_route4 28, batch06_route12 27, .leaf 1007, batch06_route4 29, .leaf 1008, batch06_route4 30, batch06_route12 28, .leaf 1009, .leaf 1010]),
  (964, [batch06_route138 4, batch06_route138 5, batch06_route133 29, batch06_route133 30, batch06_route102 20, batch06_route102 21, batch06_route92 3, batch06_route97 31, batch06_route102 22, batch06_route98 0, batch06_route102 23, batch06_route85 2, batch06_route92 4, batch06_route98 1, batch06_route102 24, batch06_route98 2, batch06_route102 25, batch06_route92 5, batch06_route98 3, batch06_route102 26, batch06_route85 3, .leaf 1011]),
  (965, [.leaf 1012]),
  (966, [.leaf 1013]),
  (967, [.leaf 1014]),
  (968, [.leaf 1015]),
  (969, [.leaf 1016]),
  (970, [.leaf 1017]),
  (971, [.leaf 1018]),
  (972, [batch06_route122 23, batch06_route122 24, batch06_route118 0, batch06_route118 1, batch06_route118 2, batch06_route118 3, batch06_route118 4, batch06_route118 5, batch06_route118 6, batch06_route77 21, batch06_route77 22, batch06_route77 23, batch06_route67 25, batch06_route73 1, batch06_route77 24, batch06_route73 2, batch06_route77 25, batch06_route61 25, batch06_route67 26, batch06_route73 3, .leaf 1019]),
  (973, [.leaf 1020, .leaf 1021]),
  (974, [batch06_route143 21, batch06_route141 24, batch06_route141 25, batch06_route129 11, batch06_route129 12, batch06_route129 13, batch06_route126 14, batch06_route102 27, batch06_route98 4, batch06_route102 28, batch06_route45 23, batch06_route52 24, batch06_route45 24, batch06_route52 25, batch06_route45 25, batch06_route52 26, batch06_route52 27, batch06_route52 28, batch06_route39 28, batch06_route45 26, batch06_route52 29, batch06_route45 27, .leaf 1022, .leaf 1023]),
  (975, [.leaf 1024]),
  (976, [batch06_route185 2, batch06_route187 0]),
  (977, [batch06_route188 1, batch06_route191 2, batch06_route195 2, batch06_route199 1]),
  (978, [batch06_route129 14, batch06_route129 15, batch06_route129 16, batch06_route118 7, batch06_route118 8, batch06_route118 9, batch06_route111 1, batch06_route77 26, batch06_route77 27, batch06_route77 28, batch06_route77 29, batch06_route77 30, batch06_route77 31, batch06_route78 0, batch06_route78 1, batch06_route33 11, batch06_route22 16, batch06_route33 12, batch06_route22 17, batch06_route33 13, batch06_route33 14, batch06_route4 31, batch06_route12 29, batch06_route22 18, batch06_route12 30, batch06_route22 19, .leaf 1025, batch06_route5 0, batch06_route12 31, .leaf 1026]),
  (979, [.leaf 1027]),
  (980, [batch06_route141 26, batch06_route129 17, batch06_route111 2, batch06_route111 3, batch06_route111 4, batch06_route92 6, batch06_route98 5, batch06_route98 6, batch06_route98 7, batch06_route98 8, batch06_route52 30, batch06_route52 31, batch06_route53 0, batch06_route53 1, batch06_route53 2, batch06_route53 3, .leaf 1028, .leaf 1029]),
  (981, [.leaf 1030]),
  (982, [batch06_route129 18, batch06_route133 31, batch06_route138 6]),
  (983, [batch06_route143 22, batch06_route138 7, batch06_route126 15, batch06_route126 16, batch06_route111 5, batch06_route111 6, batch06_route111 7, batch06_route92 7, batch06_route73 4, batch06_route67 27, batch06_route73 5, batch06_route22 20, batch06_route22 21, batch06_route22 22, batch06_route22 23, batch06_route22 24, batch06_route22 25, batch06_route22 26, .leaf 1031]),
  (984, [.leaf 1032]),
  (985, [batch06_route134 0, batch06_route118 10, batch06_route122 25, batch06_route106 7, batch06_route106 8, batch06_route106 9, batch06_route92 8, batch06_route73 6, batch06_route73 7, batch06_route73 8, batch06_route53 4, batch06_route39 29, batch06_route45 28, .leaf 1033, .leaf 1034]),
  (986, [.leaf 1035, .leaf 1036, .leaf 1037]),
  (987, [batch06_route141 27, batch06_route141 28, batch06_route129 19, batch06_route118 11, batch06_route118 12, batch06_route106 10, batch06_route106 11, batch06_route92 9, batch06_route73 9, batch06_route67 28, batch06_route45 29, batch06_route45 30, batch06_route45 31, batch06_route22 27, batch06_route22 28, batch06_route22 29, batch06_route13 0, .leaf 1038, .leaf 1039]),
  (988, [.leaf 1040, .leaf 1041]),
  (989, [batch06_route126 17, batch06_route118 13, batch06_route102 29, batch06_route102 30, batch06_route102 31, batch06_route85 4, batch06_route78 2, batch06_route67 29, batch06_route67 30, batch06_route46 0, batch06_route22 30, batch06_route22 31, .leaf 1042, .leaf 1043, .leaf 1044]),
  (990, [batch06_route5 1, batch06_route13 1, batch06_route23 0, batch06_route33 15, batch06_route39 30, batch06_route46 1]),
  (991, [batch06_route147 9, batch06_route147 26, batch06_route148 10, batch06_route148 20])]

theorem coverageChecked30 : coverageRows30.all CoverageRow.check = true := by decide +kernel

#print axioms coverageChecked30

def coverageRows38 : List CoverageRow := [
  (1216, [batch06_route86 2]),
  (1217, [batch06_route160 6, batch06_route162 2, batch06_route163 6, batch06_route164 1]),
  (1218, [batch06_route79 1]),
  (1219, [.cached 281]),
  (1220, [.cached 40, .cached 75, .cached 114, .cached 149, .cached 181, .cached 212, .cached 236, .cached 249, .cached 264]),
  (1221, [.leaf 0]),
  (1222, [batch06_route5 27, batch06_route14 4, batch06_route24 19, batch06_route34 21, batch06_route40 18, batch06_route46 28, batch06_route54 14, batch06_route62 28]),
  (1223, [.leaf 1235]),
  (1224, [batch06_route62 29]),
  (1225, [batch06_route139 14, batch06_route139 15]),
  (1226, [batch06_route139 16, batch06_route134 7, batch06_route139 17, batch06_route139 18, batch06_route139 19]),
  (1227, [batch06_route69 0]),
  (1228, [batch06_route112 10, batch06_route119 14, batch06_route112 11, batch06_route112 12, batch06_route112 13, batch06_route112 14, batch06_route112 15, batch06_route112 16, batch06_route112 17, batch06_route112 18, batch06_route112 19, batch06_route112 20, batch06_route112 21, batch06_route112 22]),
  (1229, [.cached 730, .cached 731]),
  (1230, [batch06_route99 6, batch06_route99 7, batch06_route99 8, batch06_route99 9, batch06_route99 10, batch06_route93 4, batch06_route99 11, batch06_route93 5, batch06_route93 6, batch06_route93 7, batch06_route93 8, batch06_route86 3, batch06_route93 9, batch06_route86 4, batch06_route93 10, batch06_route99 12, batch06_route86 5, batch06_route86 6, batch06_route86 7, batch06_route79 2, batch06_route79 3, batch06_route86 8, batch06_route93 11]),
  (1231, [batch06_route86 9, batch06_route86 10, batch06_route86 11, batch06_route86 12, batch06_route86 13, batch06_route86 14, batch06_route86 15, batch06_route86 16, batch06_route86 17, batch06_route93 12, batch06_route86 18, batch06_route93 13, batch06_route93 14, batch06_route93 15, batch06_route93 16, batch06_route93 17, batch06_route99 13, batch06_route93 18, batch06_route93 19, batch06_route99 14, batch06_route99 15, .leaf 1236]),
  (1232, [batch06_route151 4, batch06_route151 14, batch06_route152 8, batch06_route153 3, batch06_route154 3]),
  (1233, [batch06_route146 1, batch06_route146 26, batch06_route146 2, batch06_route146 27, batch06_route69 1, batch06_route69 2, batch06_route69 3, batch06_route69 4, batch06_route69 5, batch06_route69 6, batch06_route73 25, batch06_route79 4, batch06_route69 7, batch06_route69 8, batch06_route62 30, batch06_route62 31, batch06_route63 0, batch06_route63 1, batch06_route69 9, batch06_route63 2, batch06_route63 3, batch06_route63 4, batch06_route63 5, batch06_route63 6, batch06_route63 7, batch06_route54 15, batch06_route63 8]),
  (1234, [batch06_route54 16, batch06_route54 17, batch06_route63 9, batch06_route63 10, batch06_route63 11, batch06_route63 12, batch06_route63 13, batch06_route63 14, .leaf 1237]),
  (1235, [.leaf 1238, .leaf 1239, .leaf 1240]),
  (1236, [batch06_route261 0, batch06_route266 0, batch06_route267 0, batch06_route268 0, batch06_route269 0]),
  (1237, [batch06_route148 2, batch06_route139 20, batch06_route142 10, batch06_route129 31, batch06_route134 8, batch06_route139 21, batch06_route142 11, batch06_route139 22, batch06_route34 22, batch06_route34 23, batch06_route34 24, batch06_route40 19, batch06_route34 25, batch06_route34 26, batch06_route34 27, batch06_route34 28, batch06_route34 29, batch06_route34 30, batch06_route34 31, batch06_route35 0, batch06_route40 20, batch06_route46 29, batch06_route35 1, batch06_route35 2, batch06_route35 3, batch06_route35 4, batch06_route35 5, batch06_route35 6, batch06_route35 7, batch06_route40 21, batch06_route24 20, batch06_route24 21, batch06_route24 22, batch06_route24 23, batch06_route24 24, batch06_route24 25, batch06_route24 26, batch06_route35 8]),
  (1238, [batch06_route24 27, batch06_route24 28, batch06_route24 29, batch06_route24 30, batch06_route24 31, batch06_route35 9, batch06_route25 0, batch06_route25 1, batch06_route35 10, .leaf 1241]),
  (1239, [batch06_route145 10, batch06_route145 11]),
  (1240, [batch06_route123 9, batch06_route106 28, batch06_route112 23, batch06_route119 15, batch06_route123 10, batch06_route119 16, batch06_route123 11, batch06_route112 24, batch06_route119 17, batch06_route123 12, batch06_route106 29, batch06_route112 25, batch06_route119 18, batch06_route123 13, batch06_route119 19, batch06_route123 14, .leaf 1242, batch06_route5 28, .leaf 1243, batch06_route5 29, batch06_route14 5, .leaf 1244, batch06_route5 30, .leaf 1245]),
  (1241, [.leaf 1246]),
  (1242, [batch06_route147 11, batch06_route134 9, batch06_route134 10, batch06_route103 18, batch06_route103 19, batch06_route103 20, batch06_route93 20, batch06_route99 16, batch06_route103 21, batch06_route99 17]),
  (1243, [batch06_route86 19]),
  (1244, [batch06_route99 18, .leaf 1247]),
  (1245, [.leaf 1248]),
  (1246, [.leaf 1249]),
  (1247, [.leaf 1250])]

theorem coverageChecked38 : coverageRows38.all CoverageRow.check = true := by decide +kernel

#print axioms coverageChecked38

end DiagonalRamsey.JointRawSelector
