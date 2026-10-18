import S7_ParameterChoice.Source.Joint.Assembly.RawCoverageLaw
import S7_ParameterChoice.Source.Joint.Routes.Remaining.Certificates.Batch00
import S7_ParameterChoice.Source.Joint.Routes.Remaining.Certificates.Batch01
import S7_ParameterChoice.Source.Joint.Routes.Remaining.Certificates.Batch02
import S7_ParameterChoice.Source.Joint.Routes.Remaining.Certificates.Batch03
import S7_ParameterChoice.Source.Joint.Routes.Remaining.Certificates.Batch04
import S7_ParameterChoice.Source.Joint.Routes.Remaining.Certificates.Batch05
import S7_ParameterChoice.Source.Joint.Routes.Remaining.Certificates.Batch06
import S7_ParameterChoice.Source.Joint.Routes.Remaining.Certificates.Batch07
import S7_ParameterChoice.Source.Joint.Routes.Remaining.Certificates.Batch08
import S7_ParameterChoice.Source.Joint.Routes.Remaining.Certificates.Batch09
import S7_ParameterChoice.Source.Joint.Routes.Remaining.Certificates.Batch10
import S7_ParameterChoice.Source.Joint.Routes.Remaining.Certificates.Batch11
import S7_ParameterChoice.Source.Joint.Routes.Remaining.Certificates.Batch12
import S7_ParameterChoice.Source.Joint.Routes.Remaining.Certificates.Batch13
import S7_ParameterChoice.Source.Joint.Routes.Remaining.Certificates.Batch14
import S7_ParameterChoice.Source.Joint.Routes.Remaining.Certificates.Batch15

set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 100000

-- Bound pending kernel checks; parallelism comes from independent modules.
set_option Elab.async false

namespace DiagonalRamsey.JointRawSelector

private def route0 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows0 JointRemainingRoutes.length0 JointRemainingRoutes.checked0

private def route1 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows1 JointRemainingRoutes.length1 JointRemainingRoutes.checked1

private def route3 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows3 JointRemainingRoutes.length3 JointRemainingRoutes.checked3

private def route4 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows4 JointRemainingRoutes.length4 JointRemainingRoutes.checked4

private def route5 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows5 JointRemainingRoutes.length5 JointRemainingRoutes.checked5

private def route6 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows6 JointRemainingRoutes.length6 JointRemainingRoutes.checked6

private def route8 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows8 JointRemainingRoutes.length8 JointRemainingRoutes.checked8

private def route11 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows11 JointRemainingRoutes.length11 JointRemainingRoutes.checked11

private def route12 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows12 JointRemainingRoutes.length12 JointRemainingRoutes.checked12

private def route13 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows13 JointRemainingRoutes.length13 JointRemainingRoutes.checked13

private def route14 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows14 JointRemainingRoutes.length14 JointRemainingRoutes.checked14

private def route15 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows15 JointRemainingRoutes.length15 JointRemainingRoutes.checked15

private def route16 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows16 JointRemainingRoutes.length16 JointRemainingRoutes.checked16

private def route17 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows17 JointRemainingRoutes.length17 JointRemainingRoutes.checked17

private def route19 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows19 JointRemainingRoutes.length19 JointRemainingRoutes.checked19

private def route20 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows20 JointRemainingRoutes.length20 JointRemainingRoutes.checked20

private def route21 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows21 JointRemainingRoutes.length21 JointRemainingRoutes.checked21

private def route22 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows22 JointRemainingRoutes.length22 JointRemainingRoutes.checked22

private def route23 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows23 JointRemainingRoutes.length23 JointRemainingRoutes.checked23

private def route24 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows24 JointRemainingRoutes.length24 JointRemainingRoutes.checked24

private def route25 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows25 JointRemainingRoutes.length25 JointRemainingRoutes.checked25

private def route26 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows26 JointRemainingRoutes.length26 JointRemainingRoutes.checked26

private def route27 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows27 JointRemainingRoutes.length27 JointRemainingRoutes.checked27

private def route29 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows29 JointRemainingRoutes.length29 JointRemainingRoutes.checked29

private def route30 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows30 JointRemainingRoutes.length30 JointRemainingRoutes.checked30

private def route31 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows31 JointRemainingRoutes.length31 JointRemainingRoutes.checked31

private def route32 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows32 JointRemainingRoutes.length32 JointRemainingRoutes.checked32

