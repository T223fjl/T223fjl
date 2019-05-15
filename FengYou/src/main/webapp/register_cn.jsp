<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <title>注册</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <title>注册</title>
    <link rel="icon" href="http://www.elongstatic.com/common/pic/favicon.ico?t=201411070740" type="image/x-icon"/>
        <link rel="stylesheet" type="text/css"
              href="${pageContext.request.contextPath }/statics/css/myelong2014_login.css">
</head>
<body>




<!-- =====================content start===================== -->

<div class="head">
    <div class="logo" id="RedirectHomeSite"><img src="${pageContext.request.contextPath }/statics/images/login/mg_logo1.png" width="200px"></div>
</div>
<!--进度条开始-->
<!--进度条结束-->
<div class="container" id="NewUserUp">
    <h1 class="title">
        <label>注册新会员</label>
            <span>已有风游账号，</span>
            <a href="${pageContext.request.contextPath }/login.jsp">直接登录</a>
    </h1>
    <!-- 持卡注册 start -->
        <div id="CooperationCard">
            <div class="ml135 haveCard"><input type="checkbox" id="IshaveCardReg"  value="0">我有艺龙合作卡            </div>
            <dl class="Card clx" style="display: none">
                <dt><span class="cf00">*</span>卡类型：</dt>
                <dd>
                    <select class="w250"  id="cardParentType" name="cardParentType">
                            <option value="12">银行卡类</option>
                            <option value="17">酒店合作类</option>
                            <option value="13">无线通讯类</option>
                            <option value="14">购物消费类</option>
                            <option value="15">航空类</option>
                            <option value="16">其他</option>
                            <option value="11">所有联名卡[按首字拼音排序]</option>
                    </select>
                </dd>
                <dt ><span class="cf00">*</span>卡名称：</dt>
                <dd >
                    <select class="w250" name="cardChildType" id="cardChildType">

                    </select>
                </dd>
                <dt>卡号：</dt>
                <dd>
                    <input type="text" id="cardRegCardNo"> <em id="cardregview" class="nowrap"
                                                               style="display:none;"><span class="TipsIcon"></span>请填写以CA为开头的卡号，查询卡号请致电凤凰知音客服95583，或登录
                    <a href="http://ffp.airchina.com.cn/" target="_blank">知音官网</a> 查询</em>
                </dd>
                <!--<dt method="elongCardPwd"><span class="cf00">*</span>艺龙卡密码：-->
                <!--</dt>-->
                <!--<dd method="elongCardValue">-->
                    <!--<input type="password" name="cardRegCardPwd" id="cardRegCardPwd">-->
                <!--</dd>-->
            </dl>
        </div>
    <!-- 持卡注册 end -->
<form action="${pageContext.request.contextPath }/user/Registration" method="post"   >
    <ul class="FillMge" id="regBaseMessage">
        <li class="phonenum_wrap">
                    <p><span class="cf00">*</span>手机：</p>
                    <span>
                        <span id="phoneNum" class="phonenum" >
                            <span id="phoneType" value="1" >中国大陆+86</span>
                            <ul id="phoneTypeList" style="display:none">

                            </ul>
                        </span>
                        <span><input class="w150 phone_input" value="" maxlength="11"
                                     isDynamic=true name="phone" /></span>
                    </span>
        </li>
         <li class="phonenum_wrap">
                    <p><span class="cf00">*</span>用户名：</p>
                    <span>
                        <span><input class="w150 phone_input"  value="" maxlength="11"
                                     isDynamic=true name="name"/></span>
                    </span>
        </li>
        <li>
            <p><span class="cf00">*</span>输入验证码：</p>
            <span><input class="vCode" id="validateCode" name="validateCode"/></span>
            <img src="${pageContext.request.contextPath }/statics/picture/53596038cb554c27a6aa801d3f079850.gif" alt="验证码"
                 id="validateImg"
                 >
            <a href="#?" id="changeCode">看不清，换一张</a>
            <span id="validate_code_tip_info"></span>
        </li>
            <li>
                <p><span class="cf00">*</span>短信验证码：</p>
                <span>
                    <input maxlength="6" class="w150 vCode" id="smsCodeInput" name="smsCodeInput"
                           type="text">
                        <span class="messcode" id="getSmsCode" userful="true">获取短信验证码</span>
                </span>
            </li>
        <li>
            <p><span class="cf00">*</span>邮箱： </p>
            <span><input class="w150" name="email"/></span>
        </li>
        <li class="pass_level">
            <p><span class="cf00">*</span>密码：</p>
            <span><input class="w150" name="pwd" type="password"/></span>
            <i style="display: none;" id="pwstrengthtxt"></i>
            <tt class="mb5" id="pwstrength" style="display: none"><s class="low"></s><s class="normal"></s><s
                    class="high"></s> </tt>
        </li>
        <li>
            <p><span class="cf00">*</span>再次输入密码：</p>
            <span><input class="w150"  name="pwd2"
                         type="password"/></span>
        </li>
        <li>
            <p></p>
                <span class="promotion_ipt">
                    <input type="checkbox" checked="checked" id="getSalesPromotionMsgCheckBox" name="" class="w20"/>同意接受艺龙发送的促销信息。
                </span>
        </li>
    </ul>
        <div class="ml135 agree">
            <input type="checkbox" name="" id="isHadReadItems">同意艺龙旅行网服务条款
            <a href="#?" id="readItems">查看条款</a>
        </div>
    <!-- 注册条款 -->
        <div class="Treaty ml135" id="items" style="display: none">
