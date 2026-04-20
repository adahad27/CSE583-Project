; ModuleID = 'cBench/security_blowfish_d/src/bf_skey.c'
source_filename = "cBench/security_blowfish_d/src/bf_skey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bf_key_st = type { [18 x i64], [1024 x i64] }

@bf_init = internal global %struct.bf_key_st { [18 x i64] [i64 608135816, i64 2242054355, i64 320440878, i64 57701188, i64 2752067618, i64 698298832, i64 137296536, i64 3964562569, i64 1160258022, i64 953160567, i64 3193202383, i64 887688300, i64 3232508343, i64 3380367581, i64 1065670069, i64 3041331479, i64 2450970073, i64 2306472731], [1024 x i64] [i64 3509652390, i64 2564797868, i64 805139163, i64 3491422135, i64 3101798381, i64 1780907670, i64 3128725573, i64 4046225305, i64 614570311, i64 3012652279, i64 134345442, i64 2240740374, i64 1667834072, i64 1901547113, i64 2757295779, i64 4103290238, i64 227898511, i64 1921955416, i64 1904987480, i64 2182433518, i64 2069144605, i64 3260701109, i64 2620446009, i64 720527379, i64 3318853667, i64 677414384, i64 3393288472, i64 3101374703, i64 2390351024, i64 1614419982, i64 1822297739, i64 2954791486, i64 3608508353, i64 3174124327, i64 2024746970, i64 1432378464, i64 3864339955, i64 2857741204, i64 1464375394, i64 1676153920, i64 1439316330, i64 715854006, i64 3033291828, i64 289532110, i64 2706671279, i64 2087905683, i64 3018724369, i64 1668267050, i64 732546397, i64 1947742710, i64 3462151702, i64 2609353502, i64 2950085171, i64 1814351708, i64 2050118529, i64 680887927, i64 999245976, i64 1800124847, i64 3300911131, i64 1713906067, i64 1641548236, i64 4213287313, i64 1216130144, i64 1575780402, i64 4018429277, i64 3917837745, i64 3693486850, i64 3949271944, i64 596196993, i64 3549867205, i64 258830323, i64 2213823033, i64 772490370, i64 2760122372, i64 1774776394, i64 2652871518, i64 566650946, i64 4142492826, i64 1728879713, i64 2882767088, i64 1783734482, i64 3629395816, i64 2517608232, i64 2874225571, i64 1861159788, i64 326777828, i64 3124490320, i64 2130389656, i64 2716951837, i64 967770486, i64 1724537150, i64 2185432712, i64 2364442137, i64 1164943284, i64 2105845187, i64 998989502, i64 3765401048, i64 2244026483, i64 1075463327, i64 1455516326, i64 1322494562, i64 910128902, i64 469688178, i64 1117454909, i64 936433444, i64 3490320968, i64 3675253459, i64 1240580251, i64 122909385, i64 2157517691, i64 634681816, i64 4142456567, i64 3825094682, i64 3061402683, i64 2540495037, i64 79693498, i64 3249098678, i64 1084186820, i64 1583128258, i64 426386531, i64 1761308591, i64 1047286709, i64 322548459, i64 995290223, i64 1845252383, i64 2603652396, i64 3431023940, i64 2942221577, i64 3202600964, i64 3727903485, i64 1712269319, i64 422464435, i64 3234572375, i64 1170764815, i64 3523960633, i64 3117677531, i64 1434042557, i64 442511882, i64 3600875718, i64 1076654713, i64 1738483198, i64 4213154764, i64 2393238008, i64 3677496056, i64 1014306527, i64 4251020053, i64 793779912, i64 2902807211, i64 842905082, i64 4246964064, i64 1395751752, i64 1040244610, i64 2656851899, i64 3396308128, i64 445077038, i64 3742853595, i64 3577915638, i64 679411651, i64 2892444358, i64 2354009459, i64 1767581616, i64 3150600392, i64 3791627101, i64 3102740896, i64 284835224, i64 4246832056, i64 1258075500, i64 768725851, i64 2589189241, i64 3069724005, i64 3532540348, i64 1274779536, i64 3789419226, i64 2764799539, i64 1660621633, i64 3471099624, i64 4011903706, i64 913787905, i64 3497959166, i64 737222580, i64 2514213453, i64 2928710040, i64 3937242737, i64 1804850592, i64 3499020752, i64 2949064160, i64 2386320175, i64 2390070455, i64 2415321851, i64 4061277028, i64 2290661394, i64 2416832540, i64 1336762016, i64 1754252060, i64 3520065937, i64 3014181293, i64 791618072, i64 3188594551, i64 3933548030, i64 2332172193, i64 3852520463, i64 3043980520, i64 413987798, i64 3465142937, i64 3030929376, i64 4245938359, i64 2093235073, i64 3534596313, i64 375366246, i64 2157278981, i64 2479649556, i64 555357303, i64 3870105701, i64 2008414854, i64 3344188149, i64 4221384143, i64 3956125452, i64 2067696032, i64 3594591187, i64 2921233993, i64 2428461, i64 544322398, i64 577241275, i64 1471733935, i64 610547355, i64 4027169054, i64 1432588573, i64 1507829418, i64 2025931657, i64 3646575487, i64 545086370, i64 48609733, i64 2200306550, i64 1653985193, i64 298326376, i64 1316178497, i64 3007786442, i64 2064951626, i64 458293330, i64 2589141269, i64 3591329599, i64 3164325604, i64 727753846, i64 2179363840, i64 146436021, i64 1461446943, i64 4069977195, i64 705550613, i64 3059967265, i64 3887724982, i64 4281599278, i64 3313849956, i64 1404054877, i64 2845806497, i64 146425753, i64 1854211946, i64 1266315497, i64 3048417604, i64 3681880366, i64 3289982499, i64 2909710000, i64 1235738493, i64 2632868024, i64 2414719590, i64 3970600049, i64 1771706367, i64 1449415276, i64 3266420449, i64 422970021, i64 1963543593, i64 2690192192, i64 3826793022, i64 1062508698, i64 1531092325, i64 1804592342, i64 2583117782, i64 2714934279, i64 4024971509, i64 1294809318, i64 4028980673, i64 1289560198, i64 2221992742, i64 1669523910, i64 35572830, i64 157838143, i64 1052438473, i64 1016535060, i64 1802137761, i64 1753167236, i64 1386275462, i64 3080475397, i64 2857371447, i64 1040679964, i64 2145300060, i64 2390574316, i64 1461121720, i64 2956646967, i64 4031777805, i64 4028374788, i64 33600511, i64 2920084762, i64 1018524850, i64 629373528, i64 3691585981, i64 3515945977, i64 2091462646, i64 2486323059, i64 586499841, i64 988145025, i64 935516892, i64 3367335476, i64 2599673255, i64 2839830854, i64 265290510, i64 3972581182, i64 2759138881, i64 3795373465, i64 1005194799, i64 847297441, i64 406762289, i64 1314163512, i64 1332590856, i64 1866599683, i64 4127851711, i64 750260880, i64 613907577, i64 1450815602, i64 3165620655, i64 3734664991, i64 3650291728, i64 3012275730, i64 3704569646, i64 1427272223, i64 778793252, i64 1343938022, i64 2676280711, i64 2052605720, i64 1946737175, i64 3164576444, i64 3914038668, i64 3967478842, i64 3682934266, i64 1661551462, i64 3294938066, i64 4011595847, i64 840292616, i64 3712170807, i64 616741398, i64 312560963, i64 711312465, i64 1351876610, i64 322626781, i64 1910503582, i64 271666773, i64 2175563734, i64 1594956187, i64 70604529, i64 3617834859, i64 1007753275, i64 1495573769, i64 4069517037, i64 2549218298, i64 2663038764, i64 504708206, i64 2263041392, i64 3941167025, i64 2249088522, i64 1514023603, i64 1998579484, i64 1312622330, i64 694541497, i64 2582060303, i64 2151582166, i64 1382467621, i64 776784248, i64 2618340202, i64 3323268794, i64 2497899128, i64 2784771155, i64 503983604, i64 4076293799, i64 907881277, i64 423175695, i64 432175456, i64 1378068232, i64 4145222326, i64 3954048622, i64 3938656102, i64 3820766613, i64 2793130115, i64 2977904593, i64 26017576, i64 3274890735, i64 3194772133, i64 1700274565, i64 1756076034, i64 4006520079, i64 3677328699, i64 720338349, i64 1533947780, i64 354530856, i64 688349552, i64 3973924725, i64 1637815568, i64 332179504, i64 3949051286, i64 53804574, i64 2852348879, i64 3044236432, i64 1282449977, i64 3583942155, i64 3416972820, i64 4006381244, i64 1617046695, i64 2628476075, i64 3002303598, i64 1686838959, i64 431878346, i64 2686675385, i64 1700445008, i64 1080580658, i64 1009431731, i64 832498133, i64 3223435511, i64 2605976345, i64 2271191193, i64 2516031870, i64 1648197032, i64 4164389018, i64 2548247927, i64 300782431, i64 375919233, i64 238389289, i64 3353747414, i64 2531188641, i64 2019080857, i64 1475708069, i64 455242339, i64 2609103871, i64 448939670, i64 3451063019, i64 1395535956, i64 2413381860, i64 1841049896, i64 1491858159, i64 885456874, i64 4264095073, i64 4001119347, i64 1565136089, i64 3898914787, i64 1108368660, i64 540939232, i64 1173283510, i64 2745871338, i64 3681308437, i64 4207628240, i64 3343053890, i64 4016749493, i64 1699691293, i64 1103962373, i64 3625875870, i64 2256883143, i64 3830138730, i64 1031889488, i64 3479347698, i64 1535977030, i64 4236805024, i64 3251091107, i64 2132092099, i64 1774941330, i64 1199868427, i64 1452454533, i64 157007616, i64 2904115357, i64 342012276, i64 595725824, i64 1480756522, i64 206960106, i64 497939518, i64 591360097, i64 863170706, i64 2375253569, i64 3596610801, i64 1814182875, i64 2094937945, i64 3421402208, i64 1082520231, i64 3463918190, i64 2785509508, i64 435703966, i64 3908032597, i64 1641649973, i64 2842273706, i64 3305899714, i64 1510255612, i64 2148256476, i64 2655287854, i64 3276092548, i64 4258621189, i64 236887753, i64 3681803219, i64 274041037, i64 1734335097, i64 3815195456, i64 3317970021, i64 1899903192, i64 1026095262, i64 4050517792, i64 356393447, i64 2410691914, i64 3873677099, i64 3682840055, i64 3913112168, i64 2491498743, i64 4132185628, i64 2489919796, i64 1091903735, i64 1979897079, i64 3170134830, i64 3567386728, i64 3557303409, i64 857797738, i64 1136121015, i64 1342202287, i64 507115054, i64 2535736646, i64 337727348, i64 3213592640, i64 1301675037, i64 2528481711, i64 1895095763, i64 1721773893, i64 3216771564, i64 62756741, i64 2142006736, i64 835421444, i64 2531993523, i64 1442658625, i64 3659876326, i64 2882144922, i64 676362277, i64 1392781812, i64 170690266, i64 3921047035, i64 1759253602, i64 3611846912, i64 1745797284, i64 664899054, i64 1329594018, i64 3901205900, i64 3045908486, i64 2062866102, i64 2865634940, i64 3543621612, i64 3464012697, i64 1080764994, i64 553557557, i64 3656615353, i64 3996768171, i64 991055499, i64 499776247, i64 1265440854, i64 648242737, i64 3940784050, i64 980351604, i64 3713745714, i64 1749149687, i64 3396870395, i64 4211799374, i64 3640570775, i64 1161844396, i64 3125318951, i64 1431517754, i64 545492359, i64 4268468663, i64 3499529547, i64 1437099964, i64 2702547544, i64 3433638243, i64 2581715763, i64 2787789398, i64 1060185593, i64 1593081372, i64 2418618748, i64 4260947970, i64 69676912, i64 2159744348, i64 86519011, i64 2512459080, i64 3838209314, i64 1220612927, i64 3339683548, i64 133810670, i64 1090789135, i64 1078426020, i64 1569222167, i64 845107691, i64 3583754449, i64 4072456591, i64 1091646820, i64 628848692, i64 1613405280, i64 3757631651, i64 526609435, i64 236106946, i64 48312990, i64 2942717905, i64 3402727701, i64 1797494240, i64 859738849, i64 992217954, i64 4005476642, i64 2243076622, i64 3870952857, i64 3732016268, i64 765654824, i64 3490871365, i64 2511836413, i64 1685915746, i64 3888969200, i64 1414112111, i64 2273134842, i64 3281911079, i64 4080962846, i64 172450625, i64 2569994100, i64 980381355, i64 4109958455, i64 2819808352, i64 2716589560, i64 2568741196, i64 3681446669, i64 3329971472, i64 1835478071, i64 660984891, i64 3704678404, i64 4045999559, i64 3422617507, i64 3040415634, i64 1762651403, i64 1719377915, i64 3470491036, i64 2693910283, i64 3642056355, i64 3138596744, i64 1364962596, i64 2073328063, i64 1983633131, i64 926494387, i64 3423689081, i64 2150032023, i64 4096667949, i64 1749200295, i64 3328846651, i64 309677260, i64 2016342300, i64 1779581495, i64 3079819751, i64 111262694, i64 1274766160, i64 443224088, i64 298511866, i64 1025883608, i64 3806446537, i64 1145181785, i64 168956806, i64 3641502830, i64 3584813610, i64 1689216846, i64 3666258015, i64 3200248200, i64 1692713982, i64 2646376535, i64 4042768518, i64 1618508792, i64 1610833997, i64 3523052358, i64 4130873264, i64 2001055236, i64 3610705100, i64 2202168115, i64 4028541809, i64 2961195399, i64 1006657119, i64 2006996926, i64 3186142756, i64 1430667929, i64 3210227297, i64 1314452623, i64 4074634658, i64 4101304120, i64 2273951170, i64 1399257539, i64 3367210612, i64 3027628629, i64 1190975929, i64 2062231137, i64 2333990788, i64 2221543033, i64 2438960610, i64 1181637006, i64 548689776, i64 2362791313, i64 3372408396, i64 3104550113, i64 3145860560, i64 296247880, i64 1970579870, i64 3078560182, i64 3769228297, i64 1714227617, i64 3291629107, i64 3898220290, i64 166772364, i64 1251581989, i64 493813264, i64 448347421, i64 195405023, i64 2709975567, i64 677966185, i64 3703036547, i64 1463355134, i64 2715995803, i64 1338867538, i64 1343315457, i64 2802222074, i64 2684532164, i64 233230375, i64 2599980071, i64 2000651841, i64 3277868038, i64 1638401717, i64 4028070440, i64 3237316320, i64 6314154, i64 819756386, i64 300326615, i64 590932579, i64 1405279636, i64 3267499572, i64 3150704214, i64 2428286686, i64 3959192993, i64 3461946742, i64 1862657033, i64 1266418056, i64 963775037, i64 2089974820, i64 2263052895, i64 1917689273, i64 448879540, i64 3550394620, i64 3981727096, i64 150775221, i64 3627908307, i64 1303187396, i64 508620638, i64 2975983352, i64 2726630617, i64 1817252668, i64 1876281319, i64 1457606340, i64 908771278, i64 3720792119, i64 3617206836, i64 2455994898, i64 1729034894, i64 1080033504, i64 976866871, i64 3556439503, i64 2881648439, i64 1522871579, i64 1555064734, i64 1336096578, i64 3548522304, i64 2579274686, i64 3574697629, i64 3205460757, i64 3593280638, i64 3338716283, i64 3079412587, i64 564236357, i64 2993598910, i64 1781952180, i64 1464380207, i64 3163844217, i64 3332601554, i64 1699332808, i64 1393555694, i64 1183702653, i64 3581086237, i64 1288719814, i64 691649499, i64 2847557200, i64 2895455976, i64 3193889540, i64 2717570544, i64 1781354906, i64 1676643554, i64 2592534050, i64 3230253752, i64 1126444790, i64 2770207658, i64 2633158820, i64 2210423226, i64 2615765581, i64 2414155088, i64 3127139286, i64 673620729, i64 2805611233, i64 1269405062, i64 4015350505, i64 3341807571, i64 4149409754, i64 1057255273, i64 2012875353, i64 2162469141, i64 2276492801, i64 2601117357, i64 993977747, i64 3918593370, i64 2654263191, i64 753973209, i64 36408145, i64 2530585658, i64 25011837, i64 3520020182, i64 2088578344, i64 530523599, i64 2918365339, i64 1524020338, i64 1518925132, i64 3760827505, i64 3759777254, i64 1202760957, i64 3985898139, i64 3906192525, i64 674977740, i64 4174734889, i64 2031300136, i64 2019492241, i64 3983892565, i64 4153806404, i64 3822280332, i64 352677332, i64 2297720250, i64 60907813, i64 90501309, i64 3286998549, i64 1016092578, i64 2535922412, i64 2839152426, i64 457141659, i64 509813237, i64 4120667899, i64 652014361, i64 1966332200, i64 2975202805, i64 55981186, i64 2327461051, i64 676427537, i64 3255491064, i64 2882294119, i64 3433927263, i64 1307055953, i64 942726286, i64 933058658, i64 2468411793, i64 3933900994, i64 4215176142, i64 1361170020, i64 2001714738, i64 2830558078, i64 3274259782, i64 1222529897, i64 1679025792, i64 2729314320, i64 3714953764, i64 1770335741, i64 151462246, i64 3013232138, i64 1682292957, i64 1483529935, i64 471910574, i64 1539241949, i64 458788160, i64 3436315007, i64 1807016891, i64 3718408830, i64 978976581, i64 1043663428, i64 3165965781, i64 1927990952, i64 4200891579, i64 2372276910, i64 3208408903, i64 3533431907, i64 1412390302, i64 2931980059, i64 4132332400, i64 1947078029, i64 3881505623, i64 4168226417, i64 2941484381, i64 1077988104, i64 1320477388, i64 886195818, i64 18198404, i64 3786409000, i64 2509781533, i64 112762804, i64 3463356488, i64 1866414978, i64 891333506, i64 18488651, i64 661792760, i64 1628790961, i64 3885187036, i64 3141171499, i64 876946877, i64 2693282273, i64 1372485963, i64 791857591, i64 2686433993, i64 3759982718, i64 3167212022, i64 3472953795, i64 2716379847, i64 445679433, i64 3561995674, i64 3504004811, i64 3574258232, i64 54117162, i64 3331405415, i64 2381918588, i64 3769707343, i64 4154350007, i64 1140177722, i64 4074052095, i64 668550556, i64 3214352940, i64 367459370, i64 261225585, i64 2610173221, i64 4209349473, i64 3468074219, i64 3265815641, i64 314222801, i64 3066103646, i64 3808782860, i64 282218597, i64 3406013506, i64 3773591054, i64 379116347, i64 1285071038, i64 846784868, i64 2669647154, i64 3771962079, i64 3550491691, i64 2305946142, i64 453669953, i64 1268987020, i64 3317592352, i64 3279303384, i64 3744833421, i64 2610507566, i64 3859509063, i64 266596637, i64 3847019092, i64 517658769, i64 3462560207, i64 3443424879, i64 370717030, i64 4247526661, i64 2224018117, i64 4143653529, i64 4112773975, i64 2788324899, i64 2477274417, i64 1456262402, i64 2901442914, i64 1517677493, i64 1846949527, i64 2295493580, i64 3734397586, i64 2176403920, i64 1280348187, i64 1908823572, i64 3871786941, i64 846861322, i64 1172426758, i64 3287448474, i64 3383383037, i64 1655181056, i64 3139813346, i64 901632758, i64 1897031941, i64 2986607138, i64 3066810236, i64 3447102507, i64 1393639104, i64 373351379, i64 950779232, i64 625454576, i64 3124240540, i64 4148612726, i64 2007998917, i64 544563296, i64 2244738638, i64 2330496472, i64 2058025392, i64 1291430526, i64 424198748, i64 50039436, i64 29584100, i64 3605783033, i64 2429876329, i64 2791104160, i64 1057563949, i64 3255363231, i64 3075367218, i64 3463963227, i64 1469046755, i64 985887462] }, align 8, !dbg !0

