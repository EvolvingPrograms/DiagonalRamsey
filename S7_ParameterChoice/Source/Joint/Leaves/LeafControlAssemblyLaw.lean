import S7_ParameterChoice.Source.Joint.Leaves.LeafAssembly

set_option autoImplicit false

namespace DiagonalRamsey.JointLeafControls
open JointLeaf JointGeometry

structure Certificates : Prop where
  c1 : JointLeaf.control1.toD.CertOK
  c2 : JointLeaf.control2.toD.CertOK
  c3 : JointLeaf.control3.toD.CertOK
  c4 : JointLeaf.control4.toD.CertOK
  c5 : JointLeaf.control5.toD.CertOK
  c6 : JointLeaf.control6.toD.CertOK
  c7 : JointLeaf.control7.toD.CertOK
  c8 : JointLeaf.control8.toD.CertOK
  c9 : JointLeaf.control9.toD.CertOK
  c10 : JointLeaf.control10.toD.CertOK
  c11 : JointLeaf.control11.toD.CertOK
  c12 : JointLeaf.control12.toD.CertOK
  c13 : JointLeaf.control13.toD.CertOK
  c14 : JointLeaf.control14.toD.CertOK
  c15 : JointLeaf.control15.toD.CertOK
  c16 : JointLeaf.control16.toD.CertOK
  c17 : JointLeaf.control17.toD.CertOK
  c18 : JointLeaf.control18.toD.CertOK
  c19 : JointLeaf.control19.toD.CertOK
  c20 : JointLeaf.control20.toD.CertOK
  c21 : JointLeaf.control21.toD.CertOK
  c22 : JointLeaf.control22.toD.CertOK
  c23 : JointLeaf.control23.toD.CertOK
  c24 : JointLeaf.control24.toD.CertOK
  c25 : JointLeaf.control25.toD.CertOK
  c26 : JointLeaf.control26.toD.CertOK
  c27 : JointLeaf.control27.toD.CertOK
  c28 : JointLeaf.control28.toD.CertOK
  c29 : JointLeaf.control29.toD.CertOK
  c30 : JointLeaf.control30.toD.CertOK
  c31 : JointLeaf.control31.toD.CertOK
  c32 : JointLeaf.control32.toD.CertOK
  c33 : JointLeaf.control33.toD.CertOK
  c34 : JointLeaf.control34.toD.CertOK
  c35 : JointLeaf.control35.toD.CertOK
  c36 : JointLeaf.control36.toD.CertOK
  c37 : JointLeaf.control37.toD.CertOK
  c38 : JointLeaf.control38.toD.CertOK
  c39 : JointLeaf.control39.toD.CertOK
  c40 : JointLeaf.control40.toD.CertOK
  c41 : JointLeaf.control41.toD.CertOK
  c42 : JointLeaf.control42.toD.CertOK
  c43 : JointLeaf.control43.toD.CertOK
  c44 : JointLeaf.control44.toD.CertOK
  c45 : JointLeaf.control45.toD.CertOK
  c46 : JointLeaf.control46.toD.CertOK
  c47 : JointLeaf.control47.toD.CertOK
  c48 : JointLeaf.control48.toD.CertOK
  c49 : JointLeaf.control49.toD.CertOK
  c50 : JointLeaf.control50.toD.CertOK
  c51 : JointLeaf.control51.toD.CertOK
  c52 : JointLeaf.control52.toD.CertOK
  c53 : JointLeaf.control53.toD.CertOK
  c54 : JointLeaf.control54.toD.CertOK
  c55 : JointLeaf.control55.toD.CertOK
  c56 : JointLeaf.control56.toD.CertOK
  c57 : JointLeaf.control57.toD.CertOK
  c58 : JointLeaf.control58.toD.CertOK
  c59 : JointLeaf.control59.toD.CertOK
  c60 : JointLeaf.control60.toD.CertOK
  c61 : JointLeaf.control61.toD.CertOK
  c62 : JointLeaf.control62.toD.CertOK
  c63 : JointLeaf.control63.toD.CertOK
  c65 : JointLeaf.control65.toD.CertOK
  c66 : JointLeaf.control66.toD.CertOK
  c67 : JointLeaf.control67.toD.CertOK
  c68 : JointLeaf.control68.toD.CertOK
  c69 : JointLeaf.control69.toD.CertOK
  c70 : JointLeaf.control70.toD.CertOK
  c71 : JointLeaf.control71.toD.CertOK
  c75 : JointLeaf.control75.toD.CertOK
  c76 : JointLeaf.control76.toD.CertOK
  c77 : JointLeaf.control77.toD.CertOK
  c78 : JointLeaf.control78.toD.CertOK
  c79 : JointLeaf.control79.toD.CertOK
  c80 : JointLeaf.control80.toD.CertOK
  c81 : JointLeaf.control81.toD.CertOK
  c82 : JointLeaf.control82.toD.CertOK
  c83 : JointLeaf.control83.toD.CertOK
  c86 : JointLeaf.control86.toD.CertOK
  c87 : JointLeaf.control87.toD.CertOK
  c88 : JointLeaf.control88.toD.CertOK
  c89 : JointLeaf.control89.toD.CertOK
  c90 : JointLeaf.control90.toD.CertOK
  c91 : JointLeaf.control91.toD.CertOK
  c92 : JointLeaf.control92.toD.CertOK
  c93 : JointLeaf.control93.toD.CertOK
  c96 : JointLeaf.control96.toD.CertOK
  c97 : JointLeaf.control97.toD.CertOK
  c98 : JointLeaf.control98.toD.CertOK
  c100 : JointLeaf.control100.toD.CertOK
  c101 : JointLeaf.control101.toD.CertOK
  c102 : JointLeaf.control102.toD.CertOK
  c104 : JointLeaf.control104.toD.CertOK
  c105 : JointLeaf.control105.toD.CertOK
  c110 : JointLeaf.control110.toD.CertOK
  c111 : JointLeaf.control111.toD.CertOK
  c112 : JointLeaf.control112.toD.CertOK
  c114 : JointLeaf.control114.toD.CertOK
  c115 : JointLeaf.control115.toD.CertOK
  c116 : JointLeaf.control116.toD.CertOK
  c117 : JointLeaf.control117.toD.CertOK
  c118 : JointLeaf.control118.toD.CertOK
  c119 : JointLeaf.control119.toD.CertOK
  c127 : JointLeaf.control127.toD.CertOK
  c128 : JointLeaf.control128.toD.CertOK
  c131 : JointLeaf.control131.toD.CertOK
  c132 : JointLeaf.control132.toD.CertOK
  c133 : JointLeaf.control133.toD.CertOK
  c134 : JointLeaf.control134.toD.CertOK
  c137 : JointLeaf.control137.toD.CertOK
  c138 : JointLeaf.control138.toD.CertOK
  c142 : JointLeaf.control142.toD.CertOK
  c143 : JointLeaf.control143.toD.CertOK
  c149 : JointLeaf.control149.toD.CertOK
  c150 : JointLeaf.control150.toD.CertOK
  c151 : JointLeaf.control151.toD.CertOK
  c152 : JointLeaf.control152.toD.CertOK
  c156 : JointLeaf.control156.toD.CertOK
  c157 : JointLeaf.control157.toD.CertOK
  c158 : JointLeaf.control158.toD.CertOK
  c159 : JointLeaf.control159.toD.CertOK
  c160 : JointLeaf.control160.toD.CertOK
  c162 : JointLeaf.control162.toD.CertOK
  c163 : JointLeaf.control163.toD.CertOK
  c172 : JointLeaf.control172.toD.CertOK
  c173 : JointLeaf.control173.toD.CertOK
  c174 : JointLeaf.control174.toD.CertOK
  c175 : JointLeaf.control175.toD.CertOK
  c178 : JointLeaf.control178.toD.CertOK
  c179 : JointLeaf.control179.toD.CertOK
  c180 : JointLeaf.control180.toD.CertOK
  c181 : JointLeaf.control181.toD.CertOK
  c182 : JointLeaf.control182.toD.CertOK
  c186 : JointLeaf.control186.toD.CertOK
  c187 : JointLeaf.control187.toD.CertOK
  c194 : JointLeaf.control194.toD.CertOK
  c195 : JointLeaf.control195.toD.CertOK
  c196 : JointLeaf.control196.toD.CertOK
  c203 : JointLeaf.control203.toD.CertOK
  c204 : JointLeaf.control204.toD.CertOK
  c205 : JointLeaf.control205.toD.CertOK
  c206 : JointLeaf.control206.toD.CertOK
  c210 : JointLeaf.control210.toD.CertOK
  c211 : JointLeaf.control211.toD.CertOK
  c212 : JointLeaf.control212.toD.CertOK
  c213 : JointLeaf.control213.toD.CertOK
  c217 : JointLeaf.control217.toD.CertOK
  c218 : JointLeaf.control218.toD.CertOK
  c224 : JointLeaf.control224.toD.CertOK
  c232 : JointLeaf.control232.toD.CertOK
  c233 : JointLeaf.control233.toD.CertOK
  c234 : JointLeaf.control234.toD.CertOK
  c237 : JointLeaf.control237.toD.CertOK
  c238 : JointLeaf.control238.toD.CertOK
  c239 : JointLeaf.control239.toD.CertOK
  c240 : JointLeaf.control240.toD.CertOK
  c241 : JointLeaf.control241.toD.CertOK
  c242 : JointLeaf.control242.toD.CertOK
  c247 : JointLeaf.control247.toD.CertOK
  c248 : JointLeaf.control248.toD.CertOK
  c249 : JointLeaf.control249.toD.CertOK
  c252 : JointLeaf.control252.toD.CertOK
  c253 : JointLeaf.control253.toD.CertOK
  c260 : JointLeaf.control260.toD.CertOK
  c261 : JointLeaf.control261.toD.CertOK
  c262 : JointLeaf.control262.toD.CertOK
  c268 : JointLeaf.control268.toD.CertOK
  c269 : JointLeaf.control269.toD.CertOK
  c270 : JointLeaf.control270.toD.CertOK
  c274 : JointLeaf.control274.toD.CertOK
  c275 : JointLeaf.control275.toD.CertOK
  c276 : JointLeaf.control276.toD.CertOK
  c277 : JointLeaf.control277.toD.CertOK
  c282 : JointLeaf.control282.toD.CertOK
  c283 : JointLeaf.control283.toD.CertOK
  c284 : JointLeaf.control284.toD.CertOK
  c286 : JointLeaf.control286.toD.CertOK
  c290 : JointLeaf.control290.toD.CertOK
  c291 : JointLeaf.control291.toD.CertOK
  c292 : JointLeaf.control292.toD.CertOK
  c298 : JointLeaf.control298.toD.CertOK
  c299 : JointLeaf.control299.toD.CertOK
  c300 : JointLeaf.control300.toD.CertOK
  c306 : JointLeaf.control306.toD.CertOK
  c307 : JointLeaf.control307.toD.CertOK
  c308 : JointLeaf.control308.toD.CertOK
  c312 : JointLeaf.control312.toD.CertOK
  c313 : JointLeaf.control313.toD.CertOK
  c314 : JointLeaf.control314.toD.CertOK
  c320 : JointLeaf.control320.toD.CertOK
  c321 : JointLeaf.control321.toD.CertOK
  c322 : JointLeaf.control322.toD.CertOK
  c325 : JointLeaf.control325.toD.CertOK
  c326 : JointLeaf.control326.toD.CertOK
  c327 : JointLeaf.control327.toD.CertOK
  c333 : JointLeaf.control333.toD.CertOK
  c334 : JointLeaf.control334.toD.CertOK
  c338 : JointLeaf.control338.toD.CertOK
  c339 : JointLeaf.control339.toD.CertOK
  c340 : JointLeaf.control340.toD.CertOK
  c341 : JointLeaf.control341.toD.CertOK
  c346 : JointLeaf.control346.toD.CertOK
  c347 : JointLeaf.control347.toD.CertOK
  c348 : JointLeaf.control348.toD.CertOK
  c353 : JointLeaf.control353.toD.CertOK
  c358 : JointLeaf.control358.toD.CertOK
  c359 : JointLeaf.control359.toD.CertOK
  c360 : JointLeaf.control360.toD.CertOK
  c364 : JointLeaf.control364.toD.CertOK
  c365 : JointLeaf.control365.toD.CertOK
  c366 : JointLeaf.control366.toD.CertOK
  c367 : JointLeaf.control367.toD.CertOK
  c371 : JointLeaf.control371.toD.CertOK
  c372 : JointLeaf.control372.toD.CertOK
  c377 : JointLeaf.control377.toD.CertOK
  c378 : JointLeaf.control378.toD.CertOK
  c379 : JointLeaf.control379.toD.CertOK
  c383 : JointLeaf.control383.toD.CertOK
  c384 : JointLeaf.control384.toD.CertOK
  c385 : JointLeaf.control385.toD.CertOK
  c386 : JointLeaf.control386.toD.CertOK
  c388 : JointLeaf.control388.toD.CertOK
  c393 : JointLeaf.control393.toD.CertOK
  c394 : JointLeaf.control394.toD.CertOK
  c395 : JointLeaf.control395.toD.CertOK
  c397 : JointLeaf.control397.toD.CertOK
  c402 : JointLeaf.control402.toD.CertOK
  c403 : JointLeaf.control403.toD.CertOK
  c407 : JointLeaf.control407.toD.CertOK
  c408 : JointLeaf.control408.toD.CertOK
  c409 : JointLeaf.control409.toD.CertOK
  c410 : JointLeaf.control410.toD.CertOK
  c411 : JointLeaf.control411.toD.CertOK
  c414 : JointLeaf.control414.toD.CertOK
  c415 : JointLeaf.control415.toD.CertOK
  c416 : JointLeaf.control416.toD.CertOK
  c419 : JointLeaf.control419.toD.CertOK
  c422 : JointLeaf.control422.toD.CertOK
  c424 : JointLeaf.control424.toD.CertOK
  c425 : JointLeaf.control425.toD.CertOK
  c426 : JointLeaf.control426.toD.CertOK
  c427 : JointLeaf.control427.toD.CertOK
  c428 : JointLeaf.control428.toD.CertOK
  c429 : JointLeaf.control429.toD.CertOK
  c430 : JointLeaf.control430.toD.CertOK
  c431 : JointLeaf.control431.toD.CertOK
  c432 : JointLeaf.control432.toD.CertOK
  c433 : JointLeaf.control433.toD.CertOK
  c434 : JointLeaf.control434.toD.CertOK
  c437 : JointLeaf.control437.toD.CertOK
  c438 : JointLeaf.control438.toD.CertOK
  c439 : JointLeaf.control439.toD.CertOK
  c440 : JointLeaf.control440.toD.CertOK
  c441 : JointLeaf.control441.toD.CertOK
  c442 : JointLeaf.control442.toD.CertOK
  c443 : JointLeaf.control443.toD.CertOK
  c448 : JointLeaf.control448.toD.CertOK
  c449 : JointLeaf.control449.toD.CertOK
  c453 : JointLeaf.control453.toD.CertOK
  c454 : JointLeaf.control454.toD.CertOK
  c455 : JointLeaf.control455.toD.CertOK
  c456 : JointLeaf.control456.toD.CertOK
  c460 : JointLeaf.control460.toD.CertOK
  c461 : JointLeaf.control461.toD.CertOK
  c462 : JointLeaf.control462.toD.CertOK
  c463 : JointLeaf.control463.toD.CertOK
  c466 : JointLeaf.control466.toD.CertOK
  c470 : JointLeaf.control470.toD.CertOK
  c471 : JointLeaf.control471.toD.CertOK
  c475 : JointLeaf.control475.toD.CertOK
  c476 : JointLeaf.control476.toD.CertOK
  c477 : JointLeaf.control477.toD.CertOK
  c478 : JointLeaf.control478.toD.CertOK
  c479 : JointLeaf.control479.toD.CertOK
  c480 : JointLeaf.control480.toD.CertOK
  c481 : JointLeaf.control481.toD.CertOK
  c482 : JointLeaf.control482.toD.CertOK
  c483 : JointLeaf.control483.toD.CertOK
  c484 : JointLeaf.control484.toD.CertOK
  c485 : JointLeaf.control485.toD.CertOK
  c486 : JointLeaf.control486.toD.CertOK
  c488 : JointLeaf.control488.toD.CertOK
  c489 : JointLeaf.control489.toD.CertOK
  c490 : JointLeaf.control490.toD.CertOK
  c491 : JointLeaf.control491.toD.CertOK
  c494 : JointLeaf.control494.toD.CertOK
  c495 : JointLeaf.control495.toD.CertOK
  c496 : JointLeaf.control496.toD.CertOK
  c500 : JointLeaf.control500.toD.CertOK
  c501 : JointLeaf.control501.toD.CertOK
  c502 : JointLeaf.control502.toD.CertOK
  c504 : JointLeaf.control504.toD.CertOK
  c506 : JointLeaf.control506.toD.CertOK
  c507 : JointLeaf.control507.toD.CertOK
  c510 : JointLeaf.control510.toD.CertOK
  c511 : JointLeaf.control511.toD.CertOK
  c512 : JointLeaf.control512.toD.CertOK
  c515 : JointLeaf.control515.toD.CertOK
  c516 : JointLeaf.control516.toD.CertOK
  c517 : JointLeaf.control517.toD.CertOK
  c518 : JointLeaf.control518.toD.CertOK
  c519 : JointLeaf.control519.toD.CertOK
  c520 : JointLeaf.control520.toD.CertOK
  c521 : JointLeaf.control521.toD.CertOK
  c522 : JointLeaf.control522.toD.CertOK
  c525 : JointLeaf.control525.toD.CertOK
  c526 : JointLeaf.control526.toD.CertOK
  c527 : JointLeaf.control527.toD.CertOK
  c528 : JointLeaf.control528.toD.CertOK
  c531 : JointLeaf.control531.toD.CertOK
  c532 : JointLeaf.control532.toD.CertOK
  c535 : JointLeaf.control535.toD.CertOK
  c536 : JointLeaf.control536.toD.CertOK
  c537 : JointLeaf.control537.toD.CertOK
  c540 : JointLeaf.control540.toD.CertOK
  c543 : JointLeaf.control543.toD.CertOK
  c544 : JointLeaf.control544.toD.CertOK
  c545 : JointLeaf.control545.toD.CertOK
  c546 : JointLeaf.control546.toD.CertOK
  c547 : JointLeaf.control547.toD.CertOK
  c548 : JointLeaf.control548.toD.CertOK
  c549 : JointLeaf.control549.toD.CertOK
  c550 : JointLeaf.control550.toD.CertOK
  c551 : JointLeaf.control551.toD.CertOK
  c552 : JointLeaf.control552.toD.CertOK
  c553 : JointLeaf.control553.toD.CertOK
  c554 : JointLeaf.control554.toD.CertOK
  c556 : JointLeaf.control556.toD.CertOK
  c557 : JointLeaf.control557.toD.CertOK
  c560 : JointLeaf.control560.toD.CertOK
  c561 : JointLeaf.control561.toD.CertOK
  c564 : JointLeaf.control564.toD.CertOK
  c565 : JointLeaf.control565.toD.CertOK
  c566 : JointLeaf.control566.toD.CertOK
  c569 : JointLeaf.control569.toD.CertOK
  c572 : JointLeaf.control572.toD.CertOK
  c573 : JointLeaf.control573.toD.CertOK
  c574 : JointLeaf.control574.toD.CertOK
  c575 : JointLeaf.control575.toD.CertOK
  c576 : JointLeaf.control576.toD.CertOK
  c577 : JointLeaf.control577.toD.CertOK
  c578 : JointLeaf.control578.toD.CertOK
  c581 : JointLeaf.control581.toD.CertOK
  c582 : JointLeaf.control582.toD.CertOK
  c587 : JointLeaf.control587.toD.CertOK
  c588 : JointLeaf.control588.toD.CertOK
  c591 : JointLeaf.control591.toD.CertOK
  c592 : JointLeaf.control592.toD.CertOK
  c596 : JointLeaf.control596.toD.CertOK
  c597 : JointLeaf.control597.toD.CertOK
  c598 : JointLeaf.control598.toD.CertOK
  c600 : JointLeaf.control600.toD.CertOK
  c601 : JointLeaf.control601.toD.CertOK
  c602 : JointLeaf.control602.toD.CertOK
  c604 : JointLeaf.control604.toD.CertOK
  c605 : JointLeaf.control605.toD.CertOK
  c607 : JointLeaf.control607.toD.CertOK
  c609 : JointLeaf.control609.toD.CertOK
  c610 : JointLeaf.control610.toD.CertOK
  c614 : JointLeaf.control614.toD.CertOK
  c615 : JointLeaf.control615.toD.CertOK
  c616 : JointLeaf.control616.toD.CertOK
  c617 : JointLeaf.control617.toD.CertOK
  c619 : JointLeaf.control619.toD.CertOK
  c621 : JointLeaf.control621.toD.CertOK
  c622 : JointLeaf.control622.toD.CertOK
  c623 : JointLeaf.control623.toD.CertOK
  c624 : JointLeaf.control624.toD.CertOK
  c629 : JointLeaf.control629.toD.CertOK
  c630 : JointLeaf.control630.toD.CertOK
  c633 : JointLeaf.control633.toD.CertOK
  c635 : JointLeaf.control635.toD.CertOK
  c636 : JointLeaf.control636.toD.CertOK
  c637 : JointLeaf.control637.toD.CertOK
  c638 : JointLeaf.control638.toD.CertOK
  c641 : JointLeaf.control641.toD.CertOK
  c642 : JointLeaf.control642.toD.CertOK
  c645 : JointLeaf.control645.toD.CertOK
  c647 : JointLeaf.control647.toD.CertOK
  c648 : JointLeaf.control648.toD.CertOK
  c649 : JointLeaf.control649.toD.CertOK
  c650 : JointLeaf.control650.toD.CertOK
  c651 : JointLeaf.control651.toD.CertOK
  c652 : JointLeaf.control652.toD.CertOK
  c655 : JointLeaf.control655.toD.CertOK
  c657 : JointLeaf.control657.toD.CertOK
  c659 : JointLeaf.control659.toD.CertOK
  c660 : JointLeaf.control660.toD.CertOK
  c661 : JointLeaf.control661.toD.CertOK
  c662 : JointLeaf.control662.toD.CertOK
  c663 : JointLeaf.control663.toD.CertOK
  c666 : JointLeaf.control666.toD.CertOK
  c667 : JointLeaf.control667.toD.CertOK
  c676 : JointLeaf.control676.toD.CertOK
  c677 : JointLeaf.control677.toD.CertOK
  c679 : JointLeaf.control679.toD.CertOK
  c680 : JointLeaf.control680.toD.CertOK
  c683 : JointLeaf.control683.toD.CertOK
  c686 : JointLeaf.control686.toD.CertOK
  c688 : JointLeaf.control688.toD.CertOK
  c690 : JointLeaf.control690.toD.CertOK
  c691 : JointLeaf.control691.toD.CertOK
  c692 : JointLeaf.control692.toD.CertOK
  c697 : JointLeaf.control697.toD.CertOK
  c699 : JointLeaf.control699.toD.CertOK
  c702 : JointLeaf.control702.toD.CertOK
  c704 : JointLeaf.control704.toD.CertOK
  c705 : JointLeaf.control705.toD.CertOK
  c706 : JointLeaf.control706.toD.CertOK
  c707 : JointLeaf.control707.toD.CertOK
  c709 : JointLeaf.control709.toD.CertOK
  c710 : JointLeaf.control710.toD.CertOK
  c711 : JointLeaf.control711.toD.CertOK
  c712 : JointLeaf.control712.toD.CertOK
  c714 : JointLeaf.control714.toD.CertOK
  c715 : JointLeaf.control715.toD.CertOK
  c717 : JointLeaf.control717.toD.CertOK
  c718 : JointLeaf.control718.toD.CertOK
  c719 : JointLeaf.control719.toD.CertOK
  c720 : JointLeaf.control720.toD.CertOK
  c721 : JointLeaf.control721.toD.CertOK
  c722 : JointLeaf.control722.toD.CertOK
  c723 : JointLeaf.control723.toD.CertOK
  c724 : JointLeaf.control724.toD.CertOK
  c725 : JointLeaf.control725.toD.CertOK
  c726 : JointLeaf.control726.toD.CertOK
  c727 : JointLeaf.control727.toD.CertOK
  c728 : JointLeaf.control728.toD.CertOK
  c730 : JointLeaf.control730.toD.CertOK
  c731 : JointLeaf.control731.toD.CertOK
  c733 : JointLeaf.control733.toD.CertOK
  c734 : JointLeaf.control734.toD.CertOK
  c736 : JointLeaf.control736.toD.CertOK
  c737 : JointLeaf.control737.toD.CertOK
  c738 : JointLeaf.control738.toD.CertOK
  c739 : JointLeaf.control739.toD.CertOK
  c741 : JointLeaf.control741.toD.CertOK
  c744 : JointLeaf.control744.toD.CertOK
  c745 : JointLeaf.control745.toD.CertOK
  c746 : JointLeaf.control746.toD.CertOK
  c747 : JointLeaf.control747.toD.CertOK
  c748 : JointLeaf.control748.toD.CertOK
  c749 : JointLeaf.control749.toD.CertOK
  c750 : JointLeaf.control750.toD.CertOK
  c751 : JointLeaf.control751.toD.CertOK
  c752 : JointLeaf.control752.toD.CertOK
  c753 : JointLeaf.control753.toD.CertOK
  c754 : JointLeaf.control754.toD.CertOK
  c756 : JointLeaf.control756.toD.CertOK
  c757 : JointLeaf.control757.toD.CertOK
  c758 : JointLeaf.control758.toD.CertOK
  c759 : JointLeaf.control759.toD.CertOK
  c760 : JointLeaf.control760.toD.CertOK
  c761 : JointLeaf.control761.toD.CertOK
  c763 : JointLeaf.control763.toD.CertOK
  c764 : JointLeaf.control764.toD.CertOK
  c766 : JointLeaf.control766.toD.CertOK
  c768 : JointLeaf.control768.toD.CertOK
  c769 : JointLeaf.control769.toD.CertOK
  c770 : JointLeaf.control770.toD.CertOK
  c771 : JointLeaf.control771.toD.CertOK
  c772 : JointLeaf.control772.toD.CertOK
  c773 : JointLeaf.control773.toD.CertOK
  c774 : JointLeaf.control774.toD.CertOK
  c776 : JointLeaf.control776.toD.CertOK
  c782 : JointLeaf.control782.toD.CertOK
  c783 : JointLeaf.control783.toD.CertOK
  c784 : JointLeaf.control784.toD.CertOK
  c785 : JointLeaf.control785.toD.CertOK
  c788 : JointLeaf.control788.toD.CertOK
  c789 : JointLeaf.control789.toD.CertOK
  c790 : JointLeaf.control790.toD.CertOK
  c791 : JointLeaf.control791.toD.CertOK
  c792 : JointLeaf.control792.toD.CertOK
  c793 : JointLeaf.control793.toD.CertOK
  c794 : JointLeaf.control794.toD.CertOK
  c795 : JointLeaf.control795.toD.CertOK
  c796 : JointLeaf.control796.toD.CertOK
  c798 : JointLeaf.control798.toD.CertOK
  c800 : JointLeaf.control800.toD.CertOK
  c801 : JointLeaf.control801.toD.CertOK
  c802 : JointLeaf.control802.toD.CertOK
  c803 : JointLeaf.control803.toD.CertOK
  c804 : JointLeaf.control804.toD.CertOK
  c805 : JointLeaf.control805.toD.CertOK
  c806 : JointLeaf.control806.toD.CertOK
  c808 : JointLeaf.control808.toD.CertOK
  c810 : JointLeaf.control810.toD.CertOK
  c812 : JointLeaf.control812.toD.CertOK
  c814 : JointLeaf.control814.toD.CertOK
  c815 : JointLeaf.control815.toD.CertOK
  c816 : JointLeaf.control816.toD.CertOK
  c817 : JointLeaf.control817.toD.CertOK
  c818 : JointLeaf.control818.toD.CertOK
  c819 : JointLeaf.control819.toD.CertOK
  c820 : JointLeaf.control820.toD.CertOK
  c821 : JointLeaf.control821.toD.CertOK
  c822 : JointLeaf.control822.toD.CertOK
  c823 : JointLeaf.control823.toD.CertOK
  c824 : JointLeaf.control824.toD.CertOK
  c825 : JointLeaf.control825.toD.CertOK
  c826 : JointLeaf.control826.toD.CertOK
  c827 : JointLeaf.control827.toD.CertOK
  c828 : JointLeaf.control828.toD.CertOK
  c829 : JointLeaf.control829.toD.CertOK
  c830 : JointLeaf.control830.toD.CertOK
  c831 : JointLeaf.control831.toD.CertOK
  c832 : JointLeaf.control832.toD.CertOK
  c833 : JointLeaf.control833.toD.CertOK
  c835 : JointLeaf.control835.toD.CertOK
  c836 : JointLeaf.control836.toD.CertOK
  c837 : JointLeaf.control837.toD.CertOK
  c838 : JointLeaf.control838.toD.CertOK
  c839 : JointLeaf.control839.toD.CertOK
  c849 : JointLeaf.control849.toD.CertOK
  c851 : JointLeaf.control851.toD.CertOK
  c852 : JointLeaf.control852.toD.CertOK
  c853 : JointLeaf.control853.toD.CertOK
  c854 : JointLeaf.control854.toD.CertOK
  c855 : JointLeaf.control855.toD.CertOK
  c856 : JointLeaf.control856.toD.CertOK
  c857 : JointLeaf.control857.toD.CertOK
  c858 : JointLeaf.control858.toD.CertOK
  c859 : JointLeaf.control859.toD.CertOK
  c860 : JointLeaf.control860.toD.CertOK
  c861 : JointLeaf.control861.toD.CertOK
  c862 : JointLeaf.control862.toD.CertOK
  c863 : JointLeaf.control863.toD.CertOK
  c864 : JointLeaf.control864.toD.CertOK
  c865 : JointLeaf.control865.toD.CertOK
  c866 : JointLeaf.control866.toD.CertOK
  c867 : JointLeaf.control867.toD.CertOK
  c868 : JointLeaf.control868.toD.CertOK
  c869 : JointLeaf.control869.toD.CertOK
  c870 : JointLeaf.control870.toD.CertOK
  c871 : JointLeaf.control871.toD.CertOK
  c872 : JointLeaf.control872.toD.CertOK
  c873 : JointLeaf.control873.toD.CertOK
  c874 : JointLeaf.control874.toD.CertOK
  c875 : JointLeaf.control875.toD.CertOK
  c876 : JointLeaf.control876.toD.CertOK
  c877 : JointLeaf.control877.toD.CertOK
  c878 : JointLeaf.control878.toD.CertOK
  c879 : JointLeaf.control879.toD.CertOK
  c880 : JointLeaf.control880.toD.CertOK
  c881 : JointLeaf.control881.toD.CertOK
  c882 : JointLeaf.control882.toD.CertOK
  c885 : JointLeaf.control885.toD.CertOK
  c888 : JointLeaf.control888.toD.CertOK
  c889 : JointLeaf.control889.toD.CertOK
  c890 : JointLeaf.control890.toD.CertOK
  c891 : JointLeaf.control891.toD.CertOK
  c892 : JointLeaf.control892.toD.CertOK
  c893 : JointLeaf.control893.toD.CertOK
  c894 : JointLeaf.control894.toD.CertOK
  c895 : JointLeaf.control895.toD.CertOK
  c896 : JointLeaf.control896.toD.CertOK
  c897 : JointLeaf.control897.toD.CertOK
  c898 : JointLeaf.control898.toD.CertOK
  c899 : JointLeaf.control899.toD.CertOK
  c900 : JointLeaf.control900.toD.CertOK
  c901 : JointLeaf.control901.toD.CertOK
  c903 : JointLeaf.control903.toD.CertOK
  c905 : JointLeaf.control905.toD.CertOK
  c906 : JointLeaf.control906.toD.CertOK
  c907 : JointLeaf.control907.toD.CertOK
  c908 : JointLeaf.control908.toD.CertOK
  c909 : JointLeaf.control909.toD.CertOK
  c910 : JointLeaf.control910.toD.CertOK
  c911 : JointLeaf.control911.toD.CertOK
  c912 : JointLeaf.control912.toD.CertOK
  c913 : JointLeaf.control913.toD.CertOK
  c915 : JointLeaf.control915.toD.CertOK
  c916 : JointLeaf.control916.toD.CertOK
  c917 : JointLeaf.control917.toD.CertOK