private def route33 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows33 JointRemainingRoutes.length33 JointRemainingRoutes.checked33

private def route34 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows34 JointRemainingRoutes.length34 JointRemainingRoutes.checked34

private def route35 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows35 JointRemainingRoutes.length35 JointRemainingRoutes.checked35

private def route36 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows36 JointRemainingRoutes.length36 JointRemainingRoutes.checked36

private def route37 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows37 JointRemainingRoutes.length37 JointRemainingRoutes.checked37

private def route38 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows38 JointRemainingRoutes.length38 JointRemainingRoutes.checked38

private def route39 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows39 JointRemainingRoutes.length39 JointRemainingRoutes.checked39

private def route40 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows40 JointRemainingRoutes.length40 JointRemainingRoutes.checked40

private def route41 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows41 JointRemainingRoutes.length41 JointRemainingRoutes.checked41

private def route42 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows42 JointRemainingRoutes.length42 JointRemainingRoutes.checked42

private def route44 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows44 JointRemainingRoutes.length44 JointRemainingRoutes.checked44

private def route45 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows45 JointRemainingRoutes.length45 JointRemainingRoutes.checked45

private def route46 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows46 JointRemainingRoutes.length46 JointRemainingRoutes.checked46

private def route47 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows47 JointRemainingRoutes.length47 JointRemainingRoutes.checked47

private def route48 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows48 JointRemainingRoutes.length48 JointRemainingRoutes.checked48

private def route49 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows49 JointRemainingRoutes.length49 JointRemainingRoutes.checked49

private def route51 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows51 JointRemainingRoutes.length51 JointRemainingRoutes.checked51

private def route52 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows52 JointRemainingRoutes.length52 JointRemainingRoutes.checked52

private def route53 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows53 JointRemainingRoutes.length53 JointRemainingRoutes.checked53

private def route54 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows54 JointRemainingRoutes.length54 JointRemainingRoutes.checked54

private def route55 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows55 JointRemainingRoutes.length55 JointRemainingRoutes.checked55

private def route56 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows56 JointRemainingRoutes.length56 JointRemainingRoutes.checked56

private def route58 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows58 JointRemainingRoutes.length58 JointRemainingRoutes.checked58

private def route60 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows60 JointRemainingRoutes.length60 JointRemainingRoutes.checked60

private def route61 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows61 JointRemainingRoutes.length61 JointRemainingRoutes.checked61

private def route62 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows62 JointRemainingRoutes.length62 JointRemainingRoutes.checked62

private def route63 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows63 JointRemainingRoutes.length63 JointRemainingRoutes.checked63

private def route64 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows64 JointRemainingRoutes.length64 JointRemainingRoutes.checked64

private def route65 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows65 JointRemainingRoutes.length65 JointRemainingRoutes.checked65

private def route66 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows66 JointRemainingRoutes.length66 JointRemainingRoutes.checked66

private def route67 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows67 JointRemainingRoutes.length67 JointRemainingRoutes.checked67

private def route69 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows69 JointRemainingRoutes.length69 JointRemainingRoutes.checked69

private def route70 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows70 JointRemainingRoutes.length70 JointRemainingRoutes.checked70

private def route71 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows71 JointRemainingRoutes.length71 JointRemainingRoutes.checked71

private def route72 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows72 JointRemainingRoutes.length72 JointRemainingRoutes.checked72

private def route73 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows73 JointRemainingRoutes.length73 JointRemainingRoutes.checked73

private def route74 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows74 JointRemainingRoutes.length74 JointRemainingRoutes.checked74

private def route75 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows75 JointRemainingRoutes.length75 JointRemainingRoutes.checked75

private def route76 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows76 JointRemainingRoutes.length76 JointRemainingRoutes.checked76

private def route77 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows77 JointRemainingRoutes.length77 JointRemainingRoutes.checked77

private def route78 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows78 JointRemainingRoutes.length78 JointRemainingRoutes.checked78

private def route79 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows79 JointRemainingRoutes.length79 JointRemainingRoutes.checked79

private def route80 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows80 JointRemainingRoutes.length80 JointRemainingRoutes.checked80

private def route81 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows81 JointRemainingRoutes.length81 JointRemainingRoutes.checked81