; Function Attrs: noinline nounwind uwtable
define dso_local void @BF_set_key(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 !dbg !30 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca [2 x i64], align 16
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !38, !DIExpression(), !39)
  store i32 %1, ptr %5, align 4
    #dbg_declare(ptr %5, !40, !DIExpression(), !41)
  store ptr %2, ptr %6, align 8
    #dbg_declare(ptr %6, !42, !DIExpression(), !43)
    #dbg_declare(ptr %7, !44, !DIExpression(), !45)
    #dbg_declare(ptr %8, !46, !DIExpression(), !48)
    #dbg_declare(ptr %9, !49, !DIExpression(), !50)
    #dbg_declare(ptr %10, !51, !DIExpression(), !55)
    #dbg_declare(ptr %11, !56, !DIExpression(), !57)
    #dbg_declare(ptr %12, !58, !DIExpression(), !59)
  %13 = load ptr, ptr %4, align 8, !dbg !60
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %13, ptr align 8 @bf_init, i64 8336, i1 false), !dbg !61
  %14 = load ptr, ptr %4, align 8, !dbg !62
  %15 = getelementptr inbounds nuw %struct.bf_key_st, ptr %14, i32 0, i32 0, !dbg !63
  %16 = getelementptr inbounds [18 x i64], ptr %15, i64 0, i64 0, !dbg !62
  store ptr %16, ptr %8, align 8, !dbg !64
  %17 = load i32, ptr %5, align 4, !dbg !65
  %18 = icmp sgt i32 %17, 72, !dbg !67
  br i1 %18, label %19, label %20, !dbg !67