theorem terminals0_certOK (h : Certificates) : ∀ t ∈ terminals0, t.control.toD.CertOK := by
  simp [terminals0, terminal1, terminal2, terminal3, terminal4, terminal5, terminal6, terminal7, terminal8, terminal9, terminal10, terminal11, terminal12, terminal13, terminal14, terminal15, terminal16, terminal17, terminal18, terminal19, terminal20, terminal21, terminal22, terminal23, terminal24, terminal25, terminal26, terminal27, terminal28, terminal29, terminal30, terminal31, terminal32, h.c1, h.c2, h.c3, h.c4, h.c5, h.c6, h.c7, h.c8, h.c9, h.c10, h.c11, h.c12, h.c13, h.c14, h.c15, h.c16, h.c17, h.c18, h.c19, h.c20, h.c21, h.c22, h.c23, h.c24, h.c25, h.c26, h.c27, h.c29, h.c290, h.c915, h.c916, h.c917]

theorem terminals1_certOK (h : Certificates) : ∀ t ∈ terminals1, t.control.toD.CertOK := by
  simp [terminals1, terminal33, terminal34, terminal35, terminal36, terminal37, terminal38, terminal39, terminal40, terminal41, terminal42, terminal43, terminal44, terminal45, terminal46, terminal47, terminal48, terminal49, terminal50, terminal51, terminal52, terminal53, terminal54, terminal55, terminal56, terminal57, terminal58, terminal59, terminal60, terminal61, terminal62, terminal63, terminal64, h.c28, h.c30, h.c31, h.c33, h.c34, h.c35, h.c36, h.c38, h.c39, h.c40, h.c42, h.c43, h.c45, h.c46, h.c47, h.c48, h.c49, h.c50, h.c51, h.c53, h.c54, h.c55, h.c57, h.c58, h.c59, h.c61, h.c62, h.c65, h.c66, h.c68, h.c69, h.c70]