private def route82 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows82 JointRemainingRoutes.length82 JointRemainingRoutes.checked82

private def route83 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows83 JointRemainingRoutes.length83 JointRemainingRoutes.checked83

private def route85 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows85 JointRemainingRoutes.length85 JointRemainingRoutes.checked85

private def route86 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows86 JointRemainingRoutes.length86 JointRemainingRoutes.checked86

private def route87 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows87 JointRemainingRoutes.length87 JointRemainingRoutes.checked87

private def route88 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows88 JointRemainingRoutes.length88 JointRemainingRoutes.checked88

private def route90 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows90 JointRemainingRoutes.length90 JointRemainingRoutes.checked90

private def route92 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows92 JointRemainingRoutes.length92 JointRemainingRoutes.checked92

private def route93 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows93 JointRemainingRoutes.length93 JointRemainingRoutes.checked93

private def route94 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows94 JointRemainingRoutes.length94 JointRemainingRoutes.checked94

private def route95 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows95 JointRemainingRoutes.length95 JointRemainingRoutes.checked95

private def route96 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows96 JointRemainingRoutes.length96 JointRemainingRoutes.checked96

private def route97 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows97 JointRemainingRoutes.length97 JointRemainingRoutes.checked97

private def route98 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows98 JointRemainingRoutes.length98 JointRemainingRoutes.checked98

private def route99 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows99 JointRemainingRoutes.length99 JointRemainingRoutes.checked99

private def route100 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows100 JointRemainingRoutes.length100 JointRemainingRoutes.checked100

private def route101 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows101 JointRemainingRoutes.length101 JointRemainingRoutes.checked101

private def route102 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows102 JointRemainingRoutes.length102 JointRemainingRoutes.checked102

private def route103 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows103 JointRemainingRoutes.length103 JointRemainingRoutes.checked103

private def route104 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows104 JointRemainingRoutes.length104 JointRemainingRoutes.checked104

private def route105 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows105 JointRemainingRoutes.length105 JointRemainingRoutes.checked105

private def route106 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows106 JointRemainingRoutes.length106 JointRemainingRoutes.checked106

private def route108 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows108 JointRemainingRoutes.length108 JointRemainingRoutes.checked108

private def route109 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows109 JointRemainingRoutes.length109 JointRemainingRoutes.checked109

private def route110 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows110 JointRemainingRoutes.length110 JointRemainingRoutes.checked110

private def route111 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows111 JointRemainingRoutes.length111 JointRemainingRoutes.checked111

private def route112 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows112 JointRemainingRoutes.length112 JointRemainingRoutes.checked112

private def route115 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows115 JointRemainingRoutes.length115 JointRemainingRoutes.checked115

private def route116 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows116 JointRemainingRoutes.length116 JointRemainingRoutes.checked116

private def route117 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows117 JointRemainingRoutes.length117 JointRemainingRoutes.checked117

private def route118 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows118 JointRemainingRoutes.length118 JointRemainingRoutes.checked118

private def route119 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows119 JointRemainingRoutes.length119 JointRemainingRoutes.checked119

private def route121 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows121 JointRemainingRoutes.length121 JointRemainingRoutes.checked121

private def route122 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows122 JointRemainingRoutes.length122 JointRemainingRoutes.checked122

private def route123 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows123 JointRemainingRoutes.length123 JointRemainingRoutes.checked123

private def route124 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows124 JointRemainingRoutes.length124 JointRemainingRoutes.checked124

private def route125 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows125 JointRemainingRoutes.length125 JointRemainingRoutes.checked125

private def route126 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows126 JointRemainingRoutes.length126 JointRemainingRoutes.checked126

private def route128 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows128 JointRemainingRoutes.length128 JointRemainingRoutes.checked128

private def route129 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows129 JointRemainingRoutes.length129 JointRemainingRoutes.checked129

private def route132 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows132 JointRemainingRoutes.length132 JointRemainingRoutes.checked132

private def route133 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows133 JointRemainingRoutes.length133 JointRemainingRoutes.checked133

private def route134 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows134 JointRemainingRoutes.length134 JointRemainingRoutes.checked134

private def route135 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows135 JointRemainingRoutes.length135 JointRemainingRoutes.checked135

private def route136 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows136 JointRemainingRoutes.length136 JointRemainingRoutes.checked136