19:                                               ; preds = %3
  store i32 72, ptr %5, align 4, !dbg !68
  br label %20, !dbg !69

20:                                               ; preds = %19, %3
  %21 = load ptr, ptr %6, align 8, !dbg !70
  store ptr %21, ptr %11, align 8, !dbg !71
  %22 = load ptr, ptr %6, align 8, !dbg !72
  %23 = load i32, ptr %5, align 4, !dbg !73
  %24 = sext i32 %23 to i64, !dbg !72
  %25 = getelementptr inbounds i8, ptr %22, i64 %24, !dbg !72
  store ptr %25, ptr %12, align 8, !dbg !74
  store i32 0, ptr %7, align 4, !dbg !75
  br label %26, !dbg !77

26:                                               ; preds = %89, %20
  %27 = load i32, ptr %7, align 4, !dbg !78
  %28 = icmp slt i32 %27, 18, !dbg !80
  br i1 %28, label %29, label %92, !dbg !81

29:                                               ; preds = %26
  %30 = load ptr, ptr %11, align 8, !dbg !82
  %31 = getelementptr inbounds nuw i8, ptr %30, i32 1, !dbg !82
  store ptr %31, ptr %11, align 8, !dbg !82
  %32 = load i8, ptr %30, align 1, !dbg !84
  %33 = zext i8 %32 to i64, !dbg !84
  store i64 %33, ptr %9, align 8, !dbg !85
  %34 = load ptr, ptr %11, align 8, !dbg !86
  %35 = load ptr, ptr %12, align 8, !dbg !88
  %36 = icmp uge ptr %34, %35, !dbg !89
  br i1 %36, label %37, label %39, !dbg !89

