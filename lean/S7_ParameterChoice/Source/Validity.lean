import S7_ParameterChoice.Source.Profiles

/-!
# Geometric validity of the source profiles
The checks certify positive densities, ordered positive knots, and a positive
lower bound for each PL curve. They do not assert Ramsey admissibility.
-/

set_option autoImplicit false
set_option maxRecDepth 100000

namespace DiagonalRamsey.SourceProfiles

open DiagRamsey DiagRamsey.V5

set_option maxHeartbeats 0 in
theorem checked_profile000 : data000.ok (486397457111/250000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile001 : data001.ok (191811380949/100000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile002 : data002.ok (1790917811563/1000000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile003 : data003.ok (118427072451/62500000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile004 : data004.ok (882424500037/500000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile005 : data005.ok (468692403783/250000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile006 : data006.ok (433794458199/250000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile007 : data007.ok (803097781411/500000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile008 : data008.ok (1663349766761/1000000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile009 : data009.ok (1712892907509/1000000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile010 : data010.ok (328069480349/200000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile011 : data011.ok (842592029039/500000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile012 : data012.ok (1611956119997/1000000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile013 : data013.ok (414249975091/250000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile014 : data014.ok (909804840071/500000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile015 : data015.ok (810275993078583161760879/1000000000000000000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile016 : data016.ok (113010200178658318117/406250000000000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile017 : data017.ok (351380420169/250000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile018 : data018.ok (312258803957/200000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile019 : data019.ok (2019495631099/1000000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile020 : data020.ok (2218143563709/1000000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile021 : data021.ok (563923969313/500000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile022 : data022.ok (581124112261/500000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile023 : data023.ok (1213948664973/1000000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile024 : data024.ok (1253157162983/1000000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile025 : data025.ok (1298542341251/1000000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile026 : data026.ok (42175223651/31250000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile027 : data027.ok (546862220937/1000000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile028 : data028.ok (42175223651/31250000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile029 : data029.ok (581124112261/500000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile030 : data030.ok (244748091981/500000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile031 : data031.ok (443075357469/200000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile032 : data032.ok (2128989058059/1000000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile033 : data033.ok (836570370769/1000000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile034 : data034.ok (1298542341251/1000000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile035 : data035.ok (394358199663/250000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile036 : data036.ok (1531864361043/1000000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile037 : data037.ok (23312076793/40000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile038 : data038.ok (689914853501/500000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile039 : data039.ok (4177901691/3125000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile040 : data040.ok (1213948664973/1000000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile041 : data041.ok (646340993841/500000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile042 : data042.ok (623238175109/500000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile043 : data043.ok (1198099836019/1000000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile044 : data044.ok (144376278051/125000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile045 : data045.ok (1100472805209/1000000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile046 : data046.ok (968065432831/1000000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile047 : data047.ok (467154978219/500000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile048 : data048.ok (219582756903/250000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile049 : data049.ok (935757065711/1000000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile050 : data050.ok (994162732609/1000000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile051 : data051.ok (1024420536657/1000000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile052 : data052.ok (209424403041/200000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile053 : data053.ok (272913507037/250000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile054 : data054.ok (55564233549/50000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile055 : data055.ok (572802176641/500000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile056 : data056.ok (120148643721/200000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile057 : data057.ok (113143667513/200000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile058 : data058.ok (563923969313/500000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile059 : data059.ok (1253157162983/1000000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile060 : data060.ok (23312076793/40000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile061 : data061.ok (167195358969/200000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile062 : data062.ok (17145295059/31250000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile063 : data063.ok (1682688544459/1000000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile064 : data064.ok (19360143811/31250000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile065 : data065.ok (529172437879/1000000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile066 : data066.ok (170287893209/200000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile067 : data067.ok (168524408337/100000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile068 : data068.ok (965786051029/500000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile069 : data069.ok (1320033458687/1000000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile070 : data070.ok (1685059063519/1000000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile071 : data071.ok (1041278466799/1000000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile072 : data072.ok (1041278466799/1000000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile073 : data073.ok (844193841567/500000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile074 : data074.ok (315911173027/200000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile075 : data075.ok (296689883721/200000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile076 : data076.ok (1432332714957/1000000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile077 : data077.ok (887264374551/1000000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile078 : data078.ok (268083739951/250000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile079 : data079.ok (1023390544781/1000000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile080 : data080.ok (461612864859/500000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile081 : data081.ok (215560672917/250000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile082 : data082.ok (1388317069359/1000000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile083 : data083.ok (599724653859/500000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile084 : data084.ok (968670232633/1000000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile085 : data085.ok (16737494281/20000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile086 : data086.ok (337654148181/200000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile087 : data087.ok (946120291459/1000000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile088 : data088.ok (44548484837/62500000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile089 : data089.ok (663123674279/500000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile090 : data090.ok (1361387176321/1000000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile091 : data091.ok (6390775763/5000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile092 : data092.ok (307798934773/200000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile093 : data093.ok (484585576111/250000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile094 : data094.ok (2019494838599/1000000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile095 : data095.ok (541306550229/500000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile096 : data096.ok (541306550229/500000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile097 : data097.ok (5328704729/8000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile098 : data098.ok (244747971981/500000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile099 : data099.ok (1001272079327/1000000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile100 : data100.ok (88452164591/40000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile101 : data101.ok (246425615533/125000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile102 : data102.ok (836570075769/1000000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile103 : data103.ok (1001272079327/1000000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile104 : data104.ok (1683648360971/1000000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile105 : data105.ok (1527470837633/1000000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile106 : data106.ok (1480127962231/1000000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile107 : data107.ok (716192853269/500000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile108 : data108.ok (1379829432977/1000000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile109 : data109.ok (531570960419/500000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile110 : data110.ok (247716331453/250000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile111 : data111.ok (73950419469/62500000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile112 : data112.ok (154797590201/250000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_profile113 : data113.ok (1216019600227/1000000000000) = true := by decide +kernel

set_option maxHeartbeats 0 in
/-- **Geometric profile validity.** Every explicit PL profile has positive
density, an ordered positive domain, and a positive lower bound. This is
separate from its Ramsey admissibility, which requires the joint construction. -/
theorem valid (i : Fin count) : (profile i).Valid := by
  fin_cases i
  · exact ProfD.valid_of_ok data000 (486397457111/250000000000) checked_profile000
  · exact ProfD.valid_of_ok data001 (191811380949/100000000000) checked_profile001
  · exact ProfD.valid_of_ok data002 (1790917811563/1000000000000) checked_profile002
  · exact ProfD.valid_of_ok data003 (118427072451/62500000000) checked_profile003
  · exact ProfD.valid_of_ok data004 (882424500037/500000000000) checked_profile004
  · exact ProfD.valid_of_ok data005 (468692403783/250000000000) checked_profile005
  · exact ProfD.valid_of_ok data006 (433794458199/250000000000) checked_profile006
  · exact ProfD.valid_of_ok data007 (803097781411/500000000000) checked_profile007
  · exact ProfD.valid_of_ok data008 (1663349766761/1000000000000) checked_profile008
  · exact ProfD.valid_of_ok data009 (1712892907509/1000000000000) checked_profile009
  · exact ProfD.valid_of_ok data010 (328069480349/200000000000) checked_profile010
  · exact ProfD.valid_of_ok data011 (842592029039/500000000000) checked_profile011
  · exact ProfD.valid_of_ok data012 (1611956119997/1000000000000) checked_profile012
  · exact ProfD.valid_of_ok data013 (414249975091/250000000000) checked_profile013
  · exact ProfD.valid_of_ok data014 (909804840071/500000000000) checked_profile014
  · exact ProfD.valid_of_ok data015 (810275993078583161760879/1000000000000000000000000) checked_profile015
  · exact ProfD.valid_of_ok data016 (113010200178658318117/406250000000000000000) checked_profile016
  · exact ProfD.valid_of_ok data017 (351380420169/250000000000) checked_profile017
  · exact ProfD.valid_of_ok data018 (312258803957/200000000000) checked_profile018
  · exact ProfD.valid_of_ok data019 (2019495631099/1000000000000) checked_profile019
  · exact ProfD.valid_of_ok data020 (2218143563709/1000000000000) checked_profile020
  · exact ProfD.valid_of_ok data021 (563923969313/500000000000) checked_profile021
  · exact ProfD.valid_of_ok data022 (581124112261/500000000000) checked_profile022
  · exact ProfD.valid_of_ok data023 (1213948664973/1000000000000) checked_profile023
  · exact ProfD.valid_of_ok data024 (1253157162983/1000000000000) checked_profile024
  · exact ProfD.valid_of_ok data025 (1298542341251/1000000000000) checked_profile025
  · exact ProfD.valid_of_ok data026 (42175223651/31250000000) checked_profile026
  · exact ProfD.valid_of_ok data027 (546862220937/1000000000000) checked_profile027
  · exact ProfD.valid_of_ok data028 (42175223651/31250000000) checked_profile028
  · exact ProfD.valid_of_ok data029 (581124112261/500000000000) checked_profile029
  · exact ProfD.valid_of_ok data030 (244748091981/500000000000) checked_profile030
  · exact ProfD.valid_of_ok data031 (443075357469/200000000000) checked_profile031
  · exact ProfD.valid_of_ok data032 (2128989058059/1000000000000) checked_profile032
  · exact ProfD.valid_of_ok data033 (836570370769/1000000000000) checked_profile033
  · exact ProfD.valid_of_ok data034 (1298542341251/1000000000000) checked_profile034
  · exact ProfD.valid_of_ok data035 (394358199663/250000000000) checked_profile035
  · exact ProfD.valid_of_ok data036 (1531864361043/1000000000000) checked_profile036
  · exact ProfD.valid_of_ok data037 (23312076793/40000000000) checked_profile037
  · exact ProfD.valid_of_ok data038 (689914853501/500000000000) checked_profile038
  · exact ProfD.valid_of_ok data039 (4177901691/3125000000) checked_profile039
  · exact ProfD.valid_of_ok data040 (1213948664973/1000000000000) checked_profile040
  · exact ProfD.valid_of_ok data041 (646340993841/500000000000) checked_profile041
  · exact ProfD.valid_of_ok data042 (623238175109/500000000000) checked_profile042
  · exact ProfD.valid_of_ok data043 (1198099836019/1000000000000) checked_profile043
  · exact ProfD.valid_of_ok data044 (144376278051/125000000000) checked_profile044
  · exact ProfD.valid_of_ok data045 (1100472805209/1000000000000) checked_profile045
  · exact ProfD.valid_of_ok data046 (968065432831/1000000000000) checked_profile046
  · exact ProfD.valid_of_ok data047 (467154978219/500000000000) checked_profile047
  · exact ProfD.valid_of_ok data048 (219582756903/250000000000) checked_profile048
  · exact ProfD.valid_of_ok data049 (935757065711/1000000000000) checked_profile049
  · exact ProfD.valid_of_ok data050 (994162732609/1000000000000) checked_profile050
  · exact ProfD.valid_of_ok data051 (1024420536657/1000000000000) checked_profile051
  · exact ProfD.valid_of_ok data052 (209424403041/200000000000) checked_profile052
  · exact ProfD.valid_of_ok data053 (272913507037/250000000000) checked_profile053
  · exact ProfD.valid_of_ok data054 (55564233549/50000000000) checked_profile054
  · exact ProfD.valid_of_ok data055 (572802176641/500000000000) checked_profile055
  · exact ProfD.valid_of_ok data056 (120148643721/200000000000) checked_profile056
  · exact ProfD.valid_of_ok data057 (113143667513/200000000000) checked_profile057
  · exact ProfD.valid_of_ok data058 (563923969313/500000000000) checked_profile058
  · exact ProfD.valid_of_ok data059 (1253157162983/1000000000000) checked_profile059
  · exact ProfD.valid_of_ok data060 (23312076793/40000000000) checked_profile060
  · exact ProfD.valid_of_ok data061 (167195358969/200000000000) checked_profile061
  · exact ProfD.valid_of_ok data062 (17145295059/31250000000) checked_profile062
  · exact ProfD.valid_of_ok data063 (1682688544459/1000000000000) checked_profile063
  · exact ProfD.valid_of_ok data064 (19360143811/31250000000) checked_profile064
  · exact ProfD.valid_of_ok data065 (529172437879/1000000000000) checked_profile065
  · exact ProfD.valid_of_ok data066 (170287893209/200000000000) checked_profile066
  · exact ProfD.valid_of_ok data067 (168524408337/100000000000) checked_profile067
  · exact ProfD.valid_of_ok data068 (965786051029/500000000000) checked_profile068
  · exact ProfD.valid_of_ok data069 (1320033458687/1000000000000) checked_profile069
  · exact ProfD.valid_of_ok data070 (1685059063519/1000000000000) checked_profile070
  · exact ProfD.valid_of_ok data071 (1041278466799/1000000000000) checked_profile071
  · exact ProfD.valid_of_ok data072 (1041278466799/1000000000000) checked_profile072
  · exact ProfD.valid_of_ok data073 (844193841567/500000000000) checked_profile073
  · exact ProfD.valid_of_ok data074 (315911173027/200000000000) checked_profile074
  · exact ProfD.valid_of_ok data075 (296689883721/200000000000) checked_profile075
  · exact ProfD.valid_of_ok data076 (1432332714957/1000000000000) checked_profile076
  · exact ProfD.valid_of_ok data077 (887264374551/1000000000000) checked_profile077
  · exact ProfD.valid_of_ok data078 (268083739951/250000000000) checked_profile078
  · exact ProfD.valid_of_ok data079 (1023390544781/1000000000000) checked_profile079
  · exact ProfD.valid_of_ok data080 (461612864859/500000000000) checked_profile080
  · exact ProfD.valid_of_ok data081 (215560672917/250000000000) checked_profile081
  · exact ProfD.valid_of_ok data082 (1388317069359/1000000000000) checked_profile082
  · exact ProfD.valid_of_ok data083 (599724653859/500000000000) checked_profile083
  · exact ProfD.valid_of_ok data084 (968670232633/1000000000000) checked_profile084
  · exact ProfD.valid_of_ok data085 (16737494281/20000000000) checked_profile085
  · exact ProfD.valid_of_ok data086 (337654148181/200000000000) checked_profile086
  · exact ProfD.valid_of_ok data087 (946120291459/1000000000000) checked_profile087
  · exact ProfD.valid_of_ok data088 (44548484837/62500000000) checked_profile088
  · exact ProfD.valid_of_ok data089 (663123674279/500000000000) checked_profile089
  · exact ProfD.valid_of_ok data090 (1361387176321/1000000000000) checked_profile090
  · exact ProfD.valid_of_ok data091 (6390775763/5000000000) checked_profile091
  · exact ProfD.valid_of_ok data092 (307798934773/200000000000) checked_profile092
  · exact ProfD.valid_of_ok data093 (484585576111/250000000000) checked_profile093
  · exact ProfD.valid_of_ok data094 (2019494838599/1000000000000) checked_profile094
  · exact ProfD.valid_of_ok data095 (541306550229/500000000000) checked_profile095
  · exact ProfD.valid_of_ok data096 (541306550229/500000000000) checked_profile096
  · exact ProfD.valid_of_ok data097 (5328704729/8000000000) checked_profile097
  · exact ProfD.valid_of_ok data098 (244747971981/500000000000) checked_profile098
  · exact ProfD.valid_of_ok data099 (1001272079327/1000000000000) checked_profile099
  · exact ProfD.valid_of_ok data100 (88452164591/40000000000) checked_profile100
  · exact ProfD.valid_of_ok data101 (246425615533/125000000000) checked_profile101
  · exact ProfD.valid_of_ok data102 (836570075769/1000000000000) checked_profile102
  · exact ProfD.valid_of_ok data103 (1001272079327/1000000000000) checked_profile103
  · exact ProfD.valid_of_ok data104 (1683648360971/1000000000000) checked_profile104
  · exact ProfD.valid_of_ok data105 (1527470837633/1000000000000) checked_profile105
  · exact ProfD.valid_of_ok data106 (1480127962231/1000000000000) checked_profile106
  · exact ProfD.valid_of_ok data107 (716192853269/500000000000) checked_profile107
  · exact ProfD.valid_of_ok data108 (1379829432977/1000000000000) checked_profile108
  · exact ProfD.valid_of_ok data109 (531570960419/500000000000) checked_profile109
  · exact ProfD.valid_of_ok data110 (247716331453/250000000000) checked_profile110
  · exact ProfD.valid_of_ok data111 (73950419469/62500000000) checked_profile111
  · exact ProfD.valid_of_ok data112 (154797590201/250000000000) checked_profile112
  · exact ProfD.valid_of_ok data113 (1216019600227/1000000000000) checked_profile113


#print axioms valid

end DiagonalRamsey.SourceProfiles