private def route138 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows138 JointRemainingRoutes.length138 JointRemainingRoutes.checked138

private def route139 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows139 JointRemainingRoutes.length139 JointRemainingRoutes.checked139

private def route140 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows140 JointRemainingRoutes.length140 JointRemainingRoutes.checked140

private def route141 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows141 JointRemainingRoutes.length141 JointRemainingRoutes.checked141

private def route142 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows142 JointRemainingRoutes.length142 JointRemainingRoutes.checked142

private def route143 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows143 JointRemainingRoutes.length143 JointRemainingRoutes.checked143

private def route144 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows144 JointRemainingRoutes.length144 JointRemainingRoutes.checked144

private def route145 : Fin 32 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows145 JointRemainingRoutes.length145 JointRemainingRoutes.checked145

private def route146 : Fin 31 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows146 JointRemainingRoutes.length146 JointRemainingRoutes.checked146

private def route147 : Fin 27 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows147 JointRemainingRoutes.length147 JointRemainingRoutes.checked147

private def route148 : Fin 24 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows148 JointRemainingRoutes.length148 JointRemainingRoutes.checked148

private def route149 : Fin 20 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows149 JointRemainingRoutes.length149 JointRemainingRoutes.checked149

private def route151 : Fin 16 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows151 JointRemainingRoutes.length151 JointRemainingRoutes.checked151

private def route152 : Fin 14 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows152 JointRemainingRoutes.length152 JointRemainingRoutes.checked152

private def route153 : Fin 13 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows153 JointRemainingRoutes.length153 JointRemainingRoutes.checked153

private def route154 : Fin 13 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows154 JointRemainingRoutes.length154 JointRemainingRoutes.checked154

private def route160 : Fin 8 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows160 JointRemainingRoutes.length160 JointRemainingRoutes.checked160

private def route162 : Fin 8 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows162 JointRemainingRoutes.length162 JointRemainingRoutes.checked162

private def route163 : Fin 8 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows163 JointRemainingRoutes.length163 JointRemainingRoutes.checked163

private def route164 : Fin 7 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows164 JointRemainingRoutes.length164 JointRemainingRoutes.checked164

private def route173 : Fin 5 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows173 JointRemainingRoutes.length173 JointRemainingRoutes.checked173

private def route185 : Fin 4 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows185 JointRemainingRoutes.length185 JointRemainingRoutes.checked185

private def route187 : Fin 3 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows187 JointRemainingRoutes.length187 JointRemainingRoutes.checked187

private def route188 : Fin 3 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows188 JointRemainingRoutes.length188 JointRemainingRoutes.checked188

private def route191 : Fin 3 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows191 JointRemainingRoutes.length191 JointRemainingRoutes.checked191

private def route195 : Fin 3 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows195 JointRemainingRoutes.length195 JointRemainingRoutes.checked195

private def route199 : Fin 3 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows199 JointRemainingRoutes.length199 JointRemainingRoutes.checked199

private def route261 : Fin 1 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows261 JointRemainingRoutes.length261 JointRemainingRoutes.checked261

private def route266 : Fin 1 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows266 JointRemainingRoutes.length266 JointRemainingRoutes.checked266

private def route267 : Fin 1 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows267 JointRemainingRoutes.length267 JointRemainingRoutes.checked267

private def route268 : Fin 1 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows268 JointRemainingRoutes.length268 JointRemainingRoutes.checked268

private def route269 : Fin 1 → Run :=
  routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows269 JointRemainingRoutes.length269 JointRemainingRoutes.checked269