37:                                               ; preds = %29
  %38 = load ptr, ptr %6, align 8, !dbg !90
  store ptr %38, ptr %11, align 8, !dbg !91
  br label %39, !dbg !92

39:                                               ; preds = %37, %29
  %40 = load i64, ptr %9, align 8, !dbg !93
  %41 = shl i64 %40, 8, !dbg !93
  store i64 %41, ptr %9, align 8, !dbg !93
  %42 = load ptr, ptr %11, align 8, !dbg !94
  %43 = getelementptr inbounds nuw i8, ptr %42, i32 1, !dbg !94
  store ptr %43, ptr %11, align 8, !dbg !94
  %44 = load i8, ptr %42, align 1, !dbg !95
  %45 = zext i8 %44 to i64, !dbg !95
  %46 = load i64, ptr %9, align 8, !dbg !96
  %47 = or i64 %46, %45, !dbg !96
  store i64 %47, ptr %9, align 8, !dbg !96
  %48 = load ptr, ptr %11, align 8, !dbg !97
  %49 = load ptr, ptr %12, align 8, !dbg !99
  %50 = icmp uge ptr %48, %49, !dbg !100
  br i1 %50, label %51, label %53, !dbg !100

51:                                               ; preds = %39
  %52 = load ptr, ptr %6, align 8, !dbg !101
  store ptr %52, ptr %11, align 8, !dbg !102
  br label %53, !dbg !103