theorem terminals2_certOK (h : Certificates) : ∀ t ∈ terminals2, t.control.toD.CertOK := by
  simp [terminals2, terminal65, terminal66, terminal67, terminal68, terminal69, terminal70, terminal71, terminal72, terminal73, terminal74, terminal75, terminal76, terminal77, terminal78, terminal79, terminal80, terminal81, terminal82, terminal83, terminal84, terminal85, terminal86, terminal87, terminal88, terminal89, terminal90, terminal91, terminal92, terminal93, terminal94, terminal95, terminal96, h.c67, h.c71, h.c75, h.c76, h.c77, h.c79, h.c80, h.c81, h.c86, h.c87, h.c89, h.c90, h.c91, h.c92, h.c93, h.c96, h.c98, h.c100, h.c101, h.c102, h.c111, h.c112, h.c114, h.c115, h.c116, h.c127, h.c128, h.c131, h.c132, h.c133, h.c134, h.c137]

theorem terminals3_certOK (h : Certificates) : ∀ t ∈ terminals3, t.control.toD.CertOK := by
  simp [terminals3, terminal97, terminal98, terminal99, terminal100, terminal101, terminal102, terminal103, terminal104, terminal105, terminal106, terminal107, terminal108, terminal109, terminal110, terminal111, terminal112, terminal113, terminal114, terminal115, terminal116, terminal117, terminal118, terminal119, terminal120, terminal121, terminal122, terminal123, terminal124, terminal125, terminal126, terminal127, terminal128, h.c138, h.c142, h.c143, h.c149, h.c150, h.c156, h.c157, h.c158, h.c159, h.c162, h.c163, h.c178, h.c179, h.c180, h.c181, h.c186, h.c187, h.c203, h.c204, h.c205, h.c210, h.c211, h.c212, h.c213, h.c217, h.c218, h.c237, h.c238, h.c239, h.c247, h.c248, h.c249]