<!DOCTYPE html><html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><meta name="viewport" id="viewport" content="minimal-ui,target-densitydpi=medium-dpi,initial-scale=1.0, maximum-scale=1.0,minimum-scale=1.0,user-scalable=no"><title>服务协议</title><style>            *{                margin: 0;                padding: 0;            }            .agreement {                padding: 15px;                font-family: Helvetica, Arial, sans-serif;            }            h1{                font-size: 16px;            }            h2{                font-size: 12px;            }</style><script>            function back() {                history.go(-1)            }</script></head><body><article><div class="agreement"><h1 style="text-align: center">                《艺龙旅行网服务条款》</h1><h2>                服务协议的确认和接纳</h2><p>                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;艺龙旅行网网站、艺龙旅行网APP以及微信钱包“艺龙旅行网艺龙酒店机票火车票”小程序（以下简称“艺龙旅行网”或“本网站”）由艺龙旅行网运营，涉及具体产品服务的，将由有资质的服务商提供。                如果用户（“用户”或“您”）在本网站、艺龙旅行网关联公司网站或其他艺龙旅行网提供的移动应用或软件上，访问、预定或使用艺龙旅行网的产品或服务（以上统称为“服务”），便视为用户接受了以下服务协议（下称“本服务协议”或“本协议”），请您仔细阅读以下内容，尤其是以下加粗字体。如果您不同意以下任何内容，请立刻停止访问本网站或停止使用本网站服务。</p><h2>                1、总则</h2><p>               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本协议内容包括协议正文、附件、艺龙旅行网子频道各单项服务协议及其他艺龙旅行网已经发布的或将来可能发布的各类规则，包括但不限于免责声明、隐私政策、产品预订须知、账户协议等其他协议（“其他条款”）。如果本协议与“其他条款”有不一致之处，则以“其他条款”为准。除另行明确声明外，任何艺龙旅行网提供的服务均受本协议约束。</p><p>                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;若您作为艺龙旅行网的关联公司或合作公司的用户登陆艺龙旅行网平台，访问艺龙旅行网网站或使用艺龙旅行网服务，即视为您同意本协议的所有条款及艺龙旅行网公布的其他规则、说明和操作指引。</p><p>                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;如果您未满18周岁，请务必在家长和其他法定监护人的陪同下阅读本服务协议，并在进行注册、下单、支付等任何行为或使用艺龙旅行网的其他任何服务前，应事先征得您的家长和其他法定监护人的同意。</p><h2>                2、服务简介</h2><p>               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;艺龙旅行网运用自己的操作系统通过国际互联网络为用户提供网络会员服务。用户必须：</p><p>                &nbsp;&nbsp; &nbsp;（1）提供设备，包括个人电脑一台、调制解调器一个及配备上网装置。</p><p>                &nbsp;&nbsp; &nbsp;（2）个人上网和支付与此服务有关的费用。</p><p>                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;考虑到艺龙旅行网会员服务的重要性，用户同意：</p><p>               &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;(1）提供及时、详尽及准确的个人资料。</p><p>               &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;(2）不断更新注册资料，符合及时、详尽准确的要求。所有原始键入的资料将引用为注册资料。</p><p>                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;另外，用户可授权艺龙旅行网向第三方透露其基本资料，但艺龙旅行网不能公开用户的补充资料。除非：</p><p>                &nbsp;&nbsp; &nbsp;（1）用户要求艺龙旅行网或授权某人通过电子邮件服务透露这些信息。</p><p>                &nbsp;&nbsp; &nbsp;（2）相应的法律及程序要求艺龙旅行网网络科技股份有限公司提供用户的个人资料。</p><p>                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;如果用户提供的资料不准确，艺龙旅行网网络科技股份有限公司保留结束用户使用艺龙旅行网会员服务的权利。</p><p>                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;用户在享用艺龙旅行网网络会员服务的同时，同意接受艺龙旅行网网络会员服务提供的各类信息服务，包括但不限于EDM、短信、邮件、艺龙旅行网App信息推送、PC端广告、小程序推广等服务类及营销类信息。</p><h2>                3、服务条款的修改</h2><p>                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;艺龙旅行网会在必要时修改本协议，如制订、修改本协议及/或各类规则向用户提供基于互联网以及移动网的相关服务的，将在本页面及其相应页面提前公布通知，用户应该定期登陆本页面及其他相关页面，了解最新的协议内容，如用户需要表达相关意见建议，可通过艺龙旅行网相关客服渠道提出。变更后的协议和规则在本页面及相关页面公布后，将于正式生效前以页面弹窗或其他形式取得您的同意。如您不同意相关变更，应当立即停止访问艺龙旅行网或停止使用艺龙旅行网服务，若用户在网站协议和规则变更七日后继续使用艺龙旅行网服务的，即表示您接受已经修订的协议和规则。</p><h2>                4、服务变更、中断、终止</h2><p>               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;您完全理解并同意，本服务涉及到互联网及移动通讯等服务，可能会受到各个环节不稳定因素的影响。因此任何因不可抗力、计算机病毒或黑客攻击、系统不稳定、用户所在位置、用户关机、GSM网络、互联网络、通信线路等其他艺龙旅行网无法预测或控制的原因，造成服务中断、取消或终止的风险，由此给您带来的损失艺龙旅行网不承担赔偿责任。</p><p>                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;艺龙旅行网需要定期或不定期地对提供网络服务的平台或相关的设备进行检修或者维护，如因此类情况而造成网络服务（包括收费网络服务）在合理时间内的中断，艺龙旅行网无需为此承担任何责任，但艺龙旅行网应尽可能事先进行通知。</p><p>                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;您完全理解并同意，除本服务协议另有规定外，鉴于网络服务的特殊性，艺龙旅行网有可能变更、中断或终止部分或全部的网络服务，艺龙旅行网无需为此承担任何责任，但艺龙旅行网应尽可能事先进行通知，并尽可能给您预留时间以便处理相关权益。</p><h2>                5、使用规则</h2><p>                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;用户在使用艺龙旅行网服务时，必须遵守中华人民共和国相关法律法规的规定，用户应同意将不会利用该服务进行任何违法或不正当的活动，包括但不限于下列行为：</p><p>                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;上载、展示、张贴、传播或以其它方式传送含有下列内容之一的信息：</p><p>                &nbsp;&nbsp; &nbsp;（1）反对宪法所确定的基本原则的；</p><p>                &nbsp;&nbsp; &nbsp;（2）危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家统一的；</p><p>                &nbsp;&nbsp; &nbsp;（3）损害国家荣誉和利益的；</p><p>                &nbsp;&nbsp; &nbsp;（4）煽动民族仇恨、民族歧视、破坏民族团结的；</p><p>                &nbsp;&nbsp; &nbsp;（5）破坏国家宗教政策，宣扬邪教和封建迷信的；</p><p>                &nbsp;&nbsp; &nbsp;（6）散布谣言，扰乱社会秩序，破坏社会稳定的；</p><p>                &nbsp;&nbsp; &nbsp;（7）散布淫秽、色情、赌博、暴力、凶杀、恐怖或者教唆犯罪的；</p><p>                &nbsp;&nbsp; &nbsp;（8）侮辱或者诽谤他人，侵害他人合法权利的；</p><p>                &nbsp;&nbsp; &nbsp;（9）含有虚假、有害、胁迫、侵害他人隐私、骚扰、侵害、中伤、粗俗、猥亵、或其它道德上令人反感的内容；</p><p>                &nbsp;&nbsp; &nbsp;（10）含有中国法律、法规、规章、条例以及任何具有法律效力之规范所限制或禁止的其它内容的。</p><p>                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;为任何非法目的而使用网络服务系统。利用艺龙旅行网网络服务从事以下活动：</p><p>                &nbsp;&nbsp; &nbsp;（1）未经允许，进入计算机信息网络或者使用计算机信息网络资源的；</p><p>                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;未经允许，对进入计算机信息网络中存储、处理或者传输的数据和应用程序进行删除、修改或者增加的；</p><p>                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;故意制作、传播计算机病毒等破坏性程序的；</p><p>                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其他危害计算机信息网络安全的行为。</p><p>                &nbsp;&nbsp; &nbsp;（2）对艺龙旅行网网站上的任何数据作商业性利用，包括但不限于在未经艺龙旅行网事先书面同意的情况下，以复制、传播等任何方式使用艺龙旅行网网站上展示的资料。</p><p>                &nbsp;&nbsp; &nbsp;（3）使用任何装置、软件或例行程序等其他方式干预或试图干预艺龙旅行网网站的正常运作或正在艺龙旅行网网站上进行的任何交易、活动，或采取任何将导致不合理的庞大数据负载加诸艺龙旅行网网络设备的行动。</p><p>                &nbsp;&nbsp; &nbsp;（4）违反诚实信用原则的不正当竞争行为，或恶意下订单或虚假交易等其他恶意扰乱艺龙旅行网交易秩序的行为</p><p>                &nbsp;&nbsp; &nbsp;（5）与网上交易无关的其他行为。</p><h2>                6、版权声明</h2><p>                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;任何会员接受本协议条款，即表明该用户将其在本站发表的任何形式（包括但不限于文字、图片、视频等）的信息的著作权，包括并不限于：复制权、发行权、出租权、展览权、表演权、放映权、广播权、信息网络传播权、摄制权、改编权、翻译权、汇编权以及应当由著作权人享有的其他可转让权利无偿独家转让给艺龙旅行网所有，同时表明该会员许可艺龙旅行网有权利就任何主体侵权而单独提起诉讼，并获得全部赔偿。</p><p>                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本协议已经构成《中华人民共和国著作权法》第二十五条所规定的书面协议，其效力基于用户在艺龙旅行网发布的任何受著作权法保护的作品内容，无论该内容形成于本协议签订前还是本协议签订后。会员同意并明确了解上述条款，不将以发表于本站的信息，以任何形式发布或授权其它网站及媒体（艺龙旅行网关联公司网站除外）使用。同时，艺龙旅行网保留删除站内各类不符合规定的信息而不通知会员的权利。</p><p>                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;艺龙旅行网是艺龙旅行网网站的运营商,拥有此网站内容及资源的版权,受国家知识产权保护,享有对本网站声明的解释与修改权；未经艺龙旅行网明确书面许可,任何单位或个人不得以任何方式,以任何文字作全部和局部复制、转载、引用。否则本公司将追究其法律责任。</p><p>                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;艺龙旅行网网站页面所有信息受《中华人民共和国著作权法》及相关法律法规和中国加入的所有知识产权方面的国际条约的保护。艺龙旅行网制定了旨在保护知识产权权利人合法权益的相关措施和步骤，当著作权人和/或依法可以行使信息网络传播权的权利人（以下简称“权利人”）发现可能存有侵犯其信息网络传播权的情况，权利人应事先向本站发出书面权利通知，并提供有效权属证明，本站将根据相关法律规定采取措施删除相关内容。同时用户登陆艺龙旅行网提交相关评论、文章或其他信息通过艺龙旅行网编辑发布的，艺龙旅行网享有著作权，有权在本网站及关联公司网站使用用户在艺龙旅行网网上发表的信息（包括但不限于图片、游记等），但用户在艺龙旅行网网上发表的信息若其它浏览者要转载，需经过本网站和该用户的许可，否则视为侵权，其他任何第三人未经艺龙旅行网允许，不得以任何形式复制、转载或采用。因用户或其他第三人违反本法律声明而引发的任何一切索赔、损害等等，本网站概不负责。</p><p>                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;艺龙旅行网不保证为向用户提供便利而设置的外部链接的准确性和完整性，若由此而引起的版权问题或其他问题，请致电或电邮本网站。经核实后会立即予以删除或更改。</p><h2>                7、艺龙旅行网专属权利</h2><p>                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;除明显归属于合作伙伴、第三方所有的信息资料外，艺龙旅行网拥有网络服务内所有内容，包括但不限于文字、图片、图形、表格、动画、程序、软件、音频和视频资料等单独或组合的版权。 任何被授权的浏览、复制、打印和传播属于本网站内的内容必须符合以下条件:  </p><p>                1)所有的资料和图像均以获得信息为目的; </p><p>                2)所有的资料和图像均不得用于商业目的;</p><p>                3)所有的资料和图像及其任何部分都必须包括此版权声明。 未经艺龙旅行网许可，任何人不得擅自以非法的方式复制、传播、展示、镜像、上载、下载进行使 用;否则，艺龙旅行网将依法追究法律责任。 </p><p>                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;艺龙为提供网络服务而自行开发的软件，包括不限于无线客户端应用等，拥有完整的知识产权。艺龙在此授予您个人非独家、不可转让、可撤销的，并通过在一部拥有所有权或使用权的手机或计算机上使用该软件的权利，且仅限于个人非商业性使用之合法目的，您应当保证合法使用该等软件，任何用户不得对该等软件进行如下违法行为:  </p><p>                1)开展反向工程、反向编译或反汇编，或以其他方式发现其原始编码，以及实施任何涉嫌侵害著作权等其他知识产权的行为;</p><p>                2)以出租、租赁、销售、转授权、分配或其他任何方式向第三方转让该等软件或利用该等软件为任何第三方提供相似服务; </p><p>                3)任何复制该等软件的行为;  </p><p>                4)以移除、规避、破坏、损害或其他任何方式干扰该等软件的安全功能;    </p><p>                5)以不正当手段取消该等软件上权利声明或权利通知的; </p><p>                6)其他违反法律规定的行为。艺龙有权对该等软件进行定期或不定期的修订、扩展、升级等更新措施，而无需提前通知用户，但您有权选择是否使用更新后的软件。  </p><p>               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 以下文字、图形及艺龙旅行网服务 LOGO 等，均为艺龙旅行网及其关联公司的注册商标以及受法律保护的商号;未经授权的任何形式使用，均为侵权，将被依法追究其责任: “eLong.com”，“艺龙”，“艺龙旅行网”，“e 龍”，“e 龙”等。</p><h2>                8、用户隐私制度</h2><p>                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;尊重用户个人隐私是艺龙旅行网的一项基本政策。所以，作为对以上第二点个人注册资料分析的补充，艺龙旅行网不会公开、编辑或透露用户的补充资料及保存在艺龙旅行网网络会员服务中的非公开内容，除非有法律许可要求或艺龙旅行网在诚信的基础上认为透露这些信件在以下三种情况是必要的：</p><p>                &nbsp;&nbsp; &nbsp;（1）遵守有关法律规定，遵从艺龙旅行网网络会员合法服务程序。</p><p>                &nbsp;&nbsp; &nbsp;（2）保持维护艺龙旅行网的商标所有权。</p><p>                &nbsp;&nbsp; &nbsp;（3）在紧急情况下竭力维护用户个人和社会大众的隐私安全。</p><p>                &nbsp;&nbsp; &nbsp;（4）符合其他相关的要求。</p><p>                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;特别授权</p><p>                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;您完全理解并不可撤销地、免费地授予艺龙旅行网及其关联公司、业务合作伙伴下列权利：</p><p>                &nbsp;&nbsp; &nbsp;（1）艺龙旅行网关联公司或业务合作伙伴允许艺龙旅行网用户登录关联公司或业务合作伙伴并使用其服务，艺龙旅行网用户在关联公司或业务合作伙伴的任何行为均需遵守该等协议的约定、公布的规则以及有关正确使用服务的说明和操作指引。为了实现上述功能，您同意艺龙旅行网将您在艺龙旅行网的注册信息、交易/支付数据等信息和数据同步至关联公司或业务合作伙伴系统并允许其使用。</p><p>                &nbsp;&nbsp; &nbsp;（2）如您以艺龙旅行网关联公司或业务合作伙伴用户账号和密码登录艺龙旅行网，为了实现向您提供同等服务的功能，您同意艺龙旅行网将您在关联公司或业务合作伙伴账号项下的注册信息、交易/支付数据等信息和数据同步至艺龙旅行网系统并进行使用，并且您不会因此追究艺龙旅行网以及艺龙旅行网关联公司或业务合作伙伴的责任。</p><p>                &nbsp;&nbsp; &nbsp;（3）为确保交易安全，允许艺龙旅行网及其关联公司、业务合作伙伴对用户信息进行数据分析，并允许艺龙旅行网及其关联公司、业务合作伙伴对上述分析结果进行商业利用。</p><p>                &nbsp;&nbsp; &nbsp;（4）艺龙旅行网会从关联公司、业务合作伙伴来源获得您的相关信息。例如当您通过艺龙旅行网关联公司、业务合作伙伴网站预订时，您向其提供的预订信息可能会转交给艺龙旅行网，以便艺龙旅行网处理您的订单、确保您顺利预订。又如，艺龙旅行网允许您用社交媒体帐号关联艺龙旅行网的账号进行登录，在您同意的情况下（您授权给该社交平台）。</p><p>                &nbsp;&nbsp; &nbsp;（5）您在享受艺龙旅行网提供的各项服务的同时，授权并同意接受艺龙旅行网向您的电子邮件、手机、通信地址等发送商业信息，包括不限于最新的艺龙旅行网产品信息、促销信息等。若您选择不接受艺龙旅行网提供的各类信息服务，您可以按照艺龙旅行网提供的相应设置拒绝该类信息服务。</p><h2>                9、用户的帐号、密码和安全性</h2><p>                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;您一旦注册成功成为用户，您将得到一个密码和帐号。如果您不保管好自己的帐号和密码安全，将负全部责任。另外，每个用户都要对其帐户中的所有活动和事件负全责。您可随时改变您的密码和图标，也可以结束旧的帐户重开一个新帐户。您若发现任何非法使用用户帐号或安全漏洞的情况，立即通告艺龙旅行网。请您对密码加以妥善保管，切勿将密码告知他人，因密码保管不善而造成的所有损失由您自行承担。您对通过您的账户所进行的活动、行为和事件依法享有权利和承担责任，且不得以任何形式转让账户、授权他人使用您的账户以及与他人交易账户。鉴于网络服务的特殊性，艺龙旅行网无义务审核是否是您本人使用该组用户名及密码，仅审核用户名及密码是否与数据库中保存的一致，任何人只要输入的用户名及密码与数据库中保存的一致，即可凭借该组用户名及密码登陆并使用艺龙旅行网所提供的各类服务，所以即使您认为您的账户登陆行为并非您本人所为，艺龙旅行网将不承担因此而产生的任何责任。</p><h2>                10、拒绝提供担保</h2><p>                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;用户明确同意邮件服务的使用由用户个人承担风险。艺龙旅行网明确表示不提供任何类型的担保，不论是明确的或隐含的，但是不对商业性的隐含担保，特定目的和不违反规定的适当担保作限制。艺龙旅行网不担保服务一定能满足用户的要求，也不担保服务不会受中断，对服务的及时性，安全性，出错发生都不作担保。艺龙旅行网拒绝提供任何担保，包括信息能否准确，及时，顺利的传送。用户理解并接受任何信息资料（下载或通过艺龙旅行网网络会员服务取得），取决于用户自己并由其承担系统受损或资料丢失的所有风险和责任。用户不会从艺龙旅行网收到口头或书写的意见或信息，也不会在这里作明确担保。</p><h2>                11、有限责任</h2><p>                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;艺龙旅行网对任何直接、间接、偶然、特殊及继起的损害不负责任，这些损害来自：不正当使用网络会员服务，非法使用服务或用户传送的信息有所变动。这些损害会导致艺龙旅行网形象受损，所以艺龙旅行网早已提出这种损害的可能性。</p><h2>                12、艺龙旅行网网络会员服务信息的储存及限制</h2><p>                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;艺龙旅行网网络科技股份有限公司不对用户所发布信息的删除或储存失败负责。艺龙旅行网网络科技股份有限公司没有对信息的传输量规定上限，但是它有判定用户的行为是否符合艺龙旅行网网络会员服务条款的要求和精神的保留权利，如果用户违背了服务条款的规定，则中断其网络会员服务的帐号。本网站所有的文章版权归原文作者和艺龙旅行网共同所有，任何人需要转载网站内文章，必须征得原文作者或艺龙旅行网授权。</p><h2>                13、用户管理</h2><p>                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;用户单独承担发布内容的责任。用户对服务的使用是根据所有适用于网站服务的地方法律、国家法律和国际法律标准的。用户必须遵循：</p><p>                &nbsp;&nbsp; &nbsp;（1）发布信息时必须符合中国有关法规。</p><p>                &nbsp;&nbsp; &nbsp;（2）使用网络会员服务不作非法用途。</p><p>                &nbsp;&nbsp; &nbsp;（3）不干扰或混乱网络服务。</p><p>                &nbsp;&nbsp; &nbsp;（4）遵守所有使用网络会员服务的网络协议、规定和程序。</p><p>                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;网络会员服务是利用因特网发送和收取信息。所以，用户的行为指引是根据国家有关因特网的法规，政策和程序的。用户须承诺不传输任何非法的、骚扰性的、中伤他人的、辱骂性的、恐吓性的、伤害性的、庸俗的，淫秽等信息资料。另外，用户也不能传输任何教唆他人构成犯罪行为的资料；不能传输助长国内不利条件和涉及国家安全的资料；不能传输任何不符合当地法规、国家法律和国际法律的资料。未经许可而非法进入其它电脑系统是禁止的。若用户的行为不符合以上提到的服务条款，艺龙旅行网将做出独立判断立即取消用户服务帐号。用户需对自己在网络会员服务中的行为承担法律责任。用户若在网络会员服务中散布和传播反动、色情或其他违反国家法律的信息，网络会员服务的系统记录有可能作为用户违反法律的证据。</p><h2>                14、用户信用等级</h2><p>                &nbsp;&nbsp; &nbsp;（1）艺龙旅行网将会根据客户在平台的累计消费额度等进行会员评级，统计周期为自升级日起顺延年。根据对应的消费额度分为普卡、银卡、金卡、白金卡四个等级。</p><p>                &nbsp;&nbsp; &nbsp;（2）酒店用户评价途径</p><p>                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;当您预订了酒店产品，订单入住后可对该酒店的设施、位置、服务、卫生以及艺龙旅行网的服务等进行评价，您的评价如属实将会在酒店点评中展现。为方便顾客选择酒店产品，艺龙旅行网将暂未经过旅游局评定星级的酒店分为：舒适型、高档型、豪华型。（分别参照三、四、五星级酒店标准建造）。</p><h2>                15、用户的违约责任</h2><p>                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;艺龙旅行网可依据用户数据来认定用户是否构成违约；用户有义务对异常数据进行充分举证和合理解释，否则将被认定为违约。如用户使用艺龙旅行网服务时违反有关法律法规规定或本协议约定的，视为用户违约。</p><p>                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;违约处理措施：</p><p>                &nbsp;&nbsp; &nbsp;（1）用户在艺龙旅行网平台上发布的信息构成违反本协议或涉嫌违法或涉嫌侵犯第三方合法权利的，艺龙旅行网可根据相应规则立即采取措施对相应信息进行删除。</p><p>                &nbsp;&nbsp; &nbsp;（2）用户在艺龙旅行网平台上实施的行为，艺龙旅行网可依据相应规则对用户执行账户扣减积分、限制参加营销活动、中止向用户提供部分或全部服务、取消订单、划扣违约金等处理措施。如用户的行为构成根本违约的，艺龙旅行网可冻结用户的账户，终止向用户提供服务。</p><p>                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;赔偿责任：</p><p>                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;如用户的行为使艺龙旅行网及/或其关联公司遭受损失（包括直接经济损失和间接经济损失），或受到任何第三方的索赔，或受到有关行政部门的处罚，用户应赔偿艺龙旅行网及/或其关联公司的全部损失，包括但不限于律师费、诉讼费等。</p><h2>                16、保障</h2><p>                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;用户同意保障和维护艺龙旅行网全体成员的利益，负责支付由用户使用超出服务范围引起的律师费用，违反服务条款的损害补偿费用，其它人使用用户的电脑、帐号和其它知识产权的追索费。</p><h2>                17、结束服务</h2><p>                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;用户或艺龙旅行网可随时根据实际情况中止网站服务。艺龙旅行网不需对任何个人或第三方负责而随时中断服务。用户若反对任何服务条款的建议或对后来的条款修改有异议，或对艺龙旅行网网络会员服务不满，用户只有以下的追索权：</p><p>                &nbsp;&nbsp; &nbsp;（1）不再使用艺龙旅行网网络会员服务。</p><p>                &nbsp;&nbsp; &nbsp;（2）结束用户使用艺龙旅行网网络会员服务的资格。</p><p>                &nbsp;&nbsp; &nbsp;（3）通告艺龙旅行网停止该用户的服务。结束用户服务后，用户使用艺龙旅行网网络会员服务的权利马上中止。从那时起，艺龙旅行网不再对用户承担任何义务。</p><p>                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;用户选择停止接受艺龙旅行网的服务的，可以选择注销账号，艺龙旅行网将为用户注销账号提供便利，但在满足账号注销的条件前（例如订单未完成、关联授权账号未解绑、欠款未结清等，以具体账号注销要求为准），艺龙旅行网有权拒绝用户的账号注销申请而无需承担任何责任。用户账号注销后，除法律法规规定的信息以及其他艺龙旅行网认为有必要继续保留的信息（如交易记录等），原则上艺龙旅行网将不再保留用户信息。艺龙旅行网依据法律法规规定或认为确有必要而保留的，保留期限为交易完成之日起三年。用户承诺放弃账号注销后再就个人信息查询、修改等对艺龙旅行网进行投诉、举报、诉讼的权利。</p><h2>                18、通告</h2><p>                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;所有发给用户的通告都可通过电子邮件或常规的信件传送。艺龙旅行网会通过邮件服务发报消息给用户，告诉他们服务条款的修改、服务变更、或其它重要事情。</p><h2>                19、参与广告策划</h2><p>                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;用户可在他们发表的信息中加入宣传资料或参与广告策划，在艺龙旅行网网络会员服务免费服务上展示他们的产品。任何这类促销方法，包括运输货物、付款、服务、商业条件、担保及与广告有关的描述都只是在相应的用户和广告销售商之间发生。艺龙旅行网不承担任何责任，艺龙旅行网网络会员服务没有义务为这类广告销售负任何一部分的责任。</p><h2>                20、邮件内容的所有权</h2><p>                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;用户定义的内容包括：文字、软件、声音、相片、录像、图表；在广告中全部内容；电子邮件的全部内容；艺龙旅行网网络会员服务为用户提供的商业信息。所有这些内容均受版权、商标、标签和其它财产所有权法律的保护。所以，用户只能在艺龙旅行网和广告商授权下才能使用这些内容，而不能擅自复制、再造这些内容、或创造与内容有关的派生产品。</p><h2>                21、法律</h2><p>                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本服务协议要与该国的国家法律解析一致，包括法律条款中有争议抵触的内容。用户和艺龙旅行网一致同意服从法院的管辖。若有任何服务条款与法律相抵触，那这些条款将按尽可能接近的方法重新解析，而其它条款则保持对用户产生法律效力和影响，因用户解释本服务协议或通过艺龙旅行网预订任何产品而导致的争议，将同意接受艺龙旅行网运营方所在地北京市朝阳区人民法院的管辖。</p><h2>                22.其他规定</h2><p>                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本服务条款中的标题仅为方便而设，在解释本服务条款时应被忽略。</p></div></article></body></html>        </div>
  
        <input id="regSubmit" class="submitBtn" type="submit" 
               value="立即注册">
  