def coverageRows6 : List CoverageRow := [
  (192, [.cached 183, .cached 215, .cached 239, .cached 251, .cached 267]),
  (193, [.cached 184, .cached 216]),
  (194, [.cached 252]),
  (195, [.cached 285]),
  (196, [route36 11, route41 11]),
  (197, [route55 28, route64 17, route70 19, route74 15, route80 18]),
  (198, [route47 27, route55 29]),
  (199, [route70 20]),
  (200, [route36 12]),
  (201, [route64 18]),
  (202, [route80 19, route87 3]),
  (203, [route26 28]),
  (204, [route41 12, route47 28]),
  (205, [route70 21, route74 16]),
  (206, [route26 29, route36 13, route41 13]),
  (207, [route55 30]),
  (208, [route80 20, route87 4, route94 10, route100 21, route104 12]),
  (209, [route15 2, route26 30, route36 14, route41 14, route47 29]),
  (210, [route64 19]),
  (211, [route74 17]),
  (212, [route15 3, route26 31, route36 15, route41 15, route47 30, route55 31]),
  (213, [.cached 77, .cached 116, .cached 151]),
  (214, [.cached 217, .cached 240, .cached 253, .cached 268]),
  (215, [.cached 289]),
  (216, [.cached 0, .cached 42, .cached 78, .cached 117, .cached 152, .cached 185]),
  (217, [.cached 254]),
  (218, [.cached 293]),
  (219, [route0 0, route6 20, route15 4, route27 0, route36 16, route41 16, route47 31, route56 0, route64 20]),
  (220, [route87 5]),
  (221, [route148 3, route147 12, route147 13, route147 14, route147 15, route147 16, route147 17, route147 18, .leaf 408]),
  (222, [route0 1, route6 21, route15 5, route27 1, route36 17, route41 17, route48 0, route56 1]),
  (223, [route70 22])]

theorem coverageChecked6 : coverageRows6.all CoverageRow.check = true := by decide +kernel

#print axioms coverageChecked6

def coverageRows14 : List CoverageRow := [
  (448, [.cached 18, .cached 55, .cached 92, .cached 131]),
  (449, [route140 12, route128 3, route128 4, route115 0, route105 7, route105 8, route88 25, route81 28, route65 14, route42 23, route42 24, route42 25, route42 26, route16 31, route17 0, route17 1, .leaf 561, .leaf 562]),
  (450, [.cached 165]),
  (451, [route142 30, route124 29, route124 30, route108 6, route108 7, route101 13, route81 29, route81 30, route65 15, route65 16, route42 27, route17 2, route17 3, route17 4, .leaf 563, .leaf 564, .leaf 565, .leaf 566, .leaf 567]),
  (452, [route132 7, route132 8, route108 8, route108 9, route95 11, route81 31, route75 16, route65 17, route65 18, route42 28, route42 29, route8 5, .leaf 568, .leaf 569, .leaf 570, .leaf 571, .leaf 572]),
  (453, [route135 14, route135 15, route121 17, route115 1, route115 2, route88 26, route75 17, route58 6, route58 7, route37 18, route37 19, route8 6, route8 7, .leaf 573, .leaf 574, .leaf 575]),
  (454, [route124 31, route125 0, route125 1, route101 14, route101 15, route71 16, route58 8, route58 9, route37 20, route8 8, route1 15, route8 9, .leaf 576, .leaf 577, .leaf 578, .leaf 579, .leaf 580]),
  (455, [.leaf 581]),
  (456, [.leaf 582]),
  (457, [.leaf 583, .leaf 584]),
  (458, [route148 5, route144 12, route144 13, route145 21, route108 10, route108 11, route82 0, route49 10, route49 11, route37 21, route37 22, route8 10, .leaf 585, .leaf 586, .leaf 587, .leaf 588, .leaf 589]),
  (459, [.leaf 590]),
  (460, [.cached 19, .cached 56, .cached 93]),
  (461, [route147 3, route146 13, route140 13, route135 16, route95 12, route95 13, route95 14, route65 19, route29 30, route29 31, route8 11, .leaf 591, .leaf 592, .leaf 593, .leaf 594, .leaf 595]),
  (462, [.leaf 596]),
  (463, [.leaf 597]),
  (464, [.cached 20, .cached 57, .cached 94, .cached 132]),
  (465, [route148 6, route148 14, route142 31, route144 14, route125 2, route75 18, route75 19, route75 20, route49 12, route8 12, route8 13, .leaf 598, .leaf 599, .leaf 600, .leaf 601]),
  (466, [route153 6, route148 15, route149 2, route147 4, route135 17, route140 14, route115 3, route115 4, route65 20, route65 21, route58 10, route30 0, .leaf 602, .leaf 603, .leaf 604, .leaf 605]),
  (467, [.cached 21, .cached 58, .cached 95]),
  (468, [route148 7, route148 16]),
  (469, [route105 9, route101 16, route42 30, route42 31, route8 14, route8 15, .leaf 606, .leaf 607]),
  (470, [.leaf 608, .leaf 609, .leaf 610]),
  (471, [.cached 552, route146 14, route147 5]),
  (472, [route140 15, route88 27, route88 28, route30 1, route30 2, route30 3, .leaf 611, .leaf 612, .leaf 613]),
  (473, [route148 17, route149 3, route149 10, route149 18, route143 0, route144 15]),
  (474, [route75 21, route75 22, route1 16, route1 17, route1 18, .leaf 614, .leaf 615]),
  (475, [route65 22, route65 23, .leaf 616, .leaf 617]),
  (476, [route1 19, route8 16]),
  (477, [route49 13, route49 14, route49 15, .leaf 618]),
  (478, [route1 20]),
  (479, [route105 10, .cached 271, .cached 256, route37 23, .leaf 619])]