theorem terminals4_certOK (h : Certificates) : ∀ t ∈ terminals4, t.control.toD.CertOK := by
  simp [terminals4, terminal129, terminal130, terminal131, terminal132, terminal133, terminal134, terminal135, terminal136, terminal137, terminal138, terminal139, terminal140, terminal141, terminal142, terminal143, terminal144, terminal145, terminal146, terminal147, terminal148, terminal149, terminal150, terminal151, terminal152, terminal153, terminal154, terminal155, terminal156, terminal157, terminal158, terminal159, terminal160, h.c233, h.c240, h.c241, h.c252, h.c253, h.c268, h.c269, h.c274, h.c275, h.c276, h.c277, h.c282, h.c283, h.c286, h.c291, h.c292, h.c313, h.c314, h.c320, h.c321, h.c322, h.c325, h.c326, h.c327, h.c333, h.c334, h.c364, h.c365, h.c366, h.c367, h.c371, h.c372]

theorem terminals5_certOK (h : Certificates) : ∀ t ∈ terminals5, t.control.toD.CertOK := by
  simp [terminals5, terminal161, terminal162, terminal163, terminal164, terminal165, terminal166, terminal167, terminal168, terminal169, terminal170, terminal171, terminal172, terminal173, terminal174, terminal175, terminal176, terminal177, terminal178, terminal179, terminal180, terminal181, terminal182, terminal183, terminal184, terminal185, terminal186, terminal187, terminal188, terminal189, terminal190, terminal191, terminal192, h.c359, h.c360, h.c377, h.c378, h.c402, h.c407, h.c408, h.c409, h.c410, h.c411, h.c414, h.c415, h.c416, h.c419, h.c422, h.c424, h.c425, h.c454, h.c455, h.c460, h.c461, h.c462, h.c463, h.c466, h.c470, h.c471, h.c475, h.c476, h.c500, h.c504, h.c506, h.c507]