53:                                               ; preds = %51, %39
  %54 = load i64, ptr %9, align 8, !dbg !104
  %55 = shl i64 %54, 8, !dbg !104
  store i64 %55, ptr %9, align 8, !dbg !104
  %56 = load ptr, ptr %11, align 8, !dbg !105
  %57 = getelementptr inbounds nuw i8, ptr %56, i32 1, !dbg !105
  store ptr %57, ptr %11, align 8, !dbg !105
  %58 = load i8, ptr %56, align 1, !dbg !106
  %59 = zext i8 %58 to i64, !dbg !106
  %60 = load i64, ptr %9, align 8, !dbg !107
  %61 = or i64 %60, %59, !dbg !107
  store i64 %61, ptr %9, align 8, !dbg !107
  %62 = load ptr, ptr %11, align 8, !dbg !108
  %63 = load ptr, ptr %12, align 8, !dbg !110
  %64 = icmp uge ptr %62, %63, !dbg !111
  br i1 %64, label %65, label %67, !dbg !111

65:                                               ; preds = %53
  %66 = load ptr, ptr %6, align 8, !dbg !112
  store ptr %66, ptr %11, align 8, !dbg !113
  br label %67, !dbg !114

67:                                               ; preds = %65, %53
  %68 = load i64, ptr %9, align 8, !dbg !115
  %69 = shl i64 %68, 8, !dbg !115
  store i64 %69, ptr %9, align 8, !dbg !115
  %70 = load ptr, ptr %11, align 8, !dbg !116
  %71 = getelementptr inbounds nuw i8, ptr %70, i32 1, !dbg !116
  store ptr %71, ptr %11, align 8, !dbg !116
  %72 = load i8, ptr %70, align 1, !dbg !117
  %73 = zext i8 %72 to i64, !dbg !117
  %74 = load i64, ptr %9, align 8, !dbg !118
  %75 = or i64 %74, %73, !dbg !118
  store i64 %75, ptr %9, align 8, !dbg !118
  %76 = load ptr, ptr %11, align 8, !dbg !119
  %77 = load ptr, ptr %12, align 8, !dbg !121
  %78 = icmp uge ptr %76, %77, !dbg !122
  br i1 %78, label %79, label %81, !dbg !122

79:                                               ; preds = %67
  %80 = load ptr, ptr %6, align 8, !dbg !123
  store ptr %80, ptr %11, align 8, !dbg !124
  br label %81, !dbg !125

81:                                               ; preds = %79, %67
  %82 = load i64, ptr %9, align 8, !dbg !126
  %83 = load ptr, ptr %8, align 8, !dbg !127
  %84 = load i32, ptr %7, align 4, !dbg !128
  %85 = sext i32 %84 to i64, !dbg !127
  %86 = getelementptr inbounds i64, ptr %83, i64 %85, !dbg !127
  %87 = load i64, ptr %86, align 8, !dbg !129
  %88 = xor i64 %87, %82, !dbg !129
  store i64 %88, ptr %86, align 8, !dbg !129
  br label %89, !dbg !130

89:                                               ; preds = %81
  %90 = load i32, ptr %7, align 4, !dbg !131
  %91 = add nsw i32 %90, 1, !dbg !131
  store i32 %91, ptr %7, align 4, !dbg !131
  br label %26, !dbg !132, !llvm.loop !133

92:                                               ; preds = %26
  %93 = getelementptr inbounds [2 x i64], ptr %10, i64 0, i64 0, !dbg !136
  store i64 0, ptr %93, align 16, !dbg !137
  %94 = getelementptr inbounds [2 x i64], ptr %10, i64 0, i64 1, !dbg !138
  store i64 0, ptr %94, align 8, !dbg !139
  store i32 0, ptr %7, align 4, !dbg !140
  br label %95, !dbg !142