theorem coverageChecked14 : coverageRows14.all CoverageRow.check = true := by decide +kernel

#print axioms coverageChecked14

def coverageRows22 : List CoverageRow := [
  (704, [.leaf 786, .leaf 787]),
  (705, [route121 29, route121 30, route121 31, route122 0, route105 27, route105 28, route90 13, route90 14, route72 14, route72 15, route44 22, route44 23, .leaf 788, .leaf 789]),
  (706, [.leaf 790, .leaf 791]),
  (707, [route140 26, route128 26, route116 7, route116 8, route101 27, route83 19, route83 20, route83 21, route66 18, route44 24, route44 25, route44 26, route44 27, route19 29, route19 30, route19 31, route11 12, .leaf 792, .leaf 793]),
  (708, [.cached 515, .cached 529, .cached 541, .cached 556]),
  (709, [route125 27, route125 28, route116 9, route109 15, route83 22, route83 23, route83 24, route66 19, route66 20, route20 0, route20 1, route11 13, route20 2, .leaf 794, .leaf 795, .leaf 796]),
  (710, [route133 15, route133 16, route109 16, route109 17, route96 20, route76 20, route83 25, route66 21, route66 22, route44 28, route20 3, route20 4, .leaf 797, .leaf 798, .leaf 799, .leaf 800]),
  (711, [route173 3, route136 12, route116 10, route116 11, route96 21, route96 22, route76 21, route60 0, route60 1, route38 27, route38 28, route11 14, route11 15, .leaf 801, .leaf 802, .leaf 803]),
  (712, [.cached 31, .cached 67, .cached 105, .cached 140]),
  (713, [route125 29, route125 30, route101 28, route101 29, route72 16, route60 2, route60 3, route38 29, route11 16, route3 23, route11 17, .leaf 804, .leaf 805, .leaf 806, .leaf 807]),
  (714, [route3 24, route11 18, route20 5, route31 15]),
  (715, [route144 24, route109 18, route109 19, route109 20, route83 26, route60 4, route60 5, route38 30, route38 31, route11 19, .leaf 808, .leaf 809, .leaf 810, .leaf 811, .leaf 812]),
  (716, [.leaf 813, .leaf 814]),
  (717, [.leaf 815]),
  (718, [route136 13, route136 14, route96 23, route96 24, route72 17, route72 18, route39 0, route39 1, route11 20, .leaf 816, .leaf 817, .leaf 818, .leaf 819, .leaf 820]),
  (719, [.leaf 821, .leaf 822]),
  (720, [.leaf 823]),
  (721, [.leaf 824, .leaf 825]),
  (722, [route128 27, route125 31, route76 22, route76 23, route51 1, route51 2, route11 21, route11 22, .leaf 826, .leaf 827, .leaf 828, .leaf 829]),
  (723, [route133 17, route136 15, route116 12, route66 23, route66 24, route66 25, route31 16, .leaf 830, .leaf 831, .leaf 832, .leaf 833]),
  (724, [.cached 584, .cached 592, route126 0, route128 28, route105 29, route44 29, route44 30, route44 31, route11 23, route11 24, .leaf 834, .leaf 835]),
  (725, [.leaf 836]),
  (726, [route90 15, route90 16, route31 17, route31 18, .leaf 837, .leaf 838, .leaf 839]),
  (727, [route11 25, route20 6]),
  (728, [route76 24, route76 25, route11 26, route11 27, .leaf 840, .leaf 841]),
  (729, [route3 25]),
  (730, [route66 26, route66 27, .leaf 842, .leaf 843]),
  (731, [route51 3, route51 4, .leaf 844]),
  (732, [.leaf 845]),
  (733, [.leaf 846, .leaf 847]),
  (734, [route105 30, .cached 275, route39 2, .leaf 848]),
  (735, [.leaf 849, .leaf 850])]