theorem terminals6_certOK (h : Certificates) : ∀ t ∈ terminals6, t.control.toD.CertOK := by
  simp [terminals6, terminal193, terminal194, terminal195, terminal196, terminal197, terminal198, terminal199, terminal200, terminal201, terminal202, terminal203, terminal204, terminal205, terminal206, terminal207, terminal208, terminal209, terminal210, terminal211, terminal212, terminal213, terminal214, terminal215, terminal216, terminal217, terminal218, terminal219, terminal220, terminal221, terminal222, terminal223, terminal224, h.c494, h.c501, h.c502, h.c510, h.c511, h.c526, h.c527, h.c532, h.c535, h.c536, h.c537, h.c540, h.c543, h.c544, h.c560, h.c561, h.c564, h.c565, h.c566, h.c569, h.c572, h.c573, h.c574, h.c587, h.c588, h.c591, h.c592, h.c596, h.c597, h.c607, h.c609, h.c610]

theorem terminals7_certOK (h : Certificates) : ∀ t ∈ terminals7, t.control.toD.CertOK := by
  simp [terminals7, terminal225, terminal226, terminal227, terminal228, terminal229, terminal230, terminal231, terminal232, terminal233, terminal234, terminal235, terminal236, terminal237, terminal238, terminal239, terminal240, terminal241, terminal242, terminal243, terminal244, terminal245, terminal246, terminal247, terminal248, terminal249, terminal250, terminal251, terminal252, terminal253, terminal254, terminal255, terminal256, h.c614, h.c615, h.c616, h.c629, h.c630, h.c633, h.c635, h.c636, h.c641, h.c642, h.c645, h.c647, h.c648, h.c649, h.c657, h.c659, h.c660, h.c661, h.c686, h.c688, h.c690, h.c691, h.c692, h.c702, h.c704, h.c705, h.c706, h.c707, h.c717, h.c721, h.c722, h.c723]

theorem terminals8_certOK (h : Certificates) : ∀ t ∈ terminals8, t.control.toD.CertOK := by
  simp [terminals8, terminal257, terminal258, terminal259, terminal260, terminal261, terminal262, terminal263, terminal264, terminal265, terminal266, terminal267, terminal268, terminal269, terminal270, terminal271, terminal272, terminal273, terminal274, terminal275, terminal276, terminal277, terminal278, terminal279, terminal280, terminal281, terminal282, terminal283, terminal284, terminal285, terminal286, terminal287, terminal288, h.c718, h.c719, h.c720, h.c731, h.c733, h.c734, h.c736, h.c737, h.c738, h.c739, h.c744, h.c745, h.c746, h.c747, h.c748, h.c749, h.c768, h.c769, h.c770, h.c771, h.c772, h.c773, h.c774, h.c791, h.c792, h.c793, h.c794, h.c795, h.c801, h.c802, h.c803, h.c804]

theorem terminals9_certOK (h : Certificates) : ∀ t ∈ terminals9, t.control.toD.CertOK := by
  simp [terminals9, terminal289, terminal290, terminal291, terminal292, terminal293, terminal294, terminal295, terminal296, terminal297, terminal298, terminal299, terminal300, terminal301, terminal302, terminal303, terminal304, terminal305, terminal306, terminal307, terminal308, terminal309, terminal310, terminal311, terminal312, terminal313, terminal314, terminal315, terminal316, terminal317, terminal318, terminal319, terminal320, h.c800, h.c810, h.c814, h.c815, h.c816, h.c817, h.c818, h.c819, h.c820, h.c821, h.c822, h.c823, h.c824, h.c825, h.c826, h.c828, h.c829, h.c830, h.c831, h.c836, h.c837, h.c838, h.c839, h.c849, h.c851, h.c853, h.c854, h.c855, h.c856, h.c858, h.c861, h.c862]

theorem terminals10_certOK (h : Certificates) : ∀ t ∈ terminals10, t.control.toD.CertOK := by
  simp [terminals10, terminal321, terminal322, terminal323, terminal324, terminal325, terminal326, terminal327, terminal328, terminal329, terminal330, terminal331, terminal332, terminal333, terminal334, terminal335, terminal336, terminal337, terminal338, terminal339, terminal340, terminal341, terminal342, terminal343, terminal344, terminal345, terminal346, terminal347, terminal348, terminal349, terminal350, terminal351, terminal352, h.c37, h.c41, h.c44, h.c859, h.c860, h.c864, h.c867, h.c868, h.c869, h.c870, h.c872, h.c874, h.c875, h.c876, h.c877, h.c879, h.c880, h.c881, h.c882, h.c885, h.c888, h.c889, h.c891, h.c892, h.c893, h.c894, h.c898, h.c903, h.c905, h.c906, h.c908, h.c911]

theorem terminals11_certOK (h : Certificates) : ∀ t ∈ terminals11, t.control.toD.CertOK := by
  simp [terminals11, terminal353, terminal354, terminal355, terminal356, terminal357, terminal358, terminal359, terminal360, terminal361, terminal362, terminal363, terminal364, terminal365, terminal366, terminal367, terminal368, terminal369, terminal370, terminal371, terminal372, terminal373, terminal374, terminal375, terminal376, terminal377, terminal378, terminal379, terminal380, terminal381, terminal382, terminal383, terminal384, h.c51, h.c59, h.c60, h.c63, h.c67, h.c76, h.c77, h.c81, h.c82, h.c87, h.c88, h.c92, h.c93, h.c102, h.c116, h.c134, h.c150, h.c158, h.c159, h.c174, h.c181, h.c182, h.c204, h.c205, h.c233, h.c240, h.c241, h.c268, h.c269, h.c270, h.c312, h.c313]

theorem terminals12_certOK (h : Certificates) : ∀ t ∈ terminals12, t.control.toD.CertOK := by
  simp [terminals12, terminal385, terminal386, terminal387, terminal388, terminal389, terminal390, terminal391, terminal392, terminal393, terminal394, terminal395, terminal396, terminal397, terminal398, terminal399, terminal400, terminal401, terminal402, terminal403, terminal404, terminal405, terminal406, terminal407, terminal408, terminal409, terminal410, terminal411, terminal412, terminal413, terminal414, terminal415, terminal416, h.c314, h.c353, h.c358, h.c359, h.c360, h.c402, h.c409, h.c410, h.c453, h.c454, h.c455, h.c456, h.c461, h.c494, h.c500, h.c501, h.c502, h.c526, h.c527, h.c528, h.c531, h.c547, h.c551, h.c556, h.c577, h.c581, h.c601, h.c604, h.c623, h.c637, h.c638, h.c655]

theorem terminals13_certOK (h : Certificates) : ∀ t ∈ terminals13, t.control.toD.CertOK := by
  simp [terminals13, terminal417, terminal418, terminal419, terminal420, terminal421, terminal422, terminal423, terminal424, terminal425, terminal426, terminal427, terminal428, terminal429, terminal430, terminal431, terminal432, terminal433, terminal434, terminal435, terminal436, terminal437, terminal438, terminal439, terminal440, terminal441, terminal442, terminal443, terminal444, terminal445, terminal446, terminal447, terminal448, h.c683, h.c697, h.c699, h.c714, h.c715, h.c727, h.c728, h.c730, h.c741, h.c763, h.c766, h.c784, h.c789, h.c790, h.c798, h.c810, h.c819, h.c820, h.c826, h.c827, h.c836, h.c852, h.c857, h.c858, h.c865, h.c866, h.c878, h.c885, h.c891, h.c894, h.c899, h.c909]

theorem terminals14_certOK (h : Certificates) : ∀ t ∈ terminals14, t.control.toD.CertOK := by
  simp [terminals14, terminal449, terminal450, terminal451, terminal452, terminal453, terminal454, terminal455, terminal456, terminal457, terminal458, terminal459, terminal460, terminal461, terminal462, terminal463, terminal464, terminal465, terminal466, terminal467, terminal468, terminal469, terminal470, terminal471, terminal472, terminal473, terminal474, terminal475, terminal476, terminal477, terminal478, terminal479, terminal480, h.c46, h.c51, h.c59, h.c67, h.c76, h.c77, h.c78, h.c81, h.c82, h.c83, h.c87, h.c88, h.c92, h.c93, h.c102, h.c105, h.c116, h.c117, h.c119, h.c134, h.c138, h.c149, h.c150, h.c151, h.c158, h.c159, h.c160, h.c181, h.c907, h.c910, h.c912, h.c913]

