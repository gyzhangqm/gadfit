!!****m* GADfit/gauss_konrod_parameters
!! 
!! COPYRIGHT
!! 
!! Copyright (C) 2014-2015 Raul Laasner
!! This file is distributed under the terms of the GNU General Public
!! License, see LICENSE in the root directory of the present
!! distribution or http://gnu.org/copyleft/gpl.txt .
!! 
!! FUNCTION
!! 
!! Contains the 2n+1 nodes of the Legendre polynomials, weights
!! corresponding to the n-point Gaussian rule, and weights
!! corresponding to the (2n+1)-point Kronrod rule. 2n+1 can be 15, 21,
!! 31, 41, 51, or 61.
!!
!! SOURCE
module gauss_kronrod_parameters

  use gadf_constants, only: kp

  implicit none

  public
  private :: kp

  ! Evaluated with 80 decimal digit arithmetic by L. W. Fullerton,
  ! Bell Labs, Nov. 1981.

  ! 7-point Gauss rule with 15-point Kronrod rule
  real(kp), parameter :: roots_15p(15) = [ &
      -0.991455371120812639206854697526329_kp, &
      -0.949107912342758524526189684047851_kp, &
      -0.864864423359769072789712788640926_kp, &
      -0.741531185599394439863864773280788_kp, &
      -0.586087235467691130294144838258730_kp, &
      -0.405845151377397166906606412076961_kp, &
      -0.207784955007898467600689403773245_kp, &
       0.000000000000000000000000000000000_kp, &
       0.991455371120812639206854697526329_kp, &
       0.949107912342758524526189684047851_kp, &
       0.864864423359769072789712788640926_kp, &
       0.741531185599394439863864773280788_kp, &
       0.586087235467691130294144838258730_kp, &
       0.405845151377397166906606412076961_kp, &
       0.207784955007898467600689403773245_kp]
       
  real(kp), parameter :: weights_gauss_7p(7) = [ &
       0.129484966168869693270611432679082_kp, &
       0.279705391489276667901467771423780_kp, &
       0.381830050505118944950369775488975_kp, &
       0.417959183673469387755102040816327_kp, &
       0.129484966168869693270611432679082_kp, &
       0.279705391489276667901467771423780_kp, &
       0.381830050505118944950369775488975_kp]

  real(kp), parameter :: weights_kronrod_15p(15) = [ &
       0.022935322010529224963732008058970_kp, &
       0.063092092629978553290700663189204_kp, &
       0.104790010322250183839876322541518_kp, &
       0.140653259715525918745189590510238_kp, &
       0.169004726639267902826583426598550_kp, &
       0.190350578064785409913256402421014_kp, &
       0.204432940075298892414161999234649_kp, &
       0.209482141084727828012999174891714_kp, &
       0.022935322010529224963732008058970_kp, &
       0.063092092629978553290700663189204_kp, &
       0.104790010322250183839876322541518_kp, &
       0.140653259715525918745189590510238_kp, &
       0.169004726639267902826583426598550_kp, &
       0.190350578064785409913256402421014_kp, &
       0.204432940075298892414161999234649_kp]

  ! 10-point Gauss rule with 21-point Kronrod rule
  real(kp), parameter :: roots_21p(21) = [ &
      -0.995657163025808080735527280689003_kp, &
      -0.973906528517171720077964012084452_kp, &
      -0.930157491355708226001207180059508_kp, &
      -0.865063366688984510732096688423493_kp, &
      -0.780817726586416897063717578345042_kp, &
      -0.679409568299024406234327365114874_kp, &
      -0.562757134668604683339000099272694_kp, &
      -0.433395394129247190799265943165784_kp, &
      -0.294392862701460198131126603103866_kp, &
      -0.148874338981631210884826001129720_kp, &
       0.995657163025808080735527280689003_kp, &
       0.973906528517171720077964012084452_kp, &
       0.930157491355708226001207180059508_kp, &
       0.865063366688984510732096688423493_kp, &
       0.780817726586416897063717578345042_kp, &
       0.679409568299024406234327365114874_kp, &
       0.562757134668604683339000099272694_kp, &
       0.433395394129247190799265943165784_kp, &
       0.294392862701460198131126603103866_kp, &
       0.148874338981631210884826001129720_kp, &
       0.000000000000000000000000000000000_kp]

  real(kp), parameter :: weights_gauss_10p(10) = [ &
       0.066671344308688137593568809893332_kp, &
       0.149451349150580593145776339657697_kp, &
       0.219086362515982043995534934228163_kp, &
       0.269266719309996355091226921569469_kp, &
       0.295524224714752870173892994651338_kp, &
       0.066671344308688137593568809893332_kp, &
       0.149451349150580593145776339657697_kp, &
       0.219086362515982043995534934228163_kp, &
       0.269266719309996355091226921569469_kp, &
       0.295524224714752870173892994651338_kp]
  
  real(kp), parameter :: weights_kronrod_21p(21) = [ &
       0.011694638867371874278064396062192_kp, &
       0.032558162307964727478818972459390_kp, &
       0.054755896574351996031381300244580_kp, &
       0.075039674810919952767043140916190_kp, &
       0.093125454583697605535065465083366_kp, &
       0.109387158802297641899210590325805_kp, &
       0.123491976262065851077958109831074_kp, &
       0.134709217311473325928054001771707_kp, &
       0.142775938577060080797094273138717_kp, &
       0.147739104901338491374841515972068_kp, &
       0.011694638867371874278064396062192_kp, &
       0.032558162307964727478818972459390_kp, &
       0.054755896574351996031381300244580_kp, &
       0.075039674810919952767043140916190_kp, &
       0.093125454583697605535065465083366_kp, &
       0.109387158802297641899210590325805_kp, &
       0.123491976262065851077958109831074_kp, &
       0.134709217311473325928054001771707_kp, &
       0.142775938577060080797094273138717_kp, &
       0.147739104901338491374841515972068_kp, &
       0.149445554002916905664936468389821_kp]

  ! 15-point Gauss rule with 31-point Kronrod rule
  real(kp), parameter :: roots_31p(31) = [ &
      -0.998002298693397060285172840152271_kp, &
      -0.987992518020485428489565718586613_kp, &
      -0.967739075679139134257347978784337_kp, &
      -0.937273392400705904307758947710209_kp, &
      -0.897264532344081900882509656454496_kp, &
      -0.848206583410427216200648320774217_kp, &
      -0.790418501442465932967649294817947_kp, &
      -0.724417731360170047416186054613938_kp, &
      -0.650996741297416970533735895313275_kp, &
      -0.570972172608538847537226737253911_kp, &
      -0.485081863640239680693655740232351_kp, &
      -0.394151347077563369897207370981045_kp, &
      -0.299180007153168812166780024266389_kp, &
      -0.201194093997434522300628303394596_kp, &
      -0.101142066918717499027074231447392_kp, &
       0.000000000000000000000000000000000_kp, &
       0.998002298693397060285172840152271_kp, &
       0.987992518020485428489565718586613_kp, &
       0.967739075679139134257347978784337_kp, &
       0.937273392400705904307758947710209_kp, &
       0.897264532344081900882509656454496_kp, &
       0.848206583410427216200648320774217_kp, &
       0.790418501442465932967649294817947_kp, &
       0.724417731360170047416186054613938_kp, &
       0.650996741297416970533735895313275_kp, &
       0.570972172608538847537226737253911_kp, &
       0.485081863640239680693655740232351_kp, &
       0.394151347077563369897207370981045_kp, &
       0.299180007153168812166780024266389_kp, &
       0.201194093997434522300628303394596_kp, &
       0.101142066918717499027074231447392_kp]

  real(kp), parameter :: weights_gauss_15p(15) = [ &
       0.030753241996117268354628393577204_kp, &
       0.070366047488108124709267416450667_kp, &
       0.107159220467171935011869546685869_kp, &
       0.139570677926154314447804794511028_kp, &
       0.166269205816993933553200860481209_kp, &
       0.186161000015562211026800561866423_kp, &
       0.198431485327111576456118326443839_kp, &
       0.202578241925561272880620199967519_kp, &
       0.030753241996117268354628393577204_kp, &
       0.070366047488108124709267416450667_kp, &
       0.107159220467171935011869546685869_kp, &
       0.139570677926154314447804794511028_kp, &
       0.166269205816993933553200860481209_kp, &
       0.186161000015562211026800561866423_kp, &
       0.198431485327111576456118326443839_kp]

  real(kp), parameter :: weights_kronrod_31p(31) = [ &
       0.005377479872923348987792051430128_kp, &
       0.015007947329316122538374763075807_kp, &
       0.025460847326715320186874001019653_kp, &
       0.035346360791375846222037948478360_kp, &
       0.044589751324764876608227299373280_kp, &
       0.053481524690928087265343147239430_kp, &
       0.062009567800670640285139230960803_kp, &
       0.069854121318728258709520077099147_kp, &
       0.076849680757720378894432777482659_kp, &
       0.083080502823133021038289247286104_kp, &
       0.088564443056211770647275443693774_kp, &
       0.093126598170825321225486872747346_kp, &
       0.096642726983623678505179907627589_kp, &
       0.099173598721791959332393173484603_kp, &
       0.100769845523875595044946662617570_kp, &
       0.101330007014791549017374792767493_kp, &
       0.005377479872923348987792051430128_kp, &
       0.015007947329316122538374763075807_kp, &
       0.025460847326715320186874001019653_kp, &
       0.035346360791375846222037948478360_kp, &
       0.044589751324764876608227299373280_kp, &
       0.053481524690928087265343147239430_kp, &
       0.062009567800670640285139230960803_kp, &
       0.069854121318728258709520077099147_kp, &
       0.076849680757720378894432777482659_kp, &
       0.083080502823133021038289247286104_kp, &
       0.088564443056211770647275443693774_kp, &
       0.093126598170825321225486872747346_kp, &
       0.096642726983623678505179907627589_kp, &
       0.099173598721791959332393173484603_kp, &
       0.100769845523875595044946662617570_kp]

  ! 20-point Gauss rule with 41-point Kronrod rule
  real(kp), parameter :: roots_41p(41) = [ &
      -0.998859031588277663838315576545863_kp, &
      -0.993128599185094924786122388471320_kp, &
      -0.981507877450250259193342994720217_kp, &
      -0.963971927277913791267666131197277_kp, &
      -0.940822633831754753519982722212443_kp, &
      -0.912234428251325905867752441203298_kp, &
      -0.878276811252281976077442995113078_kp, &
      -0.839116971822218823394529061701521_kp, &
      -0.795041428837551198350638833272788_kp, &
      -0.746331906460150792614305070355642_kp, &
      -0.693237656334751384805490711845932_kp, &
      -0.636053680726515025452836696226286_kp, &
      -0.575140446819710315342946036586425_kp, &
      -0.510867001950827098004364050955251_kp, &
      -0.443593175238725103199992213492640_kp, &
      -0.373706088715419560672548177024927_kp, &
      -0.301627868114913004320555356858592_kp, &
      -0.227785851141645078080496195368575_kp, &
      -0.152605465240922675505220241022678_kp, &
      -0.076526521133497333754640409398838_kp, &
       0.998859031588277663838315576545863_kp, &
       0.993128599185094924786122388471320_kp, &
       0.981507877450250259193342994720217_kp, &
       0.963971927277913791267666131197277_kp, &
       0.940822633831754753519982722212443_kp, &
       0.912234428251325905867752441203298_kp, &
       0.878276811252281976077442995113078_kp, &
       0.839116971822218823394529061701521_kp, &
       0.795041428837551198350638833272788_kp, &
       0.746331906460150792614305070355642_kp, &
       0.693237656334751384805490711845932_kp, &
       0.636053680726515025452836696226286_kp, &
       0.575140446819710315342946036586425_kp, &
       0.510867001950827098004364050955251_kp, &
       0.443593175238725103199992213492640_kp, &
       0.373706088715419560672548177024927_kp, &
       0.301627868114913004320555356858592_kp, &
       0.227785851141645078080496195368575_kp, &
       0.152605465240922675505220241022678_kp, &
       0.076526521133497333754640409398838_kp, &
       0.000000000000000000000000000000000_kp]

  real(kp), parameter :: weights_gauss_20p(20) = [ &
       0.017614007139152118311861962351853_kp, &
       0.040601429800386941331039952274932_kp, &
       0.062672048334109063569506535187042_kp, &
       0.083276741576704748724758143222046_kp, &
       0.101930119817240435036750135480350_kp, &
       0.118194531961518417312377377711382_kp, &
       0.131688638449176626898494499748163_kp, &
       0.142096109318382051329298325067165_kp, &
       0.149172986472603746787828737001969_kp, &
       0.152753387130725850698084331955098_kp, &
       0.017614007139152118311861962351853_kp, &
       0.040601429800386941331039952274932_kp, &
       0.062672048334109063569506535187042_kp, &
       0.083276741576704748724758143222046_kp, &
       0.101930119817240435036750135480350_kp, &
       0.118194531961518417312377377711382_kp, &
       0.131688638449176626898494499748163_kp, &
       0.142096109318382051329298325067165_kp, &
       0.149172986472603746787828737001969_kp, &
       0.152753387130725850698084331955098_kp]

  real(kp), parameter :: weights_kronrod_41p(41) = [ &
       0.003073583718520531501218293246031_kp, &
       0.008600269855642942198661787950102_kp, &
       0.014626169256971252983787960308868_kp, &
       0.020388373461266523598010231432755_kp, &
       0.025882133604951158834505067096153_kp, &
       0.031287306777032798958543119323801_kp, &
       0.036600169758200798030557240707211_kp, &
       0.041668873327973686263788305936895_kp, &
       0.046434821867497674720231880926108_kp, &
       0.050944573923728691932707670050345_kp, &
       0.055195105348285994744832372419777_kp, &
       0.059111400880639572374967220648594_kp, &
       0.062653237554781168025870122174255_kp, &
       0.065834597133618422111563556969398_kp, &
       0.068648672928521619345623411885368_kp, &
       0.071054423553444068305790361723210_kp, &
       0.073030690332786667495189417658913_kp, &
       0.074582875400499188986581418362488_kp, &
       0.075704497684556674659542775376617_kp, &
       0.076377867672080736705502835038061_kp, &
       0.003073583718520531501218293246031_kp, &
       0.008600269855642942198661787950102_kp, &
       0.014626169256971252983787960308868_kp, &
       0.020388373461266523598010231432755_kp, &
       0.025882133604951158834505067096153_kp, &
       0.031287306777032798958543119323801_kp, &
       0.036600169758200798030557240707211_kp, &
       0.041668873327973686263788305936895_kp, &
       0.046434821867497674720231880926108_kp, &
       0.050944573923728691932707670050345_kp, &
       0.055195105348285994744832372419777_kp, &
       0.059111400880639572374967220648594_kp, &
       0.062653237554781168025870122174255_kp, &
       0.065834597133618422111563556969398_kp, &
       0.068648672928521619345623411885368_kp, &
       0.071054423553444068305790361723210_kp, &
       0.073030690332786667495189417658913_kp, &
       0.074582875400499188986581418362488_kp, &
       0.075704497684556674659542775376617_kp, &
       0.076377867672080736705502835038061_kp, &
       0.076600711917999656445049901530102_kp]

  ! 25-point Gauss rule with 51-point Kronrod rule
  real(kp), parameter :: roots_51p(51) = [ &
      -0.999262104992609834193457486540341_kp, &
      -0.995556969790498097908784946893902_kp, &
      -0.988035794534077247637331014577406_kp, &
      -0.976663921459517511498315386479594_kp, &
      -0.961614986425842512418130033660167_kp, &
      -0.942974571228974339414011169658471_kp, &
      -0.920747115281701561746346084546331_kp, &
      -0.894991997878275368851042006782805_kp, &
      -0.865847065293275595448996969588340_kp, &
      -0.833442628760834001421021108693570_kp, &
      -0.797873797998500059410410904994307_kp, &
      -0.759259263037357630577282865204361_kp, &
      -0.717766406813084388186654079773298_kp, &
      -0.673566368473468364485120633247622_kp, &
      -0.626810099010317412788122681624518_kp, &
      -0.577662930241222967723689841612654_kp, &
      -0.526325284334719182599623778158010_kp, &
      -0.473002731445714960522182115009192_kp, &
      -0.417885382193037748851814394594572_kp, &
      -0.361172305809387837735821730127641_kp, &
      -0.303089538931107830167478909980339_kp, &
      -0.243866883720988432045190362797452_kp, &
      -0.183718939421048892015969888759528_kp, &
      -0.122864692610710396387359818808037_kp, &
      -0.061544483005685078886546392366797_kp, &
       0.000000000000000000000000000000000_kp, &
       0.999262104992609834193457486540341_kp, &
       0.995556969790498097908784946893902_kp, &
       0.988035794534077247637331014577406_kp, &
       0.976663921459517511498315386479594_kp, &
       0.961614986425842512418130033660167_kp, &
       0.942974571228974339414011169658471_kp, &
       0.920747115281701561746346084546331_kp, &
       0.894991997878275368851042006782805_kp, &
       0.865847065293275595448996969588340_kp, &
       0.833442628760834001421021108693570_kp, &
       0.797873797998500059410410904994307_kp, &
       0.759259263037357630577282865204361_kp, &
       0.717766406813084388186654079773298_kp, &
       0.673566368473468364485120633247622_kp, &
       0.626810099010317412788122681624518_kp, &
       0.577662930241222967723689841612654_kp, &
       0.526325284334719182599623778158010_kp, &
       0.473002731445714960522182115009192_kp, &
       0.417885382193037748851814394594572_kp, &
       0.361172305809387837735821730127641_kp, &
       0.303089538931107830167478909980339_kp, &
       0.243866883720988432045190362797452_kp, &
       0.183718939421048892015969888759528_kp, &
       0.122864692610710396387359818808037_kp, &
       0.061544483005685078886546392366797_kp]

  real(kp), parameter :: weights_gauss_25p(25) = [ &
       0.011393798501026287947902964113235_kp, &
       0.026354986615032137261901815295299_kp, &
       0.040939156701306312655623487711646_kp, &
       0.054904695975835191925936891540473_kp, &
       0.068038333812356917207187185656708_kp, &
       0.080140700335001018013234959669111_kp, &
       0.091028261982963649811497220702892_kp, &
       0.100535949067050644202206890392686_kp, &
       0.108519624474263653116093957050117_kp, &
       0.114858259145711648339325545869556_kp, &
       0.119455763535784772228178126512901_kp, &
       0.122242442990310041688959518945852_kp, &
       0.123176053726715451203902873079050_kp, &
       0.011393798501026287947902964113235_kp, &
       0.026354986615032137261901815295299_kp, &
       0.040939156701306312655623487711646_kp, &
       0.054904695975835191925936891540473_kp, &
       0.068038333812356917207187185656708_kp, &
       0.080140700335001018013234959669111_kp, &
       0.091028261982963649811497220702892_kp, &
       0.100535949067050644202206890392686_kp, &
       0.108519624474263653116093957050117_kp, &
       0.114858259145711648339325545869556_kp, &
       0.119455763535784772228178126512901_kp, &
       0.122242442990310041688959518945852_kp]

  real(kp), parameter :: weights_kronrod_51p(51) = [ &
       0.001987383892330315926507851882843_kp, &
       0.005561932135356713758040236901066_kp, &
       0.009473973386174151607207710523655_kp, &
       0.013236229195571674813656405846976_kp, &
       0.016847817709128298231516667536336_kp, &
       0.020435371145882835456568292235939_kp, &
       0.024009945606953216220092489164881_kp, &
       0.027475317587851737802948455517811_kp, &
       0.030792300167387488891109020215229_kp, &
       0.034002130274329337836748795229551_kp, &
       0.037116271483415543560330625367620_kp, &
       0.040083825504032382074839284467076_kp, &
       0.042872845020170049476895792439495_kp, &
       0.045502913049921788909870584752660_kp, &
       0.047982537138836713906392255756915_kp, &
       0.050277679080715671963325259433440_kp, &
       0.052362885806407475864366712137873_kp, &
       0.054251129888545490144543370459876_kp, &
       0.055950811220412317308240686382747_kp, &
       0.057437116361567832853582693939506_kp, &
       0.058689680022394207961974175856788_kp, &
       0.059720340324174059979099291932562_kp, &
       0.060539455376045862945360267517565_kp, &
       0.061128509717053048305859030416293_kp, &
       0.061471189871425316661544131965264_kp, &
       0.061580818067832935078759824240055_kp, &
       0.001987383892330315926507851882843_kp, &
       0.005561932135356713758040236901066_kp, &
       0.009473973386174151607207710523655_kp, &
       0.013236229195571674813656405846976_kp, &
       0.016847817709128298231516667536336_kp, &
       0.020435371145882835456568292235939_kp, &
       0.024009945606953216220092489164881_kp, &
       0.027475317587851737802948455517811_kp, &
       0.030792300167387488891109020215229_kp, &
       0.034002130274329337836748795229551_kp, &
       0.037116271483415543560330625367620_kp, &
       0.040083825504032382074839284467076_kp, &
       0.042872845020170049476895792439495_kp, &
       0.045502913049921788909870584752660_kp, &
       0.047982537138836713906392255756915_kp, &
       0.050277679080715671963325259433440_kp, &
       0.052362885806407475864366712137873_kp, &
       0.054251129888545490144543370459876_kp, &
       0.055950811220412317308240686382747_kp, &
       0.057437116361567832853582693939506_kp, &
       0.058689680022394207961974175856788_kp, &
       0.059720340324174059979099291932562_kp, &
       0.060539455376045862945360267517565_kp, &
       0.061128509717053048305859030416293_kp, &
       0.061471189871425316661544131965264_kp]

  ! 30-point Gauss rule with 61-point Kronrod rule
  real(kp), parameter :: roots_61p(61) = [ &
      -0.999484410050490637571325895705811_kp, &
      -0.996893484074649540271630050918695_kp, &
      -0.991630996870404594858628366109486_kp, &
      -0.983668123279747209970032581605663_kp, &
      -0.973116322501126268374693868423707_kp, &
      -0.960021864968307512216871025581798_kp, &
      -0.944374444748559979415831324037439_kp, &
      -0.926200047429274325879324277080474_kp, &
      -0.905573307699907798546522558925958_kp, &
      -0.882560535792052681543116462530226_kp, &
      -0.857205233546061098958658510658944_kp, &
      -0.829565762382768397442898119732502_kp, &
      -0.799727835821839083013668942322683_kp, &
      -0.767777432104826194917977340974503_kp, &
      -0.733790062453226804726171131369528_kp, &
      -0.697850494793315796932292388026640_kp, &
      -0.660061064126626961370053668149271_kp, &
      -0.620526182989242861140477556431189_kp, &
      -0.579345235826361691756024932172540_kp, &
      -0.536624148142019899264169793311073_kp, &
      -0.492480467861778574993693061207709_kp, &
      -0.447033769538089176780609900322854_kp, &
      -0.400401254830394392535476211542661_kp, &
      -0.352704725530878113471037207089374_kp, &
      -0.304073202273625077372677107199257_kp, &
      -0.254636926167889846439805129817805_kp, &
      -0.204525116682309891438957671002025_kp, &
      -0.153869913608583546963794672743256_kp, &
      -0.102806937966737030147096751318001_kp, &
      -0.051471842555317695833025213166723_kp, &
       0.999484410050490637571325895705811_kp, &
       0.996893484074649540271630050918695_kp, &
       0.991630996870404594858628366109486_kp, &
       0.983668123279747209970032581605663_kp, &
       0.973116322501126268374693868423707_kp, &
       0.960021864968307512216871025581798_kp, &
       0.944374444748559979415831324037439_kp, &
       0.926200047429274325879324277080474_kp, &
       0.905573307699907798546522558925958_kp, &
       0.882560535792052681543116462530226_kp, &
       0.857205233546061098958658510658944_kp, &
       0.829565762382768397442898119732502_kp, &
       0.799727835821839083013668942322683_kp, &
       0.767777432104826194917977340974503_kp, &
       0.733790062453226804726171131369528_kp, &
       0.697850494793315796932292388026640_kp, &
       0.660061064126626961370053668149271_kp, &
       0.620526182989242861140477556431189_kp, &
       0.579345235826361691756024932172540_kp, &
       0.536624148142019899264169793311073_kp, &
       0.492480467861778574993693061207709_kp, &
       0.447033769538089176780609900322854_kp, &
       0.400401254830394392535476211542661_kp, &
       0.352704725530878113471037207089374_kp, &
       0.304073202273625077372677107199257_kp, &
       0.254636926167889846439805129817805_kp, &
       0.204525116682309891438957671002025_kp, &
       0.153869913608583546963794672743256_kp, &
       0.102806937966737030147096751318001_kp, &
       0.051471842555317695833025213166723_kp, &
       0.000000000000000000000000000000000_kp]
       
  real(kp), parameter :: weights_gauss_30p(30) = [ &
       0.007968192496166605615465883474674_kp, &
       0.018466468311090959142302131912047_kp, &
       0.028784707883323369349719179611292_kp, &
       0.038799192569627049596801936446348_kp, &
       0.048402672830594052902938140422808_kp, &
       0.057493156217619066481721689402056_kp, &
       0.065974229882180495128128515115962_kp, &
       0.073755974737705206268243850022191_kp, &
       0.080755895229420215354694938460530_kp, &
       0.086899787201082979802387530715126_kp, &
       0.092122522237786128717632707087619_kp, &
       0.096368737174644259639468626351810_kp, &
       0.099593420586795267062780282103569_kp, &
       0.101762389748405504596428952168554_kp, &
       0.102852652893558840341285636705415_kp, &
       0.007968192496166605615465883474674_kp, &
       0.018466468311090959142302131912047_kp, &
       0.028784707883323369349719179611292_kp, &
       0.038799192569627049596801936446348_kp, &
       0.048402672830594052902938140422808_kp, &
       0.057493156217619066481721689402056_kp, &
       0.065974229882180495128128515115962_kp, &
       0.073755974737705206268243850022191_kp, &
       0.080755895229420215354694938460530_kp, &
       0.086899787201082979802387530715126_kp, &
       0.092122522237786128717632707087619_kp, &
       0.096368737174644259639468626351810_kp, &
       0.099593420586795267062780282103569_kp, &
       0.101762389748405504596428952168554_kp, &
       0.102852652893558840341285636705415_kp]

  real(kp), parameter :: weights_kronrod_61p(61) = [ &
       0.001389013698677007624551591226760_kp, &
       0.003890461127099884051267201844516_kp, &
       0.006630703915931292173319826369750_kp, &
       0.009273279659517763428441146892024_kp, &
       0.011823015253496341742232898853251_kp, &
       0.014369729507045804812451432443580_kp, &
       0.016920889189053272627572289420322_kp, &
       0.019414141193942381173408951050128_kp, &
       0.021828035821609192297167485738339_kp, &
       0.024191162078080601365686370725232_kp, &
       0.026509954882333101610601709335075_kp, &
       0.028754048765041292843978785354334_kp, &
       0.030907257562387762472884252943092_kp, &
       0.032981447057483726031814191016854_kp, &
       0.034979338028060024137499670731468_kp, &
       0.036882364651821229223911065617136_kp, &
       0.038678945624727592950348651532281_kp, &
       0.040374538951535959111995279752468_kp, &
       0.041969810215164246147147541285970_kp, &
       0.043452539701356069316831728117073_kp, &
       0.044814800133162663192355551616723_kp, &
       0.046059238271006988116271735559374_kp, &
       0.047185546569299153945261478181099_kp, &
       0.048185861757087129140779492298305_kp, &
       0.049055434555029778887528165367238_kp, &
       0.049795683427074206357811569379942_kp, &
       0.050405921402782346840893085653585_kp, &
       0.050881795898749606492297473049805_kp, &
       0.051221547849258772170656282604944_kp, &
       0.051426128537459025933862879215781_kp, &
       0.001389013698677007624551591226760_kp, &
       0.003890461127099884051267201844516_kp, &
       0.006630703915931292173319826369750_kp, &
       0.009273279659517763428441146892024_kp, &
       0.011823015253496341742232898853251_kp, &
       0.014369729507045804812451432443580_kp, &
       0.016920889189053272627572289420322_kp, &
       0.019414141193942381173408951050128_kp, &
       0.021828035821609192297167485738339_kp, &
       0.024191162078080601365686370725232_kp, &
       0.026509954882333101610601709335075_kp, &
       0.028754048765041292843978785354334_kp, &
       0.030907257562387762472884252943092_kp, &
       0.032981447057483726031814191016854_kp, &
       0.034979338028060024137499670731468_kp, &
       0.036882364651821229223911065617136_kp, &
       0.038678945624727592950348651532281_kp, &
       0.040374538951535959111995279752468_kp, &
       0.041969810215164246147147541285970_kp, &
       0.043452539701356069316831728117073_kp, &
       0.044814800133162663192355551616723_kp, &
       0.046059238271006988116271735559374_kp, &
       0.047185546569299153945261478181099_kp, &
       0.048185861757087129140779492298305_kp, &
       0.049055434555029778887528165367238_kp, &
       0.049795683427074206357811569379942_kp, &
       0.050405921402782346840893085653585_kp, &
       0.050881795898749606492297473049805_kp, &
       0.051221547849258772170656282604944_kp, &
       0.051426128537459025933862879215781_kp, &
       0.051494729429451567558340433647099_kp]
end module gauss_kronrod_parameters
!!***