theorem coverageChecked22 : coverageRows22.all CoverageRow.check = true := by decide +kernel

#print axioms coverageChecked22

def coverageRows30 : List CoverageRow := [
  (960, [route39 25, route32 28, route32 29, route32 30, route32 31, route33 0, route33 1, route33 2, route33 3, route39 26, route45 22, route33 4, route21 28, route21 29, route21 30, route33 5, route21 31, route33 6, route22 0, route22 1, route22 2, route22 3, route22 4, route22 5, route22 6, route22 7, route33 7, route39 27, route22 8, route22 9, route12 26, route22 10, route22 11, route22 12, route33 8, route22 13, route22 14, route22 15, route33 9, route33 10, .leaf 1004]),
  (961, [.cached 711, .cached 714, .cached 717]),
  (962, [route145 1, route145 2, route145 3, route145 4, route110 30, route117 28, route122 20, route117 29, route122 21, route110 31, route117 30, route122 22, route106 6, route111 0, route117 31, .leaf 1005]),
  (963, [.leaf 1006, route4 28, route12 27, .leaf 1007, route4 29, .leaf 1008, route4 30, route12 28, .leaf 1009, .leaf 1010]),
  (964, [route138 4, route138 5, route133 29, route133 30, route102 20, route102 21, route92 3, route97 31, route102 22, route98 0, route102 23, route85 2, route92 4, route98 1, route102 24, route98 2, route102 25, route92 5, route98 3, route102 26, route85 3, .leaf 1011]),
  (965, [.leaf 1012]),
  (966, [.leaf 1013]),
  (967, [.leaf 1014]),
  (968, [.leaf 1015]),
  (969, [.leaf 1016]),
  (970, [.leaf 1017]),
  (971, [.leaf 1018]),
  (972, [route122 23, route122 24, route118 0, route118 1, route118 2, route118 3, route118 4, route118 5, route118 6, route77 21, route77 22, route77 23, route67 25, route73 1, route77 24, route73 2, route77 25, route61 25, route67 26, route73 3, .leaf 1019]),
  (973, [.leaf 1020, .leaf 1021]),
  (974, [route143 21, route141 24, route141 25, route129 11, route129 12, route129 13, route126 14, route102 27, route98 4, route102 28, route45 23, route52 24, route45 24, route52 25, route45 25, route52 26, route52 27, route52 28, route39 28, route45 26, route52 29, route45 27, .leaf 1022, .leaf 1023]),
  (975, [.leaf 1024]),
  (976, [route185 2, route187 0]),
  (977, [route188 1, route191 2, route195 2, route199 1]),
  (978, [route129 14, route129 15, route129 16, route118 7, route118 8, route118 9, route111 1, route77 26, route77 27, route77 28, route77 29, route77 30, route77 31, route78 0, route78 1, route33 11, route22 16, route33 12, route22 17, route33 13, route33 14, route4 31, route12 29, route22 18, route12 30, route22 19, .leaf 1025, route5 0, route12 31, .leaf 1026]),
  (979, [.leaf 1027]),
  (980, [route141 26, route129 17, route111 2, route111 3, route111 4, route92 6, route98 5, route98 6, route98 7, route98 8, route52 30, route52 31, route53 0, route53 1, route53 2, route53 3, .leaf 1028, .leaf 1029]),
  (981, [.leaf 1030]),
  (982, [route129 18, route133 31, route138 6]),
  (983, [route143 22, route138 7, route126 15, route126 16, route111 5, route111 6, route111 7, route92 7, route73 4, route67 27, route73 5, route22 20, route22 21, route22 22, route22 23, route22 24, route22 25, route22 26, .leaf 1031]),
  (984, [.leaf 1032]),
  (985, [route134 0, route118 10, route122 25, route106 7, route106 8, route106 9, route92 8, route73 6, route73 7, route73 8, route53 4, route39 29, route45 28, .leaf 1033, .leaf 1034]),
  (986, [.leaf 1035, .leaf 1036, .leaf 1037]),
  (987, [route141 27, route141 28, route129 19, route118 11, route118 12, route106 10, route106 11, route92 9, route73 9, route67 28, route45 29, route45 30, route45 31, route22 27, route22 28, route22 29, route13 0, .leaf 1038, .leaf 1039]),
  (988, [.leaf 1040, .leaf 1041]),
  (989, [route126 17, route118 13, route102 29, route102 30, route102 31, route85 4, route78 2, route67 29, route67 30, route46 0, route22 30, route22 31, .leaf 1042, .leaf 1043, .leaf 1044]),
  (990, [route5 1, route13 1, route23 0, route33 15, route39 30, route46 1]),
  (991, [route147 9, route147 26, route148 10, route148 20])]