theorem terminals15_certOK (h : Certificates) : ∀ t ∈ terminals15, t.control.toD.CertOK := by
  simp [terminals15, terminal481, terminal482, terminal483, terminal484, terminal485, terminal486, terminal487, terminal488, terminal489, terminal490, terminal491, terminal492, terminal493, terminal494, terminal495, terminal496, terminal497, terminal498, terminal499, terminal500, terminal501, terminal502, terminal503, terminal504, terminal505, terminal506, terminal507, terminal508, terminal509, terminal510, terminal511, terminal512, h.c204, h.c205, h.c232, h.c233, h.c260, h.c261, h.c262, h.c269, h.c270, h.c299, h.c300, h.c306, h.c307, h.c308, h.c346, h.c347, h.c348, h.c379, h.c385, h.c386, h.c393, h.c394, h.c395, h.c397, h.c403, h.c434, h.c439, h.c440, h.c441, h.c448, h.c449, h.c488]

theorem terminals16_certOK (h : Certificates) : ∀ t ∈ terminals16, t.control.toD.CertOK := by
  simp [terminals16, terminal513, terminal514, terminal515, terminal516, terminal517, terminal518, terminal519, terminal520, terminal521, terminal522, terminal523, terminal524, terminal525, terminal526, terminal527, terminal528, terminal529, terminal530, terminal531, terminal532, terminal533, terminal534, terminal535, terminal536, terminal537, terminal538, terminal539, terminal540, terminal541, terminal542, terminal543, terminal544, h.c479, h.c483, h.c489, h.c490, h.c491, h.c495, h.c519, h.c520, h.c522, h.c525, h.c551, h.c552, h.c553, h.c556, h.c575, h.c576, h.c578, h.c581, h.c582, h.c602, h.c604, h.c605, h.c622, h.c623, h.c637, h.c638, h.c655, h.c683, h.c699, h.c714, h.c715, h.c727]

theorem terminals17_certOK (h : Certificates) : ∀ t ∈ terminals17, t.control.toD.CertOK := by
  simp [terminals17, terminal545, terminal546, terminal547, terminal548, terminal549, terminal550, terminal551, terminal552, terminal553, terminal554, terminal555, terminal556, terminal557, terminal558, terminal559, terminal560, terminal561, terminal562, terminal563, terminal564, terminal565, terminal566, terminal567, terminal568, terminal569, terminal570, terminal571, terminal572, terminal573, terminal574, terminal575, terminal576, h.c32, h.c37, h.c51, h.c59, h.c67, h.c76, h.c77, h.c81, h.c87, h.c88, h.c92, h.c93, h.c97, h.c102, h.c110, h.c116, h.c728, h.c741, h.c763, h.c784, h.c789, h.c798, h.c810, h.c819, h.c826, h.c836, h.c849, h.c857, h.c863, h.c866, h.c872, h.c907]

theorem terminals18_certOK (h : Certificates) : ∀ t ∈ terminals18, t.control.toD.CertOK := by
  simp [terminals18, terminal577, terminal578, terminal579, terminal580, terminal581, terminal582, terminal583, terminal584, terminal585, terminal586, terminal587, terminal588, terminal589, terminal590, terminal591, terminal592, terminal593, terminal594, terminal595, terminal596, terminal597, terminal598, terminal599, terminal600, terminal601, terminal602, terminal603, terminal604, terminal605, terminal606, terminal607, terminal608, h.c133, h.c134, h.c149, h.c150, h.c172, h.c173, h.c194, h.c195, h.c196, h.c204, h.c205, h.c232, h.c233, h.c260, h.c261, h.c262, h.c298, h.c299, h.c300, h.c346, h.c347, h.c348, h.c379, h.c385, h.c388, h.c393, h.c394, h.c403, h.c438, h.c439, h.c440, h.c448]

theorem terminals19_certOK (h : Certificates) : ∀ t ∈ terminals19, t.control.toD.CertOK := by
  simp [terminals19, terminal609, terminal610, terminal611, terminal612, terminal613, terminal614, terminal615, terminal616, terminal617, terminal618, terminal619, terminal620, terminal621, terminal622, terminal623, terminal624, terminal625, terminal626, terminal627, terminal628, terminal629, terminal630, terminal631, terminal632, terminal633, terminal634, terminal635, terminal636, terminal637, terminal638, terminal639, terminal640, h.c482, h.c484, h.c488, h.c489, h.c490, h.c518, h.c519, h.c521, h.c546, h.c548, h.c549, h.c552, h.c556, h.c557, h.c581, h.c582, h.c601, h.c602, h.c604, h.c623, h.c624, h.c637, h.c638, h.c655, h.c683, h.c699, h.c710, h.c714, h.c715, h.c727, h.c728, h.c741]

theorem terminals20_certOK (h : Certificates) : ∀ t ∈ terminals20, t.control.toD.CertOK := by
  simp [terminals20, terminal641, terminal642, terminal643, terminal644, terminal645, terminal646, terminal647, terminal648, terminal649, terminal650, terminal651, terminal652, terminal653, terminal654, terminal655, terminal656, terminal657, terminal658, terminal659, terminal660, terminal661, terminal662, terminal663, terminal664, terminal665, terminal666, terminal667, terminal668, terminal669, terminal670, terminal671, terminal672, h.c46, h.c51, h.c59, h.c67, h.c76, h.c77, h.c82, h.c87, h.c88, h.c92, h.c93, h.c97, h.c102, h.c763, h.c784, h.c789, h.c796, h.c798, h.c810, h.c819, h.c826, h.c832, h.c833, h.c835, h.c836, h.c849, h.c856, h.c863, h.c864, h.c891, h.c894, h.c899]

theorem terminals21_certOK (h : Certificates) : ∀ t ∈ terminals21, t.control.toD.CertOK := by
  simp [terminals21, terminal673, terminal674, terminal675, terminal676, terminal677, terminal678, terminal679, terminal680, terminal681, terminal682, terminal683, terminal684, terminal685, terminal686, terminal687, terminal688, terminal689, terminal690, terminal691, terminal692, terminal693, terminal694, terminal695, terminal696, terminal697, terminal698, terminal699, terminal700, terminal701, terminal702, terminal703, terminal704, h.c110, h.c116, h.c118, h.c133, h.c134, h.c149, h.c150, h.c152, h.c172, h.c173, h.c194, h.c195, h.c196, h.c205, h.c232, h.c233, h.c260, h.c261, h.c262, h.c298, h.c299, h.c300, h.c306, h.c346, h.c347, h.c348, h.c383, h.c384, h.c385, h.c386, h.c437, h.c438]

theorem terminals22_certOK (h : Certificates) : ∀ t ∈ terminals22, t.control.toD.CertOK := by
  simp [terminals22, terminal705, terminal706, terminal707, terminal708, terminal709, terminal710, terminal711, terminal712, terminal713, terminal714, terminal715, terminal716, terminal717, terminal718, terminal719, terminal720, terminal721, terminal722, terminal723, terminal724, terminal725, terminal726, terminal727, terminal728, terminal729, terminal730, terminal731, terminal732, terminal733, terminal734, terminal735, terminal736, h.c432, h.c439, h.c440, h.c441, h.c442, h.c443, h.c480, h.c483, h.c484, h.c485, h.c486, h.c488, h.c489, h.c496, h.c518, h.c519, h.c521, h.c525, h.c547, h.c548, h.c551, h.c556, h.c575, h.c581, h.c582, h.c602, h.c604, h.c605, h.c623, h.c624, h.c637, h.c638]

theorem terminals23_certOK (h : Certificates) : ∀ t ∈ terminals23, t.control.toD.CertOK := by
  simp [terminals23, terminal737, terminal738, terminal739, terminal740, terminal741, terminal742, terminal743, terminal744, terminal745, terminal746, terminal747, terminal748, terminal749, terminal750, terminal751, terminal752, terminal753, terminal754, terminal755, terminal756, terminal757, terminal758, terminal759, terminal760, terminal761, terminal762, terminal763, terminal764, terminal765, terminal766, terminal767, terminal768, h.c650, h.c651, h.c652, h.c655, h.c663, h.c667, h.c683, h.c699, h.c712, h.c714, h.c724, h.c726, h.c727, h.c741, h.c763, h.c784, h.c785, h.c796, h.c798, h.c806, h.c808, h.c810, h.c819, h.c824, h.c826, h.c836, h.c849, h.c856, h.c863, h.c873, h.c890, h.c891]

theorem terminals24_certOK (h : Certificates) : ∀ t ∈ terminals24, t.control.toD.CertOK := by
  simp [terminals24, terminal769, terminal770, terminal771, terminal772, terminal773, terminal774, terminal775, terminal776, terminal777, terminal778, terminal779, terminal780, terminal781, terminal782, terminal783, terminal784, terminal785, terminal786, terminal787, terminal788, terminal789, terminal790, terminal791, terminal792, terminal793, terminal794, terminal795, terminal796, terminal797, terminal798, terminal799, terminal800, h.c41, h.c46, h.c51, h.c56, h.c59, h.c67, h.c76, h.c77, h.c87, h.c88, h.c92, h.c93, h.c97, h.c104, h.c110, h.c116, h.c134, h.c149, h.c150, h.c152, h.c160, h.c172, h.c173, h.c175, h.c182, h.c194, h.c195, h.c196, h.c205, h.c232, h.c234, h.c242]