</div>
  </form>
<!-- 注册成功页面 start -->

<!-- 注册成功页面 end -->

<!-- =====================content end===================== -->
<script type="text/javascript">

    var lang = "cn";
    var Language = lang;
    var websiteType = "standard";
    var isEn = "cn" == "en" ? true : false;
</script>


     <script type="text/javascript">var RegisterController={viewModel:{"cardChildType":[{"cardProxyId":"ZD","cardType":"19","childCardName":"\u827A\u9F99\u5361"}],"cardParentType":[{"cardName":"\u94F6\u884C\u5361\u7C7B","display":true,"key":"12","order":true},{"cardName":"\u9152\u5E97\u5408\u4F5C\u7C7B","display":true,"key":"17","order":true},{"cardName":"\u65E0\u7EBF\u901A\u8BAF\u7C7B","display":true,"key":"13","order":true},{"cardName":"\u8D2D\u7269\u6D88\u8D39\u7C7B","display":true,"key":"14","order":true},{"cardName":"\u822A\u7A7A\u7C7B","display":true,"key":"15","order":true},{"cardName":"\u5176\u4ED6","display":true,"key":"16","order":true},{"cardName":"\u6240\u6709\u8054\u540D\u5361[\u6309\u9996\u5B57\u62FC\u97F3\u6392\u5E8F]","display":true,"key":"11","order":true}],"cardParentTypeValue":0,"isCht":false,"isHaveCardReg":0,"isPersonCollect":false},regDes:{"RegSystemMobileError":"\u8FD9\u4E2A\u53F7\u7801\u5DF2\u88AB\u4F7F\u7528\u3002\u4E3A\u4FDD\u62A4\u60A8\u7684\u4E2A\u4EBA\u4FE1\u606F\u51C6\u786E\u5B89\u5168\uFF0C\u8BF7\u8054\u7CFB\u6211\u4EEC\u7684\u5BA2\u6237\u670D\u52A1\u70ED\u7EBF4009-333-333\u8F6C5\u3002","SmsCodeSendFail":"\u9A8C\u8BC1\u7801\u53D1\u9001\u5931\u8D25\uFF0C\u70B9\u51FB\u91CD\u65B0\u83B7\u53D6","RegValidateEmail_Empty_Error":"\u90AE\u7BB1\u4E0D\u80FD\u4E3A\u7A7A\u3002","RegValidateEmail_Input_Error":"\u90AE\u7BB1\u8F93\u5165\u9519\u8BEF\uFF0C\u8BF7\u6838\u5BF9\u540E\u91CD\u65B0\u8F93\u5165\u3002","RegValidateRePassword_Empty_Error":"\u8BF7\u518D\u6B21\u8F93\u5165\u5BC6\u7801\u3002","SmsCode_ReachCountLimit":"\u60A8\u5DF2\u8FBE\u5230\u4ECA\u5929\u83B7\u53D6\u9A8C\u8BC1\u7801\u7684\u6700\u9AD8\u6B21\u6570","lang":"cn","RegValidateSMSCode_Empty_Error":"\u8BF7\u586B\u5199\u77ED\u4FE1\u9A8C\u8BC1\u7801","RegValidatePassword_Email_Mobile_Error":"\u5BC6\u7801\u4E0E\u5DF2\u5F55\u5165\u7684\u624B\u673A\u53F7\u6216\u90AE\u7BB1\u76F8\u4F3C\u3002","RegSystemEaiError":"\u7531\u4E8E\u7CFB\u7EDF\u66F4\u65B0\u539F\u56E0\uFF0C\u73B0\u5728\u4E0D\u80FD\u6B63\u5E38\u6CE8\u518C\uFF0C\u4E0D\u8FC7\u60A8\u4ECD\u53EF\u4EE5\u6309\u7167\u7F51\u7AD9\u63D0\u793A\u6B63\u5E38\u9884\u8BA2\u3002","RegValidateMobile_HadReg_Error":"\u624B\u673A\u53F7\u5DF2\u88AB\u4F7F\u7528\uFF0C\u8BF7\u66F4\u6362\u5176\u4ED6\u53F7\u7801\u3002","RegElongCard_Empty_Error":"\u8BF7\u8F93\u5165\u6B63\u786E\u7684\u827A\u9F99\u5361\u5361\u53F7\u3002","RegSystemEmailError":"\u8FD9\u4E2Aemail\u5730\u5740\u5DF2\u4F7F\u7528\u3002\u5982\u679C\u60A8\u8F93\u5165\u7684\u66F4\u65B0email\u4FE1\u606F\u662F\u51C6\u786E\u7684\uFF0C\u4E3A\u4FDD\u62A4\u60A8\u7684\u4E2A\u4EBA\u4FE1\u606F\u51C6\u786E\u5B89\u5168\uFF0C\u8BF7\u8054\u7CFB\u6211\u4EEC\u7684\u5BA2\u6237\u670D\u52A1\u70ED\u7EBF4009-333-333\u8F6C5\u3002","SmsCode_GetSmsAfter":"\u79D2\u540E\u91CD\u65B0\u83B7\u53D6","RegElongCard_Input_Error":"\u8BF7\u8F93\u5165\u6B63\u786E\u7684\u827A\u9F99\u5361\u5361\u53F7\u3002","RegValidateEmail_Yahoo_Error":"\u96C5\u864E\u90AE\u7BB1\u5373\u5C06\u505C\u6B62\u670D\u52A1\uFF0C\u8BF7\u66F4\u6362\u90AE\u7BB1\u6CE8\u518C\u3002","SmsCode_GetSmsCodeDes":"\u83B7\u53D6\u77ED\u4FE1\u9A8C\u8BC1\u7801","SmsCodeDisabled":"\u9A8C\u8BC1\u7801\u5DF2\u5931\u6548\uFF0C\u8BF7\u91CD\u65B0\u83B7\u53D6","RegValidateEmailInfo":"\u586B\u5199\u5E76\u9A8C\u8BC1\u90AE\u7BB1\uFF0C\u989D\u5916\u83B7\u5F97100\u5143\u827A\u9F99\u6D88\u8D39\u5238\u3002","RegValidateCode_Empty_Error":"\u9A8C\u8BC1\u7801\u4E0D\u80FD\u4E3A\u7A7A\u3002","RegValidateMobileInfo":"\u8BF7\u6B63\u786E\u586B\u5199\u60A8\u7684\u624B\u673A\u53F7\u7801\uFF0C\u4EE5\u4FBF\u53CA\u65F6\u786E\u8BA4\u9884\u8BA2\u4FE1\u606F\u3002","RegValidateRePassword_Reapt_Error":"\u4E24\u6B21\u5BC6\u7801\u8F93\u5165\u4E0D\u4E00\u81F4\uFF0C\u8BF7\u91CD\u65B0\u8F93\u5165\u3002","RegValidateCode_Input_Error":"\u8BF7\u6B63\u786E\u8F93\u5165\u9A8C\u8BC1\u7801\u3002","RegValidatePasswordInfo":"6-30\u4E2A\u5B57\u7B26\u6216\u6570\u5B57\u7EC4\u6210","RegValidatePassword_Empty_Error":"\u5BC6\u7801\u4E0D\u80FD\u4E3A\u7A7A\u3002","RegValidatePassword_Input_Error":"6-30\u4E2A\u5B57\u7B26\u6216\u6570\u5B57\u7EC4\u6210\uFF0C\u8BF7\u91CD\u65B0\u8F93\u5165\u3002","RegSystemDefault":"\u7CFB\u7EDF\u7E41\u5FD9\uFF0C\u8BF7\u7A0D\u540E\u518D\u8BD5\uFF01","RegValidateMobile_Input_Error":"\u8BF7\u8F93\u5165\u6B63\u786E\u7684\u624B\u673A\u53F7\u3002","RegValidateRePasswordInfo":"\u8BF7\u518D\u6B21\u8F93\u5165\u5BC6\u7801\u3002","RegValidate_AgeeRules_Info":"\u540C\u610F\u6761\u6B3E\u5E76\u6CE8\u518C","RegValidateMobile_Empty_Error":"\u624B\u673A\u4E0D\u80FD\u4E3A\u7A7A\u3002","RegUinonCard_Error":"\u8BF7\u8F93\u5165\u6B63\u786E\u7684\u8054\u540D\u5361\u5361\u53F7\u3002","RegValidateCodeInfo":"\u8BF7\u8F93\u5165\u9A8C\u8BC1\u7801\u3002","RegValidateEamil_HadReg_Error":"\u90AE\u7BB1\u5DF2\u88AB\u4F7F\u7528\uFF0C\u8BF7\u66F4\u6362\u5176\u4ED6\u90AE\u7BB1\u3002","SmsCodeOutOfDate":"\u9A8C\u8BC1\u7801\u5DF2\u5931\u6548\uFF0C\u8BF7\u91CD\u65B0\u83B7\u53D6","SmsCode_MultiPhone":"\u5BF9\u4E0D\u8D77\uFF0C\u60A8\u7684\u624B\u673A\u53F7\u7ED1\u5B9A\u591A\u4E2A\u827A\u9F99\u8D26\u53F7\uFF0C\u8BF7\u66F4\u6362\u624B\u673A\u53F7","IsHavingRegUser":"\u6CE8\u518C\u4E2D...","SmsCode_OtherError":"\u51FA\u73B0\u5176\u4ED6\u9519\u8BEF\uFF0C\u8BF7\u91CD\u65B0\u83B7\u53D6","SmsCodeTimeLimit":"\u4E00\u5206\u949F\u5185\u83B7\u53D6\u9A8C\u8BC1\u7801\u592A\u9891\u7E41\uFF0C\u8BF7\u7A0D\u540E\u83B7\u53D6","SmsCodeInputError":"\u9A8C\u8BC1\u7801\u8F93\u5165\u9519\u8BEF","RegValidate_ReadAndCheck_Rules":"\u8BF7\u8BA4\u771F\u9605\u8BFB\u76F8\u5173\u6761\u6B3E\u5E76\u52FE\u9009\u3002"},urlVersion:"201401010800",jsPath:"..\/..\/..\/passport\/js\/",basePath:"",curDate:"2019-05-10"};var pageController=RegisterController;</script> 
    <script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/jquery1.8.3.min.js"></script>
<script src="${pageContext.request.contextPath }/statics/js/index.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/require2.1.16.min.js"
        data-main="/passport/js/register/v5/register.js"></script>


    </body>
</html>