theorem coverageChecked30 : coverageRows30.all CoverageRow.check = true := by decide +kernel

#print axioms coverageChecked30

def coverageRows38 : List CoverageRow := [
  (1216, [route86 2]),
  (1217, [route160 6, route162 2, route163 6, route164 1]),
  (1218, [route79 1]),
  (1219, [.cached 281]),
  (1220, [.cached 40, .cached 75, .cached 114, .cached 149, .cached 181, .cached 212, .cached 236, .cached 249, .cached 264]),
  (1221, [.leaf 0]),
  (1222, [route5 27, route14 4, route24 19, route34 21, route40 18, route46 28, route54 14, route62 28]),
  (1223, [.leaf 1235]),
  (1224, [route62 29]),
  (1225, [route139 14, route139 15]),
  (1226, [route139 16, route134 7, route139 17, route139 18, route139 19]),
  (1227, [route69 0]),
  (1228, [route112 10, route119 14, route112 11, route112 12, route112 13, route112 14, route112 15, route112 16, route112 17, route112 18, route112 19, route112 20, route112 21, route112 22]),
  (1229, [.cached 730, .cached 731]),
  (1230, [route99 6, route99 7, route99 8, route99 9, route99 10, route93 4, route99 11, route93 5, route93 6, route93 7, route93 8, route86 3, route93 9, route86 4, route93 10, route99 12, route86 5, route86 6, route86 7, route79 2, route79 3, route86 8, route93 11]),
  (1231, [route86 9, route86 10, route86 11, route86 12, route86 13, route86 14, route86 15, route86 16, route86 17, route93 12, route86 18, route93 13, route93 14, route93 15, route93 16, route93 17, route99 13, route93 18, route93 19, route99 14, route99 15, .leaf 1236]),
  (1232, [route151 4, route151 14, route152 8, route153 3, route154 3]),
  (1233, [route146 1, route146 26, route146 2, route146 27, route69 1, route69 2, route69 3, route69 4, route69 5, route69 6, route73 25, route79 4, route69 7, route69 8, route62 30, route62 31, route63 0, route63 1, route69 9, route63 2, route63 3, route63 4, route63 5, route63 6, route63 7, route54 15, route63 8]),
  (1234, [route54 16, route54 17, route63 9, route63 10, route63 11, route63 12, route63 13, route63 14, .leaf 1237]),
  (1235, [.leaf 1238, .leaf 1239, .leaf 1240]),
  (1236, [route261 0, route266 0, route267 0, route268 0, route269 0]),
  (1237, [route148 2, route139 20, route142 10, route129 31, route134 8, route139 21, route142 11, route139 22, route34 22, route34 23, route34 24, route40 19, route34 25, route34 26, route34 27, route34 28, route34 29, route34 30, route34 31, route35 0, route40 20, route46 29, route35 1, route35 2, route35 3, route35 4, route35 5, route35 6, route35 7, route40 21, route24 20, route24 21, route24 22, route24 23, route24 24, route24 25, route24 26, route35 8]),
  (1238, [route24 27, route24 28, route24 29, route24 30, route24 31, route35 9, route25 0, route25 1, route35 10, .leaf 1241]),
  (1239, [route145 10, route145 11]),
  (1240, [route123 9, route106 28, route112 23, route119 15, route123 10, route119 16, route123 11, route112 24, route119 17, route123 12, route106 29, route112 25, route119 18, route123 13, route119 19, route123 14, .leaf 1242, route5 28, .leaf 1243, route5 29, route14 5, .leaf 1244, route5 30, .leaf 1245]),
  (1241, [.leaf 1246]),
  (1242, [route147 11, route134 9, route134 10, route103 18, route103 19, route103 20, route93 20, route99 16, route103 21, route99 17]),
  (1243, [route86 19]),
  (1244, [route99 18, .leaf 1247]),
  (1245, [.leaf 1248]),
  (1246, [.leaf 1249]),
  (1247, [.leaf 1250])]

theorem coverageChecked38 : coverageRows38.all CoverageRow.check = true := by decide +kernel

#print axioms coverageChecked38

end DiagonalRamsey.JointRawSelector