theorem terminals25_certOK (h : Certificates) : ∀ t ∈ terminals25, t.control.toD.CertOK := by
  simp [terminals25, terminal801, terminal802, terminal803, terminal804, terminal805, terminal806, terminal807, terminal808, terminal809, terminal810, terminal811, terminal812, terminal813, terminal814, terminal815, terminal816, terminal817, terminal818, terminal819, terminal820, terminal821, terminal822, terminal823, terminal824, terminal825, terminal826, terminal827, terminal828, terminal829, terminal830, terminal831, terminal832, h.c260, h.c261, h.c262, h.c298, h.c299, h.c300, h.c338, h.c339, h.c347, h.c348, h.c383, h.c384, h.c385, h.c386, h.c428, h.c429, h.c430, h.c431, h.c437, h.c478, h.c480, h.c482, h.c483, h.c484, h.c518, h.c519, h.c525, h.c548, h.c552, h.c554, h.c556, h.c557]

theorem terminals26_certOK (h : Certificates) : ∀ t ∈ terminals26, t.control.toD.CertOK := by
  simp [terminals26, terminal833, terminal834, terminal835, terminal836, terminal837, terminal838, terminal839, terminal840, terminal841, terminal842, terminal843, terminal844, terminal845, terminal846, terminal847, terminal848, terminal849, terminal850, terminal851, terminal852, terminal853, terminal854, terminal855, terminal856, terminal857, terminal858, terminal859, terminal860, terminal861, terminal862, terminal863, terminal864, h.c545, h.c581, h.c582, h.c601, h.c602, h.c604, h.c623, h.c637, h.c638, h.c655, h.c683, h.c699, h.c709, h.c714, h.c727, h.c741, h.c763, h.c784, h.c785, h.c796, h.c805, h.c806, h.c808, h.c810, h.c812, h.c819, h.c820, h.c824, h.c826, h.c836, h.c849, h.c856]

theorem terminals27_certOK (h : Certificates) : ∀ t ∈ terminals27, t.control.toD.CertOK := by
  simp [terminals27, terminal865, terminal866, terminal867, terminal868, terminal869, terminal870, terminal871, terminal872, terminal873, terminal874, terminal875, terminal876, terminal877, terminal878, terminal879, terminal880, terminal881, terminal882, terminal883, terminal884, terminal885, terminal886, terminal887, terminal888, terminal889, terminal890, terminal891, terminal892, terminal893, terminal894, terminal895, terminal896, h.c37, h.c41, h.c46, h.c51, h.c59, h.c60, h.c63, h.c67, h.c76, h.c77, h.c87, h.c88, h.c92, h.c93, h.c97, h.c102, h.c110, h.c116, h.c133, h.c134, h.c149, h.c150, h.c172, h.c194, h.c195, h.c863, h.c878, h.c890, h.c891, h.c895, h.c896, h.c897]

theorem terminals28_certOK (h : Certificates) : ∀ t ∈ terminals28, t.control.toD.CertOK := by
  simp [terminals28, terminal897, terminal898, terminal899, terminal900, terminal901, terminal902, terminal903, terminal904, terminal905, terminal906, terminal907, terminal908, terminal909, terminal910, terminal911, terminal912, terminal913, terminal914, terminal915, terminal916, terminal917, terminal918, terminal919, terminal920, terminal921, terminal922, terminal923, terminal924, terminal925, terminal926, terminal927, terminal928, h.c196, h.c205, h.c232, h.c233, h.c234, h.c242, h.c260, h.c261, h.c262, h.c298, h.c299, h.c300, h.c338, h.c339, h.c340, h.c348, h.c383, h.c384, h.c385, h.c429, h.c430, h.c433, h.c437, h.c438, h.c480, h.c482, h.c483, h.c484, h.c488, h.c496, h.c518, h.c521]

theorem terminals29_certOK (h : Certificates) : ∀ t ∈ terminals29, t.control.toD.CertOK := by
  simp [terminals29, terminal929, terminal930, terminal931, terminal932, terminal933, terminal934, terminal935, terminal936, terminal937, terminal938, terminal939, terminal940, terminal941, terminal942, terminal943, terminal944, terminal945, terminal946, terminal947, terminal948, terminal949, terminal950, terminal951, terminal952, terminal953, terminal954, terminal955, terminal956, terminal957, terminal958, terminal959, terminal960, h.c512, h.c519, h.c547, h.c556, h.c557, h.c581, h.c582, h.c600, h.c601, h.c602, h.c621, h.c622, h.c637, h.c638, h.c655, h.c662, h.c666, h.c676, h.c677, h.c679, h.c680, h.c683, h.c699, h.c709, h.c714, h.c724, h.c726, h.c727, h.c741, h.c763, h.c784, h.c785]

theorem terminals30_certOK (h : Certificates) : ∀ t ∈ terminals30, t.control.toD.CertOK := by
  simp [terminals30, terminal961, terminal962, terminal963, terminal964, terminal965, terminal966, terminal967, terminal968, terminal969, terminal970, terminal971, terminal972, terminal973, terminal974, terminal975, terminal976, terminal977, terminal978, terminal979, terminal980, terminal981, terminal982, terminal983, terminal984, terminal985, terminal986, terminal987, terminal988, terminal989, terminal990, terminal991, terminal992, h.c32, h.c37, h.c51, h.c52, h.c56, h.c59, h.c67, h.c76, h.c77, h.c87, h.c88, h.c92, h.c97, h.c102, h.c110, h.c116, h.c133, h.c134, h.c149, h.c150, h.c152, h.c160, h.c782, h.c788, h.c796, h.c798, h.c810, h.c819, h.c824, h.c826, h.c863, h.c878]

theorem terminals31_certOK (h : Certificates) : ∀ t ∈ terminals31, t.control.toD.CertOK := by
  simp [terminals31, terminal993, terminal994, terminal995, terminal996, terminal997, terminal998, terminal999, terminal1000, terminal1001, terminal1002, terminal1003, terminal1004, terminal1005, terminal1006, terminal1007, terminal1008, terminal1009, terminal1010, terminal1011, terminal1012, terminal1013, terminal1014, terminal1015, terminal1016, terminal1017, terminal1018, terminal1019, terminal1020, terminal1021, terminal1022, terminal1023, terminal1024, h.c172, h.c173, h.c194, h.c195, h.c196, h.c205, h.c206, h.c224, h.c232, h.c233, h.c260, h.c261, h.c262, h.c298, h.c299, h.c300, h.c340, h.c341, h.c346, h.c347, h.c383, h.c384, h.c385, h.c426, h.c431, h.c437, h.c438, h.c439, h.c440, h.c481, h.c482, h.c483]

theorem terminals32_certOK (h : Certificates) : ∀ t ∈ terminals32, t.control.toD.CertOK := by
  simp [terminals32, terminal1025, terminal1026, terminal1027, terminal1028, terminal1029, terminal1030, terminal1031, terminal1032, terminal1033, terminal1034, terminal1035, terminal1036, terminal1037, terminal1038, terminal1039, terminal1040, terminal1041, terminal1042, terminal1043, terminal1044, terminal1045, terminal1046, terminal1047, terminal1048, terminal1049, terminal1050, terminal1051, terminal1052, terminal1053, terminal1054, terminal1055, terminal1056, h.c480, h.c484, h.c485, h.c496, h.c512, h.c515, h.c516, h.c521, h.c547, h.c551, h.c556, h.c581, h.c582, h.c601, h.c602, h.c604, h.c617, h.c619, h.c622, h.c623, h.c637, h.c638, h.c655, h.c662, h.c666, h.c676, h.c677, h.c679, h.c683, h.c699, h.c709, h.c714]

theorem terminals33_certOK (h : Certificates) : ∀ t ∈ terminals33, t.control.toD.CertOK := by
  simp [terminals33, terminal1057, terminal1058, terminal1059, terminal1060, terminal1061, terminal1062, terminal1063, terminal1064, terminal1065, terminal1066, terminal1067, terminal1068, terminal1069, terminal1070, terminal1071, terminal1072, terminal1073, terminal1074, terminal1075, terminal1076, terminal1077, terminal1078, terminal1079, terminal1080, terminal1081, terminal1082, terminal1083, terminal1084, terminal1085, terminal1086, terminal1087, terminal1088, h.c37, h.c51, h.c59, h.c60, h.c63, h.c67, h.c76, h.c77, h.c87, h.c88, h.c92, h.c97, h.c110, h.c116, h.c133, h.c727, h.c741, h.c763, h.c784, h.c785, h.c796, h.c810, h.c819, h.c820, h.c824, h.c826, h.c836, h.c849, h.c856, h.c863, h.c900, h.c901]