95:                                               ; preds = %114, %92
  %96 = load i32, ptr %7, align 4, !dbg !143
  %97 = icmp slt i32 %96, 18, !dbg !145
  br i1 %97, label %98, label %117, !dbg !146

98:                                               ; preds = %95
  %99 = getelementptr inbounds [2 x i64], ptr %10, i64 0, i64 0, !dbg !147
  %100 = load ptr, ptr %4, align 8, !dbg !149
  call void @BF_encrypt(ptr noundef %99, ptr noundef %100, i32 noundef 1), !dbg !150
  %101 = getelementptr inbounds [2 x i64], ptr %10, i64 0, i64 0, !dbg !151
  %102 = load i64, ptr %101, align 16, !dbg !151
  %103 = load ptr, ptr %8, align 8, !dbg !152
  %104 = load i32, ptr %7, align 4, !dbg !153
  %105 = sext i32 %104 to i64, !dbg !152
  %106 = getelementptr inbounds i64, ptr %103, i64 %105, !dbg !152
  store i64 %102, ptr %106, align 8, !dbg !154
  %107 = getelementptr inbounds [2 x i64], ptr %10, i64 0, i64 1, !dbg !155
  %108 = load i64, ptr %107, align 8, !dbg !155
  %109 = load ptr, ptr %8, align 8, !dbg !156
  %110 = load i32, ptr %7, align 4, !dbg !157
  %111 = add nsw i32 %110, 1, !dbg !158
  %112 = sext i32 %111 to i64, !dbg !156
  %113 = getelementptr inbounds i64, ptr %109, i64 %112, !dbg !156
  store i64 %108, ptr %113, align 8, !dbg !159
  br label %114, !dbg !160

114:                                              ; preds = %98
  %115 = load i32, ptr %7, align 4, !dbg !161
  %116 = add nsw i32 %115, 2, !dbg !161
  store i32 %116, ptr %7, align 4, !dbg !161
  br label %95, !dbg !162, !llvm.loop !163

117:                                              ; preds = %95
  %118 = load ptr, ptr %4, align 8, !dbg !165
  %119 = getelementptr inbounds nuw %struct.bf_key_st, ptr %118, i32 0, i32 1, !dbg !166
  %120 = getelementptr inbounds [1024 x i64], ptr %119, i64 0, i64 0, !dbg !165
  store ptr %120, ptr %8, align 8, !dbg !167
  store i32 0, ptr %7, align 4, !dbg !168
  br label %121, !dbg !170

121:                                              ; preds = %140, %117
  %122 = load i32, ptr %7, align 4, !dbg !171
  %123 = icmp slt i32 %122, 1024, !dbg !173
  br i1 %123, label %124, label %143, !dbg !174

124:                                              ; preds = %121
  %125 = getelementptr inbounds [2 x i64], ptr %10, i64 0, i64 0, !dbg !175
  %126 = load ptr, ptr %4, align 8, !dbg !177
  call void @BF_encrypt(ptr noundef %125, ptr noundef %126, i32 noundef 1), !dbg !178
  %127 = getelementptr inbounds [2 x i64], ptr %10, i64 0, i64 0, !dbg !179
  %128 = load i64, ptr %127, align 16, !dbg !179
  %129 = load ptr, ptr %8, align 8, !dbg !180
  %130 = load i32, ptr %7, align 4, !dbg !181
  %131 = sext i32 %130 to i64, !dbg !180
  %132 = getelementptr inbounds i64, ptr %129, i64 %131, !dbg !180
  store i64 %128, ptr %132, align 8, !dbg !182
  %133 = getelementptr inbounds [2 x i64], ptr %10, i64 0, i64 1, !dbg !183
  %134 = load i64, ptr %133, align 8, !dbg !183
  %135 = load ptr, ptr %8, align 8, !dbg !184
  %136 = load i32, ptr %7, align 4, !dbg !185
  %137 = add nsw i32 %136, 1, !dbg !186
  %138 = sext i32 %137 to i64, !dbg !184
  %139 = getelementptr inbounds i64, ptr %135, i64 %138, !dbg !184
  store i64 %134, ptr %139, align 8, !dbg !187
  br label %140, !dbg !188

140:                                              ; preds = %124
  %141 = load i32, ptr %7, align 4, !dbg !189
  %142 = add nsw i32 %141, 2, !dbg !189
  store i32 %142, ptr %7, align 4, !dbg !189
  br label %121, !dbg !190, !llvm.loop !191

143:                                              ; preds = %121
  ret void, !dbg !193
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