theorem terminals34_certOK (h : Certificates) : ∀ t ∈ terminals34, t.control.toD.CertOK := by
  simp [terminals34, terminal1089, terminal1090, terminal1091, terminal1092, terminal1093, terminal1094, terminal1095, terminal1096, terminal1097, terminal1098, terminal1099, terminal1100, terminal1101, terminal1102, terminal1103, terminal1104, terminal1105, terminal1106, terminal1107, terminal1108, terminal1109, terminal1110, terminal1111, terminal1112, terminal1113, terminal1114, terminal1115, terminal1116, terminal1117, terminal1118, terminal1119, terminal1120, h.c134, h.c149, h.c150, h.c172, h.c194, h.c195, h.c232, h.c233, h.c260, h.c261, h.c262, h.c284, h.c298, h.c299, h.c300, h.c338, h.c339, h.c340, h.c348, h.c383, h.c384, h.c385, h.c428, h.c429, h.c430, h.c431, h.c433, h.c437, h.c478, h.c482, h.c483, h.c484]

theorem terminals35_certOK (h : Certificates) : ∀ t ∈ terminals35, t.control.toD.CertOK := by
  simp [terminals35, terminal1121, terminal1122, terminal1123, terminal1124, terminal1125, terminal1126, terminal1127, terminal1128, terminal1129, terminal1130, terminal1131, terminal1132, terminal1133, terminal1134, terminal1135, terminal1136, terminal1137, terminal1138, terminal1139, terminal1140, terminal1141, terminal1142, terminal1143, terminal1144, terminal1145, terminal1146, terminal1147, terminal1148, terminal1149, terminal1150, terminal1151, terminal1152, h.c480, h.c496, h.c518, h.c519, h.c525, h.c548, h.c550, h.c552, h.c556, h.c557, h.c581, h.c582, h.c601, h.c602, h.c604, h.c622, h.c623, h.c637, h.c638, h.c655, h.c683, h.c699, h.c709, h.c714, h.c727, h.c741, h.c752, h.c753, h.c759, h.c761, h.c763, h.c764]

theorem terminals36_certOK (h : Certificates) : ∀ t ∈ terminals36, t.control.toD.CertOK := by
  simp [terminals36, terminal1153, terminal1154, terminal1155, terminal1156, terminal1157, terminal1158, terminal1159, terminal1160, terminal1161, terminal1162, terminal1163, terminal1164, terminal1165, terminal1166, terminal1167, terminal1168, terminal1169, terminal1170, terminal1171, terminal1172, terminal1173, terminal1174, terminal1175, terminal1176, terminal1177, terminal1178, terminal1179, terminal1180, terminal1181, terminal1182, terminal1183, terminal1184, h.c32, h.c37, h.c67, h.c76, h.c77, h.c87, h.c92, h.c97, h.c102, h.c110, h.c116, h.c134, h.c149, h.c150, h.c760, h.c776, h.c783, h.c784, h.c785, h.c796, h.c806, h.c808, h.c810, h.c812, h.c819, h.c824, h.c826, h.c836, h.c849, h.c856, h.c863, h.c872]

theorem terminals37_certOK (h : Certificates) : ∀ t ∈ terminals37, t.control.toD.CertOK := by
  simp [terminals37, terminal1185, terminal1186, terminal1187, terminal1188, terminal1189, terminal1190, terminal1191, terminal1192, terminal1193, terminal1194, terminal1195, terminal1196, terminal1197, terminal1198, terminal1199, terminal1200, terminal1201, terminal1202, terminal1203, terminal1204, terminal1205, terminal1206, terminal1207, terminal1208, terminal1209, terminal1210, terminal1211, terminal1212, terminal1213, terminal1214, terminal1215, terminal1216, h.c172, h.c194, h.c195, h.c232, h.c233, h.c260, h.c261, h.c262, h.c298, h.c299, h.c300, h.c338, h.c339, h.c340, h.c347, h.c348, h.c379, h.c383, h.c384, h.c385, h.c426, h.c427, h.c428, h.c429, h.c430, h.c431, h.c477, h.c478, h.c481, h.c482, h.c483, h.c484]

theorem terminals38_certOK (h : Certificates) : ∀ t ∈ terminals38, t.control.toD.CertOK := by
  simp [terminals38, terminal1217, terminal1218, terminal1219, terminal1220, terminal1221, terminal1222, terminal1223, terminal1224, terminal1225, terminal1226, terminal1227, terminal1228, terminal1229, terminal1230, terminal1231, terminal1232, terminal1233, terminal1234, terminal1235, terminal1236, terminal1237, terminal1238, terminal1239, terminal1240, terminal1241, terminal1242, terminal1243, terminal1244, terminal1245, terminal1246, terminal1247, terminal1248, h.c480, h.c486, h.c517, h.c518, h.c519, h.c521, h.c547, h.c548, h.c556, h.c557, h.c598, h.c622, h.c623, h.c637, h.c638, h.c655, h.c666, h.c676, h.c677, h.c679, h.c683, h.c709, h.c711, h.c714, h.c724, h.c725, h.c727, h.c741, h.c753, h.c754, h.c756, h.c763]

theorem terminals39_certOK (h : Certificates) : ∀ t ∈ terminals39, t.control.toD.CertOK := by
  simp [terminals39, terminal1249, terminal1250, terminal1251, terminal1252, terminal1253, terminal1254, terminal1255, terminal1256, terminal1257, terminal1258, terminal1259, terminal1260, terminal1261, terminal1262, terminal1263, terminal1264, terminal1265, terminal1266, terminal1267, terminal1268, h.c87, h.c426, h.c699, h.c750, h.c751, h.c757, h.c758, h.c759, h.c760, h.c761, h.c764, h.c784, h.c785, h.c796, h.c810, h.c819, h.c824, h.c826, h.c871]

theorem all_terminals_certOK (h : Certificates) : ∀ t ∈ terminals, t.control.toD.CertOK := by
  unfold terminals
  exact List.forall_mem_append.mpr ⟨List.forall_mem_append.mpr ⟨List.forall_mem_append.mpr ⟨List.forall_mem_append.mpr ⟨List.forall_mem_append.mpr ⟨List.forall_mem_append.mpr ⟨List.forall_mem_append.mpr ⟨List.forall_mem_append.mpr ⟨List.forall_mem_append.mpr ⟨List.forall_mem_append.mpr ⟨List.forall_mem_append.mpr ⟨List.forall_mem_append.mpr ⟨List.forall_mem_append.mpr ⟨List.forall_mem_append.mpr ⟨List.forall_mem_append.mpr ⟨List.forall_mem_append.mpr ⟨List.forall_mem_append.mpr ⟨List.forall_mem_append.mpr ⟨List.forall_mem_append.mpr ⟨List.forall_mem_append.mpr ⟨List.forall_mem_append.mpr ⟨List.forall_mem_append.mpr ⟨List.forall_mem_append.mpr ⟨List.forall_mem_append.mpr ⟨List.forall_mem_append.mpr ⟨List.forall_mem_append.mpr ⟨List.forall_mem_append.mpr ⟨List.forall_mem_append.mpr ⟨List.forall_mem_append.mpr ⟨List.forall_mem_append.mpr ⟨List.forall_mem_append.mpr ⟨List.forall_mem_append.mpr ⟨List.forall_mem_append.mpr ⟨List.forall_mem_append.mpr ⟨List.forall_mem_append.mpr ⟨List.forall_mem_append.mpr ⟨List.forall_mem_append.mpr ⟨List.forall_mem_append.mpr ⟨List.forall_mem_append.mpr ⟨List.forall_mem_append.mpr ⟨(show ∀ t ∈ [terminal0], t.control.toD.CertOK from by simp [terminal0, h.c32]), terminals0_certOK h⟩, terminals1_certOK h⟩, terminals2_certOK h⟩, terminals3_certOK h⟩, terminals4_certOK h⟩, terminals5_certOK h⟩, terminals6_certOK h⟩, terminals7_certOK h⟩, terminals8_certOK h⟩, terminals9_certOK h⟩, terminals10_certOK h⟩, terminals11_certOK h⟩, terminals12_certOK h⟩, terminals13_certOK h⟩, terminals14_certOK h⟩, terminals15_certOK h⟩, terminals16_certOK h⟩, terminals17_certOK h⟩, terminals18_certOK h⟩, terminals19_certOK h⟩, terminals20_certOK h⟩, terminals21_certOK h⟩, terminals22_certOK h⟩, terminals23_certOK h⟩, terminals24_certOK h⟩, terminals25_certOK h⟩, terminals26_certOK h⟩, terminals27_certOK h⟩, terminals28_certOK h⟩, terminals29_certOK h⟩, terminals30_certOK h⟩, terminals31_certOK h⟩, terminals32_certOK h⟩, terminals33_certOK h⟩, terminals34_certOK h⟩, terminals35_certOK h⟩, terminals36_certOK h⟩, terminals37_certOK h⟩, terminals38_certOK h⟩, terminals39_certOK h⟩

theorem terminal_certOK_of_certificates (h : Certificates) (i : TerminalIndex) : (terminal i).control.toD.CertOK :=
  all_terminals_certOK h _ (List.getElem_mem _)

theorem covered_pieceOK_of_certificates (hc : Certificates)
    (r : JointFamily.RawIndex) (j : Fin (JointRecipes.nRP r)) (h : JointLeaf.Covered r j) :
    ∃ K, DiagRamsey.PieceOK JointFamily.raw JointFamily.closed JointFamily.A JointFamily.B
      (JointFamily.raw r) (JointRecipes.rpLo r j) (JointRecipes.rpHi r j) K :=
  JointLeaf.covered_pieceOK (terminal_certOK_of_certificates hc) r j h

#print axioms terminal_certOK_of_certificates
#print axioms covered_pieceOK_of_certificates
end DiagonalRamsey.JointLeafControls