declare void @BF_encrypt(ptr noundef, ptr noundef, i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "bf_init", scope: !2, file: !8, line: 59, type: !9, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "cBench/security_blowfish_d/src/bf_skey.c", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "7b90d9b7144905c4140e2749f3ac53af")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!7 = !{!0}
!8 = !DIFile(filename: "cBench/security_blowfish_d/src/bf_pi.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "23d633eb230d3c81f249b63485f2e2b9")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "BF_KEY", file: !10, line: 82, baseType: !11)
!10 = !DIFile(filename: "cBench/security_blowfish_d/src/blowfish.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "c502140e9bca557927bd762231174512")
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bf_key_st", file: !10, line: 78, size: 66688, elements: !12)
!12 = !{!13, !18}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "P", scope: !11, file: !10, line: 80, baseType: !14, size: 1152)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 1152, elements: !16)
!15 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!16 = !{!17}
!17 = !DISubrange(count: 18)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "S", scope: !11, file: !10, line: 81, baseType: !19, size: 65536, offset: 1152)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 65536, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 1024)
!22 = !{i32 7, !"Dwarf Version", i32 5}
!23 = !{i32 2, !"Debug Info Version", i32 3}
!24 = !{i32 1, !"wchar_size", i32 4}
!25 = !{i32 8, !"PIC Level", i32 2}
!26 = !{i32 7, !"PIE Level", i32 2}
!27 = !{i32 7, !"uwtable", i32 2}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!30 = distinct !DISubprogram(name: "BF_set_key", scope: !3, file: !3, line: 65, type: !31, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !37)
!31 = !DISubroutineType(types: !32)
!32 = !{null, !33, !34, !35}
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!37 = !{}
!38 = !DILocalVariable(name: "key", arg: 1, scope: !30, file: !3, line: 66, type: !33)
!39 = !DILocation(line: 66, column: 9, scope: !30)
!40 = !DILocalVariable(name: "len", arg: 2, scope: !30, file: !3, line: 67, type: !34)
!41 = !DILocation(line: 67, column: 5, scope: !30)
!42 = !DILocalVariable(name: "data", arg: 3, scope: !30, file: !3, line: 68, type: !35)
!43 = !DILocation(line: 68, column: 16, scope: !30)
!44 = !DILocalVariable(name: "i", scope: !30, file: !3, line: 70, type: !34)
!45 = !DILocation(line: 70, column: 6, scope: !30)
!46 = !DILocalVariable(name: "p", scope: !30, file: !3, line: 71, type: !47)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!48 = !DILocation(line: 71, column: 11, scope: !30)
!49 = !DILocalVariable(name: "ri", scope: !30, file: !3, line: 71, type: !15)
!50 = !DILocation(line: 71, column: 13, scope: !30)
!51 = !DILocalVariable(name: "in", scope: !30, file: !3, line: 71, type: !52)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 128, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 2)
!55 = !DILocation(line: 71, column: 16, scope: !30)
!56 = !DILocalVariable(name: "d", scope: !30, file: !3, line: 72, type: !35)
!57 = !DILocation(line: 72, column: 17, scope: !30)
!58 = !DILocalVariable(name: "end", scope: !30, file: !3, line: 72, type: !35)
!59 = !DILocation(line: 72, column: 20, scope: !30)
!60 = !DILocation(line: 75, column: 17, scope: !30)
!61 = !DILocation(line: 75, column: 2, scope: !30)
!62 = !DILocation(line: 76, column: 4, scope: !30)
!63 = !DILocation(line: 76, column: 9, scope: !30)
!64 = !DILocation(line: 76, column: 3, scope: !30)
!65 = !DILocation(line: 78, column: 6, scope: !66)
!66 = distinct !DILexicalBlock(scope: !30, file: !3, line: 78, column: 6)
!67 = !DILocation(line: 78, column: 10, scope: !66)
!68 = !DILocation(line: 78, column: 34, scope: !66)
!69 = !DILocation(line: 78, column: 31, scope: !66)
!70 = !DILocation(line: 80, column: 4, scope: !30)
!71 = !DILocation(line: 80, column: 3, scope: !30)
!72 = !DILocation(line: 81, column: 9, scope: !30)
!73 = !DILocation(line: 81, column: 14, scope: !30)
!74 = !DILocation(line: 81, column: 5, scope: !30)
!75 = !DILocation(line: 82, column: 8, scope: !76)
!76 = distinct !DILexicalBlock(scope: !30, file: !3, line: 82, column: 2)
!77 = !DILocation(line: 82, column: 7, scope: !76)
!78 = !DILocation(line: 82, column: 12, scope: !79)
!79 = distinct !DILexicalBlock(scope: !76, file: !3, line: 82, column: 2)
!80 = !DILocation(line: 82, column: 13, scope: !79)
!81 = !DILocation(line: 82, column: 2, scope: !76)
!82 = !DILocation(line: 84, column: 10, scope: !83)
!83 = distinct !DILexicalBlock(scope: !79, file: !3, line: 83, column: 3)
!84 = !DILocation(line: 84, column: 7, scope: !83)
!85 = !DILocation(line: 84, column: 5, scope: !83)
!86 = !DILocation(line: 85, column: 7, scope: !87)
!87 = distinct !DILexicalBlock(scope: !83, file: !3, line: 85, column: 7)
!88 = !DILocation(line: 85, column: 12, scope: !87)
!89 = !DILocation(line: 85, column: 9, scope: !87)
!90 = !DILocation(line: 85, column: 19, scope: !87)
!91 = !DILocation(line: 85, column: 18, scope: !87)
!92 = !DILocation(line: 85, column: 17, scope: !87)
!93 = !DILocation(line: 87, column: 5, scope: !83)
!94 = !DILocation(line: 88, column: 11, scope: !83)
!95 = !DILocation(line: 88, column: 8, scope: !83)
!96 = !DILocation(line: 88, column: 5, scope: !83)
!97 = !DILocation(line: 89, column: 7, scope: !98)
!98 = distinct !DILexicalBlock(scope: !83, file: !3, line: 89, column: 7)
!99 = !DILocation(line: 89, column: 12, scope: !98)
!100 = !DILocation(line: 89, column: 9, scope: !98)
!101 = !DILocation(line: 89, column: 19, scope: !98)
!102 = !DILocation(line: 89, column: 18, scope: !98)
!103 = !DILocation(line: 89, column: 17, scope: !98)
!104 = !DILocation(line: 91, column: 5, scope: !83)
!105 = !DILocation(line: 92, column: 11, scope: !83)
!106 = !DILocation(line: 92, column: 8, scope: !83)
!107 = !DILocation(line: 92, column: 5, scope: !83)
!108 = !DILocation(line: 93, column: 7, scope: !109)
!109 = distinct !DILexicalBlock(scope: !83, file: !3, line: 93, column: 7)
!110 = !DILocation(line: 93, column: 12, scope: !109)
!111 = !DILocation(line: 93, column: 9, scope: !109)
!112 = !DILocation(line: 93, column: 19, scope: !109)
!113 = !DILocation(line: 93, column: 18, scope: !109)
!114 = !DILocation(line: 93, column: 17, scope: !109)
!115 = !DILocation(line: 95, column: 5, scope: !83)
!116 = !DILocation(line: 96, column: 11, scope: !83)
!117 = !DILocation(line: 96, column: 8, scope: !83)
!118 = !DILocation(line: 96, column: 5, scope: !83)
!119 = !DILocation(line: 97, column: 7, scope: !120)
!120 = distinct !DILexicalBlock(scope: !83, file: !3, line: 97, column: 7)
!121 = !DILocation(line: 97, column: 12, scope: !120)
!122 = !DILocation(line: 97, column: 9, scope: !120)
!123 = !DILocation(line: 97, column: 19, scope: !120)
!124 = !DILocation(line: 97, column: 18, scope: !120)
!125 = !DILocation(line: 97, column: 17, scope: !120)
!126 = !DILocation(line: 99, column: 9, scope: !83)
!127 = !DILocation(line: 99, column: 3, scope: !83)
!128 = !DILocation(line: 99, column: 5, scope: !83)
!129 = !DILocation(line: 99, column: 7, scope: !83)
!130 = !DILocation(line: 100, column: 3, scope: !83)
!131 = !DILocation(line: 82, column: 30, scope: !79)
!132 = !DILocation(line: 82, column: 2, scope: !79)
!133 = distinct !{!133, !81, !134, !135}
!134 = !DILocation(line: 100, column: 3, scope: !76)
!135 = !{!"llvm.loop.mustprogress"}
!136 = !DILocation(line: 102, column: 2, scope: !30)
!137 = !DILocation(line: 102, column: 7, scope: !30)
!138 = !DILocation(line: 103, column: 2, scope: !30)
!139 = !DILocation(line: 103, column: 7, scope: !30)
!140 = !DILocation(line: 104, column: 8, scope: !141)
!141 = distinct !DILexicalBlock(scope: !30, file: !3, line: 104, column: 2)
!142 = !DILocation(line: 104, column: 7, scope: !141)
!143 = !DILocation(line: 104, column: 12, scope: !144)
!144 = distinct !DILexicalBlock(scope: !141, file: !3, line: 104, column: 2)
!145 = !DILocation(line: 104, column: 13, scope: !144)
!146 = !DILocation(line: 104, column: 2, scope: !141)
!147 = !DILocation(line: 106, column: 14, scope: !148)
!148 = distinct !DILexicalBlock(scope: !144, file: !3, line: 105, column: 3)
!149 = !DILocation(line: 106, column: 17, scope: !148)
!150 = !DILocation(line: 106, column: 3, scope: !148)
!151 = !DILocation(line: 107, column: 10, scope: !148)
!152 = !DILocation(line: 107, column: 3, scope: !148)
!153 = !DILocation(line: 107, column: 5, scope: !148)
!154 = !DILocation(line: 107, column: 9, scope: !148)
!155 = !DILocation(line: 108, column: 10, scope: !148)
!156 = !DILocation(line: 108, column: 3, scope: !148)
!157 = !DILocation(line: 108, column: 5, scope: !148)
!158 = !DILocation(line: 108, column: 6, scope: !148)
!159 = !DILocation(line: 108, column: 9, scope: !148)
!160 = !DILocation(line: 109, column: 3, scope: !148)
!161 = !DILocation(line: 104, column: 30, scope: !144)
!162 = !DILocation(line: 104, column: 2, scope: !144)
!163 = distinct !{!163, !146, !164, !135}
!164 = !DILocation(line: 109, column: 3, scope: !141)
!165 = !DILocation(line: 111, column: 4, scope: !30)
!166 = !DILocation(line: 111, column: 9, scope: !30)
!167 = !DILocation(line: 111, column: 3, scope: !30)
!168 = !DILocation(line: 112, column: 8, scope: !169)
!169 = distinct !DILexicalBlock(scope: !30, file: !3, line: 112, column: 2)
!170 = !DILocation(line: 112, column: 7, scope: !169)
!171 = !DILocation(line: 112, column: 12, scope: !172)
!172 = distinct !DILexicalBlock(scope: !169, file: !3, line: 112, column: 2)
!173 = !DILocation(line: 112, column: 13, scope: !172)
!174 = !DILocation(line: 112, column: 2, scope: !169)
!175 = !DILocation(line: 114, column: 14, scope: !176)
!176 = distinct !DILexicalBlock(scope: !172, file: !3, line: 113, column: 3)
!177 = !DILocation(line: 114, column: 17, scope: !176)
!178 = !DILocation(line: 114, column: 3, scope: !176)
!179 = !DILocation(line: 115, column: 10, scope: !176)
!180 = !DILocation(line: 115, column: 3, scope: !176)
!181 = !DILocation(line: 115, column: 5, scope: !176)
!182 = !DILocation(line: 115, column: 9, scope: !176)
!183 = !DILocation(line: 116, column: 10, scope: !176)
!184 = !DILocation(line: 116, column: 3, scope: !176)
!185 = !DILocation(line: 116, column: 5, scope: !176)
!186 = !DILocation(line: 116, column: 6, scope: !176)
!187 = !DILocation(line: 116, column: 9, scope: !176)
!188 = !DILocation(line: 117, column: 3, scope: !176)
!189 = !DILocation(line: 112, column: 22, scope: !172)
!190 = !DILocation(line: 112, column: 2, scope: !172)
!191 = distinct !{!191, !174, !192, !135}
!192 = !DILocation(line: 117, column: 3, scope: !169)
!193 = !DILocation(line: 118, column: 2, scope: !30)
